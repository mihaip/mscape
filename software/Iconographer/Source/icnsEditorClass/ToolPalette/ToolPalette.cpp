#include "PixMapColorPicker.h"
#include "PatternPicker.h"
#include "ToolPalette.h"
#include "icnsEditorClass.h"

ToolPalette::ToolPalette()
			:MFloater(rTPWindow, kToolPaletteType)
{

	swapColorsIcon = GetCIcon(rTPSwapColorsIcon); 
	HLock((Handle)swapColorsIcon);
	SetupCIcon(swapColorsIcon);
	resetColorsIcon = GetCIcon(rTPResetColorsIcon);
	HLock((Handle)resetColorsIcon);
	SetupCIcon(resetColorsIcon);
	
	CreateControls();
	
	for (int i=0; i < kToolCount; i++)
		toolModes[i] = toolModeNone;
	
	toolModes[toolEraser] = toolModeEditor;
	toolModes[toolMarquee] = toolModeEditor;
	toolModes[toolPan] = toolModeEditor;
	toolModes[toolZoom] = toolModeEditor;
	
	toolModes[toolLasso] = toolModeNormal;	
	toolModes[toolPolygon] = toolModeNormal;
	toolModes[toolRectangle] = toolModeNormal;
	toolModes[toolOval] = toolModeNormal;
	toolModes[toolGradient] = toolModeNormal;
		
	lastToolClick = -1;
	
	foreColor = kBlackAsRGB;
	backColor = kWhiteAsRGB;
	
	oldTool = toolNone;
	currentTool = toolNone;
	
	pattern = 0;
	
	colorPicker = new PixMapColorPicker(this, icnsEditorClass::statics.canvasPix, icnsEditorClass::statics.canvasGW);
	patternPicker = new PatternPicker(this, icnsEditorClass::statics.canvasPix, icnsEditorClass::statics.canvasGW);
	
	oldStatus = 0;
}

ToolPalette::~ToolPalette()
{	
	ReleaseResource(Handle(lineThicknessMenu));
	ReleaseResource(Handle(antiAliasingMenu));
	ReleaseResource(Handle(fillMenu));
	
	HUnlock((Handle)swapColorsIcon); // we can get rid of these resources too
	DisposeCIcon(swapColorsIcon);
	HUnlock((Handle)resetColorsIcon);
	DisposeCIcon(resetColorsIcon);
	
	DisposeEnhancedPlacard(controls.lineThickness);
	DisposeEnhancedPlacard(controls.antiAliasing);
	DisposeEnhancedPlacard(controls.fill);
	
	delete colorPicker;
	delete patternPicker;
}

void ToolPalette::Activate()
{
	if (!IsControlActive(controls.root))
	{
		SetThemeWindowBackground(window, kThemeBrushDialogBackgroundActive, false);
		ActivateControl(controls.root);
	}
}

void ToolPalette::Deactivate()
{
	if (IsControlActive(controls.root))
	{
		SetThemeWindowBackground(window, kThemeBrushDialogBackgroundActive, false);
		DeactivateControl(controls.root);
	}
}

void ToolPalette::DoIdle(MWindowPtr windowUnderMouse)
{
#pragma unused (windowUnderMouse)
	icnsEditorPtr	frontEditor;
	int			 	previousTool;
	
	frontEditor = GetFrontEditor();
	
	if (frontEditor != NULL)
	{
		previousTool = currentTool;
		
		if (oldTool == toolNone)
		{
			if (ISOPTIONDOWN && currentTool != toolMarquee && // selection and 
								currentTool != toolMove &&
								currentTool != toolMagicWand &&
								currentTool != toolLasso &&
								
								currentTool != toolZoom && // zoom tools dont't toggle to the eye dropper
								currentTool != toolPan &&
								
								currentTool != toolEyeDropper)
			{
				oldTool = currentTool;
				currentTool = toolEyeDropper;
			}
			else if (ISCOMMANDDOWN)
			{
				oldTool = currentTool;
				currentTool = toolMove;
			}
			else if (ISSPACEDOWN)
			{
				oldTool = currentTool;
				currentTool = toolPan;
			}
		}
		else if (ISSPACEDOWN && ISCOMMANDDOWN)
		{
			currentTool = toolZoom;
		}
		else if ((currentTool == toolEyeDropper && !ISOPTIONDOWN) ||
				(currentTool == toolMove && !ISCOMMANDDOWN) ||
				(currentTool == toolPan && !ISSPACEDOWN) ||
				(currentTool == toolZoom && !(ISSPACEDOWN && ISCOMMANDDOWN)))
		{
			currentTool = oldTool;
			oldTool = toolNone;
		}
		
		if (previousTool != currentTool)
		{
			Point theMouse;
			
			//MUtilities::GetMouseLocation(frontEditor->GetPort(), &theMouse);
			SAVEGWORLD;
			SetPort();
			GetMouse(&theMouse);
			RESTOREGWORLD;
			
			frontEditor->UpdateCursor(theMouse);
		}
	}
}

