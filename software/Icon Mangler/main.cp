#include "iconmangler.h"

void main(void)
{
	Initialize();
	
	EventLoop();
	
	CleanUp();
}

void Initialize()
{

#ifdef __expires__
	DateTimeRec		theDate;
	StringHandle	expirationBackDoor;
#endif
	
	InitToolbox();
	
	icnsEditorClass::InitializeStatics();
	
	//LoadPreferences();
	
#ifdef __expires__
	GetTime(&theDate);
	/* in case I can't access the source (and don't feel like setting the clock back)
	I can simply change (or remove) the STR resource 128 and then the expiration date will
	be ignored */
	expirationBackDoor = GetString( 128 );
	if (EqualString(*expirationBackDoor, "\p1", true, true))
	{
		if (theDate.month >= 2 && theDate.day >= 1 && theDate.year >= 1999)
		{
			DoError(rStdErrors, eExpired);
			CleanUp();
		}
	}
	if (expirationBackDoor != NULL)
		ReleaseResource((Handle)expirationBackDoor);
#endif __expires__

	RegisterAppearanceClient(); // we're using the appearance manager

	InitMenuBar();
	
	AppleEventInit();
	
	gIsDone = false;
}

void InitMenuBar()
{
	Handle		menuBar;
	MenuHandle	menu;
	
	menuBar = GetNewMBar( kMenuBarID );
	SetMenuBar(menuBar);
	
	menu = GetMenuHandle( mApple );
	if (menu != NULL)
		AppendResMenu(menu, 'DRVR' );
		// we're adding all the items in the Apple Menu Items folder, like any good mac app should
	else
	{
		DoError(rStdErrors, eResourceMissing);
		CleanUp();
	}
	
	menu = GetMenu(mSelect);
	if(menu != NULL)
		InsertMenu(menu,hierMenu);
	else
	{
		DoError(rStdErrors, eResourceMissing);
		CleanUp();
	}
	
	menu = GetMenu(mTransform);
	if(menu != NULL)
		InsertMenu(menu,hierMenu);
	else
	{
		DoError(rStdErrors, eResourceMissing);
		CleanUp();
	}
	
	menu = GetMenuHandle(mEdit);
	
	SetMenuItemModifiers(menu, iClear, kMenuNoCommandModifier);
	SetItemCmd( menu, iClear, kDeleteKey ); // delete key
	SetMenuItemKeyGlyph( menu, iClear, kDeleteGlyph ); // delete key glyph in font
	
	ToggleMenus();
	
	DrawMenuBar();
}

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

