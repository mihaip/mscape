// __________________________________________________________________________________________
// Program		: Icon Mangler
// Filename		: commonfunction.h (C++)
// Author		: Mihai Parparita (St. Mary's International School)
// Last modified: April 1, 1999
// Description	: the header files for the commonly used functions. The actual code is not
//				  included since it was not written specifically for this project.

#pragma once

// #includes
#include <stdio.h>
#include <stdarg.h>
#include <Navigation.h>
#include <fp.h>
#include <InternetConfig.h>

const static int kActiveHilite = 0;
const static int kInactiveHilite = 255;
const static RGBColor kBlackAsRGB = {0, 0, 0};
const static RGBColor kWhiteAsRGB = {0xFFFF, 0xFFFF, 0xFFFF};

const static int rKeyNames = 3000;

// typedefs
typedef void (*SetPixelFuncPtr)(int x, int y, long color, PixMapHandle target);
typedef long (*GetPixelFuncPtr)(int x, int y, PixMapHandle target);
typedef long (*RGBToLongFuncPtr)(RGBColor* color);
typedef void (*UpdateFunctionPtr)(EventRecord* eventPtr);

typedef void (*EnhancedPlacardUpdateFuncPtr)(struct EnhancedPlacardData* data, int flags);

typedef struct EnhancedPlacardData
{
	int 							flags;
	short							font;
	short							size;
	Str255 							title;
	PicHandle						picture;
	MenuHandle						menu;
	int								menuValue;
	GWorldPtr						canvasGW;
	PixMapHandle					canvasPix;
	EnhancedPlacardUpdateFuncPtr	updateFunc;
	void*							clientData;
} EnhancedPlacardData;

typedef EnhancedPlacardData* EnhancedPlacardDataPtr;

enum EnhancedPlacardFlags
{
	enhancedPlacardDrawBorder = 1,
	enhancedPlacardLargeArrow = 2,
	enhancedPlacardMenuAtBottom = 4,
	
	enhancedPlacardStateChanged = 1,
	enhancedPlacardUpdateState = 2
};

const static float kEnhancedPlacardMenuArrowBlend = 0.75;


enum {
	kSelectItem = 10, 			// select button item number
	kSFGetObjectDlgID = 3001,	// dialog resource number
	rSelectObjectStrings = 3001,			// our strings
	sSelect = 1,			// word 'Select: ' for button
	sSelectDesktop = 2			// word 'Desktop' for button
};

enum BorderOptions
{
	border,
	noBorder
};

// the data we need to pass to our standard file hook routine
// includes a pointer to the dialog, a pointer to the standard
// file reply record (so we can inspect the current selection)
// and a copy of the "previous" file spec of the reply record
// so we can see if the selection has changed

struct UserDataRec {
	StandardFileReply	*sfrPtr;
	FSSpec				oldSelectionFSSpec;
	DialogPtr			theDlgPtr;
	UpdateFunctionPtr	updateFunction;
};
typedef struct UserDataRec
	UserDataRec, *UserDataRecPtr;

typedef pascal void (*XYMenuDrawFn)(int number, int x, int y, int width, int height, void* clientData);
typedef pascal void (*XYMenuUpdateFn)(int selection, void* clientData);

// macros
#ifndef SAVEGWORLD
#define SAVEGWORLD\
	CGrafPtr		oldPort;\
	GDHandle		oldDevice;\
	\
	::GetGWorld(&oldPort, &oldDevice);
#endif

#ifndef RESTOREGWORLD
#define RESTOREGWORLD\
	::SetGWorld(oldPort, oldDevice);
#endif

#ifndef SAVECOLORS
#define SAVECOLORS\
	RGBColor		oldForeColor, oldBackColor;\
	PenState		oldState;\
	::GetForeColor(&oldForeColor);\
	::GetBackColor(&oldBackColor);\
	::GetPenState(&oldState);\
	::ForeColor(blackColor);\
	::BackColor(whiteColor);
#endif

#ifndef RESTORECOLORS
#define RESTORECOLORS\
	::SetPenState(&oldState);\
	::RGBForeColor(&oldForeColor);\
	::RGBBackColor(&oldBackColor);
