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

const static int kActiveHilite = 0;
const static int kInactiveHilite = 255;

// typedefs
typedef void (*SetPixelFuncPtr)(int x, int y, long color, PixMapHandle target);
typedef long (*GetPixelFuncPtr)(int x, int y, PixMapHandle target);
typedef void (*UpdateFunctionPtr)(EventRecord* eventPtr);


// macros
#ifndef SAVEGWORLD
#define SAVEGWORLD\
	CGrafPtr		oldPort;\
	GDHandle		oldDevice;\
	\
	GetGWorld(&oldPort, &oldDevice);
#endif

#ifndef RESTOREGWORLD
#define RESTOREGWORLD\
	SetGWorld(oldPort, oldDevice);
#endif

#ifndef SAVECOLORS
#define SAVECOLORS\
	RGBColor		oldForeColor, oldBackColor;\
	GetForeColor(&oldForeColor);\
	GetBackColor(&oldBackColor);\
	ForeColor(blackColor);\
	BackColor(whiteColor);
#endif

#ifndef RESTORECOLORS
#define RESTORECOLORS\
	RGBForeColor(&oldForeColor);\
	RGBBackColor(&oldBackColor);
#endif

#ifndef ISSHIFTDOWN
#define ISSHIFTDOWN\
	(IsKeyPressed(0x38) || IsKeyPressed(0x3C))
#endif

#ifndef ISOPTIONDOWN
#define ISOPTIONDOWN\
	(IsKeyPressed(0x3A) || IsKeyPressed(0x3D))
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
extern WindowPtr GetWindow(int windowID);
extern short GetScreenDepth (void);
extern void ExitApplication(void);
extern void Sleep(int sleepDuration);

extern void HideMenubar(void);
extern void ShowMenubar(void);

extern Boolean IsKeyPressed(short keyCode);
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
extern OSStatus LaunchURL(ConstStr255Param urlStr);
extern bool CheckString(Str255 input);
extern void ToggleMenuItem(int menuID, int itemNo);
extern OSStatus GetFile(Str255 client, long creator, long fileType, Str255 message, FSSpec* file);
extern OSStatus NewFile(Str255 client, long creator, long fileType, Str255 defaultName, Str255 message, FSSpec* file);
extern inline void CopyPixMap(PixMapHandle srcPix, PixMapHandle targetPix, const Rect* srcRect, const Rect* targetRect, long flags, RgnHandle clipRgn);
extern void SetPixel32(int x, int y, long color, PixMapHandle target);
extern long GetPixel32(int x, int y, PixMapHandle src);
extern char GetColorIndex(RGBColor color, CTabHandle colorTable);
extern void SetPixel8(int x, int y, long color, PixMapHandle target);
extern long GetPixel8(int x, int y, PixMapHandle src);
extern void SetPixel4(int x, int y, long color, PixMapHandle target);
extern long GetPixel4(int x, int y, PixMapHandle src);
extern void SetPixel1(int x, int y, long color, PixMapHandle target);
extern long GetPixel1(int x, int y, PixMapHandle src);
extern void DrawImageWell(ControlHandle theControl, Rect targetRect);
extern void LocalToGlobalRect(Rect	*theRect);
extern void PixMapToPicture(PixMapHandle srcPix, RgnHandle maskRgn, PicHandle *targetPic);
extern void AppendString(Str255 string1, Str255 string2);
extern void SubstituteString(Str255 string, Str255 pattern, Str255 replace);
extern int FindSubstring(Str255 string, Str255 pattern);
extern void EnableMenuItem(int menuID, int item);
extern void DisableMenuItem(int menuID, int item);
extern void SetCursor(int ID);
extern bool IsFrontProcess();
extern OSStatus MakeTwoColorTable(CTabHandle *colorTable, RGBColor color1, RGBColor color2);
extern bool pascal MaskColorSearch(RGBColor *color, int *result);
extern OSStatus Make1BitMask(PixMapHandle srcPix, PixMapHandle targetPix);
extern void SetControlText(ControlHandle control, Str255 text);
extern pascal bool StandardEventFilter(DialogPtr dialogPtr,EventRecord *eventStrucPtr,SInt16 *itemHit);

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

inline int abs(int x)
{
	if (x < 0)
		return -x;
	else
		return x;
}
