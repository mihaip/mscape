#include "PreviewPalette.h"
#include "icnsEditorClass.h"

ControlActionUPP PreviewPalette::sliderActionUPP = NewControlActionUPP(PreviewPalette::SliderAction);

PreviewPalette::PreviewPalette()
			   :MFloater(rPPWindow, kPreviewPaletteType)
{
	Str255	sizeAsString;
	
	oscillating = false;
	increasing = false;
	
	parentEditor = NULL;
	
	settingsMenu = GetMenu(rPPSettingsMenu);
	
	previousBackground = -1;
	
	CreateControls();
	
	NumToString(GetControlValue(controls.slider), sizeAsString);
	SetControlText(controls.text, sizeAsString);
}

PreviewPalette::~PreviewPalette()
{
#if !TARGET_API_MAC_CARBON
	DisposeEnhancedPlacard(controls.background);
#endif
	DisposeEnhancedPlacard(controls.settings);
}

void PreviewPalette::Activate()
{
	Update();
}

void PreviewPalette::DoIdle(MWindowPtr windowUnderMouse)
{
#pragma unused (windowUnderMouse)
	if (oscillating)
	{
		int newTicks, delta;
		Str255	valueAsString;
		
		newTicks = TickCount();
		
		if (oscillationTicks == -1 || (newTicks - oscillationTicks) > 64)
			delta = 4;
		else
			delta = (newTicks - oscillationTicks) * 2;
			
		oscillationTicks = newTicks;
		
		if (increasing)
			currentValue += delta;
		else
			currentValue -= delta;
			
		SetControlValue(controls.slider, currentValue);
		if (currentValue <= GetControlMinimum(controls.slider) ||
			currentValue >= GetControlMaximum(controls.slider))
		{
			increasing = !increasing;
			currentValue = GetControlValue(controls.slider);
		}	
		SliderAction(controls.slider, kControlIndicatorPart);
		NumToString(GetControlValue(controls.slider), valueAsString);
		
		SetControlText(controls.text, valueAsString);
		
		Draw1Control(controls.text);
		Draw1Control(controls.preview);
	}
}

void PreviewPalette::Deactivate()
{
	if (IsControlActive(controls.root))
	{
		//SetThemeWindowBackground(window, kThemeBrushDialogBackgroundActive, false);
		DeactivateControl(controls.root);
	}
}

void PreviewPalette::HandleContentClick(EventRecord* eventPtr)
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
		if (TrackControl(clickedControl, where, sliderActionUPP))
		{
			if (clickedControl == controls.text)
				SetKeyboardFocus(window, controls.text, kControlFocusNextPart);
			else if (clickedControl == controls.preview)
			{
				icnsEditorClass::statics.preferences.ToggleFeature(prefsPreviewSelected);
				
				Draw1Control(controls.preview);
				Draw1Control(controls.settings);
			}
			else if (clickedControl == controls.settings)
				EnhancedPlacardHandleClick(controls.settings);
		}
	}
	
	if (clickedControl != controls.text && GetKeyboardFocus(window) == controls.text)
	{
		Str255	newSizeAsString;
		long	newSize;
		
		ClearKeyboardFocus(window);
		
		GetControlText(controls.text, newSizeAsString);
		StringToNum(newSizeAsString, &newSize);
		
		SetPreviewSize(newSize);
	}	
	RESTOREGWORLD;
}

