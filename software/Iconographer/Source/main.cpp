// __________________________________________________________________________________________
// Program		: Icon Mangler
// Filename		: main.cpp(C++)
// Author		: Mihai Parparita (St. Mary's International School)
// Last modified: April 1, 1999
// Description	: The main part of the program, it handles the loading of the program, the user
//				  interaction and the cleaning up in the end.

#include "iconmangler.h"
#include "MHTMLHelp.h"
#include "MHelp.h"
#include "commonFunctions.h"
#include <Movies.h>

//#define EXPIRES

// globals, only the minimum necessary
bool			gIsDone; // true when the application is ready to quit
Str255			gAppName; // the name of the application (loaded from a resource)
MWindowPtr		gLastFrontWindow = (MWindow*)-1;
Str255			gLastFrontWindowTitle = "\p";
MenuRef			gWindowMenu = NULL;
int				gWindowMenuOffset = 0;
MenuRef			gHelpMenu = NULL;
int				gHelpMenuOffset = 0;
int				gPreviousStatus = 0;
MWindowPtr		gWindowUnderMouse = NULL;
WindowRef		gWindowPtrUnderMouse = NULL;
#if TARGET_API_MAC_CARBON
AboutBoxPtr		gAboutBox = NULL;
#endif
DMExtendedNotificationUPP	gRezChangeNotificationUPP;
	

int startTicks = -1, oldTicks = -1;

// __________________________________________________________________________________________
// Name			: main
// Input		: None
// Output		: None
// Description	: primary function of the program, which calls the initialization function
//				  to load all the necessary program data, then goes into the event loop, and
//				  when that is done, it cleans up and exits

void main(void)
{
	Initialize();
	
	DEBUGTIMING("\pDone initializing: ");
	
	EventLoop();
	
	CleanUp();
}

// __________________________________________________________________________________________
// Name			: Intialize
// Input		: None
// Output		: None
// Description	: Does the setting up for the program. It initizalizes the toolbox (the Mac OS
//				  API), checks if the installed system can run the program, checks to see if
//				  the program has expired, if it's supposed to, initializes the menubar and
//				  the AppleEvents (used to communicated between applications)

void Initialize()
{
#ifdef EXPIRES
	DateTimeRec				theDate; // will be used to store the current date
#endif
	OSErr					err; // used to check if functions returned errors or not
	
	MUtilities::InitToolbox(); // since this function is called before anything else, we must initialize
				   // the toolbox before doing anything else
	
	DEBUGTIMING("\pInited the toolbox: ");
	
	gIsDone = false; // we're not ready to quit...
	
	
	GetIndString(gAppName, rDefaultNames, eAppName);
	// this is used in lots of places, but for easy localization we get it from a resource
	
	err = RegisterAppearanceClient(); // and if we can intialize the appearance manager
	if (err != noErr && err != themeProcessRegisteredErr)
	{
		DoError(rStdErrors, eAppearanceInitProblems);
		gIsDone = true;
	}
	
	if (!ConfigurationSupported()) // we check if we can run on this setup
		gIsDone = true;
	
#ifdef EXPIRES	
	GetTime(&theDate); // and if we haven't expired
	if (theDate.month >= 10 && theDate.day >= 1 && theDate.year >= 2001)
	{
		DoError(rStdErrors, eExpired);
		gIsDone = true;
	}
#endif

	DEBUGTIMING("\pTested the config: ");

	LoadPreferences();
	
	DEBUGTIMING("\pLoaded the prefs: ");
	
	err = InitMenuBar(); // and set up the menubar
	if (err != noErr)
	{
		DoError(rStdErrors, eMenuBarInitProblems);
		gIsDone = true;
	}
	
	DEBUGTIMING("\pInited the menubar: ");
	
	icnsEditorClass::statics.Load();
	
	DEBUGTIMING("\pInited the statics: ");
	
	err = AEInit(); // and the AppleEvents
	if (err != noErr)
	{
		DoError(rStdErrors, eAEInitProblems);
		gIsDone = true;
	}
	
	DEBUGTIMING("\pInited the apple events: ");
	
	EnterMovies();
	
	DEBUGTIMING("\pInited QuickTime: ");
	
	if (NavServicesAvailable())
		NavLoad();
	
	DEBUGTIMING("\pInited the navigation services: ");
	
	if (icnsEditorClass::statics.preferences.IsRegistered())
	{
		MenuHandle menu;
		menu = GetMenuHandle(mApple);
		DeleteMenuItem(menu, iRegister);
		
		DEBUGTIMING("\pRemoved the register item: ");
	}
	
	
	SetupPalette(icnsEditorClass::statics.colorsPalette,
				 prefsColorsPaletteVisible,
				 iToggleColorsPalette,
				 eShowColorsPalette,
				 eHideColorsPalette);
				 
	SetupPalette(icnsEditorClass::statics.previewPalette,
				 prefsPreviewPaletteVisible,
				 iTogglePreviewPalette,
				 eShowPreviewPalette,
				 eHidePreviewPalette);
				 
	SetupPalette(icnsEditorClass::statics.membersPalette,
				 prefsMembersPaletteVisible,
				 iToggleMembersPalette,
				 eShowMembersPalette,
				 eHideMembersPalette);
	
	SetupPalette(icnsEditorClass::statics.toolPalette,
				 prefsToolPaletteVisible,
				 iToggleToolPalette,
				 eShowToolPalette,
				 eHideToolPalette);
	
	DEBUGTIMING("\pSetup the palettes: ");
	
	MUtilities::ChangeCursor(rArrow);
}


// __________________________________________________________________________________________
// Name			: ConfigurationSupported
// Input		: None
// Output		: bool: true if the installed system meets the requirements, false otherwise
// Description	: Checks the current configuration to see if it meets the requirements (in this
//				  case Mac OS 8.5, but other things could be done was well). The checking is
//				  done with the Gestalt Manager, which is a built-in method of getting info
//				  about the configuration through four-letter codes

bool ConfigurationSupported(void)
{
	if (MUtilities::GestaltVersion(gestaltSystemVersion, 0x07, 0x53))
	{
		long appearanceInfo;
		
		if (Gestalt(gestaltAppearanceAttr, &appearanceInfo) != noErr)
		{
			DoError(rStdErrors, eAppearanceNotInstalled);
			return false;
		}
		else if (!appearanceInfo & (1 << gestaltAppearanceExists))
		{
			DoError(rStdErrors, eAppearanceNotInstalled);
			return false;
		}
		
#if TARGET_API_MAC_CARBON
		long	carbonVersion;

		if (Gestalt(gestaltCarbonVersion, &carbonVersion) != noErr ||
			carbonVersion < 0x0130 ||
			!MUtilities::GestaltVersion(gestaltSystemVersion, 0x10, 0x00))
		{
			DoError(rStdErrors, eNeedCarbonLib);
			return false;
		}
#endif
		return true;
	}
	else
	{
		DoError(rStdErrors, eRequirementsNotFulfilled);
		return false;
	}
}

// __________________________________________________________________________________________
// Name			: InitMenuBar
// Input		: None
// Output		: None
// Description	: Loads the menubar, and sets up the menus (adds the Apple menu, the hierachical
//				  ones, and sets the special shortcuts which can't be set through resources)

OSErr InitMenuBar()
{
	Handle			menuBar; // handle to the menubar resource
	MenuHandle		menu; // handle to individual menu resources
	Str255			menuItemText;
	unsigned short	menuItemCount;
	
	menuBar = GetNewMBar( rMenuBarID ); // we load the menu bar resource...
	if (menuBar != NULL)
		SetMenuBar(menuBar); // and set it, if we we've found it
	else
		return resNotFound;

	DEBUGTIMING("\pSet the menubar: ");

#if !TARGET_API_MAC_CARBON
	menu = GetMenuHandle( mApple );
	if (menu != NULL)
		AppendResMenu(menu, 'DRVR' );
		// we're adding all the items in the Apple Menu Items folder,
		// like any good mac app should
	else
		return resNotFound;
#endif

	menu = GetMenu(mImport);
	if(menu != NULL)
		InsertMenu(menu,kInsertHierarchicalMenu);
	else
		return resNotFound;
		
	menu = GetMenu(mExport);
	if(menu != NULL)
		InsertMenu(menu,kInsertHierarchicalMenu);
	else
		return resNotFound;
	
	menu = GetMenu(mSelect);
	if(menu != NULL)
		InsertMenu(menu,kInsertHierarchicalMenu);
	else
		return resNotFound;
	
	menu = GetMenu(mTransform); // same for the transform menu
	if(menu != NULL)
		InsertMenu(menu,kInsertHierarchicalMenu);
	else
		return resNotFound;
		
	menu = GetMenu(mPaste); // same for the paste menu
	if(menu != NULL)
		InsertMenu(menu,kInsertHierarchicalMenu);
	else
		return resNotFound;
		
	menu = GetMenu(mCopy); // same for the copy menu
	if(menu != NULL)
		InsertMenu(menu,kInsertHierarchicalMenu);
	else
		return resNotFound;
		
	menu = GetMenu(mColors); // same for the colors menu
	if(menu != NULL)
	{
		InsertMenu(menu,kInsertHierarchicalMenu);
#if TARGET_API_MAC_CARBON
		CheckMenuItem(menu, iMacOSColors, true);
#endif
	}
	else
		return resNotFound;
		
	menu = GetMenu(mOpenRecent); // same for the open recent menu
	if(menu != NULL)
		InsertMenu(menu, kInsertHierarchicalMenu);
	else
		return resNotFound;
		
	DEBUGTIMING("\pSetup the hierarchical menus: ");	
	
//	for (int i=0; i < 100; i++)
		RebuildRecentFilesMenu();
	
	DEBUGTIMING("\pRebuilt the recent files menu: ");

	SetupPixelGrid();
	
	menu = GetMenuHandle(mEdit);
	if (menu != NULL)
	{
		// the clear command is special, since its shortcut is the delete key, and so
		// we must set it specifically (since the resource editor cannot handle it)
		SetMenuItemModifiers(menu, iClear, kMenuNoCommandModifier);
		SetItemCmd( menu, iClear, kDeleteKey ); // delete key
		SetMenuItemKeyGlyph( menu, iClear, kDeleteGlyph ); // delete key glyph in font
	}
	else
		return resNotFound;
		
	DEBUGTIMING("\pMisc. menu tweaking: ");
	
	// help menu
#if TARGET_API_MAC_CARBON
	HMGetHelpMenu(&gHelpMenu, &menuItemCount);
	menuItemCount--;
#else
	HMGetHelpMenuHandle(&gHelpMenu);
	menuItemCount = CountMenuItems(gHelpMenu);
#endif

	gHelpMenuOffset = menuItemCount;

	GetIndString(menuItemText, rDefaultNames, eIconographerHelp);
	InsertMenuItem(gHelpMenu, menuItemText, menuItemCount++);
	SetItemCmd(gHelpMenu, menuItemCount, '?');
	
	InsertMenuItem(gHelpMenu, "\p-", menuItemCount++);
	
	GetIndString(menuItemText, rDefaultNames, eEmailAuthor);
	InsertMenuItem(gHelpMenu, menuItemText, menuItemCount++);
	
	GetIndString(menuItemText, rDefaultNames, eIconographerHomepage);
	InsertMenuItem(gHelpMenu, menuItemText, menuItemCount++);

	DEBUGTIMING("\pSetup the help menu: ");

#if TARGET_API_MAC_CARBON
	if (MUtilities::GestaltTest(gestaltMenuMgrAttr, gestaltMenuMgrAquaLayoutMask))
	{
		CharParameter shortcut;
		MenuItemIndex	preferencesIndex;
		
		/* remove quit */
		menu = GetMenuHandle(mFile);
		DeleteMenuItem(menu, iQuit);
		DeleteMenuItem(menu, iQuit - 1);
		
		/* enable preferences */
		EnableMenuCommand(NULL, kHICommandPreferences);
		
		/* get preferences shortcut from old place */
		menu = GetMenuHandle(mEdit);
		GetItemCmd(menu, iPreferences, &shortcut);
		GetIndMenuItemWithCommandID(NULL, kHICommandPreferences, 1, &menu, &preferencesIndex);
		SetItemCmd(menu, preferencesIndex, shortcut);
		
		/* remove old preferences */
		menu = GetMenuHandle(mEdit);
		DeleteMenuItem(menu, iPreferences);
		DeleteMenuItem(menu, iPreferences - 1);
	}
	
	DEBUGTIMING("\pMade the layout Aqua style: ");
	
	MenuRef 		oldMenu;
	Str255			text;
	MenuItemIndex	insertionPoint;
	CharParameter	shortcut;
	OSStatus		err;
	
	CreateStandardWindowMenu(0, &gWindowMenu);
	
	err = GetIndMenuItemWithCommandID(gWindowMenu, kHICommandArrangeInFront, 1, &menu, &insertionPoint);
	if (err != noErr)
		err = GetIndMenuItemWithCommandID(gWindowMenu, kHICommandMinimizeWindow, 1, &menu, &insertionPoint);
	if (err != noErr)
		DisplayValue(err);
	//else
	//	insertionPoint = CountMenuItems(gWindowMenu);	
	InsertMenuItem(gWindowMenu, "\p-", insertionPoint++);
	
	gWindowMenuOffset = insertionPoint;
	
	oldMenu = GetMenuHandle(mWindows);
	
	for (int i=1; i <= kPalettesCount; i++)
	{
		GetMenuItemText(oldMenu, i, text);
		InsertMenuItem(gWindowMenu, text, insertionPoint++);
		GetItemCmd(oldMenu, i, &shortcut);
		SetItemCmd(gWindowMenu, insertionPoint, shortcut);
	}
	
	InsertMenu(gWindowMenu, mWindows);
	DeleteMenu(mWindows);
	DisposeMenu(oldMenu);
	
	DEBUGTIMING("\pCreated the windows menu: ");
	
	menu = GetMenuHandle(mEdit);
	
	SetMenuItemCommandID(menu, iUndo, kHICommandUndo);
	SetMenuItemCommandID(menu, iCut, kHICommandCut);
	SetMenuItemCommandID(menu, iCopy, kHICommandCopy);
	SetMenuItemCommandID(menu, iPaste, kHICommandPaste);
	SetMenuItemCommandID(menu, iClear, kHICommandClear);
	
	MenuItemIndex minimizeIndex;
	
	GetIndMenuItemWithCommandID(NULL, kHICommandMinimizeWindow, 1, &menu, &minimizeIndex);
	if (menu)
	{
		SetItemCmd(menu, minimizeIndex, 0);
		SetItemCmd(menu, minimizeIndex + 1, 0);
	}
	
#else
	gWindowMenu = GetMenuHandle(mWindows);
#endif

	DEBUGTIMING("\pFinished with the window menu: ");
	
	if (!MUtilities::GestaltQTVersion(3, 0))
		MyDisableMenuItem(mEffects, 0);
	else
	{
		MenuRef			effectsMenu;
		QTAtomContainer	effectsList = NULL;
		short			effectsCount;
		OSErr			err = noErr;
		
		effectsMenu = GetMenuHandle(mEffects);
		
		// get a list of the available effects
		err = QTNewAtomContainer(&effectsList);
		if (err != noErr)
			goto bail;
			
		err = QTGetEffectsList(&effectsList, 0, 1, 0L);
		if (err != noErr)
			goto bail;

		// the returned effects list contains (at least) two atoms for each available effect component,
		// a name atom and a type atom; happily, this list is already sorted alphabetically by effect name
		effectsCount = QTCountChildrenOfType(effectsList, kParentAtomIsContainer, kEffectNameAtom);
		
		for (int i = 1; i <= effectsCount; i++)
		{
			QTAtom		nameAtom = 0L;
			QTAtom		typeAtom = 0L;

			nameAtom = QTFindChildByIndex(effectsList, kParentAtomIsContainer, kEffectNameAtom, i, NULL);
			typeAtom = QTFindChildByIndex(effectsList, kParentAtomIsContainer, kEffectTypeAtom, i, NULL);
			
			if ((nameAtom != 0L) && (typeAtom != 0L))
			{
				Str255 			effectName;
				OSType 			effectType;
				long			nameSize;

				// get the data from the type and name atoms
				QTCopyAtomDataToPtr(effectsList, typeAtom, false, sizeof(effectType), &effectType, NULL);
				QTCopyAtomDataToPtr(effectsList, nameAtom, true, sizeof(effectName), &effectName[1], &nameSize);
				effectName[nameSize + 1] = effectName[nameSize + 2] = effectName[nameSize + 3] = '.';
				effectName[0] = nameSize + 3;
				
				InsertMenuItemText(effectsMenu, effectName, i - 1 + iEffectsInsertionPoint);
				SetMenuItemRefCon(effectsMenu, i + iEffectsInsertionPoint, effectType);
			}
		}
			
	bail:
		QTDisposeAtomContainer(effectsList);	
		if (err != noErr)
			MyDisableMenuItem(mEffects, 0);
	}
	
	DEBUGTIMING("\pCreated the effects menu: ");
	
	//DrawMenuBar(); // and draw the menubar
	
	DEBUGTIMING("\pDrew the menubar: ");
	
	
	return noErr;
}

