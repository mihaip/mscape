#include "icnsEditorClass.h"
#include "drawingStateClass.h"
#include "editorStaticsClass.h"

// __________________________________________________________________________________________
// Name			: icnsEditorClass::HandleDrawing
// Input		: None
// Output		: None
// Description	: based on the current tool, this determines what should be done with a click
//				  in the drawing area

void icnsEditorClass::HandleDrawing(Point theMouse)
{
	bool needToSaveState = true;
	
	StartPan();
	
	cycleSelectionPattern = false;
	
	switch (statics.toolPalette->GetCurrentTool())
	// based on the current tool we call on the appropriate function to handle the drawing
	{
		case toolMove :			cycleSelectionPattern = true; needToSaveState = HandleMove(theMouse); break;
		case toolMarquee :		cycleSelectionPattern = true; HandleMarquee(theMouse); break;
		case toolEraser :
		case toolPen :			HandlePen(theMouse); break;
		case toolFill :			HandleFilling(theMouse); break;
		case toolEyeDropper :	HandleEyeDropper(theMouse); needToSaveState = false; break;
		case toolLasso : 		cycleSelectionPattern = true; HandleLasso(theMouse); break;
		case toolMagicWand :	cycleSelectionPattern = true; HandleMagicWand(theMouse); break;
		case toolLine : 		HandleLine(theMouse); break;
		case toolOval:
		case toolRectangle : 	HandleRectangle(theMouse); break;
		case toolPolygon :		HandlePolygon(theMouse); break;
		case toolGradient : 	HandleGradient(theMouse); break;
		case toolText : 		HandleText(theMouse); break;
		case toolPan :			HandlePan(theMouse); needToSaveState = false; break;
		case toolZoom : 		HandleZoom(theMouse); needToSaveState = false; break;
	}
	
	cycleSelectionPattern = true;
	
	FinishPan();
	
	if (!EmptyRgn(selectionRgn)) // if there still is a selection, we must set that flag
		status |= hasSelection;
	else
		status &= ~hasSelection;
	
	if (needToSaveState) // if there was painting performed...
	{
		currentState = new drawingStateClass(currentState, this); // we must save the state
		status |= needToSave; // the drawing was modified, and thus it needs to be saved...
		UpdateEditArea();
		statics.UpdatePalettes(this, 0);
	}
}

void icnsEditorClass::HandleZoom(Point startMouse)
{
	Rect	areaRect;
	int mouseX, mouseY, x, y;
	
	GetDrawingMousePosition(&mouseX, &mouseY, &startMouse, 0);
	
	while (Button()) {;}
	
	if (ISOPTIONDOWN)
		magnification /= 2;
	else
		magnification *= 2;
		
	if (magnification < kMinMagnification)
		magnification = kMinMagnification;
	else if (magnification > kMaxMagnification)
		magnification = kMaxMagnification;
	
	UpdateZoom();
	
	ZoomFitWindow();
	
	x = magnification * ((**currentPix).bounds.right - (**currentPix).bounds.left);
	y = magnification * ((**currentPix).bounds.bottom - (**currentPix).bounds.top);
	
	MakeEditAreaRect(x, y, &areaRect);

	hScrollbarValue = mouseX * magnification - (areaRect.right - areaRect.left)/2;
	vScrollbarValue = mouseY * magnification - (areaRect.bottom - areaRect.top)/2;
	
	ClampScrollValues();
	
	RepositionControls();
	
	SetControlValue(controls.hScrollbar, hScrollbarValue);
	SetControlValue(controls.vScrollbar, vScrollbarValue);
}

void icnsEditorClass::HandlePan(Point startMouse)
{
	Point	currentMouse;
	int		currentH, currentV, previousH, previousV;
	
	previousH = GetControlValue(controls.hScrollbar);
	previousV = GetControlValue(controls.vScrollbar);
	
	StartPan();
	
	while (Button())
	{
		MUtilities::GetMouseLocation(GetWindowPort(window), &currentMouse);
		
		SetControlValue(controls.hScrollbar,
						previousH + startMouse.h - currentMouse.h);
		SetControlValue(controls.vScrollbar,
						previousV + startMouse.v - currentMouse.v);
						
		hScrollbarValue = currentH = GetControlValue(controls.hScrollbar);
		vScrollbarValue = currentV = GetControlValue(controls.vScrollbar); 
		
		PanEditArea(currentH - previousH, currentV - previousV);
						
		startMouse = currentMouse;
		
		previousH = currentH;
		previousV = currentV;
	}
	
	FinishPan();
}

// __________________________________________________________________________________________
// Name			: icnsEditorClass::HandleGradient
// Input		: None
// Output		: None
// Description	: Draws a linear gradient between two user specified points by transitioning
//				  from the foreground to the background color

void icnsEditorClass::HandleGradient(Point startMouse)
{
	int				startX, startY, // the starting (anchor) x and y coordinates
					x, y; // the end (free-moving) x and y coordinates
	Rect			currentBounds; // the dimensions of the current icon size
	OSStatus		err = noErr; // used for error checking
	RgnHandle		clipRgn;
	PixMapHandle	targetPix;
	GWorldPtr		targetGW;
	RGBColor		startColor, endColor;
	Point			currentMouse, oldMouse;
	
	// we get the starting position
	GetDrawingMousePosition(&startX, &startY, &startMouse, magnified);
	
	SAVEGWORLD; // we'll be changing the gworld and colors
	SAVECOLORS;
	
	// setting up this variable
	currentBounds = (**currentPix).bounds;
	MagnifyRect(&currentBounds, magnification);
	
	// and the overlay itself
	err = NewGWorld(&overlayGW, 1, &currentBounds, NULL, NULL, 0);
	if (err != noErr) {status |= outOfMemory; return; }
	overlayPix = GetGWorldPixMap(overlayGW);
	LockPixels(overlayPix);
	SetGWorld(overlayGW, NULL);
	EraseRect(&currentBounds);
	MoveTo(startX, startY);
	DrawCross(6);
	RESTOREGWORLD;
	
	
	// first we must make sure the starting cross gets drawn
	oldMouse = startMouse;
	currentMouse = startMouse;
	
	oldMouse.h -= 6;
	oldMouse.v -= 6;
	currentMouse.h += 6;
	currentMouse.v += 6;
	UpdateEditArea(oldMouse, currentMouse, magnified);
	
	oldMouse = startMouse;
	currentMouse = startMouse;
	
	do // while the button is down
	{
		// we get the new position
		MUtilities::GetMouseLocation(GetWindowPort(window), &currentMouse);
		GetDrawingMousePosition(&x, &y, &currentMouse, magnified);
		if (ISSHIFTDOWN) // if shift is down, we must restrict the line to specific angles
		{
			ConstrainLine45(startX, startY, &x, &y);
			currentMouse.h = x;
			currentMouse.v = y;
		}
		// now that we the coordinates
		SetGWorld(overlayGW, NULL); // we go into the overlay
		RGBForeColor(&kBlackAsRGB);
		RGBBackColor(&kWhiteAsRGB);
		EraseRect(&currentBounds); // clear the previous contents
		MoveTo(startX, startY);
		DrawCross(6);
		LineTo(x, y); // draw the line
		RESTORECOLORS;
		RESTOREGWORLD;
		
		UpdateEditArea(startMouse, currentMouse, oldMouse, magnified);
		
		if (statics.colorsPalette->IsVisible())
			statics.colorsPalette->UpdateReadout(x/magnification, y/magnification, kPickerNeverUsedColor);
	
		oldMouse = currentMouse;
	} while (Button());
	
	startX /= magnification;
	startY /= magnification;
	x /= magnification;
	y /= magnification;
	
	if (EmptyRgn(selectionRgn)) // if there isn't a selection
	{
		clipRgn = NULL;
		targetPix = currentPix;
		targetGW = currentGW;
	}
	else if (status & selectionFloated) // if there's a selection and its floated
	{
		clipRgn = NULL;
		targetPix = selectionPix;
		targetGW = selectionGW;
	}
	else // otherwise (there's a selection, but it isn't floated) we must restrict the drawing
		 // to the selection contents
	{
		clipRgn = selectionRgn;
		targetPix = currentPix;
		targetGW = currentGW;
	}
	
	statics.toolPalette->GetColors(&startColor, &endColor);
	
	if (statics.toolPalette->GetToolMode(toolGradient) == toolModeNormal)
		DrawGradient32(startX, startY, startColor,
					 x, y, endColor,
					 statics.canvasPix, (**targetPix).bounds, clipRgn);
	else
		DrawRadialGradient32(startX, startY, startColor,
							 x, y, endColor,
							 statics.canvasPix, (**targetPix).bounds, clipRgn);

	if (statics.preferences.FeatureEnabled(prefsDither) &&
		(**statics.canvasPix).pixelSize > (**targetPix).pixelSize)		 
		CopyPixMap(statics.canvasPix, targetPix, &(**targetPix).bounds, &(**targetPix).bounds, srcCopy + ditherCopy, clipRgn);
	else
		CopyPixMap(statics.canvasPix, targetPix, &(**targetPix).bounds, &(**targetPix).bounds, srcCopy, clipRgn);
		
	RESTOREGWORLD; // we're done with changing the port
	RESTORECOLORS;
	
	// we're done with the overlay
	UnlockPixels(overlayPix);
	DisposeGWorld(overlayGW);
	overlayPix = NULL;
	
	UpdateEditArea(); // and draw the whole thing
	
}

// __________________________________________________________________________________________
// Name			: icnsEditorClass::HandleText
// Input		: None
// Output		: None
// Description	: Draws a user specified text at the chosen location (the text will be placed
//				  into a selection)

