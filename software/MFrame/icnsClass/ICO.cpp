#include "ICO.h"
#include "icnsClass.h"

void icnsClass::LoadICO()
{
	ICONDIR			iconDir;
	unsigned char	*iconCursor, *maskCursor;
	long			sourceSize;
	GWorldPtr		tempGW, maskGW;
	PixMapHandle	tempPix = NULL, maskPix = NULL, targetIconPix, targetMaskPix;
	CTabHandle		tempTable;
	long			noOfColors;
	Rect			iconRect;
	
	LoadIconDirFromFile(&iconDir, srcFileSpec);
	
	members = 0;
	
	SAVECOLORS;
	SAVEGWORLD;
	SetGWorld(il32GW, NULL);
	
	for (int i=0; i < iconDir.idCount; i++)
	{
		SetRect(&iconRect,
			 	0, 0,
			 	iconDir.idEntries[i].iconImage->icHeader.biWidth,
			 	iconDir.idEntries[i].iconImage->icHeader.biHeight/2);
			 	
		switch (iconDir.idEntries[i].iconImage->icHeader.biBitCount)
		{
			// 24 bit
			case 24:
				
				NewGWorldUnpadded(&tempGW, 32, &iconRect, NULL);
				tempPix = GetGWorldPixMap(tempGW);
				LockPixels(tempPix);
				iconCursor = (unsigned char*)(**tempPix).baseAddr;
				
				NewGWorldUnpadded(&maskGW, 1, &iconRect, NULL);
				maskPix = GetGWorldPixMap(maskGW);
				LockPixels(maskPix);
				maskCursor = (unsigned char*)(**maskPix).baseAddr;
				
				sourceSize = iconDir.idEntries[i].iconImage->icHeader.biWidth *
							 iconDir.idEntries[i].iconImage->icHeader.biHeight/2 *
							 iconDir.idEntries[i].iconImage->icHeader.biBitCount/8;
				
				iconCursor += sourceSize * 4/3 - 4;
								     
				for (int j=0; j < sourceSize; j+=3)
				{
					iconCursor[1] = iconDir.idEntries[i].iconImage->icXOR[j + 2];
					iconCursor[2] = iconDir.idEntries[i].iconImage->icXOR[j + 1];
					iconCursor[3] = iconDir.idEntries[i].iconImage->icXOR[j];
					iconCursor -=4;
				}
				
				
				sourceSize = ((**maskPix).rowBytes & 0x3FFF) * ((**maskPix).bounds.bottom - (**maskPix).bounds.top);
				
				ReverseCopyPadded(iconDir.idEntries[i].iconImage->icAND, maskCursor, 
								  sourceSize, iconDir.idEntries[i].iconImage->icHeader.biWidth, (**maskPix).rowBytes & 0x3FFF,
								  SwapBits, invert);
				
				if (iconDir.idEntries[i].bWidth <= 16)
				{
					members |= (icsm | is32);
					targetMaskPix = icsmPix; targetIconPix = is32Pix;
				}
				else if (iconDir.idEntries[i].bWidth <= 32)
				{
					members |= (icnm | il32);
					targetMaskPix = icnmPix; targetIconPix = il32Pix;
				}
				else
				{
					members |= (ichm | ih32);
					targetMaskPix = ichmPix; targetIconPix = ih32Pix;
				}
				break;
			
			// 8 bit
			case 8:
				if (iconDir.idEntries[i].iconImage->icHeader.biClrUsed != 0)
					noOfColors = iconDir.idEntries[i].iconImage->icHeader.biClrUsed;
				else noOfColors = 256;

				tempTable = (CTabHandle)NewHandle(sizeof(ColorTable) + (noOfColors - 1 ) * sizeof(ColorSpec));
				(**tempTable).ctSeed = 231654213;
				(**tempTable).ctFlags = 0;
				(**tempTable).ctSize = noOfColors - 1;
				for (int j=0; j < noOfColors; j++)
				{
					(**tempTable).ctTable[j].value = j;
					(**tempTable).ctTable[j].rgb.red = iconDir.idEntries[i].iconImage->icColors[j].rgbRed << 8;
					(**tempTable).ctTable[j].rgb.green = iconDir.idEntries[i].iconImage->icColors[j].rgbGreen << 8;
					(**tempTable).ctTable[j].rgb.blue = iconDir.idEntries[i].iconImage->icColors[j].rgbBlue << 8;
				}

				NewGWorldUnpadded(&tempGW, 8, &iconRect, tempTable);
				tempPix = GetGWorldPixMap(tempGW);
				LockPixels(tempPix);
				iconCursor = (unsigned char*)(**tempPix).baseAddr;

				NewGWorldUnpadded(&maskGW, 1, &iconRect, NULL);
				maskPix = GetGWorldPixMap(maskGW);
				LockPixels(maskPix);
				maskCursor = (unsigned char*)(**maskPix).baseAddr;

				sourceSize = iconDir.idEntries[i].iconImage->icHeader.biWidth *
							 iconDir.idEntries[i].iconImage->icHeader.biHeight/2 *
							 iconDir.idEntries[i].iconImage->icHeader.biBitCount/8;

								     
				for (int j=0; j < sourceSize; j++)
					iconCursor[sourceSize - j - 1] = iconDir.idEntries[i].iconImage->icXOR[j];

				sourceSize = ((**maskPix).rowBytes & 0x3FFF) * ((**maskPix).bounds.bottom - (**maskPix).bounds.top);
				
				ReverseCopyPadded(iconDir.idEntries[i].iconImage->icAND, maskCursor, 
								  sourceSize, iconDir.idEntries[i].iconImage->icHeader.biWidth, (**maskPix).rowBytes & 0x3FFF,
								  SwapBits, invert);
				
					
				if (iconDir.idEntries[i].bWidth <= 16)
				{
					CTabHandle		colorTable;
					PixMapHandle	tempPix2;
					GWorldPtr		tempGW2;
					
					colorTable = GetCTable(rWindows8BitColors);
					
					NewIconSet(&tempGW2, &tempPix2, smallIconRect, 8, colorTable);
					
					DisposeCTable(colorTable);
					
					UnlockPixels(ics8Pix);
					DisposeGWorld(ics8GW);
					
					ics8Pix = tempPix2;
					ics8GW = tempGW2;
					
					members |= (icsm | ics8);
					targetMaskPix = icsmPix; targetIconPix = ics8Pix;
					if (!(members & is32))
					{
						CopyPixMap(tempPix, is32Pix, &iconRect, &smallIconRect, srcCopy + ditherCopy, NULL);
						CopyPixMap(maskPix, is32Pix, &iconRect, &smallIconRect, notSrcBic, NULL);
						FlipHorizontal(is32Pix);
						members |= is32;
					}
				}
				else if (iconDir.idEntries[i].bWidth <= 32)
				{
					CTabHandle		colorTable;
					PixMapHandle	tempPix2;
					GWorldPtr		tempGW2;
					
					colorTable = GetCTable(rWindows8BitColors);
					
					NewIconSet(&tempGW2, &tempPix2, largeIconRect, 8, colorTable);
					
					DisposeCTable(colorTable);
					
					UnlockPixels(icl8Pix);
					DisposeGWorld(icl8GW);
					
					icl8Pix = tempPix2;
					icl8GW = tempGW2;
					
					members |= (icnm | icl8);
					targetMaskPix = icnmPix; targetIconPix = icl8Pix;
					if (!(members & il32))
					{
						CopyPixMap(tempPix, il32Pix, &iconRect, &largeIconRect, srcCopy + ditherCopy, NULL);
						CopyPixMap(maskPix, il32Pix, &iconRect, &largeIconRect, notSrcBic, NULL);
						FlipHorizontal(il32Pix);
						members |= il32;
					}
				}
				else
				{
					CTabHandle		colorTable;
					PixMapHandle	tempPix2;
					GWorldPtr		tempGW2;
					
					colorTable = GetCTable(rWindows8BitColors);
					
					NewIconSet(&tempGW2, &tempPix2, hugeIconRect, 8, colorTable);
					
					DisposeCTable(colorTable);
					
					UnlockPixels(ich8Pix);
					DisposeGWorld(ich8GW);
					
					ich8Pix = tempPix2;
					ich8GW = tempGW2;
					
					members |= (ichm | ich8);
					targetMaskPix = ichmPix; targetIconPix = ich8Pix;
					if (!(members & ih32))
					{
						CopyPixMap(tempPix, ih32Pix, &iconRect, &hugeIconRect, srcCopy + ditherCopy, NULL);
						CopyPixMap(maskPix, ih32Pix, &iconRect, &hugeIconRect, notSrcBic, NULL);
						FlipHorizontal(ih32Pix);
						members |= ih32;
					}
				}

				DisposeCTable(tempTable);
				break;
			
			// 4 bit
			case 4:
				if (iconDir.idEntries[i].iconImage->icHeader.biClrUsed != 0)
					noOfColors = iconDir.idEntries[i].iconImage->icHeader.biClrUsed;
				else noOfColors = 16;

				tempTable = (CTabHandle)NewHandle(sizeof(ColorTable) + (noOfColors - 1 ) * sizeof(ColorSpec));
				(**tempTable).ctSeed = 231654213;
				(**tempTable).ctFlags = 0;
				(**tempTable).ctSize = noOfColors - 1;
				for (int j=0; j < noOfColors; j++)
				{
					(**tempTable).ctTable[j].value = j;
					(**tempTable).ctTable[j].rgb.red = iconDir.idEntries[i].iconImage->icColors[j].rgbRed << 8;
					(**tempTable).ctTable[j].rgb.green = iconDir.idEntries[i].iconImage->icColors[j].rgbGreen << 8;
					(**tempTable).ctTable[j].rgb.blue = iconDir.idEntries[i].iconImage->icColors[j].rgbBlue << 8;
				}

				NewGWorldUnpadded(&tempGW, 4, &iconRect, tempTable);
				tempPix = GetGWorldPixMap(tempGW);
				LockPixels(tempPix);
				iconCursor = (unsigned char*)(**tempPix).baseAddr;

				NewGWorldUnpadded(&maskGW, 1, &iconRect, NULL);
				maskPix = GetGWorldPixMap(maskGW);
				LockPixels(maskPix);
				maskCursor = (unsigned char*)(**maskPix).baseAddr;

				sourceSize = iconDir.idEntries[i].iconImage->icHeader.biWidth *
							 iconDir.idEntries[i].iconImage->icHeader.biHeight/2 *
							 iconDir.idEntries[i].iconImage->icHeader.biBitCount/8;

								     
				for (int j=0; j < sourceSize; j++)
					iconCursor[sourceSize - j - 1] = SwapNibble(iconDir.idEntries[i].iconImage->icXOR[j]);

				sourceSize = ((**maskPix).rowBytes & 0x3FFF) * ((**maskPix).bounds.bottom - (**maskPix).bounds.top);
				
				ReverseCopyPadded(iconDir.idEntries[i].iconImage->icAND, maskCursor, 
								  sourceSize, iconDir.idEntries[i].iconImage->icHeader.biWidth, (**maskPix).rowBytes & 0x3FFF,
								  SwapBits, invert);
								  
				if (iconDir.idEntries[i].bWidth <= 16)
				{
					CTabHandle colorTable;
					PixMapHandle	tempPix2;
					GWorldPtr		tempGW2;
					
					colorTable = GetCTable(rWindows4BitColors);
					
					NewIconSet(&tempGW2, &tempPix2, smallIconRect, 4, colorTable);
					
					DisposeCTable(colorTable);
					
					UnlockPixels(ics4Pix);
					DisposeGWorld(ics4GW);
					
					ics4Pix = tempPix2;
					ics4GW = tempGW2;
					
					members |= (icsm | ics4);
					targetMaskPix = icsmPix; targetIconPix = ics4Pix;
						
				}
				else if (iconDir.idEntries[i].bWidth <= 32)
				{
					CTabHandle colorTable;
					PixMapHandle	tempPix2;
					GWorldPtr		tempGW2;
					
					colorTable = GetCTable(rWindows4BitColors);
					
					NewIconSet(&tempGW2, &tempPix2, largeIconRect, 4, colorTable);
					
					DisposeCTable(colorTable);
					
					UnlockPixels(icl4Pix);
					DisposeGWorld(icl4GW);
					
					icl4Pix = tempPix2;
					icl4GW = tempGW2;

					members |= (icnm | icl4);
					targetMaskPix = icnmPix; targetIconPix = icl4Pix;
				}
				else
				{
					CTabHandle colorTable;
					PixMapHandle	tempPix2;
					GWorldPtr		tempGW2;
					
					colorTable = GetCTable(rWindows4BitColors);
					
					NewIconSet(&tempGW2, &tempPix2, hugeIconRect, 4, colorTable);
					
					DisposeCTable(colorTable);
					
					UnlockPixels(ich4Pix);
					DisposeGWorld(ich4GW);
					
					ich4Pix = tempPix2;
					ich4GW = tempGW2;

					members |= (ichm | ich4);
					targetMaskPix = ichmPix; targetIconPix = ich4Pix;
				}
				DisposeCTable(tempTable);
						
				break;
			
			// 1 bit
			case 1:
				if (iconDir.idEntries[i].iconImage->icHeader.biClrUsed != 0)
					noOfColors = iconDir.idEntries[i].iconImage->icHeader.biClrUsed;
				else noOfColors = 2;

				tempTable = (CTabHandle)NewHandle(sizeof(ColorTable) + (noOfColors - 1 ) * sizeof(ColorSpec));
				(**tempTable).ctSeed = 231654213;
				(**tempTable).ctFlags = 0;
				(**tempTable).ctSize = noOfColors - 1;
				for (int j=0; j < noOfColors; j++)
				{
					(**tempTable).ctTable[j].value = j;
					(**tempTable).ctTable[j].rgb.red = iconDir.idEntries[i].iconImage->icColors[j].rgbRed << 8;
					(**tempTable).ctTable[j].rgb.green = iconDir.idEntries[i].iconImage->icColors[j].rgbGreen << 8;
					(**tempTable).ctTable[j].rgb.blue = iconDir.idEntries[i].iconImage->icColors[j].rgbBlue << 8;
				}

				NewGWorldUnpadded(&tempGW, 1, &iconRect, tempTable);
				tempPix = GetGWorldPixMap(tempGW);
				LockPixels(tempPix);
				iconCursor = (unsigned char*)(**tempPix).baseAddr;
				
				NewGWorldUnpadded(&maskGW, 1, &iconRect, NULL);
				maskPix = GetGWorldPixMap(maskGW);
				LockPixels(maskPix);
				maskCursor = (unsigned char*)(**maskPix).baseAddr;

				sourceSize = ((**tempPix).rowBytes & 0x3FFF) * ((**tempPix).bounds.bottom - (**tempPix).bounds.top);

				ReverseCopyPadded(iconDir.idEntries[i].iconImage->icXOR, iconCursor, 
								  sourceSize, iconDir.idEntries[i].iconImage->icHeader.biWidth, (**tempPix).rowBytes & 0x3FFF,
								  SwapBits, 0);
								  
				

				sourceSize = ((**maskPix).rowBytes & 0x3FFF) * ((**maskPix).bounds.bottom - (**maskPix).bounds.top);
				
				ReverseCopyPadded(iconDir.idEntries[i].iconImage->icAND, maskCursor, 
								  sourceSize, iconDir.idEntries[i].iconImage->icHeader.biWidth, (**maskPix).rowBytes & 0x3FFF,
								  SwapBits, invert);
								  
				if (iconDir.idEntries[i].bWidth <= 16)
				{
					members |= (icsm | icsi);
					targetMaskPix = icsmPix; targetIconPix = icsiPix;
				}
				else if (iconDir.idEntries[i].bWidth <= 32)
				{
					members |= (icnm | icni);
					targetMaskPix = icnmPix; targetIconPix = icniPix;
				}
				else
				{
					members |= (ichm | ichi);
					targetMaskPix = ichmPix; targetIconPix = ichiPix;
				}
				DisposeCTable(tempTable);
					
				break;
			default:
				tempPix = NULL; maskPix = NULL;
				break;
		}
		if (tempPix != NULL && maskPix != NULL)
		{
			FlipHorizontal(maskPix);
			FlipHorizontal(tempPix);
			CopyPixMap(tempPix, targetIconPix, &iconRect, &(**targetIconPix).bounds, srcCopy, NULL);
			CopyPixMap(maskPix, targetMaskPix, &iconRect, &(**targetIconPix).bounds, srcCopy, NULL);
			
			CopyPixMap(targetMaskPix, targetIconPix, &(**targetMaskPix).bounds, &(**targetIconPix).bounds, notSrcBic, NULL);
					
			UnlockPixels(tempPix);
			DisposeGWorld(tempGW);
			
			UnlockPixels(maskPix);
			DisposeGWorld(maskGW);
		}
						
	}

	
	for (int i=0; i < iconDir.idCount; i++)
	{
		delete [] iconDir.idEntries[i].iconImage->icColors;
		delete [] iconDir.idEntries[i].iconImage->icXOR;
		delete iconDir.idEntries[i].iconImage;
	}
		
	delete [] iconDir.idEntries;
	
	RESTOREGWORLD;
	RESTORECOLORS;
}

