#include "MembersPalette.h"
#include "icnsEditorClass.h"
#include "drawingStateClass.h"

MembersPalette::MembersPalette()
			   :MFloater(rMPWindow, kMembersPaletteType)
{
	dragHiliteRgn = NULL;
	
	scrollValue = 0;
	
	parentEditor = NULL;
	
	infoButtonPicture = GetPicture(rMPInfoButtonPicture);
	
	CreateControls();
	
	InstallDraggingHandlers();
}

MembersPalette::~MembersPalette()
{
	KillPicture(infoButtonPicture);
}

void MembersPalette::Activate()
{
	ResizeMemberPanes();
	
	Update(updateAll);
	RefreshMemberPanes();
}

void MembersPalette::Deactivate()
{
	if (IsControlActive(controls.root))
	{
		SetThemeWindowBackground(window, kThemeBrushDialogBackgroundActive, false);
		DeactivateControl(controls.root);
	}
}

void MembersPalette::Show()
{
	MFloater::Show();
	
	RefreshMemberPanes();
}

void MembersPalette::Refresh(void)
{
	SAVEGWORLD; // saving the current gworld for restoring later
	
	
	BeginUpdate(window); // BeginUpdate means that the drawing is clipped to the regions which
						 // has been marked as needed updates (by InvalRect, etc.)
	
	SetPort(window); // we're drawing in the window
	
	UpdateControls(window, window->clipRgn); // we're also refreshing the controls
	
	EndUpdate(window); // and we're done with the updating
	
	RESTOREGWORLD; // we can restore the saved gworld now
	
}

void MembersPalette::HandleContentClick(EventRecord* eventPtr)
{
	Point 				where;
	short 				controlPart;
	ControlHandle 		clickedControl;
	Rect				controlRect;
	
	where = eventPtr->where;
	
	SAVEGWORLD;
	
	SetPort(window);
	
	GlobalToLocal(&where);
	
	GetControlBounds(controls.infoButton, &controlRect);
	if (PtInRect(where, &controlRect))
	{
		clickedControl = controls.infoButton;
		controlPart = kControlIndicatorPart;
	}
	else
		controlPart = FindControl(where, window, &clickedControl);
	
	if (controlPart != kControlNoPart)
	{
		if (clickedControl == controls.scrollbar)
			TrackControl(clickedControl, where, (ControlActionUPP) -1);
		else if (clickedControl == controls.statesPane)
			SysBeep(6);
		else if (clickedControl == controls.infoButton)
		{
			if (TrackControl(clickedControl, where, (ControlActionUPP) -1))
				EnhancedPlacardHandleClick(controls.infoButton);
		}
		else if (clickedControl == controls.backgroundPane)
		{
			;
		}
		else
		{
			HandleMemberPaneClick(clickedControl, controlPart, eventPtr);
		}
	}
	
	RESTOREGWORLD;
}