void icnsEditorClass::HandleText(Point theMouse)
{
	int x, y, width, height, oneLineHeight;
	Rect	tempRect;
	GWorldPtr	tempGW;
	PixMapHandle tempPix;
	RGBColor		textColor;
	
	if (status & hasSelection)
	{
		if (status & selectionFloated)
			DefloatSelection(true);
		SetEmptyRgn(selectionRgn);
	}
	
	GetDrawingMousePosition(&x, &y, &theMouse, 0);
	
	if (GetTextAttributes(&statics.lastTextSettings) == userCanceledErr)
		return;
	
	SAVEGWORLD;
	SAVECOLORS;
	
	TextFont(statics.lastTextSettings.fontNo);
	TextFace(statics.lastTextSettings.style);
	TextSize(statics.lastTextSettings.size);
	
	FontInfo info;
	
	GetFontInfo(&info);
	
	y += info.descent;
	
	height = StringHeight(statics.lastTextSettings.text);
	oneLineHeight = StringHeight("\pa");
	width = StringWidth(statics.lastTextSettings.text);
	SetRect(&tempRect,
			x,
			y - oneLineHeight,
			x + width,
			y + height - oneLineHeight);
	
	NewGWorld(&tempGW, 1, &tempRect, NULL, NULL, 0);
	tempPix = GetGWorldPixMap(tempGW);
	LockPixels(tempPix);
	SetGWorld(tempGW, NULL);
	//SetGWorld(currentGW, NULL);
	
	TextFont(statics.lastTextSettings.fontNo);
	TextFace(statics.lastTextSettings.style);
	TextSize(statics.lastTextSettings.size);
	
	
	
	EraseRect(&tempRect);
	MoveTo(x, y - info.descent);

	DrawLinedString(statics.lastTextSettings.text);

	BitMapToRegion(selectionRgn, (BitMap*)*tempPix);
	//RectRgn(selectionRgn, &tempRect);
	MagnifySelectionRgn();
	
	UnlockPixels(selectionPix);
	DisposeGWorld(selectionGW);
	NewGWorldUnpadded(&selectionGW, (**currentPix).pixelSize, &tempRect, (**currentPix).pmTable);
	selectionPix = GetGWorldPixMap(selectionGW);
	LockPixels(selectionPix);
	SetGWorld(selectionGW, NULL);
	MoveTo(x, y);
	DrawString("\ptext");
	EraseRect(&tempRect);
	statics.toolPalette->GetColors(&textColor, NULL);
	RGBForeColor(&textColor);
	
	CopyPixMap(tempPix, selectionPix, &tempRect, &tempRect, srcCopy, NULL);
	
	RESTOREGWORLD;
	RESTORECOLORS;
	
	short temp;
	GetFNum("\pGeneva",&temp);
	TextFont(temp);
	TextSize(10);
	TextFace(normal);
	
	UnlockPixels(tempPix);
	DisposeGWorld(tempGW);
	
	status |= selectionFloated;
	
	statics.toolPalette->SetCurrentTool(toolMove);
}

// __________________________________________________________________________________________
// Name			: icnsEditorClass::HandleRectangle
// Input		: None
// Output		: None
// Description	: Draws a rectangle in the drawing area based on the mouse movements
//				  

void icnsEditorClass::HandleRectangle(Point startMouse)
{
	int 		x1, y1, // the top left...
				x2, y2, // ...and bottom right coordinates of the rectangle
				xOffset, yOffset;
	Rect		drawRect, // the rectangle which the user has chosen to draw
				currentBounds, // the bounds of the current pixmap (to which the rectangle is confined)
				oldRect;
	Point		currentMouse; // this is the free-moving point (which the user moves around)
	OSStatus	err = noErr; // used for error checking
	CTabHandle	overlayCTab; // the the color table for the overlay gworld (foreground color+
							 // trasparent color)
	RgnHandle	savedClip = NULL;
	Pattern		fillPattern;
	bool		rectangleMode, filled;
	RGBColor	foreColor, backColor;
	
	// The way in which the user draws a rectangle is rather simple. When the user clicks in
	// the drawing that is set as the anchor poin (startMouse). While the button is down, the
	// mouse coordinate controls the opposite corner of the rectangle (currentMouse). There
	// are some modifier options. If shift is down then the rectangle will be constrained to a
	// 1:1 aspect ratio (so a square). If option is down then the anchor will be used as the
	// center of the of the rectangle, and the rectangle itself will be drawin symetrically
	// around it (based on the currentMouse). Of course, if both option and shift are held down
	// then a 1:1 aspect is maintained too.
	
	SAVEGWORLD;
	SAVECOLORS;
	
	xOffset = yOffset = -statics.preferences.GetLineThickness()/2;
	
	// setting up this variable
	currentBounds = (**currentPix).bounds;
	
	statics.toolPalette->GetColors(&foreColor, &backColor);
	fillPattern = statics.toolPalette->GetPattern();
	
	rectangleMode = (statics.toolPalette->GetCurrentTool() == toolRectangle);
	filled = statics.preferences.FeatureEnabled(prefsFilled);
	
	err = MakeThreeColorTable(&overlayCTab, foreColor, backColor, kNeverUsedColorAsRGB);
	// we must create the color table which is used for the overlay
	if (err != noErr) {status |= outOfMemory; return; }
	HLock(Handle(overlayCTab));
	
	err = NewGWorldUnpadded(&overlayGW, 4, &currentBounds, overlayCTab); // and allocate the space for the overlay
	if (err != noErr) {status |= outOfMemory; return; }
	overlayPix = GetGWorldPixMap(overlayGW);
	LockPixels(overlayPix);
	SetGWorld(overlayGW, NULL);
	//RGBBackColor(&kNeverUsedColorAsRGB); // we fill it with the transparent color
	//EraseRect(&currentBounds);
	PenSize(statics.preferences.GetLineThickness(), statics.preferences.GetLineThickness());
	RESTOREGWORLD;
	RESTORECOLORS;
	
	GetDrawingMousePosition(&x1, &y1, &startMouse, 0);
	x2 = x1;
	y2 = y1;
	SetRect(&oldRect, x1, y1, x2, y2);
	
	while (Button()) // while the button is down...
	{
		MUtilities::GetMouseLocation(GetWindowPort(window), &currentMouse); // we see if the user moved the mouse
		if (currentMouse.h != startMouse.h || currentMouse.v != startMouse.v)
		{
			// if he did, then we move into action...
			
			GetDrawingMousePosition(&x2, &y2, &currentMouse, 0); // we get the location in terms of the drawing
			x2 += xOffset;
			y2 += yOffset;
			
			SetRect(&drawRect, x1, y1, x2, y2);
			// and we have the basic rectangle
			
			if (drawRect.left > drawRect.right) // if the left is bigger than the right, then
			// we switch them around 
			{
				drawRect.left = x2;
				drawRect.right = x1;
			}
			drawRect.right++; // we do this since the coordinate is truncated when we divide, 
			
			// same as above, except we do it for the top and bottom	
			if (drawRect.top > drawRect.bottom)
			{
				drawRect.top = y2;
				drawRect.bottom = y1;
			}
			drawRect.bottom++;
				
			if (ISOPTIONDOWN) // if option is down...
			{
				if (ISSHIFTDOWN) //..and shift is down too
				{
					// we need to do a square with the center at x1, y1 and with one of the
					// corners at the position of the mouse
					
					// we determine which displacement (x or y) is bigger and set the square
					// size based on that
					if (abs(x2 - x1) > abs(y2 - y1))
						SetRect(&drawRect,
								x1 - abs(x2 - x1),
								y1 - abs(x2 - x1),
								x1 + abs(x2 - x1),
								y1 + abs(x2 - x1));
					else
						SetRect(&drawRect,
							x1 - abs(y2 - y1),
							y1 - abs(y2 - y1),
							x1 + abs(y2 - y1),
							y1 + abs(y2 - y1));
							
					// then we check if we over the borders, and if we did we must shrink the
					// square (while maintaning the 1:1 aspect ratio of course)
					if (drawRect.top < 0)
					{
						drawRect.bottom += drawRect.top;
						drawRect.right += drawRect.top;
						drawRect.left -= drawRect.top;
						drawRect.top = 0;
					}
					if (drawRect.left < 0)
					{
						drawRect.right += drawRect.left;
						drawRect.bottom += drawRect.left;
						drawRect.top -= drawRect.left;
						drawRect.left = 0;
					}
					if (drawRect.bottom > currentBounds.bottom)
					{
						drawRect.top += drawRect.bottom - currentBounds.bottom;
						drawRect.right -= drawRect.bottom - currentBounds.bottom;
						drawRect.left += drawRect.bottom - currentBounds.bottom;
						drawRect.bottom = currentBounds.bottom;
					}
					if (drawRect.right > currentBounds.right)
					{
						drawRect.left += drawRect.right - currentBounds.right;
						drawRect.bottom -= drawRect.right - currentBounds.right;
						drawRect.top += drawRect.right - currentBounds.right;
						drawRect.right = currentBounds.right;
					}
				}
				else // option is down, but shift isn't
				{
					// now we simple have a rectangle with the center at x1, y1, and one of
					// the corners at x2, y2
					SetRect(&drawRect,
							x1 - abs(x2 - x1),
							y1 - abs(y2 - y1),
							x1 + abs(x2 - x1) + 1,
							y1 + abs(y2 - y1) + 1);
					
					// again we must check to see if went outside the boundaries of the drawing
					if (drawRect.top < 0)
					{
						drawRect.bottom += drawRect.top;
						drawRect.top = 0;
					}
					if (drawRect.left < 0)
					{
						drawRect.right += drawRect.left;
						drawRect.left = 0;
					}
					if (drawRect.bottom > currentBounds.bottom)
					{
						drawRect.top += drawRect.bottom - currentBounds.bottom;
						drawRect.bottom = currentBounds.bottom;
					}
					if (drawRect.right > currentBounds.right)
					{
						drawRect.left += drawRect.right - currentBounds.right;
						drawRect.right = currentBounds.right;
					}
				}
			}
			else // option is not down
			{
				if (ISSHIFTDOWN) // but shift might be
				{
					// basically what we're doing here is seeing where the anchor point is
					// top-left, top-right, bottom-right or bottom-left, and then making the
					// rectangle a square based on which dimension is bigger 
					if ((drawRect.left == x1 && drawRect.top == y1))
						if ((drawRect.right - drawRect.left) > (drawRect.bottom - drawRect.top))
							drawRect.bottom = drawRect.top + (drawRect.right - drawRect.left);
						else
							drawRect.right = drawRect.left + (drawRect.bottom - drawRect.top);
					if ((drawRect.right == x1 + 1 && drawRect.top == y1))
						if ((drawRect.right - drawRect.left) > (drawRect.bottom - drawRect.top))
							drawRect.bottom = drawRect.top + (drawRect.right - drawRect.left);
						else
							drawRect.left = drawRect.right - (drawRect.bottom - drawRect.top);
					if ((drawRect.right == x1 + 1 && drawRect.bottom == y1 + 1))
						if ((drawRect.right - drawRect.left) > (drawRect.bottom - drawRect.top))
							drawRect.top = drawRect.bottom - (drawRect.right - drawRect.left);
						else
							drawRect.left = drawRect.right - (drawRect.bottom - drawRect.top);
					if ((drawRect.left == x1 && drawRect.bottom == y1 + 1))
						if ((drawRect.right - drawRect.left) > (drawRect.bottom - drawRect.top))
							drawRect.top = drawRect.bottom - (drawRect.right - drawRect.left);
						else
							drawRect.right = drawRect.left + (drawRect.bottom - drawRect.top);
				}
			}
			
			InsetRect(&drawRect, xOffset, yOffset);
			
			// now that we have the rectangle which we wish draw all ready..
			SetGWorld(overlayGW, NULL);
			RGBBackColor(&kNeverUsedColorAsRGB); // we refill the gworld with the transparent color
			EraseRect(&currentBounds);
			RGBForeColor(&foreColor);
			RGBBackColor(&backColor);
			if (rectangleMode)
			{
				if (filled)
					FillRect(&drawRect, &fillPattern);
				FrameRect(&drawRect); // we draw it
			}
			else
			{
				if (filled)
					FillOval(&drawRect, &fillPattern);
				FrameOval(&drawRect);
			}
			RESTOREGWORLD;
			RESTORECOLORS;
		} // endof: the user moved the mouse
		
		// we display the drawing area (this adds on the overlay autmatically)
		UpdateEditArea(drawRect, oldRect, 0);
		
		if (statics.colorsPalette->IsVisible())
			statics.colorsPalette->UpdateReadout(x2, y2, kPickerNeverUsedColor);

		
		oldRect = drawRect;
	}
	
	// we finally have a rectangle...
	
	// first we must determine where to draw it...
	if (status & hasSelection)
		if (status & selectionFloated)
			SetGWorld(selectionGW, NULL);
		else
		{
			savedClip = NewRgn();
			GetClip(savedClip);
			SetGWorld(currentGW, NULL);
			SetClip(selectionRgn);
		}
	else
		SetGWorld(currentGW, NULL);
	
	RGBForeColor(&foreColor);
	RGBBackColor(&backColor);

	PenSize(statics.preferences.GetLineThickness(), statics.preferences.GetLineThickness());
	
	if (rectangleMode)
	{
		if (filled)
			FillRect(&drawRect, &fillPattern);
		FrameRect(&drawRect); // we draw it
	}
	else
	{
		if (statics.preferences.FeatureEnabled(prefsAntiAlias))
		{
			if (filled)
				FillAndFrameOvalAA(&drawRect, &fillPattern, statics.canvasGW, statics.canvasPix);
			else
				FrameOvalAA(&drawRect, statics.canvasGW, statics.canvasPix);
		}
		else
		{
			if (filled)
				FillOval(&drawRect, &fillPattern);
			
			FrameOval(&drawRect);
		}
	}
	
	PenSize(1, 1);
	
	UnlockPixels(overlayPix);
	DisposeGWorld(overlayGW);
	overlayPix = NULL;
	HUnlock(Handle(overlayCTab));
	DisposeCTable(overlayCTab);
	
	if (savedClip != NULL)
	{
		SetClip(savedClip);
		DisposeRgn(savedClip);
	}
	
	RESTOREGWORLD;
	RESTORECOLORS;
	
	Draw1Control(controls.editArea);
}

