#include "clip2icns.h"

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
	
	InitToolBox();
	
	GetGWorld(&startupPort, &startupDevice);
	
#ifdef __expires__
	GetTime(&theDate);
	/* in case I can't access the source (and don't feel like setting the clock back)
	I can simply change (or remove) the STR resource 128 and then the expiration date will
	be ignored */
	expirationBackDoor = GetString( 128 );
	if (EqualString(*expirationBackDoor, "\p1", true, true))
	{
		if (theDate.month >= 11 && theDate.day >= 1 && theDate.year >= 1998)
		{
			DisplayAlert("This beta of clip2icns expired on November 1, 1998.", "Please go to http://cafe.ambrosiasw.com/gui-central/clip2cicn.html to get a new version");
			ExitApplication();
		}
	}
#endif __expires__

	InitMenuBar();
	
	AppleEventInit();
	
	isDone = false;
	navServicesAvailable = NavServicesAvailable();
	appFile = CurResFile();
	
	LoadPreferences();
}

void InitMenuBar()
{
	Handle		menuBar;
	MenuHandle	menu;
	
	menuBar = GetNewMBar( kMenuBarID );
	SetMenuBar(menuBar);
	
	menu = GetMenuHandle ( mApple );
	AppendResMenu (menu, 'DRVR' );
	// we're adding all the items in the Apple Menu Items folder, like any good mac app should
	
	DrawMenuBar();
}

void LoadPreferences(void)
{
	OSStatus			err;
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
			/* some people might attemp to edit the preferences since they want their own name
			in the about box registration field (if they didn't register the software themselves */
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
		FSpCreate(&preferencesFile, 'c2ic', 'Pref', 0); /*smRoman = 0*/
		FSpCreateResFile(&preferencesFile, 'c2ic', 'Pref', 0); /*smRoman = 0*/
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
			if (CheckClipboard())
			{
				schemeSpec = desc;
				GeticnsID(false);	
			}
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
	isDone = true;
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

	while (!isDone)
	{
		if (WaitNextEvent (everyEvent, &event, 60, nil))
		{
			DoEvent (&event);
		}
	}
}

void DoEvent(EventRecord *eventPtr)
{
	switch (eventPtr->what)
	{
		case mouseUp: HandleMouseUp(eventPtr); break;
		case mouseDown: HandleMouseDown(eventPtr); break;
		case autoKey:
		case keyDown: HandleKeyDown(eventPtr); break;
		case updateEvt: HandleUpdate(eventPtr); break;
		case activateEvt: break;
		case kHighLevelEvent: 
				if (AEProcessAppleEvent(eventPtr) != noErr)
				{ /* error - ignored */ };
				break;
	}
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

	part = FindWindow(eventPtr->where, &thisWindow);
	switch (part)
	{
		case inMenuBar :
			menuChoice = MenuSelect( eventPtr->where);
			DoMenuCommand(menuChoice);
			break;
		case inSysWindow :
			SystemClick(eventPtr, thisWindow);
			break;
		case inDrag :
			mainScreen = GetMainDevice();
			DragWindow( thisWindow, eventPtr->where, &( ( *mainScreen )->gdRect ));
			break;
		//case inGoAway : if (TrackGoAway(previewWindow, eventPtr->where) ) CloseScheme(); break;	
	}
}

void HandleKeyDown(EventRecord *eventPtr)
{
	char	theKey;
	
	theKey = eventPtr->message & charCodeMask;
	if ( (eventPtr->modifiers & cmdKey) != 0)
		DoMenuCommand(MenuKey(theKey));
}