void MembersPalette::HandleMemberPaneClick(ControlHandle pane, short controlPart, EventRecord* eventPtr)
{
	GWorldPtr		dragGW, // the GWorld in which we will store the image that is to be dragged 
					srcGW;  // used for storing the source image, not necessarely the same as
							// the dragGW if there is a floated selection (which must be merged) 
	PixMapHandle	dragPix, // the PixMaps for the pixel data of the above GWorlds
					srcPix;
	long			dragType, // the "names" corresponding to the above PixMaps
					srcPixName,
					memberIndex;
	bool			needToDispose; // true if we allocated a gworld (if we needed to merge)
	OSErr			err; // used for checking for errors
	icnsEditorPtr	frontEditor;
	
	frontEditor = parentEditor;
	if (frontEditor == NULL)
		return;
	
	SAVEGWORLD;
	
	
	SetPort(window); // we set the port to the window
	//SAVECOLORS;
	
	memberIndex = GetControlReference(pane);
	srcPixName = kMembers[memberIndex].name;
	frontEditor->GetGWorldAndPix(srcPixName, &srcGW, &srcPix);
	
	if (controlPart == kControlIconPart &&
		WaitMouseMoved(eventPtr->where)) // if the user moved the mouse while it as down,
										 // we're dragging
	{
		Rect	tempRect;
		
		GetControlBounds(pane, &tempRect);
		
		GetPaneRect(memberIndex, tempRect, &dragSrcRect);
		
		// we must know which gworld/pixmap we are dragging
		if (!(frontEditor->status & selectionFloated) || srcPixName != frontEditor->currentPixName)
		// if there isn't a selection then we don't need to merge, the drag pixmap is simply
		// the source pixmap
		{
			dragGW = srcGW;
			dragPix = srcPix;
			dragType = srcPixName;
			needToDispose = false;
			// we don't need to dispose the dragGW since it wasn't allocated
		}
		else
		{
			needToDispose = true; // now we're allocating it
			err = NewGWorld(&dragGW, // same dimensions/depth as the source GWorld
							(**srcPix).pixelSize,
							&(**srcPix).bounds,
							(**srcPix).pmTable,
							NULL,
							0);
			if (err != noErr) // if there was a problem...
			{
				frontEditor->status |= outOfMemory;
				return;
			}
			dragPix = GetGWorldPixMap(dragGW);
			LockPixels(dragPix);
			
			// now we can merge the drawing and the floating selection
			CopyPixMap(srcPix, // first we copy the drawing
					   dragPix,
					   &(**srcPix).bounds,
					   &(**dragPix).bounds,
					   srcCopy,
					   NULL);
			CopyPixMap(frontEditor->selectionPix, // and then the selection
					   dragPix,
					   &(**srcPix).bounds,
					   &(**dragPix).bounds,
					   srcCopy,
					   frontEditor->selectionRgn); // clipped to the selectionRgn
					 
			dragType = srcPixName;
		}
		RESTOREGWORLD; // we must restore the port
		DragPixMap(&dragSrcRect, eventPtr, dragPix, NULL, dragPix, NULL, dragType); // the actual dragging
		SetRect(&dragSrcRect, 0, 0, 0, 0);
		if (needToDispose) // if we need to dipose...
		{
			UnlockPixels(dragPix);
			DisposeGWorld(dragGW); // then we do
		}
		
		//RESTORECOLORS; // and the colors so that we can drag
	}
	else // just a normal click, we just set the currentPix/GW/Name to whatever the user
		 // clicked on
	{
		if (srcPixName != frontEditor->currentPixName)
		// if it's a different size/depth than the current one
		{
			// and finally we can set the new size/depth as the current one	
			frontEditor->SetCurrentMember(srcPixName, true);	
		}
	}
	
	RESTOREGWORLD;
	//RESTORECOLORS;
}

void MembersPalette::CreateControls()
{
	Rect						windowRect;
	ControlActionUPP			scrollBarActionUPP;
	
	CreateRootControl(window, &controls.root);
	
	controls.backgroundPane = GetNewControl(rMPBackgroundPane, window);
	SetControlUserPaneDraw(controls.backgroundPane, MembersPalette::BackgroundPaneDraw);
	SetControlUserPaneHitTest(controls.backgroundPane, GenericHitTest);
	
	controls.scrollbar = GetNewControl(rMPScrollbar, window);
	scrollBarActionUPP = NewControlActionProc(MembersPalette::ScrollbarAction);
	SetControlAction(controls.scrollbar, scrollBarActionUPP);
	
	for (int i=0; i < kMembersCount; i++)
	{
		controls.members[i] = GetNewControl(rMPMemberPane, window);
		
		SetControlUserPaneDraw(controls.members[i], MembersPalette::MemberPaneDraw);
		SetControlUserPaneHitTest(controls.members[i], MembersPalette::MemberPaneHitTest);
		
		SetControlReference(controls.members[i], i);
	}
	
	windowRect = window->portRect;
	pageSize = windowRect.bottom - kSmallGrowBoxHeight + 1;
	
	ResizeMemberPanes();
	
	controls.statesPane = GetNewControl(rMPStatesPane, window);
	SetControlUserPaneDraw(controls.statesPane, MembersPalette::StatesPaneDraw);
	SetControlUserPaneHitTest(controls.statesPane, GenericHitTest);
	
	controls.infoButton = NewEnhancedPlacard(rMPInfoButton, window, enhancedPlacardDrawBorder,
										  	 0, 0, "\p", infoButtonPicture, NULL,
										  	 icnsEditorClass::statics.canvasGW, icnsEditorClass::statics.canvasPix,
										  	 InfoButtonUpdate, this);
	
	RepositionControls();
}

