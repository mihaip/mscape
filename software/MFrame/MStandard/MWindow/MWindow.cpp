// __________________________________________________________________________________________
// Program		: Meshroom
// Filename		: MWindow.cpp
// Author		: Mihai Parparita (St. Mary's International School)
// Last modified: April 1, 2000
// Description	: implementation of generic window class

#include "MWindow.h"
#include "MFloater.h"
#include "MApplication.h"

int*		MWindow::IDs = NULL;
int			MWindow::IDCount = 0;
MWindowPtr	MWindow::firstWindow = NULL;
MWindowPtr	MWindow::lastWindow = NULL;
bool		MWindow::floatersVisible = true;
int			MWindow::savedCursor = rArrow;

MWindow::MWindow(short resID, OSType inType)
		:controls(this)
{	
	CreateMWindow(GetNewCWindow(resID, NULL, (WindowPtr)-1L), inType);
}

void MWindow::CreateMWindow(WindowPtr inWindow, OSType inType)
{
	if (inWindow == NULL) return;
	
	window = inWindow;
	
	refCon = 0;
	
	nextWindow = NULL; // we insert ourselves into the linked list by making the previous
	previousWindow = lastWindow; // item point to us, and we point to them
	
	if (lastWindow != NULL)
		lastWindow->nextWindow = this;
	else
	{
		firstWindow = this;
	}
	
	lastWindow = this;
	
	SetThemeWindowBackground(window, kThemeBrushDialogBackgroundActive, false);
	
	
	if (GetFront() != NULL && IsVisible())
	{
		HiliteWindow(GetFront()->GetWindow(), false);
		GetFront()->Deactivate();
	}
	
	type = inType;
	
	SetWRefCon(window, (long)this);
	// the refCon of a window is a number (a long) that is associated with it, and is put
	// there so that applications can identify the windows. In our case we use it to see
	// which editor class instance owns this window. To access it we simply use the
	// GetWRefCon function, and cast the result to a MWindowPtr. 
	
	windowID = GetNewWindowID();
	
	if (type != kDialogType)
		ActivateFloaters();
}

MWindow::MWindow(WindowPtr inWindow, OSType inType)
		:controls(this)
{
	CreateMWindow(inWindow, inType);
}

MWindow::~MWindow(void)
{
	if (type != kDialogType)
		DisposeWindow(window);
	
	// we also have to keep the linked list linked
	if (previousWindow != NULL)
		previousWindow->nextWindow = nextWindow;
	if (nextWindow != NULL)
		nextWindow->previousWindow = previousWindow;
		
	if (firstWindow == this)
		firstWindow = nextWindow;
	
	if (lastWindow == this)
		lastWindow = previousWindow;
		
	ReleaseWindowID(windowID);
}

MWindowPtr MWindow::GetNext()
{
	return nextWindow;
}

MWindowPtr MWindow::GetPrevious()
{
	return previousWindow;
}

MWindowPtr MWindow::GetNextLayered()
{
	return ::GetWindow(GetNextWindow(window));
}

void MWindow::Show()
{
	Rect originRect = {0, 0, 1, 1};
	bool	frontProcess;
	
	frontProcess = MUtilities::IsFrontProcess();
	
	if (!IsWindowVisible(window))
	{
		if (GetFront() != NULL)
		{
			HiliteWindow(GetFront()->GetWindow(), false);
			GetFront()->Deactivate();
		}
		
#if TARGET_API_MAC_CARBON
		if (MUtilities::GestaltVersion(gestaltSystemVersion, 0x08, 0x50) &&
			!MUtilities::GestaltVersion(gestaltSystemVersion, 0x10, 0x00))
			TransitionWindow(window,
							 kWindowZoomTransitionEffect,
							 kWindowShowTransitionAction,
							 &originRect);
		else
			ShowWindow(window);
#else
			ShowHide(window, true);
#endif

#if !TARGET_API_MAC_CARBON			
		ActivateFloaters();
		
		if (frontProcess)
			HiliteWindow(window, true);
		else
			HiliteWindow(window, false);
#endif
		
		
	}
}

