//**************************************************************************************
// 
//    PIconServices. Refcounted icons, uses icon Services if available.
//    Copyright © 1999  Peter O'Gorman.
//	  E-Mail: ogorman@kagi.com
//	  Web: http://www.ogorman.dircon.co.uk
//
//    This library is free software; you can redistribute it and/or
//    modify it under the terms of the GNU Library General Public
//    License as published by the Free Software Foundation; either
//    version 2 of the License, or (at your option) any later version.
//
//    This library is distributed in the hope that it will be useful,
//    but WITHOUT ANY WARRANTY; without even the implied warranty of
//    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
//    Library General Public License for more details.
//
//    You should have received a copy of the GNU Library General Public
//    License along with this library; if not, write to the Free
//    Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
//**************************************************************************************


#include <Icons.h>
#include <Files.h>
#include <Folders.h>
#include <Aliases.h>
#include <Gestalt.h>
#include <Appearance.h>
#include <Resources.h>
#include <DriverServices.h>
#include <DriverGestalt.h>

// Powerplant - for ThrowIfOSErr_

#if __option(RTTI)
#include <typeinfo>
#endif
#include <UException.h>


#include <TextUtils.h>
#include <LowMem.h>


#include <string>
#include <cstdarg>
#include <cstdio>

#include "PISUtils.h"
#include "MoreDesktopMgr.h"
#include "CVolumes.h"
#include "staticdata.h"
#include "PISSIcons.h"
#include "PISS.h"
#include "CSimplePointerList.h"


// globals
#if !TARGET_RT_MAC_CFM
// CFragConnectionID stheID = 0;
#endif
IconGetterUPP sIconGetter = NULL;
UInt32		sAppearanceVersion = 0;	
	
bool		sHasIconServices = false;

	
bool		sISInitCalled = false;											
											
TSimpleList<PISSIcon*>*	sIcons = NULL;
bool		sHasBeenInited = false;

//debug helpers
#ifdef PDebugWantsAssert
void PISSAssertMsg(const char *expr,const char *msg, const char * file, int line)
{
	char mesg[256];							
	std::sprintf(mesg, "ASSERT(%s), msg(%s) in %s at line %d failed.", expr,msg, file, line);
	::DebugStr(c2pstr(mesg));
}
#endif
#ifdef PDebugWantsMessages	
void PISSDebug(const char *msg, int value, const char * file, int line)
{
	char mesg[256];
	std::sprintf(mesg,"Message : %s value %d, Line : %d File: %s.;G",msg,value,line,file);
	::DebugStr(c2pstr(mesg));

}
#endif
/*
	A lot of stuff used in this project came from FindIcon.
	
	Copyright ©1997 by James W. Walker
*/

void RemoveDeleteIcon(PISSIcon** theIcon);

void RemoveDeleteIcon(PISSIcon** theIcon)
{
	if (*theIcon != NULL)
	{
		if (sIcons != NULL) 
		{	
			if (sIcons->GetIndexOf(*theIcon) != TSimpleList<PISSIcon*>::indexBad)
				sIcons->Remove(*theIcon);
		}
		else {
			delete *theIcon;
		}
		*theIcon = NULL;
	}
}

#if TARGET_CPU_PPC
	extern pascal OSErr __initialize(const CFragInitBlock *theInitBlock);
	extern pascal void __terminate(void);	
#endif

pascal OSErr
PISSInit(CFragInitBlockPtr 		initBlockPtr)
{
#if TARGET_CPU_PPC
	OSErr startErr = __initialize(initBlockPtr);
#else
	#pragma unused (initBlockPtr)
	OSErr startErr = noErr;
#endif
	if ((!sHasBeenInited) && !(startErr))
	{
	
		long response;
#if TARGET_CPU_PPC		
		sHasIconServices = ( (noErr == Gestalt( gestaltIconUtilitiesAttr, &response )) &&
		((response & gestaltIconUtilitiesHasIconServices) != 0)
	);
	
	#ifdef PDebugEmulate
		sHasIconServices = false;
	#endif			
#else
	sHasIconServices = false;
#endif			
		if ((Gestalt(gestaltAppearanceAttr,&response) == noErr) &&
			((response & (1L << gestaltAppearanceExists)) != 0) )
		{
			sAppearanceVersion = 0x0100;
			::Gestalt(gestaltAppearanceVersion, (SInt32*)&sAppearanceVersion); 
		}
/*
#if !TARGET_CPU_PPC
#if !TARGET_RT_MAC_CFM
// Need to know how to get a CFragInitBlock...
// otherwise a 68K app will crash on quit.
		// find out machine type...
		if ( (noErr == Gestalt ( gestaltSysArchitecture, &response )) &&
			( response == gestaltPowerPC))
		{	
			Ptr	mainAddr;
			Str255	errMessage;
			OSErr getErr = GetSharedLibrary("\pIconServicesLib",kPowerPCCFragArch,kReferenceCFrag,&stheID,&mainAddr,errMessage);
			if (getErr == noErr)
			{
				CFragInitBlock initBlock;
				std::memset(&initBlock,0,sizeof(CFragInitBlock));
				initBlock.connectionID = stheID;
				if (sHasIconServices) getErr = IconServicesInit(&initBlock);
			}
			else
				sHasIconServices = false; 
		}
		else 
//#else		
			sHasIconServices = false;
#endif			
#endif	
*/		
		if (!sHasIconServices)		
			sIconGetter = NewIconGetterProc(GetIconProc);
		sHasBeenInited = true;
		sIcons = NULL;
		
	}
	return startErr;
}

