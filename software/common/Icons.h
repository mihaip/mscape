#pragma once
/*
 	File:		Icons.h
 
 	Contains:	Icon Utilities and Icon Services Interfaces.
 
 	Version:	Technology:	Mac OS 8
 				Release:	Universal Interfaces 3.2
 
 	Copyright:	© 1990-1998 by Apple Computer, Inc. All rights reserved
 
 	Bugs?:		For bug reports, consult the following page on
 				the World Wide Web:
 
 					http://developer.apple.com/bugreporter/
 
*/


/*
   IconServices is an efficient mechanism to share icon data amongst multiple 
   clients. It avoids duplication of data; it provides efficient caching, 
   releasing memory when the icon data is no longer needed; it can provide
   the appropriate icon for any filesystem object; it can provide commonly 
   used icons (caution, note, help...); it is Appearance-savvy: the icons
   are switched when appropriate.
   To refer to a cached icon data, IconServices uses IconRef, a 32-bit
   opaque value. IconRefs are reference counted. When there are no more clients 
   for an IconRef, the bitmap memory associated with it is marked as disposeable. 
   Two files of same type and creator with no custom icon will have the same IconRef.
   Files with custom icons will have their own IconRef.
*/

/*	IconServicesUsageFlags */
typedef UInt32 IconServicesUsageFlags;

enum {
	kIconServicesNormalUsageFlag = 0
};


/*
  	IconFamily 'icns' resources contain an entire IconFamily (all sizes and depths).  
   For custom icons, icns IconFamily resources of the custom icon resource ID are fetched first before
   the classic custom icons (individual 'ics#, ICN#, etc) are fetched.  If the fetch of the icns resource
   succeeds then the icns is looked at exclusively for the icon data.
   For custom icons, new icon features such as 32-bit deep icons are only fetched from the icns resource.
   This is to avoid incompatibilities with cut & paste of new style icons with an older version of the
   MacOS Finder.
   DriverGestalt is called with code kdgMediaIconSuite by IconServices after calling FSM to determine a
   driver icon for a particular device.  The result of the kdgMediaIconSuite call to DriverGestalt should
   be a pointer an an IconFamily.  In this manner driver vendors can provide rich, detailed drive icons
   instead of the 1-bit variety previously supported.
*/

enum {
	kIconFamilyType				= FOUR_CHAR_CODE('icns')
};



struct IconFamilyElement {
	OSType 							elementType;				/* 'ICN#', 'icl8', etc...*/
	Size 							elementSize;				/* Size of this element*/
	unsigned char 					elementData[1];
};
typedef struct IconFamilyElement		IconFamilyElement;

struct IconFamilyResource {
	OSType 							resourceType;				/* Always 'icns'*/
	Size 							resourceSize;				/* Total size of this resource*/
	IconFamilyElement 				elements[1];

};
typedef struct IconFamilyResource		IconFamilyResource;

typedef IconFamilyResource *			IconFamilyPtr;
typedef IconFamilyPtr *					IconFamilyHandle;

/* IconRefs are 32-bit values identifying cached icon data. IconRef 0 is invalid.*/
typedef struct OpaqueIconRef* 			IconRef;

/*
  ==============================================================================
   Getting an IconRef
  ==============================================================================
*/


/*
   GetIconRefFromFile
   
   This routine returns an icon ref for the specified file, folder or volume.
   The label information is provided separately, since two files with the same icon 
   but a different label would share the same iconRef. The label can be used in 
   PlotIconRef() for example.
   
   Use this routine if you have no information about the file system object. If 
   you have already done a GetCatInfo on the file and want to save some I/O, 
   call GetIconRefFromFolder() if you know it's a folder with no custom icon or 
   call GetIconRef() if it's a file with no custom icon.
   This routine increments the reference count of the returned IconRef. Call 
   ReleaseIconRef() when you're done with it.
*/

EXTERN_API( OSErr )
GetIconRefFromFile				(const FSSpec *			theFile,
								 IconRef *				theIconRef,
								 SInt16 *				theLabel)							TWOWORDINLINE(0x7002, 0xAA75);