void MWindow::Hide()
{
	Rect originRect = {0, 0, 1, 1};
	
	if (IsWindowVisible(window))
	{
		MWindowPtr newFront = this;

#if TARGET_API_MAC_CARBON
		newFront = GetNextLayered();
#else		
		do
		{
			newFront = newFront->GetNextLayered();
		} while (newFront != NULL &&
		 		 (newFront->GetType() == kFloaterType || !newFront->IsVisible()));
#endif

#if TARGET_API_MAC_CARBON
		if (MUtilities::GestaltVersion(gestaltSystemVersion, 0x08, 0x50) &&
			!MUtilities::GestaltVersion(gestaltSystemVersion, 0x10, 0x00))
			TransitionWindow(window,
							 kWindowZoomTransitionEffect,
							 kWindowHideTransitionAction,
							 &originRect);
		else
			HideWindow(window);
#else
			ShowHide(window, false);
#endif
		
#if !TARGET_API_MAC_CARBON
		ActivateFloaters();
#endif
		if (newFront != NULL)
		{
#if TARGET_API_MAC_CARBON
			BringToFront(newFront->GetWindow());
#endif
			HiliteWindow(newFront->GetWindow(), true);
			newFront->Activate();
		}
	}
}

void MWindow::Flush()
{
#if TARGET_API_MAC_CARBON
	QDFlushPortBuffer(GetWindowPort(window), NULL);
#endif
}

bool MWindow::IsBuffered()
{
#if TARGET_API_MAC_CARBON
	return QDIsPortBuffered(GetWindowPort(window));
#else
	return false;
#endif
}

void MWindow::SetPort()
{
	SetPortWindowPort(window);
}

CGrafPtr MWindow::GetPort()
{
	return GetWindowPort(window);
}

void MWindow::LockPortBits()
{
#if TARGET_API_MAC_CARBON
	::LockPortBits((GrafPtr)GetWindowPort(window));
#endif
}

void MWindow::UnlockPortBits()
{
#if TARGET_API_MAC_CARBON
	::UnlockPortBits((GrafPtr)GetWindowPort(window));
#endif
}

Rect MWindow::GetPortRect()
{
	Rect portRect;
	
	GetWindowPortBounds(window, &portRect);
	
	return portRect;	
}

bool MWindow::IsVisible()
{
	return IsWindowVisible(window);
}


void MWindow::Invalidate()
{
	Rect portRect;
	
	portRect = GetPortRect();
	
#if TARGET_API_MAC_CARBON
	InvalWindowRect(window, &portRect);
#else
	SAVEGWORLD;
	
	SetPort();
	
	InvalRect(&portRect);
	
	RESTOREGWORLD;
#endif
}

void MWindow::Validate()
{
	Rect portRect;
	
	portRect = GetPortRect();
	
#if TARGET_API_MAC_CARBON
	ValidWindowRect(window, &portRect);
#else
	SAVEGWORLD;
	
	SetPort();
	
	ValidRect(&portRect);
	
	RESTOREGWORLD;
#endif
}

void MWindow::GetTitle(Str255 title)
{
	GetWTitle(window, title);
}

OSType MWindow::GetType()
{
	return type;
}

int MWindow::GetWindowID()
{
	return windowID;
}

WindowPtr MWindow::GetWindow()
{
	return window;
}

#pragma mark -

void MWindow::SetRefCon(int inRefCon)
{
	refCon = inRefCon;
}

int MWindow::GetRefCon(void)
{
	return refCon;
}

#pragma mark -

