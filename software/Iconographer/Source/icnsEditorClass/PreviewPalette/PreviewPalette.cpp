#include "PreviewPalette.h"
#include "icnsEditorClass.h"

PreviewPalette::PreviewPalette()
			   :MFloater(rPPWindow, kPreviewPaletteType)
{
	Str255	sizeAsString;
	
	selected = false;
	
	oscillating = false;
	increasing = false;
	
	parentEditor = NULL;
	
	CreateControls();
	
	NumToString(GetControlValue(controls.thumbnailSlider), sizeAsString);
	SetControlText(controls.thumbnailText, sizeAsString);
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
	if (oscillating && currentPane == kPPThumbnailPane)
	{
		int currentValue, newTicks, delta;
		Str255	valueAsString;
		
		newTicks = LMGetTicks();
		
		if (oscillationTicks == -1 || (newTicks - oscillationTicks) > 64)
			delta = 4;
		else
			delta = (newTicks - oscillationTicks) * 2;
			
		oscillationTicks = newTicks;
		
		currentValue = GetControlValue(controls.thumbnailSlider);
		
		
		
		if (increasing)
			currentValue += delta;
		else
			currentValue -= delta;
			
		if (currentValue <= GetControlMinimum(controls.thumbnailSlider) ||
			currentValue >= GetControlMaximum(controls.thumbnailSlider))
			increasing = !increasing;
			
		SetControlValue(controls.thumbnailSlider, currentValue);
		
		NumToString(GetControlValue(controls.thumbnailSlider), valueAsString);
		
		SetControlText(controls.thumbnailText, valueAsString);
		
		Draw1Control(controls.thumbnailText);
		Draw1Control(controls.thumbnailPreview);
	}
}

void PreviewPalette::Deactivate()
{
	if (IsControlActive(controls.root))
	{
		SetThemeWindowBackground(window, kThemeBrushDialogBackgroundActive, false);
		DeactivateControl(controls.root);
	}
}

void PreviewPalette::Refresh(void)
{
	SAVEGWORLD; // saving the current gworld for restoring later
	
	
	BeginUpdate(window); // BeginUpdate means that the drawing is clipped to the regions which
						 // has been marked as needed updates (by InvalRect, etc.)
	
	SetPort(window); // we're drawing in the window
	
	UpdateControls(window, window->clipRgn); // we're also refreshing the controls
	
	EndUpdate(window); // and we're done with the updating
	
	RESTOREGWORLD; // we can restore the saved gworld now
	
}

void PreviewPalette::HandleContentClick(EventRecord* eventPtr)
{
	Point			where;
	ControlHandle	clickedControl;
	short			part;
	
	where = eventPtr->where;
	
	SAVEGWORLD;
	
	SetPort(window);
	
	GlobalToLocal(&where);
	
	if ((part = FindControl(where, window, &clickedControl)) &&
		 (part != kControlNoPart))
	{
		if (clickedControl == controls.thumbnailSlider &&
			(part == kControlPageUpPart || part == kControlPageDownPart))
			ThemeSoundStart(kThemeDragSoundSliderThumb);
	
	
		if (TrackControl(clickedControl, where, (ControlActionUPP) -1))
		{
			if (clickedControl == controls.tabs)
				SetPane(GetControlValue(controls.tabs));
			else if (clickedControl == controls.thumbnailText)
				SetKeyboardFocus(window, controls.thumbnailText, kControlFocusNextPart);
			else if (clickedControl == controls.thumbnailPreview ||
					 clickedControl == controls.hintsPreview)
			{
				selected = !selected;
				
				if (currentPane == kPPThumbnailPane)
					Draw1Control(controls.thumbnailPreview);
				else
					Draw1Control(controls.hintsPreview);
			}
		}
		
		if (clickedControl == controls.thumbnailSlider &&
			(part == kControlPageUpPart || part == kControlPageDownPart))
			ThemeSoundEnd();
	}
	
	if (clickedControl != controls.thumbnailText && GetKeyboardFocus(window) == controls.thumbnailText)
	{
		Str255	newSizeAsString;
		long	newSize;
		
		ClearKeyboardFocus(window);
		
		GetControlText(controls.thumbnailText, newSizeAsString);
		StringToNum(newSizeAsString, &newSize);
		SetControlValue(controls.thumbnailSlider, newSize);
		
		Draw1Control(controls.thumbnailPreview);
	}	
	RESTOREGWORLD;
}

