#include "icnsEditorClass.h"
#include "drawingStateClass.h"

void icnsEditorClass::Adjust(void)
{
	DialogPtr		adjustDialog;
	ModalFilterUPP	eventFilterUPP;
	short			itemHit, tabHit;
	bool			dialogDone;
	Handle			hueControls, brightnessControls;
	ControlHandle	tempControl, tabs;
	AdjustDialogData dialogData;
	Point			dialogLocation;
	MWindowPtr		adjustDialogWindow;			
	
	SAVECOLORS;
	
	//long mem = FreeMem();
	
	adjustDialog = GetNewDialog(rAdjust, NULL, (WindowPtr)-1L);
	
	adjustDialogWindow = new MWindow(adjustDialog, kDialogType);
	
	eventFilterUPP = NewModalFilterProc(AdjustDialogFilter);
	
	dialogData.sliderActionFunctionUPP = NewControlActionProc(SliderActionFunction);
					
	SetDialogDefaultItem(adjustDialog, iOK);
	SetDialogCancelItem(adjustDialog, iCancel);
	
	hueControls = Get1Resource('DITL', rAdjustHuePane);
	AppendDITL(adjustDialog, hueControls, overlayDITL);
	
	NewGWorld(&dialogData.tempGW, (**currentPix).pixelSize, &(**currentPix).bounds, (**currentPix).pmTable, NULL, 0);
	dialogData.tempPix = GetGWorldPixMap(dialogData.tempGW);
	LockPixels(dialogData.tempPix);
	CopyPixMap(currentPix, dialogData.tempPix, &(**currentPix).bounds, &(**currentPix).bounds, srcCopy, NULL);
	
	NewGWorld(&dialogData.tempGW2, 32, &(**currentPix).bounds, NULL, NULL, 0);
	dialogData.tempPix2 = GetGWorldPixMap(dialogData.tempGW2);
	LockPixels(dialogData.tempPix2);
	CopyPixMap(currentPix, dialogData.tempPix2, &(**currentPix).bounds, &(**currentPix).bounds, srcCopy, NULL);
	
	RESTORECOLORS;
	
	brightnessControls = Get1Resource('DITL', rAdjustBrightnessPane);
	AppendDITL(adjustDialog, brightnessControls, overlayDITL);
	for (int i= iBrightnessSlider; i <= iContrastLabel; i++)
	{
		GetDialogItemAsControl(adjustDialog, i, &tempControl);
		HideControl(tempControl);
	}
	
	GetDialogItemAsControl(adjustDialog, iAdjustTabs, &tabs);
	
	dialogData.parentEditor = this;
	
	GetDialogItemAsControl(adjustDialog, iPreview, &dialogData.preview);
	GetDialogItemAsControl(adjustDialog, iColorize, &dialogData.colorize);
	
	GetDialogItemAsControl(adjustDialog, iHueSlider, &dialogData.hueSlider);
	GetDialogItemAsControl(adjustDialog, iSaturationSlider, &dialogData.saturationSlider);
	GetDialogItemAsControl(adjustDialog, iHueField, &dialogData.hueField);
	GetDialogItemAsControl(adjustDialog, iSaturationField, &dialogData.saturationField);
	GetDialogItemAsControl(adjustDialog, iColorize, &dialogData.colorize);
	
	GetDialogItemAsControl(adjustDialog, iBrightnessSlider, &dialogData.brightnessSlider);
	GetDialogItemAsControl(adjustDialog, iContrastSlider, &dialogData.contrastSlider);
	GetDialogItemAsControl(adjustDialog, iBrightnessField, &dialogData.brightnessField);
	GetDialogItemAsControl(adjustDialog, iContrastField, &dialogData.contrastField);
	
	if (statics.preferences.FeatureEnabled(prefsRealTimePreviews))
		SetControlValue(dialogData.preview, 1);
	else
		SetControlValue(dialogData.preview, 0);
	
	FieldToSlider(dialogData.hueField, dialogData.hueSlider);
	FieldToSlider(dialogData.saturationField, dialogData.saturationSlider);
			
	FieldToSlider(dialogData.brightnessField, dialogData.brightnessSlider);
	FieldToSlider(dialogData.contrastField, dialogData.contrastSlider);
			
	adjustDialogWindow->SetRefCon(int(&dialogData));
	
	dialogLocation = statics.preferences.GetAdjustDialogLocation();
	
	if (dialogLocation.h != -1)
		adjustDialogWindow->SetPosition(dialogLocation);
	
	MWindow::DeactivateAll();
	
	ShowWindow(adjustDialog);
	
	dialogDone = false;
	
	while (!dialogDone)
	{
		ModalDialog(eventFilterUPP, &itemHit);
		
		switch (itemHit)
		{
			case iOK:
				if (GetControlValue(dialogData.preview))
					statics.preferences.EnableFeature(prefsRealTimePreviews);
				else
					statics.preferences.DisableFeature(prefsRealTimePreviews);
				statics.preferences.SetAdjustDialogLocation(adjustDialogWindow->GetPosition());	
				
				UpdateEffects(&dialogData);
				dialogDone = true;
				break;
			case iCancel:
				currentState->RestoreState(this);
				dialogDone = true;
				break;
				
			
			/*case iHueSlider: UpdateEffects(&dialogData); break;
			case iSaturationSlider: UpdateEffects(&dialogData); break;
			
			case iBrightnessSlider: UpdateEffects(&dialogData); break;
			case iContrastSlider: UpdateEffects(&dialogData); break;*/
			
			case iHueField:
				FieldToSlider(dialogData.hueField, dialogData.hueSlider);
				UpdateEffects(&dialogData);
				break;
			case iSaturationField:
				FieldToSlider(dialogData.saturationField, dialogData.saturationSlider);
				UpdateEffects(&dialogData);
				break;
			
			case iBrightnessField: 
				FieldToSlider(dialogData.brightnessField, dialogData.brightnessSlider);
				UpdateEffects(&dialogData);
				break;
			case iContrastField:
				FieldToSlider(dialogData.contrastField, dialogData.contrastSlider);
				UpdateEffects(&dialogData);
				break;
			
			case iAdjustTabs:
				tabHit = GetControlValue(tabs);
				switch (tabHit)
				{
					case 1:
						for (int i= iBrightnessSlider; i <= iContrastLabel; i++)
						{
							GetDialogItemAsControl(adjustDialog, i, &tempControl);
							HideControl(tempControl);
						}
						for (int i= iHueSlider; i <= iSaturationLabel; i++)
						{
							GetDialogItemAsControl(adjustDialog, i, &tempControl);
							ShowControl(tempControl);
							Draw1Control(tempControl);
						}
						SetKeyboardFocus(adjustDialog, dialogData.hueField, kControlEditTextPart);
						Draw1Control(dialogData.hueField);
						break;
						
					case 2:
						for (int i= iHueSlider; i <= iSaturationLabel; i++)
						{
							GetDialogItemAsControl(adjustDialog, i, &tempControl);
							HideControl(tempControl);
						}
						for (int i= iBrightnessSlider; i <= iContrastLabel; i++)
						{
							GetDialogItemAsControl(adjustDialog, i, &tempControl);
							ShowControl(tempControl);
							Draw1Control(tempControl);
						}
						SetKeyboardFocus(adjustDialog, dialogData.brightnessField, kControlEditTextPart);
						Draw1Control(dialogData.brightnessField);
						break;
				}
				break;
			case iPreview: ToggleCheckbox(dialogData.preview); break;
			case iColorize:
				ToggleCheckbox(dialogData.colorize);
				if (GetControlValue(dialogData.colorize))
				{
					SetControlMinimum(dialogData.hueSlider, 0);
					SetControlMaximum(dialogData.hueSlider, 360);
					SetControlValue(dialogData.hueSlider, 0);
					SliderActionFunction(dialogData.hueSlider, 0);
					
					SetControlMinimum(dialogData.saturationSlider, 0);
					SetControlMaximum(dialogData.saturationSlider, 100);
					SetControlValue(dialogData.saturationSlider, 25);
					SliderActionFunction(dialogData.saturationSlider, 0);
				}
				else
				{
					SetControlMinimum(dialogData.hueSlider, -180);
					SetControlMaximum(dialogData.hueSlider, 180);
					SetControlValue(dialogData.hueSlider, 0);
					SliderActionFunction(dialogData.hueSlider, 0);
					
					SetControlMinimum(dialogData.saturationSlider, -100);
					SetControlMaximum(dialogData.saturationSlider, 100);
					SetControlValue(dialogData.saturationSlider, 0);
					SliderActionFunction(dialogData.saturationSlider, 0);
				}
				UpdateEffects(&dialogData);
				break;
		}
		
		//DisplayValue(itemHit);
	}
	
	ReleaseResource(brightnessControls);
	ReleaseResource(hueControls);
	DisposeRoutineDescriptor(dialogData.sliderActionFunctionUPP);
	UnlockPixels(dialogData.tempPix);
	DisposeGWorld(dialogData.tempGW);
	
	DisposeDialog(adjustDialog);
	
	delete adjustDialogWindow;
	
	MWindow::ActivateAll();
	
	//DisplayValue(FreeMem() - mem);
	
	if (itemHit != iCancel) // if there was painting performed...
	{
		currentState = new drawingStateClass(currentState, this); // we must save the state
		status |= needToSave; // the drawing was modified, and thus it needs to be saved...
		status |= needsUpdate; // and be update as well
	}
}

