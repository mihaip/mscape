// __________________________________________________________________________________________
// Program		: Icon Mangler
// Filename		: icnsEditorClass.cpp (C++)
// Author		: Mihai Parparita (St. Mary's International School)
// Last modified: April 1, 1999
// Description	: This file contains all the functions associated with the icnsEditorClass, as
//				  well as for the subclass staticsClass.

#include <QuickTimeComponents.h>
#include "icnsEditorClass.h"
#include "drawingStateClass.h"
#include "editorStaticsClass.h"

editorStaticsClass icnsEditorClass::statics;

// __________________________________________________________________________________________
// Name			: icnsEditorClass::icnsEditorClass
// Input		: previousLastEditor: pointer to item that was the tail of the list (here we
//				  don't really care where we insert, since the order in the list of the
//				  editors does not matter to the user (the stacking order is used when
//				  displaying or closing all editors))
// Output		: None
// Description	: adds the newly created instance to the linked list, creates a new editor
//				  window, the controls, sets some default data and refreshes the display

icnsEditorClass::icnsEditorClass(void) :
			 	 MWindow(rEditorWind, kEditorType)
{
	OSStatus	err = noErr; // used for checking if everything went OK
	Str255		fileName;
	MenuHandle	menuHandle;
	int			ignored;
		
	overlayPix = NULL; // unitliazed values, if they are still NULL when the destructor
	selectionGW = NULL; // is called then we won't attempt to dispose them
	selectionPix = NULL;
	currentState = NULL;
	firstState = NULL;
	
	zoomPosition.h = zoomPosition.v = zoomDimensions.h = zoomDimensions.v = -1;
	
	SetRect(&dragSrcRect, 0, 0, 0, 0);
	
	hScrollbarValue = vScrollbarValue = 0;
	exportMode = false;
	
	if (status & outOfMemory || window == NULL) // if loading failed then we're out of memory
	{
		status |= outOfMemory;
		return;
	}
	
	SetThemeWindowBackground(window,kThemeActiveDialogBackgroundBrush, true);
	// we set the window background color to the standard background color
	
	err = CreateControls(); // we create the new control from the CNTL resources
	if (err != noErr) // if there was a problem with the creation
	{
		status |= outOfMemory; // we signal this and go back
		return;
	}
	
	currentPix = il32Pix; // these are the current pixels that we are displaying
	currentPixName = il32; // we use several fields for this since sometimes we need to compare
	currentGW = il32GW; // the GWorld pointers /PixMap handles to see if the a GWorld/PixMap
	// is the current one, and at other times we compare the "name" (actually a number)
	
	selectionRgn = NewRgn(); // we create the selection region
	SetEmptyRgn(selectionRgn); // and set it to empty
	selectionOutlineMagnifiedRgn = NewRgn(); // and the magnified version too
	selectionContentsMagnifiedRgn = NewRgn();
	// the selectionRgn is used for the actual 1:1 manipulation of the image. However the
	// user has a magnified view on the screen, and so we must keep around a magnified version
	// too (it would not make sense to make a magnified region on the fly, since the shape
	// of the selection does not change that often)
	
	currentSelectionPattern = 0; // this is used to keep track of the which pattern (we cycle
	// through them in order to get an animation) is being currently used
	lastSelectionTicks = LMGetTicks();
	// we step through the animations every few ticks (controlled by a constant), and this
	// variable is used to see when the last update was, and when we need a new one
	
	err = NewGWorldUnpadded(&selectionGW, 32, &largeIconRect, NULL);
	if (err != noErr)
	{
		status |= outOfMemory;
		return;
	}
	selectionPix = GetGWorldPixMap(selectionGW);
	LockPixels(selectionPix);
	// the selection GWorld/PixMap is used to store the floated selection, if any. Basically
	// it is another layer which floats on top of the normal drawing when dragging a selection
	
	cycleSelectionPattern = true;
	
	status |= (resized | canZoomIn);
	// we are "resized" since the controls need repositioning (to take into account the
	// zoom level). We can also zoomIn since we're zoomed out at the max level right now
	
	members = il32; // by default we only have the large size, other sizes are added as the
				   // user needs them
	
	format = statics.preferences.GetDefaultFormat();
	colors = macOSColors;
	usedMembers = statics.preferences.GetDefaultUsedMembers();
	
	oldToggleMember = currentToggleMember = -1;
	
	currentState = new drawingStateClass(NULL, this); // we store the current state
	firstState = currentState; // and also make this the first one
	
	srcFileSpec.vRefNum = 0;
	srcFileSpec.parID = 0;
	GetIndString(fileName, rBasicStrings, sUntitledName);
	CopyString(srcFileSpec.name, fileName);
	
	RefreshWindowTitle(); // the window title is updated to reflect the icon name
	
	ID = rCustomIcon; // the default ID is the standard finder custom icon ID
	GetIDMenu(ID, &menuHandle, &ignored, name);
	
	magnification = statics.preferences.GetDefaultZoomLevel();
	UpdateZoom();
		
	ZoomFitWindow();
	
	InstallDraggingHandlers(); // the functions which handle drag and drop must be installed
							   // after the window is visible
	
	statics.Stagger(this);
}

// __________________________________________________________________________________________
// Name			: icnsEditorClass::CreateControls
// Input		: None
// Output		: None
// Description	: this function loads the control resources, and puts the handles in the
//				  controls struct so that they can be used later on for hit-detection, etc.

OSStatus icnsEditorClass::CreateControls()
{
	OSStatus					err = noErr; // what we'll return...
	ControlActionUPP			scrollBarActionUPP;
							
	// creating the root control, all the other controls are children of this one.
	err = CreateRootControl(window,&(controls.rootControl));
	
	// now we do the edit well (where the currently selected size/depth is displayed, and where
	// the actual editing takes place)
	controls.editArea = GetNewControl(rEditArea, window);
	if (controls.editArea == NULL) return mFulErr; // loading failed
	SetControlBalloonHelp(controls.editArea, 15);
	SetControlUserPaneDraw(controls.editArea, EditAreaDraw);
	SetControlUserPaneHitTest(controls.editArea, EditAreaHitTest);
				   
	GetControlBounds(controls.editArea, &editAreaRect);

	// zoom placard
	controls.zoomPlacard = NewEnhancedPlacard(rZoomPlacard, window, enhancedPlacardDrawBorder | enhancedPlacardLargeArrow, 0, 0,
											 "\p", NULL, statics.zoomMenu, statics.canvasGW, statics.canvasPix, ZoomPlacardUpdate, this);
	/*controls.zoomPlacard = GetNewControl(rZoomPlacard, window);
	if (controls.zoomPlacard == NULL) return mFulErr;
	SetControlBalloonHelp(controls.zoomPlacard, 16);
	SetControlUserPaneDraw(controls.zoomPlacard, PlacardDraw);*/
	
	// scrollbars
	controls.vScrollbar = GetNewControl(rVScrollbar, window);
	if (controls.vScrollbar == NULL) return mFulErr;
	scrollBarActionUPP = NewControlActionProc(icnsEditorClass::ScrollbarAction);
	SetControlAction(controls.vScrollbar, scrollBarActionUPP);
	
	controls.hScrollbar = GetNewControl(rHScrollbar, window);
	if (controls.hScrollbar == NULL) return mFulErr;
	SetControlAction(controls.hScrollbar, scrollBarActionUPP);
	
	return err;
}

// __________________________________________________________________________________________
// Name			: icnsEditorClass::InstallDraggingHandlers
// Input		: None
// Output		: None
// Description	: this function install certain functions which will handle dragging (they
//				  are called automatically when a drag enters the window)

void icnsEditorClass::InstallDraggingHandlers()
{
	DragReceiveHandlerUPP	dragReceiveHandlerUPP; // universal procudure pointers for the two
	DragTrackingHandlerUPP	dragTrackingHandlerUPP; // handler functions
	
	// we set these to what we need
	dragTrackingHandlerUPP = NewDragTrackingHandlerProc (DragTrackingHandler);
	dragReceiveHandlerUPP = NewDragReceiveHandlerProc (DragReceiveHandler);
	
	// and then install them
	InstallTrackingHandler(dragTrackingHandlerUPP,window,NULL);
	InstallReceiveHandler(dragReceiveHandlerUPP,window,NULL);
}

#pragma mark -

void icnsEditorClass::Show(void)
{
	MWindow::Show();
	
	statics.UpdatePalettes(updateAll);
}

// __________________________________________________________________________________________
// Name			: icnsEditorClass::Activate
// Input		: None
// Output		: None
// Description	: Activates all the controls in the window (it activates just the root control,
//				  but since there is a hierarchy, this causes all of them to be activated)

void icnsEditorClass::Activate()
{
	if (!IsControlActive(controls.rootControl))
	{
		SetThemeWindowBackground(window,kThemeBrushDialogBackgroundActive,false);
		ActivateControl(controls.rootControl); // activate the control
	}
	
	statics.UpdatePalettes(updateAll);
	statics.membersPalette->ScrollToCurrentMember(this);
	
	if (exportMode && GetModificationDate(exportFile) > exportDate)
		ReloadFromExternalEditor();
		
}

// __________________________________________________________________________________________
// Name			: icnsEditorClass::Deactive
// Input		: None
// Output		: None
// Description	: Deactivates all the controls, opposite of function above 

void icnsEditorClass::Deactivate()
{	
	if (IsControlActive(controls.rootControl))
	{
		SetThemeWindowBackground(window,kThemeBrushDialogBackgroundInactive,false);
		DeactivateControl(controls.rootControl);
	}
}

#pragma mark -

/*void icnsEditorClass::Select()
{
	MWindow::Select();
	
	statics.UpdatePalettes();
}*/

// __________________________________________________________________________________________
// Name			: icnsEditorClass::~icnsEditorClass
// Input		: None
// Output		: None
// Description	: this is the destructor for the editor class. It maintains the linked list,
//				  disposes of the state linked linked list for this editor, as well as of any
//				  allocated data (note that the constructor for the icnsClass is also closed)

icnsEditorClass::~icnsEditorClass(void)
{
	DisposeStates(); // we must get rid of all the stored states
	if (currentState != NULL) delete currentState; // as well as of the current one
	
	MUtilities::ChangeCursor(rArrow); // reset the cursor
	
	// and also dispose of the various regions, gworld and pixmaps that we used
	if (selectionRgn != NULL) DisposeRgn(selectionRgn);
	if (selectionContentsMagnifiedRgn != NULL) DisposeRgn(selectionContentsMagnifiedRgn);
	if (selectionOutlineMagnifiedRgn != NULL) DisposeRgn(selectionOutlineMagnifiedRgn);
	if (selectionPix != NULL) UnlockPixels(selectionPix);
	if (selectionGW != NULL) DisposeGWorld(selectionGW);
	
	if (exportMode)
		FSpDelete(&exportFile);
}

// __________________________________________________________________________________________
// Name			: icnsEditorClass::DoIdle
// Input		: None
// Output		: None
// Description	: This function is called from the event loop when there aren't any other
//				  events that need to be handled. It keeps track of the cursor, and keeps
//				  the status variable (with which the class interfaces with the rest of the
//				  program) up do date.

void icnsEditorClass::DoIdle(void)
{
	Point	theMouse; // the current mouse coordinates
	WindowPtr windowUnderMouse;
	Point	globalMouse;
	
	SAVEGWORLD; // we must save the gworld...
	SetPort(window); // since we set the current port to the editor's window...
			
	GetMouse(&theMouse); // because we want the mouse coordinates in terms of the window
	
	globalMouse = theMouse;
	
	LocalToGlobal(&globalMouse);
	
	FindWindow(globalMouse, &windowUnderMouse);
	
	if (IsFrontProcess()) // if we're the main app now...
	{
		WindowPtr windowUnderMouse;
		Point	globalMouse;
		
		globalMouse = theMouse;
		
		LocalToGlobal(&globalMouse);
		
		FindWindow(globalMouse, &windowUnderMouse);
		
		if (window == windowUnderMouse)
		{
			if (HMGetBalloons())
				HandleBalloons(theMouse, window, rEditorBalloonHelp);				
			
			UpdateCursor(theMouse);
		}
		else if (GetEditor(windowUnderMouse) != NULL && statics.toolPalette->GetCurrentTool() == toolEyeDropper)
		{
			Point temp;
			
			SAVEGWORLD;
			SetPort(windowUnderMouse);
			GetMouse(&temp);
			if (PtInRect(temp, &GetEditor(windowUnderMouse)->editAreaRect))
				MUtilities::ChangeCursor(rTPToolBaseID + toolEyeDropper);
			RESTOREGWORLD;
		}
	}
	
	
	if (status & needsUpdate)
	{
		UpdateEditArea();
		
		statics.UpdatePalettes(updateAll);
		status &= ~needsUpdate;
	}
	else if (!EmptyRgn(selectionRgn))
	{
		Rect selectionUpdateRect;
		
		selectionUpdateRect = (**selectionContentsMagnifiedRgn).rgnBBox;
		//MagnifyRect(&selectionUpdateRect, magnification);
		OffsetRect(&selectionUpdateRect,
				   editAreaRect.left - hScrollbarValue,
				   editAreaRect.top - vScrollbarValue);
		
		if (statics.preferences.FeatureEnabled(prefsDrawGrid))
		{
			selectionUpdateRect.right++;
			selectionUpdateRect.bottom++;
		}
		
		SectRect(&selectionUpdateRect, &editAreaRect, &selectionUpdateRect);
		
		UpdateEditArea(selectionUpdateRect);
	}

	if (currentState->previousState != NULL) // if there is a previous state, then we go back
		status |= canUndo;
	else
		status &= ~canUndo;
		
	if (currentState->nextState != NULL) // similarly for the next state
		status |= canRedo;
	else
		status &= ~canRedo;
		
	if (magnification > kMinMagnification) // if we're not zoomed out all the way..
		status |= canZoomOut; // we can still zoom out
	else
		status &= ~canZoomOut;
	
	if (magnification < kMaxMagnification) // if we're not zoomed in all the way
		status |= canZoomIn; // we can still zoom in
	else
		status &= ~canZoomIn;
		
	if (status & resized) // if the window has been resized, we need to refresh it
		Refresh();
		
	RESTOREGWORLD; // we can now restore the gworld
}

