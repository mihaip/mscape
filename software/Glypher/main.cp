#include "glypher.h"

void main(void)
{
	Initialize();
	
	EventLoop();
	
	ExitApplication();
	
}

void Initialize()
{
//	DateTimeRec		theDate;
//	StringHandle	doesExpire;
	
	InitToolbox();
	
	GetGWorld(&startupPort, &startupDevice);
	
	/*
	GetTime(&theDate);
	doesExpire = GetString( 128 );
	if (EqualString(*doesExpire, "\p1", true, true))
	{
		if (theDate.month >= 12 && theDate.day >= 31 && theDate.year >= 1998)
		{
			DisplayAlert("This beta of Glypher expired on December 31, 1998.", "Please contact Mihai to get a new version");
			ExitApplication();
		}
	}
	*/
	InitMenuBar();
	
	AppleEventInit();
	
	isDone = false;
	navServicesAvailable = NavServicesAvailable();
	appFile = CurResFile();
	
	if (GetPreferences() != noErr)
	{
		DisplayAlert("In order to use Glypher you must have a registered copy of clip2icns.", "A watermark will be placed on all of your merged icons");
		(**preferences).registered = false;
		CopyString((**preferences).name, "\pNot registered");
	}
	else
		(**preferences).registered = true;
}

OSStatus GetPreferences(void)
{
	OSStatus			err;
	FSSpec				preferencesFile;
	short				preferencesRefNum;
	short				myVRef;
	long				myDirID;
	PreferencesHandle	preferencesRes;
	Str255				testRegNo;
	
	preferences = (PreferencesHandle)NewHandleClear(sizeof(tPreferences));
	HLock((Handle)preferences);
	
	err = FindFolder(kOnSystemDisk, kPreferencesFolderType, kDontCreateFolder, &myVRef, &myDirID);
	if (err == noErr)
		err = FSMakeFSSpec(myVRef, myDirID, "\pclip2icns Preferences", &preferencesFile);
	
	if (err == noErr)
		preferencesRefNum = FSpOpenResFile(&preferencesFile, fsRdWrPerm);
	else
		return err;
	
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
			if (!(EqualString((**preferences).regNo, testRegNo, true, true)))
				return paramErr;
		}
		else
			return paramErr;
		CloseResFile(preferencesRefNum);
		UseResFile(appFile);
	}
	return noErr;
}

void InitMenuBar()
{
	Handle		menuBar;
	MenuHandle	menu;
	
	menuBar = GetNewMBar( kMenuBarID );
	SetMenuBar(menuBar);
	
	menu = GetMenuHandle ( mApple );
	AppendResMenu (menu, 'DRVR' );
	
	menu = GetMenu(mNewHierarchical);
	if(menu != NULL)
		InsertMenu(menu,hierMenu);
	
	DrawMenuBar();
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
			
			glyphsSpec = desc;
			PositionBadges();
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
	eventPtr;
	//SysBeep(6);
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
			case mApple :			HandleAppleChoice(menuItem); break;
			case mFile :			HandleFileChoice(menuItem); break;
			case mNewHierarchical : HandleHierarchicalChoice(menuItem); break;
			case mEdit :			HandleEditChoice(menuItem); break;
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
		default :
			appleMenu = GetMenuHandle (mApple);
			GetMenuItemText(appleMenu, item, accName);
			accNumber = OpenDeskAcc (accName);
			break;
	}
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