void LoadPreferences(void)
{
	OSErr err;
	Str255 prefsFileName;
	FSSpec preferencesFile;
	short preferencesRefNum, oldFile;
	short				myVRef;
	long				myDirID;
	
	GetIndString(prefsFileName, rDefaultNames, ePrefsName); // the message is loaded from the specified
	
	err = FindFolder(kOnSystemDisk, kPreferencesFolderType, kDontCreateFolder, &myVRef, &myDirID);
	
	if (err == noErr)
		err = FSMakeFSSpec(myVRef, myDirID, prefsFileName, &preferencesFile);
		
	if (err == noErr)
		preferencesRefNum = FSpOpenResFile(&preferencesFile, fsRdPerm);
	
	if ((preferencesRefNum < 0) || (err != noErr))
	{
		FSpCreate(&preferencesFile, creatorCode, prefFileType, 0); /*smRoman = 0*/
		FSpCreateResFile(&preferencesFile, creatorCode, prefFileType, 0); /*smRoman = 0*/
		preferencesRefNum = FSpOpenResFile(&preferencesFile, fsCurPerm);
		
		icnsEditorClass::statics.firstTime = true;
	}
	
	oldFile = CurResFile();
	UseResFile(preferencesRefNum);
	icnsEditorClass::statics.preferences.Load(rPrefs);
	CloseResFile(preferencesRefNum);
	UseResFile(oldFile);
}

#pragma mark -

// __________________________________________________________________________________________
// Name			: EventLoop
// Input		: None
// Output		: None
// Description	: The heart of the application, the event loop where we wait until an event
//				  happened and process it, until we are told to quit

void EventLoop(void)
{
	EventRecord	event; // the event which just occured
	RgnHandle	mouseRegion = NewRgn();
	
	while (!gIsDone)
	{
		if (WaitNextEvent (everyEvent, &event, 6, mouseRegion)) // when an event occurs...
			DoEvent(&event); // we process it
		//else
			DoIdle(); // otherwise we can execute the idling function
	}
	
	DisposeRgn(mouseRegion);
}

// __________________________________________________________________________________________
// Name			: DoEvent
// Input		: eventPtr: pointer to the event record describing what just happened
// Output		: None
// Description	: Handles the event which was passed to it by passing it on to other functions
//				  

void DoEvent(EventRecord *eventPtr)
{
	switch (eventPtr->what)
	// depeding on what kind of event is, we call the appropiate function to handle it
	{
		case mouseDown: DEBUG("\phandling mousedown"); HandleMouseDown(eventPtr); break;
		case autoKey:
		case keyDown: DEBUG("\phandling key"); HandleKeyDown(eventPtr); break;
		case updateEvt: DEBUG("\phandling update"); HandleUpdate(eventPtr); break;
		case activateEvt: DEBUG("\phandling activeate"); HandleActivate(eventPtr); break;
		case kHighLevelEvent: DEBUG("\papplevent"); AEProcessAppleEvent(eventPtr); break;
		case osEvt: DEBUG("\posevent"); HandleOSEvent(eventPtr); break;
		default: DEBUG("\punhandled:"); Str255 temp; NumToString(eventPtr->what, temp); DEBUG(temp); break;
	}
}

// __________________________________________________________________________________________
// Name			: DoIdle
// Input		: None
// Output		: None
// Description	: Called when no other things are going on (as to not interfere with other
//				  applications when in the background). This function makes sure that the
//				  editors have enough memory, keeps the menus up to  date with what the front
//				  editor displays, and also calls the idle function of the front most editor
//			      (if any)

void DoIdle(void)
{
	MWindowPtr		currentWindow, frontWindow;
	icnsEditorPtr	currentEditor = NULL, // variable used to go through all the open editors
					frontEditor; // pointer to the editor class belonging to the front most window
	iconBrowserPtr	frontBrowser;
	Str255			currentTitle = "\p";
	int				newStatus;
	Point 			globalMouse;
	
	GetMouse(&globalMouse);
	LocalToGlobal(&globalMouse);
	
	DEBUG("\pgot window under mouse");
		

#if !TARGET_API_MAC_CARBON
	if (HMGetBalloons())
		if (gWindowUnderMouse != NULL &&
			gWindowUnderMouse->GetType() == kFloaterType &&
			FrontWindow() != gWindowPtrUnderMouse)
			BringToFront(gWindowPtrUnderMouse);
			
	DEBUG("\pbroght window to front for balloons");
#endif

	if (gWindowUnderMouse)
	{
		Point theMouse;
	
		SAVEGWORLD;
		gWindowUnderMouse->SetPort();
		GetMouse(&theMouse);
		RESTOREGWORLD;
			
		MHelp::HandleHelp(theMouse, gWindowUnderMouse->GetWindow());
	}
	else
		MHelp::RemoveHelp();

	frontWindow = MWindow::GetFront();

	if (frontWindow != NULL)
		frontWindow->GetTitle(currentTitle);
		
	DEBUG("\pgot front title");
	
	if (gLastFrontWindow != frontWindow || !EqualString(currentTitle, gLastFrontWindowTitle, true, true))
	{
		Str255	menuItemText;
		MenuHandle	iconMenu;

#if !TARGET_API_MAC_CARBON				
		RebuildWindowsMenu();
		
		DEBUG("\prebuilt windows menus");
#endif

		iconMenu = GetMenuHandle(mIcon);		
	
		if (frontWindow == NULL)
			DisableMenuItem(iconMenu, iInsertIcon);
		else if (frontWindow->GetType() == kEditorType)
		{
			GetIndString(menuItemText, rDefaultNames, eAddMember);
			SetMenuItemText(iconMenu, iInsertIcon, menuItemText);
		}
		else if (frontWindow->GetType() == kBrowserType)
		{
			GetIndString(menuItemText, rDefaultNames, eInsertIcon);
			SetMenuItemText(iconMenu, iInsertIcon, menuItemText);	
		}
		
		DEBUG("\pupdated icon menu");
	}
	
	gLastFrontWindow = frontWindow;
	CopyString(gLastFrontWindowTitle, currentTitle);
	
	currentWindow = MWindow::GetFirst();

#if !TARGET_API_MAC_CARBON
	while (currentWindow != NULL)
	// we loop through the editors to make sure that they are all OK
	{
		currentEditor = GetEditor(currentWindow->GetWindow());
		if (currentEditor != NULL)
			if (currentEditor->status & outOfMemory)
			{
				if (currentEditor->status & canUndo)
				{
					// we must scuttle the drawing states in order to make room in the memory
					currentEditor->DisposeStates();
					DoError(rStdErrors, eLowOnMemory);
					currentEditor->status &= ~outOfMemory;
				}
				else
				{
					// if we've already gotten rid of the drawing states and there still isn't
					// enough memory, then we must close this editor
					icnsEditorClass::statics.ReclaimEmergencyMemory();
					// we must make some room in memory in order to be able to display the error
					// message
					DoError(rStdErrors, eOutOfMemory);
					currentEditor->Select();
					Close(currentEditor->GetWindow(), noCancel);
					icnsEditorClass::statics.AllocateEmergencyMemory();
					// we take the emergency memory back, so that it can be used in the future
				}
			}
		currentWindow = currentWindow->GetNext();
	}
	
	DEBUG("\plooped through all the editors");
#endif
	
	frontEditor = GetFrontEditor();
	frontBrowser = GetFrontBrowser();
	
	if (frontEditor != NULL)
	{
		newStatus = frontEditor->status;
		if (frontEditor->CurrentDepthSupportsColors())
			newStatus |= currentDepthSupportsColors;
		if (frontEditor->GetColors() == macOSColors)
			newStatus |= macOSPalette;
		newStatus |= frontIsEditor;
	}
	else if (frontBrowser != NULL)
	{
		newStatus = 0;
		
		if (frontBrowser->HasSelection())
			newStatus |= hasSelection;
		
		newStatus |= frontIsBrowser;
	}
#if TARGET_API_MAC_CARBON
	else if (frontWindow == gAboutBox)
	{
		newStatus = frontIsAbout;
	}
#endif
	else
		newStatus = 0;
		
	DEBUG("\pgotnew status");
	
	if (newStatus != gPreviousStatus && gWindowPtrUnderMouse)
	{
		SAVEGWORLD;
		gWindowUnderMouse->SetPort();
		GlobalToLocal(&globalMouse);
		RESTOREGWORLD;
		
		gWindowUnderMouse->UpdateCursor(globalMouse);
	}
	
	DEBUG("\pupdated cursor");
	
	if ((newStatus & kMenuIgnoredStates) != (gPreviousStatus & kMenuIgnoredStates))
		UpdateMenuBar(newStatus);
	
	DEBUG("\pupdated menubar");
		
	gPreviousStatus = newStatus;
	
	currentWindow = MWindow::GetFirst();
	while (currentWindow != NULL)
	{
		if (currentWindow == frontWindow ||
			currentWindow->GetType() == kFloaterType)
			currentWindow->DoIdle(gWindowUnderMouse);
			
		currentWindow = currentWindow->GetNext();
	}
	
	DEBUG("\pidled the rest of thw windows");
}

