// __________________________________________________________________________________________
// Program		: Icon Mangler
// Filename		: icnsEditorClass.h
// Author		: Mihai Parparita (St. Mary's International School)
// Last modified: April 1, 1999
// Description	: header file for the icsEditorClass

#pragma once // we don't want any infinite inclusion loops

// includes
#include "MWindow.h"
#include "icnsClass.h"
#include "graphicalFunctions.h"
#include "textTool.h"

// constants
const static Rect kDefaultSizeRect = {0, 0, 256, 426}; // normal size

const static int kDeleteKey = 0x08;
const static char kDeleteGlyph = '';
// unprintable using this font, it really looks something like this: <=|
						
const static int kSelectionDrawingDelay = 2;

const static short rEditorWind = 200;
const static long kEditorType = 'IcEd';

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
	mBaseIDMenu = 203,
	mIDMenuCount = 7,
	
	// others	
	rDrawingPatterns = 1001,
	
	// strings
	rBasicStrings = 200,
	rLabelStrings = 201,
	rEditorBalloonHelp = 203,
	
	// dialogs
	rIconInfo = 1001,
	rAdjust = 1010,
	rAdjustHuePane = 1011,
	rAdjustBrightnessPane = 1012
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
	iSystemHeap = 13,
	iIDMenu = 15,
	iFormatPopup = 16
};

enum adjustItems
{
	iPreview = 3,
	iAdjustTabs = 4,
	
	iHueSlider = 5,
	iSaturationSlider = 6,
	iHueField = 7,
	iSaturationField = 8,
	iColorize = 9,
	iHueLabel = 10,
	iSaturationLabel = 11,
	
	iBrightnessSlider = 12,
	iContrastSlider = 13,
	iBrightnessField = 14,
	iContrastField = 15,
	iBrightnessLabel = 16,
	iContrastLabel = 17
};

enum basicStrings
{
	sUntitledName = 1,
	eIDAlreadyExists = 2,
	eOverwriteButton = 3,
	eInfoCancelButton = 4,
	eLargeMaskSync = 5,
	eSmallMaskSync = 6,
	eHugeMaskSync = 7,
	eYesButton = 8,
	eNoButton = 9,
	eInsertIconTitle = 10
};

enum labelStrings
{
	sIconLabel = 1,
	sMaskLabel = 2,
	sPreviewLabel = 3,
	sForeColor = 4,
	sBackColor = 5,
	sSizeSuffix = 6,
	sInfoLabelName = 7,
	sInfoLabelNoName = 8
};

enum toolIDs
{
	rCopyCursor = -20486,
	rPen = 128,
	rEyeDropper = 129,
	rFill = 130,
	rEraser = 131,
	
	rMarquee = 132,
	rMarqueeAdditive = 200,
	rMarqueeSubtractive = 201,
	
	rMove = 133,
	rMoveSelectionOutline = 206,
	rMoveSelectionContents = 207,
	rMoveFloatSelection = 208,
	
	rLasso = 134,
	rLassoAdditive = 202,
	rLassoSubtractive = 203,
	
	rLassoPolygonal = 154,
	rLassoPolygonalAdditive = 209,
	rLassoPolygonalSubtractive = 210,
	
	rMagicWand = 135,
	rMagicWandAdditive = 204,
	rMagicWandSubtractive = 205,
	
	rLine = 136,
	
	rRectangle = 137,
	rRectangleFilled = 150,
	
	rOval = 138,
	rOvalFilled = 151,
	
	rPolygon = 139,
	rPolygonFilled = 152,
	
	rGradient = 140,
	rGradientRadial = 153,
	
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
	rPreviewLabel = 211,
	rPatterns = 212,
	rBackgroundPane = 213,
	rToolbarWell = 214
};

// control parts

const static int kForeColorPart = 100;
const static int kBackColorPart = 101;
const static int kSwapColorsPart = 102;
const static int kResetColorsPart = 103;

const static int kDisplayHugePart = 110;
const static int kDisplayLargePart = 111;
const static int kDisplaySmallPart = 112;

const static int kPatternsPart = 120;

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
	asIconAndMask = 2,
	intoSelection = 3,
	pasteIconFamily = 4
};

