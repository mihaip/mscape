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
#include <LowMem.h>
#include <Gestalt.h>
#include <Appearance.h>
#include <Resources.h>
#include <DriverServices.h>
#include <DriverGestalt.h>
#include <string>
#include <cstdarg>
#include <cstdio>
#include <UException.h>
#include <TextUtils.h>
#include <LowMem.h>
#include "PISUtils.h"
#include "MoreDesktopMgr.h"
#include "CVolumes.h"
#include "staticdata.h"
#include "PISSIcons.h"
#include "CSimplePointerList.h"
class PISSIcon;
extern			IconGetterUPP 		sIconGetter;
extern			UInt32				sAppearanceVersion;		
extern			bool				sHasIconServices;
extern	 		TSimpleList<PISSIcon*>*	sIcons;

#pragma mark -
			 
PISSIcon::PISSIcon() 
{
	mType = '????';
	mCreator = '????';
	mIconData = NULL;
	mRefCount = 1;
}


PISSIcon::~PISSIcon()
{
		::DisposeIconSuite(IconSuiteRef(mIconData),true);
		
}
void
PISSIcon::AddUser()
{
	mRefCount++;
}
void
PISSIcon::RemoveUser()
{
	mRefCount--;
	if (mRefCount <=0)
	{
		sIcons->Remove(this);
	} 
}
bool		
PISSIcon::PtInIcon(const Point *			testPt,
								 const Rect *			iconRect,
								 IconAlignmentType 		align)
{
	return PtInIconSuite(*testPt,iconRect,align,Handle(mIconData));
}
bool		
PISSIcon::RectInIcon(const Rect *			testRect,
								 const Rect *			iconRect,
								 IconAlignmentType 		align)
{
	return RectInIconSuite(testRect,iconRect,align,Handle(mIconData));
}

OSErr
PISSIcon::PlotIcon(const Rect *			theRect,
								 IconAlignmentType 		align,
								 IconTransformType 		transform)
{
	return PlotIconSuite(theRect,align,transform,Handle(mIconData));
}
OSErr		
PISSIcon::IconToRgn(RgnHandle 				theRgn,
									 const Rect *			iconRect,
									 IconAlignmentType 		align)
{

	return IconSuiteToRgn(theRgn,iconRect,align,Handle(mIconData));
}									 			
#pragma mark -
PISSResourceIcon::PISSResourceIcon(OSType creator,OSType type,const FSSpec* inSpec,SInt16 inResID)
	: PISSIcon()
{
	mType = type;
	mKillOnDie = false;
	mCreator = creator;
	::BlockMoveData(inSpec,&mSpec,sizeof(FSSpec));
	mResRef = inResID;
	mRefCount = 1;
	mIconData = NULL;
	Boolean saveResLoad = ::LMGetResLoad();
	Handle iconHandle = NULL;
	SInt16	refFileRef = -1;
	try {
		SetResLoad(false);
		refFileRef = ::FSpOpenResFile(&mSpec, fsRdPerm);
		ThrowIfResError_();
		SetResLoad(saveResLoad);
		if (refFileRef !=-1)
		{
			OSErr err = noErr;
#ifdef PDebugUseICNS
			// We are doing this for testing only...
			iconHandle = Get1Resource('icns',mResRef);
			if (iconHandle != NULL) // we are running on a system with icon services.
			{
				HLock(Handle(iconHandle));
				err = PISSIconFamilyToIconSuite(IconFamilyPtr(*iconHandle),&mIconData);
				HUnlock(Handle(iconHandle));
				ReleaseResource(iconHandle);
				if (err == noErr)
				{
					CloseResFile(refFileRef);
					refFileRef = -1;
					iconHandle = NULL;
				}
				else
				{
					if (mIconData != NULL) DisposeIconSuite(mIconData,true);
					mIconData = NULL;
				}
			}
			if (mIconData == NULL) {
#endif			
			iconHandle = Get1Resource('ICN#',inResID);
			if (iconHandle == NULL) iconHandle = Get1Resource('ics#',inResID);
			if (iconHandle == NULL) err = noIconDataAvailableErr;
			CloseResFile(refFileRef);
			refFileRef = -1;
			ThrowIfOSErr_(err);
			ThrowIfOSErr_(MakeIconCache((Handle*)&mIconData,sIconGetter,(void*)this));
#ifdef PDebugUseICNS
		}
#endif					
		}
		else ThrowOSErr_(noSuchIconErr); //??
	}
	catch(...)
	{
			SetResLoad(saveResLoad);
			if (refFileRef != -1) CloseResFile(refFileRef);
			throw;
	}
	
	
}
PISSResourceIcon::~PISSResourceIcon	()
{
 
}
void
PISSResourceIcon::RemoveUser()
{
	mRefCount--;
	if (mRefCount < 0) mRefCount = 0;
	if (mRefCount == 0)
	{
		if (mKillOnDie)
		{
			sIcons->Remove(this);
		}
	}	
}
OSErr
PISSResourceIcon::UnregisterIcon()
{
	mKillOnDie = true;
	if (mRefCount == 0) RemoveUser();
	return noErr;
}
Handle		
PISSResourceIcon::GetIconData(ResType theType)
{
	Boolean saveResLoad = ::LMGetResLoad();
	Handle returnHandle = nil;
	SInt16	refFileRef = -1;
	try {
		SetResLoad(false);
		refFileRef = ::FSpOpenResFile(&mSpec, fsRdPerm);
		ThrowIfResError_();
		SetResLoad(saveResLoad);
		if (refFileRef !=-1)
		{
			returnHandle = Get1Resource(theType, mResRef);
			if (returnHandle)
			{
			 	DetachResource(returnHandle);
//			 	HPurge(returnHandle);
			} 	
			CloseResFile(refFileRef);
			refFileRef = -1;
		}
	}
	catch(...)
	{
			SetResLoad(saveResLoad);
			if (refFileRef != -1) CloseResFile(refFileRef);
	}

	return returnHandle;
}	

