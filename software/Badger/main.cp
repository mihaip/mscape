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
		if (theDate.month >= 10 && theDate.day >= 1 && theDate.year >= 1998)
		{
			DisplayAlert("This beta of clip2icns expired on October 1, 1998.", "Please go to http://cafe.ambrosiasw.com/gui-central/clip2cicn.html to get a new version");
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


				
IconFamilyElement* GetIcon(long iconType, IconFamilyHandle icnsHandle)
{
	IconFamilyElement*	elementPtr;
	unsigned long				endingSize;
	
	elementPtr = (**icnsHandle).elements;
	endingSize = (unsigned long)(*icnsHandle) + (**icnsHandle).resourceSize;
	while (1)
	{
		if (elementPtr->elementType == iconType)
		{
			return elementPtr;
		}
		else
		{
			elementPtr = (IconFamilyElement *)((char *)(elementPtr) + elementPtr->elementSize);
			if ((unsigned long)elementPtr >= endingSize)
			{
				return NULL;
			}
		}
	}
}


void GetBaseFolder(void)
{
	Rect				largeIconRect={0,0,32, 32}, smallIconRect = {0, 0, 16, 16};
	CTabHandle			grayscaleTable;
	IconFamilyHandle	baseicnsHandle;
	IconFamilyElement*	elementPtr;
	
	
	NewGWorld(&baseLargeIconGWorld, 32, &largeIconRect, NULL, NULL, 0);
	baseLargeIconPix = GetGWorldPixMap(baseLargeIconGWorld);
	LockPixels(baseLargeIconPix);
	
	grayscaleTable = GetCTable(40);
	NewGWorld(&baseLargeMaskGWorld, 8, &largeIconRect, grayscaleTable, NULL, 0);
	baseLargeMaskPix = GetGWorldPixMap(baseLargeMaskGWorld);
	LockPixels(baseLargeMaskPix);
	
	NewGWorld(&baseLarge1BitMaskGWorld, 1,  &largeIconRect, NULL, NULL, 0);
	baseLarge1BitMaskPix = GetGWorldPixMap(baseLarge1BitMaskGWorld);
	LockPixels(baseLarge1BitMaskPix);
	
	NewGWorld(&baseLarge8BitIconGWorld, 8, &largeIconRect, NULL, NULL, 0);
	baseLarge8BitIconPix = GetGWorldPixMap(baseLarge8BitIconGWorld);
	LockPixels(baseLarge8BitIconPix);
	
	NewGWorld(&baseSmallIconGWorld, 32, &smallIconRect, NULL, NULL, 0);
	baseSmallIconPix = GetGWorldPixMap(baseSmallIconGWorld);
	LockPixels(baseSmallIconPix);
	
	NewGWorld(&baseSmallMaskGWorld, 8, &smallIconRect, grayscaleTable, NULL, 0);
	baseSmallMaskPix = GetGWorldPixMap(baseSmallMaskGWorld);
	LockPixels(baseSmallMaskPix);
	
	NewGWorld(&baseSmall1BitMaskGWorld, 1,  &smallIconRect, NULL, NULL, 0);
	baseSmall1BitMaskPix = GetGWorldPixMap(baseSmall1BitMaskGWorld);
	LockPixels(baseSmall1BitMaskPix);
	
	NewGWorld(&baseSmall8BitIconGWorld, 8, &smallIconRect, NULL, NULL, 0);
	baseSmall8BitIconPix = GetGWorldPixMap(baseSmall8BitIconGWorld);
	LockPixels(baseSmall8BitIconPix);
	
	baseicnsHandle = (IconFamilyHandle)Get1Resource('icns', -3999);
	
	// getting large base folder
	elementPtr = GetIcon('il32', baseicnsHandle);
	CropPixMap(baseLargeIconPix, 128);
	BlockMove(elementPtr->elementData, (*baseLargeIconPix)->baseAddr, large32BitSize);
	
	elementPtr = GetIcon('l8mk', baseicnsHandle);
	CropPixMap(baseLargeMaskPix, 32);
	BlockMove(elementPtr->elementData, (*baseLargeMaskPix)->baseAddr, large8BitMaskSize);
	
	elementPtr = GetIcon('icl8', baseicnsHandle);
	CropPixMap(baseLarge8BitIconPix, 32);
	BlockMove(elementPtr->elementData, (*baseLarge8BitIconPix)->baseAddr, large8BitSize);
	
	elementPtr = GetIcon('ICN#', baseicnsHandle);
	CropPixMap(baseLarge1BitMaskPix, 4);
	BlockMove(&(elementPtr->elementData[large1BitSize/2]), (*baseLarge1BitMaskPix)->baseAddr, large1BitSize/2);
	
	// getting small base folder
	elementPtr = GetIcon('is32', baseicnsHandle);
	CropPixMap(baseSmallIconPix, 64);
	BlockMove(elementPtr->elementData, (*baseSmallIconPix)->baseAddr, small32BitSize);
	
	elementPtr = GetIcon('s8mk', baseicnsHandle);
	CropPixMap(baseSmallMaskPix, 16);
	BlockMove(elementPtr->elementData, (*baseSmallMaskPix)->baseAddr, small8BitMaskSize);
	
	elementPtr = GetIcon('ics8', baseicnsHandle);
	CropPixMap(baseSmall8BitIconPix, 16);
	BlockMove(elementPtr->elementData, (*baseSmall8BitIconPix)->baseAddr, small8BitSize);
	
	elementPtr = GetIcon('ics#', baseicnsHandle);
	CropPixMap(baseSmall1BitMaskPix, 2);
	BlockMove(&(elementPtr->elementData[small1BitSize/2]), (*baseSmall1BitMaskPix)->baseAddr, small1BitSize/2);
	
	DisposeCTable(grayscaleTable);
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

void MergeIcon(int ID)
{
	GWorldPtr			badgeLargeIconGWorld, badgeLargeMaskGWorld, badgeLarge1BitMaskGWorld, tempGWorld;
	GWorldPtr			badgeSmallIconGWorld, badgeSmallMaskGWorld, badgeSmall1BitMaskGWorld;
	GWorldPtr			targetIconGWorld, targetMaskGWorld, target8BitIconGWorld;
	GWorldPtr			targetSmallIconGWorld, targetSmallMaskGWorld, targetSmall8BitIconGWorld;
	PixMapHandle		badgeLargeIconPix, badgeLargeMaskPix, badgeLarge1BitMaskPix, tempPix;
	PixMapHandle		badgeSmallIconPix, badgeSmallMaskPix, badgeSmall1BitMaskPix;
	PixMapHandle		targetIconPix, targetMaskPix, target8BitIconPix;
	PixMapHandle		targetSmallIconPix, targetSmallMaskPix, targetSmall8BitIconPix;
	Rect				largeIconRect={0,0,32, 32}, smallIconRect = {0, 0, 16, 16}, badgeRect, smallBadgeRect;
	IconFamilyHandle	targeticnsHandle, badgeicnsHandle;
	IconFamilyElement	*il32Ptr, *l8mkPtr, *ICNPtr, *elementPtr, *is32Ptr, *s8mkPtr, *icsPtr;
	CTabHandle			grayscaleTable;
	long				icnsSize;
	RGBColor			currentForeColor, currentBackColor;
	short				set, badges;
	CGrafPtr			curPort;
	GDHandle			curDevice;
	tOffset**			offsetHandle;
	int					hOffset=0, vOffset=0, smallHOffset=0, smallVOffset=0;
	RgnHandle			ignoredRgn;
	IconRef				iconRef;

	GetForeColor(&currentForeColor);
	GetBackColor(&currentBackColor);
	GetGWorld(&curPort, &curDevice);
	
	badges = FSpOpenResFile(&badgesSpec, fsRdPerm);
	UseResFile(badges);
	
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

	badgeicnsHandle = (IconFamilyHandle)GetResource('icns', ID);
	if (badgeicnsHandle == NULL)
		DisposeAndReturn();
		
	HLock((Handle)badgeicnsHandle);
	
	il32Ptr = GetIcon('il32', badgeicnsHandle);
	if (il32Ptr == NULL)
		DisposeAndReturn();
	
	l8mkPtr = GetIcon('l8mk', badgeicnsHandle);
	if (l8mkPtr == NULL)
		DisposeAndReturn();
	
	ICNPtr = GetIcon('ICN#', badgeicnsHandle);
	if (ICNPtr == NULL)
		DisposeAndReturn();
	is32Ptr = GetIcon('is32', badgeicnsHandle);
	if (is32Ptr == NULL)
		DisposeAndReturn();
	
	s8mkPtr = GetIcon('s8mk', badgeicnsHandle);
	if (s8mkPtr == NULL)
		DisposeAndReturn();
	
	icsPtr = GetIcon('ics#', badgeicnsHandle);
	if (icsPtr == NULL)
		DisposeAndReturn();
	
	ForeColor(blackColor);
	BackColor(whiteColor);
	
	grayscaleTable = GetCTable(40);
	
	NewGWorld(&targetIconGWorld, 32, &largeIconRect, NULL, NULL, 0);
	targetIconPix = GetGWorldPixMap(targetIconGWorld);
	LockPixels(targetIconPix);
	
	NewGWorld(&target8BitIconGWorld, 8, &largeIconRect, NULL, NULL, 0);
	target8BitIconPix = GetGWorldPixMap(target8BitIconGWorld);
	LockPixels(target8BitIconPix);
	SetGWorld(target8BitIconGWorld, NULL);
	
	CopyBits((BitMap *) *baseLarge8BitIconPix,
			 (BitMap *) *target8BitIconPix,
			 &largeIconRect,
			 &largeIconRect,
			 srcCopy,
			 NULL);
	
	badgeRect = largeIconRect;
	OffsetRect(&badgeRect, hOffset, vOffset);
	RegisterIconRefFromResource('Bdgr', 'test', &badgesSpec, ID, &iconRef);
	PlotIconRef(&badgeRect,atNone,ttNone,kIconServicesNormalUsageFlag,iconRef);
	ReleaseIconRef(iconRef);
	
	CropPixMap(target8BitIconPix, 32);
	
	NewGWorld(&targetMaskGWorld, 8, &largeIconRect, grayscaleTable, NULL, 0);
	targetMaskPix = GetGWorldPixMap(targetMaskGWorld);
	LockPixels(targetMaskPix);
	
	NewGWorld(&badgeLargeIconGWorld, 32, &largeIconRect, NULL, NULL, 0);
	SetGWorld(badgeLargeIconGWorld, NULL);
	badgeLargeIconPix = GetGWorldPixMap(badgeLargeIconGWorld);
	LockPixels(badgeLargeIconPix);
	CropPixMap(badgeLargeIconPix, 128);
	BlockMove(il32Ptr->elementData, (*badgeLargeIconPix)->baseAddr, large32BitSize);
	ScrollRect(&largeIconRect, hOffset, vOffset, ignoredRgn);
	
	NewGWorld(&badgeLargeMaskGWorld, 8, &largeIconRect, grayscaleTable, NULL, 0);
	SetGWorld(badgeLargeMaskGWorld, NULL);
	badgeLargeMaskPix = GetGWorldPixMap(badgeLargeMaskGWorld);
	LockPixels(badgeLargeMaskPix);
	CropPixMap(badgeLargeMaskPix, 32);
	BlockMove(l8mkPtr->elementData, (*badgeLargeMaskPix)->baseAddr, large8BitMaskSize);
	ScrollRect(&largeIconRect, hOffset, vOffset, ignoredRgn);
	
	NewGWorld(&badgeLarge1BitMaskGWorld, 1,  &largeIconRect, NULL, NULL, 0);
	SetGWorld(badgeLarge1BitMaskGWorld, NULL);
	badgeLarge1BitMaskPix = GetGWorldPixMap(badgeLarge1BitMaskGWorld);
	LockPixels(badgeLarge1BitMaskPix);
	CropPixMap(badgeLarge1BitMaskPix, 4);
	BlockMove(&(ICNPtr->elementData[large1BitSize/2]), (*badgeLarge1BitMaskPix)->baseAddr, large1BitSize/2);
	ScrollRect(&largeIconRect, hOffset, vOffset, ignoredRgn);
	
	NewGWorld(&tempGWorld, 8, &largeIconRect, grayscaleTable, NULL, 0);
	SetGWorld(tempGWorld, NULL);
	EraseRect(&largeIconRect);
	tempPix = GetGWorldPixMap(tempGWorld);
	LockPixels(tempPix);
	
	CopyBits((BitMap *) *baseLarge1BitMaskPix,
			 (BitMap *) *badgeLarge1BitMaskPix,
			 &largeIconRect,
			 &largeIconRect,
			 srcOr,
			 NULL);
	
	CopyBits((BitMap *) *baseLargeIconPix,
			 (BitMap *) *targetIconPix,
			 &largeIconRect,
			 &largeIconRect,
			 srcCopy,
			 NULL);
	
	CopyMask((BitMap*) *badgeLargeMaskPix,
			 (BitMap*) *baseLarge1BitMaskPix,
			 (BitMap*) *tempPix,
			 &largeIconRect,
			 &largeIconRect,
			 &largeIconRect
			);	
	CopyDeepMask((BitMap *) *badgeLargeIconPix,
				 (BitMap *) *tempPix,
				 (BitMap *) *targetIconPix,
				 &largeIconRect,
				 &largeIconRect,
			 	 &largeIconRect,
				 srcCopy,
				 NULL);
				 
	SetGWorld(baseLarge1BitMaskGWorld, NULL);
	InvertRect(&largeIconRect);
	
	CopyMask((BitMap*) *badgeLargeIconPix,
			 (BitMap*) *baseLarge1BitMaskPix,
			 (BitMap *) *targetIconPix,
			 &largeIconRect,
			 &largeIconRect,
			 &largeIconRect
			);
	
	CropPixMap(targetIconPix, 32*32/8);
	
	UnlockPixels(tempPix);
	DisposeGWorld(tempGWorld);
	
	/*****************/		 
	
	CopyBits((BitMap *) *baseLargeMaskPix,
			 (BitMap *) *targetMaskPix,
			 &largeIconRect,
			 &largeIconRect,
			 srcCopy,
			 NULL);
			 
	CopyMask((BitMap*) *badgeLargeMaskPix,
			 (BitMap*) *baseLarge1BitMaskPix,
			 (BitMap *) *targetMaskPix,
			 &largeIconRect,
			 &largeIconRect,
			 &largeIconRect
			);
			
	InvertRect(&largeIconRect);
	
	CropPixMap(targetMaskPix, 32);

/******************* small icon ************************/
	NewGWorld(&targetSmallIconGWorld, 32, &smallIconRect, NULL, NULL, 0);
	targetSmallIconPix = GetGWorldPixMap(targetSmallIconGWorld);
	LockPixels(targetSmallIconPix);
	
	NewGWorld(&targetSmall8BitIconGWorld, 8, &smallIconRect, NULL, NULL, 0);
	targetSmall8BitIconPix = GetGWorldPixMap(targetSmall8BitIconGWorld);
	LockPixels(targetSmall8BitIconPix);
	SetGWorld(targetSmall8BitIconGWorld, NULL);
	
	CopyBits((BitMap *) *baseSmall8BitIconPix,
			 (BitMap *) *targetSmall8BitIconPix,
			 &smallIconRect,
			 &smallIconRect,
			 srcCopy,
			 NULL);
	
	smallBadgeRect = smallIconRect;
	OffsetRect(&smallBadgeRect, smallHOffset, smallVOffset);
	RegisterIconRefFromResource('Bdgr', 'test', &badgesSpec, ID, &iconRef);
	PlotIconRef(&smallBadgeRect,atNone,ttNone,kIconServicesNormalUsageFlag,iconRef);
	ReleaseIconRef(iconRef);
	
	CropPixMap(target8BitIconPix, 16);
	
	NewGWorld(&targetSmallMaskGWorld, 8, &smallIconRect, grayscaleTable, NULL, 0);
	targetSmallMaskPix = GetGWorldPixMap(targetSmallMaskGWorld);
	LockPixels(targetSmallMaskPix);
	
	NewGWorld(&badgeSmallIconGWorld, 32, &smallIconRect, NULL, NULL, 0);
	SetGWorld(badgeSmallIconGWorld, NULL);
	badgeSmallIconPix = GetGWorldPixMap(badgeSmallIconGWorld);
	LockPixels(badgeSmallIconPix);
	CropPixMap(badgeSmallIconPix, 64);
	BlockMove(is32Ptr->elementData, (*badgeSmallIconPix)->baseAddr, small32BitSize);
	ScrollRect(&smallIconRect, smallHOffset, smallVOffset, ignoredRgn);
	
	NewGWorld(&badgeSmallMaskGWorld, 8, &smallIconRect, grayscaleTable, NULL, 0);
	SetGWorld(badgeSmallMaskGWorld, NULL);
	badgeSmallMaskPix = GetGWorldPixMap(badgeSmallMaskGWorld);
	LockPixels(badgeSmallMaskPix);
	CropPixMap(badgeSmallMaskPix, 16);
	BlockMove(s8mkPtr->elementData, (*badgeSmallMaskPix)->baseAddr, small8BitMaskSize);
	ScrollRect(&smallIconRect, smallHOffset, smallVOffset, ignoredRgn);
	
	NewGWorld(&badgeSmall1BitMaskGWorld, 1,  &smallIconRect, NULL, NULL, 0);
	SetGWorld(badgeSmall1BitMaskGWorld, NULL);
	badgeSmall1BitMaskPix = GetGWorldPixMap(badgeSmall1BitMaskGWorld);
	LockPixels(badgeSmall1BitMaskPix);
	CropPixMap(badgeSmall1BitMaskPix, 2);
	BlockMove(&(icsPtr->elementData[small1BitSize/2]), (*badgeSmall1BitMaskPix)->baseAddr, small1BitSize/2);
	ScrollRect(&smallIconRect, smallHOffset, smallVOffset, ignoredRgn);
	
	DisposeRgn(ignoredRgn);
	
	HUnlock((Handle)badgeicnsHandle);
	ReleaseResource((Handle)badgeicnsHandle);
	CloseResFile(badges);
	UseResFile(appFile);
	
	NewGWorld(&tempGWorld, 8, &smallIconRect, grayscaleTable, NULL, 0);
	SetGWorld(tempGWorld, NULL);
	EraseRect(&smallIconRect);
	tempPix = GetGWorldPixMap(tempGWorld);
	LockPixels(tempPix);
	
	CopyBits((BitMap *) *baseSmall1BitMaskPix,
			 (BitMap *) *badgeSmall1BitMaskPix,
			 &smallIconRect,
			 &smallIconRect,
			 srcOr,
			 NULL);
	
	CopyBits((BitMap *) *baseSmallIconPix,
			 (BitMap *) *targetSmallIconPix,
			 &smallIconRect,
			 &smallIconRect,
			 srcCopy,
			 NULL);
	
	CopyMask((BitMap*) *badgeSmallMaskPix,
			 (BitMap*) *baseSmall1BitMaskPix,
			 (BitMap*) *tempPix,
			 &smallIconRect,
			 &smallIconRect,
			 &smallIconRect
			);	
	CopyDeepMask((BitMap *) *badgeSmallIconPix,
				 (BitMap *) *tempPix,
				 (BitMap *) *targetSmallIconPix,
				 &smallIconRect,
				 &smallIconRect,
			 	 &smallIconRect,
				 srcCopy,
				 NULL);
				 
	SetGWorld(baseSmall1BitMaskGWorld, NULL);
	InvertRect(&smallIconRect);
	
	CopyMask((BitMap*) *badgeSmallIconPix,
			 (BitMap*) *baseSmall1BitMaskPix,
			 (BitMap *) *targetSmallIconPix,
			 &smallIconRect,
			 &smallIconRect,
			 &smallIconRect
			);
	
	CropPixMap(targetSmallIconPix, 16*32/8);
	
	/*****************/		 
	
	CopyBits((BitMap *) *baseSmallMaskPix,
			 (BitMap *) *targetSmallMaskPix,
			 &smallIconRect,
			 &smallIconRect,
			 srcCopy,
			 NULL);
			 
	CopyMask((BitMap*) *badgeSmallMaskPix,
			 (BitMap*) *baseSmall1BitMaskPix,
			 (BitMap *) *targetSmallMaskPix,
			 &smallIconRect,
			 &smallIconRect,
			 &smallIconRect
			);
			
	InvertRect(&smallIconRect);
	
	CropPixMap(targetSmallMaskPix, 16);
	
		
	icnsSize = sizeof(IconFamilyResource) - sizeof(IconFamilyElement);
	icnsSize += sizeof(IconFamilyElement) * 4 + large32BitSize - 4 + large8BitMaskSize - 4 + large1BitSize - 4 + large8BitSize - 4;
	icnsSize += sizeof(IconFamilyElement) * 4 + small32BitSize - 4 + small8BitMaskSize - 4 + small1BitSize - 4 + small8BitSize - 4;
	targeticnsHandle = (IconFamilyHandle) NewHandleClear(icnsSize);
	
	(**targeticnsHandle).resourceType = 'icns';
	(**targeticnsHandle).resourceSize = icnsSize;
	
	
	HLock((Handle)targeticnsHandle);
	(**targeticnsHandle).elements[0].elementType = 'ICN#';
	(**targeticnsHandle).elements[0].elementSize = large1BitSize + sizeof(IconFamilyElement) - 4;
	BlockMove( (*badgeLarge1BitMaskPix)->baseAddr,(**targeticnsHandle).elements[0].elementData, large1BitSize/2);
	BlockMove( (*badgeLarge1BitMaskPix)->baseAddr, &(**targeticnsHandle).elements[0].elementData[large1BitSize / 2], large1BitSize/2);
	
	elementPtr = (IconFamilyElement *)((char *)(**targeticnsHandle).elements + (**targeticnsHandle).elements[0].elementSize);
	elementPtr->elementType = 'il32';
	elementPtr->elementSize = large32BitSize + sizeof(IconFamilyElement) - 4;
	BlockMove( (*targetIconPix)->baseAddr,elementPtr->elementData, large32BitSize);
	
	elementPtr = (IconFamilyElement *)((char *)(elementPtr) + elementPtr->elementSize);
	elementPtr->elementType = 'l8mk';
	elementPtr->elementSize = large8BitMaskSize + sizeof(IconFamilyElement) - 4;
	BlockMove((*targetMaskPix)->baseAddr, elementPtr->elementData, large8BitMaskSize);
	
	elementPtr = (IconFamilyElement *)((char *)(elementPtr) + elementPtr->elementSize);
	elementPtr->elementType = 'icl8';
	elementPtr->elementSize = large8BitSize + sizeof(IconFamilyElement) - 4;
	BlockMove((*target8BitIconPix)->baseAddr, elementPtr->elementData, large8BitSize);
	
	// small stuff
	elementPtr = (IconFamilyElement *)((char *)(elementPtr) + elementPtr->elementSize);
	elementPtr->elementType = 'ics#';
	elementPtr->elementSize = small1BitSize + sizeof(IconFamilyElement) - 4;
	BlockMove( (*badgeSmall1BitMaskPix)->baseAddr,elementPtr->elementData, small1BitSize/2);
	BlockMove( (*badgeSmall1BitMaskPix)->baseAddr, &elementPtr->elementData[small1BitSize / 2], small1BitSize/2);
	
	elementPtr = (IconFamilyElement *)((char *)(elementPtr) + elementPtr->elementSize);
	elementPtr->elementType = 'is32';
	elementPtr->elementSize = small32BitSize + sizeof(IconFamilyElement) - 4;
	BlockMove( (*targetSmallIconPix)->baseAddr,elementPtr->elementData, small32BitSize);
	
	elementPtr = (IconFamilyElement *)((char *)(elementPtr) + elementPtr->elementSize);
	elementPtr->elementType = 's8mk';
	elementPtr->elementSize = small8BitMaskSize + sizeof(IconFamilyElement) - 4;
	BlockMove((*targetSmallMaskPix)->baseAddr, elementPtr->elementData, small8BitMaskSize);
	
	elementPtr = (IconFamilyElement *)((char *)(elementPtr) + elementPtr->elementSize);
	elementPtr->elementType = 'ics8';
	elementPtr->elementSize = small8BitSize + sizeof(IconFamilyElement) - 4;
	BlockMove((*targetSmall8BitIconPix)->baseAddr, elementPtr->elementData, small8BitSize);\
	
	
	set = FSpOpenResFile(&setSpec, fsRdWrPerm);
	UseResFile(set);
	DetachResource((Handle)targeticnsHandle);
	AddResource((Handle)targeticnsHandle, 'icns', ID, "\p");
	SetResAttrs((Handle)targeticnsHandle, resSysHeap + resPurgeable);
	ChangedResource((Handle)targeticnsHandle);
	WriteResource((Handle)targeticnsHandle);
	UpdateResFile(set);
	CloseResFile(set);
	UseResFile(appFile);
	
	DisposeHandle((Handle)targeticnsHandle);
	
	UnlockPixels(badgeLargeIconPix);
	DisposeGWorld(badgeLargeIconGWorld);
	UnlockPixels(badgeLargeMaskPix);
	DisposeGWorld(badgeLargeMaskGWorld);
	UnlockPixels(badgeLarge1BitMaskPix);
	DisposeGWorld(badgeLarge1BitMaskGWorld);
	
	UnlockPixels(badgeSmallIconPix);
	DisposeGWorld(badgeSmallIconGWorld);
	UnlockPixels(badgeSmallMaskPix);
	DisposeGWorld(badgeSmallMaskGWorld);
	UnlockPixels(badgeSmall1BitMaskPix);
	DisposeGWorld(badgeSmall1BitMaskGWorld);
	
	UnlockPixels(targetIconPix);
	DisposeGWorld(targetIconGWorld);
	UnlockPixels(targetMaskPix);
	DisposeGWorld(targetMaskGWorld);
	UnlockPixels(target8BitIconPix);
	DisposeGWorld(target8BitIconGWorld);
	
	UnlockPixels(targetSmallIconPix);
	DisposeGWorld(targetSmallIconGWorld);
	UnlockPixels(targetSmallMaskPix);
	DisposeGWorld(targetSmallMaskGWorld);
	UnlockPixels(targetSmall8BitIconPix);
	DisposeGWorld(targetSmall8BitIconGWorld);
	
	UnlockPixels(tempPix);
	DisposeGWorld(tempGWorld);
	
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
	short				badges;
	IconFamilyHandle	badgeicnsHandle;
	Str255				string;
	int					resourceCount;
	short				ID;
	unsigned long		type;
	
	FSpDelete(&setSpec);

	FSpCreate(&setSpec, 'Bdgr', 'Icon', 0); /*smRoman = 0*/
	FSpCreateResFile(&setSpec, 'Bdgr', 'Icon', 0); /*smRoman = 0*/
	
	badges = FSpOpenResFile(&badgesSpec, fsRdPerm);
	UseResFile(badges);
	resourceCount = Count1Resources('icns');
	GetBaseFolder();
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
			NumToString(ID, string);
			GetDialogItem(newSet, kStatusField, &itemType, &item, &itemRect);
			SetDialogItemText(item, string);
			MergeIcon(ID);
		}
	}	
	
	UnlockPixels(baseLargeIconPix);
	DisposeGWorld(baseLargeIconGWorld);
	UnlockPixels(baseLarge8BitIconPix);
	DisposeGWorld(baseLarge8BitIconGWorld);
	UnlockPixels(baseLargeMaskPix);
	DisposeGWorld(baseLargeMaskGWorld);
	UnlockPixels(baseLarge1BitMaskPix);
	DisposeGWorld(baseLarge1BitMaskGWorld);
	
	UnlockPixels(baseSmallIconPix);
	DisposeGWorld(baseSmallIconGWorld);
	UnlockPixels(baseSmall8BitIconPix);
	DisposeGWorld(baseSmall8BitIconGWorld);
	UnlockPixels(baseSmallMaskPix);
	DisposeGWorld(baseSmallMaskGWorld);
	UnlockPixels(baseSmall1BitMaskPix);
	DisposeGWorld(baseSmall1BitMaskGWorld);

	
	DisposeDialog(newSet);
	SetGWorld(startupPort, startupDevice);
}

