// __________________________________________________________________________________________
// Program		: Icon Mangler
// Filename		: icnsClass.cpp (C++)
// Author		: Mihai Parparita (St. Mary's International School)
// Last modified: April 1, 1999
// Description	: This file contains the member functions of the icnsClass (which is used for
//				  the loading and displaying of icons). It also contains some of the utility
//				  used in the class

#include "icnsClass.h"
#include "graphicalFunctions.h"
#include "MUtilities.h"

GWorldPtr 		icnsClass::canvasGW = NULL;
PixMapHandle	icnsClass::canvasPix = NULL;

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
	
	// making the gworlds for the small icon sizes (16 x 16), refer to icnsClass.h for
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
	CopyString(name, "\p"); // the name should be blank
	srcFileSpec.vRefNum = 0;
	srcFileSpec.parID = 0;
	CopyString(srcFileSpec.name, "\pUntitled Icon");
	
	if (err != noErr) 			// if there was a problem in the creation of the icon gworld
		status |= outOfMemory;  // (most likely a lack of memory) then we must not continue
		
	usedMembers = kDefaultMembers[format];
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
#ifdef THUMBNAIL
	if (it32Pix != NULL) UnlockPixels(it32Pix);
	if (t8mkPix != NULL) UnlockPixels(t8mkPix);
#endif

#ifdef MINI	
	if (icmiPix != NULL) UnlockPixels(icmiPix);
	if (icmmPix != NULL) UnlockPixels(icmmPix);
	if (icm8Pix != NULL) UnlockPixels(icm8Pix);
	if (icm4Pix != NULL) UnlockPixels(icm4Pix);
#endif
	
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


#ifdef THUMBNAIL
	if (it32GW != NULL)  DisposeGWorld(it32GW);
	if (t8mkGW != NULL)  DisposeGWorld(t8mkGW);
#endif

#ifdef MINI
	if (icmiGW != NULL)  DisposeGWorld(icmiGW);
	if (icmmGW != NULL)  DisposeGWorld(icmmGW);
	if (icm8GW != NULL)  DisposeGWorld(icm8GW);
	if (icm4GW != NULL)  DisposeGWorld(icm4GW);
#endif
	
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