void LoadPreferences(void)
{
	/*OSStatus			err;
	FSSpec				preferencesFile;
	short				preferencesRefNum;
	short				myVRef;
	long				myDirID;
	PreferencesHandle	preferencesRes;
	Str255				testRegNo;
	MenuHandle			menu;
	
	preferences = (PreferencesHandle)NewHandleClear(sizeof(tPreferences));
	HLock((Handle)preferences);
	// these are the default values if no preferences file exists
	(**preferences).timesUsed = 0;
	CopyString((**preferences).name, "\pNot Registered");
	CopyString((**preferences).company, "\p");
	CopyString((**preferences).regNo, "\p");
	(**preferences).includeOldStyle = false;
	(**preferences).setBits = true;
	(**preferences).generateOldStyle = true;
	(**preferences).nameResources = true;
	
	err = FindFolder(kOnSystemDisk, kPreferencesFolderType, kDontCreateFolder, &myVRef, &myDirID);
	if (err == noErr)
		err = FSMakeFSSpec(myVRef, myDirID, "\pclip2icns Preferences", &preferencesFile);
	
	if (err == noErr)
		preferencesRefNum = FSpOpenResFile(&preferencesFile, fsRdWrPerm);
	
	if ((preferencesRefNum != -1) && (err == noErr))
	{
		UseResFile(preferencesRefNum);
		preferencesRes = (PreferencesHandle)Get1Resource('Pref', 128);
		(**preferences).timesUsed = (**preferencesRes).timesUsed;
		CopyString((**preferences).name, (**preferencesRes).name);
		CopyString((**preferences).company, (**preferencesRes).company);
		CopyString((**preferences).regNo, (**preferencesRes).regNo);
		(**preferences).includeOldStyle = (**preferencesRes).includeOldStyle;
		(**preferences).setBits = (**preferencesRes).setBits;
		(**preferences).generateOldStyle = (**preferencesRes).generateOldStyle;
		(**preferences).nameResources = (**preferencesRes).nameResources;
		
		if (GetResourceSizeOnDisk((Handle)preferencesRes) != 774)
		{
			// old preferences, some fields aren't in it	
			(**preferences).generateOldStyle = true;
			(**preferences).nameResources = true;
		}
		
		if (!(EqualString((**preferences).name, "\pNot Registered", true, true)))
		{
			GenerateRegNo((**preferences).name, testRegNo);
			// some people might attemp to edit the preferences since they want their own name
			// in the about box registration field (if they didn't register the software themselves
			if (!(EqualString((**preferences).regNo, testRegNo, true, true)))
			{
				DisplayAlert("", "The registration code does not match the name in the preferences file");
				CopyString((**preferences).name, "\pNot Registered");
				CopyString((**preferences).company, "\p");
				CopyString((**preferences).regNo, "\p");
			}
			else
			{
				// we disable the Register command since the software's already registered
				menu = GetMenuHandle(mApple);
				DisableItem(menu, iRegister);
			}
		}
		CloseResFile(preferencesRefNum);
		UseResFile(appFile);
	}
	else
	{
		// we have to make a preferences file since it doesn't exist yet
		FSpCreate(&preferencesFile, 'c2ic', 'Pref', 0); // smRoman = 0
		FSpCreateResFile(&preferencesFile, 'c2ic', 'Pref', 0); // smRoman = 0
		preferencesRefNum = FSpOpenResFile(&preferencesFile, fsCurPerm);
		
		UseResFile(preferencesRefNum);
		AddResource((Handle)preferences, 'Pref', 128, "\p");
		ChangedResource((Handle)preferences);
		WriteResource((Handle)preferences);
		UpdateResFile(preferencesRefNum);
		
		CloseResFile(preferencesRefNum);
		UseResFile(appFile);
		HUnlock((Handle)preferences);
		preferences = (PreferencesHandle)NewHandleClear(sizeof(tPreferences));
		HLock((Handle)preferences);
		(**preferences).timesUsed = 0;
		CopyString((**preferences).name, "\pNot Registered");
		CopyString((**preferences).company, "\p");
		CopyString((**preferences).regNo, "\p");
		(**preferences).includeOldStyle = false;
		(**preferences).setBits = true;
		(**preferences).generateOldStyle = true;
		(**preferences).nameResources = true;
	}
	*/
}

static OSErr MyGotRequiredParams(const AppleEvent *theAppleEvent)
{
	DescType returnedType;
	Size actualSize;

	if ( AEGetAttributePtr(theAppleEvent, keyMissedKeywordAttr, typeWildCard, &returnedType, nil, 0, &actualSize) == errAEDescNotFound )
		return noErr;
	else
		return errAEParamMissed;
};

#if TARGET_CPU_68K
pascal static OSErr DoOpenApp(const AppleEvent *theAppleEvent, AppleEvent *reply, unsigned long refCon)
#else
OSErr DoOpenApp(const AppleEvent *theAppleEvent, AppleEvent *reply, long refCon)
#endif
{
	reply;
	refCon;
	return MyGotRequiredParams(theAppleEvent);
};

#if TARGET_CPU_68K
pascal static OSErr DoOpenDoc(const AppleEvent *theAppleEvent, AppleEvent *reply, unsigned long refCon)
#else
OSErr DoOpenDoc(const AppleEvent *theAppleEvent, AppleEvent *reply, long refCon)
#endif
{
	OSErr		err;
	AEDescList	fileSpecList;
	short		i;
	long		count;
	Size		actual;
	FSSpec		desc;
	AEKeyword	keyword;
	DescType	type;

	reply;
	refCon;

	err = AEGetParamDesc(theAppleEvent, keyDirectObject, typeAEList, &fileSpecList);
	
	err = AECountItems(&fileSpecList, &count);
	for (i = 1; i <= count; i++)
	{
		err = AEGetNthPtr(&fileSpecList, i, typeFSS, &keyword, &type, (Ptr)&desc, sizeof(FSSpec), &actual);
		if (err == noErr)
		{
			OpenIcon(&desc);	
			return MyGotRequiredParams(theAppleEvent);
		}
	}
	return MyGotRequiredParams(theAppleEvent);
};

#if TARGET_CPU_68K
pascal static OSErr DoPrintDoc(const AppleEvent *theAppleEvent, AppleEvent *reply, unsigned long refCon)
#else
OSErr DoPrintDoc(const AppleEvent *theAppleEvent, AppleEvent *reply, long refCon)
#endif
{
	theAppleEvent;
	reply;
	refCon;
	return errAEEventNotHandled;
};

