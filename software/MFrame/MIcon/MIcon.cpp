// __________________________________________________________________________________________
// Program		: Icon Mangler
// Filename		: MIcon.cpp (C++)
// Author		: Mihai Parparita (St. Mary's International School)
// Last modified: April 1, 1999
// Description	: This file contains the member functions of the MIcon (which is used for
//				  the loading and displaying of icons). It also contains some of the utility
//				  used in the class

#include "MIcon.h"
#include "MIcon.ICO.h"
#include "graphicalFunctions.h"
#include "MUtilities.h"
#include "MWindow.h"

GWorldPtr 		MIcon::canvasGW = NULL;
PixMapHandle	MIcon::canvasPix = NULL;

// __________________________________________________________________________________________
// Name			: MIcon::MIcon
// Input		: None
// Output		: None
// Description	: constructor for MIcon, allocates memory for the pixmaps of all the
//				  dephts, initializes default data

MIcon::MIcon()
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
	
	// making the gworlds for the small icon sizes (16 x 16), refer to MIcon.h for
	// meaning of each four letter code
	err = NewIconSet(&icsiGW, &icsiPix, smallIconRect, 1, NULL);
	err = NewIconSet(&icsmGW, &icsmPix, smallIconRect, 1, NULL);
	err = NewIconSet(&ics4GW, &ics4Pix, smallIconRect, 4, NULL);
	err = NewIconSet(&ics8GW, &ics8Pix, smallIconRect, 8, NULL);
	err = NewIconSet(&s8mkGW, &s8mkPix, smallIconRect, 8, grayscaleTable);
	err = NewIconSet(&is32GW, &is32Pix, smallIconRect, 32, NULL);
	
	// now the large (32 x 32) gworlds
	err = NewIconSet(&icniGW, &icniPix, largeIconRect, 1, NULL);
	err = NewIconSet(&icnmGW, &icnmPix, largeIconRect, 1, NULL);
	err = NewIconSet(&icl4GW, &icl4Pix, largeIconRect, 4, NULL);
	err = NewIconSet(&icl8GW, &icl8Pix, largeIconRect, 8, NULL);
	err = NewIconSet(&l8mkGW, &l8mkPix, largeIconRect, 8, grayscaleTable);
	err = NewIconSet(&il32GW, &il32Pix, largeIconRect, 32, NULL);
	
	// and the huge ones (48 x 48)
	err = NewIconSet(&ichiGW, &ichiPix, hugeIconRect, 1, NULL);
	err = NewIconSet(&ichmGW, &ichmPix, hugeIconRect, 1, NULL);
	err = NewIconSet(&ich4GW, &ich4Pix, hugeIconRect, 4, NULL);
	err = NewIconSet(&ich8GW, &ich8Pix, hugeIconRect, 8, NULL);
	err = NewIconSet(&h8mkGW, &h8mkPix, hugeIconRect, 8, grayscaleTable);
	err = NewIconSet(&ih32GW, &ih32Pix, hugeIconRect, 32, NULL);
	
#ifdef THUMBNAIL
	// and the thumbnail ones (128 x 128)
	err = NewIconSet(&t8mkGW, &t8mkPix, thumbnailIconRect, 8, grayscaleTable);
	err = NewIconSet(&it32GW, &it32Pix, thumbnailIconRect, 32, NULL);
#endif

#ifdef MINI	
	// and the mini ones (16 x 12)
	err = NewIconSet(&icmiGW, &icmiPix, miniIconRect, 1, NULL);
	err = NewIconSet(&icmmGW, &icmmPix, miniIconRect, 1, NULL);
	err = NewIconSet(&icm4GW, &icm4Pix, miniIconRect, 4, NULL);
	err = NewIconSet(&icm8GW, &icm8Pix, miniIconRect, 8, NULL);
#endif
	
	// we don't need the table anymore, so we can dispose of it
	DisposeCTable(grayscaleTable);
	
	// setting some default data
	members = 0;
	
	format = formatMacOSUniversal;
	
	flags = 0; // these are the resource flags, current set to none
	ID = 128; // the default resource ID
	loadedID = kIDNone;
	loadedFormat = formatMacOSUniversal;
	CopyString(name, "\p"); // the name should be blank

	usedMembers = kDefaultMembers[format];
	
	if (err != noErr) 			// if there was a problem in the creation of the icon gworld
		status |= outOfMemory;  // (most likely a lack of memory) then we must not continue

#if TARGET_API_MAC_CARBON
	dialogLoaded = false;
#endif
}

// __________________________________________________________________________________________
// Name			: MIcon::~MIcon
// Input		: None
// Output		: None
// Description	: deallocates pixmaps for different depths, if they were allocated in the
//				  first place

MIcon::~MIcon()
{
	// if the pixmaps exist, then we must unlock their handles, so that their respective
	// gworld can be destroyed
	if (it32Pix != NULL) UnlockPixels(it32Pix);
	if (t8mkPix != NULL) UnlockPixels(t8mkPix);

	if (icmiPix != NULL) UnlockPixels(icmiPix);
	if (icmmPix != NULL) UnlockPixels(icmmPix);
	if (icm8Pix != NULL) UnlockPixels(icm8Pix);
	if (icm4Pix != NULL) UnlockPixels(icm4Pix);
	
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


	if (it32GW != NULL)  DisposeGWorld(it32GW);
	if (t8mkGW != NULL)  DisposeGWorld(t8mkGW);

	if (icmiGW != NULL)  DisposeGWorld(icmiGW);
	if (icmmGW != NULL)  DisposeGWorld(icmmGW);
	if (icm8GW != NULL)  DisposeGWorld(icm8GW);
	if (icm4GW != NULL)  DisposeGWorld(icm4GW);
	
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

void MIcon::Reset()
{
	SAVEGWORLD;
	
	PixMapHandle	currentPix;
	GWorldPtr		currentGW;
	
	for (int i=0; i < kMembersCount; i++)
	{
		GetGWorldAndPix(kMembers[i].name, &currentGW, &currentPix);
		SetGWorld(currentGW, NULL);
		EraseRect(&(**currentPix).bounds);
	}	
	
	RESTOREGWORLD;
	
	members = 0;
}

void MIcon::LoadFromIconFamily(IconFamilyHandle icnsHandle)
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
				case 'it32':
					if ((elementPtr->elementSize - 8) != it32Size)
					{
						if ((*(long*)(&elementPtr->elementData)) == 0)
							DecompressToPixMap(&elementPtr->elementData[4], it32Pix);
						else
							DisplayAlert("Unknown compression format encountered, please contact Mihai", "");
					}	
					else
						BlockMoveData(elementPtr->elementData, (**it32Pix).baseAddr, it32Size);
					
					members |= it32;
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

void MIcon::LoadFromIconSuite(IconSuiteRef theIconSuite)
{
	IconActionUPP extractionAction;
	
	extractionAction = NewIconActionUPP(IconExtractor);
	
	members = 0;
	
	ForEachIconDo(theIconSuite, kSelectorAllAvailableData, extractionAction, this);
	
	DisposeIconActionUPP(extractionAction);
}

pascal OSErr IconExtractor(ResType iconType, Handle *theIcon, void *dataPtr)
{
	MIcon* targetIcon;
	Ptr		   iconData;
	
	if (theIcon == NULL || *theIcon == NULL)
		return noErr;
	
	SAVECOLORS;
	SAVEGWORLD;
	
	targetIcon = (MIcon*)dataPtr;
	
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

		// mini size
		case 'icm#':
			BlockMove(iconData, (**targetIcon->icmiPix).baseAddr, icmSize/2); 
			BlockMove(&iconData[icmSize/2], (**targetIcon->icmmPix).baseAddr, icmSize/2); 
			targetIcon->members |= icmi;
			targetIcon->members |= icmm;
			break;
		case 'icm4':
			BlockMove(iconData, (**targetIcon->icm4Pix).baseAddr, icm4Size); 
			targetIcon->members |= icm4;
			break;
		case 'icm8':
			BlockMove(iconData, (**targetIcon->icm8Pix).baseAddr, icm8Size); 
			targetIcon->members |= icm8;
			break;
			
		// thumbnail size
		case 'it32':
			BlockMove(iconData, (**targetIcon->it32Pix).baseAddr, it32Size); 
			targetIcon->members |= it32;
			break;
		case 't8mk':
			BlockMove(iconData, (**targetIcon->t8mkPix).baseAddr, t8mkSize);
			targetIcon->members |= t8mk;
			break;
	}
	
	RESTOREGWORLD;
	RESTORECOLORS;
	
	return noErr;
}

