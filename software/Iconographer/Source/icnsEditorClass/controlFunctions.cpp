// __________________________________________________________________________________________
// Program		: Icon Mangler
// Filename		: controlFunctions.cpp (C++)
// Author		: Mihai Parparita (St. Mary's International School)
// Last modified: April 1, 1999
// Description	: This file has all the custom functions for my custom controls (such as
//				  the color swatch, the display and the edit well).

#include "icnsEditorClass.h"
#include "editorStaticsClass.h"

pascal void PlacardDraw(ControlHandle theControl,SInt16 thePart)
{
#pragma unused (thePart)

	Rect placardRect;
	icnsEditorPtr parentEditor;
	Str255	placardText;
	int h, v;
	
	parentEditor = GetEditor((**theControl).contrlOwner);
	
	placardRect = (**theControl).contrlRect;
	
	if (theControl == parentEditor->controls.zoomPlacard.control)
		CopyString(placardText, parentEditor->controls.zoomPlacard.text);
	else if (theControl == parentEditor->controls.infoPlacard.control)
		CopyString(placardText, parentEditor->controls.infoPlacard.text);
	
	TextSize(9);
	
	h = placardRect.left + (placardRect.right - placardRect.left - StringWidth(placardText))/2;
	v = placardRect.bottom - (placardRect.bottom - placardRect.top - StringHeight(placardText))/2 - 2;
	
	
	SAVECOLORS;
	
	switch ((**theControl).contrlHilite)
	{
		case kControlNoPart:
			DrawThemePlacard(&placardRect, kThemeStateActive); 
			SetThemeTextColor(kThemeTextColorPlacardActive, 32, true);
			break;
		case kControlIndicatorPart:
			DrawThemePlacard(&placardRect, kThemeStatePressed);
			SetThemeTextColor(kThemeTextColorPlacardPressed, 32, true);
			break;
		case kControlInactivePart:
			DrawThemePlacard(&placardRect, kThemeStateInactive);
			SetThemeTextColor(kThemeTextColorPlacardInactive, 32, true);
			break;
	}
	
	MoveTo(h, v);

	DrawString(placardText);
	
	RESTORECOLORS;
	
	TextSize(12);
	
	
}

pascal ControlPartCode PlacardHitTest(ControlHandle theControl, Point where)
{
	if (PtInRect(where, &(**theControl).contrlRect))
		return kControlIndicatorPart;
	else
		return kControlNoPart;
}

pascal ControlPartCode	PlacardTracking(ControlHandle theControl, Point startPt, ControlActionUPP actionProc)
{
#pragma unused (startPt, actionProc)
	Point theMouse;
	while (Button())
	{
		GetMouse(&theMouse);
		if (PtInRect(theMouse, &(**theControl).contrlRect) && ((**theControl).contrlHilite != kControlIndicatorPart))
		{
			(**theControl).contrlHilite = kControlIndicatorPart;
			Draw1Control(theControl);
		}
		else if (!PtInRect(theMouse, &(**theControl).contrlRect) && (**theControl).contrlHilite != kControlNoPart)
		{
			(**theControl).contrlHilite = kControlNoPart;
			Draw1Control(theControl);
		}
	}
	
	(**theControl).contrlHilite = kControlNoPart;
	Draw1Control(theControl);
	
	if (PtInRect(theMouse, &(**theControl).contrlRect))
		return kControlIndicatorPart;
	else
		return kControlNoPart;
}


// __________________________________________________________________________________________
// Name			: EditWellDraw
// Input		: theControl: edit well control which we must redraw
//				  thePart: control part which we must draw (ignored)
// Output		: None
// Description	: This is the function which takes care of the drawing of the edit well, where
//				  the magnified icon is displayed, and where the icon takes place. Since this
//				  function is passed to the Control Manager as a custom user procedure, it needs
//				  to follow the pascal paramters passing format, and it has the parameters set

pascal void	EditWellDraw(ControlHandle theControl,SInt16 thePart)
{
	thePart; // unused parameter
	
	icnsEditorPtr	parentEditor; // the editor to which this control belongs
	
	parentEditor = GetEditor((**theControl).contrlOwner);
	// get get the editor associated with the control's owner (the window)
	
	if (parentEditor != NULL) // if there is an editor
	{
		DrawImageWell(theControl, (**theControl).contrlRect); // then we draw the image well
		parentEditor->Display((**theControl).contrlRect, current);
		// and inside it the magnified icon
	}
}

