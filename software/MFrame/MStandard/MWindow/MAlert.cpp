// __________________________________________________________________________________________
// Program		: Meshroom
// Filename		: MAlert.h
// Author		: Mihai Parparita (St. Mary's International School)
// Last modified: April 1, 2000
// Description	: implementation of generic alert class

#include "MAlert.h"

#if TARGET_API_MAC_CARBON
	const static int kButtonEndcapWidth = 16;
	const static int kMinButtonWidth = 75;
#else
	const static int kButtonEndcapWidth = 8;
	const static int kMinButtonWidth = 58;
#endif

const static int kMAMaxButtonWidths = 235;

ModalFilterUPP MAlert::eventFilterUPP = NewModalFilterUPP(MAlert::EventFilter);

MAlert::MAlert(void)
{
	buttonNames[kMAOK] = "OK";
	buttonNames[kMACancel] = "";
	buttonNames[kMAOther] = "";
	
	error ="";
	explanation = "";
	
	beep = false;
	movable = true;
	position = kWindowAlertPositionParentWindow;
	type = kAlertNoteAlert;
}

MAlert::~MAlert(void)
{

}

void MAlert::SetButtonName(int buttonNo, MString buttonName)
{
	if (buttonNo >= kMAOK && buttonNo <= kMAOther)
		buttonNames[buttonNo] = buttonName;
}

void MAlert::SetButtonName(int buttonNo, int stringResID, int stringNo)
{
	if (buttonNo >= kMAOK && buttonNo <= kMAOther)
		buttonNames[buttonNo].LoadFromResource(stringResID, stringNo);
}

void MAlert::SetMovable(bool isMovable)
{
	movable = isMovable;
}

void MAlert::SetBeep(bool alertBeeps)
{
	beep = alertBeeps;
}

void MAlert::SetPosition(int alertPosition)
{
	position = alertPosition;
}

void MAlert::SetType(int alertType)
{
	type = alertType;
}

void MAlert::SetError(MString alertError)
{
	error = alertError;
}

void MAlert::SetError(int stringResID, int stringNo)
{
	error.LoadFromResource(stringResID, stringNo); 
}

void MAlert::SetExplanation(MString alertExplanation)
{
	explanation = alertExplanation;
}

void MAlert::SetExplanation(int stringResID, int stringNo)
{
	explanation.LoadFromResource(stringResID, stringNo); 
}

