#pragma once
#include "icnsClass.h"
#include <Appearance.h>
#include <fp.h>

#define ISSHIFTDOWN (IsKeyPressed(0x38) || IsKeyPressed(0x3C))
#define ISOPTIONDOWN (IsKeyPressed(0x3A) || IsKeyPressed(0x3D))

const static Rect kDefaultSizeRect = {0, 0, 224, 378};

const static long kNeverUsedColor = 0xFFFFFE;

const static int kDeleteKey = 0x08;
const static char kDeleteGlyph = '';

const static int kMaxMagnification = 10;
const static int kMinMagnification = 4;

const static float kLineConstraintInterval = pi/4;

const static int k32BitIcon = 1;
const static int k8BitIcon = 2;
const static int k4BitIcon = 3;
const static int k1BitIcon = 4;
const static int k8BitMask = 1;
const static int k1BitMask = 2;

const static int rSelectionPatterns = 1000;
const static int kNoOfSelectionPatterns = 8;

// resource IDs

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
	rPreview = 212
};

// control parts

const static int kForeColorPart = 100;
const static int kBackColorPart = 101;
const static int kExchangeColorsPart = 102;

const static int kDisplayHugePart = 110;
const static int kDisplayLargePart = 111;
const static int kDisplaySmallPart = 112;
const static int kDisplayMiniPart = 113;

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
	needToSave = 1024
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
	Rect			iconHugeRect, iconLargeRect, iconSmallRect, iconMiniRect;
	ControlHandle	maskDisplay;
	ControlHandle	maskPopup;
	ControlHandle	maskLabel;
	Rect			maskHugeRect, maskLargeRect, maskSmallRect, maskMiniRect;
	ControlHandle	preview;
	Rect			hugePreviewRect, largePreviewRect, smallPreviewRect, miniPreviewRect;
} display;

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
	ControlHandle	foreBackColors;
} controlList;

class icnsEditorClass;

typedef icnsEditorClass* icnsEditorPtr;

class drawingStateClass;

typedef drawingStateClass* drawingStatePtr;

typedef struct staticsStruct
{
	CGrafPtr			startupPort;
	GDHandle			startupDevice;
	
	Rect				canvasRect;
	GWorldPtr			canvasGW;
	PixMapHandle		canvasPix;
	
	Pattern				selectionPatterns[kNoOfSelectionPatterns];
} staticsStruct;

class icnsEditorClass : public icnsClass
{
	private:
		OSStatus		CreateControls(void);
		void			InstallDraggingHandlers(void);
		void			UpdateToolbar(void);
		void			ChangeCursor(int ID);
		void			RepositionControls(void);
		
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
		void			ExchangeForeBackColors(void);
		
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
	
		icnsEditorPtr	nextEditor;
		icnsEditorPtr	previousEditor;
		
		drawingStatePtr	currentState;
	
		Rect			iconDisplayRect;
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
		
		FSSpec			fileSpec;
		
		static staticsStruct	statics;
		
	public:
						icnsEditorClass(icnsEditorPtr previousLastEditor);
						~icnsEditorClass(void);
		static void		InitializeStatics(void)
						{
							GetGWorld(&statics.startupPort, &statics.startupDevice);
					
							for (int i=0; i < kNoOfSelectionPatterns; i++)
								GetIndPattern(&statics.selectionPatterns[i], rSelectionPatterns, i+1);
								
							SetRect(&statics.canvasRect, 0, 0, 48 * kMaxMagnification, 48 * kMaxMagnification);
							NewGWorld(&statics.canvasGW, 32, &statics.canvasRect, NULL, NULL, 0);
							statics.canvasPix = GetGWorldPixMap(statics.canvasGW);
							LockPixels(statics.canvasPix);
						}
		static void		DisposeStatics(void)
						{
							UnlockPixels(statics.canvasPix);
							DisposeGWorld(statics.canvasGW);
						}
						
		void			Refresh(void);
		void 			HandleContentClick(EventRecord *eventPtr);
		void			DoIdle(void);
		void			HandleKeyDown(EventRecord *eventPtr);
		void			Activate();
		void			Deactivate();
		void			HandleGrow(Point where);
		
		void			Close(icnsEditorPtr* lastEditor, icnsEditorPtr* firstEditor);
		void 			LoadFromFile(FSSpec srcSpec);
		void			Save(void);
		void			SaveAs(void);
		
		void 			Undo(void);
		void			Redo(void);
		void			Cut(void);
		void			Copy(void);
		void			Paste(void);
		void			Clear(void);
		void			Fill(void);
		void			Select(int selectionType);
		void			Rotate(int angle);
		void			FlipVertical(void);
		void			FlipHorizontal(void);
		
		void			ZoomIn();
		void			ZoomOut();
		
		WindowPtr		window;
		
	friend pascal void		DrawForeBackColors(ControlHandle theControl,SInt16 thePart);
	friend pascal void		DisplayDraw(ControlHandle theControl,SInt16 thePart);
	friend pascal void		PreviewDraw(ControlHandle theControl,SInt16 thePart);
	friend pascal void		DrawIconWell(ControlHandle theControl,SInt16 thePart);
	friend pascal ControlPartCode DisplayHitTest(ControlHandle theControl, Point where);
	friend pascal OSErr 	DragTrackingHandler(DragTrackingMessage message, WindowPtr theWindow, void *, DragReference theDragRef);
	friend pascal OSErr 	DragReceiveHandler (WindowPtr theWindow, void *, DragReference theDragRef);
	friend pascal OSErr 	ApproveDragReference (DragReference theDragRef, bool *approved, icnsEditorPtr parentEditor);
	friend pascal OSErr		ShowDragHiliteEditor(DragReference dragRef, icnsEditorPtr parentEditor);
	friend drawingStateClass;
};


// function prototypes
extern pascal OSErr 			DragTrackingHandler(DragTrackingMessage message, WindowPtr theWindow, void *, DragReference theDragRef);
extern pascal OSErr 			DragReceiveHandler (WindowPtr theWindow, void *, DragReference theDragRef);
extern pascal OSErr 			ApproveDragReference (DragReference theDragRef, bool *approved, icnsEditorPtr parentEditor);
extern pascal OSErr 			ShowDragHiliteEditor(DragReference dragRef, icnsEditorPtr parentEditor);
extern void						DragPixMap(EventRecord *eventPtr, PixMapHandle dragPix, long dragType);

extern pascal bool 				LassoColorSearch(RGBColor *color, int *result);
extern pascal void				DrawIconWell(ControlHandle theControl,SInt16 thePart);
extern pascal ControlPartCode	HitTestIconWell (ControlHandle control, Point where);
extern pascal void				DrawForeBackColors(ControlHandle theControl,SInt16 thePart);
extern pascal ControlPartCode 	HitTestForeBackColors (ControlHandle control, Point where);
extern pascal void				DisplayDraw(ControlHandle theControl,SInt16 thePart);
extern pascal ControlPartCode	DisplayHitTest(ControlHandle control, Point where);
extern pascal void				PreviewDraw(ControlHandle theControl,SInt16 thePart);
extern pascal ControlPartCode	PreviewHitTest(ControlHandle control, Point where);
extern icnsEditorPtr			GetFrontEditor(void);
extern icnsEditorPtr			GetEditor(WindowPtr window);
extern void						MakeDisplayRects(Rect controlRect, Rect *hugeRect,Rect *largeRect, Rect *smallRect, Rect *miniRect);