// __________________________________________________________________________________________
// Name			: icnsEditorClass::HandlePolygon
// Input		: None
// Output		: None
// Description	: Draws an irregular polygon based on the vertices which the user selects.

void icnsEditorClass::HandlePolygon(Point startMouse)
{
	int 		x, y, xOffset, yOffset;
	Rect		currentBounds;
	CTabHandle	overlayCTab;
	Point		vertices[255], currentMouse, oldMouse;
	int			noOfVertices;
	OSErr		err;
	bool 		firstTime;
	long		lastClick, clickDelay;
	RgnHandle	savedClip = NULL;
	Pattern		fillPattern;
	RGBColor	foreColor, backColor;
	
	xOffset = yOffset = -statics.preferences.GetLineThickness()/2;
	
	SAVEGWORLD; // we'll be changing the gworld and colors
	SAVECOLORS;
	
	currentBounds = (**currentPix).bounds;
	
	statics.toolPalette->GetColors(&foreColor, &backColor);
	fillPattern = statics.toolPalette->GetPattern();
	
	clickDelay = GetDblTime();
	
	// making the color table for the overlay
	err = MakeTwoColorTable(&overlayCTab, foreColor, kNeverUsedColorAsRGB);
	if (err != noErr) {status |= outOfMemory; return; }
	
	// and the overlay itself
	err = NewGWorld(&overlayGW, 1, &currentBounds, overlayCTab, NULL, 0);
	if (err != noErr) {status |= outOfMemory; return; }
	overlayPix = GetGWorldPixMap(overlayGW);
	LockPixels(overlayPix);
	SetGWorld(overlayGW, NULL);
	PenSize(statics.preferences.GetLineThickness(), statics.preferences.GetLineThickness());
	EraseRect(&currentBounds);
	RESTOREGWORLD;
	RESTORECOLORS;
	
	GetDrawingMousePosition(&x, &y, &startMouse, 0);
	x += xOffset;
	y += yOffset;
	vertices[0].h = x; vertices[0].v = y;
	noOfVertices = 0;
	
	firstTime = true;
	
	while (Button()){;}
	
	lastClick = TickCount();
	
	oldMouse = currentMouse = startMouse;
	
	while ((vertices[0].h != vertices[noOfVertices].h) ||
		   (vertices[0].v != vertices[noOfVertices].v) ||
		   firstTime)
	{
		MUtilities::GetMouseLocation(GetWindowPort(window), &currentMouse);
		GetDrawingMousePosition(&x, &y, &currentMouse, 0);
		x += xOffset;
		y += yOffset;
		
		if (ISSHIFTDOWN)
		{
			ConstrainLine45(vertices[noOfVertices].h, vertices[noOfVertices].v, &x, &y);
			currentMouse.h = x;
			currentMouse.v = y;
		}
		
		SetGWorld(overlayGW, NULL);
		RGBBackColor(&kNeverUsedColorAsRGB); // we refill the gworld with the transparent color
		EraseRect(&currentBounds);
		RGBForeColor(&foreColor);
		MoveTo(vertices[0].h, vertices[0].v);
		
		for (int i=1; i <= noOfVertices; i++)
			LineTo(vertices[i].h, vertices[i].v);
		
		LineTo(x, y);
		RESTOREGWORLD;
		RESTORECOLORS;
		
		UpdateEditArea(currentMouse, startMouse, oldMouse, 0);
		
		if (statics.colorsPalette->IsVisible())
			statics.colorsPalette->UpdateReadout(x, y, kPickerNeverUsedColor);
		
		if (Button())
		{
			noOfVertices++;
			
			while (Button()){;}
			
			if ((TickCount() - lastClick) <= clickDelay &&
				(vertices[noOfVertices - 1].h == x &&
				(vertices[noOfVertices - 1].v == y)))
			{
				vertices[noOfVertices].h = vertices[0].h;
				vertices[noOfVertices].v = vertices[0].v;
				lastClick = TickCount();
			}
			else
			{
				vertices[noOfVertices].h = x;
				vertices[noOfVertices].v = y;
				lastClick = TickCount();
			}
			
			if (firstTime) firstTime = false;
			
			startMouse = currentMouse;
		}
		
		oldMouse = currentMouse;
	}
	
	PolyHandle poly;
	
	poly = OpenPoly();
	
	MoveTo(vertices[0].h, vertices[0].v);
	
	for (int i=1; i <= noOfVertices; i++)
		LineTo(vertices[i].h, vertices[i].v);
		
	ClosePoly();
	
	if (status & hasSelection)
		if (status & selectionFloated)
			SetGWorld(selectionGW, NULL);
		else
		{
			savedClip = NewRgn();
			GetClip(savedClip);
			SetGWorld(currentGW, NULL);
			SetClip(selectionRgn);
		}
	else
		SetGWorld(currentGW, NULL);
		
	RGBForeColor(&foreColor);
	RGBBackColor(&backColor);
	
	PenSize(statics.preferences.GetLineThickness(), statics.preferences.GetLineThickness());
	
	if (statics.preferences.FeatureEnabled(prefsFilled))
		FillPoly(poly, &fillPattern);
	
	if (statics.preferences.FeatureEnabled(prefsAntiAlias))
		FramePolyAA(poly, statics.canvasGW, statics.canvasPix);
	else
		FramePoly(poly);
		
	PenSize(1, 1);
	
	KillPoly(poly);
	
	UnlockPixels(overlayPix);
	DisposeGWorld(overlayGW);
	overlayPix = NULL;
	DisposeCTable(overlayCTab);
	
	if (savedClip != NULL)
	{
		SetClip(savedClip);
		DisposeRgn(savedClip);
	}
	
	RESTOREGWORLD;
	RESTORECOLORS;

	UpdateEditArea();
		
	FlushEvents(mDownMask | mUpMask, 0);
}

// __________________________________________________________________________________________
// Name			: icnsEditorClass::HandleLine
// Input		: None
// Output		: None
// Description	: Draws a line in the drawing area based on mouse movements (constraints to
//				  the drawing angle can be applied by holding down shift).

