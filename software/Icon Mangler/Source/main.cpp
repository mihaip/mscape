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
	
	InitToolbox(); // initializing all the default managers
	
	if (!ConfigurationSupported()) // we check if we can run on this setup
	{
		DoError(rStdErrors, eRequirementsNotFulfilled);
		CleanUp();
	}
	
	GetTime(&theDate); // and if we haven't expired
	if (theDate.month >= 5 && theDate.day >= 1 && theDate.year >= 1999)
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
		if (systemVersion[2] >= 0x8)
			if (systemVersion[3] >= 0x50)
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
		
		
	ToggleMenus(); // we disable what's not needed
	
	DrawMenuBar(); // and draw the menubar
	
	return noErr;
}

// __________________________________________________________________________________________
// Name			: ToggleMenus
// Input		: None
// Output		: None
// Description	: Toggles (enabled -> disabled and vice versa) the menus which should be active
//				  only when there is an editor window open

void ToggleMenus()
{
	ToggleMenuItem(mFile, iClose);
	ToggleMenuItem(mFile, iSave);
	ToggleMenuItem(mFile, iSaveAs);
	ToggleMenuItem(mView, iZoomIn);
	ToggleMenuItem(mView, iZoomOut);
	
	ToggleMenuItem(mEdit, iUndo);
	ToggleMenuItem(mEdit, iRedo);
	ToggleMenuItem(mEdit, iCut);
	ToggleMenuItem(mEdit, iCopy);
	ToggleMenuItem(mEdit, iPaste);
	ToggleMenuItem(mEdit, iClear);
	ToggleMenuItem(mEdit, iSelect);
	ToggleMenuItem(mEdit, iTransform);
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
		
		menu = GetMenuHandle(mSelect);
		EnableItem(menu, 0);
		if (frontEditor->status & hasSelection) // if there is a selection
		{
			menu = GetMenuHandle(mEdit);
			EnableItem(menu, iCopy); // then we can cut, copy and clear
			EnableItem(menu, iCut);
			EnableItem(menu, iClear);
			menu = GetMenuHandle(mSelect);
			EnableItem(menu, iNone); // and deselect and inverse
			EnableItem(menu, iInverse);
		}
		else
		{
			menu = GetMenuHandle(mEdit); // else we can't do any of those
			DisableItem(menu, iCopy);
			DisableItem(menu, iCut);
			DisableItem(menu, iClear);
			menu = GetMenuHandle(mSelect);
			DisableItem(menu, iNone);
			DisableItem(menu, iInverse);
		}

		if (frontEditor->status & canUndo) // if we can undo...
			EnableMenuItem(mEdit, iUndo);
		else
			DisableMenuItem(mEdit, iUndo);
			
		if (frontEditor->status & canRedo) // if we can redo
			EnableMenuItem(mEdit, iRedo);
		else
			DisableMenuItem(mEdit, iRedo);
		
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
		DisableMenuItem(mSelect, 0);
		
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
	char			theKey; // the key which was pressed
	icnsEditorPtr	frontEditor; // the editor class belonging to the front most window
	
	theKey = eventPtr->message & charCodeMask; // we get the key
	if ( (eventPtr->modifiers & cmdKey) != 0) // if the command modifier was down
		DoMenuCommand(MenuEvent(eventPtr)); // we attempt to execute that menu command
	else // otherwise we pass it onto the ediot
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
					case iNewIcon : NewIcon(); break;
					case iOpenIcon : OpenIcon(NULL); break;
					case iClose : CloseIcon(0); break;
					case iSave: SaveIcon(false); break;
					case iSaveAs : SaveIcon(true); break;
					case iQuit :gIsDone = true; break;
				}
				break;
			case mEdit :
				if (frontEditor == NULL) return;
				switch (item)
				{
					case iUndo: frontEditor->Undo(); break;
					case iRedo: frontEditor->Redo(); break;
					case iCut: frontEditor->Cut(); break;
					case iCopy: frontEditor->Copy(); break;
					case iPaste : frontEditor->Paste(); break;
					case iClear : frontEditor->Clear(); break;
				}
				break;
			case mSelect:
				if (frontEditor == NULL) return;
				switch (item)
				{
					case iAll : frontEditor->Select(all); break;
					case iNone : frontEditor->Select(none); break;
					case iInverse : frontEditor->Select(inverse); break;
				}
				break;
			case mTransform:
				if (frontEditor == NULL) return;
				switch (item)
				{
					case iRotateCW : frontEditor->Rotate(90); break;
					case iRotateCCW : frontEditor->Rotate(-90); break;
					case iFlipHorizontal : frontEditor->Flip(horizontal); break;
					case iFlipVertical : frontEditor->Flip(vertical); break;
					case iInvert : frontEditor->Invert(); break;
				}
				break;
			case mView :
				if (frontEditor == NULL) return;
				switch (item)
				{
					case iZoomIn : frontEditor->ZoomIn(); break;
					case iZoomOut : frontEditor->ZoomOut(); break;
				}
				break;
		}
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

