#include "PreviewPalette.h"
#include "icnsEditorClass.h"

PreviewPalette::PreviewPalette()
			   :MFloater(rPPWindow, kPreviewPaletteType)
{
	Str255	sizeAsString;
	
	oscillating = false;
	increasing = false;
	
	parentEditor = NULL;
	
	settingsMenu = GetMenu(rPPSettingsMenu);
	
	CreateControls();
	
	NumToString(GetControlValue(controls.slider), sizeAsString);
	SetControlText(controls.text, sizeAsString);
}

PreviewPalette::~PreviewPalette()
{
	;
}

void PreviewPalette::Activate()
{
	Update();
}

void PreviewPalette::DoIdle()
{
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
		if (TrackControl(clickedControl, where, (ControlActionUPP) -1))
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
	ControlActionUPP	sliderActionUPP;
	
	SAVEGWORLD;
	
	SetPort();
	TextFont(applFont);
	TextSize(9);
	
	CreateRootControl(window, &controls.root);
	
	controls.background = NewEnhancedPlacard(rPPBackground, window, enhancedPlacardDrawBorder + enhancedPlacardNoHitTest + enhancedPlacardDrawDialogFrame, 0, 0, "\p", NULL, NULL, icnsEditorClass::statics.canvasGW, icnsEditorClass::statics.canvasPix, NULL, NULL);
	
	controls.preview = GetNewControl(rPPPreview, window);
	SetControlUserPaneDraw(controls.preview, PreviewPalette::PreviewDraw);
	SetControlUserPaneHitTest(controls.preview, GenericHitTest);
	
	controls.slider = GetNewControl(rPPSlider, window);
	sliderActionUPP = NewControlActionProc(PreviewPalette::SliderAction);
	SetControlAction(controls.slider, sliderActionUPP);
	
	controls.text = GetNewControl(rPPText, window);
	SetControlKeyFilter(controls.text, PreviewPalette::KeyFilter);
	
	controls.settings = NewEnhancedPlacard(rPPSettings, window, enhancedPlacardDrawBorder + enhancedPlacardLargeArrow, 0, 0, "\p", NULL, settingsMenu, icnsEditorClass::statics.canvasGW, icnsEditorClass::statics.canvasPix, PreviewPalette::SettingsUpdate, this);

	RESTOREGWORLD;
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
	
	SAVEGWORLD;
	
	SetPort();
	
	Draw1Control(controls.slider);
	Draw1Control(controls.text);
	Draw1Control(controls.preview);
	
	RESTOREGWORLD;
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
			
			CheckItem(data->menu, iPPNormal, false);
			CheckItem(data->menu, iPPSelected, true);
		}
		else
		{
			GetMenuItemText(data->menu, iPPNormal, menuItemText);
			
			CheckItem(data->menu, iPPNormal, true);
			CheckItem(data->menu, iPPSelected, false);
		}
		
		AppendString(data->title, menuItemText);
		AppendString(data->title, "\p, ");
		
		switch (icnsEditorClass::statics.preferences.GetPreviewBackground())
		{
			case iPPWhite:
				GetMenuItemText(data->menu, iPPWhite, menuItemText);
				CheckItem(data->menu, iPPWhite, true);
				CheckItem(data->menu, iPPBlack, false);
				CheckItem(data->menu, iPPListView, false);
				CheckItem(data->menu, iPPDesktop, false);
				break;
			case iPPBlack:
				GetMenuItemText(data->menu, iPPBlack, menuItemText);
				CheckItem(data->menu, iPPWhite, false);
				CheckItem(data->menu, iPPBlack, true);
				CheckItem(data->menu, iPPListView, false);
				CheckItem(data->menu, iPPDesktop, false);
				break;
			case iPPListView:
				GetMenuItemText(data->menu, iPPListView, menuItemText);
				CheckItem(data->menu, iPPWhite, false);
				CheckItem(data->menu, iPPBlack, false);
				CheckItem(data->menu, iPPListView, true);
				CheckItem(data->menu, iPPDesktop, false);
				break;
			default:
				GetMenuItemText(data->menu, iPPDesktop, menuItemText);
				CheckItem(data->menu, iPPWhite, false);
				CheckItem(data->menu, iPPBlack, false);
				CheckItem(data->menu, iPPListView, false);
				CheckItem(data->menu, iPPDesktop, true);
				break;
		}
		
		AppendString(data->title, menuItemText);
	}
	else
	{
		switch (data->menuValue)
		{
			case iPPSelected: icnsEditorClass::statics.preferences.EnableFeature(prefsPreviewSelected); break;
			case iPPNormal: icnsEditorClass::statics.preferences.DisableFeature(prefsPreviewSelected); break;
			default: icnsEditorClass::statics.preferences.SetPreviewBackground(data->menuValue); break;
		}
		
		Draw1Control(parent->controls.preview);
	}
}

