#include "Icons.h"
#include "clip2icns.h"

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
					GeticnsID();
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
			if (theErr == noErr) GeticnsID();
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
	PictInfo			picInfo;
	
	UseResFile(appFile);
	
	pic = NewHandle (0);
	if (GetScrap( pic, 'PICT', &offset ) < 0)
	{
		DisplayAlert("", "The clipboard is either empty or doesn't contain a picture");
		return paramErr;
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
		DisplayAlert("", "The clipboard picture isn't 80x32,64x32, or 16x32.");
		return paramErr;
	}
	
	DisposeHandle(pic);
	
	eventUPP = NewNavEventProc(DummyFunction);
	
	NavGetDefaultDialogOptions ( &dialogOptions );
	dialogOptions.dialogOptionFlags -= kNavAllowMultipleFiles;
	CopyString(dialogOptions.clientName, "\pclip2icns");
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
	PictInfo			picInfo;

	pic = NewHandle (0);
	if (GetScrap( pic, 'PICT', &offset ) < 0)
	{
		DisplayAlert("", "The clipboard is either empty or doesn't contain a picture");
		return paramErr;
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
		DisplayAlert("", "The clipboard picture isn't 80x32,64x32, or 16x32.");
		return paramErr;
	}
	
	DisposeHandle(pic);
	
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
}
				

