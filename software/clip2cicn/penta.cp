#include "penta.h"


// Create:
// inits the toolbox, sets the screen to the correct depth
// hides the menubar and the cursor
// initializes the game variables (this is temporary, eventually they will be read
// from a resource
// also creates the game window and the canvas GWorld

tPentaBoardClass::tPentaBoardClass(void)
{
PaletteHandle gamePalette;	

	board = (tBoardStateHandle)NewHandle(sizeof(tBoardState));
	
	if (board == NULL)
	{
		ExitToShell();
	}
	
	status = notPlaying;
	
	
	// startup the game
	
	ToolBoxInit();
	GetGWorld(&startupPort, &startupDevice);		
	
	if (GetScreenDepth() != kPixelDepth)
	{
		gSavedDepth = GetScreenDepth();
		SetDepth(startupDevice, kPixelDepth, 1, 1);
	}

	colorTable = GetCTable(kClutID);
	gamePalette = NewPalette(256, colorTable, pmExplicit + pmTolerant, 0);
	SetPalette( (WindowPtr)-1L, gamePalette, 0);

	
	InitMenuBar();
	
	noPiece.ID = kNoPieceID;
	playerOnePiece.ID = kPlayerOneID;
	playerTwoPiece.ID = kPlayerTwoID;
	
	noPiece.Load();
	playerOnePiece.Load();
	playerTwoPiece.Load();
	
	capture1Location.h = StringWidth("\pPlayer 1 Captured: ") + 24;
	capture1Location.v = kGameWindowHeight+kStatusBarHeight - 5;
	capture2Location.h = kGameWindowWidth - 10;
	capture2Location.v = kGameWindowHeight+kStatusBarHeight - 5;
	statusBarRect.top = kGameWindowHeight;
	statusBarRect.bottom = kGameWindowHeight + kStatusBarHeight;
	statusBarRect.left = 0;
	statusBarRect.right = kGameWindowWidth;
	
	SetGWorld(startupPort, startupDevice);
	
}

void tPentaBoardClass::InitMenuBar()
{
	Handle		menuBar;
	MenuHandle	menu;
	
	menuBar = GetNewMBar( kMenuBarID );
	SetMenuBar(menuBar);
	
	menu = GetMenuHandle ( mApple );
	AppendResMenu (menu, 'DRVR' );
	
	DrawMenuBar();
}

// CreateGameWindow
// creates the game window, where all the action occurs
// the window is centered and the dimensions are based on the constants kGameWindowHeight
// and kGameWindowWidth, found in projectincludes.h
 
void tPentaBoardClass::CreateGameWindow(void)
{
	Rect		windowRect;
	
	windowRect.top = ((qd.screenBits.bounds.bottom-qd.screenBits.bounds.top) - kGameWindowHeight)/2;
	windowRect.bottom = windowRect.top + kGameWindowHeight + kStatusBarHeight;
	
	windowRect.left = ((qd.screenBits.bounds.right-qd.screenBits.bounds.left) - kGameWindowWidth)/2;
	windowRect.right = windowRect.left + kGameWindowWidth;
	
	gameWindow = NewCWindow( NULL,
						  &windowRect,
						  "\pPenta",
						  true,
						  documentProc,
						  (WindowPtr)-1,
						  true,
						  kGameWinRefCon);
	
	SetPort(gameWindow);
	BackColor(whiteColor);
	EraseRect(&qd.thePort->portRect);
	SetGWorld(startupPort, startupDevice);
}

void tPentaBoardClass::DrawStatusBar(void)
{
	Str255	numCapturedAsString;
	SetPort(gameWindow);
	BackColor(whiteColor);
	EraseRect(&statusBarRect);
	
	SetPort(gameWindow);
	MoveTo(0, kGameWindowHeight);
	LineTo(kGameWindowWidth, kGameWindowHeight);
	
	MoveTo(2, kGameWindowHeight+kStatusBarHeight - 5);
	DrawString("\pPlayer 1 Captured: ");
	MoveTo(capture1Location.h, capture1Location.v);
	NumToString((**board).playerOneCaptured, numCapturedAsString);
	DrawString(numCapturedAsString);
	
	MoveTo(kGameWindowWidth - StringWidth("\pPlayer 2 Captured: 2") - 6, kGameWindowHeight+kStatusBarHeight - 5);
	DrawString("\pPlayer 2 Captured: ");
	MoveTo(capture2Location.h, capture2Location.v);
	NumToString((**board).playerTwoCaptured, numCapturedAsString);
	DrawString(numCapturedAsString);
	SetGWorld(startupPort, startupDevice);
}

