// __________________________________________________________________________________________
// Program		: Icon Mangler
// Filename		: icnsClass.cpp (C++)
// Author		: Mihai Parparita (St. Mary's International School)
// Last modified: April 1, 1999
// Description	: This file contains the member functions of the icnsClass (which is used for
//				  the loading and displaying of icons). It also contains some of the utility
//				  used in the class

#include "icnsClass.h"

// __________________________________________________________________________________________
// Name			: icnsClass::icnsClass
// Input		: None
// Output		: None
// Description	: constructor for icnsClass, allocates memory for the pixmaps of all the
//				  dephts, initializes default data

icnsClass::icnsClass()
{
	CTabHandle		grayscaleTable; // color table where the grayscale table will be loaded
	OSStatus		err;			// error used to check if everything went ok
	
	status = 0; // default value
	
	// this is the standard system grayscale table (256 shades of gray)
	grayscaleTable = GetCTable(40);
	if (grayscaleTable == NULL) // if loading fails, then we have to get out
	{
		status |= outOfMemory;
		return;
	}
	
	err = noErr;
	
	// making the gworlds for the huge icon sizes (48 x 48), refer to icnsClass.h for
	// meaning of each four letter code
	err = NewIconSet(&ih32GW, &ih32Pix, hugeIconRect, 32, NULL);
	err = NewIconSet(&h8mkGW, &h8mkPix, hugeIconRect, 8, grayscaleTable);
	err = NewIconSet(&ich8GW, &ich8Pix, hugeIconRect, 8, NULL);
	err = NewIconSet(&ich4GW, &ich4Pix, hugeIconRect, 4, NULL);
	err = NewIconSet(&ichiGW, &ichiPix, hugeIconRect, 1, NULL);
	err = NewIconSet(&ichmGW, &ichmPix, hugeIconRect, 1, NULL);
	
	// now the large (32 x 32) gworlds
	err = NewIconSet(&il32GW, &il32Pix, largeIconRect, 32, NULL);
	err = NewIconSet(&l8mkGW, &l8mkPix, largeIconRect, 8, grayscaleTable);
	err = NewIconSet(&icl8GW, &icl8Pix, largeIconRect, 8, NULL);
	err = NewIconSet(&icl4GW, &icl4Pix, largeIconRect, 4, NULL);
	err = NewIconSet(&icniGW, &icniPix, largeIconRect, 1, NULL);
	err = NewIconSet(&icnmGW, &icnmPix, largeIconRect, 1, NULL);
	
	// and the small ones (16 x 16)
	err = NewIconSet(&is32GW, &is32Pix, smallIconRect, 32, NULL);
	err = NewIconSet(&s8mkGW, &s8mkPix, smallIconRect, 8, grayscaleTable);
	err = NewIconSet(&ics8GW, &ics8Pix, smallIconRect, 8, NULL);
	err = NewIconSet(&ics4GW, &ics4Pix, smallIconRect, 4, NULL);
	err = NewIconSet(&icsiGW, &icsiPix, smallIconRect, 1, NULL);
	err = NewIconSet(&icsmGW, &icsmPix, smallIconRect, 1, NULL);
	
	// we don't need the table anymore, so we can dispose of it
	DisposeCTable(grayscaleTable);
	
	// setting some default data
	members = 0;
	
	flags = 0; // these are the resource flags, current set to none
	ID = 128; // the default resource ID
	CopyString(name, "\p"); // the name should be blank
	srcFileSpec.vRefNum = 0;
	srcFileSpec.parID = 0;
	CopyString(srcFileSpec.name, "\pUntitled Icon");
	
	if (err != noErr) 			// if there was a problem in the creation of the icon gworld
		status |= outOfMemory;  // (most likely a lack of memory) then we must not continue
}

// __________________________________________________________________________________________
// Name			: icnsClass::~icnsClass
// Input		: None
// Output		: None
// Description	: deallocates pixmaps for different depths, if they were allocated in the
//				  first place

