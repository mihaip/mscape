// __________________________________________________________________________________________
// Program		: Icon Mangler
// Filename		: MIcon.h (C++)
// Author		: Mihai Parparita (St. Mary's International School)
// Last modified: April 1, 1999
// Description	: header file for the MIcon, it includes both typedefs and some constants

#pragma once
#include "commonfunctions.h"
#include "compression.h"
#include "graphicalFunctions.h"
#include "MString.h"
#include "MWindow.h"
#include "MFile.h"
#if !PROJECTBUILDER
#if !TARGET_API_MAC_CARBON
#include "Find_icon.h"
#endif
#endif

const static int icnsSizePadding = 2; // this should yield 2 for 68K and 4 for PPC
// this is done because on older, 68K systems the alignemnt was to every short, while
// on the newer PowerPC based ones long alignment is used.

const static int rCustomIcon = -16455; // this ID is a standard used by the Mac OS Finder
// when determining if an item has a custom icon (if an icon resource with this ID exists
// within a file, then it does)

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

const static long it32Size = 0x10000;
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
	formatMacOSX = 2,
	formatMacOSNew = 3,
	formatMacOSOld = 4,
	
	formatWindows = 6,
	formatWindowsXP = 7,
	
	formatMacOSXServer = 9,
	formatAll = 11
};

const static int kFormatCount = 9;

const OSType iconFormats[] = {0, 'Icon', 'ICNS', 'Icon', 'Icon', 0, 'ICO ', 'ICOX', 0, 'TIFF'};

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

enum MIconResources
{
	// dialogs
	rIconInfo = 4000,
	rIconInfoProperties = 4001,
	rIconInfoMembers = 4002,
	
	// color tables
	rWindows4BitColors = 4000,
	rWindows8BitColors = 4001,
	
	// menus
	rFormatMenu = 4000,
	mBaseIDMenu = 203,
	mIDMenuCount = 9,
	
	// strings
	rFormatStrings = 4000,
	rIconNames = 4001,
	rMiscIconStrings = 4002,
	rIconInfoHelp = 4003,
	rIconInfoStrings = 4004
};

enum iconInfoItems
{
	iIconInfoTabs = 3,
	
	iThumbnailBox = 19,
	
	iHugeBox = 20,
	iih32Box = 33,
	iich8Box = 36,
	iich4Box = 40,
	iichiBox = 44,
	ih8mkBox = 48,
	iichmBox = 51,
	
	iLargeBox = 21,
	iil32Box = 34,
	iicl8Box = 37,
	iicl4Box = 41,
	iicniBox = 45,
	il8mkBox = 49,
	iicnmBox = 52,
	
	iSmallBox = 22,
	iis32Box = 35,
	iics8Box = 38,
	iics4Box = 42,
	iicsiBox = 46,
	is8mkBox = 50,
	iicsmBox = 53,
	
	iMiniBox = 18,
	iicm8Box = 39,
	iicm4Box = 43,
	iicmiBox = 47,
	iicmmBox = 54,
	
	iMembersGroupBox = 17,
	iMembersDivider = 23,
	iHintsLabel = 24,
	iIconLabel = 25,
	i32BitIconLabel = 26,
	i8BitIconLabel = 27,
	i4BitIconLabel = 28,
	i1BitIconLabel = 29,
	iMaskLabel = 30,
	i8BitMaskLabel = 31,
	i1BitMaskLabel = 32,
	
	iIconIDLabel = 55,
	iIconIDField = 56,
	iIDMenu = 57,
	iIconNameLabel = 58,
	iIconNameField = 59,
	iFormatLabel = 60, 
	iFormatPopup = 61,
	iIconSizeLabel = 62,
	iIconSizeField = 63,
	iPropertiesDivider = 64,
	iFlagsGroupBox = 65,
	iPurgeable = 66,
	iPreload = 67,
	iLocked = 68,
	iProtected = 69,
	iSystemHeap = 70
	
};

enum formatStrings
{
	sAllFormats = 1
};

enum miscIconStrings
{
	eNone = 1,
	eFinderIcon = 2,
	eICNonIconDataFork = 3,
	eICYesButton = 4,
	eICNoButton = 5,
	eICChooseAnotherFile = 6,
	eIcon = 7,
	eMask = 8
};

enum iconInfoStrings
{
	eInsertIconTitle = 1,
	eSizeFormat = 2,
	eIDAlreadyExists = 3,
	eOverwriteButton = 4,
	eInfoCancelButton = 5
};

typedef struct
{
	int 	width;
	int 	height;
	int		depth;
	long	name;
	long	resourceName;
	int		resourceSize;
} MemberDescription;