void icnsEditorClass::UpdateCursor(Point theMouse)
{	
	if (PtInRect(theMouse, &editAreaRect))
	{
		int flags = 0;
		
		int x, y;
		Point drawingMouse;
		
		GetDrawingMousePosition(&x, &y, &theMouse, 0);
		drawingMouse.h = x;
		drawingMouse.v = y;
		
		if (statics.colorsPalette->IsVisible())
		{
			RGBColor tempColor;
			
			SAVEGWORLD;
			SetGWorld(currentGW, NULL);
			GetCPixel(x, y, &tempColor);
			RESTOREGWORLD;
			
			statics.colorsPalette->UpdateReadout(x, y, tempColor);
		}
		
		if (PtInRgn(drawingMouse, selectionRgn))
			flags |= cursorFlagsInSelection;
			
		if (!EmptyRgn(selectionRgn))
			flags |= cursorFlagsHasSelection;
			
		if (status & selectionFloated)
			flags |= cursorFlagsFloatedSelection;
			
		if (magnification < kMaxMagnification)
			flags |= cursorFlagsCanZoomIn;
			
		if (magnification > kMinMagnification)
			flags |= cursorFlagsCanZoomOut;
			
		statics.toolPalette->ChangeCursor(flags);
	}
}

bool icnsEditorClass::CurrentDepthSupportsColors(void)
{
	switch ((**currentPix).pixelSize)
	{
		case 32:
		case 1:
			return false;
			break;
		case 8:
		case 4:
			return true;
			break;
	}
	
	return false;
}

int icnsEditorClass::GetColors()
{
	return colors;
}

void icnsEditorClass::ChangeColors(int newColors, bool saveState)
{
	CTabHandle		colorTable4, colorTable8;
	
	if (newColors == colors) return;
	
	colors = newColors;
	
	switch (colors)
	{
		case macOSColors:
			colorTable4 = NULL;
			colorTable8 = NULL;
			break;
		case winColors:
			colorTable4 = GetCTable(rWindows4BitColors);
			colorTable8 = GetCTable(rWindows8BitColors);
			break;
	}
	
	ChangeColorsIconSet(ich4, &ich4GW, &ich4Pix, colorTable4, saveState);
	ChangeColorsIconSet(icl4, &icl4GW, &icl4Pix, colorTable4, saveState);
	ChangeColorsIconSet(ics4, &ics4GW, &ics4Pix, colorTable4, saveState);
	
	ChangeColorsIconSet(ich8, &ich8GW, &ich8Pix, colorTable8, saveState);
	ChangeColorsIconSet(icl8, &icl8GW, &icl8Pix, colorTable8, saveState);
	ChangeColorsIconSet(ics8, &ics8GW, &ics8Pix, colorTable8, saveState);
	
	if (currentPixName & (ich4 | icl4 | ics4 | ich8 | icl8 | ics8))
		GetGWorldAndPix(currentPixName, &currentGW, &currentPix); 
	
	switch (colors)
	{
		case macOSColors:  break;
		case winColors:
			DisposeCTable(colorTable4);
			DisposeCTable(colorTable8);
			break;
	}
	
	status |= needsUpdate;
	status |= needToSave;
	
	if (saveState)
		currentState = new drawingStateClass(currentState, this);
}

void icnsEditorClass::ChangeColorsIconSet(long name, GWorldPtr* gWorld, PixMapHandle* pix, CTabHandle colorTable, bool saveState)
{
	GWorldPtr		tempGW;
	PixMapHandle	tempPix;
	int				copyMode;
	OSStatus		err;
	
	SAVECOLORS;
	
	err = NewIconSet(&tempGW, &tempPix, (***pix).bounds, (***pix).pixelSize, colorTable);
	
	if (err != noErr)
	{
		SysBeep(6);
	}
	
	if (statics.preferences.FeatureEnabled(prefsDither))
		copyMode = srcCopy + ditherCopy;
	else
		copyMode = srcCopy;
		
	CopyPixMap(*pix, tempPix, &(***pix).bounds, &(***pix).bounds, copyMode, NULL);
	
	RESTORECOLORS;
	
	UnlockPixels(*pix);
	DisposeGWorld(*gWorld);
	
	*pix = tempPix;
	*gWorld = tempGW;
	
	if (saveState)
		SaveState(*gWorld, *pix, name);
}

// __________________________________________________________________________________________
// Name			: icnsEditorClass::Refresh
// Input		: None
// Output		: None
// Description	: Redraws the whole editor window, called when updates are needed. The drawing
//				  is clippied to the update region.

void icnsEditorClass::Refresh(void)
{	
	SAVEGWORLD; // saving the current gworld for restoring later
	
	if ((MWindow::GetFront() == this) &&				// if we're the front window
		IsFrontProcess() &&							// and we're in the foreground
		!IsControlActive(controls.rootControl))		// and we're deactivated
		Activate(); // we must activate
	else if ((MWindow::GetFront() != this ||			// if we're not the front window
		!IsFrontProcess()) &&						// or we're not the foreground app
		IsControlActive(controls.rootControl))		// and we're activated
		Deactivate(); // we must deactivate
	
	BeginUpdate(window); // BeginUpdate means that the drawing is clipped to the regions which
						 // has been marked as needed updates (by InvalRect, etc.)
	
	SetPort(window); // we're drawing in the window
	
	if (status & resized) // if we were resized
	{
		if (status & hasSelection) // and we had a selection
			MagnifySelectionRgn(); // we must redo the magnified selection region
		RepositionControls(); // we also need to reposition the controls
		
		// we must also update the zoom display text
		UpdateZoom();
		
		status &= ~resized; // and we're done with the resizing
	}
	
	UpdateControls(window, window->visRgn); // we're also refreshing the controls
	
	EndUpdate(window); // and we're done with the updating
	
	RESTOREGWORLD; // we can restore the saved gworld now
	
}

// __________________________________________________________________________________________
// Name			: icnsEditorClass::Close
// Input		: None
// Output		: None
// Description	: Right now just calls the destructor for the editor, but in the future we
//				  might want to do more things

void icnsEditorClass::Close()
{	
	MWindow::Hide();
	
	statics.UpdatePalettes(updateAll);
}

// __________________________________________________________________________________________
// Name			: icnsEditorClass::HandleContentClick
// Input		: eventPtr: pointer to the event record which describes the action which
//				  prompted this function to occur
// Output		: None
// Description	: based on the click location, different actions are called
//				  

void icnsEditorClass::HandleContentClick(EventRecord *eventPtr)
{
	ControlHandle	clickedControl;
	int				controlPart, oldDepth = -1;
	OSStatus		err = noErr;
	Point			where;
	
	SAVEGWORLD;
	SAVECOLORS;
	
	where = eventPtr->where;
	
	if (MWindow::GetFront() != this) // if this window wasn't in the front, and we clicked on it
	{
		icnsEditorPtr frontEditor;
		frontEditor = GetFrontEditor();
		
		if (frontEditor != NULL)
		{
			if (statics.toolPalette->GetCurrentTool() == toolEyeDropper)
			{
				int x, y;
				GetDrawingMousePosition(&x, &y, NULL, noLimit);
				if (x >= 0 && y >= 0 && x < (**currentPix).bounds.right && y < (**currentPix).bounds.bottom)
				{
					SetPort(window);
					GlobalToLocal(&where);
					
					HandleEyeDropper(where);
					
					statics.toolPalette->Update();
					
					RESTOREGWORLD;
					RESTORECOLORS;
				}
				else
					Select(); // bring it to the front
			}
			else 
				Select(); // bring it to the front
		}
		else
			Select(); // bring it to the front
	}	
	else
	{
		SetPort(window); 
		GlobalToLocal(&where); // we must convert the coordinates to local ones in term of
							   // the window
		controlPart = FindControl(where, window, &clickedControl);
		// we find where and in which control did the user click
		
		if (controlPart != kControlNoPart) // if the user clicked somewhere...
		{
			if (clickedControl == controls.editArea) // if it as in the editing well
				HandleDrawing(where); // the user wants to draw, and we must handle that
			else // otherwise it's a bunch of other controls
			{
				if (clickedControl == controls.hScrollbar ||
					clickedControl == controls.vScrollbar)
				{	
					hScrollbarValue = GetControlValue(controls.hScrollbar);
					vScrollbarValue = GetControlValue(controls.vScrollbar);
					StartPan();
				}
				if (TrackControl(clickedControl, where, (ControlActionUPP) -1))
				// TrackControl sees if when the user actually lets go of the button and the
				// cursor is still over the control
				{
					if (clickedControl == controls.zoomPlacard)
						EnhancedPlacardHandleClick(controls.zoomPlacard);
				} // if the user let go of the mouse over the control
				
				if (clickedControl == controls.hScrollbar ||
					clickedControl == controls.vScrollbar)
				{	
					FinishPan();
				}
				
			} // if the user didn't click in the edit well or in the display
		} // if the user clicked somewhere
	} // if window was in foreground
	
	RESTOREGWORLD;
	RESTORECOLORS;
}

void icnsEditorClass::HandleToolDoubleClick(long tool)
{
	switch (tool)
	{
		case toolEraser:
			SAVEGWORLD;
			SAVECOLORS;
			if (status & hasSelection)
				if (status & selectionFloated)
				{
					status &= ~selectionFloated;
					status &= ~hasSelection;
					SetEmptyRgn(selectionRgn);
				}
				else
				{
					RGBColor	eraseColor;
					
					SetGWorld(currentGW, NULL);
					statics.toolPalette->GetColors(NULL, &eraseColor);
					RGBBackColor(&eraseColor);
					EraseRgn(selectionRgn);
				}
			else
			{
				RGBColor	eraseColor;
				
				SetGWorld(currentGW, NULL);
				statics.toolPalette->GetColors(NULL, &eraseColor);
				RGBBackColor(&eraseColor);
				EraseRect(&(**currentPix).bounds);
			}
			RESTOREGWORLD;
			RESTORECOLORS;
			break;
		case toolMarquee:
			if (status & selectionFloated)
				DefloatSelection();
			RectRgn(selectionRgn, &(**currentPix).bounds);
			MagnifySelectionRgn();
			status |= hasSelection;
			break;
		/*case lasso:
			RgnHandle tempRgn, temp2Rgn;
			if (status & selectionFloated)
				DefloatSelection();
			tempRgn = NewRgn();
			RectRgn(tempRgn, &(**currentPix).bounds);
			temp2Rgn = TightenLasso(tempRgn);
			CopyRgn(temp2Rgn, selectionRgn);
			if (!EmptyRgn(selectionRgn))
			{
				MagnifySelectionRgn();
				status |= hasSelection;
			}	
			DisposeRgn(tempRgn);
			DisposeRgn(temp2Rgn);
			break;*/
		case toolZoom:
			magnification = 1;
			ZoomFitWindow();
			ClampScrollValues();
			RepositionControls();
			UpdateZoom();
			break;
		case toolPan:
			magnification = GetMaxMagnification();
			ZoomFitWindow();
			ClampScrollValues();
			RepositionControls();
			UpdateZoom();
			break;
	}
	
	currentState = new drawingStateClass(currentState, this);
	
	status |= needsUpdate;
}

#pragma mark -

#define SETMEMBERCHECKBOX(itemNo, member) \
GetDialogItemAsControl(dialog, itemNo, &tempControl);\
if (kDefaultMembers[format] & member)\
{\
	if (!((member & (icon1 + mask1)) == member))\
		ActivateControl(tempControl);\
	else\
		DeactivateControl(tempControl);\
	if ((usedMembers & member) == (member & kDefaultMembers[format]))\
		SetControlValue(tempControl, 1);\
	else if (usedMembers & member)\
		SetControlValue(tempControl, 2);\
	else\
		SetControlValue(tempControl, 0);\
}\
else\
{\
	SetControlValue(tempControl, 0);\
	DeactivateControl(tempControl);\
}

void icnsEditorClass::SetMembersCheckboxes(DialogPtr dialog, long usedMembers, long format)
{
	ControlHandle	tempControl;
	
	SETMEMBERCHECKBOX(iThumbnailBox, thumbnailSize);
	
	SETMEMBERCHECKBOX(iHugeBox, hugeSize);
	SETMEMBERCHECKBOX(iih32Box, ih32);
	SETMEMBERCHECKBOX(iich8Box, ich8);
	SETMEMBERCHECKBOX(iich4Box, ich4);
	SETMEMBERCHECKBOX(iichiBox, ichi);
	SETMEMBERCHECKBOX(ih8mkBox, h8mk);
	SETMEMBERCHECKBOX(iichmBox, ichm);
	
	SETMEMBERCHECKBOX(iLargeBox, largeSize);
	SETMEMBERCHECKBOX(iil32Box, il32);
	SETMEMBERCHECKBOX(iicl8Box, icl8);
	SETMEMBERCHECKBOX(iicl4Box, icl4);
	SETMEMBERCHECKBOX(iicniBox, icni);
	SETMEMBERCHECKBOX(il8mkBox, l8mk);
	SETMEMBERCHECKBOX(iicnmBox, icnm);
	
	SETMEMBERCHECKBOX(iSmallBox, smallSize);
	SETMEMBERCHECKBOX(iis32Box, is32);
	SETMEMBERCHECKBOX(iics8Box, ics8);
	SETMEMBERCHECKBOX(iics4Box, ics4);
	SETMEMBERCHECKBOX(iicsiBox, icsi);
	SETMEMBERCHECKBOX(is8mkBox, s8mk);
	SETMEMBERCHECKBOX(iicsmBox, icsm);
	
	SETMEMBERCHECKBOX(iMiniBox, miniSize);
	SETMEMBERCHECKBOX(iicm8Box, icm8);
	SETMEMBERCHECKBOX(iicm4Box, icm4);
	SETMEMBERCHECKBOX(iicmiBox, icmi);
	SETMEMBERCHECKBOX(iicmmBox, icmm);
}

#define GETMEMBERSCHECKBOX(itemNo, member)\
GetDialogItemAsControl(dialog, itemNo, &tempControl);\
if (GetControlValue(tempControl))\
	*usedMembers |= member;\
else\
	*usedMembers &= ~member;\