icnsClass::~icnsClass()
{
	// if the pixmaps exist, then we must unlock their handles, so that their respective
	// gworld can be destroyed
	if (il32Pix != NULL) UnlockPixels(il32Pix);
	if (l8mkPix != NULL) UnlockPixels(l8mkPix);
	if (icniPix != NULL) UnlockPixels(icniPix);
	if (icnmPix != NULL) UnlockPixels(icnmPix);
	if (icl8Pix != NULL) UnlockPixels(icl8Pix);
	if (icl4Pix != NULL) UnlockPixels(icl4Pix);
	if (is32Pix != NULL) UnlockPixels(is32Pix);
	if (s8mkPix != NULL) UnlockPixels(s8mkPix);
	if (icsiPix != NULL) UnlockPixels(icsiPix);
	if (icsmPix != NULL) UnlockPixels(icsmPix);
	if (ics8Pix != NULL) UnlockPixels(ics8Pix);
	if (ics4Pix != NULL) UnlockPixels(ics4Pix);
	if (ih32Pix != NULL) UnlockPixels(ih32Pix);
	if (h8mkPix != NULL) UnlockPixels(h8mkPix);
	if (ichiPix != NULL) UnlockPixels(ichiPix);
	if (ichmPix != NULL) UnlockPixels(ichmPix);
	if (ich8Pix != NULL) UnlockPixels(ich8Pix);
	if (ich4Pix != NULL) UnlockPixels(ich4Pix);
	
	if (il32GW != NULL)  DisposeGWorld(il32GW);
	if (l8mkGW != NULL)  DisposeGWorld(l8mkGW);
	if (icniGW != NULL)  DisposeGWorld(icniGW);
	if (icnmGW != NULL)  DisposeGWorld(icnmGW);
	if (icl8GW != NULL)  DisposeGWorld(icl8GW);
	if (icl4GW != NULL)  DisposeGWorld(icl4GW);
	if (is32GW != NULL)  DisposeGWorld(is32GW);
	if (s8mkGW != NULL)  DisposeGWorld(s8mkGW);
	if (icsiGW != NULL)  DisposeGWorld(icsiGW);
	if (icsmGW != NULL)  DisposeGWorld(icsmGW);
	if (ics8GW != NULL)  DisposeGWorld(ics8GW);
	if (ics4GW != NULL)  DisposeGWorld(ics4GW);
	if (ih32GW != NULL)  DisposeGWorld(ih32GW);
	if (h8mkGW != NULL)  DisposeGWorld(h8mkGW);
	if (ichiGW != NULL)  DisposeGWorld(ichiGW);
	if (ichmGW != NULL)  DisposeGWorld(ichmGW);
	if (ich8GW != NULL)  DisposeGWorld(ich8GW);
	if (ich4GW != NULL)  DisposeGWorld(ich4GW);
}

void icnsClass::LoadFromIconFamily(IconFamilyHandle icnsHandle)
{
	IconFamilyElement*	elementPtr; // pointer to the element within the icns resource
	Handle iconData;
	int currentOffset;
	
	members = 0;
	
	if (icnsHandle != NULL) // and process if it exists
	{
		HLock((Handle)icnsHandle); // locking the handle so that we can access it directly
		
		currentOffset = sizeof(IconFamilyResource) - sizeof(IconFamilyElement);
		
		while (currentOffset != (**icnsHandle).resourceSize)
		{
			elementPtr = (IconFamilyElement*)(((char*)(*icnsHandle)) + currentOffset);
			
			switch (elementPtr->elementType)
			{
				case 'il32':
					if ((elementPtr->elementSize - 8) != il32Size)
						DecompressToPixMap(elementPtr->elementData, il32Pix);
					else
						BlockMoveData(elementPtr->elementData, (**il32Pix).baseAddr, il32Size);
					
					members |= il32;
					break;
				case 'is32':
					if ((elementPtr->elementSize - 8) != is32Size)
						DecompressToPixMap(elementPtr->elementData, is32Pix);
					else
						BlockMoveData(elementPtr->elementData, (**is32Pix).baseAddr, is32Size);
					
					members |= is32;
					break;
				case 'ih32':
					if ((elementPtr->elementSize - 8) != ih32Size)
						DecompressToPixMap(elementPtr->elementData, ih32Pix);
					else
						BlockMoveData(elementPtr->elementData, (**ih32Pix).baseAddr, ih32Size);
					
					members |= ih32;
					break;
				default:
					iconData = NewHandleClear(elementPtr->elementSize - 8);
					BlockMove(elementPtr->elementData, *iconData, elementPtr->elementSize - 8);
					
					IconExtractor(elementPtr->elementType, &iconData, this);
					
					DisposeHandle(iconData);
					break;
			}
			
			currentOffset += elementPtr->elementSize;
		}
			
		HUnlock((Handle)icnsHandle); // we are done with the handle so we can unlock it...
	}
}

void icnsClass::LoadFromIconSuite(IconSuiteRef theIconSuite)
{
	IconActionUPP extractionAction;
	
	extractionAction = NewIconActionProc(IconExtractor);
	
	members = 0;
	
	ForEachIconDo(theIconSuite, kSelectorAllAvailableData, extractionAction, this);
}

