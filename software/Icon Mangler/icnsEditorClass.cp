#include "icnsEditorClass.h"
#include "iconMangler.h"
#include "drawingStateClass.h"

staticsStruct icnsEditorClass::statics;

icnsEditorClass::icnsEditorClass(icnsEditorClass* previousLastEditor)
{
	OSStatus  err = noErr;
	
	nextEditor = NULL;
	
	previousEditor = previousLastEditor;
	
	if (previousLastEditor != NULL)
		previousLastEditor->nextEditor = this;
	
	window = GetWindow(128);
	if (window == NULL)
		status |= outOfMemory;
		
	SetWRefCon(window, (long)this);
	
	SetThemeWindowBackground(window,kThemeActiveDialogBackgroundBrush,true);
	
	err = CreateControls();
	if (err != noErr)
		status |= outOfMemory;
	
	currentPix = il32Pix;
	currentPixName = il32;
	currentGW = il32GW;
	
	selectionRgn = NewRgn();
	SetEmptyRgn(selectionRgn);
	selectionMagnifiedRgn = NewRgn();
	currentSelectionPattern = 0;
	lastSelectionTicks = LMGetTicks();
	
	err = NewGWorld(&selectionGW, 32, &hugeIconRect, NULL, NULL, 0);
	if (err != noErr)
		status |= outOfMemory;
	selectionPix = GetGWorldPixMap(selectionGW);
	LockPixels(selectionPix);
	
	overlayPix = NULL;
	
	currentState = NULL;
	
	if (status & outOfMemory)
		delete this;
	
	currentTool = pen;
	oldTool = noTool;
	magnification = kMinMagnification;
	UpdateToolbar();
	
	status |= (resized | needsUpdate | canZoomIn | needToSave);
	
	sizes = large;
	
	currentState = new drawingStateClass(NULL, this);
	
	fileSpec.vRefNum = 0;
	fileSpec.parID = 0;
	
	foreColor.red = foreColor.green = foreColor.blue = 0;
	backColor.red = backColor.green = backColor.blue = 0xFFFF;
	
	ID = -16455;
	
	ShowWindow(window);
	
	InstallDraggingHandlers();
	//Refresh();
}

OSStatus icnsEditorClass::CreateControls()
{
	ControlFontStyleRec			placardDisplayStyle;
	ControlUserPaneDrawUPP		iconWellDrawUPP, colorsDrawUPP, displayDrawUPP, previewDrawUPP;
	ControlUserPaneHitTestUPP	iconWellHitTestUPP, colorsHitTestUPP, displayHitTestUPP, previewHitTestUPP;
	OSStatus					err = noErr;

	err = CreateRootControl(window,&(controls.rootControl));
	controls.toolbar.pen = GetNewControl(rPen, window); if (controls.toolbar.pen == NULL) return mFulErr;
	controls.toolbar.eyeDropper = GetNewControl(rEyeDropper, window); if (controls.toolbar.eyeDropper == NULL) return mFulErr;
	controls.toolbar.fill = GetNewControl(rFill, window); if (controls.toolbar.fill == NULL) return mFulErr;
	controls.toolbar.eraser = GetNewControl(rEraser, window); if (controls.toolbar.eraser == NULL) return mFulErr;
	controls.toolbar.marquee = GetNewControl(rMarquee, window); if (controls.toolbar.marquee == NULL) return mFulErr;
	controls.toolbar.move = GetNewControl(rMove, window); if (controls.toolbar.move == NULL) return mFulErr;
	controls.toolbar.lasso = GetNewControl(rLasso, window); if (controls.toolbar.lasso == NULL) return mFulErr;
	controls.toolbar.magicWand = GetNewControl(rMagicWand, window); if (controls.toolbar.magicWand == NULL) return mFulErr;
	controls.toolbar.line = GetNewControl(rLine, window); if (controls.toolbar.line == NULL) return mFulErr;
	controls.toolbar.rectangle = GetNewControl(rRectangle, window); if (controls.toolbar.rectangle == NULL) return mFulErr;
	
	controls.iconEditWell = GetNewControl(rIconEditWell, window); if (controls.iconEditWell == NULL) return mFulErr;
	iconWellDrawUPP = NewControlUserPaneDrawProc(DrawIconWell);
	iconWellHitTestUPP = NewControlUserPaneHitTestProc(HitTestIconWell);
	SetControlData(controls.iconEditWell,kControlNoPart,kControlUserPaneDrawProcTag, 
								 sizeof(iconWellDrawUPP),(Ptr) &iconWellDrawUPP);
	SetControlData(controls.iconEditWell,kControlNoPart,kControlUserPaneHitTestProcTag, 
								 sizeof(iconWellHitTestUPP),(Ptr) &iconWellHitTestUPP);
	
	controls.zoomDisplayPlacard = GetNewControl(rZoomDisplayPlacard, window);  if (controls.zoomDisplayPlacard == NULL) return mFulErr;
	controls.zoomDisplayText = GetNewControl(rZoomDisplayText, window); if (controls.zoomDisplayText == NULL) return mFulErr;
	AutoEmbedControl(controls.zoomDisplayText, window);
	controls.infoDisplayPlacard = GetNewControl(rInfoDisplayPlacard, window); if (controls.infoDisplayPlacard == NULL) return mFulErr;
	controls.infoDisplayText = GetNewControl(rInfoDisplayText, window); if (controls.infoDisplayText == NULL) return mFulErr;
	AutoEmbedControl(controls.infoDisplayText, window);
	
	placardDisplayStyle.flags = kControlUseFontMask + kControlUseSizeMask + kControlUseJustMask;
	placardDisplayStyle.font = kFontIDGeneva;
	placardDisplayStyle.size = 9;
	placardDisplayStyle.just = teCenter;
	
	SetControlFontStyle(controls.zoomDisplayText, &placardDisplayStyle);
	SetControlFontStyle(controls.infoDisplayText, &placardDisplayStyle);
	
	controls.foreBackColors = GetNewControl(rForeBackColors, window); if (controls.foreBackColors == NULL) return mFulErr;
	colorsDrawUPP = NewControlUserPaneDrawProc(DrawForeBackColors);
	colorsHitTestUPP = NewControlUserPaneHitTestProc(HitTestForeBackColors);
	SetControlData(controls.foreBackColors,kControlNoPart,kControlUserPaneDrawProcTag, 
								 sizeof(colorsDrawUPP),(Ptr) &colorsDrawUPP);
	SetControlData(controls.foreBackColors,kControlNoPart,kControlUserPaneHitTestProcTag, 
								 sizeof(colorsHitTestUPP),(Ptr) &colorsHitTestUPP);
								
	
	controls.display.iconDisplay = GetNewControl(rIconDisplay, window); if (controls.display.iconDisplay == NULL) return mFulErr;
	
	MakeDisplayRects((**(controls.display.iconDisplay)).contrlRect,
					 &controls.display.iconHugeRect,
					 &controls.display.iconLargeRect,
					 &controls.display.iconSmallRect,
					 &controls.display.iconMiniRect);
	
	displayDrawUPP = NewControlUserPaneDrawProc(DisplayDraw);
	displayHitTestUPP = NewControlUserPaneHitTestProc(DisplayHitTest);
	SetControlData(controls.display.iconDisplay,kControlNoPart,kControlUserPaneDrawProcTag, 
								 sizeof(displayDrawUPP),(Ptr) &displayDrawUPP);
	SetControlData(controls.display.iconDisplay,kControlNoPart,kControlUserPaneHitTestProcTag, 
								 sizeof(displayHitTestUPP),(Ptr) &displayHitTestUPP);
								 
	controls.display.maskDisplay = GetNewControl(rMaskDisplay, window); if (controls.display.maskDisplay == NULL) return mFulErr;
	
	MakeDisplayRects((**(controls.display.maskDisplay)).contrlRect,
					 &controls.display.maskHugeRect,
					 &controls.display.maskLargeRect,
					 &controls.display.maskSmallRect,
					 &controls.display.maskMiniRect);
	
	SetControlData(controls.display.maskDisplay,kControlNoPart,kControlUserPaneDrawProcTag, 
								 sizeof(displayDrawUPP),(Ptr) &displayDrawUPP);
	SetControlData(controls.display.maskDisplay,kControlNoPart,kControlUserPaneHitTestProcTag, 
								 sizeof(displayHitTestUPP),(Ptr) &displayHitTestUPP);
	
	controls.display.iconPopup = GetNewControl(rIconPopup, window);
	SetControlFontStyle(controls.display.iconPopup, &placardDisplayStyle);
	
	controls.display.maskPopup = GetNewControl(rMaskPopup, window);
	SetControlFontStyle(controls.display.maskPopup, &placardDisplayStyle);
	
	controls.display.iconLabel = GetNewControl(rIconLabel, window); if (controls.display.iconLabel == NULL) return mFulErr;
	AutoEmbedControl(controls.display.iconLabel, window);
	SetControlFontStyle(controls.display.iconLabel, &placardDisplayStyle);
	Str255 iconLabel = "\pIcon", maskLabel = "\pMask";
	controls.display.maskLabel = GetNewControl(rMaskLabel, window); if (controls.display.maskLabel == NULL) return mFulErr;
	SetControlFontStyle(controls.display.maskLabel, &placardDisplayStyle);
	
	// setting the text of the labels
	SetControlData(controls.display.iconLabel,kControlNoPart,kControlStaticTextTextTag,iconLabel[0], (Ptr) &iconLabel[1]);
	SetControlData(controls.display.maskLabel,kControlNoPart,kControlStaticTextTextTag,maskLabel[0], (Ptr) &maskLabel[1]);
	
	controls.display.preview = GetNewControl(rPreview, window); if (controls.display.preview == NULL) return mFulErr;
	previewDrawUPP = NewControlUserPaneDrawProc(PreviewDraw);
	previewHitTestUPP = NewControlUserPaneHitTestProc(PreviewHitTest);
	SetControlData(controls.display.preview,kControlNoPart,kControlUserPaneDrawProcTag, 
								 sizeof(previewDrawUPP),(Ptr) &previewDrawUPP);
	SetControlData(controls.display.maskDisplay,kControlNoPart,kControlUserPaneHitTestProcTag, 
								 sizeof(previewHitTestUPP),(Ptr) &previewHitTestUPP);
								 
	return err;
}

void icnsEditorClass::InstallDraggingHandlers()
{
	// this is a separate function even though it's so small because I need to add error checking...
	DragReceiveHandlerUPP	dragReceiveHandlerUPP;
	DragTrackingHandlerUPP	dragTrackingHandlerUPP;
	
	dragTrackingHandlerUPP = NewDragTrackingHandlerProc (DragTrackingHandler);
	dragReceiveHandlerUPP = NewDragReceiveHandlerProc (DragReceiveHandler);
	InstallTrackingHandler(dragTrackingHandlerUPP,window,NULL);
	InstallReceiveHandler(dragReceiveHandlerUPP,window,NULL);
}

icnsEditorClass::~icnsEditorClass(void)
{
	drawingStatePtr	stateToBeDeleted, tempState;
	
	if (currentState != NULL)
	{
		stateToBeDeleted = currentState->nextState;
		
		while (stateToBeDeleted != NULL)
		{
			tempState = stateToBeDeleted->nextState;
			delete stateToBeDeleted;
			stateToBeDeleted = tempState;
		}
		
		stateToBeDeleted = currentState->previousState;
		
		while (stateToBeDeleted != NULL)
		{
			tempState = stateToBeDeleted->previousState;
			delete stateToBeDeleted;
			stateToBeDeleted = tempState;
		}
		
		delete currentState;
	}
	
	if (previousEditor != NULL)
		previousEditor->nextEditor = nextEditor;
	if (nextEditor != NULL)
		nextEditor->previousEditor = previousEditor;
	
	DisposeWindow(window);
	ChangeCursor(rArrow);
	
	if (selectionRgn != NULL) DisposeRgn(selectionRgn);
	if (selectionMagnifiedRgn != NULL) DisposeRgn(selectionMagnifiedRgn);
	if (selectionPix != NULL) UnlockPixels(selectionPix);
	if (selectionGW != NULL) DisposeGWorld(selectionGW);
	
	if (status & outOfMemory)
		DisplayAlert("Out of memory", "");
}

void icnsEditorClass::DoIdle(void)
{
	Point	theMouse;
	SAVEGWORLD;
	
	SetPort(window);
	GetMouse(&theMouse);
	
	if (IsFrontProcess())
		if (PtInRect(theMouse, &(**controls.iconEditWell).contrlRect))
		{
			switch (currentTool)
			{
				case pen: ChangeCursor(rPen); break;
				case eyeDropper: ChangeCursor(rEyeDropper); break;
				case fill: ChangeCursor(rFill); break;
				case eraser: ChangeCursor(rEraser); break;
				case marquee:
					if (ISSHIFTDOWN)
						ChangeCursor(rMarqueeAdditive);
					else if (ISOPTIONDOWN)
						ChangeCursor(rMarqueeSubtractive);
					else
						ChangeCursor(rMarquee);
					break;
				case move: ChangeCursor(rMove); break;
				case lasso:
					if (ISSHIFTDOWN)
						ChangeCursor(rLassoAdditive);
					else if (ISOPTIONDOWN)
						ChangeCursor(rLassoSubtractive);
					else
						ChangeCursor(rLasso);
					break;
				case magicWand:
					if (ISSHIFTDOWN)
						ChangeCursor(rMagicWandAdditive);
					else if (ISOPTIONDOWN)
						ChangeCursor(rMagicWandSubtractive);
					else
						ChangeCursor(rMagicWand);
					break;
				case line: ChangeCursor(rMarquee); break;
				case rectangle: ChangeCursor(rMarquee); break;
			}
		}
		else
			ChangeCursor(rArrow);
	
	if ((PtInRect(theMouse, &(**controls.iconEditWell).contrlRect)) && currentTool != marquee && currentTool != move && currentTool != magicWand && currentTool != lasso)
		if (ISOPTIONDOWN && currentTool != eyeDropper)
		{
			oldTool = currentTool;
			currentTool = eyeDropper;
		}
		else if (oldTool != noTool && !ISOPTIONDOWN)
		{
			currentTool = oldTool;
			oldTool = noTool;
		}
	
	if (!EmptyRgn(selectionRgn) || (status & needsUpdate))
	{
		Display((**controls.iconEditWell).contrlRect, current);
		if (status & needsUpdate)
		{
			Draw1Control(controls.display.iconDisplay);
			Draw1Control(controls.display.maskDisplay);
			Draw1Control(controls.display.preview);
			status -= needsUpdate;
		}
	}

	if (currentState->previousState != NULL)
		status |= canUndo;
	else
		status &= ~ canUndo;
		
	if (currentState->nextState != NULL)
		status |= canRedo;
	else
		status &= ~canRedo;
		
	if (status & resized)
	{
		Refresh();
		status &= ~resized;
	}
	
	if (!EmptyRgn(selectionRgn))
		status |= hasSelection;
	else
		status &= ~hasSelection;
	
		
	RESTOREGWORLD;
}