void tPentaBoardClass::DrawBoard(void)
{
	SetPort(gameWindow);
	for (int i = 0; i < kGridWidth; i++)
			for (int j = 0; j < kGridHeight; j++)
				switch ((**board).grid[i][j])
				{
					case kNoPiece: noPiece.CopyPieceToWindow(i, j); break;
					case kPlayerOne : playerOnePiece.CopyPieceToWindow(i, j); break;
					case kPlayerTwo : playerTwoPiece.CopyPieceToWindow(i, j); break;
				}
	SetGWorld(startupPort, startupDevice);
}

void tPentaBoardClass::EventLoop(void)
{
	EventRecord	event;

	while (status != done)
	{
		if (WaitNextEvent (everyEvent, &event, 60, nil))
		{
			DoEvent (&event);
		}
		HandleCursor();
	}
}


void tPentaBoardClass::DoEvent(EventRecord *eventPtr)
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

void tPentaBoardClass::HandleCursor()
{
Point		mousePosition;
WindowPtr	theWindow;
int			part;

	if (status == playing)
	{
		GetMouse(&mousePosition);
		
		part = FindWindow(mousePosition, &theWindow);
		if (GetWRefCon(theWindow) == kGameWinRefCon && part == inContent)
		{
			
			if ((**board).turn == kPlayerOne)
			{
				if (currentCursor != kPlayerOneCursor)
				{
					currentCursor = kPlayerOneCursor;
					SetCCursor(GetCCursor(kPlayerOneCursor));
				}
			}
			if ((**board).turn == kPlayerTwo)
			{
				if (currentCursor != kPlayerTwoCursor)
				{
					currentCursor = kPlayerTwoCursor;
					SetCCursor(GetCCursor(kPlayerTwoCursor));
				}
			}
		}
		else
		{
			if (currentCursor != kArrowCursor)
			{
				currentCursor = kArrowCursor;
				SetCCursor(GetCCursor(kArrowCursor));
			}
		}
	}
	else
	{
		if (currentCursor != kArrowCursor)
		{
				currentCursor = kArrowCursor;
				SetCCursor(GetCCursor(kArrowCursor));
		}
	}
}

void tPentaBoardClass::HandleMouseUp(EventRecord *eventPtr)
{
Point mousePosition;
Point move;
int		part;
WindowPtr theWindow;
MenuHandle	menu;

	mousePosition = eventPtr->where;

	part = FindWindow(mousePosition, &theWindow);
	if (GetWRefCon(theWindow) == kGameWinRefCon)
	{
		switch (part)
		{
			case inContent:
				SetPort(theWindow);
				GlobalToLocal(&mousePosition);
				SetGWorld(startupPort, startupDevice);
				move.h = (mousePosition.h - (mousePosition.h % kSquareDim)) / kSquareDim;
				move.v = (mousePosition.v - (mousePosition.v % kSquareDim)) / kSquareDim;
				(**board).lastMove.didCapture = false;
				if (move.h >= 0 && move.h < kGridWidth && move.v >= 0 && move.v < kGridHeight && (**board).grid[move.v][move.h] == 0)
				{
					if (needToSave != true)
					{
						needToSave = true;
						menu = GetMenuHandle(mFile);
						EnableItem(menu, iSaveGame);
					}
					(**board).grid[move.v][move.h] = (**board).turn;
					(**board).lastMove.coordinates = move;
					menu = GetMenuHandle(mEdit);
					EnableItem(menu, iUndo);
					if ((**board).turn == 1)
					{
						playerOnePiece.CopyPieceToWindow(move.v, move.h);	
						if (Check5(move)) DisplayAlert("Player one won", "");
						if (Check2(move)) SysBeep(6);
						(**board).turn = 2;
					}
					else if ((**board).turn == 2)
					{
						playerTwoPiece.CopyPieceToWindow(move.v, move.h);
						if (Check5(move)) DisplayAlert("Player two won", "");
						if (Check2(move)) SysBeep(6);
						(**board).turn = 1;
					}
				}
		}
	}
}