void HandleUpdate(EventRecord *eventPtr)
{
	WindowPtr windowToUpdate;
	
	windowToUpdate = (WindowPtr)eventPtr->message;

	if (GetWRefCon(windowToUpdate) == 0)
	{
		BeginUpdate(windowToUpdate);
		//DisplayParts(&documentWParts, displayedParts);
		EndUpdate(windowToUpdate);
	}
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
			case mApple :	HandleAppleChoice(menuItem); break;
			case mFile :	HandleFileChoice(menuItem); break;
			case mEdit :	HandleEditChoice(menuItem); break;
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
	
	aboutBox = GetNewDialog (aboutBoxID, nil, (WindowPtr)-1L);
	SetPort( aboutBox);
	SetDialogDefaultItem(aboutBox, kOk);
	
	ShowWindow( aboutBox );
	GetDialogItem(aboutBox, kNameField, &itemType, &item, &picRect);
	SetDialogItemText(item, (**preferences).name);
	GetDialogItem(aboutBox, kCompanyField, &itemType, &item, &picRect);
	SetDialogItemText(item, (**preferences).company);
	
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
	SetGWorld(startupPort, startupDevice);
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
					CopyString((**preferences).name, name);
					CopyString((**preferences).company, company);
					CopyString((**preferences).regNo, regNo);
					DisposeDialog(registration);
					SetGWorld(startupPort, startupDevice);
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
					SetGWorld(startupPort, startupDevice);
					SendFinderAEOpen(registerSpec);
					return;
				}
				break;
		}
		
	}
	DisposeDialog(registration);
	SetGWorld(startupPort, startupDevice);
}

void HandleFileChoice(int item)
{
	switch (item)
	{
		case iNewIcon : NewIcon(); break;
		case iInsertIcns : Inserticns(); break;
		case iExportIcns : Exporticns(); break;
		case iQuit :isDone = true; break;
	}
}

void NewIcon()
{
OSStatus	theErr;
	if (CheckClipboard())
	{
		if (navServicesAvailable)
			theErr = NewIconNav();
		else
			theErr = NewIconOld();
		if (theErr == noErr)
			GeticnsID(true);
	}
}

OSStatus NewIconNav()
{
	NavDialogOptions	dialogOptions;
	NavReplyRecord		reply;
	NavEventUPP			eventUPP;
	AEDesc				resultDesc;
	OSStatus			theErr;
	
	
	UseResFile(appFile);
	
	eventUPP = NewNavEventProc(DummyFunction);
	
	NavGetDefaultDialogOptions ( &dialogOptions );
	dialogOptions.dialogOptionFlags -= kNavAllowMultipleFiles;
	dialogOptions.dialogOptionFlags += kNavNoTypePopup;
	dialogOptions.dialogOptionFlags -= kNavAllowPreviews;
	CopyString(dialogOptions.clientName, "\pclip2icns");
	CopyString(dialogOptions.savedFileName, "\p32 Bit Icon");
	
	theErr = NavPutFile(NULL,	// use system's default location
			   &reply,
			   &dialogOptions,
			   eventUPP,
			   'Icon',
			   'c2ci',
			   NULL);
					
	DisposeRoutineDescriptor(eventUPP);
	
	if (reply.validRecord)
	{
		AEGetNthDesc( &(reply.selection), 1, typeFSS, NULL, &resultDesc );

		GetFSSpecFromAEDesc(resultDesc, schemeSpec);
		
		NavDisposeReply(&reply);
		AEDisposeDesc(&resultDesc);
		return noErr;
	}
	else
	{
		NavDisposeReply(&reply);
		return paramErr;
	}		   
}

OSStatus NewIconOld()
{
	StandardFileReply reply;

	StandardPutFile("\pCreate a new icon:", "\p32 Bit Icon", &reply);

	if ( reply.sfGood )
	{
		schemeSpec = reply.sfFile;	
		return noErr;
	}
	return paramErr;
}



void Inserticns()
{
OSStatus	theErr;
	if (CheckClipboard())
	{
		if (navServicesAvailable)
			theErr = GetFileNav();
		else
			theErr = GetFileOld();
		if (theErr == noErr)
			GeticnsID(false);
	}
}

bool CheckClipboard()
{
	Handle				pic;
	long				offset;
	PictInfo			picInfo;
	
	pic = NewHandle (0);
	if (GetScrap( pic, 'PICT', &offset ) < 0)
	{
		DisplayAlert("", "The clipboard is either empty or doesn't contain a picture");
		DisposeHandle(pic);
		return false;
	}
	
	GetPictInfo((PicHandle)pic, &picInfo, 0, 0, 0, 0);
	
	if ((picInfo.sourceRect.bottom == 32) &&
		((picInfo.sourceRect.right == 64) ||
		(picInfo.sourceRect.right == 80) ||
		(picInfo.sourceRect.right == 16)))
	{
		;
	}
	else
	{
		DisplayAlert("", "The clipboard picture isn't 80x32,64x32, or 16x32");
		DisposeHandle(pic);
		return false;
	}
	
	if ((picInfo.hRes != 0x00480000) || (picInfo.vRes != 0x00480000))
	{
		DisplayAlert("", "The clipboard picture must be at 72 dpi");
		DisposeHandle(pic);
		return false;
	}
	
	DisposeHandle(pic);
	return true;
}