void ToolPalette::ChangeCursor(int status)
{
	int newID;
	
	oldStatus = status;
	
	if (!(status & mouseInEditArea))
		newID = rArrow;
	else if ((status & mouseInSelection) &&
		(currentTool == toolMove || currentTool == toolLasso ||
		currentTool == toolMarquee || currentTool == toolMagicWand) &&
		!ISOPTIONDOWN && !ISSHIFTDOWN)
	{
		if (status & selectionFloated)
			newID = rTPMoveSelectionContents;
		else
		{
			if (currentTool == toolMove)
				newID = rTPMoveFloatSelection;
			else
				newID = rTPMoveSelectionOutline;
		}
	}
	else switch (currentTool)
	{
		case toolMarquee:
			if (ISSHIFTDOWN && (status & hasSelection))
				newID = rTPMarqueeAdditive;
			else if (ISOPTIONDOWN  && (status & hasSelection))
				newID = rTPMarqueeSubtractive;
			else
				newID = rTPToolBaseID + toolMarquee;
			break;
		case toolLasso:
			if (GetToolMode(toolLasso) == toolModeNormal)
				if (ISSHIFTDOWN && (status & hasSelection)) // same here
					newID = rTPLassoAdditive;
				else if (ISOPTIONDOWN && (status & hasSelection))
					newID = rTPLassoSubtractive;
				else
					newID = rTPToolBaseID + toolLasso;
			else
				if (ISSHIFTDOWN && (status & hasSelection)) // same here
					newID = rTPLassoPolygonalAdditive;
				else if (ISOPTIONDOWN && (status & hasSelection))
					newID = rTPLassoPolygonalSubtractive;
				else
					newID = rTPToolModesBaseID + toolLasso;
			break;	
		case toolMagicWand:
			if (ISSHIFTDOWN && (status & hasSelection)) // and here
				newID = rTPMagicWandAdditive;
			else if (ISOPTIONDOWN && (status & hasSelection))
				newID = rTPMagicWandSubtractive;
			else
				newID = rTPToolBaseID + toolMagicWand;
			break;
		case toolLine:
		case toolRectangle:
		case toolOval:
		case toolPolygon:
		case toolGradient:
			newID = rTPToolBaseID + toolMarquee;
			break;
		case toolText:
			newID = rIBeam;
			break;
		case toolZoom:
			if (ISOPTIONDOWN)
				if (status & canZoomOut)
					newID = rTPZoomOut;
				else
					newID = rTPCantZoom;
			else
				if (status & canZoomIn)
					newID = rTPToolBaseID + toolZoom;
				else
					newID = rTPCantZoom;
			break;
		default: newID = rTPToolBaseID + currentTool; break;
	}
	
	MUtilities::ChangeCursor(newID);
}

void ToolPalette::UpdateCursor(Point theMouse)
{
	if (icnsEditorClass::statics.colorsPalette->IsVisible())
		if (PtInRect(theMouse, &colorSwatchRects[kTPForeColor]))
			icnsEditorClass::statics.colorsPalette->UpdateReadout(-1, -1, foreColor);
		else if (PtInRect(theMouse, &colorSwatchRects[kTPBackColor]))
			icnsEditorClass::statics.colorsPalette->UpdateReadout(-1, -1, backColor);
}

void ToolPalette::HandleContentClick(EventRecord* eventPtr)
{
	Point 				where;
	short 				controlPart;
	ControlHandle 		clickedControl;
	bool				toolClick = false;
	
	where = eventPtr->where;
	
	SAVEGWORLD;
	
	SetPort();
	
	GlobalToLocal(&where);
	
	controlPart = FindControl(where, window, &clickedControl);
	
	if (controlPart != kControlNoPart)
	{
		if (clickedControl == controls.colorSwatch)
			HandleSwatchClick(controlPart, where);
		else if (clickedControl == controls.patterns)
			HandlePatternsClick(where);
		else if (TrackControl(clickedControl, where, NULL))
		{
			if (clickedControl == controls.lineThickness ||
				clickedControl == controls.antiAliasing ||
				clickedControl == controls.fill)
				EnhancedPlacardHandleClick(clickedControl);
			else
				for (int i=0; i < kToolCount; i++)
					if (controls.tools[i] == clickedControl)
					{
						toolClick = true;
						
						oldStatus &= ~mouseInEditArea;
						
						if (lastToolClick == -1 || i != currentTool)
							lastToolClick = TickCount();
						else if (TickCount() - lastToolClick <= GetDblTime())
						{
							if (i == toolRectangle ||
								i == toolOval ||
								i == toolPolygon)
								ToggleFill();
							else
								ToggleToolMode(i);
							lastToolClick = -1;
						}
						else
							lastToolClick = TickCount();
						
						SetCurrentTool(i);
					}
		}
				
	}
	
	RESTOREGWORLD;
}

