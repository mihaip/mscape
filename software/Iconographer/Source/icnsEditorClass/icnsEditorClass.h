// __________________________________________________________________________________________
// Program		: Icon Mangler
// Filename		: icnsEditorClass.h
// Author		: Mihai Parparita (St. Mary's International School)
// Last modified: April 1, 1999
// Description	: header file for the icsEditorClass

#pragma once // we don't want any infinite inclusion loops

// includes
#include "MDocumentWindow.h"
#include "icnsClass.h"
#include "graphicalFunctions.h"
#include "textTool.h"

// constants
const static int kScrollbarHeight = 16 - 1;
const static int kScrollbarWidth = 16 - 1;

const static int kZoomPlacardWidth = 64;
const static int kMinScrollbarLength = 16 * 4;

const static int kMinWidth = 80;
const static int kMinHeight = 80;

const static int kDeleteKey = 0x08;
const static char kDeleteGlyph = '';
// unprintable using this font, it really looks something like this: <=|
						
const static int kSelectionDrawingDelay = 2;

const static short rEditorWind = 200;
const static long kEditorType = 'IcEd';

const static long kPreferredMembers[] = {it32, il32, ih32, is32,
										 icl8, ich8, ics8, icm8,
										 icl4, ich4, ics4, icm4,
										 icni, ichi, icsi, icsm,
										 t8mk, l8mk, h8mk, s8mk,
										 icnm, ichm, icsm, icmm};
const static int kPreferredMembersCount = sizeof(kPreferredMembers)/sizeof(long);

const static int kMaxPanUpdateRects = 10;

const static int kZoomMenuItemCount = 5;

const static int kMaximumTranslucentArea = 128 * 128;

// resource IDs

enum resources
{
	// menus
	mFont = 1410,
	mSize = 1411,
	mStyle = 1412,
	
	// others	
	rDrawingPatterns = 1001,
	
	// strings
	rBasicStrings = 200,
	rLabelStrings = 201,
	rEditorBalloonHelp = 203,
	
	// dialogs
	rAddMember = 1003,
	rAdjust = 1010,
	rAdjustHuePane = 1011,
	rAdjustBrightnessPane = 1012
};

enum addMemberItems
{
	iTypePopup = 4,
	iSourcePopup = 5,
	
	// source popup menu items
	iSourceNone = 1,
	iSourceCurrent = 2
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
	
	eMaskSync = 2,
	eRegenerateButton = 3,
	eYesButton = 4,
	eNoButton = 5,
	
	eNoMask = 6,
	eGenerateButton = 7,
	
	eNonIconDataFork = 8,
	eChooseAnotherFile = 9,
	eClickToChooseAShortcut = 10,
	eClickToChooseAnEditor = 11,
	eIconographerSupportFolder = 12,
	eIconographerSupportFolderError = 13,
	eExternalEditorError = 14,
	eOpenPreferences = 15
};

enum labelStrings
{
	sIconLabel = 1,
	sMaskLabel = 2,
	sPreviewLabel = 3,
	sForeColor = 4,
	sBackColor = 5,
	sInfoLabelName = 6,
	sInfoLabelNoName = 7
};

enum editorBalloonHelp
{
	hEditingArea = 1,
	hZoomPlacard = 2
};

enum controlIDs
{
	rEditArea = 200,
	rZoomPlacard = 201,
	rVScrollbar = 202,
	rHScrollbar = 203
};

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
	previewNormal,
	previewSelected
};