#endif

#ifndef ISSHIFTDOWN
#define ISSHIFTDOWN\
	(IsKeyPressed(0x38) || IsKeyPressed(0x3C))
#endif

#ifndef ISOPTIONDOWN
#define ISOPTIONDOWN\
	(IsKeyPressed(0x3A) || IsKeyPressed(0x3D))
#endif

#ifndef ISCOMMANDDOWN
#define ISCOMMANDDOWN\
	(IsKeyPressed(0x37) || IsKeyPressed(0x3B))
#endif

#ifndef ISSPACEDOWN
#define ISSPACEDOWN\
	(IsKeyPressed(0x31))
#endif

// function prototypes
extern void InitToolbox(void);

extern void DisplayAlert(const char* error, const char* reason);
extern void DisplayPAlert(Str255 error, Str255 reason);
extern void DisplayValue(int value);
extern void DisplayFloat(float value);
extern void DisplayColor(RGBColor color);
extern void DisplayRect(Rect rectToDisplay);


extern char* C2Pas(char* cStr, Str255 pStr);
extern void DrawResPicture(int pictureID);
extern void CenterPict(PicHandle picture, Rect *destRectPtr);
//extern WindowPtr GetWindow(int windowID);
extern short GetScreenDepth (void);
extern void ExitApplication(void);
extern void Sleep(int sleepDuration);

extern void HideMenubar(void);
extern void ShowMenubar(void);

extern bool IsKeyPressed(short keyCode);
extern void GetKeyName(short keyCode, Str255 keyName);
extern bool KeysArePressed();
extern int GetNextKeyPressed(int startingPoint);

extern char ReadDataByte(Handle data, int *currentOffset);
extern short ReadDataWord(Handle data, int *currentOffset);
extern void DrawTranslucentRect(Rect* targetRect);
extern void CopyString(Str255 dst, const Str255 src);
extern void BlockFill(unsigned char *block, int fill, int size);
extern void FillPixMap32(PixMapHandle src, unsigned long fill);
extern GrafPtr CreateGrafPort(Rect* bounds);
extern void DisposeGrafPort(GrafPtr doomedPort );
extern void MakeTargetRect(Rect src, Rect* target);
extern OSType GetApplSignature ( );
extern NavTypeListHandle MakeTypeList ( OSType applSignature, int numTypes, ... );
extern void DummyFunction();
extern void CropPixMap(PixMapHandle pixMap, int targetRowBytes);
extern int GetDepth(int noOfColors);
extern void GetFSSpecFromAEDesc (AEDesc &inDesc, FSSpec &outValue );
extern OSErr SendFinderAEOpen(FSSpec &inFile);
extern void ToggleCheckbox(ControlHandle checkbox);
extern void ToggleControl(ControlHandle theControl);
extern OSStatus LaunchURL(ConstStr255Param urlStr);
extern bool CheckString(Str255 input);
extern void ToggleMenuItem(int menuID, int itemNo);
extern OSStatus GetFile(Str255 client, long creator, long fileType, Str255 message, FSSpec* file);
extern OSStatus NewFile(Str255 client, long creator, long fileType, Str255 defaultName, Str255 message, FSSpec* file, NavEventUPP eventFilter);
extern inline void CopyPixMap(PixMapHandle srcPix, PixMapHandle targetPix, const Rect* srcRect, const Rect* targetRect, long flags, RgnHandle clipRgn);
extern void GetPenSize(int *penX, int* penY);

extern void SetPixelBlended(int x, int y, RGBColor color, float blendFactor);
extern void SetPixel32(int x, int y, long color, PixMapHandle target);
extern long GetPixel32(int x, int y, PixMapHandle src);
extern int GetColorIndex(RGBColor color, CTabHandle colorTable);
extern RGBColor GetNearestColor(RGBColor color, CTabHandle colorTable);
extern void SetPixel8(int x, int y, long color, PixMapHandle target);
extern long GetPixel8(int x, int y, PixMapHandle src);
extern void SetPixel4(int x, int y, long color, PixMapHandle target);
extern long GetPixel4(int x, int y, PixMapHandle src);
extern void SetPixel1(int x, int y, long color, PixMapHandle target);
extern long GetPixel1(int x, int y, PixMapHandle src);