void PreviewPalette::HandleKeyDown(EventRecord* eventPtr)
{
	if (GetKeyboardFocus(window) == controls.text)
	{
		switch (eventPtr->message & charCodeMask)
		{
			case kEnterCharCode:
			case kTabCharCode:
			case kReturnCharCode:
				Str255	newSizeAsString;
				long	newSize;
				
				ClearKeyboardFocus(window);
				
				GetControlText(controls.text, newSizeAsString);
				StringToNum(newSizeAsString, &newSize);
				
				SetPreviewSize(newSize);
				break;
			default:
				HandleControlKey(controls.text,
								 (eventPtr->message & keyCodeMask) >> 16,
								 eventPtr->message & charCodeMask,
								 eventPtr->modifiers);
				break;
		}
	}
	else
	{
		bool matches = true;
		
		for (int i = 1; i < kPPEasterEggPhraseLength; i++)
			keyBuffer[i - 1] = keyBuffer[i];
			
		keyBuffer[kPPEasterEggPhraseLength - 1] = eventPtr->message & charCodeMask;
		
		for (int i=0; i < kPPEasterEggPhraseLength;i++)
			if (keyBuffer[i] != kPPEasterEggPhrase[i])
			{
				matches = false;
				break;
			}
			
		if (matches)
		{
			oscillating = !oscillating;
			oscillationTicks = -1;
			currentValue = GetControlValue(controls.slider);
		}
	}
}

void PreviewPalette::CreateControls()
{
	ControlFontStyleRec			controlStyle;

#if TARGET_API_MAC_CARBON
	controlStyle.flags = kControlUseFontMask;
	controlStyle.font = kControlFontSmallSystemFont;
#else
	controlStyle.flags = kControlUseFontMask | kControlUseSizeMask | kControlAddToMetaFontMask;
	controlStyle.font = kControlFontSmallSystemFont;
	controlStyle.size = 9;
#endif
	
	CreateRootControl(window, &controls.root);
	
#if !TARGET_API_MAC_CARBON
	controls.background = NewEnhancedPlacard(rPPBackground, window,
											 enhancedPlacardDrawBorder + enhancedPlacardNoHitTest + enhancedPlacardDrawDialogFrame,
											 applFont, 9, "\p",
											 NULL, false,
											 NULL,
											 icnsEditorClass::statics.canvasGW, icnsEditorClass::statics.canvasPix,
											 NULL, NULL);
#endif
	
	controls.preview = GetNewControl(rPPPreview, window);
	SetControlUserPaneDraw(controls.preview, PreviewPalette::PreviewDraw);
	SetControlUserPaneHitTest(controls.preview, GenericHitTest);
	
	controls.text = GetNewControl(rPPText, window);
	SetControlKeyFilter(controls.text, PreviewPalette::KeyFilter);
	SetControlFontStyle(controls.text, &controlStyle);
	
	controls.slider = GetNewControl(rPPSlider, window);
#if TARGET_API_MAC_CARBON
	if (MUtilities::GestaltVersion(gestaltSystemVersion, 0x10, 0x00))
	{
		long		sliderHeight;
		ControlSize	smallSize;
		Rect		controlBounds;
		
		GetThemeMetric(kThemeMetricHSliderHeight, &sliderHeight);
		smallSize = kControlSizeSmall;
		
		GetControlBounds(controls.slider, &controlBounds);
		SetRect(&controlBounds, controlBounds.left, controlBounds.top + 2, controlBounds.right - 7, controlBounds.top + 2 + sliderHeight);
		SetControlBounds(controls.slider, &controlBounds);
		SetControlData(controls.slider, kControlNoPart, kControlSizeTag, sizeof(ControlSize), &smallSize);
		
		GetControlBounds(controls.text, &controlBounds);
		controlBounds.left -= 3;
		SetControlBounds(controls.text, &controlBounds);
	}
#endif
	
	controls.settings = NewEnhancedPlacard(rPPSettings, window,
										   enhancedPlacardDrawBorder + enhancedPlacardLargeArrow, applFont, 9, "\p",
										   NULL, false,
										   settingsMenu,
										   icnsEditorClass::statics.canvasGW, icnsEditorClass::statics.canvasPix,
										   PreviewPalette::SettingsUpdate, this);
}

void PreviewPalette::Update()
{
	Update(GetFrontEditor());
}