enum copyTypes
{
	copyNormally = 1,
	copyAsIconAndMask = 2,
	copyIconFamily = 3
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

enum insertionFlags
{
	insertCentered = 1,
	insertScaled = 2
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

enum colors
{
	macOSColors = 1,
	winColors = 2
};

enum modes
{
	frame = 0,
	filled = 1,
	previewNormal = 2,
	previewSelected = 3,
	linear = 4,
	radial = 5,
	freehand = 6,
	polygonal = 7
};

enum iconInfoModes
{
	kIconInfo,
	kInsertIcon
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
	
	long			lastTool;
	long			lastToolClickTicks;
	long			toolMode;
	long			gradientMode;
	long			lassoMode;
	long			oldLassoMode;
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
	long			previewMode;
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
	ControlHandle	patterns;
	ControlHandle	backgroundPane;
	ControlHandle	toolbarWell;
} controlList;

// classes

class icnsEditorClass;

typedef icnsEditorClass* icnsEditorPtr;

typedef struct AdjustDialogData
{
	ControlHandle		preview,
						hueSlider, saturationSlider,
						hueField, saturationField,
						colorize,
						brightnessSlider, contrastSlider,
						brightnessField, contrastField;
	ControlActionUPP	sliderActionFunctionUPP;
	icnsEditorPtr		parentEditor;
	GWorldPtr			tempGW, tempGW2;
	PixMapHandle		tempPix, tempPix2;
} AdjustDialogData, *AdjustDialogDataPtr;

class drawingStateClass;

typedef drawingStateClass* drawingStatePtr;

class editorStaticsClass;

class icnsEditorClass : public icnsClass, public MWindow
{
	private:
		OSStatus		CreateControls(void);
		void			InstallDraggingHandlers(void);
		void			UpdateToolbar(void);
		void			RepositionControls(void);
		void			InvalidateDrawingArea(void);
		
		void			PostLoad();
		
		void			HandleDisplayClick(EventRecord* eventPtr);
		bool 			HandleToolClick(ControlHandle clickedControl);
		void			HandleToolDoubleClick(long tool);
		void			HandleSwatchClick(int controlPart, Point where);
		void			GetColor(RGBColor* color, Point where, Str255 messageString);
		void			HandlePatternsClick(Point where);
		void			RefreshPopups();
		void			UpdateInfoPlacard();
		void			GetCurrentIconMask(PixMapHandle* iconPix, GWorldPtr* iconGW, long* iconName, 
										   PixMapHandle* maskPix, GWorldPtr* maskGW, long* maskName);
		void			ToggleIconMask(void);
		void			CheckMaskSync(PixMapHandle basePix, PixMapHandle maskPix, int errorString);
		void			ChangeColorsIconSet(long name, GWorldPtr* gWorld, PixMapHandle* pix, CTabHandle colorTable, bool saveState);
		void			GetGWorldAndPix(long pixName, GWorldPtr* gW, PixMapHandle* pix);

		void 			HandleDrawing(Point theMouse);
		void			HandleMarquee(Point startMouse);
		bool			HandleMove(Point startMouse);
		void			HandleLasso(Point startMouse);
		void			HandleFreehandLasso(void);
		void			HandlePolygonalLasso(void);
		RgnHandle		TightenLasso(RgnHandle lassoSelectionRgn);
		void			HandleMagicWand(Point theMouse);
		void			HandleFilling(Point theMouse);
		void 			HandlePen(Point startMouse);
		void 			HandleEyeDropper(Point theMouse);
		void			HandleLine(Point startMouse);
		void			HandleRectangle(Point startMouse);
		void			HandlePolygon(Point startMouse);
		void			HandleGradient(Point startMouse);
		void			HandleText(Point theMouse);
		void			SwapForeBackColors(void);
		void			ResetForeBackColors(void);
		void			ColorsChanged();
		
		inline void 	GetDrawingMousePosition(int *x, int *y, Point* theMouse, int flags);
		void			Display(Rect targetRect, long flags);
		void			DrawSelection(GWorldPtr targetGW, Rect targetRect, int source, bool drawGrid);
		void			DrawGrid(GWorldPtr targetGW, Rect targetRect);
		void			FloatSelection(void);
		void			DefloatSelection(void);
		void			MagnifySelectionRgn(void);
		void 			DragSelection(int anchorX, int anchorY);
		void			ResizeWindow();
		void			CopyDepth(int oldDepth, int newDepth, int iconOrMask);
		void 			GetDisplayPix(Point theMouse, GWorldPtr *clickedGW, PixMapHandle *clickedPix, long *clickedName, Rect *clickedRect);
		void			InsertFromPicture(PicHandle srcPic, GWorldPtr targetGW, int options);
		void			PictureToMask(PicHandle srcPic, GWorldPtr maskGW);
		void			GetSelectionColors(RGBColor** colors, int* noOfColors);
		void			SaveState(GWorldPtr gWorld, PixMapHandle pix, long name);
		void			SaveMembers(void);
		void			UpdateCursor(Point theMouse);
		
