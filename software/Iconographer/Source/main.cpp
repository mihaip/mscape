// __________________________________________________________________________________________
// Program		: Icon Mangler
// Filename		: main.cpp(C++)
// Author		: Mihai Parparita (St. Mary's International School)
// Last modified: April 1, 1999
// Description	: The main part of the program, it handles the loading of the program, the user
//				  interaction and the cleaning up in the end.

#include "iconmangler.h"

// globals, only the minimum necessary
bool			gIsDone; // true when the application is ready to quit
icnsEditorPtr	gFirstEditor; // the head of the editor linked list
icnsEditorPtr	gLastEditor; // the tail of the editor linked list
Str255			gAppName; // the name of the application (loaded from a resource)


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
	DateTimeRec		theDate; // will be used to store the current date
	OSErr			err; // used to check if functions returned errors or not
	
	gIsDone = false; // we're not ready to quit...
	GetIndString(gAppName, rDefaultNames, eAppName);
	// this is used in lots of places, but for easy localization we get it from a resource
	
	//InitToolbox(); // initializing all the default managers
	
	if (!ConfigurationSupported()) // we check if we can run on this setup
	{
		DoError(rStdErrors, eRequirementsNotFulfilled);
		CleanUp();
	}
	
	GetTime(&theDate); // and if we haven't expired
	if (theDate.month >= 7 && theDate.day >= 1 && theDate.year >= 1999)
	{
		DoError(rStdErrors, eExpired);
		gIsDone = true;
	}

	err = RegisterAppearanceClient(); // and if we can intialize the appearance manager
	if (err != noErr)
	{
		DoError(rStdErrors, eAppearanceInitProblems);
		gIsDone = true;
	}

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
	
	LoadPreferences();
	
	if (icnsEditorClass::statics.preferences.IsRegistered())
	{
		MenuHandle menu;
		menu = GetMenu(mApple);
		DeleteMenuItem(menu, iRegister);
	}
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
	char systemVersion[4];
	
	if (Gestalt(gestaltSystemVersion, (long *)systemVersion) != noErr)
		return false;
	else
	{
		if (systemVersion[2] > 0x7)
			return true;
		else if ((systemVersion[2] == 0x7) && systemVersion[3] >= 0x53)
				return true;
		
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
		InsertMenu(menu,hierMenu); // the select menu is not directly in the menubar,
							       // rather it is a submenu of the edit menu
	else
		return resNotFound;
	
	menu = GetMenu(mTransform); // same for the transform menu
	if(menu != NULL)
		InsertMenu(menu,hierMenu);
	else
		return resNotFound;
		
	menu = GetMenu(mPaste); // same for the transform menu
	if(menu != NULL)
		InsertMenu(menu,hierMenu);
	else
		return resNotFound;
	
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
		
		
	//ToggleMenus(); // we disable what's not needed
	
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
	}
	
	oldFile = CurResFile();
	UseResFile(preferencesRefNum);
	icnsEditorClass::statics.preferences.Load(rPrefs);
	CloseResFile(preferencesRefNum);
	UseResFile(oldFile);
}

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
	icnsEditorPtr	currentEditor, // variable used to go through all the open editors
					frontEditor; // pointer to the editor class belonging to the front most window
	Handle			pic; // handle the picture in the clipboard (if any)
	MenuHandle		menu; // handle to various menu resources...
	long			offset; // used when calling GetScrap, ignored here
	
	currentEditor = gFirstEditor;
	
	while (currentEditor != NULL)
	// we loop through the editors to make sure that they are all OK
	{
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
				BringToFront(currentEditor->window);
				CloseIcon(noCancel);
				icnsEditorClass::statics.AllocateEmergencyMemory();
				// we take the emergency memory back, so that it can be used in the future
			}
			
		}
		currentEditor = currentEditor->nextEditor;
	}
	
	frontEditor = GetFrontEditor();
	
	if (frontEditor != NULL)
	{
		pic = NewHandle(0);
		if (GetScrap( pic, 'PICT', &offset ) < 0) // if there isn't anything in the clipboard
			DisableMenuItem(mEdit, iPaste); // then we can't paste
		else
			EnableMenuItem(mEdit, iPaste);
		DisposeHandle(pic);
	
		if (frontEditor->status & needToSave) // if there are unsaved chages...
			EnableMenuItem(mFile, iSave);
		else
			DisableMenuItem(mFile, iSave);
		
		EnableMenuItem(mFile, iClose);
		EnableMenuItem(mFile, iSaveAs);
		
		EnableMenuItem(mEdit, iSelect);
		EnableMenuItem(mEdit, iTransform);
		
		menu = GetMenuHandle(mSelect);
		EnableItem(menu, 0);
		if (frontEditor->status & hasSelection) // if there is a selection
		{
			menu = GetMenuHandle(mEdit);
			EnableItem(menu, iCopy); // then we can cut, copy and clear
			EnableItem(menu, iCut);
			EnableItem(menu, iClear);
			menu = GetMenuHandle(mSelect);
			EnableItem(menu, iSimilar); // and do stuff on the current selection
			EnableItem(menu, iNone); 
			EnableItem(menu, iInverse);
			
			EnableMenuItem(mPaste, iPasteIntoSelection);
		}
		else
		{
			menu = GetMenuHandle(mEdit); // else we can't do any of those
			DisableItem(menu, iCopy);
			DisableItem(menu, iCut);
			DisableItem(menu, iClear);
			menu = GetMenuHandle(mSelect);
			DisableItem(menu, iSimilar);
			DisableItem(menu, iNone);
			DisableItem(menu, iInverse);
			
			DisableMenuItem(mPaste, iPasteIntoSelection);
		}

		if (frontEditor->status & canUndo) // if we can undo...
			EnableMenuItem(mEdit, iUndo);
		else
			DisableMenuItem(mEdit, iUndo);
			
		if (frontEditor->status & canRedo) // if we can redo
			EnableMenuItem(mEdit, iRedo);
		else
			DisableMenuItem(mEdit, iRedo);
		
		EnableMenuItem(mView, 0);
		if (frontEditor->status & canZoomIn) // if we're not at the max magnification
			EnableMenuItem(mView, iZoomIn);
		else
			DisableMenuItem(mView, iZoomIn);
			
		if (frontEditor->status & canZoomOut) // if we're not zoomed out as far as possible
			EnableMenuItem(mView, iZoomOut);
		else
			DisableMenuItem(mView, iZoomOut);
		
		frontEditor->DoIdle(); // we also let the editor do its own thing
	}
	else
	{	
		DisableMenuItem(mFile, iClose);
		DisableMenuItem(mFile, iSave);
		DisableMenuItem(mFile, iSaveAs);
		
		DisableMenuItem(mEdit, iUndo);
		DisableMenuItem(mEdit, iRedo);
		DisableMenuItem(mEdit, iCut);
		DisableMenuItem(mEdit, iCopy);
		DisableMenuItem(mEdit, iPaste);
		DisableMenuItem(mEdit, iSelect);
		DisableMenuItem(mEdit, iTransform);
		
		//DisableMenuItem(mPaste, 0);
		DisableMenuItem(mSelect, 0);
		//DisableMenuItem(mTransform, 0);
		
		DisableMenuItem(mView, 0);
	}
	//DrawMenuBar(); // and draw the menubar
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
	icnsEditorPtr	currentEditor; // the editor class beloging to the window that was clicked
	
	part = FindWindow(eventPtr->where, &theWindow);
	currentEditor = GetEditor(theWindow);
	switch (part) // depending on where the click was, we take different actions
	{
		case inMenuBar : // if it was in the menubar, we handle the menu command
			menuChoice = MenuSelect(eventPtr->where);
			DoMenuCommand(menuChoice);
			break;
		case inSysWindow : // if the user clicked in a different window, then we deactivate
						   // this one
			if (currentEditor != NULL)
				currentEditor->Deactivate();
			SystemClick(eventPtr, theWindow);
			break;
		case inDrag : // the user is attempting to drag the window
			mainScreen = GetMainDevice();
			DragWindow(theWindow, eventPtr->where, &( ( *mainScreen )->gdRect ));
			break;
		case inGoAway: // the user has the mouse on the close box
			if (TrackGoAway(theWindow, eventPtr->where)) // if he release it...
				if (currentEditor != NULL)
					CloseIcon(0); // we close the icon
			break;
		case inContent: // if it's a contect click we pass it on the class
			if (currentEditor != NULL)
				currentEditor->HandleContentClick(eventPtr);
			break;
		case inGrow: // same for clicks in the grow box
			if (currentEditor != NULL)
				currentEditor->HandleGrow(eventPtr->where);
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
	icnsEditorPtr	frontEditor; // the editor class belonging to the front most window
	
	menuEvent = MenuEvent(eventPtr);
	if (((menuEvent & 0xFFFF0000) >> 16) != 0)
		DoMenuCommand(menuEvent);
	else // otherwise we pass it onto the editor
	{
		frontEditor = GetFrontEditor();
		if (frontEditor != NULL)
			frontEditor->HandleKeyDown(eventPtr);
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
	 icnsEditorPtr	currentEditor; // the editor class belonging to the window which we are
	 							   // dealing with

	 theWindow = (WindowPtr) eventPtr->message; 
	 currentEditor = GetEditor(theWindow);
	 if (currentEditor != NULL)
	 {
		 becomingActive = ((eventPtr->modifiers & activeFlag) == activeFlag);
		 if (becomingActive)
		 	currentEditor->Activate();
		 else
		 	currentEditor->Deactivate();
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
	icnsEditorPtr	currentEditor; // the editor which owns the window above
	
	windowToUpdate = (WindowPtr)eventPtr->message;
	currentEditor = GetEditor(windowToUpdate);
	if (currentEditor != NULL)
		currentEditor->Refresh(); // we just pass on the updating to the editor class
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
	icnsEditorPtr	frontEditor; // pointer to the class belonging to the front most editor
	switch((eventPtr->message >> 24) & 0x000000FF)
	{
		case suspendResumeMessage: // if the application is being brought to the foreground or
								   // put into the background
			if (FrontWindow() != NULL)
			{
				frontEditor = GetFrontEditor();
				if (frontEditor != NULL)
				{
					if (eventPtr->message & resumeFlag)
						frontEditor->Activate(); // we active the front window
					else
						frontEditor->Deactivate(); // or deactivate it
				}
			}
			break;
	}
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
		
		startTicks = LMGetTicks();
		
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
					case iNewIcon : NewIcon(true); break;
					case iOpenIcon : OpenIcon(NULL); break;
					case iClose : CloseIcon(0); break;
					case iSave: SaveIcon(false); break;
					case iSaveAs : SaveIcon(true); break;
					case iQuit :gIsDone = true; break;
				}
				break;
			case mEdit :
				if (frontEditor != NULL)
					switch (item)
					{
						case iUndo: frontEditor->Undo(); break;
						case iRedo: frontEditor->Redo(); break;
						case iCut: frontEditor->Cut(); break;
						case iCopy: frontEditor->Copy(); break;
						case iClear : frontEditor->Clear(); break;
						case iPreferences : icnsEditorClass::statics.preferences.Edit(); break;
					}
				else
					switch (item)
					{
						case iPreferences : icnsEditorClass::statics.preferences.Edit(); break;
					}
				break;
			case mSelect:
				if (frontEditor != NULL)
					switch (item)
					{
						case iAll : frontEditor->Select(all); break;
						case iSimilar : frontEditor->Select(similar); break;
						case iNone : frontEditor->Select(none); break;
						case iInverse : frontEditor->Select(inverse); break;
					}
				break;
			case mTransform:
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
				if (frontEditor != NULL)
					switch (item)
					{
						case iPasteNormally: frontEditor->Paste(normally); break;
						case iPasteAsIconAndMask: frontEditor->Paste(asIconAndMask); break;
						case iPasteIntoSelection: frontEditor->Paste(intoSelection); break;
					}
				break;
			case mView :
				if (frontEditor != NULL)
					switch (item)
					{
						case iZoomIn : frontEditor->ZoomIn(); break;
						case iZoomOut : frontEditor->ZoomOut(); break;
					}
				break;
		}
		
		while (LMGetTicks() < startTicks + 4) {;}
		
		HiliteMenu(0); // after the command has been executed, we must unhilite the menu
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
	Rect			itemRect; // used to store the rectangle of a specific item, ignored
	Handle			item; // handle the control which we requested
	short			itemType; // the type of the item (button, text, etc.), ignored
	Str255			address, tempString; // strings used to store the address that is to be
										 // opened in the browser/mail client
	ModalFilterUPP	eventFilterUPP;
	
	aboutBox = GetNewDialog (rAboutBox, nil, (WindowPtr)-1L); // load the about box
	if (aboutBox == NULL)
	{
		DoError(rStdErrors, eResourceMissing);
		return;
	}
	
	SetDialogDefaultItem(aboutBox, iOK); // when the user hits return, this item is "clicked"
	
	ShowWindow(aboutBox); // we can now show the window
	
	GetDialogItem(aboutBox, iNameDisplayField, &itemType, &item, &itemRect);
	if (icnsEditorClass::statics.preferences.IsRegistered())
	{
		SetDialogItemText(item, (**icnsEditorClass::statics.preferences.data).name);
		GetDialogItem(aboutBox, iCompanyDisplayField, &itemType, &item, &itemRect);
		SetDialogItemText(item, (**icnsEditorClass::statics.preferences.data).company);
		GetDialogItem(aboutBox, iRegCodeDisplayField, &itemType, &item, &itemRect);
		SetDialogItemText(item, (**icnsEditorClass::statics.preferences.data).regCode);
	}
	else
	{
		GetIndString(tempString, rDefaultNames, eNotRegistered);
		SetDialogItemText(item, tempString);
	}
	
	eventFilterUPP = NewModalFilterProc((ProcPtr) AboutBoxEventFilter);
		
	dialogDone = false;
	while (!dialogDone)
	{
		ModalDialog(eventFilterUPP, &itemHit);
		
		switch (itemHit)
		{
			case iEmailAddress:
				// if the clicks on the mail address, we must extract the text, add the prefix
				// "mailto:" so that we can tell its supposed to be handled by the mail client
				// and pass it onto InternetConfig
				GetDialogItem(aboutBox, iEmailAddress, &itemType, &item, &itemRect);
				GetDialogItemText(item, tempString);
				CopyString(address, "\pmailto:");
				AppendString(address, tempString);
				dialogDone = true;
				if (LaunchURL((ConstStr255Param)address) != noErr)
					DoError(rStdErrors, eNeedInternetConfig);
				break;
			case iHomepageAddress:
				// a similar thing for the homepage, except the text already includes the
				// protocol prefix ("http://") so we do not need that step
				GetDialogItem(aboutBox, iHomepageAddress, &itemType, &item, &itemRect);
				GetDialogItemText(item, address);
				dialogDone = true;
				if (LaunchURL((ConstStr255Param)address) != noErr)
					DoError(rStdErrors, eNeedInternetConfig);
				break;
			case iOK: dialogDone = true; break;
		}
	}
	DisposeRoutineDescriptor(eventFilterUPP);
	DisposeDialog(aboutBox);
}