void PreviewPalette::Update(icnsEditorPtr editor)
{
	parentEditor = editor;
	
	if (editor == NULL && IsControlActive(controls.root))
		DeactivateControl(controls.root);
	else if (editor != NULL && !IsControlActive(controls.root))
		ActivateControl(controls.root);
	else
		Draw1Control(controls.preview);
}

void PreviewPalette::SetPreviewSize(int size)
{
	Str255	sliderText;
	
	SnapPreviewSize(&size);
	
	SetControlValue(controls.slider, size);
	
	NumToString(size, sliderText);
	
	SetControlText(controls.text, sliderText);
	
	if (IsVisible())
	{
		SAVEGWORLD;
		
		SetPort();
		
		Draw1Control(controls.slider);
		Draw1Control(controls.text);
		Draw1Control(controls.preview);
		
		RESTOREGWORLD;
	}
}

#pragma mark -

void PreviewPalette::SettingsUpdate(struct EnhancedPlacardData* data, int flags)
{
	PreviewPalettePtr	parent;
	
	parent = PreviewPalettePtr(data->clientData);
	
	if (flags & enhancedPlacardUpdateState)
	{
		Str255	menuItemText;
		
		CopyString(data->title, "\p");
		
		if (icnsEditorClass::statics.preferences.FeatureEnabled(prefsPreviewSelected))
		{
			GetMenuItemText(data->menu, iPPSelected, menuItemText);
			
			CheckMenuItem(data->menu, iPPNormal, false);
			CheckMenuItem(data->menu, iPPSelected, true);
		}
		else
		{
			GetMenuItemText(data->menu, iPPNormal, menuItemText);
			
			CheckMenuItem(data->menu, iPPNormal, true);
			CheckMenuItem(data->menu, iPPSelected, false);
		}
		
		AppendString(data->title, menuItemText);
		AppendString(data->title, "\p, ");
		
		
		if (parent->previousBackground != -1)
		{
			CheckMenuItem(data->menu, parent->previousBackground, false);
			parent->previousBackground = -1;
		}
		CheckMenuItem(data->menu, icnsEditorClass::statics.preferences.GetPreviewBackground(), true);
		
		GetMenuItemText(data->menu, icnsEditorClass::statics.preferences.GetPreviewBackground(), menuItemText);
		
		// get rid of any ellipses or periods
		while (menuItemText[menuItemText[0]] == 0xC9 || menuItemText[menuItemText[0]] == '.')
			menuItemText[0]--;
		AppendString(data->title, menuItemText);
	}
	else
	{
		switch (data->menuValue)
		{
			case iPPSelected: icnsEditorClass::statics.preferences.EnableFeature(prefsPreviewSelected); break;
			case iPPNormal: icnsEditorClass::statics.preferences.DisableFeature(prefsPreviewSelected); break;
			case iPPCustomColor:
				RGBColor	newCustomColor;
				Point 		location = {0, 0};
				Str255		messageString;
				
				GetIndString(messageString, rPPStrings, ePPPickCustomColor);
				newCustomColor = icnsEditorClass::statics.preferences.GetPreviewBackgroundColor();
				
				MWindow::DeactivateAll();
				GetColor(location,
						 messageString,
						 &newCustomColor,
						 &newCustomColor);
				MWindow::ActivateAll();
				
				icnsEditorClass::statics.preferences.SetPreviewBackgroundColor(newCustomColor);
			default:
				icnsEditorClass::statics.previewPalette->previousBackground = icnsEditorClass::statics.preferences.GetPreviewBackground();
				icnsEditorClass::statics.preferences.SetPreviewBackground(data->menuValue);
				break;
		}
		
		Draw1Control(parent->controls.preview);
	}
}