void ShowAboutBox()
{
	DialogPtr		aboutBox;
	bool			dialogDone;
	short			itemHit;
	GWorldPtr		picGWorld, maskGWorld, tempGWorld;
	PixMapHandle	picPixMap, maskPixMap, tempPixMap;
	Rect			targetRect, picRect, emailRect, homepageRect;
	Handle			item;
	short			itemType;
	Str255			address, tempString;
	Point			theMouse;
	
	
	
	aboutBox = GetNewDialog (aboutBoxID, nil, (WindowPtr)-1L);
	SetPort( aboutBox);
	
	GetDialogItem(aboutBox, kEmailAddress, &itemType, &item, &emailRect);
	GetDialogItem(aboutBox, kHomepageAddress, &itemType, &item, &homepageRect);
	
	GetDialogItem(aboutBox, kNameField, &itemType, &item, &picRect);
	SetDialogItemText(item, (**preferences).name);
	GetDialogItem(aboutBox, kCompanyField, &itemType, &item, &picRect);
	SetDialogItemText(item, (**preferences).company);
	
	SetDialogDefaultItem(aboutBox, kOk);
	
	ShowWindow( aboutBox );
	GetDialogItem(aboutBox, kAboutPic, &itemType, &item, &picRect);
	targetRect = picRect;
	OffsetRect(&picRect, -picRect.left, -picRect.top);
	NewGWorld(&tempGWorld, 32, &picRect, NULL, NULL, 0);
	tempPixMap = GetGWorldPixMap(tempGWorld);
	LockPixels(tempPixMap);
	
	NewGWorld(&picGWorld, 32, &picRect, NULL, NULL, 0);
	SetGWorld(picGWorld, NULL);
	DrawPicture(GetPicture(aboutPicID), &picRect);
	picPixMap = GetGWorldPixMap(picGWorld);
	LockPixels(picPixMap);
	NewGWorld(&maskGWorld, 32, &picRect, NULL, NULL, 0);
	SetGWorld(maskGWorld, NULL);
	DrawPicture(GetPicture(aboutPicMaskID), &picRect);
	maskPixMap = GetGWorldPixMap(maskGWorld);
	LockPixels(maskPixMap);
	
	SetGWorld(picGWorld, NULL);
	
	CopyBits(&aboutBox->portBits,
			 (BitMap *) &(tempGWorld->portPixMap),
			 &targetRect,
			 &picRect,
			 srcCopy,
			 NULL);	
	
	CopyDeepMask((BitMap *) &(picGWorld->portPixMap),
				 (BitMap *) &(maskGWorld->portPixMap),
				 (BitMap *) &(tempGWorld->portPixMap),
				 &picRect,
				 &picRect,
				 &picRect,
				 srcCopy,
				 NULL);

	CopyBits((BitMap *) &(tempGWorld->portPixMap),
			 &aboutBox->portBits,
			 &picRect,
			 &targetRect,
			 srcCopy + ditherCopy,
			 NULL);	
	
	SetPort(aboutBox);
		 
	UnlockPixels(picPixMap);
	UnlockPixels(maskPixMap);
	UnlockPixels(tempPixMap);
	
	DisposeGWorld(picGWorld);
	DisposeGWorld(maskGWorld);
	DisposeGWorld(tempGWorld);

	SetPort(aboutBox);
	
	dialogDone = false;
	while (!dialogDone)
	{
		ModalDialog(nil, &itemHit);
		switch (itemHit)
		{
			case kOk: dialogDone = true; break;
			case kAboutPic:
				GetMouse(&theMouse);
				if (PtInRect(theMouse, &emailRect))
				{
					GetDialogItem(aboutBox, kEmailAddress, &itemType, &item, &picRect);
					GetDialogItemText(item, tempString);
					CopyString(address, "\pmailto:");
					for (int i = 1; i <= tempString[0]; i++)
						address[7+i] = tempString[i];
					address[0] += tempString[0];
					dialogDone = true;
					if (LaunchURL((ConstStr255Param)address) != noErr)
						DisplayAlert("Can't launch URL.", "Internet Config must be installed");
				}
				if (PtInRect(theMouse, &homepageRect))
				{
					GetDialogItem(aboutBox, kHomepageAddress, &itemType, &item, &picRect);
					GetDialogItemText(item, address);
					dialogDone = true;
					if (LaunchURL((ConstStr255Param)address) != noErr)
						DisplayAlert("Can't launch URL.", "Internet Config must be installed");
				}
				break;
		}
		
		
	}
	DisposeDialog(aboutBox);
	SetGWorld(startupPort, startupDevice);
}

void HandleFileChoice(int item)
{
	switch (item)
	{
		
		case iEditBadges : EditBadges(); break;
		case iQuit       :	isDone = true; break;
	}
}

void HandleHierarchicalChoice(int item)
{
	switch (item)
	{
		case iNewFile : NewIconSet(); break;
		case iIntoScheme : IntoScheme(); break;
	}
}

void NewIconSet()
{
	OSStatus	theErr;
	icnsClass	baseicns;
	
	theErr = GetFile("\pGlypher", "\pPick the glyph set you want to merge.", glypherCreator, glyphsFileType, &glyphsSpec);
	if (theErr == noErr)
		theErr = NewFile("\pChoose the location where the merged set should be saved.", "\pUntitled Icon Set", "\pGlypher", glypherCreator, glyphsFileType, &setSpec);
	if (theErr == noErr)
		MakeNewSet(true);
}

void IntoScheme(void)
{
	OSStatus	theErr;
	
	theErr = GetFile("\pGlypher", "\pPick the glyph set you want to merge.", glypherCreator, glyphsFileType, &glyphsSpec);
	if (theErr == noErr)
		theErr = GetFile("\pGlypher", "\pPick a scheme to insert the merged set into.", schemeCreator, schemeFileType, &setSpec);
	if (theErr == noErr)
		MakeNewSet(false);
}