void icnsEditorClass::ChangeCursor(int ID)
{
	if (currentCursor != ID)
	{
		if (ID != rArrow)
			SetCursor(ID);
		else
			SetCursor(&qd.arrow);
		currentCursor = ID;
	}
}

void icnsEditorClass::Refresh(void)
{
	Str255		magnificationText;
	Str255		IDAsString, infoText;
	
	if (status & outOfMemory)
		delete this;
	
	
	SAVEGWORLD;
	
	
	
	if ((FrontWindow() == window) && !IsControlActive(controls.rootControl) && IsFrontProcess())
		Activate();

	if ((FrontWindow() != window) && IsControlActive(controls.rootControl))
		Deactivate();
	
	BeginUpdate(window);
	SetPort(window);
	
	if (status & resized)
	{
		MagnifySelectionRgn();
		RepositionControls();
	}
	
	// setting the text of the zoom display field
	NumToString(magnification * 100, magnificationText);
	AppendString(magnificationText, "\p%");
	SetControlData(controls.zoomDisplayText,kControlNoPart,kControlStaticTextTextTag,magnificationText[0], (Ptr) &magnificationText[1]);
	
	// setting the text for the info display field (currently hard coded to the icon ID)
	NumToString(ID, IDAsString);
	CopyString(infoText, "\pID: ");
	AppendString(infoText, IDAsString);
	SetControlData(controls.infoDisplayText,kControlNoPart,kControlStaticTextTextTag,infoText[0], (Ptr) &infoText[1]);
	
	
	UpdateControls(window, window->visRgn);
	EndUpdate(window);
	
	RESTOREGWORLD;
	
}

void icnsEditorClass::Close(icnsEditorPtr* lastEditor, icnsEditorPtr* firstEditor)
{	
	if (*lastEditor == this)
		*lastEditor = previousEditor;
	if (*firstEditor == this)
		*firstEditor = nextEditor;
	
	delete this;
}

void icnsEditorClass::HandleContentClick(EventRecord *eventPtr)
{
	ControlHandle	clickedControl;
	int				controlPart, oldDepth = -1;
	Rect 			tempRect;
	Point			where;
	GWorldPtr		dragGW, tempGW;
	PixMapHandle	dragPix, tempPix;
	long			dragType, tempPixName;
	OSStatus		err = noErr;
	SAVEGWORLD;
	
	where = eventPtr->where;
	
	if (FrontWindow() != window)
		SelectWindow(window);
	else
	{
		SetPort(window);
		GlobalToLocal(&where);
		controlPart = FindControl(where, window, &clickedControl);
		if (controlPart != kControlNoPart)
		{
			if (clickedControl == controls.iconEditWell)
				HandleDrawing();
			else if (clickedControl == controls.display.iconDisplay || clickedControl == controls.display.maskDisplay)
			{
				if (WaitMouseMoved(eventPtr->where)) // we're dragging
				{
					GetDisplayPix(eventPtr->where, &tempGW, &tempPix, &tempPixName, NULL);
					if (!(status & selectionFloated))
					{
						dragGW = tempGW;
						dragPix = tempPix;
						dragType = tempPixName;
					}
					else
					{
						err = NewGWorld(&dragGW, (**tempPix).pixelSize, &(**tempPix).bounds, (**tempPix).pmTable, NULL, 0);
						if (err != noErr)
						{
							status |= outOfMemory;
							return;
						}
						dragPix = GetGWorldPixMap(dragGW);
						LockPixels(dragPix);
						ForeColor(blackColor);
						BackColor(whiteColor);
						CopyBits((BitMap*)*tempPix, (BitMap*)*dragPix, &(**tempPix).bounds, &(**dragPix).bounds, srcCopy, NULL);
						CopyBits((BitMap*)*selectionPix, (BitMap*)*dragPix, &(**tempPix).bounds, &(**dragPix).bounds, srcCopy, selectionRgn);
						dragType = tempPixName;
					}
					//GetDisplayPix(eventPtr->where, &dragGW, &dragPix, &dragType, &dragSrcRect);
					RESTOREGWORLD;
					DragPixMap(eventPtr, dragPix, dragType);
					if (status & selectionFloated)
					{
						UnlockPixels(dragPix);
						DisposeGWorld(dragGW);
					}
				}
				else
				{
					GetDisplayPix(eventPtr->where, &tempGW, &tempPix, &tempPixName, NULL);
					if (tempPixName != currentPixName)
					{
						// just a normal click

						if (!EmptyRgn(selectionRgn))
						{
							DefloatSelection();
							SetEmptyRgn(selectionRgn);
						}
						
						currentGW = tempGW;
						currentPix = tempPix;
						currentPixName = tempPixName;
					
						tempRect.left = (**(controls.toolbar.eyeDropper)).contrlRect.right;
						tempRect.right = (**(controls.display.iconDisplay)).contrlRect.left;
						tempRect.top = 0;
						tempRect.bottom = (**(controls.zoomDisplayPlacard)).contrlRect.top;
						InvalRect(&tempRect);
						status |= resized; // "resized" because the icon edit well needs to be resized, because chances are we've switched to a different icon size
						currentState = new drawingStateClass(currentState, this);
						Refresh();
					}
				}
			}
			else
			{
				if (clickedControl == controls.display.iconPopup && ISOPTIONDOWN)
				{
					oldDepth = GetControlValue(controls.display.iconPopup);
					ChangeCursor(rCopyCursor);
				}
				else if (clickedControl == controls.display.maskPopup && ISOPTIONDOWN)
				{
					oldDepth = GetControlValue(controls.display.maskPopup);
					ChangeCursor(rCopyCursor);
				}
				if (TrackControl(clickedControl, where, NULL))
				{
					if (clickedControl == controls.toolbar.pen)
						currentTool = pen;
					if (clickedControl == controls.toolbar.eyeDropper)
						currentTool = eyeDropper;
					if (clickedControl == controls.toolbar.fill)
						currentTool = fill;
					if (clickedControl == controls.toolbar.eraser)
						currentTool = eraser;
					if (clickedControl == controls.toolbar.marquee)
						currentTool = marquee;
					if (clickedControl == controls.toolbar.move)
						currentTool = move;
					if (clickedControl == controls.toolbar.lasso)
						currentTool = lasso;
					if (clickedControl == controls.toolbar.magicWand)
						currentTool = magicWand;
					if (clickedControl == controls.toolbar.line)
						currentTool = line;
					if (clickedControl == controls.toolbar.rectangle)
						currentTool = rectangle;
						
					UpdateToolbar();
					
					if (clickedControl == controls.foreBackColors)
					{
						switch (controlPart)
						{
							case kForeColorPart : GetColor(where, "\pPick a foreground color: ", &foreColor, &foreColor); break;
							case kBackColorPart : GetColor(where, "\pPick a background color: ", &backColor, &backColor); break;
							case kExchangeColorsPart : ExchangeForeBackColors(); break;
						}
							
						Draw1Control(controls.foreBackColors);
					}
					if (clickedControl == controls.display.iconPopup)
					{
						if (oldDepth != -1)
						{
							CopyDepth(oldDepth, GetControlValue(controls.display.iconPopup), icon);
						}
						status |= needsUpdate;
					}
					if (clickedControl == controls.display.maskPopup)
					{
						if (oldDepth != -1)
						{
							CopyDepth(oldDepth, GetControlValue(controls.display.maskPopup), mask);
						}
						status |= needsUpdate;
					}
				}
			}
		}
	}
	RESTOREGWORLD;
}

void icnsEditorClass::GetDisplayPix(Point theMouse, GWorldPtr *clickedGW, PixMapHandle *clickedPix, long *clickedName, Rect *clickedRect)
{
	int currentIconDepth, currentMaskDepth;
	
	currentIconDepth = GetControlValue(controls.display.iconPopup);
	currentMaskDepth = GetControlValue(controls.display.maskPopup);
	
	GlobalToLocal(&theMouse);
	
	if (PtInRect(theMouse, &controls.display.iconHugeRect))
	{
		sizes |= huge;
		if (clickedRect != NULL) *clickedRect = controls.display.iconHugeRect;
		switch (currentIconDepth)
		{
			case k32BitIcon: *clickedGW = ih32GW; *clickedPix = ih32Pix; *clickedName = ih32; break;
			case k8BitIcon: *clickedGW = ich8GW; *clickedPix = ich8Pix; *clickedName = ich8; break;
			case k4BitIcon: *clickedGW = ich4GW; *clickedPix = ich4Pix; *clickedName = ich4; break;
			case k1BitIcon: *clickedGW = ichiGW; *clickedPix = ichiPix; *clickedName = ichi; break;
		}
	}
	else if (PtInRect(theMouse, &controls.display.iconLargeRect))
	{
		sizes |= large;
		if (clickedRect != NULL) *clickedRect = controls.display.iconLargeRect;
		switch (currentIconDepth)
		{
			case k32BitIcon: *clickedGW = il32GW; *clickedPix = il32Pix; *clickedName = il32; break;
			case k8BitIcon: *clickedGW = icl8GW; *clickedPix = icl8Pix; *clickedName = icl8; break;
			case k4BitIcon: *clickedGW = icl4GW; *clickedPix = icl4Pix; *clickedName = icl4; break;
			case k1BitIcon: *clickedGW = icniGW; *clickedPix = icniPix; *clickedName = icni; break;
		}
	}
	else if (PtInRect(theMouse, &controls.display.iconSmallRect))
	{
		sizes |= small;
		if (clickedRect != NULL) *clickedRect = controls.display.iconSmallRect;
		switch (currentIconDepth)
		{
			case k32BitIcon: *clickedGW = is32GW; *clickedPix = is32Pix; *clickedName = is32; break;
			case k8BitIcon: *clickedGW = ics8GW; *clickedPix = ics8Pix; *clickedName = ics8; break;
			case k4BitIcon: *clickedGW = ics4GW; *clickedPix = ics4Pix; *clickedName = ics4; break;
			case k1BitIcon: *clickedGW = icsiGW; *clickedPix = icsiPix; *clickedName = icsi; break;
		}
	}
	else if (PtInRect(theMouse, &controls.display.maskHugeRect))
	{
		sizes |= huge;
		if (clickedRect != NULL) *clickedRect = controls.display.maskHugeRect;
		switch (currentMaskDepth)
		{
			case k8BitMask: *clickedGW = h8mkGW; *clickedPix = h8mkPix; *clickedName = h8mk; break;
			case k1BitMask: *clickedGW = ichmGW; *clickedPix = ichmPix; *clickedName = ichm; break;
		}
	}
	else if (PtInRect(theMouse, &controls.display.maskLargeRect))
	{
		sizes |= large;
		if (clickedRect != NULL) *clickedRect = controls.display.maskLargeRect;
		switch (currentMaskDepth)
		{
			case k8BitMask: *clickedGW = l8mkGW; *clickedPix = l8mkPix; *clickedName = l8mk; break;
			case k1BitMask: *clickedGW = icnmGW; *clickedPix = icnmPix; *clickedName = icnm; break;
		}
	}
	else if (PtInRect(theMouse, &controls.display.maskSmallRect))
	{
		sizes |= small;
		if (clickedRect != NULL) *clickedRect = controls.display.maskSmallRect;
		switch (currentMaskDepth)
		{
			case k8BitMask: *clickedGW = s8mkGW; *clickedPix = s8mkPix; *clickedName = s8mk; break;
			case k1BitMask: *clickedGW = icsmGW; *clickedPix = icsmPix; *clickedName = icsm; break;
		}
	}
}

void icnsEditorClass::CopyDepth(int oldDepth, int newDepth, int iconOrMask)
{
	PixMapHandle	hugeSrc, largeSrc, smallSrc, hugeTarget, largeTarget, smallTarget;
	SAVECOLORS;
	
	if (oldDepth == newDepth)
		return;
	
	if (iconOrMask == icon)
	{
		switch (oldDepth)
		{
			case k32BitIcon: hugeSrc = ih32Pix; largeSrc = il32Pix; smallSrc = is32Pix; break;
			case k8BitIcon: hugeSrc = ich8Pix; largeSrc = icl8Pix; smallSrc = ics8Pix; break;
			case k4BitIcon: hugeSrc = ich4Pix; largeSrc = icl4Pix; smallSrc = ics4Pix; break;
			case k1BitIcon: hugeSrc = ichiPix; largeSrc = icniPix; smallSrc = icsiPix; break;
		}
		switch (newDepth)
		{
			case k32BitIcon: hugeTarget = ih32Pix; largeTarget = il32Pix; smallTarget = is32Pix; break;
			case k8BitIcon: hugeTarget = ich8Pix; largeTarget = icl8Pix; smallTarget = ics8Pix; break;
			case k4BitIcon: hugeTarget = ich4Pix; largeTarget = icl4Pix; smallTarget = ics4Pix; break;
			case k1BitIcon: hugeTarget = ichiPix; largeTarget = icniPix; smallTarget = icsiPix; break;
		}
	}
	else
	{
		switch (oldDepth)
		{
			case k8BitIcon: hugeSrc = h8mkPix; largeSrc = l8mkPix; smallSrc = s8mkPix; break;
			case k1BitIcon: hugeSrc = ichmPix; largeSrc = icnmPix; smallSrc = icsmPix; break;
		}
		switch (newDepth)
		{
			case k8BitIcon: hugeTarget = h8mkPix; largeTarget = l8mkPix; smallTarget = s8mkPix; break;
			case k1BitIcon: hugeTarget = ichmPix; largeTarget = icnmPix; smallTarget = icsmPix; break;
		}
	}
	
	CopyBits((BitMap*)*hugeSrc, (BitMap*)*hugeTarget, &hugeIconRect, &hugeIconRect, ditherCopy, NULL);
	CopyBits((BitMap*)*largeSrc, (BitMap*)*largeTarget, &largeIconRect, &largeIconRect, ditherCopy, NULL);
	CopyBits((BitMap*)*smallSrc, (BitMap*)*smallTarget, &smallIconRect, &smallIconRect, ditherCopy, NULL);
	
	RESTORECOLORS;
}