OSStatus GetFileNav()
{
	NavDialogOptions	dialogOptions;
	NavReplyRecord		reply;
	NavEventUPP			eventUPP;
	AEDesc				resultDesc;
	
	
	UseResFile(appFile);
	
	eventUPP = NewNavEventProc(DummyFunction);
	
	NavGetDefaultDialogOptions ( &dialogOptions );
	dialogOptions.dialogOptionFlags -= kNavAllowMultipleFiles;
	dialogOptions.dialogOptionFlags += kNavNoTypePopup;
	dialogOptions.dialogOptionFlags -= kNavAllowPreviews;
	CopyString(dialogOptions.clientName, "\pclip2icns");
	
	NavGetFile(NULL,
			   &reply,
			   &dialogOptions,
			   eventUPP,
			   NULL,
			   NULL,
			   NULL,
			   NULL);
	
	if (reply.validRecord)
	{
		AEGetNthDesc( &(reply.selection), 1, typeFSS, NULL, &resultDesc );

		GetFSSpecFromAEDesc(resultDesc, schemeSpec);
	
		NavDisposeReply(&reply);
		AEDisposeDesc(&resultDesc);
		DisposeRoutineDescriptor(eventUPP);
		return noErr;
	}
	else
	{
		DisposeRoutineDescriptor(eventUPP);
		NavDisposeReply(&reply);
		return paramErr;
	}		   
}


OSStatus GetFileOld()
{
	StandardFileReply	reply;
	//SFTypeList			typeList;
	
	//typeList[0] = schemeFileType;
	
	StandardGetFile(nil, 1, NULL, &reply);
	if ( reply.sfGood)
	{
		schemeSpec = reply.sfFile;
		return noErr;
	}
	return paramErr;
}

void Exporticns()
{
	OSStatus	theErr;
	
	if (navServicesAvailable)
		theErr = GetFileNav();
	else
		theErr = GetFileOld();
	if (theErr == noErr)
		GetExporticns();
}


void DrawImageWell(Rect bounds)
{
	RGBColor		currentForeColor;
	CTabHandle		schemeColors;
	RGBColor		borderBR = {0, 0, 0};
	RGBColor		borderTL = {0, 0, 0};
	RGBColor		bevelBR = {0xFFFF, 0xFFFF, 0xFFFF};
	RGBColor		bevelTL = {39321, 39321, 39321};
	
	
	GetForeColor(&currentForeColor);
	schemeColors = GetCTable(-14336);
	if (schemeColors != NULL)
	{
		borderBR = (**schemeColors).ctTable[0].rgb;
		borderTL = (**schemeColors).ctTable[2].rgb;
		bevelBR = (**schemeColors).ctTable[3].rgb;
		bevelTL = (**schemeColors).ctTable[4].rgb;
	}
	
	ForeColor(whiteColor);
	PaintRect(&bounds);
	
	RGBForeColor(&borderBR);
	MoveTo(bounds.left - 1, bounds.bottom);
	LineTo(bounds.left - 1, bounds.top - 1);
	LineTo(bounds.right, bounds.top - 1);
	
	RGBForeColor(&borderTL);
	LineTo(bounds.right, bounds.bottom);
	LineTo(bounds.left - 1, bounds.bottom);

	RGBForeColor(&bevelBR);
	MoveTo(bounds.left - 2, bounds.bottom + 1);
	LineTo(bounds.right + 1, bounds.bottom + 1);
	LineTo(bounds.right + 1, bounds.top);
	
	RGBForeColor(&bevelTL);
	MoveTo(bounds.left-2, bounds.bottom);
	LineTo(bounds.left-2, bounds.top-2);
	LineTo(bounds.right, bounds.top-2);
	
	RGBForeColor(&currentForeColor);
}