void ToolPalette::HandleKeyDown(EventRecord *eventPtr)
{
	char	theKey;
	int		newTool = currentTool;
	
	theKey = eventPtr->message & charCodeMask; // the key that was pressed
	
	switch (theKey)
	{
		case 'N':
		case 'n': newTool = toolPen; break; // these are the tool shortcuts
		case 'E':
		case 'e': newTool = toolEraser; break;
		case 'I':
		case 'i': newTool = toolEyeDropper; break;
		case 'K':
		case 'k': newTool = toolFill; break;
		case 'M':
		case 'm': newTool = toolMarquee; break;
		case 'V':
		case 'v': newTool = toolMove; break;
		case 'L':
		case 'l': newTool = toolLasso; break;
		case 'W':
		case 'w': newTool = toolMagicWand; break;
		case 'Y':
		case 'y': newTool = toolLine; break;
		case 'R': if (currentTool == toolRectangle) ToggleFill();
		case 'r': newTool = toolRectangle; break;
		case 'O': if (currentTool == toolOval) ToggleFill();
		case 'o': newTool = toolOval; break;
		case 'P': if (currentTool == toolPolygon) ToggleFill();
		case 'p': newTool = toolPolygon; break;
		case 'G': if (currentTool == toolGradient) ToggleToolMode(toolGradient);
		case 'g': newTool = toolGradient; break;
		case 'T':
		case 't': newTool = toolText; break;
		case 'X':
		case 'x': SwapColors(); break;
		case 'D':
		case 'd': ResetColors(); break;
		case 'H':
		case 'h': newTool = toolPan; break;
		case 'Z':
		case 'z': newTool = toolZoom; break;
	}
	
	if (newTool != currentTool)
		SetCurrentTool(newTool);
}

#pragma mark -

int ToolPalette::GetTrueCurrentTool()
{
	if (oldTool != toolNone)
		return oldTool;
	else
		return currentTool;
}

int ToolPalette::GetCurrentTool()
{
	return currentTool;
}

bool ToolPalette::InToggleMode()
{
	return (oldTool != toolNone);
}

void ToolPalette::SetCurrentTool(int newTool)
{
	if (newTool < 0 || newTool >= kToolCount)
		newTool = toolPen;
	
	if (oldTool != toolNone)
	{
		SetControlValue(controls.tools[oldTool], 0);
		oldTool = toolNone;
	}
	else if (currentTool != toolNone)
		SetControlValue(controls.tools[currentTool], 0);
	SetControlValue(controls.tools[newTool], 1);
	currentTool = newTool;
	oldTool = toolNone;
	ChangeCursor(oldStatus);
	
	if (newTool == toolPen)
	{
		icnsEditorPtr	frontEditor;
		
		frontEditor = GetFrontEditor();
		
		if (frontEditor)
			frontEditor->lastPenClick.h = frontEditor->lastPenClick.v = -1;
	}
}

int ToolPalette::GetToolMode(int tool)
{
	return toolModes[tool];
}

void ToolPalette::ToggleToolMode(int tool)
{
	int		newIconID;
	
	if (toolModes[tool] == toolModeNone)
		return;
	else if (toolModes[tool] == toolModeEditor)
	{
		icnsEditorPtr	frontEditor;
		
		frontEditor = GetFrontEditor();
		
		if (frontEditor != NULL)
			frontEditor->HandleToolDoubleClick(tool);
		
		return;
	}
	
	if (toolModes[tool] == toolModeNormal)
	{
		newIconID = rTPToolModesBaseID + tool;
		toolModes[tool] = toolModeSpecial;
	}
	else
	{
		newIconID = rTPToolBaseID + tool;
		toolModes[tool] = toolModeNormal;
	}
	
	SetBevelButtonIcon(controls.tools[tool], newIconID);
	Draw1Control(controls.tools[tool]);
}

void ToolPalette::ToggleFill()
{
	ToggleToolMode(toolRectangle);
	ToggleToolMode(toolOval);
	ToggleToolMode(toolPolygon);
	
	if (GetToolMode(toolRectangle) == toolModeNormal)
		icnsEditorClass::statics.preferences.DisableFeature(prefsFilled);
	else
		icnsEditorClass::statics.preferences.EnableFeature(prefsFilled);
		
	Draw1Control(controls.fill);
}