void icnsEditorClass::HandleLine(Point startMouse)
{
	int			startX, startY, // the starting (anchor) x and y coordinates
				x, y, // the end (free-moving) x and y coordinates
				xOffset, yOffset;
	Rect		currentBounds; // the dimensions of the current icon size
	OSStatus	err = noErr; // used for error checking
	CTabHandle	overlayCTab; // the color table for the overlay
	RGBColor	lineColor;
	Point		currentMouse, oldMouse;
	RgnHandle 	tempRgn = NULL; // used to temporarely store the clippin region
	
	xOffset = yOffset = -statics.preferences.GetLineThickness()/2;
	
	SAVEGWORLD; // we'll be changing the gworld and colors
	SAVECOLORS;
	
	// setting up this variable
	currentBounds = (**currentPix).bounds;
	
	statics.toolPalette->GetColors(&lineColor, NULL);
	
	// making the color table for the overlay
	err = MakeTwoColorTable(&overlayCTab, lineColor, kNeverUsedColorAsRGB);
	if (err != noErr) {status |= outOfMemory; return; }
	
	// and the overlay itself
	err = NewGWorld(&overlayGW, 1, &currentBounds, overlayCTab, NULL, 0);
	if (err != noErr) {status |= outOfMemory; return; }
	overlayPix = GetGWorldPixMap(overlayGW);
	LockPixels(overlayPix);
	SetGWorld(overlayGW, NULL);
	PenSize(statics.preferences.GetLineThickness(), statics.preferences.GetLineThickness());
	RESTOREGWORLD;
	
	// we get the starting position
	GetDrawingMousePosition(&startX, &startY, &startMouse, 0);
	startX += xOffset;
	startY += yOffset;
	
	
	oldMouse = startMouse;
	
	while (Button()) // while the button is down
	{
		MUtilities::GetMouseLocation(GetWindowPort(window), &currentMouse);
		// we get the new position
		GetDrawingMousePosition(&x, &y, &currentMouse, 0);
		x += xOffset;
		y += yOffset;
		
		
		if (ISSHIFTDOWN) // if shift is down, we must restrict the line to specific angles
		{
			ConstrainLine45(startX, startY, &x, &y);
			currentMouse.h = x;
			currentMouse.v = y;
		}
		
		// now that we the coordinates
		SetGWorld(overlayGW, NULL); // we go into the overlay
		RGBForeColor(&lineColor);
		RGBBackColor(&kNeverUsedColorAsRGB);
		EraseRect(&currentBounds); // clear the previous contents
		MoveTo(startX, startY);
		LineTo(x, y); // draw the line
		RESTOREGWORLD;
		RESTORECOLORS;
		
		UpdateEditArea(startMouse, currentMouse, oldMouse, 0);
		
		if (statics.colorsPalette->IsVisible())
			statics.colorsPalette->UpdateReadout(x, y, kPickerNeverUsedColor);
			
		oldMouse = currentMouse;
	}
	
	RESTOREGWORLD; // we're done with changing the port
	RESTORECOLORS;
	
	if (EmptyRgn(selectionRgn)) // if there isn't a selection
		SetGWorld(currentGW, NULL); // we just draw it in in the main GWorld
	else if (status & selectionFloated) // if there's a selection and its floated
		SetGWorld(selectionGW, NULL); // we just draw inside the selection contents
	else // otherwise (there's a selection, but it isn't floated) we must restrict the drawing
		 // to the selection contents
	{
		SetGWorld(currentGW, NULL);
		
		tempRgn = NewRgn();
		GetClip(tempRgn);
		
		RGBForeColor(&lineColor);
		SetClip(selectionRgn); 
		// this is done by changing the clipping region so that it is the selection region
	}
	
	RGBForeColor(&lineColor);
	PenSize(statics.preferences.GetLineThickness(), statics.preferences.GetLineThickness());
	MoveTo(startX, startY);
	if (statics.preferences.FeatureEnabled(prefsAntiAlias))
		LineToAA(x, y, statics.canvasGW, statics.canvasPix);
	else
		LineTo(x, y);
	PenSize(1, 1);
	
	if (tempRgn != NULL)
	{
		SetClip(tempRgn); // of course we must restore the old clipping region
		DisposeRgn(tempRgn);
	}
	
	// we're done with the overlay
	UnlockPixels(overlayPix);
	DisposeGWorld(overlayGW);
	overlayPix = NULL;
	DisposeCTable(overlayCTab);
	
	RESTOREGWORLD;
}

// __________________________________________________________________________________________
// Name			: icnsEditorClass::HandleLasso
// Input		: None
// Output		: None
// Description	: makes a selection in the drawing area by tracing the mouse movements and
//				  tightening around the shape that was encircled

void icnsEditorClass::HandleLasso(Point startMouse)
{
	Rect			currentBounds, selectionBounds; // the bounds of the current pixmap
	int				startX, startY, // the starting x and y coordinates
					mode; // the selection mode
	RgnHandle		lassoSelectionRgn, // the drawn selection shape
					tightenedRgn; 
	OSStatus		err = noErr; // error checking
	Point			trueStartMouse;
	bool			needsUpdate = false;
	SAVEGWORLD;
	SAVECOLORS;
	
	trueStartMouse = startMouse;
	
	// we get the starting position
	GetDrawingMousePosition(&startX, &startY, &startMouse, magnified);
		
	// we determine the mode
	if (ISSHIFTDOWN && (status & hasSelection))
		mode = additive;
	else if (ISOPTIONDOWN && (status & hasSelection))
		mode = subtractive;
	else
		mode = normal;
	
	if (mode == normal)
	{
		Point theMouse;
		int		tempX, tempY;
		
		startMouse = trueStartMouse;
		
		GetDrawingMousePosition(&tempX, &tempY, &startMouse, 0);
		
		theMouse.h = tempX;
		theMouse.v = tempY;
		
		if (PtInRgn(theMouse, selectionRgn))
		{
			if (status & selectionFloated)
				HandleMove(trueStartMouse);
			else
				DragSelection(trueStartMouse, tempX, tempY);
			return;
		}
	}
	
	if (!EmptyRgn(selectionRgn))
		GetRegionBounds(selectionRgn, &selectionBounds);
	// we defloat the selection if we need to
	if ((status & selectionFloated) && (mode == normal || mode == additive))
	{
		DefloatSelection(true);
		needsUpdate = true;
	}
	// we deselect the current selection if we need to
	if (mode == normal)
	{
		SetEmptyRgn(selectionRgn);
		needsUpdate = true;
	}
	
	if (needsUpdate)
		UpdateEditArea(selectionBounds, selectionBounds, 0);
	
	// we get the current bounds, but we want them at the magnified resolution 
	currentBounds = (**currentPix).bounds;
	MagnifyRect(&currentBounds, magnification);
	
	// we create the overlay
	err = NewGWorld(&overlayGW, 1, &currentBounds, NULL, NULL, 0);
	if (err != noErr) {status |= outOfMemory; return; }
	overlayPix = GetGWorldPixMap(overlayGW);
	LockPixels(overlayPix);
	SetGWorld(overlayGW, NULL);
	EraseRect(&currentBounds);
	
	MoveTo(startX, startY);
	
	RESTOREGWORLD;
	
	if (statics.toolPalette->GetToolMode(toolLasso) == toolModeNormal)
		HandleFreehandLasso();
	else
		HandlePolygonalLasso();
			
	SetGWorld(overlayGW, NULL);
	// we connect it back to the starting point
	LineTo(startX, startY);
	
	// we create these regions
	lassoSelectionRgn = NewRgn();
	
	// we get the overall shape of the selection
	Make1BitMask(overlayPix, overlayPix, currentBounds);
	
	// and convert it to a region
	err = BitMapToRegion(lassoSelectionRgn, (BitMap*)*overlayPix);
	
	// and shrink it down to the size of the current pixmap
	MapRgn(lassoSelectionRgn, &currentBounds, &(**currentPix).bounds);
	
	//RectRgn(lassoSelectionRgn, &(**currentPix).bounds);
	
	tightenedRgn = TightenLasso(lassoSelectionRgn);
	
	switch (mode)
	{
		case additive: UnionRgn(selectionRgn, tightenedRgn, selectionRgn); break;
		case subtractive: DiffRgn(selectionRgn, tightenedRgn, selectionRgn); break;
		case normal : CopyRgn(tightenedRgn, selectionRgn); break;
	}
	
	// we must also have the magnified shape
	MagnifySelectionRgn();
	
	// dispose with the regions
	//DisposeRgn(tightenedRgn);
	DisposeRgn(lassoSelectionRgn);
	
	// and with the overlay
	UnlockPixels(overlayPix);
	DisposeGWorld(overlayGW);
	overlayPix = NULL;
	
	RESTOREGWORLD;
	RESTORECOLORS;
}

void icnsEditorClass::HandleFreehandLasso(void)
{
	Point	currentMouse, oldMouse;
	int x, y;
	
	SAVEGWORLD;
	
	MUtilities::GetMouseLocation(GetWindowPort(window), &oldMouse);
	
	while (Button())
	{
		MUtilities::GetMouseLocation(GetWindowPort(window), &currentMouse);
		GetDrawingMousePosition(&x, &y, &currentMouse, magnified);
		SetGWorld(overlayGW, NULL);
		// and we just trace the position
		
		LineTo(x, y);
		RESTOREGWORLD;
		// and keep the display updated
		
		UpdateEditArea(currentMouse, oldMouse, magnified);
		
		if (statics.colorsPalette->IsVisible())
			statics.colorsPalette->UpdateReadout(x/magnification, y/magnification, kPickerNeverUsedColor);
	
		oldMouse = currentMouse;
	}
}

void icnsEditorClass::HandlePolygonalLasso(void)
{
	int 		x, y;
	Rect		currentBounds;
	Point		vertices[255], startMouse, currentMouse, oldMouse;
	int			noOfVertices;
	bool 		firstTime;
	long		lastClick, clickDelay;
	
	clickDelay = GetDblTime()/2;
	
	SAVEGWORLD; // we'll be changing the gworld and colors
	SAVECOLORS;
	
	currentBounds = (**overlayPix).bounds;
	
	MUtilities::GetMouseLocation(GetWindowPort(window), &startMouse);
	currentMouse = startMouse;
	oldMouse = currentMouse;
	
	GetDrawingMousePosition(&x, &y, NULL, magnified);
	vertices[0].h = x; vertices[0].v = y;
	noOfVertices = 0;
	
	firstTime = true;
	
	while (Button()){;}
	
	lastClick = TickCount();
	
	while ((vertices[0].h > vertices[noOfVertices].h + 3) ||
		   (vertices[0].h < vertices[noOfVertices].h - 3) ||
		   (vertices[0].v > vertices[noOfVertices].v + 3) ||
		   (vertices[0].v < vertices[noOfVertices].v - 3) ||
		   firstTime)
	{
		MUtilities::GetMouseLocation(GetWindowPort(window), &currentMouse);
		GetDrawingMousePosition(&x, &y, &currentMouse, magnified);
		
		if (ISSHIFTDOWN)
		{
			ConstrainLine45(vertices[noOfVertices].h, vertices[noOfVertices].v, &x, &y);
			currentMouse.h = x;
			currentMouse.v = y;
		}
		
		SetGWorld(overlayGW, NULL);
		BackColor(whiteColor);
		ForeColor(blackColor);
		//RGBBackColor(&kNeverUsedColorAsRGB); // we refill the gworld with the transparent color
		EraseRect(&currentBounds);
		//RGBForeColor(&foreColor);
		MoveTo(vertices[0].h, vertices[0].v);
		
		for (int i=1; i <= noOfVertices; i++)
			LineTo(vertices[i].h, vertices[i].v);
		
		LineTo(x, y);
		RESTOREGWORLD;
		RESTORECOLORS;
		
		UpdateEditArea(startMouse, currentMouse, oldMouse, magnified);
		
		if (statics.colorsPalette->IsVisible())
			statics.colorsPalette->UpdateReadout(x/magnification, y/magnification, kPickerNeverUsedColor);
		
		if (Button())
		{
			noOfVertices++;
			
			if (firstTime) firstTime = false;
			
			while (Button()){;}
			
			if ((TickCount() - lastClick) <= clickDelay)
			{
				vertices[noOfVertices].h = vertices[0].h;
				vertices[noOfVertices].v = vertices[0].v;
				lastClick = TickCount();
			}
			else
			{
				vertices[noOfVertices].h = x;
				vertices[noOfVertices].v = y;
				lastClick = TickCount();
			}
			
			SetGWorld(overlayGW, NULL);
			BackColor(whiteColor);
			ForeColor(blackColor);
			LineTo(vertices[noOfVertices].h, vertices[noOfVertices].v);
			RESTOREGWORLD;
			
			MUtilities::GetMouseLocation(GetWindowPort(window), &startMouse);
		}
		
		oldMouse = currentMouse;
	}	
	
	RESTOREGWORLD;
	RESTORECOLORS;
	
	FlushEvents(mDownMask | mUpMask, 0);
}