// __________________________________________________________________________________________
// Name			: EditWellHitTest
// Input		: control: the control which we must handle the hit-testing
//				  where: the point (in terms of the current window) where the click was
// Output		: ControlPartCode: the control part (if any) where the click took place
// Description	: This function determines if the click hit this control. This is a custom
//				  user procedure too.

pascal ControlPartCode EditWellHitTest(ControlHandle control, Point where)
{
	if (PtInRect(where, &(**control).contrlRect))
	// if the click was in the control's rectangle, then we're inside
		return kControlImageWellPart;
	else // otherwise we're not
		return kControlNoPart;
}

// __________________________________________________________________________________________
// Name			: DisplayDraw
// Input		: theControl: display control which we must redraw
//				  thePart: control part which we must draw (ignored)
// Output		: None
// Description	: This function takes care of drawing the display (the side control used for
//				  switching among icons/depths)

pascal void DisplayDraw(ControlHandle theControl,SInt16 thePart)
{
	thePart; // unused parameter
	
	icnsEditorPtr	parentEditor; // the editor which this control belongs
	Rect			controlRect;
	GWorldPtr		tempGW;
	PixMapHandle	tempPix;
	
	parentEditor = GetEditor((**theControl).contrlOwner);
	
	if (parentEditor == NULL) // if there isn't a parent editor, then we have nothing to do
		return;
	
	SAVEGWORLD;
	SAVECOLORS;
		
	controlRect = (**theControl).contrlRect;
	InsetRect(&controlRect, -2, -2);
	
	NewGWorld(&tempGW, 32, &controlRect, NULL, NULL, 0);
	tempPix = GetGWorldPixMap(tempGW);
	LockPixels(tempPix);
	SetGWorld(tempGW, NULL);
	
	//RGBBackColor(&oldBackColor);
	//EraseRect(&controlRect);
	//BackColor(whiteColor);
	
	DrawDialogBackground(theControl, controlRect);
	
	if (theControl == parentEditor->controls.display.iconDisplay)
	// if the control we're drawing is the icon display
	{
		// the reason why the "huge" slot needs a special rectangle is because it is bigger
		// than the 48 x 48 icon (it's 52 x 52) and thus we need to center the drawing
		// inside it (which is what MakeTargetRectDoes)
		
		// now we can draw the image wells
		DrawImageWell(theControl, parentEditor->controls.display.iconHugeRect);
		DrawImageWell(theControl, parentEditor->controls.display.iconLargeRect);
		DrawImageWell(theControl, parentEditor->controls.display.iconSmallRect);
		
		// and here we can draw the contents, based on the current depth
		switch (GetControlValue(parentEditor->controls.display.iconPopup))
		{
			case k32BitIcon:
				DrawDisplayItem(parentEditor, parentEditor->controls.display.iconHugeRect, ih32);
				DrawDisplayItem(parentEditor, parentEditor->controls.display.iconLargeRect, il32);
				DrawDisplayItem(parentEditor, parentEditor->controls.display.iconSmallRect, is32);
				break;
			case k8BitIcon:
				DrawDisplayItem(parentEditor, parentEditor->controls.display.iconHugeRect, ich8);
				DrawDisplayItem(parentEditor, parentEditor->controls.display.iconLargeRect, icl8);
				DrawDisplayItem(parentEditor, parentEditor->controls.display.iconSmallRect, ics8);
				break;
			case k4BitIcon:
				DrawDisplayItem(parentEditor, parentEditor->controls.display.iconHugeRect, ich4);
				DrawDisplayItem(parentEditor, parentEditor->controls.display.iconLargeRect, icl4);
				DrawDisplayItem(parentEditor, parentEditor->controls.display.iconSmallRect, ics4);
				break;
			case k1BitIcon:
				DrawDisplayItem(parentEditor, parentEditor->controls.display.iconHugeRect, ichi);
				DrawDisplayItem(parentEditor, parentEditor->controls.display.iconLargeRect, icni);
				DrawDisplayItem(parentEditor, parentEditor->controls.display.iconSmallRect, icsi);
				break;
		}
	}
	else // otherwise its the mask display
	{
		// same thing as above, except we're dealing with the mask depths
		
		DrawImageWell(theControl, parentEditor->controls.display.maskHugeRect);
		DrawImageWell(theControl, parentEditor->controls.display.maskLargeRect);
		DrawImageWell(theControl, parentEditor->controls.display.maskSmallRect);
		
		switch (GetControlValue(parentEditor->controls.display.maskPopup))
		{
			case k8BitMask:
				DrawDisplayItem(parentEditor, parentEditor->controls.display.maskHugeRect, h8mk);
				DrawDisplayItem(parentEditor, parentEditor->controls.display.maskLargeRect, l8mk);
				DrawDisplayItem(parentEditor, parentEditor->controls.display.maskSmallRect, s8mk);
				break;
			case k1BitMask:
				DrawDisplayItem(parentEditor, parentEditor->controls.display.maskHugeRect, ichm);
				DrawDisplayItem(parentEditor, parentEditor->controls.display.maskLargeRect, icnm);
				DrawDisplayItem(parentEditor, parentEditor->controls.display.maskSmallRect, icsm);
				break;
		}
	}
	
	RESTOREGWORLD;
	
	CopyBits((BitMap*)*tempPix,
			 &qd.thePort->portBits,
			 &controlRect,
			 &controlRect,
			 srcCopy,
			 NULL);
			 
	UnlockPixels(tempPix);
	DisposeGWorld(tempGW);
	
	RESTORECOLORS;
}