#pragma mark -

void ToolPalette::SetColors(RGBColor* fore, RGBColor* back)
{
	if (fore != NULL) foreColor = *fore;
	if (back != NULL) backColor = *back;
	
	Update();
}

void ToolPalette::GetColors(RGBColor* fore, RGBColor* back)
{
	icnsEditorPtr	frontEditor;
	
	frontEditor = GetFrontEditor();
	
	if (frontEditor == NULL || (**frontEditor->currentPix).pixelSize == 32)
	{
		if (fore != NULL) *fore = foreColor;
		if (back != NULL) *back = backColor;
	}
	else
	{
		if (fore != NULL) *fore = GetNearestColor(foreColor, (**frontEditor->currentPix).pmTable);
		if (back != NULL) *back = GetNearestColor(backColor, (**frontEditor->currentPix).pmTable);
	}
}

void ToolPalette::SwapColors(void)
{
	RGBColor tempColor; 
	
	tempColor = foreColor;
	foreColor = backColor;
	backColor = tempColor;
	
	Update();
}

void ToolPalette::ResetColors(void)
{
	foreColor = kBlackAsRGB;
	backColor = kWhiteAsRGB;
	
	Update();
}

void ToolPalette::HandleSwatchClick(int controlPart, Point where)
{
	Str255			messageString;
		
	switch (controlPart)
	// we do different things based on the control part where the user
	// clicked
	{
		case kTPForeColor :
			GetIndString(messageString, rLabelStrings, sForeColor);
			
			PickColor(&foreColor, where, messageString);
			break;
		case kTPBackColor :
			// same as above, except for the background color
			GetIndString(messageString, rLabelStrings, sBackColor);
			
			PickColor(&backColor, where, messageString);
			break;
		case kTPSwapColors : SwapColors(); break;
		case kTPResetColors: ResetColors(); break;
	}
	
	Update();
	// we must now redraw the control since the colors have changed
}

void ToolPalette::PickColor(RGBColor* color, Point where, Str255 messageString)
{
	icnsEditorPtr	frontEditor;
	int				pixName;
	
	frontEditor = GetFrontEditor();
	if (frontEditor != NULL)
		pixName = frontEditor->currentPixName;
	else
		pixName = il32;
	
	switch (pixName)
	{
		case ich8: case icl8: case ics8:
		case h8mk: case l8mk: case s8mk: case t8mk:
		case ich4: case icl4: case ics4:
		case ichi: case icni: case icsi:
		case ichm: case icnm: case icsm:
			PixMapHandle 	pickerPix;
			GWorldPtr		pickerGW;
			RgnHandle		pickerRgn;
			
			icnsEditorClass::statics.GetPickerPix(pixName, frontEditor->colors, &pickerPix, &pickerGW, &pickerRgn);
			
			colorPicker->SetPicker(pickerPix, pickerGW, pickerRgn, (**frontEditor->currentPix).pmTable);
			
			LocalToGlobal(&where);
			colorPicker->Track(color, where);
			
			break;
		default:
			if (TrackControl(controls.colorSwatch, where, NULL))
			{
				Point location = {0, 0};
				
				MWindow::DeactivateAll();
				::GetColor(location,
						   messageString,
						   color,
						    color);
				MWindow::ActivateAll();
			}					 
			break;
	}
}

void ToolPalette::Update()
{
	Draw1Control(controls.patterns);
	Draw1Control(controls.colorSwatch);
	if (icnsEditorClass::statics.colorsPalette->IsVisible())
		icnsEditorClass::statics.colorsPalette->SetColors(foreColor, backColor);
}

#pragma mark -