pascal OSErr IconExtractor(ResType iconType, Handle *theIcon, void *dataPtr)
{
	icnsClass* targetIcon;
	Ptr		   iconData;
	
	if (theIcon == NULL || *theIcon == NULL)
		return noErr;
	
	SAVECOLORS;
	SAVEGWORLD;
	
	targetIcon = (icnsClass*)dataPtr;
	
	iconData = **theIcon;
	
	SetGWorld(targetIcon->il32GW, NULL);
	
	switch (iconType)
	{
		// large size
		case 'ICN#':
			BlockMove(iconData, (**targetIcon->icniPix).baseAddr, icnSize/2); 
			BlockMove(&iconData[icnSize/2], (**targetIcon->icnmPix).baseAddr, icnSize/2); 
			targetIcon->members |= icni;
			targetIcon->members |= icnm;
			break;
		case 'icl4':
			BlockMove(iconData, (**targetIcon->icl4Pix).baseAddr, icl4Size); 
			targetIcon->members |= icl4;
			break;
		case 'icl8':
			BlockMove(iconData, (**targetIcon->icl8Pix).baseAddr, icl8Size); 
			targetIcon->members |= icl8;
			break;
		case 'il32':
			BlockMove(iconData, (**targetIcon->il32Pix).baseAddr, il32Size);
			targetIcon->members |= il32;
			break;
		case 'l8mk':
			BlockMove(iconData, (**targetIcon->l8mkPix).baseAddr, l8mkSize);
			targetIcon->members |= l8mk;
			break;
			
		// small size
		case 'ics#':
			BlockMove(iconData, (**targetIcon->icsiPix).baseAddr, icsSize/2); 
			BlockMove(&iconData[icsSize/2], (**targetIcon->icsmPix).baseAddr, icsSize/2); 
			targetIcon->members |= icsi;
			targetIcon->members |= icsm;
			break;
		case 'ics4':
			BlockMove(iconData, (**targetIcon->ics4Pix).baseAddr, ics4Size); 
			targetIcon->members |= ics4;
			break;
		case 'ics8':
			BlockMove(iconData, (**targetIcon->ics8Pix).baseAddr, ics8Size); 
			targetIcon->members |= ics8;
			break;
		case 'is32':
			BlockMove(iconData, (**targetIcon->is32Pix).baseAddr, is32Size); 
			targetIcon->members |= is32;
			break;
		case 's8mk':
			BlockMove(iconData, (**targetIcon->s8mkPix).baseAddr, s8mkSize);
			targetIcon->members |= s8mk;
			break;
			
		// huge size
		case 'ich#':
			BlockMove(iconData, (**targetIcon->ichiPix).baseAddr, ichSize/2); 
			BlockMove(&iconData[ichSize/2], (**targetIcon->ichmPix).baseAddr, ichSize/2); 
			targetIcon->members |= ichi;
			targetIcon->members |= ichm;
			break;
		case 'ich4':
			BlockMove(iconData, (**targetIcon->ich4Pix).baseAddr, ich4Size); 
			targetIcon->members |= ich4;
			break;
		case 'ich8':
			BlockMove(iconData, (**targetIcon->ich8Pix).baseAddr, ich8Size); 
			targetIcon->members |= ich8;
			break;
		case 'ih32':
			BlockMove(iconData, (**targetIcon->ih32Pix).baseAddr, ih32Size); 
			targetIcon->members |= ih32;
			break;
		case 'h8mk':
			BlockMove(iconData, (**targetIcon->h8mkPix).baseAddr, h8mkSize);
			targetIcon->members |= h8mk;
			break;
	}
	
	RESTOREGWORLD;
	RESTORECOLORS;
	
	return noErr;
}

// __________________________________________________________________________________________
// Name			: icnsClass::Load
// Input		: None
// Output		: None
// Description	: Loads data from icon resources, based on the ID field of the parent
//				  icnsClass. If it can't find a new style resource ('icns' type) it calls the
//				  LoadOldStyle class function, which loads the icon from old-type resources

void icnsClass::Load()
{
	IconFamilyHandle	icnsHandle;
	IconSuiteRef		oldStyleSuite;
	ResType				ignoredType;// resource type, this is one of the parameters to
									// to the GetResInfoFunction, but we don't care about it
									// since we already know the resource type ('icns')
	
	short srcFile, oldFile;
	
	oldFile = CurResFile();						// we save the old file that was in use
	srcFile = FSpOpenResFile(&srcFileSpec, fsRdPerm);	// open the old one
	UseResFile(srcFile); 							// set it as the file to load resources from
	
	icnsHandle = (IconFamilyHandle)Get1Resource('icns', ID);
	
	if (icnsHandle != NULL)
	{
		GetResInfo((Handle)icnsHandle, &ID, &ignoredType, name); // getting the icon name
		flags = GetResAttrs((Handle)icnsHandle);
		LoadFromIconFamily(icnsHandle);
		ReleaseResource((Handle)icnsHandle);
	}
	else // if there was no 'icns' resource (new way to store icons) then we must attempt to
		 // load the data from the old styles resources.
	{
		Handle temp;
		
		temp = Get1Resource('icl8', ID);
		if (temp != NULL)
		{
			flags = GetResAttrs(temp);
			GetResInfo(temp, &ID, &ignoredType, name);
			ReleaseResource(temp);
		}
		
		Get1IconSuite(&oldStyleSuite, ID, kSelectorAllAvailableData);
		LoadFromIconSuite(oldStyleSuite);
		DisposeIconSuite(oldStyleSuite, true);
	}
	
	CloseResFile(srcFile);	// close it
	UseResFile(oldFile); // and restore the old one
	
}

void icnsClass::LoadFileIcon()
{	
	IconSuiteRef	theIconSuite;
	OSErr			err;
	Handle			findIconProcRsrc;
	Find_icon_UPP	findIconProc = NULL;
	
	findIconProcRsrc = GetResource( 'PROC', 128 );
	if (findIconProcRsrc == NULL)
		return;

	HLock(findIconProcRsrc);
	findIconProc = (Find_icon_UPP) *findIconProcRsrc;

	err = CallFindIcon(findIconProc, &srcFileSpec, NULL, kSelectorAllAvailableData, (Handle*)&theIconSuite);
	
	HUnlock(findIconProcRsrc);
	ReleaseResource(findIconProcRsrc);
	
	LoadFromIconSuite(theIconSuite);
	
	DisposeIconSuite(theIconSuite, true);
}

