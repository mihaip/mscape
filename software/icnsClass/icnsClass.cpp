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
	sizes = 0;
	
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

// __________________________________________________________________________________________
// Name			: icnsClass::Load
// Input		: None
// Output		: None
// Description	: Loads data from icon resources, based on the ID field of the parent
//				  icnsClass. If it can't find a new style resource ('icns' type) it calls the
//				  LoadOldStyle class function, which loads the icon from old-type resources


void icnsClass::Load()
{
	IconFamilyHandle	icnsHandle; // handle to the icns resource that we are attempting
									// to load
	IconFamilyElement*	elementPtr; // pointer to the element within the icns resource
	ResType				ignoredType;// resource type, this is one of the parameters to
									// to the GetResInfoFunction, but we don't care about it
									// since we already know the resource type ('icns')
	short srcFile, oldFile;
	
	oldFile = CurResFile();						// we save the old file that was in use
	srcFile = FSpOpenResFile(&srcFileSpec, fsRdPerm);	// open the old one
	UseResFile(srcFile); 							// set it as the file to load resources from
	
	SAVEGWORLD; // saves the current port for restoring later
	SAVECOLORS; // ditto for colors
	
	// we're clearing out all the previous contents (if any) of the gworlds
	SetGWorld(ih32GW, NULL); EraseRect(&hugeIconRect); // 32 bit icon
	SetGWorld(il32GW, NULL); EraseRect(&largeIconRect);
	SetGWorld(is32GW, NULL); EraseRect(&smallIconRect);
	SetGWorld(h8mkGW, NULL); EraseRect(&hugeIconRect); // 8 bit mask
	SetGWorld(l8mkGW, NULL); EraseRect(&largeIconRect);
	SetGWorld(s8mkGW, NULL); EraseRect(&smallIconRect);
	SetGWorld(ich8GW, NULL); EraseRect(&hugeIconRect); // 8 bit icon
	SetGWorld(icl8GW, NULL); EraseRect(&largeIconRect);
	SetGWorld(ics8GW, NULL); EraseRect(&smallIconRect);
	SetGWorld(ich4GW, NULL); EraseRect(&hugeIconRect); // 4 bit icon
	SetGWorld(icl4GW, NULL); EraseRect(&largeIconRect);
	SetGWorld(ics4GW, NULL); EraseRect(&smallIconRect);
	SetGWorld(ichmGW, NULL); EraseRect(&hugeIconRect); // 1 bit mask
	SetGWorld(icnmGW, NULL); EraseRect(&largeIconRect);
	SetGWorld(icsmGW, NULL); EraseRect(&smallIconRect);
	SetGWorld(ichiGW, NULL); EraseRect(&largeIconRect); // 1 bit icon
	SetGWorld(icniGW, NULL); EraseRect(&largeIconRect);
	SetGWorld(icsiGW, NULL); EraseRect(&smallIconRect);
	
	SetGWorld(il32GW, NULL);
	
	icnsHandle = (IconFamilyHandle)Get1Resource('icns', ID);
	// we load the resource...
	
	if (icnsHandle != NULL) // and process if it exists
	{
		GetResInfo((Handle)icnsHandle, &ID, &ignoredType, name); // getting the icon name
		HLock((Handle)icnsHandle); // locking the handle so that we can access it directly
		
		if (GeticnsMember('ich8', icnsHandle) == NULL &&
			GeticnsMember('ich4', icnsHandle) == NULL && 
			GeticnsMember('ich#', icnsHandle) == NULL && 
			GeticnsMember('ih32', icnsHandle) == NULL &&
			GeticnsMember('h8mk', icnsHandle) == NULL)
			sizes &= ~huge; // if no huge sizes are present, then the huge bit is turned off
		else
			sizes |= huge;
		
		if (GeticnsMember('icl8', icnsHandle) == NULL &&
			GeticnsMember('icl4', icnsHandle) == NULL && 
			GeticnsMember('ICN#', icnsHandle) == NULL && 
			GeticnsMember('il32', icnsHandle) == NULL &&
			GeticnsMember('l8mk', icnsHandle) == NULL)
			sizes &= ~large; // ditto for large
		else
			sizes |= large;
			
		if (GeticnsMember('ics8', icnsHandle) == NULL &&
			GeticnsMember('ics4', icnsHandle) == NULL && 
			GeticnsMember('ics#', icnsHandle) == NULL && 
			GeticnsMember('is32', icnsHandle) == NULL &&
			GeticnsMember('s8mk', icnsHandle) == NULL)
			sizes &= ~small; // ditto for small
		else
			sizes |= small;
		
		// getting the icns pixmap data for the huge size
		if (sizes & huge)
		{
			// what we're doing here is copying the pixel data from the resource directly
			// into the pix map (and decompressing it if necessary)
			
			elementPtr = GeticnsMember('ich8', icnsHandle);
			if (elementPtr != NULL)
				BlockMove(elementPtr->elementData,
						 (*ich8Pix)->baseAddr, ich8Size - ichSize/2);
						 // for some reason the huge 8 bit icon includes a mask too, but we
						 // don't want to copy that
				
			elementPtr = GeticnsMember('ich4', icnsHandle);
			if (elementPtr != NULL)
				BlockMove(elementPtr->elementData,
						 (*ich4Pix)->baseAddr, ich4Size - ichSize/2);
						 // same for the huge 4 bit icon
			
			elementPtr = GeticnsMember('ich#', icnsHandle);
			if (elementPtr != NULL)
			{
				BlockMove(elementPtr->elementData, (*ichiPix)->baseAddr, ichSize/2);
				BlockMove(&elementPtr->elementData[ichSize/2],
						  (*ichmPix)->baseAddr, ichSize/2);
				// the 1 bit memeber also includes both the icon and the mask, but this is
				// consistent with the rest of the sizes, so we get the mask from here
			}
			
			elementPtr = GeticnsMember('ih32', icnsHandle);
			if (elementPtr != NULL)
			{
				if (elementPtr->elementSize != ih32Size)
				// if the size is not what we expected then the resource must be compressed
					DecompressToPixMap(elementPtr->elementData, ih32Pix);
				else
					BlockMove(elementPtr->elementData, (*ih32Pix)->baseAddr, ih32Size);
			}
			else // if there is no 32 bit icon, then we must copy into its place the 8 bit one
				CopyBits((BitMap*)*ich8Pix,
						 (BitMap*)*ih32Pix,
						 &hugeIconRect,
						 &hugeIconRect,
						 srcCopy,
						 NULL);
			
			elementPtr = GeticnsMember('h8mk', icnsHandle);
			if (elementPtr != NULL)
				BlockMove(elementPtr->elementData, (*h8mkPix)->baseAddr, h8mkSize);
			else // same for the 8 bit mask
				CopyBits((BitMap*)*ichmPix,
					     (BitMap*)*h8mkPix,
					     &hugeIconRect,
					     &hugeIconRect,
					     srcCopy,
					     NULL);
		}
		
		// large stuff, very similar to above, except the 8 and 4 bit icons do not include
		// a 1 bit mask of their own (as was expected)
		if (sizes & large)
		{	
			elementPtr = GeticnsMember('icl8', icnsHandle);
			if (elementPtr != NULL)
				BlockMove(elementPtr->elementData, (*icl8Pix)->baseAddr, icl8Size);
				
			elementPtr = GeticnsMember('icl4', icnsHandle);
			if (elementPtr != NULL)
				BlockMove(elementPtr->elementData, (*icl4Pix)->baseAddr, icl4Size);
			
			elementPtr = GeticnsMember('ICN#', icnsHandle);
			if (elementPtr != NULL)
			{
				BlockMove(elementPtr->elementData, (*icniPix)->baseAddr, icnSize/2);
				BlockMove(&elementPtr->elementData[icnSize/2],
						  (*icnmPix)->baseAddr, icnSize/2);
			}
			
			elementPtr = GeticnsMember('il32', icnsHandle);
			if (elementPtr != NULL)
			{
				if (elementPtr->elementSize < il32Size)
					DecompressToPixMap(elementPtr->elementData, il32Pix);
				else
					BlockMove(elementPtr->elementData, (*il32Pix)->baseAddr, il32Size);
			}
			else
				CopyBits((BitMap*)*icl8Pix,
						 (BitMap*)*il32Pix,
						 &largeIconRect,
						 &largeIconRect,
						 srcCopy,
						 NULL);
			
			elementPtr = GeticnsMember('l8mk', icnsHandle);
			if (elementPtr != NULL)
				BlockMove(elementPtr->elementData, (*l8mkPix)->baseAddr, l8mkSize);
			else
				CopyBits((BitMap*)*icnmPix,
						 (BitMap*)*l8mkPix,
						 &largeIconRect,
						 &largeIconRect,
						 srcCopy,
						 NULL);
		}
		
		// small stuff, very similar to large
		if (sizes & small)
		{
			elementPtr = GeticnsMember('ics8', icnsHandle);
			if (elementPtr != NULL)
				BlockMove(elementPtr->elementData, (*ics8Pix)->baseAddr, ics8Size);
				
			elementPtr = GeticnsMember('ics4', icnsHandle);
			if (elementPtr != NULL)
				BlockMove(elementPtr->elementData, (*ics4Pix)->baseAddr, ics4Size);
			
			elementPtr = GeticnsMember('ics#', icnsHandle);
			if (elementPtr != NULL)
			{
				BlockMove(&elementPtr->elementData, (*icsiPix)->baseAddr, icsSize/2);
				BlockMove(&elementPtr->elementData[icsSize/2],
						  (*icsmPix)->baseAddr, icsSize/2);
			}
				
			elementPtr = GeticnsMember('is32', icnsHandle);
			if (elementPtr != NULL)
			{
				if (elementPtr->elementSize < is32Size)
					DecompressToPixMap(elementPtr->elementData, is32Pix);
				else
					BlockMove(elementPtr->elementData, (*is32Pix)->baseAddr, is32Size);
			}
			else
				CopyBits((BitMap*)*ics8Pix,
						 (BitMap*)*is32Pix,
						 &smallIconRect,
						 &smallIconRect,
						 srcCopy,
						 NULL);
			
			elementPtr = GeticnsMember('s8mk', icnsHandle);
			if (elementPtr != NULL)
				BlockMove(elementPtr->elementData, (*s8mkPix)->baseAddr, s8mkSize);
			else
				CopyBits((BitMap*)*icsmPix,
						 (BitMap*)*s8mkPix,
						 &smallIconRect,
						 &smallIconRect,
						 srcCopy,
						 NULL);
		}
		HUnlock((Handle)icnsHandle); // we are done with the handle so we can unlock it...
		
		ReleaseResource((Handle)icnsHandle); // ...and dispose of it
	}
	else // if there was no 'icns' resource (new way to store icons) then we must attempt to
		 // load the data from the old styles resources.
		LoadOldStyle(true); // true: copy lower depths (8 bit) into higher ones (32 bit)
	
	RESTOREGWORLD; // we can now restore the state
	RESTORECOLORS;
	
	CloseResFile(srcFile);	// close it
	UseResFile(oldFile); // and restore  the old one
}