void ToolPalette::CreateControls()
{
	Rect						controlRect;
	
	CreateRootControl(window, &controls.root);
	
	for (int i=0; i < kToolCount; i++)
		controls.tools[i] = GetNewControl(rTPToolBaseID + i, window);
	
	lineThicknessMenu = GetMenu(rTPLineThickness);
	controls.lineThickness = NewEnhancedPlacard(rTPLineThickness, window, enhancedPlacardMenuAtBottom, applFont, 9,
												"\p", NULL, false, lineThicknessMenu,
												icnsEditorClass::statics.canvasGW, icnsEditorClass::statics.canvasPix,
												LineThicknessUpdate, this);
	antiAliasingMenu = GetMenu(rTPAntiAliasing);
	controls.antiAliasing = NewEnhancedPlacard(rTPAntiAliasing, window, enhancedPlacardMenuAtBottom, applFont, 9,
											   "\p", NULL, true, antiAliasingMenu,
											   icnsEditorClass::statics.canvasGW, icnsEditorClass::statics.canvasPix,
											   AntiAliasingUpdate, this);										   
	fillMenu = GetMenu(rTPFill);
	controls.fill = NewEnhancedPlacard(rTPFill, window, enhancedPlacardMenuAtBottom, applFont, 9,
									   "\p", NULL, true, fillMenu,
									   icnsEditorClass::statics.canvasGW, icnsEditorClass::statics.canvasPix,
									   FillUpdate, this);
									   
	controls.backgroundPane = GetNewControl(rTPBackgroundPane, window);
	SetControlUserPaneDraw(controls.backgroundPane, BackgroundPaneDraw);
	//SetControlUserPaneHitTest(controls.backgroundPane, GenericHitTest);
	
	controls.colorSwatch = GetNewControl(rTPColorSwatch, window);
	EmbedControl(controls.colorSwatch, controls.backgroundPane);
	SetControlUserPaneDraw(controls.colorSwatch, ColorSwatchDraw);
	SetControlUserPaneHitTest(controls.colorSwatch, ColorSwatchHitTest);
	//SetControlBalloonHelp(controls.colorSwatch.control, 18);
	
	// here we create the rects that determine the subareas of the control
	GetControlBounds(controls.colorSwatch, &controlRect);
	MakeColorSwatchRects(controlRect, colorSwatchRects);
	
	controls.patterns = GetNewControl(rTPPatterns, window);
	EmbedControl(controls.patterns, controls.backgroundPane);
	SetControlUserPaneDraw(controls.patterns, PatternsDraw);
	SetControlUserPaneHitTest(controls.patterns, PatternsHitTest);
	//SetControlBalloonHelp(controls.patterns, 24);
}

#pragma mark -

void ToolPalette::HandlePatternsClick(Point where)
{
	LocalToGlobal(&where);
	
	patternPicker->SetPatterns(rDrawingPatterns, 24, 2, 16, 16);
	patternPicker->Track(&pattern, where);
	
	Draw1Control(controls.patterns);
	Draw1Control(controls.colorSwatch);
	/*pattern = XYMenu(where,
					 window,
					 2, 12,				// rows, cols of slots
					 16, 16,			// width, height of 1 slot
					 pattern + 1,		// current selection
					 border,			// border options
					 PatternMenuDraw,	// drawing function
					 PatternMenuUpdate,	// updating function
					 this)				// client data
					 - 1;
	
	Draw1Control(controls.patterns);*/
}

Pattern ToolPalette::GetPattern()
{
	Pattern returnPattern;
	
	GetIndPattern(&returnPattern, rDrawingPatterns, pattern + 1);
	
	return returnPattern;
}

int ToolPalette::GetPatternIndex()
{
	return pattern;
}

void ToolPalette::SetPatternIndex(int newPattern)
{
	pattern = newPattern;
	
	Draw1Control(controls.patterns);
}

#pragma mark -

