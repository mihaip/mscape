// __________________________________________________________________________________________
// Program		: Icon Mangler
// Filename		: icnsEditorClass.h
// Author		: Mihai Parparita (St. Mary's International School)
// Last modified: April 1, 1999
// Description	: header file for the icsEditorClass

#pragma once // we don't want any infinite inclusion loops

// includes
#include <QuickTimeComponents.h>
#include "MDocumentWindow.h"
#include "MIcon.h"
#include "graphicalFunctions.h"
#include "textTool.h"

// constants
const static int kScrollbarHeight = 16 - 1;
const static int kScrollbarWidth = 16 - 1;

const static int kZoomPlacardWidth = 64;
const static int kMinScrollbarLength = 16 * 4;

const static int kMinWidth = 79;
const static int kMinHeight = 79;

const static int kDeleteKey = 0x08;
const static char kDeleteGlyph = '';
// unprintable using this font, it really looks something like this: <=|
						
const static int kSelectionDrawingDelay = 2;

const static short rEditorWind = 200;
const static long kEditorType = 'IcEd';

const static long kPreferredMembers[] = {it32, ih32, il32, is32,
										 ich8, icl8, ics8, icm8,
										 ich4, icl4, ics4, icm4,
										 ichi, icni, icsi, icsm,
										 t8mk, h8mk, l8mk, s8mk,
										 ichm, icnm, icsm, icmm};
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
	rEditorHelp = 203,
	rAddMemberHelp = 1003,
	
	// dialogs
	rAddMember = 1003,
	rAdjust = 1010,
	rAdjustHuePane = 1011,
	rAdjustBrightnessPane = 1012,
	rExpandContractDialog = 1020,
	rStrokeDialog = 1021
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

enum expandContractItems
{
	iExpandPrompt = 3,
	iNoOfPixels = 4,
	iPixelsLabel = 5
};

enum strokeItems
{
	iStrokePrompt = 3,
	iLocationPrompt = 6,
	iInside = 7,
	iCenter = 8,
	iOutside = 9
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
	
	eClickToChooseAShortcut = 8,
	eClickToChooseAnEditor = 9,
	eIconographerSupportFolder = 10,
	eIconographerSupportFolderError = 11,
	eExternalEditorError = 12,
	eOpenPreferences = 13,
	
	eIconClippingName = 14,
	
	eMaskSyncExplanation = 15,
	
	eWindowsTooManyMembersError = 16,
	eWindowsTooManyMembersExplanation = 17,
	
	eContinueButton = 18
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

enum editorHelp
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
	subtractive = 6,
	expandContract = 7,
	stroke = 8
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
	resized						= 1 << 1,
	needsUpdate					= 1 << 2,
	saveState					= 1 << 3,
	canUndo						= 1 << 4,
	canRedo						= 1<< 5,
	canZoomIn					= 1 << 6,
	canZoomOut					= 1 << 7,
	hasSelection				= 1 << 8,
	selectionFloated			= 1 << 9,
	needToSave					= 1 << 10,
	dontRestoreCurrentPix		= 1 << 11,
	skipState					= 1 << 12,
	mouseInSelection			= 1 << 13,
	canPaste					= 1 << 14,
	canPasteFamily				= 1 << 15,
	canRevert					= 1 << 16,
	currentDepthSupportsColors	= 1 << 17,
	macOSPalette				= 1 << 18,
	mouseInEditArea				= 1 << 19,
	isOptionDown				= 1 << 20,
	isShiftDown					= 1 << 21,
	isCommandDown				= 1 << 22,
	currentPixIsIcon			= 1 << 23
};

const static int kMenuIgnoredStates = ~(resized | needsUpdate | dontRestoreCurrentPix | mouseInSelection | mouseInEditArea | isShiftDown | isCommandDown | isOptionDown);

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
	int					averageLuminance, count;
} AdjustDialogData, *AdjustDialogDataPtr;

typedef struct
{
	long	usedMembers;
	int		magnification;
	long	currentPixName;
} IconSaveInfo, *IconSaveInfoPtr, **IconSaveInfoHandle;

const static OSType kIconSaveInfoResourceType = 'Mngl';

class drawingStateClass;

typedef drawingStateClass* drawingStatePtr;

class editorStaticsClass;

class icnsEditorClass : public MIcon, public MDocumentWindow
{
	private:
		OSStatus		CreateControls(void);
		void			InstallDraggingHandlers(void);
		void			RepositionControls();
		void			InvalidateDrawingArea(void);
		
