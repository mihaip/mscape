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
	
	InitToolbox();
	
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
	
	AEInit();
	
	GetGWorld(&startupPort, &startupDevice);

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

/*void ShowAboutBox()
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
}*/

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
	
	aboutBox = GetNewDialog (aboutBoxID, nil, (WindowPtr)-1L);
	SetPort( aboutBox);
	SetDialogDefaultItem(aboutBox, kOk);
	
	ShowWindow( aboutBox );
	
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
			if (theErr == noErr) Editcicn();
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
	
	UseResFile(appFile);
		
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

#define ChangecicnPopup()\
{\
	GetDialogItem(editcicn, kcicnPopup, &itemType, &item, &itemRect);\
	if ((**(PopupPrivateDataHandle)(**(ControlHandle)item).contrlData).mID != selectedType)\
	{\
		DisposeControl((ControlHandle)item);\
		(ControlHandle)item = NewControl(editcicn,\
										 &popupRect,\
										 "\pIcon:",\
										 true,\
										 0,\
										 selectedType,\
										 50,\
										 popupMenuProc + popupFixedWidth,\
										 0);\
		\
		(**(PopupPrivateDataHandle)(**(ControlHandle)item).contrlData).mID = selectedType;\
		(**(PopupPrivateDataHandle)(**(ControlHandle)item).contrlData).mHandle = GetMenu(selectedType);\
	}\
	GetDialogItem(editcicn, kcicnPopup, &itemType, &item, &itemRect);\
	SetControlValue((ControlHandle)item, selectedcicn);\
	\
	GetDialogItem(editcicn, kTypesPopup, &itemType, &item, &itemRect);\
	SetControlValue((ControlHandle)item, selectedType - baseMenuID + 1);\
}

void Editcicn()
{
	DialogPtr			editcicn;
	bool				dialogDone;
	short				itemHit;
	Rect				itemRect;
	long				ID;
	Handle				item;
	short				itemType;
	short				file;
	Str255				errorNumber;
	Rect				popupRect;
	int					selectedcicn, selectedType=baseMenuID;
	Str255				IDAsString, cicnName, windowTitle;
	ModalFilterUPP		eventFilter;
	
	eventFilter = NewModalFilterProc(StandardDialogFilter);
	
	file = FSpOpenResFile(&schemeSpec, fsRdWrPerm);
	if (file == -1)
	{
		switch (ResError())
		{
			case noErr:
				break;
			case opWrErr:
				DisplayAlert("You can't edit this file since it's currently open in another application.", "Please close it and try again");
				return;
				break;
			case eofErr:
				FInfo fileInfo;
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
	CloseResFile(file);
	UseResFile(appFile);
	
	editcicn = GetNewDialog (insertcicnID, nil, (WindowPtr)-1L);
	
	GetWTitle(editcicn, windowTitle);
	AppendString(windowTitle, "\p: ");
	AppendString(windowTitle, schemeSpec.name);
	SetWTitle(editcicn, windowTitle);
	
	SetDialogDefaultItem(editcicn, kInsert);
	SetDialogCancelItem( editcicn, kClose );
	SetDialogTracksCursor(editcicn,true);
	
	SelectDialogItemText( editcicn, kIDField, 0, 32767);
	
	GetDialogItem(editcicn, kcicnPopup, &itemType, &item, &popupRect);
	
	ShowWindow(editcicn);
	
	
	ID = -14336;
	NumToString(ID, IDAsString);

	GetcicnMenu(IDAsString, &selectedType, &selectedcicn, cicnName);
	ChangecicnPopup();
	NumToString(ID, IDAsString);
	GetDialogItem(editcicn, kIDField, &itemType, &item, &itemRect);
	SetDialogItemText(item, IDAsString);
	RedrawEditDialog(editcicn);

	dialogDone = false;
	while (!dialogDone)
	{
		ModalDialog(eventFilter, &itemHit);
		switch (itemHit)
		{
			case kIDField:
				GetDialogItem(editcicn, kIDField, &itemType, &item, &itemRect);
				GetDialogItemText(item, IDAsString);
				GetcicnMenu(IDAsString, &selectedType, &selectedcicn, cicnName);
				ChangecicnPopup();
				RedrawEditDialog(editcicn);
				break;
			case kInsert: 
				GetDialogItem(editcicn, kIDField, &itemType, &item, &itemRect);
				GetDialogItemText(item, IDAsString);
				StringToNum(IDAsString, &ID);
				GetcicnMenu(IDAsString, &selectedType, &selectedcicn, cicnName);
				AppendString(cicnName, "\p ");
				clip2cicn(ID, cicnName);
				RedrawEditDialog(editcicn);
				break;
			case kExtract:
				GetDialogItem(editcicn, kIDField, &itemType, &item, &itemRect);
				GetDialogItemText(item, IDAsString);
				StringToNum(IDAsString, &ID);
				cicn2clip(ID);
				RedrawEditDialog(editcicn);
				break;
			case kClose:
				dialogDone = true;
				break;
			case kTypesPopup:
				GetDialogItem(editcicn, kTypesPopup, &itemType, &item, &itemRect);
				selectedType = GetControlValue((ControlHandle)item) + baseMenuID - 1;
				
				selectedcicn = 1;
				ChangecicnPopup();
				RedrawEditDialog(editcicn);
				
				break;
			case kcicnPopup:
				GetDialogItem(editcicn, kcicnPopup, &itemType, &item, &itemRect);
				selectedcicn = GetControlValue((ControlHandle)item);
				
				RedrawEditDialog(editcicn);
				
				break;
		}
	}
	
	DisposeDialog(editcicn);
}

void GetcicnMenu(Str255 IDAsString, int* group, int* item, Str255 name)
{
	MenuHandle	currentMenu;
	int			itemCount;
	Str255		menuItemText;
	
	CopyString(name, "\p ");
	*group = baseMenuID + menuCount - 1; // "Others" group, always last
	*item = CountMItems((MenuHandle)Get1Resource('MENU', *group)); // "Custom ID", always last
	
	if (EqualString(IDAsString, "\p-", true, true))
		return;
	
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
			GetIDFromMenu(menuItemText);		
			
			//menuLength = menuItemText[0];
			
			//menuItemText[0] = IDLength + 1;
			
			if (EqualString(IDAsString, menuItemText, true, true))
			{
				*group = baseMenuID + i;
				*item = j;		
				GetNameFromMenu(*group, *item, name);
				return;
			}
		}
	}
}

