// __________________________________________________________________________________________
// Program		: Icon Mangler
// Filename		: icnsEditorClass.cpp (C++)
// Author		: Mihai Parparita (St. Mary's International School)
// Last modified: April 1, 1999
// Description	: This file contains all the functions associated with the icnsEditorClass, as
//				  well as for the subclass staticsClass.

#include <QuickTimeComponents.h>
#include <ImageCodec.h>
#include "icnsEditorClass.h"
#include "drawingStateClass.h"
#include "editorStaticsClass.h"
#include "MAlert.h"
#include "MHelp.h"

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
			 	 MDocumentWindow(rEditorWind, kEditorType)
{
	OSStatus	err = noErr; // used for checking if everything went OK
		
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
	
	currentPixName = il32;
	GetGWorldAndPix(currentPixName, &currentGW, &currentPix);
	
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
	lastSelectionTicks = TickCount();
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
	
	SetRect(&limitRect, 0, 0, 0,0);
	
	format = statics.preferences.GetDefaultFormat();
	colors = macOSColors;
	usedMembers = statics.preferences.GetDefaultUsedMembers();
	
	oldToggleMember = currentToggleMember = -1;
	
	currentState = new drawingStateClass(NULL, this); // we store the current state
	firstState = currentState; // and also make this the first one
	
	
	ID = rCustomIcon; // the default ID is the standard finder custom icon ID
	GetIDMenu(ID, NULL, NULL, name);
	
	magnification = statics.preferences.GetDefaultZoomLevel();
	UpdateZoom();
		
	ZoomFitWindow();
	
	InstallDraggingHandlers();
	
	statics.Stagger(this);
	
	SetProxyIcon(MUtilities::GetFrontProcessCreator(),iconFormats[format]);
	
	lastPenClick.h = lastPenClick.v = -1;
	lastEffectDesc = NULL;
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
	MHelp::SetControlHelp(controls.editArea, rEditorHelp, hEditingArea);
	SetControlUserPaneDraw(controls.editArea, EditAreaDraw);
	SetControlUserPaneHitTest(controls.editArea, EditAreaHitTest);
				   
	GetControlBounds(controls.editArea, &editAreaRect);

	// zoom placard
	controls.zoomPlacard = NewEnhancedPlacard(rZoomPlacard, window, enhancedPlacardDrawBorder | enhancedPlacardLargeArrow, 0, 0,
											 "\p", NULL, false, statics.zoomMenu, statics.canvasGW, statics.canvasPix, ZoomPlacardUpdate, this);
	MHelp::SetControlHelp(controls.zoomPlacard, rEditorHelp, hZoomPlacard);
	
	// scrollbars
	controls.vScrollbar = GetNewControl(rVScrollbar, window);
	if (controls.vScrollbar == NULL) return mFulErr;
	scrollBarActionUPP = NewControlActionUPP(icnsEditorClass::ScrollbarAction);
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
	dragTrackingHandlerUPP = NewDragTrackingHandlerUPP(DragTrackingHandler);
	dragReceiveHandlerUPP = NewDragReceiveHandlerUPP(DragReceiveHandler);
	
	// and then install them
	InstallTrackingHandler(dragTrackingHandlerUPP,window,NULL);
	InstallReceiveHandler(dragReceiveHandlerUPP,window,NULL);
}

#pragma mark -

void icnsEditorClass::Show(void)
{
	MWindow::Show();
	
	statics.UpdatePalettes(this, updateAll);
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
	
	statics.UpdatePalettes(this, updateAll);
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
//				  allocated data (note that the constructor for the MIcon is also closed)

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
		
	DisposeEnhancedPlacard(controls.zoomPlacard);
}

// __________________________________________________________________________________________
// Name			: icnsEditorClass::DoIdle
// Input		: None
// Output		: None
// Description	: This function is called from the event loop when there aren't any other
//				  events that need to be handled. It keeps track of the cursor, and keeps
//				  the status variable (with which the class interfaces with the rest of the
//				  program) up do date.

void icnsEditorClass::DoIdle(MWindowPtr windowUnderMouse)
{
#pragma unused(windowUnderMouse)
	Point	theMouse; // the current mouse coordinates
	
	SAVEGWORLD; // we must save the gworld...
	SetPort(); // since we set the current port to the editor's window...
			
	GetMouse(&theMouse); // because we want the mouse coordinates in terms of the window
		
	if (currentPixName & icons)
		status |= currentPixIsIcon;
	else
		status &= ~currentPixIsIcon;
	
	if (EmptyRgn(selectionRgn))
		status &= ~hasSelection;
	else
		status |= hasSelection;
	
	if (status & needsUpdate)
	{
		UpdateEditArea();
		
		statics.UpdatePalettes(this, updateAll);
		status &= ~needsUpdate;
	}
	else if (status & hasSelection)
	{
		Rect selectionUpdateRect;
		
		GetRegionBounds(selectionContentsMagnifiedRgn, &selectionUpdateRect);
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
	
	SetModified(status & needToSave);
	
	if (status & resized) // if the window has been resized, we need to refresh it
		Refresh();
	
	if (file.IsValid() && file.Moved())
	{
		RefreshProxy();
		RefreshWindowTitle();
	}
	
	if (MUtilities::ScrapHasFlavor('PICT'))
		status |= canPaste;
	else
		status &= ~canPaste;
		
	if (MUtilities::ScrapHasFlavor('icns'))
		status |= canPasteFamily;
	else
		status &= ~canPasteFamily;
		
	if ((status & needToSave) && file.IsValid())
		status |= canRevert;
	else
		status &= ~canRevert;
		
	if (ISOPTIONDOWN) status |= isOptionDown; else status &= ~isOptionDown;
	if (ISSHIFTDOWN) status |= isShiftDown; else status &= ~isShiftDown;
	if (ISCOMMANDDOWN) status |= isCommandDown; else status &= ~isCommandDown;
		
	RESTOREGWORLD; // we can now restore the gworld
}

void icnsEditorClass::UpdateCursor(Point theMouse)
{			
	if (PtInRect(theMouse, &editAreaRect))
	{
		int x, y;
		Point drawingMouse, temp;
		
		status |= mouseInEditArea;
			
		temp = theMouse;
		GetDrawingMousePosition(&x, &y, &temp, 0);
		
		drawingMouse.h = x;
		drawingMouse.v = y;
	
		if (status & hasSelection && PtInRgn(drawingMouse, selectionRgn))
			status |= mouseInSelection;
		else
			status &= ~mouseInSelection;
		
		if (this == MWindow::GetFront())
		{
			if (statics.colorsPalette->IsVisible())
			{
				RGBColor tempColor;
				
				
				SAVEGWORLD;
				SetGWorld(currentGW, NULL);
				GetCPixel(x, y, &tempColor);
				RESTOREGWORLD;
				
				statics.colorsPalette->UpdateReadout(x, y, tempColor);
			}
			
			statics.toolPalette->ChangeCursor(status);
		}
		else if (statics.toolPalette->GetCurrentTool() == toolEyeDropper)
			MUtilities::ChangeCursor(rTPToolBaseID + toolEyeDropper);
	}
	else
		status &= ~(mouseInSelection | mouseInEditArea);
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
	
	ChangeColorsIconSet(ich4, colorTable4, saveState);
	ChangeColorsIconSet(icl4, colorTable4, saveState);
	ChangeColorsIconSet(ics4, colorTable4, saveState);
	
	ChangeColorsIconSet(ich8, colorTable8, saveState);
	ChangeColorsIconSet(icl8, colorTable8, saveState);
	ChangeColorsIconSet(ics8, colorTable8, saveState);
	
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
	
	status |= (needsUpdate | needToSave);
	
	if (saveState)
		currentState = new drawingStateClass(currentState, this);
}

void icnsEditorClass::ChangeColorsIconSet(long name, CTabHandle colorTable, bool saveState)
{
	GWorldPtr		tempGW, gWorld;
	PixMapHandle	tempPix, pix;
	int				copyMode;
	OSStatus		err;
	
	GetGWorldAndPix(name, &gWorld, &pix);
	
	err = NewIconSet(&tempGW, &tempPix, (**pix).bounds, (**pix).pixelSize, colorTable);
	if (err != noErr)
		SysBeep(6);

	SAVEGWORLD;
	SetGWorld(tempGW, NULL);
	SAVECOLORS;
	
	
	if (statics.preferences.FeatureEnabled(prefsDither))
		copyMode = srcCopy + ditherCopy;
	else
		copyMode = srcCopy;
		
	CopyPixMap(pix, tempPix, &(**pix).bounds, &(**pix).bounds, copyMode, NULL);
	
	RESTORECOLORS;
	RESTOREGWORLD;
	
	ReplaceMember(name, tempGW, tempPix);
	
	if (currentPixName == name)
		GetGWorldAndPix(currentPixName, &currentGW, &currentPix);
	
	if (saveState)
		SaveState(name);
}

// __________________________________________________________________________________________
// Name			: icnsEditorClass::Refresh
// Input		: None
// Output		: None
// Description	: Redraws the whole editor window, called when updates are needed. The drawing
//				  is clippied to the update region.

void icnsEditorClass::Refresh(void)
{
	RgnHandle	visibleRegion = NewRgn();
	SAVEGWORLD; // saving the current gworld for restoring later
	
	if ((MWindow::GetFront() == this) &&				// if we're the front window
		IsFrontProcess() &&							// and we're in the foreground
		!IsControlActive(controls.rootControl))		// and we're deactivated
	{
		DEBUG("\pactivating");
		Activate(); // we must activate
		DEBUG("\pdone activating");
	}
	else if ((MWindow::GetFront() != this ||			// if we're not the front window
		!IsFrontProcess()) &&						// or we're not the foreground app
		IsControlActive(controls.rootControl))		// and we're activated
	{
		DEBUG("\pdeactivating");
		Deactivate(); // we must deactivate
		DEBUG("\pdone deactivating");
	}
	
	BeginUpdate(window); // BeginUpdate means that the drawing is clipped to the regions which
						 // has been marked as needed updates (by InvalRect, etc.)
	DEBUG("\pbegan updating");
	
	SetPort(); // we're drawing in the window
	
	if (status & resized) // if we were resized
	{
		if (status & hasSelection) // and we had a selection
			MagnifySelectionRgn(); // we must redo the magnified selection region
		RepositionControls(); // we also need to reposition the controls
		
		// we must also update the zoom display text
		UpdateZoom();
		
		status &= ~resized; // and we're done with the resizing
	}
	
	DEBUG("\pfinished resizing");
	
	UpdateControls(window, GetPortVisibleRegion(GetWindowPort(window), visibleRegion)); // we're also refreshing the controls
	
	DEBUG("\pupdated controls");
	
	DisposeRgn(visibleRegion);
	
	EndUpdate(window); // and we're done with the updating
	
	RESTOREGWORLD; // we can restore the saved gworld now
	
	DEBUG("\pall done refreshing");
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
					SetPort();
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
		SetPort(); 
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
				DefloatSelection(true);
			RectRgn(selectionRgn, &(**currentPix).bounds);
			MagnifySelectionRgn();
			status |= hasSelection;
			break;
		case toolLasso:
			RgnHandle tempRgn, temp2Rgn;
			if (status & selectionFloated)
				DefloatSelection(true);
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
			break;
		case toolZoom:
			ZoomActual();
			break;
		case toolPan:
			ZoomFit();
			break;
	}
	
	if (tool != toolZoom && tool != toolPan)
		currentState = new drawingStateClass(currentState, this);
	
	status |= needsUpdate;
}

