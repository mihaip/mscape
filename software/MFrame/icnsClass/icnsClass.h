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
#include "MString.h"

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

#define THUMBNAIL
#define MINI

// standard icon sizes, these Rects are used very often when using CopyBits between different
// sizes/depths
const static Rect thumbnailIconRect = {0, 0, 128, 128};
const static Rect hugeIconRect = {0, 0, 48, 48}; 
const static Rect largeIconRect = {0, 0, 32, 32};
const static Rect smallIconRect = {0, 0, 16, 16};
const static Rect miniIconRect = {0, 0, 12, 16};

// sizes of pixel data for the different sizes, depths
const static long il32Size = 0x1000;
const static long l8mkSize = 0x400;
const static long icnSize = 0x100;
const static long icl8Size = 0x400;
const static long icl4Size = 0x200;

const static long is32Size = il32Size / 4;
const static long s8mkSize = l8mkSize / 4;
const static long icsSize = icnSize / 4;
const static long ics8Size = icl8Size / 4;
const static long ics4Size = icl4Size / 4;

const static long ih32Size = 0x2400;
const static long h8mkSize = 0x900;
const static long ichSize = 0x240;
const static long ich8Size = 0x900;
const static long ich4Size = 0x480;

const static long it32Size = 0xFFFF;
const static long t8mkSize = 0x4000;

const static long icm8Size = 0xC0;
const static long icm4Size = 0x60;
const static long icmSize = 0x30;


const static int kIDNone = -991105;
const static int kIDUseFileIcon = -820127;
const static int kIDLoadDataFork = -840303;

enum statusTypes
{
	outOfMemory = 1
};

enum iconFormats
{
	formatMacOSUniversal = 1,
	formatMacOSNew = 2,
	formatMacOSOld = 3,
	formatWindows = 4,
	formatMacOSXServer = 5,
	formatAll = 7
};

const static int kFormatCount = 5;

const OSType iconFormats[] = {0, 'Icon', 'Icon', 'Icon', 'ICO ', 'TIFF'};

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
	
	it32	= 1 << 19,
	t8mk	= 1 << 20,
	
	icm8	= 1 << 21,
	icm4	= 1 << 22,
	icmi	= 1 << 23,
	icmm	= 1 << 24,
	
	hugeSize = ih32 + h8mk + ich8 + ich4 + ichi + ichm,
	largeSize = il32 + l8mk + icl8 + icl4 + icni + icnm,
	smallSize = is32 + s8mk + ics8 + ics4 + icsi + icsm,
	thumbnailSize = it32 + t8mk,
	miniSize = icm8 + icm4 + icmi + icmm,
	
	icon32 = it32 + ih32 + il32 + is32,
	icon8 = ich8 + icl8 + ics8 + icm8,
	icon4 = ich4 + icl4 + ics4 + icm4,
	icon1 = ichi + icni + icsi + icmi,
	
	mask8 = t8mk + h8mk + l8mk + s8mk,
	mask1 = ichm + icnm + icsm + icmm,
	
	icons = icon32 + icon8 + icon4 + icon1,
	masks = mask8 + mask1,
	
	selection = 1 << 25,
	selected = 1 << 26
};

enum icnsClassResources
{
	// color tables
	rWindows4BitColors = 4000,
	rWindows8BitColors = 4001,
	
	// menus
	rFormatMenu = 4000,
	
	// strings
	rFormatStrings = 4000,
	rIconNames = 4001,
	rMiscIconStrings = 4002
};

enum formatStrings
{
	sAllFormats = 1
};

enum misIconStrings
{
	eNone = 1,
	eFinderIcon = 2
};

typedef struct
{
	int 	width;
	int 	height;
	int		depth;
	long	name;
	long	resourceName;
	bool	icon;
} MemberDescription;

const static MemberDescription kMembers[] =
{
	{128, 128, 32, it32, 'it32', true},
	{128, 128, 8, t8mk, 't8mk', false},
	
	{48, 48, 32, ih32, 'ih32', true},
	{48, 48, 8, ich8, 'ich8', true},
	{48, 48, 4, ich4, 'ich4', true},
	{48, 48, 1, ichi, 'ichi', true},
	{48, 48, 8, h8mk, 'h8mk', false},
	{48, 48, 1, ichm, 'ichm', false},
	
	{32, 32, 32, il32, 'il32', true},
	{32, 32, 8, icl8, 'icl8', true},
	{32, 32, 4, icl4, 'icl4', true},
	{32, 32, 1, icni, 'icni', true},
	{32, 32, 8, l8mk, 'l8mk', false},
	{32, 32, 1, icnm, 'icnm', false},
	
	{16, 16, 32, is32, 'is32', true},
	{16, 16, 8, ics8, 'ics8', true},
	{16, 16, 4, ics4, 'ics4', true},
	{16, 16, 1, icsi, 'icsi', true},
	{16, 16, 8, s8mk, 's8mk', false},
	{16, 16, 1, icsm, 'icsm', false},
	
	{16, 12, 8, icm8, 'icm8', true},
	{16, 12, 4, icm4, 'icm4', true},
	{16, 12, 1, icmi, 'icmi', true},
	{16, 12, 1, icmm, 'icmm', false}
};

