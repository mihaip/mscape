#pragma once

#include "icnsEditorClass.h"

class drawingStateClass
{
	private:
		
		GWorldPtr		drawingGW, selectionGW;
		PixMapHandle	drawingPix, drawingSrcPix, selectionPix;
		RgnHandle		selectionRgn;
		long			status;
		long			sizes;
	public:
		drawingStatePtr	nextState;
		drawingStatePtr	previousState;
		drawingStateClass(drawingStatePtr previousLastState, icnsEditorPtr editor);
				~drawingStateClass(void);
		void	RestoreState(icnsEditorPtr editor);
};
