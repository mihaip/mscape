// __________________________________________________________________________________________
// Program		: Meshroom
// Filename		: MAlert.h
// Author		: Mihai Parparita (St. Mary's International School)
// Last modified: April 1, 2000
// Description	: implementation of generic alert class

#include "MAlert.h"
#include "commonfunctions.h"

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
	hasCheckbox = checkboxState = false;
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

void MAlert::MakeOtherIntoCheckbox()
{
	hasCheckbox = true;
}

bool MAlert::GetCheckboxState()
{
	return checkboxState;
}

int MAlert::Display(void)
{
#if 0
	AlertStdAlertParamRec	alertParameters;
	short					itemHit;
	ModalFilterUPP			eventFilterUPP;
	
	eventFilterUPP = NewModalFilterUPP(MAlert::EventFilter);
	
	alertParameters.movable = movable;
	alertParameters.helpButton = false;
	alertParameters.filterProc = eventFilterUPP;
	if (buttonNames[kMAOK].Length())
		alertParameters.defaultText = buttonNames[kMAOK].AsPascalString();
	else
		alertParameters.defaultText = NULL;
	if (buttonNames[kMACancel].Length())
		alertParameters.cancelText = buttonNames[kMACancel].AsPascalString();
	else
		alertParameters.cancelText = NULL;
	if (buttonNames[kMAOther].Length())
		alertParameters.otherText = buttonNames[kMAOther].AsPascalString();
	else
		alertParameters.otherText = NULL;
	alertParameters.defaultButton = kMAOK;
	alertParameters.cancelButton = kMACancel;
	alertParameters.position = position;
	
	StandardAlert(type,
				  error.AsPascalString(),
				  explanation.AsPascalString(),
				  &alertParameters,
				  &itemHit);
				  
	DisposeModalFilterUPP(eventFilterUPP);
				  
	return itemHit;
#else
	DialogPtr		alert;
	bool			dialogDone;
	short			itemHit;
	Rect			itemRect, alertRect;
	ControlHandle	okButton,
					cancelButton,
					otherButton,
					errorField,
					explanationField,
#if TARGET_API_MAC_CARBON
					applicationIcon,
#endif
					noteIcon, warningIcon, stopIcon;
	int				errorLines, errorLineHeight,
					explanationLines, explanationLineHeight,
					newButtonWidth, delta, widthDelta;
	StringPtr		okStr, cancelStr, otherStr, errorStr, explanationStr;
	MWindowPtr		alertWindow;
	ControlFontStyleRec			controlStyle;
	ThemeFontID		errorFont, explanationFont;
	
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
		
	if (explanationStr[0] == 0 || !MUtilities::GestaltVersion(gestaltSystemVersion, 0x10, 0x00))
		errorFont = kThemeSystemFont;
	else
		errorFont = kThemeEmphasizedSystemFont;
	explanationFont = kThemeSmallSystemFont;

	if(MUtilities::GestaltVersion(gestaltAppearanceVersion, 0x01, 0x10))
		UseThemeFont(errorFont, smSystemScript);
	else
	{
		TextFont(systemFont);
		TextSize(12);
	}
	
	widthDelta = StringWidth(okStr) + kButtonEndcapWidth * 2 +
				 StringWidth(cancelStr) + kButtonEndcapWidth * 2 +
				 StringWidth(otherStr) + kButtonEndcapWidth * 2;

	widthDelta -= kMAMaxButtonWidths;
	if (widthDelta < 0)
		widthDelta = 0;
	
	GetDialogItemAsControl(alert, kMAError, &errorField);
	GetControlBounds(errorField, &itemRect);

	if(MUtilities::GestaltVersion(gestaltAppearanceVersion, 0x01, 0x10))
	{
		Str255 fontName;
		Style	style;
		
		controlStyle.flags = kControlUseFontMask | kControlUseSizeMask | kControlUseFaceMask;
		
		GetThemeFont(errorFont, smSystemScript, fontName, &controlStyle.size, &style);
		GetFNum(fontName, &controlStyle.font);
		controlStyle.style = style;
	}
	else
	{
		controlStyle.flags = kControlUseFontMask;
		controlStyle.font = kThemeSystemFont; // this font is installed on all systems
	}
	SetControlFontStyle(errorField, &controlStyle);

	errorLines = ceil(float(StringWidth(errorStr))/float(itemRect.right - itemRect.left));
	for (int i=1; i <= errorStr[0]; i++)
		if (errorStr[i] == '\r')
			errorLines++;
			
	errorLineHeight = itemRect.bottom - itemRect.top;
	itemRect.bottom = itemRect.top + errorLineHeight * errorLines;
	itemRect.right += widthDelta;
	SetControlBounds(errorField, &itemRect);
	
	
	GetDialogItemAsControl(alert, kMAExplanation, &explanationField);
	GetControlBounds(explanationField, &itemRect);
	
	if(MUtilities::GestaltVersion(gestaltAppearanceVersion, 0x01, 0x10))
	{
		Str255 fontName;
		Style	style;
		
		controlStyle.flags = kControlUseFontMask | kControlUseSizeMask | kControlUseFaceMask;
		
		GetThemeFont(explanationFont, smSystemScript, fontName, &controlStyle.size, &style);
		GetFNum(fontName, &controlStyle.font);
		controlStyle.style = style;
	}
	else
	{
		controlStyle.flags = kThemeSmallSystemFont;
		controlStyle.font = kThemeSystemFont; // this font is installed on all systems
	}
	SetControlFontStyle(explanationField, &controlStyle);
	
	OffsetRect(&itemRect, 0, (errorLines - 1) * errorLineHeight);

	if(MUtilities::GestaltVersion(gestaltAppearanceVersion, 0x01, 0x10))
		UseThemeFont(explanationFont, smSystemScript);
	else
	{
		TextFont(applFont);
		TextSize(10);
	}

	explanationLines = ceil(float(StringWidth(explanationStr))/float(itemRect.right - itemRect.left));
	explanationLineHeight = itemRect.bottom - itemRect.top;
	itemRect.bottom = itemRect.top + explanationLineHeight * explanationLines;
	itemRect.right += widthDelta;
	
	if(MUtilities::GestaltVersion(gestaltAppearanceVersion, 0x01, 0x10))
		UseThemeFont(errorFont, smSystemScript);
	else
	{
		TextFont(systemFont);
		TextSize(12);
	}
	SetControlBounds(explanationField, &itemRect);
	
	delta = (errorLines - 1) * errorLineHeight + (explanationLines - 1) * explanationLineHeight;
	
	if (delta < 14)
		delta = 14;
		
	GetPortBounds(GetDialogPort(alert), &alertRect);
	
	SizeWindow(GetDialogWindow(alert),
			   alertRect.right - alertRect.left + widthDelta,
			   alertRect.bottom - alertRect.top + delta,
			   false);
			   
	GetDialogItemAsControl(alert, kMAOK, &okButton);
	GetControlBounds(okButton, &itemRect);
	
	OffsetRect(&itemRect, 0, delta);
	newButtonWidth = StringWidth(okStr) + kButtonEndcapWidth * 2;
	if (newButtonWidth < kMinButtonWidth) newButtonWidth = kMinButtonWidth;
	itemRect.left = itemRect.right - newButtonWidth;
	OffsetRect(&itemRect, widthDelta, 0);
	SetControlBounds(okButton, &itemRect);
	newButtonWidth = itemRect.left - 12;
	
	GetDialogItemAsControl(alert, kMACancel, &cancelButton);
	GetControlBounds(cancelButton, &itemRect);
	OffsetRect(&itemRect, 0, delta);
	itemRect.right = newButtonWidth;
	newButtonWidth = StringWidth(cancelStr) + kButtonEndcapWidth * 2;
	if (newButtonWidth < kMinButtonWidth) newButtonWidth = kMinButtonWidth;
	itemRect.left = itemRect.right - newButtonWidth;
	SetControlBounds(cancelButton, &itemRect);
	
	if (hasCheckbox)
	{
		HideDialogItem(alert, kMAOther);
		GetDialogItemAsControl(alert, kMACheckbox, &otherButton);
	}
	else
	{
		HideDialogItem(alert, kMACheckbox);
		GetDialogItemAsControl(alert, kMAOther, &otherButton);
	}
	GetControlBounds(otherButton, &itemRect);
	OffsetRect(&itemRect, 0, delta);
	newButtonWidth = StringWidth(otherStr) + kButtonEndcapWidth * 2;
	if (newButtonWidth < kMinButtonWidth) newButtonWidth = kMinButtonWidth;
	itemRect.right = itemRect.left + newButtonWidth;
	SetControlBounds(otherButton, &itemRect);
	
	
	GetDialogItemAsControl(alert, kMAWarningIcon, &warningIcon);
	GetDialogItemAsControl(alert, kMANoteIcon, &noteIcon);
	GetDialogItemAsControl(alert, kMAStopIcon, &stopIcon);
	
	switch (type)
	{
		case kAlertStopAlert:
			HideControl(warningIcon);
			HideControl(noteIcon);
			break;
		case kAlertNoteAlert:
			HideControl(warningIcon);
			HideControl(stopIcon);
			break;
		case kAlertCautionAlert:
			HideControl(stopIcon);
			HideControl(noteIcon);
			break;
	}
	
#if TARGET_API_MAC_CARBON
	GetDialogItemAsControl(alert, kMAApplicationIcon, &applicationIcon);
	SetControlUserPaneDraw(applicationIcon, MUtilities::ApplicationIconDraw);
#endif
	
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
		SetControlData(errorField,
				       kControlNoPart,
				       kControlStaticTextTextTag,
				       errorStr[0],
				       (char*)&errorStr[1]);
	else
		HideDialogItem(alert, kMAError);
		
	if (explanationStr[0] != 0)
		SetControlData(explanationField,
				       kControlNoPart,
				       kControlStaticTextTextTag,
				       explanationStr[0],
				       (char*)&explanationStr[1]);
	else
		HideDialogItem(alert, kMAExplanation);
	
	if (position == kWindowCenterParentWindow ||
		position == kWindowAlertPositionParentWindow)
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
			case kMACheckbox:
				checkboxState = !checkboxState;
				ToggleCheckbox(otherButton);
				break;
		}
	}
	
	DisposeDialog(alert);
	delete alertWindow;
	
	MWindow::ActivateAll();
	
	return itemHit;
#endif
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
			HiliteControl(button, kControlButtonPart);
#if TARGET_API_MAC_CARBON
			SetDialogDefaultItem(alert, 0);
			QDFlushPortBuffer(GetDialogPort(alert), NULL);
#endif
			MUtilities::Sleep(9);
			HiliteControl(button, 0);
#if TARGET_API_MAC_CARBON
			QDFlushPortBuffer(GetDialogPort(alert), NULL);
#endif
			return true;
		}
	}
	
	return false;
}