void icnsEditorClass::Activate()
{
	SAVEGWORLD;
	
	SetPort(window);
	
	ActivateControl(controls.rootControl);
	
	InvalRect(&((WindowPeek)window)->port.portRect);
	
	RESTOREGWORLD;
	//Refresh();
}

void icnsEditorClass::Deactivate()
{
	SAVEGWORLD;
	
	SetPort(window);
	
	DeactivateControl(controls.rootControl);
	
	InvalRect(&((WindowPeek)window)->port.portRect);
	
	RESTOREGWORLD;
	//Refresh();
}

void icnsEditorClass::UpdateToolbar()
{
	if (currentTool == pen)
		SetControlValue(controls.toolbar.pen, 1);
	else
		SetControlValue(controls.toolbar.pen, 0);
		
	if (currentTool == eyeDropper)
		SetControlValue(controls.toolbar.eyeDropper, 1);
	else
		SetControlValue(controls.toolbar.eyeDropper, 0);
		
	if (currentTool == fill)
		SetControlValue(controls.toolbar.fill, 1);
	else
		SetControlValue(controls.toolbar.fill, 0);
		
	if (currentTool == eraser)
		SetControlValue(controls.toolbar.eraser, 1);
	else
		SetControlValue(controls.toolbar.eraser, 0);
		
	if (currentTool == marquee)
		SetControlValue(controls.toolbar.marquee, 1);
	else
		SetControlValue(controls.toolbar.marquee, 0);
		
	if (currentTool == move)
		SetControlValue(controls.toolbar.move, 1);
	else
		SetControlValue(controls.toolbar.move, 0);
		
	if (currentTool == lasso)
		SetControlValue(controls.toolbar.lasso, 1);
	else
		SetControlValue(controls.toolbar.lasso, 0);
		
	if (currentTool == magicWand)
		SetControlValue(controls.toolbar.magicWand, 1);
	else
		SetControlValue(controls.toolbar.magicWand, 0);
		
	if (currentTool == line)
		SetControlValue(controls.toolbar.line, 1);
	else
		SetControlValue(controls.toolbar.line, 0);
		
	if (currentTool == rectangle)
		SetControlValue(controls.toolbar.rectangle, 1);
	else
		SetControlValue(controls.toolbar.rectangle, 0);
}

void icnsEditorClass::RepositionControls()
{
	Rect	windowRect, controlRect;
	int		h;
	int		v;
	int		growIncrement;

	growIncrement = (**currentPix).bounds.bottom - (**currentPix).bounds.top;
	windowRect = ((WindowPeek)window)->port.portRect;
	OffsetRect(&windowRect, -windowRect.left, -windowRect.top);
	
	HideControl(controls.rootControl);
	controlRect = ((**(controls.zoomDisplayPlacard)).contrlRect);
	h = windowRect.left - 1;
	v = windowRect.bottom - (controlRect.bottom - controlRect.top) + 1;
	
	MoveControl(controls.zoomDisplayPlacard, h, v);
	MoveControl(controls.zoomDisplayText, h + 4, v + 2);
	
	MoveControl(controls.infoDisplayPlacard, h + 63, v);
	MoveControl(controls.infoDisplayText, h + 63 + 4, v + 2);
	h = (windowRect.right - windowRect.left) - 64 - 16 + 4;
	v = 16;
	SizeControl(controls.infoDisplayPlacard, h, v);
	SizeControl(controls.infoDisplayText, h - 8, v - 6);
	
	controlRect = ((**(controls.iconEditWell)).contrlRect);
	h = magnification * growIncrement;
	v = h;
	
	HideControl(controls.iconEditWell);
	SizeControl(controls.iconEditWell, h, v);
	ShowControl(controls.iconEditWell);
	
	iconDisplayRect = ((**(controls.iconEditWell)).contrlRect);
	InsetRect(&iconDisplayRect, 1, 1);
	
	controlRect = ((**(controls.display.iconDisplay)).contrlRect);
	h = windowRect.right - 2 * (controlRect.right - controlRect.left) - 4 - 6;
	v = controlRect.top;
	
	MoveControl(controls.display.iconDisplay, h, v);
	
	MakeDisplayRects((**(controls.display.iconDisplay)).contrlRect,
					 &controls.display.iconHugeRect,
					 &controls.display.iconLargeRect,
					 &controls.display.iconSmallRect,
					 &controls.display.iconMiniRect);
					 
	controlRect = (**controls.display.preview).contrlRect;
	v = controlRect.top;
	MoveControl(controls.display.preview, h, v);
					 
	controlRect = (**controls.display.iconLabel).contrlRect;
	v = controlRect.top;
	MoveControl(controls.display.iconLabel, h, v);
	
	controlRect = ((**(controls.display.iconPopup)).contrlRect);
	h -= 2;
	v = controlRect.top;
	
	MoveControl(controls.display.iconPopup, h, v);
	
	controlRect = ((**(controls.display.maskDisplay)).contrlRect);
	h = windowRect.right - (controlRect.right - controlRect.left) - 4;
	v = controlRect.top;
	
	MoveControl(controls.display.maskDisplay, h, v);
	
	MakeDisplayRects((**(controls.display.maskDisplay)).contrlRect,
					 &controls.display.maskHugeRect,
					 &controls.display.maskLargeRect,
					 &controls.display.maskSmallRect,
					 &controls.display.maskMiniRect);
				 
	controlRect = (**controls.display.maskLabel).contrlRect;
	v = controlRect.top;
	MoveControl(controls.display.maskLabel, h, v);
	
	controlRect = ((**(controls.display.maskPopup)).contrlRect);
	h -= 2;
	v = controlRect.top;
	
	MoveControl(controls.display.maskPopup, h, v);
	
	ShowControl(controls.rootControl);
	
}

void icnsEditorClass::HandleGrow(Point where)
{
	Rect		growRect;
	long		growSize;
	int			hSize, vSize, delta;
	
	
	
	SetRect(&growRect,
		    kDefaultSizeRect.right,
		    kDefaultSizeRect.bottom,
		    kDefaultSizeRect.right + 48 * (kMaxMagnification - kMinMagnification),
		    kDefaultSizeRect.bottom + 48 * (kMaxMagnification - kMinMagnification));
	growSize = GrowWindow(window, where, &growRect);
	if (growSize != 0)
	{
		
		
		hSize = LoWord(growSize);
		vSize = HiWord(growSize);
		delta = (hSize - kDefaultSizeRect.right);
		if (delta > (vSize - kDefaultSizeRect.bottom))
			delta = (vSize - kDefaultSizeRect.bottom);
		if ((4  + ((delta + 47)/48)) != magnification)
		{
			magnification = 4  + ((delta + 47)/48);
			ResizeWindow();
		}
	}
}

void icnsEditorClass::ResizeWindow(void)
{
	int			hSize, vSize;
	RgnHandle	updateRgn;
	
	if (magnification > kMinMagnification)
		status |= canZoomOut;
	else
		status &= ~canZoomOut;
	
	if (magnification < kMaxMagnification)
		status |= canZoomIn;
	else
		status &= ~canZoomIn;
	
	SAVEGWORLD;
	SetPort(window);
	updateRgn = NewRgn();
	hSize = (magnification - 4) * 48 +  kDefaultSizeRect.right;
	vSize = (magnification - 4) * 48 + kDefaultSizeRect.bottom;
	CopyRgn(window->visRgn, updateRgn);
	InvalRgn(updateRgn);
	SizeWindow(window, hSize, vSize, true);
	CopyRgn(window->visRgn, updateRgn);
	InvalRgn(updateRgn);
	DisposeRgn(updateRgn);
	status |= resized;
	RESTOREGWORLD;
}

void icnsEditorClass::ZoomIn(void)
{
	if (magnification != kMaxMagnification)
	{
		magnification++;
		ResizeWindow();
	}
}

void icnsEditorClass::ZoomOut(void)
{
	if (magnification != kMinMagnification)
	{
		magnification--;
		ResizeWindow();
	}
}

void icnsEditorClass::HandleDrawing(void)
{	
	switch (currentTool)
	{
		case move :			HandleMove(); break;
		case marquee :		HandleMarquee(); break;
		case eraser :
		case pen :			HandlePen(); break;
		case fill :			HandleFilling(); break;
		case eyeDropper :	HandleEyeDropper(); break;
		case lasso : 		HandleLasso(); break;
		case magicWand :	HandleMagicWand(); break;
		case line : 		HandleLine(); break;
		case rectangle : 	HandleRectangle(); break;
	}
	
	if (currentTool != eyeDropper)
		currentState = new drawingStateClass(currentState, this);
	
	status |= needToSave;
	status |= needsUpdate;
}

void icnsEditorClass::HandleRectangle(void)
{
	int 		x1, y1, x2, y2;
	Rect		tempRect, currentBounds;
	Point		startMouse, currentMouse;
	OSStatus	err = noErr;
	SAVEGWORLD;
	
	currentBounds = (**currentPix).bounds;
	
	err = NewGWorld(&overlayGW, (**currentPix).pixelSize, &currentBounds, (**currentPix).pmTable, NULL, 0);
	if (err != noErr) {status != outOfMemory; return; }
	SetGWorld(overlayGW, NULL);
	EraseRect(&currentBounds);
	overlayPix = GetGWorldPixMap(overlayGW);
	LockPixels(overlayPix);
	
	GetClickPosition(&x1, &y1, false);
	GetMouse(&startMouse);
	
	while (Button())
	{
		GetClickPosition(&x2, &y2, false);
		GetMouse(&currentMouse);
		if (currentMouse.h != startMouse.h || currentMouse.v != startMouse.v)
		{
			SetRect(&tempRect, x1, y1, x2, y2);
			if (tempRect.left > tempRect.right)
			{
				tempRect.left = x2;
				tempRect.right = x1;
			}
			else
				tempRect.right++;
				
			if (tempRect.top > tempRect.bottom)
			{
				tempRect.top = y2;
				tempRect.bottom = y1;
			}
			else
				tempRect.bottom++;
			if (ISOPTIONDOWN)
			{
				currentBounds = (**currentPix).bounds;
				if (ISSHIFTDOWN)
				{
					if (abs(x2 - x1) > abs(y2 - y1))
						SetRect(&tempRect,
								x1 - abs(x2 - x1),
								y1 - abs(x2 - x1),
								x1 + abs(x2 - x1),
								y1 + abs(x2 - x1));
					else
						SetRect(&tempRect,
							x1 - abs(y2 - y1),
							y1 - abs(y2 - y1),
							x1 + abs(y2 - y1),
							y1 + abs(y2 - y1));
					if (tempRect.top < 0)
					{
						tempRect.bottom += tempRect.top;
						tempRect.right += tempRect.top;
						tempRect.left -= tempRect.top;
						tempRect.top = 0;
					}
					if (tempRect.left < 0)
					{
						tempRect.right += tempRect.left;
						tempRect.bottom += tempRect.left;
						tempRect.top -= tempRect.left;
						tempRect.left = 0;
					}
					if (tempRect.bottom > currentBounds.bottom)
					{
						tempRect.top += tempRect.bottom - currentBounds.bottom;
						tempRect.right -= tempRect.bottom - currentBounds.bottom;
						tempRect.left += tempRect.bottom - currentBounds.bottom;
						tempRect.bottom = currentBounds.bottom;
					}
					if (tempRect.right > currentBounds.right)
					{
						tempRect.left += tempRect.right - currentBounds.right;
						tempRect.bottom -= tempRect.right - currentBounds.right;
						tempRect.top += tempRect.right - currentBounds.right;
						tempRect.right = currentBounds.right;
					}
				}
				else
				{
					SetRect(&tempRect,
							x1 - abs(x2 - x1),
							y1 - abs(y2 - y1),
							x1 + abs(x2 - x1) + 1,
							y1 + abs(y2 - y1) + 1);
					if (tempRect.top < 0)
					{
						tempRect.bottom += tempRect.top;
						tempRect.top = 0;
					}
					if (tempRect.left < 0)
					{
						tempRect.right += tempRect.left;
						tempRect.left = 0;
					}
					if (tempRect.bottom > currentBounds.bottom)
					{
						tempRect.top += tempRect.bottom - currentBounds.bottom;
						tempRect.bottom = currentBounds.bottom;
					}
					if (tempRect.right > currentBounds.right)
					{
						tempRect.left += tempRect.right - currentBounds.right;
						tempRect.right = currentBounds.right;
					}
				}
			}
			else
			{
				if (ISSHIFTDOWN)
				{
					if ((tempRect.left == x1 && tempRect.top == y1))
						if ((tempRect.right - tempRect.left) > (tempRect.bottom - tempRect.top))
							tempRect.bottom = tempRect.top + (tempRect.right - tempRect.left);
						else
							tempRect.right = tempRect.left + (tempRect.bottom - tempRect.top);
					if ((tempRect.right == x1 && tempRect.top == y1))
						if ((tempRect.right - tempRect.left) > (tempRect.bottom - tempRect.top))
							tempRect.bottom = tempRect.top + (tempRect.right - tempRect.left);
						else
							tempRect.left = tempRect.right - (tempRect.bottom - tempRect.top);
					if ((tempRect.right == x1 && tempRect.bottom == y1))
						if ((tempRect.right - tempRect.left) > (tempRect.bottom - tempRect.top))
							tempRect.top = tempRect.bottom - (tempRect.right - tempRect.left);
						else
							tempRect.left = tempRect.right - (tempRect.bottom - tempRect.top);
					if ((tempRect.left == x1 && tempRect.bottom == y1))
						if ((tempRect.right - tempRect.left) > (tempRect.bottom - tempRect.top))
							tempRect.top = tempRect.bottom - (tempRect.right - tempRect.left);
						else
							tempRect.right = tempRect.left + (tempRect.bottom - tempRect.top);
				}
			}
				
			SetGWorld(overlayGW, NULL);
			EraseRect(&currentBounds);
			RGBForeColor(&foreColor);
			FrameRect(&tempRect);
		}
		RESTOREGWORLD;
		Display((**controls.iconEditWell).contrlRect, current);
	}
	
	SetGWorld(currentGW, NULL);
	RGBForeColor(&foreColor);
	FrameRect(&tempRect);
	
	UnlockPixels(overlayPix);
	DisposeGWorld(overlayGW);
	overlayPix = NULL;
	RESTOREGWORLD;
}