#pragma mark -

void icnsEditorClass::EditIconInfo()
{
	int itemHit;
	
	itemHit = MIcon::EditIconInfo(kIconInfo);
	
	if (itemHit == iOK)
	{
		status |= needToSave;
		members &= usedMembers;
		if (!(currentPixName & usedMembers))
		{
			for (int i=0; i < kPreferredMembersCount; i++)
				if (usedMembers & kPreferredMembers[i])
				{
					SetCurrentMember(kPreferredMembers[i], 2);
					break;
				}
		}
	}
}

void icnsEditorClass::AddMember()
{
	DialogPtr		addMemberDialog;
	ModalFilterUPP	eventFilterUPP;
	MWindowPtr		addMemberDialogWindow;
	bool			dialogDone = false;
	short			itemHit;
	ControlHandle	typePopup, sourcePopup;
	MenuHandle		typeMenu, sourceMenu;
	
	addMemberDialog = GetNewDialog(rAddMember, NULL, (WindowPtr)-1L);
	
	SetDialogDefaultItem(addMemberDialog, iOK);
	SetDialogCancelItem(addMemberDialog, iCancel);
	
	addMemberDialogWindow = new MWindow(GetDialogWindow(addMemberDialog), kDialogType);
	MWindow::CenterOnFront(addMemberDialogWindow);


	GetDialogItemAsControl(addMemberDialog, iTypePopup, &typePopup);
	typeMenu = GetControlPopupMenuHandle(typePopup);
	BuildMembersMenu(typeMenu, 0, ~members);
	SetControlMaximum(typePopup, CountMenuItems(typeMenu));
	SetControlValue(typePopup, 1);
	
	GetDialogItemAsControl(addMemberDialog, iSourcePopup, &sourcePopup);
	sourceMenu = GetControlPopupMenuHandle(sourcePopup);
	BuildMembersMenu(sourceMenu, 3, members);
	SetControlMaximum(sourcePopup, CountMenuItems(sourceMenu));
	if (ISSHIFTDOWN || ISOPTIONDOWN)
		SetControlValue(sourcePopup, iSourceCurrent);
	else
		SetControlValue(sourcePopup, iSourceNone);
	
	MWindow::DeactivateAll();
	
	ShowWindow(GetDialogWindow(addMemberDialog));

	eventFilterUPP = NewModalFilterUPP(MWindow::StandardDialogFilter);
	
	MHelp::SetupDialogHelp(addMemberDialog, rAddMemberHelp);
	
	while (!dialogDone)
	{
		ModalDialog(eventFilterUPP, &itemHit);
		
		switch (itemHit)
		{
			case iOK:
				int newMember, sourceMember;
				GWorldPtr		targetGW;
				PixMapHandle	targetPix;
				
				GetMenuItemRefCon(typeMenu, GetControlValue(typePopup), (unsigned long*)&newMember);
				
				switch (GetControlValue(sourcePopup))
				{
					case iSourceNone: sourceMember = -1; break;
					case iSourceCurrent: sourceMember = currentPixName; break;
					default: GetMenuItemRefCon(sourceMenu, GetControlValue(sourcePopup), (unsigned long*)&sourceMember); break; 
				}
				
				
				GetGWorldAndPix(newMember, &targetGW, &targetPix);
				
				icnsEditorClass::SaveState(newMember);
				
				members |= newMember;
				usedMembers |= newMember;
				
				if (sourceMember != -1)
				{
					GWorldPtr		sourceGW;
					PixMapHandle	sourcePix;
					
					GetGWorldAndPix(sourceMember, &sourceGW, &sourcePix);
					
					SAVECOLORS;
					
					if (statics.preferences.FeatureEnabled(prefsDither) &&
						(**sourcePix).pixelSize > (**targetPix).pixelSize)
						CopyPixMap(sourcePix, targetPix, &(**sourcePix).bounds, &(**targetPix).bounds, srcCopy + ditherCopy, NULL);
					else
						CopyPixMap(sourcePix, targetPix, &(**sourcePix).bounds, &(**targetPix).bounds, srcCopy, NULL);
					
					RESTORECOLORS;
				}
				
				SetCurrentMember(newMember, 2);
					
				dialogDone = true;
				break;
			case iCancel: dialogDone = true; break;
		}
	}
	
	DisposeModalFilterUPP(eventFilterUPP);
	DisposeDialog(addMemberDialog);
	
	delete addMemberDialogWindow;
	
	MWindow::ActivateAll();
	
	MHelp::CleanupDialogHelp();
}

void icnsEditorClass::BuildMembersMenu(MenuHandle menu, int startingPoint, int membersToList)
{
	Str255	memberName;
	int		previousSize = -1;
	
	for (int i=0; i < kMembersCount; i++)
		if ((kDefaultMembers[format] & kMembers[i].name) &&
			membersToList & kMembers[i].name)
		{
			if (previousSize != kMembers[i].height)
			{
				if (-1 != previousSize)
					InsertMenuItem(menu, "\p-", startingPoint++);
				
				previousSize = kMembers[i].height;
			}
				
			GetMemberNameString(kMembers[i].name, memberName);
			
			InsertMenuItem(menu, memberName, startingPoint++);
			
			SetMenuItemRefCon(menu, startingPoint, kMembers[i].name);
		}
}


void icnsEditorClass::GenerateMask()
{
	GWorldPtr		maskGW;
	PixMapHandle	maskPix;
	int				maskName;
	
	if (members & mask8)
		maskName = GetPixName((**currentPix).bounds.bottom, 8, false);
	else
		maskName = GetPixName((**currentPix).bounds.bottom, 1, false);
	
	SaveState(maskName);
	
	GetGWorldAndPix(maskName, &maskGW, &maskPix);
	
	Make1BitMask(currentPix, maskPix, (**maskPix).bounds);
	
	members |= maskName;
	
	SaveState(maskName);
	
	status |= (needsUpdate | needToSave);
	
	currentState = new drawingStateClass(currentState, this);
}

void icnsEditorClass::CompleteIcon()
{
	long			iconName, maskName, targetName;
	GWorldPtr		iconGW, maskGW, targetGW;
	PixMapHandle	iconPix, maskPix, targetPix;
	bool			regenerate;
	
	regenerate = ISOPTIONDOWN;
	
	SAVEGWORLD;
	SAVECOLORS;
	
	RefreshIconMembers();
	
	GetCurrentIconMask(&iconPix, &iconGW, &iconName, &maskPix, &maskGW, &maskName, false);
	
	if (!(members & maskName))
		Make1BitMask(iconPix, maskPix, (**maskPix).bounds);
		
	for (int i=0; i < kMembersCount; i++)
	{
		targetName = kMembers[i].name;
		
		if ((targetName & usedMembers) && (!(targetName & members) || regenerate))
		{
			GetGWorldAndPix(targetName, &targetGW, &targetPix);
			
			SaveState(targetName);
			
			SetGWorld(targetGW, NULL);
			
			if (targetName & icons)
			{
				if (statics.preferences.FeatureEnabled(prefsDither))
					CopyPixMap(iconPix, targetPix, &(**iconPix).bounds, &(**targetPix).bounds, srcCopy + ditherCopy, NULL);
				else
					CopyPixMap(iconPix, targetPix, &(**iconPix).bounds, &(**targetPix).bounds, srcCopy, NULL);
			}
			else
			{
				if ((**maskPix).pixelSize == 8 && (**targetPix).pixelSize == 1)
					Make1BitMask(maskPix, targetPix, (**maskPix).bounds);
				else
					CopyPixMap(maskPix, targetPix, &(**maskPix).bounds, &(**targetPix).bounds, srcCopy, NULL);
			}
			
			members |= targetName;
			
			SaveState(targetName);
		}
	}
	
	RESTORECOLORS;
	RESTOREGWORLD;

	status |= (needsUpdate | needToSave);
	
	currentState = new drawingStateClass(currentState, this);
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
	
	// the edit well is enlaged according to the magnification level
	h = magnification * ((**currentPix).bounds.right - (**currentPix).bounds.left);
	v = magnification * (**currentPix).bounds.bottom - (**currentPix).bounds.top;
	MakeEditAreaRect(h, v, &editAreaRect);
	
	SetControlVisibility(controls.rootControl, false, false);
	
	SAVEGWORLD;
	SetPort(); // we'll be changing controls in this window, so the coordinates must
			   // be local to here
	
	windowRect = GetPortRect();
	OffsetRect(&windowRect, -windowRect.left, -windowRect.top);
	windowRect.bottom -= kScrollbarHeight;
	windowRect.right -= kScrollbarWidth;
	
	// the zoom display placard goes in the bottom left corner
	if (windowRect.right - kZoomPlacardWidth < kMinScrollbarLength)
	{
		if (IsControlVisible(controls.zoomPlacard))
			HideControl(controls.zoomPlacard);
		
		// horizontal scrollbar
		SetRect(&controlRect, -1, windowRect.bottom, windowRect.right + 1, windowRect.bottom + 16);
		SetControlBounds(controls.hScrollbar, &controlRect);
	}
	else
	{
		if (!IsControlVisible(controls.zoomPlacard))
			ShowControl(controls.zoomPlacard);
			
		GetControlBounds(controls.zoomPlacard, &controlRect);
		OffsetRect(&controlRect, -controlRect.left -1, -controlRect.top + windowRect.bottom);
		SetControlBounds(controls.zoomPlacard, &controlRect);
		
		SetRect(&controlRect, kZoomPlacardWidth - 2, windowRect.bottom, windowRect.right + 1, windowRect.bottom + 16);
		SetControlBounds(controls.hScrollbar, &controlRect);
	}
	
	SetRect(&controlRect, windowRect.right, -1, windowRect.right + 16, windowRect.bottom + 1);
	SetControlBounds(controls.vScrollbar, &controlRect);
	
	UpdateScrollbars();
	
	SetControlBounds(controls.editArea, &editAreaRect);
	
	SetControlVisibility(controls.rootControl, true, true);
	
	if (editAreaRect.top != 0 || editAreaRect.left != 0)
	{
		if (IsControlActive(controls.rootControl))
			SetThemeWindowBackground(window, kThemeBrushDialogBackgroundActive, true);
		else
			SetThemeWindowBackground(window, kThemeBrushDialogBackgroundInactive, true);
			
		DrawControls(window);
	}

	RESTOREGWORLD;
}