// __________________________________________________________________________________________
// Name			: DrawDisplayItem
// Input		: parentEditor: the editor for which we'll be drawing
//				  targetRect: the rectangle into which we'll be drawing the contents
//				  targetName: the contents of the rectangle
// Output		: None
// Description	: Draws the contents of the specified icon part into the specified rectangle,
//				  and adds a focus rect if this is the current editor

void DrawDisplayItem(icnsEditorPtr parentEditor, Rect targetRect, long targetName)
{		
	Rect drawRect;
	
	SAVECOLORS;
	EraseRect(&targetRect);
	RESTORECOLORS;
	
	drawRect = targetRect;
	
	switch (drawRect.right - drawRect.left)
	{
		case 58:
			 InsetRect(&drawRect, 5, 5);
			 break;
		default:
			InsetRect(&drawRect, 1, 1);
			break;
	}
		
	if (targetName == parentEditor->currentPixName)
	{
		if ((**parentEditor->controls.display.iconDisplay).contrlHilite == kActiveHilite)
			DrawThemeFocusRect(&targetRect, true);
	}
	
	parentEditor->Display(drawRect, targetName);
}

// __________________________________________________________________________________________
// Name			: DisplayHitTest
// Input		: theControl: the display control for which we must perfrom the hit test
//				  where: the Point where the click occured
// Output		: ControlPartCode: in which part (if any) the control was hit
// Description	: Based on the input coordinate, this function determines which size (if any)
//				  was hit

pascal ControlPartCode DisplayHitTest(ControlHandle theControl, Point where)
{
	icnsEditorPtr	parentEditor; // the editor which this control belongs to
	
	parentEditor = GetEditor((**theControl).contrlOwner);
	
	if (parentEditor == NULL) // no owner, we're not gonna bother
		return kControlNoPart;
	
	//if (theControl == parentEditor->controls.display.iconDisplay)
	// if the click was in the icon display, then we hit test that
	//{
		if (PtInRect(where, &parentEditor->controls.display.iconHugeRect))
			return kDisplayHugePart;
		if (PtInRect(where, &parentEditor->controls.display.iconLargeRect))
			return kDisplayLargePart;
		if (PtInRect(where, &parentEditor->controls.display.iconSmallRect))
			return kDisplaySmallPart;
	//}
	//else // otherwise we test the mask display
	//{
		if (PtInRect(where, &parentEditor->controls.display.maskHugeRect))
			return kDisplayHugePart;
		if (PtInRect(where, &parentEditor->controls.display.maskLargeRect))
			return kDisplayLargePart;
		if (PtInRect(where, &parentEditor->controls.display.maskSmallRect))
			return kDisplaySmallPart;
	//}
	
	// if we still haven't exited, then we haven't hit anything
	return kControlNoPart;
}

// __________________________________________________________________________________________
// Name			: MakeDisplyRects
// Input		: controlRect: the rectangle of the whole control, which we will divide up
// Output		: hugeRect, largeRect, smallRect: the rectangles for the divided up parts
// Description	: This function divides up the display into parts for each icon size, which
//				  can then be used for hit testing, drawing, etc

