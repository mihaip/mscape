#pragma once
#include "commonfunctions.h"
#include "Icons.h"
#include <PictUtils.h>

#ifndef icnsSizePadding
#define icnsSizePadding sizeof(int) // this should yield 2 for 68K and 4 for PPC
#endif

#define REMOVEICON\
	if (iconHandle != NULL)\
	{\
		RemoveResource(iconHandle);\
		UpdateResFile(file);\
	}
	
const static Rect hugeIconRect = {0, 0, 48, 48};
const static Rect largeIconRect = {0, 0, 32, 32};
const static Rect smallIconRect = {0, 0, 16, 16};

const static long il32Size = 0x1000;
const static long is32Size = 0x1000 / 4;
const static long l8mkSize = 0x400;
const static long s8mkSize = 0x400 / 4;
const static long icnSize = 0x100;
const static long icsSize = 0x100 / 4;
const static long icl8Size = 0x400;
const static long ics8Size = 0x400 / 4;
const static long icl4Size = 0x200;
const static long ics4Size = 0x200 / 4;

const static long ih32Size = 0x2400;
const static long h8mkSize = 0x900;
const static long ichSize = 0x240;
const static long ich8Size = 0x900 + 0x120;
const static long ich4Size = 0x480 + 0x120;

enum iconSizes
{
	huge = 1,
	large = 2,
	small = 4,
	mini = 8
};

enum statusTypes
{
	outOfMemory = 1
};


class icnsClass
{
	protected:
		GWorldPtr		ichiGW;
		PixMapHandle	ichiPix;
		
		GWorldPtr		ichmGW;
		PixMapHandle	ichmPix;
		
		GWorldPtr		ih32GW;
		PixMapHandle	ih32Pix;
		
		GWorldPtr		h8mkGW;
		PixMapHandle	h8mkPix;
		
		GWorldPtr		ich8GW;
		PixMapHandle	ich8Pix;
		
		GWorldPtr		ich4GW;
		PixMapHandle	ich4Pix;
		
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
		
		GWorldPtr		icl4GW;
		PixMapHandle	icl4Pix;
		
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
		
		GWorldPtr		ics4GW;
		PixMapHandle	ics4Pix;
		
		unsigned char 	ih32Compressed[ih32Size];
		unsigned char	il32Compressed[il32Size];
		unsigned char	is32Compressed[is32Size];
		
		long			ih32CompressedSize;
		long			il32CompressedSize;
		long			is32CompressedSize;
		
		void 			SaveOldStyle(short file);
		void			CompressIcon();
		
	public:
		short			ID;
		Str255			name;
		short			flags;
		int				sizes;
		
		long			status;
		
						icnsClass(void);
						~icnsClass(void);
		void 			Load();
		void			LoadOldStyle(bool copyToHigherRez);
		void			LoadFromFile(FSSpec fileSpec);
		void 			Display(Rect targetRect);
		void			ExportToPixMap(PixMapHandle targetPix);
		void			ImportFromClipboard(bool dither);
		void 			SaveToFile(FSSpec fileSpec, bool includeOldStyle, bool generateOldStyle);
		//RGBColor 		GetPixel(int h, int v);
		
	friend void MergeIcon(int ID, Str255 name, icnsClass* baseicns);
};

IconFamilyElement* GeticnsMember(long iconType, IconFamilyHandle icnsHandle);
OSStatus NewIconSet(GWorldPtr *gWorld, PixMapHandle *pixMap, Rect bounds, int depth, CTabHandle cTable);
void UnpackIconData(unsigned char** source, unsigned char* target, int finalSize);
void PackIconData(unsigned char* source, long sourceSize, unsigned char* output, long* outputSize);
bool CheckClipboard(bool verbose);
void Make1BitMask(PixMapHandle srcPix, char* target);
