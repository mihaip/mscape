#pragma once
#include "commonfunctions.h"
#include "Icons.h"

const static Rect largeIconRect = {0, 0, 32, 32};
const static Rect smallIconRect = {0, 0, 16, 16};

const static long				il32Size = 0x1000;
const static long				is32Size = 0x1000 / 4;
const static long				l8mkSize = 0x400;
const static long				s8mkSize = 0x400 / 4;
const static long				icnSize = 0x100;
const static long				icsSize = 0x100 / 4;
const static long				ilc8Size = 0x400;
const static long				ics8Size = 0x400 / 4;

class icnsClass
{
	private:
		GWorldPtr		il32GW;
		PixMapHandle	il32Pix;
		
		GWorldPtr		l8mkGW;
		PixMapHandle	l8mkPix;
		
		GWorldPtr		icniGW;
		PixMapHandle	icniPix;
		
		GWorldPtr		icnmGW;
		PixMapHandle	icnmPix;
		
		GWorldPtr		icl8GW;
		PixMapHandle	icl8Pix;
		
		GWorldPtr		is32GW;
		PixMapHandle	is32Pix;
		
		GWorldPtr		s8mkGW;
		PixMapHandle	s8mkPix;
		
		GWorldPtr		icsiGW;
		PixMapHandle	icsiPix;
		
		GWorldPtr		icsmGW;
		PixMapHandle	icsmPix;
		
		GWorldPtr		ics8GW;
		PixMapHandle	ics8Pix;
		
	public:
						icnsClass(void);
		int				ID;
		void 			Load();
		void 			Display(Rect targetRect);
		//RGBColor 		GetPixel(int h, int v);
};

IconFamilyElement* GeticnsMember(long iconType, IconFamilyHandle icnsHandle);