void icnsEditorClass::GetMembersCheckboxes(DialogPtr dialog, long* usedMembers)
{
	ControlHandle	tempControl;
	
	GETMEMBERSCHECKBOX(iThumbnailBox, thumbnailSize);
	
	GETMEMBERSCHECKBOX(iih32Box, ih32);
	GETMEMBERSCHECKBOX(iich8Box, ich8);
	GETMEMBERSCHECKBOX(iich4Box, ich4);
	GETMEMBERSCHECKBOX(iichiBox, ichi);
	GETMEMBERSCHECKBOX(ih8mkBox, h8mk);
	GETMEMBERSCHECKBOX(iichmBox, ichm);
	
	GETMEMBERSCHECKBOX(iil32Box, il32);
	GETMEMBERSCHECKBOX(iicl8Box, icl8);
	GETMEMBERSCHECKBOX(iicl4Box, icl4);
	GETMEMBERSCHECKBOX(iicniBox, icni);
	GETMEMBERSCHECKBOX(il8mkBox, l8mk);
	GETMEMBERSCHECKBOX(iicnmBox, icnm);
	
	GETMEMBERSCHECKBOX(iis32Box, is32);
	GETMEMBERSCHECKBOX(iics8Box, ics8);
	GETMEMBERSCHECKBOX(iics4Box, ics4);
	GETMEMBERSCHECKBOX(iicsiBox, icsi);
	GETMEMBERSCHECKBOX(is8mkBox, s8mk);
	GETMEMBERSCHECKBOX(iicsmBox, icsm);
	
	GETMEMBERSCHECKBOX(iicm8Box, icm8);
	GETMEMBERSCHECKBOX(iicm4Box, icm4);
	GETMEMBERSCHECKBOX(iicmiBox, icmi);
	GETMEMBERSCHECKBOX(iicmmBox, icmm);
}

void icnsEditorClass::HandleMembersCheckbox(DialogPtr dialog, int itemHit, long *usedMembers, int format)
{
	ControlHandle	tempControl;
	long			temp;
	
	GetDialogItemAsControl(dialog, itemHit, &tempControl);
	ToggleCheckbox(tempControl);
	temp = GetControlValue(tempControl);
	
	switch (itemHit)
	{
		case iHugeBox: if (temp) *usedMembers |= hugeSize; else *usedMembers &= ~hugeSize; break;
		case iLargeBox: if (temp) *usedMembers |= largeSize; else *usedMembers &= ~largeSize; break;
		case iSmallBox: if (temp) *usedMembers |= smallSize; else *usedMembers &= ~smallSize; break;
		case iMiniBox: if (temp) *usedMembers |= miniSize; else *usedMembers &= ~miniSize; break;
		default: GetMembersCheckboxes(dialog, usedMembers); break;
	}
	
	*usedMembers &= kDefaultMembers[format];
	if (*usedMembers & hugeSize) *usedMembers |= (ichi + ichm); else *usedMembers &= ~(ichi + ichm);
	if (*usedMembers & largeSize) *usedMembers |= (icni + icnm); else *usedMembers &= ~(icni + icnm);
	if (*usedMembers & smallSize) *usedMembers |= (icsi + icsm); else *usedMembers &= ~(icsi + icsm);
	if (*usedMembers & miniSize) *usedMembers |= (icmi + icmm); else *usedMembers &= ~(icmi + icmm);
	
	SetMembersCheckboxes(dialog, *usedMembers, format);
}

// __________________________________________________________________________________________
// Name			: icnsEditorClass::EditIconInfo
// Input		: None
// Output		: None
// Description	: This function displays a dialog which allows the user to change the icon's
//				  attributes (ID, name, bits)

int icnsEditorClass::EditIconInfo(int mode)
{
	DialogPtr		infoDialog;
	ModalFilterUPP	eventFilterUPP;
	bool			dialogDone;
	short			itemHit;
	ControlHandle	IDField, IDMenu, nameField, sizeField, formatPopup,
					sysHeapBox, purgeableBox, lockedBox, protectedBox, preloadBox; 
	Str255			menuTitle, tempString, sizeSuffix;
	long			temp, menuSelection, oldFormat, oldUsedMembers;
	MenuHandle		menu, popupMenu, formatMenu;
	int				menuID, item;
	
	oldFormat = format;
	oldUsedMembers = usedMembers;
	
	infoDialog = GetNewDialog(rIconInfo, NULL, (WindowPtr)-1L);
	
	SAVEGWORLD;
	
	SetPort(infoDialog);
	TextFont(applFont);
	TextSize(9);
	
	RESTOREGWORLD;
	
	if (mode == kInsertIcon)
	{
		Str255 windowTitle;
		
		GetIndString(windowTitle, rBasicStrings, eInsertIconTitle);
		SetWTitle(infoDialog, windowTitle);
	}
	
	//MWindow::CenterOnFront(GetDialogWindow(infoDialog));
	
	eventFilterUPP = NewModalFilterProc(IconInfoDialogFilter);
	
	SetDialogDefaultItem(infoDialog, iOK);
	SetDialogCancelItem(infoDialog, iCancel);
	
	GetDialogItemAsControl(infoDialog, iIconIDField, &IDField);
	GetDialogItemAsControl(infoDialog, iIDMenu, &IDMenu);
	GetDialogItemAsControl(infoDialog, iIconNameField, &nameField);
	GetDialogItemAsControl(infoDialog, iIconSizeField, &sizeField);
	GetDialogItemAsControl(infoDialog, iFormatPopup, &formatPopup);
	
	GetDialogItemAsControl(infoDialog, iPurgeable, &purgeableBox);
	GetDialogItemAsControl(infoDialog, iPreload, &preloadBox);
	GetDialogItemAsControl(infoDialog, iLocked, &lockedBox);
	GetDialogItemAsControl(infoDialog, iProtected, &protectedBox);
	GetDialogItemAsControl(infoDialog, iSystemHeap, &sysHeapBox);
	
	popupMenu = GetMenu(mBaseIDMenu - 1);
	
	for (int i = mBaseIDMenu; i < mBaseIDMenu + mIDMenuCount; i++)
	{
		menu = GetMenu(i);
		if(menu != NULL)
			InsertMenu(menu,hierMenu);
	}
	
	if (mode == kInsertIcon)
	{
		formatMenu = GetControlPopupMenuHandle(formatPopup);
		if (formatMenu != NULL)
		{
			DisableItem(formatMenu, formatWindows);
			DisableItem(formatMenu, formatMacOSXServer);
		}
	}
	
	SetControlText(nameField, name);
	NumToString(ID, tempString);
	SetControlText(IDField, tempString);
	NumToString(GetSize(), tempString);
	GetIndString(sizeSuffix, rLabelStrings, sSizeSuffix);
	AppendString(tempString, sizeSuffix);
	SetControlText(sizeField, tempString);
	SetControlValue(formatPopup, format);
	
	
	SetControlValue(purgeableBox, (flags & resPurgeable) >> resPurgeableBit);
	SetControlValue(preloadBox, (flags & resPreload) >> resPreloadBit);
	SetControlValue(lockedBox, (flags & resLocked) >> resLockedBit);
	SetControlValue(protectedBox, (flags & resProtected) >> resProtectedBit);
	SetControlValue(sysHeapBox, (flags & resSysHeap) >> resSysHeapBit);
	
	SetMembersCheckboxes(infoDialog, usedMembers, format);
	
	MWindow::DeactivateAll();
	
	ShowWindow(infoDialog);
	
	GetIDMenu(ID, &menu, &item, tempString);
	CheckItem(menu, item, true);
	SetControlValue(IDMenu, (**menu).menuID - mBaseIDMenu + 1);
	
	dialogDone = false;
	
	if ((format == formatWindows) || (format == formatMacOSXServer))
		ToggleNonMacOSItems(infoDialog);
	
	while (!dialogDone)
	{
		ModalDialog(eventFilterUPP, &itemHit);
		
		switch (itemHit)
		{
			case iOK:
				dialogDone = true;
				GetControlText(IDField, tempString);
				StringToNum(tempString, &temp);
				if ((temp != ID || mode == kInsertIcon) && (srcFileSpec.vRefNum != 0 || srcFileSpec.parID != 0))
				{
					Handle otherIcon = NULL;
					short	oldFile, targetFile;
					
					oldFile = CurResFile();
					targetFile = FSpOpenResFile(&srcFileSpec, fsRdPerm);
					if (targetFile != -1)
					{
						UseResFile(targetFile);
						
						if (GetControlValue(formatPopup) == formatMacOSUniversal)
						{
							otherIcon = Get1Resource('icns', temp);
							if (otherIcon == NULL)
							{
								otherIcon = Get1Resource('ICN#', temp);
								if (otherIcon == NULL)
									otherIcon = Get1Resource('ics#', temp);
							}
						}
						else if (GetControlValue(formatPopup) == formatMacOSNew)
						{
							otherIcon = Get1Resource('icns', temp);
						}
						else
						{
							otherIcon = Get1Resource('ICN#', temp);
								if (otherIcon == NULL)
									otherIcon = Get1Resource('ics#', temp);
						}
									
						CloseResFile(targetFile);
						UseResFile(oldFile);
						if (otherIcon != NULL)
						{
							Str255 message, overwriteButtonName, cancelButtonName;
							ReleaseResource(otherIcon);
							GetIndString(message, rBasicStrings, eIDAlreadyExists);
							SubstituteString(message, "\p<ID>", tempString);
							GetIndString(overwriteButtonName, rBasicStrings, eOverwriteButton);
							GetIndString(cancelButtonName, rBasicStrings, eInfoCancelButton);
							itemHit = icnsEditorClass::statics.DisplayAlert(message, overwriteButtonName, cancelButtonName, "\p");
							if (itemHit == 2)
								dialogDone = false;
						}
					}
				}
				if (dialogDone)
				{
					format = GetControlValue(formatPopup);
					GetControlText(nameField, name);
					ID = temp;
					flags = (GetControlValue(purgeableBox) << resPurgeableBit) +
							(GetControlValue(preloadBox) << resPreloadBit) + 
							(GetControlValue(lockedBox) << resLockedBit) +
							(GetControlValue(protectedBox) << resProtectedBit) +
							(GetControlValue(sysHeapBox) << resSysHeapBit);
					GetMembersCheckboxes(infoDialog, &usedMembers);
					status |= needToSave;
				}
				break;
			case iCancel:
				format = oldFormat;
				usedMembers = oldUsedMembers;
				dialogDone = true;
				break;
			case iIconIDField:
				CheckItem(menu, item, false);
				GetControlText(IDField, tempString);
				StringToNum(tempString, &temp);
				GetIDMenu(temp, &menu, &item, tempString);
				CheckItem(menu, item, true);
				SetControlValue(IDMenu, (**menu).menuID - mBaseIDMenu + 1);
				if (tempString[0] != 0)
				{
					SetControlText(nameField, tempString);
					Draw1Control(nameField);
				}
				break;
			case iIDMenu:
				menuSelection = LMGetMenuDisable();
				
				CheckItem(menu, item, false);
				
				menuID = menuSelection >> 16;
				item = menuSelection & 0x0000FFFF;
				
				menu = GetMenu(menuID);
				
				CheckItem(menu, item, true);
				
				GetMenuItemText(menu, item, menuTitle);
				
				SplitMenuItem(menuTitle, &temp, tempString);
				SetControlText(nameField, tempString);
				NumToString(temp, tempString);
				SetControlText(IDField, tempString);
				SelectDialogItemText(infoDialog, iIconIDField, 0, 32767);
				Draw1Control(IDField);
				Draw1Control(nameField);
				
				break;
			case iFormatPopup:
				format = GetControlValue(formatPopup);
				usedMembers = kDefaultMembers[format];
				SetMembersCheckboxes(infoDialog, usedMembers, format);
				if ((format == formatWindows) || (format == formatMacOSXServer))
				{
					if (IsControlActive(IDField))
						ToggleNonMacOSItems(infoDialog);
				}
				else if (!IsControlActive(IDField))
					ToggleNonMacOSItems(infoDialog);
				break;
			default:
				HandleMembersCheckbox(infoDialog, itemHit, &usedMembers, format);
				break; 
		}
	}
	
	DisposeRoutineDescriptor(eventFilterUPP);
	DisposeDialog(infoDialog);
	
	MWindow::ActivateAll();
	
	return itemHit;
}

void ToggleNonMacOSItems(DialogPtr infoDialog)
{
	ControlHandle currentControl;
	
	GetDialogItemAsControl(infoDialog, iIconIDLabel, &currentControl); ToggleControl(currentControl);
	GetDialogItemAsControl(infoDialog, iIconIDField, &currentControl); ToggleControl(currentControl);
	GetDialogItemAsControl(infoDialog, iIDMenu, &currentControl); ToggleControl(currentControl);
	GetDialogItemAsControl(infoDialog, iIconNameLabel, &currentControl); ToggleControl(currentControl);
	GetDialogItemAsControl(infoDialog, iIconNameField, &currentControl); ToggleControl(currentControl);
	
	GetDialogItemAsControl(infoDialog, iFlagsGroupBox, &currentControl); ToggleControl(currentControl);
	/*GetDialogItemAsControl(infoDialog, iPurgeable, &currentControl); ToggleControl(currentControl);
	GetDialogItemAsControl(infoDialog, iPreload, &currentControl); ToggleControl(currentControl);
	GetDialogItemAsControl(infoDialog, iLocked, &currentControl); ToggleControl(currentControl);
	GetDialogItemAsControl(infoDialog, iProtected, &currentControl); ToggleControl(currentControl);
	GetDialogItemAsControl(infoDialog, iSystemHeap, &currentControl); ToggleControl(currentControl);*/
}

void SplitMenuItem(Str255 text, long* ID, Str255 iconName)
{
	int IDEnd;
	
	for (IDEnd=1; text[IDEnd] != ' '; IDEnd++) {;}
	
	text[IDEnd] = text[0] - IDEnd;
	
	text[0] = IDEnd - 1;
	if (text[1] == 208)
		text[1] = '-';
	else if (text[1] == 0x81 && text[2] == 0x7C)
	{
		text[1] = '-';
		for (int i=2; i < text[0]; i++)
			text[i] = text[i+1];
		
		text[0]--;
	}
	
	StringToNum(text, ID);
	CopyString(iconName, &text[IDEnd]);
}

void GetIDMenu(int ID, MenuHandle* menu, int* item, Str255 name)
{
	MenuHandle	currentMenu;
	int			itemCount;
	long		tempID;
	Str255		menuItemText, tempName;
	
	CopyString(name, "\p");
	if (menu != NULL)
		*menu = (MenuHandle)Get1Resource('MENU', mBaseIDMenu + mIDMenuCount - 1);
	if (item != NULL)
		*item = CountMItems(*menu);
	
	for (int i = 0; i < mIDMenuCount; i++)
	{
		currentMenu = (MenuHandle) Get1Resource('MENU', mBaseIDMenu + i);
		
		if (currentMenu == NULL)
			DisplayValue(mBaseIDMenu + i);
		
		itemCount = CountMItems(currentMenu);
		
		for (int j = 1; j <= itemCount; j++)
		{
			GetMenuItemText(currentMenu, j, menuItemText);
			
			SplitMenuItem(menuItemText, &tempID, tempName);			
			
			if (ID == tempID)
			{
				CopyString(name, tempName);
				if (menu != NULL)
					*menu = currentMenu;
				if (item != NULL)
					*item = j;
				
				return;
			}
		}
		
		ReleaseResource(Handle(currentMenu));
	}

}