pascal void PreviewPalette::SliderAction(ControlHandle theControl, SInt16 thePart)
{
#pragma unused (thePart)
	PreviewPalettePtr	parent;
		
	parent = icnsEditorClass::statics.previewPalette;
	
	if (theControl != parent->controls.slider)
		return;
		
	if (MUtilities::GestaltVersion(gestaltSystemVersion, 0x10, 0x00))
	{
		int currentSize;
		Str255 sizeAsString;
		
		currentSize = GetControlValue(theControl);
		if (currentSize >= 125)
		{
			currentSize = 128;
			SetControlValue(theControl, currentSize);
		}
		NumToString(currentSize, sizeAsString);
		SetControlText(parent->controls.text, sizeAsString);
		
		Draw1Control(parent->controls.text);
		Draw1Control(parent->controls.preview);
			
		parent->Flush();
	}
	else
	{
		int					initialValue, currentValue, min, max, length;
		Str255				sizeAsString;
		Rect 				controlBounds;
		Point				where;
		float				percentageValue;
		
		initialValue = GetControlValue(theControl);
		GetControlBounds(theControl, &controlBounds);
		min = GetControlMinimum(theControl);
		max = GetControlMaximum(theControl);
		length = max - min;
		
		MUtilities::sounds.Start(kThemeDragSoundSliderThumb);
		
		while (Button())
		{
			MUtilities::GetMouseLocation(GetWindowPort(parent->GetWindow()), &where);
			
			where.h -= 3;
			
			where.h = constrain(where.h, controlBounds.left + kSliderEndcap, controlBounds.right - kSliderEndcap);
			
			if (where.v - controlBounds.bottom > 20 ||
				controlBounds.top - where.v > 20)
				currentValue = initialValue;
			else
			{
				percentageValue = float(where.h - (controlBounds.left + kSliderEndcap))/float(controlBounds.right - controlBounds.left - kSliderEndcap * 2);
				currentValue = min + percentageValue * length;
			}
			
			SnapPreviewSize(&currentValue);
			
			SetControlValue(theControl, currentValue);
			
			NumToString(currentValue, sizeAsString);
		
			SetControlText(parent->controls.text, sizeAsString);
			Draw1Control(parent->controls.text);
			
			Draw1Control(parent->controls.preview);
			
			parent->Flush();
		}
		
		MUtilities::sounds.End();
	}
}

void PreviewPalette::SnapPreviewSize(int* value)
{
	if (*value < 14 && (GetFrontEditor() == NULL || GetFrontEditor()->members & miniSize)) *value = 12;
	else if (*value < 24) *value = 16;
	else if (*value < 40) *value = 32;
	else if (*value < 56) *value = 48;
	else if (*value < 64) *value = 64;
	else if (*value > 128) *value = 128;
}

pascal short PreviewPalette::KeyFilter(ControlHandle theControl, SInt16* keyCode, SInt16* charCode, UInt16* modifiers)
{
#pragma unused(theControl, keyCode, modifiers )

	if ( ((char)*charCode >= '0') && ((char)*charCode <= '9') )
		return kControlKeyFilterPassKey;
	
	switch ( *charCode )
	{
		case kLeftArrowCharCode:
		case kRightArrowCharCode:
		case kUpArrowCharCode:
		case kDownArrowCharCode:
		case kBackspaceCharCode:
		case kDeleteCharCode:
			return kControlKeyFilterPassKey;
		default:
			SysBeep(6);
			return kControlKeyFilterBlockKey;
	}
}