void icnsClass::Reset()
{
	SAVEGWORLD;
#ifdef THUMBNAIL
	SetGWorld(it32GW, NULL); EraseRect(&thumbnailIconRect);
	SetGWorld(t8mkGW, NULL); EraseRect(&thumbnailIconRect);
#endif

#ifdef MINI
	SetGWorld(icm8GW, NULL); EraseRect(&miniIconRect);
	SetGWorld(icm4GW, NULL); EraseRect(&miniIconRect);
	SetGWorld(icmiGW, NULL); EraseRect(&miniIconRect);
	SetGWorld(icmmGW, NULL); EraseRect(&miniIconRect);
#endif
	
	SetGWorld(il32GW, NULL); EraseRect(&largeIconRect);
	SetGWorld(l8mkGW, NULL); EraseRect(&largeIconRect);
	SetGWorld(icl8GW, NULL); EraseRect(&largeIconRect);
	SetGWorld(icl4GW, NULL); EraseRect(&largeIconRect);
	SetGWorld(icniGW, NULL); EraseRect(&largeIconRect);
	SetGWorld(icnmGW, NULL); EraseRect(&largeIconRect);
	
	SetGWorld(ih32GW, NULL); EraseRect(&hugeIconRect);
	SetGWorld(h8mkGW, NULL); EraseRect(&hugeIconRect);
	SetGWorld(ich8GW, NULL); EraseRect(&hugeIconRect);
	SetGWorld(ich4GW, NULL); EraseRect(&hugeIconRect);
	SetGWorld(ichiGW, NULL); EraseRect(&hugeIconRect);
	SetGWorld(ichmGW, NULL); EraseRect(&hugeIconRect);
	
	SetGWorld(is32GW, NULL); EraseRect(&smallIconRect);
	SetGWorld(s8mkGW, NULL); EraseRect(&smallIconRect);
	SetGWorld(ics8GW, NULL); EraseRect(&smallIconRect);
	SetGWorld(ics4GW, NULL); EraseRect(&smallIconRect);
	SetGWorld(icsiGW, NULL); EraseRect(&smallIconRect);
	SetGWorld(icsmGW, NULL); EraseRect(&smallIconRect);
	RESTOREGWORLD;
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

void icnsClass::LoadFromIconSuite(IconSuiteRef theIconSuite)
{
	IconActionUPP extractionAction;
	
	extractionAction = NewIconActionProc(IconExtractor);
	
	members = 0;
	
	ForEachIconDo(theIconSuite, kSelectorAllAvailableData, extractionAction, this);
	
	DisposeRoutineDescriptor(extractionAction);
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

#ifdef MINI
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
#endif

#ifdef THUMBNAIL
		// thumbnail size
		case 'it32':
			BlockMove(iconData, (**targetIcon->it32Pix).baseAddr, it32Size); 
			targetIcon->members |= it32;
			break;
		case 't8mk':
			BlockMove(iconData, (**targetIcon->t8mkPix).baseAddr, t8mkSize);
			targetIcon->members |= t8mk;
			break;
#endif
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
	switch (format)
	{
		case formatMacOSUniversal:
			LoadOld();
			LoadNew();
			break;
		case formatMacOSOld:
			LoadOld();
			break;
		case formatMacOSNew:
			LoadNew();
			break;
		case formatWindows:
			LoadICO();
			break;
		case formatMacOSXServer:
			LoadTIFF();
			break;
	}
}

void icnsClass::LoadDataFork()
{
	short file;
	long readLength, iconType, iconSize;
	IconFamilyHandle	icnsHandle;
	
	FSpOpenDF(&srcFileSpec, fsRdPerm, &file);
	
	SetFPos(file, fsFromStart, 0);
	
	readLength = sizeof(long);
	
	FSRead(file, &readLength, &iconType);
	if (iconType != 'icns')
	{
		DisplayAlert("Unknown icon type, please contact Mihai", "");
		FSClose(file);
	}
	
	FSRead(file, &readLength, &iconSize);
	
	icnsHandle = (IconFamilyHandle)NewHandleClear(iconSize);
	
	readLength = iconSize;
	
	SetFPos(file, fsFromStart, 0);
	
	FSRead(file, &readLength, *((Handle)icnsHandle));
	
	FSClose(file);
	
	LoadFromIconFamily(icnsHandle);
	
	DisposeHandle((Handle)icnsHandle);
}

OSErr icnsClass::LoadNew()
{
	IconFamilyHandle	icnsHandle;
	OSErr				returnErr;
	ResType				ignoredType;// resource type, this is one of the parameters to
									// to the GetResInfoFunction, but we don't care about it
									// since we already know the resource type ('icns')
	
	short srcFile, oldFile;
	
	Reset();
	
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
		
		returnErr = noErr;
	}
	else
		returnErr = resNotFound;
		
	CloseResFile(srcFile);	// close it
	UseResFile(oldFile); // and restore the old one
	
	return returnErr;
	
}

OSErr icnsClass::LoadOld()
{
	IconSuiteRef		oldStyleSuite;
	ResType				ignoredType;
	Handle				temp;
	short				srcFile, oldFile;
	
	Reset();
	
	oldFile = CurResFile();						// we save the old file that was in use
	srcFile = FSpOpenResFile(&srcFileSpec, fsRdPerm);	// open the old one
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

void icnsClass::Display(Rect targetRect, bool selected)
{
	PixMapHandle	iconPix, maskPix;
	long			copyStyle;
	int				size;
	Rect			displayRect, bounds;
	
	SAVECOLORS;
	
	if (!IsPortColor(qd.thePort))
	// dithering looks bad in 1 bit, so we turn it off...
		copyStyle = srcCopy;
	else
		copyStyle = srcCopy + ditherCopy;
	
	// the size of the target, determines which icon size will be used as the source
	// if there is no appropriate size then the large one will be scaled (assuming it exists)
	size = targetRect.bottom - targetRect.top;
	
	if (size <= 16)
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
		
		else if (members & it32) iconPix = it32Pix;
		
		
		if (members & s8mk) maskPix = s8mkPix;
		else if (members & icsm) maskPix = icsmPix;
		
		else if (members & l8mk) maskPix = l8mkPix;
		else if (members & icnm) maskPix = icnmPix;
		
		else if (members & h8mk) maskPix = h8mkPix;
		else if (members & ichm) maskPix = ichmPix;
		
		else if (members & t8mk) maskPix = t8mkPix;
	}
	else if (size <= 32)
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
		
		else if (members & it32) iconPix = it32Pix;
		
		if (members & l8mk) maskPix = l8mkPix;
		else if (members & icnm) maskPix = icnmPix;
		
		else if (members & h8mk) maskPix = h8mkPix;
		else if (members & ichm) maskPix = ichmPix;
		
		else if (members & s8mk) maskPix = s8mkPix;
		else if (members & icsm) maskPix = icsmPix;
		
		else if (members & t8mk) maskPix = t8mkPix;
	}
	else if (size <= 48)
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
		
		else if (members & it32) iconPix = it32Pix;
		
		if (members & h8mk) maskPix = h8mkPix;
		else if (members & ichm) maskPix = ichmPix;
		
		else if (members & l8mk) maskPix = l8mkPix;
		else if (members & icnm) maskPix = icnmPix;
		
		else if (members & s8mk) maskPix = s8mkPix;
		else if (members & icsm) maskPix = icsmPix;
		
		else if (members & t8mk) maskPix = t8mkPix;
	}
