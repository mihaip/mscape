#pragma once

#include "MFloater.h"
#include "icnsClass.h"

const static OSType kToolPaletteType = 'IcTP';

enum ToolPaletteResources
{
	rTPWindow = 600,
	rTPColorSwatch = 620,
	rTPPatterns = 621,
	rTPBackgroundPane = 622,
	rTPLineThickness = 623,
	rTPAntiAliasing = 624,
	rTPFill = 625,
	
	rTPToolBaseID = 600,
	rTPToolModesBaseID = 630,
	
	rTPMarqueeAdditive = 640,
	rTPMarqueeSubtractive = 641,
	rTPLassoAdditive = 642,
	rTPLassoSubtractive = 643,
	rTPMagicWandAdditive = 644,
	rTPMagicWandSubtractive = 645,
	rTPMoveSelectionOutline = 646,
	rTPMoveSelectionContents = 647,
	rTPMoveFloatSelection = 648,
	rTPLassoPolygonalAdditive = 649,
	rTPLassoPolygonalSubtractive = 650,
	rTPZoomOut = 651,
	rTPCantZoom = 652,
	
	// widget icons
	rTPSwapColorsIcon = 650,
	rTPResetColorsIcon = 651,
	
	// settings pictures
	rTPAliasedPic = 660,
	rTPAntiAliasedPic = 661,
	rTPUnfilledPic = 662,
	rTPFilledPic = 663
};

enum ToolPaletteTools
{
	toolNone = -1,
	toolPen,
	toolEyeDropper,
	toolFill,
	toolEraser,
	toolMarquee,
	toolMove,
	toolLasso,
	toolMagicWand,
	toolLine,
	toolRectangle,
	toolOval,
	toolPolygon,
	toolGradient,
	toolText,
	toolPan,
	toolZoom,
	kToolCount
};

enum ToolModes
{
	toolModeNone = -2,
	toolModeEditor = -1,
	toolModeNormal,
	toolModeSpecial
};

enum ColorSwatchParts
{
	kTPBackColor = 1,
	kTPForeColor,
	kTPSwapColors,
	kTPResetColors,
	kTPColorSwatchPartCount
};

enum ToolPaletteCursorFlags
{
	cursorFlagsInSelection = 1,
	cursorFlagsHasSelection = 2,
	cursorFlagsFloatedSelection = 4,
	cursorFlagsCanZoomOut = 8,
	cursorFlagsCanZoomIn = 16
};

enum ToolPaletteMenuItems
{
	iTPAliased = 1,
	iTPAntiAliased = 2,
	
	iTPUnfilled = 1,
	iTPFilled = 2
};

typedef struct
{
	ControlHandle	tools[kToolCount],
					lineThickness,
					antiAliasing,
					fill,
					colorSwatch,
					patterns,
					backgroundPane,
					root;
} ToolPaletteControls;

class ToolPalette : public MFloater
{
	public:
								ToolPalette();
								~ToolPalette();
		
		void					Activate();
		void					Deactivate();
		
		void					DoIdle();
		
		void 					HandleContentClick(EventRecord* eventPtr);
		void 					HandleKeyDown(EventRecord *eventPtr);
		
		int						GetTrueCurrentTool();
		int						GetCurrentTool();
		void					SetCurrentTool(int newTool);
		bool					InToggleMode();
		
		int						GetToolMode(int tool);
		void					ToggleToolMode(int tool);
		void					ToggleFill();
		
		void					GetColors(RGBColor* fore, RGBColor* back);
		void					SetColors(RGBColor* fore, RGBColor* back);
		
		Pattern					GetPattern();
		int						GetPatternIndex();
		void					SetPatternIndex(int inPattern);
		
		void					Update();
		void					ChangeCursor(int flags);
		
	private:
		int						lastToolClick;
		int						currentTool, oldTool;
		int						toolModes[kToolCount];
		
		CIconHandle				swapColorsIcon, resetColorsIcon;
		
		Rect					colorSwatchRects[kTPColorSwatchPartCount];
		
		RGBColor				foreColor, backColor;
		short					pattern;
		
		MenuHandle				lineThicknessMenu, antiAliasingMenu, fillMenu;
		
		ToolPaletteControls		controls;
		
		void					CreateControls();
		
		// color swatch functions
		void					SwapColors();
		void					ResetColors();
		void					HandleSwatchClick(int controlPart, Point where);
		void					PickColor(RGBColor* color, Point where, Str255 messageString);
		
		static pascal void 		SwatchUpdate(RGBColor* color, void *clientData);
		
		void					MakeColorSwatchRects(Rect controlRect, Rect rects[]);
		
		static pascal void		ColorSwatchDraw(ControlHandle theControl,SInt16 thePart);
		static pascal short 	ColorSwatchHitTest(ControlHandle control, Point where);
		
		// patterns swatch functions
		void					HandlePatternsClick(Point where);
		
		static pascal void		PatternsDraw(ControlHandle theControl,SInt16 thePart);
		static pascal short 	PatternsHitTest(ControlHandle theControl, Point where);
		static pascal void		PatternMenuDraw(int number, int x, int y, int width, int height, void* clientData);
		static pascal void		PatternMenuUpdate(int selection, void* clientData);
		
		// settings functions
		static void 			LineThicknessUpdate(struct EnhancedPlacardData* data, int flags);
		static void 			AntiAliasingUpdate(struct EnhancedPlacardData* data, int flags);
		static void 			FillUpdate(struct EnhancedPlacardData* data, int flags);
		
		
		// background pane functions
		
		static pascal void		BackgroundPaneDraw(ControlHandle theControl,SInt16 thePart);


		
};

typedef ToolPalette* ToolPalettePtr;
