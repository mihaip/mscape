// __________________________________________________________________________________________
// Program		: Icon Mangler
// Filename		: main.cpp(C++)
// Author		: Mihai Parparita (St. Mary's International School)
// Last modified: April 1, 1999
// Description	: The main part of the program, it handles the loading of the program, the user
//				  interaction and the cleaning up in the end.

#include "iconmangler.h"
#include "MHTMLHelp.h"

//#define EXPIRES

// globals, only the minimum necessary
bool			gIsDone; // true when the application is ready to quit
Str255			gAppName; // the name of the application (loaded from a resource)
MWindowPtr		gLastFrontWindow = (MWindow*)-1;
Str255			gLastFrontWindowTitle = "\p";


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
	DateTimeRec		theDate; // will be used to store the current date
#endif
	OSErr			err; // used to check if functions returned errors or not
	
	gIsDone = false; // we're not ready to quit...
	
	
	GetIndString(gAppName, rDefaultNames, eAppName);
	// this is used in lots of places, but for easy localization we get it from a resource
	
	//InitToolbox(); // initializing all the default managers
	
	if (!ConfigurationSupported()) // we check if we can run on this setup
		CleanUp();
	
#ifdef EXPIRES	
	GetTime(&theDate); // and if we haven't expired
	if (theDate.month >= 10 && theDate.day >= 1 && theDate.year >= 2000)
	{
		DoError(rStdErrors, eExpired);
		gIsDone = true;
	}