#ifdef THUMBNAIL
	else if (size <= 128)
	{
		if (members & it32) iconPix = it32Pix;
		
		else if (members & ih32) iconPix = ih32Pix;
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
		
		
		if (members & t8mk) maskPix = t8mkPix;
		
		else if (members & h8mk) maskPix = h8mkPix;
		else if (members & ichm) maskPix = ichmPix;
		
		else if (members & l8mk) maskPix = l8mkPix;
		else if (members & icnm) maskPix = icnmPix;
		
		else if (members & s8mk) maskPix = s8mkPix;
		else if (members & icsm) maskPix = icsmPix;
	}
#endif

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

void icnsClass::DisplayMember(int member, Rect targetRect, bool selected)
{
	GWorldPtr	selectedGW;
	PixMapHandle selectedPix, iconPix = NULL, maskPix = NULL;
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

#ifdef THUMBNAIL
		case it32: iconPix = it32Pix; break;
#endif

#ifdef MINI
		case icm8: iconPix = icm8Pix; break;
		case icm4: iconPix = icm4Pix; break;
		case icmi: iconPix = icmiPix; break;
#endif
	}
	
	switch ((**iconPix).bounds.bottom)
	{
#ifdef THUMBNAIL
		case 128:
			if (members & t8mk && (**iconPix).pixelSize >= 8)
				maskPix = t8mkPix;
			else
				maskPix = t8mkPix;
			break;
#endif
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
		
		NewGWorldUnpadded(&selectedGW, 32, &iconRect, NULL);
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

void icnsClass::DrawMember(int member, Rect targetRect)
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

void icnsClass::RefreshIconMembers(void)
{
	members = 0;
#ifdef THUMBNAIL
	if (!IsEmptyPixMap(it32Pix)) members |= it32;
	if (!IsEmptyPixMap(t8mkPix)) members |= t8mk;
#endif

#ifdef MINI
	if (!IsEmptyPixMap(icm8Pix)) members |= icm8;
	if (!IsEmptyPixMap(icm4Pix)) members |= icm4;
	if (!IsEmptyPixMap(icmiPix)) members |= icmi;
	if (!IsEmptyPixMap(icmmPix)) members |= icmm;
#endif

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

#ifdef MINI
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
	if (members & icl8)
		AddIconMember(&icnsHandle, 'icm8', icm8Pix);
#endif

#ifdef THUMBNAIL
	if (members & it32)
		AddIconMember(&icnsHandle, 'it32', it32Pix);
	if (members & t8mk)
		AddIconMember(&icnsHandle, 't8mk', t8mkPix);
#endif
		
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

void icnsClass::Save()
{
	loadedID = ID;
	
	switch (format)
	{
		case formatMacOSUniversal:
			SaveOld();
			SaveNew();
			break;
		case formatMacOSOld:
			SaveOld();
			break;
		case formatMacOSNew:
			SaveNew();
			break;
		case formatWindows:
			SaveICO();
			break;
		case formatMacOSXServer:
			break;
	}
	
	MUtilities::AESendFinderUpdate(srcFileSpec);
}

void icnsClass::SaveUniversal()
{
	SaveOld();
	SaveNew();
}

void icnsClass::SetupFileSpec(bool erase)
{
	unsigned char ignored;
	
	ResolveAliasFile(&srcFileSpec,true,&isFolder, &ignored);
	if (isFolder)
	{	
		Str255	targetName = "\p:";
		FInfo	fileInfo;
		
		FSpSetFinderFlags(&srcFileSpec, kHasCustomIcon, true);
		
		AppendString(targetName, srcFileSpec.name);
		AppendString(targetName, "\p:Icon\r");
		
		savedSpec = srcFileSpec;
		FSMakeFSSpec(srcFileSpec.vRefNum, srcFileSpec.parID, targetName, &srcFileSpec);
		if (erase)
		{
			FSpDelete(&srcFileSpec);
			FSpCreate(&srcFileSpec, 'icon', 'MACS', 0);
			FSpCreateResFile(&srcFileSpec, 'icon', 'MACS', 0);
			
			FSpGetFInfo(&srcFileSpec, &fileInfo);
			
			fileInfo.fdFlags |= kIsInvisible;
		
			FSpSetFInfo(&srcFileSpec, &fileInfo);
		}
	}
}

void icnsClass::CleanupFileSpec()
{
	if (isFolder)
		srcFileSpec = savedSpec;
}

void icnsClass::PreSave()
{
	int error;
	SetupFileSpec(true);
	
	oldFile = CurResFile(); // we save the old file that was in use
	targetFile = FSpOpenResFile(&srcFileSpec, fsRdWrPerm); // we open the target file
	
	error = ResError();
	
	if (targetFile == -1)
		switch(error)
		{
			case eofErr:
				FInfo fileInfo;
				FSpGetFInfo(&srcFileSpec, &fileInfo);
				FSpCreateResFile(&srcFileSpec, fileInfo.fdCreator, fileInfo.fdType, 0);
				targetFile = FSpOpenResFile(&srcFileSpec, fsRdWrPerm); // we open the target file
				break;
			default:
				Str255 errorAsString, errorString = "\pError occured when saving (Type <type>)";
				
				NumToString(error, errorAsString);
				SubstituteString(errorString, "\p<type>", errorAsString);
				
				DisplayPAlert("\p", errorString);
				break;
		}
	
	UseResFile(targetFile); // and set it as the current resoure file
	
	if (ID == rCustomIcon) // if the ID is the custom icon ID...
	{
		FInfo	fileInfo;
		// file info for the target file, we're gonna modify some attributes
		
		FSpGetFInfo(&srcFileSpec, &fileInfo); // we get the current info
		fileInfo.fdFlags |= kHasCustomIcon;
		// .. we set the "has custom icon" bit (so that the finder uses that icon)
		
		FSpSetFInfo(&srcFileSpec, &fileInfo);  // and set it
	}
}

void icnsClass::PostSave()
{
	UpdateResFile(targetFile);
	CloseResFile(targetFile);
	UseResFile(oldFile);
	
	FSpBumpDate(&srcFileSpec);
	
	CleanupFileSpec();
	
	FSpBumpDate(&srcFileSpec);
}

void icnsClass::SaveNew()
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
	
	DetachResource((Handle)icnsHandle); // we detach the resource 
	AddResource((Handle)icnsHandle, 'icns', ID, name);
	SetResAttrs((Handle)icnsHandle, flags);
	ChangedResource((Handle)icnsHandle);
	WriteResource((Handle)icnsHandle);
	
	PostSave();

	DisposeHandle((Handle)icnsHandle); // we're done with the resource, and can dispose of it
}

// __________________________________________________________________________________________
// Name			: icnsClass::SaveOldStyle
// Input		: None
// Output		: None
// Description	: takes the contents of the current class and saves them in old style resoures
//				  ('icl8', 'ics4', 'ICN#', etc)

void icnsClass::SaveOld()
{
	Handle			iconHandle;
	
	PreSave();
	
	RefreshIconMembers();
	
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
		BlockMove((*icsiPix)->baseAddr, *iconHandle, icsSize/2);
		BlockMove((*icsmPix)->baseAddr, &((*iconHandle)[icsSize / 2]), icsSize/2);
		DetachResource(iconHandle);
		AddResource(iconHandle, 'ics#', ID, name);
		SetResAttrs(iconHandle, flags);
		ChangedResource(iconHandle);
	}
	
#ifdef MINI
		
	if (members & icm8)
	{
		// the 8 bit small icon
		iconHandle = Get1Resource('icm8', ID);
		REMOVEICON;
	
		iconHandle = NewHandleClear(icm8Size);
		BlockMove((*icm8Pix)->baseAddr, *iconHandle, icm8Size);
		DetachResource(iconHandle);
		AddResource(iconHandle, 'icm8', ID, name);
		SetResAttrs(iconHandle, flags);
		ChangedResource(iconHandle);
	}
	
	if (members & icm4)
	{	
		// the 4 bit small icon
		iconHandle = Get1Resource('icm4', ID);
		REMOVEICON;
		
		iconHandle = NewHandleClear(icm4Size);
		BlockMove((*icm4Pix)->baseAddr, *iconHandle, icm4Size);
		DetachResource(iconHandle);
		AddResource(iconHandle, 'icm4', ID, name);
		SetResAttrs(iconHandle, flags);
		ChangedResource(iconHandle);
	}
	
	if ((members & icmi) || (members & icmm))
	{
		// the 1 bit small icon
		iconHandle = Get1Resource('icm#', ID);
		REMOVEICON;
		
		iconHandle = NewHandleClear(icmSize);
		BlockMove((*icsiPix)->baseAddr, *iconHandle, icmSize/2);
		BlockMove((*icmmPix)->baseAddr, &((*iconHandle)[icmSize / 2]), icmSize/2);
		DetachResource(iconHandle);
		AddResource(iconHandle, 'icm#', ID, name);
		SetResAttrs(iconHandle, flags);
		ChangedResource(iconHandle);
	}

#endif	
	
	
	PostSave();
	
	DisposeHandle(iconHandle);
}