// __________________________________________________________________________________________
// Name			: MIcon::Load
// Input		: None
// Output		: None
// Description	: Loads data from icon resources, based on the ID field of the parent
//				  MIcon. If it can't find a new style resource ('icns' type) it calls the
//				  LoadOldStyle class function, which loads the icon from old-type resources

void MIcon::Load(bool simple)
{
	switch (format)
	{
		case formatMacOSUniversal:
			LoadOld();
			LoadNew();
			break;
		case formatMacOSX:
			LoadDataFork();
			break;
		case formatMacOSOld:
			LoadOld();
			break;
		case formatMacOSNew:
			LoadNew();
			break;
		case formatWindows:
		case formatWindowsXP:
			LoadICO();
			break;
		case formatMacOSXServer:
			LoadTIFF();
			break;
	}
	
	if (!simple)
	{
		loadedFormat = format;
		loadedID = ID;
		usedMembers = kDefaultMembers[format];
	}
}

void MIcon::Load()
{
	Load(false);
}

void MIcon::LoadDataFork()
{
	short dataFork;
	long readLength, iconType, iconSize;
	IconFamilyHandle	icnsHandle;
	
	dataFork = file.OpenDataFork(fsRdPerm);
	
	SetFPos(dataFork, fsFromStart, 0);
	
	readLength = sizeof(long);
	
	FSRead(dataFork, &readLength, &iconType);
	if (iconType != 'icns')
	{
		DisplayAlert("Unknown icon type, please contact Mihai", "");
		FSClose(dataFork);
	}
	
	FSRead(dataFork, &readLength, &iconSize);
	
	icnsHandle = (IconFamilyHandle)NewHandleClear(iconSize);
	
	readLength = iconSize;
	
	SetFPos(dataFork, fsFromStart, 0);
	
	FSRead(dataFork, &readLength, *((Handle)icnsHandle));
	
	FSClose(dataFork);
	
	LoadFromIconFamily(icnsHandle);
	
	DisposeHandle((Handle)icnsHandle);
	
	usedMembers = kDefaultMembers[format];
}

OSErr MIcon::LoadNew()
{
	IconFamilyHandle	icnsHandle;
	OSErr				returnErr;
	ResType				ignoredType;// resource type, this is one of the parameters to
									// to the GetResInfoFunction, but we don't care about it
									// since we already know the resource type ('icns')
	
	short srcFile, oldFile;
	
	Reset();
	
	oldFile = CurResFile();						// we save the old file that was in use
	srcFile = file.OpenResourceFork(fsRdPerm);	// open the old one
	UseResFile(srcFile); 							// set it as the file to load resources from
	
	icnsHandle = (IconFamilyHandle)Get1Resource('icns', ID);
	
	if (icnsHandle != NULL)
	{
		GetResInfo((Handle)icnsHandle, &ID, &ignoredType, name); // getting the icon name
		flags = GetResAttrs((Handle)icnsHandle);
		LoadFromIconFamily(icnsHandle);
		ReleaseResource((Handle)icnsHandle);
		
		returnErr = noErr;
	}
	else
		returnErr = resNotFound;
		
	CloseResFile(srcFile);	// close it
	UseResFile(oldFile); // and restore the old one
	
	return returnErr;
	
}

OSErr MIcon::LoadOld()
{
	IconSuiteRef		oldStyleSuite;
	ResType				ignoredType;
	Handle				temp;
	short				srcFile, oldFile;
	
	Reset();
	
	oldFile = CurResFile();						// we save the old file that was in use
	srcFile = file.OpenResourceFork(fsRdPerm);	// open the old one
	UseResFile(srcFile); 							// set it as the file to load resources from
	
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
	
	CloseResFile(srcFile);	// close it
	UseResFile(oldFile); // and restore the old one
	
	return noErr;
}

void MIcon::LoadFileIcon()
{
	if (MUtilities::GestaltVersion(gestaltSystemVersion, 0x08, 0x50))
	{
		IconRef				fileIconRef;
		IconFamilyHandle	fileIconFamily;
		short				label;
		FSSpec				targetFile;
		
		targetFile = file.GetAssociatedFile();
		GetIconRefFromFile(&targetFile, &fileIconRef, &label);
		IconRefToIconFamily(fileIconRef, kSelectorAllAvailableData, &fileIconFamily);
		LoadFromIconFamily(fileIconFamily);
		ReleaseIconRef(fileIconRef);
	}
#if !TARGET_API_MAC_CARBON
	else
	{
		IconSuiteRef	theIconSuite;
		FSSpec			targetFile;
		
		targetFile = file.GetAssociatedFile();
		Find_icon(&targetFile, NULL, kSelectorAllAvailableData, (Handle*)&theIconSuite);
		
		LoadFromIconSuite(theIconSuite);
		
		DisposeIconSuite(theIconSuite, true);
		
		usedMembers = kDefaultMembers[format];
	}
#endif
}

// __________________________________________________________________________________________
// Name			: MIcon::Display
// Input		: targetRect: rectangle of target area, icons will be scaled if necessary
// Output		: None
// Description	: copies the 32 bit depth of the icon into the targetRect of the current port
//				  the source size is determined by the size of the targetRect

