// __________________________________________________________________________________________
// Program		: Icon Mangler
// Filename		: icnsEditorClass.h
// Author		: Mihai Parparita (St. Mary's International School)
// Last modified: April 1, 1999
// Description	: header file for the icsEditorClass

#pragma once // we don't want any infinite inclusion loops

// includes
#include "icnsClass.h"
#include "graphicalFunctions.h"
#include "textTool.h"

// constants
const static Rect kDefaultSizeRect = {0, 0, 224, 378}; // normal size

const static int kDeleteKey = 0x08;
const static char kDeleteGlyph = '';
// unprintable using this font, it really looks something like this: <=|
						
const static int kSelectionDrawingDelay = 2;

// menu items
const static int k32BitIcon = 1;
const static int k8BitIcon = 2;
const static int k4BitIcon = 3;
const static int k1BitIcon = 4;
const static int k8BitMask = 1;
const static int k1BitMask = 2;

// resource IDs

enum resources
{
	// menus
	mFont = 1410,
	mSize = 1411,
	mStyle = 1412,
	
	// others	
	rEditorWIND = 200,
	
	// strings
	rBasicStrings = 200,
	rLabelStrings = 201,
	
	// dialogs
	rIconInfo = 1001
};

enum iconInfoItems
{
	iIconIDField = 4,
	iIconNameField = 6,
	iIconSizeField = 8,
	iPurgeable = 9,
	iPreload = 10,
	iLocked = 11,
	iProtected = 12,
	iSystemHeap = 13
};

enum basicStrings
{
	sUntitledName = 1,
	eIDAlreadyExists = 2,
	eOverwriteButton = 3,
	eInfoCancelButton = 4
};

enum labelStrings
{
	sIconLabel = 1,
	sMaskLabel = 2,
	sPreviewLabel = 3,
	sForeColor = 4,
	sBackColor = 5,
	sSizeSuffix = 6
};

enum toolIDs
{
	rCopyCursor = -20486,
	rArrow = 0, // not really an ID
	rIBeam = 1, // ditto
	rPen = 128,
	rEyeDropper = 129,
	rFill = 130,
	rEraser = 131,
	rMarquee = 132,
	rMarqueeAdditive = 200,
	rMarqueeSubtractive = 201,
	rMove = 133,
	rLasso = 134,
	rLassoAdditive = 202,
	rLassoSubtractive = 203,
	rMagicWand = 135,
	rMagicWandAdditive = 204,
	rMagicWandSubtractive = 205,
	rLine = 136,
	rRectangle = 137,
	rOval = 138,
	rPolygon = 139,
	rGradient = 140,
	rText = 141
};

enum controlIDs
{
	rIconEditWell = 200,
	rZoomPlacard = 201,
	rInfoPlacard = 202,
	rForeBackColors = 203,
	rIconDisplay = 204,
	rMaskDisplay = 205,
	rIconPopup = 206,
	rMaskPopup = 207,
	rIconLabel = 208,
	rMaskLabel = 209,
	rPreview = 210,
	rPreviewLabel = 211
};

// control parts

const static int kForeColorPart = 100;
const static int kBackColorPart = 101;
const static int kSwapColorsPart = 102;
const static int kResetColorsPart = 103;

const static int kDisplayHugePart = 110;
const static int kDisplayLargePart = 111;
const static int kDisplaySmallPart = 112;

enum iconOrMask
{
	icon,
	mask
};

enum selectionTypes
{
	all = 1,
	similar = 2,
	none = 3,
	inverse = 4,
	additive = 5,
	subtractive = 6
};

enum pasteTypes
{
	normally = 1,
	asIconAndMask = 2
};

enum flipTypes
{
	horizontal = 1,
	vertical = 2
};

enum positionFlags
{
	magnified = 1,
	noLimit = 2
};

enum tools
{
	noTool = 0,
	pen = 1,
	eyeDropper = 2,
	fill = 3,
	eraser = 4,
	marquee = 5,
	move = 6,
	lasso = 7,
	magicWand = 8,
	line = 9,
	rectangle = 10,
	oval = 11,
	polygon = 12,
	gradient = 13,
	text = 14
};

enum additionalStatusTypes
{
	// 1 is already used for out of memory
	resized = 2,
	needsUpdate = 4,
	saveState = 8,
	canUndo = 16,
	canRedo = 32,
	canZoomIn = 64,
	canZoomOut = 128,
	hasSelection = 256,
	selectionFloated = 512,
	needToSave = 1024,
	dontRestoreCurrentPix = 2048,
	skipState = 4096
};

enum displayFlags
{
	current	= 1 << 0,
	merged	= 1 << 1,
	il32	= 1 << 2,
	is32	= 1 << 3,
	l8mk	= 1 << 4,
	s8mk	= 1 << 5,
	icl8	= 1 << 6,
	ics8	= 1 << 7,
	icl4	= 1 << 8,
	ics4	= 1 << 9,
	icni	= 1 << 10,
	icsi	= 1 << 11,
	icnm	= 1 << 12,
	icsm	= 1 << 13,
	ih32	= 1 << 14,
	h8mk	= 1 << 15,
	ichi	= 1 << 16,
	ichm	= 1 << 17,
	ich8	= 1 << 18,
	ich4	= 1 << 19,
	selection = 1 << 20
};