void tPentaBoardClass::HandleMouseDown(EventRecord *eventPtr)
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
		case inGoAway : if (TrackGoAway(gameWindow, eventPtr->where) ) AbortGame(); break;	
	}
}

void tPentaBoardClass::DoMenuCommand(int menuResult)
{
	int	menuID, menuItem;
	
	menuID = HiWord(menuResult);
	menuItem = LoWord(menuResult);
	switch (menuID)
	{
		case mApple : HandleAppleChoice(menuItem); break;
		case mFile : HandleFileChoice(menuItem); break;
		case mEdit : HandleEditChoice(menuItem); break;
	}
	HiliteMenu(0);
}

void tPentaBoardClass::HandleAppleChoice(int item)
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

void tPentaBoardClass::ShowAboutBox()
{
	DialogPtr	aboutBox;
	bool		dialogDone;
	short		itemHit;
	
	aboutBox = GetNewDialog (kAboutBoxID, nil, (WindowPtr)-1L);
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
	SetGWorld(startupPort, startupDevice);
}

void tPentaBoardClass::HandleFileChoice(int item)
{
	switch (item)
	{
		case iNewGame :		StartNewGame(); break;
		case iOpenGame :	OpenSavedGame(); break;
		case iAbortGame :	AbortGame(); break;
		case iSaveGame :	SaveGame(false); break;
		case iSaveGameAs :	SaveGame(true); break;
		case iQuit :		status = done; break;
	}
}



void tPentaBoardClass::StartNewGame(void)
{
MenuHandle	menu;

	menu = GetMenuHandle(mFile);
	DisableItem(menu, iNewGame);
	DisableItem(menu, iOpenGame);
	EnableItem(menu, iAbortGame);
	EnableItem(menu, iSaveGame);
	EnableItem(menu, iSaveGameAs);
	
	(**board).lastMove.coordinates.h = -1;
	(**board).lastMove.coordinates.v = -1;
	(**board).lastMove.didCapture = false;
	
	(**board).playerOneCaptured = 0;
	(**board).playerTwoCaptured = 0;
	
	(**board).turn = 1;
	
	for (int i = 0; i < kGridWidth; i++)
		for (int j = 0; j < kGridHeight; j++)
		{
			(**board).grid[i][j] = kNoPiece;
		}
	
	status = playing;
	needToSave = false;
	CreateGameWindow();
	DrawBoard();
	DrawStatusBar();
}

void tPentaBoardClass::AbortGame(void)
{
	DialogPtr	abortDialog;
	bool		dialogDone;
	short		itemHit;
	
	if (needToSave)
	{
		abortDialog = GetNewDialog (kAbortGameID, nil, (WindowPtr)-1L);
		SetPort( abortDialog);
		SetDialogDefaultItem(abortDialog, kSave);
		SysBeep(6);
		ShowWindow( abortDialog );
		
		dialogDone = false;
		
		while (!dialogDone)
		{
			ModalDialog(nil, &itemHit);
			
			switch (itemHit)
			{
				case kSave: SaveGame(false);
				case kDontSave : FinishGame();
				case kCancel : currentCursor = -1; dialogDone = true; break;
			}
		}
		DisposeDialog(abortDialog);
		SetGWorld(startupPort, startupDevice);
	}
	else
	{
		FinishGame();
	}
}

void tPentaBoardClass::FinishGame(void)
{
	MenuHandle	menu;
	CloseWindow(gameWindow);
	DisposePtr((Ptr)gameWindow);
	status=notPlaying;

	menu = GetMenuHandle(mFile);
	EnableItem(menu, iNewGame);
	EnableItem(menu, iOpenGame);
	DisableItem(menu, iAbortGame);
	DisableItem(menu, iSaveGame);
	DisableItem(menu, iSaveGameAs);
}

