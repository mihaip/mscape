#include "iconBrowserClass.h"
#include "icnsEditorClass.h"
#include "MAlert.h"

iconBrowserClass::iconBrowserClass(FSSpec file, OpenFuncPtr OpenFunc, int format) :
				  MWindow(rBrowserWind, kBrowserType),
				  theList(BrowserStringCompare, IconDraw, IconHitTest, IconFilter, IconUpdate)
{
	Str255 title;
	
	status = 0;
	
	if (window == NULL)
	{
		status |= outOfMemory;
		return;
	}
	srcFileSpec = file;
	
	Open = OpenFunc;
	
	if (CreateControls() != noErr)
	{
		status |= outOfMemory;
		return;
	}
	
	lastSelectionTime = LMGetTicks();
	lastSelection = -1;
	
	drawIcon.srcFileSpec = file;
	
	BuildIconList();
	
	switch (format)
	{
		case formatMacOSOld:
			SetBevelButtonMenuValue(controls.menu, mIBOld);
			break;
		case formatMacOSNew:
			SetBevelButtonMenuValue(controls.menu, mIBNew);
			break;
		default:
			SetBevelButtonMenuValue(controls.menu, mIBBoth);
			break;
	}
	
	shownIconTypes = -1;
	
	RefreshIconTypes();
	
	RepositionControls();
	
	GetWTitle(window, title);
	SubstituteString(title, "\p<name>", srcFileSpec.name);
	SetWTitle(window, title);
	
	Show();
	
	Refresh();
}

OSErr iconBrowserClass::CreateControls()
{
	ControlFontStyleRec			smallTextStyle;
	ControlUserPaneDrawUPP		listDrawUPP, placardDrawUPP;
	ControlUserPaneHitTestUPP	listHitTestUPP;
	ControlActionUPP			scrollBarActionUPP;
	
	// this is the text style that we'll be using for the text controls
	smallTextStyle.flags = kControlUseFontMask | kControlUseSizeMask | kControlUseJustMask;
	smallTextStyle.font = kThemeSmallSystemFont; // this font is installed on all systems
	smallTextStyle.size = 9;
	smallTextStyle.just = teFlushLeft;
	
	CreateRootControl(window, &controls.rootControl);
	
	controls.scrollBar = GetNewControl(rIBScrollBar, window);
	if (controls.scrollBar == NULL) return mFulErr;
	scrollBarActionUPP = NewControlActionProc(ScrollBarAction);
	SetControlAction(controls.scrollBar, scrollBarActionUPP);
	
	controls.infoPlacard = GetNewControl(rIBInfoPlacard, window);
	if (controls.infoPlacard == NULL) return mFulErr;
	placardDrawUPP = NewControlUserPaneDrawProc(InfoPlacardDraw);
	SetControlData(controls.infoPlacard,
				   kControlNoPart,
				   kControlUserPaneDrawProcTag, 
				   sizeof(placardDrawUPP),
				   (Ptr) &placardDrawUPP);
				   
	
	controls.menu = GetNewControl(rIBMenu, window);
	if (controls.menu == NULL) return mFulErr;
	SetControlFontStyle(controls.menu, &smallTextStyle); // set the style too
	
	controls.list = GetNewControl(rIBList, window);
	if (controls.list == NULL) return mFulErr;
	
	listDrawUPP = NewControlUserPaneDrawProc(ListDraw); 
	listHitTestUPP = NewControlUserPaneHitTestProc(ListHitTest);
	
	SetControlData(controls.list, // we set the drawing function
				   kControlNoPart,
				   kControlUserPaneDrawProcTag,
				   sizeof(listDrawUPP),
				   (Ptr) &listDrawUPP);
				  
	SetControlData(controls.list, // and hit test function
				   kControlNoPart,
				   kControlUserPaneHitTestProcTag, 
				   sizeof(listHitTestUPP),
				   (Ptr) &listHitTestUPP);
				   
	return noErr;
}