#if TARGET_CPU_68K
pascal static OSErr DoQuitApp(const AppleEvent *theAppleEvent, AppleEvent *reply, unsigned long refCon)
#else
OSErr DoQuitApp(const AppleEvent *theAppleEvent, AppleEvent *reply, long refCon)
#endif
{
	reply;
	refCon;
	gIsDone = true;
	return MyGotRequiredParams(theAppleEvent);
};

#if TARGET_CPU_PPC
RoutineDescriptor DoOpenAppRD = BUILD_ROUTINE_DESCRIPTOR(uppAEEventHandlerProcInfo, DoOpenApp);
RoutineDescriptor DoOpenDocRD = BUILD_ROUTINE_DESCRIPTOR(uppAEEventHandlerProcInfo, DoOpenDoc);
RoutineDescriptor DoPrintDocRD = BUILD_ROUTINE_DESCRIPTOR(uppAEEventHandlerProcInfo, DoPrintDoc);
RoutineDescriptor DoQuitAppRD = BUILD_ROUTINE_DESCRIPTOR(uppAEEventHandlerProcInfo, DoQuitApp);
#endif

void AppleEventInit()
{
		OSErr error;
#if TARGET_CPU_68K
	error = AEInstallEventHandler(kCoreEventClass, kAEOpenApplication, DoOpenApp, 0L, false);
	error = AEInstallEventHandler(kCoreEventClass, kAEOpenDocuments, DoOpenDoc, 0L, false);
	error = AEInstallEventHandler(kCoreEventClass, kAEPrintDocuments, DoPrintDoc, 0L, false);
	error = AEInstallEventHandler(kCoreEventClass, kAEQuitApplication, DoQuitApp, 0L, false);
#else
	error = AEInstallEventHandler(kCoreEventClass, kAEOpenApplication, &DoOpenAppRD, 0L, false);
	error = AEInstallEventHandler(kCoreEventClass, kAEOpenDocuments, &DoOpenDocRD, 0L, false);
	error = AEInstallEventHandler(kCoreEventClass, kAEPrintDocuments, &DoPrintDocRD, 0L, false);
	error = AEInstallEventHandler(kCoreEventClass, kAEQuitApplication, &DoQuitAppRD, 0L, false);
#endif
};

void EventLoop(void)
{
	EventRecord	event;

	while (!gIsDone)
	{
		if (WaitNextEvent (everyEvent, &event, 60, nil))
			DoEvent(&event);
		else
			DoIdle();
	}
}

void DoEvent(EventRecord *eventPtr)
{
	icnsEditorPtr	frontEditor;
	switch (eventPtr->what)
	{
		case mouseUp: HandleMouseUp(eventPtr); break;
		case mouseDown: HandleMouseDown(eventPtr); break;
		case autoKey:
		case keyDown: HandleKeyDown(eventPtr); break;
		case updateEvt: HandleUpdate(eventPtr); break;
		case activateEvt: HandleActivate(eventPtr); break;
		case kHighLevelEvent: 
				if (AEProcessAppleEvent(eventPtr) != noErr)
				{ /* error - ignored */ };
				break;
		case osEvt:
			switch((eventPtr->message >> 24) & 0x000000FF)
			{
				case suspendResumeMessage:
					if (FrontWindow() != NULL)
					{
						frontEditor = GetFrontEditor();
						if (frontEditor != NULL)
						{
							if (eventPtr->message & resumeFlag)
								frontEditor->Activate();
							else
								frontEditor->Deactivate();
						}
					}
					break;
			}
			break;
	}
}

