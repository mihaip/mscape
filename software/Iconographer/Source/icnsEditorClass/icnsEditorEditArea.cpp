#include "icnsEditorClass.h"

#define SHOWUPDATERECTS 0

void icnsEditorClass::AddPanUpdateRect(Rect updateRect)
{
	GlobalToLocalRect(&updateRect);
	
	SectRect(&updateRect, &editAreaRect, &updateRect);
	if (!EmptyRect(&updateRect) && panUpdateRectsCount < (kMaxPanUpdateRects - 1))
		panUpdateRects[panUpdateRectsCount++] = updateRect;
}

void icnsEditorClass::StartPan()
{
	panUpdateRectsCount = 0;
	
	if (statics.toolPalette->IsVisible())
		AddPanUpdateRect(statics.toolPalette->GetPhysicalBounds());
	
	if (statics.membersPalette->IsVisible())
		AddPanUpdateRect(statics.membersPalette->GetPhysicalBounds());
	
	if (statics.previewPalette->IsVisible())
		AddPanUpdateRect(statics.previewPalette->GetPhysicalBounds());
	
	if (statics.colorsPalette->IsVisible())
		AddPanUpdateRect(statics.colorsPalette->GetPhysicalBounds());
}

void icnsEditorClass::PanEditArea(int dH, int dV)
{
	Rect		updateRect;
	
	ScrollRect(&editAreaRect, -dH, -dV, NULL);
	
	if (dV)
	{
		updateRect = editAreaRect;
		if (dV > 0)
			updateRect.top = updateRect.bottom - dV;
		else
			updateRect.bottom = updateRect.top - dV;
			
		UpdateEditArea(updateRect);
		
		for (int i=0; i < panUpdateRectsCount; i++)
		{
			updateRect = panUpdateRects[i];
			
			if (dV > 0)
			{
				updateRect.bottom = updateRect.top;
				updateRect.top -= dV;
			}
			else
			{
				updateRect.top = updateRect.bottom;
				updateRect.bottom -= dV;
			}
			
			if (dH > 0)
				updateRect.left -= dH;
			else
				updateRect.right -= dH;
			
			UpdateEditArea(updateRect);
		}
	}
	
	if (dH)
	{
		updateRect = editAreaRect;
		if (dH > 0)
			updateRect.left = updateRect.right - dH;
		else
			updateRect.right = updateRect.left - dH;
			
		UpdateEditArea(updateRect);
		
		for (int i=0; i < panUpdateRectsCount; i++)
		{
			updateRect = panUpdateRects[i];
			
			if (dH > 0)
			{
				updateRect.right = updateRect.left;
				updateRect.left -= dH;
			}
			else
			{
				updateRect.left = updateRect.right;
				updateRect.right -= dH;
			}
			
			UpdateEditArea(updateRect);
		}
	}
}

void icnsEditorClass::FinishPan()
{
	panUpdateRectsCount = 0; 
}

// __________________________________________________________________________________________
// Name			: icnsEditorClass::InvalidateDrawingArea
// Input		: None
// Output		: None
// Description	: adds the region where the drawing area is (it is contained by the toolbar on 
//				  the left, the display on the right, the border of the window on the top and
//				  the zoom display on the bottom) to the regions that need updating.

void icnsEditorClass::InvalidateDrawingArea(void)
{
	Rect	rectToInvalidate, // the rect which will be invalidated
			controlRect;		
	SAVEGWORLD; // we must save the current gworld, since the rect is in the local coordinates
				// of the window
		
	SetPort(window);
	
	// we set the boundaries
	rectToInvalidate.left = editAreaRect.left - 2;
	rectToInvalidate.right = window->portRect.right;
	rectToInvalidate.top = 0;
	GetControlBounds(controls.zoomPlacard, &controlRect);
	rectToInvalidate.bottom = controlRect.top;
	
	// and then invalidate it
	InvalRect(&rectToInvalidate);
	
	RESTOREGWORLD;
}

