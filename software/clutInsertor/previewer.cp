#include "previewer.h"

void Initialize()
{
	InitToolBox();
	
	InitMenuBar();
	
	GetGWorld(&startupPort, &startupDevice);
	
	translucentColor.red = 0xFFFF;
	translucentColor.green = 0xFFFF;
	translucentColor.blue = 0x0000;
	
	isDone = false;
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
		case keyDown: HandleKeyDown(eventPtr); break;
		case updateEvt: HandleUpdate(eventPtr); break;
		case activateEvt: break;
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

	part = FindWindow(eventPtr->where, &thisWindow);
	switch (part)
	{
		case inMenuBar :	DoMenuCommand(MenuSelect(eventPtr->where)); break;
		case inSysWindow :	SystemClick(eventPtr, thisWindow); break;
		case inDrag :		mainScreen = GetMainDevice(); DragWindow( thisWindow, eventPtr->where, &( ( *mainScreen )->gdRect )); break;
		case inGoAway : if (TrackGoAway(previewWindow, eventPtr->where) ) CloseScheme(); break;	
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

	if (GetWRefCon(windowToUpdate) == kPreviewWindowRefCon)
	{
		BeginUpdate(windowToUpdate);
		//DisplayParts(&documentWParts, displayedParts);
		EndUpdate(windowToUpdate);
	}
}

void DoMenuCommand(int menuResult)
{
	int	menuID, menuItem;
	
	menuID = HiWord(menuResult);
	menuItem = LoWord(menuResult);
	switch (menuID)
	{
		case mApple :	HandleAppleChoice(menuItem); break;
		case mFile :	HandleFileChoice(menuItem); break;
		case mEdit :	HandleEditChoice(menuItem); break;
		case mParts:	HandlePartsChoice(menuItem); break;
		case mPartsToRects:	HandlePartsToRectsChoice(menuItem); break;
	}
	HiliteMenu(0);
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
	DialogPtr	aboutBox;
	bool		dialogDone;
	short		itemHit;
	CGrafPtr	oldPort;
	GDHandle	oldDevice;
	
	GetGWorld(&oldPort, &oldDevice);
	
	aboutBox = GetNewDialog (aboutBoxID, nil, (WindowPtr)-1L);
	SetPort( aboutBox);
	SetDialogDefaultItem(aboutBox, kOk);
	
	ShowWindow( aboutBox );
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
	SetGWorld(oldPort, oldDevice);
}

void HandleFileChoice(int item)
{
	switch (item)
	{
		//case iNewScheme :		NewScheme(); break;
		case iOpenScheme :		OpenScheme(); break;
		case iCloseScheme :		CloseScheme(); break;
		//case iSaveScheme :	SaveScheme(false); break;
		//case iSaveSchemeAs :	SaveScheme(true); break;
		case iQuit :			isDone = true; break;
	}
}

void OpenScheme(void)
{
	SFTypeList			typeList;
	StandardFileReply	reply;
	Rect				testRect;
	short				scheme, oldFile;
	MenuHandle			menu;
	
	typeList[0] = schemeFileType;
	StandardGetFile(nil, 1, typeList, &reply);
	
	if ( reply.sfGood )
	{
		oldFile = CurResFile();
		menu = GetMenuHandle(mFile);
		DisableItem(menu, iOpenScheme);
		EnableItem(menu, iCloseScheme);
		menu = GetMenuHandle(mParts);
		EnableItem(menu, 0);
		menu = GetMenuHandle(mPartsToRects);
		EnableItem(menu, 0);
		
		previewWindow = DisplayWindow(previewWindowID);
		
		SetWRefCon(previewWindow, kPreviewWindowRefCon);
		
		previewWindowRect = WindowPeek(previewWindow)->port.portRect;
		
		scheme = FSpOpenResFile(&reply.sfFile, fsRdPerm);
		UseResFile(scheme);
		
		documentWindow.activeCicnID = documentWAID;
		documentWindow.inactiveCicnID = documentWIID;
		documentWindow.partsID = documentWPID;
		
		documentWindow.Load();
		
		SetPort(previewWindow);
		
		SetRect(&testRect, 0, 0, documentWindow.activeCicn.width, documentWindow.activeCicn.height);
		
		documentWindow.activeCicn.Display(testRect, resize, NULL);
		
		CloseResFile(scheme);
		UseResFile(oldFile);
	}
}

void CloseScheme(void)
{
	MenuHandle	menu;
	
	menu = GetMenuHandle(mFile);
	EnableItem(menu, iOpenScheme);
	DisableItem(menu, iCloseScheme);
	menu = GetMenuHandle(mParts);
	DisableItem(menu, 0);


	CloseWindow(previewWindow);
}


void HandleEditChoice(int item)
{
	item;
	SysBeep(6);
}

void HandlePartsChoice(int item)
{
	int itemToCheck = -1;
	int currentCheckedItem;
	Point where;
	
	switch (displayedParts)
	{
		case rects :	currentCheckedItem = iRects; break;
		case top :		currentCheckedItem = iTop; break;
		case bottom :	currentCheckedItem = iBottom; break;
		case left : 	currentCheckedItem = iLeft; break;
		case right :	currentCheckedItem = iRight; break;
		case none : 	currentCheckedItem = 0; break;
	}
	
	where.h = where.v = -1;
	
	switch (item)
	{
		case iRects :			itemToCheck = iRects;
								displayedParts = rects;
								documentWindow.DisplayParts(rects);
								break;
		case iTop :				itemToCheck = iTop;
								displayedParts = top; 
								documentWindow.DisplayParts(top);
								break;
		case iBottom :			itemToCheck = iBottom;
								displayedParts = bottom;
								documentWindow.DisplayParts(bottom);
								break;
		case iLeft :			itemToCheck = iLeft;
								displayedParts = left;
								documentWindow.DisplayParts(left);
								break;
		case iRight :			itemToCheck = iRight;
								displayedParts = right;
								documentWindow.DisplayParts(right);
								break;
		case iPickRectColor:	GetColor(where, "\pPick a rect color: ", &translucentColor, &translucentColor);
								documentWindow.DisplayParts(displayedParts);
								break;
	}
	if (itemToCheck != -1)
	{
		MenuHandle menu;
		menu = GetMenuHandle(mParts);
		CheckItem(menu, currentCheckedItem, false);
		CheckItem(menu, itemToCheck, true);
	}
}

void HandlePartsToRectsChoice(int item)
{
	Rect testRect = {0, 0, 300, 400};
	
	switch (item)
	{
		case iDisplay:	documentWindow.DisplayPreview(testRect, "\pjust testing", active); break;
	}
}
