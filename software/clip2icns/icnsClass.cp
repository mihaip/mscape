#include "icnsClass.h"
#include "commonfunctions.h"

icnsClass::icnsClass()
{
	CGrafPtr		curPort;
	GDHandle		curDevice;
	CTabHandle		grayscaleTable;
	
	grayscaleTable = GetCTable(40);
		
	GetGWorld(&curPort, &curDevice);
	
	// making the large gworlds
	NewGWorld(&il32GW, 32, &largeIconRect, NULL, NULL, 0);
	SetGWorld(il32GW, NULL);
	EraseRect(&largeIconRect);
	il32Pix = GetGWorldPixMap(il32GW);
	
	NewGWorld(&l8mkGW, 8, &largeIconRect, grayscaleTable, NULL, 0);
	SetGWorld(l8mkGW, NULL);
	EraseRect(&largeIconRect);
	l8mkPix = GetGWorldPixMap(l8mkGW);
	
	// making the small gworlds
	NewGWorld(&is32GW, 32, &smallIconRect, NULL, NULL, 0);
	SetGWorld(is32GW, NULL);
	EraseRect(&smallIconRect);
	is32Pix = GetGWorldPixMap(is32GW);
	
	NewGWorld(&s8mkGW, 8, &smallIconRect, grayscaleTable, NULL, 0);
	SetGWorld(s8mkGW, NULL);
	EraseRect(&smallIconRect);
	s8mkPix = GetGWorldPixMap(s8mkGW);
	
	DisposeCTable(grayscaleTable);
	
	SetGWorld(curPort, curDevice);
}

void icnsClass::Load()
{
	CGrafPtr			curPort;
	GDHandle			curDevice;
	IconFamilyHandle	icnsHandle;
	IconFamilyElement*	elementPtr;
	
	GetGWorld(&curPort, &curDevice);
		
	icnsHandle = (IconFamilyHandle)Get1Resource('icns', ID);
	
	if (icnsHandle == NULL)
	{
		char	buff[255];
		sprintf (buff, "Couldn't load icns ID %d", ID);
		DisplayAlert(buff, " because it wasn't found");
		return;
	}
	
	HLock((Handle)icnsHandle);
	
	// getting the icns pixmap data
	
	// large stuff
	elementPtr = GeticnsMember('il32', icnsHandle);
	if (elementPtr == NULL)
		return;
	LockPixels(il32Pix);
	CropPixMap(il32Pix, 128);
	BlockMove(elementPtr->elementData, (*il32Pix)->baseAddr, il32Size);
	UnlockPixels(il32Pix);
	
	elementPtr = GeticnsMember('l8mk', icnsHandle);
	if (elementPtr == NULL)
		return;
	LockPixels(l8mkPix);
	CropPixMap(l8mkPix, 32);
	BlockMove(elementPtr->elementData, (*l8mkPix)->baseAddr, l8mkSize);
	UnlockPixels(l8mkPix);
	
	// small stuff
	elementPtr = GeticnsMember('is32', icnsHandle);
	if (elementPtr == NULL)
		return;
	LockPixels(is32Pix);
	CropPixMap(is32Pix, 64);
	BlockMove(elementPtr->elementData, (*is32Pix)->baseAddr, is32Size);
	UnlockPixels(is32Pix);
	
	elementPtr = GeticnsMember('s8mk', icnsHandle);
	if (elementPtr == NULL)
		return;
	LockPixels(s8mkPix);
	CropPixMap(s8mkPix, 16);
	BlockMove(elementPtr->elementData, (*s8mkPix)->baseAddr, s8mkSize);
	UnlockPixels(s8mkPix);

	SetGWorld(curPort, curDevice);
	HUnlock((Handle)icnsHandle);
}

void icnsClass::Display(Rect targetRect)
{
	RGBColor	oldForeColor, oldBackColor;
	
	GetForeColor(&oldForeColor);
	GetBackColor(&oldBackColor);
	
	ForeColor(blackColor);
	BackColor(whiteColor);
	
	if ((targetRect.bottom - targetRect.top) == 16)
	{
		LockPixels(is32Pix);
		LockPixels(s8mkPix);
		CopyDeepMask((BitMap *)*is32Pix,
					 (BitMap *)*s8mkPix,
					 &qd.thePort->portBits,
					 &smallIconRect,
					 &smallIconRect,
					 &targetRect,
					 srcCopy,
					 NULL);
		UnlockPixels(is32Pix);
		UnlockPixels(s8mkPix);
	}
	else
	{
		LockPixels(il32Pix);
		LockPixels(l8mkPix);
		CopyDeepMask((BitMap *)*il32Pix,
					 (BitMap *)*l8mkPix,
					 &qd.thePort->portBits,
					 &largeIconRect,
					 &largeIconRect,
					 &targetRect,
					 srcCopy,
					 NULL);
		UnlockPixels(il32Pix);
		UnlockPixels(l8mkPix);
	}
	RGBForeColor(&oldForeColor);
	RGBBackColor(&oldBackColor);
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