void UpdateMenuBar(int status)
{
	MenuHandle menu;
	
	if (status & frontIsEditor)
	{
		if (status & canPaste)
			if (status & canPasteFamily) /* scrap has picture and family */
			{
				MyEnableMenuItem(mEdit, iPaste);
				MyEnableMenuItem(mPaste, iPasteNormally);
				MyEnableMenuItem(mPaste, iPasteAsIconAndMask);
				MyEnableMenuItem(mPaste, iPasteIntoSelection);
				MyEnableMenuItem(mPaste, iPasteIconFamily);
			}
			else /* scrap has picture but no family */
			{
				MyEnableMenuItem(mEdit, iPaste);
				MyEnableMenuItem(mPaste, iPasteNormally);
				MyEnableMenuItem(mPaste, iPasteAsIconAndMask);
				MyEnableMenuItem(mPaste, iPasteIntoSelection);
				MyDisableMenuItem(mPaste, iPasteIconFamily);
			}
		else
			if (status & canPasteFamily) /* scrap has family but no picture */
			{
				MyEnableMenuItem(mEdit, iPaste);
				MyDisableMenuItem(mPaste, iPasteNormally);
				MyDisableMenuItem(mPaste, iPasteAsIconAndMask);
				MyDisableMenuItem(mPaste, iPasteIntoSelection);
				MyEnableMenuItem(mPaste, iPasteIconFamily);
			}
			else /* scrap has nothing */
			{
				MyDisableMenuItem(mEdit, iPaste);
				MyDisableMenuItem(mPaste, iPasteNormally);
				MyDisableMenuItem(mPaste, iPasteAsIconAndMask);
				MyDisableMenuItem(mPaste, iPasteIntoSelection);
				MyDisableMenuItem(mPaste, iPasteIconFamily);
			}
	
		if (status & needToSave) // if there are unsaved chages...
			MyEnableMenuItem(mFile, iSave);
		else
			MyDisableMenuItem(mFile, iSave);
			
		if (status & canRevert)
			MyEnableMenuItem(mFile, iRevert);
		else
			MyDisableMenuItem(mFile, iRevert);
		
		MyEnableMenuItem(mFile, iClose);
		MyEnableMenuItem(mFile, iSaveAs);
		MyEnableMenuItem(mFile, iSaveInto);
		
		MyEnableMenuItem(mFile, iImport);
		MyEnableMenuItem(mFile, iExport);
		
		MyEnableMenuItem(mEdit, iSelect);
		MyEnableMenuItem(mEdit, iTransform);
		MyEnableMenuItem(mEdit, iCopy);
		MyEnableMenuItem(mEdit, iAdjust);
		if (MUtilities::GestaltQTVersion(3, 0))
			MyEnableMenuItem(mEffects, 0);
		else
			MyDisableMenuItem(mEffects, 0);
		
		menu = GetMenuHandle(mSelect);
		EnableMenuItem(menu, 0);
		if (status & hasSelection) // if there is a selection
		{
			menu = GetMenuHandle(mEdit); // then we can cut, copy and clear
			EnableMenuItem(menu, iCut);
			EnableMenuItem(menu, iClear);
			menu = GetMenuHandle(mSelect);
			EnableMenuItem(menu, iSimilar); // and do stuff on the current selection
			EnableMenuItem(menu, iNone); 
			EnableMenuItem(menu, iInverse);
			EnableMenuItem(menu, iExpandContract);
			EnableMenuItem(menu, iStroke);
			
			MyEnableMenuItem(mPaste, iPasteIntoSelection);
			MyEnableMenuItem(mCopy, iCopyNormally);
		}
		else
		{
			menu = GetMenuHandle(mEdit); // else we can't do any of those
			DisableMenuItem(menu, iCut);
			DisableMenuItem(menu, iClear);
			menu = GetMenuHandle(mSelect);
			DisableMenuItem(menu, iSimilar);
			DisableMenuItem(menu, iNone);
			DisableMenuItem(menu, iInverse);
			DisableMenuItem(menu, iExpandContract);
			DisableMenuItem(menu, iStroke);
			
			MyDisableMenuItem(mPaste, iPasteIntoSelection);
			MyDisableMenuItem(mCopy, iCopyNormally);
		}

		if (status & canUndo) // if we can undo...
			MyEnableMenuItem(mEdit, iUndo);
		else
			MyDisableMenuItem(mEdit, iUndo);
			
		if (status & canRedo) // if we can redo
			MyEnableMenuItem(mEdit, iRedo);
		else
			MyDisableMenuItem(mEdit, iRedo);
		
		if (!IsMenuItemEnabled(mIcon, 0))
		{
			MyEnableMenuItem(mIcon, 0);
			DrawMenuBar();
		}
		
		menu = GetMenuHandle(mIcon);
		
		if (status & canZoomIn) // if we're not at the max magnification
			EnableMenuItem(menu, iZoomIn);
		else
			DisableMenuItem(menu, iZoomIn);
			
		if (status & canZoomOut) // if we're not zoomed out as far as possible
			EnableMenuItem(menu, iZoomOut);
		else
			DisableMenuItem(menu, iZoomOut);
			
		EnableMenuItem(menu, iInsertIcon);
		EnableMenuItem(menu, iIconInfo);
		EnableMenuItem(menu, iPixelGrid);
				
		if (status & currentPixIsIcon)
			EnableMenuItem(menu, iGenerateMask);
		else
			DisableMenuItem(menu, iGenerateMask);
			
		if (status & currentDepthSupportsColors)
		{
			EnableMenuItem(menu, iColors);
			
			menu = GetMenuHandle(mColors);
			
			if (status & macOSPalette)
			{
				CheckMenuItem(menu, iMacOSColors, true);
				CheckMenuItem(menu, iWinColors, false);
			}
			else
			{
				CheckMenuItem(menu, iMacOSColors, false);
				CheckMenuItem(menu, iWinColors, true);
			}
		}
		else
			DisableMenuItem(menu, iColors);
		
		EnableMenuItem(menu, iCompleteIcon);
	}
	else
	{
		if (status & frontIsBrowser)
		{
			MyEnableMenuItem(mFile, iClose);
			if (status & hasSelection)
			{
				MyEnableMenuItem(mEdit, iClear);
				MyEnableMenuItem(mIcon, iIconInfo);
			}
			else
			{
				MyDisableMenuItem(mEdit, iClear);
				MyDisableMenuItem(mIcon, iIconInfo);
			}
				
			if (!IsMenuItemEnabled(mIcon, 0))
			{
				MyEnableMenuItem(mIcon, 0);
				DrawMenuBar();
			}
			
			menu = GetMenuHandle(mIcon);
			DisableMenuItem(menu, iZoomIn);
			DisableMenuItem(menu, iZoomOut);
			DisableMenuItem(menu, iColors);
			EnableMenuItem(menu, iInsertIcon);
			DisableMenuItem(menu, iPixelGrid);
		}
		else
		{
			if (status & frontIsAbout)
				MyEnableMenuItem(mFile, iClose);
			else
				MyDisableMenuItem(mFile, iClose);
			MyDisableMenuItem(mEdit, iClear);
			MyDisableMenuItem(mIcon, iInsertIcon);
			MyDisableMenuItem(mIcon, iIconInfo);
			if (IsMenuItemEnabled(mIcon, 0))
			{
				MyDisableMenuItem(mIcon, 0);
				DrawMenuBar();
			}
		}
			
		MyDisableMenuItem(mFile, iSave);
		MyDisableMenuItem(mFile, iSaveAs);
		MyDisableMenuItem(mFile, iSaveInto);
		
		MyDisableMenuItem(mFile, iImport);
		MyDisableMenuItem(mFile, iExport);
		
		MyDisableMenuItem(mEdit, iUndo);
		MyDisableMenuItem(mEdit, iRedo);
		MyDisableMenuItem(mEdit, iCut);
		MyDisableMenuItem(mEdit, iCopy);
		MyDisableMenuItem(mEdit, iPaste);
		MyDisableMenuItem(mEdit, iSelect);
		MyDisableMenuItem(mEdit, iAdjust);
		MyDisableMenuItem(mEdit, iTransform);
		
		MyDisableMenuItem(mEffects, 0);
		
		MyDisableMenuItem(mSelect, 0);
	}
}

// __________________________________________________________________________________________
// Name			: HandleMouseDown
// Input		: eventPtr : pointer to the mouse-related event which just happened
// Output		: None
// Description	: Handles mouseDown events depending on where the click was (menubar, window
//				  titlebar, etc.) Passes on the event to the editor's window if necessary.

void HandleMouseDown(EventRecord *eventPtr)
{
	int 			part; // the window part where the was a click
	GDHandle		mainScreen; // the screen in which the window can be moved
	long			menuChoice; // the selected menu command
	
	part = FindWindow(eventPtr->where, &gWindowPtrUnderMouse);
	gWindowUnderMouse = GetWindow(gWindowPtrUnderMouse);
	switch (part) // depending on where the click was, we take different actions
	{
		case inMenuBar : // if it was in the menubar, we handle the menu command
			menuChoice = MenuSelect(eventPtr->where);
			DoMenuCommand(menuChoice);
			break;
#if !TARGET_API_MAC_CARBON
		case inSysWindow : // if the user clicked in a different window, then we deactivate
						   // this one
			if (gWindowUnderMouse != NULL)
				gWindowUnderMouse->Deactivate();
			SystemClick(eventPtr, gWindowPtrUnderMouse);
			break;
#endif
		case inDrag : // the user is attempting to drag the window
			if (gWindowUnderMouse != NULL &&
				(gWindowUnderMouse->GetType() == kEditorType ||
				 gWindowUnderMouse->GetType() == kBrowserType) &&
				 MDocumentWindowPtr(gWindowUnderMouse)->IsPathSelectClick(eventPtr))
				 MDocumentWindowPtr(gWindowUnderMouse)->PathSelect();
			else
			{
				mainScreen = GetMainDevice();
				gWindowUnderMouse->Drag(eventPtr->where, (**mainScreen).gdRect);
			}
			break;
		case inGoAway: // the user has the mouse on the close box
			if (TrackGoAway(gWindowPtrUnderMouse, eventPtr->where)) // if he release it...
				if (gWindowUnderMouse != NULL)
					if (gWindowUnderMouse->GetType() == kFloaterType)
					{
						if (gWindowUnderMouse == icnsEditorClass::statics.colorsPalette)
							TogglePalette(icnsEditorClass::statics.colorsPalette,
									  iToggleColorsPalette,
									  eShowColorsPalette,
									  eHideColorsPalette);
						else if (gWindowUnderMouse == icnsEditorClass::statics.previewPalette)
							TogglePalette(icnsEditorClass::statics.previewPalette,
										  iTogglePreviewPalette,
										  eShowPreviewPalette,
										  eHidePreviewPalette);
						else if (gWindowUnderMouse == icnsEditorClass::statics.toolPalette)
							TogglePalette(icnsEditorClass::statics.toolPalette,
									  iToggleToolPalette,
									  eShowToolPalette,
									  eHideToolPalette);
						else
							TogglePalette(icnsEditorClass::statics.membersPalette,
									  iToggleMembersPalette,
									  eShowMembersPalette,
									  eHideMembersPalette);
					}
					else
						Close(gWindowPtrUnderMouse, 0); // we close the icon
			break;
		case inZoomIn:
		case inZoomOut:
			if (TrackBox(gWindowPtrUnderMouse, eventPtr->where, part)) // if he release it...
				if (gWindowUnderMouse != NULL)
					gWindowUnderMouse->ToggleZoom();
			break;
		case inContent: // if it's a contect click we pass it on the class
			if (gWindowUnderMouse != NULL)
				gWindowUnderMouse->HandleContentClick(eventPtr);
			break;
		case inGrow: // same for clicks in the grow box
			if (gWindowUnderMouse != NULL)
				gWindowUnderMouse->HandleGrow(eventPtr->where);
			break;
		case inProxyIcon:
			if (gWindowUnderMouse != NULL &&
				(gWindowUnderMouse->GetType() == kEditorType ||
				 gWindowUnderMouse->GetType() == kBrowserType))
				 MDocumentWindowPtr(gWindowUnderMouse)->TrackProxyDrag(eventPtr->where);
			break;
				 
	}
}

// __________________________________________________________________________________________
// Name			: HandleKeyDown
// Input		: eventPtr: pointer to the event record describing the key-related event which
//				  just happened
// Output		: None
// Description	: handles key events; if they are a menu command key then that command is executed
//				  otherwise the event is passed on the the frontmost editor

void HandleKeyDown(EventRecord *eventPtr)
{
	long			menuEvent; // the key which was pressed
	char			key;
	
	key = eventPtr->message & charCodeMask;
	
	if ((key == kHelpCharCode) || 
	    ((eventPtr->modifiers & cmdKey) && (key == '/')))
	{
		HiliteMenu(kHMHelpMenuID);
		menuEvent = ((kHMHelpMenuID << 16) & 0xFFFF0000) + iIconographerHelp;
	}
	else if ((eventPtr->modifiers & cmdKey) && ((key == 'k') || (key == 'K') || (key == 'û')))
	{
		HiliteMenu(mIcon);
		menuEvent = ((mIcon << 16) & 0xFFFF0000) + iInsertIcon;
	}
	else if (icnsEditorClass::statics.preferences.IsEditorShortcutPressed())
	{
		HiliteMenu(mIcon);
		menuEvent = ((mIcon << 16) & 0xFFFF0000) + iOpenInExternalEditor;
	}
	else
	{
		menuEvent = MenuEvent(eventPtr);
	}
	
	if (menuEvent)
	{
		DoMenuCommand(menuEvent);
	}
	else // otherwise we pass it onto the editor
	{
		MWindow::SendKeyDown(eventPtr);
	}
}