		drawingStatePtr	firstState;
		drawingStatePtr	currentState;
	
		controlList		controls;
		int				oldTool;
		int				currentTool;
		
		Rect			dragSrcRect;
		Rect			editWellRect;
		
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
		
		int				pattern;
		
		int				colors;
		
	public:
						icnsEditorClass(void);
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
		void			LoadNew();
		void			LoadOld();
		void 			LoadFileIcon();
		void			LoadICO();
		void			LoadTIFF();
		void			Save(void);
		void			SaveICO(void);
		
		void			Show();
		void			Hide();
		
		void			SetCurrentMember(long member);
		void 			SetBestMember();
		
		void			ResetStates();
		
		void 			Undo(void);
		void			Redo(void);
		void			Cut();
		void			Copy(int copyType);
		void			Paste(int pasteType);
		void			Clear(void);
		void			Fill(void);
		void			Select(int selectionType);
		void			Rotate(int angle);
		void			Flip(int flipType);
		void			Invert(void);
		void			Adjust();
		
		void			ZoomIn();
		void			ZoomOut();
		int				EditIconInfo(int mode);
		
		bool			CurrentDepthSupportsColors();
		int				GetColors();
		void			ChangeColors(int newColors, bool saveState);
		
		void			SetColors(RGBColor fore, RGBColor back);
		void			GetColors(RGBColor* fore, RGBColor* back);
		
		void			RefreshWindowTitle();
		void			DisposeStates(void);
		
		RgnHandle		GetControlsRegion(void);
		
		static editorStaticsClass	statics;
		
	friend pascal void				ColorSwatchDraw(ControlHandle theControl,SInt16 thePart);
	friend pascal ControlPartCode	ColorSwatchHitTest(ControlHandle control, Point where);
	friend pascal void 				SwatchUpdate(RGBColor* color, void *clientData);
	friend pascal void				PatternsDraw(ControlHandle theControl,SInt16 thePart);
	friend pascal ControlPartCode 	PatternsHitTest(ControlHandle control, Point where);
	friend pascal void 				PatternMenuDraw(int number, int x, int y, int width, int height, void* clientData);
	friend pascal void 				PatternMenuUpdate(int selection, void* clientData);
	friend pascal void				DisplayDraw(ControlHandle theControl,SInt16 thePart);
	friend		  void				DrawDisplayItem(icnsEditorPtr parentEditor, Rect targetRect, long targetName);
	friend pascal ControlPartCode 	DisplayHitTest(ControlHandle theControl, Point where);
	friend pascal void				PreviewDraw(ControlHandle theControl,SInt16 thePart);
	friend pascal void				EditWellDraw(ControlHandle theControl,SInt16 thePart);
	friend pascal void				PlacardDraw(ControlHandle theControl,SInt16 thePart);
	friend pascal ControlPartCode	PlacardHitTest (ControlHandle control, Point where);

	friend void UpdateEffects(AdjustDialogDataPtr dialogData);
	
	friend pascal OSErr 	DragTrackingHandler(DragTrackingMessage message, WindowPtr theWindow, void *, DragReference theDragRef);
	friend pascal OSErr 	DragReceiveHandler (WindowPtr theWindow, void *, DragReference theDragRef);
	friend pascal OSErr 	ApproveDragReference (DragReference theDragRef, bool *approved, icnsEditorPtr parentEditor);
	friend pascal OSErr		DrawDragHilite(DragReference dragRef, icnsEditorPtr parentEditor);
	friend void 			InsertPicIntoIcon(icnsEditorPtr parentEditor, PicHandle pic);
	friend class drawingStateClass;
	friend class SystemColorPicker;
	