#endif

	err = RegisterAppearanceClient(); // and if we can intialize the appearance manager
	if (err != noErr)
	{
		DoError(rStdErrors, eAppearanceInitProblems);
		gIsDone = true;
	}

	LoadPreferences();
	
	err = InitMenuBar(); // and set up the menubar
	if (err != noErr)
	{
		DoError(rStdErrors, eMenuBarInitProblems);
		gIsDone = true;
	}
	
	err = AEInit(); // and the AppleEvents
	if (err != noErr)
	{
		DoError(rStdErrors, eAEInitProblems);
		gIsDone = true;
	}
	
	if (NavServicesAvailable())
		NavLoad();
	
	
	if (icnsEditorClass::statics.preferences.IsRegistered())
	{
		MenuHandle menu;
		menu = GetMenu(mApple);
		DeleteMenuItem(menu, iRegister);
	}
	
	SetupPalette(icnsEditorClass::statics.colorsPalette,
				 prefsColorsPaletteVisible,
				 iToggleColorsPalette,
				 eShowColorsPalette,
				 eHideColorsPalette);
				 
	SetupPalette(icnsEditorClass::statics.membersPalette,
				 prefsMembersPaletteVisible,
				 iToggleMembersPalette,
				 eShowMembersPalette,
				 eHideMembersPalette);
	
	SetupPalette(icnsEditorClass::statics.previewPalette,
				 prefsPreviewPaletteVisible,
				 iTogglePreviewPalette,
				 eShowPreviewPalette,
				 eHidePreviewPalette);
	
	SetupPalette(icnsEditorClass::statics.toolPalette,
				 prefsToolPaletteVisible,
				 iToggleToolPalette,
				 eShowToolPalette,
				 eHideToolPalette);
	
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
	if (GestaltVersion(gestaltSystemVersion, 0x07, 0x53))
	{
		long appearanceInfo;
		
		if (Gestalt(gestaltAppearanceAttr, &appearanceInfo) != noErr)
		{
			DoError(rStdErrors, eAppearanceNotInstalled);
			return false;
		}
		else if (appearanceInfo & (1 << gestaltAppearanceExists))
			return true;
		else
		{
			DoError(rStdErrors, eAppearanceNotInstalled);
			return false;
		}
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
	Handle		menuBar; // handle to the menubar resource
	MenuHandle	menu; // handle to individual menu resources
	Str255		menuItemText;
	int			menuItemCount;
	
	menuBar = GetNewMBar( rMenuBarID ); // we load the menu bar resource...
	if (menuBar != NULL)
		SetMenuBar(menuBar); // and set it, if we we've found it
	else
		return resNotFound;
	
	menu = GetMenuHandle( mApple );
	if (menu != NULL)
		AppendResMenu(menu, 'DRVR' );
		// we're adding all the items in the Apple Menu Items folder,
		// like any good mac app should
	else
		return resNotFound;
	
	menu = GetMenu(mSelect);
	if(menu != NULL)
		InsertMenu(menu,kInsertHierarchicalMenu); // the select menu is not directly in the menubar,
							       // rather it is a submenu of the edit menu
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
		CheckItem(menu, iMacOSColors, true);
	}
	else
		return resNotFound;
		
	menu = GetMenu(mOpenRecent); // same for the open recent menu
	if(menu != NULL)
		InsertMenu(menu, kInsertHierarchicalMenu);
	else
		return resNotFound;
		
	RebuildRecentFilesMenu();

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
	
	// help menu	
	HMGetHelpMenuHandle(&menu);
	menuItemCount = CountMenuItems(menu);
	
	GetIndString(menuItemText, rDefaultNames, eIconographerHelp);
	InsertMenuItem(menu, menuItemText, menuItemCount++);
	SetItemCmd(menu, menuItemCount, '?');
	
	InsertMenuItem(menu, "\p-", menuItemCount++);
	
	GetIndString(menuItemText, rDefaultNames, eEmailAuthor);
	InsertMenuItem(menu, menuItemText, menuItemCount++);
	
	GetIndString(menuItemText, rDefaultNames, eIconographerHomepage);
	InsertMenuItem(menu, menuItemText, menuItemCount++);
	
	DrawMenuBar(); // and draw the menubar
	
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
		
	if ((preferencesRefNum == -1) || (err != noErr))
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

	while (!gIsDone)
	{
		if (WaitNextEvent (everyEvent, &event, 60, nil)) // when an event occurs...
			DoEvent(&event); // we process it
		else
			DoIdle(); // otherwise we can execute the idling function
	}
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
		case mouseDown: HandleMouseDown(eventPtr); break;
		case autoKey:
		case keyDown: HandleKeyDown(eventPtr); break;
		case updateEvt: HandleUpdate(eventPtr); break;
		case activateEvt: HandleActivate(eventPtr); break;
		case kHighLevelEvent: AEProcessAppleEvent(eventPtr); break;
		case osEvt: HandleOSEvent(eventPtr); break;
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
	icnsEditorPtr	currentEditor, // variable used to go through all the open editors
					frontEditor; // pointer to the editor class belonging to the front most window
	Handle			pic, // handle the picture in the clipboard (if any)
					iconFamily;
	MenuHandle		menu; // handle to various menu resources...
	long			offset; // used when calling GetScrap, ignored here
	Str255			currentTitle = "\p";
	
	
	if (HMGetBalloons())
	{
		Point globalMouse;
		WindowPtr	windowPtrUnderMouse;
		MWindowPtr	windowUnderMouse;
		
		GetMouse(&globalMouse);
		LocalToGlobal(&globalMouse);
		
		FindWindow(globalMouse, &windowPtrUnderMouse);
		
		windowUnderMouse = GetWindow(windowPtrUnderMouse);
		
		if (windowUnderMouse != NULL &&
			windowUnderMouse->GetType() == kFloaterType &&
			FrontWindow() != windowPtrUnderMouse)
		{
			BringToFront(windowPtrUnderMouse);
		}
		
	}
	
	frontWindow = MWindow::GetFront();
	
	if (frontWindow != NULL)
		frontWindow->GetTitle(currentTitle);
	
	if (gLastFrontWindow != frontWindow || !EqualString(currentTitle, gLastFrontWindowTitle, true, true))
	{
		Str255	menuItemText;
		MenuHandle	iconMenu;
		
		RebuildWindowsMenu();
		
		iconMenu = GetMenu(mIcon);		
	
		if (frontWindow == NULL)
			DisableItem(iconMenu, iInsertIcon);
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
	}
		
	
	gLastFrontWindow = frontWindow;
	CopyString(gLastFrontWindowTitle, currentTitle);
	
	currentWindow = MWindow::GetFirst();
	
	if (icnsEditorClass::statics.colorsPalette->IsVisible())
		icnsEditorClass::statics.colorsPalette->readoutChanged = false;
	
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
					Close(noCancel);
					icnsEditorClass::statics.AllocateEmergencyMemory();
					// we take the emergency memory back, so that it can be used in the future
				}
			}
		currentWindow = currentWindow->GetNext();
	}
	
	frontEditor = GetFrontEditor();
	
	if (frontEditor != NULL)
	{
		pic = NewHandle(0);
		iconFamily = NewHandle(0);
		if (GetScrap( pic, 'PICT', &offset ) < 0) // if there isn't anything in the clipboard
			if (GetScrap(iconFamily, 'icns', &offset) < 0)
				DisableMenuItem(mEdit, iPaste); // then we can't paste
			else
			{
				EnableMenuItem(mEdit, iPaste);
				DisableMenuItem(mPaste, iPasteNormally);
				DisableMenuItem(mPaste, iPasteAsIconAndMask);
				DisableMenuItem(mPaste, iPasteIntoSelection);
				EnableMenuItem(mPaste, iPasteIconFamily);
			}
		else
			if (GetScrap(iconFamily, 'icns', &offset) < 0)
			{
				EnableMenuItem(mEdit, iPaste);
				EnableMenuItem(mPaste, iPasteNormally);
				EnableMenuItem(mPaste, iPasteAsIconAndMask);
				EnableMenuItem(mPaste, iPasteIntoSelection);
				DisableMenuItem(mPaste, iPasteIconFamily);
			}
			else
			{
				EnableMenuItem(mEdit, iPaste);
				EnableMenuItem(mPaste, iPasteNormally);
				EnableMenuItem(mPaste, iPasteAsIconAndMask);
				EnableMenuItem(mPaste, iPasteIntoSelection);
				EnableMenuItem(mPaste, iPasteIconFamily);
			}
		DisposeHandle(pic);
		DisposeHandle(iconFamily);
	
		if (frontEditor->status & needToSave) // if there are unsaved chages...
			EnableMenuItem(mFile, iSave);
		else
			DisableMenuItem(mFile, iSave);
			
		if (frontEditor->status & needToSave &&
			(frontEditor->srcFileSpec.vRefNum != 0 ||
			frontEditor->srcFileSpec.parID != 0))
			EnableMenuItem(mFile, iRevert);
		else
			DisableMenuItem(mFile, iRevert);
		
		EnableMenuItem(mFile, iClose);
		EnableMenuItem(mFile, iSaveAs);
		EnableMenuItem(mFile, iSaveInto);
		
		EnableMenuItem(mEdit, iSelect);
		EnableMenuItem(mEdit, iTransform);
		EnableMenuItem(mEdit, iCopy);
		EnableMenuItem(mEdit, iAdjust);
		
		menu = GetMenuHandle(mSelect);
		EnableItem(menu, 0);
		if (frontEditor->status & hasSelection) // if there is a selection
		{
			menu = GetMenuHandle(mEdit); // then we can cut, copy and clear
			EnableItem(menu, iCut);
			EnableItem(menu, iClear);
			menu = GetMenuHandle(mSelect);
			EnableItem(menu, iSimilar); // and do stuff on the current selection
			EnableItem(menu, iNone); 
			EnableItem(menu, iInverse);
			
			EnableMenuItem(mPaste, iPasteIntoSelection);
			EnableMenuItem(mCopy, iCopyNormally);
		}
		else
		{
			menu = GetMenuHandle(mEdit); // else we can't do any of those
			DisableItem(menu, iCut);
			DisableItem(menu, iClear);
			menu = GetMenuHandle(mSelect);
			DisableItem(menu, iSimilar);
			DisableItem(menu, iNone);
			DisableItem(menu, iInverse);
			
			DisableMenuItem(mPaste, iPasteIntoSelection);
			DisableMenuItem(mCopy, iCopyNormally);
		}

		if (frontEditor->status & canUndo) // if we can undo...
			EnableMenuItem(mEdit, iUndo);
		else
			DisableMenuItem(mEdit, iUndo);
			
		if (frontEditor->status & canRedo) // if we can redo
			EnableMenuItem(mEdit, iRedo);
		else
			DisableMenuItem(mEdit, iRedo);
		
		if (!IsMenuItemEnabled(mIcon, 0))
		{
			EnableMenuItem(mIcon, 0);
			DrawMenuBar();
		}
		
		menu = GetMenuHandle(mIcon);
		
		if (frontEditor->status & canZoomIn) // if we're not at the max magnification
			EnableItem(menu, iZoomIn);
		else
			DisableItem(menu, iZoomIn);
			
		if (frontEditor->status & canZoomOut) // if we're not zoomed out as far as possible
			EnableItem(menu, iZoomOut);
		else
			DisableItem(menu, iZoomOut);
			
		EnableItem(menu, iInsertIcon);
		EnableItem(menu, iIconInfo);
		EnableItem(menu, iPixelGrid);
			
		if (frontEditor->CurrentDepthSupportsColors())
		{
			EnableMenuItem(menu, iColors);
			
			menu = GetMenuHandle(mColors);
			
			switch (frontEditor->GetColors())
			{
				case iMacOSColors :
					CheckItem(menu, iMacOSColors, true);
					CheckItem(menu, iWinColors, false);
					break;
				case iWinColors :
					CheckItem(menu, iMacOSColors, false);
					CheckItem(menu, iWinColors, true);
					break;
			}
		}
		else
			DisableMenuItem(menu, iColors);
	}
	else
	{
		if (GetFrontBrowser() != NULL)
		{
			EnableMenuItem(mFile, iClose);
			if (GetFrontBrowser()->GetSelection() != -1)
				EnableMenuItem(mEdit, iClear);
			else
				DisableMenuItem(mEdit, iClear);
				
			if (!IsMenuItemEnabled(mIcon, 0))
			{
				EnableMenuItem(mIcon, 0);
				DrawMenuBar();
			}
			
			menu = GetMenu(mIcon);
			DisableItem(menu, iZoomIn);
			DisableItem(menu, iZoomOut);
			DisableItem(menu, iColors);
			EnableItem(menu, iInsertIcon);
			DisableItem(menu, iIconInfo);
			DisableItem(menu, iPixelGrid);
		}
		else
		{
			DisableMenuItem(mFile, iClose);
			DisableMenuItem(mEdit, iClear);
			DisableMenuItem(mIcon, iInsertIcon);
			if (IsMenuItemEnabled(mIcon, 0))
			{
				DisableMenuItem(mIcon, 0);
				DrawMenuBar();
			}
		}
			
		DisableMenuItem(mFile, iSave);
		DisableMenuItem(mFile, iSaveAs);
		DisableMenuItem(mFile, iSaveInto);
		
		DisableMenuItem(mEdit, iUndo);
		DisableMenuItem(mEdit, iRedo);
		DisableMenuItem(mEdit, iCut);
		DisableMenuItem(mEdit, iCopy);
		DisableMenuItem(mEdit, iPaste);
		DisableMenuItem(mEdit, iSelect);
		DisableMenuItem(mEdit, iAdjust);
		DisableMenuItem(mEdit, iTransform);
		
		//DisableMenuItem(mPaste, 0);
		DisableMenuItem(mSelect, 0);
		//DisableMenuItem(mTransform, 0);
	}
	//DrawMenuBar(); // and draw the menubar
	
	
	currentWindow = MWindow::GetFirst();
	MUtilities::ResetCursorChanged();
	while (currentWindow != NULL)
	{
		if (currentWindow == frontWindow ||
			currentWindow->GetType() == kFloaterType)
			currentWindow->DoIdle();
			
		currentWindow = currentWindow->GetNext();
	}
	if (!MUtilities::CursorChanged())
		MUtilities::ChangeCursor(rArrow);
	
	if (icnsEditorClass::statics.colorsPalette->IsVisible())
		if (!icnsEditorClass::statics.colorsPalette->readoutChanged)
			icnsEditorClass::statics.colorsPalette->UpdateReadout(-1, -1, kPickerNeverUsedColor);
		
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
	WindowPtr		theWindow; // winder where the click occured
	GDHandle		mainScreen; // the screen in which the window can be moved
	long			menuChoice; // the selected menu command
	MWindowPtr	currentWindow; // the editor class beloging to the window that was clicked
	
	part = FindWindow(eventPtr->where, &theWindow);
	currentWindow = GetWindow(theWindow);
	switch (part) // depending on where the click was, we take different actions
	{
		case inMenuBar : // if it was in the menubar, we handle the menu command
			menuChoice = MenuSelect(eventPtr->where);
			DoMenuCommand(menuChoice);
			break;
		case inSysWindow : // if the user clicked in a different window, then we deactivate
						   // this one
			if (currentWindow != NULL)
				currentWindow->Deactivate();
			SystemClick(eventPtr, theWindow);
			break;
		case inDrag : // the user is attempting to drag the window
			if (currentWindow != NULL &&
				(currentWindow->GetType() == kEditorType ||
				 currentWindow->GetType() == kBrowserType) &&
				 MDocumentWindowPtr(currentWindow)->IsPathSelectClick(eventPtr))
				 MDocumentWindowPtr(currentWindow)->PathSelect();
			mainScreen = GetMainDevice();
			currentWindow->Drag(eventPtr->where, (**mainScreen).gdRect);
			break;
		case inGoAway: // the user has the mouse on the close box
			if (TrackGoAway(theWindow, eventPtr->where)) // if he release it...
				if (currentWindow != NULL)
					if (currentWindow->GetType() == kFloaterType)
					{
						if (currentWindow == icnsEditorClass::statics.colorsPalette)
							TogglePalette(icnsEditorClass::statics.colorsPalette,
									  iToggleColorsPalette,
									  eShowColorsPalette,
									  eHideColorsPalette);
						else if (currentWindow == icnsEditorClass::statics.previewPalette)
							TogglePalette(icnsEditorClass::statics.previewPalette,
										  iTogglePreviewPalette,
										  eShowPreviewPalette,
										  eHidePreviewPalette);
						else if (currentWindow == icnsEditorClass::statics.toolPalette)
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
						Close(0); // we close the icon
			break;
		case inZoomIn:
		case inZoomOut:
			if (TrackBox(theWindow, eventPtr->where, part)) // if he release it...
				if (currentWindow != NULL)
					currentWindow->ToggleZoom();
			break;
		case inContent: // if it's a contect click we pass it on the class
			if (currentWindow != NULL)
				currentWindow->HandleContentClick(eventPtr);
			break;
		case inGrow: // same for clicks in the grow box
			if (currentWindow != NULL)
				currentWindow->HandleGrow(eventPtr->where);
			break;
		case inProxyIcon:
			if (currentWindow != NULL &&
				(currentWindow->GetType() == kEditorType ||
				 currentWindow->GetType() == kBrowserType))
				 MDocumentWindowPtr(currentWindow)->TrackProxyDrag(eventPtr->where);
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
	else
	{
		menuEvent = MenuEvent(eventPtr);
	}
	
	if (((menuEvent & 0xFFFF0000) >> 16) != 0)
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
		currentWindow->Refresh(); // we just pass on the updating to the editor class
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
	switch((eventPtr->message >> 24) & 0x000000FF)
	{
		case suspendResumeMessage: // if the application is being brought to the foreground or
								   // put into the background
			
			if (eventPtr->message & resumeFlag)
			{
				short part;
				WindowPtr	theWindow;
				MWindowPtr	currentWindow;
				
				MUtilities::ResetCursor();
				
				MWindow::ShowFloaters();
				MWindow::ActivateAll();
				
				part = FindWindow(eventPtr->where, &theWindow);
				currentWindow = GetWindow(theWindow);
				
				if (part == inDrag)
					currentWindow->Select();
			}
			else
			{
				MWindow::HideFloaters();
				MWindow::DeactivateAll();
			}
			break;
	}
}

void RebuildRecentFilesMenu()
{
	MenuHandle	recentFilesMenu;
	FSSpec		file;
	int			insertionPoint = 0;
	
	recentFilesMenu = GetMenu(mOpenRecent);
	
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
	MWindowPtr	currentWindow;
	//int				currentID;
	MenuHandle		windowsMenu;
	Str255			menuTitle;
	int				editorsInsertionPoint = iEditorsInsertionPoint,
					browsersInsertionPoint = iBrowsersInsertionPoint,
					*insertionPoint;
	
	windowsMenu = GetMenu(mWindows);
	
	for (int i=CountMenuItems(windowsMenu); i >= iEditorsInsertionPoint; i--)
		DeleteMenuItem(windowsMenu, i);
		
	InsertMenuItem(windowsMenu, "\p-", iEditorsInsertionPoint - 1);
	InsertMenuItem(windowsMenu, "\p-", iBrowsersInsertionPoint - 1);
	
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
			InsertMenuItem(windowsMenu, "\pscratch", (*insertionPoint)++);
			SetMenuItemText(windowsMenu, *insertionPoint, menuTitle);
			
			SetMenuItemRefCon(windowsMenu, *insertionPoint, UInt32(currentWindow));
			
			EnableMenuItem(windowsMenu, *insertionPoint);
			if (currentWindow == MWindow::GetFront())
				CheckItem(windowsMenu, *insertionPoint, true);
			else
				CheckItem(windowsMenu, *insertionPoint, false);
		}
	}
	
	if (editorsInsertionPoint == iEditorsInsertionPoint)
	{
		DeleteMenuItem(windowsMenu, editorsInsertionPoint);
		if (browsersInsertionPoint == iBrowsersInsertionPoint)
			DeleteMenuItem(windowsMenu, browsersInsertionPoint - 1);
	}
	
	if (browsersInsertionPoint == iBrowsersInsertionPoint + (editorsInsertionPoint - iEditorsInsertionPoint))
		DeleteMenuItem(windowsMenu, browsersInsertionPoint);
	
	InsertMenu(windowsMenu, mWindows);
	
	DrawMenuBar();
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
					case iAbout : AboutBox(); break;
					case iRegister : Register(); break;
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
				}
				break;
			case mFile :
				switch (item)
				{
					case iOpenIcon : OpenIcon(NULL); break;
					case iNewIcon : NewIcon(true); break;
					case iClose : Close(0); break;
					case iSave: SaveIcon(0); break;
					case iSaveAs : SaveIcon(saveAs); break;
					case iSaveInto : SaveIcon(saveInto); break;
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
					
					menu = GetMenu(mOpenRecent);
					GetMenuItemText(menu, item, fileName);
					
					SubstituteString(text, "\p<file name>", fileName);
					SubstituteString(text, "\p<error type>", "\p-43");
					
					DoError(text);
					
					RebuildRecentFilesMenu();
				}
				else
					OpenIcon(&fileToOpen);
					
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
						case iInsertIcon: frontEditor->AddMember(); break;
						case iIconInfo : frontEditor->EditIconInfo(kIconInfo); break;
						case iPixelGrid: TogglePixelGrid(); frontEditor->Invalidate(); frontEditor->Refresh(); break;
						case iOpenInExternalEditor: frontEditor->OpenInExternalEditor(); break;
					}
				else if (GetFrontBrowser != NULL)
					switch (item)
					{
						case iInsertIcon: InsertIcon(); break;
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
							CheckItem(theMenu, iMacOSColors, true);
							CheckItem(theMenu, iWinColors, false);
							frontEditor->ChangeColors(macOSColors, true);
							break;
						case iWinColors :
							CheckItem(theMenu, iMacOSColors, false);
							CheckItem(theMenu, iWinColors, true);
							frontEditor->ChangeColors(winColors, true);
							break;
					}
				}
				break;
			case mWindows:
				switch (item)
				{
					case iToggleToolPalette:
						TogglePalette(icnsEditorClass::statics.toolPalette,
									  iToggleToolPalette,
									  eShowToolPalette,
									  eHideToolPalette);
						break;
					case iToggleMembersPalette:
						TogglePalette(icnsEditorClass::statics.membersPalette,
									  iToggleMembersPalette,
									  eShowMembersPalette,
									  eHideMembersPalette);
						break;
					case iTogglePreviewPalette:
						TogglePalette(icnsEditorClass::statics.previewPalette,
									  iTogglePreviewPalette,
									  eShowPreviewPalette,
									  eHidePreviewPalette);
						break;
					case iToggleColorsPalette:
						TogglePalette(icnsEditorClass::statics.colorsPalette,
									  iToggleColorsPalette,
									  eShowColorsPalette,
									  eHideColorsPalette);
						break;
					default:
						MenuHandle		windowsMenu;
						MWindowPtr		selectedWindow;
						
						
						windowsMenu = GetMenu(mWindows);
						
						GetMenuItemRefCon(windowsMenu, item, (UInt32*)&selectedWindow);
						
						selectedWindow->Select();
						break;
				}	
				break;
			case kHMHelpMenuID:
				switch (item)
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
		}
		
		while (TickCount() < startTicks + 4) {;}
		
		HiliteMenu(0); // after the command has been executed, we must unhilite the menu
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
	
	menu = GetMenu(mIcon);
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
	
	menu = GetMenu(mIcon);
	SetMenuItemText(menu, iPixelGrid, menuItemText);
}

