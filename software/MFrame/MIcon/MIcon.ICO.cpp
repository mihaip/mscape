#include "MIcon.ICO.h"
#include "MIcon.h"
#include "graphicalFunctions.h"

CTabHandle CreateColorTable(RGBQUAD* colors, int colorsUsed, int bitCount)
{
	CTabHandle colorTable;
	
	if (colorsUsed == 0)
		colorsUsed = 1 << bitCount;

	colorTable = (CTabHandle)NewHandle(sizeof(ColorTable) + (colorsUsed - 1 ) * sizeof(ColorSpec));
	(**colorTable).ctSeed = 231654213;
	(**colorTable).ctFlags = 0;
	(**colorTable).ctSize = colorsUsed - 1;
	
	for (int i=0; i < colorsUsed; i++)
	{
		(**colorTable).ctTable[i].value		= i;
		(**colorTable).ctTable[i].rgb.red	= colors[i].rgbRed << 8;
		(**colorTable).ctTable[i].rgb.green	= colors[i].rgbGreen << 8;
		(**colorTable).ctTable[i].rgb.blue	= colors[i].rgbBlue << 8;
	}
	
	return colorTable;
}

void MIcon::LoadICO()
{
	ICONDIR			iconDir;
	unsigned char	*iconCursor, *maskCursor;
	long			iconSize, maskSize, width, height, bitCount, targetIconBitCount;
	GWorldPtr		iconGW, maskGW, targetIconGW, targetMaskGW;
	PixMapHandle	iconPix = NULL, maskPix = NULL, targetIconPix, targetMaskPix;
	CTabHandle		colorTable, windows8Colors, windows4Colors;
	int				iconName, maskName;
	Rect			iconRect;
	
	windows8Colors = GetCTable(rWindows8BitColors);
	windows4Colors = GetCTable(rWindows4BitColors);
	
	LoadIconDirFromFile(&iconDir, file.GetAssociatedFile());
	
	members = 0;
	
	SAVECOLORS;
	SAVEGWORLD;
	SetGWorld(il32GW, NULL);
	
	for (int i=0; i < iconDir.idCount; i++)
	{
		width = iconDir.idEntries[i].iconImage->icHeader.biWidth;
		height = iconDir.idEntries[i].iconImage->icHeader.biHeight/2;
		bitCount = iconDir.idEntries[i].iconImage->icHeader.biBitCount; 
		
		SetRect(&iconRect, 0, 0, width, height);
		
		if (bitCount == 24 || bitCount == 32)
		{
			targetIconBitCount = 32;
			colorTable = NULL;
		}
		else
		{
			targetIconBitCount = bitCount;
			colorTable = CreateColorTable(iconDir.idEntries[i].iconImage->icColors, iconDir.idEntries[i].iconImage->icHeader.biClrUsed, bitCount);
		}
		
		NewGWorldUnpadded(&iconGW, targetIconBitCount, &iconRect, colorTable);
		iconPix = GetGWorldPixMap(iconGW);
		LockPixels(iconPix);
		iconCursor = (unsigned char*)(**iconPix).baseAddr;
		
		NewGWorldUnpadded(&maskGW, 1, &iconRect, NULL);
		maskPix = GetGWorldPixMap(maskGW);
		LockPixels(maskPix);
		maskCursor = (unsigned char*)(**maskPix).baseAddr;

		iconSize = GetICODataSize(width, height, bitCount);
		maskSize = GetICODataSize(width, height, 1);
		
		switch (bitCount)
		{
			case 32:
				int				mask8Name, mask8Size;
				PixMapHandle	mask8Pix;
				GWorldPtr		mask8GW;
				unsigned char*	mask8Cursor;
				
				mask8Name = GetPixName(height, 8, false);
				GetGWorldAndPix(mask8Name, &mask8GW, &mask8Pix);
				mask8Cursor = (unsigned char*)(**mask8Pix).baseAddr;
				
				if (width * 8 % 32 != 0)
					mask8Size = height * (width * 8 / 32 + 1) * 32 / 8;
				else
					mask8Size = height * width;
				
				mask8Cursor += mask8Size - 1;
				iconCursor += iconSize - 4;
								     
				for (int j=0; j < iconSize; j+=4)
				{
					*mask8Cursor = iconDir.idEntries[i].iconImage->icXOR[j + 3];
					iconCursor[1] = iconDir.idEntries[i].iconImage->icXOR[j + 2];
					iconCursor[2] = iconDir.idEntries[i].iconImage->icXOR[j + 1];
					iconCursor[3] = iconDir.idEntries[i].iconImage->icXOR[j];
					
					iconCursor -= 4;
					mask8Cursor--;
				}
				
				members |= mask8Name;
				FlipHorizontal(mask8Pix);
				break;
			case 24:	
				iconCursor += iconSize * 4/3 - 4;
								     
				for (int j=0; j < iconSize; j+=3)
				{
					iconCursor[1] = iconDir.idEntries[i].iconImage->icXOR[j + 2];
					iconCursor[2] = iconDir.idEntries[i].iconImage->icXOR[j + 1];
					iconCursor[3] = iconDir.idEntries[i].iconImage->icXOR[j];
					iconCursor -=4;
				}
				break;
			case 8:
				for (int j=0; j < iconSize; j++)
					iconCursor[iconSize - j - 1] = iconDir.idEntries[i].iconImage->icXOR[j];
				break;
			case 4:
				for (int j=0; j < iconSize; j++)
					iconCursor[iconSize - j - 1] = SwapNibble(iconDir.idEntries[i].iconImage->icXOR[j]);
				break;
			case 1:
				ReverseCopy(iconDir.idEntries[i].iconImage->icXOR, iconSize,
							iconCursor, ((**iconPix).rowBytes & 0x3FFF) * height,
							width, height, 1,
							SwapBits, 0);
				break;
		}
		
		ReverseCopy(iconDir.idEntries[i].iconImage->icAND, maskSize,
					maskCursor, ((**maskPix).rowBytes & 0x3FFF) * height,
					width, height, 1,
					SwapBits, invert);
					
		iconName = GetPixName(height, targetIconBitCount, true);
		GetGWorldAndPix(iconName, &targetIconGW, &targetIconPix);
		
		maskName = GetPixName(height, 1, false);
		GetGWorldAndPix(maskName, &targetMaskGW, &targetMaskPix);
		
		members |= (iconName | maskName);
		
		if (colorTable != NULL)
			DisposeCTable(colorTable);
			
		if (bitCount == 8)
		{
			int 			icon32Name;
			
			icon32Name = GetPixName(height, 32, true);
			if (!(members & icon32Name))
			{
				PixMapHandle	icon32Pix;
				GWorldPtr		icon32GW;
				
				GetGWorldAndPix(icon32Name, &icon32GW, &icon32Pix);
			
				CopyPixMap(iconPix, icon32Pix, &iconRect, &(**icon32Pix).bounds, srcCopy + ditherCopy, NULL);
				CopyPixMap(maskPix, icon32Pix, &iconRect, &(**icon32Pix).bounds, notSrcBic, NULL);
				FlipHorizontal(icon32Pix);
				members |= icon32Name;
			}
		}
		
		if (bitCount == 8 || bitCount == 4)
		{
			GWorldPtr newIconGW;
			PixMapHandle newIconPix;
			
			if (bitCount == 8)
				NewIconSet(&newIconGW, &newIconPix, (**iconPix).bounds, 8, windows8Colors);
			else
				NewIconSet(&newIconGW, &newIconPix, (**iconPix).bounds, 4, windows4Colors);
				
			ReplaceMember(iconName, newIconGW, newIconPix);
			
			targetIconGW = newIconGW;
			targetIconPix = newIconPix;
		}
		
		
		if (iconPix != NULL && maskPix != NULL)
		{
			FlipHorizontal(maskPix);
			FlipHorizontal(iconPix);
			CopyPixMap(iconPix, targetIconPix, &iconRect, &(**targetIconPix).bounds, srcCopy, NULL);
			CopyPixMap(maskPix, targetMaskPix, &iconRect, &(**targetIconPix).bounds, srcCopy, NULL);
			
			CopyPixMap(targetMaskPix, targetIconPix, &(**targetMaskPix).bounds, &(**targetIconPix).bounds, notSrcBic, NULL);
			
			//DebugStr("\pabout to dispose tempPix");		
			UnlockPixels(iconPix);
			DisposeGWorld(iconGW);
			
			//DebugStr("\pabout to dispose maskPix");
			UnlockPixels(maskPix);
			DisposeGWorld(maskGW);
			
			//DebugStr("\pdone disposing");
			iconPix = NULL; maskPix = NULL;
		}
						
	}

	
	DisposeIconDir(iconDir);
	
	RESTOREGWORLD;
	RESTORECOLORS;
	
	DisposeCTable(windows8Colors);
	DisposeCTable(windows4Colors);
}