void MembersPalette::InfoButtonUpdate(struct EnhancedPlacardData* data, int flags)
{
	MembersPalettePtr parent;
		
	parent = MembersPalettePtr(data->clientData);
		
	if (flags & enhancedPlacardStateChanged)
	{
		if (parent->parentEditor)
			parent->parentEditor->EditIconInfo(kIconInfo);
	}
}

void MembersPalette::ResizeMemberPanes()
{
	Rect controlRect;
	int	currentHeight = -1;
	int	previewHeight;
	
	previewHeight = icnsEditorClass::statics.preferences.GetPreviewSize();
	
	for (int i=0; i < kMembersCount; i++)
	{
		GetControlBounds(controls.members[i], &controlRect);
		controlRect.top = currentHeight;
		
		if (icnsEditorClass::statics.preferences.FeatureEnabled(prefsPreviewScaled))
		{
			if (previewHeight > kMembers[i].height)
				controlRect.bottom = currentHeight + kMembers[i].height + kMemberPaneScaledExtraHeight;
			else		
				controlRect.bottom = currentHeight + previewHeight + kMemberPaneScaledExtraHeight;
		}
		else
			controlRect.bottom = currentHeight + kMembers[i].height + kMemberPaneExtraHeight;
		
		SetControlBounds(controls.members[i], &controlRect);
		
		if (icnsEditorClass::statics.preferences.FeatureEnabled(prefsPreviewScaled))
			currentHeight += icnsEditorClass::statics.preferences.GetPreviewSize() + kMemberPaneScaledExtraHeight - 1;
		else
			currentHeight += kMembers[i].height + kMemberPaneExtraHeight - 1;
	}
	
	if (currentHeight - pageSize + 1 < 0)
		SetControlMaximum(controls.scrollbar, 0);
	else
		SetControlMaximum(controls.scrollbar, currentHeight - pageSize + 1);
		
	RefreshMemberPanes();
}

void MembersPalette::HandleGrow(Point where)
{
	Rect		maxGrowRect, windowRect;
	long		growSize;
	int			h, v;
	RgnHandle	updateRgn;
	
	windowRect = window->portRect;
	
	SetRect(&maxGrowRect,
			windowRect.right - windowRect.left,
			128,
			windowRect.right - windowRect.left + 1,
			32767);
			
	growSize = GrowWindow(window, where, &maxGrowRect);
	
	h = growSize & 0x0000FFFF;
	v = (growSize >> 16) & 0x0000FFFF;
	
	if (v != windowRect.bottom - windowRect.top)
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
	}
}

void MembersPalette::RepositionControls()
{
	Rect	controlRect, windowRect;
	
	windowRect = window->portRect;
	
	GetControlBounds(controls.scrollbar, &controlRect);
	controlRect.right = windowRect.right + 1;
	controlRect.left = controlRect.right - kSmallScrollbarWidth;
	controlRect.top = -1;
	controlRect.bottom = windowRect.bottom - kSmallGrowBoxHeight + 1;
	pageSize = windowRect.bottom - kSmallGrowBoxHeight + 1;
	if (GetTotalMembersHeight() - pageSize < 0)
		SetControlMaximum(controls.scrollbar, 0);
	else
		SetControlMaximum(controls.scrollbar, GetTotalMembersHeight() - pageSize);
	scrollValue = GetControlValue(controls.scrollbar);
	
	if (GestaltVersion(gestaltSystemVersion, 0x08, 0x50))
		SetControlViewSize(controls.scrollbar, pageSize);
	
	SetControlBounds(controls.scrollbar, &controlRect);
	
	GetControlBounds(controls.statesPane, &controlRect);
	controlRect.right = windowRect.right - kSmallScrollbarWidth - kInfoButtonWidth + 3;
	controlRect.left = -1;
	controlRect.bottom = windowRect.bottom + 1;
	controlRect.top = controlRect.bottom - kSmallGrowBoxHeight - 1;
	SetControlBounds(controls.statesPane, &controlRect);
	
	controlRect.left = controlRect.right - 1;
	controlRect.right = windowRect.right - kSmallScrollbarWidth + 2;
	controlRect.bottom = windowRect.bottom + 1;
	controlRect.top = controlRect.bottom - kSmallGrowBoxHeight - 1;
	SetControlBounds(controls.infoButton, &controlRect);
	
	RefreshMemberPanes();
}

#pragma mark -

void MembersPalette::RefreshMemberPanes()
{
	RefreshMemberPanes(GetFrontEditor());
}