Point MWindow::GetPosition(void)
{
	/*RgnHandle	contentRgn;
	Point		position;
	Rect		regionBounds;
	
	contentRgn = NewRgn();
	GetWindowRegion(window,
					kWindowContentRgn,
					contentRgn);
	GetRegionBounds(contentRgn, &regionBounds);
	
	position.h = regionBounds.left;
	position.v = regionBounds.top;
	
	DisposeRgn(contentRgn);
	
	return position;*/
	
	Point	position = {0, 0};
	
	SAVEGWORLD;
	
	SetPort();
	
	LocalToGlobal(&position);
	
	RESTOREGWORLD;
	
	return position;
}

void MWindow::SetPosition(Point position)
{
	MoveWindow(window, position.h, position.v, false);
}

Point MWindow::GetDimensions()
{
	Point	dimensions;
	Rect	windowRect;
	
	windowRect = GetPortRect();
	
	dimensions.h = windowRect.right - windowRect.left;
	dimensions.v = windowRect.bottom - windowRect.top;
	
	return dimensions;
}

Rect MWindow::GetBounds()
{
	return GetPortRect();
}

Point MWindow::GetPhysicalDimensions()
{
	RgnHandle	contentRgn;
	Rect		contentBounds;
	Point		dimensions;
	
	contentRgn = NewRgn();
	GetWindowRegion(window,
					kWindowStructureRgn,
					contentRgn);
	GetRegionBounds(contentRgn, &contentBounds);				
	
	
	dimensions.h = contentBounds.right - contentBounds.left;
	dimensions.v = contentBounds.bottom - contentBounds.top;
	
	DisposeRgn(contentRgn);
	
	return dimensions;
}

Rect MWindow::GetPhysicalBounds()
{
	RgnHandle	structureRgn;
	Rect		bounds;
	
	structureRgn = NewRgn();
	GetWindowRegion(window,
					kWindowStructureRgn,
					structureRgn);
					
	GetRegionBounds(structureRgn, &bounds);
	
	DisposeRgn(structureRgn);
	
	return bounds;
}

void MWindow::SetDimensions(Point dimensions)
{
	if (MUtilities::GestaltVersion(gestaltSystemVersion, 0x10, 0x10) && IsVisible())
	{
		Rect	newBounds;
		Point	currentDimensions;
		
		newBounds = GetPhysicalBounds();
		currentDimensions = GetDimensions();
		newBounds.right += dimensions.h - currentDimensions.h;
		newBounds.bottom += dimensions.v - currentDimensions.v;
		
		TransitionWindow(window, kWindowSlideTransitionEffect, kWindowResizeTransitionAction, &newBounds);
	}
	/*else if (MUtilities::GestaltVersion(gestaltSystemVersion, 0x10, 0x00) && IsVisible())
	{
		int xIncrement, yIncrement;
		Point currentDimensions;
		
		currentDimensions = GetDimensions();
		
		if (dimensions.h > currentDimensions.h)
			xIncrement = 20;//(dimensions.h - currentDimensions.h)/20;
		else
			xIncrement = -20;
		
		if (dimensions.v > currentDimensions.v)
			yIncrement = 20;//(dimensions.v - currentDimensions.v)/20;
		else
			yIncrement = -20;
		
		while (currentDimensions.h != dimensions.h ||
			   currentDimensions.v != dimensions.v)
		{
			currentDimensions.h += xIncrement;
			if (xIncrement > 0 && currentDimensions.h > dimensions.h)
				currentDimensions.h = dimensions.h;
			else if (xIncrement < 0 && currentDimensions.h < dimensions.h)
				currentDimensions.h = dimensions.h;
			currentDimensions.v += yIncrement;
			if (yIncrement > 0 && currentDimensions.v > dimensions.v)
				currentDimensions.v = dimensions.v;
			else if (yIncrement < 0 && currentDimensions.v < dimensions.v)
				currentDimensions.v = dimensions.v;
			
			SizeWindow(window, currentDimensions.h, currentDimensions.v, false);
		}
	}*/
	else
		SizeWindow(window, dimensions.h, dimensions.v, false);
}