void PreviewPalette::HandleKeyDown(EventRecord* eventPtr)
{
	if ((currentPane == kPPThumbnailPane) &&
		GetKeyboardFocus(window) == controls.thumbnailText)
	{
		switch (eventPtr->message & charCodeMask)
		{
			case kEnterCharCode:
			case kTabCharCode:
			case kReturnCharCode:
				Str255	newSizeAsString;
				long	newSize;
				
				ClearKeyboardFocus(window);
				
				GetControlText(controls.thumbnailText, newSizeAsString);
				StringToNum(newSizeAsString, &newSize);
				SetControlValue(controls.thumbnailSlider, newSize);
				
				Draw1Control(controls.thumbnailPreview);
				break;
			default:
				HandleControlKey(controls.thumbnailText,
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
		}
	}
}

void PreviewPalette::CreateControls()
{
	ControlActionUPP	sliderActionUPP;
	
	SAVEGWORLD;
	
	SetPort(window);
	TextFont(applFont);
	TextSize(9);
	
	CreateRootControl(window, &controls.root);
	
	controls.tabs = GetNewControl(rPPTabs, window);
	
	// thumbnail pane
	controls.thumbnailPreview = GetNewControl(rPPThumbnailPreview, window);
	EmbedControl(controls.thumbnailPreview, controls.tabs);
	SetControlUserPaneDraw(controls.thumbnailPreview, PreviewPalette::ThumbnailPreviewDraw);
	SetControlUserPaneHitTest(controls.thumbnailPreview, GenericHitTest);
	
	controls.thumbnailSlider = GetNewControl(rPPThumbnailSlider, window);
	EmbedControl(controls.thumbnailSlider, controls.tabs);
	sliderActionUPP = NewControlActionProc(PreviewPalette::ThumbnailSliderAction);
	SetControlAction(controls.thumbnailSlider, sliderActionUPP);
	
	controls.thumbnailText = GetNewControl(rPPThumbnailText, window);
	EmbedControl(controls.thumbnailText, controls.tabs);
	SetControlKeyFilter(controls.thumbnailText, PreviewPalette::KeyFilter);
	
	currentPane = kPPThumbnailPane;

	// hints pane
	controls.hintsPreview = GetNewControl(rPPHints, window);
	EmbedControl(controls.hintsPreview, controls.tabs);
	SetControlUserPaneDraw(controls.hintsPreview, PreviewPalette::HintsPreviewDraw);
	SetControlUserPaneHitTest(controls.hintsPreview, GenericHitTest);
	HideControl(controls.hintsPreview);

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
	else if (currentPane == kPPThumbnailPane)
		Draw1Control(controls.thumbnailPreview);
	else
		Draw1Control(controls.hintsPreview);
}

void PreviewPalette::SetPane(int pane)
{
	if (pane != currentPane)
	{
		currentPane = pane;
		
		if (GetControlValue(controls.tabs) != currentPane)
			SetControlValue(controls.tabs, currentPane);
		
		switch (currentPane)
		{
			case kPPThumbnailPane:
				HideControl(controls.hintsPreview);
				ShowControl(controls.thumbnailPreview);
				ShowControl(controls.thumbnailSlider);
				ShowControl(controls.thumbnailText);
				break;
			case kPPHintsPane:
				ShowControl(controls.hintsPreview);
				HideControl(controls.thumbnailPreview);
				HideControl(controls.thumbnailSlider);
				HideControl(controls.thumbnailText);
				break;
		}
	}
}

#pragma mark -

pascal void PreviewPalette::ThumbnailSliderAction(ControlHandle theControl, SInt16 thePart)
{
	PreviewPalettePtr	parent;
	int					size = -1;
	Str255				sizeAsString;
	
	if (thePart == kControlPageUpPart || thePart == kControlPageDownPart)
	{
		Rect controlRect;
		Point	where;
		
		GetControlBounds(theControl, &controlRect);
		
		GetMouse(&where);
		
		if (where.h < controlRect.left + kSliderEndcap) where.h = controlRect.left + kSliderEndcap;
		else if (where.h > controlRect.right - kSliderEndcap) where.h = controlRect.right - kSliderEndcap;
		
		SetControlValue(theControl, float(where.h - (controlRect.left + kSliderEndcap))/float(controlRect.right - controlRect.left - kSliderEndcap * 2) * GetControlMaximum(theControl));
	}
	
	parent = icnsEditorClass::statics.previewPalette;

	size = GetControlValue(theControl);
	
	if (ISCOMMANDDOWN)
		for (int i=0; i < kPPThumbnailSliderSnapCount; i++)
			if (abs(size - kPPThumbnailSliderSnaps[i]) < 8)
			{
				size = kPPThumbnailSliderSnaps[i];
				SetControlValue(theControl, kPPThumbnailSliderSnaps[i]);
				break;
			}

	NumToString(size, sizeAsString);
	
	SetControlText(parent->controls.thumbnailText, sizeAsString);
	Draw1Control(parent->controls.thumbnailText);
	
	Draw1Control(parent->controls.thumbnailPreview);
}

pascal short PreviewPalette::KeyFilter(ControlHandle theControl, SInt16* keyCode, SInt16* charCode, SInt16* modifiers)
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

pascal void PreviewPalette::ThumbnailPreviewDraw(ControlHandle theControl, short thePart)
{
#pragma unused (thePart)
	PreviewPalettePtr	parent;
	PixPatHandle		desktopPattern;
	Rect				controlRect, canvasRect, tempRect;
	
	parent = icnsEditorClass::statics.previewPalette;
	
	GetControlBounds(theControl, &controlRect);
	
	canvasRect = controlRect;
	OffsetRect(&canvasRect, -canvasRect.left, -canvasRect.top + 128);
	
	SAVEGWORLD;
	SAVECOLORS;
	
	SetGWorld(icnsEditorClass::statics.canvasGW, NULL);
	
	tempRect = canvasRect;
	InsetRect(&tempRect, 2, 2);
	DrawImageWell(theControl, tempRect);
	
	desktopPattern = LMGetDeskCPat();
	HLock((Handle)desktopPattern);
	FillCRect(&tempRect, desktopPattern);
	HUnlock((Handle)desktopPattern);
	
	SetRect(&tempRect, 0, 0,
			GetControlValue(parent->controls.thumbnailSlider),
			GetControlValue(parent->controls.thumbnailSlider));
			
	OffsetRect(&tempRect,
			   canvasRect.left + ((canvasRect.right - canvasRect.left) - (tempRect.right - tempRect.left))/2,
			   canvasRect.top + ((canvasRect.bottom - canvasRect.top) - (tempRect.bottom - tempRect.top))/2);
	
	if (parent->parentEditor)
		parent->parentEditor->PreviewDisplay(128, 32, -1, tempRect, parent->selected);  
	
	RESTOREGWORLD;
	
	CopyBits((BitMap*)*icnsEditorClass::statics.canvasPix,
			 &qd.thePort->portBits,
			 &canvasRect,
			 &controlRect,
			 srcCopy,
			 NULL);
	
	RESTORECOLORS;
}

pascal void PreviewPalette::HintsPreviewDraw(ControlHandle theControl, short thePart)
{
#pragma unused (thePart)
	PreviewPalettePtr	parent;
	PixPatHandle		desktopPattern;
	Rect				controlRect, canvasRect, tempRect;
	icnsEditorPtr		frontEditor;
	int					rectCount = 0, rectSpacing, currentTop = 0, previewDepth, maskDepth;
	
	parent = icnsEditorClass::statics.previewPalette;
	
	GetControlBounds(theControl, &controlRect);
	
	canvasRect = controlRect;
	OffsetRect(&canvasRect, -canvasRect.left, -canvasRect.top + 48);
	
	SAVEGWORLD;
	SAVECOLORS;
	
	SetGWorld(icnsEditorClass::statics.canvasGW, NULL);
	
	tempRect = canvasRect;
	InsetRect(&tempRect, 2, 2);
	
	DrawImageWell(theControl, tempRect);
	
	desktopPattern = LMGetDeskCPat();
	HLock((Handle)desktopPattern);
	FillCRect(&tempRect, desktopPattern);
	HUnlock((Handle)desktopPattern);
	
	frontEditor = parent->parentEditor;
	
	if (frontEditor)
	{
		if (masks & frontEditor->currentPixName)
		{
			maskDepth = (**frontEditor->currentPix).pixelSize;
			if (maskDepth == 8)
			{
				if (frontEditor->members & icon32)
					previewDepth = 32;
				else if (frontEditor->members & icon8)
					previewDepth = 8;
				else if (frontEditor->members & icon4)
					previewDepth = 4;
				else
					previewDepth = 1;
			}
			else if (frontEditor->members & icon8)
				previewDepth = 8;
			else if (frontEditor->members & icon4)
				previewDepth = 4;
			else if (frontEditor->members & icon32)
				previewDepth = 32;
			else
				previewDepth = 1;
		}
		else
		{
			previewDepth = (**frontEditor->currentPix).pixelSize;
			maskDepth = -1;
		}
			
		if (frontEditor->members & hugeSize) {rectCount++; currentTop += 48;};
		if (frontEditor->members & largeSize) {rectCount++; currentTop += 32;};
		if (frontEditor->members & smallSize) {rectCount++; currentTop += 16;};
		if (frontEditor->members & miniSize && previewDepth != 32) {rectCount++; currentTop += 12;};
		
		rectSpacing = (canvasRect.bottom - canvasRect.top - currentTop)/(rectCount + 1);
		
		currentTop = rectSpacing;
		
		HintsPreviewDrawMember(frontEditor, hugeSize, previewDepth, maskDepth, hugeIconRect, rectSpacing, canvasRect, &currentTop, parent->selected);
		HintsPreviewDrawMember(frontEditor, largeSize, previewDepth, maskDepth, largeIconRect, rectSpacing, canvasRect, &currentTop, parent->selected);
		HintsPreviewDrawMember(frontEditor, smallSize, previewDepth, maskDepth, smallIconRect, rectSpacing, canvasRect, &currentTop, parent->selected);
		HintsPreviewDrawMember(frontEditor, miniSize, previewDepth, maskDepth, miniIconRect, rectSpacing, canvasRect, &currentTop, parent->selected);
	}
	
	RESTOREGWORLD;
	
	CopyBits((BitMap*)*icnsEditorClass::statics.canvasPix,
			 &qd.thePort->portBits,
			 &canvasRect,
			 &controlRect,
			 srcCopy,
			 NULL);
	
	RESTORECOLORS;
}

void PreviewPalette::HintsPreviewDrawMember(icnsEditorPtr editor,
											int size, int depth, int maskDepth,
											Rect iconRect, int spacing,
											Rect drawRect, int* currentTop,
											bool selected)
{
	Rect tempRect;
	
	if (editor->members & size)
	{
		tempRect = iconRect;
		OffsetRect(&tempRect,
				   drawRect.left + ((drawRect.right - drawRect.left) - tempRect.right)/2,
				   drawRect.top + *currentTop);
		
		if (depth != 32 || size != miniSize)
		{
			editor->PreviewDisplay(iconRect.bottom, depth, maskDepth, tempRect, selected);
		
			*currentTop += spacing + iconRect.bottom;
		}
	}
}