void MIcon::Display(Rect targetRect, bool selected)
{
	PixMapHandle	iconPix = icniPix, maskPix = icnmPix;
	GWorldPtr		iconGW = icniGW, maskGW = icnmGW;
	long			copyStyle;
	int				size;
	Rect			displayRect, bounds;
	int				miniIconMembersPrecedence[] = {icm8, icm4, icmi, is32, ics8, ics4, icsi, il32, icl8, icl4, icni, ih32, ich8, ich4, ichi, it32},
					miniMaskMembersPrecedence[] = {icmm, s8mk, icsm, l8mk, icnm, h8mk, ichm, t8mk},
					smallIconMembersPrecedence[] = {is32, ics8, ics4, icsi, il32, icl8, icl4, icni, ih32, ich8, ich4, ichi, it32, icm8, icm4, icmi},
					smallMaskMembersPrecedence[] = {s8mk, icsm, l8mk, icnm, h8mk, ichm, t8mk, icmm},
					largeIconMembersPrecedence[] = {il32, icl8, icl4, icni, is32, ics8, ics4, icsi, ih32, ich8, ich4, ichi, it32, icm8, icm4, icmi},
					largeMaskMembersPrecedence[] = {l8mk, icnm, s8mk, icsm, h8mk, ichm, t8mk, icmm},
					hugeIconMembersPrecedence[] = {ih32, it32, ich8, ich4, ichi, il32, icl8, icl4, icni, is32, ics8, ics4, icsi, icm8, icm4, icmi},
					hugeMaskMembersPrecedence[] = {h8mk, ichm, t8mk, l8mk, icnm, s8mk, icsm, icmm},
					thumbnailIconMembersPrecedence[] = {it32, ih32, ich8, ich4, ichi, il32, icl8, icl4, icni, is32, ics8, ics4, icsi, icm8, icm4, icmi},
					thumbnailMaskMembersPrecedence[] = {t8mk, h8mk, ichm, l8mk, icnm, s8mk, icsm, icmm};
	int				*iconMembersPrecedence, *maskMembersPrecedence,
					iconCount, maskCount;
	SAVECOLORS;
	
	if (!IsPortColor(GetQDGlobalsThePort()))
	// dithering looks bad in 1 bit, so we turn it off...
		copyStyle = srcCopy;
	else
		copyStyle = srcCopy + ditherCopy;
	
	// the size of the target, determines which icon size will be used as the source
	// if there is no appropriate size then the large one will be scaled (assuming it exists)
	size = targetRect.bottom - targetRect.top;
	
	if (size <= 12)
	{
		iconMembersPrecedence = miniIconMembersPrecedence;
		maskMembersPrecedence = miniMaskMembersPrecedence;
	} else if (size <= 16)
	{
		iconMembersPrecedence = smallIconMembersPrecedence;
		maskMembersPrecedence = smallMaskMembersPrecedence;
	} else if (size <= 32)
	{
		iconMembersPrecedence = largeIconMembersPrecedence;
		maskMembersPrecedence = largeMaskMembersPrecedence;
	} else if (size <= 48)
	{
		iconMembersPrecedence = hugeIconMembersPrecedence;
		maskMembersPrecedence = hugeMaskMembersPrecedence;
	} else
	{
		iconMembersPrecedence = thumbnailIconMembersPrecedence;
		maskMembersPrecedence = thumbnailMaskMembersPrecedence;
	}
	
	iconCount = sizeof(thumbnailIconMembersPrecedence)/sizeof(int);
	maskCount = sizeof(thumbnailMaskMembersPrecedence)/sizeof(int);

	for (int i=0; i < iconCount; i++)
		if (members & iconMembersPrecedence[i])
		{
			bool maskFound = false;
			GetGWorldAndPix(iconMembersPrecedence[i], &iconGW, &iconPix);
			
			for (int j=0; j < maskCount; j++)
			if (members & maskMembersPrecedence[j])
			{
				GetGWorldAndPix(maskMembersPrecedence[j], &maskGW, &maskPix);
				
				if (EqualRect(&(**iconPix).bounds, &(**maskPix).bounds) &&
					!IsEmptyPixMap(maskPix))
				{
					maskFound = true;
					break;
				}
			}
			
			if (maskFound)
				break;
		}
		
	bounds = (**iconPix).bounds;

	if (selected)
	{
		CopyPixMap(iconPix, canvasPix, &bounds, &bounds, srcCopy, NULL);
		DarkenPixMap32(canvasPix, bounds, 0.5);
		iconPix = canvasPix;
	}

	displayRect = bounds;
	
	if (displayRect.right > targetRect.right - targetRect.left)
		displayRect.right = targetRect.right - targetRect.left;
	
	if (displayRect.bottom > targetRect.bottom - targetRect.top)
		displayRect.bottom = targetRect.bottom - targetRect.top;
	
	OffsetRect(&displayRect,
			   targetRect.left + ((targetRect.right - targetRect.left) - (displayRect.right - displayRect.left))/2,
			   targetRect.top + ((targetRect.bottom - targetRect.top) - (displayRect.bottom - displayRect.top))/2);
	
	CopyDeepMask((BitMap *)*iconPix,
				 (BitMap *)*maskPix,
				 GetPortBitMapForCopyBits(GetQDGlobalsThePort()),
				 &bounds,
				 &(**maskPix).bounds,
				 &displayRect,
				 copyStyle,
				 NULL);
	
	RESTORECOLORS;
}

void MIcon::DisplayMember(int member, Rect targetRect, bool selected)
{
	GWorldPtr	selectedGW;
	PixMapHandle selectedPix, iconPix = icniPix, maskPix = icmiPix;
	SAVECOLORS;
	
	switch (member)
	{
		case ih32: iconPix = ih32Pix; break;
		case il32: iconPix = il32Pix; break;
		case is32: iconPix = is32Pix; break;
		
		case ich8: iconPix = ich8Pix; break;
		case icl8: iconPix = icl8Pix; break;
		case ics8: iconPix = ics8Pix; break;
		
		case ich4: iconPix = ich4Pix; break;
		case icl4: iconPix = icl4Pix; break;
		case ics4: iconPix = ics4Pix; break;
		
		case ichi: iconPix = ichiPix; break;
		case icni: iconPix = icniPix; break;
		case icsi: iconPix = icsiPix; break;

		case it32: iconPix = it32Pix; break;

		case icm8: iconPix = icm8Pix; break;
		case icm4: iconPix = icm4Pix; break;
		case icmi: iconPix = icmiPix; break;
	}
	
	switch ((**iconPix).bounds.bottom)
	{
		case 128:
			if (members & t8mk && (**iconPix).pixelSize >= 8)
				maskPix = t8mkPix;
			else
				maskPix = t8mkPix;
			break;
		case 48:
			if (members & h8mk && (**iconPix).pixelSize >= 8)
				maskPix = h8mkPix;
			else
				maskPix = ichmPix;
			break;
		case 32:
			if (members & l8mk && (**iconPix).pixelSize >= 8)
				maskPix = l8mkPix;
			else
				maskPix = icnmPix;
			break;
		case 16:
			if (members & s8mk && (**iconPix).pixelSize >= 8)
				maskPix = s8mkPix;
			else
				maskPix = icsmPix;
			break;
#ifdef MINI
		case 12:
			if (members & icmm && (**iconPix).pixelSize >= 8)
				maskPix = icmmPix;
			else
				maskPix = icmmPix;
			break;
#endif
	}
	
	if (selected)
	{
		Rect iconRect;
		unsigned char* pixels;
		
		iconRect = (**iconPix).bounds;
		
		NewGWorld(&selectedGW, 32, &iconRect, NULL, NULL, 0);
		selectedPix = GetGWorldPixMap(selectedGW);
		LockPixels(selectedPix);
		
		CopyPixMap(iconPix, selectedPix, &iconRect, &iconRect, srcCopy, NULL);
		
		pixels = (unsigned char*)(**selectedPix).baseAddr;
		
		for (int i=0; i < (iconRect.bottom - iconRect.top) * ((**selectedPix).rowBytes & 0x3FFF); i++)
		{
			pixels[i] /= 2;
		}
		
		iconPix = selectedPix;
	}
	
	if (iconPix != NULL && maskPix != NULL)
		CopyDeepMask((BitMap *)*iconPix,
					 (BitMap *)*maskPix,
					 GetPortBitMapForCopyBits(GetQDGlobalsThePort()),
					 &(**iconPix).bounds,
					 &(**maskPix).bounds,
					 &targetRect,
					 srcCopy,
					 NULL);
	if (selected)
	{
		UnlockPixels(selectedPix);
		DisposeGWorld(selectedGW);
	}
	RESTORECOLORS;
}

void MIcon::DrawMember(int member, Rect targetRect)
{
	PixMapHandle	srcPix = NULL;
	GWorldPtr		srcGW = NULL;
	
	SAVECOLORS;
	
	GetGWorldAndPix(member, &srcGW, &srcPix);
	
	if (srcPix != NULL)
		CopyBits((BitMap *)*srcPix,
				 GetPortBitMapForCopyBits(GetQDGlobalsThePort()),
				 &(**srcPix).bounds,
				 &targetRect,
				 srcCopy,
				 NULL);
				 
	RESTORECOLORS;
}

void MIcon::RefreshIconMembers(void)
{
	PixMapHandle	currentPix;
	GWorldPtr		currentGW;
	
	members = 0;
	
	for (int i=0; i < kMembersCount; i++)
		if (kMembers[i].name & usedMembers)
		{
			GetGWorldAndPix(kMembers[i].name, &currentGW, &currentPix);
			if (!IsEmptyPixMap(currentPix))
				members |= kMembers[i].name;
		}
}