pascal void	ToolPalette::ColorSwatchDraw(ControlHandle theControl,SInt16 thePart)
{
#pragma unused(thePart)
	
	ToolPalettePtr	parent; // the editor which owns this control
	RGBColor		foreColor, backColor;
	Rect			tempRect, controlRect, canvasRect;
	int				copyMode = srcCopy;
	
	SAVECOLORS; // we'll be changing the foreground/background colors
	SAVEGWORLD;
	
	parent = (ToolPalettePtr)::GetWindow(GetControlOwner(theControl));
	
	GetControlBounds(theControl, &controlRect);
	canvasRect = controlRect;
	
	if (!parent->IsBuffered())
	{
		SetGWorld(icnsEditorClass::statics.canvasGW, NULL);
		OffsetRect(&canvasRect, -canvasRect.left, -canvasRect.top);
	}
	else
	{
		parent->LockPortBits();
		parent->SetPort();
	}
	
	tempRect = canvasRect;
	InsetRect(&tempRect, -3, -3);
	/*if (IsControlActive(theControl))
		DrawThemePlacard(&tempRect, kThemeStateActive);
	else
		DrawThemePlacard(&tempRect, kThemeStateInactive);*/
	SetUpControlBackground(theControl, 32, true);
	EraseRect(&tempRect);
	
	parent->GetColors(&foreColor, &backColor);
	
	// first we draw the background color swatch (since it must appear underneath)
	tempRect = parent->colorSwatchRects[kTPBackColor];
	OffsetRect(&tempRect, -(controlRect.left - canvasRect.left), -(controlRect.top - canvasRect.top));
	DrawImageWell(theControl, tempRect);
	ForeColor(whiteColor);
	PaintRect(&tempRect);
	RGBForeColor(&backColor);
	InsetRect(&tempRect, 1, 1);
	PaintRect(&tempRect);
	
	// then (partially on top of it) we draw the foreground color swatch
	tempRect = parent->colorSwatchRects[kTPForeColor];
	OffsetRect(&tempRect, -(controlRect.left - canvasRect.left), -(controlRect.top - canvasRect.top));
	DrawImageWell(theControl, tempRect);
	ForeColor(whiteColor);
	PaintRect(&tempRect);
	RGBForeColor(&foreColor);
	InsetRect(&tempRect, 1, 1);
	PaintRect(&tempRect);
	
	RESTORECOLORS; // we're done with the color changing
	
	if (!parent->IsActive())
	{
		RGBColor opColor = {0xFFFF/2, 0xFFFF/2, 0xFFFF/2};
		OpColor(&opColor);
		copyMode = blend;
	}
	
	// now we can draw the swap colors widget
	tempRect = parent->colorSwatchRects[kTPSwapColors];
	OffsetRect(&tempRect, -(controlRect.left - canvasRect.left), -(controlRect.top - canvasRect.top));
	PlotCIconWithMode(&tempRect, parent->swapColorsIcon, copyMode);
	
	// same as above, except for the reset color widget
	tempRect = parent->colorSwatchRects[kTPResetColors];
	OffsetRect(&tempRect, -(controlRect.left - canvasRect.left), -(controlRect.top - canvasRect.top));
	PlotCIconWithMode(&tempRect, parent->resetColorsIcon, copyMode);
	
	ForeColor(blackColor);
	BackColor(whiteColor);
		
	RESTOREGWORLD;
	
	if (!parent->IsActive())
	{
		OpColor(&kWhiteAsRGB);
	}
	
	if (!parent->IsBuffered())
		CopyBits((BitMap*)*icnsEditorClass::statics.canvasPix,
				 GetPortBitMapForCopyBits(GetQDGlobalsThePort()),
				 &canvasRect,
				 &controlRect,
				 srcCopy,
				 NULL);
	else
		parent->UnlockPortBits();
	
	RESTORECOLORS;
}

// __________________________________________________________________________________________
// Name			: ColorSwatchHitTest
// Input		: theControl: the color swatch control for which we must do hit testing
//				  where: the location of the click
// Output		: ControlPartCode: the part (if any) of the control that was hit
// Description	: This function checks to see if the click occured inside the color swatch
//				  control, and if it did in what part

pascal ControlPartCode ToolPalette::ColorSwatchHitTest(ControlHandle theControl, Point where)
{
	ToolPalettePtr	parent; // editor which owns the control
	
	parent = (ToolPalettePtr)::GetWindow(GetControlOwner(theControl));
	if (parent == NULL) // no editor, no use hit testing
		return kControlNoPart;
	
	// going through all of the rectangles which make up the control..
	if (PtInRect(where, &parent->colorSwatchRects[kTPForeColor]))
		return kTPForeColor;
	else if (PtInRect(where, &parent->colorSwatchRects[kTPBackColor]))
		return kTPBackColor;
	else if (PtInRect(where, &parent->colorSwatchRects[kTPSwapColors]))
		return kTPSwapColors;
	else if (PtInRect(where,&parent->colorSwatchRects[kTPResetColors]))
		return kTPResetColors;
	else
		return kControlNoPart;
}

void ToolPalette::MakeColorSwatchRects(Rect controlRect, Rect rects[])
{
	int 	thirdOfHeight, // used in the determing the size of the color swatches (which are
			thirdOfWidth; // two thirds of the width and height of the whole control)
	Rect	iconRect; // the rectangle of the icons which are used as labels for the widgets
	int		iconWidth, // the dimensions of the above rectangle
			iconHeight;
	
	InsetRect(&controlRect, 1, 1);
	
	// first we must set up these variables
	thirdOfHeight = (controlRect.bottom - controlRect.top)/3 + 1;
	thirdOfWidth = (controlRect.right - controlRect.left)/3 + 1;
	
	// the background color swatch goes into the bottom right corner
	rects[kTPBackColor] = controlRect;
	rects[kTPBackColor].top += thirdOfHeight;
	rects[kTPBackColor].left += thirdOfWidth;
	InsetRect(&rects[kTPBackColor], 1, 1);
	
	// the foreground color swatch goes into the top left corner
	rects[kTPForeColor] = controlRect;
	rects[kTPForeColor].bottom -= thirdOfHeight;
	rects[kTPForeColor].right -= thirdOfWidth;
	InsetRect(&rects[kTPForeColor], 1, 1);
	
	// the swap colors widget rect goes into the top right corner
	iconRect = (**swapColorsIcon).iconPMap.bounds;
	iconWidth = iconRect.right - iconRect.left;
	iconHeight = iconRect.bottom - iconRect.top;
	rects[kTPSwapColors] = controlRect;
	rects[kTPSwapColors].left = rects[kTPSwapColors].right - iconWidth;
	rects[kTPSwapColors].bottom = rects[kTPSwapColors].top + iconHeight;
	
	// the reset colors widget goes into the bottom left corner
	iconRect = (**resetColorsIcon).iconPMap.bounds;
	iconWidth = iconRect.right - iconRect.left;
	iconHeight = iconRect.bottom - iconRect.top;
	rects[kTPResetColors] = controlRect;
	rects[kTPResetColors].right = rects[kTPResetColors].left + iconWidth;
	rects[kTPResetColors].top = rects[kTPResetColors].bottom - iconHeight;
}