void DoIdle(void)
{
	icnsEditorPtr	frontEditor;
	Handle			pic;
	MenuHandle		menu;
	long			offset;
	
	frontEditor = GetFrontEditor();
	
	pic = NewHandle(0);
	if (GetScrap( pic, 'PICT', &offset ) < 0)
		DisableMenuItem(mEdit, iPaste);
	else
		EnableMenuItem(mEdit, iPaste);
	DisposeHandle(pic);
	
	if (frontEditor != NULL)
	{
		if (frontEditor->status & needToSave)
			EnableMenuItem(mFile, iSave);
		else
			DisableMenuItem(mFile, iSave);
		
		menu = GetMenuHandle(mSelect);
		EnableItem(menu, 0);
		if (frontEditor->status & hasSelection)
		{
			menu = GetMenuHandle(mEdit);
			EnableItem(menu, iCopy);
			EnableItem(menu, iCut);
			EnableItem(menu, iClear);
			menu = GetMenuHandle(mSelect);
			EnableItem(menu, iNone);
			EnableItem(menu, iInverse);
		}
		else
		{
			menu = GetMenuHandle(mEdit);
			DisableItem(menu, iCopy);
			DisableItem(menu, iCut);
			DisableItem(menu, iClear);
			menu = GetMenuHandle(mSelect);
			DisableItem(menu, iNone);
			DisableItem(menu, iInverse);
		}

		if (frontEditor->status & canUndo)
			EnableMenuItem(mEdit, iUndo);
		else
			DisableMenuItem(mEdit, iUndo);
			
		if (frontEditor->status & canRedo)
			EnableMenuItem(mEdit, iRedo);
		else
			DisableMenuItem(mEdit, iRedo);
		
		if (frontEditor->status & canZoomIn)
			EnableMenuItem(mView, iZoomIn);
		else
			DisableMenuItem(mView, iZoomIn);
			
		if (frontEditor->status & canZoomOut)
			EnableMenuItem(mView, iZoomOut);
		else
			DisableMenuItem(mView, iZoomOut);
		
		frontEditor->DoIdle();
	}
	else
		DisableMenuItem(mSelect, 0);
		
}

void HandleMouseUp(EventRecord *eventPtr)
{
	eventPtr; // unused
}

void HandleMouseDown(EventRecord *eventPtr)
{
	int 		part;
	WindowPtr	thisWindow;
	GDHandle	mainScreen;
	long		menuChoice;
	icnsEditorPtr frontEditor;
	
	part = FindWindow(eventPtr->where, &thisWindow);
	frontEditor = GetEditor(thisWindow);
	switch (part)
	{
		case inMenuBar :
			menuChoice = MenuSelect( eventPtr->where);
			DoMenuCommand(menuChoice);
			break;
		case inSysWindow :
			if (frontEditor != NULL)
				frontEditor->Deactivate();
			SystemClick(eventPtr, thisWindow);
			break;
		case inDrag :
			mainScreen = GetMainDevice();
			DragWindow( thisWindow, eventPtr->where, &( ( *mainScreen )->gdRect ));
			break;
		case inGoAway:
			if (TrackGoAway(thisWindow, eventPtr->where) )
			{
				if (GetFrontEditor() != NULL)
					CloseIcon();
			}
			break;
		case inContent:
			if (frontEditor != NULL)
			{
				frontEditor->HandleContentClick(eventPtr);
			}
			break;
		case inGrow:
			if (frontEditor != NULL)
				frontEditor->HandleGrow(eventPtr->where);
			break;
	}
}

void HandleKeyDown(EventRecord *eventPtr)
{
	char	theKey;
	icnsEditorPtr	frontEditor;
	
	theKey = eventPtr->message & charCodeMask;
	if ( (eventPtr->modifiers & cmdKey) != 0)
		//DoMenuCommand(MenuKey(theKey));
		DoMenuCommand(MenuEvent(eventPtr));
	else
	{
		frontEditor = GetFrontEditor();
		if (frontEditor != NULL)
			frontEditor->HandleKeyDown(eventPtr);
	}
}

void HandleActivate(EventRecord *eventPtr)
{
	 WindowPtr  windowPtr;
	 Boolean    becomingActive;
	 icnsEditorPtr currentEditor;

	 windowPtr = (WindowPtr) eventPtr->message;
	 currentEditor = GetEditor(windowPtr);
	 if (currentEditor != NULL)
	 {
		 becomingActive = ((eventPtr->modifiers & activeFlag) == activeFlag);
		 if (becomingActive)
		 	currentEditor->Activate();
		 else
		 	currentEditor->Deactivate();
	}
}

void HandleUpdate(EventRecord *eventPtr)
{
	WindowPtr windowToUpdate;
	icnsEditorPtr	currentEditor;
	
	windowToUpdate = (WindowPtr)eventPtr->message;
	currentEditor = GetEditor(windowToUpdate);
	if (currentEditor != NULL)
		currentEditor->Refresh();
}