IconFamilyHandle MIcon::Geticns(void)
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

	if ((members & icmi) || (members & icmm))
	{
		lastElementOffset = (**icnsHandle).resourceSize;
		
		GrowHandle((Handle*)&icnsHandle, icmSize + sizeof(IconFamilyElement) - icnsSizePadding);
		(**icnsHandle).resourceSize += icmSize + sizeof(IconFamilyElement) - icnsSizePadding;
		elementPtr = (IconFamilyElement*)(((char*)(*icnsHandle)) + lastElementOffset);
		
		elementPtr->elementType = 'icm#';
		elementPtr->elementSize = icmSize + sizeof(IconFamilyElement) - icnsSizePadding;
		BlockMoveData((**icmiPix).baseAddr, elementPtr->elementData, icmSize/2);
		BlockMoveData((**icmmPix).baseAddr, &elementPtr->elementData[icmSize / 2], icmSize/2);
	}
	if (members & icm4)
		AddIconMember(&icnsHandle, 'icm4', icm4Pix);
	if (members & icm8)
		AddIconMember(&icnsHandle, 'icm8', icm8Pix);

	if (members & it32)
		AddIconMember(&icnsHandle, 'it32', it32Pix);
	if (members & t8mk)
		AddIconMember(&icnsHandle, 't8mk', t8mkPix);
		
	return icnsHandle;
}

bool MIcon::HasNonIconDataFork(bool strict)
{
	short	dataFork;
	long	readLength, iconType;
	bool	nonIconDataFork;
	
	dataFork = file.OpenDataFork(fsRdPerm);
	
	SetFPos(dataFork, fsFromStart, 0);
	
	GetEOF(dataFork, &readLength);
	
	if (readLength == 0)
	{
		if (strict)
			nonIconDataFork = true;
		else
			nonIconDataFork = false;
	}
	else
	{
		readLength = sizeof(long);
		
		FSRead(dataFork, &readLength, &iconType);
		
		if (format == formatMacOSX)
			nonIconDataFork = (iconType != 'icns');
		else if (format == formatWindows || format == formatWindowsXP)
			nonIconDataFork = (iconType != 0x00000100);
		else
			nonIconDataFork = true;
	}
	
	FSClose(dataFork);
	
	return nonIconDataFork;
}


OSErr MIcon::PreFlight()
{
	DEBUG("\pstarting preflight");
	
	if ((format == formatWindows || format == formatWindowsXP) && !file.HasExtension("\p.ico"))
	{
		FSSpec targetSpec;
		
		targetSpec = file.GetAssociatedFile();
		SetFileExtension(formatWindows, targetSpec.name);
		file.SetAssociatedFile(targetSpec);
		
		return fnOpnErr;
	}
	else if (format == formatMacOSX && !file.HasExtension("\p.icns"))
	{
		FSSpec targetSpec;
		
		targetSpec = file.GetAssociatedFile();
		SetFileExtension(formatMacOSX, targetSpec.name);
		file.SetAssociatedFile(targetSpec);
		
		return fnOpnErr;
	}
	else if (format == formatMacOSXServer && !file.HasExtension("\p.tif") && !file.HasExtension("\p.tiff"))
	{
		FSSpec targetSpec;
		
		targetSpec = file.GetAssociatedFile();
		SetFileExtension(formatMacOSXServer, targetSpec.name);
		file.SetAssociatedFile(targetSpec);
		
		return fnOpnErr;
	}
	else if ((format == formatMacOSUniversal || format == formatMacOSOld || format == formatMacOSNew) &&
			 (file.HasExtension("\p.ico") || file.HasExtension("\p.tif") || file.HasExtension("\p.tiff") ||
			 file.HasExtension("\p.icns")))
	{
		FSSpec targetSpec;
		
		targetSpec = file.GetAssociatedFile();
		SetFileExtension(format, targetSpec.name);
		file.SetAssociatedFile(targetSpec);
		
		return fnOpnErr;
	}
	
	if (format == formatWindows || format == formatWindowsXP || format == formatMacOSX)
	{
		if (HasNonIconDataFork(false))
		{
			Str255	text, fileName, yesButton, noButton, otherButton;
			short	itemHit;
			
			GetIndString(text, rMiscIconStrings, eICNonIconDataFork);
			GetIndString(yesButton, rMiscIconStrings, eICYesButton);
			GetIndString(noButton, rMiscIconStrings, eICNoButton);
			GetIndString(otherButton, rMiscIconStrings, eICChooseAnotherFile);
			
			file.GetName(fileName);
			SubstituteString(text, "\p<file name>", fileName);
			
			itemHit = MUtilities::DisplayAlert(text, NULL, yesButton, noButton, otherButton, kAlertCautionAlert, kWindowAlertPositionParentWindow);
			switch (itemHit)
			{
				case 1:
					break;
				case 2:
					return noErr;
					break;
				case 3:
					return fnOpnErr;
					break;
			}
		}
	}
	
	if (IDChanged())
	{
		short	oldFile, targetFile;
		Handle	oldIcon;
		
		oldFile = CurResFile();
		targetFile = file.OpenResourceFork(fsRdWrPerm);
		
		for (int i=0; i < kMembersCount; i++)
			if (kMembers[i].name & kDefaultMembers[loadedFormat])
			{
				oldIcon = Get1Resource(kMembers[i].resourceName, loadedID);
				if (oldIcon != NULL)
				{
					RemoveResource(oldIcon);
					UpdateResFile(targetFile);
				}
			}
		
		CloseResFile(targetFile);
		UseResFile(oldFile);
	}
	loadedID = ID;
	loadedFormat = format;
	
	RefreshIconMembers();
	
	DEBUG("\pdone pre-flighting");
	
	return noErr;
}

// __________________________________________________________________________________________
// Name			: MIcon::Save
// Input		: flags: options for saving. Possible values are includeOldStyle which
//				  incorporates old style resources into the icns, and generateOldStyle which
//				  makes old style resources out of the icns.
// Output		: None
// Description	: Saves the current class contents to the srcFileSpec, in the standard 'icns'
//				   resource format. Has options for dealing with old style icons.

OSErr MIcon::Save()
{
	return Save(false);
}

OSErr MIcon::Save(bool simple)
{
	OSErr err;
	
	DEBUG("\pstarting to save");
	
	SetupFileSpec();
	
	DEBUG("\pset up file spec");
	DEBUG(file.GetAssociatedFile().name);
	
	if (simple || (err = PreFlight()) == noErr)
	{
		DEBUG("\ppassed preflight");
		switch (format)
		{
			case formatMacOSUniversal:
				SaveOld();
				SaveNew();
				break;
			case formatMacOSX:
				SaveDataFork();
				break;
			case formatMacOSOld:
				SaveOld();
				break;
			case formatMacOSNew:
				SaveNew();
				break;
			case formatWindows:
			case formatWindowsXP:
				SaveICO();
				break;
			case formatMacOSXServer:
				break;
		}
	}
	
	DEBUG("\pdone saving");
	
	CleanupFileSpec();
	
	if (!simple)
	{
		MUtilities::TouchFile(file.GetAssociatedFile());
		RefreshIcon();
		MUtilities::AESendFinderUpdate(file.GetAssociatedFile());
		MUtilities::AESendFinderUpdate(file.GetAssociatedFile());
		RefreshIcon();
	}
	
	DEBUG("\pclean up file spec");
	
	return err;
}

void MIcon::RefreshIcon()
{
#if TARGET_API_MAC_CARBON
	FSSpec	tempSpec;
	IconRef	iconRef;
	short	ignored;
	
	tempSpec = file.GetAssociatedFile();
	GetIconRefFromFile(&tempSpec, &iconRef, &ignored);
	
	UpdateIconRef(iconRef);
	
	while (ReleaseIconRef(iconRef) == noErr) {;}
#endif
}

void MIcon::SaveUniversal()
{
	SaveOld();
	SaveNew();
}

void MIcon::SetupFileSpec()
{
	isFolder = file.IsFolder();
	if (isFolder)
	{
		FSSpec realFile;
		
		savedFormat = format;
		savedSpec = file.GetAssociatedFile();
		MIcon::GetActualIconSpec(savedSpec, &realFile);
		
		file.SetAssociatedFile(realFile);
		
		// set the custom icon flag
		FSpSetFinderFlags(&savedSpec, kHasCustomIcon, true);
		
		if (MUtilities::FileHasExtension(realFile.name, "\p.icns"))
			format = formatMacOSX;
	}
}