void icnsEditorClass::UpdateScrollbars()
{
	int h, v;
	
	h = magnification * ((**currentPix).bounds.right - (**currentPix).bounds.left);
	v = magnification * (**currentPix).bounds.bottom - (**currentPix).bounds.top;
	
	SetControlMaximum(controls.hScrollbar, h - (editAreaRect.right - editAreaRect.left));
	SetControlMaximum(controls.vScrollbar, v - (editAreaRect.bottom - editAreaRect.top));
	
	hScrollbarValue = GetControlValue(controls.hScrollbar);
	vScrollbarValue = GetControlValue(controls.vScrollbar);
	
	if (MUtilities::GestaltVersion(gestaltSystemVersion, 0x08, 0x50))
	{
		SetControlViewSize(controls.hScrollbar, editAreaRect.right - editAreaRect.left);
		SetControlViewSize(controls.vScrollbar, editAreaRect.bottom - editAreaRect.top);
	}
}

void icnsEditorClass::MakeEditAreaRect(int h, int v, Rect* areaRect)
{
	Rect	windowRect;
	
	windowRect = GetPortRect();
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

void icnsEditorClass::PostZoom(bool resizeAnyway)
{
	zoomPosition.h = zoomPosition.v = zoomDimensions.h = zoomDimensions.v = -1;
	
	if (resizeAnyway || statics.preferences.FeatureEnabled(prefsAutomaticallyResize))
		ZoomFitWindow();
	
	ClampScrollValues();
	RepositionControls();
	UpdateZoom();
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
	Point		maximum, currentPosition, limits;
	Rect		availableRect;
	
	availableRect = statics.GetAvailableScreenRect();
	
	limits.h = availableRect.right;
	limits.v = availableRect.bottom;
	
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

void icnsEditorClass::HandleGrow(Point where)
{

	Point 	initialDimensions, maxDimensions,
			currentDimensions, initial, previousDimensions, usableRectOffset;
	Rect	usableRect;
	
	previousDimensions = initialDimensions = GetDimensions();
	
#if 0 //TARGET_API_MAC_CARBON
	Rect	maxGrowRect;
	long	growSize;
	
	SetRect(&maxGrowRect, kMinWidth, kMinHeight, magnification * (**currentPix).bounds.right + 15, magnification * (**currentPix).bounds.bottom + 15);
	
	growSize = GrowWindow(window, where, &maxGrowRect);
	
	currentDimensions.h = growSize & 0x0000FFFF;
	currentDimensions.v = (growSize >> 16) & 0x0000FFFF;

#else
	initial = where;
	
	maxDimensions.h = magnification * (**currentPix).bounds.right + 15;
	maxDimensions.v = magnification * (**currentPix).bounds.bottom + 15;
	
	if (maxDimensions.h < initialDimensions.h) maxDimensions.h = initialDimensions.h;
	if (maxDimensions.v < initialDimensions.v) maxDimensions.v = initialDimensions.v;
	
	usableRect = MUtilities::GetUsableScreenRect();
	
	SAVEGWORLD;
	SetPort();
	GlobalToLocal(&initial);
	GlobalToLocal((Point*)&usableRect.top);
	GlobalToLocal((Point*)&usableRect.bottom);
	RESTOREGWORLD;
	
	usableRectOffset.h = GetBorderThickness(borderRight) + initialDimensions.h - initial.h;
	usableRectOffset.v = GetBorderThickness(borderBottom) + initialDimensions.v - initial.v;
	
	OffsetRect(&usableRect, -usableRectOffset.h, -usableRectOffset.v);
	
	while (Button())
	{
		MUtilities::GetMouseLocation(GetWindowPort(window), &where);
		
		*((long*)&where) = PinRect(&usableRect, where);
		
		currentDimensions.h = initialDimensions.h + where.h - initial.h;
		currentDimensions.v = initialDimensions.v + where.v - initial.v;
		
		if (currentDimensions.h > maxDimensions.h) currentDimensions.h = maxDimensions.h;
		if (currentDimensions.v > maxDimensions.v) currentDimensions.v = maxDimensions.v;
		
		if (currentDimensions.h < kMinWidth) currentDimensions.h = kMinWidth;
		if (currentDimensions.v < kMinHeight) currentDimensions.v = kMinHeight;

#if TARGET_API_MAC_CARBON
	DisableScreenUpdates();
#endif
		if (currentDimensions.h != previousDimensions.h ||
			currentDimensions.v != previousDimensions.v)
		{
			SizeWindow(window, currentDimensions.h, currentDimensions.v, false);
		
			RepositionControls();
		}	
#if TARGET_API_MAC_CARBON
	EnableScreenUpdates();
#endif

		previousDimensions = currentDimensions;
	}
#endif
	
	if (abs(initialDimensions.h - currentDimensions.h) > kZoomThreshold ||
		abs(initialDimensions.v - currentDimensions.v) > kZoomThreshold)
		zoomPosition.h = zoomPosition.v = zoomDimensions.h = zoomDimensions.v = -1;
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
		InvalRgn(window, updateRgn);
		
		SizeWindow(window, hSize, vSize, true); //...do the resizing
		
		CopyRgn(window->visRgn, updateRgn); // and invalidate the new one as well
		InvalRgn(updateRgn);
		
		DisposeRgn(updateRgn); // and now we're done with the region
	}
	
	InvalidateDrawingArea();
	GetControlBounds(controls.zoomPlacard, &controlRect);
	InvalWindowRect(window, &controlRect);
	
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
		magnification++;
		
		PostZoom(false);
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
		magnification--;
		
		PostZoom(false);
	}
}

void icnsEditorClass::ZoomActual()
{
	magnification = 1;
			
	PostZoom(true);
}