void DoMenuCommand(long menuResult)
{
	int	menuID, menuItem;
	
	if (menuResult != 0)
	{
		menuID = HiWord(menuResult);
		menuItem = LoWord(menuResult);
		switch (menuID)
		{
			case mApple :		HandleAppleChoice(menuItem); break;
			case mFile :		HandleFileChoice(menuItem); break;
			case mEdit :		HandleEditChoice(menuItem); break;
			case mSelect:		HandleSelectChoice(menuItem); break;
			case mTransform:	HandleTransformChoice(menuItem); break;
			case mView :		HandleViewChoice(menuItem); break;
		}
		HiliteMenu(0);
	}
}

void HandleAppleChoice(int item)
{
	MenuHandle	appleMenu;
	Str255		accName;
	short		accNumber;
	
	switch (item)
	{
		case iAbout : ShowAboutBox(); break;
		case iRegister : Register(); break;
		default :
			appleMenu = GetMenuHandle (mApple);
			GetMenuItemText(appleMenu, item, accName);
			accNumber = OpenDeskAcc(accName);
			break;
	}
}

void ShowAboutBox()
{
	DialogPtr		aboutBox;
	bool			dialogDone;
	short			itemHit;
	GWorldPtr		picGWorld, maskGWorld, tempGWorld;
	PixMapHandle	picPix, maskPix, tempPix;
	Rect			targetRect, picRect;
	Handle			item;
	short			itemType;
	Str255			address, tempString;
	SAVEGWORLD;
	
	aboutBox = GetNewDialog (aboutBoxID, nil, (WindowPtr)-1L);
	SetPort( aboutBox);
	SetDialogDefaultItem(aboutBox, kOk);
	
	ShowWindow( aboutBox );
	GetDialogItem(aboutBox, kNameField, &itemType, &item, &picRect);
	//SetDialogItemText(item, (**preferences).name);
	GetDialogItem(aboutBox, kCompanyField, &itemType, &item, &picRect);
	//SetDialogItemText(item, (**preferences).company);
	
	GetDialogItem(aboutBox, kAboutPic, &itemType, &item, &picRect);
	targetRect = picRect;
	OffsetRect(&picRect, -picRect.left, -picRect.top);
	NewGWorld(&tempGWorld, 32, &picRect, NULL, NULL, 0);
	tempPix = GetGWorldPixMap(tempGWorld);
	LockPixels(tempPix);
	
	NewGWorld(&picGWorld, 32, &picRect, NULL, NULL, 0);
	
	SetGWorld(picGWorld, NULL);
	DrawPicture(GetPicture(aboutPicID), &picRect);
	picPix = GetGWorldPixMap(picGWorld);
	LockPixels(picPix);
	
	NewGWorld(&maskGWorld, 32, &picRect, NULL, NULL, 0);
	SetGWorld(maskGWorld, NULL);
	DrawPicture(GetPicture(aboutPicMaskID), &picRect);
	maskPix = GetGWorldPixMap(maskGWorld);
	LockPixels(maskPix);
	
	SetGWorld(picGWorld, NULL);
	
	CopyBits(&aboutBox->portBits,
			 (BitMap *) *tempPix,
			 &targetRect,
			 &picRect,
			 srcCopy,
			 NULL);	
	
	CopyDeepMask((BitMap *) *picPix,
				 (BitMap *) *maskPix,
				 (BitMap *) *tempPix,
				 &picRect,
				 &picRect,
				 &picRect,
				 srcCopy,
				 NULL);

	CopyBits((BitMap *) *tempPix,
			 &aboutBox->portBits,
			 &picRect,
			 &targetRect,
			 srcCopy + ditherCopy,
			 NULL);	
			 
	SetPort(aboutBox);	
		 
	UnlockPixels(picPix);
	UnlockPixels(maskPix);
	UnlockPixels(tempPix);
	
	DisposeGWorld(picGWorld);
	DisposeGWorld(maskGWorld);
	DisposeGWorld(tempGWorld);
	
	dialogDone = false;
	while (!dialogDone)
	{
		ModalDialog(nil, &itemHit);
		
		switch (itemHit)
		{
			case kEmailAddress:
				GetDialogItem(aboutBox, kEmailAddress, &itemType, &item, &picRect);
				GetDialogItemText(item, tempString);
				CopyString(address, "\pmailto:");
				for (int i = 1; i <= tempString[0]; i++)
					address[7+i] = tempString[i];
				address[0] += tempString[0];
				dialogDone = true;
				if (LaunchURL((ConstStr255Param)address) != noErr)
					DisplayAlert("Can't launch URL.", "Internet Config must be installed");
				break;
			case kHomepageAddress:
				GetDialogItem(aboutBox, kHomepageAddress, &itemType, &item, &picRect);
				GetDialogItemText(item, address);
				dialogDone = true;
				if (LaunchURL((ConstStr255Param)address) != noErr)
					DisplayAlert("Can't launch URL.", "Internet Config must be installed");
				break;
			case kOk: dialogDone = true; break;
			case kAboutPic:
				if (IsKeyPressed(0x3A))
				{
					DisplayAlert("","Dedicated to Caterina!");
					dialogDone = true;
					break;
				}
		}
	}
	DisposeDialog(aboutBox);
	RESTOREGWORLD;
}