// __________________________________________________________________________________________
// Name			: HandleActivate
// Input		: eventPtr: pointer to the activation event that just occured
// Output		: None
// Description	: Handles an activation (actually deactivation too, there is a flag determining
//				  which one it is) event by telling the frontmost editor to activate or deactivate

void HandleActivate(EventRecord *eventPtr)
{
	 WindowPtr  	theWindow; // window which is becoming (in)active
	 bool	    	becomingActive;	// are we activating or deactivating?
	 MWindowPtr		currentWindow; // the editor class belonging to the window which we are
	 							   // dealing with

	 theWindow = (WindowPtr) eventPtr->message; 
	 currentWindow = GetWindow(theWindow);
	 if (currentWindow != NULL)
	 {
		becomingActive = ((eventPtr->modifiers & activeFlag) == activeFlag);
		if (becomingActive)
			currentWindow->Activate();
		else
			currentWindow->Deactivate();
	}
}

// __________________________________________________________________________________________
// Name			: HandleUpdate
// Input		: eventPtr: pointer to the update event that just occured
// Output		: None
// Description	: Handles update requests by passing them on to the window which owns the window
//				  for which the request was made.

void HandleUpdate(EventRecord *eventPtr)
{
	WindowPtr		windowToUpdate; // the window which we must update
	MWindowPtr	currentWindow; // the editor which owns the window above
	
	windowToUpdate = (WindowPtr)eventPtr->message;
	currentWindow = GetWindow(windowToUpdate);
	if (currentWindow != NULL)
	{
		Str255 title;
		currentWindow->GetTitle(title);
		DEBUG(title);
		currentWindow->Refresh(); // we just pass on the updating to the editor class
	}
}

// __________________________________________________________________________________________
// Name			: HandleOSEvent
// Input		: eventPtr: pointer to the OS event which just occured
// Output		: None
// Description	: Handles events sent by the system. Right now the only one that can affect
//				  us the application being put into the background or being brought to the
//				  foregroud.

void HandleOSEvent(EventRecord *eventPtr)
{
	switch((eventPtr->message & osEvtMessageMask) >> 24)
	{
		case suspendResumeMessage: // if the application is being brought to the foreground or
								   // put into the background
			
			if (eventPtr->message & resumeFlag)
			{
				short part;
				
				MUtilities::ResetCursor();
				
				MWindow::ShowFloaters();
				MWindow::ActivateAll();
				part = FindWindow(eventPtr->where, &gWindowPtrUnderMouse);
				gWindowUnderMouse = GetWindow(gWindowPtrUnderMouse);
				if (gWindowUnderMouse != NULL && part == inDrag)
					gWindowUnderMouse->Select();
			}
			else
			{
				MWindow::HideFloaters();
				MWindow::DeactivateAll();
			}
			break;
		case mouseMovedMessage:
			Point		theMouse;
			
			MUtilities::ResetCursorChanged();
			
			if (icnsEditorClass::statics.colorsPalette->IsVisible())
				icnsEditorClass::statics.colorsPalette->readoutChanged = false;
			
			theMouse = eventPtr->where;
			
			FindWindow(theMouse, &gWindowPtrUnderMouse);
			gWindowUnderMouse = GetWindow(gWindowPtrUnderMouse);
			if (gWindowUnderMouse)
			{
				SAVEGWORLD;
				gWindowUnderMouse->SetPort();
				GlobalToLocal(&theMouse);
				RESTOREGWORLD;
				gWindowUnderMouse->UpdateCursor(theMouse);
			}
			
			if (!MUtilities::CursorChanged())
				MUtilities::ChangeCursor(rArrow);
				
			if (icnsEditorClass::statics.colorsPalette->IsVisible() &&
				!icnsEditorClass::statics.colorsPalette->readoutChanged)
				icnsEditorClass::statics.colorsPalette->UpdateReadout(-1, -1, kPickerNeverUsedColor);
			break;
	}
}

void RebuildRecentFilesMenu()
{
	MenuHandle	recentFilesMenu;
	FSSpec		file;
	int			insertionPoint = 0;
	
	recentFilesMenu = GetMenuHandle(mOpenRecent);
	
	for (int i=CountMenuItems(recentFilesMenu); i >= 1; i--)
		DeleteMenuItem(recentFilesMenu, i);
		
	for (int i=0; i < icnsEditorClass::statics.preferences.GetRecentFilesCount(); i++)
	{
		file = icnsEditorClass::statics.preferences.GetNthRecentFile(i);
		if (file.vRefNum != -1 || file.parID != -1)
		{
			InsertMenuItem(recentFilesMenu, "\pscratch", insertionPoint++);
			SetMenuItemText(recentFilesMenu, insertionPoint, file.name);
		}
	}	
}

void RebuildWindowsMenu()
{
#if !TARGET_API_MAC_CARBON
	MWindowPtr	currentWindow;
	//int				currentID;
	MenuHandle		windowsMenu;
	Str255			menuTitle;
	int				editorsInsertionPoint = iEditorsInsertionPoint,
					browsersInsertionPoint = iBrowsersInsertionPoint,
					*insertionPoint;
	
	windowsMenu = GetMenuHandle(mWindows);
	
	for (int i=CountMenuItems(windowsMenu); i >= iEditorsInsertionPoint; i--)
		DeleteMenuItem(windowsMenu, i);
		
	DEBUG("\pdeleted current contents");
		
	InsertMenuItem(windowsMenu, "\p-", iEditorsInsertionPoint - 1);
	InsertMenuItem(windowsMenu, "\p-", iBrowsersInsertionPoint - 1);
	
	DEBUG("\pput in dividers");
	
	for (currentWindow = MWindow::GetFirst(); currentWindow != NULL; currentWindow = currentWindow->GetNext())
	{
		//currentID = MWindow::GetNthWindowID(i);
		
		//currentWindow = MWindow::GetWindow(currentID);
		
		currentWindow->GetTitle(menuTitle);
		
		switch (currentWindow->GetType())
		{
			case kEditorType:
				insertionPoint = &editorsInsertionPoint;
				browsersInsertionPoint++;
				break;
			case kBrowserType:
				insertionPoint = &browsersInsertionPoint;
				break;
			default:
				insertionPoint = NULL;
				break;
		}
		
		if (insertionPoint)
		{
			DEBUG("\pactually inserting");
			
			InsertMenuItemText(windowsMenu, "\pscratch", (*insertionPoint)++);
			SetMenuItemText(windowsMenu, *insertionPoint, menuTitle);
			
			DEBUG("\pset the text");
			
			SetMenuItemRefCon(windowsMenu, *insertionPoint, UInt32(currentWindow));
			
			EnableMenuItem(windowsMenu, *insertionPoint);
			if (currentWindow == MWindow::GetFront())
				CheckMenuItem(windowsMenu, *insertionPoint, true);
			else
				CheckMenuItem(windowsMenu, *insertionPoint, false);
		}
		
		DEBUG("\pinserted");
	}
	
	DEBUG("\pdone inserting");
	
	if (editorsInsertionPoint == iEditorsInsertionPoint)
	{
		DeleteMenuItem(windowsMenu, editorsInsertionPoint);
		if (browsersInsertionPoint == iBrowsersInsertionPoint)
			DeleteMenuItem(windowsMenu, browsersInsertionPoint - 1);
	}
	
	if (browsersInsertionPoint == iBrowsersInsertionPoint + (editorsInsertionPoint - iEditorsInsertionPoint))
		DeleteMenuItem(windowsMenu, browsersInsertionPoint);
		
	DEBUG("\pdeleted unnnecessary dividers");
	
	InsertMenu(windowsMenu, mWindows);
	
	DrawMenuBar();
	
	DEBUG("\pinserted and drew menu");
#endif
}

// __________________________________________________________________________________________
// Name			: DoMenuCommand
// Input		: menuResult: long containing both the menu and them item nos (upper and lower
//				  halves of it) of the selected menu item.
// Output		: None
// Description	: Handles a menu command by passing it on to the appropriate handler function.
//				  Uses nested case statements to determine which function should be called.

