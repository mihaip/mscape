// __________________________________________________________________________________________
// Program		: Icon Mangler
// Filename		: controlFunctions.cpp (C++)
// Author		: Mihai Parparita (St. Mary's International School)
// Last modified: April 1, 1999
// Description	: This file has all the custom functions for my custom controls (such as
//				  the color swatch, the display and the edit well).

#include "icnsEditorClass.h"
#include "editorStaticsClass.h"

void icnsEditorClass::ZoomPlacardUpdate(struct EnhancedPlacardData* data, int flags)
{
	icnsEditorPtr	parentEditor;
	Str255			currentMenuItem;
	
	parentEditor = icnsEditorPtr(data->clientData);
	
	if (flags & enhancedPlacardUpdateState)
	{
		NumToString(parentEditor->magnification, data->title);
		AppendString(data->title, "\p00%");
		
		data->menuValue = -1;
		
		if (CountMenuItems(data->menu) > kZoomMenuItemCount)
			for (int i=kZoomMenuItemCount + 1; i <= CountMenuItems(data->menu);)
				DeleteMenuItem(data->menu, i);
		
		for (int i=1; i <= CountMenuItems(data->menu); i++)
		{
			CheckMenuItem(data->menu, i, false);
			GetMenuItemText(data->menu, i, currentMenuItem);
			if (EqualString(data->title, currentMenuItem, true, true))
				data->menuValue = i;
		}
		
		if (data->menuValue == -1)
		{
			InsertMenuItem(data->menu, "\p-", kZoomMenuItemCount + 1);
			InsertMenuItem(data->menu, "\pscratch", kZoomMenuItemCount + 2);
			SetMenuItemText(data->menu, kZoomMenuItemCount + 2, data->title);
			
			data->menuValue = kZoomMenuItemCount + 2;
		}
		
		CheckMenuItem(data->menu, data->menuValue, true);
	}
	else
	{
		GetMenuItemText(data->menu, data->menuValue, currentMenuItem);
		
		currentMenuItem[0] -= 3;
		
		StringToNum(currentMenuItem, (long*)&parentEditor->magnification);
		
		parentEditor->PostZoom(false);
	}
}


pascal void PlacardDraw(ControlHandle theControl,SInt16 thePart)
{
#pragma unused (thePart)

	Rect placardRect;
	icnsEditorPtr parentEditor;
	Str255	placardText;
	int h, v;
	
	parentEditor = GetEditor(GetControlOwner(theControl));
	
	GetControlBounds(theControl, &placardRect);
	
	GetControlTitle(theControl, placardText);
	
	TextFont(applFont);
	TextSize(9);
	
	h = placardRect.left + (placardRect.right - placardRect.left - StringWidth(placardText))/2;
	v = placardRect.bottom - (placardRect.bottom - placardRect.top - StringHeight(placardText))/2 - 2;
	
	
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

	DrawString(placardText);
	
	RESTORECOLORS;
	
	TextFont(0);
	TextSize(12);	
}

pascal ControlPartCode PlacardHitTest(ControlHandle theControl, Point where)
{
	Rect	controlRect;
	
	GetControlBounds(theControl, &controlRect);
	
	if (PtInRect(where, &controlRect))
		return kControlIndicatorPart;
	else
		return kControlNoPart;
}

pascal ControlPartCode	PlacardTracking(ControlHandle theControl, Point startPt, ControlActionUPP actionProc)
{
#pragma unused (startPt, actionProc)
	Point theMouse;
	Rect	controlRect;
	
	GetControlBounds(theControl, &controlRect);
	
	while (Button())
	{
		GetMouse(&theMouse);
		if (PtInRect(theMouse, &controlRect) && !IsControlHilited(theControl))
		{
			HiliteControl(theControl, kControlIndicatorPart);
			Draw1Control(theControl);
		}
		else if (!PtInRect(theMouse, &controlRect) && IsControlHilited(theControl))
		{
			HiliteControl(theControl, kControlNoPart);
			Draw1Control(theControl);
		}
	}
	
	HiliteControl(theControl,  kControlNoPart);
	Draw1Control(theControl);
	
	if (PtInRect(theMouse, &controlRect))
		return kControlIndicatorPart;
	else
		return kControlNoPart;
}

