#include "drawingStateClass.h"

drawingStateClass::drawingStateClass(drawingStatePtr previousLastState, icnsEditorPtr editor)
{
	nextState = NULL;
	Rect		drawingRect, selectionRect;
	drawingStatePtr	tempState, tempState2;
	SAVECOLORS;
	
	previousState = previousLastState;
	
	if (previousLastState != NULL)
	{
		// if the previous current state wasn't the end of the list, then we can
		// delete the ones that follow since they're not needed anymore
		if (previousLastState->nextState != NULL)
		{
			tempState = previousLastState->nextState;
			while (tempState != NULL)
			{
				tempState2 = tempState->nextState;
				delete tempState;
				tempState = tempState2;
			}
		}
		previousLastState->nextState = this;
	}
		
	selectionRgn = NewRgn();
	CopyRgn(editor->selectionRgn, selectionRgn);
	
	if (editor->status & selectionFloated)
	{
		//SysBeep(6);
		selectionRect = (**editor->selectionPix).bounds;
		//DisplayRect(selectionRect);
		NewGWorld(&selectionGW, (**editor->selectionPix).pixelSize, &selectionRect, (**editor->selectionPix).pmTable, NULL, 0);
		selectionPix = GetGWorldPixMap(selectionGW);
		LockPixels(selectionPix);
		CopyBits((BitMap*)*editor->selectionPix, (BitMap*)*selectionPix, &selectionRect, &selectionRect, srcCopy, NULL);
	}
	
	drawingRect = (**editor->currentPix).bounds;
	
	NewGWorld(&drawingGW, 32, &drawingRect, NULL, NULL, 0);
	drawingPix = GetGWorldPixMap(drawingGW);
	LockPixels(drawingPix);
	CopyBits((BitMap*)*editor->currentPix, (BitMap*)*drawingPix, &drawingRect, &drawingRect, srcCopy, NULL);
	
	drawingSrcPix = editor->currentPix;
	
	status = editor->status;
	
	sizes = editor->sizes;
	
	RESTORECOLORS;
}

drawingStateClass::~drawingStateClass(void)
{
	if (previousState != NULL)
		previousState->nextState = nextState; 
	if (nextState != NULL)
		nextState->previousState = previousState;
	
	DisposeRgn(selectionRgn);
	
	if (status & selectionFloated)
	{
		UnlockPixels(selectionPix);
		DisposeGWorld(selectionGW);
	}
	
	UnlockPixels(drawingPix);
	DisposeGWorld(drawingGW);
}

void drawingStateClass::RestoreState(icnsEditorPtr editor)
{
	SAVECOLORS;
	CopyBits((BitMap*)*drawingPix, (BitMap*)*drawingSrcPix, &(**drawingPix).bounds, &(**drawingPix).bounds, srcCopy, NULL);
	if (status & selectionFloated)
	{
		UnlockPixels(editor->selectionPix);
		UpdateGWorld(&editor->selectionGW,		// we're restoring the attributes of the saved selection
					(**selectionPix).pixelSize,	// including depth
					&(**selectionPix).bounds,   // dimenions
					(**selectionPix).pmTable,	// and color table (if any)
					NULL,
					0);
		editor->selectionPix = GetGWorldPixMap(editor->selectionGW);
		LockPixels(editor->selectionPix);
		CopyBits((BitMap*)*selectionPix, (BitMap*)*editor->selectionPix, &(**selectionPix).bounds, &(**selectionPix).bounds, srcCopy, NULL);
	}
	CopyRgn(selectionRgn, editor->selectionRgn);
	editor->status = status;
	editor->sizes = sizes;
	editor->currentPix = drawingSrcPix;
	
	RESTORECOLORS;
}