void icnsClass::SaveICO(void)
{
	short file;
	long writeLength, iconCount, dataOffset;
	unsigned short	tempShort;
	
	RefreshIconMembers();
	
	FSpOpenDF(&srcFileSpec, fsRdWrPerm, &file);
	
	SetFPos(file, fsFromStart, 0);
	
	iconCount = 0;
	if (members & ih32) iconCount++; if (members & il32) iconCount++; if (members & is32) iconCount++;
	if (members & ich8) iconCount++; if (members & icl8) iconCount++; if (members & ics8) iconCount++;
	if (members & ich4) iconCount++; if (members & icl4) iconCount++; if (members & ics4) iconCount++;
	if (members & ichi) iconCount++; if (members & icni) iconCount++; if (members & icsi) iconCount++;
	
	writeLength = sizeof(short);
	tempShort = 0; FSWriteLE(file, &writeLength, &tempShort); // reserved, must be zero
	tempShort = 1; FSWriteLE(file, &writeLength, &tempShort); // resource type, 1 for icons
	tempShort = iconCount; FSWriteLE(file, &writeLength, &tempShort); // number of icons
	
	dataOffset = 6 + iconCount * 16;
	
	if (members & ih32)
		AddICOMember(file, 48, 48, 0, &dataOffset, 24, NULL, ih32Pix, ichmPix);
	if (members & il32)
		AddICOMember(file, 32, 32, 0, &dataOffset, 24, NULL, il32Pix, icnmPix);
	if (members & is32)
		AddICOMember(file, 16, 16, 0, &dataOffset, 24, NULL, is32Pix, icsmPix);
	
	if (members & ich8)
		if (members & ih32)
			AddIndexedICOMember(file, ih32Pix, ih32GW, ichmPix, &dataOffset);
		else
			AddICOMember(file, 48, 48, 0, &dataOffset, 8, (**ich8Pix).pmTable, ich8Pix, ichmPix);
			
	if (members & icl8)
		if (members & il32)
			AddIndexedICOMember(file, il32Pix, il32GW, icnmPix, &dataOffset);
		else
			AddICOMember(file, 32, 32, 0, &dataOffset, 8, (**icl8Pix).pmTable, icl8Pix, icnmPix);
			
	if (members & ics8)
		if (members & is32)
			AddIndexedICOMember(file, is32Pix, is32GW, icsmPix, &dataOffset);
		else
			AddICOMember(file, 16, 16, 0, &dataOffset, 8, (**ics8Pix).pmTable, ics8Pix, icsmPix);
	
	if (members & ich4)
		AddICOMember(file, 48, 48, 0, &dataOffset, 4, (**ich4Pix).pmTable, ich4Pix, ichmPix);
	if (members & icl4)
		AddICOMember(file, 32, 32, 0, &dataOffset, 4, (**icl4Pix).pmTable, icl4Pix, icnmPix);
	if (members & ics4)
		AddICOMember(file, 16, 16, 0, &dataOffset, 4, (**ics4Pix).pmTable, ics4Pix, icsmPix);
	
	if (members & ichi)
		AddICOMember(file, 48, 48, 0, &dataOffset, 1, (**ichiPix).pmTable, ichiPix, ichmPix);
	if (members & icni)
		AddICOMember(file, 32, 32, 0, &dataOffset, 1, (**icniPix).pmTable, icniPix, icnmPix);
	if (members & icsi)
		AddICOMember(file, 16, 16, 0, &dataOffset, 1, (**icsiPix).pmTable, icsiPix, icsmPix);
		
	FSClose(file);
}