// terminate
pascal void
PISSTerminate()
{
	if (!sHasIconServices)	
		DisposeRoutineDescriptor(sIconGetter);
	sIconGetter = NULL;
	sHasBeenInited = false;
	sHasIconServices = false;
	sAppearanceVersion = 0x0000;	
	if (sIcons != NULL)
	{
		delete sIcons;
	}	
#if !TARGET_RT_MAC_CFM
//		if (sHasIconServices) IconServicesTerminate();	
//	OSErr theErr = CloseConnection(&stheID);	
#endif	
#if TARGET_CPU_PPC
	__terminate();
#endif
}
pascal OSErr
GetPIcon(SInt16 inVRef, OSType inCreator, OSType inType, PISSIcon** theIcon)
{
	PISSAssert(theIcon != NULL,"GetPIcon paramErr");
	if (sHasIconServices) return GetIconRef(inVRef,inCreator,inType,(IconRef*)theIcon);
	OSErr theErr = noSuchIconErr;
	bool found = false;
	if ((inCreator == kClippingCreator) && sAppearanceVersion >= 0x0100)
	{
		switch (inType)
		{	
					
			case	kClippingPictureType:
					return GetPIcon(kOnSystemDisk,kSystemIconsCreator,kClippingPictureTypeIcon,theIcon);
					break;
			case	kClippingTextType:
					return GetPIcon(kOnSystemDisk,kSystemIconsCreator,kClippingTextTypeIcon,theIcon);
					break;		
			case	kClippingSoundType:
					return GetPIcon(kOnSystemDisk,kSystemIconsCreator,kClippingSoundTypeIcon,theIcon);
					break;		
			case	kClippingUnknownType:
					return GetPIcon(kOnSystemDisk,kSystemIconsCreator,kClippingUnknownTypeIcon,theIcon);
					break;		
		}
	}
	if ((inCreator == kSystemIconsCreator) && (inType == kFinderIcon)) inCreator = 'MACS';
	PISSIcon*	anIcon;
	if (sIcons != NULL)
	{
		UInt32 iIndex = 1;

		while (sIcons->GetNthItem(iIndex++,&anIcon))
		{

			if ((anIcon->GetType() == inType) && (anIcon->GetCreator() == inCreator))
			{
#if !__option(RTTI)			
				if ((anIcon->GetWhatKindOfIcon() != kPISSIconCustomFolderKind) &&
					(anIcon->GetWhatKindOfIcon() != kPISSIconCustomFileKind) &&
					(anIcon->GetWhatKindOfIcon() != kPISSIconVolumeKind))
#else					
				if ((typeid(*anIcon) != typeid(PISSCustomFolderIcon)) &&
					(typeid(*anIcon) != typeid(PISSCustomFileIcon)) &&
					(typeid(*anIcon) != typeid(PISSVolumeIcon)))
#endif					
				{	
				*theIcon = anIcon;
				found = true;
				anIcon->AddUser();
				theErr = noErr;
				break;
				}
			}
			
		
		}
	}
	
	if (!found)
	{
		if (inCreator==kSystemIconsCreator) theErr = GetSystemIcon(inType,theIcon);
		else	theErr = GetDTIcon(inVRef,inCreator,inType,theIcon);
		// if it wasn't in the DTDB, perhaps the filetype maps to a specific System icon..
		if (theErr)
		{
			UInt32 paircount = SystemFileMap::GetSize()/sizeof(fileTypeIconTypeMap);
			SInt16 index;
			OSType systemItem = 0;
			bool found = false;
			for(index=0;index<paircount;index++)
			{
				if (SystemFileMap::GetItem(index).fileType == inType)
				{
					systemItem = SystemFileMap::GetItem(index).iconType;
					found = true;
					break;
				}
			}
			if ((!found) && (sAppearanceVersion >= 0x0100))
			{
				paircount = AppearanceExtensionMap::GetSize()/sizeof(fileTypeIconTypeMap);
				for(index=0;index<paircount;index++)
				{
					if (AppearanceExtensionMap::GetItem(index).fileType == inType)
					{
						systemItem = AppearanceExtensionMap::GetItem(index).iconType;
						found = true;
						break;
					}
				}
			}
			if (!found)
			{
				paircount = OldFinderMap::GetSize()/sizeof(fileTypeIconTypeMap);
				for(index=0;index<paircount;index++)
				{
					if (OldFinderMap::GetItem(index).fileType == inType)
					{
						systemItem = OldFinderMap::GetItem(index).iconType;
						found = true;
						break;
					}
				}			
			}
			if (found)
			{
				theErr = noErr;
				theErr = GetPIcon(kOnSystemDisk,kSystemIconsCreator,systemItem,theIcon);
			}
			else
			{
				theErr = noSuchIconErr;
			}
		}
	}
	PDebugMsgIf_(theErr != noErr,"GetPIcon error",theErr);
	return theErr;
}
pascal OSErr
GetPIconFromFile(const FSSpec* theSpec, PISSIcon** theIcon,SInt16* theLabel)
{
	PISSAssert(theSpec != NULL,"GetPIconFromFile paramErr");
	PISSAssert(theIcon != NULL,"GetPIconFromFile paramErr");
	PISSAssert(theLabel != NULL,"GetPIconFromFile paramErr");
	if (sHasIconServices) return GetIconRefFromFile(theSpec,(IconRef*)theIcon,theLabel);
	CInfoPBRec pb;
	StrFileName name;
	OSErr err = noErr;
	::BlockMoveData(&theSpec->name[0],&name[0],theSpec->name[0]+1);
	*theIcon = NULL;
	std::memset((void*)&pb,0,sizeof(CInfoPBRec));
	pb.hFileInfo.ioVRefNum = theSpec->vRefNum;
	pb.hFileInfo.ioDirID = theSpec->parID;
	pb.hFileInfo.ioNamePtr = (StringPtr)name;
	pb.hFileInfo.ioFDirIndex = 0;

	err = PBGetCatInfoSync( &pb );
	PDebugMsgIf_(err != noErr,"err = PBGetCatInfoSync, GetPIconFromFile",err);
	if (err) return err;
	
	if ( (pb.hFileInfo.ioFlAttrib & ioDirMask) == 0 )	// file
	{
		if ((pb.hFileInfo.ioFlFndrInfo.fdFlags & kHasCustomIcon) > 0)
		{
			// Custom file icon
			// Iterate
			{
			if (sIcons != NULL)
				{
					PISSIcon* anIcon;
					UInt32 iIndex = 1;

					while (sIcons->GetNthItem(iIndex++,&anIcon))
					{
#if !__option(RTTI)					
						if (anIcon->GetWhatKindOfIcon() == kPISSIconCustomFileKind)
#else						
						if (typeid(*anIcon) == typeid(PISSCustomFolderIcon))
#endif						
						{	
							if (((PISSCustomFileIcon*)anIcon)->IsTheSameSpec(theSpec))
							{	
								anIcon->AddUser();
								*theIcon = anIcon;
								break;
							}	
						}
					
					}
				}
				

			}
			if (*theIcon == NULL) {
				try {		
					*theIcon = new PISSCustomFileIcon(pb.hFileInfo.ioFlFndrInfo.fdCreator,
													pb.hFileInfo.ioFlFndrInfo.fdType,
													theSpec,
													kCustomIconResource);		
					if (sIcons == NULL) sIcons = new TSimpleList<PISSIcon*>(true);
					sIcons->Add(*theIcon);
				}
				catch(...)
				{
					RemoveDeleteIcon(theIcon);
					err = memFullErr;
					PDebugMsgIf_(err != noErr,"new PISSCustomFileIcon kCustomIconResource",err);
				}
				if (err)
				{
					try {					
						*theIcon = new PISSCustomFileIcon(pb.hFileInfo.ioFlFndrInfo.fdCreator,
														pb.hFileInfo.ioFlFndrInfo.fdType,
														theSpec,
														-16496);	
						if (sIcons == NULL) sIcons = new TSimpleList<PISSIcon*>(true);
						sIcons->Add(*theIcon);															
					}
					catch(...)
					{
						RemoveDeleteIcon(theIcon);
					
						err = memFullErr;
						PDebugMsgIf_(err != noErr,"new PISSCustomFileIcon -16496",err);
					}				
				
				}
			}	
		}
		if (*theIcon == NULL)
		{
		
			err = GetPIcon(pb.hFileInfo.ioVRefNum,
								pb.hFileInfo.ioFlFndrInfo.fdCreator,
								pb.hFileInfo.ioFlFndrInfo.fdType,
								theIcon);
			PDebugMsgIf_(err != noErr,"GetPIcon DTDB",err);					
			if (err)
			{
				err = GetPIcon(kOnSystemDisk,kSystemIconsCreator,kGenericDocumentIcon,theIcon);
				PDebugMsgIf_(err != noErr,"GetPIcon kGenericDocumentIcon",err);
			}
		}
	}
	else	// directory
	{
		if ( ((pb.hFileInfo.ioFlFndrInfo.fdFlags & kHasCustomIcon) != 0))
		{
		
			// custom folder
			FSSpec customFile;
			try{
				ThrowIfOSErr_(::FSMakeFSSpec(pb.dirInfo.ioVRefNum,pb.dirInfo.ioDrDirID,"\pIcon\r",&customFile));
			// Custom file icon
			// Iterate
				{
				if (sIcons != NULL)
					{
						PISSIcon* anIcon;
						UInt32 iIndex = 1;
		
						while (sIcons->GetNthItem(iIndex++,&anIcon))
						
						{
#if !__option(RTTI)						
							if (anIcon->GetWhatKindOfIcon() == kPISSIconCustomFolderKind)
#else
							if (typeid(*anIcon) == typeid(PISSCustomFolderIcon)) 
#endif
							{	
								if (((PISSCustomFolderIcon*)anIcon)->IsTheSameSpec(&customFile))
								{
									anIcon->AddUser();
									*theIcon = anIcon;
									break;
								}	
							}
						
						}

					}

				}	
				if (*theIcon == NULL)
				{		
					*theIcon = new PISSCustomFolderIcon('macs','fold',&customFile,kCustomIconResource);
					if (sIcons == NULL) sIcons = new TSimpleList<PISSIcon*>(true);
					sIcons->Add(*theIcon);	
				}			
		
			}
			catch (std::bad_alloc)
			{
				err = memFullErr;
				RemoveDeleteIcon(theIcon);
			}
			catch (...)
			{
				RemoveDeleteIcon(theIcon);
			
				err = 9999;
				PDebugMsgIf_(err != noErr,"bad fileName",err);
				*theIcon = NULL;
			}
			if ((err) && (err != memFullErr))
			{
				try {				
					*theIcon = new PISSCustomFolderIcon('cust','fold',&customFile,-16496);
					if (sIcons == NULL) sIcons = new TSimpleList<PISSIcon*>(true);
					sIcons->Add(*theIcon);					
				}
				catch(...)
				{
					RemoveDeleteIcon(theIcon);
					err = fnfErr;
				}
			
			}

		}
		if (*theIcon == NULL)
		{
			if  (pb.hFileInfo.ioDirID == fsRtDirID)	
				{
					err = GetIconFromVolume(pb.dirInfo.ioVRefNum,
							 			pb.dirInfo.ioDrParID,
							 			pb.dirInfo.ioDrDirID,
							 			pb.dirInfo.ioFlAttrib,
										pb.dirInfo.ioACUser,
							 			theIcon);		 			
				}
				else	// a folder
				{
					err = GetPIconFromFolder(pb.dirInfo.ioVRefNum,
							 			pb.dirInfo.ioDrParID,
							 			pb.dirInfo.ioDrDirID,
							 			pb.dirInfo.ioFlAttrib,
										pb.dirInfo.ioACUser,
							 			theIcon);	 			
				}
		}
		if (*theIcon == NULL)
			err = GetPIcon(kOnSystemDisk,kSystemIconsCreator,kGenericFolderIcon,theIcon);
	}
	// I am not sure about this...
	if (*theIcon != NULL)
		*theLabel = SInt16((pb.hFileInfo.ioFlFndrInfo.fdFlags & kColor) >> 1);
	return noErr;
	
}										 					 
pascal OSErr
GetPIconFromFolder(SInt16 					vRefNum,
						 SInt32 				parentFolderID,
						 SInt32 				folderID,
						 SInt8 					attributes,
						 SInt8 					accessPrivileges,
						 PISSIcon**				theIcon)
{
if (sHasIconServices) return GetIconRefFromFolder(vRefNum,parentFolderID,folderID,attributes,accessPrivileges,(IconRef*)theIcon);
	OSType bestIcon = kGenericFolderIcon;
	OSType nextbest = kGenericFolderIcon;
	OSType	folderType;
	if (folderID != fsRtDirID)
	{
		OSErr theErr = PISSIdentifyFolder(vRefNum,parentFolderID,folderID,attributes,accessPrivileges,&folderType,&bestIcon);
		if (theErr)
		{
			if ((attributes & 0x08) != 0)
			{
				bestIcon = kMountedFolderIcon;
				nextbest = kGenericFolderIcon;
			
			}
			else
			if ((attributes & 0x20) != 0) 
			{
				bestIcon = kSharedFolderIcon;
				nextbest = kGenericFolderIcon;
			}
			else
			if ((attributes & 0x04) != 0)
			{
				bestIcon = kOwnedFolderIconResource;
				nextbest = kGenericFolderIcon;
			}
			else
			{
				bestIcon = kGenericFolderIcon;
			}
		}
	
	 	theErr =GetPIcon(vRefNum,kSystemIconsCreator,bestIcon,theIcon);
		if (theErr) theErr = GetPIcon(vRefNum,kSystemIconsCreator,nextbest,theIcon);
		return theErr;

	}
	else
	{
		return GetIconFromVolume(vRefNum,parentFolderID,folderID,attributes,accessPrivileges,theIcon);
	}	
	return noErr; //makes the compiler happy
}