void icnsEditorClass::DrawMember(int pixName, Rect targetRect)
{
	if (!(status & selectionFloated) ||
		((status & selectionFloated) && currentPixName != pixName))
		icnsClass::DrawMember(pixName, targetRect);
	else
	{
		PixMapHandle srcPix;
		GWorldPtr	 srcGW;
		Rect		 pixRect;
		
		SAVEGWORLD;
	
		SetGWorld(statics.canvasGW, NULL);
		
		SAVECOLORS;
		
		GetGWorldAndPix(pixName, &srcGW, &srcPix);
		
		pixRect = (**srcPix).bounds;
		
		CopyPixMap(srcPix, statics.canvasPix, &pixRect, &pixRect, srcCopy, NULL);
		CopyPixMap(selectionPix, statics.canvasPix, &pixRect, &pixRect, srcCopy, selectionRgn);
		
		RESTOREGWORLD;
		
		CopyBits((BitMap*)*statics.canvasPix,
				  &qd.thePort->portBits,
				  &pixRect,
				  &targetRect,
				  srcCopy,
				  NULL);
		
		RESTORECOLORS;
	}
}

#define NOSELECTION ((!(status & selectionFloated)) || ((status & selectionFloated) && currentPixName != maskName && currentPixName != pixName))


void icnsEditorClass::PreviewDisplay(int height, int depth, int maskDepth, Rect targetRect, bool selected)
{
	int				pixName, maskName;
	PixMapHandle 	srcPix, maskPix;
	GWorldPtr		srcGW, maskGW;
	Rect			pixRect, maskRect;
	
	SAVEGWORLD;
	
	SetGWorld(statics.canvasGW, NULL);
	
	SAVECOLORS;
	
	pixName = GetPixName(height, depth, true);
	GetGWorldAndPix(pixName, &srcGW, &srcPix);
	
	if (maskDepth == -1)
		maskName = GetBestMaskName(height, depth, true);
	else
		maskName = GetPixName(height, maskDepth, false);
		
	GetGWorldAndPix(maskName, &maskGW, &maskPix);
	
	pixRect = (**srcPix).bounds;
	maskRect = (**maskPix).bounds;
	
	if (NOSELECTION && !selected)
	{
		; // normally, we do nothing
	}
	else
	{
		if (selected)
		{
			CopyPixMap(srcPix, statics.canvasPix, &(**srcPix).bounds, &pixRect, srcCopy, NULL);
			
			srcPix = statics.canvasPix;
			
			if (!NOSELECTION)
			{
				if (currentPixName == pixName)
				{
					CopyPixMap(selectionPix, statics.canvasPix, &pixRect, &pixRect, srcCopy, selectionRgn);
				}
				else
				{
					Rect	tempRect;
					
					tempRect = maskRect;
					
					OffsetRect(&maskRect, pixRect.right, 0);
					
					CopyPixMap(maskPix, statics.canvasPix, &(**maskPix).bounds, &maskRect, srcCopy, NULL);
					
					maskPix = statics.canvasPix;
					
					CopyPixMap(selectionPix, statics.canvasPix, &tempRect, &maskRect, srcCopy, selectionRgn);
				}
			}
			
			DarkenPixMap32(statics.canvasPix, pixRect, 0.5);
		}
		else if (currentPixName == pixName)
		{
			CopyPixMap(srcPix, statics.canvasPix, &(**srcPix).bounds, &pixRect, srcCopy, NULL);
			
			srcPix = statics.canvasPix;
			
			CopyPixMap(selectionPix, statics.canvasPix, &pixRect, &pixRect, srcCopy, selectionRgn);
		}
		else
		{
			Rect	tempRect;
					
			tempRect = maskRect;
			
			OffsetRect(&maskRect, pixRect.right, 0);
			
			CopyPixMap(maskPix, statics.canvasPix, &(**maskPix).bounds, &maskRect, srcCopy, NULL);
			
			maskPix = statics.canvasPix;
			
			OffsetRgn(selectionRgn, pixRect.right, 0);
			CopyPixMap(selectionPix, statics.canvasPix, &tempRect, &maskRect, srcCopy, selectionRgn);
			OffsetRgn(selectionRgn, -pixRect.right, 0);
		}
	}
	
	
	
	CopyDeepMask((BitMap*)*srcPix,
				 (BitMap*)*maskPix,
				 &qd.thePort->portBits,
				 &pixRect,
				 &maskRect,
				 &targetRect,
				 srcCopy,
				 NULL);
				 
	RESTOREGWORLD;
	RESTORECOLORS;
}