bool CheckClipboard()
{
	Handle				pic;
	long				offset;
	PictInfo			picInfo;
	
	pic = NewHandle (0);
	if (GetScrap( pic, 'PICT', &offset ) < 0)
	{
		DisposeHandle(pic);
		return false;
	}
	
	GetPictInfo((PicHandle)pic, &picInfo, 0, 0, 0, 0);
	
	if ((picInfo.sourceRect.bottom == 32) ||
		(picInfo.sourceRect.right == 64) ||
		(picInfo.sourceRect.right == 80) ||
		(picInfo.sourceRect.right == 16))
	{
		;
	}
	else
	{
		DisposeHandle(pic);
		return false;
		
	}
	DisposeHandle(pic);
	return true;
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
	SetGWorld(iconGWorld, NULL);\
	ForeColor(blackColor);\
	BackColor(whiteColor);\
	EraseRect(&largeIconRect);\
	badgeRect = largeIconRect;\
	OffsetRect(&badgeRect, hOffset, vOffset);\
	RegisterIconRefFromResource('Bdgr', 'test', &badgesSpec, -3999, &currentIconRef);\
	PlotIconRef(&largeIconRect,atNone,ttNone,kIconServicesNormalUsageFlag, currentIconRef);\
	ReleaseIconRef(currentIconRef);\
	RegisterIconRefFromResource('Bdgr', 'test', &badgesSpec, ID, &currentIconRef);\
	PlotIconRef(&badgeRect,atNone,ttNone,kIconServicesNormalUsageFlag, currentIconRef);\
	ReleaseIconRef(currentIconRef);\
	CopyBits((BitMap *) (*iconPix),&positionBadges->portBits,&largeIconRect, &targetRect,srcCopy, NULL);\
	\
	SetGWorld(smallIconGWorld, NULL);\
	ForeColor(blackColor);\
	BackColor(whiteColor);\
	EraseRect(&smallIconRect);\
	smallBadgeRect = smallIconRect;\
	OffsetRect(&smallBadgeRect, smallHOffset, smallVOffset);\
	RegisterIconRefFromResource('Bdgr', 'test', &badgesSpec, -3999, &currentIconRef);\
	PlotIconRef(&smallIconRect,atNone,ttNone,kIconServicesNormalUsageFlag, currentIconRef);\
	ReleaseIconRef(currentIconRef);\
	RegisterIconRefFromResource('Bdgr', 'test', &badgesSpec, ID, &currentIconRef);\
	PlotIconRef(&smallBadgeRect,atNone,ttNone,kIconServicesNormalUsageFlag, currentIconRef);\
	ReleaseIconRef(currentIconRef);\
	CopyBits((BitMap *) (*smallIconPix),&positionBadges->portBits,&smallIconRect, &smallTargetRect,srcCopy, NULL);\
	\
	SetPort(positionBadges);\
	FillCRect(&desktopPreview, desktopPattern);\
	RGBForeColor(&currentForeColor);\
	RGBBackColor(&currentBackColor);\
	previewLargeBadge = previewLargeBase;\
	previewSmallBadge = previewSmallBase;\
	OffsetRect(&previewLargeBadge, hOffset, vOffset);\
	OffsetRect(&previewSmallBadge, smallHOffset, smallVOffset);\
	RegisterIconRefFromResource('Bdgr', 'test', &badgesSpec, -3999, &currentIconRef);\
	PlotIconRef(&previewLargeBase,atNone,ttNone,kIconServicesNormalUsageFlag, currentIconRef);\
	PlotIconRef(&previewSmallBase,atNone,ttNone,kIconServicesNormalUsageFlag, currentIconRef);\
	ReleaseIconRef(currentIconRef);\
	RegisterIconRefFromResource('Bdgr', 'test', &badgesSpec, ID, &currentIconRef);\
	PlotIconRef(&previewLargeBadge,atNone,ttNone,kIconServicesNormalUsageFlag, currentIconRef);\
	PlotIconRef(&previewSmallBadge,atNone,ttNone,kIconServicesNormalUsageFlag, currentIconRef);\
	ReleaseIconRef(currentIconRef);\
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
	IconRef			currentIconRef;
	long			selectedIcns;
	Str255			IDAsString, menuItemText, string;
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
	
	if (!CheckClipboard())
	{
		GetDialogItem(positionBadges, kInsertClipboard, &itemType, &item, &itemRect);
		HiliteControl((ControlHandle)item, 255);
	}
	
	ShowWindow( positionBadges );
	
	NewGWorld(&iconGWorld, 32, &largeIconRect, NULL, NULL, 0);
	iconPix = GetGWorldPixMap(iconGWorld);
	LockPixels(iconPix);
	
	NewGWorld(&smallIconGWorld, 32, &smallIconRect, NULL, NULL, 0);
	smallIconPix = GetGWorldPixMap(smallIconGWorld);
	LockPixels(smallIconPix);
	Refresh();
	
	SetPort(positionBadges);
	
	dialogDone = false;
	while (!dialogDone)
	{
		ModalDialog(nil, &itemHit);
		
		switch (itemHit)
		{
			case kOK: WriteToDisk(); dialogDone = true; break;
			case kInsertClipboard: clip2icns(ID, "\p", 0); SetPort(positionBadges); Refresh(); break;
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
				for (i=1; IDAsString[i] != ' '; i++){;}
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
	UnlockPixels(iconPix);
	DisposeGWorld(iconGWorld);
	UnlockPixels(smallIconPix);
	DisposeGWorld(smallIconGWorld);
	DisposeDialog(positionBadges);
	
}

void HandleEditChoice(int item)
{
	item;
	SysBeep(6);
}