void icnsClass::SaveDataFork()
{
	short 				file;
	long 				writeLength;
	IconFamilyHandle	icnsHandle;
	
	RefreshIconMembers();
	
	PreSave();
	
	if (!IsicnsFile(srcFileSpec.name))
		AppendString(srcFileSpec.name, "\p.icns");
	
	icnsHandle = Geticns();
	
	FSpOpenDF(&srcFileSpec, fsRdWrPerm, &file);
	
	SetFPos(file, fsFromStart, 0);
	SetEOF(file, (**icnsHandle).resourceSize);
	
	writeLength = (**icnsHandle).resourceSize;
	
	FSWrite(file, &writeLength, *icnsHandle);

	FSClose(file);
	
	DisposeHandle((Handle)icnsHandle);
	
	PostSave();
}

long icnsClass::GetSize()
{
	long returnSize;
	
	RefreshIconMembers();
	
	returnSize = sizeof(IconFamilyResource) - sizeof(IconFamilyElement);

#ifdef THUMBNAIL
	if (members & it32)
	{
		Ptr temp;
		long it32CompressedSize;
		
		CompressPixMap(it32Pix, &temp, &it32CompressedSize);
		DisposePtr(temp);
		
		returnSize += (sizeof(IconFamilyElement) - icnsSizePadding) + it32CompressedSize;
	}
	if (members & t8mk) returnSize += sizeof(IconFamilyElement) - icnsSizePadding + t8mkSize;
#endif

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
	
#ifdef MINI
	if (members & icm8) returnSize += sizeof(IconFamilyElement) - icnsSizePadding + icm8Size;
	if (members & icm4) returnSize += sizeof(IconFamilyElement) - icnsSizePadding + icm4Size;
	if ((members & icmi) || (members & icmm)) returnSize += sizeof(IconFamilyElement) - icnsSizePadding + icmSize;
#endif	
	
	return returnSize;
}