OSErr
GetDTIcon(SInt16 inVRef, OSType inCreator, OSType inType, PISSIcon** theIcon)
{
	PISSAssert(theIcon != NULL,"GetDTIcon paramErr");
	OSErr anErr=noErr;

	if (inType == kApplicationAliasType) inType = 'APPL';
	try
	{
		*theIcon = new PISSDTFileIcon(inVRef,inType,inCreator);
		if (sIcons == NULL) sIcons = new TSimpleList<PISSIcon*>(true);
		sIcons->Add(*theIcon);
	}
	catch(std::bad_alloc)
	{
		RemoveDeleteIcon(theIcon);
		anErr = memFullErr;
	}
	catch(OSErr theErr)
	{
		RemoveDeleteIcon(theIcon);
		anErr = theErr;
	}
	catch(...)
	{
		RemoveDeleteIcon(theIcon);
		anErr = memFullErr;
	}
	if (anErr == noSuchIconErr)
	{
		// There is no such Icon in the DTDB
	}
	PDebugMsgIf_(anErr != noErr,"GetDTIcon Err",anErr);
	return anErr;
	
}
OSErr
GetSystemIcon(OSType inType, PISSIcon** theIcon)
{
	PISSAssert(theIcon != NULL,"GetSystemIcon paramErr");
	OSErr anErr = noErr;
	try
	{
		*theIcon = new PISSSystemIcon(inType);
		if (sIcons == NULL) sIcons = new TSimpleList<PISSIcon*>(true);
		sIcons->Add(*theIcon);		
	}
	catch(std::bad_alloc)
	{
		RemoveDeleteIcon(theIcon);
		anErr = memFullErr;
	}
	catch(OSErr theErr)
	{
		RemoveDeleteIcon(theIcon);
		anErr = theErr;
	}
	catch(...)
	{
		RemoveDeleteIcon(theIcon);
		anErr = memFullErr;
	}
	if (anErr == noSuchIconErr) // might be in the finder...
	{
		SInt16 id =0;
		bool found = false;
		UInt32 index;
		UInt32 tableSize = FinderIconSuitePair::GetSize() / sizeof(IconTypePair);
		for (index = tableSize - 1; index >= 0; --index)
		{
			if (inType == FinderIconSuitePair::GetItem(index).folder_type)
			{
				id = FinderIconSuitePair::GetItem(index).icon_id;
				found = true;
				break;
			}
		}
		if (found)
		{
			short sysVRef;
			long sysDirID;

		try
			{
				FSSpec finderSpec;
				ThrowIfOSErr_(::FindFolder (kOnSystemDisk, kSystemFolderType,
			  				kDontCreateFolder, &sysVRef, &sysDirID ));
			  	ThrowIfOSErr_(
			  			FSMakeFSSpec(sysVRef,sysDirID,LMGetFinderName(),&finderSpec));
			  	*theIcon = new PISSResourceIcon(kSystemIconsCreator,inType,&finderSpec,id);
				if (sIcons == NULL) sIcons = new TSimpleList<PISSIcon*>(true);
				sIcons->Add(*theIcon);			  	
			}
			catch(std::bad_alloc)
			{
				RemoveDeleteIcon(theIcon);
				anErr = memFullErr;
			}
			catch(OSErr theErr)
			{
				RemoveDeleteIcon(theIcon);
				anErr = theErr;
			}
			catch(...)
			{
				RemoveDeleteIcon(theIcon);
				anErr = memFullErr;
			}
		
		}

	}
	return anErr;
}


