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
	
	switch (currentTool)
	// based on the current tool we call on the appropriate function to handle the drawing
	{
		case move :			needToSaveState = HandleMove(theMouse); break;
		case marquee :		HandleMarquee(theMouse); break;
		case eraser :
		case pen :			HandlePen(theMouse); break;
		case fill :			HandleFilling(theMouse); break;
		case eyeDropper :	HandleEyeDropper(theMouse);  needToSaveState = false; break;
		case lasso : 		HandleLasso(theMouse); break;
		case magicWand :	HandleMagicWand(theMouse); break;
		case line : 		HandleLine(theMouse); break;
		case oval:
		case rectangle : 	HandleRectangle(theMouse); break;
		case polygon :		HandlePolygon(theMouse); break;
		case gradient : 	HandleGradient(theMouse); break;
		case text : 		HandleText(theMouse); break;
	}
	
	if (!EmptyRgn(selectionRgn)) // if there still is a selection, we must set that flag
		status |= hasSelection;
	else
		status &= ~hasSelection;
	
	if (needToSaveState) // if there was painting performed...
	{
		currentState = new drawingStateClass(currentState, this); // we must save the state
		status |= needToSave; // the drawing was modified, and thus it needs to be saved...
		status |= needsUpdate; // and be update as well
	}
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
	
	SAVEGWORLD; // we'll be changing the gworld and colors
	SAVECOLORS;
	
	// setting up this variable
	currentBounds = (**currentPix).bounds;
	SetRect(&currentBounds,
			currentBounds.left * magnification,
			currentBounds.top * magnification,
			currentBounds.right * magnification,
			currentBounds.bottom * magnification);
	
	// and the overlay itself
	err = NewGWorld(&overlayGW, 1, &currentBounds, NULL, NULL, 0);
	if (err != noErr) {status |= outOfMemory; return; }
	overlayPix = GetGWorldPixMap(overlayGW);
	LockPixels(overlayPix);
	SetGWorld(overlayGW, NULL);
	EraseRect(&currentBounds);
	
	// we get the starting position
	GetDrawingMousePosition(&startX, &startY, &startMouse, magnified);
	
	while (Button()) // while the button is down
	{
		// we get the new position
		GetDrawingMousePosition(&x, &y, NULL, magnified);
		if (ISSHIFTDOWN) // if shift is down, we must restrict the line to specific angles
			ConstrainLine45(startX, startY, &x, &y);
		
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
		Display(editWellRect, current); // and draw the whole thing
		if (statics.colorsPalette->IsVisible())
			statics.colorsPalette->UpdateReadout(x/magnification, y/magnification, kPickerNeverUsedColor);
	}
	
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
	
	if (controls.toolbar.gradientMode == linear)
		DrawGradient32(startX, startY, foreColor,
					 x, y, backColor,
					 statics.canvasPix, (**targetPix).bounds, clipRgn);
	else
		DrawRadialGradient32(startX, startY, foreColor,
							 x, y, backColor,
							 statics.canvasPix, (**targetPix).bounds, clipRgn);

	if (statics.preferences.FeatureEnabled(prefsDither))		 
		CopyPixMap(statics.canvasPix, targetPix, &(**targetPix).bounds, &(**targetPix).bounds, srcCopy + ditherCopy, clipRgn);
	else
		CopyPixMap(statics.canvasPix, targetPix, &(**targetPix).bounds, &(**targetPix).bounds, srcCopy, clipRgn);
		
	RESTOREGWORLD; // we're done with changing the port
	RESTORECOLORS;
	
	// we're done with the overlay
	UnlockPixels(overlayPix);
	DisposeGWorld(overlayGW);
	overlayPix = NULL;
	
	Display(editWellRect, current); // and draw the whole thing
	
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
	
	if (status & hasSelection)
	{
		if (status & selectionFloated)
			DefloatSelection();
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
	RGBForeColor(&foreColor);
	
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
	
	currentTool = move;
	UpdateToolbar();
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
				x2, y2; // ...and bottom right coordinates of the rectangle
	Rect		drawRect, // the rectangle which the user has chosen to draw
				currentBounds; // the bounds of the current pixmap (to which the rectangle is confined)
	Point		currentMouse; // this is the free-moving point (which the user moves around)
	OSStatus	err = noErr; // used for error checking
	CTabHandle	overlayCTab; // the the color table for the overlay gworld (foreground color+
							 // trasparent color)
	RgnHandle	savedClip = NULL;
	Pattern		fillPattern;
	
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
	
	// setting up this variable
	currentBounds = (**currentPix).bounds;
	
	if ((**currentPix).pixelSize <= 8)
	{
		foreColor = GetNearestColor(foreColor, (**currentPix).pmTable);
		backColor = GetNearestColor(backColor, (**currentPix).pmTable);
	}
	
	GetIndPattern(&fillPattern, rDrawingPatterns, pattern + 1);
	
	err = MakeThreeColorTable(&overlayCTab, foreColor, backColor, kNeverUsedColorAsRGB);
	// we must create the color table which is used for the overlay
	if (err != noErr) {status |= outOfMemory; return; }
	
	err = NewGWorld(&overlayGW, 2, &currentBounds, overlayCTab, NULL, 0);
	// and allocate the space for the overlay
	if (err != noErr) {status |= outOfMemory; return; }
	SetGWorld(overlayGW, NULL);
	overlayPix = GetGWorldPixMap(overlayGW);
	LockPixels(overlayPix);
	RGBBackColor(&kNeverUsedColorAsRGB); // we fill it with the transparent color
	EraseRect(&currentBounds);
	GetDrawingMousePosition(&x1, &y1, &startMouse, 0);
	x2 = x1;
	y2 = y1;
	
	RESTOREGWORLD;
	
	while (Button()) // while the button is down...
	{
		GetMouse(&currentMouse); // we see if the user moved the mouse
		if (currentMouse.h != startMouse.h || currentMouse.v != startMouse.v)
		{
			// if he did, then we move into action...
			
			GetDrawingMousePosition(&x2, &y2, &currentMouse, 0); // we get the location in terms of the drawing
			
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
			
			// now that we have the rectangle which we wish draw all ready..
			SetGWorld(overlayGW, NULL);
			RGBBackColor(&kNeverUsedColorAsRGB); // we refill the gworld with the transparent color
			EraseRect(&currentBounds);
			RGBForeColor(&foreColor);
			RGBBackColor(&backColor);
			if (currentTool == rectangle)
			{
				if (controls.toolbar.toolMode == filled)
					FillRect(&drawRect, &fillPattern);
				FrameRect(&drawRect); // we draw it
			}
			else
			{
				if (controls.toolbar.toolMode == filled)
					FillOval(&drawRect, &fillPattern);
				FrameOval(&drawRect);
			}
			RESTOREGWORLD;
		} // endof: the user moved the mouse
		Display(editWellRect, current);
		if (statics.colorsPalette->IsVisible())
			statics.colorsPalette->UpdateReadout(x2, y2, kPickerNeverUsedColor);
		// we display the current icon (this adds on the overlay autmatically)
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

	if (currentTool == rectangle)
	{
		if (controls.toolbar.toolMode == filled)
			FillRect(&drawRect, &fillPattern);
		FrameRect(&drawRect); // we draw it
	}
	else
	{
		if (statics.preferences.FeatureEnabled(prefsAntiAlias))
		{
			if (controls.toolbar.toolMode == filled)
				FillAndFrameOvalAA(&drawRect, &fillPattern, statics.canvasGW, statics.canvasPix);
			else
				FrameOvalAA(&drawRect, statics.canvasGW, statics.canvasPix);
		}
		else
		{
			if (controls.toolbar.toolMode == filled)
				FillOval(&drawRect, &fillPattern);
			
			FrameOval(&drawRect);
		}
	}
	
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
	
	Draw1Control(controls.iconEditWell);
}

// __________________________________________________________________________________________
// Name			: icnsEditorClass::HandlePolygon
// Input		: None
// Output		: None
// Description	: Draws an irregular polygon based on the vertices which the user selects.

void icnsEditorClass::HandlePolygon(Point startMouse)
{
	int 		x, y;
	Rect		currentBounds;
	CTabHandle	overlayCTab;
	Point		vertices[255];
	int			noOfVertices;
	OSErr		err;
	bool 		firstTime;
	long		lastClick, clickDelay;
	RgnHandle	savedClip = NULL;
	Pattern		fillPattern;
	
	GetIndPattern(&fillPattern, rDrawingPatterns, pattern + 1);
	
	clickDelay = LMGetDoubleTime();
	
	SAVEGWORLD; // we'll be changing the gworld and colors
	SAVECOLORS;
	
	currentBounds = (**currentPix).bounds;
	
	if ((**currentPix).pixelSize <= 8)
	{
		foreColor = GetNearestColor(foreColor, (**currentPix).pmTable);
		backColor = GetNearestColor(backColor, (**currentPix).pmTable);
	}
	
	// making the color table for the overlay
	err = MakeTwoColorTable(&overlayCTab, foreColor, kNeverUsedColorAsRGB);
	if (err != noErr) {status |= outOfMemory; return; }
	
	// and the overlay itself
	err = NewGWorld(&overlayGW, 1, &currentBounds, overlayCTab, NULL, 0);
	if (err != noErr) {status |= outOfMemory; return; }
	overlayPix = GetGWorldPixMap(overlayGW);
	LockPixels(overlayPix);
	SetGWorld(overlayGW, NULL);
	EraseRect(&currentBounds);
	
	GetDrawingMousePosition(&x, &y, &startMouse, 0);
	vertices[0].h = x; vertices[0].v = y;
	noOfVertices = 0;
	
	firstTime = true;
	
	while (Button()){;}
	
	lastClick = LMGetTicks();
	
	while ((vertices[0].h != vertices[noOfVertices].h) ||
		   (vertices[0].v != vertices[noOfVertices].v) ||
		   firstTime)
	{
		GetDrawingMousePosition(&x, &y, NULL, 0);
		
		if (ISSHIFTDOWN)
			ConstrainLine45(vertices[noOfVertices].h, vertices[noOfVertices].v, &x, &y);
		
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
		Display(editWellRect, current);
		if (statics.colorsPalette->IsVisible())
			statics.colorsPalette->UpdateReadout(x, y, kPickerNeverUsedColor);
		
		if (Button())
		{
			noOfVertices++;
			
			if (firstTime) firstTime = false;
			
			while (Button()){;}
			
			if ((LMGetTicks() - lastClick) <= clickDelay &&
				(vertices[noOfVertices - 1].h == x &&
				(vertices[noOfVertices - 1].v == y)))
			{
				vertices[noOfVertices].h = vertices[0].h;
				vertices[noOfVertices].v = vertices[0].v;
				lastClick = LMGetTicks();
			}
			else
			{
				vertices[noOfVertices].h = x;
				vertices[noOfVertices].v = y;
				lastClick = LMGetTicks();
			}
		}
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
	
	if (controls.toolbar.toolMode == filled)
		FillPoly(poly, &fillPattern);
	
	if (statics.preferences.FeatureEnabled(prefsAntiAlias))
		FramePolyAA(poly, statics.canvasGW, statics.canvasPix);
	else
		FramePoly(poly);
	
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

	Display(editWellRect, current);
		
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
				x, y; // the end (free-moving) x and y coordinates
	Rect		currentBounds; // the dimensions of the current icon size
	OSStatus	err = noErr; // used for error checking
	CTabHandle	overlayCTab; // the color table for the overlay
	
	SAVEGWORLD; // we'll be changing the gworld and colors
	SAVECOLORS;
	
	// setting up this variable
	currentBounds = (**currentPix).bounds;
	
	if ((**currentPix).pixelSize <= 8)
	{
		foreColor = GetNearestColor(foreColor, (**currentPix).pmTable);
		backColor = GetNearestColor(backColor, (**currentPix).pmTable);
	}
	
	// making the color table for the overlay
	err = MakeTwoColorTable(&overlayCTab, foreColor, kNeverUsedColorAsRGB);
	if (err != noErr) {status |= outOfMemory; return; }
	
	// and the overlay itself
	err = NewGWorld(&overlayGW, 1, &currentBounds, overlayCTab, NULL, 0);
	if (err != noErr) {status |= outOfMemory; return; }
	overlayPix = GetGWorldPixMap(overlayGW);
	LockPixels(overlayPix);
	
	// we get the starting position
	GetDrawingMousePosition(&startX, &startY, &startMouse, 0);
	
	while (Button()) // while the button is down
	{
		// we get the new position
		GetDrawingMousePosition(&x, &y, NULL, 0);
		if (ISSHIFTDOWN) // if shift is down, we must restrict the line to specific angles
			ConstrainLine45(startX, startY, &x, &y);
		
		// now that we the coordinates
		SetGWorld(overlayGW, NULL); // we go into the overlay
		RGBForeColor(&foreColor);
		RGBBackColor(&kNeverUsedColorAsRGB);
		EraseRect(&currentBounds); // clear the previous contents
		MoveTo(startX, startY);
		LineTo(x, y); // draw the line
		RESTOREGWORLD;
		RESTORECOLORS;
		Display(editWellRect, current); // and draw the whole thing
		if (statics.colorsPalette->IsVisible())
			statics.colorsPalette->UpdateReadout(x, y, kPickerNeverUsedColor);
	}
	
	RESTOREGWORLD; // we're done with changing the port
	RESTORECOLORS;
	
	if (EmptyRgn(selectionRgn)) // if there isn't a selection
	{
		SetGWorld(currentGW, NULL); // we just draw it in in the main GWorld
		RGBForeColor(&foreColor);
		MoveTo(startX, startY);
		if (statics.preferences.FeatureEnabled(prefsAntiAlias))
			LineToAA(x, y, statics.canvasGW, statics.canvasPix);
		else
			LineTo(x, y);
	}
	else if (status & selectionFloated) // if there's a selection and its floated
	{
		SetGWorld(selectionGW, NULL); // we just draw inside the selection contents
		RGBForeColor(&foreColor);
		MoveTo(startX, startY);
		if (statics.preferences.FeatureEnabled(prefsAntiAlias))
			LineToAA(x, y, statics.canvasGW, statics.canvasPix);
		else
			LineTo(x, y);
	}
	else // otherwise (there's a selection, but it isn't floated) we must restrict the drawing
		 // to the selection contents
	{
		RgnHandle tempRgn; // used to temporarely store the clippin region
		
		SetGWorld(currentGW, NULL);
		
		tempRgn = NewRgn();
		GetClip(tempRgn);
		
		RGBForeColor(&foreColor);
		SetClip(selectionRgn); 
		// this is done by changing the clipping region so that it is the selection region
		MoveTo(startX, startY);
		if (statics.preferences.FeatureEnabled(prefsAntiAlias))
			LineToAA(x, y, statics.canvasGW, statics.canvasPix);
		else
			LineTo(x, y);
		
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
	Rect			currentBounds; // the bounds of the current pixmap
	int				startX, startY, // the starting x and y coordinates
					mode; // the selection mode
	RgnHandle		lassoSelectionRgn, // the drawn selection shape
					tightenedRgn; 
	OSStatus		err = noErr; // error checking
	SAVEGWORLD;
	SAVECOLORS;
	
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
		
		theMouse.h = startX;
		theMouse.v = startY;
		
		if (PtInRgn(theMouse, selectionRgn))
		{
			if (status & selectionFloated)
				HandleMove(startMouse);
			else
				DragSelection(startX, startY);
			return;
		}
	}
		
	// we defloat the selection if we need to
	if ((status & selectionFloated) && (mode == normal || mode == additive))
		DefloatSelection();
	
	// we deselect the current selection if we need to
	if (mode == normal)
		SetEmptyRgn(selectionRgn);
	
	// we get the current bounds, but we want them at the magnified resolution 
	currentBounds = (**currentPix).bounds;
	SetRect(&currentBounds,
			currentBounds.left * magnification,
			currentBounds.top * magnification,
			currentBounds.right * magnification,
			currentBounds.bottom * magnification);
	
	// we create the overlay
	err = NewGWorld(&overlayGW, 1, &currentBounds, NULL, NULL, 0);
	if (err != noErr) {status |= outOfMemory; return; }
	SetGWorld(overlayGW, NULL);
	EraseRect(&currentBounds);
	overlayPix = GetGWorldPixMap(overlayGW);
	LockPixels(overlayPix);
	
	
	MoveTo(startX, startY);
	
	RESTOREGWORLD;
	
	if (controls.toolbar.lassoMode == freehand)
		HandleFreehandLasso();
	else
		HandlePolygonalLasso();
		
	SetGWorld(overlayGW, NULL);
	
	// we connect it back to the starting point
	LineTo(startX, startY);
	
	//SetGWorld(il32GW, NULL);
	
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
	DisposeRgn(tightenedRgn);
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
	int x, y;
	
	SAVEGWORLD;
	
	while (Button())
	{
		SetGWorld(overlayGW, NULL);
		// and we just trace the position
		GetDrawingMousePosition(&x, &y, NULL, magnified);
		LineTo(x, y);
		RESTOREGWORLD;
		// and keep the display updated
		Display(editWellRect, current);
		if (statics.colorsPalette->IsVisible())
			statics.colorsPalette->UpdateReadout(x/magnification, y/magnification, kPickerNeverUsedColor);
	}
}

void icnsEditorClass::HandlePolygonalLasso(void)
{
	int 		x, y;
	Rect		currentBounds;
	Point		vertices[255];
	int			noOfVertices;
	bool 		firstTime;
	long		lastClick, clickDelay;
	
	clickDelay = LMGetDoubleTime()/2;
	
	SAVEGWORLD; // we'll be changing the gworld and colors
	SAVECOLORS;
	
	currentBounds = (**overlayPix).bounds;
	
	GetDrawingMousePosition(&x, &y, NULL, magnified);
	vertices[0].h = x; vertices[0].v = y;
	noOfVertices = 0;
	
	firstTime = true;
	
	while (Button()){;}
	
	lastClick = LMGetTicks();
	
	while ((vertices[0].h > vertices[noOfVertices].h + 3) ||
		   (vertices[0].h < vertices[noOfVertices].h - 3) ||
		   (vertices[0].v > vertices[noOfVertices].v + 3) ||
		   (vertices[0].v < vertices[noOfVertices].v - 3) ||
		   firstTime)
	{
		GetDrawingMousePosition(&x, &y, NULL, magnified);
		
		if (ISSHIFTDOWN)
			ConstrainLine45(vertices[noOfVertices].h, vertices[noOfVertices].v, &x, &y);
		
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
		Display(editWellRect, current);
		if (statics.colorsPalette->IsVisible())
			statics.colorsPalette->UpdateReadout(x/magnification, y/magnification, kPickerNeverUsedColor);
		
		if (Button())
		{
			noOfVertices++;
			
			if (firstTime) firstTime = false;
			
			while (Button()){;}
			
			if ((LMGetTicks() - lastClick) <= clickDelay)
			{
				vertices[noOfVertices].h = vertices[0].h;
				vertices[noOfVertices].v = vertices[0].v;
				lastClick = LMGetTicks();
			}
			else
			{
				vertices[noOfVertices].h = x;
				vertices[noOfVertices].v = y;
				lastClick = LMGetTicks();
			}
		}
	}	
	
	RESTOREGWORLD;
	RESTORECOLORS;
	
	FlushEvents(mDownMask | mUpMask, 0);
}


RgnHandle icnsEditorClass::TightenLasso(RgnHandle lassoSelectionRgn)
{
	RgnHandle 		tightenedRgn;
	ColorSearchUPP	maskColorSearchUPP;
	GrafPtr			temp;
	Rect			tempRect;
	
	tightenedRgn = NewRgn();
	// then we calculate the tightened selection shape
	tempRect = (**lassoSelectionRgn).rgnBBox;
	OffsetRect(&tempRect, -tempRect.left, -tempRect.top);
	temp = CreateGrafPort(&tempRect);

	maskColorSearchUPP = NewColorSearchProc(MaskColorSearch);
	
	CalcCMask((BitMap*)*currentPix,
			  &temp->portBits,
			  &(**lassoSelectionRgn).rgnBBox,
			  &tempRect,
			  &backColor,
			  maskColorSearchUPP,
			  0);
	
	BitMapToRegion(tightenedRgn, &temp->portBits);
	OffsetRgn(tightenedRgn, (**lassoSelectionRgn).rgnBBox.left, (**lassoSelectionRgn).rgnBBox.top);
	SectRgn(tightenedRgn, lassoSelectionRgn, tightenedRgn);
	
	DisposeRoutineDescriptor(maskColorSearchUPP);
	
	DisposeGrafPort(temp);
	
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
	GrafPtr		selectionShape; // the selection shape (to be converted into a region)
	Rect		currentBounds; // dimensions of the current drawing
	int			x, y; // click location
	int			mode; // the selection mode
	RgnHandle	tempRgn; // this is where the new selection will be temporarely stored 
	OSStatus	err = noErr; // error checking
	
	SAVEGWORLD;
	SAVECOLORS;
	
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
				HandleMove(theMouse);
			else
				DragSelection(x, y);
			return;
		}
	}
	
	// depending on the mode we have to defloat
	if ((status & selectionFloated) && (mode == normal || mode == additive))
		DefloatSelection();	
	
	// setting up the variables
	currentBounds = (**currentPix).bounds;
	tempRgn = NewRgn();

	// we make the temporary gworld
	selectionShape = CreateGrafPort(&currentBounds);
	
	if (!(status & selectionFloated)) // if there isn't a floated selection
	{
		// we must get the new selection from the current GWorld
		SetGWorld(currentGW, NULL);
		SeedCFill((BitMap*)*currentPix,
			  &selectionShape->portBits,
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
			  &selectionShape->portBits,
			  &currentBounds,
			  &currentBounds,
			  x, y,
			  0,
			  0);
	}
	
	// we convert the pixmap into a region to get the selection shape
	BitMapToRegion(tempRgn, &selectionShape->portBits); 
			  
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
	DisposeGrafPort(selectionShape);
}