void GenerateRegNo(Str255 name, Str255 regNo)
{
	long i;
	
	regNo[0] = 6;
	
	for (i=1; i <= 6; i++)
		regNo[i] = (name[i] % 10);
	for (i=1; i <= 6; i++)
		regNo[i] = ((regNo[i] + name[i+6]) % 10);
	for (i=1; i <=6; i++)
		regNo[i] = ((regNo[i] + name[i+12]) % 10);
	for (i=1; i <=6; i++)
		regNo[i] = ((regNo[i] + name[i+18]) % 10);
	
	regNo[1] = ((regNo[1] + 2) % 10) + '0';
	regNo[2] = ((regNo[2] + 4) % 10) + '0';
	regNo[3] = ((regNo[3] + 0) % 10) + '0';
	regNo[4] = ((regNo[4] + 9) % 10) + '0';
	regNo[5] = ((regNo[5] + 9) % 10) + '0';
	regNo[6] = ((regNo[6] + 8) % 10) + '0';	
}

void Register()
{
	DialogPtr		registration;
	bool			dialogDone;
	short			itemHit;
	Handle			item;
	short			itemType;
	Rect			itemRect;
	Str255			name, regNo, enteredRegNo, company;
	FSSpec			registerSpec;
	MenuHandle		menu;
	SAVEGWORLD;
	
	registration = GetNewDialog (registrationID, nil, (WindowPtr)-1L);
	SetPort( registration);
	SetDialogDefaultItem(registration, kRegister);
	SetDialogCancelItem(registration, kCancel);
	
	ShowWindow( registration );
	
	dialogDone = false;
	while (!dialogDone)
	{
		ModalDialog(nil, &itemHit);
		
		switch (itemHit)
		{
			case kRegister:
				GetDialogItem(registration, kNameField, &itemType, &item, &itemRect);
				GetDialogItemText(item, name);
				for (int i= name[0] + 1; i <= 24; i++)
					name[i] = ' ';
				name[0] = 24;
				GenerateRegNo(name, regNo);
				GetDialogItem(registration, kRegNoField, &itemType, &item, &itemRect);
				GetDialogItemText(item, enteredRegNo);
				if (EqualString(regNo, enteredRegNo, true, true))
				{
					GetDialogItem(registration, kCompanyField, &itemType, &item, &itemRect);
					GetDialogItemText(item, company);
					//CopyString((**preferences).name, name);
					//CopyString((**preferences).company, company);
					//CopyString((**preferences).regNo, regNo);
					DisposeDialog(registration);
					RESTOREGWORLD;
					DisplayAlert("","Thank you for registering clip2icns");
					menu = GetMenuHandle(mApple);
					DisableItem(menu, iRegister);
					return;
				}
				else
					DisplayAlert("The registration code that you have typed is incorrect.", "Please enter it EXACTLY as it is shown in the email that you have received");
				break;	
			case kCancel: dialogDone = true; break;
			case kLaunchRegister:
				if (FSMakeFSSpec(0, 0, "\p:Register", &registerSpec) != noErr)
				{
					DisplayAlert("Couldn't find the \"Register\" application", "Please reinstall clip2icns");
				}
				else
				{
					DisposeDialog(registration);
					RESTOREGWORLD;
					SendFinderAEOpen(registerSpec);
					return;
				}
				break;
		}
		
	}
	DisposeDialog(registration);
	RESTOREGWORLD;
}

void HandleFileChoice(int item)
{
	switch (item)
	{
		case iNewIcon : NewIcon(); break;
		case iOpenIcon : OpenIcon(NULL); break;
		case iClose : CloseIcon(); break;
		case iSave: SaveIcon(false); break;
		case iSaveAs : SaveIcon(true); break;
		case iQuit :gIsDone = true; break;
	}
}