void MembersPalette::RefreshMemberPanes(icnsEditorPtr frontEditor)
{
	Rect	controlRect, windowRect;
	int		initialPosition, height, membersHeight;
	
	parentEditor = frontEditor;
	
	SAVEGWORLD;
	
	SetPort(window);
	
	initialPosition = -scrollValue - 1;
	membersHeight = GetTotalMembersHeight();
	
	windowRect = window->portRect;
	
	StartClipping();
	
	for (int i=0; i < kMembersCount; i++)
		if (frontEditor == NULL ||
			kMembers[i].name & frontEditor->usedMembers)
		{
			GetControlBounds(controls.members[i], &controlRect);
			height = controlRect.bottom - controlRect.top;
			controlRect.top = initialPosition;
			controlRect.bottom = initialPosition + height;
			SetControlBounds(controls.members[i], &controlRect);
			if (!SectRect(&controlRect, &windowRect, &controlRect))
			{
				if (IsControlVisible(controls.members[i]))
					HideControl(controls.members[i]);
			}
			else if (!IsControlVisible(controls.members[i]))
				ShowControl(controls.members[i]);
			else
				Draw1Control(controls.members[i]);
			
			initialPosition += height - 1;
		}
		else if (IsControlVisible(controls.members[i]))
			HideControl(controls.members[i]);

	if (dragHiliteRgn != NULL)
		HiliteRegion(dragHiliteRgn);

	if (membersHeight - pageSize < 0)
		SetControlMaximum(controls.scrollbar, 0);
	else
		SetControlMaximum(controls.scrollbar, membersHeight - pageSize);
	scrollValue = GetControlValue(controls.scrollbar);
	
	controlRect = windowRect;
	controlRect.right -= kSmallScrollbarWidth - 1;
	controlRect.bottom -= kSmallGrowBoxHeight;
	controlRect.top = membersHeight;
	SetControlBounds(controls.backgroundPane, &controlRect);
	
	EndClipping();
	
	
	Draw1Control(controls.scrollbar);
	Draw1Control(controls.backgroundPane);
	
	RESTOREGWORLD;
}

void MembersPalette::StartClipping()
{
	Rect	clipRect;
	
	SAVEGWORLD;
	
	SetPort(window);
		
	oldClip = NewRgn();
	GetClip(oldClip);
	clipRect = window->portRect;
	clipRect.right -= kSmallScrollbarWidth - 1;
	clipRect.bottom -= kSmallGrowBoxHeight;
	ClipRect(&clipRect);
	
	RESTOREGWORLD;
}

void MembersPalette::EndClipping()
{
	SAVEGWORLD;
	
	SetPort(window);
	
	SetClip(oldClip);
	DisposeRgn(oldClip);

	RESTOREGWORLD;
}

int MembersPalette::GetTotalMembersHeight()
{
	return GetTotalMembersHeight(GetFrontEditor());
}

int MembersPalette::GetTotalMembersHeight(icnsEditorPtr frontEditor)
{
	int height = 0;
	int previewHeight;
	
	previewHeight = icnsEditorClass::statics.preferences.GetPreviewSize();
	
	for (int i=0; i < kMembersCount; i++)
		if (frontEditor == NULL ||
			kMembers[i].name & frontEditor->usedMembers)
				if (icnsEditorClass::statics.preferences.FeatureEnabled(prefsPreviewScaled))
				{
					if (previewHeight > kMembers[i].height)
						height += kMembers[i].height + kMemberPaneScaledExtraHeight - 1;
					else
						height += previewHeight + kMemberPaneScaledExtraHeight - 1;
				}
				else
					height += kMembers[i].height + kMemberPaneExtraHeight - 1;
				
	return height;
}

void MembersPalette::Update(bool updateAll)
{
	Update(GetFrontEditor(), updateAll);
}

void MembersPalette::Update(icnsEditorPtr editor, bool updateAll)
{
	parentEditor = editor;
	
	if (updateAll || editor == NULL)
	{
		StartClipping();
		
		if (editor == NULL && IsControlActive(controls.root))
			DeactivateControl(controls.root);
		else if (editor != NULL && !IsControlActive(controls.root))
			ActivateControl(controls.root);
		else
			Draw1Control(controls.root);
			
		EndClipping();
		
		Draw1Control(controls.scrollbar);
		Draw1Control(controls.statesPane);
		Draw1Control(controls.infoButton);
	}
	else
	{
		StartClipping();
		
		for (int i=0; i < kMembersCount; i++)
			if (kMembers[i].name & editor->usedMembers &&
				kMembers[i].name == editor->currentPixName &&
				IsControlVisible(controls.members[i]))
				Draw1Control(controls.members[i]);

		EndClipping();
	}
}