int MAlert::Display(void)
{
	DialogPtr		alert;
	bool			dialogDone;
	short			itemHit, itemType;
	Rect			itemRect, alertRect;
	Handle			okButton,
					cancelButton,
					otherButton,
					errorField,
					explanationField,
					noteIcon, warningIcon, stopIcon;
	int				errorLines, errorLineHeight,
					explanationLines, explanationLineHeight,
					newButtonWidth, delta, widthDelta;
	StringPtr		okStr, cancelStr, otherStr, errorStr, explanationStr;
	MWindowPtr		alertWindow;
	
	okStr = buttonNames[kMAOK].AsPascalString();
	cancelStr = buttonNames[kMACancel].AsPascalString();
	otherStr = buttonNames[kMAOther].AsPascalString();
	
	errorStr = error.AsPascalString();
	explanationStr = explanation.AsPascalString();
	
	if (movable && MUtilities::GestaltExists(gestaltAppearanceAttr))
		alert = GetNewDialog(rMAAlertMovable, NULL, (WindowPtr)-1L);
	else
		alert = GetNewDialog(rMAAlertNonMovable, NULL, (WindowPtr)-1L);
		
	alertWindow = new MWindow(GetDialogWindow(alert), kDialogType);
		
	TextFont(systemFont);
#if TARGET_API_MAC_CARBON
	TextSize(13);
#else
	TextSize(12);
#endif
	
	widthDelta = StringWidth(okStr) + kButtonEndcapWidth * 2 +
				 StringWidth(cancelStr) + kButtonEndcapWidth * 2 +
				 StringWidth(otherStr) + kButtonEndcapWidth * 2;

	widthDelta -= kMAMaxButtonWidths;
	if (widthDelta < 0)
		widthDelta = 0;
	
	GetDialogItem(alert, kMAError, &itemType, &errorField, &itemRect);
	TextFont(systemFont);
#if TARGET_API_MAC_CARBON
	TextSize(13);
#else
	TextSize(12);
#endif
	errorLines = ceil(float(StringWidth(errorStr) * 1.05)/float(itemRect.right - itemRect.left));
	for (int i=1; i <= errorStr[0]; i++)
		if (errorStr[i] == '\r')
			errorLines++;
			
	errorLineHeight = itemRect.bottom - itemRect.top;
	itemRect.bottom = itemRect.top + errorLineHeight * errorLines;
	itemRect.right += widthDelta;
	SetDialogItem(alert, kMAError, itemType, errorField, &itemRect);
	
	
	GetDialogItem(alert, kMAExplanation, &itemType, &explanationField, &itemRect);
	OffsetRect(&itemRect, 0, (errorLines - 1) * errorLineHeight);
	TextFont(applFont);
	TextSize(10);
	explanationLines = ceil(float(StringWidth(explanationStr) * 1.05)/float(itemRect.right - itemRect.left));
	explanationLineHeight = itemRect.bottom - itemRect.top;
	itemRect.bottom = itemRect.top + explanationLineHeight * explanationLines;
	itemRect.right += widthDelta;
	TextFont(systemFont);
	TextSize(12);
	SetDialogItem(alert, kMAExplanation, itemType, explanationField, &itemRect);
	
	delta = (errorLines - 1) * errorLineHeight + (explanationLines - 1) * explanationLineHeight;
	
	if (delta < 14)
		delta = 14;
		
	 GetPortBounds(GetDialogPort(alert), &alertRect);
	
	SizeWindow(GetDialogWindow(alert),
			   alertRect.right - alertRect.left + widthDelta,
			   alertRect.bottom - alertRect.top + delta,
			   false);
			   
	GetDialogItem(alert, kMAOK, &itemType, &okButton, &itemRect);
	OffsetRect(&itemRect, 0, delta);
	newButtonWidth = StringWidth(okStr) + kButtonEndcapWidth * 2;
	if (newButtonWidth < kMinButtonWidth) newButtonWidth = kMinButtonWidth;
	itemRect.left = itemRect.right - newButtonWidth;
	OffsetRect(&itemRect, widthDelta, 0);
	SetDialogItem(alert, kMAOK, itemType, okButton, &itemRect);
	newButtonWidth = itemRect.left - 12;
	
	GetDialogItem(alert, kMACancel, &itemType, &cancelButton, &itemRect);
	OffsetRect(&itemRect, 0, delta);
	itemRect.right = newButtonWidth;
	newButtonWidth = StringWidth(cancelStr) + kButtonEndcapWidth * 2;
	if (newButtonWidth < kMinButtonWidth) newButtonWidth = kMinButtonWidth;
	itemRect.left = itemRect.right - newButtonWidth;
	SetDialogItem(alert, kMACancel, itemType, cancelButton, &itemRect);
	
	GetDialogItem(alert, kMAOther, &itemType, &otherButton, &itemRect);
	OffsetRect(&itemRect, 0, delta);
	newButtonWidth = StringWidth(otherStr) + kButtonEndcapWidth * 2;
	if (newButtonWidth < kMinButtonWidth) newButtonWidth = kMinButtonWidth;
	itemRect.right = itemRect.left + newButtonWidth;
	SetDialogItem(alert, kMAOther, itemType, otherButton, &itemRect);
	
	
	GetDialogItem(alert, kMAWarningIcon, &itemType, &warningIcon, &itemRect);
	GetDialogItem(alert, kMANoteIcon, &itemType, &noteIcon, &itemRect);
	GetDialogItem(alert, kMAStopIcon, &itemType, &stopIcon, &itemRect);
	
	switch (type)
	{
		case kAlertStopAlert:
			HideDialogItem(alert, kMAWarningIcon);
			HideDialogItem(alert, kMANoteIcon);
			break;
		case kAlertNoteAlert:
			HideDialogItem(alert, kMAWarningIcon);
			HideDialogItem(alert, kMAStopIcon);
			break;
		case kAlertCautionAlert:
			HideDialogItem(alert, kMAStopIcon);
			HideDialogItem(alert, kMANoteIcon);
			break;
	}
	
	if (buttonNames[kMAOK][0] != 0)
	{
		SetDialogDefaultItem(alert, kMAOK);
		SetControlTitle(ControlHandle(okButton), okStr);
	}
	else
		HideDialogItem(alert, kMAOK);
	
	if (buttonNames[kMACancel][0] != 0)
	{
		SetDialogCancelItem(alert, kMACancel);
		SetControlTitle(ControlHandle(cancelButton), cancelStr);
	}
	else
		HideDialogItem(alert, kMACancel);
		
	if (buttonNames[kMAOther][0] != 0)
		SetControlTitle(ControlHandle(otherButton), otherStr);
	else
		HideDialogItem(alert, kMAOther);
		
	if (errorStr[0] != 0)
		SetDialogItemText(errorField, errorStr);
	else
		HideDialogItem(alert, kMAError);
		
	if (explanationStr[0] != 0)
		SetDialogItemText(explanationField, explanationStr);
	else
		HideDialogItem(alert, kMAExplanation);
	
	if (position == kWindowCenterParentWindow)
		MWindow::CenterOnFront(alertWindow);
	else
		MWindow::CenterOnScreen(alertWindow);
		
	MWindow::DeactivateAll();
	
	if (beep)
		SysBeep(6);
	
	ShowWindow(GetDialogWindow(alert));
	
	dialogDone = false;
	
	while (!dialogDone)
	{
		ModalDialog(eventFilterUPP, &itemHit);
		switch (itemHit)
		{
			case kMAOK:
			case kMACancel:
			case kMAOther:
				dialogDone = true;
				break;
		}
	}
	
	DisposeDialog(alert);
	delete alertWindow;
	
	MWindow::ActivateAll();
	
	return itemHit;
}