OSErr
GetFolderInfo(short vRefNum, long dirID, CInfoPBRec* pb)
{
	PISSAssert(pb != NULL,"GetFolderInfo paramErr");
	OSErr err;
	std::memset((void*)pb,0,sizeof(CInfoPBRec));
	pb->dirInfo.ioVRefNum = vRefNum;
	pb->dirInfo.ioFDirIndex = 0;
	pb->dirInfo.ioDrDirID = dirID;
	err = PBGetCatInfoSync(pb);
	PDebugMsgIf_(err != noErr,"PBGetCatInfoSync, GetFolderInfo",err);
	return err;
}


pascal OSErr
PIdentifyFolder(short vRefNum, long dirID, FolderType* folderType)
{
	PISSAssert(folderType != NULL,"PIdentifyFolder paramErr");
	OSErr anErr = noErr;
	CInfoPBRec pb;
	anErr = GetFolderInfo(vRefNum,dirID,&pb);
	if (anErr) return anErr;
	return PISSIdentifyFolderPB(&pb,folderType);
}


OSErr
GetIconFromVolume(SInt16 				vRefNum,
				 SInt32 				parentFolderID,
				 SInt32 				folderID,
				 SInt8 					attributes,
				 SInt8 					accessPrivileges,
				 PISSIcon**				theIcon)
{
/*
Icon services doesn't seem to return the drive icons for floppies, CD's or hard disks.
It just gives us the generic icons. Therefore that is what I do here.
*/
#pragma unused (parentFolderID,folderID,attributes,accessPrivileges)
	PISSIcon*	anIcon;
	if (sIcons != NULL)
	{
		UInt32 iIndex = 1;
		
		while (sIcons->GetNthItem(iIndex++,&anIcon))
		
		{
#if !__option(RTTI)
			if (anIcon->GetWhatKindOfIcon() == kPISSIconVolumeKind)
#else			
			if (typeid(*anIcon) == typeid(PISSVolumeIcon))
#endif			
			{
#if __option(RTTI)
				if (dynamic_cast<PISSVolumeIcon*>(anIcon)->IsSameVolume(vRefNum))
#else
				if (static_cast<PISSVolumeIcon*>(anIcon)->IsSameVolume(vRefNum))
#endif				
				{
					anIcon->AddUser();
					*theIcon = anIcon;
					return noErr;
						
				}
			}
		}
	}


	DriverGestaltParam pb;
	OSErr	err;
	HParamBlockRec	vpb;
	ParamBlockRec	cpb;
	Handle iconSuite;
	Handle iconHandle;
	OSType volType = 0;
	Ptr*	drive_icon;	
	Str31 volName;
	IconActionUPP detachAction = NewIconActionProc(DetachIcons);
	std::memset((void*)&pb,0,sizeof(DriverGestaltParam));
	std::memset((void*)&vpb,0,sizeof(HParamBlockRec));
	vpb.volumeParam.ioNamePtr = (StringPtr)&volName[0];
	vpb.volumeParam.ioVRefNum = vRefNum;
	vpb.volumeParam.ioVolIndex = 0;
	err = PBHGetVInfoSync(&vpb);
	if (err) goto end;
	pb.ioVRefNum = vpb.volumeParam.ioVDrvInfo;
	pb.ioCRefNum = vpb.volumeParam.ioVDRefNum;
	pb.csCode 		= kDriverGestaltCode;
	pb.driverGestaltSelector = kdgMediaIconSuite;
	err = ::PBStatusSync((ParmBlkPtr) &pb);
	// Try the new media icon first
	if (!err)
	{
		err = PISSIconFamilyToIconSuite((IconFamilyPtr)GetDriverGestaltMediaInfoResponse(&pb),&iconSuite);
		if (!err)
		{
			goto newvolume;
		}
	}	
	if (err)
	{
	// try the new physical drive icon second.
		std::memset((void*)&pb,0,sizeof(DriverGestaltParam));
		pb.ioVRefNum = vpb.volumeParam.ioVDrvInfo;
		pb.ioCRefNum = vpb.volumeParam.ioVDRefNum;
		pb.csCode 		= kDriverGestaltCode;
		pb.driverGestaltSelector = kdgPhysDriveIconSuite;
		err = ::PBStatusSync((ParmBlkPtr) &pb);			
		if (!err)
		{
		err = PISSIconFamilyToIconSuite((IconFamilyPtr)GetDriverGestaltMediaInfoResponse(&pb),&iconSuite);

			if (!err)
			{
				goto newvolume;
			}
		}			
	}
	
	// See if it is a floppy.
	if (vpb.volumeParam.ioVDRefNum == kSonyDriverType) // kSonyDriverType is enumerated in CVolumes.h
	{
		if (vpb.volumeParam.ioVFSID == 0x4953)
		{
			// If it is a PC Floppy, use the PC floppy suite.
			err = GetIconSuite(&iconSuite,-3832,kSelectorAllAvailableData);
			if (!err)
			{
				ForEachIconDo(iconSuite,kSelectorAllAvailableData,detachAction,NULL);
				goto newvolume;			
			}
			err = GetPIcon(kOnSystemDisk,kSystemIconsCreator,kGenericFloppyIcon,theIcon);
			goto end;
		}
	}
	// For CD's we need a CD icon, hard disks a HD icon but only if DriverGestalt works...
	err = GetVolumeType(&volType,vpb.volumeParam.ioVDrvInfo,vpb.volumeParam.ioVDRefNum);
	if (err == noErr) 
	{
		switch (volType)
		{
			case kdgDiskType:
					err = GetPIcon(kOnSystemDisk,kSystemIconsCreator,kGenericHardDiskIcon,theIcon);
					goto end;
					break;
			case kdgCDType:
					err =  GetPIcon(kOnSystemDisk,kSystemIconsCreator,kGenericCDROMIcon,theIcon);
					goto end;
					break;
//			God knows where apple gets the information about RAM disks or how they get a nice
//			colour icon for 'file' based media... I don't
		}
	
	}
	// is is something else, or driver gestalt didn't work

	err = NewIconSuite(&iconSuite);
	if (err) goto end;
	
	// the following was copied direct from J.W.Walkers code.
	// set up for Control call
	cpb.cntrlParam.ioCRefNum = vpb.volumeParam.ioVDRefNum;
	cpb.cntrlParam.ioVRefNum = vpb.volumeParam.ioVDrvInfo;
	drive_icon = (Ptr *) &cpb.cntrlParam.csParam;
	*drive_icon = NULL;
	
	// Warning: Under A/UX 3.0, the csCode = 22 call can fail
	// without returning an error code.
	// try media icon
	cpb.cntrlParam.csCode = 22;
	err = PBControlSync( &cpb );

	if ( (err != noErr) || ((long)*drive_icon <= 0) )
	{
		// try physical drive icon;
		cpb.cntrlParam.csCode = 21;
		err = PBControlSync( &cpb );
	}
	
	if ( (err == noErr) && (0 < (long)*drive_icon) )	// we got an icon
	{
		err = PtrToHand( *drive_icon, &iconHandle, kLargeIconSize );
		if (err)
		{
			DisposeIconSuite(iconSuite,true);
			goto end;
		}
		err = AddIconToSuite(iconHandle, iconSuite, kLarge1BitMask);
		if (err)
		{
			DisposeIconSuite(iconSuite,true);
			goto end;
		}		
	}
	else
	{
		DisposeIconSuite(iconSuite,true);
		err =  GetPIcon(kOnSystemDisk,kSystemIconsCreator,kGenericHardDiskIcon,theIcon);
		goto end;		
	}
	if (err) goto end;
newvolume:
try {
	*theIcon = NULL;
	*theIcon = new PISSVolumeIcon(iconSuite,vRefNum,volName);
	if (*theIcon != NULL) 
	{
		if (sIcons == NULL) sIcons = new TSimpleList<PISSIcon*>(true);
		sIcons->Add(*theIcon);
	}
}	
catch(...)
{
	RemoveDeleteIcon(theIcon);
	err = memFullErr;
}
end:
	DisposeRoutineDescriptor(detachAction);
	return err;

}


	