pascal bool AboutBoxEventFilter(DialogPtr dialog, EventRecord *eventPtr, short *itemHit)
{
	bool	handledEvent; // if true then our function tool care of the event

	handledEvent = false; // by default we didn't handle the event
	
	switch (eventPtr->what)
	{
		case activateEvt: // if the window isn't the dialog, then we tell the update function
		case updateEvt: //  to take care of it
			if((WindowPtr) eventPtr->message != dialog)
			{
				HandleUpdate(eventPtr);
				handledEvent = true;
			}
			else
			{
				GWorldPtr		picGW, maskGW, tempGW;
				PixMapHandle	picPix, maskPix, tempPix;
				Rect			targetRect;
				ControlHandle	item;
				
				SAVEGWORLD; // we must save the current port
				SAVECOLORS;
				
				SetPort(dialog);
				//GetDialogItem(dialog, iAboutPic, &itemType, &item, &targetRect);
				GetDialogItemAsControl(dialog, iAboutPic, &item);
				targetRect = (**item).contrlRect;
				NewGWorld(&tempGW, 32, &targetRect, NULL, NULL, 0);
				tempPix = GetGWorldPixMap(tempGW);
				LockPixels(tempPix);
				SetGWorld(tempGW, NULL);
				
				DrawDialogBackground(item, targetRect);
						 
				NewGWorld(&picGW, 32, &targetRect, NULL, NULL, 0);
				picPix = GetGWorldPixMap(picGW);
				LockPixels(picPix);
				SetGWorld(picGW, NULL);
				
				DrawPicture(GetPicture(rAboutPic), &targetRect);
				
				NewGWorld(&maskGW, 32, &targetRect, NULL, NULL, 0);
				maskPix = GetGWorldPixMap(maskGW);
				LockPixels(maskPix);
				SetGWorld(maskGW, NULL);
				
				DrawPicture(GetPicture(rAboutMask), &targetRect);
				
				CopyDeepMask((BitMap*)*picPix,
							 (BitMap*)*maskPix,
							 (BitMap*)*tempPix,
							 &targetRect,
							 &targetRect,
							 &targetRect,
							 srcCopy,
							 NULL);
					 
				CopyBits((BitMap*)*tempPix,
						 &dialog->portBits,
						 &targetRect,
						 &targetRect,
						 srcCopy,
						 dialog->visRgn);
				
				  
				RESTOREGWORLD;
				RESTORECOLORS;	
				
				UnlockPixels(tempPix);
				DisposeGWorld(tempGW);
				UnlockPixels(picPix);
				DisposeGWorld(picGW);
				UnlockPixels(maskPix);
				DisposeGWorld(maskGW);
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
	
	ShowWindow(registration);
	
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
					DoError(rStdErrors, eThanksForRegistering);
					menu = GetMenuHandle(mApple);
					DeleteMenuItem(menu, iRegister);
				}
				else
					DoError(rStdErrors, eBadRegCode);
				break;	
			case iCancel: dialogDone = true; break;
			case iLaunchRegister:
				FSSpec	registerSpec;
				Str255	registerFileName;
				
				GetIndString(registerFileName, rDefaultNames, eRegisterAppName);
				if (FSMakeFSSpec(0, 0, registerFileName, &registerSpec) != noErr)
					DoError(rStdErrors, eCouldntFindRegister);
				else
				{
					dialogDone = true;
					SendFinderAEOpen(registerSpec);
				}
				break;
		}
		
	}
	
	DisposeRoutineDescriptor(eventFilterUPP);
	DisposeDialog(registration);
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
	
	newEditor = new icnsEditorClass(gLastEditor); // we make the editor...
	if (!(newEditor->status & outOfMemory)) // if we're ok
	{
		gLastEditor = newEditor;
			// we set the last item in the linked list to the one we just made
		if (gFirstEditor == NULL) // if there were't any editor before then
		{
			//ToggleMenus(); // we must enable the menus
			gFirstEditor = newEditor;
				// and set the first item in the list to the one we just made
		}
		
		if (showWindow)
			gLastEditor->Show();
		
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

// __________________________________________________________________________________________
// Name			: GetIconFile
// Input		: None
// Output		: fileSpec: the file/folder that the user chose
//				  OSErr: reason why we failed, if any
// Description	: This function presents a file/folder choice dialogs, thus allowing the user
//				  to open one

OSErr GetIconFile(FSSpec* fileSpec)
{
	if (NavServicesAvailable())
	{
		NavReplyRecord		theReply;
		NavDialogOptions	dialogOptions;
		OSErr				theErr = noErr;
		NavEventUPP			eventUPP = NewNavEventProc(NavEventFilter);
		Str255				openPromptText;
		Str255				windowTitle;
		
		theErr = NavGetDefaultDialogOptions(&dialogOptions);
		
		GetIndString(dialogOptions.message,rPrompts,eSelectFile);
		
		dialogOptions.preferenceKey = 13654;
		dialogOptions.dialogOptionFlags -= kNavAllowMultipleFiles;
		dialogOptions.dialogOptionFlags += kNavNoTypePopup;
		dialogOptions.dialogOptionFlags += kNavAllowPreviews;
		CopyString(dialogOptions.clientName, gAppName);
		GetIndString(windowTitle, rPrompts, eOpenTitle); // we get the prompt string
		CopyString(dialogOptions.windowTitle, windowTitle);
		GetIndString(openPromptText, rPrompts, eSelectFile); // we get the prompt string	
		CopyString(dialogOptions.message, openPromptText);
		
		
		theErr = NavChooseObject(NULL,
								 &theReply,
								 &dialogOptions,
								 eventUPP,
								 NULL,
								 NULL);
		
		DisposeRoutineDescriptor(eventUPP);

		if ((theReply.validRecord)&&(theErr == noErr))
		{
			// grab the target FSSpec from the AEDesc:	
			AEDesc 	resultDesc;

			if ((theErr = AECoerceDesc(&(theReply.selection),typeFSS,&resultDesc)) == noErr)
			{
				GetFSSpecFromAEDesc(resultDesc, *fileSpec);
				FSMakeFSSpec(fileSpec->vRefNum, fileSpec->parID, fileSpec->name, fileSpec);
			}
			AEDisposeDesc(&resultDesc);
			
			theErr = NavDisposeReply(&theReply);
		}
			
		return theErr;
	}
	else
	{
		StandardFileReply theReply;
		FileFilterYDUPP 	invisiblesExcludedCustomFilterUPP;
		
		invisiblesExcludedCustomFilterUPP = NewFileFilterYDProc(OnlyVisibleObjectsCustomFileFilter);
		
		StandardGetObject(invisiblesExcludedCustomFilterUPP, HandleUpdate, &theReply);
		
		DisposeRoutineDescriptor(invisiblesExcludedCustomFilterUPP);
		
		if ( theReply.sfGood)
		{
			*fileSpec = theReply.sfFile;
			return noErr;
		}
		else
			return userCanceledErr;
	}
}

// __________________________________________________________________________________________
// Name			: OpenIcon
// Input		: fileToOpen: Pointer to a file spec if the file to be opened has already been
//				  chosen.
// Output		: None
// Description	: Allows the user to open an icon. If the fileToOpen parameter is set to NULL
//				  then the file that's to be opened must be chosen first, otherwise we can
//				  proceed to the next step, the Icon Browser which allows you to choose an
//				  icon to edit from that file. After an icon has been chosem, then we use
//				  the icnsEditorClass function to load the new editor and the icon.

void OpenIcon(FSSpec *fileToOpen)
{
	long			ID;
	OSStatus		err1 = noErr, err2 = noErr;
	bool			needToDispose = false;
	
	if (fileToOpen == NULL) // if don't already have a file to open...
	{
		fileToOpen = new FSSpec;
		
		needToDispose = true;
		
		err1 = GetIconFile(fileToOpen);
	}
	if (err1 == noErr)
	{
		unsigned char isFolder, ignored;
		ResolveAliasFile(fileToOpen,true,&isFolder, &ignored);
		
		if (!isFolder)
		{						 
		err1 = IconBrowser(*fileToOpen, &ID, HandleUpdate); // we let the user choose the icon ID they want
											 			   // to edit
		if (err1 == canceledErr) // if there was a problem with the icon browser
			return;
		else if (err1 == opWrErr)
			DoError(rStdErrors, eFileOpen);
		}
		
		icnsEditorPtr currentEditor;
		
		currentEditor = gFirstEditor;
		while (currentEditor != NULL)
		{
			if (currentEditor->srcFileSpec.vRefNum == fileToOpen->vRefNum &&
			    currentEditor->srcFileSpec.parID == fileToOpen->parID &&
			    EqualString(currentEditor->srcFileSpec.name, fileToOpen->name, true, true) &&
			    (currentEditor->ID == ID || (ID == 820127 && currentEditor->ID == -16455)))
			{
			    SelectWindow(currentEditor->window);
			    if (needToDispose)
			    	delete fileToOpen;
			    return;
			}
			currentEditor = currentEditor->nextEditor;
		}
		
		if (gLastEditor == gFirstEditor &&
			gLastEditor != NULL &&
			gLastEditor->srcFileSpec.vRefNum == 0 &&
			gLastEditor->srcFileSpec.parID == 0 &&
			!(gLastEditor->status & canUndo))
			err2 = noErr; // we already have a new, open, but empty editor, no use in making another
		else
			err2 = NewIcon(false);
		if (err2 == noErr) // if were able to make a new editor
		{
			
			gLastEditor->srcFileSpec = *fileToOpen;
			
			if (err1 == fileIconSelected || ID == 820127 || isFolder)
			{
				ID = -16455;
				gLastEditor->LoadFileIcon();
			}
			else
			{
				gLastEditor->ID = ID; // then we load the icon the user has chosen into it
				gLastEditor->Load();
			}
			
			
			
			SAVEGWORLD;
			SetPort(gLastEditor->window); // we must invalidate the window so that it can be
			InvalRgn(gLastEditor->window->visRgn); // redrawn
			gLastEditor->Refresh();
			
			RESTOREGWORLD;
			
			gLastEditor->Show();
			
			DoIdle();
			DrawMenuBar();
		}
	}
	
	if (needToDispose)
		delete fileToOpen;
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

bool CloseIcon(int flags)
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
				case kAlertStdAlertOKButton: SaveIcon(false); closed = true; break;
				// we save the icon and close it
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
			// we must keep the linked list "linked"
			if (gLastEditor == frontEditor)
				gLastEditor = frontEditor->previousEditor;
			if (gFirstEditor == frontEditor)
				gFirstEditor = frontEditor->nextEditor;
			frontEditor->Close(); // the actual closing of the editor
		}
	}
	
	DoIdle();
	DrawMenuBar();
		
	return closed; // return what the user actually chose to do
}