extern void DrawImageWell(ControlHandle theControl, Rect targetRect);
extern void DrawDialogBackground(ControlHandle theControl, Rect targetRect);
extern void DrawDialogBackground(ControlHandle theControl, RgnHandle targetRgn);
extern void LocalToGlobalRect(Rect	*theRect);
extern void GlobalToLocalRect(Rect	*theRect);
extern void PixMapToPicture(PixMapHandle srcPix, RgnHandle maskRgn, PicHandle *targetPic);
extern void AppendString(Str255 string1, Str255 string2);
extern void SubstituteString(Str255 string, Str255 pattern, Str255 replace);
extern int FindSubstring(Str255 string, Str255 pattern);
extern bool IsMenuItemEnabled(int menuID, int item);
extern void EnableMenuItem(int menuID, int item);
extern void DisableMenuItem(int menuID, int item);
extern void SetCursor(int ID);
extern bool IsFrontProcess();
extern OSStatus MakeTwoColorTable(CTabHandle *colorTable, RGBColor color1, RGBColor color2);
extern OSStatus MakeThreeColorTable(CTabHandle *colorTable, RGBColor color1, RGBColor color2, RGBColor color3);
extern bool pascal MaskColorSearch(RGBColor *color, int *result);
extern OSStatus Make1BitMask(PixMapHandle srcPix, PixMapHandle targetPix, Rect bounds);
extern void SetControlText(ControlHandle control, Str255 text);
extern void GetControlText(ControlHandle control, Str255 text);
extern void ResetStaticTextTitle(ControlHandle theControl);
extern pascal bool StandardEventFilter(DialogPtr dialogPtr,EventRecord *eventStrucPtr,SInt16 *itemHit);
extern short StringHeight(Str255 string);
extern short CharacterHeight();
extern void DrawLinedString(Str255 string);
extern void StyleControl(ControlHandle theControl, short fontNo, short size, int style);
extern int FindMenuItem(MenuHandle menu, Str255 menuText);
extern void SizeControl(ControlHandle theControl, int h, int v);
extern long NearestPowerOf2(unsigned long in);
extern void TouchFile(FSSpec spec);
extern unsigned long GetModificationDate(FSSpec spec);
OSErr FSpSetFinderFlags(FSSpec *folder, unsigned short fdFlags, bool orFlags);
extern void StandardGetObject(FileFilterYDUPP fileFilter, UpdateFunctionPtr updateFunction, StandardFileReply *theSFR);
extern pascal Boolean OnlyVisibleObjectsCustomFileFilter(CInfoPBPtr myCInfoPBPtr, Ptr dataPtr);
extern OSErr Get1IconSuite(IconSuiteRef* theIconSuite, SInt16 ID, IconSelectorValue selector);
extern void AddResourceToSuite(OSType iconType, SInt16 ID, IconSuiteRef theIconSuite);
extern long RegionArea(RgnHandle rgn);
extern void GrowHandle(Handle* inHandle, int delta);
extern void SetBevelButtonIcon(ControlHandle theControl, short iconID);
extern OSErr FSReadLE(short refNum, long* count, void* buffPtr);
extern OSErr FSWriteLE(short refNum, long* count, void* buffPtr);
extern int XYMenu(Point where,
				  WindowPtr window,
				  int rows, int cols,
				  int width, int height,
				  int currentSelection,
				  int borderOptions,
				  XYMenuDrawFn Draw,
				  XYMenuUpdateFn Update,
				  void* clientData);