OSErr iconBrowserClass::BuildIconList()
{
	short		oldFile, file, iconCount;
	DialogPtr	progressDialog;
	ControlHandle	progressBar, progressText;
	Str255		dialogTitle;
	
	theList.SetDisplayFont(applFont, 9);
	
	progressDialog = GetNewDialog(rBrowserProgressDialog, NULL, (WindowPtr)-1L);
	GetDialogItemAsControl(progressDialog, iIBProgressBar, &progressBar);
	GetDialogItemAsControl(progressDialog, iIBProgressText, &progressText);
	
	oldFile = CurResFile();
	file = FSpOpenResFile(&srcFileSpec, fsRdPerm);
	UseResFile(file);
	
	iconCount = Count1Resources('icns') + Count1Resources('ICN#') + Count1Resources('ics#');
	
	CloseResFile(file);
	UseResFile(oldFile);
	
	SetControlMaximum(progressBar, iconCount);
	
	GetWTitle(progressDialog, dialogTitle);
	SubstituteString(dialogTitle, "\p<name>", srcFileSpec.name);
	SetWTitle(progressDialog, dialogTitle);
	
	ShowWindow(progressDialog);
	
	file = FSpOpenResFile(&srcFileSpec, fsRdPerm);
	UseResFile(file);
	
	LoadNew(oldFile, file, progressBar, progressText);
	LoadOld(oldFile, file, progressBar, progressText);
	
	CloseResFile(file);
	UseResFile(oldFile);
	
	DisposeDialog(progressDialog);
	
	scrollingIncrement = theList.GetAverageHeight();
	
	return noErr;
}

void iconBrowserClass::LoadNew(short oldFile, short file, ControlHandle progressBar, ControlHandle progressText)
{
	int iconCount, cellHeight, counter;
	short ID;
	Str255 tableString, name, IDAsString;
	OSType type;
	Handle icon;
	
	iconCount = Count1Resources('icns');
	newCellDrawingData = new ListDrawingData[iconCount];

	
	for (int i=1; i <= iconCount; i++)
	{
		icon = Get1IndResource('icns', i);
		
		GetResInfo(icon, &ID, &type, name);
		
		newCellDrawingData[i - 1].parentBrowser = this;
		GeticnsInfo((IconFamilyHandle)icon, &newCellDrawingData[i - 1].members, &cellHeight);
		newCellDrawingData[i - 1].icon = &drawIcon;
		newCellDrawingData[i - 1].newType = true;
		
		ReleaseResource(icon);
		
		UseResFile(oldFile);
		
		if (name[0] != 0)
			GetIndString(tableString, rIBStrings, eIBListName);
		else
			GetIndString(tableString, rIBStrings, eIBListNoName);
		
		NumToString(ID, IDAsString);
		SubstituteString(tableString, "\p<ID>", IDAsString);
		
		if (name[0] != 0)
			SubstituteString(tableString, "\p<name>", name);
		
		SubstituteString(tableString, "\p<type>", "\picns");
		
		theList.InsertSorted(tableString,
							 20 + cellHeight,
							 &newCellDrawingData[i - 1]);
		
		counter = GetControlValue(progressBar);
		SetControlValue(progressBar, ++counter);
		
		if (name[0] != 0)
			GetIndString(tableString, rIBStrings, eIBProgressName);
		else
			GetIndString(tableString, rIBStrings, eIBProgressNoName);
			
		SubstituteString(tableString, "\p<ID>", IDAsString);
		
		if (name[0] != 0)
			SubstituteString(tableString, "\p<name>", name);
			
		SetControlText(progressText, tableString);
		Draw1Control(progressText);
		
		UseResFile(file);
	}
}

void iconBrowserClass::LoadOld(short oldFile, short file, ControlHandle progressBar, ControlHandle progressText)
{
	LoadOldFamily('ICN#', &icnCellDrawingData, oldFile, file, progressBar, progressText);
	LoadOldFamily('ics#', &icsCellDrawingData, oldFile, file, progressBar, progressText);
}

