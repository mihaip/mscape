#include "iconBrowserClass.h"
#include "icnsEditorClass.h"
#include "MAlert.h"

iconBrowserClass::iconBrowserClass(FSSpec file, OpenFuncPtr OpenFunc, int format) :
				  MWindow(rBrowserWind, kBrowserType),
				  theList(BrowserStringCompare, IconDraw, NULL, IconFilter, IconUpdate)
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
			SetEnhancedPlacardMenuValue(controls.typeMenu, mIBOld);
			break;
		case formatMacOSNew:
			SetEnhancedPlacardMenuValue(controls.typeMenu, mIBNew);
			break;
		default:
			SetEnhancedPlacardMenuValue(controls.typeMenu, mIBBoth);
			break;
	}
	
	shownIconTypes = -1;
	
	EnhancedPlacardHandleClick(controls.typeMenu);
	
	RepositionControls();
	
	GetWTitle(window, title);
	SubstituteString(title, "\p<name>", srcFileSpec.name);
	SetWTitle(window, title);
	
	icnsEditorClass::statics.Stagger(this);
	
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
				   
	
	//controls.menu = GetNewControl(rIBMenu, window);
	controls.typeMenu = NewEnhancedPlacard(rIBTypeMenu, window, enhancedPlacardDrawBorder + enhancedPlacardLargeArrow, 0, 0,
										   "\p", NULL, icnsEditorClass::statics.browserTypeMenu, icnsEditorClass::statics.canvasGW, icnsEditorClass::statics.canvasPix,
										   BrowserMenuUpdate, this);
	if (controls.typeMenu == NULL) return mFulErr;
	//SetControlFontStyle(controls.menu, &smallTextStyle); // set the style too
	
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
	theList.SetCustomAreaWidth(kIBPreviewHeight + kIBExtraHeight);
	
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
	
	GetWTitle(GetDialogWindow(progressDialog), dialogTitle);
	SubstituteString(dialogTitle, "\p<name>", srcFileSpec.name);
	SetWTitle(GetDialogWindow(progressDialog), dialogTitle);
	
	ShowWindow(GetDialogWindow(progressDialog));
	
	file = FSpOpenResFile(&srcFileSpec, fsRdPerm);
	UseResFile(file);
	
	LoadFamily('icns', true, oldFile, file, progressBar, progressText);
	LoadFamily('ICN#', false, oldFile, file, progressBar, progressText);
	LoadFamily('ics#', false, oldFile, file, progressBar, progressText);
	
	CloseResFile(file);
	UseResFile(oldFile);
	
	drawIcon.LoadFileIcon();
	AddIcon(kIDUseFileIcon, "\p", drawIcon.members, drawIcon.members & il32);
	
	DisposeDialog(progressDialog);
	
	scrollingIncrement = 16;
	
	return noErr;
}

void iconBrowserClass::LoadFamily(OSType type, bool newType, short oldFile, short file, ControlHandle progressBar, ControlHandle progressText)
{
	int 				iconCount, cellHeight, counter;
	long				members;
	short 				ID;
	Str255 				name, progressString, IDAsString;
	Handle 				icon;
	
	iconCount = Count1Resources(type);
	
	for (int i=1; i <= iconCount; i++)
	{
		icon = Get1IndResource(type, i);
		
		GetResInfo(icon, &ID, &type, name);
		
		if (newType)
			GeticnsInfo((IconFamilyHandle)icon, &members, &cellHeight);
		else
			GetICNInfo(ID, name, &members, &cellHeight);
		
		ReleaseResource(icon);
		
		UseResFile(oldFile);
		
		AddIcon(ID, name, members, newType);
		
		counter = GetControlValue(progressBar);
		SetControlValue(progressBar, ++counter);
		
		if (name[0] != 0)
			GetIndString(progressString, rIBStrings, eIBProgressName);
		else
			GetIndString(progressString, rIBStrings, eIBProgressNoName);
		
		NumToString(ID, IDAsString);	
		SubstituteString(progressString, "\p<ID>", IDAsString);
		
		if (name[0] != 0)
			SubstituteString(progressString, "\p<name>", name);
			
		SetControlText(progressText, progressString);
		Draw1Control(progressText);
		
		UseResFile(file);
	}
}

void iconBrowserClass::AddIcon(int ID, Str255 name, long members, bool newType)
{
	ListDrawingData*	cellDrawingData;
	MStringPtr			cellString;
			
	iconBrowserClass::GetIconString(ID, name, members, newType, &cellString);
				
	cellDrawingData = new ListDrawingData;
	
	cellDrawingData->parentBrowser = this;
	cellDrawingData->icon = &drawIcon;
	cellDrawingData->members = members;
	cellDrawingData->newType = newType;
	cellDrawingData->ID = ID;
	
	theList.InsertSorted(cellString,
						 kIBPreviewHeight + kIBExtraHeight,
						 cellDrawingData);
}

