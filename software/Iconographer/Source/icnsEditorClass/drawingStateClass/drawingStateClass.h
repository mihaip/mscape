// __________________________________________________________________________________________
// Program		: Icon Mangler
// Filename		: drawingStateClass.h (C++)
// Author		: Mihai Parparita (St. Mary's International School)
// Last modified: April 1, 1999
// Description	: type defition for the drawingStateClass

#pragma once // we don't want this file to be caught in a inifite #include loop

#include "icnsEditorClass.h" // we'll be using this class

class drawingStateClass
{
	private:
		// all of these are the private data used for storing/restoring
		long			drawingPixName;
		
		RgnHandle		selectionRgn;
		Ptr				drawingData, selectionData;
		long			drawingDataSize, selectionDataSize;
		Rect			selectionBounds;
		short			selectionDepth;
		CTabHandle		selectionColorTable;
		long			status;
		long			members;
		long			colors;
		
	public:
		// linked list items
		drawingStatePtr	nextState;
		drawingStatePtr	previousState;

				drawingStateClass(drawingStatePtr previousLastState, icnsEditorPtr editor);
		// constructor (which also saves the state)
				~drawingStateClass(void); // destructor
		void	RestoreState(icnsEditorPtr editor); // restores the saved state 
};