void MIcon::SaveICO(void)
{
	short dataFork;
	long writeLength, iconCount, dataOffset;
	unsigned short	tempShort;
	
	dataFork = file.OpenResourceFork(fsRdWrPerm);
	
	SetFPos(dataFork, fsFromStart, 0);
	
	iconCount = 0;
	if (members & ih32) iconCount++; if (members & il32) iconCount++; if (members & is32) iconCount++;
	if (members & ich8) iconCount++; if (members & icl8) iconCount++; if (members & ics8) iconCount++;
	if (members & ich4) iconCount++; if (members & icl4) iconCount++; if (members & ics4) iconCount++;
	if (members & ichi) iconCount++; if (members & icni) iconCount++; if (members & icsi) iconCount++;
	
	writeLength = sizeof(short);
	tempShort = 0; FSWriteLE(dataFork, &writeLength, &tempShort); // reserved, must be zero
	tempShort = 1; FSWriteLE(dataFork, &writeLength, &tempShort); // resource type, 1 for icons
	tempShort = iconCount; FSWriteLE(dataFork, &writeLength, &tempShort); // number of icons
	
	dataOffset = 6 + iconCount * 16;
	
	/* small size */
	if (members & icsi)
		AddICOMember(dataFork, 16, 16, 2, &dataOffset, 1, (**icsiPix).pmTable, icsiPix, icsmPix);
	if (members & ics4)
		AddICOMember(dataFork, 16, 16, 0, &dataOffset, 4, (**ics4Pix).pmTable, ics4Pix, icsmPix);
	if (members & ics8)
		if (members & is32)
			AddIndexedICOMember(dataFork, is32Pix, is32GW, icsmPix, &dataOffset);
		else
			AddICOMember(dataFork, 16, 16, 0, &dataOffset, 8, (**ics8Pix).pmTable, ics8Pix, icsmPix);
	if (members & is32)
		if (members & s8mk)
			AddAlphaICOMember(dataFork, is32Pix, s8mkPix, icsmPix, &dataOffset);
		else
			AddICOMember(dataFork, 16, 16, 0, &dataOffset, 24, NULL, is32Pix, icsmPix);
	
	/* large size */
	if (members & icni)
		AddICOMember(dataFork, 32, 32, 2, &dataOffset, 1, (**icniPix).pmTable, icniPix, icnmPix);
	if (members & icl4)
		AddICOMember(dataFork, 32, 32, 0, &dataOffset, 4, (**icl4Pix).pmTable, icl4Pix, icnmPix);
	if (members & icl8)
		if (members & il32)
			AddIndexedICOMember(dataFork, il32Pix, il32GW, icnmPix, &dataOffset);
		else
			AddICOMember(dataFork, 32, 32, 0, &dataOffset, 8, (**icl8Pix).pmTable, icl8Pix, icnmPix);
	if (members & il32)
		if (members & l8mk)
			AddAlphaICOMember(dataFork, il32Pix, l8mkPix, icnmPix, &dataOffset);
		else
			AddICOMember(dataFork, 32, 32, 0, &dataOffset, 24, NULL, il32Pix, icnmPix);
			
	/* huge size */
	if (members & ichi)
		AddICOMember(dataFork, 48, 48, 2, &dataOffset, 1, (**ichiPix).pmTable, ichiPix, ichmPix);
	if (members & ich4)
		AddICOMember(dataFork, 48, 48, 0, &dataOffset, 4, (**ich4Pix).pmTable, ich4Pix, ichmPix);
	if (members & ich8)
		if (members & ih32)
			AddIndexedICOMember(dataFork, ih32Pix, ih32GW, ichmPix, &dataOffset);
		else
			AddICOMember(dataFork, 48, 48, 0, &dataOffset, 8, (**ich8Pix).pmTable, ich8Pix, ichmPix);
	if (members & ih32)
		if (members & h8mk)
			AddAlphaICOMember(dataFork, ih32Pix, h8mkPix, ichmPix, &dataOffset);
		else
			AddICOMember(dataFork, 48, 48, 0, &dataOffset, 24, NULL, ih32Pix, ichmPix);
	
	
		
	FSClose(dataFork);
}