void DoMenuCommand(long menuResult)
{
	short			menuID; // the resource ID of the menu from which a selection is made
	short			item; // the actual item that was selected
	icnsEditorPtr	frontEditor; // pointer to the editor class belonging to the front most
								 // editor, menu commands act on this usually
	
	frontEditor = GetFrontEditor();
	
	if (menuResult != 0) // if there was a command
	{
		long startTicks;
		
		startTicks = TickCount();
		
		menuID = (menuResult & 0xFFFF0000) >> 16; // we get the ID (upper half of the long)
		item = (menuResult & 0x0000FFFF); // and the item number (lower half of the number)
		switch (menuID)
		{
			// nothing special here, we either call the appropriate functions to handle the
			// selection or we directly pass on the command to the front most editor
			case mApple :
				switch (item)
				{
					case iAbout : ShowAboutBox(); break;
					case iRegister : Register(); break;
#if !TARGET_API_MAC_CARBON
					default :
						// the apple menu contains a list of the items installed in the Apple
						// Menu Items folder, if the user selected one of those then we should
						// get the system to open that item
						MenuHandle	appleMenu;
						Str255		accName;
						
						appleMenu = GetMenuHandle(mApple);
						GetMenuItemText(appleMenu, item, accName);
						OpenDeskAcc(accName);
						break;
						
#endif
				}
				break;
			case mFile :
				switch (item)
				{
					case iOpenIcon : OpenIcon(NULL); break;
					case iNewIcon : NewIcon(true); break;
					case iClose : Close(MWindow::GetFront()->GetWindow(), 0); break;
					case iSave: SaveIcon(frontEditor, 0); break;
					case iSaveAs : SaveIcon(frontEditor, saveAs); break;
					case iSaveInto : SaveIcon(frontEditor, saveInto); break;
					case iRevert : Revert(); break;
					case iQuit :gIsDone = true; break;
				}
				break;
			case mOpenRecent:
				FSSpec fileToOpen;
				
				fileToOpen = icnsEditorClass::statics.preferences.GetNthRecentFile(item - 1);
				
				if (fileToOpen.vRefNum == -1 && fileToOpen.parID == -1)
				{
					Str255 text, fileName;
					MenuHandle menu;
					
					GetIndString(text, rStdErrors, eCantOpenFile);
					
					menu = GetMenuHandle(mOpenRecent);
					GetMenuItemText(menu, item, fileName);
					
					SubstituteString(text, "\p<file name>", fileName);
					SubstituteString(text, "\p<error type>", "\p-43");
					
					DoError(text);
					
					RebuildRecentFilesMenu();
				}
				else
					OpenIcon(&fileToOpen);
					
				break;
			case mImport:
				if (frontEditor != NULL)
				{
					switch (item)
					{
						case iImportCurrentMember: frontEditor->Import(currentMember); break;
						case iImportEntireIcon: frontEditor->Import(entireIcon); break;
					}
				}
				break;
			case mExport:
				if (frontEditor != NULL)
				{
					switch (item)
					{
						case iExportCurrentMember: frontEditor->Export(currentMember); break;
						case iExportEntireIcon: frontEditor->Export(entireIcon); break;
					}
				}
				break;
			case mEdit :
				if (frontEditor != NULL)
					switch (item)
					{
						case iUndo: frontEditor->Undo(); break;
						case iRedo: frontEditor->Redo(); break;
						case iCut: frontEditor->Cut(); break;
						case iClear : frontEditor->Clear(); break;
						case iAdjust: frontEditor->Adjust(); break;
						case iPreferences : icnsEditorClass::statics.preferences.Edit(kPrefsSettingsPane); break;
					}
				else
					switch (item)
					{
						case iClear: if (GetFrontBrowser()) GetFrontBrowser()->Clear(); break;
						case iPreferences : icnsEditorClass::statics.preferences.Edit(kPrefsSettingsPane); break;
					}
				break;
			case mSelect:
				HiliteMenu(mEdit);
				if (frontEditor != NULL)
					switch (item)
					{
						case iAll : frontEditor->MakeSelection(all); break;
						case iSimilar : frontEditor->MakeSelection(similar); break;
						case iNone : frontEditor->MakeSelection(none); break;
						case iInverse : frontEditor->MakeSelection(inverse); break;
						case iExpandContract: frontEditor->MakeSelection(expandContract); break;
						case iStroke: frontEditor->MakeSelection(stroke); break;
					}
				break;
			case mTransform:
				HiliteMenu(mEdit);
				if (frontEditor != NULL)
					switch (item)
					{
						case iRotateCW : frontEditor->Rotate(90); break;
						case iRotateCCW : frontEditor->Rotate(-90); break;
						case iFlipHorizontal : frontEditor->Flip(horizontal); break;
						case iFlipVertical : frontEditor->Flip(vertical); break;
						case iInvert : frontEditor->Invert(); break;
					}
				break;
			case mPaste:
				HiliteMenu(mEdit);
				if (frontEditor != NULL)
					switch (item)
					{
						case iPasteNormally: frontEditor->Paste(normally); break;
						case iPasteAsIconAndMask: frontEditor->Paste(asIconAndMask); break;
						case iPasteIntoSelection: frontEditor->Paste(intoSelection); break;
						case iPasteIconFamily: frontEditor->Paste(pasteIconFamily); break;
					}
				break;
			case mCopy:
				HiliteMenu(mEdit);
				if (frontEditor != NULL)
					switch (item)
					{
						case iCopyNormally: frontEditor->Copy(copyNormally); break;
						case iCopyAsIconAndMask: frontEditor->Copy(copyAsIconAndMask); break;
						case iCopyIconFamily: frontEditor->Copy(copyIconFamily); break;
					}
				break;
			case mIcon :
				if (frontEditor != NULL)
					switch (item)
					{
						case iZoomIn : frontEditor->ZoomIn(); break;
						case iZoomOut : frontEditor->ZoomOut(); break;
						case iZoomFit: frontEditor->ZoomFit(); break;
						case iZoomActual: frontEditor->ZoomActual(); break;
						case iInsertIcon: frontEditor->AddMember(); break;
						case iIconInfo : frontEditor->EditIconInfo(); break;
						case iPixelGrid: TogglePixelGrid(); frontEditor->Invalidate(); frontEditor->Refresh(); break;
						case iGenerateMask: frontEditor->GenerateMask(); break;
						case iCompleteIcon: frontEditor->CompleteIcon(); break;
						case iOpenInExternalEditor: frontEditor->OpenInExternalEditor(); break;
					}
				else if (GetFrontBrowser() != NULL)
					switch (item)
					{
						case iIconInfo: GetFrontBrowser()->EditIconInfo(); break;
						case iInsertIcon: InsertIcon(GetFrontBrowser()->GetBrowserTempIcon()); break;
					}
				break;
			case mColors :
				HiliteMenu(mIcon);
				if (frontEditor != NULL)
				{
					MenuHandle theMenu;
					
					theMenu = GetMenuHandle(mColors);
					
					switch (item)
					{
						case iMacOSColors :
							CheckMenuItem(theMenu, iMacOSColors, true);
							CheckMenuItem(theMenu, iWinColors, false);
							frontEditor->ChangeColors(macOSColors, true);
							break;
						case iWinColors :
							CheckMenuItem(theMenu, iMacOSColors, false);
							CheckMenuItem(theMenu, iWinColors, true);
							frontEditor->ChangeColors(winColors, true);
							break;
					}
				}
				break;
			case kHMHelpMenuID:
				switch (item - gHelpMenuOffset)
				{
					case iIconographerHelp:
						FSSpec supportFolder;
						
						if (icnsEditorClass::statics.GetSupportFolder(&supportFolder))
						{
							Str255			helpPath;
							MHTMLHelpPtr	help;
							
							GetIndString(helpPath, rDefaultNames, eHelpPath);
							
							help = new MHTMLHelp(helpPath);
							
							help->Open();
							
							delete help;
						}
						break;
					case iEmailAuthor:
						Str255	address;
						
						GetIndString(address, rDefaultNames, eEmailAddress);
						if (LaunchURL((ConstStr255Param)address) != noErr)
							DoError(rStdErrors, eNeedInternetConfig);
						break;
					case iVisitHomepage:
						GetIndString(address, rDefaultNames, eHomepageAddress);
						if (LaunchURL((ConstStr255Param)address) != noErr)
							DoError(rStdErrors, eNeedInternetConfig);
						break;
				}
				break;
			case mEffects:
				OSType		effectType;
				MenuHandle	effectsMenu;
				
				switch (item)
				{
					case iReapply:
						if (frontEditor)
							frontEditor->ReapplyQTEffect();
						break;
					default:
					
					effectsMenu = GetMenuHandle(mEffects);
					GetMenuItemRefCon(effectsMenu, item, &effectType);
					if (frontEditor)
						if (frontEditor->ApplyQTEffect(effectType) == noErr)
						{
							Str255 reapplyItem, effectName;
							
							GetIndString(reapplyItem, rDefaultNames, eReapplyMenuItem);
							GetMenuItemText(effectsMenu, item, effectName);
							effectName[0] -= 3;
							SubstituteString(reapplyItem, "\p<effect name>", effectName);
							SetMenuItemText(effectsMenu, iReapply, reapplyItem);
							EnableMenuItem(effectsMenu, iReapply);
						}
				}
				
				break;
			default:
				MenuRef selected;

				selected = GetMenuHandle(menuID);
				
				if (selected == gWindowMenu || menuID == 0)
				{
					if (item == iToggleToolPalette + gWindowMenuOffset)
						TogglePalette(icnsEditorClass::statics.toolPalette,
									  iToggleToolPalette,
									  eShowToolPalette,
									  eHideToolPalette);
					else if (item == iToggleMembersPalette + gWindowMenuOffset)
						TogglePalette(icnsEditorClass::statics.membersPalette,
									  iToggleMembersPalette,
									  eShowMembersPalette,
									  eHideMembersPalette);
					else if (item == iTogglePreviewPalette + gWindowMenuOffset)
						TogglePalette(icnsEditorClass::statics.previewPalette,
									  iTogglePreviewPalette,
									  eShowPreviewPalette,
									  eHidePreviewPalette);
					else if (item == iToggleColorsPalette + gWindowMenuOffset)
						TogglePalette(icnsEditorClass::statics.colorsPalette,
									  iToggleColorsPalette,
									  eShowColorsPalette,
									  eHideColorsPalette);
								
#if !TARGET_API_MAC_CARBON
					else
					{
						MenuHandle		windowsMenu;
						MWindowPtr		selectedWindow;
						
						
						windowsMenu = GetMenuHandle(mWindows);
						
						GetMenuItemRefCon(windowsMenu, item, (UInt32*)&selectedWindow);
						
						selectedWindow->Select();
					}
#endif
				}
			break;
		}
		
		while (TickCount() < startTicks + 4) {;}
		
		HiliteMenu(0); // after the command has been executed, we must unhilite the menu
	}
}

#pragma mark -

void SetupResolutionHandling()
{
	ProcessSerialNumber		currentPSN;
	Rect					oldBounds, currentBounds;
	
	oldBounds = icnsEditorClass::statics.preferences.GetLastScreenBounds();
	currentBounds = MUtilities::GetUsableScreenRect();
	
	if ((oldBounds.right - oldBounds.left) != (currentBounds.right - currentBounds.left) ||
		(oldBounds.bottom - oldBounds.top) != (currentBounds.bottom - currentBounds.top))
		HandleResolutionChange(false);
	
	gRezChangeNotificationUPP = NewDMExtendedNotificationUPP(ResolutionChangeNotification);
	MacGetCurrentProcess(&currentPSN);
	DMRegisterExtendedNotifyProc(gRezChangeNotificationUPP, NULL, kFullNotify, &currentPSN);
}

pascal void ResolutionChangeNotification(void *userData, short theMessage, void *notifyData)
{
#pragma unused (userData, notifyData)

	switch (theMessage)
	{
		case kDMNotifyPrep: break;
		case kDMNotifyEvent:
			AppleEvent* event;
			AEDescList	displayList;
			AEDescList	displayID;
			AERecord	oldConfig, newConfig;
			AEKeyword	tempWord;
			DescType	returnType;
			Size		size;
			bool		rezChanged = false;
			OSErr		err;
			long		count;
			Rect		newRect, oldRect;
			
			event = (AppleEvent*)notifyData;
			
			err = AEGetParamDesc(event, kAEDisplayNotice, typeWildCard, &displayList); DebugAssert(err == noErr);
			
			// count the elements in the list
			err = AECountItems(&displayList,&count); DebugAssert(err == noErr);
			
			for (int i=0; i < count; i++)
			{
				err = AEGetNthDesc(&displayList, i + 1, typeWildCard, &tempWord, &displayID); DebugAssert(err == noErr);
				err = AEGetNthDesc(&displayID, 1, typeWildCard, &tempWord, &oldConfig); DebugAssert(err == noErr);
				err = AEGetKeyPtr(&oldConfig, keyDeviceRect, typeWildCard, &returnType, &oldRect, 8, &size); DebugAssert(err == noErr);
				err = AEGetNthDesc(&displayID, 2, typeWildCard, &tempWord, &newConfig); DebugAssert(err == noErr);
				err = AEGetKeyPtr(&newConfig, keyDeviceRect, typeWildCard, &returnType, &newRect, 8, &size); DebugAssert(err == noErr);
			
				if ((oldRect.right - oldRect.left) != (newRect.right - newRect.left) ||
					(oldRect.bottom - oldRect.top) != (newRect.bottom - newRect.top))
				{
					rezChanged = true;
					break;
				}
			}
			
			if (rezChanged)
				HandleResolutionChange(true);
			break;
	}
}

void HandleResolutionChange(bool fromEvent)
{
	if (icnsEditorClass::statics.preferences.FeatureEnabled(prefsAutomaticallyReposition))
	{
		icnsEditorClass::statics.preferences.ResetPaletteLocations();
		icnsEditorClass::statics.preferences.SetupPaletteLocations();
		
		for (MWindowPtr currentWindow = MWindow::GetFirst(); currentWindow; currentWindow = currentWindow->GetNext())
			if (currentWindow->GetType() == kEditorType)
				icnsEditorPtr(currentWindow)->EnsureOnScreenPosition();
				
		icnsEditorClass::statics.preferences.SetLastScreenBounds(MUtilities::GetUsableScreenRect());
	}
	else if (icnsEditorClass::statics.preferences.FeatureEnabled(prefsIgnoreResolutionChange))
	{
		; // do nothing
	}
	else
	{
		MAlert		alert;
		Str255		text;
		MString		temp;
		
		if (fromEvent)
			GetIndString(text, rStdErrors, eRezChangeEvent); 
		else
			GetIndString(text, rStdErrors, eRezChangeStartup);
			
		SubstituteString(text, "\p<app name>", gAppName);
		SubstituteString(text, "\p<app name>", gAppName);
		
		alert.SetButtonName(kMAOK, rDefaultNames, eRepositionButton);
		alert.SetButtonName(kMACancel, rDefaultNames, eCancelButton);
		alert.SetButtonName(kMAOther, rDefaultNames, eRememberSelection);
		alert.MakeOtherIntoCheckbox();
		
		temp = text;
		
		alert.SetError(temp);
		alert.SetBeep(false);
		alert.SetMovable(true);
		alert.SetPosition(kWindowCenterMainScreen);
			
		switch (alert.Display())
		{
			case kMAOK:
				if (alert.GetCheckboxState())
					icnsEditorClass::statics.preferences.EnableFeature(prefsAutomaticallyReposition);
						
				icnsEditorClass::statics.preferences.ResetPaletteLocations();
				icnsEditorClass::statics.preferences.SetupPaletteLocations();
				
				for (MWindowPtr currentWindow = MWindow::GetFirst(); currentWindow; currentWindow = currentWindow->GetNext())
					if (currentWindow->GetType() == kEditorType)
						icnsEditorPtr(currentWindow)->EnsureOnScreenPosition();			
				break;
			case kMACancel:
				if (alert.GetCheckboxState())
					icnsEditorClass::statics.preferences.EnableFeature(prefsIgnoreResolutionChange);
				break;
		}
		
		icnsEditorClass::statics.preferences.SetLastScreenBounds(MUtilities::GetUsableScreenRect());
	}
	
}

#pragma mark -

void TogglePixelGrid()
{
	MenuHandle	menu;
	Str255		menuItemText;
	
	if (icnsEditorClass::statics.preferences.FeatureEnabled(prefsDrawGrid))
	{
		icnsEditorClass::statics.preferences.DisableFeature(prefsDrawGrid);
		GetIndString(menuItemText, rDefaultNames, eShowPixelGrid);
	}
	else
	{
		icnsEditorClass::statics.preferences.EnableFeature(prefsDrawGrid);
		GetIndString(menuItemText, rDefaultNames, eHidePixelGrid);
	}
	
	menu = GetMenuHandle(mIcon);
	SetMenuItemText(menu, iPixelGrid, menuItemText);
}

void SetupPixelGrid()
{
	MenuHandle	menu;
	Str255		menuItemText;
	
	if (icnsEditorClass::statics.preferences.FeatureEnabled(prefsDrawGrid))
		GetIndString(menuItemText, rDefaultNames, eHidePixelGrid);
	else
		GetIndString(menuItemText, rDefaultNames, eShowPixelGrid);
	
	menu = GetMenuHandle(mIcon);
	SetMenuItemText(menu, iPixelGrid, menuItemText);
}

#pragma mark -

void TogglePalette(MFloaterPtr palette, int menuItem, int showStringIndex, int hideStringIndex)
{
	Str255 		menuItemText;
						
	if (palette->IsVisible())
	{
		palette->Hide();
		GetIndString(menuItemText, rDefaultNames, showStringIndex);
	}
	else
	{
		palette->Show();
		GetIndString(menuItemText, rDefaultNames, hideStringIndex);
	}
	
	SetMenuItemText(gWindowMenu, menuItem + gWindowMenuOffset, menuItemText);
	icnsEditorClass::statics.preferences.UpdatePaletteStatus();
}

void SetupPalette(MFloaterPtr palette, int flag, int menuItem, int showStringIndex, int hideStringIndex)
{
	Str255 		menuItemText;
	
	if (icnsEditorClass::statics.preferences.FeatureEnabled(flag))
	{
		palette->Show();
		GetIndString(menuItemText, rDefaultNames, hideStringIndex);
	}
	else
	{
		palette->Hide();
		GetIndString(menuItemText, rDefaultNames, showStringIndex);
	}
	
	SetMenuItemText(gWindowMenu, menuItem + gWindowMenuOffset, menuItemText);
}

