// CVolumes.cp = everything you ever wanted to know about a volume

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
// Revision History:
// Wednesday, January 13, 1999 - Original
//**************************************************************************************
// Note - this is probably the only class in the bunch that will compile with MrCpp...
//
#include "CVolumes.h"

// MacOS includes
#include <DriverGestalt.h>
#include <Devices.h>
#include <Errors.h>
#include <StringCompare.h>

// Powerplant - for ThrowIfOSErr_
#ifdef __MWERKS__
#include <UException.h>
#else
#define ThrowIfOSErr_(x) do { OSErr __err = x; if (__err != noErr) throw(long)(__err);} while(0)
#define Try_ try
#define Catch_(x) catch(long x)
#endif
/*

#include <Traps.h>

// Iam including MoreFilesExtras, so I don't need this here.
pascal OSErr PBXGetVolInfoSync(XVolumeParamPtr paramBlock)
{
	enum
	{
		kXGetVolInfoSelector = 0x0012,	// Selector for XGetVolInfo 
		
		uppFSDispatchProcInfo = kRegisterBased
			 | REGISTER_RESULT_LOCATION(kRegisterD0)
			 | RESULT_SIZE(SIZE_CODE(sizeof(OSErr)))
			 | REGISTER_ROUTINE_PARAMETER(1, kRegisterD0, SIZE_CODE(sizeof(long)))	// selector 
			 | REGISTER_ROUTINE_PARAMETER(2, kRegisterD1, SIZE_CODE(sizeof(long)))	// trap word 
			 | REGISTER_ROUTINE_PARAMETER(3, kRegisterA0, SIZE_CODE(sizeof(XVolumeParamPtr)))
	};
	
	return ( CallOSTrapUniversalProc(NGetTrapAddress(_FSDispatch, OSTrap),
										uppFSDispatchProcInfo,
										kXGetVolInfoSelector,
										_FSDispatch,
										paramBlock) );
}
*/
// Member List:
//		Str255						mName;
//		GetVolParmsInfoBuffer		mVolInfo;
//		UInt32						mDrvInfo;
//		OSType						mVolType;
//		DInfo						mDirInfo;
//**************************************************************************************
// Function:	Default Constructor
//
// Description: Builds the CVolumes class.
//
// Inputs:	none
//		
// Outputs:	none	
//
//**************************************************************************************
CVolumes::CVolumes(void) : mDrvInfo(0),mVolType(kdgDiskType)
{
	mDirInfo.frFlags = 0;
	mDirInfo.frView = 0;
	mName[0] =0;
	mVolInfo.vMServerAdr = 0;
	mVolInfo.vMAttrib = 0L;
	ioNamePtr = (StringPtr)&mName;
	ioVolIndex = 0;
	ioVRefNum = 0;
	
}
//**************************************************************************************
// Function:	FSSpec constructor
//
// Description: Builds the CVolumes class.
//
// Inputs:	none
//		
// Outputs:	none	
//
//**************************************************************************************
CVolumes::CVolumes(FSSpec &inSpec) : mDrvInfo(0),mVolType(kdgDiskType)
{
	OSErr theErr;
	mDirInfo.frFlags = 0;
	mDirInfo.frView = 0;	
	mName[0] =0;
	mVolInfo.vMServerAdr = 0;
	mVolInfo.vMAttrib = 0L;	
	ioNamePtr = (StringPtr)&mName;
	ioVolIndex = 0;
	ioVRefNum = inSpec.vRefNum;
	theErr = DoIt();
	ThrowIfOSErr_(theErr);
}
//**************************************************************************************
// Function:	
//
// Description: Builds the CVolumes class.
//
// Inputs:	none
//		
// Outputs:	none	
//
//**************************************************************************************
CVolumes::CVolumes(SInt16	inIndex) : mDrvInfo(0),mVolType(kdgDiskType)
{
	OSErr theErr = noErr;
	mDirInfo.frFlags = 0;
	mDirInfo.frView = 0;	
	mName[0] =0;
	mVolInfo.vMServerAdr = 0;
	mVolInfo.vMAttrib = 0L;	
	ioNamePtr = (StringPtr)&mName;
	ioVolIndex = inIndex;
	ioVRefNum = 0;
	theErr = DoIt();	
	ThrowIfOSErr_(theErr);	
}
//**************************************************************************************
// Function:	
//
// Description: Builds the CVolumes class.
//
// Inputs:	none
//		
// Outputs:	none	
//
//**************************************************************************************
CVolumes::CVolumes(Str255 inName) : mDrvInfo(0),mVolType(kdgDiskType)
{
	OSErr theErr = noErr;
	mDirInfo.frFlags = 0;
	mDirInfo.frView = 0;	
	Str255 tempName;
	::BlockMoveData(&inName[0],&mName[0],inName[0]+1);
	::BlockMoveData(&inName[0],&tempName[0],inName[0]+1);
	tempName[0]--;
	mVolInfo.vMServerAdr = 0;
	mVolInfo.vMAttrib = 0L;	
	ioNamePtr = (StringPtr)&mName;
	ioVolIndex = -1;
	ioVRefNum = 0;
	theErr = DoIt();	
	ThrowIfOSErr_(theErr);
	if (IdenticalString(tempName,mName,NULL)) theErr = nsvErr;
	ThrowIfOSErr_(theErr);	
}

