#pragma once

//includes
#include <QDOffscreen.h>
#include <Palettes.h>
#include <Sound.h>

#include "commonfunctions.h"


// game specifications

static const int kClutID = 128;

static const int kSquareDim = 24;
static const int kGridHeight = 18;
static const int kGridWidth = 18;

static const int kNoPieceID = 128;
static const int kPlayerOneID = 129;
static const int kPlayerTwoID = 130;

static const int kNoMoveCursor = 128;
static const int kPlayerOneCursor = 129;
static const int kPlayerTwoCursor = 130;
static const int kArrowCursor = 131;

static const int kNoPiece = 0;
static const int kPlayerOne = 1;
static const int kPlayerTwo = 2;

static const int kPixelDepth=8;

static const int kGameWindowWidth = kSquareDim * kGridWidth;
static const int kGameWindowHeight = kSquareDim * kGridHeight;
static const int kStatusBarHeight = 20;

static const long kBackgroundColor = whiteColor;

static const int kGameWinRefCon = 27;

static const int kMenuBarID = 128;

// menu IDs

static const int mApple = 128;
static const int mFile = 129;
static const int mEdit = 130;

static const int iAbout = 1;

static const int iNewGame = 1;
static const int iOpenGame = 2;
static const int iAbortGame = 3;
static const int iSaveGame = 5;
static const int iSaveGameAs = 6;
static const int iPageSetup = 8;
static const int iPrint = 9;
static const int iQuit = 11;

static const int iUndo = 1;
static const int iCut = 3;
static const int iCopy = 4;
static const int iPaste = 5;
static const int iClear = 6;
static const int iSelectAll = 7;
static const int iPreferences = 9;

// dialog resource IDs

static const int kAboutBoxID = 128;
static const int kAbortGameID = 129;

// dialog items
static const int kOk = 1;

static const int kSave = 1;
static const int kCancel = 2;
static const int kDontSave = 3;

// file types

#define fileCreator 'Pent'
#define saveFileType 'PSav'


// typedefs

class tPieceClass
{
	private:
		GWorldPtr pieceGW;
		Rect	  pieceGWRect;
	public:
		int					ID;
		
		void				Load(void);
		void				CopyPieceToWindow(int vOffset, int hOffset);
};

typedef struct  tTestList // used to check for wins/captures
{
	Point squaresToCheck[11];
	int length;
} tTestList ;

typedef enum tStatus // the status of the app
{
	notPlaying,
	playing,
	paused,
	done
} tStatus;

typedef struct tLastMove
{
	Point	coordinates;
	bool	didCapture;
	Point	capture1;
	Point	capture2;
} tLastMove;

typedef struct tBoardState
{
		int				turn;
		int				grid[kGridHeight][kGridWidth];
		int				playerOneCaptured;
		int				playerTwoCaptured;
		tLastMove		lastMove;
} tBoardState;

typedef tBoardState **tBoardStateHandle;


class tPentaBoardClass
{
	private:
		
		// UI Stuff
		WindowPtr		gameWindow;
		CGrafPtr		startupPort;
		GDHandle		startupDevice;
		CTabHandle 		colorTable;
		int				currentCursor;
		Point			capture1Location;
		Point			capture2Location;
		Rect			statusBarRect;
		StandardFileReply lastReply;
		bool			needToSave;
		
		void 			CreateGameWindow(void);
		void 			StartNewGame(void);
		void			DrawStatusBar(void);
		void			DrawBoard(void);
		
		// event stuff
		void 			DoEvent(EventRecord *eventPtr);
		void			HandleCursor();
		void 			HandleMouseUp(EventRecord *eventPtr);
		void			HandleMouseDown(EventRecord *eventPtr);	
		void 			HandleKeyDown(EventRecord *eventPtr);
		void			HandleUpdate(EventRecord *eventPtr);
		
		// menu stuff
		void			InitMenuBar(void);
		void			DoMenuCommand(int menuResult);
		void 			HandleAppleChoice(int item);
		void 			HandleFileChoice(int item);
		void 			HandleEditChoice(int item);
		void			ShowAboutBox( void );
		void			UndoMove(void);
		void			OpenSavedGame(void);
		void			SaveGame(bool as);
		void			AbortGame(void);
		void			FinishGame(void);
		
		// game stuff
		tBoardStateHandle	board;
		
		tPieceClass 	noPiece;
		tPieceClass 	playerOnePiece;
		tPieceClass 	playerTwoPiece;
		
		// checking
		bool			Check5(Point coordinateToCheck);
		void			CreateList(Point coordinateToCheck, Point testOffset, tTestList* testList);
		bool 			CheckList(tTestList testList, Point coordinateToCheck);
		bool			Check2(Point coordinateToCheck);
		
	public:

		tStatus			status;
		
		tPentaBoardClass(void);
		
		void			EventLoop(void);
		
		void			Destroy(void);
		
	friend class tPieceClass;
};

//globals
extern tPentaBoardClass grid;
extern int	gSavedDepth;