int MWindow::GetBorderThickness(int side)
{
#if TARGET_API_MAC_CARBON
	if (MUtilities::GestaltVersion(gestaltSystemVersion, 0x08, 0x50))
	{
		Rect	structureWidths;
		
		GetWindowStructureWidths(window, &structureWidths);
		
		switch (side)
		{
			case borderTop: return structureWidths.top;
			case borderLeft: return structureWidths.left;
			case borderRight: return structureWidths.right;
			case borderBottom: return structureWidths.bottom;
		}		
	}
	else
#endif
	{
		RgnHandle	contentRgn, structureRgn;
		Rect		contentBounds, structureBounds;
		int			thickness;
		
		contentRgn = NewRgn();
		structureRgn = NewRgn();
		
		GetWindowRegion(window, kWindowContentRgn, contentRgn);
		GetRegionBounds(contentRgn, &contentBounds);
		
		GetWindowRegion(window, kWindowStructureRgn, structureRgn);
		GetRegionBounds(structureRgn, &structureBounds);
		
		switch (side)
		{
			case borderTop:
				thickness = contentBounds.top - structureBounds.top;
				break;
			case borderLeft:
				thickness = contentBounds.left - structureBounds.left;
				break;
			case borderRight:
				thickness = structureBounds.right - contentBounds.right;
				break;
			case borderBottom:
				thickness = structureBounds.bottom - contentBounds.bottom;
				break;
		}
		
		DisposeRgn(contentRgn);
		DisposeRgn(structureRgn);
		
		return thickness;
	}
	
	return 0;
}

#pragma mark -

int MWindow::GetNewWindowID()
{
	int i, ID = 0;
	int* newIDs;
	
	for (i=0; i < IDCount; i++)
	{
		if (ID <= IDs[i])
			ID = IDs[i] + 1;
		else
			break;
	}
	
	newIDs = new int[IDCount + 1];
	
	for (int j=0; j < i; j++)
		newIDs[j] = IDs[j];
		
	newIDs[i] = ID;
	
	for (int j= i + 1; j < IDCount + 1; j++)
		newIDs[j] = IDs[j - 1];
		
	if (IDs != NULL)
		delete [] IDs;
	
	IDs = newIDs;
	
	IDCount++;
	
	return ID;
}

void MWindow::ReleaseWindowID(int ID)
{
	int i;
	int* newIDs;
	
	for (i=0; i < IDCount; i++)
	{
		if (IDs[i] == ID)
			break;
	}
	
	if (IDCount - 1)
		newIDs = new int[IDCount - 1];
	else
		newIDs = 0;
	
	for (int j=0; j < i; j++)
		newIDs[j] = IDs[j];
	
	for (int j=i; j < IDCount - 1; j++)
		newIDs[j] = IDs[j + 1];
	
	delete [] IDs;
	
	IDs = newIDs;
	
	IDCount--;
}

int MWindow::GetWindowCount(void)
{
	return IDCount;
}

int MWindow::GetNthWindowID(int index)
{
	if (index >= IDCount)
		return -1;
	else
		return IDs[index];
}

MWindowPtr MWindow::GetWindow(int ID)
{
	MWindowPtr currentWindow;
	
	currentWindow = firstWindow;
	
	while (currentWindow != NULL)
	{
		if (currentWindow->windowID == ID)
			return currentWindow;
		
		currentWindow = currentWindow->nextWindow;
	}
	
	return NULL;
}

#pragma mark -

MWindowPtr MWindow::GetFirst()
{
	return firstWindow;
}

MWindowPtr MWindow::GetLast()
{
	return lastWindow;
}