void tPentaBoardClass::OpenSavedGame()
{
	MenuHandle	menu;
	StandardFileReply reply;
	SFTypeList typeList;
	//OSErr err;
	short oldFile, fileRef;
	
	typeList[0] = saveFileType;
	StandardGetFile(nil, 1, typeList, &reply);
	

	if ( reply.sfGood )
	{
		oldFile = CurResFile ();
		fileRef = FSpOpenResFile(&reply.sfFile, fsRdPerm);
		UseResFile(fileRef);
		DisposeHandle((Handle)board);
		board = (tBoardStateHandle)GetResource('Save', 0);
		DetachResource((Handle)board);
		UseResFile(oldFile);
		CloseResFile(fileRef);
		lastReply = reply;
		
		currentCursor = -1;
	
		menu = GetMenuHandle(mFile);
		DisableItem(menu, iNewGame);
		DisableItem(menu, iOpenGame);
		EnableItem(menu, iAbortGame);
		EnableItem(menu, iSaveGame);
		EnableItem(menu, iSaveGameAs);
		
		status = playing;
		CreateGameWindow();
		DrawBoard();
		DrawStatusBar();
	}
}

void tPentaBoardClass::SaveGame(bool as)
{
   StandardFileReply reply;
   MenuHandle	menu;
   OSErr err;
   short oldFile, fileRef;

if ( ! as && (lastReply.sfGood) )
   reply = lastReply;
  else
   StandardPutFile("\pSave the game in what file?", "\pPenta Game", &reply);

  if ( reply.sfGood )
   {
    oldFile = CurResFile ();

/* Delete in case there's an old file */
    err = FSpDelete(&reply.sfFile);

    err = FSpCreate(&reply.sfFile, fileCreator, saveFileType, 0); /*smRoman = 0*/
    FSpCreateResFile(&reply.sfFile, fileCreator, saveFileType, 0); /*smRoman = 0*/
    fileRef = FSpOpenResFile(&reply.sfFile, fsRdWrPerm);
    UseResFile(fileRef);
    AddResource((Handle)board, 'Save', 0, "\pGame save information");
    WriteResource((Handle)board);
    DetachResource((Handle)board);
    UseResFile(oldFile);
    CloseResFile(fileRef);
    lastReply = reply;
    needToSave = false;
    menu = GetMenuHandle(mFile);
	DisableItem(menu, iSaveGame);
   }
 } /*SaveGame*/


void tPentaBoardClass::HandleEditChoice(int item)
{
	switch (item)
	{
		case iUndo : UndoMove(); break;
	}
}

void tPentaBoardClass::UndoMove(void)
{
MenuHandle menu;
	if ((**board).lastMove.coordinates.h != -1)
	{
		(**board).grid[(**board).lastMove.coordinates.v][(**board).lastMove.coordinates.h] = kNoPiece;
		noPiece.CopyPieceToWindow((**board).lastMove.coordinates.v, (**board).lastMove.coordinates.h);
		if ((**board).lastMove.didCapture == true)
		{
			(**board).grid[(**board).lastMove.capture1.v][(**board).lastMove.capture1.h] = (**board).turn;
			(**board).grid[(**board).lastMove.capture2.v][(**board).lastMove.capture2.h] = (**board).turn;
			if ((**board).turn == kPlayerOne)
			{
				playerOnePiece.CopyPieceToWindow((**board).lastMove.capture1.v, (**board).lastMove.capture1.h);
				playerOnePiece.CopyPieceToWindow((**board).lastMove.capture2.v, (**board).lastMove.capture2.h);
			}
			else
			{
				playerTwoPiece.CopyPieceToWindow((**board).lastMove.capture1.v, (**board).lastMove.capture1.h);
				playerTwoPiece.CopyPieceToWindow((**board).lastMove.capture2.v, (**board).lastMove.capture2.h);			
			}
		
		}
		
		menu = GetMenuHandle(mEdit);
		DisableItem(menu, iUndo);
		
		if ((**board).turn == kPlayerOne)
		{
			(**board).turn = kPlayerTwo;
		}
		else
		{
			(**board).turn = kPlayerOne;
		}
	}
}

void tPentaBoardClass::HandleKeyDown(EventRecord *eventPtr)
{
char	theKey;
	
	theKey = eventPtr->message & charCodeMask;
	if ( (eventPtr->modifiers & cmdKey) != 0)
		DoMenuCommand(MenuKey(theKey));
}