void MembersPalette::ScrollToCurrentMember()
{
	ScrollToCurrentMember(GetFrontEditor());
}

void MembersPalette::ScrollToCurrentMember(icnsEditorPtr frontEditor)
{
	if (frontEditor == NULL)
		return;
	
	SAVEGWORLD;
	
	SetPort(window);
	
	for (int i=0; i < kMembersCount; i++)
		if (kMembers[i].name & frontEditor->usedMembers &&
			kMembers[i].name == frontEditor->currentPixName &&
			!IsControlVisible(controls.members[i]))
		{
			Rect controlBounds;
			
			GetControlBounds(controls.members[i], &controlBounds);
			
			OffsetRect(&controlBounds, 0, scrollValue);
			
			SetControlValue(controls.scrollbar, controlBounds.top + 1);
			scrollValue = GetControlValue(controls.scrollbar);
	
			RefreshMemberPanes();
		}
	
	RESTOREGWORLD;
}

#pragma mark -

void MembersPalette::InstallDraggingHandlers()
{
	DragReceiveHandlerUPP	dragReceiveHandlerUPP; // universal procudure pointers for the two
	DragTrackingHandlerUPP	dragTrackingHandlerUPP; // handler functions
	
	// we set these to what we need
	dragTrackingHandlerUPP = NewDragTrackingHandlerProc(MembersPalette::DragTrackingHandler);
	dragReceiveHandlerUPP = NewDragReceiveHandlerProc(MembersPalette::DragReceiveHandler);
	
	// and then install them
	InstallTrackingHandler(dragTrackingHandlerUPP, window, NULL);
	InstallReceiveHandler(dragReceiveHandlerUPP, window, NULL);
}

pascal OSErr MembersPalette::DragTrackingHandler(DragTrackingMessage message, WindowPtr theWindow, void *, DragReference theDragRef)
{
	MembersPalettePtr	parent;
	
	parent = MembersPalettePtr(::GetWindow(theWindow));

	switch (message)
	{
		case kDragTrackingEnterWindow:
			
			break;

		case kDragTrackingInWindow:
			parent->DragScroll(theDragRef);
			DrawDragHilite(theDragRef, parent);
			break;

		case kDragTrackingLeaveWindow:

			//(void) HideDragHilite (theDragRef);
			//Draw1Control(parentEditor->controls.rootControl);
			// fall thru

		default :
			break;
	}
	
	SetGWorld(icnsEditorClass::statics.startupPort, icnsEditorClass::statics.startupDevice);
	return noErr; // there's no point in confusing Drag Manager or its caller
}

pascal OSErr MembersPalette::DragReceiveHandler(WindowPtr theWindow, void *, DragReference theDragRef)
{
	int					memberIndex;
	MembersPalettePtr	parent;
	
	parent = MembersPalettePtr(::GetWindow(theWindow));
	
	if (parent->dragHiliteRgn != NULL)
	{
		DisposeRgn(parent->dragHiliteRgn);
		parent->dragHiliteRgn = NULL;
	}
	
	if (parent->ApproveDragReference(theDragRef, NULL, &memberIndex))
	{
		ItemReference	firstItem;
		long			picSize;
		PicHandle		pic;
		GWorldPtr		targetGW;
		PixMapHandle	targetPix;
		int				targetName;
		icnsEditorPtr	frontEditor;
		FlavorType		flavorType;
		long			iconType, typeSize=sizeof(long);
		
		frontEditor = parent->parentEditor;
		
		GetDragItemReferenceNumber(theDragRef, 1, &firstItem);
		
		GetFlavorDataSize(theDragRef, firstItem, 'PICT', &picSize);
		pic = PicHandle(NewHandle(picSize));
		GetFlavorData(theDragRef, firstItem, 'PICT', *pic, &picSize, 0);
		
		targetName = kMembers[memberIndex].name;
		
		frontEditor->GetGWorldAndPix(targetName, &targetGW, &targetPix);
		
		if (frontEditor->currentPix != targetPix)
			frontEditor->SaveState(targetGW, targetPix, targetName);
			
		GetFlavorType(theDragRef, firstItem, 2, &flavorType);
		if (flavorType == 'Icon')
		{
			GetFlavorData(theDragRef, firstItem, 'Icon', &iconType, &typeSize, 0);
			if (iconType == selection)
				frontEditor->InsertFromPicture(pic, targetGW, insertCentered);
			else if (targetName & masks)
				if ((targetName & mask1) && (iconType & mask1) ||
					(targetName & mask8) && (iconType & mask8))
					frontEditor->InsertFromPicture(pic, targetGW, insertCentered + insertScaled);
				else
					frontEditor->PictureToMask(pic, targetGW);
			else
				frontEditor->InsertFromPicture(pic, targetGW, insertCentered + insertScaled);
		}
		else
			frontEditor->InsertFromPicture(pic, targetGW, insertCentered);
			
		frontEditor->members |= targetName;
			
		DisposeHandle((Handle)pic);
		
		if (frontEditor->currentPix != targetPix)
			frontEditor->SaveState(targetGW, targetPix, targetName);
		
		frontEditor->currentState = new drawingStateClass(frontEditor->currentState, frontEditor);	
			
		
		frontEditor->Invalidate();
		frontEditor->Refresh();
		frontEditor->status |= (needToSave | needsUpdate);
		
		parent->Invalidate();
		parent->Refresh();
		
		return noErr;
	}
	else
		return dragNotAcceptedErr;
}