void FieldToSlider(ControlHandle field, ControlHandle slider)
{
	Str255 tempString;
	long min, max, sliderValue;
	
	min = GetControlMinimum(slider);
	max = GetControlMaximum(slider);
	
	GetControlText(field, tempString);
	StringToNum(tempString, &sliderValue);
	
	if (sliderValue > max) sliderValue = max;
	else if (sliderValue < min) sliderValue = min;
	
	SetControlValue(slider, sliderValue);
}

pascal bool AdjustDialogFilter(DialogPtr dialog, EventRecord* eventPtr, short* itemHit)
{
	bool				handledEvent = false;
	char 				key;
	ControlHandle		theControl;
	AdjustDialogDataPtr dialogData;
	MWindowPtr			adjustDialogWindow;
	short				part;
	
	adjustDialogWindow = MWindowPtr(GetWRefCon(dialog));
	dialogData = AdjustDialogDataPtr(adjustDialogWindow->GetRefCon());
	
	switch (eventPtr->what)
	{
		case mouseDown:
			SAVEGWORLD;
			SetPort(dialog);
			Point theMouse;
			theMouse = eventPtr->where;
			GlobalToLocal(&theMouse);
			if((part = FindControl(theMouse, dialog,&theControl)) && part)
			{
				if(theControl == dialogData->hueSlider ||
				   theControl == dialogData->saturationSlider ||
				   theControl == dialogData->brightnessSlider ||
				   theControl == dialogData->contrastSlider)
				{
					if (part == kControlPageUpPart || part == kControlPageDownPart)
						ThemeSoundStart(kThemeDragSoundSliderThumb);
					
					TrackControl(theControl,theMouse,dialogData->sliderActionFunctionUPP);
					
					if (part == kControlPageUpPart || part == kControlPageDownPart)
						ThemeSoundEnd();
				}						
					
				UpdateEffects(dialogData);
			}
			
			RESTOREGWORLD;
			break;
		case keyDown:
		case autoKey:
			key = eventPtr->message & charCodeMask;
			if ((key == kReturnCharCode) || (key == kEnterCharCode) ||
			    (key == kTabCharCode) || (key == kBackspaceCharCode) ||
			    (key == kEscapeCharCode) || (key == kDeleteCharCode) ||
			    (key == kRightArrowCharCode) || (key == kLeftArrowCharCode) ||
			    (key == kUpArrowCharCode) || (key == kDownArrowCharCode) ||
			    ((key >= '0') && (key <= '9')) || (key == '-') || (key == '+') ||
			    ((key == '.') && (eventPtr->modifiers & cmdKey) != 0))
			{
			   handledEvent = StandardEditorDialogFilter(dialog, eventPtr, itemHit);
			}
			else
			{
				SysBeep(6);
				handledEvent = true;
			}
			break;
		default:
			handledEvent = StandardEditorDialogFilter(dialog,eventPtr,itemHit);
		break;
	}
	return handledEvent;
}