#pragma mark -

void icnsEditorClass::UpdateEditArea(Rect updateRect)
{
	int	maxWidth, maxHeight;
	int xSquares, ySquares;
	Rect	currentRect;
	
	SectRect(&updateRect, &editAreaRect, &updateRect);
	
	maxWidth = kCanvasWidth - magnification;
	maxHeight = kCanvasHeight - magnification;
	
	xSquares = (updateRect.right - updateRect.left)/maxWidth;
	if ((updateRect.right - updateRect.left) - xSquares * maxWidth)
		xSquares++;
		
	ySquares = (updateRect.bottom - updateRect.top)/maxHeight;
	if ((updateRect.bottom - updateRect.top) - ySquares * maxHeight)
		ySquares++;
	
	for (int y=0; y < ySquares; y++)
		for (int x=0; x < xSquares; x++)
		{
			currentRect.left = updateRect.left + x * maxWidth;
			if (currentRect.left + maxWidth < updateRect.right)
				currentRect.right = currentRect.left + maxWidth;
			else
				currentRect.right = updateRect.right;
				
			currentRect.top = updateRect.top + y * maxHeight;
			if (currentRect.top + maxHeight < updateRect.bottom)
				currentRect.bottom = currentRect.top + maxHeight;
			else
				currentRect.bottom = updateRect.bottom;
				
			PaintEditAreaRect(currentRect);
		}
}

void icnsEditorClass::UpdateEditArea()
{
	UpdateEditArea(editAreaRect);
}

void icnsEditorClass::UpdateEditArea(Point point1, Point point2, Point point3, int flags)
{
	Rect	updateRect;
	
	DrawingPointToWindowPoint(&point1, flags);
	DrawingPointToWindowPoint(&point2, flags);
	DrawingPointToWindowPoint(&point3, flags);

	PointsToRect(point1, point2, point3, &updateRect);
	if (!(flags & magnified))
		InsetRect(&updateRect,
				  -(magnification * statics.preferences.GetLineThickness()),
				  -(magnification * statics.preferences.GetLineThickness()));
	else
		InsetRect(&updateRect, -1, -1);
	SectRect(&updateRect, &editAreaRect, &updateRect);
	
	UpdateEditArea(updateRect);
}

void icnsEditorClass::UpdateEditArea(Point point1, Point point2, int flags)
{
	Rect	updateRect;
	
	DrawingPointToWindowPoint(&point1, flags);
	DrawingPointToWindowPoint(&point2, flags);

	PointsToRect(point1, point2, &updateRect);
	if (!(flags & magnified))
		InsetRect(&updateRect,
				  -(magnification * statics.preferences.GetLineThickness()),
				  -(magnification * statics.preferences.GetLineThickness()));
	else
		InsetRect(&updateRect, -1, -1);
	SectRect(&updateRect, &editAreaRect, &updateRect);
	
	UpdateEditArea(updateRect);
}

void icnsEditorClass::UpdateEditArea(Rect rect1, Rect bounds2, int flags)
{
	Rect updateRect;
	
	UnionRect(&rect1, &bounds2, &updateRect);
	if (!(flags & magnification))
	{
		MagnifyRect(&updateRect, magnification);
		if (statics.preferences.FeatureEnabled(prefsDrawGrid))
		{
			updateRect.right++;
			updateRect.bottom++;
		}
	}
	
	OffsetRect(&updateRect,
			   editAreaRect.left - hScrollbarValue,
			   editAreaRect.top - vScrollbarValue);
	SectRect(&updateRect, &editAreaRect, &updateRect);
	
	UpdateEditArea(updateRect);
}

#pragma mark -

inline void icnsEditorClass::DrawingPointToWindowPoint(Point* point, int flags)
{
	if (!(flags & magnified))
	{
		point->h *= magnification;
		point->v *= magnification;
	}
		
	point->h += editAreaRect.left - hScrollbarValue;
	point->v += editAreaRect.top - vScrollbarValue;
}