void GeticnsID()
{
	DialogPtr			insertIcns;
	bool				dialogDone;
	short				itemHit;
	Rect				itemRect;
	long				ID;
	Handle				item;
	short				itemType;
	Rect				smallIconRect, smallMaskRect, largeIconRect, largeMaskRect, clipboardRect;
	Handle				pic;
	long				ignored;
	short				scheme;
	Str255				icnsName = "\pcreated with clip2icns";
	Str255				errorNumber;
	Rect				popupRect;
	int					selectedIcns, i, selectedType=1, currentMenuID = 201;
	Str255				IDAsString, menuItemText;
	int					includeOldStyle = 1;
	GWorldPtr			clipboardGWorld;
	PixMapHandle		clipboardPix;
	Rect				sourceRect;
	RGBColor			currentForeColor, currentBackColor;
	
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
	
	insertIcns = GetNewDialog (insertCicnID, nil, (WindowPtr)-1L);
	SetPort( insertIcns);
	SetDialogDefaultItem(insertIcns, kInsert);
	SetDialogCancelItem( insertIcns, kCancel );
	SelectDialogItemText( insertIcns, kIDField, 0, 32767);
	
	GetDialogItem(insertIcns, kIconPopup, &itemType, &item, &popupRect);
	
	GetDialogItem(insertIcns, kIncludeOldStyle, &itemType, &item, &itemRect);
	SetControlValue((ControlHandle)item, includeOldStyle);
	
	GetDialogItem(insertIcns, kSmallIconPreview, &itemType, &item, &smallIconRect);
	DrawImageWell(smallIconRect);
	GetDialogItem(insertIcns, kSmallMaskPreview, &itemType, &item, &smallMaskRect);
	DrawImageWell(smallMaskRect);
	GetDialogItem(insertIcns, kLargeIconPreview, &itemType, &item, &largeIconRect);
	DrawImageWell(largeIconRect);
	GetDialogItem(insertIcns, kLargeMaskPreview, &itemType, &item, &largeMaskRect);
	DrawImageWell(largeMaskRect);
	
	GetForeColor(&currentForeColor);
	GetBackColor(&currentBackColor);
	pic = NewHandle (0);
	GetScrap( pic, 'PICT', &ignored );
	clipboardRect = (*(PicHandle)pic)->picFrame;
	OffsetRect(&clipboardRect, -clipboardRect.left, -clipboardRect.top);
	NewGWorld(&clipboardGWorld, 32, &clipboardRect, NULL, NULL, 0);
	SetGWorld(clipboardGWorld, NULL);
	DrawPicture((PicHandle)pic, &clipboardRect);
	clipboardPix = GetGWorldPixMap(clipboardGWorld);
	LockPixels(clipboardPix);
	
	SetPort(insertIcns);
	
	ForeColor(blackColor);
	BackColor(whiteColor);
	
	sourceRect.top = 0;
	sourceRect.bottom = 32;
	
	if (clipboardRect.right == 80)
	{
		sourceRect.left = 16;
		sourceRect.right = 48;
		CopyBits((BitMap *)*clipboardPix, &qd.thePort->portBits, &sourceRect,&largeIconRect,srcCopy, NULL);
		sourceRect.left += 32;
		sourceRect.right += 32;
		CopyBits((BitMap *)*clipboardPix, &qd.thePort->portBits, &sourceRect,&largeMaskRect,srcCopy, NULL);
		sourceRect.left = 0;
		sourceRect.right = 16;
		sourceRect.bottom = 16;
		CopyBits((BitMap *)*clipboardPix, &qd.thePort->portBits, &sourceRect,&smallIconRect,srcCopy, NULL);
		sourceRect.top += 16;
		sourceRect.bottom += 16;
		CopyBits((BitMap *)*clipboardPix, &qd.thePort->portBits, &sourceRect,&smallMaskRect,srcCopy, NULL);
	}
	if (clipboardRect.right == 64)
	{
		
		sourceRect.left = 0;
		sourceRect.right = 32;
		CopyBits((BitMap *)*clipboardPix, &qd.thePort->portBits, &sourceRect,&largeIconRect,srcCopy, NULL);
		sourceRect.left += 32;
		sourceRect.right += 32;
		CopyBits((BitMap *)*clipboardPix, &qd.thePort->portBits, &sourceRect,&largeMaskRect,srcCopy, NULL);
	}
	if (clipboardRect.right == 16)
	{
		sourceRect.left = 0;
		sourceRect.right = 16;
		sourceRect.bottom = 16;
		CopyBits((BitMap *)*clipboardPix, &qd.thePort->portBits, &sourceRect,&smallIconRect,srcCopy, NULL);
		sourceRect.top += 16;
		sourceRect.bottom += 16;
		CopyBits((BitMap *)*clipboardPix, &qd.thePort->portBits, &sourceRect,&smallMaskRect,srcCopy, NULL);
	}
	RGBForeColor(&currentForeColor);
	RGBBackColor(&currentBackColor);
	UnlockPixels(clipboardPix);
	DisposeGWorld(clipboardGWorld);
	
	
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
				dialogDone = true;
				DisposeDialog( insertIcns );
				//CloseResFile(scheme);
				//FSClose(scheme);
				UseResFile(appFile);
				SetGWorld(startupPort, startupDevice);
				clip2icns(ID, icnsName, includeOldStyle);
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
				//PreviewCicn();
				//GetCicnName();
				
				break;
			case kIconPopup:
				GetDialogItem(insertIcns, kIconPopup, &itemType, &item, &itemRect);
				selectedIcns = GetControlValue((ControlHandle)item);
				
				Refresh();
				
				break;
			case kIncludeOldStyle:
				GetDialogItem(insertIcns, kIncludeOldStyle, &itemType, &item, &itemRect);
				includeOldStyle = GetControlValue((ControlHandle)item);
				includeOldStyle = 1 - includeOldStyle;
				SetControlValue((ControlHandle)item, includeOldStyle);
				
		}
		
		
	}
	CloseResFile(scheme);
	UseResFile(appFile);
	//FSClose(scheme);
	DisposeDialog(insertIcns);
	SetGWorld(startupPort, startupDevice);
}


