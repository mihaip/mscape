#pragma once

#include "commonfunctions.h"
#include "icnsClass.h"
#include "AppleEvents.h"

// file types

#define fileCreator 'c2ic'
#define prefFileType 'Pref'

// --- Constants --- //

//#define __expires__

// app resource IDs
const static int aboutBoxID = 128;
const static int editIconID = 129;
const static int registrationID = 130;
const static int preferencesID = 131;
const static int nagID = 300;

const static int aboutPicID = 128;
const static int aboutPicMaskID = 129;

// menubar stuff
const static int baseMenuID = 201;
const static int menuCount = 7;

const static int kMenuBarID = 128;

const static int mApple = 128;
const static int iAbout = 1;
const static int iRegister = 2;

const static int mFile = 129;
const static int iNewIcon = 1;
const static int iOpenIcon = 2;
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
const static int kHomepageAddress = 7;
const static int kEmailAddress = 8;

const static int kInsert = 1;
const static int kClose = 2;
const static int kTypesPopup = 3;
const static int kIconPopup = 4;
const static int kIDField = 5;
const static int kIDFieldLabel = 6;
const static int kClipboardPreview = 7;
const static int kCurrentIconPreview = 8;
const static int kExtract = 11;

const static int kRegister = 1;
const static int kCancel = 2;
const static int kLaunchRegister = 3;
const static int kNameField = 4;
const static int kCompanyField = 5;
const static int kRegNoField = 6;

const static int kIncludeOldStyle = 3;
const static int kSetBits = 4;
const static int kGenerateOldStyle = 5;
const static int kNameResources = 6;
const static int kDither = 7;
const static int kRememberSelection = 8;

// --- Type Definitions -- //
typedef struct tPreferences
{
	short timesUsed;
	Str255 name;
	Str255 company;
	Str255 regNo;
	bool includeOldStyle;
	bool setBits;
	bool generateOldStyle;
	bool nameResources;
	bool dither;
	bool rememberSelection;
	short lastID;
} tPreferences;

typedef tPreferences** PreferencesHandle;

// --- Prototypes --- //

// MacOS stuff
void		Initialize(void);
void		InitMenuBar(void);
void		LoadPreferences(void);
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
void 		GenerateRegNo(Str255 name, Str255 regNo);
void		Register(void);
void		HandleFileChoice(int item);
void		NewIcon(void);
OSStatus	NewIconNav(void);
OSStatus	NewIconOld(void);
void		OpenIcon(void);
void		DrawImageWell(Rect bounds);
OSStatus	GetFileNav(void);
OSStatus	GetFileOld(void);
void		EditIcon(bool createFile);
void		RedrawEditDialog(DialogPtr dialog);
void		GetIconMenu(int ID, int* group, int* item, Str255 name);
void		icns2clip(short ID);
pascal bool StandardDialogFilter(DialogPtr positionGlyphs, EventRecord* eventPtr, short* itemHit);
void		clip2icns(short icnsID, Str255 icnsName);
void 		Nag(void);
void		HandleEditChoice(int item);
void		SetPreferences(void);
void		CleanUp(void);

// --- Globals --- //

extern bool			isDone;
extern bool			navServicesAvailable;
extern CGrafPtr		startupPort;
extern GDHandle		startupDevice;
extern FSSpec		fileSpec;
extern FSSpec		currentScheme;
extern short		appFile;
extern PreferencesHandle preferences;