void GetIDFromMenu(Str255 menuItemText)
{
	Str255 tempStr;
	int i;
	
	CopyString(tempStr, menuItemText);
	
	for (i=tempStr[0]; i > 0 && tempStr[i] == ' '; i--){;}
	for (; i > 0 && tempStr[i] != ' '; i--){;}
	tempStr[i] = tempStr[0] - i;
	
	CopyString(menuItemText, &tempStr[i]);
}

void GetNameFromMenu(int group, int item, Str255 menuItemText)
{
	Str255 cicnName, tempStr;
	int i;
	
	GetMenuItemText(GetMenu(baseMenuID - 1), group - baseMenuID + 1, cicnName);
	GetMenuItemText(GetMenu(group), item, tempStr);
	for (i=tempStr[0]; i > 0 && tempStr[i] != ' '; i--){;}
	tempStr[0] = i - 1;
	AppendString(cicnName, "\p ");
	AppendString(cicnName, tempStr);
	CopyString(menuItemText, cicnName);
}

pascal bool StandardDialogFilter(DialogPtr dialog, EventRecord* eventPtr, short* itemHit)
{
	char 	key;
	bool	handledEvent = false;
	GrafPtr	oldPort;
	
	switch (eventPtr->what)
	{
		case osEvt:
			
		//case activateEvt:
			GetPort(&oldPort);
			SetPort(dialog);
			InvalRect(&dialog->portRect);
			SetPort(oldPort);
		case updateEvt:
			if ((WindowPtr) eventPtr->message != dialog)
				HandleUpdate(eventPtr);
			else
			{
				if (!IsFrontProcess()) BeginUpdate(dialog);
				RedrawEditDialog(dialog);
				if (!IsFrontProcess()) EndUpdate(dialog);
			}
			break;
		case keyDown:
		case autoKey:
			key = eventPtr->message & charCodeMask;  
			if ((key == kReturnCharCode) || (key == kEnterCharCode) ||
			    (key == kTabCharCode) || (key == kBackspaceCharCode) ||
			    (key == kEscapeCharCode) || (key == kDeleteCharCode) ||
			    (key == kRightArrowCharCode) || (key == kLeftArrowCharCode) ||
			    (key == kUpArrowCharCode) || (key == kDownArrowCharCode) ||
			    (key == '-') || ((key >= '0') && (key <= '9')) ||
			    ((key == '.') && (eventPtr->modifiers & cmdKey) != 0))
			{
			   handledEvent = StdFilterProc(dialog, eventPtr, itemHit);
			}
			else
			{
				SysBeep(6);
				handledEvent = true;
			}
			break;
		default:
			GetPort(&oldPort);
			SetPort(dialog);
			
			handledEvent = StdFilterProc(dialog,eventPtr,itemHit);
			SetPort(oldPort);
		break;
	}
	return handledEvent;
	
}