#pragma mark -

// __________________________________________________________________________________________
// Name			: EditWellDraw
// Input		: theControl: edit well control which we must redraw
//				  thePart: control part which we must draw (ignored)
// Output		: None
// Description	: This is the function which takes care of the drawing of the edit well, where
//				  the magnified icon is displayed, and where the icon takes place. Since this
//				  function is passed to the Control Manager as a custom user procedure, it needs
//				  to follow the pascal paramters passing format, and it has the parameters set

pascal void	EditAreaDraw(ControlHandle theControl,SInt16 thePart)
{
#pragma unused (thePart)

	icnsEditorPtr	parentEditor; // the editor to which this control belongs
	
	parentEditor = GetEditor(GetControlOwner(theControl));
	// get get the editor associated with the control's owner (the window)
	
	if (parentEditor != NULL) // if there is an editor
	{
		if (parentEditor->editAreaRect.top != 0 ||
			parentEditor->editAreaRect.left != 0)
			DrawImageWell(theControl, parentEditor->editAreaRect);
		parentEditor->UpdateEditArea();
	}
}

// __________________________________________________________________________________________
// Name			: EditWellHitTest
// Input		: control: the control which we must handle the hit-testing
//				  where: the point (in terms of the current window) where the click was
// Output		: ControlPartCode: the control part (if any) where the click took place
// Description	: This function determines if the click hit this control. This is a custom
//				  user procedure too.

pascal ControlPartCode EditAreaHitTest(ControlHandle control, Point where)
{
	Rect	controlRect;
	
	GetControlBounds(control, &controlRect);
	
	if (PtInRect(where, &controlRect))
	// if the click was in the control's rectangle, then we're inside
		return kControlImageWellPart;
	else // otherwise we're not
		return kControlNoPart;
}

#pragma mark -

pascal void icnsEditorClass::ScrollbarAction(ControlHandle theControl, SInt16 thePart)
{
	icnsEditorPtr	parentEditor;
	int				initialValue, newValue;

	parentEditor = GetEditor(GetControlOwner(theControl));
	
	if (theControl == parentEditor->controls.hScrollbar)
		initialValue = parentEditor->hScrollbarValue;
	else
		initialValue = parentEditor->vScrollbarValue;

	switch (thePart)
	{
		case kControlUpButtonPart:
			SetControlValue(theControl, initialValue - parentEditor->magnification);
			break;
		
		case kControlDownButtonPart:
			SetControlValue(theControl, initialValue + parentEditor->magnification);
			break;
			
		case kControlPageUpPart:
			if (theControl == parentEditor->controls.hScrollbar)
				SetControlValue(theControl,
								initialValue -
								(parentEditor->editAreaRect.right - parentEditor->editAreaRect.left) + parentEditor->magnification);
			else
				SetControlValue(theControl,
								initialValue -
								(parentEditor->editAreaRect.bottom - parentEditor->editAreaRect.top) + parentEditor->magnification);
			break;
			
		case kControlPageDownPart:
			if (theControl == parentEditor->controls.hScrollbar)
				SetControlValue(theControl,
								initialValue +
								(parentEditor->editAreaRect.right - parentEditor->editAreaRect.left) - parentEditor->magnification);
			else
				SetControlValue(theControl,
								initialValue +
								(parentEditor->editAreaRect.bottom - parentEditor->editAreaRect.top) - parentEditor->magnification);
			break;
		case kControlIndicatorPart:
			break;
	}
	
	newValue = GetControlValue(theControl);
	
	if (theControl == parentEditor->controls.hScrollbar)
	{
		parentEditor->hScrollbarValue = newValue;
		parentEditor->PanEditArea(newValue - initialValue, 0);
		
	}
	else
	{
		parentEditor->vScrollbarValue = newValue;
		parentEditor->PanEditArea(0, newValue - initialValue);
	}
}