#pragma mark -

PISSSystemIcon::PISSSystemIcon(OSType inIcon) : PISSIcon()
{
	mType = inIcon;
	mCreator = kSystemIconsCreator;
	mResNum = 0;
	bool found = false;

	UInt32 paircount = IconSuiteTypePair::GetSize()/sizeof(IconTypePair);
	UInt32 index;
	for(index=0;index<paircount;index++)
	{
		if (IconSuiteTypePair::GetItem(index).folder_type == inIcon)
		{
			mResNum = IconSuiteTypePair::GetItem(index).icon_id;
			found = true;
			break;
		}
	}
	if ((!found) && (sAppearanceVersion >= 0x0100))
	{
		paircount = AppearanceIconSuitePair::GetSize()/sizeof(IconTypePair);
		for(index=0;index<paircount;index++)
		{
			if (AppearanceIconSuitePair::GetItem(index).folder_type == inIcon)
			{
				mResNum = AppearanceIconSuitePair::GetItem(index).icon_id;
				found = true;
				break;
			}
		}
	}
	if (!found)
	{
		paircount = OldSystemSuitePair::GetSize()/sizeof(IconTypePair);
		for(index=0;index<paircount;index++)
		{
			if (OldSystemSuitePair::GetItem(index).folder_type == inIcon)
			{
				mResNum = OldSystemSuitePair::GetItem(index).icon_id;
				found = true;
				break;
			}
		}
	
	
	}
	if (found)
	{
		OSErr err = noErr;
		Handle iconHandle = NULL;
#ifdef PDebugUseICNS
		// We are doing this for testing only...
		iconHandle = GetResource('icns',mResNum);
		if (iconHandle != NULL) // we are running on a system with icon services.
		{
			HLock(Handle(iconHandle));
			err = PISSIconFamilyToIconSuite(IconFamilyPtr(*iconHandle),&mIconData);
			HUnlock(Handle(iconHandle));
			ReleaseResource(iconHandle);
			iconHandle = NULL;
			if (err)
			{
			 	DisposeIconSuite(mIconData,true);
			 	err = noErr;
			 	mIconData = NULL;
			}	
		}
		if (mIconData == NULL){
#endif		
		iconHandle = GetResource('ICN#',mResNum);
		if (NULL==iconHandle) iconHandle = GetResource('ics#',mResNum);
		if (NULL==iconHandle) iconHandle = GetResource('icm#',mResNum);
		if (NULL==iconHandle)
		{ // Don't have any masks
			ThrowOSErr_(noSuchIconErr);
		}
		else
		{
			ReleaseResource(Handle(iconHandle));
			ThrowIfOSErr_(MakeIconCache((Handle*)&mIconData,sIconGetter,(void*)this));
		}
#ifdef PDebugUseICNS
		}
#endif				
	}
	else ThrowOSErr_(noSuchIconErr);
	
}