pascal void ToolPalette::SwatchUpdate(RGBColor* color, void *clientData)
{
#pragma unused (color)
	ToolPalettePtr	parent;
	
	parent = (ToolPalettePtr)clientData;
	
	parent->Update();
}

#pragma mark -

pascal void	ToolPalette::PatternsDraw(ControlHandle theControl,SInt16 thePart)
{
#pragma unused(thePart) // unused parameter

	ToolPalettePtr	parent;
	RGBColor		foreColor, backColor;
	Pattern			pattern;
	Rect			tempRect, controlRect, canvasRect;
	
	
	parent = (ToolPalettePtr)::GetWindow(GetControlOwner(theControl));
	
	parent->GetColors(&foreColor, &backColor);
	
	
	GetControlBounds(theControl, &controlRect);
	canvasRect = controlRect;
	
	SAVEGWORLD;
	SAVECOLORS; // we'll be changing the foreground/background colors
	
	if (!parent->IsBuffered())
	{
		SetGWorld(icnsEditorClass::statics.canvasGW, NULL);
		OffsetRect(&canvasRect, -canvasRect.left, -canvasRect.top);
	}
	else
	{
		parent->LockPortBits();
		parent->SetPort();
	}
	
	tempRect = canvasRect;
	InsetRect(&tempRect, -3, -3);
	
	SetUpControlBackground(theControl, 32, true);
	EraseRect(&tempRect);
	
	tempRect = canvasRect;
	InsetRect(&tempRect, 2, 2);
	DrawImageWell(theControl, tempRect);
	EraseRect(&tempRect);
	
	InsetRect(&tempRect, 1, 1);
	
	RGBForeColor(&foreColor);
	RGBBackColor(&backColor);
	
	GetIndPattern(&pattern, rDrawingPatterns, parent->pattern + 1);
	FillRect(&tempRect, &pattern);
	
	ForeColor(blackColor);
	BackColor(whiteColor);
	
	RESTOREGWORLD;
	
	if (!parent->IsBuffered())
		CopyBits((BitMap*)*icnsEditorClass::statics.canvasPix,
			     GetPortBitMapForCopyBits(GetQDGlobalsThePort()),
			     &canvasRect,
			     &controlRect,
			     srcCopy,
			     NULL);
	else
		parent->UnlockPortBits();
	
	RESTORECOLORS;
}

pascal ControlPartCode ToolPalette::PatternsHitTest(ControlHandle theControl, Point where)
{
	Rect			controlRect;
	
	GetControlBounds(theControl, &controlRect);
	
	if (PtInRect(where, &controlRect))
		return kControlIndicatorPart;
	else
		return kControlNoPart;
}

/*pascal void ToolPalette::PatternMenuDraw(int number, int x, int y, int width, int height, void* clientData)
{
	Pattern 		pattern;
	Rect			patternRect;
	ToolPalettePtr	parent;
	RGBColor		foreColor, backColor;
	
	SAVECOLORS;
	parent = (ToolPalettePtr)clientData;
	
	GetIndPattern(&pattern, rDrawingPatterns, number + 1);
	
	parent->GetColors(&foreColor, &backColor);
	
	RGBForeColor(&foreColor);
	RGBBackColor(&backColor);
	
	SetRect(&patternRect, x, y, x + width, y + height);
	FillRect(&patternRect, &pattern);
	
	RESTORECOLORS;
}

pascal void ToolPalette::PatternMenuUpdate(int selection, void* clientData)
{
	ToolPalettePtr parent;
	
	parent = (ToolPalettePtr)clientData;
	parent->pattern = selection - 1;
	
	Draw1Control(parent->controls.patterns);
}*/

#pragma mark -