#define Refresh()\
{\
	GetMenuItemText(GetMenu(currentMenuID), selectedIcns, menuItemText);\
	CopyString(IDAsString, menuItemText);\
	for (i=1; IDAsString[i] != ' '; i++){;}\
	if (IDAsString[1] == 208) IDAsString[1] = '-';\
	IDAsString[0] = i-1;\
	GetDialogItem(insertIcns, kIDField, &itemType, &item, &itemRect);\
	SetDialogItemText(item, IDAsString);\
	SelectDialogItemText( insertIcns, kIDField, 0, 32767);\
	StringToNum(IDAsString, &ID);\
	if (!createFile)\
	{\
		scheme = FSpOpenResFile(&schemeSpec, fsRdWrPerm);\
		UseResFile(scheme);\
		if (Get1Resource('icns', ID) || Get1Resource('icl8', ID) || Get1Resource('ics8', ID))\
		{\
			FillCRect(&iconPreviewRect, desktopPattern);\
			currenticns.ID = ID;\
			currenticns.Load();\
			currenticns.Display(currentLargeIconRect);\
			currenticns.Display(currentSmallIconRect);\
		}\
		else\
		{\
			GetDialogItem(insertIcns, kCurrentIconPreview, &itemType, &item, &sourceRect);\
			x = sourceRect.left + (sourceRect.right - sourceRect.left)/2 - StringWidth("\pNot Available")/2;\
			y = sourceRect.top + (sourceRect.bottom - sourceRect.top)/2 + 6;\
			FillCRect(&iconPreviewRect, desktopPattern);\
			MoveTo(x, y);\
			DrawString("\pNot Available");\
		}\
		CloseResFile(scheme);\
		UseResFile(appFile);\
	}\
	else\
	{\
		GetDialogItem(insertIcns, kCurrentIconPreview, &itemType, &item, &sourceRect);\
		x = sourceRect.left + (sourceRect.right - sourceRect.left)/2 - StringWidth("\pNot Available")/2;\
		y = sourceRect.top + (sourceRect.bottom - sourceRect.top)/2 + 6;\
		FillCRect(&iconPreviewRect, desktopPattern);\
		MoveTo(x, y);\
		DrawString("\pNot Available");\
	}\
}
				