bool MembersPalette::ApproveDragReference(DragReference theDragRef, Rect* hiliteRect, int* memberIndex)
{
	ItemReference	firstItem;
	FlavorType		flavorType;
	
	if (parentEditor == NULL)
		return false;
	
	GetDragItemReferenceNumber(theDragRef, 1, &firstItem);
	
	GetFlavorType(theDragRef, firstItem, 1, &flavorType);
	
	if (flavorType == 'PICT')
	{
		Point			theMouse;
		Rect			controlRect, currentPaneRect;
	
		GetDragMouse(theDragRef, &theMouse, 0);
		GlobalToLocal(&theMouse);
		
		if (PtInRect(theMouse, &dragSrcRect))
			return false;
		
		for (int i=0; i < kMembersCount; i++)
			if (IsControlVisible(controls.members[i]))
			{
				GetControlBounds(controls.members[i], &controlRect);
				GetPaneRect(i, controlRect, &currentPaneRect);
				if (PtInRect(theMouse, &currentPaneRect))
				{
					if (hiliteRect != NULL) *hiliteRect = currentPaneRect;
					if (memberIndex != NULL) *memberIndex = i;
					return true;
				}
			}
	}

	return false;
}

void MembersPalette::DrawDragHilite(DragReference theDragRef, MembersPalettePtr parent)
{
	OSErr 		err = noErr;
	Rect		hiliteRect = {0, 0, 0, 0};
	RgnHandle	hiliteRgn;
	
	hiliteRgn = NewRgn();
	
	parent->ApproveDragReference(theDragRef, &hiliteRect, NULL);
	
	RectRgn(hiliteRgn, &hiliteRect);
	
	parent->HiliteRegion(hiliteRgn);
	
	DisposeRgn(hiliteRgn);
}

void MembersPalette::HiliteRegion(RgnHandle inHiliteRgn)
{
	RGBColor 	dragHiliteColor;
	RgnHandle	hiliteRgn, tempRgn;
	
	SAVECOLORS;
	SAVEGWORLD;
	SetPort(window);
	
	GetDragHiliteColor(window, &dragHiliteColor);
	
	hiliteRgn = NewRgn();
	CopyRgn(inHiliteRgn, hiliteRgn);
	
	tempRgn = NewRgn();
	CopyRgn(hiliteRgn, tempRgn);
	InsetRgn(tempRgn, 2, 2);
	DiffRgn(hiliteRgn, tempRgn, hiliteRgn);
	DisposeRgn(tempRgn);
	
	RGBForeColor(&dragHiliteColor);
	
	if (dragHiliteRgn == NULL)
	{			 
		dragHiliteRgn = hiliteRgn;
		
		if (!EmptyRgn(inHiliteRgn))
			ThemeSoundPlay(kThemeSoundDragTargetHilite);
		 
		PaintRgn(hiliteRgn);
	}
	else if (!EqualRgn(hiliteRgn, dragHiliteRgn))
	{
		InvalRgn(dragHiliteRgn);
		if (!EmptyRgn(dragHiliteRgn))
			ThemeSoundPlay(kThemeSoundDragTargetUnhilite);
		Refresh();
		
		DisposeRgn(dragHiliteRgn);
		
		if (!EmptyRgn(inHiliteRgn))
			ThemeSoundPlay(kThemeSoundDragTargetHilite);
		
		dragHiliteRgn = hiliteRgn;
		
		PaintRgn(hiliteRgn);
	}
	else
		DisposeRgn(hiliteRgn);
	
	RESTOREGWORLD;
	RESTORECOLORS;
}