PISSSystemIcon::~PISSSystemIcon()
{
}
Handle
PISSSystemIcon::GetIconData(ResType theType)
{
	Handle returnHandle = nil;
	returnHandle = GetResource(theType, mResNum);
	if (returnHandle)
	{ 
		DetachResource(returnHandle);
//		HPurge(Handle(returnHandle));
	}	
	return returnHandle;
}	
#pragma mark -
PISSDTFileIcon::PISSDTFileIcon(SInt16 inVRef,OSType inType,OSType inCreator) : PISSIcon()
{
	OSErr err=noErr;
	Handle iconHandle;
	bool found = false;
	mCreator = inCreator;
	mType = inType;
	err = DTGetIcon(NULL,inVRef,kLargeIcon,inCreator,inType,&iconHandle);
	if (err)
		err = DTGetIcon(NULL,inVRef,kSmallIcon,inCreator,inType,&iconHandle);
	if (err) // it is just not on the passed in vRef, no problem yet.
	{
		SInt16 index = 1;
		try {
			while (!found)
			{
				CVolumes aVol(index);
				if (!aVol.IsNetworkVolume()) // try local volumes
				{
					err = DTGetIcon(NULL,aVol.GetVolVRefNum(),kLargeIcon,inCreator,inType,&iconHandle);
					if (err)
						err = DTGetIcon(NULL,aVol.GetVolVRefNum(),kSmallIcon,inCreator,inType,&iconHandle);
					if (err == noErr)
					{
						found = true;
						DisposeHandle(Handle(iconHandle));
						mVRef = aVol.GetVolVRefNum();
						break;
					}
				}	
				index++;	
			}
		}
		catch(...)
		{
			err = fnfErr; // not really
		}
		try {
			index = 1;
			while (!found)
			{
				CVolumes aVol(index);
				if (aVol.IsNetworkVolume()) // try networked volumes.
				{
					err = DTGetIcon(NULL,aVol.GetVolVRefNum(),kLargeIcon,inCreator,inType,&iconHandle);
					if (err)
						err = DTGetIcon(NULL,aVol.GetVolVRefNum(),kSmallIcon,inCreator,inType,&iconHandle);
					if (err == noErr)
					{
						found = true;
						DisposeHandle(Handle(iconHandle));
						mVRef = aVol.GetVolVRefNum();
						break;
					}
				}	
				index++;	
			}
		}
		catch(...)
		{
			err = fnfErr; // not really
		}

	}
	else
	{
		found = true;
		DisposeHandle(Handle(iconHandle));
		mVRef = inVRef;
	}
	if (found)
	{
		ThrowIfOSErr_(MakeIconCache((Handle*)&mIconData,sIconGetter,(void*)this));
	}
	else ThrowOSErr_(noSuchIconErr);
}
PISSDTFileIcon::~PISSDTFileIcon()
{
}		
Handle		
PISSDTFileIcon::GetIconData(ResType theType)
{
	Handle retHandle = NULL;
	SInt16 DT_type = 0;
	switch(theType)
	{
		case kLarge1BitMask:
			DT_type = kLargeIcon;
			break;
		case kLarge4BitData:
			DT_type = kLarge4BitIcon;
			break;
		case kLarge8BitData:
			DT_type = kLarge8BitIcon;
			break;
		case kSmall1BitMask:
			DT_type = kSmallIcon;
			break;
		case kSmall4BitData:
			DT_type = kSmall4BitIcon;
			break;
		case kSmall8BitData:
			DT_type = kSmall8BitIcon;
			break;
		default:
			DT_type = 0;
			break;
	}
	if (DT_type !=0)
		DTGetIcon(NULL,mVRef,DT_type,mCreator,mType,&retHandle);
//		::HPurge(Handle(retHandle));
	return retHandle;	
}
#pragma mark -
PISSCustomFolderIcon::PISSCustomFolderIcon(OSType creator,OSType type,const FSSpec* inSpec,SInt16 inResNum) : PISSResourceIcon(creator,type,inSpec,inResNum)
{
	mKillOnDie = true;
}
PISSCustomFolderIcon::~PISSCustomFolderIcon()
{
}

#pragma mark -
PISSCustomFileIcon::PISSCustomFileIcon(OSType creator,OSType type,const FSSpec* inSpec,SInt16 inResNum)
	: PISSResourceIcon(creator,type,inSpec,inResNum)
{
	mKillOnDie = true;
}	

PISSCustomFileIcon::~PISSCustomFileIcon()
{
}
#pragma mark -
PISSVolumeIcon::PISSVolumeIcon(Handle inHandle,SInt16 inVRef,Str31 inVolName) : PISSIcon()
{
	mType = 'disk';
	mCreator = 'macs';
	mIconData = inHandle;
	OSErr err;
	FSSpec aSpec;
	err = FSMakeFSSpec(inVRef,fsRtParID,inVolName,&aSpec);
	PISSAssert( err == noErr, "Make FSSpec failed");
	ThrowIfOSErr_(err);
	err = NewAlias(NULL, &aSpec, &mVolume);
	PISSAssert(err == noErr,"NewAlias Failed");
	ThrowIfOSErr_(err);
}

PISSVolumeIcon::~PISSVolumeIcon()
{
	DisposeHandle(Handle(mVolume));
}
bool
PISSVolumeIcon::IsSameVolume(SInt16 inVRef)
{
	FSSpec aSpec;
	Boolean wasChanged;
	OSErr err;
	bool result = false;
	err = ResolveAliasWithMountFlags(NULL,mVolume,&aSpec,&wasChanged,
								 kResolveAliasFileNoUI);
	if ((!err) && (aSpec.vRefNum == inVRef)) result = true;							 
	return result;
}