//**************************************************************************************
// Function:	Destructor
//
// Description: Destroys the CVolumes class.
//
// Inputs:	none
//		
// Outputs:	none	
//
//**************************************************************************************
CVolumes::~CVolumes(void)
{
// Nothing
}

//**************************************************************************************
// Function:	SetVolume
//
// Description: Sets the VRefNum associated with this volume
//
// Inputs:	FSSpec
//		
// Outputs:	none	
//
//**************************************************************************************
void				
CVolumes::SetVolume(FSSpec& inSpec)
{
	ioVRefNum = inSpec.vRefNum;
	ioVolIndex = 0;
}

//**************************************************************************************
// Function:	SetVolume
//
// Description: Sets the VRefNum associated with this volume
//
// Inputs:	vRefNum
//		
// Outputs:	none	
//
//**************************************************************************************
void				
CVolumes::SetVolume(SInt16 inVRefNum)
{
	ioVRefNum = inVRefNum;
	ioVolIndex = 0;
}

//**************************************************************************************
// Function:	SetVolumeIndex
//
// Description: Sets the volume index associated with this volume
//
// Inputs:	volindex
//		
// Outputs:	none	
//
//**************************************************************************************
void				
CVolumes::SetVolumeIndex(SInt16 inVolIndex)
{
	ioVolIndex = inVolIndex;
}



//**************************************************************************************
// Function:	DoIt
//
// Description: Gets the volume information
//
// Inputs:	none
//		
// Outputs:	any errors that occurred
// noErr
// nsvErr  -  No such volume
// notOpenErr - couldn't find the drive in the drive queue header
// volOffLinErr - the volume is not online
// paramErr - No default volume	
//
//**************************************************************************************
OSErr				
CVolumes::DoIt()
{
	OSErr result;
	result = ::PBXGetVolInfoSync(this);
	if (result == noErr)
	{
	// okay, we want the server address for IsNetworkVolume()
		HParamBlockRec			pb;
		pb.ioParam.ioVRefNum = ioVRefNum;
		pb.ioParam.ioNamePtr = NULL;
		pb.ioParam.ioBuffer = (Ptr)&mVolInfo;
		pb.ioParam.ioReqCount = sizeof(mVolInfo);
		result = ::PBHGetVolParmsSync(&pb);
		if (result != noErr) {
			mVolInfo.vMAttrib = 0;
		}
		if (result == noErr)
		{
			if (ioVDrvInfo != 0) // volume is online, not ejected (Does this apply to OS8?)
			{
				// we want this for CanEject()
				DrvQElPtr drvQElem;
				drvQElem = (DrvQElPtr)(::GetDrvQHdr()->qHead);
				while ( (drvQElem != NULL) && (drvQElem->dQDrive != ioVDrvInfo) )
				{
				drvQElem = (DrvQElPtr)drvQElem->qLink;
				}
				if (drvQElem != NULL) mDrvInfo = *(UInt32*)((Ptr)drvQElem - 4);
				else result = notOpenErr; // shouldn't happen
				if (result == noErr)
					result = FindVolType();
				if (result == noErr)	
					result = GetDInfo();	
			}
		}
		else result = volOffLinErr;
	}
	return result;
}