	friend pascal void	CPSwatchDraw(ControlHandle theControl,SInt16 thePart);
};


// function prototypes

// dragging functions
extern pascal OSErr 			DragTrackingHandler(DragTrackingMessage message, WindowPtr theWindow, void *, DragReference theDragRef);
extern pascal OSErr 			DragReceiveHandler (WindowPtr theWindow, void *, DragReference theDragRef);
extern pascal OSErr 			ApproveDragReference (DragReference theDragRef, bool *approved, icnsEditorPtr parentEditor);
extern pascal OSErr 			DrawDragHilite(DragReference dragRef, icnsEditorPtr parentEditor);
extern void						DragPixMap(EventRecord *eventPtr,
										   PixMapHandle dragPix,
										   RgnHandle dragShapeRgn,
										   PixMapHandle dragContentsPix,
										   RgnHandle dragContentsRgn,
										   long dragType);
extern void						InsertPicIntoIcon(icnsEditorPtr parentEditor, PicHandle pic);


// control functions

extern pascal void				PlacardDraw(ControlHandle theControl,SInt16 thePart);
extern pascal ControlPartCode	PlacardHitTest(ControlHandle control, Point where);
extern pascal ControlPartCode	PlacardTracking(ControlHandle thecontrol, Point startPt, ControlActionUPP actionProc);

extern pascal void				EditWellDraw(ControlHandle theControl,SInt16 thePart);
extern pascal ControlPartCode	EditWellHitTest (ControlHandle control, Point where);

extern pascal void				PreviewDraw(ControlHandle theControl,SInt16 thePart);
extern pascal ControlPartCode	PreviewHitTest(ControlHandle control, Point where);
extern pascal ControlPartCode	PreviewTracking(ControlHandle theControl, Point startPt, ControlActionUPP actionProc);

extern void						DrawDisplayItem(icnsEditorPtr parentEditor, Rect targetRect, long targetName);
extern void						MakeDisplayRects(Rect controlRect, Rect *hugeRect,Rect *largeRect, Rect *smallRect);
extern pascal void				DisplayDraw(ControlHandle theControl,SInt16 thePart);
extern pascal ControlPartCode	DisplayHitTest(ControlHandle control, Point where);

extern pascal void				ColorSwatchDraw(ControlHandle theControl,SInt16 thePart);
extern pascal ControlPartCode 	ColorSwatchHitTest(ControlHandle control, Point where);
extern void						MakeColorSwatchRects(Rect controlRect, Rect *foreColorRect, Rect *backColorRect, Rect *swapColorsRect, Rect *resetColorsRect);
extern pascal void				SwatchUpdate(RGBColor* color, void *clientData);

extern pascal void				PatternsDraw(ControlHandle theControl,SInt16 thePart);
extern pascal ControlPartCode	PatternsHitTest (ControlHandle control, Point where);
extern pascal void 				PatternMenuDraw(int number, int x, int y, int width, int height, void* clientData);
extern pascal void 				PatternMenuUpdate(int selection, void* clientData);

extern pascal void				BackgroundPaneDraw(ControlHandle theControl,SInt16 thePart);
extern pascal ControlPartCode	BackgroundPaneHitTest (ControlHandle control, Point where);

extern pascal void				ToolbarWellDraw(ControlHandle theControl,SInt16 thePart);
extern pascal ControlPartCode	ToolbarWellHitTest (ControlHandle control, Point where);


// utility functions

extern icnsEditorPtr			GetFrontEditor(void);
extern icnsEditorPtr			GetEditor(WindowPtr window);

extern pascal bool StandardEditorDialogFilter(DialogPtr dialog, EventRecord* eventPtr, short* itemHit);
extern pascal bool IconInfoDialogFilter(DialogPtr dialog, EventRecord* eventPtr, short* itemHit);
extern void SplitMenuItem(Str255 text, long* ID, Str255 iconName);
extern void GetIDMenu(int ID, MenuHandle* menu, int* item, Str255 name);
extern void SetControlBalloonHelp(ControlHandle theControl, long stringNo);
extern long GetControlBalloonHelp(ControlHandle theControl);
extern void HandleBalloons(Point theMouse, WindowPtr window, int strings);

extern pascal bool AdjustDialogFilter(DialogPtr dialog, EventRecord* eventPtr, short* itemHit);
extern void FieldToSlider(ControlHandle field, ControlHandle slider);
extern pascal void SliderActionFunction(ControlHandle theControl,short partCode);
extern void UpdateEffects(AdjustDialogDataPtr dialogData);