pascal bool IconInfoDialogFilter(DialogPtr dialog, EventRecord* eventPtr, short* itemHit)
{
	bool	handledEvent = false;
	
	switch (eventPtr->what)
	{
		case keyDown:
		case autoKey:
			ControlHandle IDField, focusControl;
			
			GetDialogItemAsControl(dialog, iIconIDField, &IDField);
			GetKeyboardFocus(dialog, &focusControl);
			
			if (eventPtr->modifiers & cmdKey)
				handledEvent = StdFilterProc(dialog, eventPtr, itemHit);
			else if (focusControl == IDField)
			{
				char key;
				key = eventPtr->message & charCodeMask;  
				if ((key == kReturnCharCode) || (key == kEnterCharCode) ||
				    (key == kTabCharCode) || (key == kBackspaceCharCode) ||
				    (key == kEscapeCharCode) || (key == kDeleteCharCode) ||
				    (key == kRightArrowCharCode) || (key == kLeftArrowCharCode) ||
				    (key == kUpArrowCharCode) || (key == kDownArrowCharCode) ||
				    (key == '-') || ((key >= '0') && (key <= '9')))
				{
				   handledEvent = StdFilterProc(dialog, eventPtr, itemHit);
				}
				else
				{
					SysBeep(6);
					handledEvent = true;
				}
			}
			else
				handledEvent = StdFilterProc(dialog, eventPtr, itemHit);
			break;
		default:
			handledEvent = StandardEditorDialogFilter(dialog, eventPtr, itemHit);
			break;
	}
	return handledEvent;
}

#pragma mark -

// __________________________________________________________________________________________
// Name			: icnsEditorClass::RepositionControls
// Input		: None
// Output		: None
// Description	: moves the controls in the window so that they are in their proper positions
//				  (some of the controls have to be aligned with the bottom or right sides).
//				  This is called after the window has been resized.

void icnsEditorClass::RepositionControls()
{
	Rect	windowRect, // the rectangle of the editor window
			controlRect; // the rectangle for the various controls I'll be moving
	int		h; // the target horizontal coordinate 
	int		v; // the target vertical coordinate
	// how much the edit area should be grown by for each magnification level
	
	SAVEGWORLD;
	SetPort(window); // we'll be changing controls in this window, so the coordinates must
					 // be local to here
	
	windowRect = window->portRect;
	OffsetRect(&windowRect, -windowRect.left, -windowRect.top);
	windowRect.bottom -= kScrollbarHeight;
	windowRect.right -= kScrollbarWidth;
	// want the rectangle to start at 0,0
	
	HideControl(controls.rootControl);
	// hiding the root control hides all of them, so that they can be repositioned without
	// flashes or leaving trails behind
	
	// the zoom display placard goes in the bottom left corner
	if (windowRect.right - kZoomPlacardWidth < kMinScrollbarLength)
	{
		if (IsControlVisible(controls.zoomPlacard))
			HideControl(controls.zoomPlacard);
				
		// horizontal scrollbar
		MoveControl(controls.hScrollbar, -1, windowRect.bottom);
		SizeControl(controls.hScrollbar, windowRect.right + 2, 16);
	}
	else
	{
		if (!IsControlVisible(controls.zoomPlacard))
			ShowControl(controls.zoomPlacard);
		MoveControl(controls.zoomPlacard, -1, windowRect.bottom);

		MoveControl(controls.hScrollbar, kZoomPlacardWidth - 2, windowRect.bottom);
		SizeControl(controls.hScrollbar, windowRect.right - kZoomPlacardWidth + 3, 16);
	}
	
	GetControlBounds(controls.vScrollbar, &controlRect);
	MoveControl(controls.vScrollbar, windowRect.right, -1);
	SizeControl(controls.vScrollbar, 16, windowRect.bottom + 2);
	
	
	// the edit well is enlaged according to the magnification level
	h = magnification * ((**currentPix).bounds.right - (**currentPix).bounds.left);
	v = magnification * (**currentPix).bounds.bottom - (**currentPix).bounds.top;
	MakeEditAreaRect(h, v, &editAreaRect);
	
	SetControlBounds(controls.editArea, &editAreaRect);
	
	SetControlMaximum(controls.hScrollbar, h - (editAreaRect.right - editAreaRect.left));
	SetControlMaximum(controls.vScrollbar, v - (editAreaRect.bottom - editAreaRect.top));
	
	hScrollbarValue = GetControlValue(controls.hScrollbar);
	vScrollbarValue = GetControlValue(controls.vScrollbar);
	
	if (GestaltVersion(gestaltSystemVersion, 0x08, 0x50))
	{
		SetControlViewSize(controls.hScrollbar, editAreaRect.right - editAreaRect.left);
		SetControlViewSize(controls.vScrollbar, editAreaRect.bottom - editAreaRect.top);
	}
	
	ShowControl(controls.rootControl); // we're done with the moving, so we can show the controls
	
	RESTOREGWORLD;
}

void icnsEditorClass::MakeEditAreaRect(int h, int v, Rect* areaRect)
{
	Rect	windowRect;
	
	windowRect = window->portRect;
	OffsetRect(&windowRect, -windowRect.left, -windowRect.top);
	windowRect.bottom -= kScrollbarHeight;
	windowRect.right -= kScrollbarWidth;
	
	if (h < windowRect.right)
	{
		areaRect->left = (windowRect.right - h)/2;
		areaRect->right = areaRect->left + h;
	}
	else
	{
		areaRect->left = 0;
		areaRect->right = windowRect.right;
	}
	
	if (v < windowRect.bottom)
	{
		areaRect->top = (windowRect.bottom - v)/2;
		areaRect->bottom = areaRect->top + v;
	}
	else
	{
		areaRect->top = 0;
		areaRect->bottom = windowRect.bottom;
	}
}

void icnsEditorClass::ZoomFitWindow()
{
	Point	newDimensions, maxDimensions;
	
	newDimensions.h = magnification * ((**currentPix).bounds.right - (**currentPix).bounds.left) + kScrollbarWidth;
	newDimensions.v = magnification * (**currentPix).bounds.bottom - (**currentPix).bounds.top + kScrollbarHeight;
	
	maxDimensions = GetMaxDimensions();
	
	if (newDimensions.h > maxDimensions.h) newDimensions.h = maxDimensions.h;
	if (newDimensions.v > maxDimensions.v) newDimensions.v = maxDimensions.v;
	
	if (newDimensions.h < kMinWidth) newDimensions.h = kMinWidth;
	if (newDimensions.v < kMinHeight) newDimensions.v = kMinHeight;
	
	SetDimensions(newDimensions);
}

void icnsEditorClass::ClampScrollValues()
{
	int 	x, y;
	Rect	areaRect;
	
	x = magnification * ((**currentPix).bounds.right - (**currentPix).bounds.left);
	y = magnification * ((**currentPix).bounds.bottom - (**currentPix).bounds.top);
	
	MakeEditAreaRect(x, y, &areaRect);

	x -= areaRect.right - areaRect.left;
	y -= areaRect.bottom - areaRect.top;
	
	if (hScrollbarValue > x) hScrollbarValue = x;
	if (vScrollbarValue > y) vScrollbarValue = y;
	
	if (hScrollbarValue < 0) hScrollbarValue = 0;
	if (vScrollbarValue < 0) vScrollbarValue = 0;
}

Point icnsEditorClass::GetMaxDimensions()
{
	Point		maximum, currentPosition, limits, temp;
	Rect		screenRect;
	GDHandle	mainScreen;
	
	mainScreen = GetMainDevice();
	screenRect = (**mainScreen).gdRect;
	
	if ((statics.previewPalette->IsVisible() &&
		PointsNear(statics.GetDefaultPalettePosition(statics.previewPalette), statics.previewPalette->GetPosition(), 5, 5)) ||
		(statics.membersPalette->IsVisible() &&
		PointsNear(statics.GetDefaultPalettePosition(statics.membersPalette), statics.membersPalette->GetPosition(), 5, 5)))
	{
		temp = statics.previewPalette->GetPosition();
		limits.h = temp.h - statics.previewPalette->GetBorderThickness(borderLeft);
	}
	else
	{
		limits.h = screenRect.right;
	}
	
	if (statics.colorsPalette->IsVisible() && PointsNear(statics.GetDefaultPalettePosition(statics.colorsPalette), statics.colorsPalette->GetPosition(), 5, 5))
	{
		temp = statics.colorsPalette->GetPosition();
		limits.v = temp.v - statics.colorsPalette->GetBorderThickness(borderTop);
	}
	else
	{
		limits.v = screenRect.bottom;
	}
	
	currentPosition = GetPosition();
	
	maximum.h = limits.h - currentPosition.h - GetBorderThickness(borderRight) - kDefaultWindowSeparation;
	maximum.v = limits.v - currentPosition.v - GetBorderThickness(borderBottom) - kDefaultWindowSeparation;
	
	return maximum;
}

int icnsEditorClass::GetMaxMagnification()
{
	Point	maxDimensions;
	int		maxMagnification;
			
	maxDimensions = GetMaxDimensions();
	
	maxDimensions.h -= kScrollbarWidth;
	maxDimensions.v -= kScrollbarHeight;
	
	maxDimensions.h /= (**currentPix).bounds.right;
	maxDimensions.v /= (**currentPix).bounds.bottom;
	
	if (maxDimensions.h > maxDimensions.v)
		maxMagnification = maxDimensions.v;
	else
		maxMagnification = maxDimensions.h;
		
	if (maxMagnification < kMinMagnification) maxMagnification = kMinMagnification;
	if (maxMagnification > kMaxMagnification) maxMagnification = kMaxMagnification;
	
	return maxMagnification;
}

void icnsEditorClass::UpdateZoom()
{
	MagnifySelectionRgn();
	
	Draw1Control(controls.zoomPlacard);
}

void icnsEditorClass::UpdatePreview()
{
	if (currentPixName & thumbnailSize)
		statics.previewPalette->SetPane(kPPThumbnailPane);
	else
		statics.previewPalette->SetPane(kPPHintsPane);
}

// __________________________________________________________________________________________
// Name			: icnsEditorClass::HandleGrow
// Input		: where: point in the grow box that was clicked
// Output		: None
// Description	: Handles a click in the grow box of the editor's window. GrowWindow (a system
//				  function is called), and then the window is resized (which eventually leads
//				  to the controls being repositioned too)

void icnsEditorClass::HandleGrow(Point where)
{
	Rect		maxGrowRect;
	long		growSize;
	int			h, v;
	RgnHandle	updateRgn;
	Point		currentDimensions;

	SetRect(&maxGrowRect, // the window can be between the...
		    kMinWidth, kMinHeight,
		    32000, 32000);
		    // ...and the maximum magnified size
			
	growSize = GrowWindow(window, where, &maxGrowRect);
	
	h = growSize & 0x0000FFFF;
	v = (growSize >> 16) & 0x0000FFFF;
	
	currentDimensions = GetDimensions();
	
	if (h != currentDimensions.h || v != currentDimensions.v)
	{	
		SAVEGWORLD;
		SetPort(window);
		
		updateRgn = NewRgn(); // we must invalidate the old window region...
		CopyRgn(window->visRgn, updateRgn);
		InvalRgn(updateRgn);
		
		SizeWindow(window, h, v, true); //...do the resizing
		
		CopyRgn(window->visRgn, updateRgn); // and invalidate the new one as well
		InvalRgn(updateRgn);
		
		DisposeRgn(updateRgn); // and now we're done with the region
		
		RESTOREGWORLD;
		
		RepositionControls();
		
		if (abs(h - currentDimensions.h) > kZoomThreshold ||
			abs(v - currentDimensions.v) > kZoomThreshold)
			zoomPosition.h = zoomPosition.v = zoomDimensions.h = zoomDimensions.v = -1;
	}
}

void icnsEditorClass::Drag(Point startPoint, Rect draggingBounds)
{
	Point oldPosition, newPosition;
	
	oldPosition = GetPosition();
	
	MWindow::Drag(startPoint, draggingBounds);
	
	newPosition = GetPosition();
	
	if (abs(newPosition.h - oldPosition.h) > kZoomThreshold ||
		abs(newPosition.v - oldPosition.v) > kZoomThreshold)
		zoomPosition.h = zoomPosition.v = zoomDimensions.h = zoomDimensions.v = -1;
}

/*
// __________________________________________________________________________________________
// Name			: icnsEditor::ResizeWindow
// Input		: None
// Output		: None
// Description	: using the magnification field of the editor class, this resized the window
//				  to the proper size, and sets the resized bit of the status 

void icnsEditorClass::ResizeWindow(void)
{
	int			hSize, // the new horizontal size of the window
				vSize; // the new vertical size
				//increment,
				//baseMagnification;
	RgnHandle	updateRgn; // the region of the window which must be updated
	Rect		controlRect;
	
	if (magnification > kMinMagnification) // if we're not zoomed out all the way..
		status |= canZoomOut; // we can still zoom out
	else
		status &= ~canZoomOut;
	
	if (magnification < kMaxMagnification) // if we're not zoomed in all the way
		status |= canZoomIn; // we can still zoom in
	else
		status &= ~canZoomIn;
	
	SAVEGWORLD; // we must save the current gworld since we're gonna be changing the port
	SetPort(window); // we'll be dealing with local stuff
	
	hSize = magnification * (**currentPix).bounds.right + kScrollbarWidth;
	vSize = magnification * (**currentPix).bounds.bottom + kScrollbarHeight;
		
	if (hSize != (window->portRect.right - window->portRect.left) ||
		vSize != (window->portRect.bottom - window->portRect.top))
	{
		updateRgn = NewRgn(); // we must invalidate the old window region...
		CopyRgn(window->visRgn, updateRgn);
		InvalRgn(updateRgn);
		
		SizeWindow(window, hSize, vSize, true); //...do the resizing
		
		CopyRgn(window->visRgn, updateRgn); // and invalidate the new one as well
		InvalRgn(updateRgn);
		
		DisposeRgn(updateRgn); // and now we're done with the region
	}
	
	InvalidateDrawingArea();
	GetControlBounds(controls.zoomPlacard, &controlRect);
	InvalRect(&controlRect);
	
	RESTOREGWORLD; // and we can restore the port

	status |= resized; // and inform the program that the window has been resized
}
*/

// __________________________________________________________________________________________
// Name			: icnsEditorClass::ZoomIn
// Input		: None
// Output		: None
// Description	: increments the magnification field (if possible) and calls ResizeWindow

