#include "ICO.h"
#include "icnsClass.h"

void icnsClass::LoadICO()
{
	ICONDIR	iconDir;
	unsigned char *targetCursor, *targetMaskCursor;
	long	sourceSize;
	GWorldPtr tempGW;
	PixMapHandle tempPix;
	CTabHandle tempTable;
	long noOfColors;
	
	LoadIconDirFromFile(&iconDir, srcFileSpec);
	
	members = 0;
	
	SAVECOLORS;
	SAVEGWORLD;
	SetGWorld(il32GW, NULL);
	
	for (int i=0; i < iconDir.idCount; i++)
	{
		switch (iconDir.idEntries[i].iconImage->icHeader.biBitCount)
		{
			// 24 bit
			case 24:
							
				switch (iconDir.idEntries[i].bWidth)
				{
					case 32:
						targetCursor = (unsigned char*)(**il32Pix).baseAddr;
						targetMaskCursor = (unsigned char*)(**icnmPix).baseAddr;
						members |= il32;
						members |= icnm;
						break;
					case 16:
						targetCursor = (unsigned char*)(**is32Pix).baseAddr;
						targetMaskCursor = (unsigned char*)(**icsmPix).baseAddr;
						members |= is32;
						members |= icsm;
						break;
				}
				
				sourceSize = iconDir.idEntries[i].iconImage->icHeader.biWidth *
							 iconDir.idEntries[i].iconImage->icHeader.biHeight/2 *
							 iconDir.idEntries[i].iconImage->icHeader.biBitCount/8;
				
				targetCursor += sourceSize * 4/3 - 4;
								     
				for (int j=0; j < sourceSize; j += 3)
				{
					targetCursor[1] = iconDir.idEntries[i].iconImage->icXOR[j + 2];
					targetCursor[2] = iconDir.idEntries[i].iconImage->icXOR[j + 1];
					targetCursor[3] = iconDir.idEntries[i].iconImage->icXOR[j];
					targetCursor -= 4;
				}
				
				sourceSize = iconDir.idEntries[i].iconImage->icHeader.biWidth *
						     iconDir.idEntries[i].iconImage->icHeader.biHeight/2/8;
				
				
				if (sourceSize < 128)
					for (int j=0, k=0; j < sourceSize; j+=2, k+=4)
					{
						targetMaskCursor[sourceSize - j - 1] = ~SwapBits(iconDir.idEntries[i].iconImage->icAND[k]);
						targetMaskCursor[sourceSize - j - 2] = ~SwapBits(iconDir.idEntries[i].iconImage->icAND[k + 1]);
					}
				else
					for (int j=0; j < sourceSize; j++)
						targetMaskCursor[sourceSize - j - 1] = ~SwapBits(iconDir.idEntries[i].iconImage->icAND[j]);
				
				switch (iconDir.idEntries[i].bWidth)
				{
					case 32:
						CopyPixMap(icnmPix, il32Pix, &largeIconRect, &largeIconRect, notSrcXor, NULL);
						FlipHorizontal(il32Pix);
						FlipHorizontal(icnmPix);
						break;
					case 16:
						CopyPixMap(icsmPix, is32Pix, &smallIconRect, &smallIconRect, notSrcXor, NULL);
						FlipHorizontal(is32Pix);
						FlipHorizontal(icsmPix);
						break;
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
				
				switch (iconDir.idEntries[i].bWidth)
				{
					case 32:
						NewGWorldUnpadded(&tempGW, 8, &largeIconRect, tempTable);
						tempPix = GetGWorldPixMap(tempGW);
						LockPixels(tempPix);
						targetCursor = (unsigned char*)(**tempPix).baseAddr;
						targetMaskCursor = (unsigned char*)(**icnmPix).baseAddr;
						members |= icl8;
						members |= icnm;
						break;
					case 16:
						NewGWorldUnpadded(&tempGW, 8, &smallIconRect, tempTable);
						tempPix = GetGWorldPixMap(tempGW);
						LockPixels(tempPix);
						targetCursor = (unsigned char*)(**tempPix).baseAddr;
						targetMaskCursor = (unsigned char*)(**icsmPix).baseAddr;
						members |= ics8;
						members |= icsm;
						break;
				}
				
				sourceSize = iconDir.idEntries[i].iconImage->icHeader.biWidth *
							 iconDir.idEntries[i].iconImage->icHeader.biHeight/2 *
							 iconDir.idEntries[i].iconImage->icHeader.biBitCount/8;
				
								     
				for (int j=0; j < sourceSize; j++)
					targetCursor[sourceSize - j - 1] = iconDir.idEntries[i].iconImage->icXOR[j];
				
				sourceSize = iconDir.idEntries[i].iconImage->icHeader.biWidth *
						     iconDir.idEntries[i].iconImage->icHeader.biHeight/2/8;
				
				
				if (sourceSize < 128)
					for (int j=0, k=0; j < sourceSize; j+=2, k+=4)
					{
						targetMaskCursor[sourceSize - j - 1] = ~SwapBits(iconDir.idEntries[i].iconImage->icAND[k]);
						targetMaskCursor[sourceSize - j - 2] = ~SwapBits(iconDir.idEntries[i].iconImage->icAND[k + 1]);
					}
				else
					for (int j=0; j < sourceSize; j++)
						targetMaskCursor[sourceSize - j - 1] = ~SwapBits(iconDir.idEntries[i].iconImage->icAND[j]);
				
				switch (iconDir.idEntries[i].bWidth)
				{
					case 32:
						FlipHorizontal(icnmPix);
						FlipHorizontal(tempPix);
						CopyPixMap(tempPix, icl8Pix, &largeIconRect, &largeIconRect, srcCopy + ditherCopy, NULL);
						CopyPixMap(icnmPix, icl8Pix, &largeIconRect, &largeIconRect, notSrcBic, NULL);
						if (!(members & il32))
						{
							CopyPixMap(tempPix, il32Pix, &largeIconRect, &largeIconRect, srcCopy + ditherCopy, NULL);
							CopyPixMap(icnmPix, il32Pix, &largeIconRect, &largeIconRect, notSrcBic, NULL);
							members |= il32;
						}
						UnlockPixels(tempPix);
						DisposeGWorld(tempGW);
						
						break;
					case 16:
						FlipHorizontal(tempPix);
						FlipHorizontal(icsmPix);
						CopyPixMap(tempPix, ics8Pix, &largeIconRect, &largeIconRect, srcCopy + ditherCopy, NULL);
						CopyPixMap(icsmPix, ics8Pix, &smallIconRect, &smallIconRect, notSrcBic, NULL);
						if (!(members & is32))
						{
							CopyPixMap(tempPix, is32Pix, &smallIconRect, &smallIconRect, srcCopy + ditherCopy, NULL);
							CopyPixMap(icsmPix, is32Pix, &smallIconRect, &smallIconRect, notSrcBic, NULL);
							members |= is32;
						}
						UnlockPixels(tempPix);
						DisposeGWorld(tempGW);
						break;
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
				
				switch (iconDir.idEntries[i].bWidth)
				{
					case 32:
						NewGWorldUnpadded(&tempGW, 4, &largeIconRect, tempTable);
						tempPix = GetGWorldPixMap(tempGW);
						LockPixels(tempPix);
						targetCursor = (unsigned char*)(**tempPix).baseAddr;
						targetMaskCursor = (unsigned char*)(**icnmPix).baseAddr;
						members |= icl4;
						members |= icnm;
						break;
					case 16:
						NewGWorldUnpadded(&tempGW, 4, &smallIconRect, tempTable);
						tempPix = GetGWorldPixMap(tempGW);
						LockPixels(tempPix);
						targetCursor = (unsigned char*)(**tempPix).baseAddr;
						targetMaskCursor = (unsigned char*)(**icsmPix).baseAddr;
						members |= ics4;
						members |= icsm;
						break;
				}
				
				sourceSize = iconDir.idEntries[i].iconImage->icHeader.biWidth *
							 iconDir.idEntries[i].iconImage->icHeader.biHeight/2 *
							 iconDir.idEntries[i].iconImage->icHeader.biBitCount/8;
				
								     
				for (int j=0; j < sourceSize; j++)
					targetCursor[sourceSize - j - 1] = SwapNibble(iconDir.idEntries[i].iconImage->icXOR[j]);
				
				sourceSize = iconDir.idEntries[i].iconImage->icHeader.biWidth *
						     iconDir.idEntries[i].iconImage->icHeader.biHeight/2/8;
				
				
				if (sourceSize < 128)
					for (int j=0, k=0; j < sourceSize; j+=2, k+=4)
					{
						targetMaskCursor[sourceSize - j - 1] = ~SwapBits(iconDir.idEntries[i].iconImage->icAND[k]);
						targetMaskCursor[sourceSize - j - 2] = ~SwapBits(iconDir.idEntries[i].iconImage->icAND[k + 1]);
					}
				else
					for (int j=0; j < sourceSize; j++)
						targetMaskCursor[sourceSize - j - 1] = ~SwapBits(iconDir.idEntries[i].iconImage->icAND[j]);
				
				switch (iconDir.idEntries[i].bWidth)
				{
					case 32:
						CTabHandle colorTable;
						PixMapHandle	tempPix2;
						GWorldPtr		tempGW2;
						
						colorTable = GetCTable(2054);
						
						NewIconSet(&tempGW2, &tempPix2, largeIconRect, 4, colorTable);
						
						DisposeCTable(colorTable);
						
						UnlockPixels(icl4Pix);
						DisposeGWorld(icl4GW);
						
						icl4Pix = tempPix2;
						icl4GW = tempGW2;
					
						FlipHorizontal(tempPix);
						FlipHorizontal(icnmPix);
						CopyPixMap(tempPix, icl4Pix, &largeIconRect, &largeIconRect, srcCopy, NULL);
						CopyPixMap(icnmPix, icl4Pix, &largeIconRect, &largeIconRect, notSrcBic, NULL);
						/*if (!(members & icl8))
						{
							CopyPixMap(tempPix, icl8Pix, &largeIconRect, &largeIconRect, srcCopy + ditherCopy, NULL);
							CopyPixMap(icnmPix, icl8Pix, &largeIconRect, &largeIconRect, notSrcXor, NULL);
							members |= icl8;
						}
						if (!(members & il32))
						{
							CopyPixMap(tempPix, il32Pix, &largeIconRect, &largeIconRect, srcCopy + ditherCopy, NULL);
							CopyPixMap(icnmPix, il32Pix, &largeIconRect, &largeIconRect, notSrcXor, NULL);
							members |= il32;
						}*/
						UnlockPixels(tempPix);
						DisposeGWorld(tempGW);
						
						break;
					case 16:
						colorTable = GetCTable(2054);
						
						NewIconSet(&tempGW2, &tempPix2, smallIconRect, 4, colorTable);
						
						DisposeCTable(colorTable);
						
						UnlockPixels(ics4Pix);
						DisposeGWorld(ics4GW);
						
						ics4Pix = tempPix2;
						ics4GW = tempGW2;
						
						FlipHorizontal(icsmPix);
						FlipHorizontal(tempPix);
						CopyPixMap(tempPix, ics4Pix, &smallIconRect, &smallIconRect, srcCopy + ditherCopy, NULL);
						CopyPixMap(icsmPix, ics4Pix, &smallIconRect, &smallIconRect, notSrcBic, NULL);
						/*if (!(members & ics8))
						{
							CopyPixMap(tempPix, ics8Pix, &smallIconRect, &smallIconRect, srcCopy + ditherCopy, NULL);
							CopyPixMap(icsmPix, ics8Pix, &smallIconRect, &smallIconRect, notSrcXor, NULL);
							members |= ics8;
						}
						if (!(members & is32))
						{
							CopyPixMap(tempPix, is32Pix, &smallIconRect, &smallIconRect, srcCopy + ditherCopy, NULL);
							CopyPixMap(icsmPix, is32Pix, &smallIconRect, &smallIconRect, notSrcXor, NULL);
							members |= is32;
						}*/
						UnlockPixels(tempPix);
						DisposeGWorld(tempGW);
						break;
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
				
				switch (iconDir.idEntries[i].bWidth)
				{
					case 32:
						NewGWorldUnpadded(&tempGW, 1, &largeIconRect, tempTable);
						tempPix = GetGWorldPixMap(tempGW);
						LockPixels(tempPix);
						targetCursor = (unsigned char*)(**tempPix).baseAddr;
						targetMaskCursor = (unsigned char*)(**icnmPix).baseAddr;
						members |= icni;
						members |= icnm;
						break;
					case 16:
						NewGWorldUnpadded(&tempGW, 1, &smallIconRect, tempTable);
						tempPix = GetGWorldPixMap(tempGW);
						LockPixels(tempPix);
						CropPixMap(tempPix, 2);
						targetCursor = (unsigned char*)(**tempPix).baseAddr;
						targetMaskCursor = (unsigned char*)(**icsmPix).baseAddr;
						members |= icsi;
						members |= icsm;
						break;
				}
				
				sourceSize = iconDir.idEntries[i].iconImage->icHeader.biWidth *
							 iconDir.idEntries[i].iconImage->icHeader.biHeight/2 *
							 iconDir.idEntries[i].iconImage->icHeader.biBitCount/8;
				
				
				if (sourceSize < 128)
					for (int j=0, k=0; j < sourceSize; j+=2, k+=4)
					{
						targetCursor[sourceSize - j - 1] = SwapBits(iconDir.idEntries[i].iconImage->icXOR[k]);
						targetCursor[sourceSize - j - 2] = SwapBits(iconDir.idEntries[i].iconImage->icXOR[k + 1]);
					}
				else
					for (int j=0; j < sourceSize; j++)
						targetCursor[sourceSize - j - 1] = SwapBits(iconDir.idEntries[i].iconImage->icXOR[j]);
				
				
				sourceSize = iconDir.idEntries[i].iconImage->icHeader.biWidth *
						     iconDir.idEntries[i].iconImage->icHeader.biHeight/2/8;
				
				
				if (sourceSize < 128)
					for (int j=0, k=0; j < sourceSize; j+=2, k+=4)
					{
						targetMaskCursor[sourceSize - j - 1] = ~SwapBits(iconDir.idEntries[i].iconImage->icAND[k]);
						targetMaskCursor[sourceSize - j - 2] = ~SwapBits(iconDir.idEntries[i].iconImage->icAND[k + 1]);
					}
				else
					for (int j=0; j < sourceSize; j++)
						targetMaskCursor[sourceSize - j - 1] = ~SwapBits(iconDir.idEntries[i].iconImage->icAND[j]);
				
				switch (iconDir.idEntries[i].bWidth)
				{
					case 32:
						FlipHorizontal(icnmPix);
						FlipHorizontal(tempPix);
						CopyPixMap(tempPix, icniPix, &largeIconRect, &largeIconRect, srcCopy + ditherCopy, NULL);
						CopyPixMap(icnmPix, icniPix, &largeIconRect, &largeIconRect, notSrcBic, NULL);
						if (!(members & icl4))
						{
							CopyPixMap(tempPix, icl4Pix, &largeIconRect, &largeIconRect, srcCopy + ditherCopy, NULL);
							CopyPixMap(icnmPix, icl4Pix, &largeIconRect, &largeIconRect, notSrcBic, NULL);
							members |= icl4;
						}
						if (!(members & icl8))
						{
							CopyPixMap(tempPix, icl8Pix, &largeIconRect, &largeIconRect, srcCopy + ditherCopy, NULL);
							CopyPixMap(icnmPix, icl8Pix, &largeIconRect, &largeIconRect, notSrcBic, NULL);
							members |= icl8;
						}
						if (!(members & il32))
						{
							CopyPixMap(tempPix, il32Pix, &largeIconRect, &largeIconRect, srcCopy + ditherCopy, NULL);
							CopyPixMap(icnmPix, il32Pix, &largeIconRect, &largeIconRect, notSrcBic, NULL);
							members |= il32;
						}
						UnlockPixels(tempPix);
						DisposeGWorld(tempGW);
						break;
					case 16:
						FlipHorizontal(tempPix);
						FlipHorizontal(icsmPix);
						CopyPixMap(tempPix, icsiPix, &smallIconRect, &smallIconRect, srcCopy + ditherCopy, NULL);
						CopyPixMap(icsmPix, icsiPix, &smallIconRect, &smallIconRect, notSrcBic, NULL);
						if (!(members & ics4))
						{
							CopyPixMap(tempPix, ics4Pix, &smallIconRect, &smallIconRect, srcCopy + ditherCopy, NULL);
							CopyPixMap(icsmPix, ics4Pix, &smallIconRect, &smallIconRect, notSrcBic, NULL);
							members |= ics4;
						}
						if (!(members & ics8))
						{
							CopyPixMap(tempPix, ics8Pix, &smallIconRect, &smallIconRect, srcCopy + ditherCopy, NULL);
							CopyPixMap(icsmPix, ics8Pix, &smallIconRect, &smallIconRect, notSrcBic, NULL);
							members |= ics8;
						}
						if (!(members & is32))
						{
							CopyPixMap(tempPix, is32Pix, &smallIconRect, &smallIconRect, srcCopy + ditherCopy, NULL);
							CopyPixMap(icsmPix, is32Pix, &smallIconRect, &smallIconRect, notSrcBic, NULL);
							members |= is32;
						}
						UnlockPixels(tempPix);
						DisposeGWorld(tempGW);
						break;
				}
				DisposeCTable(tempTable);
						
				break;
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
	if (members & il32) iconCount++; if (members & is32) iconCount++;
	if (members & icl8) iconCount++; if (members & ics8) iconCount++;
	if (members & icl4) iconCount++; if (members & ics4) iconCount++;
	if (members & icni) iconCount++; if (members & icsi) iconCount++;
	
	writeLength = sizeof(short);
	tempShort = 0; FSWriteLE(file, &writeLength, &tempShort); // reserved, must be zero
	tempShort = 1; FSWriteLE(file, &writeLength, &tempShort); // resource type, 1 for icons
	tempShort = iconCount; FSWriteLE(file, &writeLength, &tempShort); // number of icons
	
	dataOffset = 6 + iconCount * 16;
	
	if (members & il32)
		AddICOMember(file, 32, 32, 0, &dataOffset, 24, NULL, il32Pix, icnmPix);
	if (members & is32)
		AddICOMember(file, 16, 16, 0, &dataOffset, 24, NULL, is32Pix, icsmPix);
		
	if (members & icl8)
		if (members & il32)
		{
			GWorldPtr 		tempGW;
			PixMapHandle	tempPix;
			CTabHandle		colorTable;
			PictInfo		pictInfo;
			
			GetPixMapInfo(il32Pix, &pictInfo, returnColorTable, 256, systemMethod, 0);
			
			colorTable = pictInfo.theColorTable;
			
			NewGWorldUnpadded(&tempGW, 8, &largeIconRect, colorTable);
			tempPix = GetGWorldPixMap(tempGW);
			LockPixels(tempPix);
			
			SAVEGWORLD;
			SAVECOLORS;
			
			SetGWorld(il32GW, NULL);
			
			CopyPixMap(il32Pix, tempPix, &largeIconRect, &largeIconRect, srcCopy, NULL);
			
			AddICOMember(file, 32, 32, 0, &dataOffset, 8, colorTable, tempPix, icnmPix);
	
			UnlockPixels(tempPix);
			DisposeGWorld(tempGW);
			
			RESTORECOLORS;
			RESTOREGWORLD;
		}
		else
			AddICOMember(file, 32, 32, 0, &dataOffset, 8, (**icl8Pix).pmTable, icl8Pix, icnmPix);
	if (members & ics8)
		if (members & is32)
			{
				GWorldPtr 		tempGW;
				PixMapHandle	tempPix;
				CTabHandle		colorTable;
				PictInfo		pictInfo;
				
				GetPixMapInfo(is32Pix, &pictInfo, returnColorTable, 256, systemMethod, 0);
				
				colorTable = pictInfo.theColorTable;
				
				NewGWorldUnpadded(&tempGW, 8, &smallIconRect, colorTable);
				tempPix = GetGWorldPixMap(tempGW);
				LockPixels(tempPix);
				
				SAVEGWORLD;
				SAVECOLORS;
				
				SetGWorld(is32GW, NULL);
				
				CopyPixMap(is32Pix, tempPix, &smallIconRect, &smallIconRect, srcCopy, NULL);
				
				AddICOMember(file, 16, 16, 0, &dataOffset, 8, colorTable, tempPix, icsmPix);
		
				UnlockPixels(tempPix);
				DisposeGWorld(tempGW);
				
				RESTORECOLORS;
				RESTOREGWORLD;
			}
		else
			AddICOMember(file, 16, 16, 0, &dataOffset, 8, (**ics8Pix).pmTable, ics8Pix, icsmPix);
		
	if (members & icl4)
		AddICOMember(file, 32, 32, 0, &dataOffset, 4, (**icl4Pix).pmTable, icl4Pix, icnmPix);
	if (members & ics4)
		AddICOMember(file, 16, 16, 0, &dataOffset, 4, (**ics4Pix).pmTable, ics4Pix, icsmPix);
		
	if (members & icni)
		AddICOMember(file, 32, 32, 0, &dataOffset, 1, (**icniPix).pmTable, icniPix, icnmPix);
	if (members & icsi)
		AddICOMember(file, 16, 16, 0, &dataOffset, 1, (**icsiPix).pmTable, icsiPix, icsmPix);
		
	FSClose(file);
}	

void AddICOMember(short file, int width,int height, int colorCount, long* dataOffset, int bps, CTabHandle colorTable, PixMapHandle iconPix, PixMapHandle maskPix)
{
	long			writeLength;
	unsigned short	tempShort;
	unsigned char 	tempChar;
	unsigned long	tempLong;
	unsigned char *buff, *srcCursor;
	long			imageSize, maskSize, colorsSize, structSize, oldPos;
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
	
	if ((width * bps / 8) < 4)
		imageSize = 4 * height;
	else
		imageSize = width * height * bps/8;
	
	if (width/8 < 4) // less than 4 bytes per row, needs padding....
		maskSize = 4 * height;
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
	
	// colors would go here, but not in this case
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
			if (width/8 < 4)
			{
				imageSize = width * height / 8;
				for (int i=0, k=0; i < imageSize; i+=2, k += 4)
				{
					buff[k    ] = SwapBits(srcCursor[imageSize - i - 1]);
					buff[k + 1] = SwapBits(srcCursor[imageSize - i - 2]);
				}
			}
			else 
				for (int i=0; i < writeLength; i++)
					buff[i] = SwapBits(srcCursor[writeLength - i - 1]);
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
	
	if (width/8 < 4)
	{
		maskSize = width * height / 8;
		for (int i=0, k=0; i < maskSize; i+=width/8, k += 4)
		{
			buff[k    ] = ~SwapBits(srcCursor[maskSize - i - 1]);
			buff[k + 1] = ~SwapBits(srcCursor[maskSize - i - 2]);
		}
	}
	else 
		for (int i=0; i < writeLength; i++)
			buff[i] = ~SwapBits(srcCursor[writeLength - i - 1]);
	
	FSWrite(file, &writeLength, buff);
	FlipHorizontal(maskPix);
	delete [] buff;
	
	SetFPos(file, fsFromStart, oldPos);
	
	NewGWorldUnpadded(&tempGW, 32, &(**maskPix).bounds, NULL);
	tempPix = GetGWorldPixMap(tempGW);
	LockPixels(tempPix);
	SetGWorld(tempGW, NULL);
	EraseRect(&largeIconRect);

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
		
		if (iconDir->idEntries[i].iconImage->icHeader.biWidth * iconDir->idEntries[i].iconImage->icHeader.biBitCount/8 < 4)
			readLength = 4 * iconDir->idEntries[i].iconImage->icHeader.biHeight/2 * 2; // icon and mask are the same size
		else
		{
			readLength = (iconDir->idEntries[i].iconImage->icHeader.biWidth *
		    			  iconDir->idEntries[i].iconImage->icHeader.biHeight/2 *
		    			  iconDir->idEntries[i].iconImage->icHeader.biBitCount/8);
		    if (iconDir->idEntries[i].iconImage->icHeader.biWidth/8 < 4)
				readLength += 4 * iconDir->idEntries[i].iconImage->icHeader.biHeight/2; // icon and mask are the same size
			else
				readLength += (iconDir->idEntries[i].iconImage->icHeader.biWidth *
		    			       iconDir->idEntries[i].iconImage->icHeader.biHeight/2/8);
		}
		
		
		iconDir->idEntries[i].iconImage->icXOR = new unsigned char[readLength];
		
		// this actually should take care of both icon and mask
		err = noErr;
		err = FSRead(file, &readLength, iconDir->idEntries[i].iconImage->icXOR);
		if (iconDir->idEntries[i].iconImage->icHeader.biWidth * iconDir->idEntries[i].iconImage->icHeader.biBitCount/8 < 4)
			iconDir->idEntries[i].iconImage->icAND = iconDir->idEntries[i].iconImage->icXOR +
													 4 * iconDir->idEntries[i].iconImage->icHeader.biHeight/2;
		else
			iconDir->idEntries[i].iconImage->icAND = iconDir->idEntries[i].iconImage->icXOR +
													 (iconDir->idEntries[i].iconImage->icHeader.biWidth *
									    			 iconDir->idEntries[i].iconImage->icHeader.biHeight/2 *
									    			 iconDir->idEntries[i].iconImage->icHeader.biBitCount/8);
		
		SetFPos(file, fsFromStart, savedPos);
	}
	
	FSClose(file);
}
