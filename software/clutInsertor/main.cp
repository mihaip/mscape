#include "clutinsertor.h"

void main(void)
{
	Initialize();
	
	EventLoop();
	
	ExitApplication();
	
}

void Initialize()
{
	InitToolBox();
	
	InitMenuBar();
	
	GetGWorld(&startupPort, &startupDevice);

	
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
		case iTestScheme :		TestScheme(); break;
		case iQuit :		isDone = true; break;
	}
}

void TestScheme(void)
{
/*	StandardFileReply	reply;
	SFTypeList			typeList;
	FSSpec				clutFileSpec;
	short				scheme, clutFile, oldFile;
	CTabHandle 			colorTable;
	CIconHandle			cicn;
	PicHandle			pic;
	Handle				icn;	
	Handle				icl8;
	Rect				bounds = {0, 0, 32, 32};
	int					depth = 8;
	int 				bitmapSize = 4 * 32;
	

	if (FSMakeFSSpec(0, 0, "\p:clut resource", &clutFileSpec) == noErr)
	{
	
		oldFile = CurResFile();
		
		clutFile = FSpOpenResFile(&clutFileSpec, fsRdWrPerm);
		UseResFile(clutFile);
		colorTable = GetCTable(128);
		pic = GetPicture(128);
		icn = GetResource( 'ICN#', 128 );
		icl8 = GetResource( 'icl8', 128 );
		
		HLock( icn );
		HNoPurge( icn );
	
		HLock( icl8 );
		HNoPurge( icl8 );
		
		cicn = (CIconHandle)NewHandleClear( (long)sizeof( CIcon ) );
		(**cicn).iconBMap.baseAddr				= nil;
		(**cicn).iconBMap.rowBytes				= 4;
		(**cicn).iconBMap.bounds				= bounds;

	
		
		(**cicn).iconMask.baseAddr				= nil;
		(**cicn).iconMask.rowBytes				= 4;
		(**cicn).iconMask.bounds				= bounds;
		
		
		
		(**cicn).iconPMap.baseAddr				= nil;
		(**cicn).iconPMap.rowBytes				= (((bounds.right - bounds.left) * depth) / 8) | 0x8000;
		(**cicn).iconPMap.bounds				= bounds;
		(**cicn).iconPMap.pmVersion				= 0;
		(**cicn).iconPMap.packType				= 0;
		(**cicn).iconPMap.packSize				= 0;
		(**cicn).iconPMap.hRes					= 72;
		(**cicn).iconPMap.vRes					= 72;
		(**cicn).iconPMap.pixelSize				= depth;
		(**cicn).iconPMap.planeBytes			= 0;
		(**cicn).iconPMap.pmReserved			= 0;
		(**cicn).iconPMap.pixelType				= 0;
		(**cicn).iconPMap.cmpCount				= 1;
		(**cicn).iconPMap.cmpSize				= depth;
		(**cicn).iconPMap.pmTable				= GetCTable( depth );

	
		
		(**cicn).iconData = (Handle)icl8;
		
		
		
		SetHandleSize( (Handle)cicn, sizeof( CIcon ) + (bitmapSize * 2) );
		

		BlockMove( *icn, &(**cicn).iconMaskData[bitmapSize / 2], bitmapSize );		
		BlockMove( *icn + (long)bitmapSize, (**cicn).iconMaskData, bitmapSize );
    	AddResource((Handle)cicn, 'cicn', 128, "\ptest cicn");
    	ChangedResource((Handle)cicn);
    	WriteResource((Handle)cicn);
    	UpdateResFile(clutFile);
    	CloseResFile(clutFile);
    	UseResFile(oldFile);
		
		
		DisplayAlert("", "clut 128 written to cicn -14335");
	}
*/
	long			bitmapSize;		/* Size of the icon's bitmap. */
	short			clutFile, oldFile;
	FSSpec			clutFileSpec;
	CIconHandle		cicn;
	PicHandle		pic;
	PictInfo		picInfo, pixMapInfo;
	long			colorTableSize;
	CTabHandle		colorTable;
	GWorldPtr		picGWorld;
	PixMapHandle	picPixMap;
	long			picSize;

	FSMakeFSSpec(0, 0, "\p:clut resource", &clutFileSpec);
	
	
	oldFile = CurResFile();
		
	clutFile = FSpOpenResFile(&clutFileSpec, fsRdWrPerm);
	UseResFile(clutFile);
	pic = GetPicture(128);
	GetPictInfo(pic, &picInfo, returnColorTable, 256, popularMethod, 0);
	colorTable = picInfo.theColorTable;
	
	NewGWorld(&picGWorld, 8, &picInfo.sourceRect, colorTable, NULL, 0);
	SetGWorld(picGWorld, NULL);
	DrawPicture(pic, &picInfo.sourceRect);
	picPixMap = GetGWorldPixMap(picGWorld);
	LockPixels(picPixMap);
	SetGWorld(startupPort, startupDevice);
	picSize =  ((**picPixMap).rowBytes & 0x7FFF) * ((**picPixMap).bounds.bottom - (**picPixMap).bounds.top);
							
	/* Load and lock the 'icl8' and 'ICN#' resources used to build the 'cicn'. */
	
	
	HLock((Handle) pic );
	HNoPurge((Handle) pic );
	
	HLock((Handle) colorTable );
	HNoPurge((Handle) colorTable );
	
	if (pic == NULL || colorTable == NULL)
	{
		SysBeep(6);
		ExitApplication();
	}
		
	/* Allocate memory for the 'cicn'. */
	
	cicn = (CIconHandle)NewHandleClear( (long)sizeof( CIcon ) );
	
	/* Fill in the cicn's bitmap fields. */ 
	
	(**cicn).iconBMap.baseAddr				= nil;
	(**cicn).iconBMap.rowBytes				= (picInfo.sourceRect.right - picInfo.sourceRect.left + 7)/8;
	(**cicn).iconBMap.rowBytes			   += (**cicn).iconBMap.rowBytes & 1;
	(**cicn).iconBMap.bounds				= picInfo.sourceRect;
	bitmapSize = ((**cicn).iconBMap.bounds.bottom - (**cicn).iconBMap.bounds.top) * (**cicn).iconBMap.rowBytes;

	/* Fill in the cicn's mask bitmap fields. */
	
	(**cicn).iconMask.baseAddr				= nil;
	(**cicn).iconMask.rowBytes				= (**cicn).iconBMap.rowBytes;
	(**cicn).iconMask.bounds				= picInfo.sourceRect;
	
	/* Fill in the cicn's pixmap fields. */
	
	(**cicn).iconPMap.baseAddr				= nil;
	(**cicn).iconPMap.rowBytes				= (**picPixMap).rowBytes;
	(**cicn).iconPMap.bounds				= (**picPixMap).bounds;
	(**cicn).iconPMap.pmVersion				= 0;
	(**cicn).iconPMap.packType				= 0;
	(**cicn).iconPMap.packSize				= 0;
	(**cicn).iconPMap.hRes					= picInfo.hRes;
	(**cicn).iconPMap.vRes					= picInfo.vRes;
	(**cicn).iconPMap.pixelSize				= picInfo.depth;
	(**cicn).iconPMap.planeBytes			= 0;
	(**cicn).iconPMap.pmReserved			= 0;
	(**cicn).iconPMap.pixelType				= 0;
	(**cicn).iconPMap.cmpCount				= 1;
	(**cicn).iconPMap.cmpSize				= picInfo.depth;
	(**cicn).iconPMap.pmTable				= colorTable;

	/* Set the 'icl8' pixel image to the iconData field. */
	
	(**cicn).iconData = (Handle)picPixMap;
	
	/* Resize the 'cicn' for the bitmap image and mask. */
	colorTableSize = sizeof(ColorTable) + ((**((**cicn).iconPMap.pmTable)).ctSize) * sizeof(ColorSpec);

	
	SetHandleSize( (Handle)cicn, sizeof( CIcon ) + (bitmapSize * 2) + colorTableSize + picSize);
	
	/* Copy the 'ICN#' data into the iconMaskData array. */
	/* Note1: This is an array of shorts, so divide bitmapSize by 2. */
	/* Note2: The mask comes before the image.  The is opposite of an 'ICN#' */

	BlockZero(&(**cicn).iconMaskData[bitmapSize / 2], bitmapSize );		/* The 1bit image. */
	BlockZero((**cicn).iconMaskData, bitmapSize );	/* The mask. */
	BlockMove( *((**cicn).iconPMap.pmTable), &(**cicn).iconMaskData[bitmapSize], colorTableSize);
	BlockMove( (*picPixMap)->baseAddr, &(**cicn).iconMaskData[bitmapSize + colorTableSize/2], picSize);
	
	PlotCIcon( &picInfo.sourceRect, cicn );
	UnlockPixels(picPixMap);
	DisposeGWorld(picGWorld);
	DetachResource((Handle)cicn);
	AddResource((Handle)cicn, 'cicn', 128, "\ptest cicn");
	//ChangedResource((Handle)cicn);
	WriteResource((Handle)cicn);
	UpdateResFile(clutFile);
	CloseResFile(clutFile);
	UseResFile(oldFile);
	
	

}

void CloseScheme(void)
{
	/*MenuHandle	menu;
	
	menu = GetMenuHandle(mFile);
	EnableItem(menu, iOpenScheme);
	DisableItem(menu, iCloseScheme);
	menu = GetMenuHandle(mParts);
	DisableItem(menu, 0);


	CloseWindow(previewWindow);
	*/
}


void HandleEditChoice(int item)
{
	item;
	SysBeep(6);
}