void GeticnsID(bool createFile)
{
	DialogPtr			insertIcns;
	bool				dialogDone;
	short				itemHit;
	Rect				itemRect;
	long				ID;
	Handle				item;
	short				itemType;
	short				scheme;
	Str255				errorNumber;
	Rect				popupRect;
	int					selectedIcns, i, selectedType=1, currentMenuID = 201;
	Str255				IDAsString, menuItemText, icnsName;
	Rect				sourceRect, largeIconRect={0,0,32, 32}, smallIconRect = {0, 0, 16, 16};
	Rect				clipboardPreviewRect, iconPreviewRect, tempRect;
	PixPatHandle		desktopPattern;
	Rect				currentLargeIconRect, currentSmallIconRect;
	icnsClass			currenticns, clipboardicns;
	int					x, y;
	FInfo				fileInfo;
	
	scheme = FSpOpenResFile(&schemeSpec, fsRdPerm);
	if (!createFile && scheme == -1)
	{
		switch (ResError())
		{
			case noErr:
				break;
			case opWrErr:
				DisplayAlert("You can't edit this file since it's currently open in another application.", "Please close it and try again");
				return;
				break;
			case -39:
				//DisplayAlert("", "This file doesn't have a resource fork and therefore it cannot be edited");
				//return;
				FSpGetFInfo(&schemeSpec, &fileInfo);
				FSpCreateResFile(&schemeSpec, fileInfo.fdCreator, fileInfo.fdType, 0); /*smRoman = 0*/
				break;
			default:
				NumToString(ResError(), errorNumber);
				DisplayPAlert("\pSomething happened that wasn't supposed to happen. Error of type: ", errorNumber);
				return;
				break;
		}
	}
	CloseResFile(scheme);
	UseResFile(appFile);
	
	insertIcns = GetNewDialog (inserticnsID, nil, (WindowPtr)-1L);
	SetPort( insertIcns);
	SetDialogDefaultItem(insertIcns, kInsert);
	SetDialogCancelItem( insertIcns, kCancel );
	SelectDialogItemText( insertIcns, kIDField, 0, 32767);
	
	GetDialogItem(insertIcns, kIconPopup, &itemType, &item, &popupRect);
		
	desktopPattern = GetPixPat(16);
	GetDialogItem(insertIcns, kClipboardPreview, &itemType, &item, &clipboardPreviewRect);
	DrawImageWell(clipboardPreviewRect);
	FillCRect(&clipboardPreviewRect, desktopPattern);
	GetDialogItem(insertIcns, kCurrentIconPreview, &itemType, &item, &iconPreviewRect);
	DrawImageWell(iconPreviewRect);
	FillCRect(&iconPreviewRect, desktopPattern);
	
	clipboardicns.ImportFromClipboard();
	
	GetDialogItem(insertIcns, kClipboardPreview, &itemType, &item, &sourceRect);
	sourceRect.left += (sourceRect.right - sourceRect.left)/2;
	tempRect = largeIconRect;
	MakeTargetRect(sourceRect, &tempRect);
	clipboardicns.Display(tempRect);
	
	GetDialogItem(insertIcns, kClipboardPreview, &itemType, &item, &sourceRect);
	sourceRect.right -= (sourceRect.right - sourceRect.left)/2;
	tempRect = smallIconRect;
	MakeTargetRect(sourceRect, &tempRect);
	clipboardicns.Display(tempRect);
	
	SetPort(insertIcns);

	GetDialogItem(insertIcns, kCurrentIconPreview, &itemType, &item, &sourceRect);
	sourceRect.left += (sourceRect.right - sourceRect.left)/2;
	currentLargeIconRect = largeIconRect;
	MakeTargetRect(sourceRect, &currentLargeIconRect);
	
	GetDialogItem(insertIcns, kCurrentIconPreview, &itemType, &item, &sourceRect);
	sourceRect.right -= (sourceRect.right - sourceRect.left)/2;
	currentSmallIconRect = smallIconRect;
	MakeTargetRect(sourceRect, &currentSmallIconRect);
	
	if (!createFile)
	{
		scheme = FSpOpenResFile(&schemeSpec, fsRdWrPerm);
		UseResFile(scheme);
		currenticns.ID = -16455;
		currenticns.Load();
		currenticns.Display(currentLargeIconRect);
		currenticns.Display(currentSmallIconRect);
		CloseResFile(scheme);
		UseResFile(appFile);
	}
	
	ShowWindow( insertIcns );

	dialogDone = false;
	while (!dialogDone)
	{
		ModalDialog(nil, &itemHit);
		switch (itemHit)
		{
			
			case kInsert: 
				GetDialogItem(insertIcns, kIDField, &itemType, &item, &itemRect);
				GetDialogItemText(item, IDAsString);
				StringToNum(IDAsString, &ID);
				if ((**preferences).nameResources)
					GetIconName(ID, icnsName);
				else
					CopyString(icnsName, "\p");
				dialogDone = true;
				DisposePixPat(desktopPattern);
				DisposeDialog( insertIcns );
				UseResFile(appFile);
				SetGWorld(startupPort, startupDevice);
				if (createFile)
					clip2icns(ID, icnsName, createFile);
				else
					clip2icns(ID, icnsName, 0);
				return;
				break;
			case kCancel:
				dialogDone = true;
				break;
			case kTypesPopup:

				GetDialogItem(insertIcns, kTypesPopup, &itemType, &item, &itemRect);
				selectedType = GetControlValue((ControlHandle)item);
				GetDialogItem(insertIcns, kIconPopup, &itemType, &item, &itemRect);
				DisposeControl((ControlHandle)item);
				(ControlHandle)item = NewControl(insertIcns,
												 &popupRect,
												 "\pIcon:",
												 true,
												 0,
												 selectedType + 200,
												 50,
												 popupMenuProc + popupFixedWidth,
												 0);
				
				currentMenuID = selectedType + 200;
				(**(PopupPrivateDataHandle)(**(ControlHandle)item).contrlData).mID = currentMenuID;
				(**(PopupPrivateDataHandle)(**(ControlHandle)item).contrlData).mHandle = GetMenu(currentMenuID);
				if ((ControlHandle)item == NULL)
					SysBeep(20);
				Draw1Control((ControlHandle)item);
				
				selectedIcns = 1;
				Refresh();
				
				break;
			case kIconPopup:
				GetDialogItem(insertIcns, kIconPopup, &itemType, &item, &itemRect);
				selectedIcns = GetControlValue((ControlHandle)item);
				
				Refresh();
				
				break;
		}
	}
	if (!createFile)
	{
		CloseResFile(scheme);
		UseResFile(appFile);
	}
	DisposePixPat(desktopPattern);
	DisposeDialog(insertIcns);
	SetGWorld(startupPort, startupDevice);
}
			