//**************************************************************************************
// Function:	FindVolType
//
// Description: Returns the type of this volume
//
// Inputs:	none
//		
// Outputs:	OSErr
//
//**************************************************************************************
OSErr
CVolumes::FindVolType()
{

	// Use Driver Gestalt to get the type, it that fails, guess it.
	OSType theType;
	OSErr anErr;
	DriverGestaltParam pb;
	pb.ioVRefNum = ioVDrvInfo;
	pb.ioCRefNum = ioVDRefNum;
	pb.csCode 		= kDriverGestaltCode;
	pb.driverGestaltSelector = kdgDeviceType;
	anErr = ::PBStatusSync((ParmBlkPtr) &pb);
	// Isn't Driver Gestalt wonderful...
	if (anErr == noErr) theType = pb.driverGestaltResponse;
	else
	{	
		// Boo! DriverGestalt doesn't work, we'll have to guess.
		// Note that we could do more if we got the driver name, could even better Driver Gestalt..
		// but driver names are not something we should rely on too much
		do{
			if (ioVDRefNum == kSonyDriverType)
			// if it is the .Sony driver then it is a floppy duh!
			{ 
				theType = kdgFloppyType;
				break;
			}
			if (CanEject() && !Locked())
			// if the volume isn't locked and it is ejectable then it is removable media
			// zip/jaz/sequestetc...(or is it??)
			{
				theType = kdgRemovableType;
				break;
			}
			if (CanEject() && Locked())
			// if it is ejectable and locked then it might be a CD (or it might be a locked zip)
			{
				theType = kdgCDType;
				break;
			}	
			// if it isn't ejectable then it is a disk...( or not? ).
			theType = kdgDiskType;
		}while(false);
	}
	mVolType = theType;
	return noErr;
}

//**************************************************************************************
// Function:	GetDInfo
//
// Inputs:	none
//		
// Outputs:	OSErr
//
//**************************************************************************************
OSErr
CVolumes::GetDInfo()
{
	CInfoPBRec fileInfo;
	OSErr err;
	bool answer = false;
	fileInfo.dirInfo.ioCompletion = NULL; 	// synchronous
	fileInfo.dirInfo.ioNamePtr = NULL;		// No name needed
	fileInfo.dirInfo.ioVRefNum = ioVRefNum;	// Need a vRefNum
	fileInfo.dirInfo.ioFDirIndex =-1; 		// Use ioDrDirID
	fileInfo.dirInfo.ioDrDirID = fsRtDirID;	// Need a DirID
	err = ::PBGetCatInfoSync(&fileInfo);	// viola, why isn't the DInfo struct available
											// with PBXGetVolInfo we wonder?
											// along with a couple of other relevant bits...
	if (err == noErr)										
		::BlockMoveData(&fileInfo.dirInfo.ioDrUsrWds,&mDirInfo,sizeof(DInfo));
	return err;

}

//**************************************************************************************
// Function:	Count - static
//
// Inputs:	none
//		
// Outputs:	OSErr
//
//**************************************************************************************

SInt16
CVolumes::Count()
{
	OSErr 		theErr = noErr;
	CVolumes*	tempVolume;
	SInt16		index = 1;
	Try_
	{
		tempVolume = new CVolumes(index);
		do {
			index++;
			tempVolume->SetVolumeIndex(index);
			theErr = tempVolume->DoIt();
		} while (theErr != nsvErr);		
	
	}
	Catch_(anErr)
	{
		theErr = OSErr(anErr);
		index = 1;
	}
	return --index;
}