void UpdateEffects(AdjustDialogDataPtr dialogData)
{
	RGBMatrix	matrix;
	RgnHandle	clippingRgn;
	long		copyMode;
	
	SAVECOLORS;
	
	CopyPixMap(dialogData->tempPix,
			   dialogData->tempPix2,
			   &(**dialogData->tempPix).bounds,
			   &(**dialogData->tempPix).bounds,
			   srcCopy,
			   NULL);
	
	
	IdentityMatrix(matrix);
	OffsetMatrix(matrix,
				 GetControlValue(dialogData->brightnessSlider),
				 GetControlValue(dialogData->brightnessSlider),
				 GetControlValue(dialogData->brightnessSlider));
				 
	/*ScaleMatrix(matrix,
			    1.0 + (float)GetControlValue(dialogData->contrastSlider)/100.0,
			    1.0 + (float)GetControlValue(dialogData->contrastSlider)/100.0,
			    1.0 + (float)GetControlValue(dialogData->contrastSlider)/100.0);*/
	
	if (GetControlValue(dialogData->colorize))
	{
		ColorizePixMap(dialogData->tempPix2,
					   GetControlValue(dialogData->hueSlider),
					   (float)GetControlValue(dialogData->saturationSlider)/100.0);
	}
	else
	{
		SaturateMatrix(matrix,
					   1.0 + (float)GetControlValue(dialogData->saturationSlider)/100.0);
	
		HueRotateMatrix(matrix,
						GetControlValue(dialogData->hueSlider));
	}
	ApplyMatrix(matrix, dialogData->tempPix2);
	
	ChangeContrast(dialogData->tempPix2, GetControlValue(dialogData->contrastSlider));
	
	if (EmptyRgn(dialogData->parentEditor->selectionRgn))
		clippingRgn = NULL;
	else
		clippingRgn = dialogData->parentEditor->selectionRgn;
		
	if (icnsEditorClass::statics.preferences.FeatureEnabled(prefsDither))
		copyMode = srcCopy + ditherCopy;
	else
		copyMode = srcCopy;
		
	CopyPixMap(dialogData->tempPix2,
			   dialogData->parentEditor->currentPix,
			   &(**dialogData->tempPix).bounds,
			   &(**dialogData->tempPix).bounds,
			   copyMode,
			   clippingRgn);
	
	
	Draw1Control(dialogData->parentEditor->controls.editArea);
	
	icnsEditorClass::statics.UpdatePalettes(dialogData->parentEditor, 0);
	
	RESTORECOLORS;
}