void icnsEditorClass::ZoomFit()
{
	Point tempPosition;
	
	tempPosition = statics.GetDefaultWindowPosition();
	tempPosition.h += GetBorderThickness(borderLeft) + kDefaultWindowSeparation;
	tempPosition.v += GetBorderThickness(borderTop);
	SetPosition(tempPosition);

	magnification = GetMaxMagnification();
	
	PostZoom(true);			
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
		
		tempPosition = statics.GetDefaultWindowPosition();
		tempPosition.h += GetBorderThickness(borderLeft) + kDefaultWindowSeparation;
		tempPosition.v += GetBorderThickness(borderTop);
		SetPosition(tempPosition);
			
		if ((editAreaRect.right - editAreaRect.left) == magnification * ((**currentPix).bounds.right - (**currentPix).bounds.left) &&
			(editAreaRect.bottom - editAreaRect.top) == magnification * ((**currentPix).bounds.bottom - (**currentPix).bounds.top) &&
			(editAreaRect.top == 0 && editAreaRect.left == 0))
			magnification = GetMaxMagnification();
			
		ZoomFitWindow();
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

void icnsEditorClass::EnsureOnScreenPosition()
{
	Rect	usableRect, windowRect, result;
	
	usableRect = statics.GetAvailableScreenRect();
	windowRect = GetPhysicalBounds();
	
	UnionRect(&windowRect, &usableRect, &result);
	
	if (!EqualRect(&result, &usableRect))
	{
		zoomDimensions.h = zoomDimensions.v = zoomPosition.h = zoomPosition.v = -1;
		
		ToggleZoom();
	}
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
	MIcon::Load(); // we call the base function
	
	if (format == formatWindows ||
		format == formatWindowsXP)
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
	MIcon::LoadFileIcon(); // we call the base function
	
	PostLoad();
}

void icnsEditorClass::LoadDataFork()
{
	MIcon::LoadDataFork();
	
	PostLoad();
}

void icnsEditorClass::PostLoad()
{
	bool setCurrentMember;
	
	SetAssociatedFile(&file);
	
	LoadSaveInfo(&setCurrentMember);
	
	if (!setCurrentMember)	
		if (members)
		{
			for (int i=0; i < kPreferredMembersCount; i++)
				if (members & kPreferredMembers[i])
				{
					SetCurrentMember(kPreferredMembers[i], 0);
					break;
				}
		}
		else
		{
			for (int i=0; i < kPreferredMembersCount; i++)
				if (usedMembers & kPreferredMembers[i])
				{
					SetCurrentMember(kPreferredMembers[i], 0);
					break;
				}
		}
	
	ResetStates();
	
	statics.previewPalette->SetPreviewSize((**currentPix).bounds.bottom);
	statics.membersPalette->RefreshMemberPanes(this, false);
	statics.membersPalette->ScrollToCurrentMember(this);
	statics.membersPalette->RefreshMemberPanes(this, false);
}

void icnsEditorClass::LoadSaveInfo(bool* setCurrentMember)
{
	short oldFile, targetFile;
		
	*setCurrentMember = false;
	
	SetupFileSpec();
	
	oldFile = CurResFile();
	targetFile = file.OpenResourceFork(fsRdWrPerm);
	
	if (targetFile != -1 && ResError() == noErr)
	{
		IconSaveInfoHandle	info;
	
		UseResFile(targetFile);
		
		info = IconSaveInfoHandle(Get1Resource(kIconSaveInfoResourceType, ID));
		
		if (info != NULL)
		{
			switch (GetHandleSize(Handle(info)))
			{
				case sizeof(long):
					usedMembers = (**info).usedMembers;			
					break;
				case sizeof(IconSaveInfo):
					usedMembers = (**info).usedMembers;
					if (magnification != (**info).magnification)
					{
						magnification = (**info).magnification;
						PostZoom(true);
					}
					SetCurrentMember((**info).currentPixName, 0);
					*setCurrentMember = true;
					break;
				default: // unknown size, best not to do anything
					usedMembers |= members;
					break;
			}
			ReleaseResource(Handle(info));
		}
		
		CloseResFile(targetFile);
		UseResFile(oldFile);
	}
	
	CleanupFileSpec();
	
	usedMembers &= kDefaultMembers[format];
	members &= usedMembers;
}

void icnsEditorClass::StoreSaveInfo()
{
	short				oldFile, targetFile;
	IconSaveInfoHandle	info;
	Handle				old;
	
	SetupFileSpec();
	
	oldFile = CurResFile();
	targetFile = file.OpenResourceFork(fsRdWrPerm);
	
	UseResFile(targetFile);
	
	do
	{
		old = Get1Resource(kIconSaveInfoResourceType, ID);
		if (old != NULL)
		{
			RemoveResource(old);
			UpdateResFile(targetFile);
		}
	} while (old != NULL);
	
	info = IconSaveInfoHandle(NewHandleClear(sizeof(IconSaveInfo)));
	
	(**info).usedMembers = usedMembers;
	(**info).magnification = magnification;
	(**info).currentPixName = currentPixName;
	
	AddResource(Handle(info), kIconSaveInfoResourceType, ID, "\p");
	
	ChangedResource(Handle(info));
	WriteResource(Handle(info));
	
	UpdateResFile(targetFile);
	CloseResFile(targetFile);
	UseResFile(oldFile);
	
	CleanupFileSpec();
}

void icnsEditorClass::CheckMaskSync(int basePixName, int maskName, int size)
{
	GWorldPtr 		tempGW, maskGW, baseGW;
	PixMapHandle	tempPix, maskPix, basePix;
	Rect			bounds;
	
	GetGWorldAndPix(basePixName, &baseGW, &basePix);
	GetGWorldAndPix(maskName, &maskGW, &maskPix);
	
	bounds = (**basePix).bounds;
	
	NewGWorld(&tempGW, 1, &bounds, NULL, NULL, 0);
	tempPix = GetGWorldPixMap(tempGW);
	LockPixels(tempPix);
	
	Mask8ToMask1(basePix, tempPix);
	
	if (!SamePixMap(tempPix, maskPix))
	{
		Str255	text, explanation, sizeName, regenerateButton, noButton;
		
		GetIndString(text, rBasicStrings, eMaskSync);
		GetSizeName(size, sizeName);
		if (sizeName[1] < 'a') sizeName[1] += ('a' - 'A');
		SubstituteString(text, "\p<size>", sizeName);
		
		GetIndString(explanation, rBasicStrings, eMaskSyncExplanation);
		
		GetIndString(regenerateButton, rBasicStrings, eRegenerateButton);
		GetIndString(noButton, rBasicStrings, eNoButton);
		if (MUtilities::DisplayAlert(text, explanation, regenerateButton, noButton, "\p", kAlertCautionAlert, kWindowAlertPositionParentWindow) == kMAOK)
		{
			SAVECOLORS;
			CopyPixMap(tempPix, maskPix, &bounds, &bounds, srcCopy, NULL);
			RESTORECOLORS;
			members |= maskName;
		}
	}
	UnlockPixels(tempPix);
	DisposeGWorld(tempGW);
}

void icnsEditorClass::GenerateMask(int maskName)
{
	Str255	text, sizeName, generateButton, noButton;
		
	GetIndString(text, rBasicStrings, eNoMask);
	GetSizeName(maskName, sizeName);
	if (sizeName[1] < 'a') sizeName[1] += ('a' - 'A');
	SubstituteString(text, "\p<size>", sizeName);
	
	GetIndString(generateButton, rBasicStrings, eGenerateButton);
	GetIndString(noButton, rBasicStrings, eNoButton);
	if (MUtilities::DisplayAlert(text, NULL, generateButton, noButton, "\p", kAlertCautionAlert, kWindowAlertPositionParentWindow) == kMAOK)
	{
		GWorldPtr		iconGW, maskGW;
		PixMapHandle	iconPix, maskPix;
		int				iconName;
		
		GetGWorldAndPix(maskName, &maskGW, &maskPix);
		iconName = GetBestPixName((**maskPix).bounds.bottom, (**maskPix).pixelSize, true);
		GetGWorldAndPix(iconName, &iconGW, &iconPix);
		
		Make1BitMask(iconPix, maskPix, (**maskPix).bounds);
		
		members |= maskName;
	}
}

// __________________________________________________________________________________________
// Name			: icnsEditorClass::Save
// Input		: None
// Output		: None
// Description	: saves the current icon to either the current selected file, and disposes of
//				  the current 

OSErr icnsEditorClass::Save(void)
{
	OSErr	err;
	int		membersCount;
	
	if (status & selectionFloated)
		DefloatSelection(false);
	
	if (!statics.preferences.FeatureEnabled(prefsDontCheckMasks))
	{
		RefreshIconMembers();
		
		if (members & l8mk)	CheckMaskSync(l8mk, icnm, largeSize);
		if (members & s8mk)	CheckMaskSync(s8mk, icsm, smallSize);
		if (members & h8mk)	CheckMaskSync(h8mk, ichm, hugeSize);
		
		if (members & thumbnailSize && !(members & t8mk)) GenerateMask(t8mk);
		if (members & hugeSize && !(members & (h8mk | ichm))) GenerateMask(ichm);
		if (members & largeSize && !(members & (l8mk | icnm))) GenerateMask(icnm);
		if (members & smallSize && !(members & (s8mk | icsm))) GenerateMask(icsm);
		if (members & miniSize && !(members & icmm)) GenerateMask(icmm);
	}
	
	membersCount = CountMembers();
	
	if (format == formatWindows && membersCount > 10)
	{
		Str255	text, explanation, membersCountAsText, continueButton, cancelButton;
		
		GetIndString(text, rBasicStrings, eWindowsTooManyMembersError);
		GetIndString(explanation, rBasicStrings, eWindowsTooManyMembersExplanation);
		
		NumToString(membersCount, membersCountAsText);
		SubstituteString(text, "\p<number>", membersCountAsText);
		
		GetIndString(continueButton, rBasicStrings, eContinueButton);
		GetIndString(cancelButton, rIconInfoStrings, eInfoCancelButton);
		
		if (MUtilities::DisplayAlert(text, explanation, continueButton, cancelButton, "\p", kAlertCautionAlert, kWindowAlertPositionParentWindow) == kMACancel)
			return userCanceledErr;
	}
	
	if ((format != formatWindows && format != formatWindowsXP) && colors == winColors)
		ChangeColors(macOSColors, false);
	
	err = MIcon::Save(); // this is from the base class
	RefreshWindowTitle();
	
	if (status & selectionFloated)
		currentState->RestoreState(this);
	
	if (err != noErr)
	{
		DisplayValue(err);
		return err;
	}
	
	if (statics.preferences.FeatureEnabled(prefsSaveExtraInfo))
		StoreSaveInfo();
	
	status &= ~needToSave; // we don't need to save (at least until the user modifies the
						   // icon)
	DisposeStates(); // we don't need the saved states either, since we assume that that he
					 // likes what he has so far

	status |= needsUpdate;
	
	SetAssociatedFile(&file);
	
	return noErr;
}

#pragma mark -

void icnsEditorClass::Import(int mode)
{
	Str255	importPrompt; 
	switch (mode)
	{
		case currentMember:
			
			FSSpec	importSpec;
			
			GetIndString(importPrompt, rBasicStrings, eImportCurrentMember);
			
			if (MUtilities::GetFileSpec(importPrompt, NULL, &importSpec, '****', kImportFormatsCount, kImportFileTypes))
			{
				ImportQTFileToGWorld(importSpec, currentGW);
				
				currentState = new drawingStateClass(currentState, this);
				status |= (needToSave | needsUpdate);
			}
			
			break;
		case entireIcon:
			FSSpec	*chosenSpecs;
			long	chosenSpecsCount;
			
			GetIndString(importPrompt, rBasicStrings, eImportEntirePrompt);
			
			if (MUtilities::GetObjects(importPrompt, &chosenSpecs, &chosenSpecsCount, kImportFormatsCount, kImportFileTypes))
			{
				FSSpec 	*importSpecs;
				int		importSpecsCount;
				int		memberMatchups[kMembersCount];
				
				GetImportSpecs(chosenSpecs, chosenSpecsCount, &importSpecs, &importSpecsCount);
				
				GetImportMatchups(importSpecs, importSpecsCount, memberMatchups);
				
				free(importSpecs);
				delete chosenSpecs;
			}
			break;
	}
}

void icnsEditorClass::GetImportMatchups(FSSpec *importSpecs, int importSpecsCount, int memberMatchups[])
{
	DialogPtr			matchupDialog;
	ModalFilterUPP		eventFilterUPP;
	MWindowPtr			matchupDialogWindow;
	short				itemHit = 0;
	ControlHandle		tempControl, iconsHeader, masksHeader;
	Rect				controlRect, baselineRect;
	Handle				matchupControls[kMembersCount] = {NULL};
	int					matchupControlNos[kMembersCount] = {0};
	int					iconLoadedControls = 0, maskLoadedControls = 0;
	Point				dialogSize;
	ControlFontStyleRec	controlStyle, headerStyle;
	int					lastIconDepth = -1;
	
	// make guesses as to initial matchups
	GuessImportMatchups(memberMatchups, importSpecs, importSpecsCount);
	
	// setup label style
	controlStyle.flags = kControlUseFontMask | kControlUseJustMask | kControlAddToMetaFontMask;
	controlStyle.font = kControlFontSmallSystemFont;
#if TARGET_API_MAC_CARBON
	controlStyle.just = teFlushRight;
#else
	controlStyle.just = teFlushLeft;
#endif

	// setup dialog
	matchupDialog = GetNewDialog(rImportMatchupDialog, NULL, (WindowPtr)-1L);

	SetDialogDefaultItem(matchupDialog, iOK);
	SetDialogCancelItem(matchupDialog, iCancel);

	matchupDialogWindow = new MWindow(GetDialogWindow(matchupDialog), kDialogType);
	
	// setup headers
	GetDialogItemAsControl(matchupDialog, iIconsHeader, &iconsHeader);
	GetDialogItemAsControl(matchupDialog, iMasksHeader, &masksHeader);
	headerStyle.flags = kControlUseFontMask;
	headerStyle.font = kControlFontSmallBoldSystemFont;
	SetControlFontStyle(iconsHeader, &headerStyle);
	SetControlFontStyle(masksHeader, &headerStyle);
	
	GetControlBounds(iconsHeader, &baselineRect);
	
	for (int i=0; i < kMembersCount; i++)
		if (usedMembers & kMembers[i].name) // if this member needs a menu
		{
			Str255				labelText;
			ControlHandle		popup, label;
			int					popupNo, labelNo;
			int*				loadedControls;
			int					hOffset;
			Str255				replacementString;
			
			if (kMembers[i].name & icons)
			{
				GetIndString(replacementString, rMiscIconStrings, eIcon);
				loadedControls = &iconLoadedControls;
				hOffset = 0;
			}
			else
			{
				GetIndString(replacementString, rMiscIconStrings, eMask);
				loadedControls = &maskLoadedControls;
				hOffset = kSecondColumnOffset;
			}
			
			// load the controls
			matchupControls[i] = Get1Resource('DITL', rImportMatchupPopupDialog);
			AppendDITL(matchupDialog, matchupControls[i], overlayDITL);
			
			labelNo = iFirstMatchupLabel + iconLoadedControls + maskLoadedControls;
			popupNo = iFirstMatchupPopup + iconLoadedControls + maskLoadedControls;
	
			GetDialogItemAsControl(matchupDialog, labelNo, &label); AutoEmbedControl(label, GetDialogWindow(matchupDialog));
			GetDialogItemAsControl(matchupDialog, popupNo, &popup); AutoEmbedControl(popup, GetDialogWindow(matchupDialog));
			
			matchupControlNos[i] = popupNo;
			
			// put them in the right place
			GetControlBounds(label, &controlRect);
			MoveDialogItem(matchupDialog, labelNo,
						   controlRect.left + hOffset,
						   baselineRect.bottom + kInitialOffset + (*loadedControls)/2 * kMatchupPopupOffset + controlRect.top);
			GetControlBounds(popup, &controlRect);
			MoveDialogItem(matchupDialog, popupNo,
						   controlRect.left + hOffset,
						   baselineRect.bottom + kInitialOffset + (*loadedControls)/2 * kMatchupPopupOffset + controlRect.top);
			
			// give them the right text
			GetIndString(labelText, rIconNames, i + 1);
			SubstituteString(labelText, replacementString, "\p:");
			SubstituteString(labelText, "\p :", "\p:");
			SetControlText(label, labelText);
			
			SetControlFontStyle(label, &controlStyle);
			SetControlFontStyle(popup, &controlStyle);
			
			// and setup its popup menu
			SetupImportMatchupMenu(popup, importSpecs, importSpecsCount, memberMatchups[i]);
			
			(*loadedControls) += 2;
		}
		else
			matchupControls[i] = NULL;
		
	//DebugNValues("\picon/mask controls: ", 2, iconLoadedControls, maskLoadedControls);
		
	// move the OK/Cancel buttons
	GetDialogItemAsControl(matchupDialog, iOK, &tempControl);
	GetControlBounds(tempControl, &controlRect);
	MoveDialogItem(matchupDialog, iOK,
				   controlRect.left,
				   controlRect.top + iconLoadedControls/2 * kMatchupPopupOffset);
	
	GetDialogItemAsControl(matchupDialog, iCancel, &tempControl);
	GetControlBounds(tempControl, &controlRect);
	MoveDialogItem(matchupDialog, iCancel,
				   controlRect.left,
				   controlRect.top + iconLoadedControls/2 * kMatchupPopupOffset);
	
	// resize dialog	
	dialogSize = matchupDialogWindow->GetDimensions();
	dialogSize.v += kMatchupPopupOffset * (iconLoadedControls/2);
	matchupDialogWindow->SetDimensions(dialogSize);
	
	MWindow::CenterOnScreen(matchupDialogWindow);

	MWindow::DeactivateAll();

	ShowWindow(GetDialogWindow(matchupDialog));

	eventFilterUPP = NewModalFilterUPP(MWindow::StandardDialogFilter);

	do
	{
		ModalDialog(eventFilterUPP, &itemHit);
	}
	while (itemHit != iOK && itemHit != iCancel);
	
	if (itemHit == iOK)
	{
		// extract the matchups
		for (int i=0; i < kMembersCount; i++)
			if (matchupControlNos[i])
			{
				ControlHandle popup;
				
				GetDialogItemAsControl(matchupDialog, matchupControlNos[i], &popup);
				
				if (GetControlValue(popup) - 1> importSpecsCount)
					memberMatchups[i] = -1;
				else
					memberMatchups[i] = GetControlValue(popup) - 1;
			}
			
		// apply them
		ApplyImportMatchups(memberMatchups, importSpecs);
		
		// save state
		currentState = new drawingStateClass(currentState, this);
		status |= (needToSave | needsUpdate);
	}

	DisposeModalFilterUPP(eventFilterUPP);
	DisposeDialog(matchupDialog);
	
	for (int i=0; i < kMembersCount; i++)
		if (matchupControls[i])
			ReleaseResource(matchupControls[i]);

	MWindow::ActivateAll();

	delete matchupDialogWindow;
}

void icnsEditorClass::ApplyImportMatchups(int memberMatchups[], FSSpec *importSpecs)
{
	GWorldPtr		memberGW;
	PixMapHandle	memberPix;
	
	for (int i=0; i < kMembersCount; i++)
		if (memberMatchups[i] != -1)
		{
			SaveState(kMembers[i].name);
			
			GetGWorldAndPix(kMembers[i].name, &memberGW, &memberPix);
			
			ImportQTFileToGWorld(importSpecs[memberMatchups[i]], memberGW);
			
			SaveState(kMembers[i].name);
		}
}

void icnsEditorClass::GuessImportMatchups(int memberMatchups[], FSSpec *importSpecs, int importSpecsCount)
{
	Rect	*fileBounds;
	int		*fileDepths;
	
	fileBounds = (Rect*)calloc(importSpecsCount, sizeof(Rect));
	fileDepths = (int*)calloc(importSpecsCount, sizeof(int));
				
	for (int i=0; i < kMembersCount; i++)
		if (kMembers[i].name & usedMembers)	
		{
			Str255 memberName;
			
			GetIndString(memberName, rIconNames, i + 1);
			
			memberMatchups[i] = -1;
			
			// first try to match by file name
			for (int j=0; j < importSpecsCount; j++)
			{
				Str255 fileName;
				
				CopyString(fileName, importSpecs[j].name);
				MUtilities::StripExtension(fileName);
				
				if (EqualString(fileName, memberName, 0, 0))
				{
					memberMatchups[i] = j;
					break;
				}
			}
			
			// if that doesn't work, go for size/depth
			if (memberMatchups[i] == -1)
			{
				for (int j=0; j < importSpecsCount; j++)
				{
					if (fileDepths[j] == 0)
						GetQTFileInfo(importSpecs[j], &fileBounds[j], &fileDepths[j]);
					
					if (fileBounds[j].right - fileBounds[j].left == kMembers[i].width &&
						fileBounds[j].bottom - fileBounds[j].top == kMembers[i].height &&
						(fileDepths[j] == kMembers[i].depth || (fileDepths[j] == 24 && kMembers[i].depth == 32)))
					{
						memberMatchups[i] = j;
						break;
					}
				}
			}
		}
		else
			memberMatchups[i] = -1;
			
	free(fileBounds);
	free(fileDepths);
}

void icnsEditorClass::SetupImportMatchupMenu(ControlHandle popup, FSSpec *importSpecs, int importSpecsCount, int matchup)
{
	MenuHandle menu;
	
	menu = GetControlPopupMenuHandle(popup);
	for (int i=0; i < importSpecsCount; i++)
		InsertMenuItem(menu, importSpecs[i].name, i);
		
	SetControlMaximum(popup, GetControlMaximum(popup) + importSpecsCount);
	
	if (matchup == -1)
		SetControlValue(popup, GetControlMaximum(popup));
	else
		SetControlValue(popup, matchup + 1);
}

void icnsEditorClass::GetImportSpecs(FSSpec *chosenSpecs, int chosenSpecsCount, FSSpec **importSpecs, int *importSpecsCount)
{
	*importSpecs = NULL;
	*importSpecsCount = 0;
	
	for (int i=0; i < chosenSpecsCount; i++)
	{
		MFile chosenFile;
		
		chosenFile.SetAssociatedFile(chosenSpecs[i]);
		if (chosenFile.IsFolder())
		{
			FSSpec	*contents;
			int		contentsCount;
			
			chosenFile.GetFolderContents(&contents, &contentsCount);
			
			for (int j=0; j < contentsCount; j++)
				AddToImportListIfTypeOK(contents[j], importSpecs, importSpecsCount);
				
			free(contents);
		}
		else
			AddToImportListIfTypeOK(chosenSpecs[i], importSpecs, importSpecsCount);
	}
}

void icnsEditorClass::AddToImportListIfTypeOK(FSSpec spec, FSSpec **importSpecs, int* importSpecsCount)
{
	FInfo info;
	
	FSpGetFInfo(&spec, &info);
	
	for (int i=0; i < kImportFormatsCount; i++)
		if (kImportFileTypes[i] == info.fdType)
		{
			*importSpecs = (FSSpec*)realloc(*importSpecs, (*importSpecsCount + 1) * sizeof(FSSpec));
			(*importSpecs)[(*importSpecsCount)++] = spec;
			break;
		}
}

void icnsEditorClass::Export(int mode)
{
	Str255	formats[kExportFormatsCount],
			extensions[kExportFormatsCount],
			exportName, exportPrompt, exportFormatMenuLabel;
	FSSpec	exportSpec;
	int		exportFormat;
			
	exportFormat = statics.preferences.GetLastImportExportFormat();
			
	for (int i=0; i < kExportFormatsCount; i++)
	{
		GetIndString(formats[i], rImportExportFormats, i + 1);
		GetIndString(extensions[i], rImportExportFormatExtensions, i + 1);
	}
	
	GetIndString(exportFormatMenuLabel, rBasicStrings, eExportFormatMenuLabel);
	
	switch (mode)
	{
		case currentMember:
			GetIndString(exportPrompt, rBasicStrings, eExportCurrentPrompt);
			
			if (MUtilities::NewFileSpecWithFormats(exportPrompt, file.GetName(exportName), exportFormatMenuLabel,
													kExportFormatsCount, formats, extensions, kForceExtension | kPutFile,
													&exportSpec, &exportFormat))
			{
				ExportMemberToFile(currentPixName, exportSpec, exportFormat);
				
				statics.preferences.SetLastImportExportFormat(exportFormat);
			}
			break;
		case entireIcon:
			GetIndString(exportPrompt, rBasicStrings, eExportEntirePrompt);
			
			if (MUtilities::NewFileSpecWithFormats(exportPrompt, file.GetName(exportName), exportFormatMenuLabel,
													kExportFormatsCount, formats, extensions, kNewFolder,
													&exportSpec, &exportFormat))
			{
				MFile	exportFile;
				long	folderID;
				
				exportFile.SetAssociatedFile(exportSpec);
				// if there's already a folder at that location, then just
				// get its directory ID
				if (exportFile.IsFolder())
				{
					CInfoPBRec  info;
					
					info.dirInfo.ioVRefNum = exportSpec.vRefNum;
					info.dirInfo.ioNamePtr = exportSpec.name;
					info.dirInfo.ioDrDirID = exportSpec.parID;
					info.dirInfo.ioFDirIndex = 0;
					
					PBGetCatInfoSync(&info);
					
					folderID = info.dirInfo.ioDrDirID;
				}
				else
					FSpDirCreate(&exportSpec, 0, &folderID);
				
				RefreshIconMembers();
				
				for (int i=0; i < kMembersCount; i++)
					if (members & kMembers[i].name)
					{
						Str255 	currentMemberName;
						FSSpec	currentMemberSpec;
						
						GetIndString(currentMemberName, rIconNames, i + 1);
						
						MUtilities::SetFileExtension(currentMemberName, extensions[exportFormat]);
						
						FSMakeFSSpec(exportSpec.vRefNum, folderID, currentMemberName, &currentMemberSpec);
						
						ExportMemberToFile(kMembers[i].name, currentMemberSpec, exportFormat);
					}
			}
			break;
	}
}

void icnsEditorClass::ExportMemberToFile(int memberName, FSSpec exportSpec, int exportFormat)
{
	GWorldPtr 		memberGW;
	PixMapHandle	memberPix;
	int				pixelSize;
	
	GetGWorldAndPix(memberName, &memberGW, &memberPix);
	pixelSize = (**memberPix).pixelSize;
	if (pixelSize == 32) pixelSize = 24;
	
	switch (kExportFileTypes[exportFormat])
	{
		case kQTFileTypePicture:
			PicHandle exportPic = NULL;
			
			PixMapToPicture(memberPix, NULL, &exportPic);
			
			ExportPictureToPICTFile(exportPic, exportSpec, '****');
			
			DisposeHandle((Handle)exportPic);
			break;
		default:
			ExportGWToQTFile(memberGW, exportSpec,
							 '****', kExportFileTypes[exportFormat],
							 pixelSize);
			break;
	}
}

#pragma mark -

void icnsEditorClass::OpenInExternalEditor()
{
	Str255			memberName, temp;
	GWorldPtr		iconGW, maskGW;
	PixMapHandle	iconPix, maskPix;
	long			iconName, maskName, creator;
	Rect			bounds;
	
	if (!statics.preferences.ExternalEditorChosen())
	{
		Str255	error, prefsButton, cancelButton;
		
		GetIndString(error, rBasicStrings, eExternalEditorError);
		GetIndString(prefsButton, rBasicStrings, eOpenPreferences);
		GetIndString(cancelButton, rIconInfoStrings, eInfoCancelButton);
		
		if (MUtilities::DisplayAlert(error, NULL, prefsButton, cancelButton, "\p", kAlertStopAlert, kWindowAlertPositionMainScreen) == 1)
		{
			statics.preferences.Edit(kPrefsExternalEditorPane);
			
			if (!statics.preferences.ExternalEditorChosen())
				return;
		}
		else
			return;
	}
	
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
	
	statics.GetSupportFolder(&exportFile);
	
	GetIndString(temp, rBasicStrings, eIconographerSupportFolder);
	CopyString(exportFile.name, "\p:");
	AppendString(exportFile.name, temp);
	AppendString(exportFile.name, "\p:");
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
			GWorldPtr		tempGW;
			PixMapHandle	tempPix;
			long			depth;
			
			NewGWorld(&tempGW, 32, &bounds, NULL, NULL, 0);
			tempPix = GetGWorldPixMap(tempGW);
			LockPixels(tempPix);
			
			
			CopyPixMap(iconPix, tempPix, &bounds, &bounds, srcCopy, NULL);
			
			if (statics.preferences.FeatureEnabled(prefsExportIconAndMask))
			{
				MergePixMap32AndMask(tempPix, maskPix, bounds);
				depth = k32ARGBPixelFormat;
			}
			else
				depth = k24RGBPixelFormat;
			
			switch (statics.preferences.GetExternalEditorFormat())
			{
				case exportFormatPhotoshop:
					ExportGWToQTFile(tempGW, exportFile, creator, kQTFileTypePhotoShop, depth);
					break;
				case exportFormatTIFF:
					ExportGWToQTFile(tempGW, exportFile, creator, kQTFileTypeTIFF, depth);
					break;
				case exportFormatPNG:
					ExportGWToQTFile(tempGW, exportFile, creator, kQTFileTypePNG, depth);
					break;
			}
			
			UnlockPixels(tempPix);
			DisposeGWorld(tempGW);
			
			break;
			
	}
	
	MUtilities::AESendFinderOpen(exportFile);

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
		
		if (icnsEditorClass::statics.preferences.FeatureEnabled(prefsDither) &&
			(**statics.canvasPix).pixelSize > (**iconPix).pixelSize)
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

	currentState = new drawingStateClass(currentState, this);
	status |= (needToSave | needsUpdate);
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
			memberName,
			fileName;
		
	CopyString(windowTitle, "\p"); // we set back to nothing
	file.GetName(fileName);
	AppendString(windowTitle, fileName); // put in the file name
	AppendString(windowTitle, "\p (");
	GetMemberNameString(currentPixName, memberName);
	AppendString(windowTitle, memberName);
	AppendString(windowTitle, "\p)");
	
	SetWTitle(window, windowTitle); // and set the title
}