// __________________________________________________________________________________________
// Name			: icnsClass::LoadOldStyle
// Input		: bool determining if the 8 bit icon/1 bit mask should be transferred over to
//				  the 32 bit icon/8 bit mask respectively
// Output		: None
// Description	: Loads old style icon resources ('icl8', 'ics4, 'ICN#', etc.) into the pixmaps
//				  This function is very similar to the one above, except that instead of dealing
//				  with only one resource, it deals with more (each size/depth is a separate
//				  resource, although the huge size is not supported).

void icnsClass::LoadOldStyle(bool copyToHigherRez)
{
	Handle	oldStyleHandle; // handle used to get old style resources
	
	if (copyToHigherRez) // if we're copying, then we couldn't get the available sizes before
	{					 // so we must determine them now
		if (Get1Resource('icl8', ID) == NULL && // all the large resource types
			Get1Resource('icl4', ID) == NULL &&
			Get1Resource('ICN#', ID) == NULL)
			sizes &= ~large;
		else
			sizes |= large;
		
		if (Get1Resource('ics8', ID) == NULL && // small ones
			Get1Resource('ics4', ID) == NULL &&
			Get1Resource('ics#', ID) == NULL)
			sizes &= ~small;
		else
			sizes |= small;
	}
	
	// getting the large old style icons
	if (sizes & large)
	{
		oldStyleHandle = Get1Resource('icl8', ID); // we attempt to get the resource...
		if (oldStyleHandle != NULL) // if it's there
		{
			HLock(oldStyleHandle); // we lock it
			BlockMove(*oldStyleHandle, (*icl8Pix)->baseAddr, icl8Size);
			// copy its contents to the appropriate pixmap
			if (copyToHigherRez)
				CopyBits((BitMap*)*icl8Pix, // and optionally copy it to the 32 bit too
						 (BitMap*)*il32Pix,
						 &largeIconRect,
						 &largeIconRect,
						 srcCopy,
						 NULL);
			HUnlock(oldStyleHandle); // unlock the resource, since we're done with it
			ReleaseResource(oldStyleHandle); // and dispose of it
		}
		
		oldStyleHandle = Get1Resource('icl4', ID); // ditto for icl4
		if (oldStyleHandle != NULL)
		{
			HLock(oldStyleHandle);
			BlockMove(*oldStyleHandle, (*icl4Pix)->baseAddr, icl4Size);
			HUnlock(oldStyleHandle);
			ReleaseResource(oldStyleHandle);
		}
		
		
		oldStyleHandle = Get1Resource('ICN#', ID); // ditto for ICN#
		if (oldStyleHandle != NULL)
		{
			HLock(oldStyleHandle);
			BlockMove(*oldStyleHandle, (*icniPix)->baseAddr, icnSize/2);
			BlockMove(&((*oldStyleHandle)[icnSize/2]), (*icnmPix)->baseAddr, icnSize/2);
			if (copyToHigherRez)
				CopyBits((BitMap*)*icnmPix,
						 (BitMap*)*l8mkPix,
						 &largeIconRect,
						 &largeIconRect,
						 srcCopy,
						 NULL);
			HUnlock(oldStyleHandle);
			ReleaseResource(oldStyleHandle);
		}
	}
	
	// getting the small ones, very similar to above
	if (sizes & small)
	{
		oldStyleHandle = Get1Resource('ics8', ID); 
		if (oldStyleHandle != NULL)
		{
			HLock(oldStyleHandle);
			BlockMove(*oldStyleHandle, (*ics8Pix)->baseAddr, ics8Size);
			if (copyToHigherRez)
				CopyBits((BitMap*)*ics8Pix,
				(BitMap*)*is32Pix,
				&smallIconRect,
				&smallIconRect,
				srcCopy,
				NULL);
			HUnlock(oldStyleHandle);
			ReleaseResource(oldStyleHandle);
		}	
		oldStyleHandle = Get1Resource('ics4', ID);
		if (oldStyleHandle != NULL)
		{
			HLock(oldStyleHandle);
			BlockMove(*oldStyleHandle, (*ics4Pix)->baseAddr, ics4Size);
			HUnlock(oldStyleHandle);
			ReleaseResource(oldStyleHandle);
		}
		
			oldStyleHandle = Get1Resource('ics#', ID);
			if (oldStyleHandle != NULL)
			{
				HLock(oldStyleHandle);
				BlockMove(*oldStyleHandle, (*icsiPix)->baseAddr, icsSize/2);
				BlockMove(&((*oldStyleHandle)[icsSize/2]), (*icsmPix)->baseAddr, icsSize/2);
				if (copyToHigherRez)	
					CopyBits((BitMap*)*icsmPix,
							 (BitMap*)*s8mkPix,
							 &smallIconRect,
							 &smallIconRect,
							 srcCopy,
							 NULL);
				HUnlock(oldStyleHandle);
				ReleaseResource(oldStyleHandle);
			}
	}
}