void tPentaBoardClass::HandleUpdate(EventRecord *eventPtr)
{
	WindowPtr windowToUpdate;
	
	windowToUpdate = (WindowPtr)eventPtr->message;

	if (GetWRefCon(windowToUpdate) == kGameWinRefCon)
	{
		BeginUpdate(windowToUpdate);
		DrawBoard();
		DrawStatusBar();
		EndUpdate(windowToUpdate);
	}
}

void tPentaBoardClass::Destroy()
{
	if (gSavedDepth != 0)
	{
		SetDepth(startupDevice, gSavedDepth, 1, 1);
	}
	
	ExitApplication();

}

bool tPentaBoardClass::Check2(Point coordinateToCheck)
{
Point 	offsetList[8];
Point 	pointToRemove;

	offsetList[0].h = 0;
	offsetList[0].v = -1;
	offsetList[1].h = -1;
	offsetList[1].v = -1;
	offsetList[2].h = -1;
	offsetList[2].v = 0;
	offsetList[3].h = -1;
	offsetList[3].v = 1;
	offsetList[4].h = 0;
	offsetList[4].v = 1;
	offsetList[5].h = 1;
	offsetList[5].v = 0;
	offsetList[6].h = 1;
	offsetList[6].v = -1;
	offsetList[7].h = 1;
	offsetList[7].v = 1;
	
	for (int i = 0; i < 8; i++)
	{
		if (!(coordinateToCheck.v + offsetList[i].v * 3 < 0 || coordinateToCheck.h + offsetList[i].h * 3 < 0 || coordinateToCheck.v + offsetList[i].v * 3 > kGridHeight || coordinateToCheck.h + offsetList[i].h * 3 > kGridWidth))
		{
			if ((**board).grid[coordinateToCheck.v][coordinateToCheck.h] == (**board).grid[coordinateToCheck.v + 3 * offsetList[i].v][coordinateToCheck.h + 3 * offsetList[i].h]
			    &&
			    (**board).grid[coordinateToCheck.v + offsetList[i].v][coordinateToCheck.h + offsetList[i].h] != 0
			    &&
			    (**board).grid[coordinateToCheck.v + offsetList[i].v][coordinateToCheck.h + offsetList[i].h] != (**board).grid[coordinateToCheck.v][coordinateToCheck.h]
			    &&
			    (**board).grid[coordinateToCheck.v + offsetList[i].v][coordinateToCheck.h + offsetList[i].h] == (**board).grid[coordinateToCheck.v + 2 * offsetList[i].v][coordinateToCheck.h + 2 * offsetList[i].h]
			    )
			{
				(**board).grid[coordinateToCheck.v + offsetList[i].v][coordinateToCheck.h + offsetList[i].h] = kNoPiece;
				(**board).grid[coordinateToCheck.v + 2 * offsetList[i].v][coordinateToCheck.h + 2 * offsetList[i].h] = kNoPiece;
				
				pointToRemove.h = coordinateToCheck.h + offsetList[i].h;
				pointToRemove.v = coordinateToCheck.v + offsetList[i].v;
				
				noPiece.CopyPieceToWindow(pointToRemove.v, pointToRemove.h);
				
				pointToRemove.h = coordinateToCheck.h + 2 * offsetList[i].h;
				pointToRemove.v = coordinateToCheck.v + 2 * offsetList[i].v;
				
				noPiece.CopyPieceToWindow(pointToRemove.v, pointToRemove.h);
				
				if ((**board).turn == kPlayerOne)
				{
					(**board).playerOneCaptured++;
					
				}
				else
				{
					(**board).playerTwoCaptured++;
				}
				
				DrawStatusBar();
				(**board).lastMove.didCapture = true;
				(**board).lastMove.capture1.h = coordinateToCheck.h + offsetList[i].h;
				(**board).lastMove.capture1.v = coordinateToCheck.v + offsetList[i].v;
				(**board).lastMove.capture2.h = coordinateToCheck.h + 2 * offsetList[i].h;
				(**board).lastMove.capture2.v = coordinateToCheck.v + 2 * offsetList[i].v;
				
				return true;
			}
		}
	}
	
	return false; // fallback return value

}

