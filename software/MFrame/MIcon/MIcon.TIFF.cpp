#include "MIcon.h"

void MIcon::LoadTIFF(void)
{
	unsigned long				imageCount;
	Rect						bounds;
	OSErr						myErr = noErr;
	GraphicsImportComponent		importer = NULL;
	unsigned char				*icon, *mask;
	FSSpec						targetFile;
	int							height, iconName, mask8Name, mask1Name;
	GWorldPtr					iconGW, mask8GW, mask1GW;
	PixMapHandle				iconPix, mask8Pix, mask1Pix;
	
	members = 0;

	// get a graphics importer for the image file and determine the natural size of the image
	
	targetFile = file.GetAssociatedFile();
	myErr = GetGraphicsImporterForFile(&targetFile, &importer);
	if (myErr != noErr)
		goto bail;
		
	GraphicsImportGetImageCount(importer, &imageCount);

	for (int i=1; i <= imageCount; i++)
	{
		myErr = GraphicsImportSetImageIndex(importer, i);
		if (myErr != noErr)
			goto bail;
			
		myErr = GraphicsImportGetNaturalBounds(importer, &bounds);
		if (myErr != noErr)
			goto bail;
		
		if (bounds.bottom > 63)
			height = 128;
		else if (bounds.bottom > 40)
			height = 48;
		else if (bounds.bottom > 24)
			height = 32;
		else
			height = 16;
			
		iconName = GetPixName(height, 32, true);
		mask8Name = GetPixName(height, 8, false);
		mask1Name = GetPixName(height, 1, false);
			
		GetGWorldAndPix(iconName, &iconGW, &iconPix);
		GetGWorldAndPix(mask8Name, &mask8GW, &mask8Pix);
		GetGWorldAndPix(mask1Name, &mask1GW, &mask1Pix);
		
		bounds = (**iconPix).bounds;
		
		// set the current port and draw
		GraphicsImportSetGWorld(importer, iconGW, NULL);
		GraphicsImportDraw(importer);
		
		icon = (unsigned char*)(**iconPix).baseAddr; mask = (unsigned char*)(**mask8Pix).baseAddr;
		for (int j=0, k=0; j < bounds.bottom * bounds.right; j++, k+=4)
			mask[j] = icon[k];
		if (IsEmptyPixMap(mask8Pix))
			for (int j=0; j < bounds.bottom * bounds.right; j++)
				mask[j] = 0xFF;
		else
			for (int j=0, k=0; j < bounds.bottom * bounds.right; j++, k+=4)
			 if (mask[j] == 0)
			 	*(long*)(&icon[k]) = 0x00FFFFFF;
		if (height != 128)
			Mask8ToMask1(mask8Pix, mask1Pix);
		members |= (iconName | mask8Name | mask1Name);
	}
bail:
	if (myErr != noErr)
		if (importer != NULL)
			CloseComponent(importer);
}

void MIcon::SaveTIFF(void)
{
	GraphicsImportComponent exporer = NULL;
	
	
}