void MIcon::CleanupFileSpec()
{
	if (isFolder)
	{
		file.SetAssociatedFile(savedSpec);
		format = savedFormat;
	}
}

void MIcon::PreSave()
{
	int error;
	
	oldFile = CurResFile(); // we save the old file that was in use
	targetFile = file.OpenResourceFork(fsRdWrPerm); // we open the target file
	
	error = ResError();
	
	if (targetFile == -1)
		switch(error)
		{
			case eofErr:
				FInfo	fileInfo;
				FSSpec	targetSpec;
				
				targetSpec = file.GetAssociatedFile();
				FSpGetFInfo(&targetSpec, &fileInfo);
				FSpCreateResFile(&targetSpec, fileInfo.fdCreator, fileInfo.fdType, 0);
				targetFile = file.OpenResourceFork(fsRdWrPerm); // we open the target file
				
				break;
			default:
				Str255 errorAsString, errorString = "\pError occured when saving (Type <type>)";
				
				NumToString(error, errorAsString);
				SubstituteString(errorString, "\p<type>", errorAsString);
				
				DisplayPAlert((unsigned char*)"\p", errorString);
				break;
		}
	
	UseResFile(targetFile); // and set it as the current resoure file
	
	if (ID == rCustomIcon) // if the ID is the custom icon ID...
	{
		FInfo	fileInfo;
		FSSpec	targetSpec;
		// file info for the target file, we're gonna modify some attributes
		
		targetSpec = file.GetAssociatedFile();
		FSpGetFInfo(&targetSpec, &fileInfo); // we get the current info
		fileInfo.fdFlags |= kHasCustomIcon;
		// .. we set the "has custom icon" bit (so that the finder uses that icon)
		
		FSpSetFInfo(&targetSpec, &fileInfo);  // and set it
	}
}

void MIcon::PostSave()
{
	FSSpec	targetSpec;
	
	targetSpec = file.GetAssociatedFile();
	
	UpdateResFile(targetFile);
	CloseResFile(targetFile);
	UseResFile(oldFile);
}

void MIcon::SaveNew()
{
	IconFamilyHandle	icnsHandle;
	Handle				oldicns;
	
	PreSave();
	
	icnsHandle = Geticns();
	
	
	oldicns = Get1Resource('icns', ID); // we check if there is a resource already there
	if (oldicns != NULL)
	{
		RemoveResource(oldicns); // and we remove it if it exists
		UpdateResFile(targetFile);
	}
	
	AddResource((Handle)icnsHandle, 'icns', ID, name);
	SetResAttrs((Handle)icnsHandle, flags);
	ChangedResource((Handle)icnsHandle);
	
	PostSave();
}

// __________________________________________________________________________________________
// Name			: MIcon::SaveOldStyle
// Input		: None
// Output		: None
// Description	: takes the contents of the current class and saves them in old style resoures
//				  ('icl8', 'ics4', 'ICN#', etc)

void MIcon::SaveOld()
{
	Handle			iconHandle;
	bool			addedResource;
	GWorldPtr		iconGW, maskGW;
	PixMapHandle 	iconPix, maskPix;
	int				iconName, maskName;
	
	DEBUG("\pstarting to save old format");
	
	PreSave();
	
	DEBUG("\pdone presaving");
	
	for (int i=0; i < kMembersCount; i++)
		if (kMembers[i].name & members & kDefaultMembers[formatMacOSOld])
		{
			iconHandle = Get1Resource(kMembers[i].resourceName, ID);
			if (iconHandle)
				addedResource = false;
			else
			{
				addedResource = true;
				iconHandle = NewHandleClear(kMembers[i].resourceSize);
			}
			
			GetGWorldAndPix(kMembers[i].name, &iconGW, &iconPix);
			
			if (kMembers[i].name & icon1)
			{
				maskName = GetPixName(kMembers[i].height, 1, false);
				GetGWorldAndPix(maskName, &maskGW, &maskPix);
				BlockMove((**iconPix).baseAddr, *iconHandle, kMembers[i].resourceSize/2);
				BlockMove((**maskPix).baseAddr, &((*iconHandle)[kMembers[i].resourceSize/2]), kMembers[i].resourceSize/2);
			}
			else if (kMembers[i].name & mask1)
			{
				maskPix = iconPix;
				maskGW = iconGW;
				iconName = GetPixName(kMembers[i].height, 1, true);
				GetGWorldAndPix(iconName, &iconGW, &iconPix);
				BlockMove((**iconPix).baseAddr, *iconHandle, kMembers[i].resourceSize/2);
				BlockMove((**maskPix).baseAddr, &((*iconHandle)[kMembers[i].resourceSize/2]), kMembers[i].resourceSize/2);
			}
			else
				BlockMove((**iconPix).baseAddr, *iconHandle, kMembers[i].resourceSize);
				
			if (addedResource)
				AddResource(iconHandle, kMembers[i].resourceName, ID, name);
			
			SetResAttrs(iconHandle, flags);
			ChangedResource(iconHandle);
			UpdateResFile(targetFile);
			ReleaseResource(iconHandle);
		}
		
	DEBUG("\pdone adding resources");
	
	PostSave();
	
	DEBUG("\pdone postsaving");
	
	DEBUG("\pdone saving old style");
}

void MIcon::SaveDataFork()
{
	short 				dataFork;
	long 				writeLength;
	IconFamilyHandle	icnsHandle;
	
	icnsHandle = Geticns();
	
	dataFork = file.OpenDataFork(fsRdWrPerm);
	
	SetFPos(dataFork, fsFromStart, 0);
	SetEOF(dataFork, (**icnsHandle).resourceSize);
	
	writeLength = (**icnsHandle).resourceSize;
	
	FSWrite(dataFork, &writeLength, *icnsHandle);

	FSClose(dataFork);
	
	DisposeHandle((Handle)icnsHandle);
}

long MIcon::GetSize()
{
	long returnSize;
	
	RefreshIconMembers();
	
	returnSize = sizeof(IconFamilyResource) - sizeof(IconFamilyElement);

	if (members & it32)
	{
		Ptr temp;
		long it32CompressedSize;
		
		CompressPixMap(it32Pix, &temp, &it32CompressedSize);
		DisposePtr(temp);
		
		returnSize += (sizeof(IconFamilyElement) - icnsSizePadding) + it32CompressedSize;
	}
	if (members & t8mk) returnSize += sizeof(IconFamilyElement) - icnsSizePadding + t8mkSize;

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
	
	if (members & icm8) returnSize += sizeof(IconFamilyElement) - icnsSizePadding + icm8Size;
	if (members & icm4) returnSize += sizeof(IconFamilyElement) - icnsSizePadding + icm4Size;
	if ((members & icmi) || (members & icmm)) returnSize += sizeof(IconFamilyElement) - icnsSizePadding + icmSize;	
	
	return returnSize;
}

long MIcon::GetLargestSize()
{
	if (members & (it32 | t8mk)) return 128;
	if (members & (ih32 | h8mk | ich8 | ich4 | ichi | ichm)) return 48;
	if (members & (il32 | l8mk | icl8 | icl4 | icni | icnm)) return 32;
	if (members & (is32 | s8mk | ics8 | ics4 | icsi | icsm)) return 16;
	if (members & (icm8 | icm4 | icmi | icmm)) return 16;
	return 32;
}

bool MIcon::IDChanged()
{
	return ((format == formatMacOSUniversal || format == formatMacOSNew || format == formatMacOSOld) &&
			((ID != loadedID && loadedID != kIDNone && loadedID != kIDUseFileIcon && loadedID != kIDLoadDataFork) ||
			(format != loadedFormat)));
}

int MIcon::CountMembers()
{
	int				count = 0;
	PixMapHandle	currentPix;
	GWorldPtr		currentGW;
	
	for (int i=0; i < kMembersCount; i++)
		if (kMembers[i].name & usedMembers)
		{
			GetGWorldAndPix(kMembers[i].name, &currentGW, &currentPix);
			if (!IsEmptyPixMap(currentPix))
				count++;
		}
		
	return count;
}