void MakeDisplayRects(Rect controlRect,
					  Rect *hugeRect,
					  Rect *largeRect,
					  Rect *smallRect)
{
	
	// the huge rectangle is a square at the top
	*hugeRect = controlRect;
	hugeRect->bottom = hugeRect->top + (hugeRect->right - hugeRect->left);
	
	// the large rectangle is a 36 x 36 square, on the bottom left side
	*largeRect = controlRect;
	largeRect->top = largeRect->bottom - 36;
	largeRect->right = largeRect->left + 36;
	
	// the small rectangle is a 20 by 20 square across from the large one
	*smallRect = controlRect;
	smallRect->top = smallRect->bottom - 36;
	smallRect->bottom = smallRect->top + 20;
	smallRect->left = smallRect->right - 20;

	// we now inset the rectangles by 1 on each side to get them to their proper size (and
	// make sure that there is a 2 pixel space between them)	
	InsetRect(hugeRect, 1, 1);
	InsetRect(largeRect, 1, 1);
	InsetRect(smallRect, 1, 1);
}

// __________________________________________________________________________________________
// Name			: PreviewDraw
// Input		: theControl: the preview control which we must draw
//				  thePart: the control part which we must draw (ignored)
// Output		: None
// Description	: This function draws the preview, which is an image well filled with the
//				  desktop pattern in which we will draw the merged icon and mask for the
//				  currently selected icon and mask depths

pascal void PreviewDraw(ControlHandle theControl,SInt16 thePart)
{
	thePart; // unused parameter
	
	PixPatHandle		desktopPattern; // the desktop pattern, which will be used for filling
	Rect				controlRect, // the bounds of the whole control
						leftDisplayRect,
						rightDisplayRect,
						tempRect;
	GWorldPtr			iconGW, maskGW;
	PixMapHandle		iconPix, maskPix;
	icnsEditorPtr		parentEditor; // the owner of the control
	long				iconSrc, maskSrc; // and mask, based on the
										  // current selections
	
	parentEditor = GetEditor((**theControl).contrlOwner);
	if (parentEditor == NULL) // no use drawing without a parent editor
		return;
	
	parentEditor->GetCurrentIconMask(&iconPix, &iconGW, &iconSrc, &maskPix, &maskGW, &maskSrc);
	
	// getting the control rect, and insetting it by one (since the image well has a border)
	controlRect = (**theControl).contrlRect;
	InsetRect(&controlRect, 1, 1);
	
	// we don't dispose since the handle is held by the system, we just got a reference to it
	
	GWorldPtr tempGW;
	PixMapHandle tempPix;
	SAVEGWORLD;
	SAVECOLORS;
	
	tempRect = controlRect;
	InsetRect(&tempRect, -2, -2);
	
	NewGWorld(&tempGW, 32, &tempRect, NULL, NULL, 0);
	tempPix = GetGWorldPixMap(tempGW);
	LockPixels(tempPix);
	SetGWorld(tempGW, NULL);
	// we draw the image well
	RGBBackColor(&oldBackColor);
	EraseRect(&tempRect);
	BackColor(whiteColor);
	DrawImageWell(theControl, controlRect);
	
	// then the destop pattern
	tempRect = controlRect;
	tempRect.left += (tempRect.right - tempRect.left)/2;
	desktopPattern = LMGetDeskCPat();
	HLock((Handle)desktopPattern);
	FillCRect(&tempRect, desktopPattern);
	HUnlock((Handle)desktopPattern);
	
	rightDisplayRect = (**parentEditor->currentPix).bounds;
	MakeTargetRect(tempRect, &rightDisplayRect);
	
	tempRect = controlRect;
	tempRect.right -= (tempRect.right - tempRect.left)/2;
	EraseRect(&tempRect);
	leftDisplayRect = (**parentEditor->currentPix).bounds;
	MakeTargetRect(tempRect, &leftDisplayRect);
	
	if (parentEditor->controls.display.previewMode == previewNormal)
	{
		parentEditor->Display(leftDisplayRect, iconSrc + maskSrc);
		parentEditor->Display(rightDisplayRect, iconSrc + maskSrc);
	}
	else
	{
		parentEditor->Display(leftDisplayRect, iconSrc + maskSrc + selected);
		parentEditor->Display(rightDisplayRect, iconSrc + maskSrc + selected);
	}
	RGBColor borderColor;
	Point samplePoint;
	
	samplePoint.h = controlRect.left + (controlRect.right - controlRect.left)/2;
	samplePoint.v = controlRect.top - 1;
	
	GetCPixel(samplePoint.h, samplePoint.v, &borderColor);
	
	RGBForeColor(&borderColor);
	MoveTo(samplePoint.h, samplePoint.v);
	samplePoint.v += controlRect.bottom - controlRect.top;
	LineTo(samplePoint.h, samplePoint.v);
	ForeColor(blackColor);
	
	CopyBits((BitMap*)*tempPix,
			  &(**theControl).contrlOwner->portBits,
			  &(**tempPix).bounds,
			  &(**tempPix).bounds,
			  srcCopy,
			  (**theControl).contrlOwner->visRgn);
			  
	RESTOREGWORLD;
	RESTORECOLORS;
	
	UnlockPixels(tempPix);
	DisposeGWorld(tempGW);
}