void icnsEditorClass::SetCurrentMember(long memberName, int fancinessLevel)
{
	GWorldPtr		memberGW;
	PixMapHandle	memberPix;
	bool			resize;
	
	if (fancinessLevel)
	{
		if (!EmptyRgn(selectionRgn)) // if there was a selection
		{
			if (status & selectionFloated) // we must defloat it
				DefloatSelection(true);
			SetEmptyRgn(selectionRgn); // and deselect it
			status &= ~hasSelection; // and now we don't have a selection anymore
		}
		
		if (fancinessLevel > 1 && IsEmptyPixMap(currentPix))
			members &= ~currentPixName;
			
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
		if (statics.preferences.FeatureEnabled(prefsAutomaticallyResize))
		{
			ZoomFitWindow();
			RepositionControls();
		}
		else
		{
			RepositionControls();
			UpdateScrollbars();
		}
	}
	
	if (fancinessLevel && statics.previewPalette)
		statics.previewPalette->SetPreviewSize((**currentPix).bounds.bottom);
	
	SAVEGWORLD;
	SetPort();
	UpdateEditArea();
	RESTOREGWORLD;
	
	RefreshWindowTitle();
	
	statics.membersPalette->RefreshMemberPanes(this, false);
	statics.membersPalette->ScrollToCurrentMember(this);
	
	if (fancinessLevel > 1)
		icnsEditorClass::statics.UpdatePalettes(this, updateAll);
	
	if (fancinessLevel)
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
	
	if (kMembers[index].name & icons)
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

void icnsEditorClass::GetPreviewSizeAndDepths(int *previewSize, int* previewDepth, int* maskDepth)
{
	if (currentPixName == currentToggleMember)
	{
		GWorldPtr		maskGW, iconGW;
		PixMapHandle	maskPix, iconPix;
		if (masks & currentPixName)
		{
			GetGWorldAndPix(oldToggleMember, &iconGW, &iconPix);
			GetGWorldAndPix(currentToggleMember, &maskGW, &maskPix);
		}
		else
		{
			GetGWorldAndPix(currentToggleMember, &iconGW, &iconPix);
			GetGWorldAndPix(oldToggleMember, &maskGW, &maskPix);
		}
		
		*previewDepth = (**iconPix).pixelSize;
		*maskDepth = (**maskPix).pixelSize;
	}
	else if (masks & currentPixName)
	{
		*maskDepth = (**currentPix).pixelSize;
		if (*maskDepth == 8)
		{
			if (members & icon32)
				*previewDepth = 32;
			else if (members & icon8)
				*previewDepth = 8;
			else if (members & icon4)
				*previewDepth = 4;
			else
				*previewDepth = 1;
		}
		else if (members & icon8)
			*previewDepth = 8;
		else if (members & icon4)
			*previewDepth = 4;
		else if (members & icon32)
			*previewDepth = 32;
		else
			*previewDepth = 1;
	}
	else
	{
		*previewDepth = (**currentPix).pixelSize;
		*maskDepth = -1;
	}
	
	if (*previewSize != (**currentPix).bounds.bottom)
	{
		if (members & thumbnailSize)
		{
			*previewSize = 128;
			*previewDepth = 32;
			*maskDepth = 8;
		}
		else if (members & hugeSize)
		{
			*previewSize = 48;
		}
		else if (members & largeSize)
		{
			*previewSize = 32;
		}
		else if (members & smallSize)
		{
			*previewSize = 16;
		}
		else
		{
			*previewSize = 12;
			if (*previewDepth == 32) *previewDepth = 8;
			if (*maskDepth == 8) *maskDepth = 1;
		}
	}
}


void icnsEditorClass::SetBestMember()
{
	switch (format)
	{
		case formatMacOSUniversal:
		case formatMacOSNew:
			SetCurrentMember(il32, 1);
			break;
		case formatMacOSOld:
			SetCurrentMember(icl8, 1);
			break;
		case formatWindows:
			SetCurrentMember(il32, 1);
			break;
		case formatMacOSXServer:
		case formatWindowsXP:
			SetCurrentMember(ih32, 1);
			break;
		case formatMacOSX:
			SetCurrentMember(it32, 1);
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
		SetCurrentMember(oldToggleMember, 2);
		
		oldToggleMember = currentToggleMember;
		currentToggleMember = currentPixName;
	}
	else
	{
		oldToggleMember = currentPixName;
		
		GetCurrentIconMask(&iconPix, &iconGW, &iconName, &maskPix, &maskGW, &maskName, false);
		
		if (iconName == currentPixName)
			SetCurrentMember(maskName, 2);
		else
			SetCurrentMember(iconName, 2);
			
		currentToggleMember = currentPixName;
	}
	
	members |= currentPixName;
	
	currentState = new drawingStateClass(currentState, this);
	
	Draw1Control(controls.editArea);

	statics.UpdatePalettes(this, 0);
}

void icnsEditorClass::RemoveMember(int member)
{
	GWorldPtr		memberGW;
	PixMapHandle	memberPix;
	
	GetGWorldAndPix(member, &memberGW, &memberPix);
	
	if (member != currentPixName)
		SaveState(member);
	
	SAVEGWORLD;
	SetGWorld(memberGW, NULL);
	
	SAVECOLORS;
	EraseRect(&(**memberPix).bounds);
	RESTORECOLORS;
	
	RESTOREGWORLD;
	
	members &= ~member;
	
	if (member != currentPixName)
		SaveState(member);
		
	currentState = new drawingStateClass(currentState, this);
	
	status |= needsUpdate;
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

void icnsEditorClass::SaveState(long name)
{
	GWorldPtr gWorld, tempGW;
	PixMapHandle pix, tempPix;
	long	tempPixName;
	
	GetGWorldAndPix(name, &gWorld, &pix);
	
	status |= (skipState | dontRestoreCurrentPix);
	
	tempGW = currentGW; tempPix = currentPix; tempPixName = currentPixName;
	
	currentGW = gWorld; currentPix = pix; currentPixName = name;
	currentState = new drawingStateClass(currentState, this);
	
	currentGW = tempGW; currentPix = tempPix; currentPixName = tempPixName;
	
	status &= ~(skipState | dontRestoreCurrentPix);
}

#pragma mark -

void icnsEditorClass::HandleWheelMove(Point location, int modifiers, EventMouseWheelAxis axis, long delta)
{
#pragma unused(location, modifiers, axis)

	if (delta < 0)
		ZoomIn();
	else if (delta > 0)
		ZoomOut();
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
				ControlHandle scrollbar;
				
				if (ISCOMMANDDOWN)
					scrollbar = controls.hScrollbar;
				else
					scrollbar = controls.vScrollbar;
				
				SAVEGWORLD;
				SetPort();
				StartPan();
				ScrollbarAction(scrollbar, kControlPageDownPart);
				FinishPan();
				RESTOREGWORLD;
			}
			break;
		case kPageUpCharCode:
			{
				ControlHandle scrollbar;
				
				if (ISCOMMANDDOWN)
					scrollbar = controls.hScrollbar;
				else
					scrollbar = controls.vScrollbar;
				
				SAVEGWORLD;
				SetPort();
				StartPan();
				ScrollbarAction(scrollbar, kControlPageUpPart);
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
		status |= (needToSave | needsUpdate);
	}
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
	
	statics.membersPalette->RefreshMemberPanes(this, true);
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
	
	status |= (needToSave | needsUpdate); // we've made modifications
	
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
			
			MUtilities::ZeroScrap(); // we reset the clipboard (scrap)
			picSize = GetHandleSize((Handle)pic); // the size of the picture
			
			err = MUtilities::PutScrap(picSize, 'PICT', *pic); // we put the picture into the clipboard
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
			
			MUtilities::ZeroScrap(); // we reset the clipboard (scrap)
			picSize = GetHandleSize((Handle)pic); // the size of the picture
			
			err = MUtilities::PutScrap(picSize, 'PICT', *pic); // we put the picture into the clipboard
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
			
			MUtilities::ZeroScrap();
			
			MUtilities::PutScrap(icnsSize, 'icns', *icnsHandle);
			
			DisposeHandle((Handle)icnsHandle);
			
			break;
	}
}

