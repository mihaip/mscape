// __________________________________________________________________________________________
// Program		: Icon Mangler
// Filename		: iconmangler.h (C++)
// Author		: Mihai Parparita (St. Mary's International School)
// Last modified: April 1, 1999
// Descriptfion	: The main header file, it brings together al the files and has function
//				  prototypes, resource IDs (as constants)

#pragma once

#include "MIcon.h"
#include "commonfunctions.h"
#include "icnsEditorClass.h"
#include "editorStaticsClass.h"
#include "iconBrowserClass.h"
#include "AppleEvents.h"
#include "MAlert.h"
#if TARGET_API_MAC_CARBON
#include "AboutBox.h"
#endif

// file types

const static long creatorCode = 'Mngl';
const static long prefFileType = 'pref';

// --- Constants --- //

enum moreStatus
{
	frontIsAbout = 1 << 29,
	frontIsBrowser = 1 << 30,
	frontIsEditor = 1 << 31
};

// app resource IDs
enum errorResources
{
	rDefaultNames = 128,
	rStdErrors = 129,
	rPrompts = 130,
	
	rAboutHelp = 160,
	rRegisterHelp = 161
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
	eRegistrationHomepage = 10,
	eRegisterOnline = 11,
	eLaunchRegisterApp = 12,
	eNotRegistered = 13,
	eEmailAddress = 14,
	eHomepageAddress = 15,
	eShowColorsPalette = 16,
	eHideColorsPalette = 17,
	eShowMembersPalette = 18,
	eHideMembersPalette = 19,
	eShowPreviewPalette = 20,
	eHidePreviewPalette = 21,
	eShowToolPalette = 22,
	eHideToolPalette = 23,
	eIconographerHelp = 24,
	eEmailAuthor = 25,
	eIconographerHomepage = 26,
	eHelpPath = 27,
	eRevertButton = 28,
	eShowPixelGrid = 29,
	eHidePixelGrid = 30,
	eAddMember = 31,
	eInsertIcon = 32,
	eOpenHelp = 33,
	eContinue = 34,
	eRegisteredTo = 35,
	eRepositionButton = 36,
	eReapplyMenuItem = 37
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
	eAppearanceNotInstalled = 15,
	eNeedInternetConfigRegistration = 16,
	eCantOpenFile = 17,
	eNeedCarbonLib = 18,
	eRezChangeStartup = 19,
	eRezChangeEvent = 20
};

enum prompts
{
	eWantToSaveError = 1,
	eSelectFile = 2,
	eSaveFile = 3,
	eSaveIntoFile = 4,
	eInsertTitle = 5,
	eOpenTitle = 6,
	eRegistrationReminder = 7,
	eSelectICO = 8,
	eSelectTIFF = 9,
	eIconAlreadyExists = 10,
	eRevert = 11,
	eChooseRegistrationMethod = 12,
	eWelcome = 13,
	eWantToSaveExplanation = 14
};

enum aboutHelp
{
	hEmailAddress = 1,
	hWebAddress = 2,
	hRegistrationInfo = 4
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
	mOpenRecent = 130,
	mEdit = 131,
	mSelect = 132,
	mTransform = 133,
	mPaste = 134,
	mCopy = 135,
	mIcon = 136,
	mColors = 137,
	mEffects = 138,
	mWindows = 139
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
	iOpenRecent = 3,
	iClose = 4,
	iSave = 6,
	iSaveAs = 7,
	iSaveInto = 8,
	iRevert = 9,
	iQuit = 11
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
	iInverse = 4,
	iExpandContract = 5,
	iStroke = 6
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
	iZoomFit = 3,
	iZoomActual = 4,
	
	iColors = 6,
	iInsertIcon = 8,
	iIconInfo = 9,
	iPixelGrid = 10,
	
	iGenerateMask = 12,
	iCompleteIcon = 13,
	
	iOpenInExternalEditor = 15
};

enum colorsMenu
{
	iMacOSColors = 1,
	iWinColors = 2
};

enum effectsMenu
{
	iReapply = 1,
	iEffectsInsertionPoint = 2
};

enum windowsMenu
{
	iToggleToolPalette = 1,
	iToggleMembersPalette = 2,
	iTogglePreviewPalette = 3,
	iToggleColorsPalette = 4,
	iEditorsInsertionPoint = 5,
	iBrowsersInsertionPoint = 6,
	