void MIcon::TransformWithColor(RGBColor transformColor)
{
	HSVColor	transformHSV;
	
	/*DebugNValues("\ptransforming with color: ", 3,
				 transformColor.red,
				 transformColor.green,
				 transformColor.blue);*/
	
	RGB2HSV(&transformColor, &transformHSV);
	
	for (int i=0; i < kMembersCount; i++)
		if ((members & kMembers[i].name) && !(kMembers[i].name & masks))
		{
			GWorldPtr		memberGW;
			PixMapHandle	memberPix;
			
			GetGWorldAndPix(kMembers[i].name, &memberGW, &memberPix);
			
			//DebugNValues("\ptransforming member: ", 3,
			//			 (**memberPix).bounds.right, (**memberPix).bounds.bottom, kMembers[i].depth);
			
			SAVEGWORLD;
			
			SetGWorld(memberGW, NULL);
			
			for (int x=0; x < (**memberPix).bounds.right; x++)
				for (int y=0; y < (**memberPix).bounds.bottom; y++)
				{
					RGBColor	oldColor, newColor;
					HSVColor	transformedColor;
					
					GetCPixel(x, y, &oldColor);
					
					RGB2HSV(&oldColor, &transformedColor);
					
					transformedColor.hue = transformHSV.hue;
					transformedColor.saturation = (transformHSV.saturation + transformedColor.saturation)/2;
					
					HSV2RGB(&transformedColor, &newColor);
					
					/*newColor.red = (newColor.red + oldColor.red)/2;
					newColor.green = (newColor.green + oldColor.green)/2;
					newColor.blue = (newColor.blue + oldColor.blue)/2;*/
					
					SetCPixel(x, y, &newColor);
				}
			
			RESTOREGWORLD;
		}
}

#pragma mark -

int MIcon::GetPixName(int height, int depth, bool icon)
{
	if (height == 12)
	{
		if (icon && (depth == 32)) depth = 8;
		if (!icon && (depth == 8)) depth = 1;
	}
	else if (height > 48)
	{
		height = 128;
		if (icon)
			depth = 32;
		else
			depth = 8;
	}
	
	for (int i=0; i < kMembersCount; i++)
	{
		if ((kMembers[i].height == height) &&
			kMembers[i].depth == depth &&
			((icon && (kMembers[i].name & icons)) || (!icon && (kMembers[i].name & masks))))
			return kMembers[i].name;
	}
	
	return -1;
}

#define HASMEMBER(memberName) ((members & memberName) || (!strict && memberName & kDefaultMembers[format]))

int MIcon::GetBestMaskName(int height, int depth, bool strict)
{
	int maskName;
	
	switch (depth)
	{
		case 32:
		case 8:
			maskName = GetPixName(height, 8, false);
			if (maskName != -1 && (HASMEMBER(maskName) || (height > 48)))
				return maskName;
			else
				return GetPixName(height, 1, false);
			break;
		default:
			return GetPixName(height, 1, false);
			break;
	}
}

int MIcon::GetBestPixName(int height, int depth, bool strict)
{
	int pixName;
	
	switch (depth)
	{
		case 1:
			if ((pixName = GetPixName(height, 8, true)) && HASMEMBER(pixName))
				return pixName;
			else if ((pixName = GetPixName(height, 4, true)) && HASMEMBER(pixName))
				return pixName;
			else if ((pixName = GetPixName(height, 32, true)) && HASMEMBER(pixName))
				return pixName;
			else
				return GetPixName(height, 1, true);
			break;
		default:
			if ((pixName = GetPixName(height, 32, true)) && HASMEMBER(pixName))
				return pixName;
			else if ((pixName = GetPixName(height, 8, true)) && HASMEMBER(pixName))
				return pixName;
			else if ((pixName = GetPixName(height, 4, true)) && HASMEMBER(pixName))
				return pixName;
			else
				return GetPixName(height, 1, true);
			break;
		
	}
}


void MIcon::GetGWorldAndPixPointers(long pixName, GWorldPtr** gW, PixMapHandle** pix)
{
	switch (pixName)
	{
		case it32: *gW = &it32GW; *pix = &it32Pix; break;
		case ih32: *gW = &ih32GW; *pix = &ih32Pix; break;
		case il32: *gW = &il32GW; *pix = &il32Pix; break;
		case is32: *gW = &is32GW; *pix = &is32Pix; break;
		
		case t8mk: *gW = &t8mkGW; *pix = &t8mkPix; break;
		case h8mk: *gW = &h8mkGW; *pix = &h8mkPix; break;
		case l8mk: *gW = &l8mkGW; *pix = &l8mkPix; break;
		case s8mk: *gW = &s8mkGW; *pix = &s8mkPix; break;

		case ich8: *gW = &ich8GW; *pix = &ich8Pix; break;
		case icl8: *gW = &icl8GW; *pix = &icl8Pix; break;
		case ics8: *gW = &ics8GW; *pix = &ics8Pix; break;
		case icm8: *gW = &icm8GW; *pix = &icm8Pix; break;
		
		case ich4: *gW = &ich4GW; *pix = &ich4Pix; break;
		case icl4: *gW = &icl4GW; *pix = &icl4Pix; break;
		case ics4: *gW = &ics4GW; *pix = &ics4Pix; break;
		case icm4: *gW = &icm4GW; *pix = &icm4Pix; break;
		
		case ichi: *gW = &ichiGW; *pix = &ichiPix; break;
		case icni: *gW = &icniGW; *pix = &icniPix; break;
		case icsi: *gW = &icsiGW; *pix = &icsiPix; break;
		case icmi: *gW = &icmiGW; *pix = &icmiPix; break;
		
		case ichm: *gW = &ichmGW; *pix = &ichmPix; break;
		case icnm: *gW = &icnmGW; *pix = &icnmPix; break;
		case icsm: *gW = &icsmGW; *pix = &icsmPix; break;
		case icmm: *gW = &icmmGW; *pix = &icmmPix; break;
		
		default: DisplayAlert("bad pixmap name", ""); DebugValue("\pBad pixmap name: ", pixName); break;
	}
}

void MIcon::GetGWorldAndPix(long pixName, GWorldPtr* gW, PixMapHandle* pix)
{
	GWorldPtr* tempGW;
	PixMapHandle* tempPix;
	
	GetGWorldAndPixPointers(pixName, &tempGW, &tempPix);
	
	*gW = *tempGW;
	*pix = *tempPix;
}

void MIcon::ReplaceMember(int memberName, GWorldPtr newGW, PixMapHandle newPix)
{
	GWorldPtr *oldGW;
	PixMapHandle *oldPix;
	
	GetGWorldAndPixPointers(memberName, &oldGW, &oldPix);
	
	UnlockPixels(*oldPix);
	DisposeGWorld(*oldGW);
	
	*oldPix = newPix;
	*oldGW = newGW;
}

void MIcon::GetMemberNameString(int name, Str255 nameString)
{
	int index = -1;
	
	for (int i=0; i < kMembersCount; i++)
		if (kMembers[i].name == name)
		{
			index = i;
			break;
		}
	
	if (index != -1)
		GetIndString(nameString, rIconNames, index + 1);
	else
		CopyString(nameString, "\p");
}

void MIcon::GetMemberResourceNameString(int name, Str255 nameString)
{
	int index = -1;
	
	for (int i=0; i < kMembersCount; i++)
		if (kMembers[i].name == name)
		{
			index = i;
			break;
		}
	
	if (index != -1)
	{
		nameString[0] = 4;
		*(long*)(&nameString[1]) = kMembers[index].resourceName;
	}
	else
		CopyString(nameString, "\p");
}