bool tPentaBoardClass::Check5(Point coordinateToCheck)
{
tTestList testList;
Point offsetList[4];
bool testResults;

	offsetList[0].h = 0;
	offsetList[0].v = -1;
	offsetList[1].h = -1;
	offsetList[1].v = -1;
	offsetList[2].h = -1;
	offsetList[2].v = 0;
	offsetList[3].h = -1;
	offsetList[3].v = 1;
	
	for (int i = 0; i < 4; i++)
	{
		CreateList(coordinateToCheck, offsetList[i], &testList);
		testResults =  CheckList(testList, coordinateToCheck);
		if (testResults)
			return true;
	}
	
	return false;

}

void tPentaBoardClass::CreateList(Point coordinateToCheck, Point testOffset, tTestList* testList)
{
	Point currentOffset;

	testList->length = 0;
	
	for (int i = -5; i < 5; i++)
	{
		currentOffset.h = i * testOffset.h;
		currentOffset.v = i * testOffset.v;
		if ((coordinateToCheck.h + currentOffset.h < 0) 
		    || (coordinateToCheck.v + currentOffset.v < 0)
		    || (coordinateToCheck.h + currentOffset.h > kGridWidth)
		    || (coordinateToCheck.v + currentOffset.v > kGridHeight))
		{
//			cout << "off the board" << coordinateToCheck.v + currentOffset.v << " " << coordinateToCheck.h + currentOffset.h << endl;
		}
		
		else
		{
			testList->squaresToCheck[testList->length].h = coordinateToCheck.h + currentOffset.h;
			testList->squaresToCheck[testList->length].v = coordinateToCheck.v + currentOffset.v;
//			cout << "added position " << coordinateToCheck.h + currentOffset.h << " " << coordinateToCheck.v + currentOffset.v << endl;
			testList->length++;
		}
	}

}

bool tPentaBoardClass::CheckList(tTestList testList, Point coordinateToCheck)
{
int playerNumber;
int runLength = 0;

playerNumber = (**board).grid[coordinateToCheck.v][coordinateToCheck.h];

	for (int i = 0; i < testList.length; i++)
	{
	if ((**board).grid[testList.squaresToCheck[i].v][testList.squaresToCheck[i].h] == playerNumber)
		{
			runLength++;
//			cout << "found a square matching at " << testList.squaresToCheck[i].v << " " << testList.squaresToCheck[i].h << endl;
			if (runLength == 5)
			{
				//cout << "found 5 in a row" << endl;
				return true;
			}
		}
	else
		{
//			cout << "square "<< testList.squaresToCheck[i].v << " " << testList.squaresToCheck[i].h << "not the same, length = " << runLength << endl;			
			runLength = 0;
		}
	}
//	cout << "not five, length = " << runLength << endl;
	return false;

}

void tPieceClass::Load(void)
{
	CGrafPtr		curPort;
	GDHandle		curDevice;
	

	SetRect(&pieceGWRect, 
			0, 
			0, 
			kSquareDim, 
			kSquareDim
		   );
			
	GetGWorld(&curPort, &curDevice);
		
	NewGWorld(&pieceGW,
			  kPixelDepth,
			  &pieceGWRect,
			  grid.colorTable,
			  NULL,
			  0
			 );
			 
	SetGWorld(pieceGW, NULL);

	EraseRect(&qd.thePort->portRect);

	DrawPicture(ID);

	
	SetGWorld(curPort, curDevice);
}

void tPieceClass::CopyPieceToWindow(int vOffset, int hOffset)
{
	PixMapHandle	pieceGWPix;
	Rect			targetRect;
	
	targetRect.top = vOffset * kSquareDim;
	targetRect.bottom = targetRect.top + kSquareDim;
	targetRect.left = hOffset * kSquareDim;
	targetRect.right = targetRect.left + kSquareDim;
	
	pieceGWPix = GetGWorldPixMap(pieceGW);
	LockPixels(pieceGWPix);
	
	// ctSeed slam
	( *( ( *pieceGWPix ) -> pmTable ) ) ->ctSeed = ( *( ( *(( *(GetGDevice() ) ) -> gdPMap ) ) -> pmTable ) ) ->ctSeed;
	
	CopyBits((BitMap *)*pieceGWPix,
			 &((GrafPtr)grid.gameWindow)->portBits,
			 &pieceGWRect,
			 &targetRect,
			 srcCopy,
			 grid.gameWindow->visRgn);
			
	UnlockPixels(pieceGWPix);
	
}