void icnsEditorClass::ZoomIn(void)
{
	if (magnification != kMaxMagnification)
	// this should never be the case, but just to be sure...
	{
		zoomPosition.h = zoomPosition.v = zoomDimensions.h = zoomDimensions.v = -1;
		magnification++;
		ZoomFitWindow();
		ClampScrollValues();
		RepositionControls();
		UpdateZoom();
	}
}

// __________________________________________________________________________________________
// Name			: icnsEditorClass::ZoomOut
// Input		: None
// Output		: None
// Description	: decrements the magnification field (if possible) and calls ResizeWindow

void icnsEditorClass::ZoomOut(void)
{
	if (magnification != kMinMagnification)
	// this should never be the case, but just to be sure...
	{
		zoomPosition.h = zoomPosition.v = zoomDimensions.h = zoomDimensions.v = -1;
		magnification--;
		ZoomFitWindow();
		ClampScrollValues();
		RepositionControls();
		UpdateZoom();
	}
}

void icnsEditorClass::ToggleZoom()
{
	Point	tempPosition, tempDimensions;
	int		tempMagnification;
	
	if (zoomDimensions.h == -1 && zoomDimensions.v == -1 &&
		zoomPosition.h == -1 && zoomPosition.v == -1)
	{
		zoomDimensions = GetDimensions();
		zoomPosition = GetPosition();
		zoomMagnification = magnification;
		
		if ((editAreaRect.right - editAreaRect.left) == magnification * ((**currentPix).bounds.right - (**currentPix).bounds.left) &&
			(editAreaRect.bottom - editAreaRect.top) == magnification * ((**currentPix).bounds.bottom - (**currentPix).bounds.top))
		{
			tempPosition = statics.GetDefaultWindowPosition();
			tempPosition.h += GetBorderThickness(borderLeft) + kDefaultWindowSeparation;
			tempPosition.v += GetBorderThickness(borderTop);
			SetPosition(tempPosition);
			magnification = GetMaxMagnification();
			ZoomFitWindow();
		}
		else
		{
			tempPosition = statics.GetDefaultWindowPosition();
			tempPosition.h += GetBorderThickness(borderLeft);
			tempPosition.v += GetBorderThickness(borderTop);
			SetPosition(tempPosition);
			ZoomFitWindow();
		}
	}	
	else
	{
		tempPosition = zoomPosition;
		tempDimensions = zoomDimensions;
		tempMagnification = zoomMagnification;
		
		zoomDimensions = GetDimensions();
		zoomPosition = GetPosition();
		zoomMagnification = magnification;
		
		SetPosition(tempPosition);
		SetDimensions(tempDimensions);
		magnification = tempMagnification;
	}
	
	ClampScrollValues();
	RepositionControls();
	UpdateZoom();
}

#pragma mark -

// __________________________________________________________________________________________
// Name			: icnsEditorClass::Load
// Input		: None
// Output		: None
// Description	: loads the icon (by calling the Load function of the base class), erases the
//				  previous states, and makes the current one the first one (since this is as
//				  far back as we should go).

void icnsEditorClass::Load()
{
	icnsClass::Load(); // we call the base function
	
	if (format == formatWindows)
		colors = winColors;
	
	PostLoad();
}

// __________________________________________________________________________________________
// Name			: icnsEditorClass::LoadFileIcon
// Input		: None
// Output		: None
// Description	: loads the icon (by calling the Load function of the base class), erases the
//				  previous states, and makes the current one the first one (since this is as
//				  far back as we should go).

void icnsEditorClass::LoadFileIcon()
{
	icnsClass::LoadFileIcon(); // we call the base function
	
	PostLoad();
}

void icnsEditorClass::LoadDataFork()
{
	icnsClass::LoadDataFork();
	
	PostLoad();
}

void icnsEditorClass::PostLoad()
{
	LoadUsedMembers();
	
	UpdatePreview();
	
	for (int i=0; i < kPreferredMembersCount; i++)
		if (members & kPreferredMembers[i])
		{
			SetCurrentMember(kPreferredMembers[i], false);
			break;
		}
	
	ResetStates();
	
	statics.membersPalette->RefreshMemberPanes(this);
}

void icnsEditorClass::LoadUsedMembers()
{
	short oldFile, targetFile;
	Handle	usedMembersResource;
	
	SetupFileSpec(false);
	
	oldFile = CurResFile();
	targetFile = FSpOpenResFile(&srcFileSpec, fsRdWrPerm);
	
	UseResFile(targetFile);
	
	usedMembersResource = Get1Resource('Mngl', 128);
	
	if (usedMembersResource != NULL)
		usedMembers = **((long**)usedMembersResource);
	else
		usedMembers |= members;
	
	CloseResFile(targetFile);
	UseResFile(oldFile);
	
	CleanupFileSpec();
}

void icnsEditorClass::SaveUsedMembers()
{
	short oldFile, targetFile;
	Handle	usedMembersResource;
	
	SetupFileSpec(false);
	
	oldFile = CurResFile();
	targetFile = FSpOpenResFile(&srcFileSpec, fsRdWrPerm);
	
	UseResFile(targetFile);
	
	do
	{
		usedMembersResource = Get1Resource('Mngl', 128);
		if (usedMembersResource != NULL)
		{
			RemoveResource(usedMembersResource);
			UpdateResFile(targetFile);
		}
	} while (usedMembersResource != NULL);
	
	usedMembersResource = NewHandleClear(sizeof(usedMembers));
	
	BlockMoveData(&usedMembers, *usedMembersResource, sizeof(usedMembers));
	
	DetachResource(usedMembersResource);
	AddResource(usedMembersResource, 'Mngl', 128, "\p");
	
	ChangedResource(usedMembersResource);
	WriteResource(usedMembersResource);
	
	UpdateResFile(targetFile);
	CloseResFile(targetFile);
	UseResFile(oldFile);
	
	CleanupFileSpec();
}

// __________________________________________________________________________________________
// Name			: icnsEditorClass::Save
// Input		: None
// Output		: None
// Description	: saves the current icon to either the current selected file, and disposes of
//				  the current 

OSErr icnsEditorClass::Save(void)
{
	if (!statics.preferences.FeatureEnabled(prefsDontCheckSync))
	{
		if ((members & l8mk) || !IsEmptyPixMap(l8mkPix))
			CheckMaskSync(l8mkPix, icnmPix, eLargeMaskSync);
		
		if ((members & s8mk) || !IsEmptyPixMap(s8mkPix))
			CheckMaskSync(s8mkPix, icsmPix, eSmallMaskSync);
			
		if ((members & h8mk) || !IsEmptyPixMap(h8mkPix))
			CheckMaskSync(h8mkPix, ichmPix, eHugeMaskSync);
	}

	if (colors == winColors)
		ChangeColors(macOSColors, false);
	
	if (IDChanged())
	{
		short	oldFile, targetFile;
		Handle	oldIcon;
		
		oldFile = CurResFile();
		targetFile = FSpOpenResFile(&srcFileSpec, fsRdWrPerm);
			
		if (format == formatMacOSUniversal ||
			format == formatMacOSNew)
		{
			oldIcon = Get1Resource('icns', loadedID);
			if (oldIcon != NULL)
			{
				RemoveResource(oldIcon);
				UpdateResFile(targetFile);
			}
		}
		
		if (format == formatMacOSUniversal ||
			format == formatMacOSNew)
		{
			oldIcon = Get1Resource('ICN#', loadedID);
			if (oldIcon != NULL)
			{
				RemoveResource(oldIcon);
				UpdateResFile(targetFile);
			}
			oldIcon = Get1Resource('icl4', loadedID);
			if (oldIcon != NULL)
			{
				RemoveResource(oldIcon);
				UpdateResFile(targetFile);
			}
			oldIcon = Get1Resource('icl8', loadedID);
			if (oldIcon != NULL)
			{
				RemoveResource(oldIcon);
				UpdateResFile(targetFile);
			}
			oldIcon = Get1Resource('ics#', loadedID);
			if (oldIcon != NULL)
			{
				RemoveResource(oldIcon);
				UpdateResFile(targetFile);
			}
			oldIcon = Get1Resource('ics4', loadedID);
			if (oldIcon != NULL)
			{
				RemoveResource(oldIcon);
				UpdateResFile(targetFile);
			}
			oldIcon = Get1Resource('ics8', loadedID);
			if (oldIcon != NULL)
			{
				RemoveResource(oldIcon);
				UpdateResFile(targetFile);
			}
			oldIcon = Get1Resource('icm#', loadedID);
			if (oldIcon != NULL)
			{
				RemoveResource(oldIcon);
				UpdateResFile(targetFile);
			}
			oldIcon = Get1Resource('icm4', loadedID);
			if (oldIcon != NULL)
			{
				RemoveResource(oldIcon);
				UpdateResFile(targetFile);
			}
			oldIcon = Get1Resource('icm8', loadedID);
			if (oldIcon != NULL)
			{
				RemoveResource(oldIcon);
				UpdateResFile(targetFile);
			}
		}
		
		CloseResFile(targetFile);
		UseResFile(oldFile);
	}
	
	if (statics.preferences.GetSaveFork() == dataAndResourceForks ||
		statics.preferences.GetSaveFork() == dataFork)
	{
	
		if (HasNonIconDataFork())
		{
			Str255	text, yesButton, noButton, otherButton;
			short	itemHit;
			
			GetIndString(text, rBasicStrings, eNonIconDataFork);
			GetIndString(yesButton, rBasicStrings, eYesButton);
			GetIndString(noButton, rBasicStrings, eNoButton);
			GetIndString(otherButton, rBasicStrings, eChooseAnotherFile);
			
			SubstituteString(text, "\p<file name>", srcFileSpec.name);
			
			itemHit = statics.DisplayAlert(text, yesButton, noButton, otherButton);
			switch (itemHit)
			{
				case 1:
					break;
				case 2:
					return noErr;
					break;
				case 3:
					return fnOpnErr;
					break;
			}
		}
		
		icnsClass::SaveDataFork();
		loadedID = ID;
		
		if (statics.preferences.GetSaveFork() == dataAndResourceForks)
			icnsClass::Save();
	}
	else
		icnsClass::Save(); // this is from the base class
	
	PostSave();
	
	return noErr;
}

bool icnsEditorClass::HasNonIconDataFork()
{
	short	file;
	long	readLength, iconType;
	bool	nonIconDataFork;
	
	FSpOpenDF(&srcFileSpec, fsRdPerm, &file);
	
	SetFPos(file, fsFromStart, 0);
	
	GetEOF(file, &readLength);
	
	if (readLength == 0)
		nonIconDataFork = false;
	else
	{
		readLength = sizeof(long);
		
		FSRead(file, &readLength, &iconType);
		
		nonIconDataFork = (iconType != 'icns');
	}
	
	FSClose(file);
	return nonIconDataFork;
}

void icnsEditorClass::PostSave()
{
	SaveUsedMembers();
	
	status &= ~needToSave; // we don't need to save (at least until the user modifies the
						   // icon)
	DisposeStates(); // we don't need the saved states either, since we assume that that he
					 // likes what he has so far

	status |= needsUpdate;
}

#pragma mark -

void icnsEditorClass::OpenInExternalEditor()
{
	Str255			memberName;
	GWorldPtr		iconGW, maskGW;
	PixMapHandle	iconPix, maskPix;
	long			iconName, maskName, creator;
	Rect			bounds;
	
	if (exportMode)
		FSpDelete(&exportFile);
	
	if (statics.preferences.FeatureEnabled(prefsExportIconAndMask))
		GetCurrentIconMask(&iconPix, &iconGW, &iconName, &maskPix, &maskGW, &maskName, false);
	else
	{
		iconPix = currentPix;
		iconGW = currentGW;
		iconName = currentPixName;
		
		maskPix = NULL;
		maskGW = NULL;
		maskName = 0;
	}
	
	bounds = (**iconPix).bounds;
	
	creator = statics.preferences.GetExternalEditorCreator();
	
	GetIndString(exportFile.name, rBasicStrings, eIconographerSupportFolder);
	NumToString(long(this), memberName);
	AppendString(exportFile.name, memberName);
	AppendString(exportFile.name, "\p.");
	GetMemberResourceNameString(currentPixName, memberName);
	AppendString(exportFile.name, memberName);
	
	FSMakeFSSpec(0, 0, exportFile.name, &exportFile);
	
	switch(statics.preferences.GetExternalEditorFormat())
	{
		case exportFormatPICT:
			PicHandle		exportPic;
			
			if (statics.preferences.FeatureEnabled(prefsExportIconAndMask))
			{
				RgnHandle	clipRgn;
				
				CopyPixMap(iconPix, statics.canvasPix, &bounds, &bounds, srcCopy, NULL);
				
				if (statics.preferences.FeatureEnabled(prefsExportIconAndMask))
					MergePixMap32AndMask(statics.canvasPix, maskPix, bounds);
				
				clipRgn = NewRgn();
				RectRgn(clipRgn, &bounds);
				
				PixMapToPicture(statics.canvasPix, clipRgn, &exportPic);
				
				DisposeRgn(clipRgn);
			}
			else
				PixMapToPicture(currentPix, NULL, &exportPic);
	
			ExportPictureToPICTFile(exportPic, exportFile, creator);
			
			DisposeHandle((Handle)exportPic);
			break;
		case exportFormatPhotoshop:
		case exportFormatTIFF:
		case exportFormatPNG:
			CopyPixMap(iconPix, statics.canvasPix, &bounds, &bounds, srcCopy, NULL);
			
			if (statics.preferences.FeatureEnabled(prefsExportIconAndMask))
				MergePixMap32AndMask(statics.canvasPix, maskPix, bounds);
			
			switch (statics.preferences.GetExternalEditorFormat())
			{
				case exportFormatPhotoshop:
					ExportPixMap32ToQTFile(statics.canvasPix, bounds,
										  exportFile, creator, kQTFileTypePhotoShop,
										  kPlanarRGBCodecType, NULL); 		
				case exportFormatTIFF:
					ExportPixMap32ToQTFile(statics.canvasPix, bounds,
										   exportFile, creator, kQTFileTypeTIFF,
										   kTIFFCodecType, NULL);
					break;
				case exportFormatPNG:
					ExportPixMap32ToQTFile(statics.canvasPix, bounds,
										   exportFile, creator, kQTFileTypePNG,
										   kPNGCodecType, NULL);
					break;
			}
			break;
			
	}
	
	SendFinderAEOpen(exportFile);

	exportMode = true;
	exportDate = GetModificationDate(exportFile);
}