void iconBrowserClass::LoadOldFamily(OSType type,
									 ListDrawingData** drawingData,
									 short oldFile, short file,
									 ControlHandle progressBar,
									 ControlHandle progressText)
{
	int counter, iconCount, cellHeight, row, col;
	short ID;
	Str255 tableString, name, IDAsString, typeAsString;
	Handle icon;
	

	iconCount = Count1Resources(type);
	*drawingData = new ListDrawingData[iconCount];
	
	for (int i=1; i <= iconCount; i++)
	{
		icon = Get1IndResource(type, i);
		
		GetResInfo(icon, &ID, &type, name);
		
		(*drawingData)[i - 1].parentBrowser = this;
		GetICNInfo(ID, name, &(*drawingData)[i - 1].members, &cellHeight);
		(*drawingData)[i - 1].icon = &drawIcon;
		(*drawingData)[i - 1].newType = false;
		
		ReleaseResource(icon);
		
		UseResFile(oldFile);
		
		if (name[0] != 0)
			GetIndString(tableString, rIBStrings, eIBListName);
		else
			GetIndString(tableString, rIBStrings, eIBListNoName);
		
		NumToString(ID, IDAsString);
		SubstituteString(tableString, "\p<ID>", IDAsString);
		
		if (name[0] != 0)
			SubstituteString(tableString, "\p<name>", name);
		
		typeAsString[0] = 4;
		typeAsString[1] = (type & 0xFF000000) >> 24;
		typeAsString[2] = (type & 0x00FF0000) >> 16;
		typeAsString[3] = (type & 0x0000FF00) >> 8;
		typeAsString[4] = (type & 0x000000FF) >> 0;
		
		SubstituteString(tableString, "\p<type>", typeAsString);
		
		
		if (theList.FindValue(tableString, &(*drawingData)[i - 1], &row, &col) != noErr)		
			theList.InsertSorted(tableString,
								 20 + cellHeight,
								 &(*drawingData)[i - 1]);
							
		counter = GetControlValue(progressBar);
		SetControlValue(progressBar, ++counter);
		
		if (name[0] != 0)
			GetIndString(tableString, rIBStrings, eIBProgressName);
		else
			GetIndString(tableString, rIBStrings, eIBProgressNoName);
			
		SubstituteString(tableString, "\p<ID>", IDAsString);
		
		if (name[0] != 0)
			SubstituteString(tableString, "\p<name>", name);
			
		SetControlText(progressText, tableString);
		Draw1Control(progressText);
		
		UseResFile(file);
	}
}

iconBrowserClass::~iconBrowserClass()
{
	delete newCellDrawingData;
	delete icnCellDrawingData;
	delete icsCellDrawingData;
}

void iconBrowserClass::Close()
{
	MWindow::Hide();
}

void iconBrowserClass::RepositionControls()
{
	Rect	windowRect, controlRect;
	int		h, v;
	
	SAVEGWORLD;
	
	SetPort(window);
	
	windowRect = window->portRect;
	
	HideControl(controls.rootControl);
	
	GetControlBounds(controls.menu, &controlRect);
	h = controlRect.left;
	v = windowRect.bottom - windowRect.top - 15;
	MoveControl(controls.menu, h, v);
	
	GetControlBounds(controls.infoPlacard, &controlRect);
	h = windowRect.right - windowRect.left - 100 - 16 + 2;
	v = 16;
	SizeControl(controls.infoPlacard, h, v);
	h = controlRect.left;
	v = windowRect.bottom - windowRect.top - 15;
	MoveControl(controls.infoPlacard, h, v);
	
	GetControlBounds(controls.scrollBar, &controlRect);
	h = windowRect.right - (controlRect.right - controlRect.left) + 1;
	v = windowRect.top - 1;
	MoveControl(controls.scrollBar, h, v);
	h = (controlRect.right - controlRect.left);
	v = windowRect.bottom - windowRect.top - 16 + 4;
	SizeControl(controls.scrollBar, h, v);
	
	h = windowRect.right - windowRect.left - 15;
	v = windowRect.bottom - windowRect.top - 15;
	SizeControl(controls.list, h, v);
	
	if (theList.GetHeight() - v > 0)
		SetControlMaximum(controls.scrollBar, theList.GetHeight() - v);
	else
		SetControlMaximum(controls.scrollBar, 0);
		
	if (GestaltVersion(gestaltSystemVersion, 0x08, 0x50))
		SetControlViewSize(controls.scrollBar, v);
	
	ShowControl(controls.rootControl);
	
	RESTOREGWORLD;
}