#pragma mark -

#if TARGET_API_MAC_CARBON

void ShowAboutBox()
{
	Str255 name, company, regCode;
	
	if (gAboutBox == NULL)
		gAboutBox = new AboutBox;
	
	if (icnsEditorClass::statics.preferences.IsRegistered())
		icnsEditorClass::statics.preferences.GetRegistrationInfo(name, company, regCode);
	else
	{
		GetIndString(name, rDefaultNames, eNotRegistered);
		CopyString(company, "\p");
		CopyString(regCode, "\p");
	}
	
	gAboutBox->SetRegistrationInfo(name, company, regCode);
	gAboutBox->Show();
	gAboutBox->Select();
}

#else

// __________________________________________________________________________________________
// Name			: ShowAboutBox
// Input		: None
// Output		: None
// Description	: Shows a dialog containing the name of the program, name of the creator
//				  (that's me) and contact info.
// Notes		: When the user clicks on the email or homepage address then the appropriate
//				  mail/web app is opened, this is done through InternetConfig, a system on
//				  the mac getting internet settings (such as which app is the web browser). 

void ShowAboutBox()
{
	DialogPtr		aboutBox; // pointer to the dialog we will display
	bool			dialogDone; // control variable
	short			itemHit; // which item did the user click
	Str255			address; // strings used to store the address that is to be
							 // opened in the browser/mail client
	ModalFilterUPP	eventFilterUPP;
	
	aboutBox = GetNewDialog (rAboutBox, nil, (WindowPtr)-1L); // load the about box
	if (aboutBox == NULL)
	{
		DoError(rStdErrors, eResourceMissing);
		return;
	}
	
	MWindow::DeactivateAll();
	
	SetDialogDefaultItem(aboutBox, iAboutPic); // when the user hits return, this item is "clicked"
	
	ShowWindow(GetDialogWindow(aboutBox)); // we can now show the window
	
	eventFilterUPP = NewModalFilterUPP(AboutBoxEventFilter);
	
	dialogDone = false;
	
	MHelp::SetupDialogHelp(aboutBox, rAboutHelp);
	
	while (!dialogDone)
	{
		ModalDialog(eventFilterUPP, &itemHit);
		
		switch (itemHit)
		{
			case iEmailAddress:
				GetIndString(address, rDefaultNames, eEmailAddress);
				dialogDone = true;
				if (LaunchURL((ConstStr255Param)address) != noErr)
					DoError(rStdErrors, eNeedInternetConfig);
				break;
			case iHomepageAddress:
				GetIndString(address, rDefaultNames, eHomepageAddress);
				dialogDone = true;
				if (LaunchURL((ConstStr255Param)address) != noErr)
					DoError(rStdErrors, eNeedInternetConfig);
				break;
			case iAboutPic: dialogDone = true; break;
		}
	}
	DisposeModalFilterUPP(eventFilterUPP);
	DisposeDialog(aboutBox);
	
	MWindow::ActivateAll();
	
	MHelp::CleanupDialogHelp();
}

pascal Boolean AboutBoxEventFilter(DialogPtr dialog, EventRecord *eventPtr, short *itemHit)
{
	bool	handledEvent; // if true then our function tool care of the event
	Rect	picRect, controlRect;
	
	MHelp::HandleHelp(dialog, eventPtr);
	
	handledEvent = false; // by default we didn't handle the event
	
	switch (eventPtr->what)
	{
		case activateEvt: // if the window isn't the dialog, then we tell the update function
		case updateEvt: //  to take care of it
			if((DialogPtr) eventPtr->message != dialog)
			{
				HandleUpdate(eventPtr);
				handledEvent = true;
			}
			else
			{
				Str255			name, company, regCode;
				ControlHandle	control;
				PicHandle		aboutPic;
				RGBColor		textColor = {.28 * 65535, .16 * 65535, .12 * 65535};
				
				aboutPic = GetPicture(rAboutPic);
				if (icnsEditorClass::statics.preferences.IsRegistered())
					icnsEditorClass::statics.preferences.GetRegistrationInfo(name, company, regCode);
				else
				{
					GetIndString(name, rDefaultNames, eNotRegistered);
					CopyString(company, "\p");
					CopyString(regCode, "\p");
				}
				
				SAVEGWORLD;
				SAVECOLORS;
				
				SetPortDialogPort(dialog);
				
				GetDialogItemAsControl(dialog, iAboutPic, &control);
				GetControlBounds(control, &picRect);
				
				
				DrawPicture(aboutPic, &picRect);
				
				RGBForeColor(&textColor);
				TextFont(applFont);
				TextSize(9);
				TextFace(bold);
				
				for (int i=name[0]; i > 0 && name[i] == ' '; i--)
				
				name[0] = i - 1;
				
				GetDialogItemAsControl(dialog, iNameDisplayField, &control);
				GetControlBounds(control, &controlRect);
				MoveTo(controlRect.left, controlRect.bottom);
				DrawString(name);
				
				TextFace(normal);
			
				GetDialogItemAsControl(dialog, iCompanyDisplayField, &control);
				GetControlBounds(control, &controlRect);
				MoveTo(controlRect.left, controlRect.bottom);
				DrawString(company);
				
				GetDialogItemAsControl(dialog, iRegCodeDisplayField, &control);
				GetControlBounds(control, &controlRect);
				MoveTo(controlRect.left, controlRect.bottom);
				DrawString(regCode);
				
				TextFace(normal);
				TextSize(12);
				TextFont(0);
				
				RESTORECOLORS;
				RESTOREGWORLD;
			}
			break;
		default:
			handledEvent = AlertEventFilter(dialog, eventPtr, itemHit);
			break;
	}

	return(handledEvent);
}

#endif

void Register(void)
{
	DialogPtr		registration;
	bool			dialogDone;
	short			itemHit;
	ControlHandle	nameField, companyField, regCodeField;
	Str255			name, company, regCode;
	ModalFilterUPP	eventFilterUPP;
	OSErr			err;
	
	registration = GetNewDialog (rRegister, NULL, (WindowPtr)-1L);
	
	SetDialogDefaultItem(registration, iRegisterButton);
	SetDialogCancelItem(registration, iCancel);
	
	err = GetDialogItemAsControl(registration, iNameField, &nameField);
	err = GetDialogItemAsControl(registration, iCompanyField, &companyField);
	err = GetDialogItemAsControl(registration, iRegCodeField, &regCodeField);
	
	eventFilterUPP = NewModalFilterUPP(AlertEventFilter);
	
	MWindow::DeactivateAll();
	
	ShowWindow(GetDialogWindow(registration));
	DrawDialog(registration);
	
	dialogDone = false;
	
	MHelp::SetupDialogHelp(registration, rRegisterHelp);
	
	while (!dialogDone)
	{
		ModalDialog(eventFilterUPP, &itemHit);
		
		switch (itemHit)
		{
			case iRegisterButton:
				GetControlText(nameField, name);
				GetControlText(companyField, company);
				GetControlText(regCodeField, regCode); 
				if (icnsEditorClass::statics.preferences.ValidRegCode(name, regCode))
				{
					MenuHandle		menu;
					
					icnsEditorClass::statics.preferences.Register(name, company, regCode);
					dialogDone = true;
					DisposeModalFilterUPP(eventFilterUPP);
					DisposeDialog(registration);
					DoError(rStdErrors, eThanksForRegistering);
					menu = GetMenuHandle(mApple);
					DeleteMenuItem(menu, iRegister);
				}
				else
				{
					ControlHandle root;
					
					DoError(rStdErrors, eBadRegCode);
					
					GetRootControl(GetDialogWindow(registration), &root);
					ActivateControl(root);
					itemHit = 0;
				}
				break;	
			case iCancel:
				dialogDone = true;
				DisposeModalFilterUPP(eventFilterUPP);
				DisposeDialog(registration);
				break;
			case iOrderRegistrationCode:
				DisposeModalFilterUPP(eventFilterUPP);
				DisposeDialog(registration);
				ChooseRegistrationMethod();
				dialogDone = true;
				break;
		}
		
	}
	
	MHelp::CleanupDialogHelp();
	
	MWindow::ActivateAll();
}

void ChooseRegistrationMethod()
{
	MAlert		chooseMethod;
	Str255		text;
	MString		temp;
		
	GetIndString(text, rPrompts, eChooseRegistrationMethod); 
	
	SubstituteString(text, "\p<app name>", gAppName); // substitute
	SubstituteString(text, "\p<app name>", gAppName);
	
	chooseMethod.SetButtonName(iRegisterOnline, rDefaultNames, eRegisterOnline);
	chooseMethod.SetButtonName(kMACancel, rDefaultNames, eCancelButton);
	chooseMethod.SetButtonName(iLaunchRegisterApp, rDefaultNames, eLaunchRegisterApp);
	
	temp = text;
	
	chooseMethod.SetError(temp);
	chooseMethod.SetBeep(false);
	chooseMethod.SetMovable(true);
	chooseMethod.SetPosition(kWindowCenterMainScreen);
		
	switch (chooseMethod.Display())
	{
		case iRegisterOnline:
			Str255		address;
			
			GetIndString(address, rDefaultNames, eRegistrationHomepage);
			if (LaunchURL((ConstStr255Param)address) != noErr)
				DoError(rStdErrors, eNeedInternetConfigRegistration);
			break;
		case kMACancel:
			break;
		case iLaunchRegisterApp:
			FSSpec	registerSpec;
			Str255	registerFileName;

			GetIndString(registerFileName, rDefaultNames, eRegisterAppName);
			if (FSMakeFSSpec(0, 0, registerFileName, &registerSpec) != noErr)
				DoError(rStdErrors, eCouldntFindRegister);
			else
				MUtilities::AESendFinderOpen(registerSpec);
			break;
	}
}

// __________________________________________________________________________________________
// Name			: NewIcon
// Input		: None
// Output		: OSErr: did we succeed or not?
// Description	: Makes a new instance of the editor class, updates the menus if necessary and
//				  updates the linked list tail and head

OSErr NewIcon(bool showWindow)
{
	icnsEditorPtr newEditor; // pointer to the editor which we will create
	
	newEditor = new icnsEditorClass(); // we make the editor...
	if (!(newEditor->status & outOfMemory)) // if we're ok
	{		
		if (showWindow)
		{
			Str255	untitledName;
			FSSpec	untitledFile;
			
			GetIndString(untitledName, rBasicStrings, sUntitledName);
			icnsEditorClass::statics.MakeIconNameUnique(untitledName);
			MFile::ResetSpec(&untitledFile);
			CopyString(untitledFile.name, untitledName);
			newEditor->file.SetAssociatedFile(untitledFile);
			
			newEditor->RefreshWindowTitle(); // the window title is updated to reflect the icon name
	
			newEditor->SetBestMember();
			newEditor->Refresh();
			newEditor->Show();
			if (icnsEditorClass::statics.firstTime)
				ShowFirstTimeDialog();
		}
		
		return noErr;
	}
	else // if we failed
	{
		delete newEditor; // then we dispose of what we just created
		DoError(rStdErrors, eCantMakeEditor); // and imform the user
		return memFullErr;
	}
}

OSErr NewBrowser(FSSpec file, int format)
{
#pragma unused (format)
	iconBrowserPtr	newBrowser; // pointer to the browser which we will create
	MWindowPtr		currentWindow;
	iconBrowserPtr	currentBrowser;
	
	currentWindow = MWindow::GetFirst();
	while (currentWindow != NULL)
	{
		currentBrowser = GetBrowser(currentWindow->GetWindow());
		
		if (currentBrowser != NULL)
			if (MFile::SameSpec(currentBrowser->file.GetAssociatedFile(), file))
			{
			    currentBrowser->Select();
			    return noErr;
			}
		
		currentWindow = currentWindow->GetNext();
	}
	
	newBrowser = new iconBrowserClass(file, OpenIconFromBrowser); // we make the browser...
	if (!(newBrowser->status & outOfMemory)) // if we're ok
	{
		DoIdle();
		DrawMenuBar();
		return noErr;
	}
	else // if we failed
	{
		delete newBrowser; // then we dispose of what we just created
		DoError(rStdErrors, eCantMakeEditor); // and imform the user
		return memFullErr;
	}
}

