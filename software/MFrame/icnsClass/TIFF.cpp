#include "MIcon.h"

void MIcon::LoadTIFF(void)
{
	unsigned long				imageCount;
	Rect						bounds;
	OSErr						myErr = noErr;
	GraphicsImportComponent		importer = NULL;
	unsigned char				*icon, *mask;
	
	members = 0;

	// get a graphics importer for the image file and determine the natural size of the image
	
	myErr = GetGraphicsImporterForFile(&srcFileSpec, &importer);
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
		
		// set the current port and draw
		
		switch (bounds.right)
		{
			case 48:
				GraphicsImportSetGWorld(importer, ih32GW, NULL);
				GraphicsImportDraw(importer);
				icon = (unsigned char*)(**ih32Pix).baseAddr; mask = (unsigned char*)(**h8mkPix).baseAddr;
				for (int j=0, k=0; j < bounds.bottom * bounds.right; j++, k+=4)
					mask[j] = icon[k];
				if (IsEmptyPixMap(h8mkPix))
					for (int j=0; j < bounds.bottom * bounds.right; j++)
						mask[j] = 0xFF;
				else
					for (int j=0, k=0; j < bounds.bottom * bounds.right; j++, k+=4)
					 if (mask[j] == 0) *(long*)(&icon[k]) = 0x00FFFFFF;
				Mask8ToMask1(h8mkPix, ichmPix);
				members |= (ih32 | h8mk | ichm);
				break;
			case 32: 
				GraphicsImportSetGWorld(importer, il32GW, NULL);
				GraphicsImportDraw(importer);
				icon = (unsigned char*)(**il32Pix).baseAddr; mask = (unsigned char*)(**l8mkPix).baseAddr;
				for (int j=0, k=0; j < bounds.bottom * bounds.right; j++, k+=4)
					mask[j] = icon[k];
				if (IsEmptyPixMap(l8mkPix))
					for (int j=0; j < bounds.bottom * bounds.right; j++)
						mask[j] = 0xFF;
				else
					for (int j=0, k=0; j < bounds.bottom * bounds.right; j++, k+=4)
					 if (mask[j] == 0) *(long*)(&icon[k]) = 0x00FFFFFF;
				Mask8ToMask1(h8mkPix, icnmPix);
				members |= (il32 | l8mk | icnm);
				break;
			case 16:
				GraphicsImportSetGWorld(importer, is32GW, NULL);
				GraphicsImportDraw(importer);
				icon = (unsigned char*)(**is32Pix).baseAddr; mask = (unsigned char*)(**s8mkPix).baseAddr;
				for (int j=0, k=0; j < bounds.bottom * bounds.right; j++, k+=4)
					mask[j] = icon[k];
				if (IsEmptyPixMap(s8mkPix))
					for (int j=0; j < bounds.bottom * bounds.right; j++)
						mask[j] = 0xFF;
				else
					for (int j=0, k=0; j < bounds.bottom * bounds.right; j++, k+=4)
					 if (mask[j] == 0) *(long*)(&icon[k]) = 0x00FFFFFF;
				Mask8ToMask1(h8mkPix, icsmPix);
				members |= (is32 | s8mk | icsm);
				break;
			default: DisplayValue(bounds.right); break;
		}
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
