#ifndef __commonfunctions__
#define __commonfunctions__

// #includes
#include <stdio.h>
#include <QDOffscreen.h>
#include <Sound.h>
#include <Navigation.h>
#include <stdarg.h>

// global variables
extern unsigned short gMenuBarHeight;
extern RgnHandle	  gOriginalGrayRgn;


// function prototypes
extern void DisplayAlert(const char* error, const char* reason);
extern void DisplayPAlert(Str255 error, Str255 reason);
extern void InitToolBox(void);
extern char* C2Pas(char* cStr, Str255 pStr);
extern void DrawPicture(int pictureID);
extern void CenterPict(PicHandle picture, Rect *destRectPtr);
extern WindowPtr DisplayWindow(int windowID);
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
extern GrafPtr CreateGrafPort(Rect* bounds);
extern void DisposeGrafPort(GrafPtr doomedPort );
extern void MakeTargetRect(Rect src, Rect* target);
extern OSType GetApplSignature ( );
extern NavTypeListHandle MakeTypeList ( OSType applSignature, int numTypes, ... );
extern void DummyFunction();
#endif
