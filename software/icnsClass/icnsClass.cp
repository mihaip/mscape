#include "icnsClass.h"
//#include "commonfunctions.h"

icnsClass::icnsClass()
{
	CTabHandle		grayscaleTable;
	OSStatus		err;
	
	status = 0;
	
	grayscaleTable = GetCTable(40);
	if (grayscaleTable == NULL)
	{
		status |= outOfMemory;
		return;
	}
	
	err = noErr;
	
	// making the huge gworlds
	err = NewIconSet(&ih32GW, &ih32Pix, hugeIconRect, 32, NULL);
	err = NewIconSet(&h8mkGW, &h8mkPix, hugeIconRect, 8, grayscaleTable);
	err = NewIconSet(&ich8GW, &ich8Pix, hugeIconRect, 8, NULL);
	err = NewIconSet(&ich4GW, &ich4Pix, hugeIconRect, 4, NULL);
	err = NewIconSet(&ichiGW, &ichiPix, hugeIconRect, 1, NULL);
	err = NewIconSet(&ichmGW, &ichmPix, hugeIconRect, 1, NULL);
	
	// making the large gworlds
	err = NewIconSet(&il32GW, &il32Pix, largeIconRect, 32, NULL);
	err = NewIconSet(&l8mkGW, &l8mkPix, largeIconRect, 8, grayscaleTable);
	err = NewIconSet(&icl8GW, &icl8Pix, largeIconRect, 8, NULL);
	err = NewIconSet(&icl4GW, &icl4Pix, largeIconRect, 4, NULL);
	err = NewIconSet(&icniGW, &icniPix, largeIconRect, 1, NULL);
	err = NewIconSet(&icnmGW, &icnmPix, largeIconRect, 1, NULL);
	
	// making the small gworlds
	err = NewIconSet(&is32GW, &is32Pix, smallIconRect, 32, NULL);
	err = NewIconSet(&s8mkGW, &s8mkPix, smallIconRect, 8, grayscaleTable);
	err = NewIconSet(&ics8GW, &ics8Pix, smallIconRect, 8, NULL);
	err = NewIconSet(&ics4GW, &ics4Pix, smallIconRect, 4, NULL);
	err = NewIconSet(&icsiGW, &icsiPix, smallIconRect, 1, NULL);
	err = NewIconSet(&icsmGW, &icsmPix, smallIconRect, 1, NULL);
	
	DisposeCTable(grayscaleTable);
	
	// setting some default data
	
	sizes = 0;
	//sizes |= small;
	//sizes |= large;
	//sizes += huge;
	
	flags = 0;
	ID = 128;
	CopyString(name, "\p ");
	
	if (err != noErr)
		status |= outOfMemory;
}