// __________________________________________________________________________________________
// Name			: PreviewHitTest
// Input		: theControl: the preview control for which we must preform hit tests
//				  where: the point where the click occured
// Output		: None
// Description	: Normally this function would see if clicks took place within this control,
//				  but for the moment we ignore all clicks, so it returns no part automatically

pascal ControlPartCode PreviewHitTest(ControlHandle theControl, Point where)
{
	if (PtInRect(where, &(**theControl).contrlRect))
		return kControlImageWellPart;
	else
		return kControlNoPart;
}

pascal ControlPartCode PreviewTracking(ControlHandle theControl, Point startPt, ControlActionUPP actionProc)
{
#pragma unused (startPt, actionProc)
	while (Button()){;}
	
	Point theMouse;
	GetMouse(&theMouse);
	
	if (PtInRect(theMouse, &(**theControl).contrlRect))
		return kControlImageWellPart;
	else
		return kControlNoPart;
}

// __________________________________________________________________________________________
// Name			: ColorSwatchDraw
// Input		: theControl: color swatch control which we must draw
//				  thePart: control part which we must draw (ignored)
// Output		: None
// Description	: This function draws the color swatch control, including the foregound/background
//				  colors as well as the color swap and reset widgets

pascal void	ColorSwatchDraw(ControlHandle theControl,SInt16 thePart)
{
	thePart; // unused parameter

	icnsEditorPtr	parentEditor; // the editor which owns this control
	RGBColor		actualForeColor, actualBackColor; // the colors cast to the nearst ones
													  // for the current pix
	Rect			tempRect;
	SAVECOLORS; // we'll be changing the foreground/background colors
	
	parentEditor = GetEditor((**theControl).contrlOwner);
	
	//if (Button()) return;
	
	if ((**parentEditor->currentPix).pixelSize == 32)
	{
		actualForeColor = parentEditor->foreColor;
		actualBackColor = parentEditor->backColor;
	}
	else
	{
		actualForeColor = GetNearestColor(parentEditor->foreColor, (**parentEditor->currentPix).pmTable);
		actualBackColor = GetNearestColor(parentEditor->backColor, (**parentEditor->currentPix).pmTable);
	}
	
	// first we draw the background color swatch (since it must appear underneath)
	DrawImageWell(theControl, parentEditor->controls.colorSwatch.backColorRect);
	ForeColor(whiteColor);
	PaintRect(&parentEditor->controls.colorSwatch.backColorRect);
	RGBForeColor(&actualBackColor);
	tempRect = parentEditor->controls.colorSwatch.backColorRect;
	InsetRect(&tempRect, 1, 1);
	PaintRect(&tempRect);
	
	// then (partially on top of it) we draw the foreground color swatch
	DrawImageWell(theControl, parentEditor->controls.colorSwatch.foreColorRect);
	ForeColor(whiteColor);
	PaintRect(&parentEditor->controls.colorSwatch.foreColorRect);
	RGBForeColor(&actualForeColor);
	tempRect = parentEditor->controls.colorSwatch.foreColorRect;
	InsetRect(&tempRect, 1, 1);
	PaintRect(&tempRect);
	
	RESTORECOLORS; // we're done with the color changing
	
	// now we can draw the swap colors widget
	EraseRect(&parentEditor->controls.colorSwatch.swapColorsRect);
	// we clean out the place where we'll be drawing
	if (IsFrontProcess() && (**theControl).contrlOwner == FrontWindow())
	// if we're in the foreground and we're the frontmost window...
		PlotCIcon(&parentEditor->controls.colorSwatch.swapColorsRect, // we draw the enabled
				  parentEditor->statics.swapColorsIconEnabled);       // version
	else
		PlotCIcon(&parentEditor->controls.colorSwatch.swapColorsRect, // otherwise the disabled
				  parentEditor->statics.swapColorsIconDisabled);	  // one
	
	// same as above, except for the reset color widget
	EraseRect(&parentEditor->controls.colorSwatch.resetColorsRect);
	if (IsFrontProcess() && (**theControl).contrlOwner == FrontWindow())
		PlotCIcon(&parentEditor->controls.colorSwatch.resetColorsRect, parentEditor->statics.resetColorsIconEnabled);
	else
		PlotCIcon(&parentEditor->controls.colorSwatch.resetColorsRect, parentEditor->statics.resetColorsIconDisabled);
}