void GetIconName(int ID, Str255 name)
{
	MenuHandle	currentMenu;
	int			itemCount;
	int			IDLength;
	int			menuLength;
	Str255		menuItemText, IDAsString;
	
	CopyString(name, "\p ");
	
	NumToString(ID, IDAsString);
	
	IDLength = IDAsString[0];
	
	if (IDAsString[1] == '-')
		IDAsString[1] = 'Ð';
	
	for (int i = 0; i < menuCount; i++)
	{
		UseResFile(appFile);
		currentMenu = (MenuHandle) Get1Resource('MENU', baseMenuID + i);
		
		if (currentMenu == NULL)
			DisplayValue(baseMenuID + i);
		
		itemCount = CountMItems(currentMenu);
		
		for (int j = 1; j <= itemCount; j++)
		{
			GetMenuItemText(currentMenu, j, menuItemText);			
			
			menuLength = menuItemText[0];
			
			menuItemText[0] = IDLength;
			
			if (EqualString(IDAsString, menuItemText, true, true))
			{
				CopyString(name, &(menuItemText[IDLength + 1]));
				name[0] = menuLength - IDLength;
				name[menuLength - IDLength] = ' ';
			}
		}
	}
}

#define ExportRefresh()\
{\
	DrawImageWell(iconPreviewRect);\
	DrawImageWell(exportPreviewRect);\
	GetMenuItemText(GetMenu(currentMenuID), selectedIcns, menuItemText);\
	CopyString(IDAsString, menuItemText);\
	for (i=1; IDAsString[i] != ' '; i++){;}\
	if (IDAsString[1] == 208) IDAsString[1] = '-';\
	IDAsString[0] = i-1;\
	GetDialogItem(exporticns, kIDField, &itemType, &item, &itemRect);\
	SetDialogItemText(item, IDAsString);\
	SelectDialogItemText( exporticns, kIDField, 0, 32767);\
	StringToNum(IDAsString, &ID);\
	scheme = FSpOpenResFile(&schemeSpec, fsRdPerm);\
	UseResFile(scheme);\
	if (Get1Resource('icns', ID) || Get1Resource('icl8', ID) || Get1Resource('ics8', ID))\
	{\
		GetDialogItem(exporticns, kExport, &itemType, &item, &sourceRect);\
		HiliteControl((ControlHandle)item,0);\
		FillCRect(&iconPreviewRect, desktopPattern);\
		currenticns.ID = ID;\
		currenticns.Load();\
		currenticns.Display(currentLargeIconRect);\
		currenticns.Display(currentSmallIconRect);\
		currenticns.ExportToPixMap(clipboardPix);\
		LockPixels(clipboardPix);\
		GetForeColor(&oldForeColor);\
		GetBackColor(&oldBackColor);\
		ForeColor(blackColor);\
		BackColor(whiteColor);\
		CopyBits((BitMap*)*clipboardPix, &exporticns->portBits, &clipboardRect, &exportTargetRect, srcCopy, NULL);\
		RGBForeColor(&oldForeColor);\
		RGBBackColor(&oldBackColor);\
		UnlockPixels(clipboardPix);\
	}\
	else\
	{\
		GetDialogItem(exporticns, kExport, &itemType, &item, &sourceRect);\
		HiliteControl((ControlHandle)item,255);\
		GetDialogItem(exporticns, kIconPreview, &itemType, &item, &sourceRect);\
		x = sourceRect.left + (sourceRect.right - sourceRect.left)/2 - StringWidth("\pNot Available")/2;\
		y = sourceRect.top + (sourceRect.bottom - sourceRect.top)/2 + 6;\
		FillCRect(&iconPreviewRect, desktopPattern);\
		MoveTo(x, y);\
		DrawString("\pNot Available");\
		GetDialogItem(exporticns, kExportPreview, &itemType, &item, &sourceRect);\
		x = sourceRect.left + (sourceRect.right - sourceRect.left)/2 - StringWidth("\pNot Available")/2;\
		y = sourceRect.top + (sourceRect.bottom - sourceRect.top)/2 + 6;\
		DrawImageWell(exportPreviewRect);\
		MoveTo(x, y);\
		DrawString("\pNot Available");\
	}\
	CloseResFile(scheme);\
	UseResFile(appFile);\
}