void icnsEditorClass::HandleLine(void)
{
	int			startX, startY, x, y;
	Rect		currentBounds;
	float		angle, constrainedAngle;
	OSStatus	err = noErr;
	SAVEGWORLD;
	
	currentBounds = (**currentPix).bounds;
	
	err = NewGWorld(&overlayGW, (**currentPix).pixelSize, &currentBounds, (**currentPix).pmTable, NULL, 0);
	if (err != noErr) {status != outOfMemory; return; }
	overlayPix = GetGWorldPixMap(overlayGW);
	LockPixels(overlayPix);
	SetGWorld(overlayGW, NULL);
	EraseRect(&currentBounds);
	
	GetClickPosition(&startX, &startY, false);
	
	while (Button())
	{
		RGBForeColor(&foreColor);
		EraseRect(&currentBounds);
		MoveTo(startX, startY);
		GetClickPosition(&x, &y, false);
		if (ISSHIFTDOWN)
		{
			angle = atan2((y - startY), (x - startX));
			constrainedAngle = ((int)(angle / kLineConstraintInterval)) * kLineConstraintInterval;
			if (abs(angle - constrainedAngle) > kLineConstraintInterval/2)
				if (angle < 0)
					constrainedAngle -= kLineConstraintInterval;
				else
					constrainedAngle += kLineConstraintInterval;
			if ((int)constrainedAngle == (int)(-pi/2) || (int)constrainedAngle == (int)(pi/2))
				x = startX;
			else if (constrainedAngle == 0 || (int)constrainedAngle == (int)(pi))
				y = startY;
			else
				y = rint(startY + (x - startX) * tan(constrainedAngle));
		}
		LineTo(x, y);
		ForeColor(blackColor);
		RESTOREGWORLD;
		Display((**controls.iconEditWell).contrlRect, current);
		SetGWorld(overlayGW, NULL);
	}
	
	RESTOREGWORLD;
	
	if (EmptyRgn(selectionRgn))
	{
		SetGWorld(currentGW, NULL);
		RGBForeColor(&foreColor);
		MoveTo(startX, startY);
		LineTo(x, y);
	}
	else if (status & selectionFloated)
	{
		SetGWorld(selectionGW, NULL);
		RGBForeColor(&foreColor);
		MoveTo(startX, startY);
		LineTo(x, y);
	}
	else
	{
		RgnHandle tempRgn;
		
		SetGWorld(currentGW, NULL);
		
		tempRgn = NewRgn();
		GetClip(tempRgn);
		
		RGBForeColor(&foreColor);
		SetClip(selectionRgn);
		MoveTo(startX, startY);
		LineTo(x, y);
		
		SetClip(tempRgn);
		DisposeRgn(tempRgn);
	}
	
	UnlockPixels(overlayPix);
	DisposeGWorld(overlayGW);
	overlayPix = NULL;
	RESTOREGWORLD;
}

void icnsEditorClass::HandleLasso(void)
{
	Rect			currentBounds;
	int				startX, startY, x, y, mode;
	GWorldPtr		tempGW;
	PixMapHandle	tempPix;
	RgnHandle		lassoSelectionRgn, tightenedRgn;
	OSStatus		err = noErr;
	SAVEGWORLD;
	
	if (ISSHIFTDOWN)
	{
		mode = additive;
	}
	else if (ISOPTIONDOWN)
	{
		mode = subtractive;
	}
	else
		mode = normal;
	
	lassoSelectionRgn = NewRgn();
	tightenedRgn = NewRgn();
		
	if ((status & selectionFloated) && (mode == normal || mode == additive))
		DefloatSelection();
	
	if (mode == normal)
		SetEmptyRgn(selectionRgn);
	
	currentBounds = (**currentPix).bounds;
	SetRect(&currentBounds,
			currentBounds.left * magnification,
			currentBounds.top * magnification,
			currentBounds.right * magnification,
			currentBounds.bottom * magnification);
	
	err = NewGWorld(&overlayGW, 1, &currentBounds, NULL, NULL, 0);
	if (err != noErr) {status != outOfMemory; return; }
	SetGWorld(overlayGW, NULL);
	EraseRect(&currentBounds);
	overlayPix = GetGWorldPixMap(overlayGW);
	LockPixels(overlayPix);
	
	GetClickPosition(&startX, &startY, true);
	MoveTo(startX, startY);
	while (Button())
	{
		GetClickPosition(&x, &y, true);
		LineTo(x, y);
		RESTOREGWORLD;
		Display((**controls.iconEditWell).contrlRect, current);
		SetGWorld(overlayGW, NULL);
	}
	LineTo(startX, startY);
	
	
	err = NewGWorld(&tempGW, 1, &currentBounds, NULL, NULL, 0);
	if (err != noErr) {status != outOfMemory; return; }
	SetGWorld(tempGW, NULL);
	EraseRect(&currentBounds);
	tempPix = GetGWorldPixMap(tempGW);
	LockPixels(tempPix);
	
	CalcMask((**overlayPix).baseAddr,
	         (**tempPix).baseAddr,
	         (**overlayPix).rowBytes & 0x3FFF,
	         (**tempPix).rowBytes & 0x3FFF,
	         (currentBounds.bottom - currentBounds.top),
	         ((**overlayPix).rowBytes & 0x3FFF)/2);
		
	BitMapToRegion(lassoSelectionRgn, (BitMap*)*tempPix);
	MapRgn(lassoSelectionRgn, &currentBounds, &(**currentPix).bounds);
	
	UnlockPixels(tempPix);
	UnlockPixels(selectionPix);
	UpdateGWorld(&tempGW, 1, &(**lassoSelectionRgn).rgnBBox, NULL, NULL, 0);
	UpdateGWorld(&selectionGW, (**currentPix).pixelSize, &(**lassoSelectionRgn).rgnBBox, (**currentPix).pmTable, NULL, 0);
	selectionPix = GetGWorldPixMap(selectionGW);
	tempPix = GetGWorldPixMap(tempGW);
	LockPixels(selectionPix);
	LockPixels(tempPix);
	
	SetGWorld(tempGW, NULL);
	EraseRect(&(**currentPix).bounds);
	
	SetEmptyRgn(selectionMagnifiedRgn);
	ColorSearchUPP lassoSearchUPP;
	
	lassoSearchUPP = NewColorSearchProc(LassoColorSearch);
	CalcCMask((BitMap*)*currentPix, (BitMap*)*tempPix, &(**lassoSelectionRgn).rgnBBox, &(**lassoSelectionRgn).rgnBBox , &backColor, lassoSearchUPP, 0);
	DisposeRoutineDescriptor(lassoSearchUPP);
	BitMapToRegion(tightenedRgn, (BitMap*)*tempPix);
	SectRgn(tightenedRgn, lassoSelectionRgn, lassoSelectionRgn);
	DisposeRgn(tightenedRgn);
	
	switch (mode)
	{
		case additive: UnionRgn(selectionRgn, lassoSelectionRgn, selectionRgn); break;
		case subtractive: DiffRgn(selectionRgn, lassoSelectionRgn, selectionRgn); break;
		case normal : CopyRgn(lassoSelectionRgn, selectionRgn); break;
	}
	DisposeRgn(lassoSelectionRgn);
	
	MagnifySelectionRgn();
	
	UnlockPixels(overlayPix);
	UnlockPixels(tempPix);
	DisposeGWorld(overlayGW);
	DisposeGWorld(tempGW);
	overlayPix = NULL;
	
	RESTOREGWORLD;
}

void icnsEditorClass::HandleMagicWand()
{
	GWorldPtr		selectionShapeGW;
	PixMapHandle	selectionShapePix;
	Rect			currentBounds;
	int				x, y;
	RGBColor		pixelUnder;
	int				mode;
	RgnHandle		tempRgn;
	OSStatus		err = noErr;
	SAVEGWORLD;
	
	if (ISSHIFTDOWN)
		mode = additive;
	else if (ISOPTIONDOWN)
		mode = subtractive;
	else
		mode = normal;
		
	tempRgn = NewRgn();
	
	if ((status & selectionFloated) && (mode == normal || mode == additive))
		DefloatSelection();	
	
	currentBounds = (**currentPix).bounds;

	err = NewGWorld(&selectionShapeGW, 1, &currentBounds, NULL, NULL, 0);
	if (err != noErr) {status != outOfMemory; return; }
	SetGWorld(selectionShapeGW, NULL);
	EraseRect(&currentBounds);
	selectionShapePix = GetGWorldPixMap(selectionShapeGW);
	LockPixels(selectionShapePix);
	
	GetClickPosition(&x, &y, false);
	
	if (!(status & selectionFloated))
	{
		SetGWorld(currentGW, NULL);
		GetCPixel(x, y, &pixelUnder);
		RGBForeColor(&pixelUnder);
		SeedCFill((BitMap*)*currentPix,
			  (BitMap*)*selectionShapePix,
			  &currentBounds,
			  &currentBounds,
			  x, y,
			  0,
			  0);
	}
	else
	{
		SetGWorld(selectionGW, NULL);
		GetCPixel(x, y, &pixelUnder);
		RGBForeColor(&pixelUnder);
		SeedCFill((BitMap*)*selectionPix,
			  (BitMap*)*selectionShapePix,
			  &currentBounds,
			  &currentBounds,
			  x, y,
			  0,
			  0);
	}
	
	BitMapToRegion(tempRgn, (BitMap*)*selectionShapePix); 
			  
	RESTOREGWORLD;
	switch (mode)
	{
		case normal: CopyRgn(tempRgn, selectionRgn); break;
		case additive : UnionRgn(tempRgn, selectionRgn, selectionRgn); break;
		case subtractive : DiffRgn(selectionRgn, tempRgn, selectionRgn); break;
	}
	DisposeRgn(tempRgn);
	MagnifySelectionRgn();
	
	UnlockPixels(selectionShapePix);
	DisposeGWorld(selectionShapeGW);
	
	
}

void icnsEditorClass::HandleMove(void)
{
	int		anchorX, anchorY, x, y, startX, startY;
	float	angle, constrainedAngle;
	SAVEGWORLD;
	
	if (!(status & selectionFloated))
		FloatSelection();
		
	if (ISOPTIONDOWN)
		CopyBits((BitMap*)*selectionPix, (BitMap*)*currentPix, &(**selectionPix).bounds, &(**selectionPix).bounds, srcCopy, selectionRgn);
	
	GetClickPosition(&anchorX, &anchorY, false);
	GetClickPosition(&startX, &startY, false);
	
	while (Button())
	{
		GetClickPosition(&x, &y, false);
		if (ISSHIFTDOWN)
		{
			angle = atan2((y - startY), (x - startX));
			constrainedAngle = ((int)(angle / kLineConstraintInterval)) * kLineConstraintInterval;
			if (abs(angle - constrainedAngle) > kLineConstraintInterval/2)
				if (angle < 0)
					constrainedAngle -= kLineConstraintInterval;
				else
					constrainedAngle += kLineConstraintInterval;
			if ((int)constrainedAngle == (int)(-pi/2) || (int)constrainedAngle == (int)(pi/2))
				x = startX;
			else if (constrainedAngle == 0 || (int)constrainedAngle == (int)(pi))
				y = startY;
			else
				y = rint(startY + (x - startX) * tan(constrainedAngle));
		}
		OffsetRgn(selectionRgn, x - anchorX, y - anchorY);
		OffsetRgn(selectionMagnifiedRgn, (x - anchorX) * magnification, (y - anchorY) * magnification);
		SetGWorld(selectionGW, NULL);
		OffsetRect(&(**selectionPix).bounds, x - anchorX, y - anchorY);
		OffsetRgn(selectionGW->visRgn, x - anchorX, y - anchorY);
		
		RESTOREGWORLD;
		Display((**controls.iconEditWell).contrlRect, current);
		
		anchorX = x;
		anchorY = y;
	}
	
}

void icnsEditorClass::FloatSelection(void)
{
	SAVEGWORLD;
	UnlockPixels(selectionPix);
	UpdateGWorld(&selectionGW, (**currentPix).pixelSize, &(**selectionRgn).rgnBBox, (**currentPix).pmTable, NULL, 0);
	selectionPix = GetGWorldPixMap(selectionGW);
	LockPixels(selectionPix);
	
	CopyBits((BitMap*)*currentPix,
			 (BitMap*)*selectionPix,
			 &(**selectionRgn).rgnBBox,
			 &(**selectionRgn).rgnBBox,
			 srcCopy,
			 selectionRgn);
			 
	SetGWorld(currentGW, NULL);
	RGBBackColor(&backColor);
	EraseRgn(selectionRgn);
	RESTOREGWORLD;
	status |= selectionFloated;
}

void icnsEditorClass::DefloatSelection(void)
{
	SAVECOLORS;
	CopyBits((BitMap*)*selectionPix,
			 (BitMap*)*currentPix,
			 &(**currentPix).bounds,
			 &(**currentPix).bounds,
			 srcCopy,
			 selectionRgn);
	
	OffsetRect(&(**selectionPix).bounds, -(**selectionPix).bounds.left, -(**selectionPix).bounds.top);
	//SetGWorld(selectionGW, NULL);
	//EraseRect(&(**selectionPix).bounds);
	RESTORECOLORS;
	
	status -= selectionFloated;
}