void iconBrowserClass::Activate()
{
	ActivateControl(controls.rootControl);
}

void iconBrowserClass::Deactivate()
{
	DeactivateControl(controls.rootControl);
}

void iconBrowserClass::DoIdle()
{
	;
}

void iconBrowserClass::Refresh()
{
	SAVEGWORLD;
	
	
	SetPort(window);
	
	BeginUpdate(window);
	
	UpdateControls(window, window->visRgn);
	
	EndUpdate(window);
	
	RESTOREGWORLD;
}

void iconBrowserClass::RefreshList()
{
	Str255	iconCount,iconCountLabel;
	Rect	listRect;
	int		v;
	
	SAVEGWORLD;
	
	SetPort(window);
	
	theList.Filter();
	Draw1Control(controls.list);
	
	GetControlBounds(controls.list, &listRect);
	v = listRect.bottom - listRect.top;
	if (theList.GetHeight() - v > 0)
		SetControlMaximum(controls.scrollBar, theList.GetHeight() - v);
	else
		SetControlMaximum(controls.scrollBar, 0);
	
	GetIndString(iconCountLabel, rIBStrings, eIBIconCountLabel);
	NumToString(theList.CountVisible(), iconCount);
	SubstituteString(iconCountLabel, "\p<number>", iconCount);
	SetControlTitle(controls.infoPlacard, iconCountLabel);
	Draw1Control(controls.infoPlacard);
	
	RESTOREGWORLD;
}

void iconBrowserClass::HandleKeyDown(EventRecord* eventPtr)
{
	if (theList.HandleEvent(eventPtr))
	{
		SetControlValue(controls.scrollBar, theList.GetVOffset());
		Draw1Control(controls.list);
	}
}

void iconBrowserClass::HandleContentClick(EventRecord* eventPtr)
{
	Point 				where, oldMouse = {-1, -1}, currentMouse;
	short 				controlPart;
	ControlHandle 		clickedControl;
	int					currentSelection, part;
	Rect				controlRect;
	
	if (MWindow::GetFront() != this)
	{
		MWindowPtr(this)->Select();
		return;
	}
	
	where = eventPtr->where;
	
	SAVEGWORLD;
	
	SetPort(window);
	
	GlobalToLocal(&where);
	
	controlPart = FindControl(where, window, &clickedControl);
	
	if (controlPart != kControlNoPart)
	{
		if (clickedControl == controls.scrollBar)
			TrackControl(clickedControl, where, (ControlActionUPP) -1);
		else if (clickedControl == controls.menu)
		{
			
			TrackControl(clickedControl, where, NULL);
			
			RefreshIconTypes();
		}
		else if (clickedControl == controls.list)
		{
			GetControlBounds(clickedControl, &controlRect);
			do
			{
				GetMouse(&currentMouse);
				
				if (currentMouse.h != oldMouse.h || currentMouse.v != oldMouse.v)
				{
					oldMouse = currentMouse;
					currentMouse.h -= controlRect.left;
					currentMouse.v -= controlRect.top;
				
					currentSelection = theList.Select(currentMouse, GetControlValue(controls.scrollBar), &part);
					Draw1Control(controls.list);
				}
			} while(Button());
			if (((LMGetTicks() - lastSelectionTime) < LMGetDoubleTime())
				&& (currentSelection == lastSelection))
			{
				Str255 choice;
				long ID;
				ListDrawingData* cellData;
				
				theList.GetValue(currentSelection, 0, choice);
				theList.GetCellClientData(currentSelection, 0, &cellData);
				ID = GetCellID(choice);
				if (cellData->newType)
					Open(&srcFileSpec, ID, formatMacOSNew, part);
				else
					Open(&srcFileSpec, ID, formatMacOSOld, part);
			}
			
			lastSelectionTime = LMGetTicks();
			lastSelection = currentSelection;
		}
		else
			SysBeep(6);
	}
	RESTOREGWORLD;
}