void AddIndexedICOMember(short file, PixMapHandle iconPix, GWorldPtr iconGW, PixMapHandle maskPix, long *dataOffset)
{
	GWorldPtr 		tempGW;
	PixMapHandle	tempPix;
	CTabHandle		colorTable;
	PictInfo		pictInfo;
	
	GetPixMapInfo(iconPix, &pictInfo, returnColorTable, 256, systemMethod, 0);
	
	colorTable = pictInfo.theColorTable;
	
	NewGWorldUnpadded(&tempGW, 8, &(**iconPix).bounds, colorTable);
	tempPix = GetGWorldPixMap(tempGW);
	LockPixels(tempPix);
	
	SAVEGWORLD;
	SAVECOLORS;
	
	SetGWorld(iconGW, NULL);
	
	CopyPixMap(iconPix, tempPix, &(**iconPix).bounds, &(**iconPix).bounds, srcCopy, NULL);
	
	AddICOMember(file, (**iconPix).bounds.right, (**iconPix).bounds.bottom, 0, dataOffset, 8, colorTable, tempPix, maskPix);

	UnlockPixels(tempPix);
	DisposeGWorld(tempGW);
	
	RESTORECOLORS;
	RESTOREGWORLD;
}

void AddICOMember(short file, int width,int height, int colorCount, long* dataOffset, int bps, CTabHandle colorTable, PixMapHandle iconPix, PixMapHandle maskPix)
{
	long			writeLength;
	unsigned short	tempShort;
	unsigned char 	tempChar;
	unsigned long	tempLong;
	unsigned char *buff, *srcCursor;
	long			imageSize, maskSize, colorsSize, structSize, oldPos, size;
	OSErr			err;
	
	GWorldPtr		tempGW;
	PixMapHandle	tempPix;
	SAVEGWORLD;
	SAVECOLORS;	
	NewGWorldUnpadded(&tempGW, 32, &(**maskPix).bounds, NULL);
	tempPix = GetGWorldPixMap(tempGW);
	LockPixels(tempPix);
	SetGWorld(tempGW, NULL);
	
	
	CopyPixMap(maskPix, tempPix, &(**maskPix).bounds, &(**maskPix).bounds, srcCopy, NULL);
	InvertRect(&(**maskPix).bounds);
	CopyMask((BitMap*)*iconPix,
			 (BitMap*)*maskPix,
			 (BitMap*)*tempPix,
			 &(**iconPix).bounds,
			 &(**maskPix).bounds,
			 &(**tempPix).bounds);
			  
	CopyPixMap(tempPix, iconPix, &(**maskPix).bounds, &(**iconPix).bounds, srcCopy, NULL); 	
	RESTOREGWORLD;
	RESTORECOLORS;
	UnlockPixels(tempPix);
	DisposeGWorld(tempGW);
	
	
	
	if (width * bps % 32 != 0)
		imageSize = height * (width * bps / 32 + 1) * 32 / 8;
	else
		imageSize = height * width * bps/8;
	
	if (width % 32 != 0)
		maskSize = height * (width / 32 + 1) * 32 / 8;
	else
		maskSize = width * height / 8;
		
	structSize = 40;
	
	if (colorTable == NULL)
		colorsSize = 0;
	else
		colorsSize = ((**colorTable).ctSize + 1) * sizeof(RGBQUAD);
	
	writeLength = sizeof(char);
	tempChar = width;  FSWriteLE(file, &writeLength, &tempChar); // width
	tempChar = height;  FSWriteLE(file, &writeLength, &tempChar); // height
	tempChar = colorCount;  FSWriteLE(file, &writeLength, &tempChar); // color count, 0 for 8 bits+
	tempChar = 0;  FSWriteLE(file, &writeLength, &tempChar); // reserved, must be zero
	
	writeLength = sizeof(short);
	tempShort = 0; FSWriteLE(file, &writeLength, &tempShort); // number of planes (0)
	tempShort = 0; FSWriteLE(file, &writeLength, &tempShort); // bits per pixel (0)
	
	writeLength = sizeof(long);
	tempLong = structSize + colorsSize + imageSize + maskSize; FSWriteLE(file, &writeLength, &tempLong); // size of resource
	tempLong = *dataOffset; FSWriteLE(file, &writeLength, &tempLong); // image offset
	
	GetFPos(file, &oldPos);
	SetEOF(file, *dataOffset); // grow the file
	err = SetFPos(file, fsFromStart, *dataOffset); // at offset
	
	*dataOffset += structSize + colorsSize + imageSize + maskSize;
	
	writeLength = sizeof(long);
	tempLong = structSize; FSWriteLE(file, &writeLength, &tempLong); // size of structure, always 40
	tempLong = width; FSWriteLE(file, &writeLength, &tempLong); // width
	tempLong = height * 2; FSWriteLE(file, &writeLength, &tempLong); // height (double)
	
	writeLength = sizeof(short);
	tempShort = 1; FSWriteLE(file, &writeLength, &tempShort); // no of planes
	tempShort = bps; FSWriteLE(file, &writeLength, &tempShort); // bit count
	
	writeLength = sizeof(long);
	tempLong = 0; FSWriteLE(file, &writeLength, &tempLong); // compression, must be 0
	tempLong = imageSize + maskSize; FSWriteLE(file, &writeLength, &tempLong); // image size
	tempLong = 0; FSWriteLE(file, &writeLength, &tempLong); // X pels per meter, must be 0
	tempLong = 0; FSWriteLE(file, &writeLength, &tempLong); // Y pels per meter, must be 0
	tempLong = 0; FSWriteLE(file, &writeLength, &tempLong); // colors used
	tempLong = 0; FSWriteLE(file, &writeLength, &tempLong); // colors important
	
	// colors
	if (colorTable != NULL)
	{
		writeLength = sizeof(char);
		for (int i=0; i <= (**colorTable).ctSize; i++)
		{
			tempChar = (**colorTable).ctTable[i].rgb.blue >> 8; FSWriteLE(file, &writeLength, &tempChar);
			tempChar = (**colorTable).ctTable[i].rgb.green >> 8; FSWriteLE(file, &writeLength, &tempChar);
			tempChar = (**colorTable).ctTable[i].rgb.red >> 8; FSWriteLE(file, &writeLength, &tempChar);
			tempChar = 0 >> 8; FSWriteLE(file, &writeLength, &tempChar);
		}
	}
	
	// icon data
	writeLength = imageSize;
	buff = new unsigned char[writeLength];
	FlipHorizontal(iconPix);
	srcCursor = (unsigned char*)(**iconPix).baseAddr;
	switch (bps)
	{
		case 24:
			for (int i=0; i < writeLength; i+=3)
			{
				buff[i] = srcCursor[(writeLength * 4/3) - (i* 4/3) - 1];
				buff[i + 1] = srcCursor[(writeLength * 4/3) - (i * 4/3) - 2];
				buff[i + 2] = srcCursor[(writeLength * 4/3) - (i * 4/3)  - 3];
			}
			break;
		case 8:
			for (int i=0; i < writeLength; i++)
				buff[i] = srcCursor[writeLength - i - 1];
			break;
		case 4:
			for (int i=0; i < writeLength; i++)
				buff[i] = SwapNibble(srcCursor[writeLength - i - 1]);
			break;
		case 1:
			size = ((**iconPix).rowBytes & 0x3FFF) * ((**iconPix).bounds.bottom - (**iconPix).bounds.top);
			ReverseCopyUnpadded(srcCursor, buff, size, width, SwapBits, 0); 
			break;
	}
	FSWrite(file, &writeLength, buff);
	FlipHorizontal(iconPix);
	delete [] buff;
	
	// mask data
	writeLength = maskSize;
	buff = new unsigned char[writeLength];
	FlipHorizontal(maskPix);
	srcCursor = (unsigned char*)(**maskPix).baseAddr;
	
	size = ((**maskPix).rowBytes & 0x3FFF) * ((**maskPix).bounds.bottom - (**maskPix).bounds.top);
	ReverseCopyUnpadded(srcCursor, buff, size, width, SwapBits, invert); 
	
	FSWrite(file, &writeLength, buff);
	FlipHorizontal(maskPix);
	delete [] buff;
	
	SetFPos(file, fsFromStart, oldPos);
	
	NewGWorldUnpadded(&tempGW, 32, &(**maskPix).bounds, NULL);
	tempPix = GetGWorldPixMap(tempGW);
	LockPixels(tempPix);
	SetGWorld(tempGW, NULL);
	EraseRect(&(**maskPix).bounds);

	CopyMask((BitMap*)*iconPix,
			 (BitMap*)*maskPix,
			 (BitMap*)*tempPix,
			 &(**iconPix).bounds,
			 &(**maskPix).bounds,
			 &(**tempPix).bounds);
	
	CopyPixMap(tempPix, iconPix, &(**maskPix).bounds, &(**iconPix).bounds, srcCopy, NULL); 
	
	RESTOREGWORLD;
	RESTORECOLORS;
	UnlockPixels(tempPix);
	DisposeGWorld(tempGW);
}

