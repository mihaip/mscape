#pragma once

#include "commonfunctions.h"
#include "cicnutils.h"
#include <PictUtils.h>
#include <MacMemory.h>

// file types

#define fileCreator 'SBnc'
#define prefFileType 'Pref'

// --- Constants --- //

#define schemeFileType 'Colr'
#define partsResourceType 'wnd#'

// app resource IDs
const static int testWindowID = 128;
const static int aboutBoxID = 128;
const static int testResultsID = 129;

const static int kPrefNameID = 128;

const static int kPrefBaselineID = 128;

// menubar stuff
const static int kMenuBarID = 128;

const static int mApple = 128;
const static int iAbout = 1;

const static int mFile = 129;
const static int iTestScheme = 1;
const static int iQuit = 3;

const static int mEdit = 130;
const static int iUndo = 1;
const static int iCut = 3;
const static int iCopy = 4;
const static int iPaste = 5;
const static int iClear = 6;
const static int iSelectAll = 7;
const static int iPreferences = 9;

// dialog items
const static int kOk = 1;

const static int kClose = 1;
const static int kSaveResults = 2;
const static int kSchemeName = 3;
const static int kMinKVersion = 4;
const static int kDocWindow = 5;
const static int kDialog = 6;
const static int kAlert = 7;
const static int kAverage = 8;
const static int kSchemeBenchIndex = 9;
const static int kIcon = 10;

// --- Type Definitions -- //
typedef struct tResults
{
	Str63	schemeName;
	int		minKVersion;
	int		docWindow;
	int		dialog;
	int		alert;
	int		average;
	int		baseline;
	float	schemeBenchIndex;
} tResults;



// --- Prototypes --- //

// MacOS stuff
void		Initialize(void);
void		InitMenuBar(void);
void		GetCurrentScheme(void);
void		EventLoop(void);
void		DoEvent(EventRecord *eventPtr);
void		HandleMouseUp(EventRecord *eventPtr);
void		HandleMouseDown(EventRecord *eventPtr);
void		HandleKeyDown(EventRecord *eventPtr);
void		HandleUpdate(EventRecord *eventPtr);
void		DoMenuCommand(int menuResult);
void		HandleAppleChoice(int item);
void		ShowAboutBox(void);
void		HandleFileChoice(int item);
void		TestScheme(void);
OSErr		SendFinderAEOpen(FSSpec &inFile);
void		DisplayResults(tResults results);
void		RunTest(void);
int			DoTests(int iterations);
void 		CloseScheme(void);
void		HandleEditChoice(int item);
// K stuff
/*void		StrechCicnRect(tCicnClass* cicn, Rect sourceRect, Rect targetRect);
void		GetParts(int, tPartsList*);
void		DisplayParts(tPartsList* partsList, tPartsTypes partsToDisplay);
void		DrawWindow(Rect targetRect, Str255 windowTitle);
void		DrawScrollBar(Rect targetRect, tScrollBarFlags flags);
void		DrawFinderHeader(Rect targetRect);
void		DrawWindowFrame(Rect targetRect, Str255 windowTitle);
*/

// --- Globals --- //

extern bool			isDone;
extern CGrafPtr		startupPort;
extern GDHandle		startupDevice;
extern FSSpec		oldScheme;