void iconBrowserClass::RefreshIconTypes()
{
	Str255 iconTypes, selectedType, iconCountLabel, iconCountAsString;
	short menuSelection;
	MenuHandle typeMenu;
	int		v;
	Rect	controlRect;
	
	GetBevelButtonMenuValue(controls.menu, &menuSelection);
	
	if (menuSelection != shownIconTypes)
	{
		shownIconTypes = menuSelection;
		
		GetIndString(iconTypes, rIBStrings, eIBIconTypes);
				
		typeMenu = (MenuHandle)Get1Resource('MENU', rIBTypesMenu);
		
		GetMenuItemText(typeMenu, menuSelection, selectedType);
		
		SubstituteString(iconTypes, "\p<types>", selectedType);
		
		SetControlTitle(controls.menu, iconTypes);
		
		theList.Filter();
		
		GetControlBounds(controls.list, &controlRect);
		
		v = controlRect.bottom - controlRect.top;
		
		if (theList.GetHeight() - v > 0)
			SetControlMaximum(controls.scrollBar, theList.GetHeight() - v);
		else
			SetControlMaximum(controls.scrollBar, 0);
		
		if (GetControlValue(controls.scrollBar) > GetControlMaximum(controls.scrollBar))
			SetControlValue(controls.scrollBar, GetControlMaximum(controls.scrollBar));
		
		Draw1Control(controls.list);
			
		scrollingIncrement = theList.GetAverageHeight();
		
		GetIndString(iconCountLabel, rIBStrings, eIBIconCountLabel);
		
		NumToString(theList.CountVisible(), iconCountAsString);
		
		SubstituteString(iconCountLabel, "\p<number>", iconCountAsString);
		
		SetControlTitle(controls.infoPlacard, iconCountLabel);
		
		Draw1Control(controls.infoPlacard);
	}
}