MWindowPtr MWindow::GetFront()
{
	MWindowPtr currentWindow;
	
#if TARGET_API_MAC_CARBON
	currentWindow = ::GetWindow(FrontNonFloatingWindow());
#else
	
	currentWindow = ::GetWindow(FrontWindow());
	
	while (currentWindow != NULL && currentWindow->GetType() == kFloaterType)
	{
		do 
		{
			currentWindow = currentWindow->GetNextLayered();
		} while((currentWindow != NULL) && !currentWindow->IsVisible());
	}
#endif
	
	return currentWindow;
}

MWindowPtr MWindow::GetFront(MType type)
{
	MWindowPtr frontWindow;
	
	frontWindow = GetFront();
	
	if (frontWindow == NULL || frontWindow->GetType() != type)
		return NULL;
	else
		return frontWindow;	
}

MWindowPtr MWindow::GetLastFloater()
{
	MWindowPtr currentWindow = NULL;
	MWindowPtr previousWindow = NULL;
	
	currentWindow = ::GetWindow(FrontWindow());
	
	while (currentWindow != NULL && currentWindow->GetType() == kFloaterType)
	{
		do 
		{
			previousWindow = currentWindow;
			currentWindow = currentWindow->GetNextLayered();
		} while((currentWindow != NULL) && !currentWindow->IsVisible());
	}
	
	return previousWindow;
}

#pragma mark -

void MWindow::ActivateAll()
{
	MUtilities::ChangeCursor(savedCursor);
	ActivateFloaters();
	
	if (GetFront() != NULL)
	{
		HiliteWindow(GetFront()->GetWindow(), true);	
		GetFront()->Activate();
	}
}

void MWindow::DeactivateAll()
{
	savedCursor = MUtilities::GetCurrentCursor();
	MUtilities::ChangeCursor(rArrow);
	
	if (GetFront() != NULL)
	{
		HiliteWindow(GetFront()->GetWindow(), false);
		GetFront()->Deactivate();
	}
		
	DeactivateFloaters();
}

void MWindow::ActivateFloaters()
{
	MWindowPtr currentWindow, lastFloater;
	
	currentWindow = ::GetWindow(FrontWindow());
	lastFloater = NULL;
	
	while (currentWindow != NULL)
	{
		if (currentWindow->GetType() == kFloaterType &&
			!currentWindow->IsActive())
		{
			if (lastFloater != NULL)
				SendBehind(currentWindow->GetWindow(), lastFloater->GetWindow());
			else
				::BringToFront(currentWindow->GetWindow());
			
			::HiliteWindow(currentWindow->GetWindow(), true);
			currentWindow->Activate();
			
			lastFloater = currentWindow;
		}
		
		currentWindow = currentWindow->GetNextLayered();
	}
}

void MWindow::DeactivateFloaters()
{
	MWindowPtr currentWindow;
	
	currentWindow = GetFirst();
	
	while (currentWindow != NULL)
	{
		if (currentWindow->GetType() == kFloaterType &&
			currentWindow->IsActive())
		{
			::HiliteWindow(currentWindow->GetWindow(), false);
			currentWindow->Deactivate();
		}	
		
		currentWindow = currentWindow->GetNext();
	}
}

void MWindow::HideFloaters()
{
	if (floatersVisible)
	{
		MWindowPtr currentWindow;
		
		currentWindow = GetFirst();
		
		while (currentWindow != NULL)
		{
			if (currentWindow->GetType() == kFloaterType)
			{
				MFloaterPtr(currentWindow)->originallyVisible = currentWindow->IsVisible();
				MFloaterPtr(currentWindow)->Hide();
			}	
			
			currentWindow = currentWindow->GetNext();
		}
		
		floatersVisible = false;
	}
}

void MWindow::ShowFloaters()
{
	if (!floatersVisible)
	{
		MWindowPtr currentWindow;
		
		currentWindow = GetFirst();
		
		while (currentWindow != NULL)
		{
			if (currentWindow->GetType() == kFloaterType)
			{
				if (MFloaterPtr(currentWindow)->originallyVisible)
					MFloaterPtr(currentWindow)->Show();
			}	
			
			currentWindow = currentWindow->GetNext();
		}
		
		floatersVisible = true;
	}
}