// __________________________________________________________________________________________
// Name			: ColorSwatchHitTest
// Input		: theControl: the color swatch control for which we must do hit testing
//				  where: the location of the click
// Output		: ControlPartCode: the part (if any) of the control that was hit
// Description	: This function checks to see if the click occured inside the color swatch
//				  control, and if it did in what part

pascal ControlPartCode ColorSwatchHitTest(ControlHandle theControl, Point where)
{
	icnsEditorPtr	parentEditor; // editor which owns the control
	
	parentEditor = GetEditor((**theControl).contrlOwner);
	if (parentEditor == NULL) // no editor, no use hit testing
		return kControlNoPart;
	
	// going through all of the rectangles which make up the control..
	if (PtInRect(where, &parentEditor->controls.colorSwatch.foreColorRect))
		return kForeColorPart;
	else if (PtInRect(where, &parentEditor->controls.colorSwatch.backColorRect))
		return kBackColorPart;
	else if (PtInRect(where, &parentEditor->controls.colorSwatch.swapColorsRect))
		return kSwapColorsPart;
	else if (PtInRect(where, &parentEditor->controls.colorSwatch.resetColorsRect))
		return kResetColorsPart;
	else
		return kControlNoPart;
	
	// if we managed to get here, then nothing was hit
	return kControlNoPart;
}

// __________________________________________________________________________________________
// Name			: MakeColorSwatchRects
// Input		: controlRect: the bounds of the color swatch control
// Output		: foreColorRect, backColorRect, swapColorsRect, resetColorsRect: rectangles
//				  in which the control was divided up into
// Description	: This function divides up the control into 4 parts, two for the color swatches
//				  and two for the two widgets (swap colors, and reset colors)

void MakeColorSwatchRects(Rect controlRect,
						  Rect *foreColorRect,
						  Rect *backColorRect,
						  Rect *swapColorsRect,
						  Rect *resetColorsRect) 
{
	int 	thirdOfHeight, // used in the determing the size of the color swatches (which are
			thirdOfWidth; // two thirds of the width and height of the whole control)
	Rect	iconRect; // the rectangle of the icons which are used as labels for the widgets
	int		iconWidth, // the dimensions of the above rectangle
			iconHeight;
	
	// first we must set up these variables
	thirdOfHeight = (controlRect.bottom - controlRect.top)/3 + 1;
	thirdOfWidth = (controlRect.right - controlRect.left)/3 + 1;
	
	// the background color swatch goes into the bottom right corner
	*backColorRect = controlRect;
	backColorRect->top += thirdOfHeight;
	backColorRect->left += thirdOfWidth;
	InsetRect(backColorRect, 1, 1);
	
	// the foreground color swatch goes into the top left corner
	*foreColorRect = controlRect;
	foreColorRect->bottom -= thirdOfHeight;
	foreColorRect->right -= thirdOfWidth;
	InsetRect(foreColorRect, 1, 1);
	
	// the swap colors widget rect goes into the top right corner
	iconRect = (**icnsEditorClass::statics.swapColorsIconEnabled).iconPMap.bounds;
	iconWidth = iconRect.right - iconRect.left;
	iconHeight = iconRect.bottom - iconRect.top;
	*swapColorsRect = controlRect;
	swapColorsRect->left = swapColorsRect->right - iconWidth;
	swapColorsRect->bottom = swapColorsRect->top + iconHeight;
	
	// the reset colors widget goes into the bottom left corner
	iconRect = (**icnsEditorClass::statics.resetColorsIconEnabled).iconPMap.bounds;
	iconWidth = iconRect.right - iconRect.left;
	iconHeight = iconRect.bottom - iconRect.top;
	*resetColorsRect = controlRect;
	resetColorsRect->right = resetColorsRect->left + iconWidth;
	resetColorsRect->top = resetColorsRect->bottom - iconHeight;
}

