/*
	Public headers for PIconServices.
*/
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

#ifndef __CONDITIONALMACROS__
#include <ConditionalMacros.h>
#endif
#ifndef __FILES__
#include <Files.h>
#endif
#ifndef __FOLDERS__
#include <Folders.h>
#endif
#ifndef __CODEFRAGMENTS__
#include <CodeFragments.h>
#endif
#ifndef __ICONS__
#include <Icons.h>
#endif

#if PRAGMA_ONCE
#pragma once
#endif

#ifdef __cplusplus
extern "C" {
#endif
typedef void* PIconRef;

EXTERN_API(OSErr)
PISSInit(CFragInitBlockPtr 		initBlockPtr);

EXTERN_API(void)
PISSTerminate();
		// hit testing
EXTERN_API(Boolean)
PtInPIcon(const Point *			testPt,
			const Rect *			iconRect,
			IconAlignmentType 		align,
			PIconRef 				theIcon);	
			
EXTERN_API(Boolean)			
RectInPIcon(const Rect *			testRect,
			const Rect *			iconRect,
			IconAlignmentType 		align,
			PIconRef				theIcon);

EXTERN_API(OSErr)
PIconToRgn(RgnHandle 				theRgn,
			const Rect *			iconRect,
			IconAlignmentType 		align,
			PIconRef 				theIconRef)	;							 
		// drawing		
				 
EXTERN_API(OSErr)
PlotPIcon(const Rect *			theRect,
			IconAlignmentType 		align,
			IconTransformType 		transform,
			PIconRef				theIcon);
			
EXTERN_API(OSErr)			
UnregisterPIcon	( OSType inCreator , OSType inType);											
			
EXTERN_API(OSErr)
RegisterPIconFromResource(	OSType creator,
							OSType type,
							const FSSpec* inSpec,
							SInt16	inResID,
							PIconRef*	theIcon);
		// ref counting												
EXTERN_API(OSErr)
ReleasePIcon(PIconRef	inIcon);	
EXTERN_API(OSErr)		
AcquirePIcon(PIconRef theIcon);
EXTERN_API(OSErr)		
GetPIconOwners(PIconRef theIcon, UInt16 * theOwners);		
EXTERN_API(OSErr)
GetPIconFromFile(const FSSpec* theSpec, PIconRef* theIcon,SInt16* theLabel);							
		
EXTERN_API(OSErr)
GetPIcon(SInt16 				vRefNum,
		 OSType 				creator,
		 OSType 				iconType,
		 PIconRef*				theIcon);
		 
EXTERN_API(OSErr)
GetPIconFromFolder(SInt16 				vRefNum,
					SInt32 				parentFolderID,
					SInt32 				folderID,
					SInt8 					attributes,
					SInt8 					accessPrivileges,
					PIconRef*				theIcon);
											 
		// extra bit	
EXTERN_API(OSErr)
PIdentifyFolder(short vRefNum, long dirID, FolderType * folderType);

#ifdef __cplusplus
}	
#endif										 						 															 						 					 

