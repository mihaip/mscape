#include "cicnutils.h"

void tCicnClass::Load(int ID)
{
	CGrafPtr		curPort;
	GDHandle		curDevice;
	int				currentOffset;
		
	cicn = GetCIcon(ID);
	
	if (cicn == NULL)
	{
		SysBeep(10);
		ExitToShell();
	}
	
	HLock((Handle)cicn);
	
	currentOffset = 10;
	height = ReadDataWord((Handle)cicn, &currentOffset);
	width = ReadDataWord((Handle)cicn, &currentOffset);
	
	HUnlock((Handle)cicn);
	
	cicnRect.top = 0;
	cicnRect.bottom = height;
	cicnRect.left = 0;
	cicnRect.right = width;
	
	GetGWorld(&curPort, &curDevice);
	
	NewGWorld(&cicnGW,
			  0,
			  &cicnRect,
			  NULL,
			  curDevice,
			  noNewDevice
			 );
	
	SetGWorld(cicnGW, NULL);
	
	EraseRect(&cicnRect);
	
	cicnGWPix = GetGWorldPixMap(cicnGW);
	
	LockPixels(cicnGWPix);
	
	
	PlotCIcon(&cicnRect, cicn);
	
	UnlockPixels(cicnGWPix);
	
	SetGWorld(curPort, curDevice);
}

void tCicnClass::Display(Rect displayRect, tDisplayFlags flags, Rect *clipRect)
{
	Rect	destRect;
	Rect	sourceRect;

	if (flags & resize)
	{
		destRect = displayRect;
		sourceRect = cicnRect;
	}
	if (flags & clip)
	{
		sourceRect = *clipRect;
		destRect = displayRect;
	}

	LockPixels(cicnGWPix);
	ForeColor(blackColor);
	BackColor(whiteColor);

	CopyBits((BitMap *)*cicnGWPix,
				 &qd.thePort->portBits,
				 &sourceRect,
				 &destRect,
				 srcCopy,
				 NULL);
				 
	UnlockPixels(cicnGWPix);
}

RGBColor tCicnClass::GetPixel(int h, int v)
{
	CGrafPtr		curPort;
	GDHandle		curDevice;
	RGBColor		pixelToReturn;
	
	GetGWorld(&curPort, &curDevice);
	
	SetGWorld(cicnGW, NULL);
	
	GetCPixel(h, v, &pixelToReturn);
	
	SetGWorld(curPort, curDevice);
	
	return pixelToReturn;
}