iconBrowserClass::~iconBrowserClass()
{
	;
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
	
	SetPort();
	
	windowRect = GetPortRect();
	
	HideControl(controls.rootControl);
	
	GetControlBounds(controls.typeMenu, &controlRect);
	h = controlRect.left;
	v = windowRect.bottom - windowRect.top - 15;
	MoveControl(controls.typeMenu, h, v);
	
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

void iconBrowserClass::RefreshList()
{
	Str255	iconCount,iconCountLabel;
	Rect	listRect;
	int		v;
	
	SAVEGWORLD;
	
	SetPort();
	
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
	NumToString(theList.CountTotal(), iconCount);
	SubstituteString(iconCountLabel, "\p<total>", iconCount);
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
	else
	{
		char theKey;
		
		theKey = eventPtr->message & charCodeMask;
		
		switch (theKey)
		{
			case kReturnCharCode:
			case kEnterCharCode:
				OpenCurrentIcon();
				break;
		}
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
		Select();
		return;
	}
	
	where = eventPtr->where;
	
	SAVEGWORLD;
	
	SetPort();
	
	GlobalToLocal(&where);
	
	controlPart = FindControl(where, window, &clickedControl);
	
	if (controlPart != kControlNoPart)
	{
		if (clickedControl == controls.scrollBar)
			TrackControl(clickedControl, where, (ControlActionUPP) -1);
		else if (clickedControl == controls.typeMenu)
		{
			TrackControl(clickedControl, where, (ControlActionUPP) -1);
			EnhancedPlacardHandleClick(controls.typeMenu);
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
				OpenCurrentIcon();
			
			lastSelectionTime = LMGetTicks();
			lastSelection = currentSelection;
		}
		else
			SysBeep(6);
	}
	RESTOREGWORLD;
}

void iconBrowserClass::OpenCurrentIcon()
{
	long 				ID, currentSelection;
	ListDrawingData*	cellData;
	
	currentSelection = theList.GetSelection();
	
	if (currentSelection == -1) return;
	
	theList.GetCellClientData(currentSelection, 0, &cellData);
	ID = cellData->ID;
	if (cellData->newType)
		Open(&srcFileSpec, ID, formatMacOSNew, -1);
	else
		Open(&srcFileSpec, ID, formatMacOSOld, -1);
}

void iconBrowserClass::BrowserMenuUpdate(struct EnhancedPlacardData* data, int flags)
{
	iconBrowserPtr	parent;
	
	parent = iconBrowserPtr(data->clientData);

	if (flags & enhancedPlacardUpdateState)
	{
		Str255				menuItemText;
		
		GetIndString(data->title, rIBStrings, eIBIconTypes);
		GetMenuItemText(data->menu, parent->shownIconTypes, menuItemText);
		SubstituteString(data->title, "\p<types>", menuItemText);
	}
	else
	{
		Rect		controlBounds;
		int			v;
		Str255		iconCountLabel, iconCountAsString;
		
		if (parent->shownIconTypes == data->menuValue) return;
		
		parent->shownIconTypes = data->menuValue;
		parent->theList.Filter();
		
		GetControlBounds(parent->controls.list, &controlBounds);
		
		v = controlBounds.bottom - controlBounds.top;
		
		if (parent->theList.GetHeight() - v > 0)
			SetControlMaximum(parent->controls.scrollBar, parent->theList.GetHeight() - v);
		else
			SetControlMaximum(parent->controls.scrollBar, 0);
		
		if (GetControlValue(parent->controls.scrollBar) > GetControlMaximum(parent->controls.scrollBar))
			SetControlValue(parent->controls.scrollBar, GetControlMaximum(parent->controls.scrollBar));
		
		Draw1Control(parent->controls.list);
			
		GetIndString(iconCountLabel, rIBStrings, eIBIconCountLabel);
		
		NumToString(parent->theList.CountVisible(), iconCountAsString);
		SubstituteString(iconCountLabel, "\p<number>", iconCountAsString);
		NumToString(parent->theList.CountTotal(), iconCountAsString);
		SubstituteString(iconCountLabel, "\p<total>", iconCountAsString);
		
		SetControlTitle(parent->controls.infoPlacard, iconCountLabel);
		
		Draw1Control(parent->controls.infoPlacard);
	}
}

/*void iconBrowserClass::RefreshIconTypes()
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
		
		
	}
}*/

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
	
	if (SizeSupported(h, v))
	{	
		SAVEGWORLD;
		SetPort();
		
		updateRgn = NewRgn(); // we must invalidate the old window region...
		GetPortVisibleRegion(GetWindowPort(window), updateRgn);
		InvalRgn(updateRgn);
		
		SizeWindow(window, h, v, true); //...do the resizing
		
		GetPortVisibleRegion(GetWindowPort(window), updateRgn); // and invalidate the new one as well
		InvalRgn(updateRgn);
		
		DisposeRgn(updateRgn); // and now we're done with the region
		
		RESTOREGWORLD;
		
		RepositionControls();
	}
}