icnsClass::~icnsClass()
{
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


void icnsClass::Load()
{
	IconFamilyHandle	icnsHandle;
	IconFamilyElement*	elementPtr;
	Ptr					dataPtr;
	unsigned char		red[ih32Size/4], green[ih32Size/4], blue[ih32Size];
	ResType				ignoredType;
	
	SAVEGWORLD;
	
	SetGWorld(il32GW, NULL);
	EraseRect(&largeIconRect);
	SetGWorld(is32GW, NULL);
	EraseRect(&smallIconRect);
	SetGWorld(l8mkGW, NULL);
	EraseRect(&largeIconRect);
	SetGWorld(s8mkGW, NULL);
	EraseRect(&smallIconRect);
	SetGWorld(icl8GW, NULL);
	EraseRect(&largeIconRect);
	SetGWorld(ics8GW, NULL);
	EraseRect(&smallIconRect);
	SetGWorld(icnmGW, NULL);
	EraseRect(&largeIconRect);
	SetGWorld(icsmGW, NULL);
	EraseRect(&smallIconRect);
	SetGWorld(icniGW, NULL);
	EraseRect(&largeIconRect);
	SetGWorld(icsiGW, NULL);
	EraseRect(&smallIconRect);
	
	SetGWorld(il32GW, NULL);
	
	icnsHandle = (IconFamilyHandle)Get1Resource('icns', ID);
	
	if (icnsHandle != NULL)
	{
		GetResInfo((Handle)icnsHandle, &ID, &ignoredType, name);
		HLock((Handle)icnsHandle);
		
		// getting the icns pixmap data
		if (GeticnsMember('ich8', icnsHandle) == NULL &&
			GeticnsMember('ich4', icnsHandle) == NULL && 
			GeticnsMember('ich#', icnsHandle) == NULL && 
			GeticnsMember('ih32', icnsHandle) == NULL &&
			GeticnsMember('h8mk', icnsHandle) == NULL)
			sizes &= ~huge;
		else
			sizes |= huge;
		
		if (GeticnsMember('icl8', icnsHandle) == NULL &&
			GeticnsMember('icl4', icnsHandle) == NULL && 
			GeticnsMember('ICN#', icnsHandle) == NULL && 
			GeticnsMember('il32', icnsHandle) == NULL &&
			GeticnsMember('l8mk', icnsHandle) == NULL)
			sizes &= ~large;
		else
			sizes |= large;
			
		if (GeticnsMember('ics8', icnsHandle) == NULL &&
			GeticnsMember('ics4', icnsHandle) == NULL && 
			GeticnsMember('ics#', icnsHandle) == NULL && 
			GeticnsMember('is32', icnsHandle) == NULL &&
			GeticnsMember('s8mk', icnsHandle) == NULL)
			sizes &= ~small;
		else
			sizes |= small;
		
		// huge stuff
		if (sizes & huge)
		{	
			elementPtr = GeticnsMember('ich8', icnsHandle);
			if (elementPtr != NULL)
				BlockMove(elementPtr->elementData, (*ich8Pix)->baseAddr, ich8Size - ichSize/2); // for some reason the huge 8 bit icon includes a mask too
				
			elementPtr = GeticnsMember('ich4', icnsHandle);
			if (elementPtr != NULL)
				BlockMove(elementPtr->elementData, (*ich4Pix)->baseAddr, ich4Size - ichSize/2); // same for the huge 4 bit icon
			
			elementPtr = GeticnsMember('ich#', icnsHandle);
			if (elementPtr != NULL)
			{
				BlockMove(elementPtr->elementData, (*ichiPix)->baseAddr, ichSize/2);
				BlockMove(&elementPtr->elementData[ichSize/2], (*ichmPix)->baseAddr, ichSize/2);
			}
			
			elementPtr = GeticnsMember('ih32', icnsHandle);
			if (elementPtr != NULL)
			{
				if (elementPtr->elementSize < ih32Size)
				{
					dataPtr = (Ptr)elementPtr->elementData;
					UnpackIconData((unsigned char**)&dataPtr, red, ih32Size/4);
					UnpackIconData((unsigned char**)&dataPtr, green, ih32Size/4);
					UnpackIconData((unsigned char**)&dataPtr, blue, ih32Size/4);
					for (long j = 0; j < ih32Size/4; j++)
						((long *)(*ih32Pix)->baseAddr)[j] = (((unsigned long)red[j]) << 16) + (((unsigned long)green[j]) << 8) + (((unsigned long)blue[j]) << 0);
				}
				else
					BlockMove(elementPtr->elementData, (*ih32Pix)->baseAddr, ih32Size);
			}
			else
				CopyBits((BitMap*)*ich8Pix, (BitMap*)*ih32Pix, &hugeIconRect, &hugeIconRect, srcCopy, NULL);
			
			elementPtr = GeticnsMember('h8mk', icnsHandle);
			if (elementPtr != NULL)
				BlockMove(elementPtr->elementData, (*h8mkPix)->baseAddr, h8mkSize);
			else
				CopyBits((BitMap*)*ichmPix, (BitMap*)*h8mkPix, &hugeIconRect, &hugeIconRect, srcCopy, NULL);
		}
		
		// large stuff
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
				BlockMove(&elementPtr->elementData[icnSize/2], (*icnmPix)->baseAddr, icnSize/2);
			}
			
			elementPtr = GeticnsMember('il32', icnsHandle);
			if (elementPtr != NULL)
			{
				if (elementPtr->elementSize < il32Size)
				{
					dataPtr = (Ptr)elementPtr->elementData;
					UnpackIconData((unsigned char**)&dataPtr, red, 1024);
					UnpackIconData((unsigned char**)&dataPtr, green, 1024);
					UnpackIconData((unsigned char**)&dataPtr, blue, 1024);
					for (long j = 0; j < il32Size/4; j++)
						((long *)(*il32Pix)->baseAddr)[j] = (((unsigned long)red[j]) << 16) + (((unsigned long)green[j]) << 8) + (((unsigned long)blue[j]) << 0);
				}
				else
					BlockMove(elementPtr->elementData, (*il32Pix)->baseAddr, il32Size);
			}
			else
				CopyBits((BitMap*)*icl8Pix, (BitMap*)*il32Pix, &largeIconRect, &largeIconRect, srcCopy, NULL);
			
			elementPtr = GeticnsMember('l8mk', icnsHandle);
			if (elementPtr != NULL)
				BlockMove(elementPtr->elementData, (*l8mkPix)->baseAddr, l8mkSize);
			else
				CopyBits((BitMap*)*icnmPix, (BitMap*)*l8mkPix, &largeIconRect, &largeIconRect, srcCopy, NULL);
		}
		
		// small stuff
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
				BlockMove(&elementPtr->elementData[icsSize/2], (*icsmPix)->baseAddr, icsSize/2);
			}
				
			elementPtr = GeticnsMember('is32', icnsHandle);
			if (elementPtr != NULL)
			{
				if (elementPtr->elementSize < is32Size)
				{
					dataPtr = (Ptr)elementPtr->elementData;
					UnpackIconData((unsigned char**)&dataPtr, red, 256);
					UnpackIconData((unsigned char**)&dataPtr, green, 256);
					UnpackIconData((unsigned char**)&dataPtr, blue, 256);
					for (long j = 0; j < is32Size/4; j++)
						((long *)(*is32Pix)->baseAddr)[j] = (((unsigned long)red[j]) << 16) + (((unsigned long)green[j]) << 8) + (((unsigned long)blue[j]) << 0);
				}
				else
					BlockMove(elementPtr->elementData, (*is32Pix)->baseAddr, is32Size);
			}
			else
				CopyBits((BitMap*)*ics8Pix, (BitMap*)*is32Pix, &smallIconRect, &smallIconRect, srcCopy, NULL);
			
			elementPtr = GeticnsMember('s8mk', icnsHandle);
			if (elementPtr != NULL)
				BlockMove(elementPtr->elementData, (*s8mkPix)->baseAddr, s8mkSize);
			else
				CopyBits((BitMap*)*icsmPix, (BitMap*)*s8mkPix, &smallIconRect, &smallIconRect, srcCopy, NULL);
		}
		HUnlock((Handle)icnsHandle);
		
		ReleaseResource((Handle)icnsHandle);
	}
	else
		LoadOldStyle(true);
	
	RESTOREGWORLD;
}


