#pragma once

#include "commonfunctions.h"
#include "cicnutils.h"
#include <PictUtils.h>
#include <MacMemory.h>
#include <Controls.h>
#include <AppleEvents.h>

// file types

#define fileCreator 'SBnc'
#define prefFileType 'Pref'

// --- Constants --- //

#define schemeFileType 'Colr'
#define partsResourceType 'wnd#'

// app resource IDs
const static int aboutBoxID = 128;
const static int insertCicnID = 129;

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

const static int kInsert = 1;
const static int kCancel = 2;
const static int kTypesPopup = 3;
const static int kcicnPopup = 4;
const static int kIDField = 5;

// popup menus

const static int mDocWindow = 132;
const static int mDialog = 133;
const static int mAlert = 134;
const static int mMovableDialog = 135;
const static int mMovableAlert = 136;
const static int mTitledUtilityWindow = 137;
const static int mSideUtilityWindow = 138;
const static int mTitlelessUtilityWindow = 139;
const static int mPopupWindow = 140;
const static int mMenubar = 141;
const static int mPushButton = 142;
const static int mProgressBar = 143;
const static int mScrollThumbs = 144;
const static int mSmallBevelButton = 145;
const static int mNormalBevelButton = 146;
const static int mLargeBevelButton = 147;
const static int mDisclosureTriangle = 148;
const static int mLittleArrows = 149;
const static int mTabs = 150;
const static int mPlacard = 151;
const static int mDialogAndAlertColors = 152;
const static int mFinderHeader = 153;
const static int mIconColors = 154;
const static int mCheckboxes = 155;
const static int mRadioButtons = 156;
const static int mHorizontalScrollbars = 157;
const static int mVerticalScrollbars = 158;
const static int mGhostThumbs = 159;
const static int mPopupMenu = 160;
const static int mAlertIcons = 161;

const static int iDocWindow = 1;
const static int iDialog = 2;
const static int iAlert = 3;
const static int iMovableDialog = 4;
const static int iMovableAlert = 4;
const static int iTitledUtilityWindow = 5;
const static int iSideUtilityWindow = 6;
const static int iTitlelessUtilityWindow = 7;
const static int iPopupWindow = 8;
const static int iMenubar = 9;
const static int iPushButton = 10;
const static int iProgressBar = 11;
const static int iScrollThumbs = 12;
const static int iSmallBevelButton = 13;
const static int iNormalBevelButton = 14;
const static int iLargeBevelButton = 15;
const static int iDisclosureTriangle = 16;
const static int iLittleArrows = 17;
const static int iTabs = 18;
const static int iPlacard = 19;
const static int iDialogAndAlertColors = 20;
const static int iFinderHeader = 21;
const static int iIconColors = 22;
const static int iCheckboxes = 23;
const static int iRadioButtons = 24;
const static int iHorizontalScrollbars = 25;
const static int iVerticalScrollbars = 26;
const static int iGhostThumbs = 27;
const static int iPopupMenu = 28;
const static int iAlertIcons = 29;

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
OSErr DoOpenApp(const AppleEvent *theAppleEvent, AppleEvent *reply, long refCon);
OSErr DoOpenDoc(const AppleEvent *theAppleEvent, AppleEvent *reply, long refCon);
OSErr DoPrintDoc(const AppleEvent *theAppleEvent, AppleEvent *reply, long refCon);
OSErr DoQuitApp(const AppleEvent *theAppleEvent, AppleEvent *reply, long refCon);
void		GetCurrentScheme(void);
void		EventLoop(void);
void		DoEvent(EventRecord *eventPtr);
void		HandleMouseUp(EventRecord *eventPtr);
void		HandleMouseDown(EventRecord *eventPtr);
void		HandleKeyDown(EventRecord *eventPtr);
void		HandleUpdate(EventRecord *eventPtr);
void		DoMenuCommand(int menuResult);
void		HandleAppleChoice(int item);
void		ShowAboutBox(void);
void		HandleFileChoice(int item);
void		InsertCicn(void);
void		GetcicnID(void);
void		clip2cicn(short cicnID);
void 		CloseScheme(void);
void		HandleEditChoice(int item);

// --- Globals --- //

extern bool			isDone;
extern CGrafPtr		startupPort;
extern GDHandle		startupDevice;
extern FSSpec		schemeSpec;