// __________________________________________________________________________________________
// Name			: icnsClass::Display
// Input		: targetRect: rectangle of target area, icons will be scaled if necessary
// Output		: None
// Description	: copies the 32 bit depth of the icon into the targetRect of the current port
//				  the source size is determined by the size of the targetRect

void icnsClass::Display(Rect targetRect)
{
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
	
	if (size == 48 && (sizes & huge))
		CopyDeepMask((BitMap *)*ih32Pix,
					 (BitMap *)*h8mkPix,
					 &qd.thePort->portBits,
					 &hugeIconRect,
					 &hugeIconRect,
					 &targetRect,
					 copyStyle,
					 NULL);
	else if (size == 16 && (sizes & small))
		CopyDeepMask((BitMap *)*is32Pix,
					 (BitMap *)*s8mkPix,
					 &qd.thePort->portBits,
					 &smallIconRect,
					 &smallIconRect,
					 &targetRect,
					 copyStyle,
					 NULL);
	else if (sizes & large)
		CopyDeepMask((BitMap *)*il32Pix,
					 (BitMap *)*l8mkPix,
					 &qd.thePort->portBits,
					 &largeIconRect,
					 &largeIconRect,
					 &targetRect,
					 copyStyle,
					 NULL);
	
	RESTORECOLORS;
}