OSErr
PISSIdentifyFolder(SInt16 				vRefNum,
					 SInt32 				parentFolderID,
					 SInt32 				folderID,
					 SInt8 					attributes,
					 SInt8 					accessPrivileges,
					 FolderType*			folderType,
					 OSType*				iconType)
{
	CInfoPBRec pb;
	PISSAssert(folderType != NULL,"PISSIdentify Folder paramErr");
	std::memset((void*)&pb,0,sizeof(CInfoPBRec));
	pb.dirInfo.ioVRefNum = vRefNum;
	pb.dirInfo.ioFDirIndex = 0;
	pb.dirInfo.ioDrDirID = folderID;
	pb.dirInfo.ioDrParID = parentFolderID;
	pb.dirInfo.ioFlAttrib = attributes;
	pb.dirInfo.ioACUser = accessPrivileges;
	return PISSIdentifyFolderPB(&pb,folderType,iconType);

}						 
// Modified from J.W. Walkers find_normal_folder_icon source.
OSErr
PISSIdentifyFolderPB(const CInfoPBRec* pb,FolderType* folderType,OSType * iconType)
{
// We could probably cache this data

	PISSAssert(folderType != NULL,"PISSIdentifyFolder paramErr");
	PISSAssert(pb != NULL,"PISSIdentifyFolder paramErr");
	if ((folderType == NULL) || (pb == NULL)) return paramErr;
	long foundDirID;
	short blahVRef;
	UInt32 index;
	UInt32 pairCount;
	OSErr err=noErr;
	OSErr retcode = fnfErr;
	long dirID = pb->dirInfo.ioDrDirID;
	short vRefNum = pb->dirInfo.ioVRefNum;
	long aDirID = pb->dirInfo.ioDrParID;
	err = noErr;

	pairCount = SystemFolderFolders::GetSize() / sizeof(fileTypeIconTypeMap);
	
	for (index = 0; index < pairCount; ++index)
	{
		err = FindFolder( vRefNum,
			SystemFolderFolders::GetItem(index).fileType,kDontCreateFolder,&blahVRef,
			&foundDirID );

		if ( (err == noErr) && (foundDirID == dirID) )
		{
			*folderType = SystemFolderFolders::GetItem(index).fileType;
			if (iconType != NULL)
				*iconType = SystemFolderFolders::GetItem(index).iconType;
			retcode = noErr;
			break;
		}
	}
	PDebugMsgIf_(retcode != noErr,"PISSIdentifyFolder nosuchfolder",retcode);
	return retcode;
}

