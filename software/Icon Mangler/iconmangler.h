#pragma once

#include "commonfunctions.h"
#include "icnsClass.h"
#include "icnsEditorClass.h"
#include <PictUtils.h>
#include <MacMemory.h>
#include <Controls.h>
#include <AppleEvents.h>
#include <Navigation.h>

// file types

#define fileCreator 'Mngl'
#define prefFileType 'Pref'

// --- Constants --- //

#define __expires__

// application constants
const static int kPalette = 27;

// app resource IDs

enum errorResources
{
	rStdErrors = 128
};

enum stdErrors
{
	eNoIcons = 1,
	eExpired = 2,
	eResourceMissing = 3,
	eOutOfMemory
};

const static int aboutBoxID = 128;
const static int inserticnsID = 129;
const static int registrationID = 130;
const static int preferencesID = 131;
const static int exporticnsID = 132;
const static int iconBrowserID = 300;

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
const static int iClose = 3;
const static int iSave = 5;
const static int iSaveAs = 6;
const static int iQuit = 8;

const static int mEdit = 130;
const static int iUndo = 1;
const static int iRedo = 2;
const static int iCut = 4;
const static int iCopy = 5;
const static int iPaste = 6;
const static int iClear = 7;
const static int iSelect = 8;
const static int iTransform = 9;
const static int iPreferences = 11;

const static int mSelect = 131;
const static int iAll = 1;
const static int iNone = 2;
const static int iInverse = 3;

const static int mTransform = 132;
const static int iRotateCW = 1;
const static int iRotateCCW = 2;
const static int iFlipHorizontal = 4;
const static int iFlipVertical = 5;

const static int mView = 133;
const static int iZoomIn = 1;
const static int iZoomOut = 2;

// dialog items
const static int kOk = 1;
const static int kAboutPic = 2;
const static int kHomepageAddress = 7;
const static int kEmailAddress = 8;

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

const static int kIconPreview = 4;
const static int kIconList = 5;

// --- Type Definitions -- //
/*typedef enum tCicnCreateFlags
{
	createFile=1
} tCicnCreateFlags;*/

enum errors
{
	canceledErr = 1,
	noIconsErr = 2
	
};

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
} tPreferences;

typedef tPreferences** PreferencesHandle;

class globalsClass
{
	public:
		globalsClass(void);
		bool			isDone;
		CGrafPtr		startupPort;
		GDHandle		startupDevice;
		FSSpec			openedFile;
		icnsEditorPtr	firstEditor;
		icnsEditorPtr	lastEditor;
};

// --- Prototypes --- //

// MacOS stuff
void		Initialize(void);
void		InitMenuBar(void);
void		ToggleMenus(void);
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
void		DoIdle(void);
void		HandleMouseUp(EventRecord *eventPtr);
void		HandleMouseDown(EventRecord *eventPtr);
void		HandleKeyDown(EventRecord *eventPtr);
void		HandleUpdate(EventRecord *eventPtr);
void		HandleActivate(EventRecord *eventStrucPtr);
void		DoMenuCommand(long menuResult);
void		HandleAppleChoice(int item);
void		ShowAboutBox(void);
void 		GenerateRegNo(Str255 name, Str255 regNo);
void		Register(void);
void		HandleFileChoice(int item);
void		NewIcon(void);
void		OpenIcon(FSSpec *fileToOpen);
void		CloseIcon(void);
OSStatus	IconBrowser(FSSpec fileSpec, long *ID);
long		GetIDFromList(Cell theCell, ListHandle theList);
void		AddIconsToList(OSType resourceType, ListHandle theList);
void		InsertIntoIconList(ListHandle theList, long ID, Str255 name);
void		BuildIconList(ListHandle theList, FSSpec srcSpec);
int			FindIDInList(ListHandle theList, long ID, bool nearest);
void 		DisplayIconPreview(ControlHandle displayControl, FSSpec srcSpec, long ID);
pascal bool	EventFilter(DialogPtr dialogPtr,EventRecord *eventStrucPtr,SInt16 *itemHit);
void		SaveIcon(bool saveAs);
void		HandleEditChoice(int item);
void		HandleSelectChoice(int item);
void		HandleTransformChoice(int item);
void		SetPreferences(void);
void		HandleViewChoice(int item);
void		CleanUp(void);
extern void DoError(int resourceID, int stringNo);

// --- Globals --- //

extern bool gIsDone;
extern icnsEditorPtr gFirstEditor;
extern icnsEditorPtr gLastEditor;