// __________________________________________________________________________________________
// Name			: icnsClass::ExportToPixMap
// Input		: None
// Output		: targetPix: pixmap where the split up icon should be drawn
// Description	: Exports the icon into a c2i style pixmap (small and large 32 bit icons and
//				  8 bit masks)

void icnsClass::ExportToPixMap(PixMapHandle targetPix)
{
	Rect		targetSmallIconRect = {0, 0, 16, 16},
				targetSmallMaskRect = {16, 0, 32, 16},
				targetLargeIconRect = {0, 16, 32, 48},
				targetLargeMaskRect = {0, 48, 32, 80};
	
	SAVECOLORS;
	
	LockPixels(targetPix);
	
	SetGWorld(il32GW, NULL);
	if (sizes & small)
	{
		CopyBits((BitMap*)*is32Pix,
				 (BitMap*)*targetPix,
				 &smallIconRect,
				 &targetSmallIconRect,
				 srcCopy,
				 NULL);
		CopyBits((BitMap*)*s8mkPix,
				 (BitMap*)*targetPix,
				 &smallIconRect,
				 &targetSmallMaskRect,
				 srcCopy,
				 NULL);
	}
	else
	{
		CopyBits((BitMap*)*il32Pix,
				 (BitMap*)*targetPix,
				 &largeIconRect,
				 &targetSmallIconRect,
				 srcCopy,
				 NULL);
		CopyBits((BitMap*)*l8mkPix,
				 (BitMap*)*targetPix,
				 &largeIconRect,
				 &targetSmallMaskRect,
				 srcCopy,
				 NULL);
	}
	CopyBits((BitMap*)*il32Pix,
			 (BitMap*)*targetPix,
			 &largeIconRect,
			 &targetLargeIconRect,
			 srcCopy,
			 NULL);
	CopyBits((BitMap*)*l8mkPix,
			 (BitMap*)*targetPix,
			 &largeIconRect,
			 &targetLargeMaskRect,
			 srcCopy,
			 NULL);	
	UnlockPixels(targetPix);
	
	RESTORECOLORS;
}