pascal Boolean
PtInPIcon(const Point *	testPt,
								 const Rect *			iconRect,
								 IconAlignmentType 		align,
								 PISSIcon* 				theIcon)
{
	PISSAssert(testPt != NULL,"");
	PISSAssert(iconRect != NULL,"");
	PISSAssert(theIcon != NULL,"");
	PISSAssert(sHasBeenInited,"");
	if (sHasIconServices) return PtInIconRef(testPt,iconRect,align,kIconServicesNormalUsageFlag,(IconRef)theIcon);	
	return theIcon->PtInIcon(testPt,iconRect,align);

}	
							 
pascal Boolean
RectInPIcon(const Rect *			testRect,
				 const Rect *			iconRect,
				 IconAlignmentType 		align,
				 PISSIcon*				theIcon)
{
	PISSAssert(testRect != NULL,"");
	PISSAssert(iconRect != NULL,"");
	PISSAssert(theIcon 	!= NULL,"");
	PISSAssert(sHasBeenInited,"");
	if (sHasIconServices) return RectInIconRef(testRect,iconRect,align,kIconServicesNormalUsageFlag,(IconRef)theIcon);
	return	theIcon->RectInIcon(testRect,iconRect,align);
	
}
pascal OSErr		
PIconToRgn(RgnHandle 				theRgn,
				 const Rect *			iconRect,
				 IconAlignmentType 		align,
				 PISSIcon* 				theIconRef)
{
	PISSAssert(iconRect != NULL,"");
	
	if (sHasIconServices)
		return IconRefToRgn(theRgn,iconRect,align,kIconServicesNormalUsageFlag,IconRef(theIconRef));

	return theIconRef->IconToRgn(theRgn,iconRect,align);
}								 
pascal OSErr 
PlotPIcon(const Rect *		theRect,
			 IconAlignmentType 		align,
			 IconTransformType 		transform,
			 PISSIcon*				theIcon)
{
	PISSAssert(theRect != NULL,"");
	PISSAssert(theIcon != NULL,"");
	PISSAssert(sHasBeenInited,"");
	
	if (sHasIconServices) return PlotIconRef(theRect,align,transform,kIconServicesNormalUsageFlag,IconRef(theIcon));

	if (theRect == NULL) return paramErr;
	if (theIcon == NULL) return paramErr;
	return theIcon->PlotIcon(theRect,align,transform);
}