// __________________________________________________________________________________________
// Name			: icnsClass::Display
// Input		: targetRect: rectangle of target area, icons will be scaled if necessary
// Output		: None
// Description	: copies the 32 bit depth of the icon into the targetRect of the current port
//				  the source size is determined by the size of the targetRect

void icnsClass::Display(Rect targetRect)
{
	PixMapHandle	iconPix, maskPix;
	long		copyStyle;
	int			size;
	
	SAVECOLORS;
	
	if ((**((CGrafPort*)qd.thePort)->portPixMap).pixelSize == 1)
	// dithering looks bad in 1 bit, so we turn it off...
		copyStyle = srcCopy;
	else
		copyStyle = srcCopy + ditherCopy;
	
	// the size of the target, determines which icon size will be used as the source
	// if there is no appropriate size then the large one will be scaled (assuming it exists)
	size = targetRect.bottom - targetRect.top;
	
	if (size >= 48)
	{
		if (members & ih32) iconPix = ih32Pix;
		else if (members & ich8) iconPix = ich8Pix;
		else if (members & ich4) iconPix = ich4Pix;
		else if (members & ichi) iconPix = ichiPix;
		
		else if (members & il32) iconPix = il32Pix;
		else if (members & icl8) iconPix = icl8Pix;
		else if (members & icl4) iconPix = icl4Pix;
		else if (members & icni) iconPix = icniPix;
		
		else if (members & is32) iconPix = is32Pix;
		else if (members & ics8) iconPix = ics8Pix;
		else if (members & ics4) iconPix = ics4Pix;
		else if (members & icsi) iconPix = icsiPix;
		
		if (members & h8mk) maskPix = h8mkPix;
		else if (members & ichm) maskPix = ichmPix;
		
		else if (members & l8mk) maskPix = l8mkPix;
		else if (members & icnm) maskPix = icnmPix;
		
		else if (members & s8mk) maskPix = s8mkPix;
		else if (members & icsm) maskPix = icsmPix;
	}
	else if (size <= 16)
	{
		if (members & is32) iconPix = is32Pix;
		else if (members & ics8) iconPix = ics8Pix;
		else if (members & ics4) iconPix = ics4Pix;
		else if (members & icsi) iconPix = icsiPix;
		
		else if (members & il32) iconPix = il32Pix;
		else if (members & icl8) iconPix = icl8Pix;
		else if (members & icl4) iconPix = icl4Pix;
		else if (members & icni) iconPix = icniPix;
		
		else if (members & ih32) iconPix = ih32Pix;
		else if (members & ich8) iconPix = ich8Pix;
		else if (members & ich4) iconPix = ich4Pix;
		else if (members & ichi) iconPix = ichiPix;
		
		if (members & s8mk) maskPix = s8mkPix;
		else if (members & icsm) maskPix = icsmPix;
		
		else if (members & l8mk) maskPix = l8mkPix;
		else if (members & icnm) maskPix = icnmPix;
		
		else if (members & h8mk) maskPix = h8mkPix;
		else if (members & ichm) maskPix = ichmPix;
	}
	else
	{
		if (members & il32) iconPix = il32Pix;
		else if (members & icl8) iconPix = icl8Pix;
		else if (members & icl4) iconPix = icl4Pix;
		else if (members & icni) iconPix = icniPix;
		
		else if (members & ih32) iconPix = ih32Pix;
		else if (members & ich8) iconPix = ich8Pix;
		else if (members & ich4) iconPix = ich4Pix;
		else if (members & ichi) iconPix = ichiPix;
		
		else if (members & is32) iconPix = is32Pix;
		else if (members & ics8) iconPix = ics8Pix;
		else if (members & ics4) iconPix = ics4Pix;
		else if (members & icsi) iconPix = icsiPix;
		
		if (members & l8mk) maskPix = l8mkPix;
		else if (members & icnm) maskPix = icnmPix;
		
		else if (members & h8mk) maskPix = h8mkPix;
		else if (members & ichm) maskPix = ichmPix;
		
		else if (members & s8mk) maskPix = s8mkPix;
		else if (members & icsm) maskPix = icsmPix;
	}
	
	CopyDeepMask((BitMap *)*iconPix,
				 (BitMap *)*maskPix,
				 &qd.thePort->portBits,
				 &(**iconPix).bounds,
				 &(**maskPix).bounds,
				 &targetRect,
				 copyStyle,
				 NULL);
	
	RESTORECOLORS;
}

void icnsClass::RefreshIconMembers(void)
{
	members = 0;
	if (!IsEmptyPixMap(ih32Pix)) members |= ih32;
	if (!IsEmptyPixMap(il32Pix)) members |= il32;
	if (!IsEmptyPixMap(is32Pix)) members |= is32;
	
	if (!IsEmptyPixMap(h8mkPix)) members |= h8mk;
	if (!IsEmptyPixMap(l8mkPix)) members |= l8mk;
	if (!IsEmptyPixMap(s8mkPix)) members |= s8mk;
	
	if (!IsEmptyPixMap(ich8Pix)) members |= ich8;
	if (!IsEmptyPixMap(icl8Pix)) members |= icl8;
	if (!IsEmptyPixMap(ics8Pix)) members |= ics8;
	
	if (!IsEmptyPixMap(ich4Pix)) members |= ich4;
	if (!IsEmptyPixMap(icl4Pix)) members |= icl4;
	if (!IsEmptyPixMap(ics4Pix)) members |= ics4;
	
	if (!IsEmptyPixMap(ichiPix)) members |= ichi;
	if (!IsEmptyPixMap(icniPix)) members |= icni;
	if (!IsEmptyPixMap(icsiPix)) members |= icsi;
	
	if (!IsEmptyPixMap(ichmPix)) members |= ichm;
	if (!IsEmptyPixMap(icnmPix)) members |= icnm;
	if (!IsEmptyPixMap(icsmPix)) members |= icsm;
}

