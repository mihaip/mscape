#pragma once
#include "commonfunctions.h"

typedef enum tDisplayFlags
{
	clip = 1,
	resize = 2
} tDisplayFlags;

class tCicnClass
{
	private:
		GWorldPtr		cicnGW;
		PixMapHandle	cicnGWPix;
		Rect			cicnRect;
		CIconHandle		cicn;
	public:
		int				height;
		int				width;
		void Load(int ID);
		void Display(Rect displayRect, tDisplayFlags flags, Rect *clipRect);
		RGBColor GetPixel(int h, int v);
};