RgnHandle icnsEditorClass::TightenLasso(RgnHandle lassoSelectionRgn)
{
	RgnHandle 		tightenedRgn;
	ColorSearchUPP	maskColorSearchUPP;
#if TARGET_API_MAC_CARBON
	GWorldPtr		tempGW;
	PixMapHandle	tempPix;
#else
	GrafPtr			temp;
#endif
	Rect			lassoBounds, tempRect;
	RGBColor		transparentColor;
	PixMapHandle	targetPix;
	
	tightenedRgn = NewRgn();
	// then we calculate the tightened selection shape
	GetRegionBounds(lassoSelectionRgn, &lassoBounds);
	tempRect = lassoBounds;
	OffsetRect(&tempRect, -tempRect.left, -tempRect.top);
#if TARGET_API_MAC_CARBON
	NewGWorld(&tempGW, 1, &tempRect, NULL, NULL, 0);
	tempPix = GetGWorldPixMap(tempGW);
	LockPixels(tempPix);
#else
	temp = CreateGrafPort(&tempRect);
#endif

	maskColorSearchUPP = NewColorSearchUPP(MaskColorSearch);
	
	statics.toolPalette->GetColors(NULL, &transparentColor);
	
	if (status & selectionFloated)
		targetPix = selectionPix;
	else
		targetPix = currentPix;

#if TARGET_API_MAC_CARBON
	CalcCMask((BitMap*)*targetPix,
			  (BitMap*)*tempPix,
			  &lassoBounds,
			  &tempRect,
			  &transparentColor,
			  maskColorSearchUPP,
			  0);
	
	BitMapToRegion(tightenedRgn, (BitMap*)*tempPix);
	UnlockPixels(tempPix);
	DisposeGWorld(tempGW);
#else
	CalcCMask((BitMap*)*targetPix,
			  GetPortBitMapForCopyBits(temp),
			  &lassoBounds,
			  &tempRect,
			  &transparentColor,
			  maskColorSearchUPP,
			  0);
	
	BitMapToRegion(tightenedRgn, GetPortBitMapForCopyBits(temp));
	DisposeGrafPort(temp);
#endif
	
	OffsetRgn(tightenedRgn, lassoBounds.left, lassoBounds.top);
	SectRgn(tightenedRgn, lassoSelectionRgn, tightenedRgn);
	
	DisposeColorSearchUPP(maskColorSearchUPP);
	
	
	
	return tightenedRgn;
}

// __________________________________________________________________________________________
// Name			: icnsEditorClass::HandleMagicWand
// Input		: None
// Output		: None
// Description	: makes a selection in the drawing area by selecting colors the same as the
//			      ones in the starting spot

void icnsEditorClass::HandleMagicWand(Point theMouse)
{
	BitMap*		selectionShape; // the selection shape (to be converted into a region)
#if TARGET_API_MAC_CARBON
	GWorldPtr	tempGW;
	PixMapHandle tempPix;
#else
	GrafPtr		temp;
#endif
	Rect		currentBounds; // dimensions of the current drawing
	int			x, y; // click location
	int			mode; // the selection mode
	RgnHandle	tempRgn; // this is where the new selection will be temporarely stored 
	OSStatus	err = noErr; // error checking
	Point		trueStartMouse;
	
	SAVEGWORLD;
	SAVECOLORS;
	
	trueStartMouse = theMouse;
	
	GetDrawingMousePosition(&x, &y, &theMouse, 0); // we get the click position
	
	// getting the selection mode
	if (ISSHIFTDOWN && (status & hasSelection))
		mode = additive;
	else if (ISOPTIONDOWN && (status & hasSelection))
		mode = subtractive;
	else
		mode = normal;
		
	if (mode == normal)
	{
		Point theMouse;
		
		theMouse.h = x;
		theMouse.v = y;
		
		if (PtInRgn(theMouse, selectionRgn))
		{
			if (status & selectionFloated)
				HandleMove(trueStartMouse);
			else
				DragSelection(trueStartMouse, x, y);
			return;
		}
	}
	
	// depending on the mode we have to defloat
	if ((status & selectionFloated) && (mode == normal || mode == additive))
		DefloatSelection(true);	
	
	// setting up the variables
	currentBounds = (**currentPix).bounds;
	tempRgn = NewRgn();

	// we make the temporary gworld
#if TARGET_API_MAC_CARBON
	NewGWorld(&tempGW, 1, &currentBounds, NULL, NULL, 0);
	tempPix = GetGWorldPixMap(tempGW);
	LockPixels(tempPix);
	selectionShape = (BitMap*)*tempPix;
#else
	temp = CreateGrafPort(&currentBounds);
	selectionShape = GetPortBitMapForCopyBits(temp);
#endif	
	if (!(status & selectionFloated)) // if there isn't a floated selection
	{
		// we must get the new selection from the current GWorld
		SetGWorld(currentGW, NULL);
		SeedCFill((BitMap*)*currentPix,
			  selectionShape,
			  &currentBounds,
			  &currentBounds,
			  x, y,
			  0,
			  0);
	}
	else
	{
		// otherwise we get it from the selection GWorld
		SetGWorld(selectionGW, NULL);
		SeedCFill((BitMap*)*selectionPix,
			  selectionShape,
			  &currentBounds,
			  &currentBounds,
			  x, y,
			  0,
			  0);
	}
	
	// we convert the pixmap into a region to get the selection shape
	BitMapToRegion(tempRgn, selectionShape); 
			  
	RESTOREGWORLD;
	RESTORECOLORS;
	
	// based on the mode we either set the new region to what we have just determined, or we
	// perform the required opearations
	switch (mode)
	{
		case normal: CopyRgn(tempRgn, selectionRgn); break;
		case additive : UnionRgn(tempRgn, selectionRgn, selectionRgn); break;
		case subtractive : DiffRgn(selectionRgn, tempRgn, selectionRgn); break;
	}
	
	// we need the enlarged selection shape too
	MagnifySelectionRgn();
	
	// we're done with this
	DisposeRgn(tempRgn);
	
	// and this too
#if TARGET_API_MAC_CARBON
	UnlockPixels(tempPix);
	DisposeGWorld(tempGW);
#else
	DisposeGrafPort(temp);
#endif
}

// __________________________________________________________________________________________
// Name			: icnsEditorClass::HandleMove
// Input		: None
// Output		: None
// Description	: Moves the current selection (if any) by following the mouse cursor while
//				  the mouse button is down.

bool icnsEditorClass::HandleMove(Point startMouse)
{
	int			anchorX, anchorY, // previous location
				x, y, // current location
				startX, startY; // original location
	Rect		oldBounds, newBounds;
	RgnHandle	selectionVisibleRegion = NewRgn();
	
	if (EmptyRgn(selectionRgn))
	{
		RectRgn(selectionRgn, &(**currentPix).bounds);
		MagnifySelectionRgn();
	}
	
	if (!(status & selectionFloated)) 
		FloatSelection(); // we must float the selection in order to be able to move it
		
	if (ISOPTIONDOWN) // if option is down, we must leave a copy behind
	{
		SAVECOLORS;
		CopyPixMap(selectionPix,
				   currentPix,
				   &(**selectionPix).bounds,
				   &(**selectionPix).bounds,
				   srcCopy,
				   selectionRgn);
		RESTORECOLORS;
	}
	
	// this is the original position
	GetDrawingMousePosition(&startX, &startY, &startMouse, 0);
	
	// and for the moment the previous one too
	anchorX = startX;
	anchorY = startY;
	
	GetPortVisibleRegion(selectionGW, selectionVisibleRegion);
	
	while (Button()) // we move while the button is down
	{
		GetDrawingMousePosition(&x, &y, NULL, noLimit);
		if ((x < 0) || (y < 0) || (x > (**currentPix).bounds.right) || (y > (**currentPix).bounds.bottom))
		{
			EventRecord 	event;
			Point			localMouse;
			int				boundsX, boundsY;
			GWorldPtr		dragGW = NULL;
			PixMapHandle	dragPix = NULL;
			Rect			selectionBounds, bounds, sourceBounds, windowRect;
			RgnHandle 		dragRgn;
			
			GetRegionBounds(selectionRgn, &selectionBounds);
			
			boundsX = selectionBounds.left;
			boundsY = selectionBounds.top;
			
			// reset the selection to its original location
			OffsetRgn(selectionRgn, startX - anchorX, startY - anchorY);
			OffsetRgn(selectionContentsMagnifiedRgn,
					  (startX - anchorX) * magnification,
					  (startY - anchorY) * magnification);
			OffsetRgn(selectionOutlineMagnifiedRgn,
					  (startX - anchorX) * magnification,
					  (startY - anchorY) * magnification);
					  
			OffsetRect(&(**selectionPix).bounds, startX - anchorX, startY - anchorY);
			OffsetRgn(selectionVisibleRegion, startX - anchorX, startY - anchorY);
			SetPortVisibleRegion(selectionGW, selectionVisibleRegion);
			
			UpdateEditArea();
			
			
			windowRect = GetPortRect();
			
			MUtilities::GetMouseLocation(GetWindowPort(window), &localMouse);
			localMouse.h = constrain(localMouse.h, windowRect.left, windowRect.right);
			localMouse.v = constrain(localMouse.v, windowRect.top, windowRect.bottom);
			
			event.what = mouseDown;
			event.message = 0;
			event.where = localMouse;
			event.when = TickCount();
			LocalToGlobal(&event.where);
			event.modifiers = 0;
			
			
			dragSrcRect = editAreaRect;
			
			
			
			bounds = (**selectionPix).bounds;
			MagnifyRect(&bounds, magnification);
			OffsetRect(&bounds, -bounds.left, -bounds.top);
			
			if (RectArea(bounds) <= kMaximumTranslucentArea)
			{ 
				NewGWorldUnpadded(&dragGW, (**selectionPix).pixelSize, &bounds, (**selectionPix).pmTable);
				dragPix = GetGWorldPixMap(dragGW);
				LockPixels(dragPix);
				SAVECOLORS;
				CopyPixMap(selectionPix, dragPix, &(**selectionPix).bounds, &bounds, srcCopy, NULL);
				RESTORECOLORS;
			}
			
			dragRgn = NewRgn();
			CopyRgn(selectionRgn, dragRgn);
			MapRgn(dragRgn, &(**selectionPix).bounds, &bounds);
			
			sourceBounds = bounds;
			OffsetRect(&sourceBounds,
					   localMouse.h - magnification * (x - boundsX),
					   localMouse.v - magnification * (y - boundsY));
			
			DragPixMap(sourceBounds, &event, dragPix, dragRgn, selectionPix, selectionRgn, selection);
			
			SetRect(&dragSrcRect, 0, 0, 0, 0);
			
			if (dragGW != NULL)
			{
				UnlockPixels(dragPix);
				DisposeGWorld(dragGW);
			}
			
			DisposeRgn(dragRgn);
			DisposeRgn(selectionVisibleRegion);
			return false;		  
		}
		else
		{
			// and get the new position
			if (ISSHIFTDOWN) // angle based constraints, very similar to the line constraints
				ConstrainLine45(startX, startY, &x, &y);
			
			// we must move both the normal and the magnified selection shape
			OffsetRgn(selectionRgn, x - anchorX, y - anchorY);
			OffsetRgn(selectionContentsMagnifiedRgn,
					 (x - anchorX) * magnification,
					 (y - anchorY) * magnification);
			OffsetRgn(selectionOutlineMagnifiedRgn,
					 (x - anchorX) * magnification,
					 (y - anchorY) * magnification);
			
			// we must also shift the bounds of the selection contents, and the visible region
			oldBounds = (**selectionPix).bounds;
			OffsetRect(&(**selectionPix).bounds, x - anchorX, y - anchorY);
			newBounds = (**selectionPix).bounds;
			OffsetRgn(selectionVisibleRegion, x - anchorX, y - anchorY);
			SetPortVisibleRegion(selectionGW, selectionVisibleRegion);
			
			UpdateEditArea(oldBounds, newBounds, 0);
			
			if (statics.colorsPalette->IsVisible())
				statics.colorsPalette->UpdateReadout(x, y, kPickerNeverUsedColor);
			
			// and set the current coordinates as the old ones
			anchorX = x;
			anchorY = y;
		}
	}
	
	DisposeRgn(selectionVisibleRegion);
	
	return true;
}