void LoadIconDirFromFile(ICONDIR* iconDir, FSSpec srcFileSpec)
{
	short file;
	OSErr err;
	long readLength, savedPos, noOfColors;
	
	FSpOpenDF(&srcFileSpec, fsRdPerm, &file);
	
	SetFPos(file, fsFromStart, 0);
	
	readLength = sizeof(short);
	
	FSReadLE(file, &readLength, &iconDir->idReserved);
	FSReadLE(file, &readLength, &iconDir->idType);
	FSReadLE(file, &readLength, &iconDir->idCount);
	
	iconDir->idEntries = new ICONDIRENTRY[iconDir->idCount];
	
	for (int i=0; i < iconDir->idCount; i++)
	{
		readLength = sizeof(char);
		
		FSReadLE(file, &readLength, &iconDir->idEntries[i].bWidth);
		FSReadLE(file, &readLength, &iconDir->idEntries[i].bHeight);
		FSReadLE(file, &readLength, &iconDir->idEntries[i].bColorCount);
		FSReadLE(file, &readLength, &iconDir->idEntries[i].bReserved);
		
		readLength = sizeof(short);
		
		FSReadLE(file, &readLength, &iconDir->idEntries[i].wPlanes);
		FSReadLE(file, &readLength, &iconDir->idEntries[i].wBitCount);
		
		readLength = sizeof(long);
		
		FSReadLE(file, &readLength, &iconDir->idEntries[i].dwBytesInRes);
		FSReadLE(file, &readLength, &iconDir->idEntries[i].dwImageOffset);
		
		iconDir->idEntries[i].iconImage = new ICONIMAGE;
		
		GetFPos(file, &savedPos);
		
		SetFPos(file, fsFromStart, iconDir->idEntries[i].dwImageOffset);
		
		readLength = sizeof(long);
		FSReadLE(file, &readLength, &iconDir->idEntries[i].iconImage->icHeader.biSize);
		FSReadLE(file, &readLength, &iconDir->idEntries[i].iconImage->icHeader.biWidth);
		FSReadLE(file, &readLength, &iconDir->idEntries[i].iconImage->icHeader.biHeight);
		
		readLength = sizeof(short);
		FSReadLE(file, &readLength, &iconDir->idEntries[i].iconImage->icHeader.biPlanes);
		FSReadLE(file, &readLength, &iconDir->idEntries[i].iconImage->icHeader.biBitCount);
		
		readLength = sizeof(long);
		FSReadLE(file, &readLength, &iconDir->idEntries[i].iconImage->icHeader.biCompression);
		FSReadLE(file, &readLength, &iconDir->idEntries[i].iconImage->icHeader.biSizeImage);
		FSReadLE(file, &readLength, &iconDir->idEntries[i].iconImage->icHeader.biXPelsPerMeter);
		FSReadLE(file, &readLength, &iconDir->idEntries[i].iconImage->icHeader.biYPelsPerMeter);
		FSReadLE(file, &readLength, &iconDir->idEntries[i].iconImage->icHeader.biClrUsed);
		FSReadLE(file, &readLength, &iconDir->idEntries[i].iconImage->icHeader.biClrImportant);
		
		if (iconDir->idEntries[i].iconImage->icHeader.biClrUsed != 0)
			noOfColors = iconDir->idEntries[i].iconImage->icHeader.biClrUsed;
		else if (iconDir->idEntries[i].iconImage->icHeader.biBitCount <= 8)
			noOfColors = 1 << iconDir->idEntries[i].iconImage->icHeader.biBitCount;
		else noOfColors = 0;
		
		iconDir->idEntries[i].iconImage->icColors = new RGBQUAD[noOfColors];
		
		readLength = sizeof(char);
	
		for (int j=0; j < noOfColors; j++)
		{
			FSReadLE(file, &readLength, &iconDir->idEntries[i].iconImage->icColors[j].rgbBlue);
			FSReadLE(file, &readLength, &iconDir->idEntries[i].iconImage->icColors[j].rgbGreen);
			FSReadLE(file, &readLength, &iconDir->idEntries[i].iconImage->icColors[j].rgbRed);
			FSReadLE(file, &readLength, &iconDir->idEntries[i].iconImage->icColors[j].rgbReserved);
		}
		
		readLength = 0;
		
		int iconSize, width, height, bps;
		
		width = iconDir->idEntries[i].iconImage->icHeader.biWidth;
		height = iconDir->idEntries[i].iconImage->icHeader.biHeight/2;
		bps = iconDir->idEntries[i].iconImage->icHeader.biBitCount;
		
		if (width * bps % 32 != 0)
			readLength += (iconSize = (width/32 + 1) * 32 * height * bps / 8);
		else
			readLength += (iconSize = width * height * bps / 8);	
		
		if (width % 32 != 0)
			readLength += (width/32 + 1) * 32 * height / 8;
		else
			readLength += width * height / 8;
		
		iconDir->idEntries[i].iconImage->icXOR = new unsigned char[readLength];
		
		// this actually should take care of both icon and mask
		err = noErr;
		err = FSRead(file, &readLength, iconDir->idEntries[i].iconImage->icXOR);
		
		// the mask is part of the icon
		iconDir->idEntries[i].iconImage->icAND = iconDir->idEntries[i].iconImage->icXOR + iconSize;
		
		SetFPos(file, fsFromStart, savedPos);
	}
	
	FSClose(file);
}