const static int kMembersCount = sizeof(kMembers)/sizeof(MemberDescription);

const static long kDefaultMembers[kFormatCount + 1] = 
{
	0,
	icon32 | icon8 | icon4 | icon1 | mask8 | mask1, // mac os universal
	icon32 | icon8 | icon4 | icon1 | mask8 | mask1, // mac os new
	(icon8 | icon4 | icon1 | mask1) &~ (thumbnailSize | hugeSize), // mac os old
	(icon32 | icon8 | icon4 | icon1 | mask1) &~ (thumbnailSize | miniSize), // windows
	hugeSize + largeSize + smallSize // mac os server
};

class icnsClass
{
	private:
		static GWorldPtr	canvasGW;
		static PixMapHandle	canvasPix;
		
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
		
#ifdef THUMBNAIL
		
		GWorldPtr		it32GW;
		PixMapHandle	it32Pix;
		
		GWorldPtr		t8mkGW;
		PixMapHandle	t8mkPix;
		
#endif

#ifdef MINI
		GWorldPtr		icmiGW;
		PixMapHandle	icmiPix;
		
		GWorldPtr		icmmGW;
		PixMapHandle	icmmPix;
		
		GWorldPtr		icm8GW;
		PixMapHandle	icm8Pix;
		
		GWorldPtr		icm4GW;
		PixMapHandle	icm4Pix;
#endif
		
		void			RefreshIconMembers(void);

		void			LoadFromIconSuite(IconSuiteRef theIconSuite);
		void			LoadFromIconFamily(IconFamilyHandle icnsHandle);
		
		void			PreSave();
		void			PostSave();
		void			SetupFileSpec(bool erase);
		void			CleanupFileSpec();
		
		short			targetFile, oldFile;
		FSSpec			savedSpec;
		unsigned char	isFolder;
		
	public:
		short			ID;
		long			loadedID;
		Str255			name;
		short			flags;
		long			members;
		long			usedMembers;
		
		FSSpec			srcFileSpec;
		
		long			status;
		
		long			format;
		
						icnsClass(void);
						~icnsClass(void);
		void			Load();
		void 			LoadUniversal();
		OSErr			LoadNew();
		OSErr			LoadOld();
		void			LoadFileIcon();
		void			LoadDataFork();
		void			LoadICO();
		void			LoadTIFF();
		
		void			Reset();
		
		void 			Display(Rect targetRect, bool selected);
		void			DisplayMember(int member, Rect targetRect, bool selected);
		void 			DrawMember(int member, Rect targetRect);
		void			ExportToPixMap(PixMapHandle targetPix);
		void			ImportFromClipboard(bool dither);
		void 			Save();
		void			SaveUniversal();
		void			SaveOld();
		void			SaveNew();
		void			SaveICO();
		void			SaveTIFF();
		void			SaveDataFork();
		long			GetSize();
		long			GetLargestSize();
		
		bool			IDChanged();
		
		int				GetPixName(int height, int depth, bool icon);
		int 			GetBestPixName(int height, int depth, bool strict);
		int				GetBestMaskName(int height, int depth, bool strict);
		void			GetGWorldAndPix(long pixName, GWorldPtr* gW, PixMapHandle* pix);
		static void		GetMemberNameString(int name, Str255 nameString);
		static void		GetMemberResourceNameString(int name, Str255 nameString);
		static MString	GetMembersListNames(long members);
		static MString 	GetSizeListNames(long members, long size);
		static void		GetSizeName(long size, Str255 sizeName);
		
		int				GetMemberIndex(int name);
		
		static void		SetCanvas(GWorldPtr inCanvasGW, PixMapHandle inCanvasPix);
		
		IconFamilyHandle Geticns();
		
	friend void MergeIcon(int ID, Str255 name, icnsClass* baseicns);
	// external function used in another program (Glypher) which uses the icnsClass
	friend pascal OSErr IconExtractor(ResType iconType, Handle *theIcon, void *dataPtr);
};
pascal OSErr IconExtractor(ResType iconType, Handle *theIcon, void *dataPtr);

void GeticnsInfo(IconFamilyHandle icnsHandle, long* members, int* maxHeight);
void GetICNInfo(short ID, Str255 name, long* members, int *cellHeight);

IconFamilyElement* GeticnsMember(long iconType, IconFamilyHandle icnsHandle);
void AddIconMember(IconFamilyHandle* icnsHandle, long iconType, PixMapHandle iconPix);
OSStatus NewIconSet(GWorldPtr *gWorld,
					PixMapHandle *pixMap,
					Rect bounds,
					int depth,
					CTabHandle cTable);
bool CheckClipboard(bool verbose);
bool		IsICOFile(Str255 name);
bool		IsTIFFFile(Str255 name);
bool		IsicnsFile(Str255 name);
bool FilterIconFile(FSSpec file, long format);
long GetFileFormat(FSSpec file);