MString	MIcon::GetMembersListNames(long members)
{
	MString membersList("");
	bool	first = true;
	
	if (members & thumbnailSize)
	{
		membersList += GetSizeListNames(members, thumbnailSize);
		first = false;
	}	
	
	if (members & hugeSize)
	{
		if (!first) membersList += "; ";
		membersList += GetSizeListNames(members, hugeSize);
		first = false;
	}
	
	if (members & largeSize)
	{
		if (!first) membersList += "; ";
		membersList += GetSizeListNames(members, largeSize);
		first = false;
	}
	
	if (members & smallSize)
	{
		if (!first) membersList += "; ";
		membersList += GetSizeListNames(members, smallSize);
		first = false;
	}
	
	if (members & miniSize)
	{
		if (!first) membersList += "; ";
		membersList += GetSizeListNames(members, miniSize);
	}

	return membersList;
}

void MIcon::GetSizeName(long size, Str255 sizeName)
{
	for (int i=0; i < kMembersCount; i++)
		if (kMembers[i].name & size)
		{
			GetMemberNameString(kMembers[i].name, sizeName);
			
			for (int j=1; j <= sizeName[0]; j++)
				if (sizeName[j] == ' ')
				{
					sizeName[0] = j - 1;
					return;
				}
		}
		
	CopyString(sizeName, "\p");
}

MString MIcon::GetSizeListNames(long members, long size)
{
	MString	list("");
	Str255	sizeName;
	bool	first = true;
	
	GetSizeName(size, sizeName);
	
	list += sizeName;
	
	list += " (";
	
	for (int i=0; i < kMembersCount; i++)
		if ((kMembers[i].name & (members & size)) &&
			!(kMembers[i].name & masks))
		{	
			if (!first)
				list += ", ";
			else
				first = false;
			
			list += kMembers[i].depth;
		}
		
	list += ")";
	
	return list;
}

int MIcon::GetMemberIndex(int name)
{
	for (int i=0; i < kMembersCount; i++)
		if (kMembers[i].name == name &&
			name & kDefaultMembers[format])
			return i;
			
	return -1;
}

#pragma mark -

void MIcon::SetCanvas(GWorldPtr inCanvasGW, PixMapHandle inCanvasPix)
{
	canvasGW = inCanvasGW;
	canvasPix = inCanvasPix;
}

#pragma mark -