bool iconBrowserClass::SizeSupported(int newWidth, int newHeight)
{
	int currentWidth, currentHeight;
	int additionalMemoryRequired;
	Rect	browserRect;
	
	GetControlBounds(controls.list, &browserRect);
	
	currentWidth = browserRect.right - browserRect.left;
	currentHeight = browserRect.bottom - browserRect.top;

	additionalMemoryRequired = newWidth * newHeight * 32/8 -
							   currentWidth * currentHeight * 32/8;
							   
	additionalMemoryRequired *= 1.1;
	
	return (FreeMem() > additionalMemoryRequired);
}

int iconBrowserClass::GetSelection()
{
	return theList.GetSelection();
}

void iconBrowserClass::Clear()
{
	Str255				message;
	MString				temp;
	MAlert 				alert;
	int					ID;
	Str255 				IDAsString;
	ListDrawingData*	drawingData;
	
	if (theList.GetSelection() == -1)
		return;
	
	GetIndString(message, rIBStrings, eIBDeleteWarning);
	
	theList.GetCellClientData(theList.GetSelection(), 0, &drawingData);
	ID = drawingData->ID;
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

void iconBrowserClass::GetIconString(int ID, Str255 name, long members, bool newType, MStringPtr* iconString)
{
	MString part("");
	bool	defaultName = false;
	Str255	localName;
	
	*iconString = new MString("");
	
	part.LoadFromResource(rIBStrings, eIBListID);
	(**iconString) += part;
	if (ID != kIDUseFileIcon)
		(**iconString) += ID;
	else
	{
		part.LoadFromResource(rMiscIconStrings, eNone);
		(**iconString) += part;
	}
	(**iconString) += "<BR>";
	
	if (name[0] || ID == kIDUseFileIcon)
		CopyString(localName, name);
	else
	{
		GetIDMenu(ID, NULL, NULL, localName);
		if (localName[0]) defaultName = true;
	}
	
	if (localName[0] || ID == kIDUseFileIcon)
	{
		part.LoadFromResource(rIBStrings, eIBListName);
		(**iconString) += part;
		if (ID == kIDUseFileIcon)
		{
			part.LoadFromResource(rMiscIconStrings, eFinderIcon);
			(**iconString) += part;
		}
		else
		{
			if (defaultName) (**iconString) += "<I>";
		
			(**iconString) += localName;
			
			if (defaultName) (**iconString) += "</I>";
		}
		(**iconString) += "<BR>";
	}
	
	part.LoadFromResource(rIBStrings, eIBListType);
	(**iconString) += part;
	if (newType)
		part.LoadFromResource(rIBStrings, eIBListNewType);
	else
		part.LoadFromResource(rIBStrings, eIBListOldType);
	(**iconString) += part;
	(**iconString) += "<BR>";
	
	part.LoadFromResource(rIBStrings, eIBListMembers);
	(**iconString) += part;
	part = icnsClass::GetMembersListNames(members);
	(**iconString) += part;
}
		

bool IconFilter(MStringPtr cellString, void *clientData)
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

void IconUpdate(MStringPtr cellString, int* height, void* clientData)
{
#pragma unused (cellString, height)
	ListDrawingData*	drawingData;
	
	drawingData = (ListDrawingData*)clientData;
	
	drawingData->icon->ID = drawingData->ID;
	if (drawingData->ID == kIDUseFileIcon)
		drawingData->icon->LoadFileIcon();
	else if (drawingData->newType)
		drawingData->icon->LoadNew();
	else
		drawingData->icon->LoadOld();
	
	if (drawingData->icon->members != drawingData->members &&
		drawingData->icon->members != 0)
		drawingData->members = drawingData->icon->members;
		
	/*if (drawingData->icon->GetLargestSize() != (*height - 20) &&
		drawingData->icon->GetLargestSize() != 0)
		*height = drawingData->icon->GetLargestSize() + 20;*/
}

void IconDraw(Rect targetRect, MStringPtr cellString, bool selected, int part, void *clientData)
{
#pragma unused(cellString, part)
	Rect				displayRect;
	ListDrawingData* 	drawingData;
	
	drawingData = (ListDrawingData*)clientData;
	
	displayRect = targetRect;
	InsetRect(&displayRect, kIBExtraHeight/2, kIBExtraHeight/2);
	
	drawingData->icon->ID = drawingData->ID;
	if (drawingData->ID == kIDUseFileIcon)
		drawingData->icon->LoadFileIcon();
	else if (drawingData->newType)
		drawingData->icon->LoadNew();
	else
		drawingData->icon->LoadOld();
	
	drawingData->icon->Display(displayRect, selected);
}

long BrowserStringCompare(MStringPtr string1, MStringPtr string2, void* clientData1, void *clientData2)
{
#pragma unused (string1, string2)
	ListDrawingData *drawingData1, *drawingData2;
		
	drawingData1 = (ListDrawingData*)clientData1;
	drawingData2 = (ListDrawingData*)clientData2;
		
	int difference;
	
	difference = drawingData1->ID - drawingData2->ID;
	
	if (difference != 0)
		return difference;
	else if ((clientData1 != NULL) && (clientData2 != NULL))
	{	
		if (drawingData1->newType == drawingData2->newType)
			return 0;
		else
			return -1;
	}
	else
		return 0;
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