bool HandleSimpleCases(FSSpec fileSpec, long* ID)
{
	Handle			currentIcon;
	short			resFile, oldFile;
	unsigned long	iconTypes[] = {'icns', 'icl8', 'ics8', 'ics4', 'icl4', 'ICN#', 'ics#', 'icm8', 'icm4', 'icm#'};
	unsigned long	maxCountType = 0;
	int				count=-1;
	int				typeCount = sizeof(iconTypes)/sizeof(iconTypes[0]);
	short			temp, countID;
	bool			simpleCase = false;
	Str255			name;
	unsigned char isFolder, ignored;
	ResType			ignoredType;
	MFile			file;
	
	ResolveAliasFile(&fileSpec,true,&isFolder, &ignored);
			
	if (isFolder)
	{
		*ID = kIDUseFileIcon;
		return true;
	}
	
	file.SetAssociatedFile(fileSpec);
		
	oldFile = CurResFile();
	resFile = file.OpenResourceFork(fsRdPerm);
	
	if (resFile == -1 && ResError() == eofErr)
	{
		if (FindSubstring(fileSpec.name, "\p.icns") != -1)
			*ID = kIDLoadDataFork;
		else
			*ID = kIDUseFileIcon;
		return true;
	}
	UseResFile(resFile);
	
	for (int i=0; i < typeCount; i++)
	{
		temp = Count1Resources(iconTypes[i]);
		if (temp > count)
		{
			count = temp;
			maxCountType = iconTypes[i];
			currentIcon = Get1IndResource(iconTypes[i], 1);
			GetResInfo(currentIcon, &countID, &ignoredType, name);
			ReleaseResource(currentIcon);
			if (count > 1)
				break;
		}
		else if (temp == count && count == 1)
		{
			currentIcon = Get1IndResource(iconTypes[i], 1);
			GetResInfo(currentIcon, &temp, &ignoredType, name);
			ReleaseResource(currentIcon);
			if (temp != countID)
			{
				count = 2;
				break;
			}
		}
	}
	
	if (count == 0)
	{
		if (FindSubstring(fileSpec.name, "\p.icns") != -1)
			*ID = kIDLoadDataFork;
		else
			*ID = kIDUseFileIcon;
		simpleCase = true;
	}
	else if (count == 1)
	{
		currentIcon = Get1IndResource(maxCountType, 1);
		GetResInfo(currentIcon, &temp, &maxCountType, name);
		*ID = temp;
		simpleCase = true;
		ReleaseResource(currentIcon);
	}
		
	
	CloseResFile(resFile);
	UseResFile(oldFile);
	
	return simpleCase;
	
}

icnsEditorPtr GetEmptyEditor(FSSpec fileToOpen, long ID, int format)
{
	MWindowPtr		currentWindow;
	icnsEditorPtr	currentEditor;
	OSErr			err;
	
	currentWindow = MWindow::GetFirst();
	while (currentWindow != NULL)
	{
		currentEditor = GetEditor(currentWindow->GetWindow());
		
		if (currentEditor != NULL)
			if (MFile::SameSpec(currentEditor->file.GetAssociatedFile(), fileToOpen) &&
			    (currentEditor->loadedID == ID) &&
			    (currentEditor->loadedFormat == format))
			{
			    currentEditor->Select();
			    return NULL;
			}
			else if (!currentEditor->file.IsValid() &&
					 !(currentEditor->status & canUndo) &&
					 !(currentEditor->status & canRedo))
			{
				return currentEditor;
			}
		
		currentWindow = currentWindow->GetNext();
	}
	
	err = NewIcon(false);
	
	if (err == noErr)
		return GetEditor(MWindow::GetLast()->GetWindow());
	else
		return NULL;
}

void Revert()
{
	icnsEditorPtr	frontEditor;
	
	frontEditor = GetFrontEditor();
	
	if (frontEditor != NULL)
	{
		MAlert					alert;
		Str255					text, fileName;
		MString					temp;
			
		GetIndString(text, rPrompts, eRevert); // we get the message
		
		SubstituteString(text, "\p<app name>", gAppName); // substitute for the place holders
		frontEditor->file.GetName(fileName);
		SubstituteString(text, "\p<file name>", fileName);
		
		alert.SetButtonName(kMAOK, rDefaultNames, eRevertButton);
		alert.SetButtonName(kMACancel, rDefaultNames, eCancelButton);
		
		alert.SetMovable(true);
		alert.SetType(kAlertStopAlert);
		
		alert.SetPosition(kWindowCenterParentWindow); // we want the error to be centered on the
		
		temp = text;
		
		alert.SetError(temp);
		
		if (alert.Display() != kMAOK) return;
		
		frontEditor->format = frontEditor->loadedFormat;

		switch (frontEditor->loadedID)
		{
			case kIDUseFileIcon:
				frontEditor->ID = -16455;
				frontEditor->LoadFileIcon();
				break;
			case kIDLoadDataFork:
				frontEditor->ID = -16455;
				frontEditor->LoadDataFork();
				break;
			default:
				frontEditor->ID = frontEditor->loadedID;
				frontEditor->Load();
				break;
		}
		
		frontEditor->status &= ~needToSave;
		frontEditor->Invalidate();
		frontEditor->Refresh();
		
		DoIdle();
		DrawMenuBar();
	}
}

void OpenIcon(FSSpec *inFile)
{
	icnsEditorPtr	newEditor;
	FSSpec			fileToOpen;
	long			ID = -16455;
	long			format;
	
	format = icnsEditorClass::statics.preferences.GetDefaultFormat();
	
	if (inFile == NULL)
	{
		if (GetIconFile(&fileToOpen, &format, false) != noErr)
			return;
	}
	else
	{
		fileToOpen = *inFile;	
	}
	
	format = GetFileFormat(fileToOpen);
	
	icnsEditorClass::statics.preferences.AddRecentFile(fileToOpen);
	RebuildRecentFilesMenu();
	
	if ((format == formatMacOSUniversal ||
		format == formatMacOSNew ||
		format == formatMacOSOld) &&
		!HandleSimpleCases(fileToOpen, &ID))
	{
		NewBrowser(fileToOpen, format);
		return;
	}
	
	newEditor = GetEmptyEditor(fileToOpen, ID, format);
	
	if (newEditor != NULL)
	{
		newEditor->file.SetAssociatedFile(fileToOpen);
		newEditor->loadedID = ID;
		newEditor->loadedFormat = format;
		newEditor->format = format;
		newEditor->usedMembers = kDefaultMembers[format];
		switch (ID)
		{
			case kIDUseFileIcon:
				newEditor->ID = -16455;
				newEditor->LoadFileIcon();
				break;
			case kIDLoadDataFork:
				newEditor->ID = -16455;
				newEditor->LoadDataFork();
				break;
			default:
				newEditor->ID = ID;
				newEditor->Load();
				break;
		}
		
		newEditor->Invalidate();
		newEditor->Refresh();
		
		newEditor->Show();
		
		DoIdle();
		DrawMenuBar();
	}
}

void InsertIcon(MIconPtr tempIcon)
{
	iconBrowserPtr frontBrowser;
	
	frontBrowser = GetFrontBrowser();
	
	tempIcon->loadedID = kIDNone;
	tempIcon->ID = -16455;
	tempIcon->format = frontBrowser->GetCurrentFormat();
	tempIcon->usedMembers = kDefaultMembers[tempIcon->format];
	tempIcon->file.SetAssociatedFile(frontBrowser->file.GetAssociatedFile());
	tempIcon->Reset();
	
	if (tempIcon->EditIconInfo(kInsertIcon) == iOK)
	{
		FSSpec iconFile;
		
		tempIcon->members = (icni | icnm);
		tempIcon->Save();
		
		
		iconFile = tempIcon->file.GetAssociatedFile();
		
		OpenIconFromBrowser(&iconFile, tempIcon->ID, tempIcon->format, -1);
		
		RefreshIconBrowser(true, kIDNone, 0);
	}
}

void OpenIconFromBrowser(FSSpec *fileToOpen, long ID, long format, long member)
{
	icnsEditorPtr newEditor;

	newEditor = GetEmptyEditor(*fileToOpen, ID, format);

	if (newEditor != NULL)
	{		
		newEditor->file.SetAssociatedFile(*fileToOpen);
		newEditor->loadedID = ID;
		newEditor->loadedFormat = format;
		
		if (ID == kIDUseFileIcon)
		{
			newEditor->ID = -16455;
			newEditor->format = format;
			newEditor->usedMembers = kDefaultMembers[format];
			newEditor->LoadFileIcon();
		}
		else
		{
			newEditor->ID = ID;
			newEditor->format = format;
			newEditor->usedMembers = kDefaultMembers[format];
			newEditor->Load();
		}
		
		if (member != -1)
		{
			newEditor->SetCurrentMember(member, 0);
			newEditor->ResetStates();
		}
		
		newEditor->Invalidate();
		newEditor->Refresh();
		
		newEditor->Show();
		newEditor->Select();
		
		DoIdle();
		DrawMenuBar();
		
		icnsEditorClass::statics.preferences.AddRecentFile(newEditor->file.GetAssociatedFile());
		RebuildRecentFilesMenu();
	}
}

void PostOpen()
{
	FSSpec supportFolder;
	
	if (!(icnsEditorClass::statics.preferences.IsRegistered()) &&
		(icnsEditorClass::statics.preferences.GetTimesUsed() > 50))
		Nag(true);
	
	icnsEditorClass::statics.GetSupportFolder(&supportFolder);
	
	if (icnsEditorClass::statics.firstTime)
		ShowFirstTimeDialog();
	
	SetupResolutionHandling();
}

void ShowFirstTimeDialog()
{
	MAlert		firstTime;
	Str255		text;
	MString		temp;
		
	GetIndString(text, rPrompts, eWelcome); 
	
	SubstituteString(text, "\p<app name>", gAppName); // substitute
	
	firstTime.SetButtonName(kMAOK, rDefaultNames, eOpenHelp);
	firstTime.SetButtonName(kMACancel, rDefaultNames, eContinue);
	
	temp = text;
	
	firstTime.SetError(temp);
	firstTime.SetBeep(false);
	firstTime.SetMovable(true);
	firstTime.SetPosition(kWindowCenterMainScreen);
		
	switch (firstTime.Display())
	{
		case kMAOK:
			DoMenuCommand(((kHMHelpMenuID << 16) & 0xFFFF0000) + iIconographerHelp);
			break;
		case kMACancel:
			break;
	}
	
	icnsEditorClass::statics.firstTime = false;
}

// __________________________________________________________________________________________
// Name			: CloseIcon
// Input		: flags: options for the saving process. Currently the only supported one
//				  is noCancel, which, when set, prevents the user from canceling the closing
//				  process
// Output		: bool: true if the icon was actually closed, false otherwise
// Description	: Attemps to close the frontmost editor. If there are unsaved changes then a
//				  dialog is shown asking the user if he wants to not save, cancel or save.
//				  if the user clicks the first or the last, we save the icon (if requested)
//				  and then close the window. We also update the menus if neccesary.

bool Close(WindowPtr windowToClose, int flags)
{
	bool			closed; // true if the user chose to actually close the editor
	
	if (GetEditor(windowToClose)) // if there is one
	{
		if (GetEditor(windowToClose)->status & needToSave) // and it has unsaved changes
		{
			switch (WantToSave(GetEditor(windowToClose)->file.GetAssociatedFile(), flags)) // we prompt the user
			{
				case kAlertStdAlertOKButton: // we save the icon and close it
					if (SaveIcon(GetEditor(windowToClose), false) == noErr)
						closed = true;
					else
						closed = false;
					break;
				case kAlertStdAlertOtherButton: closed = true; break;
				// we close the icon (but don't save)
				case kAlertStdAlertCancelButton: closed = false; break;
				// we don't close the icon at all
			}
		}
		else
			closed = true;
			// if there weren't any unsaved changes we close the icon straight away
	
		if (closed) // if the user chose close
		{
			GetEditor(windowToClose)->Close();
			delete GetEditor(windowToClose);
		}
	}
	else
	{
		iconBrowserPtr currentBrowser;
		
		currentBrowser = GetBrowser(windowToClose);
		
		if (currentBrowser != NULL)
		{
			currentBrowser->Close();
			delete currentBrowser;
		}
#if TARGET_API_MAC_CARBON
		else if (GetWindow(windowToClose) == gAboutBox)
			gAboutBox->Hide();
#endif
		
		closed = true;
	}
	
	if (windowToClose == gWindowPtrUnderMouse)
	{
		Point theMouse;
		
		GetMouse(&theMouse);
		LocalToGlobal(&theMouse);
		FindWindow(theMouse, &gWindowPtrUnderMouse);
		gWindowUnderMouse = GetWindow(gWindowPtrUnderMouse);
	}
	
	//DoIdle();
	//DrawMenuBar();
	
	icnsEditorClass::statics.UpdatePalettes(updateAll);
		
	return closed; // return what the user actually chose to do
}



// __________________________________________________________________________________________
// Name			: SaveIcon
// Input		: flags: options for saving in a new file, or into a current one
// Output		: None
// Description	: Saves the frontmost icon. If the user has selected the Save As... command or
//				  if the current file doesn't have a chosen location yet then we promopt the
//				  the user for a new location before actually calling the Save command of the
//				  editor.