void icnsEditorClass::ReloadFromExternalEditor()
{
	exportDate = GetModificationDate(exportFile);
	
	if (statics.preferences.FeatureEnabled(prefsExportIconAndMask))
	{
		Rect			bounds;
		GWorldPtr		iconGW, maskGW;
		PixMapHandle	iconPix, maskPix;
		long			iconName, maskName;
		unsigned char	*imageData, *maskData;
	
		GetCurrentIconMask(&iconPix, &iconGW, &iconName, &maskPix, &maskGW, &maskName, false);
		
		members |= (iconName | maskName);
		
		ImportQTFileToGWorld(exportFile, statics.canvasGW);
		
		SAVECOLORS;
		
		bounds = (**iconPix).bounds;
		
		if (icnsEditorClass::statics.preferences.FeatureEnabled(prefsDither))
			CopyPixMap(statics.canvasPix, iconPix, &bounds, &bounds, srcCopy + ditherCopy, NULL);
		else
			CopyPixMap(statics.canvasPix, iconPix, &bounds, &bounds, srcCopy, NULL);
				
		if ((**maskPix).pixelSize == 8)				
			for (int y=0; y < bounds.bottom - bounds.top; y++)
			{
				imageData = (unsigned char*)(**statics.canvasPix).baseAddr + y * ((**statics.canvasPix).rowBytes & 0x3FFF);
				maskData = (unsigned char*)(**maskPix).baseAddr + y * ((**maskPix).rowBytes & 0x3FFF);
				
				for (int x=0; x < bounds.right - bounds.left; x++)
					maskData[x] = imageData[4 * x];
			}
		else
			for (int y=0; y < bounds.bottom - bounds.top; y++)
			{
				imageData = (unsigned char*)(**statics.canvasPix).baseAddr + y * ((**statics.canvasPix).rowBytes & 0x3FFF);
				maskData = (unsigned char*)(**maskPix).baseAddr + y * ((**maskPix).rowBytes & 0x3FFF);
				
				for (int x=0; x < bounds.right - bounds.left; x++)
					SetPixel1(x, y, imageData[4 * x]/0xFF, maskPix);
			}
	}
	else
		ImportQTFileToGWorld(exportFile, currentGW);

	status |= needToSave;
	status |= needsUpdate;
}

#pragma mark -

// __________________________________________________________________________________________
// Name			: icnsEditorClass::RefreshWindowTitle
// Input		: None
// Output		: None
// Description	: Sets the editor window title to the <filename>: <icon name>

void icnsEditorClass::RefreshWindowTitle()
{
	Str255	windowTitle, // the new window title
			memberName;
		
	CopyString(windowTitle, "\p"); // we set back to nothing
	AppendString(windowTitle, srcFileSpec.name); // put in the file name
	AppendString(windowTitle, "\p (");
	GetMemberNameString(currentPixName, memberName);
	AppendString(windowTitle, memberName);
	AppendString(windowTitle, "\p)");
	
	SetWTitle(window, windowTitle); // and set the title
}

void icnsEditorClass::SetCurrentMember(long memberName, bool fancy)
{
	GWorldPtr		memberGW;
	PixMapHandle	memberPix;
	bool			resize;

	if (fancy)
	{
		if (!EmptyRgn(selectionRgn)) // if there was a selection
		{
			if (status & selectionFloated) // we must defloat it
				DefloatSelection();
			SetEmptyRgn(selectionRgn); // and deselect it
			status &= ~hasSelection; // and now we don't have a selection anymore
		}
			
		status |= skipState; // when restoring, we must not restore to this state, rather
							 // we must move on to the next one immediately
		// this is because we are saving the state with the old size/depth, and then with
		// the new one and we don't want the user to have to undo twice to go back
		currentState = new drawingStateClass(currentState, this);
		
		status &= ~skipState; // now we don't need to skip this state anymore
	}
	
	members |= memberName;
	
	GetGWorldAndPix(memberName, &memberGW, &memberPix);
	
	resize = ((**memberPix).bounds.right != (**currentPix).bounds.right ||
			  (**memberPix).bounds.bottom != (**currentPix).bounds.bottom);
	
	currentGW = memberGW;
	currentPix = memberPix;
	currentPixName = memberName;
	
	if (resize)
	{
		ZoomFitWindow();
		RepositionControls();
	}
	
	SAVEGWORLD;
	SetPort(window);
	UpdateEditArea();
	RESTOREGWORLD;
	
	RefreshWindowTitle();
	UpdatePreview();
	
	statics.membersPalette->ScrollToCurrentMember(this);
	icnsEditorClass::statics.UpdatePalettes(updateAll);
	
	if (fancy)
	{
		currentState = new drawingStateClass(currentState, this);
		
		if (resize)
			zoomPosition.h = zoomPosition.v = zoomDimensions.h = zoomDimensions.v = -1;
	}
}

void icnsEditorClass::GetCurrentIconMask(PixMapHandle* iconPix, GWorldPtr* iconGW, long* iconName, 
										 PixMapHandle* maskPix, GWorldPtr* maskGW, long* maskName,
										 bool strict)
{
	int index;
	
	index = GetMemberIndex(currentPixName);
	
	if (kMembers[index].icon)
	{
		*iconPix = currentPix;
		*iconGW = currentGW;
		*iconName = currentPixName;
		
		*maskName = GetBestMaskName(kMembers[index].height, kMembers[index].depth, strict);
		GetGWorldAndPix(*maskName, maskGW, maskPix);
		
	}
	else
	{
		*maskPix = currentPix;
		*maskGW = currentGW;
		*maskName = currentPixName;
		
		*iconName = GetBestPixName(kMembers[index].height, kMembers[index].depth, strict);
		GetGWorldAndPix(*iconName, iconGW, iconPix);
	}
}


void icnsEditorClass::SetBestMember()
{
	switch (format)
	{
		case formatMacOSUniversal:
		case formatMacOSNew:
		case formatMacOSXServer:
			SetCurrentMember(il32, false);
			break;
		case formatMacOSOld:
			SetCurrentMember(icl8, false);
			break;
		case formatWindows:
			SetCurrentMember(il32, false);
			break;
	}
	
	ResetStates();
}

void icnsEditorClass::ToggleIconMask()
{
	GWorldPtr		iconGW, maskGW;
	PixMapHandle	iconPix, maskPix;
	long			iconName, maskName;
	
	
	status |= skipState;
	currentState = new drawingStateClass(currentState, this);
	status &= ~skipState;
	
	if (oldToggleMember != -1 &&
		currentToggleMember == currentPixName)
	{
		SetCurrentMember(oldToggleMember, true);
		
		oldToggleMember = currentToggleMember;
		currentToggleMember = currentPixName;
	}
	else
	{
		oldToggleMember = currentPixName;
		
		GetCurrentIconMask(&iconPix, &iconGW, &iconName, &maskPix, &maskGW, &maskName, false);
		
		if (iconName == currentPixName)
			SetCurrentMember(maskName, true);
		else
			SetCurrentMember(iconName, true);
			
		currentToggleMember = currentPixName;
	}
	
	members |= currentPixName;
	
	currentState = new drawingStateClass(currentState, this);
	
	Draw1Control(controls.editArea);

	statics.UpdatePalettes(0);
}

#pragma mark-

// __________________________________________________________________________________________
// Name			: icnsEditorClass::DisposeStates
// Input		: None
// Output		: None
// Description	: This function clears all the stored states. Most likely use is after a file
//				  has been saved, so there is point in undoing (since we assume the user likes
//				  what s/he has so far). Can also be called in low memory conditions.
// Note			: This function leaves the current state there, if all the states need to be
//				  disposed of then the current state must be disposed of by hand.

void icnsEditorClass::DisposeStates(void)
{
	drawingStatePtr	tempState; // the state used to go through the linked list
	
	tempState = firstState; // we start with the first state
	
	while (tempState != currentState) // go until we reach the current one
	{
		tempState = tempState->nextState; // we move to the next one
		delete tempState->previousState; // and from there delete the previous one
	}
	currentState->previousState = NULL; // there aren't any previous states
	currentState->nextState = NULL; // or next states
	
	firstState = currentState; // and the head is the tail
}

void icnsEditorClass::ResetStates()
{
	DisposeStates(); // the saved states don't apply anymore
	delete currentState; // including the curren one
	
	currentState = new drawingStateClass(NULL, this); // we instead save the state of the 
	firstState = currentState;						  // newly loaded icon
}

void icnsEditorClass::SaveState(GWorldPtr gWorld, PixMapHandle pix, long name)
{
	GWorldPtr tempGW;
	PixMapHandle tempPix;
	long	tempPixName;
	
	status |= (skipState | dontRestoreCurrentPix);
	
	tempGW = currentGW; tempPix = currentPix; tempPixName = currentPixName;
	
	currentGW = gWorld; currentPix = pix; currentPixName = name;
	currentState = new drawingStateClass(currentState, this);
	
	currentGW = tempGW; currentPix = tempPix; currentPixName = tempPixName;
	
	status &= ~(skipState | dontRestoreCurrentPix);
}

#pragma mark -

void icnsEditorClass::CheckMaskSync(PixMapHandle basePix, PixMapHandle maskPix, int errorString)
{
	GWorldPtr tempGW;
	PixMapHandle tempPix;
	short		itemHit;
	Str255		text, yesButton, noButton;
	Rect		bounds;
	
	
	bounds = (**basePix).bounds;
	
	NewGWorld(&tempGW, 1, &bounds, NULL, NULL, 0);
	tempPix = GetGWorldPixMap(tempGW);
	LockPixels(tempPix);
	
	Mask8ToMask1(basePix, tempPix);
	
	
	
	if (!SamePixMap(tempPix, maskPix))
	{
		GetIndString(text, rBasicStrings, errorString);
		GetIndString(yesButton, rBasicStrings, eYesButton);
		GetIndString(noButton, rBasicStrings, eNoButton);
		itemHit = statics.DisplayAlert(text, yesButton, noButton, "\p");
		if (itemHit == 1)
		{
			SAVECOLORS;
			CopyPixMap(tempPix, maskPix, &bounds, &bounds, srcCopy, NULL);
			RESTORECOLORS;
		}
		
	}
	UnlockPixels(tempPix);
	DisposeGWorld(tempGW);
}

// __________________________________________________________________________________________
// Name			: icnsEditorClass::HandleKeyDown
// Input		: eventPtr: pointer to the EventRecord that describes the event which happened
// Output		: None
// Description	: based on the event that happened different actions can take place (such
//				  as the switching of tools, nudging of the selection, etc.)

void icnsEditorClass::HandleKeyDown(EventRecord *eventPtr)
{
	char	theKey;
	int		xOffset = 0, yOffset = 0;
	
	theKey = eventPtr->message & charCodeMask; // the key that was pressed
	
	switch (theKey)
	{
		case '	': ToggleIconMask(); break;
		case kDeleteKey : // delete key either
			if ((eventPtr->modifiers & optionKey) != 0) // fills if option is down
				Fill();
			else // or clears if it isn't
				Clear();
			break;
		case kUpArrowCharCode : xOffset = 0; yOffset = -1; break; // the arrow keys move the
		case kDownArrowCharCode : xOffset = 0; yOffset = 1; break; // current selection around
		case kLeftArrowCharCode : xOffset = -1; yOffset = 0; break;
		case kRightArrowCharCode : xOffset = 1; yOffset = 0; break;
		
		case kPageDownCharCode:
			{
				SAVEGWORLD;
				SetPort(window);
				StartPan();
				ScrollbarAction(controls.vScrollbar, kControlPageDownPart);
				FinishPan();
				RESTOREGWORLD;
			}
			break;
		case kPageUpCharCode:
			{
				SAVEGWORLD;
				SetPort(window);
				StartPan();
				ScrollbarAction(controls.vScrollbar, kControlPageUpPart);
				FinishPan();
				RESTOREGWORLD;
			}
			break;
		
	}
	
	if ((xOffset != 0 || yOffset != 0) && !EmptyRgn(selectionRgn))
	// if the user pressed one of the arrow keys and there is a selection														
	{
		if ( (eventPtr->modifiers & shiftKey) != 0) // if shift is down...
		{
			xOffset *= 10; // the offsets are magnified by 10
			yOffset *= 10;
		}
		
		if (statics.toolPalette->GetCurrentTool() == toolMove || (status & selectionFloated))
		// if the move tool is selected we offset the selection shape. the same also happens
		// if we have a floated selection and we're using the marquee tool
		{
			if (!(status & selectionFloated)) // since we'll be moving the selection contents
			// we need to float the selection to make it glide over the rest of the picture
				FloatSelection();
			if ( (eventPtr->modifiers & optionKey) != 0)
			// if option key is down then we should leave a copy behind (standard mac behavior)
				CopyPixMap(selectionPix,
						   currentPix,
						   &(**selectionPix).bounds,
						   &(**selectionPix).bounds,
						   srcCopy,
						   selectionRgn);
			// for the actual moving, we need to offset the selection region, the magnified
			// selection region and the actual selection contents
			OffsetRect(&(**selectionPix).bounds, xOffset, yOffset);
		}
		
		OffsetRgn(selectionRgn, xOffset, yOffset);
		OffsetRgn(selectionContentsMagnifiedRgn, xOffset * magnification, yOffset * magnification);
		OffsetRgn(selectionOutlineMagnifiedRgn, xOffset * magnification, yOffset * magnification);
	
		// we've changed the drawing, so we must save the new state
		currentState = new drawingStateClass(currentState, this);
		
		// and we've modifed the drawing and it also needs updating
		status |= needToSave;
		status |= needsUpdate;
	}
	
	if (statics.preferences.IsEditorShortcutPressed())
		OpenInExternalEditor();
}

// __________________________________________________________________________________________
// Name			: icnsEditorClass::Undo
// Input		: None
// Output		: None
// Description	: this function sets the current state to the previous stored one and restores
//				  it.				  

void icnsEditorClass::Undo()
{
	if (currentState->previousState != NULL)
	// this function shouldn't be called if undo is impossible, but just to be sure
	{
		currentState = currentState->previousState; // we simply move back in the linked list
		currentState->RestoreState(this); // and restore the state

		status |= needsUpdate; // we also need to update
		
		if (status & resized) // if the saved state needs resizing, we must refresh the whole window
			Refresh();
		
		// if the restored state needed to be skipped, then we must call ourselves
		// usually we want to do this if we had an intermediary state, such as when switching
		// between icon depths/sizes, or when we did a drag-and-drop
		if (status & skipState)
			Undo();
	}
	
	RefreshWindowTitle();
}