// __________________________________________________________________________________________
// Name			: icnsEditorClass::FloatSelection
// Input		: None
// Output		: None
// Description	: takes the pixel data from the drawing area, and moves it to a layer that
//				  "floats" above it, so that it can be moved without distrubing the rest of
//				  of the drawing

void icnsEditorClass::FloatSelection(void)
{
	RgnHandle	selectionLimits;
	RGBColor	backColor;
	Rect		regionBounds;
	
	SAVEGWORLD;
	SAVECOLORS;
	
	selectionLimits = NewRgn();
	RectRgn(selectionLimits, &(**currentPix).bounds);
	SectRgn(selectionLimits, selectionRgn, selectionRgn);
	MagnifySelectionRgn();
	DisposeRgn(selectionLimits);
	
	GetRegionBounds(selectionRgn, &regionBounds);
	
	// we need to update the selection contents with the new dimensions
	UnlockPixels(selectionPix);
	DisposeGWorld(selectionGW);
	NewGWorldUnpadded(&selectionGW,
					  (**currentPix).pixelSize,
					  &regionBounds,
					  (**currentPix).pmTable);
	selectionPix = GetGWorldPixMap(selectionGW);
	LockPixels(selectionPix);
	
	// copy the selection contents into it
	CopyPixMap(currentPix,
			   selectionPix,
			   &regionBounds,
			   &regionBounds,
			   srcCopy,
			   selectionRgn);
	
	// and leave the "hole" behind
	SetGWorld(currentGW, NULL);
	statics.toolPalette->GetColors(NULL, &backColor);
	RGBBackColor(&backColor);
	EraseRgn(selectionRgn);
	
	RESTOREGWORLD;
	RESTORECOLORS;
	
	status |= selectionFloated;
}

// __________________________________________________________________________________________
// Name			: icnsEditorClass::DefloatSelection
// Input		: None
// Output		: None
// Description	: If there is a floated selection (see above) this function merges it back
//				  with the drawing.

void icnsEditorClass::DefloatSelection(bool trueDefloat)
{
	if (!(status & selectionFloated)) // nothing to defloat
		return;
		
	SAVEGWORLD;
	SAVECOLORS;
	
	SetGWorld(selectionGW, NULL);
	
	ForeColor(blackColor);
	BackColor(whiteColor);
	
	// we copy the contents back into the drawing
	CopyPixMap(selectionPix,
			   currentPix,
			   &(**currentPix).bounds,
			   &(**currentPix).bounds,
			   srcCopy,
			   selectionRgn);
				
	RESTOREGWORLD;
	RESTORECOLORS;
	
	if (trueDefloat)
	{
		// not floated anymore
		status &= ~selectionFloated;
		// and reset the bounds of the selection gworld
		OffsetRect(&(**selectionPix).bounds,
					-(**selectionPix).bounds.left,
					-(**selectionPix).bounds.top);
	}
}

// __________________________________________________________________________________________
// Name			: icnsEditorClass::HandleMarquee
// Input		: None
// Output		: None
// Description	: The most basic selection tool, this one makes a selection based on a rectangle
//				  with its endpoints at the beginning and end of the period while the mouse
//				  button was down.

void icnsEditorClass::HandleMarquee(Point startMouse)
{
	int 		x1, y1, // the starting coordinates of the rectangle
				x2, y2; // the ending coordimates
	Rect		marqueeRect, // the rectangle the selection
				currentBounds, // the dimensions of the current pixmap
				oldMarqueeRect;
	Point		trueStartMouse, currentMouse; // the current coordinates
	RgnHandle	savedRgn; // the saved selection shape
	int			mode; // the mode in which the selection operates
	bool		optionKeyOriginallyDown = false, // were these modifiers held down before
				shiftKeyOriginallyDown = false;  // the mouse buttom was?
	
	trueStartMouse = startMouse;
	
	// we get the starting point, etc. (this is very similar to the rectangle function, only
	// differences will be noted).
	GetDrawingMousePosition(&x1, &y1, &startMouse, 0);
	x2 = x1;
	y2 = y1;
	
	// this function works in a very similar fashion with the rectangle tool, except that the
	// final result is a selection. Also, the modifiers (option and shift) have different effects
	// if they were held before or after the selection began, so that must be taken into account
		
	// we detemine the selection mode (additive, subtractive or normal) based on the modifiers
	if (ISSHIFTDOWN && (status & hasSelection))
	{
		mode = additive;
		shiftKeyOriginallyDown = true;
	}
	else if (ISOPTIONDOWN && (status & hasSelection))
	{
		mode = subtractive;
		optionKeyOriginallyDown = true;
	}
	else
		mode = normal;
	
	// if we're in these two modes we must save the current selection
	if (mode == normal)
	{
		Point theMouse;
		
		theMouse.h = x1;
		theMouse.v = y1;
		
		if (PtInRgn(theMouse, selectionRgn))
		{
			if (status & selectionFloated)
				HandleMove(trueStartMouse);
			else
				DragSelection(trueStartMouse, x1, y1);
			return;
		}
	}
	else
	{
		savedRgn = NewRgn();
		CopyRgn(selectionRgn, savedRgn);
	}
	
	// if there's a floated selection and we're in these modes...
	if ((status & selectionFloated) && (mode == normal || mode == additive))
		DefloatSelection(true); // we must defloat it
	
	GetRegionBounds(selectionRgn, &oldMarqueeRect);
	
	while (Button())
	{
		MUtilities::GetMouseLocation(GetWindowPort(window), &currentMouse);
		
		if (currentMouse.h != trueStartMouse.h || currentMouse.v != trueStartMouse.v)
		{
			GetDrawingMousePosition(&x2, &y2, &currentMouse, 0);
			
			SetRect(&marqueeRect, x1, y1, x2, y2);
			if (marqueeRect.left > marqueeRect.right)
			{
				marqueeRect.left = x2;
				marqueeRect.right = x1;
			}
			
			marqueeRect.right++;
				
			if (marqueeRect.top > marqueeRect.bottom)
			{
				marqueeRect.top = y2;
				marqueeRect.bottom = y1;
			}
			
			marqueeRect.bottom++;
			
			if (!ISOPTIONDOWN) optionKeyOriginallyDown = false;
			if (!ISSHIFTDOWN) shiftKeyOriginallyDown = false;
			// if shift or option were down originally, and now they're not, we must turn off
			// their respective variables
			
			if (ISOPTIONDOWN && !optionKeyOriginallyDown)
			// if option has been pressed after the selection process began
			{
				currentBounds = (**currentPix).bounds;
				if (ISSHIFTDOWN && !shiftKeyOriginallyDown)
				// same thing for shift
				{
					if (abs(x2 - x1) > abs(y2 - y1))
						SetRect(&marqueeRect,
								x1 - abs(x2 - x1),
								y1 - abs(x2 - x1),
								x1 + abs(x2 - x1),
								y1 + abs(x2 - x1));
					else
						SetRect(&marqueeRect,
							x1 - abs(y2 - y1),
							y1 - abs(y2 - y1),
							x1 + abs(y2 - y1),
							y1 + abs(y2 - y1));
					if (marqueeRect.top < 0)
					{
						marqueeRect.bottom += marqueeRect.top;
						marqueeRect.right += marqueeRect.top;
						marqueeRect.left -= marqueeRect.top;
						marqueeRect.top = 0;
					}
					if (marqueeRect.left < 0)
					{
						marqueeRect.right += marqueeRect.left;
						marqueeRect.bottom += marqueeRect.left;
						marqueeRect.top -= marqueeRect.left;
						marqueeRect.left = 0;
					}
					if (marqueeRect.bottom > currentBounds.bottom)
					{
						marqueeRect.top += marqueeRect.bottom - currentBounds.bottom;
						marqueeRect.right -= marqueeRect.bottom - currentBounds.bottom;
						marqueeRect.left += marqueeRect.bottom - currentBounds.bottom;
						marqueeRect.bottom = currentBounds.bottom;
					}
					if (marqueeRect.right > currentBounds.right)
					{
						marqueeRect.left += marqueeRect.right - currentBounds.right;
						marqueeRect.bottom -= marqueeRect.right - currentBounds.right;
						marqueeRect.top += marqueeRect.right - currentBounds.right;
						marqueeRect.right = currentBounds.right;
					}
				}
				else
				{
					SetRect(&marqueeRect,
							x1 - abs(x2 - x1),
							y1 - abs(y2 - y1),
							x1 + abs(x2 - x1) + 1,
							y1 + abs(y2 - y1) + 1);
					if (marqueeRect.top < 0)
					{
						marqueeRect.bottom += marqueeRect.top;
						marqueeRect.top = 0;
					}
					if (marqueeRect.left < 0)
					{
						marqueeRect.right += marqueeRect.left;
						marqueeRect.left = 0;
					}
					if (marqueeRect.bottom > currentBounds.bottom)
					{
						marqueeRect.top += marqueeRect.bottom - currentBounds.bottom;
						marqueeRect.bottom = currentBounds.bottom;
					}
					if (marqueeRect.right > currentBounds.right)
					{
						marqueeRect.left += marqueeRect.right - currentBounds.right;
						marqueeRect.right = currentBounds.right;
					}
				}
			}
			else
			{
				if (ISSHIFTDOWN && !shiftKeyOriginallyDown)
				// again, if shift has been pressed after the selection process began
				{
					if ((marqueeRect.left == x1 && marqueeRect.top == y1))
						if ((marqueeRect.right - marqueeRect.left) > (marqueeRect.bottom - marqueeRect.top))
							marqueeRect.bottom = marqueeRect.top + (marqueeRect.right - marqueeRect.left);
						else
							marqueeRect.right = marqueeRect.left + (marqueeRect.bottom - marqueeRect.top);
					if ((marqueeRect.right == x1 + 1 && marqueeRect.top == y1))
						if ((marqueeRect.right - marqueeRect.left) > (marqueeRect.bottom - marqueeRect.top))
							marqueeRect.bottom = marqueeRect.top + (marqueeRect.right - marqueeRect.left);
						else
							marqueeRect.left = marqueeRect.right - (marqueeRect.bottom - marqueeRect.top);
					if ((marqueeRect.right == x1 + 1 && marqueeRect.bottom == y1 + 1))
						if ((marqueeRect.right - marqueeRect.left) > (marqueeRect.bottom - marqueeRect.top))
							marqueeRect.top = marqueeRect.bottom - (marqueeRect.right - marqueeRect.left);
						else
							marqueeRect.left = marqueeRect.right - (marqueeRect.bottom - marqueeRect.top);
					if ((marqueeRect.left == x1 && marqueeRect.bottom == y1 + 1))
						if ((marqueeRect.right - marqueeRect.left) > (marqueeRect.bottom - marqueeRect.top))
							marqueeRect.top = marqueeRect.bottom - (marqueeRect.right - marqueeRect.left);
						else
							marqueeRect.right = marqueeRect.left + (marqueeRect.bottom - marqueeRect.top);
				}
			}
				
			RectRgn(selectionRgn, &marqueeRect);
			// now that we have a rectangle, we can convert it into a region
			
			// and if we're in a special mode, we must perform those operations on the selection
			if (mode == additive)
				UnionRgn(selectionRgn, savedRgn, selectionRgn);
			else if (mode == subtractive)
				DiffRgn(savedRgn, selectionRgn, selectionRgn);
			
			// we also need the enlarged selection for displaying
			MagnifySelectionRgn();
		}
		else if (mode == normal) // if the starting and current positions are the same
		{
			SetEmptyRgn(selectionRgn);
			SetRect(&marqueeRect, 0, 0, 0, 0);
		}
		
		UpdateEditArea(marqueeRect, oldMarqueeRect, 0);
		if (statics.colorsPalette->IsVisible())
			statics.colorsPalette->UpdateReadout(x2, y2, kPickerNeverUsedColor);
			
		GetRegionBounds(selectionRgn, &oldMarqueeRect);
		// we need to update the whole thing
	}
}