void GetExporticns(void)
{
	DialogPtr			exporticns;
	bool				dialogDone;
	short				itemHit;
	Rect				itemRect;
	long				ID;
	Handle				item;
	short				itemType;
	short				scheme;
	Str255				errorNumber;
	Rect				popupRect;
	int					selectedIcns=1, i, selectedType=1, currentMenuID = 201;
	Str255				IDAsString, menuItemText;
	GWorldPtr			clipboardGWorld;
	PixMapHandle		clipboardPix;
	Rect				clipboardRect = {0, 0, 32, 80};
	Rect				sourceRect, largeIconRect={0,0,32, 32}, smallIconRect = {0, 0, 16, 16};
	RGBColor			oldForeColor, oldBackColor;
	Rect				iconPreviewRect, exportPreviewRect, exportTargetRect;
	PixPatHandle		desktopPattern;
	Rect				currentLargeIconRect, currentSmallIconRect;
	icnsClass			currenticns;
	int					x, y;
	OpenCPicParams		picParams;
	PicHandle			pic;
	OSStatus			err;
	
	scheme = FSpOpenResFile(&schemeSpec, fsRdPerm);
	if (scheme == -1)
	{
		switch (ResError())
		{
			case noErr:
				break;
			case opWrErr:
				DisplayAlert("You can't edit this file since it's currently open in another application.", "Please close it and try again");
				return;
				break;
			case -39:
				DisplayAlert("", "This file doesn't have a resource fork and therefore it cannot be edited");
				return;
				break;
			default:
				NumToString(ResError(), errorNumber);
				DisplayPAlert("\pSomething happened that wasn't supposed to happen. Error of type: ", errorNumber);
				return;
				break;
		}
	}
	CloseResFile(scheme);
	UseResFile(appFile);
	
	exporticns = GetNewDialog (exporticnsID, nil, (WindowPtr)-1L);
	SetPort(exporticns);
	SetDialogDefaultItem(exporticns, kExport);
	SetDialogCancelItem( exporticns, kCancel );
	SelectDialogItemText( exporticns, kIDField, 0, 32767);
	
	GetDialogItem(exporticns, kIconPopup, &itemType, &item, &popupRect);
		
	desktopPattern = GetPixPat(16);
	GetDialogItem(exporticns, kIconPreview, &itemType, &item, &iconPreviewRect);
	DrawImageWell(iconPreviewRect);
	FillCRect(&iconPreviewRect, desktopPattern);
	GetDialogItem(exporticns, kExportPreview, &itemType, &item, &exportPreviewRect);
	DrawImageWell(exportPreviewRect);
	exportTargetRect = clipboardRect;
	MakeTargetRect(exportPreviewRect, &exportTargetRect);
	
	NewGWorld(&clipboardGWorld, 32, &clipboardRect, NULL, NULL, 0);
	clipboardPix = GetGWorldPixMap(clipboardGWorld);

	GetDialogItem(exporticns, kIconPreview, &itemType, &item, &sourceRect);
	sourceRect.left += (sourceRect.right - sourceRect.left)/2;
	currentLargeIconRect = largeIconRect;
	MakeTargetRect(sourceRect, &currentLargeIconRect);
	
	GetDialogItem(exporticns, kIconPreview, &itemType, &item, &sourceRect);
	sourceRect.right -= (sourceRect.right - sourceRect.left)/2;
	currentSmallIconRect = smallIconRect;
	MakeTargetRect(sourceRect, &currentSmallIconRect);
	
	ExportRefresh();	
	ShowWindow( exporticns );

	dialogDone = false;
	while (!dialogDone)
	{
		ModalDialog(nil, &itemHit);
		switch (itemHit)
		{
			case kExport:
				GetDialogItem(exporticns, kIDField, &itemType, &item, &itemRect);
				GetDialogItemText(item, IDAsString);
				StringToNum(IDAsString, &ID);
				dialogDone = true;
				scheme = FSpOpenResFile(&schemeSpec, fsRdWrPerm);
				UseResFile(scheme);
				currenticns.ID = ID;
				currenticns.Load();
				currenticns.ExportToPixMap(clipboardPix);
				CloseResFile(scheme);
				UseResFile(appFile);
				picParams.srcRect = clipboardRect;
				picParams.hRes =  0x00480000;
				picParams.vRes =  0x00480000;
				picParams.version = -2;
				picParams.reserved1 = 0;
				picParams.reserved2 = 0;
				pic = OpenCPicture(&picParams);
				ClipRect(&clipboardRect);
				ForeColor(blackColor);
				BackColor(whiteColor);
				CopyBits((BitMap*)*clipboardPix, &qd.thePort->portBits, &clipboardRect, &clipboardRect, srcCopy, NULL);
				ClosePicture();
				ZeroScrap();
				err = PutScrap(4556, 'PICT', *pic);
				if (err != noErr)
					DisplayValue(err);
				//KillPicture(pic);
				break;
			case kCancel:
				dialogDone = true;
				break;
			case kTypesPopup:

				GetDialogItem(exporticns, kTypesPopup, &itemType, &item, &itemRect);
				selectedType = GetControlValue((ControlHandle)item);
				GetDialogItem(exporticns, kIconPopup, &itemType, &item, &itemRect);
				DisposeControl((ControlHandle)item);
				(ControlHandle)item = NewControl(exporticns,
												 &popupRect,
												 "\pIcon:",
												 true,
												 0,
												 selectedType + 200,
												 50,
												 popupMenuProc + popupFixedWidth,
												 0);
				
				currentMenuID = selectedType + 200;
				(**(PopupPrivateDataHandle)(**(ControlHandle)item).contrlData).mID = currentMenuID;
				(**(PopupPrivateDataHandle)(**(ControlHandle)item).contrlData).mHandle = GetMenu(currentMenuID);
				if ((ControlHandle)item == NULL)
					SysBeep(20);
				Draw1Control((ControlHandle)item);
				
				selectedIcns = 1;
				ExportRefresh();
				
				break;
			case kIconPopup:
				GetDialogItem(exporticns, kIconPopup, &itemType, &item, &itemRect);
				selectedIcns = GetControlValue((ControlHandle)item);
				
				ExportRefresh();
				
				break;
		}
		
		
	}
	DisposeGWorld(clipboardGWorld);
	DisposePixPat(desktopPattern);
	DisposeDialog(exporticns);
	SetGWorld(startupPort, startupDevice);
}


