#include "clip2cicn.h"

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
	
	InitToolBox();
	
/*
	GetTime(&theDate);
	doesExpire = GetString( 128 );
	if (EqualString(*doesExpire, "\p1", true, true))
	{
		if (theDate.month >= 9 && theDate.day >= 1 && theDate.year >= 1998)
		{
			DisplayAlert("This beta of clip2cicn expired on September 1, 1998.", "Please go to http://cafe.ambrosiasw.com/gui-central/clip2cicn.html to get a new version");
			ExitApplication();
		}
	}
*/
	InitMenuBar();
	
	AppleEventInit();
	
	GetGWorld(&startupPort, &startupDevice);

	isDone = false;
	navServicesAvailable = NavServicesAvailable();
	appFile = CurResFile();
}

void GetCurrentScheme()
{
/*	OSErr			myErr;
	short			myVRef;	// volume ref num of Preferences folder
	long			myDirID; // dir ID of Preferences folder
	FSSpec			mySpec; // FSSpec for the preferences file
	int				myRefNum, oldFile; // file reference number
	AliasHandle		currentSchemeAlias;
	unsigned char	ignored;
	
	// Find the Preferences folder in the System Folder
	myErr = FindFolder(kOnSystemDisk, kPreferencesFolderType, kDontCreateFolder, &myVRef, &myDirID);
	if (myErr == noErr)
	{
		myErr = FSMakeFSSpec(myVRef, myDirID, "\pKaleidoscope Preferences", &mySpec);
	}
	else
	{
		SysBeep(6);
	}
	if (myErr == noErr)
	{
		myRefNum = FSpOpenResFile(&mySpec, fsCurPerm);
	}	
	// read in the preferences
	
	oldFile = CurResFile();
	UseResFile(myRefNum);
	
	currentSchemeAlias = (AliasHandle)GetResource('alis', 128);
	HLock((Handle)currentSchemeAlias);
	
	
	if ( currentSchemeAlias == nil )
	{
		DisplayAlert("Can't get the current scheme, make sure that you have Kaleidoscope 1.8 or later and that your preferences aren't corrupted", "");
		ExitApplication();
	}

	ResolveAlias(NULL, currentSchemeAlias, &currentScheme, &ignored);
	HUnlock((Handle)currentSchemeAlias);
	
	CloseResFile(myRefNum);
	UseResFile(oldFile);
*/
}

void InitMenuBar()
{
	Handle		menuBar;
	MenuHandle	menu;
	
	menuBar = GetNewMBar( kMenuBarID );
	SetMenuBar(menuBar);
	
	menu = GetMenuHandle ( mApple );
	AppendResMenu (menu, 'DRVR' );
	
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
	Handle		pic;
	long		offset;

	reply;
	refCon;

	err = AEGetParamDesc(theAppleEvent, keyDirectObject, typeAEList, &fileSpecList);
	
	err = AECountItems(&fileSpecList, &count);
	for (i = 1; i <= count; i++)
	{
		err = AEGetNthPtr(&fileSpecList, i, typeFSS, &keyword, &type, (Ptr)&desc, sizeof(FSSpec), &actual);
		if (err == noErr)
		{
			pic = NewHandle (0);
			if (GetScrap( pic, 'PICT', &offset ) < 0)
			{
				DisplayAlert("", "The clipboard is either empty or doesn't contain a picture");
			}
			else
			{
				GetCurrentScheme();
				if (desc.vRefNum == currentScheme.vRefNum && desc.parID == currentScheme.parID)
				{
					DisplayAlert("The scheme you chose is the active one.", "Editing the active scheme can corrupt it, please switch to another scheme and try again");
				}
				else
				{
					schemeSpec = desc;
					GetcicnID();
				}
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
		default :
			appleMenu = GetMenuHandle (mApple);
			GetMenuItemText(appleMenu, item, accName);
			accNumber = OpenDeskAcc (accName);
			break;
	}
}

void ShowAboutBox()
{
	DialogPtr		aboutBox;
	bool			dialogDone;
	short			itemHit;
	GWorldPtr		picGWorld, maskGWorld, tempGWorld;
	PixMapHandle	picPixMap, maskPixMap, tempPixMap;
	Rect			targetRect, picRect;
	Handle			item;
	short			itemType;
	
	
	
	
	aboutBox = GetNewDialog (aboutBoxID, nil, (WindowPtr)-1L);
	SetPort( aboutBox);
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
			case kOk: dialogDone = true;
		}
		
		
	}
	DisposeDialog(aboutBox);
	SetGWorld(startupPort, startupDevice);
}