// __________________________________________________________________________________________
// Name			: icnsEditorClass::HandleMove
// Input		: None
// Output		: None
// Description	: Moves the current selection (if any) by following the mouse cursor while
//				  the mouse button is down.

bool icnsEditorClass::HandleMove(Point startMouse)
{
	int		anchorX, anchorY, // previous location
			x, y, // current location
			startX, startY; // original location
	
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
	GetDrawingMousePosition(&anchorX, &anchorY, &startMouse, 0);
	
	while (Button()) // we move while the button is down
	{
		GetDrawingMousePosition(&x, &y, NULL, noLimit);
		if ((x < 0) || (y < 0) || (x > (**currentPix).bounds.right) || (y > (**currentPix).bounds.bottom))
		{
			EventRecord event;
			
			// reset the selection to its original location
			OffsetRgn(selectionRgn, startX - anchorX, startY - anchorY);
			OffsetRgn(selectionMagnifiedRgn,
					  (startX - anchorX) * magnification,
					  (startY - anchorY) * magnification);
					  
			OffsetRect(&(**selectionPix).bounds, startX - anchorX, startY - anchorY);
			OffsetRgn(selectionGW->visRgn, startX - anchorX, startY - anchorY);
			
			Display(editWellRect, current);
			
			GetMouse(&event.where);
			LocalToGlobal(&event.where);
			dragSrcRect = editWellRect;
			
			GWorldPtr tempGW;
			PixMapHandle tempPix;
			Rect	bounds;
			RgnHandle dragRgn;
			
			bounds = (**selectionPix).bounds;
			bounds.top *= magnification;
			bounds.left *= magnification;
			bounds.bottom *= magnification;
			bounds.right *= magnification;
			
			NewGWorld(&tempGW, (**selectionPix).pixelSize, &bounds, (**selectionPix).pmTable, NULL, 0);
			tempPix = GetGWorldPixMap(tempGW);
			LockPixels(tempPix);
			SAVECOLORS;
			CopyPixMap(selectionPix, tempPix, &(**selectionPix).bounds, &bounds, srcCopy, NULL);
			RESTORECOLORS;
			
			dragRgn = NewRgn();
			CopyRgn(selectionRgn, dragRgn);
			MapRgn(dragRgn, &(**selectionPix).bounds, &bounds);
			
			DragPixMap(&event, tempPix, dragRgn, selectionPix, selectionRgn, selection);
			
			DisposeRgn(dragRgn);
			
			UnlockPixels(tempPix);
			DisposeGWorld(tempGW);
			return false;		  
		}
		else
		{
			// and get the new position
			if (ISSHIFTDOWN) // angle based constraints, very similar to the line constraints
				ConstrainLine45(startX, startY, &x, &y);
			
			// we must move both the normal and the magnified selection shape
			OffsetRgn(selectionRgn, x - anchorX, y - anchorY);
			OffsetRgn(selectionMagnifiedRgn,
					 (x - anchorX) * magnification,
					 (y - anchorY) * magnification);
			
			// we must also shift the bounds of the selection contents, and the visible region
			OffsetRect(&(**selectionPix).bounds, x - anchorX, y - anchorY);
			OffsetRgn(selectionGW->visRgn, x - anchorX, y - anchorY);
			
			// now we must update the whole thing
			Display(editWellRect, current);
			if (statics.colorsPalette->IsVisible())
				statics.colorsPalette->UpdateReadout(x, y, kPickerNeverUsedColor);
			
			// and set the current coordinates as the old ones
			anchorX = x;
			anchorY = y;
		}
	}
	
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
	
	SAVEGWORLD;
	SAVECOLORS;
	
	selectionLimits = NewRgn();
	RectRgn(selectionLimits, &(**currentPix).bounds);
	SectRgn(selectionLimits, selectionRgn, selectionRgn);
	MagnifySelectionRgn();
	DisposeRgn(selectionLimits);
	
	// we need to update the selection contents with the new dimensions
	UnlockPixels(selectionPix);
	DisposeGWorld(selectionGW);
	NewGWorldUnpadded(&selectionGW,
					  (**currentPix).pixelSize,
					  &(**selectionRgn).rgnBBox,
					  (**currentPix).pmTable);
	selectionPix = GetGWorldPixMap(selectionGW);
	LockPixels(selectionPix);
	
	// copy the selection contents into it
	CopyPixMap(currentPix,
			   selectionPix,
			   &(**selectionRgn).rgnBBox,
			   &(**selectionRgn).rgnBBox,
			   srcCopy,
			   selectionRgn);
	
	// and leave the "hole" behind
	SetGWorld(currentGW, NULL);
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

void icnsEditorClass::DefloatSelection(void)
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
	// and reset the bounds of the selection gworld
	OffsetRect(&(**selectionPix).bounds,
				-(**selectionPix).bounds.left,
				-(**selectionPix).bounds.top);
				
	RESTOREGWORLD;
	RESTORECOLORS;
	
	// not floated anymore
	status &= ~selectionFloated;
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
				currentBounds; // the dimensions of the current pixmap
	Point		currentMouse; // the current coordinates
	RgnHandle	savedRgn; // the saved selection shape
	int			mode; // the mode in which the selection operates
	bool		optionKeyOriginallyDown = false, // were these modifiers held down before
				shiftKeyOriginallyDown = false;  // the mouse buttom was?
	
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
				HandleMove(startMouse);
			else
				DragSelection(x1, y1);
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
		DefloatSelection(); // we must defloat it
	

	
	while (Button())
	{
		GetMouse(&currentMouse);
		
		if (currentMouse.h != startMouse.h || currentMouse.v != startMouse.v)
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
			SetEmptyRgn(selectionRgn);
		
		Display(editWellRect, current);
		if (statics.colorsPalette->IsVisible())
			statics.colorsPalette->UpdateReadout(x2, y2, kPickerNeverUsedColor);
		// we need to update the whole thing
	}
}