// __________________________________________________________________________________________
// Name			: icnsClass::ImportFromClipboard
// Input		: dither: bool specifying option to dither (method of using color patterns
//				  to create appearance of color which aren't in the current palette, in this
//				  case the system one).
// Output		: None
// Description	: Loads from clipboard an icon. The clipboard image is divided up so that 
//				  if necessary maks and icons for small and large size are provided
// Note			: This is not a normal clipboard importing function, rather it is used in
//				  cases where editing by size/depth is not available and the icon must be
//				  imported from somwhere

void icnsClass::ImportFromClipboard(bool dither)
{
	Rect				clipboardRect;
	Rect				is32SrcRect = {0, 0, 16, 16};
	Rect				s8mkSrcRect = {16, 0, 32, 16};
	Rect				il32SrcRect = {0, 0, 32, 32};
	Rect				l8mkSrcRect = {0, 32, 32, 64};
	GWorldPtr			clipboardGWorld;
	PixMapHandle		clipboardPix;
	long				offset;
	Handle				pic;
	CTabHandle			grayscaleTable;
	short				copyMode;
	
	if (dither)
		copyMode = srcCopy + ditherCopy;
	else
		copyMode = srcCopy;	
	
	pic = NewHandle (0);
	if (GetScrap( pic, 'PICT', &offset ) < 0)
		return;
	
	SAVEGWORLD;
	SAVECOLORS;
	
	grayscaleTable = GetCTable(40);
	HLock((Handle)grayscaleTable);
	
	clipboardRect = (*(PicHandle)pic)->picFrame;
	OffsetRect(&clipboardRect, -clipboardRect.left, -clipboardRect.top);
	
	switch (clipboardRect.right)
	{
		case 80:
			sizes |= (small | large);
			OffsetRect(&il32SrcRect, 16, 0);
			OffsetRect(&l8mkSrcRect, 16, 0);
			break;
		case 64: sizes |= large; sizes &= ~small; break;
		case 16: sizes |= small; sizes &= ~large; break;
	}
	
	// first we draw the clipboard into a g world
	NewGWorld(&clipboardGWorld, 32, &clipboardRect, NULL, NULL, 0);
	clipboardPix = GetGWorldPixMap(clipboardGWorld);
	LockPixels(clipboardPix);
	SetGWorld(clipboardGWorld, NULL);
	EraseRect(&qd.thePort->portRect);
	DrawPicture((PicHandle)pic, &clipboardRect);
	
	
	if (sizes & large)
	{
		// copying the merged icon + mask from the clipboard into the 8 bit icon
		CopyDeepMask((BitMap *)*clipboardPix,
					 (BitMap *)*clipboardPix,
				 	 (BitMap *)*il32Pix,
				 	 &il32SrcRect,
				 	 &l8mkSrcRect,
					 &largeIconRect,
					 copyMode,
					 NULL);
		
		CopyBits((BitMap *)*il32Pix,
				 (BitMap *)*icl8Pix,
				 &largeIconRect,
				 &largeIconRect,
				 copyMode,
				 NULL);
		
		// and the 4 bit icon
		CopyBits((BitMap *)*icl8Pix,
			 	 (BitMap *)*icl4Pix,
			 	 &largeIconRect,
			 	 &largeIconRect,
				 copyMode,
				 NULL);
				 
		// now we're copying a piece of the clipboard into the 32 bit icon
		CopyBits((BitMap *)*clipboardPix,
				 (BitMap *)*il32Pix,
				 &il32SrcRect,
				 &largeIconRect,
				 srcCopy,
				 NULL);
				 
		// now we copy the 8 bit mask
		CopyBits((BitMap *)*clipboardPix,
				 (BitMap *)*l8mkPix,
				 &l8mkSrcRect,
				 &largeIconRect,
				 srcCopy,
				 NULL);
		
		// making the 1 bit mask
		Make1BitMask(l8mkPix, icnmPix);

		// creating the bw version
		CopyBits((BitMap *)*icl8Pix,
			 	 (BitMap *)*icniPix,
			 	 &largeIconRect,
			 	 &largeIconRect,
				 copyMode,
				 NULL);
	}
	if (sizes & small)
	{
		// copying the merged icon + mask from the clipboard into the 8 bit icon
		CopyDeepMask((BitMap *)*clipboardPix,
					 (BitMap *)*clipboardPix,
				 	 (BitMap *)*is32Pix,
				 	 &is32SrcRect,
				 	 &s8mkSrcRect,
					 &smallIconRect,
					 copyMode,
					 NULL);
		
		CopyBits((BitMap *)*is32Pix,
				 (BitMap *)*ics8Pix,
				 &smallIconRect,
				 &smallIconRect,
				 copyMode,
				 NULL);
		
		// and the 4 bit icon
		CopyBits((BitMap *)*ics8Pix,
			 	 (BitMap *)*ics4Pix,
			 	 &smallIconRect,
			 	 &smallIconRect,
				 copyMode,
				 NULL);

		// now we're copying a piece of the clipboard into the 32 bit icon
		CopyBits((BitMap *)*clipboardPix,
				 (BitMap *)*is32Pix,
				 &is32SrcRect,
				 &smallIconRect,
				 srcCopy,
				 NULL);
				 
		// now we copy the 8 bit mask
		CopyBits((BitMap *)*clipboardPix,
				 (BitMap *)*s8mkPix,
				 &s8mkSrcRect,
				 &smallIconRect,
				 srcCopy,
				 NULL);
		
		// making the 1 bit mask		 
		Make1BitMask(s8mkPix, icsmPix);
		
		// creating the bw version
		CopyBits((BitMap *)*ics8Pix,
			 	 (BitMap *)*icsiPix,
			 	 &smallIconRect,
			 	 &smallIconRect,
				 copyMode,
				 NULL);
	}
	
	RESTOREGWORLD;
	RESTORECOLORS;
	
	UnlockPixels(clipboardPix);
	DisposeGWorld(clipboardGWorld);
	DisposeHandle(pic);
	DisposeCTable(grayscaleTable);
}