/*
   GetIconRef
   
   This routine returns an icon ref for an icon in the desktop database or
   for a registered icon.
   The system registers a set of icon such as the help icon with the creator 
   code kSystemIconCreator. See above for a list of the registered system types.
   The vRefNum is used as a hint on where to look for the icon first. Use 
   kOnSystemDisk if you don't know what to pass.
   This routine increments the reference count of the returned IconRef. Call 
   ReleaseIconRef() when you're done with it.
*/

EXTERN_API( OSErr )
GetIconRef						(SInt16 				vRefNum,
								 OSType 				creator,
								 OSType 				iconType,
								 IconRef *				theIconRef)							TWOWORDINLINE(0x7021, 0xAA75);



/*
   GetIconRefFromFolder
   
   This routine returns an icon ref for a folder with no custom icon.
   Use the more generic, but slightly slower, GetIconRefFromFile() if
   you don't already have the necessary info about the file.
   Attributes should be CInfoPBRec.dirInfo.ioFlAttrib for this folder.
   Access privileges should be CInfoPBRec.dirInfo.ioACUser for this folder.
   This routine increments the reference count of the IconRef. Call ReleaseIconRef() 
   when you're done with it.
*/

EXTERN_API( OSErr )
GetIconRefFromFolder			(SInt16 				vRefNum,
								 SInt32 				parentFolderID,
								 SInt32 				folderID,
								 SInt8 					attributes,
								 SInt8 					accessPrivileges,
								 IconRef *				theIconRef)							TWOWORDINLINE(0x7022, 0xAA75);



/*
  ==============================================================================
   Adding and modifying IconRef
  ==============================================================================
*/


/*
   RegisterIconRefFromIconFamily
   This routine adds a new entry to the IconRef registry. Other clients will be 
   able to access it using the (creator, iconType) pair specified here.
   Lower-case creators are reserved for the system.
   Consider using RegisterIconRefFromResource() if possible, since the data 
   registered using RegisterIconRefFromFamily() cannot be purged.
   The iconFamily data is copied and the caller is reponsible for disposing of it.
   This routine increments the reference count of the IconRef. Call ReleaseIconRef() 
   when you're done with it.
*/

EXTERN_API( OSErr )
RegisterIconRefFromIconFamily	(OSType 				creator,
								 OSType 				iconType,
								 IconFamilyHandle 		iconFamily,
								 IconRef *				theIconRef)							TWOWORDINLINE(0x701C, 0xAA75);


/*
   RegisterIconRefFromResource
   
   Registers an IconRef from a resouce file.  
   The icon data to be fetched is either classic icon data or an icon family.  
   The 'icns' icon family is searched for before the classic icon data.
   This routine increments the reference count of the IconRef. Call ReleaseIconRef() 
   when you're done with it.
*/

EXTERN_API( OSErr )
RegisterIconRefFromResource		(OSType 				creator,
								 OSType 				iconType,
								 const FSSpec *			resourceFile,
								 SInt16 				resourceID,
								 IconRef *				theIconRef)							TWOWORDINLINE(0x7023, 0xAA75);


/*
   UnregisterIconRef
   
   Removes the specified icon from the icon cache (if there are no users of it).  
   If some clients are using this iconRef, then the IconRef will be removed when the 
   last user calls ReleaseIconRef.
*/

EXTERN_API( OSErr )
UnregisterIconRef				(OSType 				creator,
								 OSType 				iconType)							TWOWORDINLINE(0x7008, 0xAA75);



/*
   UpdateIconRef
   
   Call this routine to force an update of the data for iconRef.
   
   For example after changing an icon in the desktop database or changing the custom 
   icon of a file. Note that after _adding_ a custom icon to file or folder, you 
   need to call GetIconRefFromFile() to get a new IconRef specific to this file. 
   
   This routine does nothing if the IconRef is a registered icon.
*/

EXTERN_API( OSErr )
UpdateIconRef					(IconRef 				theIconRef)							TWOWORDINLINE(0x7009, 0xAA75);