OSErr SaveIcon(icnsEditorPtr frontEditor, int flags)
{
	bool			newIcon = false, createdFile = false;
	OSErr			err;
	int				deletedIcon = kIDNone, deletedIconFormat = -1;
	
	if (frontEditor != NULL) // if there is one
	{
		if (flags & saveInto)
		{
			FSSpec	oldSpec, editorFile;
			long	saveFormat;
			
			oldSpec = frontEditor->file.GetAssociatedFile();
			
			if (frontEditor->format != formatMacOSNew &&
				frontEditor->format != formatMacOSOld &&
				frontEditor->format != formatMacOSUniversal)
				saveFormat = formatMacOSUniversal;
			else
				saveFormat = frontEditor->format;
			
			editorFile = frontEditor->file.GetAssociatedFile();
			err = GetIconFile(&editorFile, &saveFormat, true);
			if (err != noErr) return err;
			
			frontEditor->usedMembers &= kDefaultMembers[saveFormat];
			frontEditor->format = saveFormat;
			frontEditor->file.SetAssociatedFile(editorFile);
			
			if (MIcon::FileHasIcon(&frontEditor->file, frontEditor->ID, frontEditor->format))
			{
				Str255 text, yesButton, noButton, IDAsString, fileName;
				short itemHit;
				
				GetIndString(text, rPrompts, eIconAlreadyExists);
				
				frontEditor->file.GetName(fileName);
				SubstituteString(text, "\p<file name>", fileName);
				NumToString(frontEditor->ID, IDAsString);
				SubstituteString(text, "\p<ID>", IDAsString);
				
				GetIndString(yesButton, rBasicStrings, eYesButton);
				GetIndString(noButton, rBasicStrings, eNoButton);
				
				itemHit = MUtilities::DisplayAlert(text, NULL, yesButton, noButton, "\p", kAlertCautionAlert, kWindowAlertPositionParentWindow);
				if (itemHit == 2)
				{
					MIcon::DeleteIcon(&frontEditor->file, frontEditor->ID, frontEditor->format);
					frontEditor->file.SetAssociatedFile(oldSpec);
					return err;
				}
				else
					newIcon = true;
			}
			
			frontEditor->RefreshWindowTitle();
		}
		else if ((flags & saveAs) || !frontEditor->file.IsValid()) 
		{
			long	fileType;
			FSSpec	targetFile;
			
			targetFile = frontEditor->file.GetAssociatedFile();
			err = SaveFile(&targetFile, &frontEditor->format);
						  		
			if (err != noErr) // if there was a problem (most likely, the user cancelled)
				return err; // we go back
				
			FSpDelete(&targetFile); // we delete that file that was already there (if any)
												  
			fileType = iconFormats[frontEditor->format];
			
			FSpCreate(&targetFile, creatorCode, fileType, 0); // we create a new file
			// 0 = roman encoding type 
			if (frontEditor->format == formatMacOSNew ||
				frontEditor->format == formatMacOSOld ||
				frontEditor->format == formatMacOSUniversal)
				FSpCreateResFile(&targetFile, creatorCode, fileType, 0); // and we add a resource fork to it too
				
			frontEditor->file.SetAssociatedFile(targetFile);
			frontEditor->RefreshWindowTitle(); // must update the title of the window with the new file name
			
			createdFile = true;
		}
		else if (frontEditor->IDChanged())
		{
			newIcon = true;
			deletedIcon = frontEditor->loadedID;
			deletedIconFormat = frontEditor->loadedFormat;
		}
		
		err = frontEditor->Save();
		RefreshIconBrowser(newIcon, deletedIcon, deletedIconFormat);
		
		if (err == fnOpnErr)
		{
			frontEditor->file.Reset();
			
			return SaveIcon(frontEditor, flags);
		}
		else if (err == userCanceledErr && createdFile)
		{
			frontEditor->file.Delete();
			frontEditor->file.Reset();
			
			frontEditor->RefreshWindowTitle();
			
			return err;
		}
		
		if (!(icnsEditorClass::statics.preferences.IsRegistered()))
			Nag(false);
			
		icnsEditorClass::statics.preferences.AddRecentFile(frontEditor->file.GetAssociatedFile());
		RebuildRecentFilesMenu();
	}
	
	return noErr;
}

void RefreshIconBrowser(bool newIcon, int deletedIcon, int deletedIconFormat)
{
	MWindowPtr		currentWindow = NULL;
	icnsEditorPtr	frontEditor;
	iconBrowserPtr	currentBrowser = NULL;
	
	frontEditor = GetFrontEditor();
	if (frontEditor == NULL)
		return;
	
	currentWindow = MWindow::GetFirst();
	while (currentWindow != NULL)
	{
		if (currentWindow->GetType() == kBrowserType)
		{
			currentBrowser = (iconBrowserPtr)currentWindow;
			if (MFile::SameSpec(currentBrowser->file.GetAssociatedFile(), frontEditor->file.GetAssociatedFile()))
				break;
			else
				currentBrowser = NULL;
		}
		currentWindow = currentWindow->GetNext();
	}
	
	if (currentBrowser != NULL)
	{
		if (newIcon)
		{
			if (frontEditor->format == formatMacOSUniversal ||
				frontEditor->format == formatMacOSNew)
				currentBrowser->AddIcon(frontEditor->ID, frontEditor->name, frontEditor->members & kDefaultMembers[formatMacOSNew], true);

			if (frontEditor->format == formatMacOSUniversal ||
				frontEditor->format == formatMacOSOld)
				currentBrowser->AddIcon(frontEditor->ID, frontEditor->name, frontEditor->members & kDefaultMembers[formatMacOSOld], false);
		}
		
		
		if (deletedIcon != kIDNone)
		{
			if (deletedIconFormat == formatMacOSUniversal ||
				deletedIconFormat == formatMacOSNew)
				currentBrowser->RemoveIcon(frontEditor->ID, true);

			if (deletedIconFormat == formatMacOSUniversal ||
				deletedIconFormat == formatMacOSOld)
				currentBrowser->RemoveIcon(frontEditor->ID, false);
		}
		
		currentBrowser->RefreshList();
	}
}

// __________________________________________________________________________________________
// Name			: WantToSave
// Input		: fileSpec: the FSSpec to the file which we are decide whether to save or not,
//				  used to get the file name to put in the dialog message.
//				  flags: options for the saving process. Currently the only supported one
//				  is noCancel, which, when set, prevents the user from canceling the closing
//				  process
// Output		: int: the button which the user clicked (Don't Save, Cancel or Save)
// Description	: Prompts the user (using the StandardAlert function) if they want to save
//				  the editor they wanted to close.

int WantToSave(FSSpec fileSpec, int flags)
{
	MAlert					alert;
	Str255					text;
	MString					temp;
		
	GetIndString(text, rPrompts, eWantToSaveError); // we get the message
	
	SubstituteString(text, "\p<app name>", gAppName); // substitute for the place holders
	SubstituteString(text, "\p<file name>", fileSpec.name);
	
	alert.SetButtonName(kMAOK, rDefaultNames, eSaveButton);
	if (!(flags & noCancel)) // if the user can't cancel
		alert.SetButtonName(kMACancel, rDefaultNames, eCancelButton);
	alert.SetButtonName(kMAOther, rDefaultNames, eDontSaveButton);
	
	alert.SetMovable(true);
	alert.SetType(kAlertStopAlert);
	
	alert.SetPosition(kWindowCenterParentWindow); // we want the error to be centered on the
	
	temp = text;
	
	alert.SetError(temp);
	alert.SetExplanation(rPrompts, eWantToSaveExplanation);
	
	return alert.Display();
}

void Nag(bool startup)
{
	int						i;
	
	if (!startup)
		icnsEditorClass::statics.preferences.IncrementTimesUsed();
	i = icnsEditorClass::statics.preferences.GetTimesUsed();
	
	if (((i < 50) && (i % 10 == 0)) ||
		((i >= 50) && (i < 100) && (i % 5 == 0)) ||
		((i >= 100) && (i < 150) && (i % 3 == 0)) ||
		((i >= 150) && (i < 200) && (i % 2 == 0)) ||
		(i >= 200) ||
		startup)
	{
		MAlert				nagAlert;
		short				itemHit;
		Str255				text, timesUsedAsString;
		MString				temp;
		
		GetIndString(text, rPrompts, eRegistrationReminder); 
		
		SubstituteString(text, "\p<app name>", gAppName); // substitute
		NumToString(i, timesUsedAsString);
		SubstituteString(text, "\p<no of icons>", timesUsedAsString);
		
		nagAlert.SetButtonName(kMAOK, rDefaultNames, eRegisterButton);
		nagAlert.SetButtonName(kMACancel, rDefaultNames, eNotYetButton);
		nagAlert.SetPosition(kWindowCenterMainScreen);
		
		temp = text;
		
		nagAlert.SetError(temp);
		nagAlert.SetBeep(true);
		nagAlert.SetMovable(true);
		
		itemHit = nagAlert.Display();
			
		if (itemHit == kMAOK)
			ChooseRegistrationMethod();
	}
}

// __________________________________________________________________________________________
// Name			: DoError
// Input		: resourceID: the resource ID of the STR# resource which contains the error
//				  message we want to display.
//				  stringNo: within the STR# resource, the number of the string we are looking
//				  for.
// Output		: None
// Description	: Displays a message (based on an STR# resource) to inform the user that
//				  something happened (usually an error).

void DoError(int resourceID, int stringNo)
{
	Str255	text;
	
	GetIndString(text, resourceID, stringNo); // the message is loaded from the specified
	// string in the specified resource
	
	if (FindSubstring(text, "\p<app name>") != -1) // if there are placeholders, we must
		SubstituteString(text, "\p<app name>", gAppName); // substitute
	
	DoError(text);
}

void DoError(Str255 text)
{
	MAlert	alert;
	
	alert.SetMovable(true);
	alert.SetBeep(true);
	alert.SetButtonName(kMAOK, rDefaultNames, eOKButton);
	alert.SetPosition(kWindowCenterMainScreen);
	alert.SetType(kAlertStopAlert);
	
	alert.SetError(text);
	
	alert.Display();
}

// __________________________________________________________________________________________
// Name			: AlertEventFilter
// Input		: dialog: pointer to the dialog for which we are filtering events
//				  eventPtr: pointer to the event which just occured, which we must process
// Output		: itemHit: which item (if any) we declare that it was hit.
// Description	: Handles events in a dialog (in our case the WantToSave/DoError ones). It
//				  takes care of updates, key downs, etc. In most cases it passes on the
//				  processing to the standard system function (StdFilterProc).

pascal Boolean AlertEventFilter(DialogPtr dialog, EventRecord *eventPtr, short *itemHit)
{
	bool	handledEvent; // if true then our function tool care of the event

	handledEvent = false; // by default we didn't handle the event
	
	MHelp::HandleHelp(dialog, eventPtr);
	
	switch (eventPtr->what)
	{
		case activateEvt: // if the window isn't the dialog, then we tell the update function
		case updateEvt: //  to take care of it
			if((DialogPtr) eventPtr->message != dialog)
			{
				HandleUpdate(eventPtr);
				handledEvent = true;
			}
			else
				handledEvent = MWindow::StandardDialogFilter(dialog, eventPtr, itemHit);
			break;
		default:
			handledEvent = MWindow::StandardDialogFilter(dialog, eventPtr, itemHit);
		break;
	}

	return(handledEvent);
}

// __________________________________________________________________________________________
// Name			: CleanUp
// Input		: None
// Output		: None
// Description	: called at the end of the program, it goes through all the opened icons and
//				  attemps to close all of them. If it succeedes then it exits, otherwise it
//				  returns to the eventloop.

void CleanUp(void)
{
	ProcessSerialNumber		currentPSN;
	bool					windowsNeedSaving = false;
	
	for (MWindowPtr current = MWindow::GetFirst(); current != NULL; current = current->GetNext())
		if (current->GetType() == kEditorType && icnsEditorPtr(current)->status & needToSave)
		{
			windowsNeedSaving = true;
			break;
		}
	
	
	if (windowsNeedSaving)
		while (MWindow::GetFront() != NULL)
			if (!Close(MWindow::GetFront()->GetWindow(), 0))
			{
				gIsDone = false;
				EventLoop();
			}
	
		
	MacGetCurrentProcess(&currentPSN);
	DMRemoveExtendedNotifyProc(gRezChangeNotificationUPP, NULL, &currentPSN, 0);
	DisposeDMExtendedNotificationUPP(gRezChangeNotificationUPP);
	
	if (NavServicesAvailable())
		NavUnload();
		
	ExitMovies();
	
	OSErr		err;
	FSSpec		preferencesFile;
	short		preferencesRefNum, oldFile;
	short		myVRef;
	long		myDirID;
	Str255		prefsFileName;

	GetIndString(prefsFileName, rDefaultNames, ePrefsName);
	
	err = FindFolder(kOnSystemDisk, kPreferencesFolderType, kDontCreateFolder, &myVRef, &myDirID);
	if (err == noErr)
		err = FSMakeFSSpec(myVRef, myDirID, prefsFileName, &preferencesFile);
	
	if (err == noErr)
		err = FSpDelete(&preferencesFile);
	
	if (err == noErr)
		err = FSpCreate(&preferencesFile, creatorCode, prefFileType, 0);
	
	if (err == noErr)
		FSpCreateResFile(&preferencesFile, creatorCode, prefFileType, 0);
	
	oldFile = CurResFile();
	
	if (err == noErr)
		preferencesRefNum = FSpOpenResFile(&preferencesFile, fsRdWrPerm);
	
	if ((preferencesRefNum >= 0) && (err == noErr))
	{
		UseResFile(preferencesRefNum);
		icnsEditorClass::statics.preferences.Save(rPrefs);
		UpdateResFile(preferencesRefNum);
		CloseResFile(preferencesRefNum);
		UseResFile(oldFile);
	}
	else
	{
		DisplayAlert("Problem saving preferences", "");
	}
	
	icnsEditorClass::statics.Dispose();

#if TARGET_API_MAC_CARBON
	delete gAboutBox;
#endif
	
	ExitApplication(); // we're done
}