void icnsClass::LoadOldStyle(bool copyToHigherRez)
{
	Handle	oldStyleHandle;
	if (copyToHigherRez)
	{
		if (Get1Resource('icl8', ID) == NULL &&
			Get1Resource('icl4', ID) == NULL &&
			Get1Resource('ICN#', ID) == NULL)
			sizes &= ~large;
		else
			sizes |= large;
		
		if (Get1Resource('ics8', ID) == NULL &&
			Get1Resource('ics4', ID) == NULL &&
			Get1Resource('ics#', ID) == NULL)
			sizes &= ~small;
		else
			sizes |= small;
	}
	
	// getting the large old style icons
	if (sizes & large)
	{
		oldStyleHandle = Get1Resource('icl8', ID);
		if (oldStyleHandle != NULL)
		{
			HLock(oldStyleHandle);
			BlockMove(*oldStyleHandle, (*icl8Pix)->baseAddr, icl8Size);
			if (copyToHigherRez)
				CopyBits((BitMap*)*icl8Pix, (BitMap*)*il32Pix, &largeIconRect, &largeIconRect, srcCopy, NULL);
			HUnlock(oldStyleHandle);
			ReleaseResource(oldStyleHandle);
		}
		
		oldStyleHandle = Get1Resource('icl4', ID);
		if (oldStyleHandle != NULL)
		{
			HLock(oldStyleHandle);
			BlockMove(*oldStyleHandle, (*icl4Pix)->baseAddr, icl4Size);
			HUnlock(oldStyleHandle);
			ReleaseResource(oldStyleHandle);
		}
		
		if (copyToHigherRez)
		{
			oldStyleHandle = Get1Resource('ICN#', ID);
			if (oldStyleHandle != NULL)
			{
				HLock(oldStyleHandle);
				BlockMove(*oldStyleHandle, (*icniPix)->baseAddr, icnSize/2);
				BlockMove(&((*oldStyleHandle)[icnSize/2]), (*icnmPix)->baseAddr, icnSize/2);
					CopyBits((BitMap*)*icnmPix, (BitMap*)*l8mkPix, &largeIconRect, &largeIconRect, srcCopy, NULL);
				HUnlock(oldStyleHandle);
				ReleaseResource(oldStyleHandle);
			}
		}
	}
	
	// getting the small ones
	if (sizes & small)
	{
		oldStyleHandle = Get1Resource('ics8', ID);
		if (oldStyleHandle != NULL)
		{
			HLock(oldStyleHandle);
			BlockMove(*oldStyleHandle, (*ics8Pix)->baseAddr, ics8Size);
			if (copyToHigherRez)
				CopyBits((BitMap*)*ics8Pix, (BitMap*)*is32Pix, &smallIconRect, &smallIconRect, srcCopy, NULL);
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
		
		if (copyToHigherRez)
		{
			oldStyleHandle = Get1Resource('ics#', ID);
			if (oldStyleHandle != NULL)
			{
				HLock(oldStyleHandle);
				BlockMove(*oldStyleHandle, (*icsiPix)->baseAddr, icsSize/2);
				BlockMove(&((*oldStyleHandle)[icsSize/2]), (*icsmPix)->baseAddr, icsSize/2);
					CopyBits((BitMap*)*icsmPix, (BitMap*)*s8mkPix, &smallIconRect, &smallIconRect, srcCopy, NULL);
				HUnlock(oldStyleHandle);
				ReleaseResource(oldStyleHandle);
			}
		}
	}
}


void icnsClass::LoadFromFile(FSSpec fileSpec)
{
	short file, oldFile;
	
	oldFile = CurResFile();
	file = FSpOpenResFile(&fileSpec, fsRdPerm);
	UseResFile(file);
	Load();
	CloseResFile(file);
	UseResFile(oldFile);
}

void icnsClass::Display(Rect targetRect)
{
	long		copyStyle;
	int			size;
	
	SAVEGWORLD;
	
	if ((**((CGrafPort*)qd.thePort)->portPixMap).pixelSize == 1)
		copyStyle = srcCopy;
	else
		copyStyle = srcCopy + ditherCopy;
	
	size = targetRect.bottom - targetRect.top;
	
	if (size == 48 && (sizes & large))
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
	else
		CopyDeepMask((BitMap *)*il32Pix,
					 (BitMap *)*l8mkPix,
					 &qd.thePort->portBits,
					 &largeIconRect,
					 &largeIconRect,
					 &targetRect,
					 copyStyle,
					 NULL);
	
	RESTOREGWORLD;
}

void icnsClass::ExportToPixMap(PixMapHandle targetPix)
{
	Rect		targetSmallIconRect = {0, 0, 16, 16},
				targetSmallMaskRect = {16, 0, 32, 16},
				targetLargeIconRect = {0, 16, 32, 48},
				targetLargeMaskRect = {0, 48, 32, 80};
	
	SAVEGWORLD;
	
	LockPixels(targetPix);
	
	SetGWorld(il32GW, NULL);
	if (sizes & small)
	{
		CopyBits((BitMap*)*is32Pix, (BitMap*)*targetPix, &smallIconRect, &targetSmallIconRect, srcCopy, NULL);
		CopyBits((BitMap*)*s8mkPix, (BitMap*)*targetPix, &smallIconRect, &targetSmallMaskRect, srcCopy, NULL);
	}
	else
	{
		CopyBits((BitMap*)*il32Pix, (BitMap*)*targetPix, &largeIconRect, &targetSmallIconRect, srcCopy, NULL);
		CopyBits((BitMap*)*l8mkPix, (BitMap*)*targetPix, &largeIconRect, &targetSmallMaskRect, srcCopy, NULL);
	}
	CopyBits((BitMap*)*il32Pix, (BitMap*)*targetPix, &largeIconRect, &targetLargeIconRect, srcCopy, NULL);
	CopyBits((BitMap*)*l8mkPix, (BitMap*)*targetPix, &largeIconRect, &targetLargeMaskRect, srcCopy, NULL);	
	UnlockPixels(targetPix);
	
	RESTOREGWORLD;
}

void icnsClass::ImportFromClipboard(bool dither)
{
	Rect				clipboardRect;
	Rect				is32SrcRect = {0, 0, 16, 16};
	Rect				s8mkSrcRect = {16, 0, 32, 16};
	Rect				il32SrcRect = {0, 0, 32, 32};
	Rect				l8mkSrcRect = {0, 32, 32, 64};
	GWorldPtr			tempGWorld, clipboardGWorld;
	PixMapHandle		tempPix, clipboardPix;
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
	SetGWorld(clipboardGWorld, NULL);
	EraseRect(&qd.thePort->portRect);
	clipboardPix = GetGWorldPixMap(clipboardGWorld);
	LockPixels(clipboardPix);
	DrawPicture((PicHandle)pic, &clipboardRect);
	
	
	if (sizes & large)
	{
		// copying the merged icon + mask from the clipboard into the 8 bit icon
		CopyDeepMask((BitMap *)*clipboardPix,
					 (BitMap *)*clipboardPix,
				 	 (BitMap *)*icl8Pix,
				 	 &il32SrcRect,
				 	 &l8mkSrcRect,
					 &largeIconRect,
					 copyMode,
					 NULL);
					 
		// and the 4 bit icon
		CopyDeepMask((BitMap *)*clipboardPix,
					 (BitMap *)*clipboardPix,
				 	 (BitMap *)*icl4Pix,
				 	 &il32SrcRect,
				 	 &l8mkSrcRect,
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
		
		// making the 1 bit mask		 
		NewGWorld(&tempGWorld, 8, &largeIconRect, grayscaleTable, NULL, 0);
		//SetGWorld(tempGWorld, NULL);
		//EraseRect(&qd.thePort->portRect);
		tempPix = GetGWorldPixMap(tempGWorld);
		CopyBits((BitMap *)*clipboardPix, (BitMap *)*tempPix, &l8mkSrcRect, &largeIconRect, srcCopy, NULL);
		LockPixels(tempPix);
				
		for (int i = 0; i < (**(**tempPix).pmTable).ctSize + 1; i++)
		{
			if ((**(**tempPix).pmTable).ctTable[i].rgb.red != 0xFFFF &&
			    (**(**tempPix).pmTable).ctTable[i].rgb.green != 0xFFFF &&
			    (**(**tempPix).pmTable).ctTable[i].rgb.blue != 0xFFFF)
			{
				(**(**tempPix).pmTable).ctTable[i].rgb.red = 0;
				(**(**tempPix).pmTable).ctTable[i].rgb.green = 0;
				(**(**tempPix).pmTable).ctTable[i].rgb.blue = 0;
			}
		}
		
		CTabChanged((**tempPix).pmTable);
		
		CopyBits((BitMap *)*tempPix,
				 (BitMap *)*icnmPix,
				 &largeIconRect,
				 &largeIconRect,
				 srcCopy,
				 NULL);
				 
		UnlockPixels(tempPix);
		DisposeGWorld(tempGWorld);
		
		// creating the bw version
		CopyDeepMask((BitMap *)*clipboardPix,
					 (BitMap *)*clipboardPix,
					 (BitMap *)*icniPix,
					 &il32SrcRect,
					 &l8mkSrcRect,
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
	}
	if (sizes & small)
	{
		// copying the merged icon + mask from the clipboard into the 8 bit icon
		CopyDeepMask((BitMap *)*clipboardPix,
					 (BitMap *)*clipboardPix,
				 	 (BitMap *)*ics8Pix,
				 	 &is32SrcRect,
				 	 &s8mkSrcRect,
					 &smallIconRect,
					 copyMode,
					 NULL);
					 
		// and the 4 bit icon
		CopyDeepMask((BitMap *)*clipboardPix,
					 (BitMap *)*clipboardPix,
				 	 (BitMap *)*ics4Pix,
				 	 &is32SrcRect,
				 	 &s8mkSrcRect,
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
		
		// making the 1 bit mask		 
		NewGWorld(&tempGWorld, 8, &smallIconRect, grayscaleTable, NULL, 0);
		//SetGWorld(tempGWorld, NULL);
		//EraseRect(&qd.thePort->portRect);
		tempPix = GetGWorldPixMap(tempGWorld);
		CopyBits((BitMap *)*clipboardPix, (BitMap *)*tempPix, &s8mkSrcRect, &smallIconRect, srcCopy, NULL);
		LockPixels(tempPix);
		
		for (int i = 0; i < (**(**tempPix).pmTable).ctSize + 1; i++)
		{
			if ((**(**tempPix).pmTable).ctTable[i].rgb.red != 0xFFFF &&
			    (**(**tempPix).pmTable).ctTable[i].rgb.green != 0xFFFF &&
			    (**(**tempPix).pmTable).ctTable[i].rgb.blue != 0xFFFF)
			{
				(**(**tempPix).pmTable).ctTable[i].rgb.red = 0;
				(**(**tempPix).pmTable).ctTable[i].rgb.green = 0;
				(**(**tempPix).pmTable).ctTable[i].rgb.blue = 0;
			}
		}
		
		CTabChanged((**tempPix).pmTable);
		
		CopyBits((BitMap *)*tempPix,
				 (BitMap *)*icsmPix,
				 &smallIconRect,
				 &smallIconRect,
				 srcCopy,
				 NULL);
				 	
		UnlockPixels(tempPix);
		DisposeGWorld(tempGWorld);
		
		// creating the bw version
		CopyDeepMask((BitMap *)*clipboardPix,
					 (BitMap *)*clipboardPix,
					 (BitMap *)*icsiPix,
					 &is32SrcRect,
					 &s8mkSrcRect,
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
	}
	
	RESTOREGWORLD;
	
	UnlockPixels(clipboardPix);
	DisposeGWorld(clipboardGWorld);
}

void icnsClass::SaveToFile(FSSpec fileSpec, bool includeOldStyle, bool generateOldStyle)
{
	long				icnsSize;
	IconFamilyHandle	icnsHandle;
	IconFamilyElement*	elementPtr;
	short				file, appFile;
	Handle				oldIcns;
	FInfo				fileInfo;
	Handle				currentIcon;
	Ptr					l8mkSrc, il32Src, ih32Src, icnmSrc, icniSrc, icl8Src, ics8Src, is32Src, icsmSrc, icsiSrc, s8mkSrc, ichiSrc, ichmSrc, ich8Src, h8mkSrc;
	
	appFile = CurResFile();
	
	CompressIcon();
	
	icnsSize = sizeof(IconFamilyResource) - sizeof(IconFamilyElement);
	if (sizes & huge)
		icnsSize += sizeof(IconFamilyElement) * 4 + ih32CompressedSize - icnsSizePadding + h8mkSize - icnsSizePadding + ichSize - icnsSizePadding + ich8Size - icnsSizePadding;
	if (sizes & large)
		icnsSize += sizeof(IconFamilyElement) * 4 + il32CompressedSize - icnsSizePadding + l8mkSize - icnsSizePadding + icnSize - icnsSizePadding + icl8Size - icnsSizePadding;
	if (sizes & small)
		icnsSize += sizeof(IconFamilyElement) * 4 + is32CompressedSize - icnsSizePadding + s8mkSize - icnsSizePadding + icsSize - icnsSizePadding + ics8Size - icnsSizePadding;
	
	icnsHandle = (IconFamilyHandle) NewHandleClear(icnsSize);

	HLock((Handle)icnsHandle);
	
	(**icnsHandle).resourceType = 'icns';
	(**icnsHandle).resourceSize = icnsSize;
	
	ichiSrc = (*ichiPix)->baseAddr;
	ichmSrc = (*ichmPix)->baseAddr;
	ich8Src = (*ich8Pix)->baseAddr;
	ih32Src = (char *)ih32Compressed;
	h8mkSrc = (*h8mkPix)->baseAddr;
	
	icniSrc = (*icniPix)->baseAddr;
	icnmSrc = (*icnmPix)->baseAddr;
	icl8Src = (*icl8Pix)->baseAddr;
	il32Src = (char *)il32Compressed;
	l8mkSrc = (*l8mkPix)->baseAddr;

	icsiSrc = (*icsiPix)->baseAddr;
	icsmSrc = (*icsmPix)->baseAddr;
	ics8Src = (*ics8Pix)->baseAddr;
	is32Src = (char *)is32Compressed;
	s8mkSrc = (*s8mkPix)->baseAddr;
	
	
	file = FSpOpenResFile(&fileSpec, fsRdWrPerm);
	UseResFile(file);
	if (includeOldStyle)
	{
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
	
	if (sizes & large)
	{
		elementPtr = &((**icnsHandle).elements[0]);
		elementPtr->elementType = 'ICN#';
		elementPtr->elementSize = icnSize + sizeof(IconFamilyElement) - icnsSizePadding;
		BlockMove( icniSrc,elementPtr->elementData, icnSize/2);
		BlockMove( icnmSrc, &elementPtr->elementData[icnSize / 2], icnSize/2);

		elementPtr = (IconFamilyElement *)((char *)(elementPtr) + elementPtr->elementSize);
		elementPtr->elementType = 'icl8';
		elementPtr->elementSize = icl8Size + sizeof(IconFamilyElement) - icnsSizePadding;
		BlockMove(icl8Src, elementPtr->elementData, icl8Size);
		
		elementPtr = (IconFamilyElement *)((char *)(elementPtr) + elementPtr->elementSize);
		elementPtr->elementType = 'il32';
		elementPtr->elementSize = il32CompressedSize + sizeof(IconFamilyElement) - icnsSizePadding;
		BlockMove( il32Src, elementPtr->elementData, il32CompressedSize);
		
		elementPtr = (IconFamilyElement *)((char *)(elementPtr) + elementPtr->elementSize);
		elementPtr->elementType = 'l8mk';
		elementPtr->elementSize = l8mkSize + sizeof(IconFamilyElement) - icnsSizePadding;
		BlockMove(l8mkSrc, elementPtr->elementData, l8mkSize);
	}
	
	if (sizes & small)
	{
		if (sizes & large)
			elementPtr = (IconFamilyElement *)((char *)(elementPtr) + elementPtr->elementSize);
		else
			elementPtr = &((**icnsHandle).elements[0]);
			
		elementPtr->elementType = 'ics#';
		elementPtr->elementSize = icsSize + sizeof(IconFamilyElement) - icnsSizePadding;
		BlockMove( icsiSrc ,elementPtr->elementData, icsSize/2);
		BlockMove( icsmSrc, &elementPtr->elementData[icsSize / 2], icsSize/2);
		
		elementPtr = (IconFamilyElement *)((char *)(elementPtr) + elementPtr->elementSize);
		elementPtr->elementType = 'ics8';
		elementPtr->elementSize = ics8Size + sizeof(IconFamilyElement) - icnsSizePadding;
		BlockMove(ics8Src, elementPtr->elementData, ics8Size);
		
		elementPtr = (IconFamilyElement *)((char *)(elementPtr) + elementPtr->elementSize);
		elementPtr->elementType = 'is32';
		elementPtr->elementSize = is32CompressedSize + sizeof(IconFamilyElement) - icnsSizePadding;
		BlockMove(is32Src, elementPtr->elementData, is32CompressedSize);
		
		elementPtr = (IconFamilyElement *)((char *)(elementPtr) + elementPtr->elementSize);
		elementPtr->elementType = 's8mk';
		elementPtr->elementSize = s8mkSize + sizeof(IconFamilyElement) - icnsSizePadding;
		BlockMove(s8mkSrc, elementPtr->elementData, s8mkSize);	
	}
	if (sizes & huge)
	{
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
		elementPtr->elementType = 'ih32';
		elementPtr->elementSize = ih32CompressedSize + sizeof(IconFamilyElement) - icnsSizePadding;
		BlockMove(ih32Src, elementPtr->elementData, ih32CompressedSize);
		
		elementPtr = (IconFamilyElement *)((char *)(elementPtr) + elementPtr->elementSize);
		elementPtr->elementType = 'h8mk';
		elementPtr->elementSize = h8mkSize + sizeof(IconFamilyElement) - icnsSizePadding;
		BlockMove(h8mkSrc, elementPtr->elementData, h8mkSize);	
	}
	
	HUnlock((Handle)icnsHandle);
	if (ID == -16455)
	{
		FSpGetFInfo(&fileSpec, &fileInfo);
		fileInfo.fdFlags |= kHasCustomIcon;
		FSpSetFInfo(&fileSpec, &fileInfo); 
	}
	
	oldIcns = Get1Resource('icns', ID);
	if (oldIcns != NULL)
	{
		RemoveResource(oldIcns);
		UpdateResFile(file);
		/*CloseResFile(file);
		file = FSpOpenResFile(&fileSpec, fsRdWrPerm);
		UseResFile(file);*/
	}
	if (generateOldStyle)
		SaveOldStyle(file);
	
	DetachResource((Handle)icnsHandle);
	AddResource((Handle)icnsHandle, 'icns', ID, name);
	SetResAttrs((Handle)icnsHandle, flags);
	ChangedResource((Handle)icnsHandle);
	WriteResource((Handle)icnsHandle);
	UpdateResFile(file);
	CloseResFile(file);
	UseResFile(appFile);

	DisposeHandle((Handle)icnsHandle);
}

void icnsClass::SaveOldStyle(short file)
{
	Handle			iconHandle;
	char			oldMask[icnSize/2];
	
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
		//WriteResource(iconHandle);
		//UpdateResFile(file);
		
		// the 4 bit large icon
		iconHandle = Get1Resource('icl4', ID);
		REMOVEICON;
		
		iconHandle = NewHandleClear(icl4Size);
		BlockMove((*icl4Pix)->baseAddr, *iconHandle, icl4Size);
		DetachResource(iconHandle);
		AddResource(iconHandle, 'icl4', ID, name);
		SetResAttrs(iconHandle, flags);
		ChangedResource(iconHandle);
		//WriteResource(iconHandle);
		//UpdateResFile(file);
		
		// the 1 bit large icon
		iconHandle = Get1Resource('ICN#', ID);
		REMOVEICON;
		
		iconHandle = NewHandleClear(icnSize);
		BlockMove((*icniPix)->baseAddr, *iconHandle, icnSize/2);
		Make1BitMask(icl8Pix, oldMask);
		//BlockMove((*icnmPix)->baseAddr, &((*iconHandle)[icnSize / 2]), icnSize/2);
		BlockMove(oldMask, &((*iconHandle)[icnSize / 2]), icnSize/2);
		DetachResource(iconHandle);
		AddResource(iconHandle, 'ICN#', ID, name);
		SetResAttrs(iconHandle, flags);
		ChangedResource(iconHandle);
		//WriteResource(iconHandle);
		//UpdateResFile(file);
	}
	UpdateResFile(file);
	
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
		//WriteResource(iconHandle);
		//UpdateResFile(file);
		
		// the 4 bit small icon
		iconHandle = Get1Resource('ics4', ID);
		REMOVEICON;
		
		iconHandle = NewHandleClear(ics4Size);
		BlockMove((*ics4Pix)->baseAddr, *iconHandle, ics4Size);
		DetachResource(iconHandle);
		AddResource(iconHandle, 'ics4', ID, name);
		SetResAttrs(iconHandle, flags);
		ChangedResource(iconHandle);
		//WriteResource(iconHandle);
		//UpdateResFile(file);
		
		// the 1 bit small icon
		iconHandle = Get1Resource('ics#', ID);
		REMOVEICON;
		
		iconHandle = NewHandleClear(icsSize);
		BlockMove((*icsiPix)->baseAddr, *iconHandle, icsSize/2);
		Make1BitMask(ics8Pix, oldMask);
		//BlockMove((*icsmPix)->baseAddr, &((*iconHandle)[icsSize / 2]), icsSize/2);
		BlockMove(oldMask, &((*iconHandle)[icsSize / 2]), icsSize/2);
		DetachResource(iconHandle);
		AddResource(iconHandle, 'ics#', ID, name);
		SetResAttrs(iconHandle, flags);
		ChangedResource(iconHandle);
		//WriteResource(iconHandle);
		//UpdateResFile(file);	
	}
	
	UpdateResFile(file);
	DisposeHandle(iconHandle);
}

void icnsClass::CompressIcon(void)
{
	unsigned char	red[ih32Size/4], green[ih32Size/4], blue[ih32Size/4], redC[ih32Size/4], greenC[ih32Size/4], blueC[ih32Size/4];
	unsigned long*	sourceData;
	unsigned long	pixel32;
	long			redSize, greenSize, blueSize;
	
	// compressing the huge icon
	if (sizes & huge)
	{
		sourceData = (unsigned long *)(*ih32Pix)->baseAddr;
		
		for (long i=0; i < ih32Size/4; i++)
		{
			pixel32 = sourceData[i];
			red[i] = (pixel32 >> 16) & 0xFF;
			green[i] = (pixel32 >> 8) & 0xFF;
			blue[i] = (pixel32 >> 0) & 0xFF;
		}
		
		ih32CompressedSize = 0;
		PackIconData(red, ih32Size/4, redC, &redSize);
		ih32CompressedSize += redSize;
		PackIconData(green, ih32Size/4, greenC, &greenSize);
		ih32CompressedSize += greenSize;
		PackIconData(blue, ih32Size/4, blueC, &blueSize);
		ih32CompressedSize += blueSize;
		
		BlockMove(redC, &ih32Compressed[0], redSize);
		BlockMove(greenC, &ih32Compressed[redSize], greenSize);
		BlockMove(blueC, &ih32Compressed[redSize + greenSize], blueSize);
	}
	
	// compressing the large icon
	if (sizes & large)
	{
		sourceData = (unsigned long *)(*il32Pix)->baseAddr;
		
		for (long i=0; i < 1024; i++)
		{
			pixel32 = sourceData[i];
			red[i] = (pixel32 >> 16) & 0xFF;
			green[i] = (pixel32 >> 8) & 0xFF;
			blue[i] = (pixel32 >> 0) & 0xFF;
		}
		
		il32CompressedSize = 0;
		PackIconData(red, 1024, redC, &redSize);
		il32CompressedSize += redSize;
		PackIconData(green, 1024, greenC, &greenSize);
		il32CompressedSize += greenSize;
		PackIconData(blue, 1024, blueC, &blueSize);
		il32CompressedSize += blueSize;
		
		BlockMove(redC, &il32Compressed[0], redSize);
		BlockMove(greenC, &il32Compressed[redSize], greenSize);
		BlockMove(blueC, &il32Compressed[redSize + greenSize], blueSize);
	}
	
	// now the small one
	if (sizes & small)
	{
		sourceData = (unsigned long *)(*is32Pix)->baseAddr;
		
		for (long i=0; i < 16*16; i++)
		{
			pixel32 = sourceData[i];
			red[i] = (pixel32 >> 16) & 0xFF;
			green[i] = (pixel32 >> 8) & 0xFF;
			blue[i] = (pixel32 >> 0) & 0xFF;
		}
		
		PackIconData(red, 256, redC, &redSize);
		PackIconData(green, 256, greenC, &greenSize);
		PackIconData(blue, 256, blueC, &blueSize);
		
		is32CompressedSize = redSize + greenSize + blueSize;
		
		BlockMove(redC, &is32Compressed[0], redSize);
		BlockMove(greenC, &is32Compressed[redSize], greenSize);
		BlockMove(blueC, &is32Compressed[redSize + greenSize], blueSize);	
	}
}

OSStatus NewIconSet(GWorldPtr *gWorld, PixMapHandle *pixMap, Rect bounds, int depth, CTabHandle cTable)
{
	SAVEGWORLD;
	OSStatus err;
	
	err = noErr;
	
	err = NewGWorld(gWorld, depth, &bounds, cTable, NULL, 0);
	*pixMap = GetGWorldPixMap(*gWorld);
	LockPixels(*pixMap);
	SetGWorld(*gWorld, NULL);
	EraseRect(&bounds);
	CropPixMap(*pixMap, (bounds.right - bounds.left) * depth / 8);

	RESTOREGWORLD;
	
	return err;
}

void PackIconData(unsigned char* source, long sourceSize, unsigned char* output, long* outputSize)
{
	long sourceCursor=0, outputCursor=0, currentPosition;
	unsigned char commonValue;
	
	while (sourceCursor < sourceSize)
	{	
		for (currentPosition = sourceCursor;
			((currentPosition < sourceSize - 2) &&
			(source[currentPosition] != source[currentPosition + 1] || source[currentPosition + 1] != source[currentPosition + 2])) ||
			(currentPosition >= sourceSize - 2 && currentPosition < sourceSize);
			currentPosition++){;}
		
		// 3 or more identical bytes start at currentPosition or less than 2 pixels left
		// sourceCursor..currentPosition - 1 copy as is
		
		if (sourceCursor < currentPosition) // non-empty
		{
			while (currentPosition - sourceCursor > 0)
			{
				int areaCount;
				
				areaCount = currentPosition - sourceCursor;
				
				if (areaCount > 128) areaCount = 128;
				
				output[outputCursor++] = (unsigned char) (areaCount - 1);
				
				for(int i=0; i < areaCount; i++)
					output[outputCursor++] = source[sourceCursor++];
				
			}
			if (sourceCursor != currentPosition)
			{
				DisplayAlert("Gross incosistency", "sourceCursor != currentPosition for \"copy as is\" area");
				ExitToShell();
			}
		}
		
		if (sourceCursor < sourceSize - 2)
		{
			commonValue = source[sourceCursor];
			
			for (currentPosition = sourceCursor + 3;
				(currentPosition < sourceSize) && (commonValue == source[currentPosition]);
				currentPosition++){;}
			
			// sourceCursor..currentPosition - 1 is repeat area
			
			while ((currentPosition - sourceCursor) > 0)
			{
				int areaCount;
				
				areaCount = currentPosition - sourceCursor;
				
				if (areaCount > (127 + 3)) areaCount = 127 + 3;
				if (areaCount == 1 || areaCount == 2)
				{
					output[outputCursor++] = areaCount - 1;
					for (int i=0; i < areaCount; i++)
						output[outputCursor++] = commonValue;
				}
				else
				{
					output[outputCursor++] = (unsigned char) (areaCount + (128 - 3));
					
					output[outputCursor++] = commonValue;
				}
				sourceCursor += areaCount;
			}
		} 
		if (sourceCursor != currentPosition)
		{
			DisplayAlert("Gross incosistency", "sourceCursor != currentPosition for \"repeat\" area");
			ExitToShell();
		}
	}
	
	(*outputSize) = outputCursor;
}

/*RGBColor tCicnClass::GetPixel(int h, int v)
{
	CGrafPtr		curPort;
	GDHandle		curDevice;
	RGBColor		pixelToReturn;
	
	GetGWorld(&curPort, &curDevice);
	
	SetGWorld(cicnGW, NULL);
	
	GetCPixel(h, v, &pixelToReturn);
	
	SetGWorld(curPort, curDevice);
	
	return pixelToReturn;
}*/

IconFamilyElement* GeticnsMember(long iconType, IconFamilyHandle icnsHandle)
{
	IconFamilyElement*	elementPtr;
	unsigned long				endingSize;
	
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

void UnpackIconData(unsigned char** source, unsigned char* target, int finalSize)
{
	unsigned int targetCursor=0, sourceCursor=0;
	unsigned char end;
	
	while (targetCursor < finalSize)
	{
		if ((unsigned char)(*source)[sourceCursor] <= 127)
		{
			end = (*source)[sourceCursor++] + 1;
			for (int i=0; i < end; i++)
				target[targetCursor++] = (*source)[sourceCursor++];
		}
		else
		{
			end = (*source)[sourceCursor++] - 125;
			for (int i=0; i < end; i++)
				target[targetCursor++] = (*source)[sourceCursor];
			sourceCursor++;
		}
	}
	(*source) += sourceCursor;
}

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

void Make1BitMask(PixMapHandle srcPix, char* target)
{
	GWorldPtr maskGWorld, tempGWorld, temp2GWorld;
	PixMapHandle maskPix, tempPix, temp2Pix;
	int size;
	Rect	bounds;
	
	SAVEGWORLD;
	
	bounds = (**srcPix).bounds;

	NewGWorld(&maskGWorld, 1, &bounds, NULL, NULL, 0);
	SetGWorld(maskGWorld, NULL);
	EraseRect(&qd.thePort->portRect);
	maskPix = GetGWorldPixMap(maskGWorld);
	LockPixels(maskPix);
	
	NewGWorld(&tempGWorld, 8, &bounds, NULL, NULL, 0);
	SetGWorld(tempGWorld, NULL);
	EraseRect(&qd.thePort->portRect);
	tempPix = GetGWorldPixMap(tempGWorld);
	LockPixels(tempPix);
	CopyBits((BitMap *)*srcPix, (BitMap *)*tempPix, &bounds, &bounds, srcCopy, NULL);
	
	NewGWorld(&temp2GWorld, 1, &bounds, NULL, NULL, 0);
	SetGWorld(temp2GWorld, NULL);
	EraseRect(&qd.thePort->portRect);
	temp2Pix = GetGWorldPixMap(temp2GWorld);
	LockPixels(temp2Pix);  
	
	for (int i = 0; i < (**(**tempPix).pmTable).ctSize + 1; i++)
	{
		if ((**(**tempPix).pmTable).ctTable[i].rgb.red != 0xFFFF ||
		    (**(**tempPix).pmTable).ctTable[i].rgb.green != 0xFFFF ||
		    (**(**tempPix).pmTable).ctTable[i].rgb.blue != 0xFFFF)
		{
			(**(**tempPix).pmTable).ctTable[i].rgb.red = 0;
			(**(**tempPix).pmTable).ctTable[i].rgb.green = 0;
			(**(**tempPix).pmTable).ctTable[i].rgb.blue = 0;
		}    
	}
	
	//CTabChanged((**tempPix).pmTable);
	
	//UpdateGWorld(&tempGWorld, 8, &bounds, (**tempPix).pmTable, NULL, 0);
	
	CopyBits( (BitMap *)*tempPix,
					 (BitMap *)*temp2Pix,
					 &bounds,
					 &bounds,
					 srcCopy,
					 NULL);
	
	CalcMask((**temp2Pix).baseAddr,
	         (**maskPix).baseAddr,
	         (**temp2Pix).rowBytes & 0x3FFF,
	         (**maskPix).rowBytes & 0x3FFF,
	         bounds.bottom - bounds.top,
	         ((**maskPix).rowBytes & 0x3FFF)/2);
	
	if ((bounds.bottom - bounds.top) == 32)
	{
		CropPixMap(maskPix,4);
		size = icnSize/2;
	}
	else
	{
		CropPixMap(maskPix,2);
		size = icsSize/2;
	}
	
	BlockMove((*maskPix)->baseAddr, target, size);
	
	RESTOREGWORLD;
	
	UnlockPixels(temp2Pix);
	DisposeGWorld(temp2GWorld);
	UnlockPixels(tempPix);
	DisposeGWorld(tempGWorld);
	UnlockPixels(maskPix);
	DisposeGWorld(maskGWorld);
}