IconFamilyHandle icnsClass::Geticns(void)
{
	long				icnsSize; // the size of the final icns resource
						// the sizes of the compressed 32 bit data for each size
	IconFamilyHandle	icnsHandle; // handle which will be saved as the 'icns' resource
	IconFamilyElement*	elementPtr; // pointer to element within the icns
	int 				lastElementOffset;
	
	RefreshIconMembers();
	
	icnsSize = sizeof(IconFamilyResource) - sizeof(IconFamilyElement);
	
			    
	icnsHandle = (IconFamilyHandle)NewHandleClear(icnsSize);
	// we allocated memory for the icon that we are creating

	//HLock((Handle)icnsHandle);
	// we lock it so that we can deference it and access it safely
	
	(**icnsHandle).resourceType = 'icns'; // the resource type is always 'icns'
	(**icnsHandle).resourceSize = icnsSize; // we have just calculated the size

	if ((members & icni) || (members & icnm))
	{
		lastElementOffset = (**icnsHandle).resourceSize;
		
		GrowHandle((Handle*)&icnsHandle, icnSize + sizeof(IconFamilyElement) - icnsSizePadding);
		(**icnsHandle).resourceSize += icnSize + sizeof(IconFamilyElement) - icnsSizePadding;
		elementPtr = (IconFamilyElement*)(((char*)(*icnsHandle)) + lastElementOffset);
		
		elementPtr->elementType = 'ICN#';
		elementPtr->elementSize = icnSize + sizeof(IconFamilyElement) - icnsSizePadding;
		BlockMoveData((**icniPix).baseAddr, elementPtr->elementData, icnSize/2);
		BlockMoveData((**icnmPix).baseAddr, &elementPtr->elementData[icnSize / 2], icnSize/2);
	}
	if (members & icl4)
		AddIconMember(&icnsHandle, 'icl4', icl4Pix);
	if (members & icl8)
		AddIconMember(&icnsHandle, 'icl8', icl8Pix);
	if (members & il32)
		AddIconMember(&icnsHandle, 'il32', il32Pix);
	if (members & l8mk)
		AddIconMember(&icnsHandle, 'l8mk', l8mkPix);
	
	if ((members & ichi) || (members & ichm))
	{
		lastElementOffset = (**icnsHandle).resourceSize;
		
		GrowHandle((Handle*)&icnsHandle, ichSize + sizeof(IconFamilyElement) - icnsSizePadding);
		(**icnsHandle).resourceSize += ichSize + sizeof(IconFamilyElement) - icnsSizePadding;
		elementPtr = (IconFamilyElement*)(((char*)(*icnsHandle)) + lastElementOffset);
		
		elementPtr->elementType = 'ich#';
		elementPtr->elementSize = ichSize + sizeof(IconFamilyElement) - icnsSizePadding;
		BlockMoveData((**ichiPix).baseAddr, elementPtr->elementData, ichSize/2);
		BlockMoveData((**ichmPix).baseAddr, &elementPtr->elementData[ichSize / 2], ichSize/2);
	}
	if (members & ich4)
		AddIconMember(&icnsHandle, 'ich4', ich4Pix);
	if (members & ich8)
		AddIconMember(&icnsHandle, 'ich8', ich8Pix);
	if (members & ih32)
		AddIconMember(&icnsHandle, 'ih32', ih32Pix);
	if (members & h8mk)
		AddIconMember(&icnsHandle, 'h8mk', h8mkPix);
	
	if ((members & icsi) || (members & icsm))
	{
		lastElementOffset = (**icnsHandle).resourceSize;
		
		GrowHandle((Handle*)&icnsHandle, icsSize + sizeof(IconFamilyElement) - icnsSizePadding);
		(**icnsHandle).resourceSize += icsSize + sizeof(IconFamilyElement) - icnsSizePadding;
		elementPtr = (IconFamilyElement*)(((char*)(*icnsHandle)) + lastElementOffset);
		
		elementPtr->elementType = 'ics#';
		elementPtr->elementSize = icsSize + sizeof(IconFamilyElement) - icnsSizePadding;
		BlockMoveData((**icsiPix).baseAddr, elementPtr->elementData, icsSize/2);
		BlockMoveData((**icsmPix).baseAddr, &elementPtr->elementData[icsSize / 2], icsSize/2);
	}
	if (members & ics4)
		AddIconMember(&icnsHandle, 'ics4', ics4Pix);
	if (members & ics8)
		AddIconMember(&icnsHandle, 'ics8', ics8Pix);
	if (members & is32)
		AddIconMember(&icnsHandle, 'is32', is32Pix);
	if (members & s8mk)
		AddIconMember(&icnsHandle, 's8mk', s8mkPix);
		
	return icnsHandle;
}

