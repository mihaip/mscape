// __________________________________________________________________________________________
// Program		: Icon Mangler
// Filename		: icnsClass.h (C++)
// Author		: Mihai Parparita (St. Mary's International School)
// Last modified: April 1, 1999
// Description	: header file for the icnsClass, it includes both typedefs and some constants

#pragma once
#include "commonfunctions.h"
#include "compression.h"
#include "graphicalFunctions.h"
#include "Find_icon.h"
#include "MoreFilesExtras.h"

const static int icnsSizePadding = 2; // this should yield 2 for 68K and 4 for PPC
// this is done because on older, 68K systems the alignemnt was to every short, while
// on the newer PowerPC based ones long alignment is used.

const static int rCustomIcon = -16455; // this ID is a standard used by the Mac OS Finder
// when determining if an item has a custom icon (if an icon resource with this ID exists
// within a file, then it does)

#define REMOVEICON\
	if (iconHandle != NULL)\
	{\
		RemoveResource(iconHandle);\
		UpdateResFile(targetFile);\
	}


// standard icon sizes, these Rects are used very often when using CopyBits between different
// sizes/depths
const static Rect hugeIconRect = {0, 0, 48, 48}; 
const static Rect largeIconRect = {0, 0, 32, 32};
const static Rect smallIconRect = {0, 0, 16, 16};

// sizes of pixel data for the different sizes, depths
const static long il32Size = 0x1000;
const static long is32Size = il32Size / 4;
const static long l8mkSize = 0x400;
const static long s8mkSize = l8mkSize / 4;
const static long icnSize = 0x100;
const static long icsSize = icnSize / 4;
const static long icl8Size = 0x400;
const static long ics8Size = icl8Size / 4;
const static long icl4Size = 0x200;
const static long ics4Size = icl4Size / 4;

const static long ih32Size = 0x2400;
const static long h8mkSize = 0x900;
const static long ichSize = 0x240;
const static long ich8Size = 0x900;
const static long ich4Size = 0x480;

enum statusTypes
{
	outOfMemory = 1
};

enum iconElementNames
{
	current	= 1 << 0,
	il32	= 1 << 1,
	is32	= 1 << 2,
	l8mk	= 1 << 3,
	s8mk	= 1 << 4,
	icl8	= 1 << 5,
	ics8	= 1 << 6,
	icl4	= 1 << 7,
	ics4	= 1 << 8,
	icni	= 1 << 9,
	icsi	= 1 << 10,
	icnm	= 1 << 11,
	icsm	= 1 << 12,
	ih32	= 1 << 13,
	h8mk	= 1 << 14,
	ichi	= 1 << 15,
	ichm	= 1 << 16,
	ich8	= 1 << 17,
	ich4	= 1 << 18,
	selection = 1 << 19,
	selected = 1 << 20,
	hugeSize = ih32 + h8mk + ich8 + ich4 + ichi + ichm,
	largeSize = il32 + l8mk + icl8 + icl4 + icni + icnm,
	smallSize = is32 + s8mk + ics8 + ics4 + icsi + icsm
};

enum saveFlags
{
	includeOldStyle = 1,
	generateOldStyle = 2
};

class icnsClass
{
	protected:
		// huge sizes
		GWorldPtr		ichiGW; // ichi = huge 1 bit icon
		PixMapHandle	ichiPix;
		
		GWorldPtr		ichmGW; // ichm = huge 1 bit mask
		PixMapHandle	ichmPix;
		
		GWorldPtr		ih32GW; // ih32 = huge 32 bit icon
		PixMapHandle	ih32Pix;
		
		GWorldPtr		h8mkGW; // h8mk = huge 8 bit mask
		PixMapHandle	h8mkPix;
		
		GWorldPtr		ich8GW; // ich8 = huge 8 bit icon
		PixMapHandle	ich8Pix;
		
		GWorldPtr		ich4GW; // ich4 = huge 4 bit icon
		PixMapHandle	ich4Pix;
		
		// large sizes
		GWorldPtr		il32GW; // il32 = large 32 bit icon
		PixMapHandle	il32Pix;
		
		GWorldPtr		l8mkGW; // l8mk = large 8 bit mask
		PixMapHandle	l8mkPix;
		
		GWorldPtr		icniGW; // icni = large 1 bit icon
		PixMapHandle	icniPix; // 'n' instead of 'l' since resource type is 'ICN#'
		
		GWorldPtr		icnmGW; // icnm = large 1 bit mask
		PixMapHandle	icnmPix;
		
		GWorldPtr		icl8GW; // icl8 = large 8 bit icon
		PixMapHandle	icl8Pix;
		
		GWorldPtr		icl4GW; // icl4 = large 4 bit icon
		PixMapHandle	icl4Pix;
		
		// small sizes
		GWorldPtr		is32GW; // is32 = small 32 bit icon
		PixMapHandle	is32Pix;
		
		GWorldPtr		s8mkGW; // s8mk = small 8 bit mask
		PixMapHandle	s8mkPix;
		
		GWorldPtr		icsiGW; // icsi = small 1 bit icon
		PixMapHandle	icsiPix;
		
		GWorldPtr		icsmGW; // icsm = small 1 bit mask
		PixMapHandle	icsmPix;
		
		GWorldPtr		ics8GW; // ics8 = small 8 bit icon
		PixMapHandle	ics8Pix;
		
		GWorldPtr		ics4GW; // ics4 = small 4 bit icon
		PixMapHandle	ics4Pix;
		
		
		
		void			RefreshIconMembers(void);
		void 			SaveOldStyle();
		void			LoadFromIconSuite(IconSuiteRef theIconSuite);
		void			LoadFromIconFamily(IconFamilyHandle icnsHandle);
		
	public:
		short			ID;
		Str255			name;
		short			flags;
		long			members;
		
		FSSpec			srcFileSpec;
		
		long			status;
		
						icnsClass(void);
						~icnsClass(void);
		void 			Load();
		void			LoadFileIcon();
		void 			Display(Rect targetRect);
		void			ExportToPixMap(PixMapHandle targetPix);
		void			ImportFromClipboard(bool dither);
		void 			Save(long flags);
		long			GetSize();
		
	friend void MergeIcon(int ID, Str255 name, icnsClass* baseicns);
	// external function used in another program (Glypher) which uses the icnsClass
	friend pascal OSErr IconExtractor(ResType iconType, Handle *theIcon, void *dataPtr);

};
pascal OSErr IconExtractor(ResType iconType, Handle *theIcon, void *dataPtr);
IconFamilyElement* GeticnsMember(long iconType, IconFamilyHandle icnsHandle);
void AddIconMember(IconFamilyHandle* icnsHandle, long iconType, PixMapHandle iconPix);
OSStatus NewIconSet(GWorldPtr *gWorld,
					PixMapHandle *pixMap,
					Rect bounds,
					int depth,
					CTabHandle cTable);
bool CheckClipboard(bool verbose);