void NewIcon()
{
	icnsEditorPtr newEditor;
	
	if (gFirstEditor == NULL)
		ToggleMenus();
	
	newEditor = new icnsEditorClass(gLastEditor);
	gLastEditor = newEditor;
	if (gFirstEditor == NULL)
		gFirstEditor = newEditor;
}

void OpenIcon(FSSpec *fileToOpen)
{
	long			ID;
	OSStatus		err;
	
	if (fileToOpen == NULL)
	{
		fileToOpen = (FSSpec *)NewPtr(sizeof(FSSpec));
		err = GetFile("\pIcon Mangler", '****', '****', fileToOpen);
	}
	
	
	if (err == noErr)
	{	
		err = IconBrowser(*fileToOpen, &ID);
		if (err != noErr)
		{
			if (err == noIconsErr)
				DoError(rStdErrors, eNoIcons);
				//DisplayAlert("The file you selected has no icon resources to edit", "");
			return;
		}
		NewIcon();
		gLastEditor->ID = ID;
		gLastEditor->LoadFromFile(*fileToOpen);
		SAVEGWORLD;
		SetPort(gLastEditor->window);
		InvalRgn(gLastEditor->window->visRgn);
		gLastEditor->Refresh();
		
		RESTOREGWORLD;
	}
}

void CloseIcon()
{
	icnsEditorPtr	frontEditor;
	
	frontEditor = GetFrontEditor();
	
	if (frontEditor != NULL)
		frontEditor->Close(&gLastEditor, &gFirstEditor);
	
	if (gLastEditor == NULL && gFirstEditor == NULL)
		ToggleMenus();
}

void SaveIcon(bool saveAs)
{
	icnsEditorPtr	frontEditor;
	
	frontEditor = GetFrontEditor();
	
	if (frontEditor != NULL)
	{
		if (saveAs)
			frontEditor->SaveAs();
		else
			frontEditor->Save();
	}
}

void HandleEditChoice(int item)
{
	icnsEditorPtr	frontEditor;
	frontEditor = GetFrontEditor();
	switch (item)
	{
		case iUndo:
			if (frontEditor != NULL)
				frontEditor->Undo();
			break;
		case iRedo:
			if (frontEditor != NULL)
				frontEditor->Redo();
			break;
		case iCut:
			if (frontEditor != NULL)
				frontEditor->Cut();
			break;
		case iCopy:
			if (frontEditor != NULL)
				frontEditor->Copy();
			break;
		case iPaste :
			if (frontEditor != NULL)
				frontEditor->Paste();
			break;
		case iClear :
			if (frontEditor != NULL)
				frontEditor->Clear();
			break;
		case iPreferences : SetPreferences(); break;
	}
}

void HandleSelectChoice(int item)
{
	icnsEditorPtr	frontEditor;
	
	frontEditor = GetFrontEditor();
	if (frontEditor == NULL)
		return;
	switch (item)
	{
		case iAll : frontEditor->Select(all); break;
		case iNone : frontEditor->Select(none); break;
		case iInverse : frontEditor->Select(inverse); break;
	}
}

void HandleTransformChoice(int item)
{
	icnsEditorPtr	frontEditor;
	
	frontEditor = GetFrontEditor();
	if (frontEditor == NULL)
		return;
	switch (item)
	{
		case iRotateCW : frontEditor->Rotate(90); break;
		case iRotateCCW : frontEditor->Rotate(-90); break;
		case iFlipHorizontal : frontEditor->FlipHorizontal(); break;
		case iFlipVertical : frontEditor->FlipVertical(); break;
	}
}