// __________________________________________________________________________________________
// Name			: icnsClass::Save
// Input		: flags: options for saving. Possible values are includeOldStyle which
//				  incorporates old style resources into the icns, and generateOldStyle which
//				  makes old style resources out of the icns.
// Output		: None
// Description	: Saves the current class contents to the srcFileSpec, in the standard 'icns'
//				   resource format. Has options for dealing with old style icons.

void icnsClass::Save(long flags)
{
	IconFamilyHandle	icnsHandle;
	Handle				oldicns;
	short				targetFile,	// file reference numbers, one for the target file
						oldFile; 	// and the other for the previous curent file
	unsigned char 		isFolder, ignored;
	FSSpec				savedSpec;
	
						
	
	ResolveAliasFile(&srcFileSpec,true,&isFolder, &ignored);
	if (isFolder)
	{	
		Str255 targetName = "\p:";
		
		FSpSetFinderFlags(&srcFileSpec, kHasCustomIcon, true);
		
		AppendString(targetName, srcFileSpec.name);
		AppendString(targetName, "\p:Icon\r");
		
		savedSpec = srcFileSpec;
		FSMakeFSSpec(srcFileSpec.vRefNum, srcFileSpec.parID, targetName, &srcFileSpec);
		FSpDelete(&srcFileSpec);
		FSpCreate(&srcFileSpec, 'icon', 'MACS', 0);
		FSpCreateResFile(&srcFileSpec, 'icon', 'MACS', 0);
	}
	
	
	oldFile = CurResFile(); // we save the old file that was in use
	targetFile = FSpOpenResFile(&srcFileSpec, fsRdWrPerm); // we open the target file
	
	if (targetFile == -1)
		switch(ResError())
		{
			case eofErr:
				FInfo fileInfo;
				FSpGetFInfo(&srcFileSpec, &fileInfo);
				FSpCreateResFile(&srcFileSpec, fileInfo.fdCreator, fileInfo.fdType, 0);
				targetFile = FSpOpenResFile(&srcFileSpec, fsRdWrPerm); // we open the target file
				break;
			default:
				return;
				break;
		}
	
	UseResFile(targetFile); // and set it as the current resoure file
	
	icnsHandle = Geticns();
	
	
	//HUnlock((Handle)icnsHandle); // we're done with direct access to the handle
	if (ID == rCustomIcon) // if the ID is the custom icon ID...
	{
		FInfo	fileInfo;
		// file info for the target file, we're gonna modify some attributes
		
		FSpGetFInfo(&srcFileSpec, &fileInfo); // we get the current info
		fileInfo.fdFlags |= kHasCustomIcon;
		// .. we set the "has custom icon" bit (so that the finder uses that icon)
		
		if (isFolder)
			fileInfo.fdFlags |= kIsInvisible;
		FSpSetFInfo(&srcFileSpec, &fileInfo);  // and set it
	}
	
	oldicns = Get1Resource('icns', ID); // we check if there is a resource already there
	if (oldicns != NULL)
	{
		RemoveResource(oldicns); // and we remove it if it exists
		UpdateResFile(targetFile);
	}
	
	DetachResource((Handle)icnsHandle); // we detach the resource 
	AddResource((Handle)icnsHandle, 'icns', ID, name);
	SetResAttrs((Handle)icnsHandle, flags);
	ChangedResource((Handle)icnsHandle);
	WriteResource((Handle)icnsHandle);
	UpdateResFile(targetFile);
	CloseResFile(targetFile);
	UseResFile(oldFile);
	
	if (flags & generateOldStyle)
		SaveOldStyle();

	DisposeHandle((Handle)icnsHandle); // we're done with the resource, and can dispose of it
	
	FSpBumpDate(&srcFileSpec);
	
	if (isFolder)
		srcFileSpec = savedSpec;
	
	FSpBumpDate(&srcFileSpec);
}

// __________________________________________________________________________________________
// Name			: icnsClass::SaveOldStyle
// Input		: None
// Output		: None
// Description	: takes the contents of the current class and saves them in old style resoures
//				  ('icl8', 'ics4', 'ICN#', etc)