#pragma mark -

void TogglePalette(MFloaterPtr palette, int menuItem, int showStringIndex, int hideStringIndex)
{
	MenuHandle	windowsMenu;
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
	
	windowsMenu = GetMenu(mWindows);
	SetMenuItemText(windowsMenu, menuItem, menuItemText);
}

void SetupPalette(MFloaterPtr palette, int flag, int menuItem, int showStringIndex, int hideStringIndex)
{
	MenuHandle	windowsMenu;
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
	
	windowsMenu = GetMenu(mWindows);
	SetMenuItemText(windowsMenu, menuItem, menuItemText);
}

#pragma mark -

void InsertIcon()
{
	icnsEditorPtr	newIcon;
	
	if (NewIcon(false) != noErr)
		return;
	
	newIcon = GetEditor(MWindow::GetLast()->GetWindow());
	
	if (newIcon == NULL)
		return;
	
	newIcon->srcFileSpec = GetFrontBrowser()->srcFileSpec;
	if (newIcon->EditIconInfo(kInsertIcon) == iOK)
	{
		newIcon->Save();
		newIcon->members = (icni | icnm);
		newIcon->RefreshWindowTitle();
		
		newIcon->SetBestMember();
		
		newIcon->Invalidate();
		newIcon->Refresh();
		
		newIcon->Show();
		
		DoIdle();
		DrawMenuBar();
		
		RefreshIconBrowser(true, kIDNone, 0);
	}
	else
	{
		newIcon->Close();
		delete newIcon;
	}
}