void icnsEditorClass::HandleMarquee(void)
{
	int 		x1, y1, x2, y2;
	Rect		tempRect, currentBounds;
	Point		startMouse, currentMouse;
	RgnHandle	savedRgn;
	int			mode;
	bool		optionKeyOriginallyDown = false, shiftKeyOriginallyDown = false;
	
		
	if (ISSHIFTDOWN)
	{
		mode = additive;
		shiftKeyOriginallyDown = true;
	}
	else if (ISOPTIONDOWN)
	{
		mode = subtractive;
		optionKeyOriginallyDown = true;
	}
	else
		mode = normal;
	
	if (mode == additive || mode == subtractive)
	{
		savedRgn = NewRgn();
		CopyRgn(selectionRgn, savedRgn);
	}
	
	if ((status & selectionFloated) && (mode == normal || mode == additive))
		DefloatSelection();
	
	GetClickPosition(&x1, &y1, false);
	GetMouse(&startMouse);
	
	while (Button())
	{
		GetClickPosition(&x2, &y2, false);
		GetMouse(&currentMouse);
		if (currentMouse.h != startMouse.h || currentMouse.v != startMouse.v)
		{
			SetRect(&tempRect, x1, y1, x2, y2);
			if (tempRect.left > tempRect.right)
			{
				tempRect.left = x2;
				tempRect.right = x1;
			}
			else
				tempRect.right++;
				
			if (tempRect.top > tempRect.bottom)
			{
				tempRect.top = y2;
				tempRect.bottom = y1;
			}
			else
				tempRect.bottom++;
			if (!ISOPTIONDOWN) optionKeyOriginallyDown = false;
			if (!ISSHIFTDOWN) shiftKeyOriginallyDown = false;
			if (ISOPTIONDOWN && !optionKeyOriginallyDown)
			{
				currentBounds = (**currentPix).bounds;
				if (ISSHIFTDOWN && !shiftKeyOriginallyDown)
				{
					if (abs(x2 - x1) > abs(y2 - y1))
						SetRect(&tempRect,
								x1 - abs(x2 - x1),
								y1 - abs(x2 - x1),
								x1 + abs(x2 - x1),
								y1 + abs(x2 - x1));
					else
						SetRect(&tempRect,
							x1 - abs(y2 - y1),
							y1 - abs(y2 - y1),
							x1 + abs(y2 - y1),
							y1 + abs(y2 - y1));
					if (tempRect.top < 0)
					{
						tempRect.bottom += tempRect.top;
						tempRect.right += tempRect.top;
						tempRect.left -= tempRect.top;
						tempRect.top = 0;
					}
					if (tempRect.left < 0)
					{
						tempRect.right += tempRect.left;
						tempRect.bottom += tempRect.left;
						tempRect.top -= tempRect.left;
						tempRect.left = 0;
					}
					if (tempRect.bottom > currentBounds.bottom)
					{
						tempRect.top += tempRect.bottom - currentBounds.bottom;
						tempRect.right -= tempRect.bottom - currentBounds.bottom;
						tempRect.left += tempRect.bottom - currentBounds.bottom;
						tempRect.bottom = currentBounds.bottom;
					}
					if (tempRect.right > currentBounds.right)
					{
						tempRect.left += tempRect.right - currentBounds.right;
						tempRect.bottom -= tempRect.right - currentBounds.right;
						tempRect.top += tempRect.right - currentBounds.right;
						tempRect.right = currentBounds.right;
					}
				}
				else
				{
					SetRect(&tempRect,
							x1 - abs(x2 - x1),
							y1 - abs(y2 - y1),
							x1 + abs(x2 - x1) + 1,
							y1 + abs(y2 - y1) + 1);
					if (tempRect.top < 0)
					{
						tempRect.bottom += tempRect.top;
						tempRect.top = 0;
					}
					if (tempRect.left < 0)
					{
						tempRect.right += tempRect.left;
						tempRect.left = 0;
					}
					if (tempRect.bottom > currentBounds.bottom)
					{
						tempRect.top += tempRect.bottom - currentBounds.bottom;
						tempRect.bottom = currentBounds.bottom;
					}
					if (tempRect.right > currentBounds.right)
					{
						tempRect.left += tempRect.right - currentBounds.right;
						tempRect.right = currentBounds.right;
					}
				}
			}
			else
			{
				if (ISSHIFTDOWN && !shiftKeyOriginallyDown)
				{
					if ((tempRect.left == x1 && tempRect.top == y1))
						if ((tempRect.right - tempRect.left) > (tempRect.bottom - tempRect.top))
							tempRect.bottom = tempRect.top + (tempRect.right - tempRect.left);
						else
							tempRect.right = tempRect.left + (tempRect.bottom - tempRect.top);
					if ((tempRect.right == x1 && tempRect.top == y1))
						if ((tempRect.right - tempRect.left) > (tempRect.bottom - tempRect.top))
							tempRect.bottom = tempRect.top + (tempRect.right - tempRect.left);
						else
							tempRect.left = tempRect.right - (tempRect.bottom - tempRect.top);
					if ((tempRect.right == x1 && tempRect.bottom == y1))
						if ((tempRect.right - tempRect.left) > (tempRect.bottom - tempRect.top))
							tempRect.top = tempRect.bottom - (tempRect.right - tempRect.left);
						else
							tempRect.left = tempRect.right - (tempRect.bottom - tempRect.top);
					if ((tempRect.left == x1 && tempRect.bottom == y1))
						if ((tempRect.right - tempRect.left) > (tempRect.bottom - tempRect.top))
							tempRect.top = tempRect.bottom - (tempRect.right - tempRect.left);
						else
							tempRect.right = tempRect.left + (tempRect.bottom - tempRect.top);
				}
			}
				
			RectRgn(selectionRgn, &tempRect);
			if (mode == additive)
			{
				UnionRgn(selectionRgn, savedRgn, selectionRgn);
				//DisposeRgn(savedRgn);
			}
			else if (mode == subtractive)
			{
				DiffRgn(savedRgn, selectionRgn, selectionRgn);
				//DisposeRgn(savedRgn);
			}
			MagnifySelectionRgn();
		}
		else if (mode == normal)
			SetEmptyRgn(selectionRgn);
		
		Display((**controls.iconEditWell).contrlRect, current);
	}	
}

void icnsEditorClass::MagnifySelectionRgn(void)
{
	Rect		tempRect;
	
	if (EmptyRgn(selectionRgn))
		return;
	
	tempRect = (**selectionRgn).rgnBBox;
	
	SetRect(&tempRect,
			tempRect.left * magnification,
			tempRect.top * magnification,
			tempRect.right * magnification,
			tempRect.bottom * magnification);
	CopyRgn(selectionRgn, selectionMagnifiedRgn);
	MapRgn(selectionMagnifiedRgn, &(**selectionRgn).rgnBBox, &tempRect);
}

void icnsEditorClass::HandleFilling()
{
	GWorldPtr		fillShapeGW, colorGW;
	PixMapHandle	fillShapePix, colorPix;
	Rect			currentBounds;
	int				x, y;
	RGBColor		pixelUnder;
	GWorldPtr		targetGW;
	PixMapHandle	targetPix;
	OSStatus		err = noErr;
	
	SAVEGWORLD;
	
	GetClickPosition(&x, &y, false);	
	
	if (!(EmptyRgn(selectionRgn)))
	{
		Point	tempPoint;
		tempPoint.h = x;
		tempPoint.v = y;
		if (!PtInRgn(tempPoint, selectionRgn))
		{
			RESTOREGWORLD;
			return;
		}
		
		if (status & selectionFloated)
		{
			targetGW = selectionGW;
			targetPix = selectionPix;
		}
		else
		{
			targetGW = currentGW;
			targetPix = currentPix;
		}
	}
	else
	{
		targetGW = currentGW;
		targetPix = currentPix;
	}
	
	currentBounds = (**targetPix).bounds;
	
	err = NewGWorld(&colorGW, (**currentPix).pixelSize, &currentBounds, (**currentPix).pmTable, NULL, 0);
	if (err != noErr) {status != outOfMemory; return; }
	SetGWorld(colorGW, NULL);
	RGBForeColor(&foreColor);
	PaintRect(&currentBounds);
	ForeColor(blackColor);
	colorPix = GetGWorldPixMap(colorGW);
	LockPixels(colorPix);
	
	err = NewGWorld(&fillShapeGW, 1, &currentBounds, NULL, NULL, 0);
	if (err != noErr) {status != outOfMemory; return; }
	SetGWorld(fillShapeGW, NULL);
	EraseRect(&currentBounds);
	fillShapePix = GetGWorldPixMap(fillShapeGW);
	LockPixels(fillShapePix);
	
	SetGWorld(targetGW, NULL);
	GetCPixel(x, y, &pixelUnder);
	
	RGBForeColor(&pixelUnder);
	
	SeedCFill((BitMap*)*targetPix,
			  (BitMap*)*fillShapePix,
			  &currentBounds,
			  &currentBounds,
			  x, y,
			  0,
			  0);
	
	if (targetPix == currentPix && !(EmptyRgn(selectionRgn)))
	{
		SetGWorld(fillShapeGW, NULL);
		Select(inverse);
		EraseRgn(selectionRgn);
		Select(inverse);
	}
			  
	ForeColor(blackColor);
	
	CopyMask((BitMap*)*colorPix,
			 (BitMap*)*fillShapePix,
		     (BitMap*)*targetPix,
		     &currentBounds,
		     &currentBounds,
		     &currentBounds
		     );
	
	
	UnlockPixels(fillShapePix);
	UnlockPixels(colorPix);
	DisposeGWorld(fillShapeGW);
	DisposeGWorld(colorGW);
	
	RESTOREGWORLD;
}

void icnsEditorClass::HandleEyeDropper(void)
{
	int x, y;
	SAVEGWORLD;
	
	GetClickPosition(&x, &y, false);
	SetGWorld(currentGW, NULL);
	GetCPixel(x, y, &foreColor);
	RESTOREGWORLD;
	Draw1Control(controls.foreBackColors);
}

void icnsEditorClass::HandlePen(void)
{
	register Point		mousePosition, oldMouse = {-1, -1};
	Rect				displayRect;
	register int 		x, y, oldX = -1, oldY = -1;
	int					i=0;
	GWorldPtr			targetGW;
	PixMapHandle		targetPix;
	RgnHandle			savedClip = NULL;
	
	SAVEGWORLD;
	
	if (status & selectionFloated)
	{
		targetGW = selectionGW;
		targetPix = selectionPix;
	}
	else
	{
		if (!EmptyRgn(selectionRgn))
		{
			SetGWorld(currentGW, NULL);
			savedClip = NewRgn();
			GetClip(savedClip);
			SetClip(selectionRgn);
			RESTOREGWORLD;
		}
		targetGW = currentGW;
		targetPix = currentPix;
	}
	
	displayRect = (**(controls.iconEditWell)).contrlRect;

	GetClickPosition(&oldX, &oldY, false);
	SetGWorld(targetGW, NULL);
	if (currentTool == pen)
		RGBForeColor(&foreColor);
	else if (currentTool == eraser)
		RGBForeColor(&backColor);
	//if (savedClip != NULL) SetClip(selectionRgn);
	MoveTo(oldX, oldY);
	LineTo(oldX, oldY);
	//if (savedClip != NULL) SetClip(savedClip);
	RESTOREGWORLD;
	Display(displayRect, current);
	SetGWorld(targetGW, NULL);
	
	while (Button())
	{
		GetMouse(&mousePosition);
		if (mousePosition.h != oldMouse.h || mousePosition.v != oldMouse.v)
		{
			oldMouse = mousePosition;
			RESTOREGWORLD;
			GetClickPosition(&x, &y, false);
			SetGWorld(targetGW, NULL);
	
			if (x != oldX || y != oldY)
			{
				//if (savedClip != NULL) SetClip(selectionRgn);
				LineTo(x, y);
				//if (savedClip != NULL) SetClip(savedClip);
				RESTOREGWORLD;
				Display(displayRect, current);
				SetGWorld(targetGW, NULL);
				
				oldX = x;
				oldY = y;
			}
		}
	}
	//SetGWorld(targetGW, NULL);
	if (savedClip != NULL) SetClip(savedClip);
	
	RESTOREGWORLD;
}

inline void icnsEditorClass::GetClickPosition(int *x, int *y, bool magnified)
{
	Point	mousePosition;
	Rect	displayRect, boundsRect;
	long	returnedPoint;
	
	SAVEGWORLD;
	
	SetPort(window);
	GetMouse(&mousePosition);
	
	displayRect = (**(controls.iconEditWell)).contrlRect;
	boundsRect = (**currentPix).bounds;
	
	mousePosition.h = mousePosition.h  - displayRect.left;
	mousePosition.v = mousePosition.v - displayRect.top;
	if (magnified)
	{
		SetRect(&boundsRect, boundsRect.left * magnification, boundsRect.top * magnification, boundsRect.right * magnification, boundsRect.bottom * magnification);
		returnedPoint = PinRect(&boundsRect, mousePosition);
	}
	else
	{
		mousePosition.h = mousePosition.h/magnification;
		mousePosition.v = mousePosition.v/magnification;
		returnedPoint = PinRect(&boundsRect, mousePosition);
	}
	*x = LoWord(returnedPoint);
	*y = HiWord(returnedPoint);
	
	RESTOREGWORLD;
}

void icnsEditorClass::ExchangeForeBackColors(void)
{
	RGBColor tempColor;
	
	tempColor = foreColor;
	foreColor = backColor;
	backColor = tempColor;
	
	Draw1Control(controls.foreBackColors);
}

