#pragma once

#include "commonfunctions.h"

// file types

#define fileCreator 'SBnc'
#define prefFileType 'Pref'

// --- Constants --- //

#define schemeFileType 'Colr'
#define partsResourceType 'wnd#'

// app resource IDs
const static int aboutBoxID = 128;
const static int insertCicnID = 129;

const static int aboutPicID = 128;
const static int aboutPicMaskID = 129;

// menubar stuff
const static int kMenuBarID = 128;

const static int mApple = 128;
const static int iAbout = 1;

const static int mFile = 129;
const static int iInsertCicn = 1;
const static int iQuit = 3;

const static int mEdit = 130;
const static int iUndo = 1;
const static int iCut = 3;
const static int iCopy = 4;
const static int iPaste = 5;
const static int iClear = 6;
const static int iSelectAll = 7;
const static int iPreferences = 9;

// dialog items
const static int kOk = 1;
const static int kAboutPic = 2;

const static int kInsert = 1;
const static int kCancel = 2;
const static int kTypesPopup = 3;
const static int kcicnPopup = 4;
const static int kIDField = 5;
const static int kClipboardPreview = 7;
const static int kCicnPreview = 8;

// --- Type Definitions -- //
typedef struct tResults
{
	Str63	schemeName;
	int		minKVersion;
	int		docWindow;
	int		dialog;
	int		alert;
	int		average;
	int		baseline;
	float	schemeBenchIndex;
} tResults;



// --- Prototypes --- //

// MacOS stuff
void		Initialize(void);
void		InitMenuBar(void);
void		AppleEventInit(void);
void		GetCurrentScheme(void);
#if TARGET_CPU_PPC
OSErr DoOpenApp(const AppleEvent *theAppleEvent, AppleEvent *reply, long refCon);
OSErr DoOpenDoc(const AppleEvent *theAppleEvent, AppleEvent *reply, long refCon);
OSErr DoPrintDoc(const AppleEvent *theAppleEvent, AppleEvent *reply, long refCon);
OSErr DoQuitApp(const AppleEvent *theAppleEvent, AppleEvent *reply, long refCon);
#endif
void		GetCurrentScheme(void);
void		EventLoop(void);
void		DoEvent(EventRecord *eventPtr);
void		HandleMouseUp(EventRecord *eventPtr);
void		HandleMouseDown(EventRecord *eventPtr);
void		HandleKeyDown(EventRecord *eventPtr);
void		HandleUpdate(EventRecord *eventPtr);
void		DoMenuCommand(long menuResult);
void		HandleAppleChoice(int item);
void		ShowAboutBox(void);
void		HandleFileChoice(int item);
void		DrawImageWell(Rect bounds);
OSStatus	GetSchemeNav(void);
OSStatus	GetSchemeOld(void);
void		GetcicnID(void);
void		clip2cicn(short cicnID, Str255 cicnName);
void 		CloseScheme(void);
void		HandleEditChoice(int item);

// --- Globals --- //

extern bool			isDone;
extern bool			navServicesAvailable;
extern CGrafPtr		startupPort;
extern GDHandle		startupDevice;
extern FSSpec		schemeSpec;
extern FSSpec		currentScheme;
extern short		appFile;