void MembersPalette::DragScroll(DragReference theDragRef)
{
	Point		theMouse;
	Rect		windowRect, testRect;
	int			oldValue, scrollInterval;
	
	GetDragMouse(theDragRef, &theMouse, 0);
	GlobalToLocal(&theMouse);
	
	windowRect = window->portRect;
	
	testRect = windowRect;
	testRect.bottom = testRect.top + kDragScrollBorder;
	
	if (PtInRect(theMouse, &testRect))
		scrollInterval = -(kDragScrollBorder - theMouse.v)/kDragScrollStep - 1;
	else
	{
		testRect = windowRect;
		testRect.top = testRect.bottom - kDragScrollBorder;
		
		if (PtInRect(theMouse, &testRect))
			scrollInterval = (theMouse.v - testRect.top)/kDragScrollStep + 1;
		else
			return;
	}
	
	scrollInterval *= kDragScrollSpeed;
	
	oldValue = scrollValue;
	
	SetControlValue(controls.scrollbar, oldValue + scrollInterval);
	
	scrollValue = GetControlValue(controls.scrollbar);
	
	if (scrollValue != oldValue)
	{	
		if (dragHiliteRgn != NULL)
			OffsetRgn(dragHiliteRgn, 0, scrollValue - oldValue);

		RefreshMemberPanes();
	}
}

#pragma mark -

pascal short MembersPalette::MemberPaneHitTest(ControlHandle theControl, Point where)
{
	Rect	controlBounds, paneBounds;
	int		memberIndex;
	
	GetControlBounds(theControl, &controlBounds);
	memberIndex = GetControlReference(theControl);
	GetPaneRect(memberIndex, controlBounds, &paneBounds);
	
	if (PtInRect(where, &paneBounds))
		return kControlIconPart;
	else if (PtInRect(where, &controlBounds))
		return kControlIndicatorPart;
	else
		return kControlNoPart;
}

pascal void MembersPalette::MemberPaneDraw(ControlHandle theControl, short thePart)
{
#pragma unused (thePart)
	Rect			controlRect, canvasRect, imageWellRect;
	int				memberIndex;
	icnsEditorPtr	frontEditor;
	Str255			memberName;
	MembersPalettePtr	parent;
	Rect			labelRect;
	MString			label;
	
	parent = icnsEditorClass::statics.membersPalette;
	
	memberIndex = GetControlReference(theControl);
	
	SAVECOLORS;
	SAVEGWORLD;
	
	GetControlBounds(theControl, &controlRect);
	canvasRect = controlRect;
	OffsetRect(&canvasRect, -canvasRect.left, -canvasRect.top + 128);
	
	SetGWorld(icnsEditorClass::statics.canvasGW, NULL);
	
	if (IsControlActive(theControl))
		DrawThemePlacard(&canvasRect, kThemeStateActive);
	else
		DrawThemePlacard(&canvasRect, kThemeStateInactive);
	
	GetPaneRect(memberIndex, canvasRect, &imageWellRect);
		   
	DrawImageWell(theControl, imageWellRect);
	
	BackColor(whiteColor);
	EraseRect(&imageWellRect);
	
	frontEditor = parent->parentEditor;
	
	if (frontEditor)
	{
		if (kMembers[memberIndex].name == frontEditor->currentPixName &&
			IsControlActive(theControl))
			DrawThemeFocusRect(&imageWellRect, true);
		InsetRect(&imageWellRect, 1, 1);
		frontEditor->DrawMember(kMembers[memberIndex].name, imageWellRect);
		InsetRect(&imageWellRect, -1, -1);
	}
	
	icnsClass::GetMemberNameString(kMembers[memberIndex].name, memberName);
	label = memberName;
	
	TextFont(applFont);
	TextSize(9);
	
	if (IsControlActive(theControl))
		SetThemeTextColor(kThemeTextColorPlacardActive, 32, true);
	else
		SetThemeTextColor(kThemeTextColorPlacardInactive, 32, true);
	
	if (icnsEditorClass::statics.preferences.FeatureEnabled(prefsPreviewScaled))
	{
		int height;
		
		labelRect.left = imageWellRect.right + 4;
		labelRect.right = canvasRect.right - 2;
		
		height = label.Width()/(labelRect.right - labelRect.left);
		if (label.Width() % (labelRect.right - labelRect.left))
			height++;
		height *= label.Height();
		
		labelRect.top = canvasRect.top + ((canvasRect.bottom - canvasRect.top) - height)/2;
		labelRect.bottom = labelRect.top + height;
	
	}
	else
	{
		labelRect.left = canvasRect.left + ((canvasRect.right - canvasRect.left) - label.Width())/2;
		labelRect.right = labelRect.left + label.Width();
		
		labelRect.bottom = canvasRect.bottom - 2;
		labelRect.top = labelRect.bottom - label.Height();
	}
	
	label.Draw(labelRect);
	
	TextFont(0);
	TextSize(12);
	
		
	RESTOREGWORLD;
	
	CopyBits((BitMap*)*icnsEditorClass::statics.canvasPix,
			 &qd.thePort->portBits,
			 &canvasRect,
			 &controlRect,
			 srcCopy,
			 parent->window->clipRgn);
			 
	RESTORECOLORS;
}