void RedrawEditDialog(DialogPtr dialog)
{
	Rect itemRect, targetRect, cicnRect, clipboardRect;
	ControlHandle item;
	short itemType;
	Str255 IDAsString;
	long ID, selectedType, selectedcicn, ignored;
	short scheme;
	CIconHandle currentCicn;
	Handle pic;
	
	GetDialogItem(dialog, kcicnPopup, &itemType, &(Handle)item, &itemRect);
	selectedType = (**(PopupPrivateDataHandle)(**item).contrlData).mID;
	selectedcicn = GetControlValue(item);
	
	if ((selectedType == baseMenuID + menuCount - 1) &&
		(selectedcicn == CountMItems((MenuHandle)Get1Resource('MENU', selectedType))))
	{
		GetDialogItem(dialog, kIDField, &itemType, &(Handle)item, &itemRect);
		GetDialogItemText((Handle)item, IDAsString);
	}
	else
	{
		GetMenuItemText(GetMenu(selectedType), selectedcicn, IDAsString);
		GetIDFromMenu(IDAsString);
		GetDialogItem(dialog, kIDField, &itemType, &(Handle)item, &itemRect);
		SetDialogItemText((Handle)item, IDAsString);
		SelectDialogItemText( dialog, kIDField, 0, 32767);
	}
	
	StringToNum(IDAsString, &ID);
	
	
	SAVEGWORLD;
	
	SetPort(dialog);
	
	SAVECOLORS;
	
	
	GetDialogItem(dialog, kcicnPreview, &itemType, &(Handle)item, &cicnRect);
	DrawImageWell(cicnRect);
	EraseRect(&cicnRect);
	GetDialogItem(dialog, kClipboardPreview, &itemType, &(Handle)item, &clipboardRect);
	DrawImageWell(clipboardRect);
	EraseRect(&clipboardRect);
	RESTORECOLORS;
	
	pic = NewHandle(0);
	GetDialogItem(dialog, kInsert, &itemType, &(Handle)item, &itemRect);
	if (GetScrap( pic, 'PICT', &ignored ) >= 0)
	{
		targetRect = (*(PicHandle)pic)->picFrame;
		OffsetRect(&targetRect, -targetRect.left, -targetRect.top);
		MakeTargetRect(clipboardRect, &targetRect);
		DrawPicture((PicHandle)pic, &targetRect);
		HiliteControl(item,0);
	}
	else
	{
		MoveTo(clipboardRect.left + ((clipboardRect.right - clipboardRect.left) - StringWidth("\pNot aavailable"))/2, clipboardRect.bottom/2 + 16);
		DrawString("\pNot available");
		HiliteControl(item,255);
	}

	scheme = FSpOpenResFile(&schemeSpec, fsRdWrPerm);
	UseResFile(scheme);
	currentCicn = (CIconHandle)Get1Resource('cicn', ID);
	if (currentCicn != NULL)
	{
		ReleaseResource((Handle)currentCicn);
		currentCicn = GetCIcon(ID);
	}
	
	GetDialogItem(dialog, kExtract, &itemType, &(Handle)item, &itemRect);
	if (currentCicn != NULL)
	{
		targetRect = (**currentCicn).iconPMap.bounds;
		OffsetRect(&targetRect, -targetRect.left, -targetRect.top);
		MakeTargetRect(cicnRect, &targetRect);
		PlotCIcon(&targetRect, currentCicn);
		DisposeCIcon(currentCicn);
		HiliteControl(item,0);
	}
	else
	{
		MoveTo(cicnRect.left + ((cicnRect.right - cicnRect.left) - StringWidth("\pNot aavailable"))/2, cicnRect.bottom/2 + 16);
		DrawString("\pNot available");
		HiliteControl(item,255);
	}
	CloseResFile(scheme);
	UseResFile(appFile);
	
	
	RESTOREGWORLD;
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
	GWorldPtr		picGWorld, bwGWorld, maskGWorld;
	PixMapHandle	picPixMap, bwPixMap, maskPixMap;
	long			picSize;
	long			offset;
	Handle			oldCicn;
	bool			blackIn = false, done=false;
	int				i=0;
	int				depth;
	int				realRowBytes, width, bwRowBytes;
	RGBColor		currentBackColor;
	Rect			bounds;

	pic = NewHandle(0);
	GetScrap( pic, 'PICT', &offset );

	GetPictInfo((PicHandle)pic, &picInfo, returnColorTable, 256, popularMethod, 0);
	colorTable = picInfo.theColorTable;

	bounds = picInfo.sourceRect;

	while(!done && i < (**colorTable).ctSize)
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
	NewGWorld(&picGWorld, depth, &bounds, colorTable, NULL, 0);
	SetGWorld(picGWorld, NULL);
	GetBackColor(&currentBackColor);
	BackColor(whiteColor);
	EraseRect(&qd.thePort->portRect);
	picPixMap = GetGWorldPixMap(picGWorld);
	LockPixels(picPixMap);
	DrawPicture((PicHandle)pic, &bounds);
	
	width = bounds.right - bounds.left;
	realRowBytes = ((width * depth + 31) & -31) >> 3;
	CropPixMap(picPixMap, realRowBytes);

	/* first we set all the colors in the cicn except for white to black (to get a sillouete of the item)
	   then we do a CalcMask on the item in order to get the proper mask */
	
	NewGWorld(&maskGWorld, 1, &bounds, NULL, NULL, 0);
	SetGWorld(maskGWorld, NULL);
	EraseRect(&qd.thePort->portRect);
	maskPixMap = GetGWorldPixMap(maskGWorld);
	LockPixels(maskPixMap);
	
	Make1BitMask(picPixMap, maskPixMap, bounds);
	bwRowBytes = ((width + 31) & -31) >> 3;
	CropPixMap(maskPixMap, bwRowBytes);
	
	// draw the pict in a 1-bit GWorld, to be used for the black and white version of the cicn
	NewGWorld(&bwGWorld, 1, &bounds, NULL, NULL, 0);
	SetGWorld(bwGWorld, NULL);
	EraseRect(&qd.thePort->portRect);
	DrawPicture((PicHandle)pic, &bounds);
	bwPixMap = GetGWorldPixMap(bwGWorld);
	LockPixels(bwPixMap);  
	
	SetGWorld(startupPort, startupDevice);
	
			 
	CropPixMap(bwPixMap, bwRowBytes);
			 
	picSize =  realRowBytes * ((**picPixMap).bounds.bottom - (**picPixMap).bounds.top);
	GetPixMapInfo(picPixMap, &pixMapInfo, returnColorTable, 256, popularMethod, 0);
	
	
	/* Allocate memory for the 'cicn'. */
	
	cicn = (CIconHandle)NewHandleClear( (long)sizeof( CIcon ) );
	
	/* Fill in the cicn's bitmap fields. */ 
	
	(**cicn).iconBMap.baseAddr				= nil;
	(**cicn).iconBMap.rowBytes				= bwRowBytes;
	(**cicn).iconBMap.bounds				= bounds;
	
	bitmapSize = ((**cicn).iconBMap.bounds.bottom - (**cicn).iconBMap.bounds.top) * bwRowBytes;


	/* Fill in the cicn's mask bitmap fields. */
	
	(**cicn).iconMask.baseAddr				= nil;
	(**cicn).iconMask.rowBytes				= bwRowBytes;
	(**cicn).iconMask.bounds				= bounds;
	
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
	
	SetHandleSize( (Handle)cicn, (long)sizeof( CIcon ) + (bitmapSize * 2) + colorTableSize + picSize - 2);
	
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

OSErr NewGWorldUnpadded(GWorldPtr* gWorld, short depth, const Rect* bounds, CTabHandle colorTable)
{
	PixMapHandle tempPix;
	long realRowBytes, currentRowBytes;
	Rect	tempBounds;
	OSErr	err;
	
	tempBounds = *bounds;
	
	realRowBytes = (((bounds->right - bounds->left) * depth + 31) & -31) >> 3;
	
	if ((realRowBytes > 32) && (realRowBytes % 16 == 0))
		tempBounds.right -= 16 * 8 / depth;
	else if (realRowBytes == 32)
		tempBounds.right -= (tempBounds.right - tempBounds.left)/2;
	else if (realRowBytes == 16)
		tempBounds.right -= (tempBounds.right - tempBounds.left)/2;
	
	err = NewGWorld(gWorld, depth, &tempBounds,  colorTable, NULL, 0);
	
	if (err != noErr) return err;
	
	tempPix = GetGWorldPixMap(*gWorld);
	LockPixels(tempPix);
	currentRowBytes = (**tempPix).rowBytes & 0x3FFF;
	
	(**gWorld).portRect = *bounds;
	(**tempPix).bounds = *bounds;
	(**(**gWorld).portPixMap).bounds = *bounds;
	(**(**gWorld).visRgn).rgnBBox = *bounds;
	
	CropPixMap(tempPix, (bounds->right - bounds->left) * depth/8);
	
	UnlockPixels(tempPix);
	
	return noErr;
}


void cicn2clip(short cicnID)
{
	CIconHandle 	currentCicn;
	short			scheme;
	PicHandle		pic;
	OSErr			err;
	int				picSize;
	Rect			cicnRect;
	PixMapHandle	cicnPixHandle;
	PixMapPtr		cicnPix;
	BitMapPtr		maskBits;
	int				bitmapSize, maskSize, colorTableSize;
	RgnHandle		maskRgn;
	//Ptr			cicnData;
	
	scheme = FSpOpenResFile(&schemeSpec, fsRdPerm);
	UseResFile(scheme);
	
	currentCicn = GetCIcon(cicnID);
	DetachResource((Handle)currentCicn);
	HLock((Handle)currentCicn);
	
	CloseResFile(scheme);
	UseResFile(appFile);
	
	cicnPix = &(**currentCicn).iconPMap;
	cicnRect = cicnPix->bounds;
	bitmapSize = (cicnRect.bottom - cicnRect.top) * ((**currentCicn).iconBMap.rowBytes & 0x3FFF);
	maskSize = (cicnRect.bottom - cicnRect.top) * ((**currentCicn).iconMask.rowBytes & 0x3FFF);
	colorTableSize = sizeof(ColorTable) + (**cicnPix->pmTable).ctSize * sizeof(ColorSpec);
	
	/*dataSize = bitmapSize * 2 + colorTableSize + (cicnRect.bottom - cicnRect.top) * ((**currentCicn).iconPMap.rowBytes & 0x3FFF);
	
	cicnData = NewPtr(dataSize);
	BlockMoveData((char*)(**currentCicn).iconMaskData,
				  cicnData,
				  dataSize);*/
	
	cicnPix->baseAddr = (char*)((**currentCicn).iconMaskData) + bitmapSize * 2 + colorTableSize;
	
	cicnPixHandle = &cicnPix;
	
	LockPixels(cicnPixHandle);
	
	maskBits = &(**currentCicn).iconMask;
	maskBits->baseAddr = (char*)((**currentCicn).iconMaskData);
	
	maskRgn = NewRgn();
	BitMapToRegion(maskRgn, maskBits);
	
	
	
	Rect picRect;
	RgnHandle picRgn;
	SetRect(&picRect,
			cicnRect.left * 4,
			cicnRect.top * 4,
			cicnRect.right * 4,
			cicnRect.bottom * 4);
	picRgn = NewRgn();
	CopyRgn(maskRgn, picRgn);
	MapRgn(picRgn, &cicnRect, &picRect);
	CopyBits((BitMap*)cicnPix,
			 &qd.thePort->portBits,
			 &cicnRect,
			 &picRect,
			 srcCopy,
			 picRgn);
	DisposeRgn(picRgn);
	
	
	
	PixMapToPicture(cicnPixHandle, NULL, &pic);
	
	ZeroScrap();
	picSize = GetHandleSize((Handle)pic);
			
	err = PutScrap(picSize, 'PICT', *pic);
	
	if (err != noErr)
		DisplayValue(err);
	
	KillPicture(pic);
	
	UnlockPixels(cicnPixHandle);
	
	HUnlock((Handle)currentCicn);
	DisposeCIcon(currentCicn);
	DisposeRgn(maskRgn);
}

void HandleEditChoice(int item)
{
	item;
	SysBeep(6);
}