void MWindow::Select()
{
	if (GetFront() == this)
		return;
	
	if (GetType() == kFloaterType)
		::BringToFront(window);
	else
	{
		MWindowPtr	currentFrontWindow;
		
		currentFrontWindow = GetFront();
		
		if (MApplication::IsFrontProcess() && (currentFrontWindow != NULL))
		{
			HiliteWindow(currentFrontWindow->GetWindow(), false);
			currentFrontWindow->Deactivate();
		}
		
		if (currentFrontWindow == NULL)
			::BringToFront(window);
		else if (MWindow::GetLastFloater() != NULL)
			SendBehind(window, MWindow::GetLastFloater()->GetWindow());
		else
		{
			::BringToFront(window);
			MUtilities::sounds.Play(kThemeSoundWindowActivate);
		}

		if (::GetWindow(FrontWindow())->GetType() == kFloaterType)
			MUtilities::sounds.Play(kThemeSoundWindowActivate);
		
		if (MApplication::IsFrontProcess())
		{
			Activate();
			HiliteWindow(window, true);
		}
	}
}

void MWindow::Drag(Point startPoint, Rect draggingBounds)
{
#if TARGET_API_MAC_CARBON
#pragma unused(draggingBounds)
	DragWindow(window, startPoint, NULL);
#else
	SInt16		topLimit, newHorizontalWindowPosition, newVerticalWindowPosition;
	Rect		dragRect;
	SInt16		horizontalOffset, verticalOffset;
	GrafPtr		savePort, windowManagerPort = NULL;
	KeyMap		keyMap;
	Boolean		commandKeyDown = false;
	RgnHandle	dragRegionHdl, windowContentRegionHdl;
	SInt32		dragResult;

	if(StillDown()) 
	{
		if (GetFront() != this && GetType() != kFloaterType)
			Select();
			
		topLimit = GetMBarHeight() + 4;
		dragRect = draggingBounds;
		if(dragRect.top < topLimit)
			dragRect.top = topLimit;
	
		::GetPort(&savePort);
#if !TARGET_API_MAC_CARBON
		GetWMgrPort(&windowManagerPort);
		::SetPort(windowManagerPort);
#endif

		SetClip(GetGrayRgn());

		GetKeys(keyMap);
		if(keyMap[1] & 0x8000)
			commandKeyDown = true;
	
		if((commandKeyDown == true) || (GetType() != kFloaterType)) 
		{
			if(commandKeyDown == false)
				ClipAbove(GetFront()->GetWindow());
			else
				ClipAbove(window);
		}

		dragRegionHdl = NewRgn();
		GetWindowRegion(window, kWindowStructureRgn, dragRegionHdl);
		
		if (GetType() == kFloaterType)
			MUtilities::sounds.Start(kThemeDragSoundMoveUtilWindow);
		else
			MUtilities::sounds.Start(kThemeDragSoundMoveWindow);
		
		dragResult = DragGrayRgn(dragRegionHdl,
								 startPoint,
								 &dragRect,
								 &dragRect,
								 noConstraint,
								 NULL);
								 
		MUtilities::sounds.End();
		::SetPort(savePort);

		if(dragResult != 0) 
		{
			horizontalOffset = dragResult & 0xFFFF;
			verticalOffset = dragResult >> 16;

			if(verticalOffset != -32768) 
			{
				Rect	contentBounds;
				
				windowContentRegionHdl = NewRgn();
				GetWindowRegion(window, kWindowContentRgn, windowContentRegionHdl);
	
				GetRegionBounds(windowContentRegionHdl, &contentBounds);
	
				newHorizontalWindowPosition = contentBounds.left + horizontalOffset;
				newVerticalWindowPosition = contentBounds.top + verticalOffset;
				MoveWindow(window, newHorizontalWindowPosition, newVerticalWindowPosition, false);
									 
				DisposeRgn(windowContentRegionHdl);
			}
		}

		if(commandKeyDown == false)
			Select();

		DisposeRgn(dragRegionHdl);
	}
#endif
}