// __________________________________________________________________________________________
// Name			: SaveIcon
// Input		: saveAs: true if the user wants to save the file to a new location
// Output		: None
// Description	: Saves the frontmost icon. If the user has selected the Save As... command or
//				  if the current file doesn't have a chosen location yet then we promopt the
//				  the user for a new location before actually calling the Save command of the
//				  editor.

void SaveIcon(bool saveAs)
{
	icnsEditorPtr	frontEditor; // pointer to the front most editor, this is the one that the
							     // saving will be done on
	
	frontEditor = GetFrontEditor(); // we get the pointer to it
	
	if (frontEditor != NULL) // if there is one
	{
		if (saveAs || // if the user wants a new location
			(frontEditor->srcFileSpec.vRefNum == 0 &&
			frontEditor->srcFileSpec.parID == 0)) // or if there isn't one chosen yet
		{
			Str255	savePromptText; // the message that tells the user to save a file, loaded
									// from a string resource
			OSErr	err; // used for testing for errors
			NavEventUPP			eventUPP = NewNavEventProc(NavEventFilter);
		
			GetIndString(savePromptText, rPrompts, eSaveFile); // we get the prompt string
			
			err = NewFile(gAppName, // and attempt to get the file
						  creatorCode,
						  iconFileType,
						  frontEditor->srcFileSpec.name,
						  savePromptText,
						  &frontEditor->srcFileSpec,
						  eventUPP);
						  
			DisposeRoutineDescriptor(eventUPP);
					
			if (err != noErr) // if there was a problem (most likely, the user cancelled)
				return; // we go back
				
			FSpDelete(&frontEditor->srcFileSpec); // we delete that file that was already there
												  // (if any)
			FSpCreate(&frontEditor->srcFileSpec, creatorCode, iconFileType, 0); // we create a new file
			// 0 = roman encoding type 
			FSpCreateResFile(&frontEditor->srcFileSpec, creatorCode, iconFileType, 0);
			// and we add a resource fork to it too
			frontEditor->RefreshWindowTitle(); // must update the title of the window with the
			// new file name
		}
		frontEditor->Save(); // finally we pass on the saving to the editor
		
		if (!(icnsEditorClass::statics.preferences.IsRegistered()))
			Nag();
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
	AlertStdAlertParamRec	param; // parameters used to specify options about the alert
	Str255					text, // the text which the alert wil display
							saveButtonName,
							cancelButtonName,
							dontSaveButtonName;
	OSStatus				err; // error checking
	short					itemHit; // which item did the user click (OK, Cancel, Don't Save)
	ModalFilterUPP			eventFilterUPP; // pointer to the function which will filter events
	
	GetIndString(saveButtonName, rDefaultNames, eSaveButton);
	GetIndString(cancelButtonName, rDefaultNames, eCancelButton);
	GetIndString(dontSaveButtonName, rDefaultNames, eDontSaveButton);
	GetIndString(text, rPrompts, eWantToSave); // we get the message
	
	SubstituteString(text, "\p<app name>", gAppName); // substitute for the place holders
	SubstituteString(text, "\p<file name>", fileSpec.name);
	
	eventFilterUPP = NewModalFilterProc((ProcPtr) AlertEventFilter); // get our event filter
	
	// set the options
	param.movable 		= true; // the user can move the dialog around
	param.filterProc 	= eventFilterUPP; // the function which filters events
	param.defaultText 	= saveButtonName; // the default button name
	if (flags & noCancel) // if the user can't cancel
	{
		param.cancelText = NULL; // then there is no cancel button
		param.cancelButton  = 0;
	}
	else
	{
		param.cancelText= cancelButtonName;
		param.cancelButton  = kAlertStdAlertCancelButton;
	}
	param.otherText		= dontSaveButtonName;
	param.helpButton 	= false; // we don't need a help button (at least not at this moment)
	param.defaultButton = kAlertStdAlertOKButton; // hitting return will activate this button
	param.position 		= kWindowCenterParentWindow; // we want the error to be centered on the
	// window which contains the editor we are trying to save
	
	err = StandardAlert(kAlertStopAlert, text, NULL, &param, &itemHit);
	// here we display the actual message and see what the user decides
	
	if (err != noErr) // if there was a problem (unlikely), we display its error code
		DisplayValue(err);
		
	return itemHit;
}

void Nag(void)
{
	AlertStdAlertParamRec	param; // very similar to above
	Str255					text, registerButtonName, notYetButtonName, timesUsedAsString;
	OSStatus				err;
	short					itemHit;
	ModalFilterUPP			eventFilterUPP;
	int						i;
	
	(**icnsEditorClass::statics.preferences.data).timesUsed++;
	i = (**icnsEditorClass::statics.preferences.data).timesUsed;
	
	if (((i < 50) && (i % 10 == 0)) ||
		((i >= 50) && (i < 100) && (i % 5 == 0)) ||
		((i >= 100) && (i < 150) && (i % 3 == 0)) ||
		((i >= 150) && (i < 200) && (i % 2 == 0)) ||
		(i >= 200))
	{
		GetIndString(registerButtonName, rDefaultNames, eRegisterButton);
		GetIndString(notYetButtonName, rDefaultNames, eNotYetButton);
		GetIndString(text, rPrompts, eRegistrationReminder); // the message is loaded from the specified
		// string in the specified resource
		
		SubstituteString(text, "\p<app name>", gAppName); // substitute
		NumToString(i, timesUsedAsString);
		SubstituteString(text, "\p<no of icons>", timesUsedAsString);
			
		// the rest of the function is very similar to the WantToSave function described above,
		// except that there is only one button, the OK one
		
		eventFilterUPP = NewModalFilterProc((ProcPtr) AlertEventFilter);
		
		param.movable 		= true;
		param.filterProc 	= eventFilterUPP;
		param.defaultText 	= registerButtonName;
		param.cancelText	= notYetButtonName;
		param.otherText		= NULL;
		param.helpButton 	= false;
		param.defaultButton = kAlertStdAlertOKButton;
		param.cancelButton  = 0;
		param.position 		= 0;
		
		SysBeep(6);
		err = StandardAlert(kAlertNoteAlert, text, NULL, &param, &itemHit);
		if (err != noErr)
			DisplayValue(err);
			
		if (itemHit == kAlertStdAlertOKButton)
			Register();
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
	AlertStdAlertParamRec	param; // very similar to above
	Str255					text, okButtonName;
	OSStatus				err;
	short					itemHit;
	ModalFilterUPP			eventFilterUPP;
	
	GetIndString(okButtonName, rDefaultNames, eOKButton);
	GetIndString(text, resourceID, stringNo); // the message is loaded from the specified
	// string in the specified resource
	
	if (FindSubstring(text, "\p<app name>") != -1) // if there are placeholders, we must
		SubstituteString(text, "\p<app name>", gAppName); // substitute
		
	// the rest of the function is very similar to the WantToSave function described above,
	// except that there is only one button, the OK one
	
	eventFilterUPP = NewModalFilterProc((ProcPtr) AlertEventFilter);
	
	param.movable 		= true;
	param.filterProc 	= eventFilterUPP;
	param.defaultText 	= okButtonName;
	param.cancelText	= NULL;
	param.otherText		= NULL;
	param.helpButton 	= false;
	param.defaultButton = kAlertStdAlertOKButton;
	param.cancelButton  = 0;
	param.position 		= 0;
	
	err = StandardAlert(kAlertStopAlert, text, NULL, &param, &itemHit);
	if (err != noErr)
		DisplayValue(err);
		
	DisposeRoutineDescriptor(eventFilterUPP);
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
			if((WindowPtr) eventPtr->message != dialog)
			{
				HandleUpdate(eventPtr);
				handledEvent = true;
			}
			break;
		case keyDown: // if the user presses a key, and it matches the first letter of the
		case autoKey: // third button, then we simulate a click on that button, complete
					  // with highlighting
			ControlHandle thirdButton; // the button for which we must check hits
				
			if (GetKeyboardFocus(dialog, &thirdButton) == noErr && thirdButton == NULL)
			{
				char key; // the character which symbolizes the key that was down
				
				Str255 buttonName; // the name of the button
				
				key = eventPtr->message & charCodeMask;
				GetDialogItemAsControl(dialog, kAlertStdAlertOtherButton, &thirdButton);
				if (thirdButton != NULL) // if there is a third button
				{
					CopyString(buttonName, (**thirdButton).contrlTitle); // we get its title
					if (key == buttonName[1] || (key + 'A' - 'a') == buttonName[1])
					// if the pressed key is the fist letter of the button (regardless of the case)
					// then we simulate a click on it
					{
						*itemHit = kAlertStdAlertOtherButton;
						HiliteControl(thirdButton, 1);
						Sleep(9); // standard delay for highlighting, 9 ticks (9 * 1/60th of a second)
						HiliteControl(thirdButton, 0);
						handledEvent = true;
					}
					else
						handledEvent = StdFilterProc(dialog, eventPtr, itemHit);
						// if it was a different key then we let the system take care of it
				}
			}
			else
				handledEvent = StdFilterProc(dialog, eventPtr, itemHit);
			break;
		default:
			// if it's not an event we support, then we let the system take care of it
			SAVEGWORLD;
			SetPort(dialog);

			handledEvent = StdFilterProc(dialog, eventPtr, itemHit);

			RESTOREGWORLD;
		break;
	}
		 

	return(handledEvent);
}

pascal void NavEventFilter(NavEventCallbackMessage callBackSelector,
						   NavCBRecPtr callBackParms, 
						   NavCallBackUserData callBackUD)
{
#pragma unused (callBackUD)

	switch (callBackSelector)
		{
		case kNavCBEvent:
			{
				switch (callBackParms->eventData.eventDataParms.event->what)
					{
					//case mouseDown:
					//	HandleCustomMouseDown(callBackParms);
					//	break;
					
					case activateEvt:
					case updateEvt:
						HandleUpdate(callBackParms->eventData.eventDataParms.event);
					default:
						break;
					}
			break;
			}
		}
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
	// note that we don't do this by looping through the list since the list order
	// might not be the order in which the windows are stacked in
	while (FrontWindow() != NULL)
		if (!CloseIcon(0))
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
	Handle		oldPrefs;
	Str255		prefsFileName;

	GetIndString(prefsFileName, rDefaultNames, ePrefsName);
	
	err = FindFolder(kOnSystemDisk, kPreferencesFolderType, kDontCreateFolder, &myVRef, &myDirID);
	if (err == noErr)
		err = FSMakeFSSpec(myVRef, myDirID, prefsFileName, &preferencesFile);
	
	oldFile = CurResFile();
	
	if (err == noErr)
		preferencesRefNum = FSpOpenResFile(&preferencesFile, fsRdWrPerm);
	

	if ((preferencesRefNum != -1) && (err == noErr))
	{
		UseResFile(preferencesRefNum);
		oldPrefs = Get1Resource('Pref', rPrefs);
		if (oldPrefs != NULL)
		{
			RemoveResource(oldPrefs);
			UpdateResFile(preferencesRefNum);
			CloseResFile(preferencesRefNum);
			UseResFile(oldFile);
			preferencesRefNum = FSpOpenResFile(&preferencesFile, fsRdWrPerm);
			UseResFile(preferencesRefNum);
		}
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

