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
	iIconIDLabel = 3,
	iIconIDField = 4,
	iIconNameLabel = 5,
	iIconNameField = 6,
	iFlagsGroupBox = 7,
	iIconSizeField = 8,
	iPurgeable = 9,
	iPreload = 10,
	iLocked = 11,
	iProtected = 12,
	iSystemHeap = 13,
	iIDMenu = 15,
	iFormatPopup = 16,
	
	iThumbnailBox = 19,
	
	iHugeBox = 20,
	iih32Box = 33,
	iich8Box = 36,
	iich4Box = 40,
	iichiBox = 44,
	ih8mkBox = 48,
	iichmBox = 51,
	
	iLargeBox = 21,
	iil32Box = 34,
	iicl8Box = 37,
	iicl4Box = 41,
	iicniBox = 45,
	il8mkBox = 49,
	iicnmBox = 52,
	
	iSmallBox = 22,
	iis32Box = 35,
	iics8Box = 38,
	iics4Box = 42,
	iicsiBox = 46,
	is8mkBox = 50,
	iicsmBox = 53,
	
	iMiniBox = 18,
	iicm8Box = 39,
	iicm4Box = 43,
	iicmiBox = 47,
	iicmmBox = 54,
	
	iMembersGroupBox = 17,
	iMembersDivider = 23,
	iHintsLabel = 24,
	iIconLabel = 25,
	i32BitIconLabel = 26,
	i8BitIconLabel = 27,
	i4BitIconLabel = 28,
	i1BitIconLabel = 29,
	iMaskLabel = 30,
	i8BitMaskLabel = 31,
	i1BitMaskLabel = 32
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
	eInsertIconTitle = 10,
	eNonIconDataFork = 11,
	eChooseAnotherFile = 12,
	eClickToChooseAShortcut = 13,
	eClickToChooseAnEditor = 14,
	eIconographerSupportFolder = 15
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

enum iconInfoModes
{
	kIconInfo,
	kInsertIcon
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

class icnsEditorClass : public icnsClass, public MWindow
{
	private:
		OSStatus		CreateControls(void);
		void			InstallDraggingHandlers(void);
		void			RepositionControls(void);
		void			InvalidateDrawingArea(void);
		
		void			PostLoad();
		void			PostSave();
		void			LoadUsedMembers();
		void			SaveUsedMembers();
		bool			HasNonIconDataFork();
		
		void			HandleToolDoubleClick(long tool);
		void			GetCurrentIconMask(PixMapHandle* iconPix, GWorldPtr* iconGW, long* iconName, 
										   PixMapHandle* maskPix, GWorldPtr* maskGW, long* maskName,
										   bool strict);
		void			ToggleIconMask(void);
		void			CheckMaskSync(PixMapHandle basePix, PixMapHandle maskPix, int errorString);
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
		void			DrawSelection(Rect sourceRect, Rect targetRect, int dX, int dY);
		void 			DrawOverlay(Rect sourceRect, Rect targetRect, int dX, int dY);

		
		void			DrawGrid(Rect targetRect);
		void			FloatSelection(void);
		void			DefloatSelection(void);
		void			MagnifySelectionRgn(void);
		void 			DragSelection(int anchorX, int anchorY);
		//void			ResizeWindow();
		
		void			ZoomFitWindow();
		void 			ClampScrollValues();
		void			MakeEditAreaRect(int h, int v, Rect* areaRect);
		Point			GetMaxDimensions();
		int				GetMaxMagnification();
		void			UpdateZoom();
		