void icnsEditorClass::Display(Rect targetRect, long source)
{
	Rect			tempRect;
	GWorldPtr		iconGW, maskGW;
	PixMapHandle	iconPix, maskPix, iconSrcPix = NULL, maskSrcPix = NULL;
	long			iconName, maskName;
	OSStatus		err = noErr;
	SAVECOLORS;
	
	tempRect = targetRect;
	OffsetRect(&tempRect, -tempRect.left, -tempRect.top);

	switch (source)
	{
		case current:
			CopyBits((BitMap *)*currentPix,
					 (BitMap *)*statics.canvasPix,
					 &((**currentPix).bounds),
					 &tempRect,
					 srcCopy,
					 NULL);
					 
			
			if (overlayPix != NULL)
			{
				RgnHandle	maskRgn;
				
				if (EmptyRgn(selectionRgn) || ((**overlayPix).bounds.right > (**currentPix).bounds.right))
					maskRgn = NULL;
				else
					maskRgn = selectionMagnifiedRgn;
					
				CopyBits((BitMap *)*overlayPix,
						 (BitMap *)*statics.canvasPix,
						 &(**overlayPix).bounds,
						 &tempRect,
						 transparent,
						 maskRgn);
			}
			break;
		case il32:
			CopyBits((BitMap *)*il32Pix,(BitMap *)*statics.canvasPix,&largeIconRect,&tempRect,srcCopy,NULL);		 
			break;
		case is32:
			CopyBits((BitMap *)*is32Pix,(BitMap *)*statics.canvasPix,&smallIconRect,&tempRect,srcCopy,NULL);		 
			break;
		case l8mk:
			CopyBits((BitMap *)*l8mkPix,(BitMap *)*statics.canvasPix,&largeIconRect,&tempRect,srcCopy,NULL);		 
			break;
		case s8mk:
			CopyBits((BitMap *)*s8mkPix,(BitMap *)*statics.canvasPix,&smallIconRect,&tempRect,srcCopy,NULL);		 
			break;
		case icl8:
			CopyBits((BitMap *)*icl8Pix,(BitMap *)*statics.canvasPix,&largeIconRect,&tempRect,srcCopy,NULL);		 
			break;
		case ics8:
			CopyBits((BitMap *)*ics8Pix,(BitMap *)*statics.canvasPix,&smallIconRect,&tempRect,srcCopy,NULL);		 
			break;
		case icl4:
			CopyBits((BitMap *)*icl4Pix,(BitMap *)*statics.canvasPix,&largeIconRect,&tempRect,srcCopy,NULL);		 
			break;
		case ics4:
			CopyBits((BitMap *)*ics4Pix,(BitMap *)*statics.canvasPix,&smallIconRect,&tempRect,srcCopy,NULL);		 
			break;
		case icni:
			CopyBits((BitMap *)*icniPix,(BitMap *)*statics.canvasPix,&largeIconRect,&tempRect,srcCopy,NULL);		 
			break;
		case icsi:
			CopyBits((BitMap *)*icsiPix,(BitMap *)*statics.canvasPix,&smallIconRect,&tempRect,srcCopy,NULL);		 
			break;
		case icnm:
			CopyBits((BitMap *)*icnmPix,(BitMap *)*statics.canvasPix,&largeIconRect,&tempRect,srcCopy,NULL);		 
			break;
		case icsm:
			CopyBits((BitMap *)*icsmPix,(BitMap *)*statics.canvasPix,&smallIconRect,&tempRect,srcCopy,NULL);		 
			break;
		case ih32:
			CopyBits((BitMap *)*ih32Pix,(BitMap *)*statics.canvasPix,&hugeIconRect,&tempRect,srcCopy,NULL);		 
			break;
		case h8mk:
			CopyBits((BitMap *)*h8mkPix,(BitMap *)*statics.canvasPix,&hugeIconRect,&tempRect,srcCopy,NULL);		 
			break;
		case ichi:
			CopyBits((BitMap *)*ichiPix,(BitMap *)*statics.canvasPix,&hugeIconRect,&tempRect,srcCopy,NULL);		 
			break;
		case ichm:
			CopyBits((BitMap *)*ichmPix,(BitMap *)*statics.canvasPix,&hugeIconRect,&tempRect,srcCopy,NULL);		 
			break;
		case ich8:
			CopyBits((BitMap *)*ich8Pix,(BitMap *)*statics.canvasPix,&hugeIconRect,&tempRect,srcCopy,NULL);		 
			break;
		case ich4:
			CopyBits((BitMap *)*ich4Pix,(BitMap *)*statics.canvasPix,&hugeIconRect,&tempRect,srcCopy,NULL);		 
			break;
		default:
			if (source & ih32) iconSrcPix = ih32Pix, iconName = ih32;
			else if (source & il32) iconSrcPix = il32Pix, iconName = il32;
			else if (source & is32) iconSrcPix = is32Pix, iconName = is32;
			else if (source & ich8) iconSrcPix = ich8Pix, iconName = ich8;
			else if (source & icl8) iconSrcPix = icl8Pix, iconName = icl8;
			else if (source & ics8) iconSrcPix = ics8Pix, iconName = ics8;
			else if (source & ich4) iconSrcPix = ich4Pix, iconName = ics4;
			else if (source & icl4) iconSrcPix = icl4Pix, iconName = ics4;
			else if (source & ics4) iconSrcPix = ics4Pix, iconName = ics4;
			else if (source & ichi) iconSrcPix = ichiPix, iconName = ichi;
			else if (source & icni) iconSrcPix = icniPix, iconName = icni;
			else if (source & icsi) iconSrcPix = icsiPix, iconName = icsi;
			
			if (source & h8mk) maskSrcPix = h8mkPix, maskName = h8mk;
			else if (source & l8mk) maskSrcPix = l8mkPix, maskName = l8mk;
			else if (source & s8mk) maskSrcPix = s8mkPix, maskName = s8mk;
			else if (source & ichm) maskSrcPix = ichmPix, maskName = ichm;
			else if (source & icnm) maskSrcPix = icnmPix, maskName = icnm;
			else if (source & icsm) maskSrcPix = icsmPix, maskName = icsm;
			
			CopyBits(&qd.thePort->portBits,
					 (BitMap*)*statics.canvasPix,
					 &targetRect,
					 &tempRect,
					 srcCopy,
					 NULL);
			
			if (!EmptyRgn(selectionRgn))
			{
				err = NewGWorld(&iconGW, (**iconSrcPix).pixelSize, &(**iconSrcPix).bounds, (**iconSrcPix).pmTable, NULL, 0);
				if (err != noErr) {status != outOfMemory; return; }
				iconPix = GetGWorldPixMap(iconGW);
				LockPixels(iconPix);
				CopyBits((BitMap*)*iconSrcPix, (BitMap*)*iconPix, &(**iconSrcPix).bounds, &(**iconPix).bounds, srcCopy, NULL);
				DrawSelection(iconGW, (**iconPix).bounds, iconName);
				
				err = NewGWorld(&maskGW, (**maskSrcPix).pixelSize, &(**maskSrcPix).bounds, (**maskSrcPix).pmTable, NULL, 0);
				if (err != noErr) {status != outOfMemory; return; }
				maskPix = GetGWorldPixMap(maskGW);
				LockPixels(maskPix);
				CopyBits((BitMap*)*maskSrcPix, (BitMap*)*maskPix, &(**maskSrcPix).bounds, &(**maskPix).bounds, srcCopy, NULL);
				DrawSelection(maskGW, (**maskPix).bounds, maskName);
				
				CopyDeepMask((BitMap*)*iconPix,
							 (BitMap*)*maskPix,
							 (BitMap*)*statics.canvasPix,
							 &(**iconPix).bounds,
							 &(**maskPix).bounds,
							 &tempRect,
							 srcCopy,
							 NULL);
							 
				UnlockPixels(iconPix);
				DisposeGWorld(iconGW);
				UnlockPixels(maskPix);
				DisposeGWorld(maskGW);
			}
			else
				CopyDeepMask((BitMap*)*iconSrcPix,
							 (BitMap*)*maskSrcPix,
							 (BitMap*)*statics.canvasPix,
							 &(**iconSrcPix).bounds,
							 &(**maskSrcPix).bounds,
							 &tempRect,
							 srcCopy,
							 NULL);
			break;
			
	}
	
	if (!EmptyRgn(selectionRgn) && (iconSrcPix == NULL || maskSrcPix == NULL))
		DrawSelection(statics.canvasGW, tempRect, source);
	
	CopyBits((BitMap *)*statics.canvasPix,
			 &qd.thePort->portBits,
			 &tempRect,
			 &targetRect,
			 srcCopy,
			 window->visRgn);
	
	RESTORECOLORS;
}

void icnsEditorClass::DrawSelection(GWorldPtr targetGW, Rect targetRect,  int source)
{
	RgnHandle	tempRgn;
	SAVEGWORLD;
	
	if (source == current)
	{
		tempRgn = NewRgn();
		CopyRgn(selectionMagnifiedRgn, tempRgn);
		InsetRgn(tempRgn, 1, 1);
		DiffRgn(selectionMagnifiedRgn, tempRgn, tempRgn);
		
		if (LMGetTicks() > lastSelectionTicks + 2)
		{
			lastSelectionTicks = LMGetTicks();
			currentSelectionPattern++;
		}
		
		if (kNoOfSelectionPatterns <= currentSelectionPattern) currentSelectionPattern = 0;
		
		SetGWorld(targetGW, NULL);
		ForeColor(blackColor);
		
		if ((status & selectionFloated))
		{
			CopyBits((BitMap*)*selectionPix,
					 (BitMap*)*targetGW->portPixMap,
					 &(**currentPix).bounds,
					 &targetRect,
					 srcCopy,
					 selectionMagnifiedRgn);
		}
		
		FillRgn(tempRgn, &statics.selectionPatterns[currentSelectionPattern]);
		
		DisposeRgn(tempRgn);
	}
	else if ((source & currentPixName) && (status & selectionFloated))
			CopyBits((BitMap*)*selectionPix,
					 (BitMap*)*targetGW->portPixMap,
					 &(**currentPix).bounds,
					 &targetRect,
					 srcCopy,
					 selectionRgn);
					 
	RESTOREGWORLD;
}

void icnsEditorClass::LoadFromFile(FSSpec srcSpec)
{
	short srcFile, oldFile;
	Str255	windowTitle;
	
	oldFile = CurResFile();
	srcFile = FSpOpenResFile(&srcSpec, fsRdPerm);
	UseResFile(srcFile);
	Load();
	CloseResFile(srcFile);
	UseResFile(oldFile);
	
	fileSpec = srcSpec;
	
	delete currentState;
	
	currentState = new drawingStateClass(NULL, this);
	
	CopyString(windowTitle, "\p");
	AppendString(windowTitle, fileSpec.name);
	AppendString(windowTitle, "\p: ");
	AppendString(windowTitle, name);
	
	SetWTitle(window, windowTitle);
}

void icnsEditorClass::Save(void)
{
	if (fileSpec.vRefNum != 0 && fileSpec.parID != 0)
		SaveToFile(fileSpec, false, true);
	else
	{
		NewFile("\pSave Icon:", "\pUntitled Icon", "\pIcon Mangler", 'RSED', 'rsrc', &fileSpec);
		FSpDelete(&fileSpec);
		FSpCreate(&fileSpec, 'RSED', 'rsrc', 0); /*smRoman = 0*/
		FSpCreateResFile(&fileSpec, 'RSED', 'rsrc', 0); /*smRoman = 0*/
		SaveToFile(fileSpec, false, true);
	}
	
	status &= ~needToSave;
}

void icnsEditorClass::SaveAs(void)
{
	fileSpec.vRefNum = 0;
	fileSpec.parID = 0;
	Save();
}

void icnsEditorClass::HandleKeyDown(EventRecord *eventPtr)
{
	char	theKey;
	int		xOffset = 0, yOffset = 0;
	
	theKey = eventPtr->message & charCodeMask;
	
	switch (theKey)
	{
		case 'n': currentTool = pen; break;
		case 'e': currentTool = eraser; break;
		case 'i': currentTool = eyeDropper; break;
		case 'k': currentTool = fill; break;
		case 'm': currentTool = marquee; break;
		case 'v': currentTool = move; break;
		case 'l': currentTool = lasso; break;
		case 'w': currentTool = magicWand; break;
		case 'y': currentTool = line; break;
		case 'r': currentTool = rectangle; break;
		case 'x': ExchangeForeBackColors(); break;
		case kDeleteKey :
			if ((eventPtr->modifiers & optionKey) != 0)
				Fill();
			else
				Clear();
			break;
		case kUpArrowCharCode : xOffset = 0; yOffset = -1; break;
		case kDownArrowCharCode : xOffset = 0; yOffset = 1; break;
		case kLeftArrowCharCode : xOffset = -1; yOffset = 0; break;
		case kRightArrowCharCode : xOffset = 1; yOffset = 0; break;
	}
	UpdateToolbar();
	
	if ((xOffset != 0 || yOffset != 0) && !EmptyRgn(selectionRgn))
	{
		if ( (eventPtr->modifiers & shiftKey) != 0)
		{
			xOffset *= 10;
			yOffset *= 10;
		}
		
		if (currentTool == move || (currentTool == marquee && (status & selectionFloated)))
		{
			if (!(status & selectionFloated))
				FloatSelection();
			if ( (eventPtr->modifiers & optionKey) != 0)
				CopyBits((BitMap*)*selectionPix, (BitMap*)*currentPix, &(**selectionPix).bounds, &(**selectionPix).bounds, srcCopy, selectionRgn);
			OffsetRgn(selectionRgn, xOffset, yOffset);
			OffsetRgn(selectionMagnifiedRgn, xOffset * magnification, yOffset * magnification);
			OffsetRect(&(**selectionPix).bounds, xOffset, yOffset);
		}
		else if (currentTool == marquee)
		{
			OffsetRgn(selectionRgn, xOffset, yOffset);
			OffsetRgn(selectionMagnifiedRgn, xOffset * magnification, yOffset * magnification);
		}
		
		currentState = new drawingStateClass(currentState, this);
		
		status |= needToSave;
		status |= needsUpdate;
	}
}

void icnsEditorClass::Undo()
{
	if (status & canUndo)
	{
		currentState = currentState->previousState;
		currentState->RestoreState(this);
		
		MagnifySelectionRgn();
		status |= needsUpdate;
	}
}