void clip2icns(short icnsID, Str255 icnsName, bool includeOldStyle)
{
	long				large32BitSize = 0x1000;
	long				small32BitSize = 0x1000 / 4;
	long				large8BitMaskSize = 0x400;
	long				small8BitMaskSize = 0x400 / 4;
	long				large1BitSize = 0x100;
	long				small1BitSize = 0x100 / 4;
	long				large8BitSize = 0x400;
	long				small8BitSize = 0x400 / 4;
	Rect				clipboardRect;
	Rect				smallIconRect = {0, 0, 16, 16};
	Rect				smallMaskRect = {16, 0, 32, 16};
	Rect				largeIconRect = {0, 0, 32, 32};
	Rect				largeMaskRect = {0, 32, 32, 64};
	Rect				standardIconRect = {0, 0, 32, 32};
	GWorldPtr			clipboardGWorld, maskLarge8BitGWorld, colorLarge32BitGWorld, maskLarge1BitGWorld, bwLargeGWorld, tempGWorld, colorLarge8BitGWorld;
	GWorldPtr			colorSmall8BitGWorld, colorSmall32BitGWorld, maskSmall1BitGWorld, bwSmallGWorld, maskSmall8BitGWorld;
	char				*maskLarge8BitSrc, *colorLarge32BitSrc, *maskLarge1BitSrc, *bwLargeSrc, *colorLarge8BitSrc, *colorSmall8BitSrc, *colorSmall32BitSrc, *maskSmall1BitSrc, *bwSmallSrc, *maskSmall8BitSrc;
	PixMapHandle		clipboardPix, maskLarge8BitPix, colorLarge32BitPix, maskLarge1BitPix, bwLargePix, tempPix, colorLarge8BitPix;
	PixMapHandle		colorSmall8BitPix, colorSmall32BitPix, maskSmall1BitPix, bwSmallPix, maskSmall8BitPix;
	long				icnsSize;
	IconFamilyHandle	icnsHandle;
	IconFamilyElement*	elementPtr;
	long				offset;
	Handle				pic;
	CTabHandle			grayscaleTable;
	short				scheme;
	Handle				oldIcns;
	FInfo				schemeInfo;
	bool				hasLarge=true, hasSmall=false;
	Handle				currentIcon;
	
	pic = NewHandle (0);
	if (GetScrap( pic, 'PICT', &offset ) < 0)
	{
		DisplayAlert("", "The clipboard is either empty or doesn't contain a picture");
		return;
	}
	
	clipboardRect = (*(PicHandle)pic)->picFrame;
	OffsetRect(&clipboardRect, -clipboardRect.left, -clipboardRect.top);
	
	grayscaleTable = GetCTable(128);
	HLock((Handle)grayscaleTable);
	if (clipboardRect.right == 80)
	{
		hasLarge = true;
		hasSmall = true;
		largeIconRect.left = 16;
		largeIconRect.right = 48;
		largeMaskRect.left = 48;
		largeMaskRect.right = 80;
	}
	if (clipboardRect.right == 16)
	{
		hasSmall = true;
		hasLarge = false;
	} 
	// first we draw the clipboard into a g world
	NewGWorld(&clipboardGWorld, 32, &clipboardRect, NULL, NULL, 0);
	SetGWorld(clipboardGWorld, NULL);
	EraseRect(&qd.thePort->portRect);
	clipboardPix = GetGWorldPixMap(clipboardGWorld);
	LockPixels(clipboardPix);
	DrawPicture((PicHandle)pic, &clipboardRect);
	
	
	if (hasLarge)
	{
		// copying a piece of the clipboard into the 8 bit icon
		NewGWorld(&colorLarge8BitGWorld, 8, &standardIconRect, NULL, NULL, 0);
		SetGWorld(colorLarge8BitGWorld, NULL);
		EraseRect(&qd.thePort->portRect);
		colorLarge8BitPix = GetGWorldPixMap(colorLarge8BitGWorld);
		LockPixels(colorLarge8BitPix);
		
		CopyBits((BitMap *)*clipboardPix,
				 (BitMap *)*colorLarge8BitPix,
				 &largeIconRect,
				 &standardIconRect,
				 srcCopy + ditherCopy,
				 NULL);
		
		// now we're copying a piece of the clipboard into the 32 bit icon
		NewGWorld(&colorLarge32BitGWorld, 32, &standardIconRect, NULL, NULL, 0);
		SetGWorld(colorLarge32BitGWorld, NULL);
		EraseRect(&qd.thePort->portRect);
		colorLarge32BitPix = GetGWorldPixMap(colorLarge32BitGWorld);
		LockPixels(colorLarge32BitPix);
		
		CopyBits((BitMap *)*clipboardPix,
				 (BitMap *)*colorLarge32BitPix,
				 &largeIconRect,
				 &standardIconRect,
				 srcCopy,
				 NULL);
		
		// making the 1 bit mask		 
		NewGWorld(&maskLarge1BitGWorld, 1, &standardIconRect, NULL, NULL, 0);
		SetGWorld(maskLarge1BitGWorld, NULL);
		EraseRect(&qd.thePort->portRect);
		maskLarge1BitPix = GetGWorldPixMap(maskLarge1BitGWorld);
		LockPixels(maskLarge1BitPix);
		
		NewGWorld(&tempGWorld, 8, &standardIconRect, grayscaleTable, NULL, 0);
		SetGWorld(tempGWorld, NULL);
		EraseRect(&qd.thePort->portRect);
		tempPix = GetGWorldPixMap(tempGWorld);
		CopyBits((BitMap *)*clipboardPix, (BitMap *)*tempPix, &largeMaskRect, &standardIconRect, srcCopy, NULL);
		LockPixels(tempPix);
				
		for (int i = 0; i < (**(**tempPix).pmTable).ctSize + 1; i++)
		{
			if ((**(**tempPix).pmTable).ctTable[i].rgb.red != 0xFFFF &&
			    (**(**tempPix).pmTable).ctTable[i].rgb.green != 0xFFFF &&
			    (**(**tempPix).pmTable).ctTable[i].rgb.blue != 0xFFFF)
			{
				(**(**tempPix).pmTable).ctTable[i].rgb.red = 0;
				(**(**tempPix).pmTable).ctTable[i].rgb.green = 0;
				(**(**tempPix).pmTable).ctTable[i].rgb.blue = 0;
			}
		}
		
		CTabChanged((**tempPix).pmTable);
		
		//UpdateGWorld(&tempGWorld, 8, &standardIconRect, (**tempPix).pmTable, NULL, 0);
		
		CopyBits((BitMap *)*tempPix,
				 (BitMap *)*maskLarge1BitPix,
				 &standardIconRect,
				 &standardIconRect,
				 srcCopy,
				 NULL);
				 
		UnlockPixels(tempPix);
		DisposeGWorld(tempGWorld);
		
		// creating the bw version
		
		NewGWorld(&bwLargeGWorld, 1, &standardIconRect, NULL, NULL, 0);
		SetGWorld(bwLargeGWorld, NULL);
		EraseRect(&qd.thePort->portRect);
		bwLargePix = GetGWorldPixMap(bwLargeGWorld);
		LockPixels(bwLargePix);
		
		CopyBits((BitMap *)*colorLarge32BitPix,
				 (BitMap *)*bwLargePix,
				 &standardIconRect,
				 &standardIconRect,
				 srcCopy + ditherCopy,
				 NULL);
		
		// now we copy the 8 bit mask
		NewGWorld(&maskLarge8BitGWorld, 8, &standardIconRect, grayscaleTable, NULL, 0);
		SetGWorld(maskLarge8BitGWorld, NULL);
		EraseRect(&qd.thePort->portRect);
		maskLarge8BitPix = GetGWorldPixMap(maskLarge8BitGWorld);
		LockPixels(maskLarge8BitPix);
		
		CopyBits((BitMap *)*clipboardPix,
				 (BitMap *)*maskLarge8BitPix,
				 &largeMaskRect,
				 &standardIconRect,
				 srcCopy,
				 NULL);
		
		CropPixMap(maskLarge1BitPix, 4);
		CropPixMap(bwLargePix, 4);
		CropPixMap(colorLarge8BitPix, 32);
		CropPixMap(maskLarge8BitPix, 32);
		CropPixMap(colorLarge32BitPix, 128);
	}
	if (hasSmall)
	{
		// copying a piece of the clipboard into the 8 bit icon
		NewGWorld(&colorSmall8BitGWorld, 8, &smallIconRect, NULL, NULL, 0);
		SetGWorld(colorSmall8BitGWorld, NULL);
		EraseRect(&qd.thePort->portRect);
		colorSmall8BitPix = GetGWorldPixMap(colorSmall8BitGWorld);
		LockPixels(colorSmall8BitPix);
		
		CopyBits((BitMap *)*clipboardPix,
				 (BitMap *)*colorSmall8BitPix,
				 &smallIconRect,
				 &smallIconRect,
				 srcCopy + ditherCopy,
				 NULL);
		
		// now we're copying a piece of the clipboard into the 32 bit icon
		NewGWorld(&colorSmall32BitGWorld, 32, &smallIconRect, NULL, NULL, 0);
		SetGWorld(colorSmall32BitGWorld, NULL);
		EraseRect(&qd.thePort->portRect);
		colorSmall32BitPix = GetGWorldPixMap(colorSmall32BitGWorld);
		LockPixels(colorSmall32BitPix);
		
		CopyBits((BitMap *)*clipboardPix,
				 (BitMap *)*colorSmall32BitPix,
				 &smallIconRect,
				 &smallIconRect,
				 srcCopy,
				 NULL);
		
		// making the 1 bit mask		 
		NewGWorld(&maskSmall1BitGWorld, 1, &smallIconRect, NULL, NULL, 0);
		SetGWorld(maskSmall1BitGWorld, NULL);
		EraseRect(&qd.thePort->portRect);
		maskSmall1BitPix = GetGWorldPixMap(maskSmall1BitGWorld);
		LockPixels(maskSmall1BitPix);
		
		NewGWorld(&tempGWorld, 8, &smallIconRect, grayscaleTable, NULL, 0);
		SetGWorld(tempGWorld, NULL);
		EraseRect(&qd.thePort->portRect);
		tempPix = GetGWorldPixMap(tempGWorld);
		CopyBits((BitMap *)*clipboardPix, (BitMap *)*tempPix, &smallMaskRect, &smallIconRect, srcCopy, NULL);
		LockPixels(tempPix);
		
		for (int i = 0; i < (**(**tempPix).pmTable).ctSize + 1; i++)
		{
			if ((**(**tempPix).pmTable).ctTable[i].rgb.red != 0xFFFF &&
			    (**(**tempPix).pmTable).ctTable[i].rgb.green != 0xFFFF &&
			    (**(**tempPix).pmTable).ctTable[i].rgb.blue != 0xFFFF)
			{
				(**(**tempPix).pmTable).ctTable[i].rgb.red = 0;
				(**(**tempPix).pmTable).ctTable[i].rgb.green = 0;
				(**(**tempPix).pmTable).ctTable[i].rgb.blue = 0;
			}
		}
		
		CTabChanged((**tempPix).pmTable);
		
		CopyBits((BitMap *)*tempPix,
				 (BitMap *)*maskSmall1BitPix,
				 &smallIconRect,
				 &smallIconRect,
				 srcCopy,
				 NULL);
		SetGWorld(startupPort, startupDevice);
		CopyBits((BitMap *)*maskSmall1BitPix,
				 &qd.thePort->portBits,
				 &smallIconRect,
				 &smallIconRect,
				 srcCopy,
				 NULL);
		
		UnlockPixels(tempPix);
		DisposeGWorld(tempGWorld);
		
		// creating the bw version
		
		NewGWorld(&bwSmallGWorld, 1, &smallIconRect, NULL, NULL, 0);
		SetGWorld(bwSmallGWorld, NULL);
		EraseRect(&qd.thePort->portRect);
		bwSmallPix = GetGWorldPixMap(bwSmallGWorld);
		LockPixels(bwSmallPix);
		
		CopyBits((BitMap *)*colorSmall32BitPix,
				 (BitMap *)*bwSmallPix,
				 &smallIconRect,
				 &smallIconRect,
				 srcCopy + ditherCopy,
				 NULL);
		
		// now we copy the 8 bit mask
		NewGWorld(&maskSmall8BitGWorld, 8, &smallIconRect, grayscaleTable, NULL, 0);
		SetGWorld(maskSmall8BitGWorld, NULL);
		EraseRect(&qd.thePort->portRect);
		maskSmall8BitPix = GetGWorldPixMap(maskSmall8BitGWorld);
		LockPixels(maskSmall8BitPix);
		
		CopyBits((BitMap *)*clipboardPix,
				 (BitMap *)*maskSmall8BitPix,
				 &smallMaskRect,
				 &smallIconRect,
				 srcCopy,
				 NULL);
		
		CropPixMap(maskSmall1BitPix, 2);
		CropPixMap(bwSmallPix, 2);
		CropPixMap(colorSmall8BitPix, 16);
		CropPixMap(maskSmall8BitPix, 16);
		CropPixMap(colorSmall32BitPix, 64);
	}
	
	SetGWorld(startupPort, startupDevice);
	icnsSize = sizeof(IconFamilyResource) - sizeof(IconFamilyElement);
	if (hasLarge)
		icnsSize += sizeof(IconFamilyElement) * 4 + large32BitSize - 4 + large8BitMaskSize - 4 + large1BitSize - 4 + large8BitSize - 4;
	if (hasSmall)
		icnsSize += sizeof(IconFamilyElement) * 4 + small32BitSize - 4 + small8BitMaskSize - 4 + small1BitSize - 4 + small8BitSize - 4;
	icnsHandle = (IconFamilyHandle) NewHandleClear(icnsSize);

	HLock((Handle)icnsHandle);
	
	(**icnsHandle).resourceType = 'icns';
	(**icnsHandle).resourceSize = icnsSize;
	if (hasLarge)
	{
		bwLargeSrc = (*bwLargePix)->baseAddr;
		maskLarge1BitSrc = (*maskLarge1BitPix)->baseAddr;
		colorLarge8BitSrc = (*colorLarge8BitPix)->baseAddr;
		colorLarge32BitSrc = (*colorLarge32BitPix)->baseAddr;
		maskLarge8BitSrc = (*maskLarge8BitPix)->baseAddr;
	}
	if (hasSmall)
	{
		bwSmallSrc = (*bwSmallPix)->baseAddr;
		maskSmall1BitSrc = (*maskSmall1BitPix)->baseAddr;
		colorSmall8BitSrc = (*colorSmall8BitPix)->baseAddr;
		colorSmall32BitSrc = (*colorSmall32BitPix)->baseAddr;
		maskSmall8BitSrc = (*maskSmall8BitPix)->baseAddr;
	}
	
	scheme = FSpOpenResFile(&schemeSpec, fsRdWrPerm);
	UseResFile(scheme);
	
	if (includeOldStyle)
	{
		currentIcon = Get1Resource('ICN#', icnsID);
		if (currentIcon != NULL)
		{
			bwLargeSrc = *currentIcon;
			maskLarge1BitSrc = &(*currentIcon)[large1BitSize/2];
		}
		currentIcon = Get1Resource('icl8', icnsID);
		if (currentIcon != NULL)
			colorLarge8BitSrc = *currentIcon;
			
		currentIcon = Get1Resource('ics#', icnsID);
		if (currentIcon != NULL)
		{
			bwSmallSrc = *currentIcon;
			maskSmall1BitSrc = &(*currentIcon)[small1BitSize/2];
		}
		currentIcon = Get1Resource('ics8', icnsID);
		if (currentIcon != NULL)
			colorSmall8BitSrc = *currentIcon;
	}
	
	if (hasLarge && hasSmall)
	{
		(**icnsHandle).elements[0].elementType = 'ICN#';
		(**icnsHandle).elements[0].elementSize = large1BitSize + sizeof(IconFamilyElement) - 4;
		BlockMove( bwLargeSrc,(**icnsHandle).elements[0].elementData, large1BitSize/2);
		BlockMove( maskLarge1BitSrc, &(**icnsHandle).elements[0].elementData[large1BitSize / 2], large1BitSize/2);
	
		elementPtr = (IconFamilyElement *)((char *)(**icnsHandle).elements + (**icnsHandle).elements[0].elementSize);
		elementPtr->elementType = 'icl8';
		elementPtr->elementSize = large8BitSize + sizeof(IconFamilyElement) - 4;
		BlockMove(colorLarge8BitSrc, elementPtr->elementData, large8BitSize);
		
		elementPtr = (IconFamilyElement *)((char *)(elementPtr) + elementPtr->elementSize);
		elementPtr->elementType = 'il32';
		elementPtr->elementSize = large32BitSize + sizeof(IconFamilyElement) - 4;
		BlockMove( colorLarge32BitSrc, elementPtr->elementData, large32BitSize);
		
		elementPtr = (IconFamilyElement *)((char *)(elementPtr) + elementPtr->elementSize);
		elementPtr->elementType = 'l8mk';
		elementPtr->elementSize = large8BitMaskSize + sizeof(IconFamilyElement) - 4;
		BlockMove(maskLarge8BitSrc, elementPtr->elementData, large8BitMaskSize);
		
		elementPtr = (IconFamilyElement *)((char *)(elementPtr) + elementPtr->elementSize);
		elementPtr->elementType = 'ics#';
		elementPtr->elementSize = small1BitSize + sizeof(IconFamilyElement) - 4;
		BlockMove( bwSmallSrc ,elementPtr->elementData, small1BitSize/2);
		BlockMove( maskSmall1BitSrc, &elementPtr->elementData[small1BitSize / 2], small1BitSize/2);
		
		elementPtr = (IconFamilyElement *)((char *)(elementPtr) + elementPtr->elementSize);
		elementPtr->elementType = 'ics8';
		elementPtr->elementSize = small8BitSize + sizeof(IconFamilyElement) - 4;
		BlockMove(colorSmall8BitSrc, elementPtr->elementData, small8BitSize);
		
		elementPtr = (IconFamilyElement *)((char *)(elementPtr) + elementPtr->elementSize);
		elementPtr->elementType = 'is32';
		elementPtr->elementSize = small32BitSize + sizeof(IconFamilyElement) - 4;
		BlockMove(colorSmall32BitSrc, elementPtr->elementData, small32BitSize);
		
		elementPtr = (IconFamilyElement *)((char *)(elementPtr) + elementPtr->elementSize);
		elementPtr->elementType = 's8mk';
		elementPtr->elementSize = small8BitMaskSize + sizeof(IconFamilyElement) - 4;
		BlockMove(maskSmall8BitSrc, elementPtr->elementData, small8BitMaskSize);	
	}
	
	if (hasLarge && !hasSmall)
	{
		(**icnsHandle).elements[0].elementType = 'ICN#';
		(**icnsHandle).elements[0].elementSize = large1BitSize + sizeof(IconFamilyElement) - 4;
		BlockMove( bwLargeSrc,(**icnsHandle).elements[0].elementData, large1BitSize/2);
		BlockMove( maskLarge1BitSrc, &(**icnsHandle).elements[0].elementData[large1BitSize / 2], large1BitSize/2);
	
		elementPtr = (IconFamilyElement *)((char *)(**icnsHandle).elements + (**icnsHandle).elements[0].elementSize);
		elementPtr->elementType = 'icl8';
		elementPtr->elementSize = large8BitSize + sizeof(IconFamilyElement) - 4;
		BlockMove(colorLarge8BitSrc, elementPtr->elementData, large8BitSize);
		
		elementPtr = (IconFamilyElement *)((char *)(elementPtr) + elementPtr->elementSize);
		elementPtr->elementType = 'il32';
		elementPtr->elementSize = large32BitSize + sizeof(IconFamilyElement) - 4;
		BlockMove(colorLarge32BitSrc, elementPtr->elementData, large32BitSize);
		
		elementPtr = (IconFamilyElement *)((char *)(elementPtr) + elementPtr->elementSize);
		elementPtr->elementType = 'l8mk';
		elementPtr->elementSize = large8BitMaskSize + sizeof(IconFamilyElement) - 4;
		BlockMove(maskLarge8BitSrc, elementPtr->elementData, large8BitMaskSize);
	}
	
	if (!hasLarge && hasSmall)
	{
		(**icnsHandle).elements[0].elementType = 'ics#';
		(**icnsHandle).elements[0].elementSize = small1BitSize + sizeof(IconFamilyElement) - 4;
		BlockMove( bwSmallSrc,(**icnsHandle).elements[0].elementData, small1BitSize/2);
		BlockMove( maskSmall1BitSrc, &(**icnsHandle).elements[0].elementData[small1BitSize / 2], small1BitSize/2);
		
		elementPtr = (IconFamilyElement *)((char *)(**icnsHandle).elements + (**icnsHandle).elements[0].elementSize);
		elementPtr->elementType = 'ics8';
		elementPtr->elementSize = small8BitSize + sizeof(IconFamilyElement) - 4;
		BlockMove(colorSmall8BitSrc, elementPtr->elementData, small8BitSize);
		
		elementPtr = (IconFamilyElement *)((char *)(elementPtr) + elementPtr->elementSize);
		elementPtr->elementType = 'is32';
		elementPtr->elementSize = small32BitSize + sizeof(IconFamilyElement) - 4;
		BlockMove(colorSmall32BitSrc, elementPtr->elementData, small32BitSize);
		
		elementPtr = (IconFamilyElement *)((char *)(elementPtr) + elementPtr->elementSize);
		elementPtr->elementType = 's8mk';
		elementPtr->elementSize = small8BitMaskSize + sizeof(IconFamilyElement) - 4;
		BlockMove(maskSmall8BitSrc, elementPtr->elementData, small8BitMaskSize);	
	}
	
	HUnlock((Handle)icnsHandle);
	if (icnsID == -16455)
	{
		FSpGetFInfo(&schemeSpec, &schemeInfo);
		schemeInfo.fdFlags |= kHasCustomIcon;
		FSpSetFInfo(&schemeSpec, &schemeInfo); 
			
	}
	
	
	
	oldIcns = Get1Resource('icns', icnsID);
	if (oldIcns != NULL)
	{
		RemoveResource(oldIcns);
		UpdateResFile(scheme);
		CloseResFile(scheme);
		//FSClose(scheme);
		UseResFile(appFile);
		scheme = FSpOpenResFile(&schemeSpec, fsRdWrPerm);
		UseResFile(scheme);
	}
	DetachResource((Handle)icnsHandle);
	AddResource((Handle)icnsHandle, 'icns', icnsID, icnsName);
	SetResAttrs((Handle)icnsHandle, resSysHeap + resPurgeable);
	ChangedResource((Handle)icnsHandle);
	WriteResource((Handle)icnsHandle);
	UpdateResFile(scheme);
	CloseResFile(scheme);
	UseResFile(appFile);
	//FSClose(scheme);

	UnlockPixels(clipboardPix);
	DisposeGWorld(clipboardGWorld);
	
	if (hasLarge)
	{
		UnlockPixels(colorLarge32BitPix);
		UnlockPixels(colorLarge8BitPix);
		UnlockPixels(maskLarge8BitPix);
		UnlockPixels(maskLarge1BitPix);
		UnlockPixels(bwLargePix);
		
		DisposeGWorld(colorLarge32BitGWorld);
		DisposeGWorld(colorLarge8BitGWorld);
		DisposeGWorld(maskLarge8BitGWorld);
		DisposeGWorld(maskLarge1BitGWorld);
		DisposeGWorld(bwLargeGWorld);
	}
	if (hasSmall)
	{
		UnlockPixels(colorSmall32BitPix);
		UnlockPixels(colorSmall8BitPix);
		UnlockPixels(maskSmall8BitPix);
		UnlockPixels(maskSmall1BitPix);
		UnlockPixels(bwSmallPix);
		
		DisposeGWorld(colorSmall32BitGWorld);
		DisposeGWorld(colorSmall32BitGWorld);
		DisposeGWorld(maskSmall8BitGWorld);
		DisposeGWorld(maskSmall1BitGWorld);
		DisposeGWorld(bwSmallGWorld);
	}
	DisposeHandle((Handle)grayscaleTable);
	
	HUnlock(pic);
	DisposeHandle(pic);
	
	HUnlock((Handle)grayscaleTable);
	DisposeHandle((Handle)grayscaleTable);
	
	DisposeHandle((Handle)icnsHandle);
}

void HandleEditChoice(int item)
{
	item;
	SysBeep(6);
}