// __________________________________________________________________________________________
// Name			: icnsClass::SaveToFile
// Input		: flags: options for saving. Possible values are includeOldStyle which
//				  incorporates old style resources into the icns, and generateOldStyle which
//				  makes old style resources out of the icns.
// Output		: None
// Description	: Saves the current class contents to the srcFileSpec, in the standard 'icns'
//				   resource format. Has options for dealing with old style icons.

void icnsClass::Save(long flags)
{
	long				icnsSize, // the size of the final icns resource
						ih32CompressedSize, il32CompressedSize, is32CompressedSize;
						// the sizes of the compressed 32 bit data for each size
	IconFamilyHandle	icnsHandle; // handle which will be saved as the 'icns' resource
	IconFamilyElement*	elementPtr; // pointer to element within the icns
	short				targetFile,	// file reference numbers, one for the target file
						oldFile; 	// and the other for the previous curent file
	Handle				oldicns; // handle used to check if an icns existed before
	Ptr					ih32Src, il32Src, is32Src, // the source for the 
						h8mkSrc, l8mkSrc, s8mkSrc,
						ich8Src, icl8Src, ics8Src,
						ich4Src, icl4Src, ics4Src,
						ichiSrc, icniSrc, icsiSrc,
						ichmSrc, icnmSrc, icsmSrc;
	
	oldFile = CurResFile(); // we save the old file that was in use
	
	if (sizes & huge) // we compress the icon data as necessary
		CompressPixMap(ih32Pix, &ih32Src, &ih32CompressedSize);
	if (sizes & large)
		CompressPixMap(il32Pix, &il32Src, &il32CompressedSize);
	if (sizes & small)
		CompressPixMap(is32Pix, &is32Src, &is32CompressedSize);
	
	icnsSize = sizeof(IconFamilyResource) - sizeof(IconFamilyElement);
	// we start to calculate the size of the icns resource, the IconFamilyResource already
	// includes an IconFamilyElement, which is why we must subtract it
	if (sizes & huge)
	// if there is a huge size, then add on the sizes of the depths that make up the huge size
		icnsSize += (sizeof(IconFamilyElement) - icnsSizePadding) * 5 +
				    ih32CompressedSize +
				    h8mkSize +
				    ichSize +
				    ich8Size +
				    ich4Size;
	if (sizes & large) // ditto for the large
		icnsSize += (sizeof(IconFamilyElement) - icnsSizePadding) * 5 +
				    il32CompressedSize +
				    l8mkSize +
				    icnSize +
				    icl8Size +
				    icl4Size;
	if (sizes & small) // and the small
		icnsSize += (sizeof(IconFamilyElement) - icnsSizePadding) * 5 +
				    is32CompressedSize +
				    s8mkSize +
				    icsSize +
				    ics8Size +
				    ics4Size;
				    
	icnsHandle = (IconFamilyHandle) NewHandleClear(icnsSize);
	// we allocated memory for the icon that we are creating

	HLock((Handle)icnsHandle);
	// we lock it so that we can deference it and access it safely
	
	(**icnsHandle).resourceType = 'icns'; // the resource type is always 'icns'
	(**icnsHandle).resourceSize = icnsSize; // we have just calculated the size
	
	ichiSrc = (**ichiPix).baseAddr; // it'd get tedious to always have to dereference the
	ichmSrc = (**ichmPix).baseAddr; // the pixmap handles, so these local variables are created
	ich8Src = (**ich8Pix).baseAddr; // to make the code more readabled
	ich4Src = (**ich4Pix).baseAddr;
	h8mkSrc = (**h8mkPix).baseAddr;
	
	icniSrc = (**icniPix).baseAddr;
	icnmSrc = (**icnmPix).baseAddr;
	icl8Src = (**icl8Pix).baseAddr;
	icl4Src = (**icl4Pix).baseAddr;
	l8mkSrc = (**l8mkPix).baseAddr;

	icsiSrc = (**icsiPix).baseAddr;
	icsmSrc = (**icsmPix).baseAddr;
	ics8Src = (**ics8Pix).baseAddr;
	ics4Src = (**ics4Pix).baseAddr;
	s8mkSrc = (**s8mkPix).baseAddr;
	
	
	targetFile = FSpOpenResFile(&srcFileSpec, fsRdWrPerm); // we open the target file
	UseResFile(targetFile); // and set it as the current resoure file
	if (flags & includeOldStyle)
	{
		Handle				currentIcon; // handle to the old style icon,
	
		currentIcon = Get1Resource('ICN#', ID);
		if (currentIcon != NULL)
		{
			icniSrc = *currentIcon;
			icnmSrc = &(*currentIcon)[icnSize/2];
		}
		currentIcon = Get1Resource('icl8', ID);
		if (currentIcon != NULL)
			icl8Src = *currentIcon;
			
		currentIcon = Get1Resource('ics#', ID);
		if (currentIcon != NULL)
		{
			icsiSrc = *currentIcon;
			icsmSrc = &(*currentIcon)[icsSize/2];
		}
		currentIcon = Get1Resource('ics8', ID);
		if (currentIcon != NULL)
			ics8Src = *currentIcon;
	}
	
	if (sizes & large) // if there is a large size then we must save it
	{
		elementPtr = &((**icnsHandle).elements[0]); // the first element
		// the black and white element is special...
		elementPtr->elementType = 'ICN#'; // we set the resource type
		elementPtr->elementSize = icnSize + sizeof(IconFamilyElement) - icnsSizePadding;
		// the element size
		BlockMove( icniSrc,elementPtr->elementData, icnSize/2);
		// and we copy the data for the icon
		BlockMove( icnmSrc, &elementPtr->elementData[icnSize / 2], icnSize/2);
		// and the mask

		// for the rest of the depths there is a common pattern, so we can use a generalized
		// function
		elementPtr = (IconFamilyElement *)((char *)(elementPtr) + elementPtr->elementSize);
		// but first we must move the pointer to the next element
		WriteicnsMember(elementPtr, 'icl8', icl8Size, icl8Src);
		
		// same for all the rest
		elementPtr = (IconFamilyElement *)((char *)(elementPtr) + elementPtr->elementSize);
		WriteicnsMember(elementPtr, 'icl4', icl4Size, icl4Src);
		
		elementPtr = (IconFamilyElement *)((char *)(elementPtr) + elementPtr->elementSize);
		WriteicnsMember(elementPtr, 'il32', il32CompressedSize, il32Src);
		
		elementPtr = (IconFamilyElement *)((char *)(elementPtr) + elementPtr->elementSize);
		WriteicnsMember(elementPtr, 'l8mk', l8mkSize, l8mkSrc);
	}
	
	if (sizes & small)
	{
		if (sizes & large) // if the elementPtr was already in use
			elementPtr = (IconFamilyElement *)((char *)(elementPtr) + elementPtr->elementSize);
			// we can advance to the next one
		else
			elementPtr = &((**icnsHandle).elements[0]);
			// otherwise we set it to the first element
		
		// the rest of the the saving is very similar to the above
		elementPtr->elementType = 'ics#';
		elementPtr->elementSize = icsSize + sizeof(IconFamilyElement) - icnsSizePadding;
		BlockMove( icsiSrc ,elementPtr->elementData, icsSize/2);
		BlockMove( icsmSrc, &elementPtr->elementData[icsSize / 2], icsSize/2);
		
		elementPtr = (IconFamilyElement *)((char *)(elementPtr) + elementPtr->elementSize);
		WriteicnsMember(elementPtr, 'ics8', ics8Size, ics8Src);
		
		elementPtr = (IconFamilyElement *)((char *)(elementPtr) + elementPtr->elementSize);
		WriteicnsMember(elementPtr, 'ics4', ics4Size, ics4Src);
		
		elementPtr = (IconFamilyElement *)((char *)(elementPtr) + elementPtr->elementSize);
		WriteicnsMember(elementPtr, 'is32', is32CompressedSize, is32Src);
		
		elementPtr = (IconFamilyElement *)((char *)(elementPtr) + elementPtr->elementSize);
		WriteicnsMember(elementPtr, 's8mk', s8mkSize, s8mkSrc);
	}
	if (sizes & huge)
	{
		// very similar to the above too, except for the quirks in the 4 and 8 bit icon depths,
		// as was mentioned in the loading code above
		
		if (sizes & large || sizes & small)
			elementPtr = (IconFamilyElement *)((char *)(elementPtr) + elementPtr->elementSize);
		else
			elementPtr = &((**icnsHandle).elements[0]);
			
		elementPtr->elementType = 'ich#';
		elementPtr->elementSize = ichSize + sizeof(IconFamilyElement) - icnsSizePadding;
		BlockMove( ichiSrc ,elementPtr->elementData, ichSize/2);
		BlockMove( ichmSrc, &elementPtr->elementData[ichSize / 2], ichSize/2);
		
		elementPtr = (IconFamilyElement *)((char *)(elementPtr) + elementPtr->elementSize);
		elementPtr->elementType = 'ich8';
		elementPtr->elementSize = ich8Size + sizeof(IconFamilyElement) - icnsSizePadding;
		BlockMove(ich8Src, elementPtr->elementData, ich8Size - ichSize/2);
		BlockMove(ichmSrc, &elementPtr->elementData[ich8Size - ichSize/2], ichSize/2);
		
		elementPtr = (IconFamilyElement *)((char *)(elementPtr) + elementPtr->elementSize);
		elementPtr->elementType = 'ich4';
		elementPtr->elementSize = ich4Size + sizeof(IconFamilyElement) - icnsSizePadding;
		BlockMove(ich4Src, elementPtr->elementData, ich4Size - ichSize/2);
		BlockMove(ichmSrc, &elementPtr->elementData[ich4Size - ichSize/2], ichSize/2);
		
		elementPtr = (IconFamilyElement *)((char *)(elementPtr) + elementPtr->elementSize);
		WriteicnsMember(elementPtr, 'ih32', ih32CompressedSize, ih32Src);
		
		elementPtr = (IconFamilyElement *)((char *)(elementPtr) + elementPtr->elementSize);
		WriteicnsMember(elementPtr, 'h8mk', h8mkSize, h8mkSrc);
	}
	
	HUnlock((Handle)icnsHandle); // we're done with direct access to the handle
	if (ID == rCustomIcon) // if the ID is the custom icon ID...
	{
		FInfo	fileInfo;
		// file info for the target file, we're gonna modify some attributes
		
		FSpGetFInfo(&srcFileSpec, &fileInfo); // we get the current info
		fileInfo.fdFlags |= kHasCustomIcon;
		// .. we set the "has custom icon" bit (so that the finder uses that icon)
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
	
	if (sizes & huge) DisposePtr(ih32Src); // and the temporary memory used to to store the
	if (sizes & large) DisposePtr(il32Src); // compressed sizes
	if (sizes & small) DisposePtr(is32Src);
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
	
	if (sizes & large)
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
		
		// the 4 bit large icon
		iconHandle = Get1Resource('icl4', ID);
		REMOVEICON;
		
		iconHandle = NewHandleClear(icl4Size);
		BlockMove((*icl4Pix)->baseAddr, *iconHandle, icl4Size);
		DetachResource(iconHandle);
		AddResource(iconHandle, 'icl4', ID, name);
		SetResAttrs(iconHandle, flags);
		ChangedResource(iconHandle);
		
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

	if (sizes & small)
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
		
		// the 4 bit small icon
		iconHandle = Get1Resource('ics4', ID);
		REMOVEICON;
		
		iconHandle = NewHandleClear(ics4Size);
		BlockMove((*ics4Pix)->baseAddr, *iconHandle, ics4Size);
		DetachResource(iconHandle);
		AddResource(iconHandle, 'ics4', ID, name);
		SetResAttrs(iconHandle, flags);
		ChangedResource(iconHandle);
		
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

OSStatus NewIconSet(GWorldPtr *gWorld, PixMapHandle *pixMap, Rect bounds, int depth, CTabHandle cTable)
{
	SAVEGWORLD;
	SAVECOLORS;
	OSStatus err;
	
	err = noErr;
	
	err = NewGWorld(gWorld, depth, &bounds, cTable, NULL, 0);
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

void WriteicnsMember(IconFamilyElement *elementPtr, long iconType, long iconSize, Ptr iconSrc)
{
	if (elementPtr == NULL)
		return;
	elementPtr->elementType = iconType;
	elementPtr->elementSize = iconSize + sizeof(IconFamilyElement) - icnsSizePadding;
	BlockMove(iconSrc, elementPtr->elementData, iconSize);
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
