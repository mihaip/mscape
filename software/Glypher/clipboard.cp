#include "badger.h"

void clip2icns(short icnsID, Str255 icnsName, int flags)
{
	long				large32BitSize = 0x1000;
	long				small32BitSize = 0x1000 / 4;
	long				large8BitMaskSize = 0x400;
	long				small8BitMaskSize = 0x400 / 4;
	long				large1BitSize = 0x100;
	long				small1BitSize = 0x100 / 4;
	long				large8BitSize = 0x400;
	long				small8BitSize = 0x400 / 4;
	Rect				clipboardRect;
	Rect				smallIconRect = {0, 0, 16, 16};
	Rect				smallMaskRect = {16, 0, 32, 16};
	Rect				largeIconRect = {0, 0, 32, 32};
	Rect				largeMaskRect = {0, 32, 32, 64};
	Rect				standardIconRect = {0, 0, 32, 32};
	GWorldPtr			clipboardGWorld, maskLarge8BitGWorld, colorLarge32BitGWorld, maskLarge1BitGWorld, bwLargeGWorld, tempGWorld, colorLarge8BitGWorld;
	GWorldPtr			colorSmall8BitGWorld, colorSmall32BitGWorld, maskSmall1BitGWorld, bwSmallGWorld, maskSmall8BitGWorld;
	char				*maskLarge8BitSrc, *colorLarge32BitSrc, *maskLarge1BitSrc, *bwLargeSrc, *colorLarge8BitSrc, *colorSmall8BitSrc, *colorSmall32BitSrc, *maskSmall1BitSrc, *bwSmallSrc, *maskSmall8BitSrc;
	PixMapHandle		clipboardPix, maskLarge8BitPix, colorLarge32BitPix, maskLarge1BitPix, bwLargePix, tempPix, colorLarge8BitPix;
	PixMapHandle		colorSmall8BitPix, colorSmall32BitPix, maskSmall1BitPix, bwSmallPix, maskSmall8BitPix;
	long				icnsSize;
	IconFamilyHandle	icnsHandle;
	IconFamilyElement*	elementPtr;
	long				offset;
	Handle				pic;
	CTabHandle			grayscaleTable;
	short				scheme;
	Handle				oldIcns;
	FInfo				schemeInfo;
	bool				hasLarge=true, hasSmall=false;
	Handle				currentIcon;
	
	pic = NewHandle (0);
	if (GetScrap( pic, 'PICT', &offset ) < 0)
	{
		DisplayAlert("", "The clipboard is either empty or doesn't contain a picture");
		return;
	}
	
	clipboardRect = (*(PicHandle)pic)->picFrame;
	OffsetRect(&clipboardRect, -clipboardRect.left, -clipboardRect.top);
	
	grayscaleTable = GetCTable(40);
	HLock((Handle)grayscaleTable);
	if (clipboardRect.right == 80)
	{
		hasLarge = true;
		hasSmall = true;
		largeIconRect.left = 16;
		largeIconRect.right = 48;
		largeMaskRect.left = 48;
		largeMaskRect.right = 80;
	}
	if (clipboardRect.right == 16)
	{
		hasSmall = true;
		hasLarge = false;
	} 
	// first we draw the clipboard into a g world
	NewGWorld(&clipboardGWorld, 32, &clipboardRect, NULL, NULL, 0);
	SetGWorld(clipboardGWorld, NULL);
	EraseRect(&qd.thePort->portRect);
	clipboardPix = GetGWorldPixMap(clipboardGWorld);
	LockPixels(clipboardPix);
	DrawPicture((PicHandle)pic, &clipboardRect);
	
	
	if (hasLarge)
	{
		// copying a piece of the clipboard into the 8 bit icon
		NewGWorld(&colorLarge8BitGWorld, 8, &standardIconRect, NULL, NULL, 0);
		SetGWorld(colorLarge8BitGWorld, NULL);
		EraseRect(&qd.thePort->portRect);
		colorLarge8BitPix = GetGWorldPixMap(colorLarge8BitGWorld);
		LockPixels(colorLarge8BitPix);
		
		CopyBits((BitMap *)*clipboardPix,
				 (BitMap *)*colorLarge8BitPix,
				 &largeIconRect,
				 &standardIconRect,
				 srcCopy + ditherCopy,
				 NULL);
		
		// now we're copying a piece of the clipboard into the 32 bit icon
		NewGWorld(&colorLarge32BitGWorld, 32, &standardIconRect, NULL, NULL, 0);
		SetGWorld(colorLarge32BitGWorld, NULL);
		EraseRect(&qd.thePort->portRect);
		colorLarge32BitPix = GetGWorldPixMap(colorLarge32BitGWorld);
		LockPixels(colorLarge32BitPix);
		
		CopyBits((BitMap *)*clipboardPix,
				 (BitMap *)*colorLarge32BitPix,
				 &largeIconRect,
				 &standardIconRect,
				 srcCopy,
				 NULL);
		
		// making the 1 bit mask		 
		NewGWorld(&maskLarge1BitGWorld, 1, &standardIconRect, NULL, NULL, 0);
		SetGWorld(maskLarge1BitGWorld, NULL);
		EraseRect(&qd.thePort->portRect);
		maskLarge1BitPix = GetGWorldPixMap(maskLarge1BitGWorld);
		LockPixels(maskLarge1BitPix);
		
		NewGWorld(&tempGWorld, 8, &standardIconRect, grayscaleTable, NULL, 0);
		SetGWorld(tempGWorld, NULL);
		EraseRect(&qd.thePort->portRect);
		tempPix = GetGWorldPixMap(tempGWorld);
		CopyBits((BitMap *)*clipboardPix, (BitMap *)*tempPix, &largeMaskRect, &standardIconRect, srcCopy, NULL);
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
		
		//UpdateGWorld(&tempGWorld, 8, &standardIconRect, (**tempPix).pmTable, NULL, 0);
		
		CopyBits((BitMap *)*tempPix,
				 (BitMap *)*maskLarge1BitPix,
				 &standardIconRect,
				 &standardIconRect,
				 srcCopy,
				 NULL);
				 
		UnlockPixels(tempPix);
		DisposeGWorld(tempGWorld);
		
		// creating the bw version
		
		NewGWorld(&bwLargeGWorld, 1, &standardIconRect, NULL, NULL, 0);
		SetGWorld(bwLargeGWorld, NULL);
		EraseRect(&qd.thePort->portRect);
		bwLargePix = GetGWorldPixMap(bwLargeGWorld);
		LockPixels(bwLargePix);
		
		CopyBits((BitMap *)*colorLarge32BitPix,
				 (BitMap *)*bwLargePix,
				 &standardIconRect,
				 &standardIconRect,
				 srcCopy + ditherCopy,
				 NULL);
		
		// now we copy the 8 bit mask
		NewGWorld(&maskLarge8BitGWorld, 8, &standardIconRect, grayscaleTable, NULL, 0);
		SetGWorld(maskLarge8BitGWorld, NULL);
		EraseRect(&qd.thePort->portRect);
		maskLarge8BitPix = GetGWorldPixMap(maskLarge8BitGWorld);
		LockPixels(maskLarge8BitPix);
		
		CopyBits((BitMap *)*clipboardPix,
				 (BitMap *)*maskLarge8BitPix,
				 &largeMaskRect,
				 &standardIconRect,
				 srcCopy,
				 NULL);
		
		CropPixMap(maskLarge1BitPix, 4);
		CropPixMap(bwLargePix, 4);
		CropPixMap(colorLarge8BitPix, 32);
		CropPixMap(maskLarge8BitPix, 32);
		CropPixMap(colorLarge32BitPix, 128);
	}
	if (hasSmall)
	{
		// copying a piece of the clipboard into the 8 bit icon
		NewGWorld(&colorSmall8BitGWorld, 8, &smallIconRect, NULL, NULL, 0);
		SetGWorld(colorSmall8BitGWorld, NULL);
		EraseRect(&qd.thePort->portRect);
		colorSmall8BitPix = GetGWorldPixMap(colorSmall8BitGWorld);
		LockPixels(colorSmall8BitPix);
		
		CopyBits((BitMap *)*clipboardPix,
				 (BitMap *)*colorSmall8BitPix,
				 &smallIconRect,
				 &smallIconRect,
				 srcCopy + ditherCopy,
				 NULL);
		
		// now we're copying a piece of the clipboard into the 32 bit icon
		NewGWorld(&colorSmall32BitGWorld, 32, &smallIconRect, NULL, NULL, 0);
		SetGWorld(colorSmall32BitGWorld, NULL);
		EraseRect(&qd.thePort->portRect);
		colorSmall32BitPix = GetGWorldPixMap(colorSmall32BitGWorld);
		LockPixels(colorSmall32BitPix);
		
		CopyBits((BitMap *)*clipboardPix,
				 (BitMap *)*colorSmall32BitPix,
				 &smallIconRect,
				 &smallIconRect,
				 srcCopy,
				 NULL);
		
		// making the 1 bit mask		 
		NewGWorld(&maskSmall1BitGWorld, 1, &smallIconRect, NULL, NULL, 0);
		SetGWorld(maskSmall1BitGWorld, NULL);
		EraseRect(&qd.thePort->portRect);
		maskSmall1BitPix = GetGWorldPixMap(maskSmall1BitGWorld);
		LockPixels(maskSmall1BitPix);
		
		NewGWorld(&tempGWorld, 8, &smallIconRect, grayscaleTable, NULL, 0);
		SetGWorld(tempGWorld, NULL);
		EraseRect(&qd.thePort->portRect);
		tempPix = GetGWorldPixMap(tempGWorld);
		CopyBits((BitMap *)*clipboardPix, (BitMap *)*tempPix, &smallMaskRect, &smallIconRect, srcCopy, NULL);
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
				 (BitMap *)*maskSmall1BitPix,
				 &smallIconRect,
				 &smallIconRect,
				 srcCopy,
				 NULL);
		SetGWorld(startupPort, startupDevice);
		CopyBits((BitMap *)*maskSmall1BitPix,
				 &qd.thePort->portBits,
				 &smallIconRect,
				 &smallIconRect,
				 srcCopy,
				 NULL);
		
		UnlockPixels(tempPix);
		DisposeGWorld(tempGWorld);
		
		// creating the bw version
		
		NewGWorld(&bwSmallGWorld, 1, &smallIconRect, NULL, NULL, 0);
		SetGWorld(bwSmallGWorld, NULL);
		EraseRect(&qd.thePort->portRect);
		bwSmallPix = GetGWorldPixMap(bwSmallGWorld);
		LockPixels(bwSmallPix);
		
		CopyBits((BitMap *)*colorSmall32BitPix,
				 (BitMap *)*bwSmallPix,
				 &smallIconRect,
				 &smallIconRect,
				 srcCopy + ditherCopy,
				 NULL);
		
		// now we copy the 8 bit mask
		NewGWorld(&maskSmall8BitGWorld, 8, &smallIconRect, grayscaleTable, NULL, 0);
		SetGWorld(maskSmall8BitGWorld, NULL);
		EraseRect(&qd.thePort->portRect);
		maskSmall8BitPix = GetGWorldPixMap(maskSmall8BitGWorld);
		LockPixels(maskSmall8BitPix);
		
		CopyBits((BitMap *)*clipboardPix,
				 (BitMap *)*maskSmall8BitPix,
				 &smallMaskRect,
				 &smallIconRect,
				 srcCopy,
				 NULL);
		
		CropPixMap(maskSmall1BitPix, 2);
		CropPixMap(bwSmallPix, 2);
		CropPixMap(colorSmall8BitPix, 16);
		CropPixMap(maskSmall8BitPix, 16);
		CropPixMap(colorSmall32BitPix, 64);
	}
	
	SetGWorld(startupPort, startupDevice);
	icnsSize = sizeof(IconFamilyResource) - sizeof(IconFamilyElement);
	if (hasLarge)
		icnsSize += sizeof(IconFamilyElement) * 4 + large32BitSize - 4 + large8BitMaskSize - 4 + large1BitSize - 4 + large8BitSize - 4;
	if (hasSmall)
		icnsSize += sizeof(IconFamilyElement) * 4 + small32BitSize - 4 + small8BitMaskSize - 4 + small1BitSize - 4 + small8BitSize - 4;
	icnsHandle = (IconFamilyHandle) NewHandleClear(icnsSize);

	HLock((Handle)icnsHandle);
	
	(**icnsHandle).resourceType = 'icns';
	(**icnsHandle).resourceSize = icnsSize;
	if (hasLarge)
	{
		bwLargeSrc = (*bwLargePix)->baseAddr;
		maskLarge1BitSrc = (*maskLarge1BitPix)->baseAddr;
		colorLarge8BitSrc = (*colorLarge8BitPix)->baseAddr;
		colorLarge32BitSrc = (*colorLarge32BitPix)->baseAddr;
		maskLarge8BitSrc = (*maskLarge8BitPix)->baseAddr;
	}
	if (hasSmall)
	{
		bwSmallSrc = (*bwSmallPix)->baseAddr;
		maskSmall1BitSrc = (*maskSmall1BitPix)->baseAddr;
		colorSmall8BitSrc = (*colorSmall8BitPix)->baseAddr;
		colorSmall32BitSrc = (*colorSmall32BitPix)->baseAddr;
		maskSmall8BitSrc = (*maskSmall8BitPix)->baseAddr;
	}
	
	scheme = FSpOpenResFile(&badgesSpec, fsRdWrPerm);
	UseResFile(scheme);
	if (flags & createFile)
	{
		FSpDelete(&badgesSpec);

		FSpCreate(&badgesSpec, 'Bdgr', 'Bdgs', 0); /*smRoman = 0*/
		FSpCreateResFile(&badgesSpec, 'Bdgr', 'Bdgs', 0); /*smRoman = 0*/
	}
	if (flags & includeOldStyle)
	{
		currentIcon = Get1Resource('ICN#', icnsID);
		if (currentIcon != NULL)
		{
			bwLargeSrc = *currentIcon;
			maskLarge1BitSrc = &(*currentIcon)[large1BitSize/2];
		}
		currentIcon = Get1Resource('icl8', icnsID);
		if (currentIcon != NULL)
			colorLarge8BitSrc = *currentIcon;
			
		currentIcon = Get1Resource('ics#', icnsID);
		if (currentIcon != NULL)
		{
			bwSmallSrc = *currentIcon;
			maskSmall1BitSrc = &(*currentIcon)[small1BitSize/2];
		}
		currentIcon = Get1Resource('ics8', icnsID);
		if (currentIcon != NULL)
			colorSmall8BitSrc = *currentIcon;
	}
	
	if (hasLarge && hasSmall)
	{
		(**icnsHandle).elements[0].elementType = 'ICN#';
		(**icnsHandle).elements[0].elementSize = large1BitSize + sizeof(IconFamilyElement) - 4;
		BlockMove( bwLargeSrc,(**icnsHandle).elements[0].elementData, large1BitSize/2);
		BlockMove( maskLarge1BitSrc, &(**icnsHandle).elements[0].elementData[large1BitSize / 2], large1BitSize/2);
	
		elementPtr = (IconFamilyElement *)((char *)(**icnsHandle).elements + (**icnsHandle).elements[0].elementSize);
		elementPtr->elementType = 'icl8';
		elementPtr->elementSize = large8BitSize + sizeof(IconFamilyElement) - 4;
		BlockMove(colorLarge8BitSrc, elementPtr->elementData, large8BitSize);
		
		elementPtr = (IconFamilyElement *)((char *)(elementPtr) + elementPtr->elementSize);
		elementPtr->elementType = 'il32';
		elementPtr->elementSize = large32BitSize + sizeof(IconFamilyElement) - 4;
		BlockMove( colorLarge32BitSrc, elementPtr->elementData, large32BitSize);
		
		elementPtr = (IconFamilyElement *)((char *)(elementPtr) + elementPtr->elementSize);
		elementPtr->elementType = 'l8mk';
		elementPtr->elementSize = large8BitMaskSize + sizeof(IconFamilyElement) - 4;
		BlockMove(maskLarge8BitSrc, elementPtr->elementData, large8BitMaskSize);
		
		elementPtr = (IconFamilyElement *)((char *)(elementPtr) + elementPtr->elementSize);
		elementPtr->elementType = 'ics#';
		elementPtr->elementSize = small1BitSize + sizeof(IconFamilyElement) - 4;
		BlockMove( bwSmallSrc ,elementPtr->elementData, small1BitSize/2);
		BlockMove( maskSmall1BitSrc, &elementPtr->elementData[small1BitSize / 2], small1BitSize/2);
		
		elementPtr = (IconFamilyElement *)((char *)(elementPtr) + elementPtr->elementSize);
		elementPtr->elementType = 'ics8';
		elementPtr->elementSize = small8BitSize + sizeof(IconFamilyElement) - 4;
		BlockMove(colorSmall8BitSrc, elementPtr->elementData, small8BitSize);
		
		elementPtr = (IconFamilyElement *)((char *)(elementPtr) + elementPtr->elementSize);
		elementPtr->elementType = 'is32';
		elementPtr->elementSize = small32BitSize + sizeof(IconFamilyElement) - 4;
		BlockMove(colorSmall32BitSrc, elementPtr->elementData, small32BitSize);
		
		elementPtr = (IconFamilyElement *)((char *)(elementPtr) + elementPtr->elementSize);
		elementPtr->elementType = 's8mk';
		elementPtr->elementSize = small8BitMaskSize + sizeof(IconFamilyElement) - 4;
		BlockMove(maskSmall8BitSrc, elementPtr->elementData, small8BitMaskSize);	
	}
	
	if (hasLarge && !hasSmall)
	{
		(**icnsHandle).elements[0].elementType = 'ICN#';
		(**icnsHandle).elements[0].elementSize = large1BitSize + sizeof(IconFamilyElement) - 4;
		BlockMove( bwLargeSrc,(**icnsHandle).elements[0].elementData, large1BitSize/2);
		BlockMove( maskLarge1BitSrc, &(**icnsHandle).elements[0].elementData[large1BitSize / 2], large1BitSize/2);
	
		elementPtr = (IconFamilyElement *)((char *)(**icnsHandle).elements + (**icnsHandle).elements[0].elementSize);
		elementPtr->elementType = 'icl8';
		elementPtr->elementSize = large8BitSize + sizeof(IconFamilyElement) - 4;
		BlockMove(colorLarge8BitSrc, elementPtr->elementData, large8BitSize);
		
		elementPtr = (IconFamilyElement *)((char *)(elementPtr) + elementPtr->elementSize);
		elementPtr->elementType = 'il32';
		elementPtr->elementSize = large32BitSize + sizeof(IconFamilyElement) - 4;
		BlockMove(colorLarge32BitSrc, elementPtr->elementData, large32BitSize);
		
		elementPtr = (IconFamilyElement *)((char *)(elementPtr) + elementPtr->elementSize);
		elementPtr->elementType = 'l8mk';
		elementPtr->elementSize = large8BitMaskSize + sizeof(IconFamilyElement) - 4;
		BlockMove(maskLarge8BitSrc, elementPtr->elementData, large8BitMaskSize);
	}
	
	if (!hasLarge && hasSmall)
	{
		(**icnsHandle).elements[0].elementType = 'ics#';
		(**icnsHandle).elements[0].elementSize = small1BitSize + sizeof(IconFamilyElement) - 4;
		BlockMove( bwSmallSrc,(**icnsHandle).elements[0].elementData, small1BitSize/2);
		BlockMove( maskSmall1BitSrc, &(**icnsHandle).elements[0].elementData[small1BitSize / 2], small1BitSize/2);
		
		elementPtr = (IconFamilyElement *)((char *)(**icnsHandle).elements + (**icnsHandle).elements[0].elementSize);
		elementPtr->elementType = 'ics8';
		elementPtr->elementSize = small8BitSize + sizeof(IconFamilyElement) - 4;
		BlockMove(colorSmall8BitSrc, elementPtr->elementData, small8BitSize);
		
		elementPtr = (IconFamilyElement *)((char *)(elementPtr) + elementPtr->elementSize);
		elementPtr->elementType = 'is32';
		elementPtr->elementSize = small32BitSize + sizeof(IconFamilyElement) - 4;
		BlockMove(colorSmall32BitSrc, elementPtr->elementData, small32BitSize);
		
		elementPtr = (IconFamilyElement *)((char *)(elementPtr) + elementPtr->elementSize);
		elementPtr->elementType = 's8mk';
		elementPtr->elementSize = small8BitMaskSize + sizeof(IconFamilyElement) - 4;
		BlockMove(maskSmall8BitSrc, elementPtr->elementData, small8BitMaskSize);	
	}
	
	HUnlock((Handle)icnsHandle);

	
	
	
	oldIcns = Get1Resource('icns', icnsID);
	if (oldIcns != NULL)
	{
		RemoveResource(oldIcns);
		UpdateResFile(scheme);
		CloseResFile(scheme);
		//FSClose(scheme);
		UseResFile(appFile);
		scheme = FSpOpenResFile(&badgesSpec, fsRdWrPerm);
		UseResFile(scheme);
	}
	DetachResource((Handle)icnsHandle);
	AddResource((Handle)icnsHandle, 'icns', icnsID, icnsName);
	SetResAttrs((Handle)icnsHandle, resSysHeap + resPurgeable);
	ChangedResource((Handle)icnsHandle);
	WriteResource((Handle)icnsHandle);
	UpdateResFile(scheme);
	CloseResFile(scheme);
	UseResFile(appFile);
	//FSClose(scheme);

	UnlockPixels(clipboardPix);
	DisposeGWorld(clipboardGWorld);
	
	if (hasLarge)
	{
		UnlockPixels(colorLarge32BitPix);
		UnlockPixels(colorLarge8BitPix);
		UnlockPixels(maskLarge8BitPix);
		UnlockPixels(maskLarge1BitPix);
		UnlockPixels(bwLargePix);
		
		DisposeGWorld(colorLarge32BitGWorld);
		DisposeGWorld(colorLarge8BitGWorld);
		DisposeGWorld(maskLarge8BitGWorld);
		DisposeGWorld(maskLarge1BitGWorld);
		DisposeGWorld(bwLargeGWorld);
	}
	if (hasSmall)
	{
		UnlockPixels(colorSmall32BitPix);
		UnlockPixels(colorSmall8BitPix);
		UnlockPixels(maskSmall8BitPix);
		UnlockPixels(maskSmall1BitPix);
		UnlockPixels(bwSmallPix);
		
		DisposeGWorld(colorSmall32BitGWorld);
		DisposeGWorld(colorSmall32BitGWorld);
		DisposeGWorld(maskSmall8BitGWorld);
		DisposeGWorld(maskSmall1BitGWorld);
		DisposeGWorld(bwSmallGWorld);
	}
	DisposeHandle((Handle)grayscaleTable);
	
	HUnlock(pic);
	DisposeHandle(pic);
	
	HUnlock((Handle)grayscaleTable);
	DisposeHandle((Handle)grayscaleTable);
	
	DisposeHandle((Handle)icnsHandle);
}