void icnsEditorClass::Redo()
{
	if (status & canRedo)
	{
		currentState = currentState->nextState;
		currentState->RestoreState(this);
		
		MagnifySelectionRgn();
		status |= needsUpdate;
	}
}

void icnsEditorClass::Cut()
{
	SAVEGWORLD;
	Copy();
	if (!(status & selectionFloated))
	{
		SetGWorld(currentGW, NULL);
		RGBBackColor(&backColor);
		EraseRgn(selectionRgn);
	}
	
	SetGWorld(selectionGW, NULL);
	EraseRect(&(**selectionRgn).rgnBBox);
	OffsetRect(&(**selectionPix).bounds, -(**selectionPix).bounds.left, -(**selectionPix).bounds.top);
	SetEmptyRgn(selectionRgn);
	//SetEmptyRgn(selectionMagnifiedRgn);
	
	RESTOREGWORLD;
	
	currentState = new drawingStateClass(currentState, this);
	
	status |= needToSave;
	status |= needsUpdate;
}

void icnsEditorClass::Copy()
{
	int				picSize;
	Rect			clipboardRect;
	PicHandle		pic;
	OpenCPicParams	picParams;
	OSStatus		err;
	SAVEGWORLD;
	
	clipboardRect = (**selectionRgn).rgnBBox;
	
	picParams.srcRect = clipboardRect;
	picParams.hRes =  0x00480000;
	picParams.vRes =  0x00480000;
	picParams.version = -2;
	picParams.reserved1 = 0;
	picParams.reserved2 = 0;
	
	pic = OpenCPicture(&picParams);
	ClipRect(&clipboardRect);
	ForeColor(blackColor);
	BackColor(whiteColor);
	if ((status & selectionFloated))
		CopyBits((BitMap*)*selectionPix, &qd.thePort->portBits, &clipboardRect, &clipboardRect, srcCopy, selectionRgn);
	else
		CopyBits((BitMap*)*currentPix, &qd.thePort->portBits, &clipboardRect, &clipboardRect, srcCopy, selectionRgn);
	ClosePicture();
	ZeroScrap();
	picSize = GetHandleSize((Handle)pic);
	
	err = PutScrap(picSize, 'PICT', *pic);
	if (err != noErr)
		DisplayValue(err);
	
	DisposeHandle((Handle)pic);
	RESTOREGWORLD;
}

void icnsEditorClass::Paste()
{
	PicHandle		clipPicture;
	long			offset, picSize;
	//SAVEGWORLD;
	
	picSize = GetScrap(NULL,'PICT',&offset);
	if(picSize > 0)
	{
		clipPicture = (PicHandle)NewHandle(picSize);	
		HLock((Handle)clipPicture);

		picSize = GetScrap((Handle)clipPicture,'PICT',&offset);
		InsertFromPicture(clipPicture, currentGW, false);
	
		currentState = new drawingStateClass(currentState, this);
	
		status |= needToSave;
		status |= needsUpdate;
		
		DisposeHandle((Handle)clipPicture);
	}
}

void icnsEditorClass::InsertFromPicture(PicHandle srcPic, GWorldPtr targetGW, bool scale)
{
	Rect			picRect, currentBounds;
	PixMapHandle	targetPix;
	RgnHandle		tempRgn, oldClip;
	SAVEGWORLD;
	
	if (scale)
		picRect = targetGW->portRect;
	else
		picRect = (**srcPic).picFrame;
	OffsetRect(&picRect, -picRect.left, -picRect.top);
	if (targetGW == currentGW)
	{
		if ((status & selectionFloated))
			DefloatSelection();
		status |= selectionFloated;
		currentBounds = (**currentPix).bounds;
		OffsetRect(&picRect, (currentBounds.right - picRect.right)/2, (currentBounds.bottom - picRect.bottom)/2);
		
		PictureToRegion(srcPic, picRect, selectionRgn);
		MagnifySelectionRgn();
		
		UnlockPixels(selectionPix);
		UpdateGWorld(&selectionGW, (**currentPix).pixelSize, &picRect, (**currentPix).pmTable, NULL, 0);
		selectionPix = GetGWorldPixMap(selectionGW);
		LockPixels(selectionPix);
		
		SetGWorld(selectionGW, NULL);
		EraseRect(&picRect);
		DrawPicture(srcPic, &picRect);

		currentTool = move;
		UpdateToolbar();
	}
	else
	{
		targetPix = GetGWorldPixMap(targetGW);
		currentBounds = (**targetPix).bounds;
		OffsetRect(&picRect, (currentBounds.right - picRect.right)/2, (currentBounds.bottom - picRect.bottom)/2);
		tempRgn = NewRgn();
		oldClip = NewRgn();
		PictureToRegion(srcPic, picRect, tempRgn);
		
		SetGWorld(targetGW, NULL);
		GetClip(oldClip);
		SetClip(tempRgn);
		DrawPicture(srcPic, &picRect);
		SetClip(oldClip);
		
		DisposeRgn(tempRgn);
		DisposeRgn(oldClip);
	}
	RESTOREGWORLD;
	
	status |= needsUpdate;
}

void icnsEditorClass::PictureToRegion(PicHandle srcPic, Rect bounds, RgnHandle targetRgn)
{
	GWorldPtr		tempGW, maskGW;
	PixMapHandle	tempPix, maskPix;
	register long *rowBaseAddress, rowLongs, noOfRows, noOfPixels;
	register long	i, j;
	OSStatus		err = noErr;
	
	SAVEGWORLD;
	
	err = NewGWorld(&tempGW, 32, &bounds, NULL, NULL, 0);
	if (err != noErr) {status != outOfMemory; return; }
	tempPix = GetGWorldPixMap(tempGW);
	LockPixels(tempPix);
	SetGWorld(tempGW, NULL);
	EraseRect(&bounds);
	DrawPicture(srcPic, &bounds);
	
	noOfRows = bounds.bottom - bounds.top;
	noOfPixels = bounds.right - bounds.left;
	rowBaseAddress = (long *)(**tempPix).baseAddr;
	rowLongs = ((**tempPix).rowBytes & 0x3FFF)/4;
	
	for (j = 0; j < noOfRows; j++, rowBaseAddress += rowLongs)
		for (i=0; i < noOfPixels; i++)
			rowBaseAddress[i] = kNeverUsedColor;
		 
			
	DrawPicture(srcPic, &bounds);
	rowBaseAddress = (long*)(**tempPix).baseAddr;	
	for (j = 0; j < noOfRows; j++, rowBaseAddress += rowLongs)
		for (i=0; i < noOfPixels; i++)
			if ((rowBaseAddress[i] & 0xFFFFFF) != (kNeverUsedColor & 0xFFFFFF))
				rowBaseAddress[i] = 0; // turn changed pixels to black
			else
				rowBaseAddress[i] = 0xFFFFFF; // unchanged become white
			
	err = NewGWorld(&maskGW, 1, &bounds, NULL, NULL, 0);
	if (err != noErr) {status != outOfMemory; return; }
	maskPix = GetGWorldPixMap(maskGW);
	LockPixels(maskPix);
	SetGWorld(maskGW, NULL);
	EraseRect(&bounds);
	CopyBits((BitMap *)*tempPix,(BitMap *)*maskPix,&bounds,&bounds,srcCopy,NULL);	
	BitMapToRegion(targetRgn, (BitMap*)*maskPix);
	
	UnlockPixels(tempPix);
	DisposeGWorld(tempGW);
	UnlockPixels(maskPix);
	DisposeGWorld(maskGW);
	
	RESTOREGWORLD;
}

void icnsEditorClass::PictureToMask(PicHandle srcPic, GWorldPtr maskGW)
{
	GWorldPtr		tempGW, mask1BitGW;
	PixMapHandle	tempPix, mask1BitPix;
	Rect			bounds;
	RGBColor		white = {0xFFFF, 0xFFFF, 0xFFFF};
	ColorSearchUPP lassoSearchUPP;
	OSStatus		err = noErr;
	
	SAVEGWORLD;
	
	bounds = maskGW->portRect;
	
	err = NewGWorld(&tempGW, 32, &bounds, NULL, NULL, 0);
	if (err != noErr) {status != outOfMemory; return; }
	tempPix = GetGWorldPixMap(tempGW);
	LockPixels(tempPix);
	SetGWorld(tempGW, NULL);
	EraseRect(&bounds);
	DrawPicture(srcPic, &bounds);
	
	err = NewGWorld(&mask1BitGW, 1, &bounds, NULL, NULL, 0);
	if (err != noErr) {status != outOfMemory; return; }
	mask1BitPix = GetGWorldPixMap(mask1BitGW);
	LockPixels(mask1BitPix);
	SetGWorld(mask1BitGW, NULL);
	EraseRect(&bounds);
	
	lassoSearchUPP = NewColorSearchProc(LassoColorSearch);
	
	CalcCMask((BitMap*)*tempPix, (BitMap*)*mask1BitPix, &bounds, &bounds , &white, lassoSearchUPP, 0);
	
	CopyBits((BitMap*)*mask1BitPix,
			 (BitMap*)*maskGW->portPixMap,
			 &bounds,
			 &bounds,
			 srcCopy,
			 NULL);
	
	RESTOREGWORLD;
	
	status |= needsUpdate;
}

void icnsEditorClass::Clear(void)
{
	SAVEGWORLD;
	if (status & selectionFloated)
	{
//		SetGWorld(selectionGW, NULL);
//		RGBBackColor(&backColor);
//		EraseRgn(selectionRgn);
		SetEmptyRgn(selectionRgn);
	}
	else
	{
		SetGWorld(currentGW, NULL);
		RGBBackColor(&backColor);
		EraseRgn(selectionRgn);
	}
	RESTOREGWORLD;
	
	currentState = new drawingStateClass(currentState, this);
	
	status |= needToSave;
	status |= needsUpdate;
}

void icnsEditorClass::Fill(void)
{
	SAVEGWORLD;
	if (status & selectionFloated)
		SetGWorld(selectionGW, NULL);
	else
		SetGWorld(currentGW, NULL);
		
	RGBForeColor(&foreColor);
	PaintRgn(selectionRgn);
	
	RESTOREGWORLD;
	
	currentState = new drawingStateClass(currentState, this);
	
	status |= needsUpdate;
}

void icnsEditorClass::Select(int selectionType)
{
	RgnHandle	tempRgn;
	if (status & selectionFloated)
		DefloatSelection();
	switch (selectionType)
	{
		case all:
			RectRgn(selectionRgn, &(**currentPix).bounds);
			MagnifySelectionRgn();
			break;
		case none:
			SetEmptyRgn(selectionRgn);
			//SetEmptyRgn(selectionMagnifiedRgn);
			break;
		case inverse:
			tempRgn = NewRgn();
			RectRgn(tempRgn, &(**currentPix).bounds);
			DiffRgn(tempRgn, selectionRgn, selectionRgn);
			MagnifySelectionRgn();
			DisposeRgn(tempRgn);
			break;
	}
	
	status |= needsUpdate;
	
	currentState = new drawingStateClass(currentState, this);
}

void icnsEditorClass::Rotate(int angle)
{
	OSStatus		err = noErr;
	
	if (EmptyRgn(selectionRgn))
	{
		::Rotate(angle, &currentGW, &currentPix);
	}
	else
	{
		if (!(status & selectionFloated))
			FloatSelection();
			
		::Rotate(angle, &selectionGW, &selectionPix);

		PixMapHandle	tempPix;
		GWorldPtr		tempGW;
		
		SAVEGWORLD;
		err = NewGWorld(&tempGW, 1, &(**selectionRgn).rgnBBox, NULL, NULL, 0);
		if (err != noErr) {status != outOfMemory; return; }
		tempPix = GetGWorldPixMap(tempGW);
		LockPixels(tempPix);
		
		SetGWorld(tempGW, NULL);
		EraseRect(&qd.thePort->portRect);
		PaintRgn(selectionRgn);
		
		::Rotate(angle, &tempGW, &tempPix);
		
		BitMapToRegion(selectionRgn, (BitMap*)*tempPix);
		MagnifySelectionRgn();
		
		RESTOREGWORLD;
		
		UnlockPixels(tempPix);
		DisposeGWorld(tempGW);
	}

	status |= needToSave;
	status |= needsUpdate;
	
	currentState = new drawingStateClass(currentState, this);
}

void icnsEditorClass::FlipHorizontal(void)
{
	PixMapHandle	srcPix, tempPix;
	GWorldPtr		tempGW;
	OSStatus		err = noErr;
	
	if (EmptyRgn(selectionRgn))
		srcPix = currentPix;
	else
	{
		if (!(status & selectionFloated))
			FloatSelection();
		srcPix = selectionPix;
	}
	
	::FlipHorizontal(srcPix);
	
	if (srcPix == selectionPix) // we must flip the selection too
	{
		SAVEGWORLD;
		err = NewGWorld(&tempGW, 1, &(**selectionRgn).rgnBBox, NULL, NULL, 0);
		if (err != noErr) {status != outOfMemory; return; }
		tempPix = GetGWorldPixMap(tempGW);
		LockPixels(tempPix);
		
		SetGWorld(tempGW, NULL);
		EraseRect(&qd.thePort->portRect);
		PaintRgn(selectionRgn);
		
		::FlipHorizontal(tempPix);
		
		BitMapToRegion(selectionRgn, (BitMap*)*tempPix);
		MagnifySelectionRgn();
		
		UnlockPixels(tempPix);
		DisposeGWorld(tempGW);
		
		RESTOREGWORLD;
	}
	
	status |= needToSave;
	status |= needsUpdate;
	
	currentState = new drawingStateClass(currentState, this);
}

