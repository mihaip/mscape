#pragma once

// #includes
#include <stdio.h>
#include <stdarg.h>

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
	PenState		oldState;\
	GetForeColor(&oldForeColor);\
	GetBackColor(&oldBackColor);\
	GetPenState(&oldState);\
	ForeColor(blackColor);\
	BackColor(whiteColor);
#endif

#ifndef RESTORECOLORS
#define RESTORECOLORS\
	SetPenState(&oldState);\
	RGBForeColor(&oldForeColor);\
	RGBBackColor(&oldBackColor);
#endif

// function prototypes
extern void InitToolbox(void);
extern void DisplayAlert(const char* error, const char* reason);
extern void DisplayPAlert(Str255 error, Str255 reason);
extern char* C2Pas(char* cStr, Str255 pStr);
extern void ExitApplication(void);
extern void CopyString(Str255 dst, const Str255 src);
extern void BlockFill(unsigned char *block, int fill, int size);
extern GrafPtr CreateGrafPort(Rect* bounds);
extern void DisposeGrafPort(GrafPtr doomedPort );
extern void MakeTargetRect(Rect src, Rect* target);
extern OSType GetApplSignature ( );
extern NavTypeListHandle MakeTypeList ( OSType applSignature, int numTypes, ... );
extern void DummyFunction();
extern void CropPixMap(PixMapHandle pixMap, int targetRowBytes);
extern int GetDepth(int noOfColors);
extern void GetFSSpecFromAEDesc (AEDesc &inDesc, FSSpec &outValue );
extern OSStatus LaunchURL(ConstStr255Param urlStr);
extern bool CheckString(Str255 input);
extern void DrawImageWell(ControlHandle theControl, Rect targetRect);
extern void AppendString(Str255 string1, Str255 string2);
extern bool IsFrontProcess();
extern bool pascal MaskColorSearch(RGBColor *color, int *result);
extern OSStatus Make1BitMask(PixMapHandle srcPix, PixMapHandle targetPix, Rect bounds);