void icnsEditorClass::SaveMembers()
{
	for (int i=0; i < kMembersCount; i++)
		if (kMembers[i].name & usedMembers)
			SaveState(kMembers[i].name);
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
		
		familySize = MUtilities::GetScrap(NULL, 'icns', &offset);
		if (familySize > 0)
		{
			SaveMembers();
			
			clipIconFamily = (IconFamilyHandle)NewHandle(familySize);
			HLock((Handle)clipIconFamily);
			
			familySize = MUtilities::GetScrap((Handle)clipIconFamily, 'icns', &offset);
			
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
		picSize = MUtilities::GetScrap(NULL,'PICT',&offset);
		if(picSize > 0) // if there is any
		{
			// we allocate the handle where the pic will be store
			clipPicture = (PicHandle)NewHandle(picSize);
			HLock((Handle)clipPicture);
			
			
			picSize = MUtilities::GetScrap((Handle)clipPicture,'PICT',&offset); // we import it
			
			switch (pasteType)
			{
				case normally:
					InsertPictureIntoMember(clipPicture, currentPixName, NULL, insertCentered); // and we insert it into the drawing
					break;
				case asIconAndMask:
					InsertPicIntoIcon(this, clipPicture);
					break;
				case intoSelection:
					Rect	targetRect;
					
					GetRegionBounds(selectionRgn, &targetRect);
					if (status & selectionFloated)
						DefloatSelection(true);
					
					InsertPictureIntoMember(clipPicture, currentPixName, &targetRect, insertScaled);
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
// Name			: icnsEditorClass::InsertPictureIntoMember
// Input		: srcPic: handle to the picture that should be drawn into the GWorld
//				  scale: true if the picture should be expanded/shrunk to fit the gworld
//				  boundary, if false then the picture will be centered.
// Output		: targetGW: pointed to the GWorld where the picture should be drawn
// Description	: This function draws the specified picture into a GWorld. If the target
//				  GWorld is the current one, then the picture is placed into a selection,
//				  otherwise it is drawn straight into the GWorld

void icnsEditorClass::InsertPictureIntoMember(PicHandle srcPic, int targetName, Rect* targetRect, int options)
{
	GWorldPtr		targetGW;
	PixMapHandle	targetPix;
	Rect			targetGWRect, destRect;

	GetGWorldAndPix(targetName, &targetGW, &targetPix);
	
	SAVEGWORLD;
	SAVECOLORS;
	
	if (targetRect)
		targetGWRect = *targetRect;
	else
		targetGWRect = (**targetPix).bounds;
	
	destRect = (**srcPic).picFrame;
	OffsetRect(&destRect, -destRect.left, -destRect.top);
	
	if (options & insertCentered)
	{
		if (targetGW == currentGW)
		{
			Rect visibleRect;
			
			if (status & hasSelection)
			{
				GetRegionBounds(selectionRgn, &visibleRect);
			}
			else
			{
				visibleRect = editAreaRect;
				OffsetRect(&visibleRect,
						   -editAreaRect.left + hScrollbarValue,
						   -editAreaRect.top + vScrollbarValue);
				SetRect(&visibleRect,
						visibleRect.left / magnification,
						visibleRect.top / magnification,
						visibleRect.right / magnification + 1,
						visibleRect.bottom / magnification + 1);
			}
			
			OffsetRect(&destRect,
					   visibleRect.left + (visibleRect.right - visibleRect.left - destRect.right)/2,
					   visibleRect.top + (visibleRect.bottom - visibleRect.top - destRect.bottom)/2);
		}
		else	
			OffsetRect(&destRect,
					   (targetGWRect.right - destRect.right)/2,
					   (targetGWRect.bottom - destRect.bottom)/2);
	}
	else if (options & insertScaled)
	{
		destRect = targetGWRect;
	}
	
	if (targetName == currentPixName)
	{
		if (status & selectionFloated)
			DefloatSelection(true);
			
		status |= (selectionFloated | hasSelection);
		
		if (selectionPix && selectionGW)
		{
			UnlockPixels(selectionPix);
			DisposeGWorld(selectionGW);
		}
		NewGWorldUnpadded(&selectionGW,
						 (**currentPix).pixelSize,
						 &destRect,
						 (**currentPix).pmTable);
		selectionPix = GetGWorldPixMap(selectionGW);
		LockPixels(selectionPix);
		
		PictureTransferScaled(srcPic, (**srcPic).picFrame,
							  selectionGW, destRect,
							  statics.preferences.FeatureEnabled(prefsDither),
							  statics.preferences.GetScaling());
							  
		PictureToRegion(srcPic, destRect, selectionRgn);
		MagnifySelectionRgn();
		
		statics.toolPalette->SetCurrentTool(toolMove);
	}
	else
	{
		PictureTransferScaled(srcPic, (**srcPic).picFrame,
							  targetGW, destRect,
							  statics.preferences.FeatureEnabled(prefsDither),
							  statics.preferences.GetScaling());
	}
	
		status |= needsUpdate; // we need updating
	
	if (!EmptyRgn(selectionRgn)) // checking for selections
		status |= hasSelection;
	else
		status &= ~hasSelection;
}

/*
{	
	Rect			picRect, // the dimensions of the picture
					currentBounds, // the size of the current GWorld
					targetGWBounds;
	
	GetPortBounds(targetGW, &targetGWBounds);
	
	if (options & insertScaled) // if we scale then the picture should be as big as the target
		picRect = targetGWBounds;
	else // otherwise the size is left alone
		picRect = (**srcPic).picFrame;
		
	OffsetRect(&picRect, -picRect.left, -picRect.top);
	
	if (options & insertCentered)
		if (targetGW == currentGW)
		{
			Rect visibleRect;
			
			if (status & hasSelection)
			{
				GetRegionBounds(selectionRgn, &visibleRect);
			}
			else
			{
				visibleRect = editAreaRect;
				OffsetRect(&visibleRect,
						   -editAreaRect.left + hScrollbarValue,
						   -editAreaRect.top + vScrollbarValue);
				SetRect(&visibleRect,
						visibleRect.left / magnification,
						visibleRect.top / magnification,
						visibleRect.right / magnification + 1,
						visibleRect.bottom / magnification + 1);
			}
			
			OffsetRect(&picRect,
					   visibleRect.left + (visibleRect.right - visibleRect.left - picRect.right)/2,
					   visibleRect.top + (visibleRect.bottom - visibleRect.top - picRect.bottom)/2);
		}
		else	
			OffsetRect(&picRect,
					   (targetGWBounds.right - picRect.right)/2,
					   (targetGWBounds.bottom - picRect.bottom)/2);
	
	if (targetGW == currentGW)
	// if we're inserting into the current gworld we must put the picture into a floating selection
	{
		if (status & selectionFloated) // if there was a selection already...
			DefloatSelection(true); // we must defloat it
		
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
		ForeColor(blackColor);
		BackColor(whiteColor);
		EraseRect(&picRect);
		
		PictureTransferScaled(srcPic, (**srcPic).picFrame,
							  selectionGW, picRect,
							  statics.preferences.FeatureEnabled(prefsDither),
							  statics.preferences.GetScaling());
		
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
		
		
		PictureTransferScaled(srcPic, (**srcPic).picFrame,
							  targetGW, picRect,
							  statics.preferences.FeatureEnabled(prefsDither),
							  statics.preferences.GetScaling());
			
		RESTOREGWORLD;
		RESTORECOLORS;
	}
	
	
	status |= needsUpdate; // we need updating
	
	if (!EmptyRgn(selectionRgn)) // checking for selections
		status |= hasSelection;
	else
		status &= ~hasSelection;
}
*/

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
	
	GetPortBounds(maskGW, &bounds); // we get the bounds
	
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
	Make1BitMask(tempPix, GetGWorldPixMap(maskGW), (**tempPix).bounds);
	
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
	
	status |= (needToSave | needsUpdate); // we've made changes...
	
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
	
	status |= (needToSave | needsUpdate); // we've made changes
	
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
		DefloatSelection(true);
		
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
				DefloatSelection(true);
			
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
		case expandContract: ExpandContract(); break;
		case stroke: Stroke(); break;
	}
	
	if (!EmptyRgn(selectionRgn)) // if there's still a selection...
		status |= hasSelection;
	else
		status &= ~hasSelection;
	
	status |= needsUpdate;
	
	currentState = new drawingStateClass(currentState, this);
}

void icnsEditorClass::ExpandContract()
{
	DialogPtr		expandContractDialog;
	ModalFilterUPP	eventFilterUPP;
	MWindowPtr		expandContractDialogWindow;
	short			itemHit;
	ControlHandle	pixels;
	long			expandAmount;
	Str255			expandAmountAsString;

	expandContractDialog = GetNewDialog(rExpandContractDialog, NULL, (WindowPtr)-1L);

	SetDialogDefaultItem(expandContractDialog, iOK);
	SetDialogCancelItem(expandContractDialog, iCancel);

	expandContractDialogWindow = new MWindow(GetDialogWindow(expandContractDialog), kDialogType);
	MWindow::CenterOnFront(expandContractDialogWindow);

	GetDialogItemAsControl(expandContractDialog, iNoOfPixels, &pixels);
	NumToString(statics.preferences.GetLastSelectionExpansion(), expandAmountAsString);
	SetControlText(pixels, expandAmountAsString);
	SelectDialogItemText(expandContractDialog, iNoOfPixels, 0, 32767);

	MWindow::DeactivateAll();

	ShowWindow(GetDialogWindow(expandContractDialog));

	eventFilterUPP = NewModalFilterUPP(MWindow::StandardDialogFilter);

	do
	{
		ModalDialog(eventFilterUPP, &itemHit);
	} while (itemHit != iOK && itemHit != iCancel);

	if (itemHit == iOK)
	{
		Str255 tempString;
		
		GetControlText(pixels, tempString);
		StringToNum(tempString, &expandAmount);
		statics.preferences.SetLastSelectionExpansion(expandAmount);
	}
	else
		expandAmount = 0;

	DisposeModalFilterUPP(eventFilterUPP);
	DisposeDialog(expandContractDialog);

	MWindow::ActivateAll();

	delete expandContractDialogWindow;

	if (expandAmount)
	{
		InsetRgn(selectionRgn, -expandAmount, -expandAmount);
		MagnifySelectionRgn();
	}		
}

void icnsEditorClass::Stroke()
{
	DialogPtr		strokeDialog;
	ModalFilterUPP	eventFilterUPP;
	MWindowPtr		strokeDialogWindow;
	short			itemHit = 0;
	ControlHandle	pixels, inside, center, outside;
	long			strokeAmount;
	Str255			strokeAmountAsString;
	int				location;

	strokeDialog = GetNewDialog(rStrokeDialog, NULL, (WindowPtr)-1L);

	SetDialogDefaultItem(strokeDialog, iOK);
	SetDialogCancelItem(strokeDialog, iCancel);

	strokeDialogWindow = new MWindow(GetDialogWindow(strokeDialog), kDialogType);
	MWindow::CenterOnFront(strokeDialogWindow);

	GetDialogItemAsControl(strokeDialog, iNoOfPixels, &pixels);
	NumToString(statics.preferences.GetLastSelectionStrokeAmount(), strokeAmountAsString);
	SetControlText(pixels, strokeAmountAsString);
	SelectDialogItemText(strokeDialog, iNoOfPixels, 0, 32767);
	
	GetDialogItemAsControl(strokeDialog, iInside, &inside); SetControlValue(inside, 0);
	GetDialogItemAsControl(strokeDialog, iCenter, &center); SetControlValue(center, 0);
	GetDialogItemAsControl(strokeDialog, iOutside, &outside); SetControlValue(outside, 0);
	switch (location = statics.preferences.GetLastSelectionStrokeLocation())
	{
		case strokeInside: SetControlValue(inside, 1); break;
		case strokeCenter: SetControlValue(center, 1); break;
		case strokeOutside: SetControlValue(outside, 1); break;
	}
	
#if TARGET_API_MAC_CARBON
	ControlFontStyleRec	alignedTextStyle;
	ControlHandle		label;
	
	alignedTextStyle.flags = kControlUseJustMask;
	alignedTextStyle.just = teFlushRight;
	
	GetDialogItemAsControl(strokeDialog, iStrokePrompt, &label);
	SetControlFontStyle(label, &alignedTextStyle);
	
	GetDialogItemAsControl(strokeDialog, iLocationPrompt, &label);
	SetControlFontStyle(label, &alignedTextStyle);
#endif

	MWindow::DeactivateAll();

	ShowWindow(GetDialogWindow(strokeDialog));

	eventFilterUPP = NewModalFilterUPP(MWindow::StandardDialogFilter);

	do
	{
		ModalDialog(eventFilterUPP, &itemHit);
		switch (itemHit)
		{
			case iInside: SetControlValue(inside, 1); SetControlValue(center, 0); SetControlValue(outside, 0); location = strokeInside; break;
			case iCenter: SetControlValue(inside, 0); SetControlValue(center, 1); SetControlValue(outside, 0); location = strokeCenter; break;
			case iOutside: SetControlValue(inside, 0); SetControlValue(center, 0); SetControlValue(outside, 1); location = strokeOutside; break;
		}
	}
	while (itemHit != iOK && itemHit != iCancel);

	if (itemHit == iOK)
	{
		Str255 tempString;
		
		GetControlText(pixels, tempString);
		StringToNum(tempString, &strokeAmount);
		statics.preferences.SetLastSelectionStrokeAmount(strokeAmount);
		statics.preferences.SetLastSelectionStrokeLocation(location);
	}
	else
		strokeAmount = 0;

	DisposeModalFilterUPP(eventFilterUPP);
	DisposeDialog(strokeDialog);

	MWindow::ActivateAll();

	delete strokeDialogWindow;

	if (strokeAmount)
	{
		RgnHandle	strokeRgn = NewRgn();
		RGBColor	foreColor;
		
		SAVEGWORLD;
		SAVECOLORS;
		
		SetGWorld(currentGW, NULL);
		
		CopyRgn(selectionRgn, strokeRgn);
		InsetRgn(strokeRgn, -float(strokeAmount)/2.0 - 0.5, -float(strokeAmount)/2.0 - 0.5);
		
		switch (location)
		{
			case strokeInside: InsetRgn(strokeRgn, strokeAmount/2, strokeAmount/2); break;
			case strokeOutside: InsetRgn(strokeRgn, -strokeAmount/2, -strokeAmount/2); break;
		}
		
		PenSize(strokeAmount, strokeAmount);
		
		statics.toolPalette->GetColors(&foreColor, NULL);
		RGBForeColor(&foreColor);
		
		FrameRgn(strokeRgn);
		
		DisposeRgn(strokeRgn);
		
		
		RESTORECOLORS;
		RESTOREGWORLD;
	}
			
}

void icnsEditorClass::GetSelectionColors(RGBColor** colors, int* noOfColors)
{
	Rect		selectionBounds;
	
	GetRegionBounds(selectionRgn, &selectionBounds);
	
	*noOfColors = GetGWorldColors(currentGW, selectionBounds, selectionRgn, colors, NULL);
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
		Rect			bounds;
				
		if (!(status & selectionFloated)) // if there is a selection but it's not floated
			FloatSelection(); // we float it
			
		::Rotate(angle, &selectionGW, &selectionPix); // we rotate the contents
		
		GetRegionBounds(selectionRgn, &bounds);
		
		SAVEGWORLD;
		SAVECOLORS;
		
		// we make the tempGW the size of the selection
		err = NewGWorld(&tempGW, 1, &bounds, NULL, NULL, 0);
		if (err != noErr) {status |= outOfMemory; return; }
		tempPix = GetGWorldPixMap(tempGW);
		LockPixels(tempPix);
		
		// we draw the selection in
		SetGWorld(tempGW, NULL);
		EraseRect(&bounds);
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

	status |= (needToSave | needsUpdate); // we made some changes
	
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
		Rect			bounds;
		
		SAVEGWORLD;
		SAVECOLORS;
		
		if (!(status & selectionFloated))
			FloatSelection();
			
		if (flipType == horizontal)
			::FlipHorizontal(selectionPix);
		else
			::FlipVertical(selectionPix);
		
		GetRegionBounds(selectionRgn, &bounds);
		
		err = NewGWorld(&tempGW, 1, &bounds, NULL, NULL, 0);
		if (err != noErr) {status |= outOfMemory; return; }
		tempPix = GetGWorldPixMap(tempGW);
		LockPixels(tempPix);
		
		SetGWorld(tempGW, NULL);
		EraseRect(&bounds);
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
	
	status |= (needToSave | needsUpdate);
	
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
	status |= (needToSave | needsUpdate);
	
	currentState = new drawingStateClass(currentState, this);
}

#pragma mark -

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