pascal void SliderActionFunction(ControlHandle theControl, short thePart)
{
	AdjustDialogDataPtr dialogData;
	Str255	tempString;
	ControlHandle field;
	short		fieldNo;
	MWindowPtr	adjustDialogWindow;
	
	if (thePart == kControlPageUpPart || thePart == kControlPageDownPart)
	{
		Rect controlRect;
		Point	where;
		
		GetControlBounds(theControl, &controlRect);
		
		GetMouse(&where);
		
		if (where.h < controlRect.left + kSliderEndcap) where.h = controlRect.left + kSliderEndcap;
		else if (where.h > controlRect.right - kSliderEndcap) where.h = controlRect.right - kSliderEndcap;
		
		SetControlValue(theControl, GetControlMinimum(theControl) + float(where.h - (controlRect.left + kSliderEndcap))/float(controlRect.right - controlRect.left - kSliderEndcap * 2) * (GetControlMaximum(theControl) - GetControlMinimum(theControl)));
	}
	
	adjustDialogWindow = MWindowPtr(GetWRefCon(GetControlOwner(theControl)));
	dialogData = AdjustDialogDataPtr(adjustDialogWindow->GetRefCon());
	
	NumToString(GetControlValue(theControl), tempString);
	
	if (theControl == dialogData->hueSlider) {field = dialogData->hueField; fieldNo = iHueField;}
	else if (theControl == dialogData->saturationSlider) {field = dialogData->saturationField; fieldNo = iSaturationField;}
	else if (theControl == dialogData->brightnessSlider) {field = dialogData->brightnessField; fieldNo = iBrightnessField;}
	else if (theControl == dialogData->contrastSlider) {field = dialogData->contrastField; fieldNo = iContrastField;}
	
	
	SetControlText(field, tempString);
	SetKeyboardFocus(GetControlOwner(theControl), field, kControlEditTextPart);
	SelectDialogItemText(GetControlOwner(theControl), fieldNo, 0, 32767);
	Draw1Control(field);
	
	if (GetControlValue(dialogData->preview))
		UpdateEffects(dialogData);
}