void HandleFileChoice(int item)
{
OSStatus	theErr;
	switch (item)
	{
		case iInsertCicn :
			if (navServicesAvailable)
				theErr = GetSchemeNav();
			else
				theErr = GetSchemeOld();
			if (theErr == noErr) GetcicnID();
			break;
		case iQuit       :	isDone = true; break;
	}
}

OSStatus GetSchemeNav()
{
	NavDialogOptions	dialogOptions;
	NavReplyRecord		reply;
	NavEventUPP			eventUPP;
	NavTypeListHandle	typeList;
	AEDesc				resultDesc;
	Handle				pic;
	long				offset;
	
	UseResFile(appFile);
	
	pic = NewHandle (0);
	if (GetScrap( pic, 'PICT', &offset ) < 0)
	{
		DisplayAlert("", "The clipboard is either empty or doesn't contain a picture");
		return paramErr;
	}
	
	DisposeHandle(pic);
	
	eventUPP = NewNavEventProc(DummyFunction);
	
	NavGetDefaultDialogOptions ( &dialogOptions );
	dialogOptions.dialogOptionFlags -= kNavAllowMultipleFiles;
	CopyString(dialogOptions.clientName, "\pclip2cicn");
	typeList = MakeTypeList ( 'Acid', 1, 'Colr');
	
	NavGetFile(NULL,
			   &reply,
			   &dialogOptions,
			   eventUPP,
			   NULL,
			   NULL,
			   typeList,
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


OSStatus GetSchemeOld()
{
	StandardFileReply	reply;
	SFTypeList			typeList;
	Handle				pic;
	long				offset;

	pic = NewHandle (0);
	if (GetScrap( pic, 'PICT', &offset ) < 0)
	{
		DisplayAlert("", "The clipboard is either empty or doesn't contain a picture");
		return paramErr;
	}
	
	GetCurrentScheme();
	typeList[0] = schemeFileType;
	
	StandardGetFile(nil, 1, typeList, &reply);
//	if (reply.sfFile.vRefNum == currentScheme.vRefNum && reply.sfFile.parID == currentScheme.parID)
//	{
//		DisplayAlert("The scheme you chose is the active one.", "Editing the active scheme can corrupt it, please switch to another scheme and try again");
//		return paramErr;
//	}
	if ( reply.sfGood)
	{
		schemeSpec = reply.sfFile;
		return noErr;
	}
	return paramErr;
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

#define PreviewCicn();\
	GetDialogItem(insertCicn, kIDField, &itemType, &item, &itemRect);\
	GetDialogItemText(item, IDasString);\
	StringToNum(IDasString, &ID);\
	scheme = FSpOpenResFile(&schemeSpec, fsRdWrPerm);\
	UseResFile(scheme);\
	currentCicn = GetCIcon(ID);\
	GetForeColor(&currentForeColor);\
	ForeColor(whiteColor);\
	PaintRect(&cicnRect);\
	RGBForeColor(&currentForeColor);\
	if (currentCicn != NULL)\
	{\
		targetRect = (**currentCicn).iconPMap.bounds;\
		OffsetRect(&targetRect, -targetRect.left, -targetRect.top);\
		MakeTargetRect(cicnRect, &targetRect);\
		PlotCIcon(&targetRect, currentCicn);\
		DisposeCIcon(currentCicn);\
	}\
	else\
	{\
		MoveTo(cicnRect.left + ((cicnRect.right - cicnRect.left) - StringWidth("\pNot aavailable"))/2, cicnRect.bottom/2 + 16);\
		DrawString("\pNot available");\
	}\
	CloseResFile(scheme);\
	UseResFile(appFile);\
	//FSClose(scheme);\
	
	
#define GetCicnName();\
	CopyString(cicnName, "\p");\
	GetMenuItemText(GetMenu(131), selectedType, cicnName);\
	GetMenuItemText(GetMenu(currentMenuID), selectedCicn, tempStr);\
	cicnName[cicnName[0] + 1] = ' ';\
	for (int j = cicnName[0]; j < cicnName[0] + i; j++)\
		cicnName[j + 2] = tempStr[j - cicnName[0] + 1];\
	cicnName[cicnName[0] + i + 1] = '�';\
	cicnName[0] += i + 1;\

void GetcicnID()
{
	DialogPtr			insertCicn;
	bool				dialogDone;
	short				itemHit;
	Str255				IDasString;
	Rect				itemRect;
	long				ID;
	Handle				item;
	short				itemType;
	int					selectedCicn, i, selectedType=1;
	Str255				menuItemText;
	Rect				popupRect;
	int					currentMenuID = 132;
	Rect				clipboardRect;
	Rect				cicnRect;
	Handle				pic;
	long				ignored;
	Rect				targetRect;
	short				scheme;
	CIconHandle			currentCicn;
	RGBColor			currentForeColor;
	Str255				cicnName = "\pDocument Window Inactive�", tempStr;
	Str255				errorNumber;	
	
	scheme = FSpOpenResFile(&schemeSpec, fsRdWrPerm);
	if (scheme == -1)
	{
		if (ResError() == opWrErr)
		{
			DisplayAlert("You can't edit this scheme since it's currently open in another application.", "Please close it and try again");
			return;
		}
		else
		{
			NumToString(ResError(), errorNumber);
			DisplayPAlert("\pSomething happened that wasn't supposed to happen. Error of type: ", errorNumber);
			return;
		}
	}
	CloseResFile(scheme);
	//FSClose(scheme);
	UseResFile(appFile);
	
	insertCicn = GetNewDialog (insertCicnID, nil, (WindowPtr)-1L);
	SetPort( insertCicn);
	SetDialogDefaultItem(insertCicn, kInsert);
	SetDialogCancelItem( insertCicn, kCancel );
	SelectDialogItemText( insertCicn, kIDField, 0, 32767);
	
	GetDialogItem(insertCicn, kcicnPopup, &itemType, &item, &popupRect);
	
	GetDialogItem(insertCicn, kClipboardPreview, &itemType, &item, &clipboardRect);
	GetDialogItem(insertCicn, kCicnPreview, &itemType, &item, &cicnRect);
	DrawImageWell(clipboardRect);
	DrawImageWell(cicnRect);
	
	pic = NewHandle (0);
	GetScrap( pic, 'PICT', &ignored );
	targetRect = (*(PicHandle)pic)->picFrame;
	OffsetRect(&targetRect, -targetRect.left, -targetRect.top);
	MakeTargetRect(clipboardRect, &targetRect);
	DrawPicture((PicHandle)pic, &targetRect);
	
	PreviewCicn();
	
	
	ShowWindow( insertCicn );

	dialogDone = false;
	while (!dialogDone)
	{
		ModalDialog(nil, &itemHit);
		switch (itemHit)
		{
			
			case kInsert: 
				GetDialogItem(insertCicn, kIDField, &itemType, &item, &itemRect);
				GetDialogItemText(item, IDasString);
				StringToNum(IDasString, &ID);
				dialogDone = true;
				DisposeDialog( insertCicn );
				//CloseResFile(scheme);
				//FSClose(scheme);
				UseResFile(appFile);
				SetGWorld(startupPort, startupDevice);
				clip2cicn(ID, cicnName);
				return;
				break;
			case kCancel:
				dialogDone = true;
				break;
			case kTypesPopup:

				GetDialogItem(insertCicn, kTypesPopup, &itemType, &item, &itemRect);
				selectedType = GetControlValue((ControlHandle)item);
				GetDialogItem(insertCicn, kcicnPopup, &itemType, &item, &itemRect);
				DisposeControl((ControlHandle)item);
				(ControlHandle)item = NewControl(insertCicn,
												 &popupRect,
												 "\pcicn:",
												 true,
												 0,
												 selectedType + 131,
												 50,
												 popupMenuProc + popupFixedWidth,
												 0);
				
				currentMenuID = selectedType + 131;
				(**(PopupPrivateDataHandle)(**(ControlHandle)item).contrlData).mID = currentMenuID;
				(**(PopupPrivateDataHandle)(**(ControlHandle)item).contrlData).mHandle = GetMenu(currentMenuID);
				if ((ControlHandle)item == NULL)
					SysBeep(20);
				Draw1Control((ControlHandle)item);
				
				selectedCicn = 1;
				GetMenuItemText(GetMenu(currentMenuID), selectedCicn, menuItemText);				
				CopyString(IDasString, menuItemText);
				for (i=IDasString[0]; i > 0 && IDasString[i] == ' '; i--){;}
				for (; i > 0 && IDasString[i] != ' '; i--){;}
				IDasString[i] = IDasString[0] - i;
				GetDialogItem(insertCicn, kIDField, &itemType, &item, &itemRect);
				SetDialogItemText(item, &IDasString[i]);
				SelectDialogItemText( insertCicn, kIDField, 0, 32767);
				
				PreviewCicn();
				GetCicnName();
				
				break;
			case kcicnPopup:
				GetDialogItem(insertCicn, kcicnPopup, &itemType, &item, &itemRect);
				selectedCicn = GetControlValue((ControlHandle)item);
				
				GetMenuItemText(GetMenu(currentMenuID), selectedCicn, menuItemText);				
				CopyString(IDasString, menuItemText);
				for (i=IDasString[0]; i > 0 && IDasString[i] == ' '; i--){;}
				for (; i > 0 && IDasString[i] != ' '; i--){;}
				IDasString[i] = IDasString[0] - i;
				GetDialogItem(insertCicn, kIDField, &itemType, &item, &itemRect);
				SetDialogItemText(item, &IDasString[i]);
				SelectDialogItemText( insertCicn, kIDField, 0, 32767);
				
				PreviewCicn();
				GetCicnName();
				
				break;
				
				
		}
		
		
	}
	CloseResFile(scheme);
	UseResFile(appFile);
	//FSClose(scheme);
	DisposeDialog(insertCicn);
	SetGWorld(startupPort, startupDevice);
}


void clip2cicn(short cicnID, Str255 cicnName)
{
	long			bitmapSize;		/* Size of the icon's bitmap. */
	short			scheme;
	CIconHandle		cicn;
	Handle			pic;
	PictInfo		picInfo, pixMapInfo;
	long			colorTableSize;
	CTabHandle		colorTable;
	GWorldPtr		picGWorld, bwGWorld, maskGWorld, tempGWorld;
	PixMapHandle	picPixMap, bwPixMap, maskPixMap, tempPixMap;
	long			picSize;
	long			offset;
	Handle			oldCicn;
	bool			blackIn = false, done=false;
	int				i=0;
	int				depth;
	int				realRowBytes, width, bwRowBytes;
	RGBColor		currentBackColor;
	
	pic = NewHandle (0);
	if (GetScrap( pic, 'PICT', &offset ) < 0)
	{
		DisplayAlert("", "The clipboard is either empty or doesn't contain a picture");
		return;
	}

	GetPictInfo((PicHandle)pic, &picInfo, returnColorTable, 256, popularMethod, 0);
	colorTable = picInfo.theColorTable;



	while(!done)
	{
		if ((**colorTable).ctTable[i].rgb.red == 0 &&
		    (**colorTable).ctTable[i].rgb.green == 0 &&
		    (**colorTable).ctTable[i].rgb.blue == 0)
		{
			if (blackIn)
				done = true;
			else
				blackIn = true;
		}
		i++;
	}
	(**colorTable).ctSize = i - 2;
	CTabChanged(colorTable);
	
	depth = GetDepth(i-1);

	HLock((Handle) pic );
	HLock((Handle) colorTable );
	
	if (pic == NULL || colorTable == NULL)
	{
		DisplayAlert("", "Can't load the picture or the clut");
		ExitApplication();
	}
	
	// draw the color version
	NewGWorld(&picGWorld, depth, &picInfo.sourceRect, colorTable, NULL, 0);
	SetGWorld(picGWorld, NULL);
	GetBackColor(&currentBackColor);
	BackColor(whiteColor);
	EraseRect(&qd.thePort->portRect);
	picPixMap = GetGWorldPixMap(picGWorld);
	LockPixels(picPixMap);
	DrawPicture((PicHandle)pic, &picInfo.sourceRect);
	
	width = picInfo.sourceRect.right - picInfo.sourceRect.left;
	realRowBytes = ((width * depth + 31) & -31) >> 3;
	CropPixMap(picPixMap, realRowBytes);

	/* first we set all the colors in the cicn except for white to black (to get a sillouete of the item)
	   then we do a CalcMask on the item in order to get the proper mask */
	
	NewGWorld(&maskGWorld, 1, &picInfo.sourceRect, NULL, NULL, 0);
	SetGWorld(maskGWorld, NULL);
	EraseRect(&qd.thePort->portRect);
	maskPixMap = GetGWorldPixMap(maskGWorld);
	LockPixels(maskPixMap);
	
	NewGWorld(&tempGWorld, depth, &picInfo.sourceRect, colorTable, NULL, 0);
	SetGWorld(tempGWorld, NULL);
	EraseRect(&qd.thePort->portRect);
	DrawPicture((PicHandle)pic, &picInfo.sourceRect);
	tempPixMap = GetGWorldPixMap(tempGWorld);
	LockPixels(tempPixMap);
	
	NewGWorld(&bwGWorld, 1, &picInfo.sourceRect, NULL, NULL, 0);
	SetGWorld(bwGWorld, NULL);
	EraseRect(&qd.thePort->portRect);
	bwPixMap = GetGWorldPixMap(bwGWorld);
	LockPixels(bwPixMap);   
	
	for (int i = 0; i < (**(**tempPixMap).pmTable).ctSize + 1; i++)
	{
		if ((**(**tempPixMap).pmTable).ctTable[i].rgb.red != 0xFFFF &&
		    (**(**tempPixMap).pmTable).ctTable[i].rgb.green != 0xFFFF &&
		    (**(**tempPixMap).pmTable).ctTable[i].rgb.blue != 0xFFFF)
		{
			(**(**tempPixMap).pmTable).ctTable[i].rgb.red = 0;
			(**(**tempPixMap).pmTable).ctTable[i].rgb.green = 0;
			(**(**tempPixMap).pmTable).ctTable[i].rgb.blue = 0;
		}    
	}
	
	CTabChanged((**tempPixMap).pmTable);
	
	UpdateGWorld(&tempGWorld, depth, &picInfo.sourceRect, (**tempPixMap).pmTable, NULL, 0);
	
	CopyBits( (BitMap *)*tempPixMap,
					 (BitMap *)*bwPixMap,
					 &picInfo.sourceRect,
					 &picInfo.sourceRect,
					 srcCopy,
					 NULL);
	
	CalcMask((**bwPixMap).baseAddr,
	         (**maskPixMap).baseAddr,
	         (**bwPixMap).rowBytes & 0x3FFF,
	         (**maskPixMap).rowBytes & 0x3FFF,
	         ((**maskPixMap).bounds.bottom - (**maskPixMap).bounds.top),
	         ((**maskPixMap).rowBytes & 0x3FFF)/2);
			 
	UnlockPixels(bwPixMap);
	DisposeGWorld(bwGWorld);
	UnlockPixels(tempPixMap);
	DisposeGWorld(tempGWorld);
	
	bwRowBytes = ((width + 31) & -31) >> 3;
	CropPixMap(maskPixMap, bwRowBytes);
	
	// draw the pict in a 1-bit GWorld, to be used for the black and white version of the cicn
	NewGWorld(&bwGWorld, 1, &picInfo.sourceRect, NULL, NULL, 0);
	SetGWorld(bwGWorld, NULL);
	EraseRect(&qd.thePort->portRect);
	DrawPicture((PicHandle)pic, &picInfo.sourceRect);
	bwPixMap = GetGWorldPixMap(bwGWorld);
	LockPixels(bwPixMap);  
	
	SetGWorld(startupPort, startupDevice);
	
			 
	CropPixMap(bwPixMap, bwRowBytes);
			 
	picSize =  realRowBytes * ((**picPixMap).bounds.bottom - (**picPixMap).bounds.top) - 2;
	GetPixMapInfo(picPixMap, &pixMapInfo, returnColorTable, 256, popularMethod, 0);
	
	
	/* Allocate memory for the 'cicn'. */
	
	cicn = (CIconHandle)NewHandleClear( (long)sizeof( CIcon ) );
	
	/* Fill in the cicn's bitmap fields. */ 
	
	(**cicn).iconBMap.baseAddr				= nil;
	(**cicn).iconBMap.rowBytes				= bwRowBytes;
	(**cicn).iconBMap.bounds				= pixMapInfo.sourceRect;
	
	bitmapSize = ((**cicn).iconBMap.bounds.bottom - (**cicn).iconBMap.bounds.top) * bwRowBytes;


	/* Fill in the cicn's mask bitmap fields. */
	
	(**cicn).iconMask.baseAddr				= nil;
	(**cicn).iconMask.rowBytes				= bwRowBytes;
	(**cicn).iconMask.bounds				= pixMapInfo.sourceRect;
	
	/* Fill in the cicn's pixmap fields. */
	
	(**cicn).iconPMap.baseAddr				= nil;
	(**cicn).iconPMap.rowBytes				= (**picPixMap).rowBytes;
	(**cicn).iconPMap.bounds				= (**picPixMap).bounds;
	(**cicn).iconPMap.pmVersion				= 0;
	(**cicn).iconPMap.packType				= 0;
	(**cicn).iconPMap.packSize				= 0;
	(**cicn).iconPMap.hRes					= pixMapInfo.hRes;
	(**cicn).iconPMap.vRes					= pixMapInfo.vRes;
	(**cicn).iconPMap.pixelSize				= pixMapInfo.depth;
	(**cicn).iconPMap.planeBytes			= 0;
	(**cicn).iconPMap.pmReserved			= 0;
	(**cicn).iconPMap.pixelType				= 0;
	(**cicn).iconPMap.cmpCount				= 1;
	(**cicn).iconPMap.cmpSize				= pixMapInfo.depth;
	(**cicn).iconPMap.pmTable 				= colorTable;

	/* Set the picture pixmap to the iconData field. */
	
	(**cicn).iconData = (Handle)picPixMap;
	
	/* Resize the 'cicn' for the bitmap image, mask, color table and color image */
	
	colorTableSize = sizeof(ColorTable) + ((**((**cicn).iconPMap.pmTable)).ctSize) * sizeof(ColorSpec);
	
	SetHandleSize( (Handle)cicn, (long)sizeof( CIcon ) + (bitmapSize * 2) + colorTableSize + picSize);
	
	/* Copy the image data into the iconMaskData array. */
	/* Note: This is an array of shorts, so divide bitmapSize by 2. */
	
	BlockMove( (*maskPixMap)->baseAddr, (**cicn).iconMaskData, bitmapSize);
	BlockMove( (*bwPixMap)->baseAddr, &(**cicn).iconMaskData[bitmapSize / 2], bitmapSize);
	BlockMove( (*colorTable), &(**cicn).iconMaskData[bitmapSize], colorTableSize);
	BlockMove( (*picPixMap)->baseAddr, &(**cicn).iconMaskData[bitmapSize + colorTableSize/2], picSize);
	
	//PlotCIcon( &pixMapInfo.sourceRect, cicn );
	
	

//	(**cicn).iconPMap.pmTable = (CTabHandle) ((unsigned long)(&(**cicn).iconMaskData[bitmapSize]) - (unsigned long)(*cicn));
//	(**cicn).iconData = (Handle) ((unsigned long)(&(**cicn).iconMaskData[bitmapSize + colorTableSize/2]) - (unsigned long)(*cicn));
	
	scheme = FSpOpenResFile(&schemeSpec, fsRdWrPerm);
	UseResFile(scheme);
	oldCicn = Get1Resource('cicn', cicnID);
	if (oldCicn != NULL)
	{
		RemoveResource(oldCicn);
		UpdateResFile(scheme);
		CloseResFile(scheme);
		//FSClose(scheme);
		UseResFile(appFile);
		scheme = FSpOpenResFile(&schemeSpec, fsRdWrPerm);
		UseResFile(scheme);
	}
	DetachResource((Handle)cicn);
	AddResource((Handle)cicn, 'cicn', cicnID, cicnName);
	SetResAttrs((Handle)cicn, resSysHeap + resPurgeable);
	ChangedResource((Handle)cicn);
	WriteResource((Handle)cicn);
	UpdateResFile(scheme);
	CloseResFile(scheme);
	UseResFile(appFile);
	//FSClose(scheme);
		
	UnlockPixels(picPixMap);
	UnlockPixels(bwPixMap);
	UnlockPixels(maskPixMap);
	
	DisposeGWorld(picGWorld);
	DisposeGWorld(bwGWorld);
	DisposeGWorld(maskGWorld);
	
	HUnlock((Handle)colorTable);
	DisposeHandle((Handle)colorTable);
	
	HUnlock(pic);
	DisposeHandle(pic);
	
	DisposeHandle((Handle)cicn);
	RGBBackColor(&currentBackColor);
	
	
}

void HandleEditChoice(int item)
{
	item;
	SysBeep(6);
}


