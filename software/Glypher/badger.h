#pragma once

#include <PictUtils.h>
#include <MacMemory.h>
#include <Controls.h>
#include <AppleEvents.h>
#include <Navigation.h>
#include "Icons.h"
#include "icnsClass.h"
#include "commonfunctions.h"

// file types

#define badgesFileType 'Bdgs'

// --- Constants --- //
#define partsResourceType 'wnd#'

// icon sizes
const static long				large32BitSize = 0x1000;
const static long				small32BitSize = 0x1000 / 4;
const static long				large8BitMaskSize = 0x400;
const static long				small8BitMaskSize = 0x400 / 4;
const static long				large1BitSize = 0x100;
const static long				small1BitSize = 0x100 / 4;
const static long				large8BitSize = 0x400;
const static long				small8BitSize = 0x400 / 4;

// app resource IDs
const static int aboutBoxID = 128;
const static int insertCicnID = 129;
const static int positionBadgesID = 130;

const static int aboutPicID = 128;
const static int aboutPicMaskID = 129;

// menubar stuff
const static int kMenuBarID = 128;

const static int mApple = 128;
const static int iAbout = 1;

const static int mFile = 129;
const static int iNewIconSet = 1;
const static int iEditBadges = 2;
const static int iQuit = 4;

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

const static int kStatusField = 2;

const static int kOK = 1;
const static int kInsertClipboard = 2;
const static int kIconPreview = 3;
const static int kShiftUp = 4;
const static int kShiftRight = 5;
const static int kShiftDown = 6;
const static int kShiftLeft = 7;
const static int kPopup = 8;
const static int kSmallIconPreview = 9;
const static int kSmallShiftUp = 10;
const static int kSmallShiftRight = 11;
const static int kSmallShiftDown = 12;
const static int kSmallShiftLeft = 13;
const static int kDesktopPreview = 14;

// --- Type Definitions -- //
typedef enum tCicnCreateFlags
{
	includeOldStyle=1,
	createFile=2
} tCicnCreateFlags;

typedef struct tOffset
{
	short hOffset;
	short vOffset;
	short smallHOffset;
	short smallVOffset;
} tOffset;

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
void		NewIconSet(void);
OSStatus	NewIconSetNav(void);
OSStatus	NewIconSetOld(void);
void		EditBadges(void);
void		PositionBadges(void);
void		MakeNewSet(void);
void 		MergeIcon(int ID, Str255 name, icnsClass* baseicns);
void		DrawImageWell(Rect bounds);
OSStatus	GetBadgesNav(void);
OSStatus	GetBadgesOld(void);
void		HandleEditChoice(int item);

// --- Globals --- //

extern bool			isDone;
extern bool			navServicesAvailable;
extern CGrafPtr		startupPort;
extern GDHandle		startupDevice;
extern FSSpec		badgesSpec;
extern FSSpec		setSpec;
extern FSSpec		currentScheme;
extern short		appFile;