void icnsEditorClass::DragSelection(Point startMouse, int anchorX, int anchorY)
{
	int		x, y, // current location
			startX, startY; // original location
	Rect	oldBounds, newBounds;
	Point	currentMouse;
	bool	moved = false;
	
	startX = anchorX;
	startY = anchorY;
	
	
	while (Button()) // we move while the button is down
	{
		MUtilities::GetMouseLocation(GetWindowPort(window), &currentMouse);
		if (currentMouse.h != startMouse.h || currentMouse.v != startMouse.v || moved)
		{
			moved = true;
		
			GetDrawingMousePosition(&x, &y, &currentMouse, 0);

			// and get the new position
			if (ISSHIFTDOWN) // angle based constraints, very similar to the line constraints
				ConstrainLine45(startX, startY, &x, &y);
			
			// we must move both the normal and the magnified selection shape
			GetRegionBounds(selectionRgn, &oldBounds);
			OffsetRgn(selectionRgn, x - anchorX, y - anchorY);
			GetRegionBounds(selectionRgn, &newBounds);
			OffsetRgn(selectionContentsMagnifiedRgn,
					 (x - anchorX) * magnification,
					 (y - anchorY) * magnification);
			OffsetRgn(selectionOutlineMagnifiedRgn,
					 (x - anchorX) * magnification,
					 (y - anchorY) * magnification);
					 
			
			UnionRect(&oldBounds, &newBounds, &newBounds);
			MagnifyRect(&newBounds, magnification);
			OffsetRect(&newBounds,
					   editAreaRect.left - hScrollbarValue,
					   editAreaRect.top - vScrollbarValue);
			SectRect(&newBounds, &editAreaRect, &newBounds);
			
			UpdateEditArea(newBounds);
			if (statics.colorsPalette->IsVisible())
				statics.colorsPalette->UpdateReadout(x, y, kPickerNeverUsedColor);
			
			// and set the current coordinates as the old ones
			anchorX = x;
			anchorY = y;
		}
	}
	
	if (!moved)
		MakeSelection(none);
	
	return;
}

// __________________________________________________________________________________________
// Name			: icnsEditorClass::MagnifySelectionRgn
// Input		: None
// Output		: None
// Description	: This function takes the 1:1 selection shape (stored in selectionRgn) and
//				  enlarges it (by using the magnification field) so that it can be displayed
//				  on the screen 

void icnsEditorClass::MagnifySelectionRgn(void)
{
	Rect		currentBounds,
				tempRect; // the rectangle used for enlarging
	RgnHandle	tempRgn; // the region used for "cutting out"
	
	if (EmptyRgn(selectionRgn)) // if the selection is empty, then we don't do anything
		return;
	
	// we get the target dimensions (original * magnification)
	GetRegionBounds(selectionRgn, &currentBounds);
	tempRect = currentBounds;
	MagnifyRect(&tempRect, magnification);
	
	CopyRgn(selectionRgn, selectionContentsMagnifiedRgn); // we copy the normal selection shape
	MapRgn(selectionContentsMagnifiedRgn, &currentBounds, &tempRect); // and enlarge it
	
	CopyRgn(selectionContentsMagnifiedRgn, selectionOutlineMagnifiedRgn);
	
	if (statics.preferences.FeatureEnabled(prefsDrawGrid))
	{
		RgnHandle tempRgn;
		
		tempRgn = NewRgn();
		CopyRgn(selectionOutlineMagnifiedRgn, tempRgn);
		OffsetRgn(tempRgn, 1, 1);
		UnionRgn(tempRgn, selectionOutlineMagnifiedRgn, selectionOutlineMagnifiedRgn);
		
		if (status & selectionFloated)
			tempRect = (**selectionPix).bounds;
		else
			tempRect = (**currentPix).bounds;
			
		MagnifyRect(&tempRect, magnification);
		
		RectRgn(tempRgn, &tempRect);
		SectRgn(selectionOutlineMagnifiedRgn, tempRgn, selectionOutlineMagnifiedRgn);
		
		DisposeRgn(tempRgn);
	}
	
	// we also need to "cut out" so that the region we have left over is one pixel thick
	// on all sides (since we'll be filling it with the selection pattern)
	tempRgn = NewRgn();
	CopyRgn(selectionOutlineMagnifiedRgn, tempRgn);
	InsetRgn(tempRgn, 1, 1);
	DiffRgn(selectionOutlineMagnifiedRgn, tempRgn, selectionOutlineMagnifiedRgn);
	DisposeRgn(tempRgn);
}

// __________________________________________________________________________________________
// Name			: icnsEditorClass::HandleFilling
// Input		: None
// Output		: None
// Description	: the function simulates a paint bucket tool, which fills with the foreground
//				  color all neighboring areas that have the same color as the pixel where
//				  the click was

void icnsEditorClass::HandleFilling(Point theMouse)
{
	int				x, y; // the click location
	GWorldPtr		targetGW;
	PixMapHandle	targetPix; // pixmap where the filling will take place
	OSStatus		err = noErr; // used for error checking
	RgnHandle		clipRgn = NULL, tempRgn;
#if TARGET_API_MAC_CARBON
	GWorldPtr		fillShapeGW;
	PixMapHandle	fillShapePix;
#else
	GrafPtr			fillShape;
#endif
	Pattern			fillPattern;
	RGBColor		foreColor, backColor;
	
	SAVEGWORLD;
	
	GetDrawingMousePosition(&x, &y, &theMouse, 0); // we get the click location
	
	if (!(EmptyRgn(selectionRgn))) // if there is a selection
	{
		Point	tempPoint;
		tempPoint.h = x;
		tempPoint.v = y;
		if (!PtInRgn(tempPoint, selectionRgn))
		// we reject the coordinates if they're outside the selection
		{
			RESTOREGWORLD;
			return;
		}
		
		// if the selection is floated we'll be drawing in the selection
		if (status & selectionFloated)
		{
			targetPix = selectionPix;
			targetGW = selectionGW;
		}
		else // otherwise it'll be in the main drawing
		{
			targetGW = currentGW;
			targetPix = currentPix;
			clipRgn = selectionRgn;
		}
	}
	else // no selection...
	{
		targetGW = currentGW;
		targetPix = currentPix;
	}
	
	tempRgn = NewRgn();
	
#if TARGET_API_MAC_CARBON
	// we make the temporary gworld
	NewGWorld(&fillShapeGW, 1, &(**targetPix).bounds, NULL, NULL, 0);
	fillShapePix = GetGWorldPixMap(fillShapeGW);
	LockPixels(fillShapePix);
	
	SetGWorld(targetGW, NULL);
	SeedCFill((BitMap*)*targetPix,
		  (BitMap*)*fillShapePix,
		  &(**targetPix).bounds,
		  &(**targetPix).bounds,
		  x, y,
		  0,
		  0);
	
	
	// we convert the pixmap into a region to get the selection shape
	BitMapToRegion(tempRgn, (BitMap*)*fillShapePix);
	
	UnlockPixels(fillShapePix);
	DisposeGWorld(fillShapeGW);
#else
	// we make the temporary gworld
	fillShape = CreateGrafPort(&(**targetPix).bounds);
	
	SetGWorld(targetGW, NULL);
	SeedCFill((BitMap*)*targetPix,
		  GetPortBitMapForCopyBits(fillShape),
		  &(**targetPix).bounds,
		  &(**targetPix).bounds,
		  x, y,
		  0,
		  0);
	
	
	// we convert the pixmap into a region to get the selection shape
	BitMapToRegion(tempRgn, GetPortBitMapForCopyBits(fillShape));
	
	DisposeGrafPort(fillShape);
#endif
	
	if (clipRgn != NULL)
		SectRgn(tempRgn, clipRgn, tempRgn);
		
	SetGWorld(targetGW, NULL);
	
	SAVECOLORS;
	
	statics.toolPalette->GetColors(&foreColor, &backColor);
	
	RGBForeColor(&foreColor);
	RGBBackColor(&backColor);
	
	fillPattern = statics.toolPalette->GetPattern();
	
	FillRgn(tempRgn, &fillPattern);
	
	RESTORECOLORS;
	RESTOREGWORLD;
}