void MWindow::SendKeyDown(EventRecord* eventPtr)
{
	MWindowPtr currentWindow;
	
	currentWindow = ::GetWindow(FrontWindow());
	
	while (currentWindow != NULL)
	{
		if (currentWindow->GetType() == kFloaterType)
			currentWindow->HandleKeyDown(eventPtr);
		else if (currentWindow == GetFront())
			currentWindow->HandleKeyDown(eventPtr);
		currentWindow = currentWindow->GetNextLayered();
	}
}

void MWindow::CenterOnFront(MWindowPtr window)
{
	MWindowPtr frontWindow;
	Rect bounds, parentBounds;
	Point newPosition;
	
	SAVEGWORLD;
	
	frontWindow = GetFront();
	
	if (frontWindow != NULL)
		frontWindow->SetPort();

	bounds = window->GetPortRect();
	
	if (frontWindow != NULL)
		parentBounds = frontWindow->GetPortRect();
	else
	{
		GDHandle		mainScreen;
		
		mainScreen = GetMainDevice();
		parentBounds = (**mainScreen).gdRect;
	}
	
	
	newPosition.h = ((parentBounds.right - parentBounds.left) - (bounds.right - bounds.left))/2;
	newPosition.v = ((parentBounds.bottom - parentBounds.top) - (bounds.bottom - bounds.top))/2;
	
	LocalToGlobal(&newPosition);
	
	if (newPosition.h < window->GetBorderThickness(borderLeft)) newPosition.h = window->GetBorderThickness(borderLeft);
	if (newPosition.v < GetMBarHeight() + window->GetBorderThickness(borderTop)) newPosition.v = GetMBarHeight() + window->GetBorderThickness(borderTop);
	
	window->SetPosition(newPosition);
	
	RESTOREGWORLD;
}

void MWindow::CenterOnScreen(MWindowPtr window)
{
	Rect 		bounds, parentBounds;
	Point 		newPosition;
	GDHandle	mainScreen;
	
	bounds = window->GetPortRect();
		
	mainScreen = GetMainDevice();
	parentBounds = (**mainScreen).gdRect;
	
	newPosition.h = ((parentBounds.right - parentBounds.left) - (bounds.right - bounds.left))/2;
	newPosition.v = ((parentBounds.bottom - parentBounds.top) - (bounds.bottom - bounds.top))/2;
	
	window->SetPosition(newPosition);
}


#pragma mark -

void MWindow::Close(void)
{
	Hide();
}

void MWindow::Activate(void)
{
	controls.ActivateAll();
}

void MWindow::Deactivate(void)
{
	controls.DeactivateAll();
}

bool MWindow::IsActive()
{
	return IsWindowHilited(window);
}

void MWindow::UpdateCursor(Point theMouse)
{
#pragma unused(theMouse)
}

void MWindow::DoIdle(MWindowPtr windowUnderMouse)
{
#pragma unused(windowUnderMouse)
}

void MWindow::Refresh()
{
	RgnHandle visibleRegion = NewRgn();
	SAVEGWORLD;
		
	SetPort();
	
	BeginUpdate(window);
	
	DEBUG("\pbegan updating");
	
	UpdateControls(window, GetPortVisibleRegion(GetWindowPort(window), visibleRegion));
	
	DEBUG("\pupdated controls");
	
	DisposeRgn(visibleRegion);
	
	EndUpdate(window);
	
	RESTOREGWORLD;
	
	DEBUG("\pall done refreshing");
}