pascal void PreviewPalette::SliderAction(ControlHandle theControl, SInt16 thePart)
{
#pragma unused (thePart)
	PreviewPalettePtr	parent;
	int					initialValue, currentValue, min, max, length;
	Str255				sizeAsString;
	Rect 				controlBounds;
	Point				where;
	float				percentageValue;
	
	parent = icnsEditorClass::statics.previewPalette;
	
	initialValue = GetControlValue(theControl);
	GetControlBounds(theControl, &controlBounds);
	min = GetControlMinimum(theControl);
	max = GetControlMaximum(theControl);
	length = max - min;
	
	
	ThemeSoundStart(kThemeDragSoundSliderThumb);
	
	while (Button())
	{
		GetMouse(&where);
		
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
	}
	
	ThemeSoundEnd();
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
	int					maskDepth, previewDepth;
	Rect				controlRect, canvasRect, tempRect;
	
	parent = icnsEditorClass::statics.previewPalette;
	
	GetControlBounds(theControl, &controlRect);
	
	canvasRect = controlRect;
	OffsetRect(&canvasRect, -canvasRect.left, -canvasRect.top + 128);
	
	SAVEGWORLD;
	SAVECOLORS;
	
	SetGWorld(icnsEditorClass::statics.canvasGW, NULL);
	RESTORECOLORS;
	EraseRect(&canvasRect);
	ForeColor(blackColor);
	BackColor(whiteColor);
	tempRect = canvasRect;
	InsetRect(&tempRect, 2, 2);
	DrawImageWell(theControl, tempRect);
	
	FillRectWithPreviewBackground(tempRect);
	
	SetRect(&tempRect, 0, 0,
			GetControlValue(parent->controls.slider),
			GetControlValue(parent->controls.slider));
			
	if (tempRect.right == 12) tempRect.right = 16;
			
	OffsetRect(&tempRect,
			   canvasRect.left + ((canvasRect.right - canvasRect.left) - (tempRect.right - tempRect.left))/2,
			   canvasRect.top + ((canvasRect.bottom - canvasRect.top) - (tempRect.bottom - tempRect.top))/2);
	
	if (parent->parentEditor)
	{
		int previewSize;
		
		if (masks & parent->parentEditor->currentPixName)
		{
			maskDepth = (**parent->parentEditor->currentPix).pixelSize;
			if (maskDepth == 8)
			{
				if (parent->parentEditor->members & icon32)
					previewDepth = 32;
				else if (parent->parentEditor->members & icon8)
					previewDepth = 8;
				else if (parent->parentEditor->members & icon4)
					previewDepth = 4;
				else
					previewDepth = 1;
			}
			else if (parent->parentEditor->members & icon8)
				previewDepth = 8;
			else if (parent->parentEditor->members & icon4)
				previewDepth = 4;
			else if (parent->parentEditor->members & icon32)
				previewDepth = 32;
			else
				previewDepth = 1;
		}
		else
		{
			previewDepth = (**parent->parentEditor->currentPix).pixelSize;
			maskDepth = -1;
		}
		
		previewSize = tempRect.bottom - tempRect.top;
		
		if (previewSize != (**parent->parentEditor->currentPix).bounds.bottom)
		{
			int members;
			
			members = parent->parentEditor->members;
			
			if (members & thumbnailSize)
			{
				previewSize = 128;
				previewDepth = 32;
				maskDepth = 8;
			}
			else if (members & hugeSize)
			{
				previewSize = 48;
			}
			else if (members & largeSize)
			{
				previewSize = 32;
			}
			else if (members & smallSize)
			{
				previewSize = 16;
			}
			else
			{
				previewSize = 12;
				if (previewDepth == 32) previewDepth = 8;
				if (maskDepth == 8) maskDepth = 1;
			}
		}
		parent->parentEditor->PreviewDisplay(previewSize, previewDepth, maskDepth, tempRect, icnsEditorClass::statics.preferences.FeatureEnabled(prefsPreviewSelected));  
	}
	RESTOREGWORLD;
	
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
	SAVECOLORS;
	
	switch (icnsEditorClass::statics.preferences.GetPreviewBackground())
	{
		case iPPListView:
			SetThemeBackground(kThemeBrushListViewBackground, 32, true);
			EraseRect(&targetRect);
			break;
		case iPPWhite:
			SetThemeBackground(kThemeBrushWhite, 32, true);
			EraseRect(&targetRect);
			break;
		case iPPBlack:
			SetThemeBackground(kThemeBrushBlack, 32, true);
			EraseRect(&targetRect);
			break;
		default:
			PixPatHandle		desktopPattern;

			desktopPattern = LMGetDeskCPat();
			HLock((Handle)desktopPattern);
			FillCRect(&targetRect, desktopPattern);
			HUnlock((Handle)desktopPattern);
			break;
	}
	
	RESTORECOLORS;
}