const static MemberDescription kMembers[] =
{
	{128, 128, 32, it32, 'it32', it32Size},
	{128, 128, 8, t8mk, 't8mk', t8mkSize},
	
	{48, 48, 32, ih32, 'ih32', ih32Size},
	{48, 48, 8, ich8, 'ich8', ich8Size},
	{48, 48, 4, ich4, 'ich4', ich4Size},
	{48, 48, 1, ichi, 'ich#', ichSize},
	{48, 48, 8, h8mk, 'h8mk', h8mkSize},
	{48, 48, 1, ichm, 'ich#', ichSize},
	
	{32, 32, 32, il32, 'il32', il32Size},
	{32, 32, 8, icl8, 'icl8', icl8Size},
	{32, 32, 4, icl4, 'icl4', icl4Size},
	{32, 32, 1, icni, 'ICN#', icnSize},
	{32, 32, 8, l8mk, 'l8mk', l8mkSize},
	{32, 32, 1, icnm, 'ICN#', icnSize},
	
	{16, 16, 32, is32, 'is32', is32Size},
	{16, 16, 8, ics8, 'ics8', ics8Size},
	{16, 16, 4, ics4, 'ics4', ics4Size},
	{16, 16, 1, icsi, 'ics#', icsSize},
	{16, 16, 8, s8mk, 's8mk', s8mkSize},
	{16, 16, 1, icsm, 'ics#', icsSize},
	
	{16, 12, 8, icm8, 'icm8', icm8Size},
	{16, 12, 4, icm4, 'icm4', icm4Size},
	{16, 12, 1, icmi, 'icm#', icmSize},
	{16, 12, 1, icmm, 'icm#', icmSize}
};

const static int kMembersCount = sizeof(kMembers)/sizeof(MemberDescription);

const static long kDefaultMembers[kFormatCount + 1] = 
{
	0,
	icon32 | icon8 | icon4 | icon1 | mask8 | mask1, // mac os universal
	icon32 | icon8 | icon4 | icon1 | mask8 | mask1, // mac os x
	icon32 | icon8 | icon4 | icon1 | mask8 | mask1, // mac os new
	(icon8 | icon4 | icon1 | mask1) &~ (thumbnailSize | hugeSize), // mac os old
	0, // divider
	(icon32 | icon8 | icon4 | icon1 | mask1) &~ (thumbnailSize | miniSize), // windows
	(icon32 | icon8 | icon4 | icon1 | mask8 | mask1) &~ (thumbnailSize | miniSize), // windows xp
	0, // divider
	hugeSize + largeSize + smallSize // mac os x server
};

enum iconInfoModes
{
	kIconInfo,
	kInsertIcon,
	kIconInfoBrowser
};

typedef struct
{
	ControlHandle	IDMenu;
	MenuHandle		currentMenu, newMenu;
	int				currentItem, newItem;
} EditIconInfoData;

class MIcon
{
	private:
		static GWorldPtr	canvasGW;
		static PixMapHandle	canvasPix;
		
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
			
		GWorldPtr		it32GW;
		PixMapHandle	it32Pix;
		
		GWorldPtr		t8mkGW;
		PixMapHandle	t8mkPix;

		GWorldPtr		icmiGW;
		PixMapHandle	icmiPix;
		
		GWorldPtr		icmmGW;
		PixMapHandle	icmmPix;
		
		GWorldPtr		icm8GW;
		PixMapHandle	icm8Pix;
		
		GWorldPtr		icm4GW;
		PixMapHandle	icm4Pix;

#if TARGET_API_MAC_CARBON
		bool			dialogLoaded;
#endif
		
	protected:
		
		void			RefreshIconMembers(void);

		void			PreSave();
		void			PostSave();
		void			SetupFileSpec();
		void			CleanupFileSpec();
		
		short			targetFile, oldFile;
		FSSpec			savedSpec;
		int				savedFormat;
		unsigned char	isFolder;
		
	private:
		void 			LoadUniversal();
		OSErr			LoadNew();
		OSErr			LoadOld();
		void			LoadICO();
		void			LoadTIFF();
		
		OSErr			PreFlight();
		
		void			SaveUniversal();
		void			SaveOld();
		void			SaveNew();
		void			SaveICO();
		void			SaveTIFF();
		void			SaveDataFork();
		
		void			RefreshIcon();
		
		void 			GetGWorldAndPixPointers(long pixName, GWorldPtr** gW, PixMapHandle** pix);
		