void iconBrowserClass::HandleGrow(Point where)
{
	Rect		maxGrowRect;
	long		growSize;
	int			h, v;
	RgnHandle	updateRgn;
	
	SetRect(&maxGrowRect,
			200,
			40 + 128,
			400,
			32000);
			
	growSize = GrowWindow(window, where, &maxGrowRect);
	
	h = growSize & 0x0000FFFF;
	v = (growSize >> 16) & 0x0000FFFF;
	
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

int iconBrowserClass::GetSelection()
{
	return theList.GetSelection();
}

void iconBrowserClass::Clear()
{
	Str255	message;
	MString	temp;
	MAlert alert;
	int		ID;
	Str255 IDAsString;
	
	if (theList.GetSelection() == -1)
		return;
	
	GetIndString(message, rIBStrings, eIBDeleteWarning);
	
	theList.GetValue(theList.GetSelection(), 0, IDAsString);
	ID = GetCellID(IDAsString);
	NumToString(ID, IDAsString);
	
	SubstituteString(message, "\p<icon ID>", IDAsString);
	SubstituteString(message, "\p<file name>", srcFileSpec.name);
	
	temp = message;
	
	alert.SetButtonName(kMAOK, rBasicStrings, eYesButton);
	alert.SetButtonName(kMACancel, rBasicStrings, eNoButton);
	alert.SetError(temp);
	
	alert.SetBeep(true);
	alert.SetType(kAlertStopAlert);
	
	if (alert.Display() == kMAOK)
	{
		ListDrawingData* iconInfo;
		short oldFile, srcFile;
		Handle	iconResource;
		
		theList.GetCellClientData(theList.GetSelection(), 0, (void**)&iconInfo);
		
		oldFile = CurResFile();
		srcFile = FSpOpenResFile(&srcFileSpec, fsRdWrPerm);
		UseResFile(srcFile);
		
		if (iconInfo->newType)
		{
			iconResource = Get1Resource('icns', ID);
				if (iconResource != NULL)
					RemoveResource(iconResource);
		}
		else
		{
			iconResource = Get1Resource('icl8', ID);
				if (iconResource != NULL)
					RemoveResource(iconResource);
			iconResource = Get1Resource('ics8', ID);
				if (iconResource != NULL)
					RemoveResource(iconResource);
			iconResource = Get1Resource('icl4', ID);
				if (iconResource != NULL)
					RemoveResource(iconResource);
			iconResource = Get1Resource('ICN#', ID);
				if (iconResource != NULL)
					RemoveResource(iconResource);
			iconResource = Get1Resource('ics#', ID);
				if (iconResource != NULL)
					RemoveResource(iconResource);
		}
		UpdateResFile(srcFile);
		CloseResFile(srcFile);
		UseResFile(oldFile);
		
		
		theList.Remove(theList.GetSelection(), 0);
		RefreshList();
	}
}

bool IconFilter(Str255 cellString, void *clientData)
{
#pragma unused (cellString)
	ListDrawingData*	drawingData;
	
	drawingData = (ListDrawingData*)clientData;
	
	if (drawingData->parentBrowser->shownIconTypes == mIBBoth)
		return true;
	if (drawingData->parentBrowser->shownIconTypes == mIBNew && drawingData->newType)
		return true;
	if (drawingData->parentBrowser->shownIconTypes == mIBOld && !drawingData->newType)
		return true;
	
	return false;
}

short IconHitTest(Rect targetRect, Point theMouse, void *clientData)
{
	Rect				currentRect;
	ListDrawingData*	drawingData;
	int					thePart = -1;
	
	drawingData = (ListDrawingData*)clientData;
	
	currentRect = targetRect;
	currentRect.bottom -= 16;
	
	if (IconHitTestMember(drawingData->members, ih32, 48, theMouse, &currentRect, &thePart) ||
		IconHitTestMember(drawingData->members, ich8, 48, theMouse, &currentRect, &thePart) ||
		IconHitTestMember(drawingData->members, ich4, 48, theMouse, &currentRect, &thePart) ||
		IconHitTestMember(drawingData->members, ichi, 48, theMouse, &currentRect, &thePart) ||
	
		IconHitTestMember(drawingData->members, il32, 32, theMouse, &currentRect, &thePart) ||
		IconHitTestMember(drawingData->members, icl8, 32, theMouse, &currentRect, &thePart) ||
		IconHitTestMember(drawingData->members, icl4, 32, theMouse, &currentRect, &thePart) ||
		IconHitTestMember(drawingData->members, icni, 32, theMouse, &currentRect, &thePart) ||
	
		IconHitTestMember(drawingData->members, is32, 16, theMouse, &currentRect, &thePart) ||
		IconHitTestMember(drawingData->members, ics8, 16, theMouse, &currentRect, &thePart) ||
		IconHitTestMember(drawingData->members, ics4, 16, theMouse, &currentRect, &thePart) ||
		IconHitTestMember(drawingData->members, icsi, 16, theMouse, &currentRect, &thePart))
	{
		;
	}
	
	return thePart;
}

bool IconHitTestMember(long members, long member, int height, Point theMouse, Rect* currentRect, int* thePart)
{
	bool found = false;
	
	if (members & member)
	{
		currentRect->right = currentRect->left + height;
		currentRect->top = currentRect->bottom - height;
		
		if (PtInRect(theMouse, currentRect))
		{
			*thePart = member;
			found = true;
		}
		
		currentRect->left = currentRect->right + 2;
	}
	
	return found;
}

void IconUpdate(Str255 cellString, int* height, void* clientData)
{
	ListDrawingData*	drawingData;
	int					ID;
	
	drawingData = (ListDrawingData*)clientData;
	
	ID = GetCellID(cellString);
	drawingData->icon->ID = ID;
	if (drawingData->newType)
		drawingData->icon->LoadNew();
	else
		drawingData->icon->LoadOld();
	
	if (drawingData->icon->members != drawingData->members &&
		drawingData->icon->members != 0)
		drawingData->members = drawingData->icon->members;
		
	if (drawingData->icon->GetLargestSize() != (*height - 20) &&
		drawingData->icon->GetLargestSize() != 0)
		*height = drawingData->icon->GetLargestSize() + 20;
}

void IconDraw(Rect targetRect, Str255 cellString, bool selected, int part, void *clientData)
{
	Rect				displayRect;
	ListDrawingData* drawingData;
	int					ID;
	
	drawingData = (ListDrawingData*)clientData;
	
	displayRect = targetRect;
	displayRect.bottom -= 16;
	
	ID = GetCellID(cellString);
	drawingData->icon->ID = ID;
	if (drawingData->newType)
		drawingData->icon->LoadNew();
	else
		drawingData->icon->LoadOld();
	
	if (selected && part == -1)
		if (drawingData->members & ih32) part = ih32;
		else if (drawingData->members & ich8) part = ich8;
		else if (drawingData->members & ich4) part = ich4;
		else if (drawingData->members & ichi) part = ichi;
		
		else if (drawingData->members & il32) part = il32;
		else if (drawingData->members & icl8) part = icl8;
		else if (drawingData->members & icl4) part = icl4;
		else if (drawingData->members & icni) part = icni;
		
		else if (drawingData->members & is32) part = is32;
		else if (drawingData->members & ics8) part = ics8;
		else if (drawingData->members & ics4) part = ics4;
		else if (drawingData->members & icsi) part = icsi;
	
	IconDrawMember(drawingData, ih32, 48, &displayRect, selected && part == ih32);
	IconDrawMember(drawingData, ich8, 48, &displayRect, selected && part == ich8);
	IconDrawMember(drawingData, ich4, 48, &displayRect, selected && part == ich4);
	IconDrawMember(drawingData, ichi, 48, &displayRect, selected && part == ichi);
	
	IconDrawMember(drawingData, il32, 32, &displayRect, selected && part == il32);
	IconDrawMember(drawingData, icl8, 32, &displayRect, selected && part == icl8);
	IconDrawMember(drawingData, icl4, 32, &displayRect, selected && part == icl4);
	IconDrawMember(drawingData, icni, 32, &displayRect, selected && part == icni);
	
	IconDrawMember(drawingData, is32, 16, &displayRect, selected && part == is32);
	IconDrawMember(drawingData, ics8, 16, &displayRect, selected && part == ics8);
	IconDrawMember(drawingData, ics4, 16, &displayRect, selected && part == ics4);
	IconDrawMember(drawingData, icsi, 16, &displayRect, selected && part == icsi);
}

void IconDrawMember(ListDrawingData* drawingData, long member, int height, Rect* displayRect, bool selected)
{
	if (drawingData->members & member)
	{
		displayRect->right = displayRect->left + height;
		displayRect->top = displayRect->bottom - height;
		drawingData->icon->DisplayMember(member, *displayRect, selected);
		displayRect->left = displayRect->right + 2;
	}
}

short BrowserStringCompare(Str255 string1, Str255 string2, void* clientData1, void *clientData2)
{
	int difference;
	
	difference = GetCellID(string1) - GetCellID(string2);
	
	if (difference != 0)
		return difference;
	else if ((clientData1 != NULL) && (clientData2 != NULL))
	{
		ListDrawingData *drawingData1, *drawingData2;
		
		drawingData1 = (ListDrawingData*)clientData1;
		drawingData2 = (ListDrawingData*)clientData2;
		
		if (drawingData1->newType == drawingData2->newType)
			return 0;
		else
			return -1;
	}
	else
		return 0;
}


int GetCellID(Str255 cellText)
{
	long ID, stringStart = -1, stringEnd = -1;
	Str255 string;
	
	CopyString(string, cellText);
	
	for (int i=1; i < string[0]; i++)
	{
		if (string[i] == '-' ||
			string[i] == '1' ||
			string[i] == '2' ||
			string[i] == '3' ||
			string[i] == '4' ||
			string[i] == '5' ||
			string[i] == '6' ||
			string[i] == '7' ||
			string[i] == '8' ||
			string[i] == '9' ||
			string[i] == '0')
		{
			if (stringStart == -1)
				stringStart = i;
		}
		else if (stringStart != -1)
		{
			stringEnd = i - 1;
			break;
		}
	}
	
	
	string[stringStart - 1] = stringEnd - stringStart + 1;
	StringToNum(&string[stringStart - 1], &ID);
	return ID;
}

iconBrowserPtr GetBrowser(WindowPtr window)
{
	MWindowPtr theWindow; // the editor class which owns that window
	
	if (window == NULL) // if the window is invalid then we (obviously) don't have an editor 
		return NULL;
	
	theWindow = (MWindowPtr)GetWRefCon(window); // we get the pointer stored in the
													// window's RefCon
	
	// if the window is indeed the one that's associated with that editor
	if (theWindow->GetType() == kBrowserType)
		return (iconBrowserPtr)theWindow; // we return the pointer
	else
		return NULL; // otherwise the window doesn't belong to any editor
}


iconBrowserPtr GetFrontBrowser(void)
{
	MWindowPtr frontWindow;
	
	frontWindow = MWindow::GetFront();
	
	if ((frontWindow == NULL) || (frontWindow->GetType() != kBrowserType))
		return NULL;
	else
		return iconBrowserPtr(frontWindow);
}

pascal void	ListDraw(ControlHandle theControl,SInt16 thePart)
{
#pragma unused (thePart)
	iconBrowserPtr	parentBrowser;
	int				vOffset;
	Rect			controlRect;
	
	parentBrowser = GetBrowser(GetControlOwner(theControl));
	
	vOffset = GetControlValue(parentBrowser->controls.scrollBar);
	
	GetControlBounds(theControl, &controlRect);
	
	parentBrowser->theList.Display(controlRect, vOffset);
}

pascal ControlPartCode ListHitTest(ControlHandle theControl, Point where)
{
	Rect 	controlRect;
	
	GetControlBounds(theControl, &controlRect);
	
	if (PtInRect(where, &controlRect))
		return kControlIndicatorPart;
	else
		return kControlNoPart;
}

pascal void ScrollBarAction(ControlHandle theControl, SInt16 thePart)
{
	iconBrowserPtr	parentBrowser;
	Rect			listRect;
	int				averageCellHeight;

	parentBrowser = GetBrowser(GetControlOwner(theControl));
	
	GetControlBounds(parentBrowser->controls.list, &listRect);

	averageCellHeight = parentBrowser->scrollingIncrement;

	switch (thePart)
	{
		case kControlUpButtonPart:
			if ( GetControlValue( theControl) > GetControlMinimum( theControl ) )
				SetControlValue( theControl, GetControlValue( theControl ) - averageCellHeight);
			break;
		
		case kControlDownButtonPart:
			if ( GetControlValue( theControl) < GetControlMaximum( theControl ) )
				SetControlValue( theControl, GetControlValue( theControl ) + averageCellHeight);
			break;
			
		case kControlPageUpPart:
			if ( GetControlValue( theControl) > GetControlMinimum( theControl ) )
				SetControlValue( theControl, GetControlValue( theControl ) - (listRect.bottom - listRect.top) + averageCellHeight);
			break;
			
		case kControlPageDownPart:
			if ( GetControlValue( theControl) < GetControlMaximum( theControl ) )
				SetControlValue( theControl, GetControlValue( theControl ) + (listRect.bottom - listRect.top) - averageCellHeight);
			break;
		case kControlIndicatorPart:
			break;
	}
	
	Draw1Control(parentBrowser->controls.list);

}

pascal void InfoPlacardDraw(ControlHandle theControl,SInt16 thePart)
{
#pragma unused (thePart)
	Rect placardRect;
	Str255	placardTitle;
	int		h, v;
	
	TextSize(9);
	TextFont(applFont);
	
	GetControlTitle(theControl, placardTitle);
	
	GetControlBounds(theControl, &placardRect);
	
	h = placardRect.left + (placardRect.right - placardRect.left - StringWidth(placardTitle))/2;
	v = placardRect.bottom - (placardRect.bottom - placardRect.top - StringHeight(placardTitle))/2 - 2;
	
	
	SAVECOLORS;
	
	if (IsControlActive(theControl))
	{
		if (IsControlHilited(theControl))
		{
			DrawThemePlacard(&placardRect, kThemeStatePressed);
			SetThemeTextColor(kThemeTextColorPlacardPressed, 32, true);
		}
		else
		{
			DrawThemePlacard(&placardRect, kThemeStateActive); 
			SetThemeTextColor(kThemeTextColorPlacardActive, 32, true);
		}
	}
	else
	{
		DrawThemePlacard(&placardRect, kThemeStateInactive);
		SetThemeTextColor(kThemeTextColorPlacardInactive, 32, true);
	}
	
	MoveTo(h, v);

	DrawString(placardTitle);
	
	RESTORECOLORS;
	
	TextSize(12);
}