void MWindow::HandleContentClick(EventRecord* eventPtr)
{
	Point			where;
	ControlHandle	clickedControl;
	short			part;
	
	where = eventPtr->where;
	
	SAVEGWORLD;
	
	SetPort();
	
	GlobalToLocal(&where);
	
	if ((part = FindControl(where, window, &clickedControl)) &&
		(part != kControlNoPart))
	{
		MControlPtr	control;
		
		control = MControlPtr(GetControlReference(clickedControl));
		
		if (TrackControl(clickedControl, where, control->GetTrackingFunction()))
			control->HandleClick();
	}
	
	RESTOREGWORLD;
}

void MWindow::HandleGrow(Point where)
{
	Rect		maxGrowRect;
	long		growSize;
	int			h, v;
	RgnHandle	updateRgn;
	
	SetRect(&maxGrowRect,
			64,
			64,
			32000,
			32000);
			
	growSize = GrowWindow(window, where, &maxGrowRect);
	
	h = growSize & 0x0000FFFF;
	v = (growSize >> 16) & 0x0000FFFF;
	
	SAVEGWORLD;
	SetPort();
	
	updateRgn = NewRgn(); // we must invalidate the old window region...
	GetPortVisibleRegion(GetWindowPort(window), updateRgn);
	InvalWindowRgn(window, updateRgn);
	
	SizeWindow(window, h, v, true); //...do the resizing
	
	GetPortVisibleRegion(GetWindowPort(window), updateRgn); // and invalidate the new one as well
	InvalWindowRgn(window, updateRgn);
	
	DisposeRgn(updateRgn); // and now we're done with the region
	
	RESTOREGWORLD;
	
	RepositionControls();
}

void MWindow::ToggleZoom()
{
	;
}

void MWindow::RepositionControls()
{
	;
}

void MWindow::HandleKeyDown(EventRecord* eventPtr)
{
#pragma unused (eventPtr)
}

#pragma mark -


pascal Boolean MWindow::StandardDialogFilter(DialogPtr dialog, EventRecord* eventPtr, short* itemHit)
{
	bool	handledEvent = false;
	GrafPtr	oldPort;
	MWindowPtr window;
	
	switch (eventPtr->what)
	{
		//case osEvt:
		case activateEvt:
			Rect	portRect;
			
			GetPortBounds(GetDialogPort(dialog), &portRect);
			
#if TARGET_API_MAC_CARBON
			InvalWindowRect(GetDialogWindow(dialog), &portRect);
#else
			::GetPort(&oldPort);
			SetPortDialogPort(dialog);
			
			
			InvalRect(&portRect);
			
			::SetPort(oldPort);
#endif
			break;
		case updateEvt:
			if ((DialogPtr) eventPtr->message != dialog)
			{
				window = ::GetWindow((WindowPtr)eventPtr->message);
				if (window != NULL)
					window->Refresh();
			}
			else
				handledEvent = StdFilterProc(dialog, eventPtr, itemHit);
			break;
		default:
			::GetPort(&oldPort);
			SetPortDialogPort(dialog);
			
			handledEvent = StdFilterProc(dialog,eventPtr,itemHit);
			::SetPort(oldPort);
			break;
	}
	return handledEvent;
}

MWindowPtr GetWindow(WindowPtr window)
{
	MWindowPtr theWindow;
	
	if (window == NULL) 
		return NULL;
	
	theWindow = (MWindowPtr)GetWRefCon(window);
	
	if (theWindow == NULL ||
		theWindow->GetWindow() != window)
		return NULL; 
	else
		return theWindow;
}

MWindowPtr GetWindow(WindowPtr window, MType type)
{
	MWindowPtr theWindow;
	
	if (window == NULL)
		return NULL;
		
	theWindow = (MWindowPtr)GetWRefCon(window);
	
	if (theWindow == NULL ||
		theWindow->GetWindow() != window ||
		theWindow->GetType() != type)
		return NULL;
	else
		return theWindow;
}