// __________________________________________________________________________________________
// Name			: icnsEditorClass::HandleEyeDropper
// Input		: None
// Output		: None
// Description	: this function "picks up" the color of the pixel underneath the click, and
//				  sets it to the foreground color (or background if the option modifier is
//				  held down).

void icnsEditorClass::HandleEyeDropper(Point theMouse)
{
	int oldX, oldY, x, y;
	Point clickLocation;
	RGBColor	newColor;
	
	SAVEGWORLD;
	
	GetDrawingMousePosition(&x, &y, &theMouse, 0); // we find out where the user clicked
	
	oldX = -1;
	oldY = -1;
	
	do
	{
		if (oldX != x || oldY != y)
		{
			oldX = x;
			oldY = y;
			clickLocation.h = x;
			clickLocation.v = y;
			
			if ((status & selectionFloated) && (PtInRgn(clickLocation, selectionRgn)))
				SetGWorld(selectionGW, NULL);
			else
				SetGWorld(currentGW, NULL); // go into the gworld
			
			GetCPixel(x, y, &newColor);
			RESTOREGWORLD;
			if (((ISOPTIONDOWN || ISSHIFTDOWN) && !statics.toolPalette->InToggleMode()) || // if option is down and we're not in toggle mode
				(ISSHIFTDOWN && statics.toolPalette->InToggleMode()))
				statics.toolPalette->SetColors(NULL, &newColor);
			else
				statics.toolPalette->SetColors(&newColor, NULL); // otherwise it goes into the foreground color
			
			
			/*if (statics.colorsPalette->IsVisible())
				statics.colorsPalette->UpdateReadout(x, y, newColor);*/
		}
				
		GetDrawingMousePosition(&x, &y, NULL, 0); // we find out where the user clicked
	} while (Button());
}

// __________________________________________________________________________________________
// Name			: icnsEditorClass::HandlePen
// Input		: None
// Output		: None
// Description	: this function simulates a pen tool, which draws a trail of pixels in the
//				  foreground color following the cursor, while the mouse button is held down
// Notes		: if the current tool is the eraser, then the pixels are drawn in the background
//				  color

void icnsEditorClass::HandlePen(Point initialMouse)
{
	Point			mousePosition, // the current mouse position
					oldMouse; // the previous mouse position
	int 			x, y, // the coordinates of the current position
					oldX = -1, oldY = -1, // the previous coordinates
					startX, startY, // the starting coordinates (used when constraining)
					xOffset, yOffset;
	GWorldPtr		targetGW; // the gworld where we'll be drawing
	PixMapHandle	targetPix; // the pixmap for the gworld above
	RgnHandle		savedClip = NULL; // used for limiting the drawing to the selection
	RGBColor		penColor;
	
	SAVEGWORLD;
	SAVECOLORS;
	
	xOffset = yOffset = -statics.preferences.GetLineThickness()/2;
	
	GetDrawingMousePosition(&oldX, &oldY, &initialMouse, 0);
	oldX += xOffset;
	oldY += yOffset;
	
	startX = oldX;
	startY = oldY;
	
	if (status & selectionFloated) // if there's a floated selection
	{
		targetGW = selectionGW; // we draw in in
		targetPix = selectionPix;
	}
	else
	{
		if (!EmptyRgn(selectionRgn)) // if there's a non-floated selection
		{
			SetGWorld(currentGW, NULL); // we must limit the drawing (by changing the clipping
			savedClip = NewRgn(); // region) to the selection
			GetClip(savedClip);
			SetClip(selectionRgn);
			RESTOREGWORLD;
		}
		targetGW = currentGW; // we'll be drawing in the main GWorld
		targetPix = currentPix;
	}
	
	SetGWorld(targetGW, NULL);
	if (statics.toolPalette->GetCurrentTool() == toolPen)
	// pen mode: we draw in the foreground color (normally, toggle if curent color is foreground)
	{
		Point mouseLoc;
		RGBColor temp, foreColor;
		
		mouseLoc.h = oldX;
		mouseLoc.v = oldY;
		
		if (((status & selectionFloated) && PtInRgn(mouseLoc, selectionRgn)) ||
			!(status & selectionFloated))
		{
			GetCPixel(oldX - xOffset, oldY - yOffset, &temp);
			
			statics.toolPalette->GetColors(&foreColor, NULL);
			
			if (AreEqualRGB(temp, foreColor))
				statics.toolPalette->GetColors(NULL, &penColor);
			else
				penColor = foreColor;
		}
		else
			statics.toolPalette->GetColors(&penColor, NULL);
	}
	else if (statics.toolPalette->GetCurrentTool() == toolEraser) // eraser mode: we draw in the background color
	{
		statics.toolPalette->GetColors(NULL, &penColor);
	}
	
	RGBForeColor(&penColor);
	
	PenSize(statics.preferences.GetLineThickness(), statics.preferences.GetLineThickness());

	MoveTo(oldX, oldY); // we must draw the first pixel (which is on no matter what)
	LineTo(oldX, oldY);
	
	RESTOREGWORLD;
	
	UpdateEditArea();
	
	oldMouse = initialMouse;
	
	
	while (Button()) // while the button is down
	{
		MUtilities::GetMouseLocation(GetWindowPort(window), &mousePosition);
		if (mousePosition.h != oldMouse.h || mousePosition.v != oldMouse.v)
		// if the user moves the mouse
		{
			GetDrawingMousePosition(&x, &y, &mousePosition, 0); // get the new position in terms of the drawing
			x += xOffset;
			y += yOffset;
			
			if (ISSHIFTDOWN)
			{
				ConstrainLine90(startX, startY, &x, &y);
				mousePosition.h = x;
				mousePosition.v = y;
			}
	
			if (x != oldX || y != oldY) // if the position is different
			{
				SetGWorld(targetGW, NULL);
				LineTo(x, y); // we connect the last coordinate with this one
				RESTOREGWORLD;
				
				UpdateEditArea(mousePosition, oldMouse, 0);
				
				if (statics.colorsPalette->IsVisible())
					statics.colorsPalette->UpdateReadout(x, y, kPickerNeverUsedColor);
				oldX = x;
				oldY = y;
			}
			
			oldMouse = mousePosition; // we set the new position as the old one
		}
	}
	
	SetGWorld(targetGW, NULL);
	
	if (savedClip != NULL) // if we changed the clipping region
	{
		SetClip(savedClip); // we must restore it
		DisposeRgn(savedClip);
	}
	
	if (statics.toolPalette->GetCurrentTool() == toolEraser)
		PenSize(1, 1);
	
	RESTOREGWORLD;
	RESTORECOLORS;
}

// __________________________________________________________________________________________
// Name			: icnsEditorClass::GetDrawingMousePosition
// Input		: flags: specify options for magnifying, restriction...
// Output		: x, y: the coordinates of the mouse position
// Description	: Gets the mouse coordinates in the terms of the position of the window, and
//				  returns them in terms of the drawing area

inline void icnsEditorClass::GetDrawingMousePosition(int *x, int *y, Point* theMouse, int flags)
{
	Point	originalMouse, mousePosition; // the mouse position in terms of the window
	Rect	boundsRect, // the boundaries of the editing ares (magnified or not)
			limitRect;
	long	returnedPoint; // the "point" that we get from PinRect, upper half is x coordinate,
						   // lower half is y coordinate
	
	if (theMouse == NULL)
		MUtilities::GetMouseLocation(GetWindowPort(window), &originalMouse);
	else
		originalMouse = *theMouse;
	
	boundsRect = (**currentPix).bounds;
	
	// we want the coordinates relative to the edit area
	mousePosition = originalMouse;
	mousePosition.h = mousePosition.h  - editAreaRect.left + hScrollbarValue; 
	mousePosition.v = mousePosition.v - editAreaRect.top + vScrollbarValue;
	 // if we want the magnified view (so the coordinate range is from 0 to currentSize *
	 // * magnification)
	if (flags & magnified)
		MagnifyRect(&boundsRect, magnification);
	else
	{
		mousePosition.h = mousePosition.h/magnification;
		mousePosition.v = mousePosition.v/magnification;
	}
	if (!(flags & noLimit))
	{
		returnedPoint = PinRect(&boundsRect, mousePosition); // PinRect restricts the point to the
		// specified rectangle
		*x = returnedPoint & 0x0000FFFF;
		*y = (returnedPoint & 0xFFFF0000) >> 16;
		limitRect = editAreaRect;
	}
	else
	{
		*x = mousePosition.h;
		*y = mousePosition.v;
		limitRect = editAreaRect;
		InsetRect(&limitRect, magnification * 2, magnification * 2);
	}
	
	if (!PtInRect(originalMouse, &limitRect))
	{
		int scrollX, scrollY, previousH, previousV;
		
		if (originalMouse.h < limitRect.left)
			scrollX = originalMouse.h - limitRect.left;
		else if (originalMouse.h > limitRect.right)
			scrollX = originalMouse.h - limitRect.right;
		else
			scrollX = 0;
		
		if (originalMouse.v < limitRect.top)
			scrollY = originalMouse.v - limitRect.top;
		else if (originalMouse.v > limitRect.bottom)
			scrollY = originalMouse.v - limitRect.bottom;
		else
			scrollY = 0;
			
		scrollX /= 2;
		scrollY /= 2;
		
		previousH = hScrollbarValue;
		previousV = vScrollbarValue;
			
		SetControlValue(controls.hScrollbar, previousH + scrollX);
		SetControlValue(controls.vScrollbar, previousV + scrollY);
								
		hScrollbarValue = GetControlValue(controls.hScrollbar);
		vScrollbarValue = GetControlValue(controls.vScrollbar); 
		
		PanEditArea(hScrollbarValue - previousH, vScrollbarValue - previousV);
	}
	
	if (theMouse != NULL)
	{
		theMouse->h = *x;
		theMouse->v = *y;
	}
}