		void			UpdatePreview();
		void			CopyDepth(int oldDepth, int newDepth, int iconOrMask);
		void 			GetDisplayPix(Point theMouse, GWorldPtr *clickedGW, PixMapHandle *clickedPix, long *clickedName, Rect *clickedRect);
		void			InsertFromPicture(PicHandle srcPic, GWorldPtr targetGW, int options);
		void			PictureToMask(PicHandle srcPic, GWorldPtr maskGW);
		void			GetSelectionColors(RGBColor** colors, int* noOfColors);
		void			SaveState(GWorldPtr gWorld, PixMapHandle pix, long name);
		void			SaveMembers(void);
		void			UpdateCursor(Point theMouse);
		
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
		void			HandleKeyDown(EventRecord *eventPtr);
		void			Activate();
		void			Deactivate();
		void			HandleGrow(Point where);
		void			Drag(Point startPoint, Rect draggingBounds);		void			ToggleZoom();
		
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
		int				EditIconInfo(int mode);
		void			OpenInExternalEditor();
		void			ReloadFromExternalEditor();
		
		bool			CurrentDepthSupportsColors();
		int				GetColors();
		void			ChangeColors(int newColors, bool saveState);
		
		void			RefreshWindowTitle();
		void			DisposeStates(void);
		
		static void		SetMembersCheckboxes(DialogPtr dialog, long usedMembers, long format);
		static void		GetMembersCheckboxes(DialogPtr dialog, long* usedMembers);
		static void 	HandleMembersCheckbox(DialogPtr dialog, int itemHit, long *usedMembers, int format);
		
		static void		ZoomPlacardUpdate(struct EnhancedPlacardData* data, int flags);

		static editorStaticsClass	statics;
		
		friend class	ToolPalette;
		friend class	PreviewPalette;
		friend class	MembersPalette;
		
		friend class drawingStateClass;
		friend class SystemColorPicker;
		
		
		friend pascal void	EditAreaDraw(ControlHandle theControl, SInt16 thePart);
	
	friend void UpdateEffects(AdjustDialogDataPtr dialogData);
	
	friend pascal OSErr 	DragTrackingHandler(DragTrackingMessage message, WindowPtr theWindow, void *, DragReference theDragRef);
	friend pascal OSErr 	DragReceiveHandler (WindowPtr theWindow, void *, DragReference theDragRef);
	friend pascal OSErr 	ApproveDragReference (DragReference theDragRef, bool *approved, icnsEditorPtr parentEditor);
	friend pascal OSErr		DrawDragHilite(DragReference dragRef, icnsEditorPtr parentEditor);
	friend void 			InsertPicIntoIcon(icnsEditorPtr parentEditor, PicHandle pic);
	
	
	friend pascal void	CPSwatchDraw(ControlHandle theControl,SInt16 thePart);
};


// function prototypes

// dragging functions
extern pascal OSErr 			DragTrackingHandler(DragTrackingMessage message, WindowPtr theWindow, void *, DragReference theDragRef);
extern pascal OSErr 			DragReceiveHandler (WindowPtr theWindow, void *, DragReference theDragRef);
extern pascal OSErr 			ApproveDragReference (DragReference theDragRef, bool *approved, icnsEditorPtr parentEditor);
extern pascal OSErr 			DrawDragHilite(DragReference dragRef, icnsEditorPtr parentEditor);
extern void						DragPixMap(Rect* dragSourceRect,
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

extern pascal bool StandardEditorDialogFilter(DialogPtr dialog, EventRecord* eventPtr, short* itemHit);
extern pascal bool IconInfoDialogFilter(DialogPtr dialog, EventRecord* eventPtr, short* itemHit);
extern void ToggleNonMacOSItems(DialogPtr infoDialog);
extern void SplitMenuItem(Str255 text, long* ID, Str255 iconName);
extern void GetIDMenu(int ID, MenuHandle* menu, int* item, Str255 name);
extern void SetControlBalloonHelp(ControlHandle theControl, long stringNo);
extern long GetControlBalloonHelp(ControlHandle theControl);
extern void HandleBalloons(Point theMouse, WindowPtr window, int strings);

extern pascal bool AdjustDialogFilter(DialogPtr dialog, EventRecord* eventPtr, short* itemHit);
extern void FieldToSlider(ControlHandle field, ControlHandle slider);
extern pascal void SliderActionFunction(ControlHandle theControl, short thePart);
extern void UpdateEffects(AdjustDialogDataPtr dialogData);