	kPalettesCount = 4
};

enum helpMenu
{
	iIconographerHelp = 1,
	iEmailAuthor = 3,
	iVisitHomepage = 4
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
	iOrderRegistrationCode = 3,
	iNameField = 4,
	iCompanyField = 5,
	iRegCodeField = 6
};

enum chooseRegistrationMethodItems
{
	iRegisterOnline = 1,
	iLaunchRegisterApp = 3	
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
void		UpdateMenuBar(int status);
void		HandleMouseDown(EventRecord *eventPtr);
void		HandleKeyDown(EventRecord *eventPtr);
void		HandleUpdate(EventRecord *eventPtr);
void		HandleActivate(EventRecord *eventStrucPtr);
void		HandleOSEvent(EventRecord *eventPtr);

void		SetupResolutionHandling();
pascal void ResolutionChangeNotification(void *userData, short theMessage, void *notifyData);
void		HandleResolutionChange(bool fromEvent);

void		DoMenuCommand(long menuResult);
void		ShowAboutBox(void);
void		ShowFirstTimeDialog(void);
pascal Boolean AboutBoxEventFilter(DialogPtr dialog, EventRecord *eventPtr, short *itemHit);
void		Register(void);
void		ChooseRegistrationMethod();
OSErr		NewIcon(bool showWindow);
bool		HandleSimpleCases(FSSpec fileSpec, long* ID);
OSErr		NewBrowser(FSSpec file, int format);
OSErr 		GetIcon(FSSpec* fileSpec);
void		OpenIcon(FSSpec *fileToOpen);
void		PostOpen();
bool		Close(WindowPtr windowToClose, int flags);
int			WantToSave(FSSpec fileSpec, int flags);
void		Nag(bool startup);
pascal Boolean	AlertEventFilter(DialogPtr dialog, EventRecord *eventPtr, short *itemHit);
OSErr		SaveIcon(icnsEditorPtr frontEditor, int flags);
void		Revert();
void 		RefreshIconBrowser(bool newIcon, int deletedIcon, int deletedIconFormat);
void		CleanUp(void);
void		DoError(int resourceID, int stringNo);
void		DoError(Str255 text);
void		OpenIconFromBrowser(FSSpec *fileToOpen, long ID, long format, long member);
icnsEditorPtr GetEmptyEditor(FSSpec fileToOpen, long ID, int format);
void		RebuildRecentFilesMenu();
void		RebuildWindowsMenu();

void 		TogglePalette(MFloaterPtr palette, int menuItem, int showStringIndex, int hideStringIndex);
void 		SetupPalette(MFloaterPtr palette, int flag, int menuItem, int showStringIndex, int hideStringIndex);

void 		TogglePixelGrid();
void		SetupPixelGrid();

void		InsertIcon(MIconPtr tempIcon);

// file stuff

pascal void NavOpenEventFilter(NavEventCallbackMessage callBackSelector,
						   NavCBRecPtr callBackParms, 
						   NavCallBackUserData callBackUD);
pascal void NavSaveEventFilter(NavEventCallbackMessage callBackSelector, 
							   NavCBRecPtr callBackParms, 
							   NavCallBackUserData callBackUD);
pascal Boolean NavOpenFileFilter(AEDesc *theItem, void *info, void *callBackUD, NavFilterModes filterMode);
OSErr		SaveFile(FSSpec* fileSpec, long* format);
pascal Boolean SaveEventFilter(DialogPtr theDlgPtr, EventRecord* eventPtr, short *item, void* dataPtr);
void		SyncPopupToName(FSSpec* file, Str255 name, ControlHandle formatPopup);
pascal short OpenDialogHook(short item, DialogPtr theDlgPtr, void* dataPtr);
pascal Boolean OpenEventFilter(DialogPtr theDlgPtr, EventRecord* eventPtr, short *item, void* dataPtr);
OSErr		GetIconFile(FSSpec* fileSpec, long* format, bool save);
pascal Boolean OpenFileFilter(CInfoPBPtr myCInfoPBPtr, void* dataPtr);


// --- Globals --- //
extern bool				gIsDone;
extern Str255			gAppName;
#if TARGET_API_MAC_CARBON
extern AboutBoxPtr		gAboutBox;
#endif