void icnsClass::SaveOldStyle()
{
	Handle			iconHandle;
	short			targetFile, oldFile;
	
	oldFile = CurResFile();
	targetFile = FSpOpenResFile(&srcFileSpec, fsRdWrPerm);
	UseResFile(targetFile);
	
	if (members & icl8)
	{
		// the 8 bit large icon
		iconHandle = Get1Resource('icl8', ID);
		REMOVEICON;
		
		iconHandle = NewHandleClear(icl8Size);
		BlockMove((*icl8Pix)->baseAddr, *iconHandle, icl8Size);
		DetachResource(iconHandle);
		AddResource(iconHandle, 'icl8', ID, name);
		SetResAttrs(iconHandle, flags);
		ChangedResource(iconHandle);
	}
	
	if (members & icl4)
	{
		// the 4 bit large icon
		iconHandle = Get1Resource('icl4', ID);
		REMOVEICON;
		
		iconHandle = NewHandleClear(icl4Size);
		BlockMove((*icl4Pix)->baseAddr, *iconHandle, icl4Size);
		DetachResource(iconHandle);
		AddResource(iconHandle, 'icl4', ID, name);
		SetResAttrs(iconHandle, flags);
		ChangedResource(iconHandle);
	}
	
	if ((members & icni) || (members & icnm))
	{
		// the 1 bit large icon
		iconHandle = Get1Resource('ICN#', ID);
		REMOVEICON;
		
		iconHandle = NewHandleClear(icnSize);
		BlockMove((*icniPix)->baseAddr, *iconHandle, icnSize/2);
		BlockMove((*icnmPix)->baseAddr, &((*iconHandle)[icnSize / 2]), icnSize/2);
		DetachResource(iconHandle);
		AddResource(iconHandle, 'ICN#', ID, name);
		SetResAttrs(iconHandle, flags);
		ChangedResource(iconHandle);
	}
	
	if (members & ics8)
	{
		// the 8 bit small icon
		iconHandle = Get1Resource('ics8', ID);
		REMOVEICON;
	
		iconHandle = NewHandleClear(ics8Size);
		BlockMove((*ics8Pix)->baseAddr, *iconHandle, ics8Size);
		DetachResource(iconHandle);
		AddResource(iconHandle, 'ics8', ID, name);
		SetResAttrs(iconHandle, flags);
		ChangedResource(iconHandle);
	}
	
	if (members & ics4)
	{	
		// the 4 bit small icon
		iconHandle = Get1Resource('ics4', ID);
		REMOVEICON;
		
		iconHandle = NewHandleClear(ics4Size);
		BlockMove((*ics4Pix)->baseAddr, *iconHandle, ics4Size);
		DetachResource(iconHandle);
		AddResource(iconHandle, 'ics4', ID, name);
		SetResAttrs(iconHandle, flags);
		ChangedResource(iconHandle);
	}
	
	if ((members & icsi) || (members & icsm))
	{
		// the 1 bit small icon
		iconHandle = Get1Resource('ics#', ID);
		REMOVEICON;
		
		iconHandle = NewHandleClear(icsSize);
		BlockMove((*icsiPix)->baseAddr, *iconHandle, icsSize/2);;
		BlockMove((*icsmPix)->baseAddr, &((*iconHandle)[icsSize / 2]), icsSize/2);
		DetachResource(iconHandle);
		AddResource(iconHandle, 'ics#', ID, name);
		SetResAttrs(iconHandle, flags);
		ChangedResource(iconHandle);
	}
	
	UpdateResFile(targetFile);
	CloseResFile(targetFile);
	UseResFile(oldFile);
	DisposeHandle(iconHandle);
}

long icnsClass::GetSize()
{
	long returnSize;
	
	RefreshIconMembers();
	
	returnSize = sizeof(IconFamilyResource) - sizeof(IconFamilyElement);
	
	if (members & ih32)
	{
		Ptr temp;
		long ih32CompressedSize;
		
		CompressPixMap(ih32Pix, &temp, &ih32CompressedSize);
		DisposePtr(temp);
		
		returnSize += (sizeof(IconFamilyElement) - icnsSizePadding) + ih32CompressedSize;
	}
	if (members & il32)
	{
		Ptr temp;
		long il32CompressedSize;
		
		CompressPixMap(il32Pix, &temp, &il32CompressedSize);
		DisposePtr(temp);
		
		returnSize += (sizeof(IconFamilyElement) - icnsSizePadding) + il32CompressedSize;
	}
	if (members & is32)
	{
		Ptr temp;
		long is32CompressedSize;
		
		CompressPixMap(is32Pix, &temp, &is32CompressedSize);
		DisposePtr(temp);
		
		returnSize += (sizeof(IconFamilyElement) - icnsSizePadding) + is32CompressedSize;
	}
	if (members & h8mk) returnSize += sizeof(IconFamilyElement) - icnsSizePadding + h8mkSize;
	if (members & l8mk) returnSize += sizeof(IconFamilyElement) - icnsSizePadding + l8mkSize;
	if (members & s8mk) returnSize += sizeof(IconFamilyElement) - icnsSizePadding + s8mkSize;
	
	if (members & ich8) returnSize += sizeof(IconFamilyElement) - icnsSizePadding + ich8Size;
	if (members & icl8) returnSize += sizeof(IconFamilyElement) - icnsSizePadding + icl8Size;
	if (members & ics8) returnSize += sizeof(IconFamilyElement) - icnsSizePadding + ics8Size;
	
	if (members & ich4) returnSize += sizeof(IconFamilyElement) - icnsSizePadding + ich4Size;
	if (members & icl4) returnSize += sizeof(IconFamilyElement) - icnsSizePadding + icl4Size;
	if (members & ics4) returnSize += sizeof(IconFamilyElement) - icnsSizePadding + ics4Size;
	
	if ((members & ichi) || (members & ichm)) returnSize += sizeof(IconFamilyElement) - icnsSizePadding + ichSize;
	if ((members & icni) || (members & icnm)) returnSize += sizeof(IconFamilyElement) - icnsSizePadding + icnSize;
	if ((members & icsi) || (members & icsm)) returnSize += sizeof(IconFamilyElement) - icnsSizePadding + icsSize;
	
	return returnSize;
}