void clip2icns(short icnsID, Str255 icnsName, int flags)
{
	icnsClass	clipboardicns;

	clipboardicns.ImportFromClipboard();
	
	if (flags & createFile)
	{
		FSpDelete(&schemeSpec);
		FSpCreate(&schemeSpec, 'RSED', 'rsrc', 0); /*smRoman = 0*/
		FSpCreateResFile(&schemeSpec, 'RSED', 'rsrc', 0); /*smRoman = 0*/
	}
	
	if ((**preferences).setBits && icnsID != -16455)
		clipboardicns.flags =  resSysHeap + resPurgeable;
	
	clipboardicns.ID = icnsID;
	
	CopyString(clipboardicns.name, icnsName);
	
	clipboardicns.SaveToFile(schemeSpec, (**preferences).includeOldStyle, (**preferences).generateOldStyle);
	
	(**preferences).timesUsed++;
	
	if ((((**preferences).timesUsed % 10 == 0) || ((**preferences).timesUsed >= 50)) && (EqualString((**preferences).name, "\pNot Registered", true, true)))
	{
		char	buff[255];
		sprintf(buff, "You've used clip2icns %d times.", (**preferences).timesUsed);
		DisplayAlert(buff, "Please consider registering it");
	}
}

void HandleEditChoice(int item)
{
	switch (item)
	{
		case iPreferences : SetPreferences(); break;
	}
}

void SetPreferences(void)
{
	bool			dialogDone = false;
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
	SetGWorld(startupPort, startupDevice);
}

void CleanUp(void)
{
	OSStatus	err;
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
	DisposeHandle((Handle)preferences);
	ExitApplication();
}
