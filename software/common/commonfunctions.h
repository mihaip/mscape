#ifndef __commonfunctions__
#define __commonfunctions__

// #includes
#include <stdio.h>
#include <QDOffscreen.h>
#include <Sound.h>
#include <Navigation.h>
#include <stdarg.h>
#include <InternetConfig.h>
#include <Appearance.h>

#ifndef abs
#define abs(x) (((x) <= 0)?-(x):(x))
#endif

const static int kActiveHilite = 0;
const static int kInactiveHilite = 255;

#define SAVEGWORLD\
	CGrafPtr		oldPort;\
	GDHandle		oldDevice;\
	RGBColor		oldForeColor, oldBackColor;\
	\
	GetGWorld(&oldPort, &oldDevice);\
	GetForeColor(&oldForeColor);\
	GetBackColor(&oldBackColor);\
	ForeColor(blackColor);\
	BackColor(whiteColor);

#define RESTOREGWORLD\
	SetGWorld(oldPort, oldDevice);\
	RGBForeColor(&oldForeColor);\
	RGBBackColor(&oldBackColor);
	
#define SAVECOLORS\
	RGBColor		oldForeColor, oldBackColor;\
	GetForeColor(&oldForeColor);\
	GetBackColor(&oldBackColor);\
	ForeColor(blackColor);\
	BackColor(whiteColor);

#define RESTORECOLORS\
	RGBForeColor(&oldForeColor);\
	RGBBackColor(&oldBackColor);

// global variables
extern unsigned short gMenuBarHeight;
extern RgnHandle	  gOriginalGrayRgn;

// function prototypes
extern void DisplayAlert(const char* error, const char* reason);
extern void DisplayPAlert(Str255 error, Str255 reason);
extern void DisplayValue(int value);
extern void DisplayFloat(float value);
extern void DisplayColor(RGBColor color);
extern void InitToolbox(void);
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
extern void DisplayRect(Rect rectToDisplay);
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
extern OSStatus GetFile(Str255 client, long creator, long fileType, FSSpec* file);
extern OSStatus NewFile(Str255 promptText, Str255 defaultName, Str255 client, long creator, long fileType, FSSpec* file);
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
extern void FlipVertical(PixMapHandle srcPix);
extern void FlipHorizontal(PixMapHandle srcPix);
extern void Rotate(int angle, GWorldPtr *srcGW, PixMapHandle *srcPix);
extern void AppendString(Str255 string1, Str255 string2);
extern void EnableMenuItem(int menuID, int item);
extern void DisableMenuItem(int menuID, int item);
extern void SetCursor(int ID);
extern bool IsFrontProcess();

typedef void (*SetPixelFuncPtr)(int x, int y, long color, PixMapHandle target);
typedef long (*GetPixelFuncPtr)(int x, int y, PixMapHandle target);
#endif
