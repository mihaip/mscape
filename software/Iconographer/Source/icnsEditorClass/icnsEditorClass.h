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

// constants
const static Rect kDefaultSizeRect = {0, 0, 224, 378}; // normal size
const static int kMaxIconSize = 48; // huge (the biggest size) is 

// used for determining transparency
const static long kNeverUsedColor = 0xFFFFFE;
const static RGBColor kNeverUsedColorAsRGB = {0xFFFF, 0xFFFF, 0xFEEE};

const static int kDeleteKey = 0x08;
const static char kDeleteGlyph = '';
// unprintable using this font, it really looks something like this: <=|
						
const static int kMaxMagnification = 10;
const static int kMinMagnification = 4;

const static float kLineConstraintInterval = pi/4;
// 45 degress, when the user holds down shift the line drawing is constrained to 45 degree
// intervals

const static int kSelectionDrawingDelay = 2;

const static int kEmergencyMemorySize = 10240;

// manu items
const static int k32BitIcon = 1;
const static int k8BitIcon = 2;
const static int k4BitIcon = 3;
const static int k1BitIcon = 4;
const static int k8BitMask = 1;
const static int k1BitMask = 2;

// resource IDs

enum resources
{
	rSelectionPatterns = 1000,
	kNoOfSelectionPatterns = 8,
	rSwapColorsIconEnabled = 200,
	rSwapColorsIconDisabled = 201,
	rResetColorsIconEnabled = 202,
	rResetColorsIconDisabled = 203,
	rEditorWIND = 200,
	rLabelStrings = 201
};

enum labelStrings
{
	sIconLabel = 1,
	sMaskLabel = 2,
	sPreviewLabel = 3,
	sForeColor = 4,
	sBackColor = 5
};

enum toolIDs
{
	rCopyCursor = -20486,
	rArrow = 0, // not really an ID
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
	rRectangle = 137	
};

enum controlIDs
{
	rIconEditWell = 200,
	rZoomDisplayPlacard = 201,
	rZoomDisplayText = 202,
	rInfoDisplayPlacard = 203,
	rInfoDisplayText = 204,
	rForeBackColors = 205,
	rIconDisplay = 206,
	rMaskDisplay = 207,
	rIconPopup = 208,
	rMaskPopup = 209,
	rIconLabel = 210,
	rMaskLabel = 211,
	rPreview = 212,
	rPreviewLabel = 213
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
	none = 2,
	inverse = 3,
	additive = 4,
	subtractive = 5
};

enum flipTypes
{
	horizontal = 1,
	vertical = 2
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
	rectangle = 10
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
	current = 1,
	merged = 2,
	il32 = 4,
	is32 = 8,
	l8mk = 16,
	s8mk = 32,
	icl8 = 64,
	ics8 = 128,
	icl4 = 256,
	ics4 = 512,
	icni = 1024,
	icsi = 2048,
	icnm = 4096,
	icsm = 8192,
	ih32 = 16384,
	h8mk = 32768,
	ichi = 65536,
	ichm = 131072,
	ich8 = 262144,
	ich4 = 524288
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

typedef struct controlList
{
	ControlHandle	rootControl;
	toolbarControls	toolbar;
	display			display;
	ControlHandle	iconEditWell;
	ControlHandle	zoomDisplayPlacard;
	ControlHandle	zoomDisplayText;
	ControlHandle	infoDisplayPlacard;
	ControlHandle	infoDisplayText;
	colorSwatch		colorSwatch;
} controlList;

// classes

class icnsEditorClass;

typedef icnsEditorClass* icnsEditorPtr;

class drawingStateClass;

typedef drawingStateClass* drawingStatePtr;

class staticsClass
{
	private:
		Ptr				tempMemoryChunk;
	public:
						staticsClass(void);
						~staticsClass(void);
		
		CGrafPtr		startupPort;
		GDHandle		startupDevice;
		
		CIconHandle		swapColorsIconEnabled;
		CIconHandle		swapColorsIconDisabled;
		
		CIconHandle		resetColorsIconEnabled;
		CIconHandle		resetColorsIconDisabled;
		
		Rect			canvasRect;
		GWorldPtr		canvasGW;
		PixMapHandle	canvasPix;
		
		Pattern			selectionPatterns[kNoOfSelectionPatterns];
		