typedef struct controlList
{
	ControlHandle	rootControl,
					editArea,
					zoomPlacard,
					vScrollbar,
					hScrollbar;
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

class icnsEditorClass : public icnsClass, public MDocumentWindow
{
	private:
		OSStatus		CreateControls(void);
		void			InstallDraggingHandlers(void);
		void			RepositionControls(void);
		void			InvalidateDrawingArea(void);
		
		void			PostLoad();
		void			LoadUsedMembers();
		void			SaveUsedMembers();
		bool			HasNonIconDataFork();
		
		void			HandleToolDoubleClick(long tool);
		void			GetCurrentIconMask(PixMapHandle* iconPix, GWorldPtr* iconGW, long* iconName, 
										   PixMapHandle* maskPix, GWorldPtr* maskGW, long* maskName,
										   bool strict);
		void			ToggleIconMask(void);
		void			CheckMaskSync(PixMapHandle basePix, PixMapHandle maskPix, int size);
		void			GenerateMask(int mask);
		void			ChangeColorsIconSet(long name, GWorldPtr* gWorld, PixMapHandle* pix, CTabHandle colorTable, bool saveState);
		
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
		void			HandlePan(Point startMouse);
		void			HandleZoom(Point startMouse);
		
		void 			DrawMember(int pixName, Rect targetRect);
		void			PreviewDisplay(int height, int depth, int maskDepth, Rect targetRect, bool selected);
		
		inline void 	GetDrawingMousePosition(int *x, int *y, Point* theMouse, int flags);
		inline void		DrawingPointToWindowPoint(Point* point, int flags);
		
		void			UpdateEditArea();
		void			UpdateEditArea(Rect updateRect);
		void			UpdateEditArea(Point point1, Point point2, Point point3, int flags);
		void			UpdateEditArea(Point point1, Point point2, int flags);
		void			UpdateEditArea(Rect rect1, Rect rect2, int flags);
		
		void			PaintEditAreaRect(Rect targetRect);
		void			AddPanUpdateRect(Rect updateRect);
		void			StartPan();
		void			PanEditArea(int dH, int dV);
		void			FinishPan();
		void			DrawSelection(GrafPtr canvas, Rect sourceRect, Rect targetRect, int dX, int dY);
		void 			DrawOverlay(GrafPtr canvas, Rect sourceRect, Rect targetRect, int dX, int dY);

		
		void			DrawGrid(Rect targetRect);
		void			FloatSelection(void);
		void			DefloatSelection(bool trueDefloat);
		void			MagnifySelectionRgn(void);
		void 			DragSelection(Point startMouse, int anchorX, int anchorY);
		//void			ResizeWindow();
		
		void			ZoomFitWindow();
		void 			ClampScrollValues();
		void			MakeEditAreaRect(int h, int v, Rect* areaRect);
		Point			GetMaxDimensions();
		int				GetMaxMagnification();
		void			UpdateZoom();
		
		void			CopyDepth(int oldDepth, int newDepth, int iconOrMask);
		void 			GetDisplayPix(Point theMouse, GWorldPtr *clickedGW, PixMapHandle *clickedPix, long *clickedName, Rect *clickedRect);
		void			InsertFromPicture(PicHandle srcPic, GWorldPtr targetGW, int options);
		void			PictureToMask(PicHandle srcPic, GWorldPtr maskGW);
		void			GetSelectionColors(RGBColor** colors, int* noOfColors);
		void			SaveState(GWorldPtr gWorld, PixMapHandle pix, long name);
		void			SaveMembers(void);
		
		void			BuildMembersMenu(MenuHandle menu, int startingPoint, int membersToList);
		
		static pascal void	ScrollbarAction(ControlHandle theControl, SInt16 thePart);
		
		drawingStatePtr	firstState;
		drawingStatePtr	currentState;
	
		controlList		controls;
		
		Rect			dragSrcRect;
		Rect			editAreaRect;
		
		PixMapHandle	currentPix;
		GWorldPtr		currentGW;
		long			currentPixName;
		
		RgnHandle		selectionRgn;
		RgnHandle		selectionContentsMagnifiedRgn;
		RgnHandle		selectionOutlineMagnifiedRgn;
		int				currentSelectionPattern;
		long			lastSelectionTicks;
		GWorldPtr		selectionGW;
		PixMapHandle	selectionPix;
		bool			cycleSelectionPattern;
		
		GWorldPtr		overlayGW;
		PixMapHandle	overlayPix;
		
		int				magnification;
		
		int				colors;
		
		int				hScrollbarValue;
		int				vScrollbarValue;
		
		Rect			panUpdateRects[kMaxPanUpdateRects];
		int				panUpdateRectsCount;
		
		bool			exportMode;
		unsigned long	exportDate;
		FSSpec			exportFile;
		
		int				oldToggleMember, currentToggleMember;
		
		Point			zoomPosition;
		Point			zoomDimensions;
		int				zoomMagnification;
	public:
						icnsEditorClass(void);
						~icnsEditorClass(void);
						
		void			Refresh(void);
		void 			HandleContentClick(EventRecord *eventPtr);
		void			DoIdle(void);
		void			UpdateCursor(Point theMouse);
		void			HandleKeyDown(EventRecord *eventPtr);
		void			Activate();
		void			Deactivate();
		void			HandleGrow(Point where);
		void			Drag(Point startPoint, Rect draggingBounds);
		void			ToggleZoom();
		
		void			Close();
		void 			Load();
		void 			LoadFileIcon();
		void			LoadDataFork();
		OSErr			Save(void);
		
		void			Show();
		void			Hide();
		
		void			SetCurrentMember(long member, bool fancy);
		void 			SetBestMember();
		
		void			ResetStates();
		
		void 			Undo(void);
		void			Redo(void);
		void			Cut();
		void			Copy(int copyType);
		void			Paste(int pasteType);
		void			Clear(void);
		void			Fill(void);
		void			MakeSelection(int selectionType);
		void			Rotate(int angle);
		void			Flip(int flipType);
		void			Invert(void);
		void			Adjust();
		
		void			ZoomIn();
		void			ZoomOut();
		void			EditIconInfo();
		void			AddMember();
		void			OpenInExternalEditor();
		void			ReloadFromExternalEditor();
		
		bool			CurrentDepthSupportsColors();
		int				GetColors();
		void			ChangeColors(int newColors, bool saveState);
		
		void			RefreshWindowTitle();
		void			DisposeStates(void);
		
		static void		ZoomPlacardUpdate(struct EnhancedPlacardData* data, int flags);

		static editorStaticsClass	statics;
		
		friend class	ToolPalette;
		friend class	PreviewPalette;
		friend class	MembersPalette;
		
		friend class	drawingStateClass;
		
		friend class	SystemColorPicker;
		
		friend pascal void	EditAreaDraw(ControlHandle theControl, SInt16 thePart);
	
		friend void		UpdateEffects(AdjustDialogDataPtr dialogData);
	
		friend pascal OSErr 	DragTrackingHandler(DragTrackingMessage message, WindowPtr theWindow, void *, DragReference theDragRef);
		friend pascal OSErr 	DragReceiveHandler (WindowPtr theWindow, void *, DragReference theDragRef);
		friend pascal OSErr 	ApproveDragReference (DragReference theDragRef, bool *approved, icnsEditorPtr parentEditor);
		friend pascal OSErr		DrawDragHilite(DragReference dragRef, icnsEditorPtr parentEditor);
		friend void 	InsertPicIntoIcon(icnsEditorPtr parentEditor, PicHandle pic);
	
	
		friend pascal void	CPSwatchDraw(ControlHandle theControl,SInt16 thePart);
};


// function prototypes

// dragging functions
extern pascal OSErr 			DragTrackingHandler(DragTrackingMessage message, WindowPtr theWindow, void *, DragReference theDragRef);
extern pascal OSErr 			DragReceiveHandler (WindowPtr theWindow, void *, DragReference theDragRef);
extern pascal OSErr 			ApproveDragReference (DragReference theDragRef, bool *approved, icnsEditorPtr parentEditor);
extern pascal OSErr 			DrawDragHilite(DragReference dragRef, icnsEditorPtr parentEditor);
extern void						DragPixMap(Rect dragSourceRect,
										   EventRecord *eventPtr,
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

extern pascal void				EditAreaDraw(ControlHandle theControl, SInt16 thePart);
extern pascal ControlPartCode	EditAreaHitTest(ControlHandle control, Point where);

// utility functions

extern icnsEditorPtr			GetFrontEditor(void);
extern icnsEditorPtr			GetEditor(WindowPtr window);

extern void SetControlBalloonHelp(ControlHandle theControl, long stringNo);

extern long GetControlBalloonHelp(ControlHandle theControl);
extern void HandleBalloons(Point theMouse, WindowPtr window, int strings);
extern bool HandleBalloon(int strings, ControlHandle theControl, Point theMouse);
extern void HandleBalloon(int strings, int index, Rect ballonRect, Point theMouse);

extern pascal Boolean AdjustDialogFilter(DialogPtr dialog, EventRecord* eventPtr, short* itemHit);
extern void FieldToSlider(ControlHandle field, ControlHandle slider);
extern pascal void SliderActionFunction(ControlHandle theControl, short thePart);
extern void UpdateEffects(AdjustDialogDataPtr dialogData);