// __________________________________________________________________________________________
// Name			: icnsEditorClass::Redo
// Input		: None
// Output		: None
// Description	: we set the current state to the next one, and restore it				  


void icnsEditorClass::Redo()
{
	// save as above, except we move forward through the linked list
	if (currentState->nextState != NULL)
	{
		currentState = currentState->nextState;
		currentState->RestoreState(this);
		
		status |= needsUpdate;
		
		if (status & resized)
			Refresh();
		
		if (status & skipState)
			Redo();
	}
	
	RefreshWindowTitle();
}

// __________________________________________________________________________________________
// Name			: icnsEditorClass::Cut
// Input		: None
// Output		: None
// Description	: this function handles a cut command (the selection contents are copied into 
//				  the clipboard (a copy command) and then the previous location of the selection
//				  is cleared (if it wasn't a floated selection) or the selection is set to
//				  nothing (if it was floated))
// Notes		: we assume that there was a selection in the first place (although nothing
//				  bad should happen if there isn't).

void icnsEditorClass::Cut()
{
	
	Copy(copyNormally); // first we copy the selection contents
	
	if (!(status & selectionFloated))
	// if there wasn't a floated selection, then we must leave a "hole" in the drawing
	{
		RGBColor	eraseColor;
		
		SAVEGWORLD;
		SetGWorld(currentGW, NULL);
		statics.toolPalette->GetColors(NULL, &eraseColor);
		RGBBackColor(&eraseColor); // fileed with the background color
		EraseRgn(selectionRgn);
		RESTOREGWORLD;
	}
	
	OffsetRect(&(**selectionPix).bounds, // we must reset the selectionPix to 0, 0
			  -(**selectionPix).bounds.left,
			  -(**selectionPix).bounds.top);
	SetEmptyRgn(selectionRgn); // no more selection
	status &= ~hasSelection;
	status &= ~selectionFloated;
	
	status |= needToSave; // we've made modifications
	status |= needsUpdate;
	
	currentState = new drawingStateClass(currentState, this);
	
}

// __________________________________________________________________________________________
// Name			: icnsEditorClass::Copy
// Input		: None
// Output		: None
// Description	: this function implements a copy command, which takes the current contents of
//				  the selection (floated or otherwise) and copies them in the clipboard, so
//				  that they can be pasted into other programs (or Icon Mangler itself).


void icnsEditorClass::Copy(int copyMode)
{
	unsigned long	picSize;
	PicHandle		pic;
	OSStatus		err;
			
	switch (copyMode)
	{
		case copyNormally:
			SAVEGWORLD;
			
			SetGWorld(currentGW, NULL);
			
			if (status & selectionFloated) // if there is a selection
				PixMapToPicture(selectionPix, selectionRgn, &pic); // we copy from there
			else
				PixMapToPicture(currentPix, selectionRgn, &pic); // otherwise from the image
			
			ZeroScrap(); // we reset the clipboard (scrap)
			picSize = GetHandleSize((Handle)pic); // the size of the picture
			
			err = PutScrap(picSize, 'PICT', *pic); // we put the picture into the clipboard
			if (err != noErr)
				DisplayValue(err); // if there was a problem (unlikely) we display the error code
			
			KillPicture(pic);
			
			RESTOREGWORLD;
			break;
		case copyAsIconAndMask:
			GWorldPtr		iconGW, maskGW;
			PixMapHandle	iconPix, maskPix;
			long			iconName, maskName;
			
			GetCurrentIconMask(&iconPix, &iconGW, &iconName, &maskPix, &maskGW, &maskName, true);
			
			pic = ARGBPixMapToPicture(iconPix, maskPix);
			
			ZeroScrap(); // we reset the clipboard (scrap)
			picSize = GetHandleSize((Handle)pic); // the size of the picture
			
			err = PutScrap(picSize, 'PICT', *pic); // we put the picture into the clipboard
			if (err != noErr)
				DisplayValue(err); // if there was a problem (unlikely) we display the error code
			
			KillPicture(pic);
			
			break;
		case copyIconFamily:
			int			icnsSize;
			IconFamilyHandle icnsHandle;
			
			icnsHandle = Geticns();
			
			SetResInfo((Handle)icnsHandle, ID, name);
			icnsSize = GetHandleSize((Handle)icnsHandle);
			
			ZeroScrap();
			
			PutScrap(icnsSize, 'icns', *icnsHandle);
			
			DisposeHandle((Handle)icnsHandle);
			
			break;
	}
}

void icnsEditorClass::SaveMembers()
{
	SaveState(ih32GW, ih32Pix, ih32);
	SaveState(il32GW, il32Pix, il32);
	SaveState(is32GW, is32Pix, is32);
	
	SaveState(h8mkGW, h8mkPix, h8mk);
	SaveState(l8mkGW, l8mkPix, l8mk);
	SaveState(s8mkGW, s8mkPix, s8mk);
	
	SaveState(ich8GW, ich8Pix, ich8);
	SaveState(icl8GW, icl8Pix, icl8);
	SaveState(ics8GW, ics8Pix, ics8);
	
	SaveState(ich4GW, ich4Pix, ich4);
	SaveState(icl4GW, icl4Pix, icl4);
	SaveState(ics4GW, ics4Pix, ics4);
	
	SaveState(ichiGW, ichiPix, ichi);
	SaveState(icniGW, icniPix, icni);
	SaveState(icsiGW, icsiPix, icsi);
	
	SaveState(ichmGW, ichmPix, ichm);
	SaveState(icnmGW, icnmPix, icnm);
	SaveState(icsmGW, icsmPix, icsm);
}

// __________________________________________________________________________________________
// Name			: icnsEditorClass::Paste
// Input		: None
// Output		: None
// Description	: this function imports the contents of the clipboard, and sets them as a 
//				  floating selection (using the InsertFromPicture command)


void icnsEditorClass::Paste(int pasteType)
{
	if (pasteType == pasteIconFamily)
	{
		IconFamilyHandle clipIconFamily;
		long offset, familySize;
		
		familySize = GetScrap(NULL, 'icns', &offset);
		if (familySize > 0)
		{
			SaveMembers();
			
			clipIconFamily = (IconFamilyHandle)NewHandle(familySize);
			HLock((Handle)clipIconFamily);
			
			familySize = GetScrap((Handle)clipIconFamily, 'icns', &offset);
			
			LoadFromIconFamily(clipIconFamily);
			
			HUnlock((Handle)clipIconFamily);
			DisposeHandle((Handle)clipIconFamily);
			
			status |= needToSave;
			
			SaveMembers();
			currentState = new drawingStateClass(currentState, this);
			
			status |= needsUpdate;
		}
	}
	else
	{
		PicHandle		clipPicture;
		long			offset, picSize;
		
		// we attempt to get the picture data from the clipboard
		picSize = GetScrap(NULL,'PICT',&offset);
		if(picSize > 0) // if there is any
		{
			// we allocate the handle where the pic will be store
			clipPicture = (PicHandle)NewHandle(picSize);
			HLock((Handle)clipPicture);
			
			
			picSize = GetScrap((Handle)clipPicture,'PICT',&offset); // we import it
			
			switch (pasteType)
			{
				case normally:
					InsertFromPicture(clipPicture, currentGW, insertCentered); // and we insert it into the drawing
					break;
				case asIconAndMask:
					InsertPicIntoIcon(this, clipPicture);
					break;
				case intoSelection:
					if (status & selectionFloated)
						DefloatSelection();
					(**clipPicture).picFrame = (**selectionRgn).rgnBBox;
					InsertFromPicture(clipPicture, currentGW, 0);
					break;
			}
			
			status |= needToSave; // we've modified the picture
		
			currentState = new drawingStateClass(currentState, this);
			
			status |= needsUpdate;
			
			HUnlock((Handle)clipPicture); // we're done with the picture
			DisposeHandle((Handle)clipPicture);
		}
	}
}

// __________________________________________________________________________________________
// Name			: icnsEditorClass::InsertFromPicture
// Input		: srcPic: handle to the picture that should be drawn into the GWorld
//				  scale: true if the picture should be expanded/shrunk to fit the gworld
//				  boundary, if false then the picture will be centered.
// Output		: targetGW: pointed to the GWorld where the picture should be drawn
// Description	: This function draws the specified picture into a GWorld. If the target
//				  GWorld is the current one, then the picture is placed into a selection,
//				  otherwise it is drawn straight into the GWorld


void icnsEditorClass::InsertFromPicture(PicHandle srcPic, GWorldPtr targetGW, int options)
{
	Rect	picRect, // the dimensions of the picture
			currentBounds; // the size of the current GWorld
	
	SAVEGWORLD;
	SAVECOLORS;
	
	if (options & insertScaled) // if we scale then the picture should be as big as the target
		picRect = targetGW->portRect;
	else // otherwise the size is left alone
		picRect = (**srcPic).picFrame;
		
	OffsetRect(&picRect, -picRect.left, -picRect.top);
	
	if (options & insertCentered)
		OffsetRect(&picRect,
				   (targetGW->portRect.right - picRect.right)/2,
				   (targetGW->portRect.bottom - picRect.bottom)/2);
	
	if (targetGW == currentGW)
	// if we're inserting into the current gworld we must put the picture into a floating selection
	{
		if (status & selectionFloated) // if there was a selection already...
			DefloatSelection(); // we must defloat it
		
		status |= (selectionFloated | hasSelection);
		// we'll be creating a new selection so we must set these flags

		currentBounds = (**currentPix).bounds; // we want the picture to be centered
		
		// we must now update the selection GWorld/PixMap so that it reflects the size of the
		// picture we are inserting
		UnlockPixels(selectionPix);
		DisposeGWorld(selectionGW);
		NewGWorldUnpadded(&selectionGW,
				 (**currentPix).pixelSize,
				 &picRect,
				 (**currentPix).pmTable);
		selectionPix = GetGWorldPixMap(selectionGW);
		LockPixels(selectionPix);
		
		// now that we have the selection GWorld set up, we can draw the picture in it
		SetGWorld(selectionGW, NULL);
		EraseRect(&picRect);
		if (statics.preferences.FeatureEnabled(prefsDither))
			DrawPictureDithered(srcPic, &picRect);
		else
			DrawPicture(srcPic, &picRect);
		
		// the selection shape should be the region which is the picture shape  
		PictureToRegion(srcPic, picRect, selectionRgn);
		MagnifySelectionRgn(); // we want the enlarged selection shape too
		
		// since we've made a selection, the user is likely to want to move it so we set the
		// current tool to the move tool
		
		RESTOREGWORLD;
		RESTORECOLORS;
		
		statics.toolPalette->SetCurrentTool(toolMove);
	}
	else // otherwise we just draw it in
	{
		SetGWorld(targetGW, NULL);
		ForeColor(blackColor);
		BackColor(whiteColor);
		if (statics.preferences.FeatureEnabled(prefsDither))
			DrawPictureDithered(srcPic, &picRect);
		else
			DrawPicture(srcPic, &picRect);
			
		RESTOREGWORLD;
		RESTORECOLORS;
	}
	
	
	status |= needsUpdate; // we need updating
	
	if (!EmptyRgn(selectionRgn)) // checking for selections
		status |= hasSelection;
	else
		status &= ~hasSelection;
}

// __________________________________________________________________________________________
// Name			: icnsEditorClass::PictureToMask
// Input		: srcPic: handle to the picture whose outline (not the built-in one, but just
//				  one determined on the fly based on white regions around the picture)
// Output		: maskGW: handle to the GWorld where the generated mask should be stored
// Description	: This function draws the source picture, and makes a mask out of it based on
//				  the white areas around the picture
// Note 		: this function isn't quite the same as the one above. This one creates the mask
// 				  based on the colors surrouding the picture, while the other one attempts to
//				  extract the one stored in the picture

void icnsEditorClass::PictureToMask(PicHandle srcPic, GWorldPtr maskGW)
{
	GWorldPtr		tempGW; // the GWorld in which we'll be drawing the picture
	PixMapHandle	tempPix; // PixMap belonging to the GWorld above
	Rect			bounds; // the bounds of the mask
	OSStatus		err = noErr; // used for error checking
	
	SAVEGWORLD;
	SAVECOLORS;
	
	bounds = maskGW->portRect; // we get the bounds
	
	// make a GWorld for the picture
	err = NewGWorld(&tempGW, 32, &bounds, NULL, NULL, 0);
	if (err != noErr) {status |= outOfMemory; return; }
	tempPix = GetGWorldPixMap(tempGW);
	LockPixels(tempPix);
	SetGWorld(tempGW, NULL);
	EraseRect(&bounds);
	
	// draw it in
	DrawPicture(srcPic, &bounds);
	
	// and then get the mask
	Make1BitMask(tempPix, maskGW->portPixMap, (**tempPix).bounds);
	
	RESTOREGWORLD;
	RESTORECOLORS;
	
	// we're done
	UnlockPixels(tempPix);
	DisposeGWorld(tempGW);
}

// __________________________________________________________________________________________
// Name			: icnsEditorClass::Clear
// Input		: None
// Output		: None
// Description	: this function clears out the current selection. If it's floated, then the 
//				  entire selection is deleted, otherwise the contents are set to the background
//				  color, but the outline is left.

void icnsEditorClass::Clear(void)
{
	SAVEGWORLD;
	SAVECOLORS;
	
	if (status & selectionFloated) // if we have a floating selection...
	{
		status &= ~selectionFloated;
		status &= ~hasSelection;
		SetEmptyRgn(selectionRgn); // we just empty it
	}
	else
	{
		RGBColor	eraseColor;
		
		SetGWorld(currentGW, NULL); // otherwise we clear out the selected region in the
		statics.toolPalette->GetColors(NULL, &eraseColor); 
		RGBBackColor(&eraseColor); // pixmap by filling it with the background color
		EraseRgn(selectionRgn);
	}
	RESTOREGWORLD;
	RESTORECOLORS;
	
	status |= needToSave; // we've made changes...
	status |= needsUpdate;
	
	currentState = new drawingStateClass(currentState, this);
}

// __________________________________________________________________________________________
// Name			: icnsEditorClass::Fill
// Input		: None
// Output		: None
// Description	: this function does a general fill (not to a specific point) of the current
//				  selection with the foreground color

void icnsEditorClass::Fill(void)
{
	RGBColor	fillColor;
	
	SAVEGWORLD;
	SAVECOLORS;
	
	if (status & selectionFloated) // if there's a floated selection
		SetGWorld(selectionGW, NULL); // then we draw in the selection GWorld
	else
		SetGWorld(currentGW, NULL); // otherwise we draw in the current GWorld
	
	statics.toolPalette->GetColors(&fillColor, NULL);
	RGBForeColor(&fillColor); 
	PaintRgn(selectionRgn); // we paint in the region
	
	RESTOREGWORLD;
	RESTORECOLORS;
	
	status |= needToSave; // we've made changes
	status |= needsUpdate;
	
	currentState = new drawingStateClass(currentState, this);
}