// type definitions

typedef struct toolbarControls
{
	ControlHandle	pen;
	ControlHandle	eyeDropper;
	ControlHandle	fill;
	ControlHandle	eraser;
	ControlHandle	marquee;
	ControlHandle	move;
	ControlHandle	lasso;
	ControlHandle	magicWand;
	ControlHandle	line;
	ControlHandle	rectangle;
	ControlHandle	oval;
	ControlHandle	polygon;
	ControlHandle	gradient;
	ControlHandle	text;
} toolbarsControls;

typedef struct display
{
	ControlHandle	iconDisplay;
	ControlHandle	iconPopup;
	ControlHandle	iconLabel;
	Rect			iconHugeRect, iconLargeRect, iconSmallRect;
	ControlHandle	maskDisplay;
	ControlHandle	maskPopup;
	ControlHandle	maskLabel;
	Rect			maskHugeRect, maskLargeRect, maskSmallRect;
	ControlHandle	preview;
	ControlHandle	previewLabel;
	Rect			hugePreviewRect, largePreviewRect, smallPreviewRect;
} display;

typedef struct colorSwatch
{
	ControlHandle	control;
	Rect			foreColorRect;
	Rect			backColorRect;
	Rect			swapColorsRect;
	Rect			resetColorsRect;
} colorSwatch;

typedef struct PlacardControl
{
	ControlHandle	control;
	Str255			text;
} PlacardControl;

typedef struct controlList
{
	ControlHandle	rootControl;
	toolbarControls	toolbar;
	display			display;
	ControlHandle	iconEditWell;
	PlacardControl	zoomPlacard;
	PlacardControl	infoPlacard;
	colorSwatch		colorSwatch;
} controlList;

// classes

class icnsEditorClass;

typedef icnsEditorClass* icnsEditorPtr;

class drawingStateClass;

typedef drawingStateClass* drawingStatePtr;

class editorStaticsClass;

class icnsEditorClass : public icnsClass
{
	private:
		OSStatus		CreateControls(void);
		void			InstallDraggingHandlers(void);
		void			UpdateToolbar(void);
		void			ChangeCursor(int ID);
		void			RepositionControls(void);
		void			InvalidateDrawingArea(void);
		
		void			HandleDisplayClick(EventRecord* eventPtr);
		bool 			HandleToolClick(ControlHandle clickedControl);
		void			HandleSwatchClick(int controlPart, Point where);
		void			GetColor(RGBColor* color, RgnHandle swatchRgn, Point where, Str255 messageString);
		void			EditIconInfo(void);
		
		void 			HandleDrawing(void);
		void			HandleMarquee(void);
		bool			HandleMove(void);
		void			HandleLasso(void);
		void			HandleMagicWand(void);
		void			HandleFilling(void);
		void 			HandlePen(void);
		void 			HandleEyeDropper(void);
		void			HandleLine(void);
		void			HandleRectangle(void);
		void			HandlePolygon(void);
		void			HandleGradient(void);
		void			HandleText(void);
		void			SwapForeBackColors(void);
		void			ResetForeBackColors(void);
		
		inline void 	GetDrawingMousePosition(int *x, int *y, int flags);
		void			Display(Rect targetRect, long flags);
		void			DrawSelection(GWorldPtr targetGW, Rect targetRect, int source);
		void			FloatSelection(void);
		void			DefloatSelection(void);
		void			MagnifySelectionRgn(void);
		void			ResizeWindow();
		void			CopyDepth(int oldDepth, int newDepth, int iconOrMask);
		void 			GetDisplayPix(Point theMouse, GWorldPtr *clickedGW, PixMapHandle *clickedPix, long *clickedName, Rect *clickedRect);
		void			InsertFromPicture(PicHandle srcPic, GWorldPtr targetGW, bool scale);
		void			PictureToMask(PicHandle srcPic, GWorldPtr maskGW);
		void			GetSelectionColors(RGBColor** colors, int* noOfColors);

		
		drawingStatePtr	firstState;
		drawingStatePtr	currentState;
	
		controlList		controls;
		int				oldTool;
		int				currentTool;
		int				currentCursor;
		
		Rect			dragSrcRect;
		
		PixMapHandle	currentPix;
		GWorldPtr		currentGW;
		long			currentPixName;
		
		RgnHandle		selectionRgn;
		RgnHandle		selectionMagnifiedRgn;
		int				currentSelectionPattern;
		long			lastSelectionTicks;
		GWorldPtr		selectionGW;
		PixMapHandle	selectionPix;
		
		GWorldPtr		overlayGW;
		PixMapHandle	overlayPix;
		
		int				magnification;
		
		RGBColor		foreColor;
		RGBColor		backColor;
		
	public:
						icnsEditorClass(icnsEditorPtr previousLastEditor);
						~icnsEditorClass(void);
						