void AddIndexedICOMember(short file, PixMapHandle iconPix, GWorldPtr iconGW, PixMapHandle maskPix, long *dataOffset)
{
	GWorldPtr 		tempGW;
	PixMapHandle	tempPix;
	CTabHandle		colorTable;
	RGBColor*		colors;
	int*			frequencies, noOfColors;
	
	noOfColors = GetGWorldColors(iconGW, (**iconPix).bounds, NULL, &colors, &frequencies);
	
	colorTable = (CTabHandle)NewHandle(sizeof(ColorTable) + 255 * sizeof(ColorSpec));
	(**colorTable).ctSeed = 231654213;
	(**colorTable).ctFlags = 0;
	(**colorTable).ctSize = 255;
	
	if (noOfColors > 256)
	{
		int	filledColors = 0, threshold = 8;
		
		while (filledColors < 256)
		{
			while (threshold)
			{
				for (int i=0; i < noOfColors; i++)
					if (frequencies[i] >= threshold)
					{
						(**colorTable).ctTable[filledColors].value		= filledColors;
						(**colorTable).ctTable[filledColors].rgb.red	= colors[i].red;
						(**colorTable).ctTable[filledColors].rgb.green	= colors[i].green;
						(**colorTable).ctTable[filledColors].rgb.blue	= colors[i].blue;
					
						frequencies[i] = 0;
						filledColors++;
						
						if (filledColors >= 256)
							break;
					}
				
				if (filledColors >= 256)
					break;
				
				threshold /= 2;
			}
		}
	}
	else
	{
		for (int i=0; i < 256; i++)
		{
			(**colorTable).ctTable[i].value = i;
			
			if (i < noOfColors)
			{
				(**colorTable).ctTable[i].rgb.red	= colors[i].red;
				(**colorTable).ctTable[i].rgb.green	= colors[i].green;
				(**colorTable).ctTable[i].rgb.blue	= colors[i].blue;
			}
			else
			{
				(**colorTable).ctTable[i].rgb.red	= 0xFFFF;
				(**colorTable).ctTable[i].rgb.green	= 0xFFFF;
				(**colorTable).ctTable[i].rgb.blue	= 0xFFFF;
			}
		}
	}
	
	NewGWorldUnpadded(&tempGW, 8, &(**iconPix).bounds, colorTable);
	tempPix = GetGWorldPixMap(tempGW);
	LockPixels(tempPix);
	
	SAVEGWORLD;
	
	SetGWorld(tempGW, NULL);
	SAVECOLORS;
	
	CopyPixMap(iconPix, tempPix, &(**iconPix).bounds, &(**iconPix).bounds, srcCopy + ditherCopy, NULL);

	AddICOMember(file, (**iconPix).bounds.right, (**iconPix).bounds.bottom, 0, dataOffset, 8, colorTable, tempPix, maskPix);

	UnlockPixels(tempPix);
	DisposeGWorld(tempGW);
	
	RESTORECOLORS;
	RESTOREGWORLD;
	
	DisposeCTable(colorTable);
	delete colors;
	delete frequencies;
}