OSStatus NewIconSet(GWorldPtr *gWorld, PixMapHandle *pixMap, Rect bounds, int depth, CTabHandle cTable)
{
	SAVEGWORLD;
	SAVECOLORS;
	OSStatus err;
		
	*gWorld = NULL;
	*pixMap = NULL;
	
	err = noErr;
	
	err = NewGWorld(gWorld, depth, &bounds, cTable, NULL, 0);
	if (err != noErr) return err;
	*pixMap = GetGWorldPixMap(*gWorld);
	LockPixels(*pixMap);
	SetGWorld(*gWorld, NULL);
	BackColor(whiteColor);
	EraseRect(&bounds);
	
	/*int		idealRowBits = (bounds.right - bounds.left) * depth;
	
	if (idealRowBits % 8 != 0)
		idealRowBits += 8 - (idealRowBits % 8);
			
	int rowBytes = idealRowBits / 8;
	
	QTSetPixMapHandleRowBytes(*pixMap, rowBytes);
	int flags = (***pixMap).rowBytes & 0xC000;
	(***pixMap).rowBytes = rowBytes | flags;	
	if ((***pixMap).pmExt)
	{
		PixMapExtension** ext = (PixMapExtension**)(***pixMap).pmExt;
		(**ext).longRowBytes = rowBytes;
	}*/
	//CropPixMap(*pixMap, (bounds.right - bounds.left) * depth / 8);

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

void GeticnsInfo(IconFamilyHandle icnsHandle, long* members, int* maxHeight)
{
	IconFamilyElement*	elementPtr;
	unsigned long		endingSize;
	
	elementPtr = (**icnsHandle).elements;
	endingSize = (unsigned long)(*icnsHandle) + (**icnsHandle).resourceSize;
	
	*members = 0;
	*maxHeight = 0;
	
	while ((unsigned long)elementPtr < endingSize)
	{
		switch (elementPtr->elementType)
		{
			case 'ih32': *members |= ih32; if (*maxHeight < 48) *maxHeight = 48; break;
			case 'il32': *members |= il32; if (*maxHeight < 32) *maxHeight = 32; break;
			case 'is32': *members |= is32; if (*maxHeight < 16) *maxHeight = 16; break;
			
			case 'ich8': *members |= ich8; if (*maxHeight < 48) *maxHeight = 48; break;
			case 'icl8': *members |= icl8; if (*maxHeight < 32) *maxHeight = 32; break;
			case 'ics8': *members |= ics8; if (*maxHeight < 16) *maxHeight = 16; break;
			
			case 'ich4': *members |= ich4; if (*maxHeight < 48) *maxHeight = 48; break;
			case 'icl4': *members |= icl4; if (*maxHeight < 32) *maxHeight = 32; break;
			case 'ics4': *members |= ics4; if (*maxHeight < 16) *maxHeight = 16; break;
			
			case 'ich#': *members |= ichi | ichm; if (*maxHeight < 48) *maxHeight = 48; break;
			case 'ICN#': *members |= icni | icnm; if (*maxHeight < 32) *maxHeight = 32; break;
			case 'ics#': *members |= icsi | icsm; if (*maxHeight < 16) *maxHeight = 16; break;

			case 'icm8': *members |= icm8; if (*maxHeight < 16) *maxHeight = 16; break;
			case 'icm4': *members |= icm4; if (*maxHeight < 16) *maxHeight = 16; break;
			case 'icm#': *members |= icmi | icmm; if (*maxHeight < 16) *maxHeight = 16; break;
			
			case 'it32': *members |= it32; if (*maxHeight < 128) *maxHeight = 128; break;
			case 't8mk': *members |= t8mk; if (*maxHeight < 128) *maxHeight = 128; break;			

		}

		elementPtr = (IconFamilyElement *)((char *)(elementPtr) + elementPtr->elementSize);
	}
}

void GetICNInfo(short ID, Str255 name, long* members, int *maxHeight, OSType alreadyLoadedType)
{
	OSType	type, iconTypes[] = {'ICN#', 'ics#', 'icl8', 'ics8', 'icl4', 'ics4', 'icm8', 'icm4', 'icm#', 'il32', 'ih32', 'is32'};
	int		typeCount = sizeof(iconTypes)/sizeof(iconTypes[0]);
	Handle	icon;
	Str255	tempName;
	
	CopyString(name, "\p");
	
	*members = 0;
	*maxHeight = 0;
	
	for (int i=0; i < typeCount; i++)
	{
		icon = Get1Resource(iconTypes[i], ID);
		if (icon != NULL)
		{
			switch (iconTypes[i])
			{
				case 'ih32': *members |= ih32; if (*maxHeight < 48) *maxHeight = 48; break;
				case 'il32': *members |= il32; if (*maxHeight < 32) *maxHeight = 32; break;
				case 'is32': *members |= is32; if (*maxHeight < 16) *maxHeight = 16; break;
				
				case 'ich8': *members |= ich8; if (*maxHeight < 48) *maxHeight = 48; break;
				case 'icl8': *members |= icl8; if (*maxHeight < 32) *maxHeight = 32; break;
				case 'ics8': *members |= ics8; if (*maxHeight < 16) *maxHeight = 16; break;
				case 'icm8': *members |= icm8; if (*maxHeight < 12) *maxHeight = 12; break;
				
				case 'ich4': *members |= ich4; if (*maxHeight < 48) *maxHeight = 48; break;
				case 'icl4': *members |= icl4; if (*maxHeight < 32) *maxHeight = 32; break;
				case 'ics4': *members |= ics4; if (*maxHeight < 16) *maxHeight = 16; break;
				case 'icm4': *members |= icm4; if (*maxHeight < 12) *maxHeight = 12; break;
				
				case 'ich#': *members |= ichi; if (*maxHeight < 48) *maxHeight = 48; break;
				case 'ICN#': *members |= icni; if (*maxHeight < 32) *maxHeight = 32; break;
				case 'ics#': *members |= icsi; if (*maxHeight < 16) *maxHeight = 16; break;
				case 'icm#': *members |= icmi; if (*maxHeight < 12) *maxHeight = 12; break;
			}
			
			GetResInfo(icon, &ID, &type, tempName);
			if (tempName[0] > name[0])
				CopyString(name, tempName);
			
			if (type != alreadyLoadedType)
				ReleaseResource(icon);
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
	{
		CompressPixMap(iconPix, &iconData, &size);
		if (iconType == 'it32')
		{
			Ptr	tempData;
			
			tempData = NewPtr(size + 4);
			
			*((long*)tempData) = 0;
			BlockMove(iconData, &tempData[4], size);
			DisposePtr(iconData);
			iconData = tempData;
			
			size += 4;	
		}
	}
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
	
	if (MUtilities::GetScrap( pic, 'PICT', &offset ) < 0)
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

#pragma mark -

bool MIcon::FileHasIcon(MFile *file, short ID, int format)
{
	short	newFile, oldFile;
	int		membersCount = 0;
	Handle	icon;
	
	oldFile = CurResFile();
	newFile = file->OpenResourceFork(fsRdPerm);
	UseResFile(newFile);
	
	if (format == formatMacOSNew || format == formatMacOSUniversal)
	{
		icon = Get1Resource('icns', ID);
		if (icon)
		{
			membersCount++;
			ReleaseResource(icon);
		}
	}
	
	if (format == formatMacOSOld || format == formatMacOSUniversal)
		for (int i=0; i < kMembersCount; i++)
			if (kDefaultMembers[format] & kMembers[i].name)
			{
				icon = Get1Resource(kMembers[i].resourceName, ID);
				if (icon)
				{
					membersCount++;
					ReleaseResource(icon);
				}
			}
	
	CloseResFile(newFile);
	UseResFile(oldFile);
	
	return membersCount > 0;
}

void MIcon::DeleteIcon(MFile *file, short ID, int format)
{
	short	newFile, oldFile;
	Handle	icon;
	
	oldFile = CurResFile();
	newFile = file->OpenResourceFork(fsRdWrPerm);
	UseResFile(newFile);
	
	if (format == formatMacOSNew || format == formatMacOSUniversal)
	{
		icon = Get1Resource('icns', ID);
		if (icon)
			RemoveResource(icon);
	}
	
	if (format == formatMacOSOld || format == formatMacOSUniversal)
		for (int i=0; i < kMembersCount; i++)
			if (kDefaultMembers[format] & kMembers[i].name)
			{
				icon = Get1Resource(kMembers[i].resourceName, ID);
				if (icon)
					RemoveResource(icon);
			}
			
	UpdateResFile(newFile);
	CloseResFile(newFile);
	UseResFile(oldFile);
}

void MIcon::GetActualIconSpec(FSSpec currentSpec, FSSpec* iconSpec)
{
	MFile	file;
	
	file.SetAssociatedFile(currentSpec);
	
	if (file.IsFolder())
	{
		short	oldFile, iconFile;
		Str255	iconSpecName = "\p:";
			
		if (file.IsVolume() && MUtilities::GestaltVersion(gestaltSystemVersion, 0x10, 0x00))
		{
			AppendString(iconSpecName, currentSpec.name);
			AppendString(iconSpecName, (unsigned char*)"\p:.VolumeIcon.icns");
		}
		else
		{
			AppendString(iconSpecName, currentSpec.name);
			AppendString(iconSpecName, (unsigned char*)"\p:Icon\r");
		}
		
		FSMakeFSSpec(currentSpec.vRefNum, currentSpec.parID, iconSpecName, iconSpec);
		
		oldFile = CurResFile();
		iconFile = FSpOpenResFile(iconSpec, fsRdWrPerm);
	
		if (iconFile == -1)
		{
			FInfo	fileInfo;
			
			FSpCreate(iconSpec, 'MACS', 'icon', 0);
			FSpCreateResFile(iconSpec, 'MACS', 'icon', 0);
			
			FSpGetFInfo(iconSpec, &fileInfo);
			
			fileInfo.fdFlags |= kIsInvisible;
		
			FSpSetFInfo(iconSpec, &fileInfo);
		}
		else
		{
			CloseResFile(iconFile);
			UseResFile(oldFile);
		}
	}
	else
		*iconSpec = currentSpec;
}

#pragma mark -

bool FilterIconFile(FSSpec file, long expectedFormat)
{
	int fileFormat = GetFileFormat(file);
	
	return (expectedFormat == formatAll ||
			expectedFormat ==  fileFormat||
			(expectedFormat == formatMacOSNew && fileFormat == formatMacOSUniversal) ||
			(expectedFormat == formatMacOSOld && fileFormat == formatMacOSUniversal) ||
			(expectedFormat == formatWindowsXP && fileFormat == formatWindows));
}

long GetFileFormat(FSSpec file)
{
	if (MUtilities::FileHasExtension(file.name, "\pico"))
	{
		MIcon icon;
			
		icon.file.SetAssociatedFile(file);
		icon.format = formatWindows;
			
		if (icon.HasNonIconDataFork(true))
			return formatMacOSUniversal;
		else
		{
			ICONDIR iconDir;
		
			LoadIconDirFromFile(&iconDir, file);
			
			for (int i=0; i < iconDir.idCount; i++)
				if (iconDir.idEntries[i].iconImage->icHeader.biBitCount == 32)
				{
					DisposeIconDir(iconDir);
					return formatWindowsXP;
				}
			
			DisposeIconDir(iconDir);
			
			return formatWindows;
		}
	}
	else if (MUtilities::FileHasExtension(file.name, "\ptif") || MUtilities::FileHasExtension(file.name, "\ptiff"))
		return formatMacOSXServer;
	else if (MUtilities::FileHasExtension(file.name, "\picns"))
	{
		MIcon icon;
			
		icon.file.SetAssociatedFile(file);
		icon.format = formatMacOSX;
			
		if (icon.HasNonIconDataFork(true))
			return formatMacOSUniversal;
		else
			return formatMacOSX;
	}
	else
	{
		short	oldFile, currentFile;
		long	format, oldCount, newCount;
		MFile	targetFile;
		
		targetFile.SetAssociatedFile(file);
		
		oldFile = CurResFile();
		currentFile = targetFile.OpenResourceFork(fsRdPerm);
		
		if (currentFile == -1) // we just want the file's icon
			return formatMacOSUniversal;
			
		UseResFile(currentFile);
		
		oldCount = Count1Resources('ICN#') + Count1Resources('ics#') + Count1Resources('icm#') + Count1Resources('ich#');
		newCount = Count1Resources('icns');
		
		if (oldCount == 0 && newCount > 0)
			format = formatMacOSNew;
		else if (oldCount > 0 && newCount == 0)
			format = formatMacOSOld;
		else
			format = formatMacOSUniversal;
	
		CloseResFile(currentFile);
		UseResFile(oldFile);
		
		return format;
	}
}

void SetFileExtension(int format, Str255 fileName)
{
	if (MUtilities::FileHasExtension(fileName, "\pico") || MUtilities::FileHasExtension(fileName, "\ptif")) fileName[0] -= 4;
	if (MUtilities::FileHasExtension(fileName, "\picns") || MUtilities::FileHasExtension(fileName, "\ptiff")) fileName[0] -= 5;
	 
	switch (format)
	{
		case formatMacOSUniversal:
		case formatMacOSNew:
		case formatMacOSOld:
			// no extension needed
			break;
		case formatMacOSX:
			if (fileName[0] > 26) fileName[0] = 26;
			AppendString(fileName, (unsigned char*)"\p.icns");	
			break;
		case formatWindows:
		case formatWindowsXP:
			if (fileName[0] > 27) fileName[0] = 27;
			AppendString(fileName, (unsigned char*)"\p.ico");	
			break;
		case formatMacOSXServer:
			if (fileName[0] > 26) fileName[0] = 26;
			AppendString(fileName, (unsigned char*)"\p.tiff");
			break;
	}
}