// __________________________________________________________________________________________
// Name			: icnsEditorClass::Display
// Input		: targetRect: location where the icon data should be displayed (scaling is done
//				  automatically)
//				  source: from which pixmap the pixel data should be taken from
// Output		: None
// Description	: takes the requested icon data, merges it with the selection (if any), and 
//				  copies it to the screen.

void icnsEditorClass::PaintEditAreaRect(Rect targetRect)
{
	Rect			canvasRect, sourceRect, canvasSourceRect; // the target rect moved so that it's top/left corner is at 0, 0
	OSStatus		err = noErr; // used for error checking
	BitMap			*target; // the final target for CopyBits
	int				dX, dY;
	
	SAVEGWORLD;
	target = &qd.thePort->portBits; // the target is the BitMap associated with the current port
	
	SetGWorld(statics.canvasGW, NULL);
	SAVECOLORS;
	
	sourceRect = targetRect;
	OffsetRect(&sourceRect,
			   -editAreaRect.left + hScrollbarValue,
			   -editAreaRect.top + vScrollbarValue);
	SetRect(&sourceRect,
			sourceRect.left / magnification,
			sourceRect.top / magnification,
			sourceRect.right / magnification + 1,
			sourceRect.bottom / magnification + 1);
	
	canvasRect = sourceRect;
	MagnifyRect(&canvasRect, magnification);
		
	canvasSourceRect = targetRect;
	OffsetRect(&canvasSourceRect,
			   -editAreaRect.left + hScrollbarValue - canvasRect.left,
			   -editAreaRect.top + vScrollbarValue - canvasRect.top);
			   
	OffsetRect(&canvasRect, -canvasRect.left, -canvasRect.top);
	
	dX = targetRect.left - editAreaRect.left + hScrollbarValue;
	dY = targetRect.top - editAreaRect.top + vScrollbarValue;

	CopyPixMap(currentPix,
			   statics.canvasPix,
			   &sourceRect,
			   &canvasRect,
			   srcCopy,
			   NULL);
			 
	if (overlayPix != NULL) // and if there is an overlay we copy that too
	{
		// we set the background color to the transparent color since the transparent mode
		// of CopyBits then knows not to copy that color
		
		// if there is no selection, or if the overlayPix is magnified, then we don't
		// clip when drawing the overlay
		
		if (!EmptyRgn(selectionRgn))
			DrawSelection(sourceRect, canvasRect, dX, dY);
		else if (statics.preferences.FeatureEnabled(prefsDrawGrid))
			DrawGrid(canvasRect);
			
		if (((**overlayPix).bounds.right == magnification * (**currentPix).bounds.right))
			DrawOverlay(sourceRect, canvasSourceRect, dX, dY);
		else
			DrawOverlay(sourceRect, canvasRect, dX, dY);
		
	}
	else if (!EmptyRgn(selectionRgn)) // if there is a selection and it hasn't been drawn already
		DrawSelection(sourceRect, canvasRect, dX, dY);
	else if (statics.preferences.FeatureEnabled(prefsDrawGrid))
		DrawGrid(canvasRect);
		
#ifdef SHOWUPDATERECTS
#if SHOWUPDATERECTS
	ForeColor(redColor);
	FrameRect(&canvasSourceRect);
	ForeColor(blackColor);
#endif
#endif

	CopyBits((BitMap *)*statics.canvasPix, // now we're done, we can copy the result
			 target,					   // to the target
			 &canvasSourceRect,
			 &targetRect,
			 srcCopy,
			 window->visRgn);
			  
	RESTORECOLORS;
	RESTOREGWORLD;
}

