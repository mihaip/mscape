// __________________________________________________________________________________________
// Program		: Icon Mangler
// Filename		: iconmangler.h (C++)
// Author		: Mihai Parparita (St. Mary's International School)
// Last modified: April 1, 1999
// Description	: The main header file, it brings together al the files and has function
//				  prototypes, resource IDs (as constants)

#pragma once

#include "icnsClass.h"
#include "commonfunctions.h"
#include "icnsEditorClass.h"
#include "editorStaticsClass.h"
#include "iconBrowser.h"
#include "AppleEvents.h"

// file types

const static long creatorCode = 'Mngl';
const static long iconFileType = 'Icon';
const static long prefFileType = 'pref';

// --- Constants --- //

// application constants
const static int kPalette = 27;

// app resource IDs
enum errorResources
{
	rDefaultNames = 128,
	rStdErrors = 129,
	rPrompts = 130
};

// substrings
enum defaultNames
{
	eAppName = 1,
	ePrefsName = 2,
	eOKButton = 3,
	eSaveButton = 4,
	eCancelButton = 5,
	eDontSaveButton = 6,
	eRegisterButton = 7,
	eNotYetButton = 8,
	eRegisterAppName = 9,
	eNotRegistered = 10
};

enum stdErrors
{
	eFileOpen = 1,
	eExpired = 2,
	eResourceMissing = 3,
	eRequirementsNotFulfilled = 4,
	eAEInitProblems = 5,
	eAppearanceInitProblems = 6,
	eMenuBarInitProblems = 7,
	eNeedInternetConfig = 8,
	eCantMakeEditor = 9,
	eLowOnMemory = 10,
	eOutOfMemory = 11,
	eCouldntFindRegister = 12,
	eBadRegCode = 13,
	eThanksForRegistering = 14
};

enum prompts
{
	eWantToSave = 1,
	eSelectFile = 2,
	eSaveFile = 3,
	eOpenTitle = 4,
	eRegistrationReminder
};

enum saveOptions
{
	noCancel = 1
};

// resource IDs
enum manglerResources
{
	// dialogs
	rAboutBox = 128,
	rRegister = 129,
	
	// pictures
	rAboutPic = 128,
	rAboutMask = 129,
	
	// others
	rPrefs = 128
};

// menubar stuff
const static int rMenuBarID = 128;

enum menus
{
	mApple = 128,
	mFile = 129,
	mEdit = 130,
	mSelect = 131,
	mTransform = 132,
	mPaste = 133,
	mView = 134
};

enum appleMenu
{
	iAbout = 1,
	iRegister = 2
};

enum fileMenu
{
	iNewIcon = 1,
	iOpenIcon = 2,
	iClose = 3,
	iSave = 5,
	iSaveAs = 6,
	iQuit = 8
};


enum editMenu
{
	iUndo = 1,
	iRedo = 2,
	iCut = 4,
	iCopy = 5,
	iPaste = 6,
	iClear = 7,
	iSelect = 8,
	iTransform = 9,
	iPreferences = 11
};

enum selectMenu
{
	iAll = 1,
	iSimilar = 2,
	iNone = 3,
	iInverse = 4
};

enum transformMenu
{
	iRotateCW = 1,
	iRotateCCW = 2,
	iFlipHorizontal = 4,
	iFlipVertical = 5,
	iInvert = 7
};

enum pasteMenu
{
	iPasteNormally = 1,
	iPasteAsIconAndMask = 2,
	iPasteIntoSelection = 3
};

enum viewMenu
{
	iZoomIn = 1,
	iZoomOut = 2
};

// dialog items
enum aboutBoxItems
{
	//iOK = 1,
	iAboutPic = 2,
	iHomepageAddress = 4,
	iEmailAddress = 5,
	iNameDisplayField = 7,
	iCompanyDisplayField = 8,
	iRegCodeDisplayField = 9
};

enum registerItems
{
	iRegisterButton = 1,
	// iCancel = 2,
	iLaunchRegister = 3,
	iNameField = 4,
	iCompanyField = 5,
	iRegCodeField = 6
};



// --- Prototypes --- //
void		Initialize(void);
bool		ConfigurationSupported(void);
OSErr		InitMenuBar(void);
void		LoadPreferences(void);
void		EventLoop(void);
void		DoEvent(EventRecord *eventPtr);
void		DoIdle(void);
void		HandleMouseDown(EventRecord *eventPtr);
void		HandleKeyDown(EventRecord *eventPtr);
void		HandleUpdate(EventRecord *eventPtr);
void		HandleActivate(EventRecord *eventStrucPtr);
void		HandleOSEvent(EventRecord *eventPtr);
void		DoMenuCommand(long menuResult);
void		AboutBox(void);
pascal 		bool AboutBoxEventFilter(DialogPtr dialog, EventRecord *eventPtr, short *itemHit);
void		Register(void);
OSErr		NewIcon(bool showWindow);
OSErr		GetIconFile(FSSpec* fileToOpen);
void		OpenIcon(FSSpec *fileToOpen);
bool		CloseIcon(int flags);
int			WantToSave(FSSpec fileSpec, int flags);
void		Nag(void);
pascal bool	AlertEventFilter(DialogPtr dialog, EventRecord *eventPtr, short *itemHit);
pascal void NavEventFilter(NavEventCallbackMessage callBackSelector,
						   NavCBRecPtr callBackParms, 
						   NavCallBackUserData callBackUD);
void		SaveIcon(bool saveAs);
void		CleanUp(void);
extern void DoError(int resourceID, int stringNo);

// --- Globals --- //
extern bool				gIsDone;
extern icnsEditorPtr	gFirstEditor;
extern icnsEditorPtr	gLastEditor;
extern Str255			gAppName;