		static DialogPtr			infoDialog;
		static Handle				propertiesControls, membersControls;
		static ModalFilterUPP		eventFilterUPP;
		static ControlHandle		IDField, IDMenu, nameField, sizeField, formatPopup,
									sysHeapBox, purgeableBox, lockedBox, protectedBox, preloadBox, tabs; 
		static MenuHandle			popupMenu, formatMenu;
		static MWindowPtr			infoDialogWindow;
		static EditIconInfoData		dialogData;
		static int					currentTab;
		static bool					resourceItemsEnabled;

		
	public:
		short			ID;
		long			loadedID;
		Str255			name;
		short			flags;
		long			members;
		long			usedMembers;
		
		MFile			file;
		
		long			status;
		
		long			format;
		long			loadedFormat;
		
						MIcon(void);
						~MIcon(void);
						
		void			Load();
		void 			Load(bool simple);
		void			LoadFileIcon();
		void			LoadDataFork();
		void			LoadFromIconSuite(IconSuiteRef theIconSuite);
		void			LoadFromIconFamily(IconFamilyHandle icnsHandle);
		
		bool			HasNonIconDataFork(bool strict);
		
		void			Reset();
		
		void 			Display(Rect targetRect, bool selected);
		void			DisplayMember(int member, Rect targetRect, bool selected);
		void 			DrawMember(int member, Rect targetRect);
		void			ExportToPixMap(PixMapHandle targetPix);
		void			ImportFromClipboard(bool dither);
		OSErr 			Save();
		OSErr			Save(bool simple);
		
		void			TransformWithColor(RGBColor color);
		
		long			GetSize();
		long			GetLargestSize();
		
		bool			IDChanged();
		
		int				CountMembers();
		
		int				GetPixName(int height, int depth, bool icon);
		int 			GetBestPixName(int height, int depth, bool strict);
		int				GetBestMaskName(int height, int depth, bool strict);
		void			GetGWorldAndPix(long pixName, GWorldPtr* gW, PixMapHandle* pix);
		void			ReplaceMember(int memberName, GWorldPtr newGW, PixMapHandle newPix);
		static void		GetMemberNameString(int name, Str255 nameString);
		static void		GetMemberResourceNameString(int name, Str255 nameString);
		static MString	GetMembersListNames(long members);
		static MString 	GetSizeListNames(long members, long size);
		static void		GetSizeName(long size, Str255 sizeName);
		
		int				GetMemberIndex(int name);
		
		static void		LoadInfoDialog();
		static void		DisposeInfoDialog();
		
		static void		SetCanvas(GWorldPtr inCanvasGW, PixMapHandle inCanvasPix);
		
		static void		SetMinimumMembers(long* usedMembers, int format);
		int				EditIconInfo(int mode);
		static void		SetMembersCheckboxes(DialogPtr dialog, long usedMembers, long format);
		static void		GetMembersCheckboxes(DialogPtr dialog, long* usedMembers);
		static void 	HandleMembersCheckbox(DialogPtr dialog, int itemHit, long *usedMembers, int format);
		static pascal Boolean IconInfoDialogFilter(DialogPtr dialog, EventRecord* eventPtr, short* itemHit);
		static void		ToggleResourceItems(DialogPtr infoDialog);
		static void		SplitMenuItem(Str255 text, long* ID, Str255 iconName);
		static void		GetIDMenu(int ID, MenuHandle* menu, int* item, Str255 name);
		
		static bool		FileHasIcon(MFile *file, short ID, int format);
		static void		DeleteIcon(MFile* file, short ID, int format);
		static void		GetActualIconSpec(FSSpec currentSpec, FSSpec* iconSpec);
		
		IconFamilyHandle Geticns();
		
	friend void MergeIcon(int ID, Str255 name, MIcon* baseicns);
	// external function used in another program (Glypher) which uses the MIcon
	friend pascal OSErr IconExtractor(ResType iconType, Handle *theIcon, void *dataPtr);
};

typedef MIcon* MIconPtr;

pascal OSErr IconExtractor(ResType iconType, Handle *theIcon, void *dataPtr);

void GeticnsInfo(IconFamilyHandle icnsHandle, long* members, int* maxHeight);
void GetICNInfo(short ID, Str255 name, long* members, int *cellHeight, OSType alreadyLoadedType);

IconFamilyElement* GeticnsMember(long iconType, IconFamilyHandle icnsHandle);
void AddIconMember(IconFamilyHandle* icnsHandle, long iconType, PixMapHandle iconPix);
OSStatus NewIconSet(GWorldPtr *gWorld,
					PixMapHandle *pixMap,
					Rect bounds,
					int depth,
					CTabHandle cTable);
bool CheckClipboard(bool verbose);
bool FilterIconFile(FSSpec file, long format);
void SetFileExtension(int format, Str255 fileName);
long GetFileFormat(FSSpec file);