pascal void PreviewPalette::PreviewDraw(ControlHandle theControl, short thePart)
{
#pragma unused (thePart)
	PreviewPalettePtr	parent;
	Rect				controlRect, canvasRect, tempRect;
	
	parent = icnsEditorClass::statics.previewPalette;
	if (parent == NULL)
		return;
	
	GetControlBounds(theControl, &controlRect);
	canvasRect = controlRect;
	
	SAVEGWORLD;
	SAVECOLORS;
	
	if (!parent->IsBuffered())
	{
		SetGWorld(icnsEditorClass::statics.canvasGW, NULL);
		OffsetRect(&canvasRect, -canvasRect.left, -canvasRect.top + 128);
	}
	else
	{
		parent->LockPortBits();
		parent->SetPort();
	}
	
	SetUpControlBackground(theControl, 32, true);
	EraseRect(&canvasRect);
	ForeColor(blackColor);
	BackColor(whiteColor);
	
	tempRect = canvasRect;
	InsetRect(&tempRect, 2, 2);
	DrawImageWell(theControl, tempRect);
	DEBUG("\pdrew image well");
	
	FillRectWithPreviewBackground(tempRect);
	
	DEBUG("\pfilled with background");
	
	SetRect(&tempRect, 0, 0,
			GetControlValue(parent->controls.slider),
			GetControlValue(parent->controls.slider));
			
	if (tempRect.right == 12) tempRect.right = 16;
			
	OffsetRect(&tempRect,
			   canvasRect.left + ((canvasRect.right - canvasRect.left) - (tempRect.right - tempRect.left))/2,
			   canvasRect.top + ((canvasRect.bottom - canvasRect.top) - (tempRect.bottom - tempRect.top))/2);
	
	DEBUG("\pall set up");
	
	if (parent->parentEditor)
	{
		int previewSize, maskDepth, previewDepth;
		
		previewSize = tempRect.bottom - tempRect.top;
		
		parent->parentEditor->GetPreviewSizeAndDepths(&previewSize, &previewDepth, &maskDepth);
		
		Str255 temp;
		DEBUG("\ppreview depth");
		NumToString(previewSize,temp);
		DEBUG(temp);
		DEBUG("\pmask depth");
		NumToString(maskDepth, temp);
		DEBUG(temp);
		
		parent->parentEditor->PreviewDisplay(previewSize, previewDepth, maskDepth, tempRect, icnsEditorClass::statics.preferences.FeatureEnabled(prefsPreviewSelected));  
	}
	RESTOREGWORLD;
	parent->UnlockPortBits();
	
	if (!parent->IsBuffered())
		CopyBits((BitMap*)*icnsEditorClass::statics.canvasPix,
				 GetPortBitMapForCopyBits(GetQDGlobalsThePort()),
				 &canvasRect,
				 &controlRect,
				 srcCopy,
				 NULL);
		
	RESTORECOLORS;
}

void PreviewPalette::FillRectWithPreviewBackground(Rect targetRect)
{
	ThemeDrawingState previousState;
	
	if (MUtilities::GestaltVersion(gestaltAppearanceVersion, 0x01, 0x10))
	{
		GetThemeDrawingState(&previousState);
		NormalizeThemeDrawingState();
	}
	
	SAVECOLORS;
	
	switch (icnsEditorClass::statics.preferences.GetPreviewBackground())
	{
		case iPPListView:
			SetThemeBackground(kThemeBrushListViewBackground, 32, true);
			EraseRect(&targetRect);
			break;
		case iPPWhite:
			BackColor(whiteColor);
			EraseRect(&targetRect);
			break;
		case iPPBlack:
			BackColor(blackColor);
			EraseRect(&targetRect);
			break;
		case iPPCustomColor:
			RGBColor customColor;
			
			customColor = icnsEditorClass::statics.preferences.GetPreviewBackgroundColor();
			RGBBackColor(&customColor);
			EraseRect(&targetRect);
			break;
		default:
			PixPatHandle		desktopPattern;

			desktopPattern = MUtilities::GetDesktopPattern();
			DEBUG("\pabout to lock");
			HLock((Handle)desktopPattern);
			DEBUG("\pabout to draw");
			FillCRect(&targetRect, desktopPattern);
			HUnlock((Handle)desktopPattern);
			DEBUG("\pabout to dispose");
			MUtilities::DoneWithDesktopPattern(desktopPattern);
			break;
	}
	
	RESTORECOLORS;
	
	if (MUtilities::GestaltVersion(gestaltAppearanceVersion, 0x01, 0x10))
		SetThemeDrawingState(previousState, true);
}
