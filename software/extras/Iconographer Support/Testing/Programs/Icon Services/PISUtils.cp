// a couple of small utility routines.
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
#include <string.h>
#include <stdarg.h>
#include <stdio.h>
#include <Resources.h>
#include <DriverServices.h>

#include "PISUtils.h"


pascal OSErr DetachIcons(ResType theType,Handle* theIcon,void* /*unused*/)
{
	#pragma unused (theType)
	DetachResource(*theIcon);
	return noErr;
}
pascal OSErr GetVolumeType(OSType* volType,short inVDrvInfo,short inVDRefNum)
{
	DriverGestaltParam pb;
	OSErr anErr;
	memset((void*)&pb,0,sizeof(DriverGestaltParam));
	pb.ioVRefNum = inVDrvInfo;
	pb.ioCRefNum = inVDRefNum;
	pb.csCode 		= kDriverGestaltCode;
	pb.driverGestaltSelector = kdgDeviceType;
	anErr = PBStatusSync((ParmBlkPtr) &pb);
	if (anErr == noErr) *volType = pb.driverGestaltResponse;
	
	return anErr;
}

pascal OSErr PISSIconFamilyToIconSuite(IconFamilyPtr inFamily,Handle *iconSuite)
{
	Handle theSuite;
	Ptr		thePointer=(Ptr)inFamily;
	Ptr		theEnd = thePointer;
	Boolean addedstuff = false;
	Boolean addThis;
	Boolean haveMask = false;
	OSErr	err = noErr;
	OSType iconType;
	Size iconSize;
	Handle anIcon;
	Size headSize = sizeof(OSType) + sizeof(Size);
	if ((inFamily == NULL) || (iconSuite == NULL)) return paramErr;
	if (*(OSType*)thePointer != kIconFamilyType) return paramErr;
	err = NewIconSuite(&theSuite);
	if (err) return err;
	thePointer += sizeof(OSType);
	theEnd += *(Size*)thePointer;
	thePointer += sizeof(Size);
	while (thePointer < theEnd)
	{
		addThis = false;
		iconType = ((IconFamilyElement*)thePointer)->elementType;
		iconSize = ((IconFamilyElement*)thePointer)->elementSize -headSize;
		thePointer += headSize;
		switch (iconType)
		{
			case kSmall1BitMask				:
			case kLarge1BitMask				:
			case kMini1BitMask				:
					haveMask = true;			
			case kLarge4BitData				:
			case kLarge8BitData				:
			case kSmall4BitData				:
			case kSmall8BitData				:
			case kMini4BitData				:
			case kMini8BitData				:
					addThis = true;
					break;
			default:
					addThis = false;
					break;
		}
		if (addThis)
		{
			err = PtrToHand(thePointer,&anIcon,iconSize);
			if (!err)
			{
				err = AddIconToSuite(anIcon,theSuite,iconType);
				if (err) DisposeHandle(anIcon);
				else addedstuff = true;
				err = noErr;
			}
			else break;
		}
		thePointer += iconSize;
	}
	
	if ((!addedstuff) || (err) || (!haveMask)) DisposeIconSuite(theSuite,true);
	if ((!addedstuff)  || (!haveMask)) err = noIconDataAvailableErr;
	else *iconSuite = theSuite;
	return err;
}
								 