extern bool GestaltVersion(unsigned long gestaltCode, int major, int revision);
extern bool GestaltExists(unsigned long gestaltCode);
extern OSStatus ThemeSoundStart(ThemeDragSoundKind kind);
extern OSStatus ThemeSoundEnd(void);
extern OSStatus ThemeSoundPlay(ThemeSoundKind kind);
extern bool SameFile(FSSpec file1, FSSpec file2);
extern void DeactivateNControls(int controlCount, ... );
extern void ActivateNControls(int controlCount, ... );
extern void GetImageWellColors(RGBColor* border, RGBColor* hilite, RGBColor* shadow, ThemeDrawState state);
extern void DrawImageWell(RgnHandle theRgn, ThemeDrawState state, bool fillCenter);
extern void GetFocusColor(RGBColor* focusColor);
extern void DrawFocus(RgnHandle targetRgn, bool focus);
extern ControlHandle GetKeyboardFocus(WindowPtr window);
extern void SetControlKeyFilter(ControlHandle control, ControlKeyFilterProcPtr function);
extern void SetControlUserPaneDraw(ControlHandle control, ControlUserPaneDrawProcPtr function);
extern void SetControlUserPaneHitTest(ControlHandle control, ControlUserPaneHitTestProcPtr function);
extern void SetControlUserPaneTracking(ControlHandle control, ControlUserPaneTrackingProcPtr function);
extern pascal short GenericHitTest(ControlHandle control, Point where);
extern void PointsToRect(Point point1, Point point2, Rect* targetRect);
extern void PointsToRect(Point point1, Point point2, Point point3, Rect* targetRect);

extern OSErr FSWrite4(short file, long data);
extern OSErr FSWrite2(short file, short data);

extern ControlHandle NewEnhancedPlacard(short controlID, WindowPtr parentWindow, int flags, short font, short size,
								 		Str255 title, PicHandle picture, MenuHandle menu, GWorldPtr canvasGW, PixMapHandle canvasPix,
								 		EnhancedPlacardUpdateFuncPtr updateFunc, void* clientData);
extern pascal void EnhancedPlacardDraw(ControlHandle placard, short partCode);
extern pascal short EnhancedPlacardHitTest(ControlHandle placard, Point where);
extern pascal short EnhancedPlacardTracking(ControlHandle placard, Point startPt, ControlActionUPP actionProc);

extern void EnhancedPlacardHandleClick(ControlHandle placard);

// inline functions
inline void CopyPixMap(PixMapHandle srcPix, PixMapHandle targetPix, const Rect* srcRect, const Rect* targetRect, long flags, RgnHandle clipRgn)
{
	CopyBits((BitMap*)*srcPix,
			 (BitMap*)*targetPix,
			 srcRect,
			 targetRect,
			 flags,
			 clipRgn);
}

inline double abs(double x)
{
	if (x < 0)
		return -x;
	else
		return x;
}

/*inline int abs(int x)
{
	if (x < 0)
		return -x;
	else
		return x;
}*/

inline long RGBToLong(RGBColor color)
{
	return ((color.red << 8)	& 0x00FF0000) +
		   ((color.green)		& 0x0000FF00) +
		   ((color.blue >> 8)	& 0x000000FF);
}

inline unsigned char SwapBits(unsigned char in)
{
	unsigned char out = 0;
	
	for (int i=0; i < 8; i++)
		if (in & (1 << i)) out |= 1 << (7 - i);
		
	return out;
}

inline unsigned char SwapNibble(unsigned char in)
{
	unsigned char out = 0;
	
	out = (in >> 4) & 0x0F;
	out |= (in << 4) & 0xF0;
	
	return out;
}

inline void MagnifyRect(Rect* rect, float magnification)
{
	rect->left *= magnification;
	rect->right *= magnification;
	rect->top *= magnification;
	rect->bottom *= magnification;
}

inline int max(int i, int j, int k)
{
	if (i > j)
		if (i > k)
			return i;
		else
			return k;
	else if (j > k)
		return j;
	else
		return k;
}

inline int min(int i, int j, int k)
{
	if (i < j)
		if (i < k)
			return i;
		else
			return k;
	else if (j < k)
		return j;
	else
		return k;
}

inline bool PointsNear(Point p1, Point p2, int x, int y)
{
	return (abs(p1.h - p2.h) <= x &&
			abs(p1.v - p2.v) <= y);
}
