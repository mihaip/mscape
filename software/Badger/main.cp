#include "badger.h"

void main(void)
{
	Initialize();
	
	EventLoop();
	
	ExitApplication();
	
}

void Initialize()
{
	DateTimeRec		theDate;
	StringHandle	doesExpire;
	
	InitToolBox();
	
	GetGWorld(&startupPort, &startupDevice);
	
	GetTime(&theDate);
	doesExpire = GetString( 128 );
	if (EqualString(*doesExpire, "\p1", true, true))
	{
		if (theDate.month >= 12 && theDate.day >= 1 && theDate.year >= 1998)
		{
			DisplayAlert("This beta of Badger expired on December 1, 1998.", "Please go to http://cafe.ambrosiasw.com/gui-central/clip2cicn.html to get a new version");
			ExitApplication();
		}
	}
	InitMenuBar();
	
	AppleEventInit();
	
	isDone = false;
	navServicesAvailable = NavServicesAvailable();
	appFile = CurResFile();
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

	reply;
	refCon;

	err = AEGetParamDesc(theAppleEvent, keyDirectObject, typeAEList, &fileSpecList);
	
	err = AECountItems(&fileSpecList, &count);
	for (i = 1; i <= count; i++)
	{
		err = AEGetNthPtr(&fileSpecList, i, typeFSS, &keyword, &type, (Ptr)&desc, sizeof(FSSpec), &actual);
		if (err == noErr)
		{
			
			badgesSpec = desc;
			if (navServicesAvailable)
				NewIconSetNav();
			else
				NewIconSetOld();
			MakeNewSet();	
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
	switch (item)
	{
		case iNewIconSet : NewIconSet(); break;
		case iEditBadges : EditBadges(); break;
		case iQuit       :	isDone = true; break;
	}
}

void NewIconSet()
{
	OSStatus	theErr;
	
/*	if (navServicesAvailable)
	{
		theErr = GetBadgesNav();
		theErr = NewIconSetNav();
	}
	else
	{ */
		theErr = GetBadgesOld();
		theErr = NewIconSetOld();
	//}
	if (theErr == noErr)
		MakeNewSet();
	
}

OSStatus NewIconSetNav()
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
	CopyString(dialogOptions.savedFileName, "\pUntitled Icon Set");
	
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

		GetFSSpecFromAEDesc(resultDesc, setSpec);
		
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

OSStatus NewIconSetOld()
{
	StandardFileReply reply;

	StandardPutFile("\pCreate a new icon set:", "\pUntitled Icon Set", &reply);

	if ( reply.sfGood )
	{
		setSpec = reply.sfFile;	
		return noErr;
	}
	return paramErr;
}



void EditBadges()
{
	OSStatus	theErr;
	//if (navServicesAvailable)
	//	theErr = GetBadgesNav();
	//else
		theErr = GetBadgesOld();
	if (theErr == noErr)
		PositionBadges();
}

OSStatus GetBadgesNav()
{
	NavDialogOptions	dialogOptions;
	NavReplyRecord		reply;
	NavEventUPP			eventUPP;
	AEDesc				resultDesc;
	NavTypeListHandle	typeList;
	
	UseResFile(appFile);
	
	eventUPP = NewNavEventProc(DummyFunction);
	
	NavGetDefaultDialogOptions ( &dialogOptions );
	dialogOptions.dialogOptionFlags -= kNavAllowMultipleFiles;
	dialogOptions.dialogOptionFlags += kNavNoTypePopup;
	dialogOptions.dialogOptionFlags -= kNavAllowPreviews;
	CopyString(dialogOptions.clientName, "\pBadges");
	typeList = MakeTypeList ( 'Bdgr', 1, 'Bdgs');
	
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

		GetFSSpecFromAEDesc(resultDesc, badgesSpec);
	
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


OSStatus GetBadgesOld()
{
	StandardFileReply	reply;
	SFTypeList			typeList;
	
	typeList[0] = badgesFileType;
	
	StandardGetFile(nil, 1, typeList, &reply);
	if ( reply.sfGood)
	{
		badgesSpec = reply.sfFile;
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


#define DisposeAndReturn()\
{\
	SysBeep(6);\
	HUnlock((Handle)badgeicnsHandle);\
	DisposeHandle((Handle)badgeicnsHandle);\
	CloseResFile(badges);\
	UseResFile(appFile);\
	return;\
}

void MergeIcon(int ID, Str255 name, icnsClass* baseicns)
{
	GWorldPtr			tempGWorld;
	PixMapHandle		tempPix;
	Rect				largeIconRect={0,0,32, 32}, smallIconRect = {0, 0, 16, 16}, badgeRect, smallBadgeRect;
	CTabHandle			grayscaleTable;
	RGBColor			currentForeColor, currentBackColor;
	short				set, badges;
	CGrafPtr			curPort;
	GDHandle			curDevice;
	tOffset**			offsetHandle;
	int					hOffset=0, vOffset=0, smallHOffset=0, smallVOffset=0;
	RgnHandle			ignoredRgn;
	icnsClass			badgeicns, targeticns;

	GetForeColor(&currentForeColor);
	GetBackColor(&currentBackColor);
	GetGWorld(&curPort, &curDevice);
	
	badges = FSpOpenResFile(&badgesSpec, fsRdPerm);
	UseResFile(badges);
	
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

	badgeicns.ID = ID;
	badgeicns.Load();
	
	CloseResFile(badges);
	UseResFile(appFile);
	
	targeticns.ID = ID;
	
	// loading the large version
	SetGWorld(targeticns.icl8GW, NULL);
	baseicns->Display(largeIconRect);
	badgeRect = largeIconRect;
	OffsetRect(&badgeRect, hOffset, vOffset);
	badgeicns.Display(badgeRect);
	
	SetGWorld(badgeicns.l8mkGW, NULL);
	ScrollRect(&largeIconRect, hOffset, vOffset, ignoredRgn);
	SetGWorld(badgeicns.il32GW, NULL);
	ScrollRect(&largeIconRect, hOffset, vOffset, ignoredRgn);
	SetGWorld(badgeicns.icnmGW, NULL);
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
	
	CopyBits((BitMap *) *(badgeicns.icnmPix),
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

	CopyDeepMask((BitMap*) *(badgeicns.l8mkPix),
			 	 (BitMap*) *(baseicns->icnmPix),
			 	 (BitMap*) *tempPix,
				 &largeIconRect,
				 &largeIconRect,
				 &largeIconRect,
				 srcCopy,
				 NULL);

	
	CopyDeepMask((BitMap *) *(badgeicns.il32Pix),
				 (BitMap *) *tempPix,
				 (BitMap *) *(targeticns.il32Pix),
				 &largeIconRect,
				 &largeIconRect,
			 	 &largeIconRect,
				 srcCopy,
				 NULL);
				 
	SetGWorld(baseicns->icnmGW, NULL);
	InvertRect(&largeIconRect);
	
	CopyMask((BitMap *) *(badgeicns.il32Pix),
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
			 (BitMap *) *(badgeicns.l8mkPix),
			 (BitMap *) *(targeticns.l8mkPix),
			 &largeIconRect,
			 &largeIconRect,
			 &largeIconRect,
			 srcCopy,
			 NULL);
	
	UnlockPixels(tempPix);
	DisposeGWorld(tempGWorld);
	
	// loading the small version
	SetGWorld(targeticns.ics8GW, NULL);
	baseicns->Display(smallIconRect);
	badgeRect = smallIconRect;
	OffsetRect(&badgeRect, smallHOffset, smallVOffset);
	badgeicns.Display(badgeRect);
	
	SetGWorld(badgeicns.s8mkGW, NULL);
	ScrollRect(&smallIconRect, smallHOffset, smallVOffset, ignoredRgn);
	SetGWorld(badgeicns.is32GW, NULL);
	ScrollRect(&smallIconRect, smallHOffset, smallVOffset, ignoredRgn);
	SetGWorld(badgeicns.icsmGW, NULL);
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
	
	CopyBits((BitMap *) *(badgeicns.icsmPix),
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

	CopyDeepMask((BitMap*) *(badgeicns.s8mkPix),
			 	 (BitMap*) *(baseicns->icsmPix),
			 	 (BitMap*) *tempPix,
				 &smallIconRect,
				 &smallIconRect,
				 &smallIconRect,
				 srcCopy,
				 NULL);
	
	CopyDeepMask((BitMap *) *(badgeicns.is32Pix),
				 (BitMap *) *tempPix,
				 (BitMap *) *(targeticns.is32Pix),
				 &smallIconRect,
				 &smallIconRect,
			 	 &smallIconRect,
				 srcCopy,
				 NULL);
				 
	SetGWorld(baseicns->icsmGW, NULL);
	InvertRect(&smallIconRect);
	
	CopyMask((BitMap *) *(badgeicns.is32Pix),
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
			 (BitMap *) *(badgeicns.s8mkPix),
			 (BitMap *) *(targeticns.s8mkPix),
			 &smallIconRect,
			 &smallIconRect,
			 &smallIconRect,
			 srcCopy,
			 NULL);
	
	UnlockPixels(tempPix);
	DisposeGWorld(tempGWorld);
	
	CopyString(targeticns.name, name);
	targeticns.flags = resSysHeap + resPurgeable;
	targeticns.SaveToFile(setSpec, false, true);
	
	DisposeCTable(grayscaleTable);
	
	SetGWorld(curPort, curDevice);
	
	RGBForeColor(&currentForeColor);
	RGBBackColor(&currentBackColor);
}

void MakeNewSet()
{
	DialogPtr			newSet;
	Rect				itemRect;
	Handle				item;
	short				itemType;
	short				badges, set;
	IconFamilyHandle	badgeicnsHandle, baseHandle;
	Str255				string;
	int					resourceCount;
	short				ID;
	unsigned long		type;
	long				handleSize;
	icnsClass			baseicns;
		
	FSpDelete(&setSpec);

	FSpCreate(&setSpec, 'Bdgr', 'Icon', 0); /*smRoman = 0*/
	FSpCreateResFile(&setSpec, 'Bdgr', 'Icon', 0); /*smRoman = 0*/
	
	badges = FSpOpenResFile(&badgesSpec, fsRdPerm);
	UseResFile(badges);
	resourceCount = Count1Resources('icns');
	baseicns.ID = -3999;
	baseicns.Load();
	CloseResFile(badges);
	UseResFile(appFile);
	
	newSet = GetNewDialog (insertCicnID, nil, (WindowPtr)-1L);
	
	SetPort( newSet);
	
	ShowWindow( newSet );
	
	GetDialogItem(newSet, 1, &itemType, &item, &itemRect);
	SetDialogItemText(item, "\pMerging");
			
	for (int i=1; i <= resourceCount; i++)
	{
		badges = FSpOpenResFile(&badgesSpec, fsRdPerm);
		UseResFile(badges);
		badgeicnsHandle = (IconFamilyHandle)Get1IndResource('icns', i);
		HLock((Handle)badgeicnsHandle);
		GetResInfo((Handle)badgeicnsHandle, &ID, &type, string);
		HUnlock((Handle)badgeicnsHandle);
		ReleaseResource((Handle)badgeicnsHandle);
		CloseResFile(badges);
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
			badges = FSpOpenResFile(&badgesSpec, fsRdPerm);
			UseResFile(badges);
			badgeicnsHandle = (IconFamilyHandle)Get1Resource('icns', -3999);
			HLock((Handle)badgeicnsHandle);
			handleSize = (**badgeicnsHandle).resourceSize;
			baseHandle = (IconFamilyHandle)NewHandleClear(handleSize);
			HLock((Handle)baseHandle);
			BlockMove(*badgeicnsHandle, *baseHandle, handleSize);
			HUnlock((Handle)badgeicnsHandle);
			ReleaseResource((Handle)badgeicnsHandle);
			CloseResFile(badges);
			UseResFile(appFile);
			
			set = FSpOpenResFile(&setSpec, fsRdWrPerm);
			UseResFile(set);
			DetachResource((Handle)baseHandle);
			AddResource((Handle)baseHandle, 'icns', -3999, "\pBase Folder");
			SetResAttrs((Handle)baseHandle, resSysHeap + resPurgeable);
			ChangedResource((Handle)baseHandle);
			WriteResource((Handle)baseHandle);
			UpdateResFile(set);
			CloseResFile(set);
			UseResFile(appFile);
			HUnlock((Handle)baseHandle);
			DisposeHandle((Handle)baseHandle);
		}
	}	
	
	DisposeDialog(newSet);
	SetGWorld(startupPort, startupDevice);
}

#define WriteToDisk()\
{\
	badges = FSpOpenResFile(&badgesSpec, fsRdWrPerm);\
	UseResFile(badges);\
	offsetHandle = (tOffset**)Get1Resource('Ofst', ID);\
	if (offsetHandle != NULL)\
	{\
		RemoveResource((Handle)offsetHandle);\
		UpdateResFile(badges);\
		CloseResFile(badges);\
		UseResFile(appFile);\
		badges = FSpOpenResFile(&badgesSpec, fsRdWrPerm);\
		UseResFile(badges);\
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
	UpdateResFile(badges);\
	HUnlock((Handle)offsetHandle);\
	CloseResFile(badges);\
	UseResFile(appFile);\
}

#define Refresh()\
{\
	NewGWorld(&iconGWorld, 32, &largeIconRect, NULL, NULL, 0);\
	iconPix = GetGWorldPixMap(iconGWorld);\
	LockPixels(iconPix);\
	NewGWorld(&smallIconGWorld, 32, &smallIconRect, NULL, NULL, 0);\
	smallIconPix = GetGWorldPixMap(smallIconGWorld);\
	LockPixels(smallIconPix);\
	SetGWorld(iconGWorld, NULL);\
	ForeColor(blackColor);\
	BackColor(whiteColor);\
	EraseRect(&largeIconRect);\
	badgeRect = largeIconRect;\
	OffsetRect(&badgeRect, hOffset, vOffset);\
	baseicns.Display(largeIconRect);\
	if (ID != 128)\
	{\
		badgeicns.ID = ID;\
		badgeicns.LoadFromFile(badgesSpec);\
		badgeicns.Display(badgeRect);\
	}\
	else\
	{\
		InsetRect(&badgeRect, 8, 8);\
		FrameRect(&badgeRect);\
	}\
	CopyBits((BitMap *) (*iconPix),&positionBadges->portBits,&largeIconRect, &targetRect,srcCopy, NULL);\
	\
	SetGWorld(smallIconGWorld, NULL);\
	ForeColor(blackColor);\
	BackColor(whiteColor);\
	EraseRect(&smallIconRect);\
	smallBadgeRect = smallIconRect;\
	OffsetRect(&smallBadgeRect, smallHOffset, smallVOffset);\
	baseicns.Display(smallIconRect);\
	if (ID != 128)\
	{\
		badgeicns.ID = ID;\
		badgeicns.LoadFromFile(badgesSpec);\
		badgeicns.Display(smallBadgeRect);\
	}\
	else\
	{\
		InsetRect(&smallBadgeRect, 4, 4);\
		FrameRect(&smallBadgeRect);\
	}\
	CopyBits((BitMap *) (*smallIconPix),&positionBadges->portBits,&smallIconRect, &smallTargetRect,srcCopy, NULL);\
	\
	UnlockPixels(iconPix);\
	DisposeGWorld(iconGWorld);\
	UnlockPixels(smallIconPix);\
	DisposeGWorld(smallIconGWorld);\
	SetPort(positionBadges);\
	FillCRect(&desktopPreview, desktopPattern);\
	RGBForeColor(&currentForeColor);\
	RGBBackColor(&currentBackColor);\
	previewLargeBadge = previewLargeBase;\
	previewSmallBadge = previewSmallBase;\
	OffsetRect(&previewLargeBadge, hOffset, vOffset);\
	OffsetRect(&previewSmallBadge, smallHOffset, smallVOffset);\
	baseicns.Display(previewLargeBase);\
	baseicns.Display(previewSmallBase);\
	if (ID != 128)\
	{\
		badgeicns.ID = ID;\
		badgeicns.LoadFromFile(badgesSpec);\
		badgeicns.Display(previewLargeBadge);\
		badgeicns.Display(previewSmallBadge);\
	}\
	else\
	{\
		InsetRect(&previewLargeBadge, 8, 8);\
		FrameRect(&previewLargeBadge);\
		InsetRect(&previewSmallBadge, 4, 4);\
		FrameRect(&previewSmallBadge);\
	}\
}\

void PositionBadges(void)
{
	DialogPtr		positionBadges;
	bool			dialogDone;
	short			itemHit;
	GWorldPtr		iconGWorld, smallIconGWorld;
	PixMapHandle	iconPix, smallIconPix;
	Rect			targetRect, smallTargetRect, badgeRect, smallBadgeRect, largeIconRect = {0,0,32,32}, smallIconRect = {0,0,16,16}, itemRect;
	Rect			previewLargeBase, previewLargeBadge, previewSmallBase, previewSmallBadge, desktopPreview;
	Handle			item;
	short			itemType;
	RGBColor		currentForeColor, currentBackColor;
	long			ID=-20801;
	short			badges;
	short			hOffset=0, vOffset=0, i, defaultHOffset = 0, defaultVOffset = 0;
	short			smallHOffset=0, smallVOffset = 0, smallDefaultHOffset = 0, smallDefaultVOffset = 0;
	icnsClass		badgeicns, baseicns;
	long			selectedIcns;
	Str255			IDAsString, menuItemText, string, icnsName="\pInternet Search Sites";
	tOffset**		offsetHandle;
	PixPatHandle	desktopPattern;
	
	badges = FSpOpenResFile(&badgesSpec, fsRdPerm);
	UseResFile(badges);
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
	CloseResFile(badges);
	UseResFile(appFile);
	
	positionBadges = GetNewDialog (positionBadgesID, nil, (WindowPtr)-1L);
	SetPort( positionBadges);
	
	GetForeColor(&currentForeColor);
	GetBackColor(&currentBackColor);
	SetDialogDefaultItem(positionBadges, kOK);
	
	GetDialogItem(positionBadges, kIconPreview, &itemType, &item, &targetRect);
	DrawImageWell(targetRect);
	
	GetDialogItem(positionBadges, kSmallIconPreview, &itemType, &item, &smallTargetRect);
	DrawImageWell(smallTargetRect);
	
	desktopPattern = GetPixPat(16);
	GetDialogItem(positionBadges, kDesktopPreview, &itemType, &item, &desktopPreview);
	FillCRect(&desktopPreview, desktopPattern);
	DrawImageWell(desktopPreview);
	
	GetDialogItem(positionBadges, kDesktopPreview, &itemType, &item, &itemRect);
	itemRect.left += (itemRect.right - itemRect.left)/2;
	previewLargeBase = largeIconRect;
	MakeTargetRect(itemRect, &previewLargeBase);
	
	GetDialogItem(positionBadges, kDesktopPreview, &itemType, &item, &itemRect);
	itemRect.right -= (itemRect.right - itemRect.left)/2;
	previewSmallBase = smallIconRect;
	MakeTargetRect(itemRect, &previewSmallBase);
	
	if (!CheckClipboard(false))
	{
		GetDialogItem(positionBadges, kInsertClipboard, &itemType, &item, &itemRect);
		HiliteControl((ControlHandle)item, 255);
	}
	
	ShowWindow( positionBadges );
	
	Refresh();
	
	SetPort(positionBadges);
	
	dialogDone = false;
	while (!dialogDone)
	{
		ModalDialog(nil, &itemHit);
		
		switch (itemHit)
		{
			case kOK: WriteToDisk(); dialogDone = true; break;
			case kInsertClipboard:
				badgeicns.ImportFromClipboard();
				badgeicns.SaveToFile(badgesSpec, false, true);
				Refresh();
				break;
			case kShiftUp: vOffset--; Refresh(); break;
			case kShiftDown: vOffset++; Refresh(); break;
			case kShiftLeft: hOffset--; Refresh(); break;
			case kShiftRight: hOffset++; Refresh(); break;
			case kSmallShiftUp: smallVOffset--; Refresh(); break;
			case kSmallShiftDown: smallVOffset++; Refresh(); break;
			case kSmallShiftLeft: smallHOffset--; Refresh(); break;
			case kSmallShiftRight: smallHOffset++; Refresh(); break;
			case kPopup:
				WriteToDisk();
				GetDialogItem(positionBadges, kPopup, &itemType, &item, &itemRect);
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
				
				badges = FSpOpenResFile(&badgesSpec, fsRdWrPerm);
				UseResFile(badges);
				
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
				CloseResFile(badges);
				UseResFile(appFile);
				
				DrawImageWell(targetRect);
				DrawImageWell(smallTargetRect);
				DrawImageWell(desktopPreview);
				Refresh();
				break;
		}
		
		
	}
	DisposePixPat(desktopPattern);
	SetGWorld(startupPort, startupDevice);
	DisposeDialog(positionBadges);
	
}

void HandleEditChoice(int item)
{
	item;
	SysBeep(6);
}