		void			PostLoad();
		void			LoadSaveInfo(bool* setCurrentMember);
		void			StoreSaveInfo();
		bool			HasNonIconDataFork();
		
		void			HandleToolDoubleClick(long tool);
		void			GetCurrentIconMask(PixMapHandle* iconPix, GWorldPtr* iconGW, long* iconName, 
										   PixMapHandle* maskPix, GWorldPtr* maskGW, long* maskName,
										   bool strict);
		void			GetPreviewSizeAndDepths(int *previewSize, int* previewDepth, int* maskDepth);
		void			ToggleIconMask(void);
		void			CheckMaskSync(int basePixName, int maskName, int size);
		void			GenerateMask(int mask);
		void			ChangeColorsIconSet(long name, CTabHandle colorTable, bool saveState);
		
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
#if !TARGET_API_MAC_CARBON
		void			AddPanUpdateRect(Rect updateRect);
#endif
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
		
		void			PostZoom();
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
		void			SaveState(long name);
		void			SaveMembers(void);
		
		void			ExpandContract();
		void			Stroke();
		
		bool 			RunEffectsDialogEventLoop(QTParameterDialog dialog, ComponentInstance componentInstance);
		void			SetupEffectsDialog();
		void			ApplyEffect(OSType effectType, QTAtomContainer effectDesc, GWorldPtr sourceGW, PixMapHandle sourcePix, RgnHandle clipRgn);
		OSErr			GetEffectDescription(QTAtomContainer *effectDesc, OSType effectType);
		OSErr			GetComponentInstance(ComponentInstance *componentInstance, OSType effectType);
		
		OSType			lastEffectType;
		QTAtomContainer	lastEffectDesc;
		
		void			BuildMembersMenu(MenuHandle menu, int startingPoint, int membersToList);
		
		void			DragScroll();
		
		static pascal void	ScrollbarAction(ControlHandle theControl, SInt16 thePart);
		
		pascal static void	DragScrollTimer(EventLoopTimerRef timer, void *userData);
		
		EventLoopTimerRef	dragScrollTimer;
		
		Point			lastTrackingMouse;
		Rect			limitRect;
		bool			draggingStarted;
		
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

#if !TARGET_API_MAC_CARBON
		Rect			panUpdateRects[kMaxPanUpdateRects];
		int				panUpdateRectsCount;
#endif
		
		bool			exportMode;
		unsigned long	exportDate;
		FSSpec			exportFile;
		
		int				oldToggleMember, currentToggleMember;
		
		Point			zoomPosition;
		Point			zoomDimensions;
		int				zoomMagnification;
		
		Point			lastPenClick;

	public:
						icnsEditorClass(void);
						~icnsEditorClass(void);
						
		void			Refresh(void);
		void 			HandleContentClick(EventRecord *eventPtr);
		void			DoIdle(MWindowPtr windowUnderMouse);
		void			UpdateCursor(Point theMouse);
		void			HandleKeyDown(EventRecord *eventPtr);
		void			Activate();
		void			Deactivate();
		void			HandleGrow(Point where);
		void			Drag(Point startPoint, Rect draggingBounds);
		void			ToggleZoom();
		void			EnsureOnScreenPosition();
		
		void 			HandleWheelMove(Point location, int modifiers, EventMouseWheelAxis axis, long delta);
		
		void			Close();
		void 			Load();
		void 			LoadFileIcon();
		void			LoadDataFork();
		OSErr			Save(void);
		
		void			Show();
		void			Hide();
		
		void			SetCurrentMember(long member, int facinessLevel);
		void 			SetBestMember();
		
		void			RemoveMember(int member);
		
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
		OSErr			ApplyQTEffect(OSType effectType);
		void			ReapplyQTEffect();
		
		void			ZoomIn();
		void			ZoomOut();
		void			ZoomFit();
		void			ZoomActual();
		
		void			EditIconInfo();
		void			AddMember();
		void			GenerateMask();
		void			CompleteIcon();
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
										   long dragType,
										   MFile* dragTarget);
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

extern pascal Boolean AdjustDialogFilter(DialogPtr dialog, EventRecord* eventPtr, short* itemHit);
extern void FieldToSlider(ControlHandle field, ControlHandle slider);
extern pascal void SliderActionFunction(ControlHandle theControl, short thePart);
extern void UpdateEffects(AdjustDialogDataPtr dialogData);
