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
#include "iconBrowserClass.h"
#include "AppleEvents.h"
#include "MAlert.h"

// file types

const static long creatorCode = 'Mngl';
const static long prefFileType = 'pref';

// --- Constants --- //

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
	eNotRegistered = 10,
	eEmailAddress = 11,
	eHomepageAddress = 12,
	eShowColorsPalette = 13,
	eHideColorsPalette = 14,
	eShowMembersPalette = 15,
	eHideMembersPalette = 16,
	eShowPreviewPalette = 17,
	eHidePreviewPalette = 18,
	eShowToolPalette = 19,
	eHideToolPalette = 20,
	eIconographerHelp = 21,
	eEmailAuthor = 22,
	eIconographerHomepage = 23,
	eHelpPath = 24,
	eRevertButton = 25
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
	eThanksForRegistering = 14,
	eAppearanceNotInstalled = 15
};

enum prompts
{
	eWantToSave = 1,
	eSelectFile = 2,
	eSaveFile = 3,
	eSaveIntoFile = 4,
	eInsertTitle = 5,
	eOpenTitle = 6,
	eRegistrationReminder = 7,
	eSelectICO = 8,
	eSelectTIFF = 9,
	eIconAlreadyExists = 10,
	eRevert = 11
};

enum saveOptions
{
	noCancel = 1,
	saveAs = 2,
	saveInto = 4
};

// resource IDs
enum manglerResources
{
	// dialogs
	rAboutBox = 128,
	rRegister = 129,
	rNavCustomItems = 2000,
	
	// pictures
	rAboutPic = 128,
	rAboutMask = 129,
	
	// others
	rPrefs = 128,
	rTypesPopup = 2000,
	rOldOpenDialog = 3001,
	rOldSaveDialog = 3002
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
	mCopy = 134,
	mIcon = 135,
	mColors = 136,
	mWindows = 137
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
	iSaveInto = 7,
	iRevert = 8,
	iQuit = 10
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
	iAdjust = 10,
	iPreferences = 12
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
	iPasteIntoSelection = 3,
	iPasteIconFamily = 4
};

enum copyMenu
{
	iCopyNormally = 1,
	iCopyAsIconAndMask = 2,
	iCopyIconFamily = 3
};

enum iconMenu
{
	iZoomIn = 1,
	iZoomOut = 2,
	iColors = 4,
	iInsertIcon = 6,
	iIconInfo = 7,
	iOpenInExternalEditor = 9
};

enum colorsMenu
{
	iMacOSColors = 1,
	iWinColors = 2
};

enum windowsMenu
{
	iToggleToolPalette = 1,
	iToggleMembersPalette = 2,
	iTogglePreviewPalette = 3,
	iToggleColorsPalette = 4,
	iEditorsInsertionPoint = 5,
	iBrowsersInsertionPoint = 6
};

enum helpMenu
{
	iIconographerHelp = 5,
	iEmailAuthor = 7,
	iVisitHomepage = 8
};

// dialog items
enum aboutBoxItems
{
	iAboutPic = 3,
	iHomepageAddress = 2,
	iEmailAddress = 1,
	iNameDisplayField = 4,
	iCompanyDisplayField = 5,
	iRegCodeDisplayField = 6
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

enum openItems
{
	iOpenSelect = 9,
	iOpenPrompt = 10,
	iOpenFormatPopup = 11
};

enum saveItems
{
	iSaveNameField = 9,
	iSaveFormatPopup = 12
};

typedef OSErr (*GetFileFuncPtr)(FSSpec* fileSpec);

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
bool		HandleSimpleCases(FSSpec fileSpec, long* ID);
OSErr		NewBrowser(FSSpec file, int format);
OSErr 		GetIcon(FSSpec* fileSpec);
void		OpenIcon(FSSpec *fileToOpen);
bool		Close(int flags);
int			WantToSave(FSSpec fileSpec, int flags);
void		Nag(bool startup);
pascal bool	AlertEventFilter(DialogPtr dialog, EventRecord *eventPtr, short *itemHit);
OSErr		SaveIcon(int flags);
void		Revert();
void 		RefreshIconBrowser(bool newIcon, int deletedIcon, int deletedIconFormat);
void		CleanUp(void);
extern void	DoError(int resourceID, int stringNo);
void		OpenIconFromBrowser(FSSpec *fileToOpen, long ID, long format, long member);
icnsEditorPtr GetEmptyEditor(FSSpec fileToOpen, long ID, int format);
void		RebuildWindowsMenu();
void 		TogglePalette(MFloaterPtr palette, int menuItem, int showStringIndex, int hideStringIndex);
void 		SetupPalette(MFloaterPtr palette, int flag, int menuItem, int showStringIndex, int hideStringIndex);
void		InsertIcon();

// file stuff

pascal void NavOpenEventFilter(NavEventCallbackMessage callBackSelector,
						   NavCBRecPtr callBackParms, 
						   NavCallBackUserData callBackUD);
pascal void NavSaveEventFilter(NavEventCallbackMessage callBackSelector, 
							   NavCBRecPtr callBackParms, 
							   NavCallBackUserData callBackUD);
void		SetFileName(ControlHandle formatPopup, Str255 fileName);
pascal bool NavOpenFileFilter(AEDesc *theItem, void *info, void *callBackUD, NavFilterModes filterMode);
OSErr		SaveFile(FSSpec* fileSpec, long* format);
pascal bool SaveEventFilter(DialogPtr theDlgPtr, EventRecord* eventPtr, short *item, Ptr dataPtr);
void		SyncPopupToName(Str255 name, ControlHandle formatPopup);
pascal short OpenDialogHook(short item, DialogPtr theDlgPtr, Ptr dataPtr);
pascal bool OpenEventFilter(DialogPtr theDlgPtr, EventRecord* eventPtr, short *item, Ptr dataPtr);
OSErr		GetIconFile(FSSpec* fileSpec, long* format, bool save);
pascal bool OpenFileFilter(CInfoPBPtr myCInfoPBPtr, Ptr dataPtr);


// --- Globals --- //
extern bool				gIsDone;
extern Str255			gAppName;