void icnsEditorClass::DragSelection(int anchorX, int anchorY)
{
	int		x, y, // current location
			startX, startY; // original location
	Rect	controlRect;
	
	GetControlBounds(controls.iconEditWell, &controlRect);
	
	startX = anchorX;
	startY = anchorY;
	
	while (Button()) // we move while the button is down
	{
		GetDrawingMousePosition(&x, &y, NULL, 0);

		// and get the new position
		if (ISSHIFTDOWN) // angle based constraints, very similar to the line constraints
			ConstrainLine45(startX, startY, &x, &y);
		
		// we must move both the normal and the magnified selection shape
		OffsetRgn(selectionRgn, x - anchorX, y - anchorY);
		OffsetRgn(selectionMagnifiedRgn,
				 (x - anchorX) * magnification,
				 (y - anchorY) * magnification);
		
		Display(controlRect, current);
		if (statics.colorsPalette->IsVisible())
			statics.colorsPalette->UpdateReadout(x, y, kPickerNeverUsedColor);
		
		// and set the current coordinates as the old ones
		anchorX = x;
		anchorY = y;
	}
	
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
	Rect		tempRect; // the rectangle used for enlarging
	RgnHandle	tempRgn; // the region used for "cutting out"
	
	if (EmptyRgn(selectionRgn)) // if the selection is empty, then we don't do anything
		return;
	
	// we get the target dimensions (original * magnification)
	tempRect = (**selectionRgn).rgnBBox;
	if (statics.preferences.FeatureEnabled(prefsDrawGrid))
	{
		SetRect(&tempRect,
				tempRect.left * magnification,
				tempRect.top * magnification,
				tempRect.right * magnification,
				tempRect.bottom * magnification);
	
		CopyRgn(selectionRgn, selectionMagnifiedRgn); // we copy the normal selection shape
		MapRgn(selectionMagnifiedRgn, &(**selectionRgn).rgnBBox, &tempRect); // and enlarge it
		
		RgnHandle tempRgn;
		
		tempRgn = NewRgn();
		CopyRgn(selectionMagnifiedRgn, tempRgn);
		OffsetRgn(tempRgn, 1, 1);
		UnionRgn(tempRgn, selectionMagnifiedRgn, selectionMagnifiedRgn);
		
		if (status & selectionFloated)
			tempRect = (**selectionPix).bounds;
		else
			tempRect = (**currentPix).bounds;
		SetRect(&tempRect,
				tempRect.left * magnification,
				tempRect.top * magnification,
				tempRect.right * magnification,
				tempRect.bottom * magnification);
		
		RectRgn(tempRgn, &tempRect);
		SectRgn(selectionMagnifiedRgn, tempRgn, selectionMagnifiedRgn);
		
		DisposeRgn(tempRgn);
	}
	else
	{
		SetRect(&tempRect,
				tempRect.left * magnification,
				tempRect.top * magnification,
				tempRect.right * magnification,
				tempRect.bottom * magnification);
	
		CopyRgn(selectionRgn, selectionMagnifiedRgn); // we copy the normal selection shape
		MapRgn(selectionMagnifiedRgn, &(**selectionRgn).rgnBBox, &tempRect); // and enlarge it
	}
	
	// we also need to "cut out" so that the region we have left over is one pixel thick
	// on all sides (since we'll be filling it with the selection pattern)
	tempRgn = NewRgn();
	CopyRgn(selectionMagnifiedRgn, tempRgn);
	InsetRgn(tempRgn, 1, 1);
	DiffRgn(selectionMagnifiedRgn, tempRgn, selectionMagnifiedRgn);
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
	GrafPtr			fillShape;
	Pattern			fillPattern;
	
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
	
	// we make the temporary gworld
	fillShape = CreateGrafPort(&(**targetPix).bounds);
	
	SetGWorld(targetGW, NULL);
	SeedCFill((BitMap*)*targetPix,
		  &fillShape->portBits,
		  &(**targetPix).bounds,
		  &(**targetPix).bounds,
		  x, y,
		  0,
		  0);
	
	tempRgn = NewRgn();
	// we convert the pixmap into a region to get the selection shape
	BitMapToRegion(tempRgn, &fillShape->portBits);
	
	if (clipRgn != NULL)
		SectRgn(tempRgn, clipRgn, tempRgn);
		
	SetGWorld(targetGW, NULL);
	
	SAVECOLORS;
	
	RGBForeColor(&foreColor);
	RGBBackColor(&backColor);
	
	GetIndPattern(&fillPattern, rDrawingPatterns, pattern + 1);
	
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
			
			if (ISOPTIONDOWN && oldTool == noTool) // if option is down and we're not in toggle mode
				GetCPixel(x, y, &backColor); // we pit the color we pick up into the background color
			else
				GetCPixel(x, y, &foreColor); // otherwise it goes into the foreground color
			RESTOREGWORLD;
			
			ColorsChanged();
			if (statics.colorsPalette->IsVisible())
				if (ISOPTIONDOWN && oldTool == noTool)
					statics.colorsPalette->UpdateReadout(x, y, backColor);
				else
					statics.colorsPalette->UpdateReadout(x, y, foreColor);
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
					oldMouse = {-1, -1}; // the previous mouse position
	Rect			displayRect; // the place where the result should be displayed
	int 			x, y, // the coordinates of the current position
					oldX = -1, oldY = -1, // the previous coordinates
					startX, startY; // the starting coordinates (used when constraining)
	GWorldPtr		targetGW; // the gworld where we'll be drawing
	PixMapHandle	targetPix; // the pixmap for the gworld above
	RgnHandle		savedClip = NULL; // used for limiting the drawing to the selection
	
	SAVEGWORLD;
	SAVECOLORS;
	
	GetDrawingMousePosition(&oldX, &oldY, &initialMouse, 0);
	GetDrawingMousePosition(&startX, &startY, &initialMouse, 0);
	
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
	
	// setting up this variable
	GetControlBounds(controls.iconEditWell, &displayRect);
	
	SetGWorld(targetGW, NULL);
	if (currentTool == pen)
	// pen mode: we draw in the foreground color (normally, toggle if curent color is foreground)
	{
		Point mouseLoc;
		RGBColor temp, nearestToFore;
		
		mouseLoc.h = oldX;
		mouseLoc.v = oldY;
		
		if (((status & selectionFloated) && PtInRgn(mouseLoc, selectionRgn)) ||
			!(status & selectionFloated))
		{
			GetCPixel(oldX, oldY, &temp);
			if ((**currentPix).pixelSize == 32)
				nearestToFore = foreColor;
			else
				nearestToFore = GetNearestColor(foreColor, (**currentPix).pmTable);
			
			if (AreEqualRGB(temp, nearestToFore))
				RGBForeColor(&backColor);
			else
				RGBForeColor(&foreColor);
		}
		else
			RGBForeColor(&foreColor);
	}
	else if (currentTool == eraser) // eraser mode: we draw in the background color
	{
		RGBForeColor(&backColor);
		PenSize(2, 2);
	}

	MoveTo(oldX, oldY); // we must draw the first pixel (which is on no matter what)
	LineTo(oldX, oldY);
	
	RESTOREGWORLD;
	
	Display(displayRect, current); // and display these results
	
	
	while (Button()) // while the button is down
	{
		GetMouse(&mousePosition);
		if (mousePosition.h != oldMouse.h || mousePosition.v != oldMouse.v)
		// if the user moves the mouse
		{
			oldMouse = mousePosition; // we set the new position as the old one
			GetDrawingMousePosition(&x, &y, &mousePosition, 0); // get the new position in terms of the drawing
			
			if (ISSHIFTDOWN)
				ConstrainLine90(startX, startY, &x, &y);
	
			if (x != oldX || y != oldY) // if the position is different
			{
				SetGWorld(targetGW, NULL);
				LineTo(x, y); // we connect the last coordinate with this one
				RESTOREGWORLD;
				Display(displayRect, current); // and display what we have
				if (statics.colorsPalette->IsVisible())
					statics.colorsPalette->UpdateReadout(x, y, kPickerNeverUsedColor);
				oldX = x;
				oldY = y;
			}
		}
	}
	
	SetGWorld(targetGW, NULL);
	
	if (savedClip != NULL) // if we changed the clipping region
	{
		SetClip(savedClip); // we must restore it
		DisposeRgn(savedClip);
	}
	
	if (currentTool == eraser)
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
	Point	mousePosition; // the mouse position in terms of the window
	Rect	editWellRect, // the boundaries of the editing area (the actual control in the window)
			boundsRect; // the boundaries of the editing ares (magnified or not)
	long	returnedPoint; // the "point" that we get from PinRect, upper half is x coordinate,
						   // lower half is y coordinate
	
	if (theMouse == NULL)
	{
		SAVEGWORLD; // we'll be changing the port
		
		SetPort(window);
		
		GetMouse(&mousePosition); // in terms of the window
		
		RESTOREGWORLD;
	}
	else
	{
		mousePosition = *theMouse;
	}
	
	GetControlBounds(controls.iconEditWell, &editWellRect);
	boundsRect = (**currentPix).bounds;
	
	// we want the coordinates relative to the edit area
	mousePosition.h = mousePosition.h  - editWellRect.left; 
	mousePosition.v = mousePosition.v - editWellRect.top;
	 // if we want the magnified view (so the coordinate range is from 0 to currentSize *
	 // * magnification)
	if (flags & magnified)
	{
		SetRect(&boundsRect,
				boundsRect.left * magnification,
				boundsRect.top * magnification,
				boundsRect.right * magnification,
				boundsRect.bottom * magnification);
	}
	else {
		mousePosition.h = mousePosition.h/magnification;
		mousePosition.v = mousePosition.v/magnification;
	}
	if (!(flags & noLimit))
	{
		returnedPoint = PinRect(&boundsRect, mousePosition); // PinRect restricts the point to the
		// specified rectangle
		*x = returnedPoint & 0x0000FFFF;
		*y = (returnedPoint & 0xFFFF0000) >> 16;
	}
	else
	{
		*x = mousePosition.h;
		*y = mousePosition.v;
	}
}