void ToolPalette::LineThicknessUpdate(struct EnhancedPlacardData* data, int flags)
{
	if (flags & enhancedPlacardUpdateState)
	{
		Rect 			pictureRect = {0, 0, 13, 13};
		OpenCPicParams	picParams;
		int				thickness;
		
		if (data->picture != NULL)
			KillPicture(data->picture);
		
		picParams.srcRect = pictureRect;
		picParams.hRes =  0x00480000;
		picParams.vRes =  0x00480000;
		picParams.version = -2;
		picParams.reserved1 = 0;
		picParams.reserved2 = 0;
		
		data->picture = OpenCPicture(&picParams);
		
		thickness = icnsEditorClass::statics.preferences.GetLineThickness();
		
		MoveTo(0, 6 - (float(thickness)/2.0 + 0.5));
		PenSize(thickness, thickness);
		LineTo(13 - thickness, 6 - (float(thickness)/2.0 + 0.5));
		
		ClosePicture();
		
		for (int i=1; i <= CountMenuItems(data->menu); i++)
		{
			if (i == icnsEditorClass::statics.preferences.GetLineThickness())
				CheckMenuItem(data->menu, i, true);
			else
				CheckMenuItem(data->menu, i, false);
		}
	}
	else
	{
		icnsEditorClass::statics.preferences.SetLineThickness(data->menuValue);
	}
}

void ToolPalette::AntiAliasingUpdate(struct EnhancedPlacardData* data, int flags)
{
	if (flags & enhancedPlacardUpdateState)
	{
		if (icnsEditorClass::statics.preferences.FeatureEnabled(prefsAntiAlias))
		{
			CheckMenuItem(data->menu, iTPAliased, false);
			CheckMenuItem(data->menu, iTPAntiAliased, true);
			data->menuValue = iTPAntiAliased;
			data->picture = icnsEditorClass::statics.antiAliasedPic;
		}
		else
		{
			CheckMenuItem(data->menu, iTPAliased, true);
			CheckMenuItem(data->menu, iTPAntiAliased, false);
			data->menuValue = iTPAliased;
			data->picture = icnsEditorClass::statics.aliasedPic;
		}
	}
	else
	{
		if (data->menuValue == iTPAliased)
			icnsEditorClass::statics.preferences.DisableFeature(prefsAntiAlias);
		else
			icnsEditorClass::statics.preferences.EnableFeature(prefsAntiAlias);
	}
}

void ToolPalette::FillUpdate(struct EnhancedPlacardData* data, int flags)
{
	ToolPalettePtr	parent;
	
	parent = ToolPalettePtr(data->clientData);
	
	if (flags & enhancedPlacardUpdateState)
	{
		if (icnsEditorClass::statics.preferences.FeatureEnabled(prefsFilled))
		{
			CheckMenuItem(data->menu, iTPUnfilled, false);
			CheckMenuItem(data->menu, iTPFilled, true);
			data->menuValue = iTPFilled;
			data->picture = icnsEditorClass::statics.filledPic;
			
			if (parent->GetToolMode(toolRectangle) == toolModeNormal) parent->ToggleToolMode(toolRectangle);
			if (parent->GetToolMode(toolOval) == toolModeNormal) parent->ToggleToolMode(toolOval);
			if (parent->GetToolMode(toolPolygon) == toolModeNormal) parent->ToggleToolMode(toolPolygon);
		}
		else
		{
			CheckMenuItem(data->menu, iTPUnfilled, true);
			CheckMenuItem(data->menu, iTPFilled, false);
			data->menuValue = iTPUnfilled;
			data->picture = icnsEditorClass::statics.unfilledPic;
			
			if (parent->GetToolMode(toolRectangle) != toolModeNormal) parent->ToggleToolMode(toolRectangle);
			if (parent->GetToolMode(toolOval) != toolModeNormal) parent->ToggleToolMode(toolOval);
			if (parent->GetToolMode(toolPolygon) != toolModeNormal) parent->ToggleToolMode(toolPolygon);
		}
	}
	else
	{
		if (data->menuValue == iTPUnfilled)
			icnsEditorClass::statics.preferences.DisableFeature(prefsFilled);
		else
			icnsEditorClass::statics.preferences.EnableFeature(prefsFilled);
	}
}

#pragma mark -

pascal void	ToolPalette::BackgroundPaneDraw(ControlHandle theControl,SInt16 thePart)
{
#pragma unused (thePart)
	Rect controlRect;
	
	GetControlBounds(theControl, &controlRect);
	if (IsControlActive(theControl))
		DrawThemePlacard(&controlRect, kThemeStateActive);
	else
		DrawThemePlacard(&controlRect, kThemeStateInactive);
	

}