#pragma mark -

pascal Boolean MAlert::EventFilter(DialogPtr alert, EventRecord* eventPtr, short* itemHit)
{
	bool		handledEvent = false;
	GrafPtr		oldPort;
	MWindowPtr	window;
	
	switch (eventPtr->what)
	{
		//case osEvt:
		case activateEvt:
			Rect portRect;
			
			GetPortBounds(GetDialogPort(alert), &portRect);		
			
#if TARGET_API_MAC_CARBON
			InvalWindowRect(GetDialogWindow(alert), &portRect);
#else
			GetPort(&oldPort);
			SetPortDialogPort(alert);
			InvalRect(&portRect);
			SetPort(oldPort);
#endif
			
		case updateEvt:
			if ((DialogPtr) eventPtr->message != alert)
			{
				window = GetWindow((WindowPtr)eventPtr->message);
				if (window != NULL)
					window->Refresh();
			}
			else
				handledEvent = StdFilterProc(alert, eventPtr, itemHit);
			break;
		case keyDown:
		case autoKey:
			char key;
			
			key = eventPtr->message & charCodeMask;
			if (KeyButtonShortcut(alert, key, kMAOK))
			{
				*itemHit = kMAOK;
				handledEvent = true;
			}
			else if (KeyButtonShortcut(alert, key, kMACancel))
			{
				*itemHit = kMACancel;
				handledEvent = true;
			}
			else if (KeyButtonShortcut(alert, key, kMAOther))
			{
				*itemHit = kMAOther;
				handledEvent = true;
			}
			else
				handledEvent = StdFilterProc(alert, eventPtr, itemHit);
			break;
		default:
			GetPort(&oldPort);
			SetPortDialogPort(alert);
			
			handledEvent = StdFilterProc(alert, eventPtr, itemHit);
			SetPort(oldPort);
		break;
	}
	return handledEvent;
}


bool MAlert::KeyButtonShortcut(DialogPtr alert, char key, int buttonIndex)
{
	ControlHandle	button;
	Str255			buttonName;
	
	GetDialogItemAsControl(alert, buttonIndex, &button);
	if (button != NULL && IsControlVisible(button)) 
	{
		GetControlTitle(button, buttonName);
		if (key == buttonName[1] || (key + 'A' - 'a') == buttonName[1])
		{
			HiliteControl(button, 1);
			MUtilities::Sleep(9);
			HiliteControl(button, 0);
			return true;
		}
	}
	
	return false;
}