void ShowAboutBox()
{
	DialogPtr		aboutBox; // pointer to the dialog we will display
	bool			dialogDone; // control variable
	short			itemHit; // which item did the user click
	Rect			itemRect; // used to store the rectangle of a specific item, ignored
	Handle			item; // handle the control which we requested
	short			itemType; // the type of the item (button, text, etc.), ignored
	Str255			address, tempString; // strings used to store the address that is to be
										 // opened in the browser/mail client
	SAVEGWORLD; // we must save the current port
	
	aboutBox = GetNewDialog (rAboutBox, nil, (WindowPtr)-1L); // load the about box
	if (aboutBox == NULL)
	{
		DoError(rStdErrors, eResourceMissing);
		return;
	}
	SetPort(aboutBox);
	SetDialogDefaultItem(aboutBox, iOK); // when the user hits return, this item is "clicked"
	
	ShowWindow(aboutBox); // we can not show the window
		
	dialogDone = false;
	while (!dialogDone)
	{
		ModalDialog(nil, &itemHit);
		
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
	DisposeDialog(aboutBox);
	RESTOREGWORLD; // restore the state
}

// __________________________________________________________________________________________
// Name			: NewIcon
// Input		: None
// Output		: OSErr: did we succeed or not?
// Description	: Makes a new instance of the editor class, updates the menus if necessary and
//				  updates the linked list tail and head

OSErr NewIcon()
{
	icnsEditorPtr newEditor; // pointer to the editor which we will create

	newEditor = new icnsEditorClass(gLastEditor); // we make the editor...
	if (!(newEditor->status & outOfMemory)) // if we're ok
	{
		gLastEditor = newEditor;
			// we set the last item in the linked list to the one we just made
		if (gFirstEditor == NULL) // if there were't any editor before then
		{
			ToggleMenus(); // we must enable the menus
			gFirstEditor = newEditor;
				// and set the first item in the list to the one we just made
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
	OSStatus		err = noErr;
	
	if (fileToOpen == NULL) // if don't already have a file to open...
	{
		Str255	openPromptText;	
			
		GetIndString(openPromptText, rPrompts, eSelectFile);
		
		fileToOpen = (FSSpec *)NewPtr(sizeof(FSSpec));
		err = GetFile(gAppName, // ...we get one
					  '****',
					  '****',
					  openPromptText,
					  fileToOpen);
	}
	
	if (err == noErr) // if were able to get a new icon editor
	{	
		err = IconBrowser(*fileToOpen, &ID, HandleUpdate); // we let the user choose the icon ID they want
											 // to edit
		if (err != noErr) // if there was a problem with the icon browser
		{
			if (err == noIconsErr) // if there were no icons in the file...
				DoError(rStdErrors, eNoIcons); // we inform the user
			// otherwise we assume the user just cancelled
			return;
		}
		err = NewIcon();
		if (err == noErr) // if were able to make a new editor
		{
			gLastEditor->ID = ID; // then we load the icon the user has chosen into it
			gLastEditor->srcFileSpec = *fileToOpen;
			gLastEditor->Load();
			SAVEGWORLD;
			SetPort(gLastEditor->window); // we must invalidate the window so that it can be
			InvalRgn(gLastEditor->window->visRgn); // redrawn
			gLastEditor->Refresh();
			
			RESTOREGWORLD;
		}
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
	
	if (gLastEditor == NULL && gFirstEditor == NULL) // if there are no more editors open
		ToggleMenus(); // we must restore the menu state
		
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
		
			GetIndString(savePromptText, rPrompts, eSaveFile); // we get the prompt string
			
			err = NewFile(gAppName, // and attempt to get the file
						  creatorCode,
						  iconFileType,
						  frontEditor->srcFileSpec.name,
						  savePromptText,
						  &frontEditor->srcFileSpec);
					
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
	Str255					text; // the text which the alert wil display
	OSStatus				err; // error checking
	short					itemHit; // which item did the user click (OK, Cancel, Don't Save)
	ModalFilterUPP			eventFilterUPP; // pointer to the function which will filter events
	
	GetIndString(text, rPrompts, eWantToSave); // we get the message
	
	SubstituteString(text, "\p<app name>", gAppName); // substitute for the place holders
	SubstituteString(text, "\p<file name>", fileSpec.name);
	
	eventFilterUPP = NewModalFilterProc((ProcPtr) AlertEventFilter); // get our event filter
	
	// set the options
	param.movable 		= true; // the user can move the dialog around
	param.filterProc 	= eventFilterUPP; // the function which filters events
	param.defaultText 	= "\pSave"; // the default button name
	if (flags & noCancel) // if the user can't cancel
	{
		param.cancelText = NULL; // then there is no cancel button
		param.cancelButton  = 0;
	}
	else
	{
		param.cancelText= "\pCancel";
		param.cancelButton  = kAlertStdAlertCancelButton;
	}
	param.otherText		= "\pDon't Save";
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
	Str255					text;
	OSStatus				err;
	short					itemHit;
	ModalFilterUPP			eventFilterUPP;
	
	GetIndString(text, resourceID, stringNo); // the message is loaded from the specified
	// string in the specified resource
	
	if (FindSubstring(text, "\p<app name>") != -1) // if there are placeholders, we must
		SubstituteString(text, "\p<app name>", gAppName); // substitute
		
	// the rest of the function is very similar to the WantToSave function described above,
	// except that there is only one button, the OK one
	
	eventFilterUPP = NewModalFilterProc((ProcPtr) AlertEventFilter);
	
	param.movable 		= true;
	param.filterProc 	= eventFilterUPP;
	param.defaultText 	= "\pOK";
	param.cancelText	= NULL;
	param.otherText		= NULL;
	param.helpButton 	= false;
	param.defaultButton = kAlertStdAlertOKButton;
	param.cancelButton  = 0;
	param.position 		= 0;
	
	err = StandardAlert(kAlertStopAlert, text, NULL, &param, &itemHit);
	if (err != noErr)
		DisplayValue(err);
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
			char key; // the character which symbolizes the key that was down
			ControlHandle thirdButton; // the button for which we must check hits
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
	ExitApplication(); // we're done
}