OSStatus NewIconSet(GWorldPtr *gWorld, PixMapHandle *pixMap, Rect bounds, int depth, CTabHandle cTable)
{
	SAVEGWORLD;
	SAVECOLORS;
	OSStatus err;
	
	err = noErr;
	
	err = NewGWorldUnpadded(gWorld, depth, &bounds, cTable);
	if (err != noErr) return err;
	*pixMap = GetGWorldPixMap(*gWorld);
	LockPixels(*pixMap);
	SetGWorld(*gWorld, NULL);
	EraseRect(&bounds);
	CropPixMap(*pixMap, (bounds.right - bounds.left) * depth / 8);

	RESTOREGWORLD;
	RESTORECOLORS;
	
	return err;
}

// __________________________________________________________________________________________
// Name			: GeticnsMember
// Input		: iconType: a long (usually passed int the form of four chars, such as 'ics8'
//				  which specifies the icon type we are looking for
//				  icnsHandle: handle to an icns resource (which must be loaded already) in which
//				  we will try to find the address of the specified member
// Output		: a pointer to the specified element if found, else NULL
// Description	: an IconFamily structure has an arbitrary number of sizes/depths, which can be
//				  stored in any order, so we must search sequantially until the end

IconFamilyElement* GeticnsMember(long iconType, IconFamilyHandle icnsHandle)
{
	IconFamilyElement*	elementPtr;
	unsigned long		endingSize;
	
	elementPtr = (**icnsHandle).elements;
	endingSize = (unsigned long)(*icnsHandle) + (**icnsHandle).resourceSize;
	while (1)
	{
		if (elementPtr->elementType == iconType)
		{
			return elementPtr;
		}
		else
		{
			elementPtr = (IconFamilyElement *)((char *)(elementPtr) + elementPtr->elementSize);
			if ((unsigned long)elementPtr >= endingSize)
			{
				return NULL;
			}
		}
	}
}

// __________________________________________________________________________________________
// Name			: WriteicnsMember
// Input		: elementPtr: pointer to the element to which we must add the data
//				  iconType: the four letter code describing the icon size/depth
//				  iconSize: the size of the pixel data
//				  iconSrc: pointer to where the pixel data is stored
// Output		: None
// Description	: Copies the required data into the icon element, setting all the fields as
//				  requested

void AddIconMember(IconFamilyHandle* icnsHandle, long iconType, PixMapHandle iconPix)
{
	Ptr iconData;
	long size;
	long lastElementOffset;
	IconFamilyElement* elementPtr;
	
	if ((**iconPix).pixelSize == 32)
		CompressPixMap(iconPix, &iconData, &size);
	else
	{
		iconData = (**iconPix).baseAddr;
		size = ((**iconPix).rowBytes & 0x3FFF) * ((**iconPix).bounds.bottom - (**iconPix).bounds.top);
	}
	
	lastElementOffset = (***icnsHandle).resourceSize;
	
	GrowHandle((Handle*)icnsHandle, size + sizeof(IconFamilyElement) - icnsSizePadding);
	(***icnsHandle).resourceSize += size + sizeof(IconFamilyElement) - icnsSizePadding;
	elementPtr = (IconFamilyElement*)(((char*)(**icnsHandle)) + lastElementOffset);
	
	
	elementPtr->elementType = iconType;
	elementPtr->elementSize = size + sizeof(IconFamilyElement) - icnsSizePadding;
	BlockMove(iconData, elementPtr->elementData, size);
	
	if ((**iconPix).pixelSize == 32)
		DisposePtr(iconData);
}

// __________________________________________________________________________________________
// Name			: CheckClipboard
// Input		: verbose: determines if messages describing what's wrong with the clipboard
//				  (wrong size, wrong depth, etc.) are printed, or if the function just returns
//				  false
// Output		: a bool specifying if the clipboard meets the requirements or not
// Description	: This function is deisgned to be used in tandem with the ImportFromClipboard
//				  function, it checks if the clipboard meets the right requirements for importing

bool CheckClipboard(bool verbose)
{
	Handle				pic;
	long				offset;
	PictInfo			picInfo;
	
	pic = NewHandle (0);
	
	if (GetScrap( pic, 'PICT', &offset ) < 0)
	{
		if (verbose)
			DisplayAlert("The clipboard is either empty", "or doesn't contain a picture");
		DisposeHandle(pic);
		return false;
	}
	
	GetPictInfo((PicHandle)pic, &picInfo, 0, 0, 0, 0);
	
	if ((picInfo.sourceRect.bottom != 32) ||
		((picInfo.sourceRect.right != 64) &&
		(picInfo.sourceRect.right != 80) &&
		(picInfo.sourceRect.right != 16)))
	{
		if (verbose)
			DisplayAlert("The clipboard picture isn't 80x32,64x32,", "or 16x32");
		DisposeHandle(pic);
		return false;
	}
	
	if ((picInfo.hRes != 0x00480000) || (picInfo.vRes != 0x00480000))
	{
		if (verbose)
			DisplayAlert("The clipboard picture must be at", "72 dpi");
		DisposeHandle(pic);
		return false;
	}
	
	DisposeHandle(pic);
	return true;
}