pascal void MembersPalette::BackgroundPaneDraw(ControlHandle theControl, short thePart)
{
#pragma unused (thePart)
	Rect	controlBounds;
	
	GetControlBounds(theControl, &controlBounds);
	
	EraseRect(&controlBounds);
}

pascal void MembersPalette::StatesPaneDraw(ControlHandle theControl, short thePart)
{
#pragma unused (thePart)
	Rect	paneRect;
	
	GetControlBounds(theControl, &paneRect);
	
	if (IsControlActive(theControl))
	{
		if (IsControlHilited(theControl))
			DrawThemePlacard(&paneRect, kThemeStatePressed);
		else
			DrawThemePlacard(&paneRect, kThemeStateActive);
	}
	else
		DrawThemePlacard(&paneRect, kThemeStateInactive);
}

void MembersPalette::GetPaneRect(int index, Rect parentRect, Rect* paneRect)
{
	if (icnsEditorClass::statics.preferences.FeatureEnabled(prefsPreviewScaled))
	{
		int height, width;
		
		width = height = icnsEditorClass::statics.preferences.GetPreviewSize();
		
		if (width > kMembers[index].width) width =  kMembers[index].width;
		if (height > kMembers[index].height) height = kMembers[index].height;
		
		SetRect(paneRect,
			    parentRect.left + 6,
			    parentRect.top + 6,
			    parentRect.left + 6 + width + 2,
			    parentRect.top + 6 + height + 2);
	}
	else
		SetRect(paneRect,
			    parentRect.left + ((parentRect.right - parentRect.left) - kMembers[index].width)/2 - 1,
			    parentRect.top + 7,
			    parentRect.right - ((parentRect.right - parentRect.left) - kMembers[index].width)/2 + 1,
			    parentRect.top + 7 + kMembers[index].height + 2);
}

pascal void MembersPalette::ScrollbarAction(ControlHandle theControl, SInt16 thePart)
{
	MembersPalettePtr	parentPalette;

	parentPalette = icnsEditorClass::statics.membersPalette; //MembersPalettePtr(::GetWindow(GetControlOwner(theControl)));

	switch (thePart)
	{
		case kControlUpButtonPart:
			SetControlValue(theControl, GetControlValue(theControl) - kScrollingIncrement);
			break;
		
		case kControlDownButtonPart:
			SetControlValue(theControl, GetControlValue(theControl) + kScrollingIncrement);
			break;
			
		case kControlPageUpPart:
			SetControlValue(theControl, GetControlValue(theControl) - parentPalette->pageSize + kScrollingIncrement);
			break;
			
		case kControlPageDownPart:
			SetControlValue(theControl, GetControlValue(theControl) + parentPalette->pageSize - kScrollingIncrement);
			break;
		case kControlIndicatorPart:
			break;
	}
	
	parentPalette->scrollValue = GetControlValue(theControl);
	
	parentPalette->RefreshMemberPanes();
}