/*
   OverrideIconRefFromResource
   
   This routines replaces the bitmaps of the specified IconRef with the ones
   in the specified resource file.
*/

EXTERN_API( OSErr )
OverrideIconRefFromResource		(IconRef 				theIconRef,
								 const FSSpec *			resourceFile,
								 SInt16 				resourceID)							TWOWORDINLINE(0x702A, 0xAA75);



/*
   OverrideIconRef
   
   This routines replaces the bitmaps of the specified IconRef with the ones
   from the new IconRef.
*/

EXTERN_API( OSErr )
OverrideIconRef					(IconRef 				oldIconRef,
								 IconRef 				newIconRef)							TWOWORDINLINE(0x702B, 0xAA75);


/*
   RemoveIconRefOverride
   This routine remove an override if one was applied to the icon and 
   reverts back to the original bitmap data.
*/

EXTERN_API( OSErr )
RemoveIconRefOverride			(IconRef 				theIconRef)							TWOWORDINLINE(0x701E, 0xAA75);



/*
  ==============================================================================
   Creating composite IconRef
  ==============================================================================
*/


/*
   CompositeIconRef
   
   Superimposes an IconRef on top of another one
*/

EXTERN_API( OSErr )
CompositeIconRef				(IconRef 				backgroundIconRef,
								 IconRef 				foregroundIconRef,
								 IconRef *				compositeIconRef)					TWOWORDINLINE(0x7014, 0xAA75);


/*
   IsIconRefComposite
   Indicates if a given icon ref is a composite of two other icon refs (and which ones)
   If it isn't a composite, backgroundIconRef and foreGroundIconRef will be 0.
*/

EXTERN_API( OSErr )
IsIconRefComposite				(IconRef 				compositeIconRef,
								 IconRef *				backgroundIconRef,
								 IconRef *				foregroundIconRef)					TWOWORDINLINE(0x701A, 0xAA75);



/*
  ==============================================================================
   Using IconRef
  ==============================================================================
*/

/*
   IsValidIconRef
   Return true if the iconRef passed in is a valid icon ref
*/

EXTERN_API( Boolean )
IsValidIconRef					(IconRef 				theIconRef)							TWOWORDINLINE(0x7032, 0xAA75);


/*
   PlotIconRef
   
   This routine plots the IconRef.  It mostly takes the same parameters as PlotIconSuite.
   Pass kIconServicesNormalUsageFlag as a default value for IconServicesUsageFlags.
*/

EXTERN_API( OSErr )
PlotIconRef						(const Rect *			theRect,
								 IconAlignmentType 		align,
								 IconTransformType 		transform,
								 IconServicesUsageFlags  theIconServicesUsageFlags,
								 IconRef 				theIconRef)							TWOWORDINLINE(0x700E, 0xAA75);


/*
   PtInIconRef
   
   This routine indicates if testPt would hit the icon designated by iconRef.
   It mostly takes the same parameters as PtInIconSuite.
   Pass kIconServicesNormalUsageFlag as a default value for IconServicesUsageFlags.
*/


EXTERN_API( Boolean )
PtInIconRef						(const Point *			testPt,
								 const Rect *			iconRect,
								 IconAlignmentType 		align,
								 IconServicesUsageFlags  theIconServicesUsageFlags,
								 IconRef 				theIconRef)							TWOWORDINLINE(0x700F, 0xAA75);


/*
   RectInIconRef
   
   This routine indicates if testRect would intersect the icon designated by iconRef.
   It mostly takes the same parameters as RectInIconSuite.
   Pass kIconServicesNormalUsageFlag as a default value for IconServicesUsageFlags.
*/


EXTERN_API( Boolean )
RectInIconRef					(const Rect *			testRect,
								 const Rect *			iconRect,
								 IconAlignmentType 		align,
								 IconServicesUsageFlags  iconServicesUsageFlags,
								 IconRef 				theIconRef)							TWOWORDINLINE(0x7010, 0xAA75);