pascal void	PatternsDraw(ControlHandle theControl,SInt16 thePart)
{
	thePart; // unused parameter

	icnsEditorPtr	parentEditor; // the editor which owns this control
	RGBColor		actualForeColor, actualBackColor; // the colors cast to the nearst ones
													  // for the current pix
	Pattern			pattern;
	Rect			tempRect;
	SAVECOLORS; // we'll be changing the foreground/background colors
	
	parentEditor = GetEditor((**theControl).contrlOwner);
	
	if ((**parentEditor->currentPix).pixelSize == 32)
	{
		actualForeColor = parentEditor->foreColor;
		actualBackColor = parentEditor->backColor;
	}
	else
	{
		actualForeColor = GetNearestColor(parentEditor->foreColor, (**parentEditor->currentPix).pmTable);
		actualBackColor = GetNearestColor(parentEditor->backColor, (**parentEditor->currentPix).pmTable);
	}
	
	
	tempRect = (**theControl).contrlRect;
	
	ForeColor(whiteColor);
	
	PaintRect(&tempRect);
	
	DrawImageWell(theControl, tempRect);
	
	InsetRect(&tempRect, 1, 1);
	
	RGBForeColor(&actualForeColor);
	RGBBackColor(&actualBackColor);
	
	GetIndPattern(&pattern, rDrawingPatterns, parentEditor->pattern + 1);
	FillRect(&tempRect, &pattern);
	
	
	
	RESTORECOLORS;
}

pascal ControlPartCode PatternsHitTest(ControlHandle theControl, Point where)
{
		icnsEditorPtr	parentEditor; // editor which owns the control
	
	parentEditor = GetEditor((**theControl).contrlOwner);
	if (parentEditor == NULL) // no editor, no use hit testing
		return kControlNoPart;
	
	// going through all of the rectangles which make up the control..
	if (PtInRect(where, &(**parentEditor->controls.patterns).contrlRect))
		return kPatternsPart;
	
	// if we managed to get here, then nothing was hit
	return kControlNoPart;
}

pascal void SwatchUpdate(RGBColor* color, void *clientData)
{
#pragma unused (color)
	icnsEditorPtr	parentEditor;
	
	parentEditor = (icnsEditorPtr)clientData;
	
	Draw1Control(parentEditor->controls.colorSwatch.control);
	Draw1Control(parentEditor->controls.patterns);
}

pascal void PatternMenuDraw(int number, int x, int y, int width, int height, void* clientData)
{
	Pattern 		pattern;
	Rect			patternRect;
	icnsEditorPtr	parentEditor;
	RGBColor		actualForeColor, actualBackColor;
	
	SAVECOLORS;
	parentEditor = (icnsEditorPtr)clientData;
	
	GetIndPattern(&pattern, rDrawingPatterns, number + 1);
	
	if ((**parentEditor->currentPix).pixelSize == 32)
	{
		actualForeColor = parentEditor->foreColor;
		actualBackColor = parentEditor->backColor;
	}
	else
	{
		actualForeColor = GetNearestColor(parentEditor->foreColor, (**parentEditor->currentPix).pmTable);
		actualBackColor = GetNearestColor(parentEditor->backColor, (**parentEditor->currentPix).pmTable);
	}
	
	RGBForeColor(&actualForeColor);
	RGBBackColor(&actualBackColor);
	
	SetRect(&patternRect, x, y, x + width, y + height);
	FillRect(&patternRect, &pattern);
	
	RESTORECOLORS;
}

pascal void PatternMenuUpdate(int selection, void* clientData)
{
	icnsEditorPtr parentEditor;
	
	parentEditor = (icnsEditorPtr)clientData;
	parentEditor->pattern = selection - 1;
	
	Draw1Control(parentEditor->controls.patterns);
}