long icnsClass::GetLargestSize()
{
#ifdef THUMBNAIL
	if (members & (it32 | t8mk)) return 128;
#endif
	if (members & (ih32 | h8mk | ich8 | ich4 | ichi | ichm)) return 48;
	if (members & (il32 | l8mk | icl8 | icl4 | icni | icnm)) return 32;
	if (members & (is32 | s8mk | ics8 | ics4 | icsi | icsm)) return 16;
#ifdef MINI
	if (members & (icm8 | icm4 | icmi | icmm)) return 16;
#endif
	return 32;
}

bool icnsClass::IDChanged()
{
	return ((format == formatMacOSUniversal || format == formatMacOSNew || format == formatMacOSOld) &&
			ID != loadedID && loadedID != kIDNone && loadedID != kIDUseFileIcon && loadedID != kIDLoadDataFork);
}

#pragma mark -

int icnsClass::GetPixName(int height, int depth, bool icon)
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
			kMembers[i].icon == icon)
			return kMembers[i].name;
	}
	
	return -1;
}

#define HASMEMBER(memberName) ((members & memberName || !strict) && (memberName & kDefaultMembers[format]))

int icnsClass::GetBestMaskName(int height, int depth, bool strict)
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

int icnsClass::GetBestPixName(int height, int depth, bool strict)
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