void AddAlphaICOMember(short file, PixMapHandle iconPix, PixMapHandle maskPix, PixMapHandle mask1Pix, long *dataOffset)
{
	unsigned char	*iconBase, *maskBase;
	int				iconRowBytes, maskRowBytes;
	
	iconBase = (unsigned char*)(**iconPix).baseAddr;
	iconRowBytes = (**iconPix).rowBytes & 0x3FFF;
	maskBase = (unsigned char*)(**maskPix).baseAddr;
	maskRowBytes = (**maskPix).rowBytes & 0x3FFF;
	
	for (int y=0; y < (**iconPix).bounds.bottom; y++)
		for(int x=0; x < (**iconPix).bounds.right; x++)
			iconBase[y * iconRowBytes + 4 * x] = maskBase[y * maskRowBytes + x];
	
	AddICOMember(file, (**iconPix).bounds.right, (**iconPix).bounds.bottom, 0, dataOffset, 32, NULL, iconPix, mask1Pix);

	for (int y=0; y < (**iconPix).bounds.bottom; y++)
		for(int x=0; x < (**iconPix).bounds.right; x++)
			iconBase[y * iconRowBytes + 4 * x] = 0x00;
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
	Rect			bounds;
	
	bounds = (**iconPix).bounds;
	
	SAVEGWORLD;
	SAVECOLORS;
	
	NewGWorldUnpadded(&tempGW, bps, &bounds, colorTable);
	tempPix = GetGWorldPixMap(tempGW);
	LockPixels(tempPix);
	SetGWorld(tempGW, NULL);
	
	CopyPixMap(iconPix, tempPix, &bounds, &bounds, srcCopy, NULL);
	CopyPixMap(maskPix, tempPix, &bounds, &bounds, notSrcOr, NULL);
	
	if (bps == 32)
	{
		unsigned char	*iconBase, *tempBase;
		short			iconRowBytes, tempRowBytes;
		
		iconBase = (unsigned char*)(**iconPix).baseAddr;
		iconRowBytes = (**iconPix).rowBytes & 0x3FFF;
		tempBase = (unsigned char*)(**tempPix).baseAddr;
		tempRowBytes = (**tempPix).rowBytes & 0x3FFF;
		
		for (int y=0; y < bounds.bottom; y++)
			for(int x=0; x < bounds.right; x++)
				tempBase[y * tempRowBytes + 4 * x] = iconBase[y * iconRowBytes + 4 * x];
	}
	
	RESTOREGWORLD;
	RESTORECOLORS;
	
	imageSize = GetICODataSize(width, height, bps);
	maskSize = GetICODataSize(width, height, 1);
		
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
	FlipHorizontal(tempPix);
	srcCursor = (unsigned char*)(**tempPix).baseAddr;
	switch (bps)
	{
		case 32:
			for (int i=0; i < writeLength; i+=4)
			{
				buff[i] = srcCursor[writeLength - i - 1];
				buff[i + 1] = srcCursor[writeLength - i - 2];
				buff[i + 2] = srcCursor[writeLength - i - 3];
				buff[i + 3] = srcCursor[writeLength - i - 4];
			}
			break;
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
			size = ((**tempPix).rowBytes & 0x3FFF) * height;
			ReverseCopy(srcCursor, size, buff, imageSize, width, height, bps, SwapBits, 0);
			break;
	}
	FSWrite(file, &writeLength, buff);
	delete [] buff;
	
	// mask data
	writeLength = maskSize;
	buff = new unsigned char[writeLength];
	FlipHorizontal(maskPix);
	srcCursor = (unsigned char*)(**maskPix).baseAddr;
	
	size = ((**maskPix).rowBytes & 0x3FFF) * height;
	ReverseCopy(srcCursor, size, buff, maskSize, width, height, 1, SwapBits, invert);
			
	
	FSWrite(file, &writeLength, buff);
	FlipHorizontal(maskPix);
	delete [] buff;
	
	SetFPos(file, fsFromStart, oldPos);
	
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

void DumpIconDir(ICONDIR iconDir)
{
	DebugStr("\p***********************************************");
	DebugValue("\pReserved:	", iconDir.idReserved);
	DebugValue("\pType:		", iconDir.idType);
	DebugValue("\pCount:		", iconDir.idCount);
	for (int i=0; i < iconDir.idCount; i++)
	{
		LPICONDIRENTRY entry;
		
		entry = &iconDir.idEntries[i];
		DebugStr("\p--------");
		DebugValue("\pWidth:		", entry->bWidth);
		DebugValue("\pHeight:		", entry->bHeight);
		DebugValue("\pColor Count:	", entry->bColorCount);
		DebugValue("\pReserved:	", entry->bReserved);
		DebugValue("\pPlanes:		", entry->wPlanes);
		DebugValue("\pBit Count:	", entry->wBitCount);
		DebugValue("\pBites in Res:	", entry->dwBytesInRes);
		DebugValue("\pImage offset:	", entry->dwImageOffset);
		DebugValue("\pBitmap Size:	", entry->iconImage->icHeader.biSize);
		DebugValue("\pWidth:		", entry->iconImage->icHeader.biWidth);
		DebugValue("\pHeight:		", entry->iconImage->icHeader.biHeight);
		DebugValue("\pPlanes:		", entry->iconImage->icHeader.biPlanes);
		DebugValue("\pBit count:	", entry->iconImage->icHeader.biBitCount);
		DebugValue("\pCompression:	", entry->iconImage->icHeader.biCompression);
		DebugValue("\pImage size:	", entry->iconImage->icHeader.biSizeImage);
		DebugValue("\pX Pels/Meter:	", entry->iconImage->icHeader.biXPelsPerMeter);
		DebugValue("\pY Pels/Meter:	", entry->iconImage->icHeader.biYPelsPerMeter);
		DebugValue("\pColors used:	", entry->iconImage->icHeader.biClrUsed);
		DebugValue("\pImportan clrs:", entry->iconImage->icHeader.biClrImportant);
	}
}

void DisposeIconDir(ICONDIR iconDir)
{
	for (int i=0; i < iconDir.idCount; i++)
	{
		delete [] iconDir.idEntries[i].iconImage->icColors;
		delete [] iconDir.idEntries[i].iconImage->icXOR;
		delete iconDir.idEntries[i].iconImage;
	}
		
	delete [] iconDir.idEntries;
}

void ReverseCopy(unsigned char* source, int sourceSize,
				 unsigned char* target, int targetSize,
				 int width, int height, int depth,
				 SwapFunctionPtr Swap, int flags)
{
	int sourcePadding, targetPadding;
	
	sourcePadding = sourceSize/height - width * depth/8;
	targetPadding = targetSize/height - width * depth/8;

	for (int sourcePosition=0, targetPosition = targetSize - targetPadding - 1;
	     sourcePosition < sourceSize;
	     sourcePosition += width * depth/8 + sourcePadding, targetPosition -= width * depth/8 + targetPadding)
		for (int i=0; i < width * depth/8; i++)
		{
			if (flags & invert)
				target[targetPosition - i] = ~Swap(source[sourcePosition + i]);
			else
				target[targetPosition - i] = Swap(source[sourcePosition + i]);
		}
}

int GetICODataSize(int width, int height, int bps)
{
	if (width * bps % 32 != 0)
		return height * (width * bps / 32 + 1) * 32 / 8;
	else
		return height * width * bps/8;
}