/*
   IconRefToRgn
   
   This routine returns a region for the icon.
   It mostly takes the same parameters as IconSuiteToRgn.
   Pass kIconServicesNormalUsageFlag as a default value for IconServicesUsageFlags.
*/

EXTERN_API( OSErr )
IconRefToRgn					(RgnHandle 				theRgn,
								 const Rect *			iconRect,
								 IconAlignmentType 		align,
								 IconServicesUsageFlags  iconServicesUsageFlags,
								 IconRef 				theIconRef)							TWOWORDINLINE(0x7011, 0xAA75);


/*
   GetIconSizesFromIconRef
   
   This routine returns an IconSelectorValue indicating the depths and sizes of 
   icon data which are actually available.  It takes an IconSelectorValue 
   indicating which sizes/depths the caller is interested and returns an 
   IconSelectorValue indicating which sizes/depths exist.
   
   Caution:
   
   This is potentially an extremely expensive call as IconServices may be forced 
   to attempt fetching the data for the IconRef's sizes/depths which may result 
   in hitting the local disk or even the network to obtain the data to determine 
   which sizes/depths actually exist.
   Pass kIconServicesNormalUsageFlag as a default value for IconServicesUsageFlags.
*/

EXTERN_API( OSErr )
GetIconSizesFromIconRef			(IconSelectorValue 		iconSelectorInput,
								 IconSelectorValue *	iconSelectorOutputPtr,
								 IconServicesUsageFlags  iconServicesUsageFlags,
								 IconRef 				theIconRef)							TWOWORDINLINE(0x7012, 0xAA75);



/*
  ==============================================================================
   Flushing IconRef data
  ==============================================================================
*/


/*
   FlushIconRefs
   
   Making this call will dispose of all the data for the specified icons if 
   the data can be reacquired, for example if the data is provided from a resource.
   '****' is a wildcard for all types or all creators.
*/

EXTERN_API( OSErr )
FlushIconRefs					(OSType 				creator,
								 OSType 				iconType)							TWOWORDINLINE(0x7029, 0xAA75);


/*
   FlushIconRefsByVolume
   
   This routine disposes of the data for the icons related to the indicated volume
   if this data can be reacquired, for example if the data is provided from a 
   resource.
*/

EXTERN_API( OSErr )
FlushIconRefsByVolume			(SInt16 				vRefNum)							TWOWORDINLINE(0x7018, 0xAA75);



/*
  ==============================================================================
   Controling custom icons
  ==============================================================================
*/


/*
   SetCustomIconsEnabled
   
   Enable or disable custom icons on the specified volume.
*/

EXTERN_API( OSErr )
SetCustomIconsEnabled			(SInt16 				vRefNum,
								 Boolean 				enableCustomIcons)					TWOWORDINLINE(0x701F, 0xAA75);


/*
   GetCustomIconsEnabled
   
   Return true if custom icons are enabled on the specified volume, false otherwise.
*/

EXTERN_API( OSErr )
GetCustomIconsEnabled			(SInt16 				vRefNum,
								 Boolean *				customIconsEnabled)					TWOWORDINLINE(0x7020, 0xAA75);
/*
  ==============================================================================
   Reference counting
  ==============================================================================
*/


/*
   GetIconRefOwners
   
   This routine returns the reference count for the IconRef, or number of owners.
   
   A valid IconRef always has at least one owner.
*/

EXTERN_API( OSErr )
GetIconRefOwners				(IconRef 				theIconRef,
								 UInt16 *				owners)								TWOWORDINLINE(0x700B, 0xAA75);


/*
   AcquireIconRef
   This routine increments the reference count for the IconRef
*/

EXTERN_API( OSErr )
AcquireIconRef					(IconRef 				theIconRef)							TWOWORDINLINE(0x7027, 0xAA75);



/*
   ReleaseIconRef
   
   This routine decrements the reference count for the IconRef.
   
   When the reference count reaches 0, all memory allocated for the icon
   is disposed. Any subsequent use of the IconRef is invalid.
*/

EXTERN_API( OSErr )
ReleaseIconRef					(IconRef 				theIconRef)							TWOWORDINLINE(0x7028, 0xAA75);