pascal OSErr		
UnregisterPIcon	( OSType inCreator , OSType inType)
{
	PISSIcon*	anIcon;
	OSErr anErr = noSuchIconErr;
	
	if (sHasIconServices) return UnregisterIconRef(inCreator,inType);
	
	if (sIcons != NULL)
	{
		UInt32 iIndex = 1;

		while (sIcons->GetNthItem(iIndex++,&anIcon))
		{
#if !__option(RTTI)		
			if (anIcon->GetWhatKindOfIcon() == kPISSIconResourceKind)
#else			
			if (typeid(*anIcon) == typeid(PISSResourceIcon))
#endif			
			{
				if ((anIcon->GetType() == inType) && (anIcon->GetCreator() == inCreator))
				{
					anErr = static_cast<PISSResourceIcon*>(anIcon)->UnregisterIcon();
					break;

				}
			}
		
		}
	}
	PDebugMsgIf_(anErr != noErr,"UnregisterPIcon ",anErr);
	return anErr;
}
pascal OSErr		
RegisterPIconFromResource(	OSType creator,
								OSType type,
								const FSSpec* inSpec,
								SInt16	inResID,
								PISSIcon**	theIcon)
{
	PISSAssert(inSpec != NULL,"");
	PISSAssert(theIcon != NULL,"");
	PISSAssert(sHasBeenInited,"");
	
	if (sHasIconServices) return RegisterIconRefFromResource(creator,type,inSpec,inResID,(IconRef*)theIcon);

	OSErr theErr=noErr;
	if (inSpec == NULL) return paramErr;
	if (theIcon == NULL) return paramErr;
	PISSIcon*	anIcon;
	try {
	bool found = false;
	
	if (sIcons != NULL)
	{
		UInt32 iIndex = 1;

		while (sIcons->GetNthItem(iIndex++,&anIcon))
		{

			if ((anIcon->GetType() == type) && (anIcon->GetCreator() == creator))
			{
#if !__option(RTTI)
				if (anIcon->GetWhatKindOfIcon() == kPISSIconResourceKind)
#else			
				if (typeid(*anIcon) == typeid(PISSResourceIcon))
#endif				
				{	
					*theIcon = anIcon;
					found = true;
					anIcon->AddUser();
					break;
				}
			}
		
		}
	}
	
	if (!found)
	{
		if (sIcons == NULL) sIcons = new TSimpleList<PISSIcon*>(true);
		anIcon = new PISSResourceIcon(creator,type,inSpec,inResID);
		sIcons->Add(const_cast<PISSIcon*>(anIcon));
		*theIcon = anIcon;	
	}
	
	}
	catch(OSErr err)
	{
		theErr = err;
		RemoveDeleteIcon(&anIcon);
		*theIcon = NULL;
	}
	catch(std::bad_alloc)
	{
		RemoveDeleteIcon(&anIcon);
		theErr = memFullErr;
		*theIcon = NULL;
	}
	catch(...)
	{
		RemoveDeleteIcon(&anIcon);
		theErr = memFullErr;
		*theIcon = NULL;
	}
	PDebugMsgIf_(theErr != noErr,"UnregisterPIcon ",theErr);
	return theErr;
}	
													
pascal OSErr
ReleasePIcon(PISSIcon* inIcon)
{
	PISSAssert(inIcon != NULL,"");
	PISSAssert(sHasBeenInited,"");
	
	if (sHasIconServices) return ReleaseIconRef(IconRef(inIcon));
	
	inIcon->RemoveUser();
	return noErr;
}
pascal 	OSErr		AcquirePIcon(PISSIcon* theIcon)
{
	if (sHasIconServices) return AcquireIconRef(IconRef(theIcon));
	theIcon->AddUser();
	return noErr;
}
pascal 	OSErr		GetPIconOwners(PISSIcon* theIcon, UInt16 * theOwners)
{
	if (sHasIconServices) return GetIconRefOwners(IconRef(theIcon),theOwners);
	*theOwners = UInt16(theIcon->GetOwners());
	return noErr;
}
		
pascal Handle		
GetIconProc(ResType iconType,PISSIcon* data)
{
	Handle outHandle = NULL;
	outHandle = data->GetIconData(iconType);
	return outHandle;
}