void icnsEditorClass::FlipVertical(void)
{
	GWorldPtr		tempGW;
	PixMapHandle	srcPix, tempPix;
	OSStatus		err = noErr;
	
	if (EmptyRgn(selectionRgn))
		srcPix = currentPix;
	else
	{
		if (!(status & selectionFloated))
			FloatSelection();
		srcPix = selectionPix;
	}
	
	::FlipVertical(srcPix);
	
	if (srcPix == selectionPix) // we must flip the selection too
	{
		SAVEGWORLD;
		err = NewGWorld(&tempGW, 1, &(**selectionRgn).rgnBBox, NULL, NULL, 0);
		if (err != noErr) {status != outOfMemory; return; }
		tempPix = GetGWorldPixMap(tempGW);
		LockPixels(tempPix);
		
		SetGWorld(tempGW, NULL);
		EraseRect(&qd.thePort->portRect);
		PaintRgn(selectionRgn);
		
		::FlipVertical(tempPix);
		
		BitMapToRegion(selectionRgn, (BitMap*)*tempPix);
		MagnifySelectionRgn();
		
		UnlockPixels(tempPix);
		DisposeGWorld(tempGW);
		
		RESTOREGWORLD;
	
	}

	status |= needToSave;
	status |= needsUpdate;
	
	currentState = new drawingStateClass(currentState, this);
}

pascal void	DrawIconWell(ControlHandle theControl,SInt16 thePart)
{
	icnsEditorPtr	parentEditor;
	thePart; // unused
	
	parentEditor = GetEditor((**theControl).contrlOwner);
	
	DrawImageWell(theControl, (**theControl).contrlRect);
	parentEditor->Display((**theControl).contrlRect, current);
}

pascal ControlPartCode HitTestIconWell (ControlHandle control, Point where)
{
	if (PtInRect(where, &(**control).contrlRect))
		return kControlImageWellPart;
	else
		return kControlNoPart;
}

pascal void	DrawForeBackColors(ControlHandle theControl,SInt16 thePart)
{
	Rect			drawRect, tempRect;
	RGBColor		hilightColor;
	int				thirdOfHeight;
	int				thirdOfWidth;
	icnsEditorPtr	parentEditor;
	
	SAVECOLORS;
	
	thePart; // unused
	
	parentEditor = GetEditor((**theControl).contrlOwner);
	
	drawRect = (**theControl).contrlRect;
	
	thirdOfHeight = (drawRect.bottom - drawRect.top)/3;
	thirdOfWidth = (drawRect.right - drawRect.left)/3;
	
	drawRect.top += thirdOfHeight;
	drawRect.left += thirdOfWidth;
	
	InsetRect(&drawRect, 1, 1);
	
	DrawImageWell(theControl, drawRect);
		
	RGBForeColor(&(parentEditor->backColor));
	tempRect = drawRect;
	tempRect.left += thirdOfWidth;
	PaintRect(&tempRect);
	tempRect = drawRect;
	tempRect.top += thirdOfHeight;
	PaintRect(&tempRect);
		
	drawRect = (**theControl).contrlRect;
	
	drawRect.bottom -= thirdOfHeight;
	drawRect.right -= thirdOfWidth;
	
	InsetRect(&drawRect, 1, 1);
	
	DrawImageWell(theControl, drawRect);
	
	GetCPixel(drawRect.right - 2, drawRect.top - 2, &hilightColor);
	RGBForeColor(&hilightColor);
	MoveTo(drawRect.right + 2, drawRect.top + thirdOfHeight - 2);
	LineTo(drawRect.right + 2, drawRect.top + 2 * thirdOfHeight);
	LineTo(drawRect.left + thirdOfWidth - 2, drawRect.top + 2 * thirdOfHeight);
	GetCPixel(drawRect.left - 1, drawRect.top - 1, &hilightColor);
	RGBForeColor(&hilightColor);
	MoveTo(drawRect.right + 3, drawRect.top + thirdOfHeight - 1);
	LineTo(drawRect.right + 3, drawRect.top + 2 * thirdOfHeight + 1);
	LineTo(drawRect.left + thirdOfWidth - 1, drawRect.top + 2 * thirdOfHeight + 1);
	
	RGBForeColor(&(parentEditor->foreColor));
	PaintRect(&drawRect);
	
	RESTORECOLORS;
}

pascal ControlPartCode HitTestForeBackColors (ControlHandle theControl, Point where)
{
	Rect	controlRect;
	int		thirdOfHeight, thirdOfWidth;
	
	controlRect = (**theControl).contrlRect;
	
	thirdOfHeight = (controlRect.bottom - controlRect.top)/3;
	thirdOfWidth = (controlRect.right - controlRect.left)/3;
	
	controlRect.bottom -= thirdOfHeight;
	controlRect.right -= thirdOfWidth;
	
	if (PtInRect(where, &controlRect))
		return kForeColorPart;
	
	controlRect = (**theControl).contrlRect;
	
	controlRect.top += thirdOfHeight;
	controlRect.left += thirdOfWidth;
	
	if (PtInRect(where, &controlRect))
		return kBackColorPart;
		
	controlRect = (**theControl).contrlRect;
	
	controlRect.bottom = controlRect.top + thirdOfHeight;
	controlRect.left = controlRect.right - thirdOfWidth;
	
	if (PtInRect(where, &controlRect))
		return kExchangeColorsPart;

	return kControlNoPart;
}

pascal void DisplayDraw(ControlHandle theControl,SInt16 thePart)
{
	icnsEditorPtr	parentEditor;
	Rect			displayRect;
	SAVECOLORS;
	
	thePart; // unused
	
	ForeColor(whiteColor);
	
	parentEditor = GetEditor((**theControl).contrlOwner);
	
	if (theControl == parentEditor->controls.display.iconDisplay)
	{
		displayRect = hugeIconRect;
		MakeTargetRect(parentEditor->controls.display.iconHugeRect, &displayRect);
		PaintRect(&parentEditor->controls.display.iconHugeRect);
		DrawImageWell(theControl, parentEditor->controls.display.iconHugeRect);
		DrawImageWell(theControl, parentEditor->controls.display.iconLargeRect);
		DrawImageWell(theControl, parentEditor->controls.display.iconSmallRect);
		DrawImageWell(theControl, parentEditor->controls.display.iconMiniRect);
		
		switch (GetControlValue(parentEditor->controls.display.iconPopup))
		{
			case k32BitIcon:
				parentEditor->Display(displayRect, ih32);
				parentEditor->Display(parentEditor->controls.display.iconLargeRect, il32);
				parentEditor->Display(parentEditor->controls.display.iconSmallRect, is32);
				break;
			case k8BitIcon:
				parentEditor->Display(displayRect, ich8);
				parentEditor->Display(parentEditor->controls.display.iconLargeRect, icl8);
				parentEditor->Display(parentEditor->controls.display.iconSmallRect, ics8);
				break;
			case k4BitIcon:
				parentEditor->Display(displayRect, ich4);
				parentEditor->Display(parentEditor->controls.display.iconLargeRect, icl4);
				parentEditor->Display(parentEditor->controls.display.iconSmallRect, ics4);
				break;
			case k1BitIcon:
				parentEditor->Display(displayRect, ichi);
				parentEditor->Display(parentEditor->controls.display.iconLargeRect, icni);
				parentEditor->Display(parentEditor->controls.display.iconSmallRect, icsi);
				break;
		}
	}
	else
	{
		displayRect = hugeIconRect;
		MakeTargetRect(parentEditor->controls.display.maskHugeRect, &displayRect);
		PaintRect(&parentEditor->controls.display.maskHugeRect);
		DrawImageWell(theControl, parentEditor->controls.display.maskHugeRect);
		DrawImageWell(theControl, parentEditor->controls.display.maskLargeRect);
		DrawImageWell(theControl, parentEditor->controls.display.maskSmallRect);
		DrawImageWell(theControl, parentEditor->controls.display.maskMiniRect);
		
		switch (GetControlValue(parentEditor->controls.display.maskPopup))
		{
			case k8BitMask:
				parentEditor->Display(displayRect, h8mk);
				parentEditor->Display(parentEditor->controls.display.maskLargeRect, l8mk);
				parentEditor->Display(parentEditor->controls.display.maskSmallRect, s8mk);
				break;
			case k1BitMask:
				parentEditor->Display(displayRect, ichm);
				parentEditor->Display(parentEditor->controls.display.maskLargeRect, icnm);
				parentEditor->Display(parentEditor->controls.display.maskSmallRect, icsm);
				break;
		}
	}
	RESTORECOLORS;
}

pascal ControlPartCode DisplayHitTest(ControlHandle theControl, Point where)
{
	icnsEditorPtr	parentEditor;
	
	parentEditor = GetEditor((**theControl).contrlOwner);
	
	//if (theControl == parentEditor->controls.display.iconDisplay)
	//{
		if (PtInRect(where, &parentEditor->controls.display.iconHugeRect))
			return kDisplayHugePart;
		if (PtInRect(where, &parentEditor->controls.display.iconLargeRect))
			return kDisplayLargePart;
		if (PtInRect(where, &parentEditor->controls.display.iconSmallRect))
			return kDisplaySmallPart;
		if (PtInRect(where, &parentEditor->controls.display.iconMiniRect))
			return kDisplayMiniPart;
	//}
	//else
	//{
		if (PtInRect(where, &parentEditor->controls.display.maskHugeRect))
			return kDisplayHugePart;
		if (PtInRect(where, &parentEditor->controls.display.maskLargeRect))
			return kDisplayLargePart;
		if (PtInRect(where, &parentEditor->controls.display.maskSmallRect))
			return kDisplaySmallPart;
		if (PtInRect(where, &parentEditor->controls.display.maskMiniRect))
			return kDisplayMiniPart;
	//}
	return kControlNoPart;
}

void MakeDisplayRects(Rect controlRect, Rect *hugeRect,Rect *largeRect, Rect *smallRect, Rect *miniRect)
{
	*hugeRect = controlRect;
	hugeRect->bottom = hugeRect->top + 54;
	*largeRect = controlRect;
	largeRect->top = largeRect->bottom - 34;
	largeRect->right = largeRect->left + 34;
	*smallRect = controlRect;
	smallRect->top = smallRect->bottom - 34;
	smallRect->bottom = smallRect->top + 18;
	smallRect->left = smallRect->right - 18;
	*miniRect = controlRect;
	miniRect->top = miniRect->bottom - 14;
	miniRect->left = miniRect->right - 18;
	
	InsetRect(hugeRect, 1, 1);
	InsetRect(largeRect, 1, 1);
	InsetRect(smallRect, 1, 1);
	InsetRect(miniRect, 1, 1);
}

pascal void PreviewDraw(ControlHandle theControl,SInt16 thePart)
{
	PixPatHandle		desktopPattern;
	Rect				controlRect, tempRect, displayRect;
	icnsEditorPtr		parentEditor;
	long				hugeIconSrc, largeIconSrc, smallIconSrc, hugeMaskSrc, largeMaskSrc, smallMaskSrc;
	
	thePart;
	
	parentEditor = GetEditor((**theControl).contrlOwner);
	
	switch (GetControlValue(parentEditor->controls.display.iconPopup))
	{
		case k32BitIcon: hugeIconSrc = ih32; largeIconSrc = il32; smallIconSrc = is32; break;
		case k8BitIcon: hugeIconSrc = ich8; largeIconSrc = icl8; smallIconSrc = ics8; break;
		case k4BitIcon: hugeIconSrc = ich4; largeIconSrc = icl4; smallIconSrc = ics4; break;
		case k1BitIcon: hugeIconSrc = ichi; largeIconSrc = icni; smallIconSrc = icsi; break;
	}
	switch (GetControlValue(parentEditor->controls.display.maskPopup))
	{
		case k8BitMask: hugeMaskSrc = h8mk; largeMaskSrc = l8mk; smallMaskSrc = s8mk; break;
		case k1BitMask: hugeMaskSrc = ichm; largeMaskSrc = icnm; smallMaskSrc = icsm; break;
	}
	
	controlRect = (**theControl).contrlRect;
	InsetRect(&controlRect, 1, 1);
	
	desktopPattern = GetPixPat(16);
	
	FillCRect(&controlRect, desktopPattern);
	
	DrawImageWell(theControl, controlRect);
	
	DisposePixPat(desktopPattern);
	
	tempRect = controlRect;
	tempRect.right = tempRect.left + (tempRect.bottom - tempRect.top);
	displayRect = hugeIconRect;
	MakeTargetRect(tempRect, &displayRect);
	
	parentEditor->Display(displayRect, hugeIconSrc + hugeMaskSrc);
	
	tempRect = controlRect;
	tempRect.left += (tempRect.bottom - tempRect.top);
	tempRect.right = tempRect.left + (tempRect.bottom - tempRect.top) * 2/3;
	displayRect = largeIconRect;
	MakeTargetRect(tempRect, &displayRect);
	
	parentEditor->Display(displayRect, largeIconSrc + largeMaskSrc);
	
	tempRect.left = tempRect.right;
	tempRect.right = controlRect.right;
	displayRect = smallIconRect;
	MakeTargetRect(tempRect, &displayRect);
	
	parentEditor->Display(displayRect, smallIconSrc + smallMaskSrc);
	
}

pascal ControlPartCode PreviewHitTest(ControlHandle theControl, Point where)
{
	theControl;
	where;
	return kControlNoPart;
}

icnsEditorPtr GetFrontEditor(void)
{
	if (FrontWindow() == NULL)
		return NULL;
	
	switch (GetWRefCon(FrontWindow()))
	{
		default:
			return (icnsEditorPtr)GetWRefCon(FrontWindow());
			break;
	}
}

icnsEditorPtr GetEditor(WindowPtr window)
{
	if (window == NULL)
		return NULL;
	switch (GetWRefCon(window))
	{
		default:
			return (icnsEditorPtr)GetWRefCon(window);
			break;
	}
}

bool pascal LassoColorSearch(RGBColor *color, int *result)
{
	RGBColor	matchColor;
	CGrafPtr	oldPort;
	GDHandle	oldDevice;
	
	GetGWorld(&oldPort, &oldDevice);
	
	matchColor.red = ((MatchRec*)(**oldDevice).gdRefCon)->red;
	matchColor.green = ((MatchRec*)(**oldDevice).gdRefCon)->green;
	matchColor.blue = ((MatchRec*)(**oldDevice).gdRefCon)->blue;
	
	if (color->red != matchColor.red || color->green != matchColor.green || color->blue != matchColor.blue)
		*result = 1;
	else
		*result = 0;
	return true;
}
