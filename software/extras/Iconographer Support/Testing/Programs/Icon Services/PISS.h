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
#pragma once



class PISSIcon;

enum
{
	kPISSIconUnknownKind = 'unkn',
	kPISSIconResourceKind = 'rsrc',
	kPISSIconCustomFileKind = 'cfil',
	kPISSIconCustomFolderKind = 'cfld',
	kPISSIconDesktopFileKind = 'file',
	kPISSIconSystemKind = 'syst',
	kPISSIconVolumeKind = 'voli'
};	


#ifdef __cplusplus
extern "C"
{
#endif
		// Init and terminate
		pascal	OSErr		PISSInit(CFragInitBlockPtr 		initBlockPtr);
		pascal	void		PISSTerminate();
		// hit testing
		pascal	Boolean		PtInPIcon(const Point *			testPt,
								 const Rect *			iconRect,
								 IconAlignmentType 		align,
								 PISSIcon* 				theIcon);	
		pascal Boolean		RectInPIcon(const Rect *			testRect,
								 const Rect *			iconRect,
								 IconAlignmentType 		align,
								 PISSIcon*				theIcon);
		pascal OSErr		PIconToRgn(RgnHandle 				theRgn,
								 const Rect *			iconRect,
								 IconAlignmentType 		align,
								 PISSIcon* 				theIconRef)	;							 
		// drawing						 
		pascal	OSErr		PlotPIcon(const Rect *			theRect,
								 IconAlignmentType 		align,
								 IconTransformType 		transform,
								 PISSIcon*				theIcon);
		// adding icons
		pascal	OSErr		UnregisterPIcon	( OSType inCreator , OSType inType);											
			
		pascal	OSErr		RegisterPIconFromResource(	OSType creator,
														OSType type,
														const FSSpec* inSpec,
														SInt16	inResID,
														PISSIcon**	theIcon);
		// ref counting												
		pascal	OSErr		ReleasePIcon(PISSIcon*	inIcon);	
		pascal 	OSErr		AcquirePIcon(PISSIcon* theIcon);
		pascal 	OSErr		GetPIconOwners(PISSIcon* theIcon, UInt16 * theOwners);
		

		// getting icons													
		pascal 	OSErr		GetPIconFromFile(const FSSpec* theSpec, PISSIcon** theIcon,SInt16* theLabel);							

		pascal	OSErr		GetPIcon(SInt16 				vRefNum,
								 OSType 				creator,
								 OSType 				iconType,
								 PISSIcon**				theIcon);
								 
		pascal 	OSErr		GetPIconFromFolder(SInt16 				vRefNum,
											 SInt32 				parentFolderID,
											 SInt32 				folderID,
											 SInt8 					attributes,
											 SInt8 					accessPrivileges,
											 PISSIcon**				theIcon);
											 

		// extra bit	
		pascal 	OSErr		PIdentifyFolder(	short vRefNum, long dirID, FolderType * folderType);										 						 															 						 					 




	// "private" routines.
static	pascal	Handle		GetIconProc(ResType iconType,PISSIcon* data);
		OSErr				GetIconFromVolume(SInt16 				vRefNum,
										 SInt32 				parentFolderID,
										 SInt32 				folderID,
										 SInt8 					attributes,
										 SInt8 					accessPrivileges,
										 PISSIcon**				theIcon);
		OSErr				PISSIdentifyFolder(SInt16 				vRefNum,
										 SInt32 				parentFolderID,
										 SInt32 				folderID,
										 SInt8 					attributes,
										 SInt8 					accessPrivileges,
										 FolderType*			folderType,
										 OSType*				iconType = NULL);
		OSErr				PISSIdentifyFolderPB(const CInfoPBRec* 		pb,
										FolderType* 			folderType,
										OSType* 				iconType = NULL);
												
		OSErr				GetDTIcon(SInt16 		inVRef, 
										OSType 		inCreator, 
										OSType 		inType, 
										PISSIcon** 	theIcon);
		OSErr				GetSystemIcon(OSType inType, PISSIcon** theIcon);



		OSErr				GetFolderInfo(short vRefNum, long dirID, CInfoPBRec* pb);
				

#ifdef PDebugWantsAssert
	#define PISSAssert(xyz,abc) do { if (!(xyz)) PISSAssertMsg(#xyz,abc,__FILE__,__LINE__) ; }while(0)
	void PISSAssertMsg(const char *expr,const char *msg, const char * file, int line);
#else
	#define PISSAssert(xyz,abc)
#endif
#ifdef PDebugWantsMessages
	#define PDebugMessage(xyz,abc) do { PISSDebug (xyz,abc,__FILE__,__LINE__); } while(0)
	#define PDebugMsgIf_(a,b,c) do { if (a) PISSDebug (b,c,__FILE__,__LINE__); } while(0)
	void PISSDebug(const char *msg, int value, const char * file, int line);
#else
	#define PDebugMessage(xyz,abc)
	#define PDebugMsgIf_(a,b,c)
#endif


#ifdef __cplusplus
}
#endif