// __________________________________________________________________________________________
// Name			: ShowAboutBox
// Input		: None
// Output		: None
// Description	: Shows a dialog containing the name of the program, name of the creator
//				  (that's me) and contact info.
// Notes		: When the user clicks on the email or homepage address then the appropriate
//				  mail/web app is opened, this is done through InternetConfig, a system on
//				  the mac getting internet settings (such as which app is the web browser). 

void AboutBox()
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
	
	eventFilterUPP = NewModalFilterProc((ProcPtr) AboutBoxEventFilter);
		
	dialogDone = false;
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
	DisposeRoutineDescriptor(eventFilterUPP);
	DisposeDialog(aboutBox);
	
	MWindow::ActivateAll();
}

pascal bool AboutBoxEventFilter(DialogPtr dialog, EventRecord *eventPtr, short *itemHit)
{
	bool	handledEvent; // if true then our function tool care of the event
	Rect	picRect, controlRect;
	
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
	
	eventFilterUPP = NewModalFilterProc((ProcPtr) AlertEventFilter);
	
	MWindow::DeactivateAll();
	
	ShowWindow(GetDialogWindow(registration));
	
	dialogDone = false;
	
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
					DisposeRoutineDescriptor(eventFilterUPP);
					DisposeDialog(registration);
					DoError(rStdErrors, eThanksForRegistering);
					menu = GetMenuHandle(mApple);
					DeleteMenuItem(menu, iRegister);
				}
				else
				{
					DoError(rStdErrors, eBadRegCode);
					itemHit = 0;
				}
				break;	
			case iCancel:
				dialogDone = true;
				DisposeRoutineDescriptor(eventFilterUPP);
				DisposeDialog(registration);
				break;
			case iOrderRegistrationCode:
				DisposeRoutineDescriptor(eventFilterUPP);
				DisposeDialog(registration);
				ChooseRegistrationMethod();
				dialogDone = true;
				break;
		}
		
	}
	
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
			newEditor->SetBestMember();
			newEditor->Show();
		}
		
		DoIdle();
		DrawMenuBar();
		
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
	iconBrowserPtr	newBrowser; // pointer to the browser which we will create
	MWindowPtr		currentWindow;
	iconBrowserPtr	currentBrowser;
	
	currentWindow = MWindow::GetFirst();
	while (currentWindow != NULL)
	{
		currentBrowser = GetBrowser(currentWindow->GetWindow());
		
		if (currentBrowser != NULL)
			if (SameFile(currentBrowser->srcFileSpec, file))
			{
			    currentBrowser->Select();
			    return noErr;
			}
		
		currentWindow = currentWindow->GetNext();
	}
	
	newBrowser = new iconBrowserClass(file, OpenIconFromBrowser, format); // we make the browser...
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
	short			file, oldFile;
	unsigned long	iconTypes[] = {'icns', 'icl8', 'ics8', 'ics4', 'icl4', 'ICN#', 'ics#'};
	unsigned long	maxCountType = 0;
	int				count=-1;
	int				typeCount = sizeof(iconTypes)/sizeof(iconTypes[0]);
	short			temp;
	bool			simpleCase = false;
	Str255			name;
	unsigned char isFolder, ignored;
	
	ResolveAliasFile(&fileSpec,true,&isFolder, &ignored);
			
	if (isFolder)
	{
		*ID = kIDUseFileIcon;
		return true;
	}
		
	oldFile = CurResFile();
	file = FSpOpenResFile(&fileSpec, fsRdPerm);
	if (file == -1 && ResError() == eofErr)
	{
		if (FindSubstring(fileSpec.name, "\p.icns") != -1)
			*ID = kIDLoadDataFork;
		else
			*ID = kIDUseFileIcon;
		return true;
	}
	UseResFile(file);
	
	for (int i=0; i < typeCount; i++)
	{
		temp = Count1Resources(iconTypes[i]);
		if (temp > count)
		{
			count = temp;
			maxCountType = iconTypes[i];
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
		
	
	CloseResFile(file);
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
			if (SameFile(currentEditor->srcFileSpec, fileToOpen) &&
			    (currentEditor->loadedID == ID) &&
			    (currentEditor->format == format))
			{
			    currentEditor->Select();
			    return NULL;
			}
			else if (currentEditor->srcFileSpec.vRefNum == 0 &&
					 currentEditor->srcFileSpec.parID == 0 &&
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
		Str255					text;
		MString					temp;
			
		GetIndString(text, rPrompts, eRevert); // we get the message
		
		SubstituteString(text, "\p<app name>", gAppName); // substitute for the place holders
		SubstituteString(text, "\p<file name>", frontEditor->srcFileSpec.name);
		
		alert.SetButtonName(kMAOK, rDefaultNames, eRevertButton);
		alert.SetButtonName(kMACancel, rDefaultNames, eCancelButton);
		
		alert.SetMovable(true);
		alert.SetType(kAlertStopAlert);
		
		alert.SetPosition(kWindowCenterParentWindow); // we want the error to be centered on the
		
		temp = text;
		
		alert.SetError(temp);
		
		if (alert.Display() != kMAOK) return;

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
		newEditor->srcFileSpec = fileToOpen;
		newEditor->loadedID = ID;
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
			
		icnsEditorClass::statics.preferences.AddRecentFile(newEditor->srcFileSpec);
		RebuildRecentFilesMenu();
	}
}

void OpenIconFromBrowser(FSSpec *fileToOpen, long ID, long format, long member)
{
	icnsEditorPtr newEditor;

	newEditor = GetEmptyEditor(*fileToOpen, ID, format);	

	if (newEditor != NULL)
	{		
		newEditor->srcFileSpec = *fileToOpen;
		newEditor->loadedID = ID;
		
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
			newEditor->SetCurrentMember(member, false);
			newEditor->ResetStates();
		}
		
		newEditor->Invalidate();
		newEditor->Refresh();
		
		newEditor->Show();
		newEditor->Select();
		
		DoIdle();
		DrawMenuBar();
		
		icnsEditorClass::statics.preferences.AddRecentFile(newEditor->srcFileSpec);
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

bool Close(int flags)
{
	icnsEditorPtr	frontEditor; // pointer to the front most editor (which is the one that is
								 // going to be closed
	bool			closed; // true if the user chose to actually close the editor
	
	frontEditor = GetFrontEditor(); // we attempt to get the front most editor...
	
	if (frontEditor != NULL) // if there is one
	{
		if (frontEditor->status & needToSave) // and it has unsaved changes
		{
			switch (WantToSave(frontEditor->srcFileSpec, flags)) // we prompt the user
			{
				case kAlertStdAlertOKButton: // we save the icon and close it
					if (SaveIcon(false) == noErr)
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
			frontEditor->Close();
			delete frontEditor;
		}
	}
	else
	{
		iconBrowserPtr frontBrowser;
		
		frontBrowser = GetFrontBrowser();
		
		if (frontBrowser != NULL)
		{
			frontBrowser->Close();
			delete frontBrowser;
		}
		
		closed = true;
	}
	
	DoIdle();
	DrawMenuBar();
	
	
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

OSErr SaveIcon(int flags)
{
	icnsEditorPtr	frontEditor; // pointer to the front most editor, this is the one that the
							     // saving will be done on
	bool			newIcon = false;
	OSErr			err;
	int				deletedIcon = kIDNone, deletedIconFormat = -1;
	
	frontEditor = GetFrontEditor(); // we get the pointer to it
	
	if (frontEditor != NULL) // if there is one
	{
		if (flags & saveInto)
		{
			FSSpec	oldSpec;
			Handle	icnsHandle;
			short 	oldFile, file;
			
			oldSpec = frontEditor->srcFileSpec;
			
			if (frontEditor->format == formatWindows ||
				frontEditor->format == formatMacOSXServer)
			{
				frontEditor->format = formatMacOSUniversal;
				frontEditor->usedMembers = kDefaultMembers[formatMacOSUniversal];
			}
				
			err = GetIconFile(&frontEditor->srcFileSpec, &frontEditor->format, true);
			
			if (err != noErr) return err;
			
			oldFile = CurResFile();
			file = FSpOpenResFile(&frontEditor->srcFileSpec, fsRdPerm);
			
			UseResFile(file);
			
			icnsHandle = Get1Resource('icns', frontEditor->ID);
			
			if (icnsHandle != NULL)
			{
				Str255 text, yesButton, noButton, IDAsString;
				short itemHit;
				
				ReleaseResource(icnsHandle);
				
				GetIndString(text, rPrompts, eIconAlreadyExists);
				
				SubstituteString(text, "\p<file name>", frontEditor->srcFileSpec.name);
				NumToString(frontEditor->ID, IDAsString);
				SubstituteString(text, "\p<ID>", IDAsString);
				
				GetIndString(yesButton, rBasicStrings, eYesButton);
				GetIndString(noButton, rBasicStrings, eNoButton);
				
				itemHit = icnsEditorClass::statics.DisplayAlert(text, yesButton, noButton, "\p", kAlertCautionAlert);
				if (itemHit == 2)
				{
					CloseResFile(file);
					UseResFile(oldFile);
					frontEditor->srcFileSpec = oldSpec;
					return err;
				}
			}
			else
				newIcon = true;
			
			CloseResFile(file);
			UseResFile(oldFile);
			
			frontEditor->RefreshWindowTitle();
		}
		else if ((flags & saveAs) || // if the user wants a new location
			(frontEditor->srcFileSpec.vRefNum == 0 &&
			frontEditor->srcFileSpec.parID == 0)) // or if there isn't one chosen yet
		{
			long	fileType;
			
			frontEditor->format = icnsEditorClass::statics.preferences.GetDefaultFormat();
			frontEditor->usedMembers = kDefaultMembers[frontEditor->format];
			
			err = SaveFile(&frontEditor->srcFileSpec, &frontEditor->format);
						  		
			if (err != noErr) // if there was a problem (most likely, the user cancelled)
				return err; // we go back
				
			FSpDelete(&frontEditor->srcFileSpec); // we delete that file that was already there
												  // (if any)
												  
			fileType = iconFormats[frontEditor->format];
			
			FSpCreate(&frontEditor->srcFileSpec, creatorCode, fileType, 0); // we create a new file
			// 0 = roman encoding type 
			if (!IsICOFile(frontEditor->srcFileSpec.name) && !IsTIFFFile(frontEditor->srcFileSpec.name))
				FSpCreateResFile(&frontEditor->srcFileSpec, creatorCode, fileType, 0);
			// and we add a resource fork to it too
			frontEditor->RefreshWindowTitle(); // must update the title of the window with the
			// new file name
		}
		else if (frontEditor->IDChanged())
		{
			newIcon = true;
			deletedIcon = frontEditor->loadedID;
			deletedIconFormat = frontEditor->format;
		}
		
		err = frontEditor->Save();
		RefreshIconBrowser(newIcon, deletedIcon, deletedIconFormat);
		
		if (err == fnOpnErr)
		{
			frontEditor->srcFileSpec.vRefNum = 0;
			frontEditor->srcFileSpec.parID = 0;
			
			SaveIcon(flags);
		}
		
		if (!(icnsEditorClass::statics.preferences.IsRegistered()))
			Nag(false);
			
		icnsEditorClass::statics.preferences.AddRecentFile(frontEditor->srcFileSpec);
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
			if (SameFile(currentBrowser->srcFileSpec, frontEditor->srcFileSpec))
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
				currentBrowser->AddIcon(frontEditor->ID, frontEditor->name, frontEditor->members, true);

			if (frontEditor->format == formatMacOSUniversal ||
				frontEditor->format == formatMacOSOld)
				currentBrowser->AddIcon(frontEditor->ID, frontEditor->name, frontEditor->members & ~(ih32 | h8mk | ich8 | ichi | ichm | il32 | l8mk | is32 | s8mk), false);
		}
		
		if (deletedIcon != kIDNone)
		{
			ListDrawingData	cellData;
			int				row, col;
			
			if (deletedIconFormat == formatMacOSUniversal ||
				deletedIconFormat == formatMacOSNew)
			{
				cellData.ID = deletedIcon;
				cellData.newType = true;
				if (currentBrowser->theList.FindValue(NULL, &cellData, &row, &col) == noErr)
					currentBrowser->theList.Remove(row, col);
			}
			
			if (deletedIconFormat == formatMacOSUniversal ||
				deletedIconFormat == formatMacOSOld)
			{
				cellData.ID = deletedIcon;
				cellData.newType = false;
				if (currentBrowser->theList.FindValue(NULL, &cellData, &row, &col) == noErr)
					currentBrowser->theList.Remove(row, col);
			}
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
		
	GetIndString(text, rPrompts, eWantToSave); // we get the message
	
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

pascal bool	AlertEventFilter(DialogPtr dialog, EventRecord *eventPtr, short *itemHit)
{
	bool	handledEvent; // if true then our function tool care of the event

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
			break;
		default:
			// if it's not an event we support, then we let the system take care of it
			SAVEGWORLD;
			SetPortDialogPort(dialog);

			handledEvent = StdFilterProc(dialog, eventPtr, itemHit);

			RESTOREGWORLD;
		break;
	}
		 

	return(handledEvent);
}



/*pascal bool StandardICOFilter(CInfoPBPtr myCInfoPBPtr)
{
	bool visibleFlag;
	StringPtr name;
	
	name = myCInfoPBPtr->hFileInfo.ioNamePtr;
	
	visibleFlag = IsICOFile(name);
	
	// because the semantics of the filter proc are "true means don't show
	// it" we need to invert the result that we return
	
	return !visibleFlag;
}

pascal bool NavTIFFFilter(AEDesc *theItem, void *info, void *callBackUD, NavFilterModes filterMode)
{
#pragma unused (callBackUD, filterMode)

	FSSpec	fileSpec;
	NavFileOrFolderInfo* theInfo = (NavFileOrFolderInfo*)info;
	
	if ( theItem->descriptorType == typeFSS )
		if ( !theInfo->isFolder )
		{
			GetFSSpecFromAEDesc(*theItem, fileSpec);
			FSMakeFSSpec(fileSpec.vRefNum, fileSpec.parID, fileSpec.name, &fileSpec);
			if (IsTIFFFile(fileSpec.name))
				return true;
			else
				return false;
		}
	
	return true;

}

pascal bool StandardTIFFFilter(CInfoPBPtr myCInfoPBPtr)
{
	bool visibleFlag;
	StringPtr name;
	
	name = myCInfoPBPtr->hFileInfo.ioNamePtr;
	
	visibleFlag = IsTIFFFile(name);
	
	// because the semantics of the filter proc are "true means don't show
	// it" we need to invert the result that we return
	
	return !visibleFlag;
}*/




// __________________________________________________________________________________________
// Name			: CleanUp
// Input		: None
// Output		: None
// Description	: called at the end of the program, it goes through all the opened icons and
//				  attemps to close all of them. If it succeedes then it exits, otherwise it
//				  returns to the eventloop.

void CleanUp(void)
{
	// note that we don't do this by looping through the list since the list order
	// might not be the order in which the windows are stacked in
	while (MWindow::GetFront() != NULL)
		if (!Close(0))
		{
			gIsDone = false;
			EventLoop();
		}
	
	if (NavServicesAvailable())
		NavUnload();
	
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
	
	FSpDelete(&preferencesFile);
	FSpCreate(&preferencesFile, creatorCode, prefFileType, 0);
	FSpCreateResFile(&preferencesFile, creatorCode, prefFileType, 0);
	
	oldFile = CurResFile();
	
	if (err == noErr)
		preferencesRefNum = FSpOpenResFile(&preferencesFile, fsRdWrPerm);
	

	if ((preferencesRefNum != -1) && (err == noErr))
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
	
	ExitApplication(); // we're done
}