void EditBadges()
{
	OSStatus	theErr;

	theErr = GetFile("\pGlypher", "\pPick the glyph set you want to edit.", glypherCreator, glyphsFileType, &glyphsSpec);
	if (theErr == noErr)
		PositionBadges();
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


#define DisposeAndReturn()\
{\
	SysBeep(6);\
	HUnlock((Handle)glyphicnsHandle);\
	DisposeHandle((Handle)glyphicnsHandle);\
	CloseResFile(glyphs);\
	UseResFile(appFile);\
	return;\
}

void MergeIcon(int ID, Str255 name, icnsClass* baseicns)
{
	GWorldPtr			tempGWorld;
	PixMapHandle		tempPix;
	Rect				largeIconRect={0,0,32, 32}, smallIconRect = {0, 0, 16, 16}, glyphRect, smallGlyphRect;
	CTabHandle			grayscaleTable;
	RGBColor			currentForeColor, currentBackColor;
	short				glyphs;
	CGrafPtr			curPort;
	GDHandle			curDevice;
	tOffset**			offsetHandle;
	int					hOffset=0, vOffset=0, smallHOffset=0, smallVOffset=0;
	RgnHandle			ignoredRgn;
	icnsClass			glyphicns, targeticns;

	GetForeColor(&currentForeColor);
	GetBackColor(&currentBackColor);
	GetGWorld(&curPort, &curDevice);
	
	glyphs = FSpOpenResFile(&glyphsSpec, fsRdPerm);
	UseResFile(glyphs);
	
	grayscaleTable = GetCTable(80);
	
	ignoredRgn = NewRgn();
	
	offsetHandle = (tOffset**)Get1Resource('Ofst', ID);
	if (offsetHandle != NULL)
	{
		HLock((Handle)offsetHandle);
		hOffset = (**offsetHandle).hOffset;
		vOffset = (**offsetHandle).vOffset;
		smallHOffset = (**offsetHandle).smallHOffset;
		smallVOffset = (**offsetHandle).smallVOffset;
		HUnlock((Handle)offsetHandle);
		ReleaseResource((Handle)offsetHandle);
	}
	else
	{
		offsetHandle = (tOffset**)Get1Resource('Ofst', 128);
		if (offsetHandle != NULL)
		{
			HLock((Handle)offsetHandle);
			hOffset = (**offsetHandle).hOffset;
			vOffset = (**offsetHandle).vOffset;
			smallHOffset = (**offsetHandle).smallHOffset;
			smallVOffset = (**offsetHandle).smallVOffset;
			HUnlock((Handle)offsetHandle);
			ReleaseResource((Handle)offsetHandle);
		}
	}

	glyphicns.ID = ID;
	glyphicns.LoadFromFile(glyphsSpec);
	
	CloseResFile(glyphs);
	UseResFile(appFile);
	
	targeticns.ID = ID;
	
	// loading the large version
	SetGWorld(targeticns.icl8GW, NULL);
	//baseicns->Display(largeIconRect);
	CopyBits((BitMap *) *(baseicns->icl8Pix),
			 (BitMap *) *(targeticns.icl8Pix),
			 &largeIconRect,
			 &largeIconRect,
			 srcCopy,
			 NULL);
	glyphRect = largeIconRect;
	OffsetRect(&glyphRect, hOffset, vOffset);
	glyphicns.Display(glyphRect);
	
	SetGWorld(targeticns.icl4GW, NULL);
	//baseicns->Display(largeIconRect);
	CopyBits((BitMap *) *(baseicns->icl4Pix),
			 (BitMap *) *(targeticns.icl4Pix),
			 &largeIconRect,
			 &largeIconRect,
			 srcCopy,
			 NULL);
	glyphRect = largeIconRect;
	OffsetRect(&glyphRect, hOffset, vOffset);
	glyphicns.Display(glyphRect);
	
	SetGWorld(targeticns.icniGW, NULL);
	//baseicns->Display(largeIconRect);
	CopyBits((BitMap *) *(baseicns->icniPix),
			 (BitMap *) *(targeticns.icniPix),
			 &largeIconRect,
			 &largeIconRect,
			 srcCopy,
			 NULL);
	glyphRect = largeIconRect;
	OffsetRect(&glyphRect, hOffset, vOffset);
	glyphicns.Display(glyphRect);
	
	SetGWorld(glyphicns.l8mkGW, NULL);
	ScrollRect(&largeIconRect, hOffset, vOffset, ignoredRgn);
	SetGWorld(glyphicns.il32GW, NULL);
	ScrollRect(&largeIconRect, hOffset, vOffset, ignoredRgn);
	SetGWorld(glyphicns.icnmGW, NULL);
	ScrollRect(&largeIconRect, hOffset, vOffset, ignoredRgn);
	
	NewGWorld(&tempGWorld, 8, &largeIconRect, grayscaleTable, NULL, 0);
	SetGWorld(tempGWorld, NULL);
	EraseRect(&largeIconRect);
	tempPix = GetGWorldPixMap(tempGWorld);
	LockPixels(tempPix);
	
	ForeColor(blackColor);
	BackColor(whiteColor);
	
	CopyBits((BitMap *) *(baseicns->icnmPix),
			 (BitMap *) *(targeticns.icnmPix),
			 &largeIconRect,
			 &largeIconRect,
			 srcCopy,
			 NULL);
	
	CopyBits((BitMap *) *(glyphicns.icnmPix),
			 (BitMap *) *(targeticns.icnmPix),
			 &largeIconRect,
			 &largeIconRect,
			 srcOr,
			 NULL);
	
	CopyBits((BitMap *) *(baseicns->il32Pix),
			 (BitMap *) *(targeticns.il32Pix),
			 &largeIconRect,
			 &largeIconRect,
			 srcCopy,
			 NULL);

	CopyDeepMask((BitMap*) *(glyphicns.l8mkPix),
			 	 (BitMap*) *(baseicns->icnmPix),
			 	 (BitMap*) *tempPix,
				 &largeIconRect,
				 &largeIconRect,
				 &largeIconRect,
				 srcCopy,
				 NULL);

	
	CopyDeepMask((BitMap *) *(glyphicns.il32Pix),
				 (BitMap *) *tempPix,
				 (BitMap *) *(targeticns.il32Pix),
				 &largeIconRect,
				 &largeIconRect,
			 	 &largeIconRect,
				 srcCopy,
				 NULL);
				 
	SetGWorld(baseicns->icnmGW, NULL);
	InvertRect(&largeIconRect);
	
	CopyMask((BitMap *) *(glyphicns.il32Pix),
			 (BitMap *) *(baseicns->icnmPix),
			 (BitMap *) *(targeticns.il32Pix),
			 &largeIconRect,
			 &largeIconRect,
			 &largeIconRect
			);
			
	InvertRect(&largeIconRect);
	
	UnlockPixels(tempPix);
	DisposeGWorld(tempGWorld);
	
	NewGWorld(&tempGWorld, 8, &largeIconRect, grayscaleTable, NULL, 0);
	SetGWorld(tempGWorld, NULL);
	PaintRect(&largeIconRect);
	tempPix = GetGWorldPixMap(tempGWorld);
	LockPixels(tempPix);
	
	CopyBits((BitMap *) *(baseicns->l8mkPix),
			 (BitMap *) *(targeticns.l8mkPix),
			 &largeIconRect,
			 &largeIconRect,
			 srcCopy,
			 NULL);
	
	CopyDeepMask((BitMap *) *tempPix,
			 (BitMap *) *(glyphicns.l8mkPix),
			 (BitMap *) *(targeticns.l8mkPix),
			 &largeIconRect,
			 &largeIconRect,
			 &largeIconRect,
			 srcCopy,
			 NULL);
	if (!(**preferences).registered)
	{
		DrawWatermark(targeticns.il32GW, false);
		DrawWatermark(targeticns.l8mkGW, true);
		DrawWatermark(targeticns.icl8GW, false);
		DrawWatermark(targeticns.icl4GW, false);
		DrawWatermark(targeticns.icnmGW, true);
		DrawWatermark(targeticns.icniGW, false);
	}
	
	SetGWorld(curPort, curDevice);
	
	UnlockPixels(tempPix);
	DisposeGWorld(tempGWorld);
	
	// loading the small version
	SetGWorld(targeticns.ics8GW, NULL);
	//baseicns->Display(smallIconRect);
	CopyBits((BitMap *) *(baseicns->ics8Pix),
			 (BitMap *) *(targeticns.ics8Pix),
			 &smallIconRect,
			 &smallIconRect,
			 srcCopy,
			 NULL);
	smallGlyphRect = smallIconRect;
	OffsetRect(&smallGlyphRect, smallHOffset, smallVOffset);
	glyphicns.Display(smallGlyphRect);
	
	SetGWorld(targeticns.ics4GW, NULL);
	//baseicns->Display(smallIconRect);
	CopyBits((BitMap *) *(baseicns->ics4Pix),
			 (BitMap *) *(targeticns.ics4Pix),
			 &smallIconRect,
			 &smallIconRect,
			 srcCopy,
			 NULL);
	smallGlyphRect = smallIconRect;
	OffsetRect(&smallGlyphRect, smallHOffset, smallVOffset);
	glyphicns.Display(smallGlyphRect);
	
	SetGWorld(targeticns.icsiGW, NULL);
	//baseicns->Display(smallIconRect);
	CopyBits((BitMap *) *(baseicns->icsiPix),
			 (BitMap *) *(targeticns.icsiPix),
			 &smallIconRect,
			 &smallIconRect,
			 srcCopy,
			 NULL);
	smallGlyphRect = smallIconRect;
	OffsetRect(&smallGlyphRect, smallHOffset, smallVOffset);
	glyphicns.Display(smallGlyphRect);
	
	SetGWorld(glyphicns.s8mkGW, NULL);
	ScrollRect(&smallIconRect, smallHOffset, smallVOffset, ignoredRgn);
	SetGWorld(glyphicns.is32GW, NULL);
	ScrollRect(&smallIconRect, smallHOffset, smallVOffset, ignoredRgn);
	SetGWorld(glyphicns.icsmGW, NULL);
	ScrollRect(&smallIconRect, smallHOffset, smallVOffset, ignoredRgn);
	
	NewGWorld(&tempGWorld, 8, &smallIconRect, grayscaleTable, NULL, 0);
	SetGWorld(tempGWorld, NULL);
	EraseRect(&smallIconRect);
	tempPix = GetGWorldPixMap(tempGWorld);
	LockPixels(tempPix);
	
	CopyBits((BitMap *) *(baseicns->icsmPix),
			 (BitMap *) *(targeticns.icsmPix),
			 &smallIconRect,
			 &smallIconRect,
			 srcCopy,
			 NULL);
	
	CopyBits((BitMap *) *(glyphicns.icsmPix),
			 (BitMap *) *(targeticns.icsmPix),
			 &smallIconRect,
			 &smallIconRect,
			 srcOr,
			 NULL);
	
	CopyBits((BitMap *) *(baseicns->is32Pix),
			 (BitMap *) *(targeticns.is32Pix),
			 &smallIconRect,
			 &smallIconRect,
			 srcCopy,
			 NULL);

	CopyDeepMask((BitMap*) *(glyphicns.s8mkPix),
			 	 (BitMap*) *(baseicns->icsmPix),
			 	 (BitMap*) *tempPix,
				 &smallIconRect,
				 &smallIconRect,
				 &smallIconRect,
				 srcCopy,
				 NULL);
	
	CopyDeepMask((BitMap *) *(glyphicns.is32Pix),
				 (BitMap *) *tempPix,
				 (BitMap *) *(targeticns.is32Pix),
				 &smallIconRect,
				 &smallIconRect,
			 	 &smallIconRect,
				 srcCopy,
				 NULL);
				 
	SetGWorld(baseicns->icsmGW, NULL);
	InvertRect(&smallIconRect);
	
	CopyMask((BitMap *) *(glyphicns.is32Pix),
			 (BitMap *) *(baseicns->icsmPix),
			 (BitMap *) *(targeticns.is32Pix),
			 &smallIconRect,
			 &smallIconRect,
			 &smallIconRect
			);
			
	InvertRect(&smallIconRect);
	
	UnlockPixels(tempPix);
	DisposeGWorld(tempGWorld);
	
	NewGWorld(&tempGWorld, 8, &smallIconRect, grayscaleTable, NULL, 0);
	SetGWorld(tempGWorld, NULL);
	PaintRect(&smallIconRect);
	tempPix = GetGWorldPixMap(tempGWorld);
	LockPixels(tempPix);
	
	CopyBits((BitMap *) *(baseicns->s8mkPix),
			 (BitMap *) *(targeticns.s8mkPix),
			 &smallIconRect,
			 &smallIconRect,
			 srcCopy,
			 NULL);
	
	CopyDeepMask((BitMap *) *tempPix,
			 (BitMap *) *(glyphicns.s8mkPix),
			 (BitMap *) *(targeticns.s8mkPix),
			 &smallIconRect,
			 &smallIconRect,
			 &smallIconRect,
			 srcCopy,
			 NULL);
	
	SetGWorld(curPort, curDevice);
	
	UnlockPixels(tempPix);
	DisposeGWorld(tempGWorld);
	
	if (!(**preferences).registered)
	{
		DrawWatermark(targeticns.is32GW, false);
		DrawWatermark(targeticns.s8mkGW, true);
		DrawWatermark(targeticns.ics8GW, false);
		DrawWatermark(targeticns.ics4GW, false);
		DrawWatermark(targeticns.icsmGW, true);
		DrawWatermark(targeticns.icsiGW, false);
	}
	
	CopyString(targeticns.name, name);
	targeticns.sizes |= (large | small);
	targeticns.flags = resSysHeap + resPurgeable;
	targeticns.SaveToFile(setSpec, false, true);
	
	DisposeCTable(grayscaleTable);
	
	RGBForeColor(&currentForeColor);
	RGBBackColor(&currentBackColor);
}

void DrawWatermark(GWorldPtr targetGW, bool isMask)
{
	Rect	bounds;
	SAVEGWORLD;
	
	bounds = targetGW->portRect;
	SetGWorld(targetGW, NULL);
	TextSize(9);
	TextFont(0);
	TextFace(outline);
	
	if ((bounds.bottom - bounds.top) == 32)
		MoveTo(26, 31);
	else
	{
		MoveTo(11, 15);
		TextSize(6);
	}
	
	DrawString("\pG");
	TextFace(normal);
	if ((bounds.bottom - bounds.top) == 32)
		MoveTo(26, 31);
	else
		MoveTo(11, 15);
	DrawString("\pG");
	if (!isMask)
	{
		TextMode(srcXor);
		if ((bounds.bottom - bounds.top) == 32)
			MoveTo(26, 31);
		else
			MoveTo(11, 15);
		DrawString("\pG");
	}
	
	RESTOREGWORLD;
}

void MakeNewSet(bool makeSetFile)
{
	DialogPtr			newSet, baseSource;
	bool				dialogDone;
	Rect				itemRect;
	Handle				item;
	short				itemHit, itemType;
	short				glyphs, base;
	IconFamilyHandle	glyphicnsHandle;
	Str255				string;
	int					resourceCount;
	short				ID;
	unsigned long		type;
	icnsClass			baseicns;
	int					pickedSource = kGlyphs;
	ControlHandle		glyphsRadio, fileRadio;
	FSSpec				baseSourceSpec;
	
	if (makeSetFile)
	{
		FSpDelete(&setSpec);

		FSpCreate(&setSpec, 'RSED', 'rsrc', 0); /*smRoman = 0*/
		FSpCreateResFile(&setSpec, 'RSED', 'rsrc', 0); /*smRoman = 0*/
	}
	
	baseSource = GetNewDialog(baseSourceID, NULL, (WindowPtr)-1L);
	
	SetPort(baseSource);
	
	SetDialogDefaultItem(baseSource, kOk);
	GetDialogItem(baseSource, kGlyphs, &itemType, &((Handle)glyphsRadio), &itemRect);
	GetDialogItem(baseSource, kFile, &itemType, &((Handle)fileRadio), &itemRect);

	SetControlValue(glyphsRadio,kControlRadioButtonCheckedValue);
	
	ShowWindow(baseSource);
	
	dialogDone = false;
	while (!dialogDone)
	{
		ModalDialog(nil, &itemHit);
		
		switch (itemHit)
		{
			case kOk: dialogDone = true; break;
			case kFile:
				SetControlValue(fileRadio,kControlRadioButtonCheckedValue);
				SetControlValue(glyphsRadio,kControlRadioButtonUncheckedValue);
				pickedSource = kFile;
				break;
			case kGlyphs:
				SetControlValue(glyphsRadio,kControlRadioButtonCheckedValue);
				SetControlValue(fileRadio,kControlRadioButtonUncheckedValue);
				pickedSource = kGlyphs;
				break;
		}
	}
	DisposeDialog(baseSource);
	SetGWorld(startupPort, startupDevice);
	
	switch (pickedSource)
	{
		case kGlyphs: baseSourceSpec = glyphsSpec; break;
		case kFile: GetFile("\pGlypher", "\pPick a source file for the base folder.", '****', '****', &baseSourceSpec); break;
	}
	
	base = FSpOpenResFile(&baseSourceSpec, fsRdPerm);
	UseResFile(base);
	baseicns.ID = -3999;
	baseicns.Load();
	baseicns.LoadOldStyle(false);
	CloseResFile(base);
	UseResFile(appFile);
	
	glyphs = FSpOpenResFile(&glyphsSpec, fsRdPerm);
	UseResFile(glyphs);
	resourceCount = Count1Resources('icns');
	CloseResFile(glyphs);
	UseResFile(appFile);
	
	newSet = GetNewDialog (newSetID, nil, (WindowPtr)-1L);
	
	SetPort( newSet);
	
	ShowWindow( newSet );
	
	GetDialogItem(newSet, 1, &itemType, &item, &itemRect);
	SetDialogItemText(item, "\pMerging:");
			
	for (int i=1; i <= resourceCount; i++)
	{
		glyphs = FSpOpenResFile(&glyphsSpec, fsRdPerm);
		UseResFile(glyphs);
		glyphicnsHandle = (IconFamilyHandle)Get1IndResource('icns', i);
		HLock((Handle)glyphicnsHandle);
		GetResInfo((Handle)glyphicnsHandle, &ID, &type, string);
		HUnlock((Handle)glyphicnsHandle);
		ReleaseResource((Handle)glyphicnsHandle);
		CloseResFile(glyphs);
		UseResFile(appFile);
		if (ID != -3999)
		{
			MergeIcon(ID, string, &baseicns);
			NumToString(ID, string);
			GetDialogItem(newSet, kStatusField, &itemType, &item, &itemRect);
			SetDialogItemText(item, string);
		}
		else
		{
			baseicns.flags = resSysHeap + resPurgeable;
			baseicns.SaveToFile(setSpec, false, true);
		}
	}	
	
	DisposeDialog(newSet);
	SetGWorld(startupPort, startupDevice);
}

#define WriteToDisk()\
{\
	glyphs = FSpOpenResFile(&glyphsSpec, fsRdWrPerm);\
	UseResFile(glyphs);\
	offsetHandle = (tOffset**)Get1Resource('Ofst', ID);\
	if (offsetHandle != NULL)\
	{\
		RemoveResource((Handle)offsetHandle);\
		UpdateResFile(glyphs);\
		CloseResFile(glyphs);\
		UseResFile(appFile);\
		glyphs = FSpOpenResFile(&glyphsSpec, fsRdWrPerm);\
		UseResFile(glyphs);\
	}\
	offsetHandle = (tOffset**)NewHandleClear(sizeof(tOffset));\
	HLock((Handle)offsetHandle);\
	(**offsetHandle).hOffset = hOffset;\
	(**offsetHandle).vOffset = vOffset;\
	(**offsetHandle).smallHOffset = smallHOffset;\
	(**offsetHandle).smallVOffset = smallVOffset;\
	DetachResource((Handle)offsetHandle);\
	AddResource((Handle)offsetHandle, 'Ofst', ID, "\p");\
	ChangedResource((Handle)offsetHandle);\
	WriteResource((Handle)offsetHandle);\
	UpdateResFile(glyphs);\
	HUnlock((Handle)offsetHandle);\
	CloseResFile(glyphs);\
	UseResFile(appFile);\
}

#define Refresh()\
{\
	SetGWorld(iconGWorld, NULL);\
	ForeColor(blackColor);\
	BackColor(whiteColor);\
	EraseRect(&largeIconRect);\
	glyphRect = largeIconRect;\
	OffsetRect(&glyphRect, hOffset, vOffset);\
	baseicns.Display(largeIconRect);\
	if (ID != 128)\
		glyphicns.Display(glyphRect);\
	else\
	{\
		InsetRect(&glyphRect, 8, 8);\
		FrameRect(&glyphRect);\
	}\
	\
	SetGWorld(smallIconGWorld, NULL);\
	ForeColor(blackColor);\
	BackColor(whiteColor);\
	EraseRect(&smallIconRect);\
	smallBadgeRect = smallIconRect;\
	OffsetRect(&smallBadgeRect, smallHOffset, smallVOffset);\
	baseicns.Display(smallIconRect);\
	if (ID != 128)\
		glyphicns.Display(smallBadgeRect);\
	else\
	{\
		InsetRect(&smallBadgeRect, 4, 4);\
		FrameRect(&smallBadgeRect);\
	}\
	\
	SetGWorld(previewGWorld, NULL);\
	ForeColor(blackColor);\
	BackColor(whiteColor);\
	FillCRect(&previewRect, desktopPattern);\
	previewLargeBadge = previewLargeBase;\
	previewSmallBadge = previewSmallBase;\
	OffsetRect(&previewLargeBadge, hOffset, vOffset);\
	OffsetRect(&previewSmallBadge, smallHOffset, smallVOffset);\
	baseicns.Display(previewLargeBase);\
	baseicns.Display(previewSmallBase);\
	if (ID != 128)\
	{\
		glyphicns.ID = ID;\
		glyphicns.LoadFromFile(glyphsSpec);\
		glyphicns.Display(previewLargeBadge);\
		glyphicns.Display(previewSmallBadge);\
	}\
	else\
	{\
		InsetRect(&previewLargeBadge, 8, 8);\
		FrameRect(&previewLargeBadge);\
		InsetRect(&previewSmallBadge, 4, 4);\
		FrameRect(&previewSmallBadge);\
	}\
	SetGWorld(startupPort, startupDevice);\
	CopyBits((BitMap*)*previewPix, &positionGlyphs->portBits, &previewRect, &desktopPreview, srcCopy, NULL);\
	CopyBits((BitMap *) (*iconPix),&positionGlyphs->portBits,&largeIconRect, &targetRect,srcCopy, NULL);\
	CopyBits((BitMap *) (*smallIconPix),&positionGlyphs->portBits,&smallIconRect, &smallTargetRect,srcCopy, NULL);\
	SetPort(positionGlyphs);\
	RGBForeColor(&currentForeColor);\
	RGBBackColor(&currentBackColor);\
}\

void PositionBadges(void)
{
	DialogPtr		positionGlyphs;
	bool			dialogDone;
	short			itemHit;
	GWorldPtr		iconGWorld, smallIconGWorld, previewGWorld;
	PixMapHandle	iconPix, smallIconPix, previewPix;
	Rect			targetRect, smallTargetRect, glyphRect, smallBadgeRect, largeIconRect = {0,0,32,32}, smallIconRect = {0,0,16,16}, itemRect;
	Rect			tempRect, previewRect, previewLargeBase, previewLargeBadge, previewSmallBase, previewSmallBadge, desktopPreview;
	Handle			item;
	short			itemType;
	RGBColor		currentForeColor, currentBackColor;
	long			ID=-20801;
	short			glyphs;
	short			savedHOffset, savedVOffset, hOffset=0, vOffset=0, i, defaultHOffset = 0, defaultVOffset = 0;
	short			savedSmallHOffset, savedSmallVOffset, smallHOffset=0, smallVOffset = 0, smallDefaultHOffset = 0, smallDefaultVOffset = 0;
	icnsClass		glyphicns, baseicns;
	long			selectedIcns;
	Str255			IDAsString, menuItemText, icnsName="\pInternet Search Sites";
	tOffset**		offsetHandle;
	PixPatHandle	desktopPattern;
	Point			theMouse, anchorPoint = {-1,-1}, smallAnchorPoint = {-1, -1};
	ControlHandle	iconPreview;
	ModalFilterUPP	eventFilter;
	int				increment;
	
	eventFilter = NewModalFilterProc(HandlePositionEvents);
	
	NewGWorld(&iconGWorld, 32, &largeIconRect, NULL, NULL, 0);
	iconPix = GetGWorldPixMap(iconGWorld);
	LockPixels(iconPix);
	
	NewGWorld(&smallIconGWorld, 32, &smallIconRect, NULL, NULL, 0);
	smallIconPix = GetGWorldPixMap(smallIconGWorld);
	LockPixels(smallIconPix);
	
	glyphs = FSpOpenResFile(&glyphsSpec, fsRdPerm);
	UseResFile(glyphs);
	offsetHandle = (tOffset**)Get1Resource('Ofst', 128);
	if (offsetHandle != NULL)
	{
		HLock((Handle)offsetHandle);
		defaultHOffset = (**offsetHandle).hOffset;
		hOffset = defaultHOffset;
		defaultVOffset = (**offsetHandle).vOffset;
		vOffset = defaultVOffset;
		
		smallDefaultHOffset = (**offsetHandle).smallHOffset;
		smallHOffset = smallDefaultHOffset;
		smallDefaultVOffset = (**offsetHandle).smallVOffset;
		smallVOffset = smallDefaultVOffset;
		HUnlock((Handle)offsetHandle);
	}
	offsetHandle = (tOffset**)Get1Resource('Ofst', ID);
	if (offsetHandle != NULL)
	{
		HLock((Handle)offsetHandle);
		hOffset = (**offsetHandle).hOffset;
		vOffset = (**offsetHandle).vOffset;
		
		smallHOffset = (**offsetHandle).smallHOffset;
		smallVOffset = (**offsetHandle).smallVOffset;
		HUnlock((Handle)offsetHandle);
	}
	baseicns.ID = -3999;
	baseicns.Load();
	CloseResFile(glyphs);
	UseResFile(appFile);
	
	positionGlyphs = GetNewDialog (positionGlyphsID, nil, (WindowPtr)-1L);
	SetPort( positionGlyphs);
	
	GetForeColor(&currentForeColor);
	GetBackColor(&currentBackColor);
	
	SetDialogDefaultItem(positionGlyphs, kOK);
	
	GetDialogItem(positionGlyphs, kIconPreview, &itemType, & ((Handle)iconPreview), &targetRect);
	DrawImageWell(targetRect);
	
	GetDialogItem(positionGlyphs, kSmallIconPreview, &itemType, &item, &smallTargetRect);
	DrawImageWell(smallTargetRect);
	
	desktopPattern = GetPixPat(16);
	GetDialogItem(positionGlyphs, kDesktopPreview, &itemType, &item, &desktopPreview);
	DrawImageWell(desktopPreview);
	
	previewRect = desktopPreview;
	OffsetRect(&previewRect, -previewRect.left, -previewRect.right);
	NewGWorld(&previewGWorld, 32, &previewRect, NULL, NULL, 0);
	previewPix = GetGWorldPixMap(previewGWorld);
	LockPixels(previewPix);
	
	tempRect = previewRect;
	tempRect.left += (tempRect.right - tempRect.left)/2;
	previewLargeBase = largeIconRect;
	MakeTargetRect(tempRect, &previewLargeBase);
	tempRect = previewRect;
	tempRect.right -= (tempRect.right - tempRect.left)/2;
	previewSmallBase = smallIconRect;
	MakeTargetRect(tempRect, &previewSmallBase);
	
	if (!CheckClipboard(false))
	{
		GetDialogItem(positionGlyphs, kInsertClipboard, &itemType, &item, &itemRect);
		HiliteControl((ControlHandle)item, 255);
	}
	
	ShowWindow( positionGlyphs );
	
	glyphicns.ID = -20801;
	glyphicns.LoadFromFile(glyphsSpec);
	
	Refresh();
	
	SetPort(positionGlyphs);
	
	dialogDone = false;
	while (!dialogDone)
	{
		if (Button())
		{
			GetMouse(&theMouse);
			
			if (PtInRect(theMouse, &targetRect))
			{
				if (anchorPoint.h == -1)
					anchorPoint = theMouse;
				
				theMouse.h -= anchorPoint.h;
				theMouse.v -= anchorPoint.v;
				
				theMouse.h = theMouse.h/4;
				theMouse.v = theMouse.v/4;
				
				vOffset = savedVOffset + theMouse.v;
				hOffset = savedHOffset + theMouse.h;
				
				Refresh();
			}
			if (PtInRect(theMouse, &smallTargetRect))
			{
				if (smallAnchorPoint.h == -1)
					smallAnchorPoint = theMouse;
				
				theMouse.h -= smallAnchorPoint.h;
				theMouse.v -= smallAnchorPoint.v;
				
				theMouse.h = theMouse.h/4;
				theMouse.v = theMouse.v/4;
				
				smallVOffset = savedSmallVOffset + theMouse.v;
				smallHOffset = savedSmallHOffset + theMouse.h;
				
				Refresh();
			}
			continue;
		}
		else
		{
			savedHOffset = hOffset;
			savedVOffset = vOffset;
			anchorPoint.h = -1;
			anchorPoint.v = -1;
			
			savedSmallHOffset = smallHOffset;
			savedSmallVOffset = smallVOffset;
			smallAnchorPoint.h = -1;
			smallAnchorPoint.v = -1;
		}
		ModalDialog(eventFilter, &itemHit);
		if (IsKeyPressed(0x38) || IsKeyPressed(0x3C))
			increment = 10;
		else
			increment = 1;
		switch (itemHit)
		{
			case kOK: WriteToDisk(); dialogDone = true; break;
			case kInsertClipboard:
				glyphicns.ImportFromClipboard(true);
				glyphicns.SaveToFile(glyphsSpec, false, true);
				Refresh();
				break;
			case kShiftUp: vOffset -= increment;Refresh(); break;
			case kShiftDown: vOffset += increment; Refresh(); break;
			case kShiftLeft: hOffset -= increment; Refresh(); break;
			case kShiftRight: hOffset += increment; Refresh(); break;
			case kSmallShiftUp: smallVOffset -= increment; Refresh(); break;
			case kSmallShiftDown: smallVOffset += increment; Refresh(); break;
			case kSmallShiftLeft: smallHOffset -= increment; Refresh(); break;
			case kSmallShiftRight: smallHOffset += increment; Refresh(); break;
			case kPopup:
				WriteToDisk();
				GetDialogItem(positionGlyphs, kPopup, &itemType, &item, &itemRect);
				selectedIcns = GetControlValue((ControlHandle)item);
				GetMenuItemText(GetMenu(200), selectedIcns, menuItemText);
				CopyString(IDAsString, menuItemText);
				CopyString(icnsName, menuItemText);
				for (i=1; IDAsString[i] != ' '; i++){;}
				icnsName[i] = icnsName[0] - i;\
				CopyString(icnsName, &icnsName[i]);\
				if (IDAsString[1] == 208) IDAsString[1] = '-';
				IDAsString[0] = i-1;
				StringToNum(IDAsString, &ID);
				
				glyphs = FSpOpenResFile(&glyphsSpec, fsRdWrPerm);
				UseResFile(glyphs);
				
				offsetHandle = (tOffset**)Get1Resource('Ofst', ID);
				if (offsetHandle != NULL)
				{
					HLock((Handle)offsetHandle);
					hOffset = (**offsetHandle).hOffset;
					vOffset = (**offsetHandle).vOffset;
					smallHOffset = (**offsetHandle).smallHOffset;
					smallVOffset = (**offsetHandle).smallVOffset;
					HUnlock((Handle)offsetHandle);
				}
				else
				{
					hOffset = defaultHOffset;
					vOffset = defaultVOffset;
					smallHOffset = smallDefaultHOffset;
					smallVOffset = smallDefaultVOffset;
				}
				CloseResFile(glyphs);
				UseResFile(appFile);
				
				DrawImageWell(targetRect);
				DrawImageWell(smallTargetRect);
				DrawImageWell(desktopPreview);
				
				glyphicns.ID = ID;
				glyphicns.LoadFromFile(glyphsSpec);
				
				Refresh();
				break;
		}
		
		
	}
	UnlockPixels(previewPix);
	DisposeGWorld(previewGWorld);
	UnlockPixels(iconPix);
	DisposeGWorld(iconGWorld);
	UnlockPixels(smallIconPix);
	DisposeGWorld(smallIconGWorld);
	
	DisposePixPat(desktopPattern);
	SetGWorld(startupPort, startupDevice);
	DisposeDialog(positionGlyphs);	
}

pascal bool HandlePositionEvents(DialogPtr positionGlyphs, EventRecord* eventPtr, short* itemHit)
{
	char 	key;
	bool	handledEvent = false;
	
	switch (eventPtr->what)
	{
		case keyDown:
		case autoKey:
			key = eventPtr->message & charCodeMask;
			if ( (eventPtr->modifiers & optionKey) != 0)
				switch (key)
				{
					case kUpArrowCharCode : *itemHit = kSmallShiftUp; handledEvent = true; break;
					case kDownArrowCharCode: *itemHit = kSmallShiftDown; handledEvent = true; break;
					case kLeftArrowCharCode: *itemHit = kSmallShiftLeft; handledEvent = true; break;
					case kRightArrowCharCode: *itemHit = kSmallShiftRight; handledEvent = true; break;
					default: handledEvent = StdFilterProc(positionGlyphs,eventPtr,itemHit); break;
				}
			else
				switch (key)
				{
					case kUpArrowCharCode : *itemHit = kShiftUp; handledEvent = true; break;
					case kDownArrowCharCode: *itemHit = kShiftDown; handledEvent = true; break;
					case kLeftArrowCharCode: *itemHit = kShiftLeft; handledEvent = true; break;
					case kRightArrowCharCode: *itemHit = kShiftRight; handledEvent = true; break;
					default: handledEvent = StdFilterProc(positionGlyphs,eventPtr,itemHit); break;
				}
			break;
		default:
			handledEvent = StdFilterProc(positionGlyphs,eventPtr,itemHit);
		break;
	}
	return handledEvent;
}

void HandleEditChoice(int item)
{
	item;
	SysBeep(6);
}