void icnsClass::GetGWorldAndPix(long pixName, GWorldPtr* gW, PixMapHandle* pix)
{
	switch (pixName)
	{
		case it32: *gW = it32GW; *pix = it32Pix; break;
		case ih32: *gW = ih32GW; *pix = ih32Pix; break;
		case il32: *gW = il32GW; *pix = il32Pix; break;
		case is32: *gW = is32GW; *pix = is32Pix; break;

		case t8mk: *gW = t8mkGW; *pix = t8mkPix; break;
		case h8mk: *gW = h8mkGW; *pix = h8mkPix; break;
		case l8mk: *gW = l8mkGW; *pix = l8mkPix; break;
		case s8mk: *gW = s8mkGW; *pix = s8mkPix; break;

		case ich8: *gW = ich8GW; *pix = ich8Pix; break;
		case icl8: *gW = icl8GW; *pix = icl8Pix; break;
		case ics8: *gW = ics8GW; *pix = ics8Pix; break;
		case icm8: *gW = icm8GW; *pix = icm8Pix; break;
		
		case ich4: *gW = ich4GW; *pix = ich4Pix; break;
		case icl4: *gW = icl4GW; *pix = icl4Pix; break;
		case ics4: *gW = ics4GW; *pix = ics4Pix; break;
		case icm4: *gW = icm4GW; *pix = icm4Pix; break;
		
		case ichi: *gW = ichiGW; *pix = ichiPix; break;
		case icni: *gW = icniGW; *pix = icniPix; break;
		case icsi: *gW = icsiGW; *pix = icsiPix; break;
		case icmi: *gW = icmiGW; *pix = icmiPix; break;
		
		case ichm: *gW = ichmGW; *pix = ichmPix; break;
		case icnm: *gW = icnmGW; *pix = icnmPix; break;
		case icsm: *gW = icsmGW; *pix = icsmPix; break;
		case icmm: *gW = icmmGW; *pix = icmmPix; break;
		
		default: DisplayAlert("bad pixmap name", "");
	}
}

void icnsClass::GetMemberNameString(int name, Str255 nameString)
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

void icnsClass::GetMemberResourceNameString(int name, Str255 nameString)
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

MString	icnsClass::GetMembersListNames(long members)
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

void icnsClass::GetSizeName(long size, Str255 sizeName)
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

MString icnsClass::GetSizeListNames(long members, long size)
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

int icnsClass::GetMemberIndex(int name)
{
	for (int i=0; i < kMembersCount; i++)
		if (kMembers[i].name == name &&
			name & kDefaultMembers[format])
			return i;
			
	return -1;
}

#pragma mark -

void icnsClass::SetCanvas(GWorldPtr inCanvasGW, PixMapHandle inCanvasPix)
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
#ifdef MINI
			case 'icm8': *members |= icm8; if (*maxHeight < 16) *maxHeight = 16; break;
			case 'icm4': *members |= icm4; if (*maxHeight < 16) *maxHeight = 16; break;
			case 'icm#': *members |= icmi | icmm; if (*maxHeight < 16) *maxHeight = 16; break;
#endif