void SetPreferences(void)
{
	/*bool			dialogDone = false;
	DialogPtr		preferencesDialog;
	ControlHandle	includeOldStyle, setBits, generateOldStyle, nameResources;
	Rect			itemRect;
	short			itemHit, itemType;
	
	preferencesDialog = GetNewDialog(preferencesID, NULL, (WindowPtr)-1L);
	SetPort(preferencesDialog);
	
	SetDialogDefaultItem(preferencesDialog, kOk);
	SetDialogCancelItem(preferencesDialog, kCancel);
	
	GetDialogItem(preferencesDialog, kIncludeOldStyle, &itemType, &((Handle)includeOldStyle), &itemRect);
	GetDialogItem(preferencesDialog, kSetBits, &itemType, &((Handle)setBits), &itemRect);
	GetDialogItem(preferencesDialog, kGenerateOldStyle, &itemType, &((Handle)generateOldStyle), &itemRect);
	GetDialogItem(preferencesDialog, kNameResources, &itemType, &((Handle)nameResources), &itemRect);
	
	SetControlValue(includeOldStyle, (**preferences).includeOldStyle);
	SetControlValue(setBits, (**preferences).setBits);
	SetControlValue(generateOldStyle, (**preferences).generateOldStyle);
	SetControlValue(nameResources, (**preferences).nameResources);
	
	ShowWindow(preferencesDialog);
	
	while(!dialogDone)
	{
		ModalDialog(NULL, &itemHit);
		switch (itemHit)
		{
			case kOk:
				dialogDone = true;
				(**preferences).includeOldStyle = GetControlValue(includeOldStyle);
				(**preferences).setBits = GetControlValue(setBits);
				(**preferences).generateOldStyle = GetControlValue(generateOldStyle);
				(**preferences).nameResources = GetControlValue(nameResources);
				break;
			case kCancel: dialogDone = true; break;
			case kIncludeOldStyle: ToggleCheckbox(includeOldStyle); break;
			case kSetBits: ToggleCheckbox(setBits); break;
			case kGenerateOldStyle: ToggleCheckbox(generateOldStyle); break;
			case kNameResources: ToggleCheckbox(nameResources); break;
		}
	}

	DisposeDialog(preferencesDialog);
	SetGWorld(globals.startupPort, globals.startupDevice);*/
}

void HandleViewChoice(int item)
{
	icnsEditorPtr	frontEditor;
	
	frontEditor = GetFrontEditor();
	
	switch (item)
	{
		case iZoomIn : frontEditor->ZoomIn(); break;
		case iZoomOut : frontEditor->ZoomOut(); break;
	}
}

void CleanUp(void)
{
	/*OSStatus	err;
	FSSpec		preferencesFile;
	short		preferencesRefNum;
	short		myVRef;
	long		myDirID;
	Handle		oldPrefs;

	err = FindFolder(kOnSystemDisk, kPreferencesFolderType, kDontCreateFolder, &myVRef, &myDirID);
	if (err == noErr)
		err = FSMakeFSSpec(myVRef, myDirID, "\pclip2icns Preferences", &preferencesFile);
	
	if (err == noErr)
		preferencesRefNum = FSpOpenResFile(&preferencesFile, fsRdWrPerm);
	
	
	
	if ((preferencesRefNum != -1) && (err == noErr))
	{
		UseResFile(preferencesRefNum);
		oldPrefs = Get1Resource('Pref', 128);
		if (oldPrefs != NULL)
		{
			RemoveResource(oldPrefs);
			UpdateResFile(preferencesRefNum);
			CloseResFile(preferencesRefNum);
			UseResFile(appFile);
			preferencesRefNum = FSpOpenResFile(&preferencesFile, fsRdWrPerm);
			UseResFile(preferencesRefNum);
		}
		if (preferences == NULL)
			DisplayAlert("NULL", "");
		AddResource((Handle)preferences, 'Pref', 128, "\p");
		ChangedResource((Handle)preferences);
		WriteResource((Handle)preferences);
		UpdateResFile(preferencesRefNum);
		CloseResFile(preferencesRefNum);
		UseResFile(appFile);
	}
	else
	{
		DisplayAlert("Problem saving preferences", "");
	}
	HUnlock((Handle)preferences);
	DisposeHandle((Handle)preferences);*/
	icnsEditorClass::DisposeStatics();
	ExitApplication();
}

void DoError(int resourceID, int stringNo)
{
	AlertStdAlertParamRec	param;
	Str255					text;
	OSStatus				err;
	short					itemHit;
	ModalFilterUPP			eventFilterUPP;
	
	GetIndString(text, resourceID, stringNo);
	
	eventFilterUPP = NewModalFilterProc((ProcPtr) EventFilter);
	
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

pascal bool	EventFilter(DialogPtr dialogPtr,EventRecord *eventStrucPtr,SInt16 *itemHit)
{
	Boolean	handledEvent;
	GrafPtr	oldPort;

	handledEvent = false;
	
	if((eventStrucPtr->what == updateEvt) && 
		 ((WindowPtr) eventStrucPtr->message != dialogPtr))
	{
		HandleUpdate(eventStrucPtr);
	}
	else
	{
		GetPort(&oldPort);
		SetPort(dialogPtr);

		handledEvent = StdFilterProc(dialogPtr,eventStrucPtr,itemHit);

		SetPort(oldPort);
	}

	return(handledEvent);
}