		void ReclaimEmergencyMemory(void);
		void AllocateEmergencyMemory(void);
};

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
		void 			HandleDrawing(void);
		void			HandleMarquee(void);
		void			HandleMove(void);
		void			HandleLasso(void);
		void			HandleMagicWand(void);
		void			HandleFilling(void);
		void 			HandlePen(void);
		void 			HandleEyeDropper(void);
		void			HandleLine(void);
		void			HandleRectangle(void);
		void			SwapForeBackColors(void);
		void			ResetForeBackColors(void);
		
		inline void 	GetClickPosition(int *x, int *y, bool magnified);
		void			Display(Rect targetRect, long flags);
		void			DrawSelection(GWorldPtr targetGW, Rect targetRect, int source);
		void			FloatSelection(void);
		void			DefloatSelection(void);
		void			MagnifySelectionRgn(void);
		void			ResizeWindow();
		void			CopyDepth(int oldDepth, int newDepth, int iconOrMask);
		void 			GetDisplayPix(Point theMouse, GWorldPtr *clickedGW, PixMapHandle *clickedPix, long *clickedName, Rect *clickedRect);
		void			InsertFromPicture(PicHandle srcPic, GWorldPtr targetGW, bool scale);
		void			PictureToRegion(PicHandle srcPic, Rect bounds, RgnHandle targetRgn);
		void			PictureToMask(PicHandle srcPic, GWorldPtr maskGW);
		
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
		void			Save(void);
		
		void 			Undo(void);
		void			Redo(void);
		void			Cut(void);
		void			Copy(void);
		void			Paste(void);
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
		
		static staticsClass	statics;
		
	friend pascal void		ColorSwatchDraw(ControlHandle theControl,SInt16 thePart);
	friend pascal ControlPartCode ColorSwatchHitTest(ControlHandle control, Point where);
	friend pascal void		DisplayDraw(ControlHandle theControl,SInt16 thePart);
	friend pascal ControlPartCode DisplayHitTest(ControlHandle theControl, Point where);
	friend pascal void		PreviewDraw(ControlHandle theControl,SInt16 thePart);
	friend pascal void		EditWellDraw(ControlHandle theControl,SInt16 thePart);
	
	friend pascal OSErr 	DragTrackingHandler(DragTrackingMessage message, WindowPtr theWindow, void *, DragReference theDragRef);
	friend pascal OSErr 	DragReceiveHandler (WindowPtr theWindow, void *, DragReference theDragRef);
	friend pascal OSErr 	ApproveDragReference (DragReference theDragRef, bool *approved, icnsEditorPtr parentEditor);
	friend pascal OSErr		DrawDragHilite(DragReference dragRef, icnsEditorPtr parentEditor);
	friend drawingStateClass;
};


// function prototypes

// dragging functions
extern pascal OSErr 			DragTrackingHandler(DragTrackingMessage message, WindowPtr theWindow, void *, DragReference theDragRef);
extern pascal OSErr 			DragReceiveHandler (WindowPtr theWindow, void *, DragReference theDragRef);
extern pascal OSErr 			ApproveDragReference (DragReference theDragRef, bool *approved, icnsEditorPtr parentEditor);
extern pascal OSErr 			DrawDragHilite(DragReference dragRef, icnsEditorPtr parentEditor);
extern void						DragPixMap(EventRecord *eventPtr, PixMapHandle dragPix, long dragType);

// control functions

extern pascal void				EditWellDraw(ControlHandle theControl,SInt16 thePart);
extern pascal ControlPartCode	EditWellHitTest (ControlHandle control, Point where);

extern pascal void				PreviewDraw(ControlHandle theControl,SInt16 thePart);
extern pascal ControlPartCode	PreviewHitTest(ControlHandle control, Point where);

extern void						MakeDisplayRects(Rect controlRect, Rect *hugeRect,Rect *largeRect, Rect *smallRect);
extern pascal void				DisplayDraw(ControlHandle theControl,SInt16 thePart);
extern pascal ControlPartCode	DisplayHitTest(ControlHandle control, Point where);

extern pascal void				ColorSwatchDraw(ControlHandle theControl,SInt16 thePart);
extern pascal ControlPartCode 	ColorSwatchHitTest(ControlHandle control, Point where);
extern void						MakeColorSwatchRects(Rect controlRect, Rect *foreColorRect, Rect *backColorRect, Rect *swapColorsRect, Rect *resetColorsRect);

// utility functions

extern icnsEditorPtr			GetFrontEditor(void);
extern icnsEditorPtr			GetEditor(WindowPtr window);