#ifdef THUMBNAIL
			case 'it32': *members |= it32; if (*maxHeight < 128) *maxHeight = 128; break;
			case 't8mk': *members |= t8mk; if (*maxHeight < 128) *maxHeight = 128; break;
#endif			

		}

		elementPtr = (IconFamilyElement *)((char *)(elementPtr) + elementPtr->elementSize);
	}
}

void GetICNInfo(short ID, Str255 name, long* members, int *maxHeight)
{
	OSType	type, iconTypes[] = {'ICN#', 'ics#', 'icl8', 'ics8', 'icl4', 'ics4'};
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
				
				case 'ich4': *members |= ich4; if (*maxHeight < 48) *maxHeight = 48; break;
				case 'icl4': *members |= icl4; if (*maxHeight < 32) *maxHeight = 32; break;
				case 'ics4': *members |= ics4; if (*maxHeight < 16) *maxHeight = 16; break;
				
				case 'ich#': *members |= ichi; if (*maxHeight < 48) *maxHeight = 48; break;
				case 'ICN#': *members |= icni; if (*maxHeight < 32) *maxHeight = 32; break;
				case 'ics#': *members |= icsi; if (*maxHeight < 16) *maxHeight = 16; break;
			}
			
			GetResInfo(icon, &ID, &type, tempName);
			if (tempName[0] > name[0])
				CopyString(name, tempName);
				
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

bool IsICOFile(Str255 name)
{
	return ((name[name[0]    ] == 'o' || name[name[0]    ] == 'O') &&
		    (name[name[0] - 1] == 'c' || name[name[0] - 1] == 'C') &&
		    (name[name[0] - 2] == 'i' || name[name[0] - 2] == 'I') &&
		    (name[name[0] - 3] == '.'));
}


bool IsTIFFFile(Str255 name)
{
	return ((name[name[0]    ] == 'f' || name[name[0]    ] == 'F') &&
		    (name[name[0] - 1] == 'i' || name[name[0] - 1] == 'I') &&
		    (name[name[0] - 2] == 't' || name[name[0] - 2] == 'T') &&
		    (name[name[0] - 3] == '.')) ||
		   ((name[name[0]    ] == 'f' || name[name[0]    ] == 'F') &&
		    (name[name[0] - 1] == 'f' || name[name[0] - 1] == 'F') &&
		    (name[name[0] - 2] == 'i' || name[name[0] - 2] == 'I') &&
		    (name[name[0] - 3] == 't' || name[name[0] - 3] == 'T') &&
		    (name[name[0] - 4] == '.'));
}

bool IsicnsFile(Str255 name)
{
	return ((name[name[0]    ] == 's' || name[name[0]    ] == 'S') &&
		    (name[name[0] - 1] == 'n' || name[name[0] - 1] == 'N') &&
		    (name[name[0] - 2] == 'c' || name[name[0] - 2] == 'C') &&
		    (name[name[0] - 3] == 'i' || name[name[0] - 3] == 'I') &&
		    (name[name[0] - 4] == '.'));
}


bool FilterIconFile(FSSpec file, long format)
{
	return (format == formatAll ||
			format == GetFileFormat(file));
}

long GetFileFormat(FSSpec file)
{
	if (IsICOFile(file.name))
		return formatWindows;
	else if (IsTIFFFile(file.name))
		return formatMacOSXServer;
	else
	{
		short oldFile, currentFile;
		long format, oldCount, newCount;
		
		oldFile = CurResFile();
		currentFile = FSpOpenResFile(&file, fsRdPerm);
		
		if (currentFile == -1)
			if (IsicnsFile(file.name))
				return formatMacOSNew;
			else
				return formatMacOSUniversal;
			
		UseResFile(currentFile);
		
		oldCount = Count1Resources('ICN#') + Count1Resources('ics#');
		newCount = Count1Resources('icns');
		
		if (oldCount == 0 && newCount > 0)
			format = formatMacOSNew;
		else if (oldCount > 0 && newCount == 0)
			format = formatMacOSOld;
		else if (oldCount == 0 && newCount == 0 && IsicnsFile(file.name))
			format = formatMacOSNew;
		else
			format = formatMacOSUniversal;
	
		CloseResFile(currentFile);
		UseResFile(oldFile);
		
		return format;
	}
}