// __________________________________________________________________________________________
// Name			: icnsEditorClass::MakeSelection
// Input		: selectionType: what selection operation should be done (all, none, inverse)
// Output		: None
// Description	: performs an operation the selection. It can either select the entire image,
//				  select nothing, or inverse the current selection (so that what was previously
//				  selected is not deselected and vice-versa).

void icnsEditorClass::MakeSelection(int selectionType)
{
	if (status & selectionFloated) // if there was a selection already we must defloat it
		DefloatSelection();
		
	switch (selectionType) // based on the operation we want to do
	{
		case all: // select the whole image
			RectRgn(selectionRgn, &(**currentPix).bounds);
			// simply convert the current dimensions into a rectangle
			MagnifySelectionRgn();
			break;
		case similar:
			RGBColor* colors;
			int	noOfColors;
			
			if (status & selectionFloated)
				DefloatSelection();
			
			status &= ~selectionFloated;
			
			GetSelectionColors(&colors, &noOfColors);
			SetEmptyRgn(selectionRgn);
			GetSimilarColors(colors, noOfColors, currentPix, NULL, selectionRgn);
			MagnifySelectionRgn();
			
			delete colors;
			
			break;
		case none:
			SetEmptyRgn(selectionRgn); // set the selection to nothing
			break;
		case inverse:
			RgnHandle	tempRgn;
			
			// basically we create a region the size of the whole drawing, and subtract from it
			// the current selection
			tempRgn = NewRgn();
			RectRgn(tempRgn, &(**currentPix).bounds);
			DiffRgn(tempRgn, selectionRgn, selectionRgn);
			DisposeRgn(tempRgn);
			
			MagnifySelectionRgn();
			break;
	}
	
	if (!EmptyRgn(selectionRgn)) // if there's still a selection...
		status |= hasSelection;
	else
		status &= ~hasSelection;
	
	status |= needsUpdate;
	
	currentState = new drawingStateClass(currentState, this);
}

void icnsEditorClass::GetSelectionColors(RGBColor** colors, int* noOfColors)
{
	Point temp;
	RGBColor	*tempColorPtr, tempColor;
	bool	exists = false;
	
	*noOfColors = 0;
	
	SAVEGWORLD;
	SetGWorld(currentGW, NULL);
	
	*colors = new RGBColor;
	
	for (int y = (**selectionRgn).rgnBBox.top; y < (**selectionRgn).rgnBBox.bottom; y++)
		for (int x = (**selectionRgn).rgnBBox.left; x < (**selectionRgn).rgnBBox.right; x++)
		{
			temp.h = x; temp.v = y;
			if (PtInRgn(temp, selectionRgn))
			{
				GetCPixel(x, y, &tempColor);
				for (int i = 0; i < (*noOfColors); i++)
					if (!AreEqualRGB(tempColor, (*colors)[i]) && !exists)
					exists = false;
				else
					exists = true; 
				
				if (!exists)
				{
					(*colors)[*noOfColors] = tempColor;
					(*noOfColors)++;
					tempColorPtr = new RGBColor[*noOfColors + 1];
					for (int i = 0; i < (*noOfColors) +1 ; i++)
						tempColorPtr[i] = (*colors)[i];
						
					delete *colors;
					
					*colors = tempColorPtr;
				}
				
				exists = false;
			}
		}
		
	RESTOREGWORLD;
}

// __________________________________________________________________________________________
// Name			: icnsEditorClass::Rotate
// Input		: angle: how many degress the selection should be rotated, currently only 90
//				  and -90 are supported, but real rotations could be added later on
// Output		: None
// Description	: rotates the current pixmap (or the selection if there is one) by 90 or -90
//				  degrees

void icnsEditorClass::Rotate(int angle)
{	
	if (EmptyRgn(selectionRgn)) // if there isn't a selection
		::Rotate(angle, &currentGW, &currentPix); // we just rotate the entire drawing
	else
	{
		GWorldPtr		tempGW; // we'll be drawing the selection shape here, rotating it and
								// converting it back into a region
		PixMapHandle	tempPix; // PixMap belonging to the GWorld above
		OSStatus		err = noErr; // error checking
		
		SAVEGWORLD;
		SAVECOLORS;
		
		if (!(status & selectionFloated)) // if there is a selection but it's not floated
			FloatSelection(); // we float it
			
		::Rotate(angle, &selectionGW, &selectionPix); // we rotate the contents
		
		// we make the tempGW the size of the selection
		err = NewGWorld(&tempGW, 1, &(**selectionRgn).rgnBBox, NULL, NULL, 0);
		if (err != noErr) {status |= outOfMemory; return; }
		tempPix = GetGWorldPixMap(tempGW);
		LockPixels(tempPix);
		
		// we draw the selection in
		SetGWorld(tempGW, NULL);
		EraseRect(&qd.thePort->portRect);
		PaintRgn(selectionRgn);
		
		// we rotate the GWorld
		::Rotate(angle, &tempGW, &tempPix);
		
		// and we convert it back into a region
		BitMapToRegion(selectionRgn, (BitMap*)*tempPix);
		MagnifySelectionRgn();
		
		RESTOREGWORLD;
		RESTORECOLORS;
		
		// we're done with these
		UnlockPixels(tempPix);
		DisposeGWorld(tempGW);
	}

	status |= needToSave; // we made some changes
	status |= needsUpdate;
	
	currentState = new drawingStateClass(currentState, this);
}

// __________________________________________________________________________________________
// Name			: icnsEditorClass::Flip
// Input		: flipType: are we flipping vertically of horizontally
// Output		: None
// Description	: this function flips the entire image (or the selection if there is one) 
//				  horizontally or vertically. This means that the image is reflected about a
//				  vertical (for horizontal flips) or a horizontal (for vertical flips) axis
//				  in the middle

void icnsEditorClass::Flip(int flipType)
{
	// this function is very similar to the above, with the except that the rotation is replaced
	// by flips
	if (EmptyRgn(selectionRgn))
	{
		if (flipType == horizontal)
			::FlipHorizontal(currentPix);
		else
			::FlipVertical(currentPix);
	}
	else
	{
		GWorldPtr		tempGW;						
		PixMapHandle	tempPix; 
		OSStatus		err = noErr;
		
		SAVEGWORLD;
		SAVECOLORS;
		
		if (!(status & selectionFloated))
			FloatSelection();
			
		if (flipType == horizontal)
			::FlipHorizontal(selectionPix);
		else
			::FlipVertical(selectionPix);
		
		err = NewGWorld(&tempGW, 1, &(**selectionRgn).rgnBBox, NULL, NULL, 0);
		if (err != noErr) {status |= outOfMemory; return; }
		tempPix = GetGWorldPixMap(tempGW);
		LockPixels(tempPix);
		
		SetGWorld(tempGW, NULL);
		EraseRect(&qd.thePort->portRect);
		PaintRgn(selectionRgn);
		
		if (flipType == horizontal)
			::FlipHorizontal(tempPix);
		else
			::FlipVertical(tempPix);
		
		BitMapToRegion(selectionRgn, (BitMap*)*tempPix);
		MagnifySelectionRgn();
		
		RESTOREGWORLD;
		RESTORECOLORS;
		
		UnlockPixels(tempPix);
		DisposeGWorld(tempGW);
	}
	
	status |= needToSave;
	status |= needsUpdate;
	
	currentState = new drawingStateClass(currentState, this);
}

// __________________________________________________________________________________________
// Name			: icnsEditorClass::Invert
// Input		: None
// Output		: None
// Description	: This function takes the current icon data (or selection, if there is one) 
//				  and inverts it. Inversion means to take the complement of the colors of the
//				  the pixels.

void icnsEditorClass::Invert(void)
{
	SAVEGWORLD;
	
	if (status & selectionFloated)
	// if the selection is floated we must invert the contents of the selectionGW
	{
		SetGWorld(selectionGW, NULL);
		InvertRect(&(**selectionPix).bounds);
	}
	else if (status & hasSelection)
	// if there's only a selection, we must only invert the selection region
	// to do this we'll be changing the clipping region so that only the selection region
	// is not clipped and then invert the whole GWorld (but in reality only the selection area
	// will be inverted)
	{
		RgnHandle oldClip; // the current clipping region
		
		oldClip = NewRgn();
		GetClip(oldClip); // we get the old clipping region
		
		SetGWorld(currentGW, NULL);
		SetClip(selectionRgn); // we set the new clipping region
		
		InvertRect(&(**currentPix).bounds); // invert
		
		SetClip(oldClip); // restore the old clipping region
		
		DisposeRgn(oldClip); // and deallocate the local copy
	}
	else // if nothing is selected then we just invert the whole thing
	{
		SetGWorld(currentGW, NULL);
		InvertRect(&(**currentPix).bounds);
	}
	
	RESTOREGWORLD;
	
	// we've made changes
	status |= needToSave;
	status |= needsUpdate;
	
	currentState = new drawingStateClass(currentState, this);
}



// __________________________________________________________________________________________
// Name			: GetEditor
// Input		: window: pointer to the window from which the editor class pointed should
//				  be extracted
// Output		: icnsEditorPtr: pointer to the editor class instance associtated with the
//				  window
// Description	: this functions returns the editor associated with the chosen window,
//				  if there is one (see icnsEditorClass::icnsEditorClass for the method used
//				  to assign an editor to a window).

icnsEditorPtr GetEditor(WindowPtr window)
{
	MWindowPtr theWindow; // the editor class which owns that window
	
	if (window == NULL) // if the window is invalid then we (obviously) don't have an editor 
		return NULL;
	
	theWindow = (MWindowPtr)GetWRefCon(window); // we get the pointer stored in the
													// window's RefCon
	
	// if the window is indeed the one that's associated with that editor
	if (theWindow->GetType() == kEditorType) 
		return (icnsEditorPtr)theWindow; // we return the pointer
	else
		return NULL; // otherwise the window doesn't belong to any editor
}

// __________________________________________________________________________________________
// Name			: GetEditor
// Input		: None
// Output		: icnsEditorPort: pointer to the editor class instance associated with the
//				  front most window
// Description	: a wrapper for the function above, it returns the editor associated with the
//				  front-most window

icnsEditorPtr GetFrontEditor(void)
{
	MWindowPtr frontWindow;
	
	frontWindow = MWindow::GetFront();
	
	if ((frontWindow == NULL) || (frontWindow->GetType() != kEditorType))
		return NULL;
	else
		return icnsEditorPtr(frontWindow);
}


// __________________________________________________________________________________________
// Name			: StandardEditDialogFilter
// Input		: dialog: the dialog for which we must perform the event filtering
//				  eventPtr: the event that just occured
// Output		: itemHit: the item that was hit, based on the event
// Description	: This function processed events when an editor opens up a dialog. it takes
//				  care of refreshes, etc.

pascal bool StandardEditorDialogFilter(DialogPtr dialog, EventRecord* eventPtr, short* itemHit)
{
	bool	handledEvent = false;
	GrafPtr	oldPort;
	MWindowPtr window;
	
	switch (eventPtr->what)
	{
		//case osEvt:
		case activateEvt:
			GetPort(&oldPort);
			SetPort(dialog);
			InvalRect(&dialog->portRect);
			SetPort(oldPort);
		case updateEvt:
			if ((WindowPtr) eventPtr->message != dialog)
			{
				window = GetWindow((WindowPtr)eventPtr->message);
				if (window != NULL)
					window->Refresh();
			}
			else
				handledEvent = StdFilterProc(dialog, eventPtr, itemHit);
			break;
		default:
			GetPort(&oldPort);
			SetPort(dialog);
			
			handledEvent = StdFilterProc(dialog,eventPtr,itemHit);
			SetPort(oldPort);
		break;
	}
	return handledEvent;
}


void SetControlBalloonHelp(ControlHandle theControl, long stringNo)
{
	SetControlReference(theControl, stringNo);
}

long GetControlBalloonHelp(ControlHandle theControl)
{
	return GetControlReference(theControl);
}

void HandleBalloons(Point theMouse, WindowPtr window, int strings)
{
	ControlHandle theControl;
	Point globalMouse;
	WindowPtr windowUnderMouse;
	
	globalMouse = theMouse;
	
	LocalToGlobal(&globalMouse);
		
	FindWindow(globalMouse, &windowUnderMouse);
		
	if (window != windowUnderMouse)
		return;
				
	FindControl(theMouse, window, &theControl);
	
	if (theControl != NULL)
	{
		HMMessageRecord standardMessage;
		OSErr err;
		
		if ((GetControlBalloonHelp(theControl) != icnsEditorClass::statics.currentBalloon) || !HMIsBalloon())
		{
			BalloonVariant	variant;
			Rect			balloonRect, portRect;
			GDHandle 		mainScreen;
		
			mainScreen = GetMainDevice();
			
			standardMessage.hmmHelpType = khmmStringRes;
			standardMessage.u.hmmStringRes.hmmResID = strings; 
			standardMessage.u.hmmStringRes.hmmIndex = GetControlBalloonHelp(theControl);
			
			GetControlBounds(theControl, &balloonRect);
			
			theMouse.h = balloonRect.right - 10;
			theMouse.v = balloonRect.bottom - 10;
			
			LocalToGlobal(&theMouse);
			
			
			portRect = (**mainScreen).gdRect;;
			
			//OffsetRect(&balloonRect, window->portRect.right, window->portRect.top);
			
			HMBalloonRect(&standardMessage, &balloonRect);
			if ((balloonRect.right > portRect.right - theMouse.h))
				if ((balloonRect.bottom > portRect.bottom - theMouse.v))
					variant = kBottomRightTipPointsDownVariant;
				else
					variant = kTopRightTipPointsRightVariant;
			else
				if ((balloonRect.bottom > portRect.bottom - theMouse.v))
					variant = kBottomLeftTipPointsDownVariant;
				else
					variant = kTopLeftTipPointsLeftVariant;
			
			err = HMShowBalloon(&standardMessage,
						  theMouse,
						  NULL,
						  NULL,
						  kBalloonWDEFID,
						  variant,
						  kHMRegularWindow);
			
			icnsEditorClass::statics.currentBalloon = GetControlBalloonHelp(theControl);
		}
	}
	else if (icnsEditorClass::statics.currentBalloon != 0)
	{
		HMRemoveBalloon();
		icnsEditorClass::statics.currentBalloon = 0;
	}
}