void ReverseCopyPadded(unsigned char* source, unsigned char* target, int sourceSize, int width, int targetRowBytes, SwapFunctionPtr Swap, int flags)
{
	if (width % 32 != 0)
	{
		int maskIncrement, dataIncrement, padding = 0;
	
		maskIncrement = width/8;
		if (maskIncrement != targetRowBytes)
		{
			padding = targetRowBytes - maskIncrement;
			maskIncrement = targetRowBytes;
		}
		dataIncrement = (width/32 + 1) * 32 / 8;
		
		for (int j=0, k=0; j < sourceSize; j += maskIncrement, k += dataIncrement)
			for (int l=0; l < maskIncrement; l++)
				if (flags & invert)
					target[sourceSize - j - (l + 1) - padding] = ~Swap(source[k + l]);
				else
					target[sourceSize - j - (l + 1) - padding] = Swap(source[k + l]);
	}
	else
		for (int j=0; j < sourceSize; j++)
			if (flags & invert)
				target[sourceSize - j - 1] = ~Swap(source[j]);
			else
				target[sourceSize - j - 1] = Swap(source[j]);
}

void ReverseCopyUnpadded(unsigned char* source, unsigned char* target, int sourceSize, int width, SwapFunctionPtr Swap, int flags)
{
	if (width % 32 != 0)
	{
		int maskIncrement, dataIncrement;
	
		maskIncrement = (width/32 + 1) * 32 / 8;
		dataIncrement = width/8;
		
		for (int j=0, k=0; k < sourceSize; j += maskIncrement, k += dataIncrement)
			for (int l=0; l < dataIncrement; l++)
				if (flags & invert)
					target[j + l] = ~Swap(source[sourceSize - (k + l + 1)]);
				else
					target[j + l] = Swap(source[sourceSize - (k + l + 1)]);
	}
	else
		for (int j=0; j < sourceSize; j++)
			if (flags & invert)
				target[j] = ~Swap(source[sourceSize - j - 1]);
			else
				target[j] = Swap(source[sourceSize - j - 1]);
}