void icnsEditorClass::DrawOverlay(Rect sourceRect, Rect targetRect, int dX, int dY)
{
	if (((**overlayPix).bounds.right == magnification * (**currentPix).bounds.right))
	{
		Rect	overlaySourceRect;
		
		overlaySourceRect = targetRect;
		
		OffsetRect(&overlaySourceRect, -overlaySourceRect.left + dX, -overlaySourceRect.top + dY);
		
		CopyPixMap(overlayPix,
				   statics.canvasPix,
				   &overlaySourceRect,
				   &targetRect,
				   srcXor,
				   NULL);
	}	
	else
	{
		RGBColor	oldBackColor;
		
		GetBackColor(&oldBackColor);
		RGBBackColor(&kNeverUsedColorAsRGB);
		
		if (EmptyRgn(selectionRgn))
			CopyPixMap(overlayPix,
				   statics.canvasPix,
				   &sourceRect,
				   &targetRect,
				   transparent,
				   NULL);
		else
		{
			dX -= dX % magnification;
			dY -= dY % magnification;
			
			OffsetRgn(selectionContentsMagnifiedRgn, -dX, -dY);		
			CopyPixMap(overlayPix,
				   statics.canvasPix,
				   &sourceRect,
				   &targetRect,
				   transparent,
				   selectionContentsMagnifiedRgn);				   
			OffsetRgn(selectionContentsMagnifiedRgn, dX, dY);
				   
			OffsetRgn(selectionOutlineMagnifiedRgn, -dX, -dY);
			FillRgn(selectionOutlineMagnifiedRgn, &statics.selectionPatterns[currentSelectionPattern]);
			OffsetRgn(selectionOutlineMagnifiedRgn, dX, dY);
		}
		
		RGBBackColor(&oldBackColor);
	}
}
// __________________________________________________________________________________________
// Name			: icnsEditorClass::DrawSelection
// Input		: targetGW: GWorld where the selection should be drawn
//				  targetRect: rectangle in the target GWorld where the selection should be
//				  drawn
//				  targetName: name of the target GWorld (can't just compare the pointers
//				  since the current gworld shows up in the edit well, and in the display
//				  and the selection must be drawn differently).
// Output		: None
// Description	: This function draws the selection contents and the selection outline
//				  (if the target is the current GWorld) into the target GWorld

void icnsEditorClass::DrawSelection(Rect sourceRect, Rect targetRect, int dX, int dY)
{
	SAVEGWORLD;
	SAVECOLORS;
	
	if (cycleSelectionPattern &&
		LMGetTicks() > lastSelectionTicks + kSelectionDrawingDelay)
	// if it's time to update the selection pattern...
	{
		lastSelectionTicks = LMGetTicks();
		currentSelectionPattern++;
	}
	
	// if we've gone past the end, then we must cycle back to the beginning (the marquee
	// pattern is a repeating aninamtion)
	if (currentSelectionPattern >= kNoOfSelectionPatterns) currentSelectionPattern = 0;
	
	SetGWorld(statics.canvasGW, NULL);
	// we'll be drawing the selection now
	
	dX -= dX % magnification;
	dY -= dY % magnification;
	
	if (status & selectionFloated) // if there's a floated selection, then we must
								   // draw its contents as well
	{
		OffsetRgn(selectionContentsMagnifiedRgn, -dX, -dY);
		CopyPixMap(selectionPix,
				  statics.canvasPix,
				  &sourceRect,
				  &targetRect,
				  srcCopy,
				  selectionContentsMagnifiedRgn);
		OffsetRgn(selectionContentsMagnifiedRgn, dX, dY);
	}
	// this fills the selection shape with the marquee pattern
	
	if (statics.preferences.FeatureEnabled(prefsDrawGrid))
		DrawGrid(targetRect);
	
	OffsetRgn(selectionOutlineMagnifiedRgn, -dX, -dY);
	FillRgn(selectionOutlineMagnifiedRgn, &statics.selectionPatterns[currentSelectionPattern]);
	OffsetRgn(selectionOutlineMagnifiedRgn, dX, dY);
	
	
	RESTOREGWORLD;
	RESTORECOLORS;
}

void icnsEditorClass::DrawGrid(Rect targetRect)
{
	if (magnification < 3)
		return;	
	
	SAVECOLORS;
	ForeColor(whiteColor);
	
	for (int x = targetRect.left; x < targetRect.right; x+=magnification)
	{
		MoveTo(x, targetRect.top);
		LineTo(x, targetRect.bottom);
	}
	
	for (int y =targetRect.top; y < targetRect.bottom; y+=magnification)
	{
		MoveTo(targetRect.left, y);
		LineTo(targetRect.right, y);
	}
	
	RESTORECOLORS;
}