		void			Refresh(void);
		void 			HandleContentClick(EventRecord *eventPtr);
		void			DoIdle(void);
		void			HandleKeyDown(EventRecord *eventPtr);
		void			Activate();
		void			Deactivate();
		void			HandleGrow(Point where);
		
		void			Close();
		void 			Load();
		void 			LoadFileIcon();
		void			Save(void);
		
		void			Show();
		void			Hide();
		
		void 			Undo(void);
		void			Redo(void);
		void			Cut(void);
		void			Copy(void);
		void			Paste(int pasteType);
		void			Clear(void);
		void			Fill(void);
		void			Select(int selectionType);
		void			Rotate(int angle);
		void			Flip(int flipType);
		void			Invert(void);
		
		void			ZoomIn();
		void			ZoomOut();
		
		WindowPtr		window;
		
		icnsEditorPtr	nextEditor;
		icnsEditorPtr	previousEditor;
		
		
		void			RefreshWindowTitle();
		void			DisposeStates(void);
		
		static editorStaticsClass	statics;
		
	friend pascal void		ColorSwatchDraw(ControlHandle theControl,SInt16 thePart);
	friend pascal ControlPartCode ColorSwatchHitTest(ControlHandle control, Point where);
	friend pascal void		DisplayDraw(ControlHandle theControl,SInt16 thePart);
	friend		  void		DrawDisplayItem(icnsEditorPtr parentEditor, Rect targetRect, long targetName);
	friend pascal ControlPartCode DisplayHitTest(ControlHandle theControl, Point where);
	friend pascal void		PreviewDraw(ControlHandle theControl,SInt16 thePart);
	friend pascal void		EditWellDraw(ControlHandle theControl,SInt16 thePart);
	friend extern pascal void				PlacardDraw(ControlHandle theControl,SInt16 thePart);
	friend extern pascal ControlPartCode	PlacardHitTest (ControlHandle control, Point where);

	
	friend pascal OSErr 	DragTrackingHandler(DragTrackingMessage message, WindowPtr theWindow, void *, DragReference theDragRef);
	friend pascal OSErr 	DragReceiveHandler (WindowPtr theWindow, void *, DragReference theDragRef);
	friend pascal OSErr 	ApproveDragReference (DragReference theDragRef, bool *approved, icnsEditorPtr parentEditor);
	friend pascal OSErr		DrawDragHilite(DragReference dragRef, icnsEditorPtr parentEditor);
	friend void 			InsertPicIntoIcon(icnsEditorPtr parentEditor, PicHandle pic);
	friend drawingStateClass;
};


// function prototypes

// dragging functions
extern pascal OSErr 			DragTrackingHandler(DragTrackingMessage message, WindowPtr theWindow, void *, DragReference theDragRef);
extern pascal OSErr 			DragReceiveHandler (WindowPtr theWindow, void *, DragReference theDragRef);
extern pascal OSErr 			ApproveDragReference (DragReference theDragRef, bool *approved, icnsEditorPtr parentEditor);
extern pascal OSErr 			DrawDragHilite(DragReference dragRef, icnsEditorPtr parentEditor);
extern void DragPixMap(EventRecord *eventPtr, PixMapHandle dragPix, RgnHandle dragShapeRgn, PixMapHandle dragContentsPix,RgnHandle dragContentsRgn,long dragType);
extern void						InsertPicIntoIcon(icnsEditorPtr parentEditor, PicHandle pic);


// control functions

extern pascal void				PlacardDraw(ControlHandle theControl,SInt16 thePart);
extern pascal ControlPartCode	PlacardHitTest(ControlHandle control, Point where);
extern pascal ControlPartCode	PlacardTracking(ControlHandle thecontrol, Point startPt, ControlActionUPP actionProc);

extern pascal void				EditWellDraw(ControlHandle theControl,SInt16 thePart);
extern pascal ControlPartCode	EditWellHitTest (ControlHandle control, Point where);

extern pascal void				PreviewDraw(ControlHandle theControl,SInt16 thePart);
extern pascal ControlPartCode	PreviewHitTest(ControlHandle control, Point where);

extern void						DrawDisplayItem(icnsEditorPtr parentEditor, Rect targetRect, long targetName);
extern void						MakeDisplayRects(Rect controlRect, Rect *hugeRect,Rect *largeRect, Rect *smallRect);
extern pascal void				DisplayDraw(ControlHandle theControl,SInt16 thePart);
extern pascal ControlPartCode	DisplayHitTest(ControlHandle control, Point where);


extern pascal void				ColorSwatchDraw(ControlHandle theControl,SInt16 thePart);
extern pascal ControlPartCode 	ColorSwatchHitTest(ControlHandle control, Point where);
extern void						MakeColorSwatchRects(Rect controlRect, Rect *foreColorRect, Rect *backColorRect, Rect *swapColorsRect, Rect *resetColorsRect);


// utility functions

extern icnsEditorPtr			GetFrontEditor(void);
extern icnsEditorPtr			GetEditor(WindowPtr window);
extern pascal bool StandardEditorDialogFilter(DialogPtr dialog, EventRecord* eventPtr, short* itemHit);
extern pascal bool IconInfoDialogFilter(DialogPtr dialog, EventRecord* eventPtr, short* itemHit);
