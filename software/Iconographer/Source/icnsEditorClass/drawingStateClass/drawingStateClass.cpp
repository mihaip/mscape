// __________________________________________________________________________________________
// Program		: Icon Mangler
// Filename		: drawingStateClass.cpp (C++)
// Author		: Mihai Parparita (St. Mary's International School)
// Last modified: April 1, 1999
// Description	: This file contains the functions for the drawingStateClass, which takes care
//				  of saving and restoring the state of the drawing (for the implementation of
//				  undo and redo).

#include "drawingStateClass.h"

// __________________________________________________________________________________________
// Name			: drawingStateClass::drawingStateClass
// Input		: previousLastState: pointer to insertion point in the linked list (not
//				  not necessarely the end, see special case)
//			      editor: pointer to editor whose state should be saved, this class is a
//				  friend so it can access the private data
// Output		: None
// Description	: the constructor an the drawingStateClass. It not only adds itself to the
//				  linked list, but also handles the actual saving of the state

drawingStateClass::drawingStateClass(drawingStatePtr previousLastState, icnsEditorPtr editor)
{
	drawingStatePtr	tempState, // temporary states used in the deletion of uneeded items
					tempState2;
	OSErr			err;
					
	previousState = previousLastState; // linking the list
	nextState = NULL; // we're insterting at the end
	
	selectionRgn = NULL;
	drawingData = NULL;
	selectionData = NULL;
	
	if (previousLastState != NULL) // if there was a state before then...
	{
		if (previousLastState->nextState != NULL)
		// if the previous current state wasn't the end of the list, then we can
		// delete the ones that follow since they're not needed anymore
		{
			tempState = previousLastState->nextState;
			while (tempState != NULL)
			{
				tempState2 = tempState->nextState;
				delete tempState;
				tempState = tempState2;
			}
		}
		
		previousLastState->nextState = this; // ...we need to make it point to us
	}
		
	selectionRgn = NewRgn(); // saving the selection
	if (selectionRgn == NULL)
	{
		editor->status |= outOfMemory;
		return;
	}
	CopyRgn(editor->selectionRgn, selectionRgn);
	if (selectionRgn == NULL)
	{
		editor->status |= outOfMemory;
		return;
	}
	
	if (editor->status & selectionFloated) // if there's a floated selection
	{
		// we must save its contents too
		selectionBounds = (**editor->selectionPix).bounds;
		selectionDepth = (**editor->selectionPix).pixelSize;
		err = CompressPixMap(editor->selectionPix, &selectionData, &selectionDataSize);
		if (err != noErr)
		{
			editor->status |= outOfMemory;
			return;
		}
	}
	
	// and now we save the contents of the drawing itself
	err = CompressPixMap(editor->currentPix, &drawingData, &drawingDataSize);
	if (err != noErr)
	{
		editor->status |= outOfMemory;
		return;
	}
	
	// we also need to remember from which pixmap/gworld it was taken
	drawingPixName = editor->currentPixName;
	
	// and also the status and the current icon sizes
	status = editor->status;
	members = editor->members;
	usedMembers = editor->usedMembers;
	colors = editor->colors;
}

// __________________________________________________________________________________________
// Name			: drawingStateClass::~drawingStateClass
// Input		: None
// Output		: None
// Description	: descructor for the drawingStateClass. It keeps the linked list unbroken,
//				  and also disposes of the allocated variables which were used to save the
//				  state (selection shape, drawing contents, etc.)

drawingStateClass::~drawingStateClass(void)
{
	// keeping the linked list together
	if (previousState != NULL) 
		previousState->nextState = nextState; 
	if (nextState != NULL)
		nextState->previousState = previousState;
	
	// we dispose of the saved selection
	if (selectionRgn != NULL)
		DisposeRgn(selectionRgn);
	
	if (status & selectionFloated)
	{
		// and of the selection contents (if any)
		if (selectionData != NULL)
			DisposePtr(selectionData);
	}
	
	if (drawingData != NULL)
		DisposePtr(drawingData);
	
}

// __________________________________________________________________________________________
// Name			: drawingStateClass::RestoreState
// Input		: editor: pointer to the editor in which the state should be restored to
// Output		: None
// Description	: Takes the data saved in the constructor, and sets the editor data back to
//				  what it was saved.
// Notes		: Restoring does not imply disposal, since the user can go back and forth in
//				  the saved state list, so there is a chance of reuse

void drawingStateClass::RestoreState(icnsEditorPtr editor)
{
	OSStatus err = noErr; // used for error checking
	PixMapHandle	targetPix = NULL;
	GWorldPtr		targetGW = NULL;
	
	SAVEGWORLD;
	SAVECOLORS; // again, we'll be doing some copying
	
	editor->ChangeColors(colors, false);
	
	editor->GetGWorldAndPix(drawingPixName, &targetGW, &targetPix);
	
	if (targetGW == NULL || targetPix == NULL)
	{
		SysBeep(6);
	}
	
	// first we restore the drawing
	DecompressToPixMap((unsigned char*)drawingData, targetPix);
			   
	if (status & selectionFloated)
	// then the selection, if any
	{
		UnlockPixels(editor->selectionPix);
		DisposeGWorld(editor->selectionGW);
		// we're restoring the attributes of the saved selection
		NewGWorldUnpadded(&editor->selectionGW,
					selectionDepth,	// including depth
					&selectionBounds,   // dimenions
					(**targetPix).pmTable);	// and color table (if any)
		editor->selectionPix = GetGWorldPixMap(editor->selectionGW);
		LockPixels(editor->selectionPix);
		
		// the copying of the contents
		DecompressToPixMap((unsigned char*)selectionData, editor->selectionPix);
	}
	
	// also the selection shape
	CopyRgn(selectionRgn, editor->selectionRgn);
	
	// if we're supposed to change the current pixmap to what it used to be (we don't want to
	// do this when we the gworld we're restoring to was simply dragged to, and so it wasn't
	// the current pix).
	if (!(status & dontRestoreCurrentPix))
		editor->SetCurrentMember(drawingPixName, 0);
	
	// restoring the status
	editor->status = status;
	editor->members = members;
	editor->usedMembers = usedMembers;
	editor->colors = colors;
	
	// if there's a selection, we should also update the magnified selection region
	if (status & hasSelection)
		editor->MagnifySelectionRgn();
	
	// and the drawing area needs to be updated
	editor->InvalidateDrawingArea();
	
	RESTOREGWORLD;
	RESTORECOLORS;
	
}
