#include "ColorsPalette.h"
#include "icnsEditorClass.h"
#include "graphicalFunctions.h"

ControlActionUPP RGBColorPicker::sliderActionUPP = NewControlActionUPP(RGBColorPicker::SliderAction);
ControlActionUPP HSVColorPicker::sliderActionUPP = NewControlActionUPP(HSVColorPicker::SliderAction);


ColorsPalette::ColorsPalette()
			  :MFloater(rCPWindow, kColorsPaletteType)
{
	SetThemeWindowBackground(window, kThemeBrushDialogBackgroundActive, false);
	
	currentColor = kCPFore;
	
	fore.red = fore.green = fore.blue = 0;
	back.red = back.green = back.blue = 0xFFFF;
	
	currentX = currentY = -1;
	currentReadoutColor = kNeverUsedColorAsRGB;
	
	CreateControls();

	rgb.SetDisplayArea(this, controls.colorPickerArea);
	rgb.CreateControls();
	
	hsv.SetDisplayArea(this, controls.colorPickerArea);
	hsv.CreateControls();
	
	system.SetDisplayArea(this, controls.colorPickerArea);
	system.CreateControls();
	
	favorites.SetDisplayArea(this, controls.colorPickerArea);
	favorites.CreateControls();
	
	rgb.Show();
	hsv.Hide();
	system.Hide();
	favorites.Hide();
	
	currentColorPicker = &rgb;
}

ColorsPalette::~ColorsPalette()
{
	DisposeRgn(foreColorRgn);
	DisposeRgn(backColorRgn);
}

void ColorsPalette::Close()
{

}

void ColorsPalette::Activate()
{
	if (!IsControlActive(controls.root))
	{
		SetThemeWindowBackground(window, kThemeBrushDialogBackgroundActive, false);
		ActivateControl(controls.root);
	}
}

void ColorsPalette::Deactivate()
{
	if (IsControlActive(controls.root))
	{
		SetThemeWindowBackground(window, kThemeBrushDialogBackgroundActive, false);
		DeactivateControl(controls.root);
	}
}

void ColorsPalette::Show()
{
	GrabColors();
	
	MFloater::Show();
}

void ColorsPalette::DoIdle(MWindowPtr windowUnderMouse)
{
#pragma unused (windowUnderMouse)
}

void ColorsPalette::UpdateCursor(Point theMouse)
{
	Rect		colorPickerRect;
	
	GetControlBounds(controls.colorPickerArea, &colorPickerRect);
		
	if (PtInRect(theMouse, &colorPickerRect))
		currentColorPicker->UpdateCursor(theMouse);
	else
	{
#if !TARGET_API_MAC_CARBON
		if (HMGetBalloons())
		{
			Rect			controlBounds;
			
			GetControlBounds(controls.tabs, &controlBounds);
			
			controlBounds.bottom = controlBounds.top + kSmallTabTabsHeight;
			
			if (PtInRect(theMouse, &controlBounds))
				HandleBalloon(rCPBalloonHelp, hCPTabs, controlBounds, theMouse);
			else
				HandleBalloons(theMouse, window, rCPBalloonHelp);
		}
#endif
		if (PtInRgn(theMouse, foreColorRgn))
			UpdateReadout(-1, -1, fore);
		else if (PtInRgn(theMouse, backColorRgn))
			UpdateReadout(-1, -1, back);
	}
}

void ColorsPalette::HandleContentClick(EventRecord* eventPtr)
{
	Point			where;
	Rect			colorPickerRect;
	ControlHandle	clickedControl;
	short			part;
	
	DEBUG("\pgot to colors palette");
	
	where = eventPtr->where;
	
	SAVEGWORLD;
	
	SetPort();
	
	GlobalToLocal(&where);
	
	GetControlBounds(controls.colorPickerArea, &colorPickerRect);
	
	if (PtInRect(where, &colorPickerRect))
		currentColorPicker->HandleContentClick(eventPtr);
	else if ((part = FindControl(where, window, &clickedControl)) &&
			 (part != kControlNoPart))
	{
		DEBUG("\phandling palette click");
		if (TrackControl(clickedControl, where, NULL))
		{
			if (clickedControl == controls.tabs)
				SetCurrentPicker(GetControlValue(controls.tabs));
			else if (clickedControl == controls.swatch)
			{
				currentColor = part;
				if (currentColor == kCPFore)
					currentColorPicker->SetColor(fore);
				else
					currentColorPicker->SetColor(back);
					
				Draw1Control(controls.swatch);
			}
		}
	}
	
	RESTOREGWORLD;
	
	UpdateColors();
}

void ColorsPalette::SetCurrentPicker(int picker)
{	
	switch (picker)
	{
		case kRGBPane:
			rgb.SetColor(currentColorPicker->GetColor());
			currentColorPicker->Hide();
			rgb.Show();
			currentColorPicker = &rgb;
			break;
		case kHSVPane:
			hsv.SetColor(currentColorPicker->GetColor());
			currentColorPicker->Hide();
			hsv.Show();
			currentColorPicker = &hsv;
			break;
		case kSystemPane:
			system.SetColor(currentColorPicker->GetColor());
			currentColorPicker->Hide();
			system.Show();
			currentColorPicker = &system;
			break;
		case kFavoritesPane:
			favorites.SetColor(currentColorPicker->GetColor());
			currentColorPicker->Hide();
			favorites.Show();
			currentColorPicker = &favorites;
	}
	
	if (GetControlValue(controls.tabs) != picker)
	{
		SetControlValue(controls.tabs, picker);
		
	}
	Draw1Control(controls.tabs);
}

int ColorsPalette::GetCurrentPicker()
{
	return (GetControlValue(controls.tabs));
}

void ColorsPalette::SetColors(RGBColor foreColor, RGBColor backColor)
{
	if (AreEqualRGB(foreColor, fore) &&
		AreEqualRGB(backColor, back))
		return;
		
	fore = foreColor;
	back = backColor;
	
	if (currentColor == kCPFore)
		currentColorPicker->SetColor(fore);
	else
		currentColorPicker->SetColor(back);
	
	Draw1Control(controls.swatch);
}

void ColorsPalette::GrabColors()
{
	ToolPalettePtr	tools;
	
	tools = icnsEditorClass::statics.toolPalette;
	
	tools->GetColors(&fore, &back);
	if (currentColor == kCPFore)
		currentColorPicker->SetColor(fore);
	else
		currentColorPicker->SetColor(back);
}

void ColorsPalette::UpdateColors()
{
	ToolPalettePtr tools;
	
	tools = icnsEditorClass::statics.toolPalette;
	
	if (tools->IsVisible())
	{
		RGBColor	color;
		
		color = currentColorPicker->GetColor();
		
		if (currentColor == kCPFore)
			tools->SetColors(&color, &back);
		else
			tools->SetColors(&fore, &color);
	}
	else
	{
		if (currentColor == kCPFore)
			SetColors(currentColorPicker->GetColor(), back);
		else
			SetColors(fore, currentColorPicker->GetColor());
	}
}

void ColorsPalette::Update()
{
	UpdateColors();
	currentColorPicker->SetColor(currentColorPicker->GetColor());
}

void ColorsPalette::UpdateReadout(int x, int y, RGBColor color)
{
	Str255 numberAsString, finalString;
	
	readoutChanged = true;
	
	if (x == currentX &&
		y == currentY &&
		AreEqualRGB(color, currentReadoutColor))
		return;
	
	CopyString(finalString, "\p");
	if (x != -1)
	{
		NumToString(x, finalString);
		AppendString(finalString, "\p\r");
		NumToString(y, numberAsString);
		AppendString(finalString, numberAsString);
	}
	SetControlText(controls.positionReadoutData, finalString);
	Draw1Control(controls.positionReadoutData);
	
	CopyString(finalString, "\p");
	if (!AreEqualRGB(color, kPickerNeverUsedColor))
	{
		NumToString(round(float(color.red)/65535.0 * 100.0), finalString);
		AppendString(finalString, "\p%\r");
		NumToString(round(float(color.green)/65535.0 * 100), numberAsString);
		AppendString(finalString, numberAsString);
		AppendString(finalString, "\p%\r");
		NumToString(round(float(color.blue)/65535.0 * 100), numberAsString);
		AppendString(finalString, numberAsString);
		AppendString(finalString, "\p%");
	}
	
	SetControlText(controls.colorReadoutData, finalString);
	
	Draw1Control(controls.colorReadoutData);
	
	currentX = x;
	currentY = y;
	currentReadoutColor = color;
}

void ColorsPalette::CreateControls()
{
	Rect						tempRect, backgroundPaneRect;
	ControlFontStyleRec			readoutStyle;
	
	readoutStyle.flags = kControlUseJustMask;
	readoutStyle.just = teFlushRight;
	
	SAVEGWORLD;
	SetPort();
	TextFont(applFont);
	TextSize(9);
	RESTOREGWORLD;
	
	CreateRootControl(window, &controls.root);
	
	controls.backgroundPane = GetNewControl(rCPBackgroundPane, window);
	backgroundPaneRect = GetPortRect();
	InsetRect(&backgroundPaneRect, -1, -1);
	SetControlBounds(controls.backgroundPane, &backgroundPaneRect);
	SetControlUserPaneDraw(controls.backgroundPane, CPBackgroundPaneDraw);
	SetControlUserPaneHitTest(controls.backgroundPane, CPBackgroundPaneHitTest);
				   
	controls.swatch = GetNewControl(rCPSwatch, window);
	EmbedControl(controls.swatch, controls.backgroundPane);
	SetControlUserPaneDraw(controls.swatch, CPSwatchDraw);
	SetControlUserPaneHitTest(controls.swatch, CPSwatchHitTest);
	SetControlBalloonHelp(controls.swatch, hCPSwatch);
	

	foreColorRgn = NewRgn();
	GetControlBounds(controls.swatch, &tempRect);
	tempRect.right = tempRect.left + (tempRect.right - tempRect.left)/3 * 2 - 1; 
	tempRect.bottom = tempRect.top + (tempRect.bottom - tempRect.top)/3 * 2 - 1;
	RectRgn(foreColorRgn, &tempRect);
	
	backColorRgn = NewRgn();
	GetControlBounds(controls.swatch, &tempRect);
	tempRect.left = tempRect.right - (tempRect.right - tempRect.left)/3 * 2; 
	tempRect.top = tempRect.bottom - (tempRect.bottom - tempRect.top)/3 * 2;
	RectRgn(backColorRgn, &tempRect);
	DiffRgn(backColorRgn, foreColorRgn, backColorRgn);
	
	InsetRgn(foreColorRgn, 3, 3);
	InsetRgn(backColorRgn, 3, 3);
	
	controls.tabs = GetNewControl(rCPTabs, window);
	EmbedControl(controls.tabs, controls.backgroundPane);
	SetControlBalloonHelp(controls.tabs, hCPTabs);
	
	controls.separator1 = GetNewControl(rCPSeparator1, window);
	controls.positionReadoutLabel = GetNewControl(rCPPositionReadoutLabel, window);
	ResetStaticTextTitle(controls.positionReadoutLabel);
	controls.positionReadoutData = GetNewControl(rCPPositionReadoutData, window);
	SetControlFontStyle(controls.positionReadoutData, &readoutStyle);
	SetControlBalloonHelp(controls.positionReadoutData, hCPPosReadout);
	
	//controls.separator2 = GetNewControl(rCPSeparator2, window);
	controls.colorReadoutLabel = GetNewControl(rCPColorReadoutLabel, window);
	ResetStaticTextTitle(controls.colorReadoutLabel);
	controls.colorReadoutData = GetNewControl(rCPColorReadoutData, window);
	SetControlFontStyle(controls.colorReadoutData, &readoutStyle);
	SetControlBalloonHelp(controls.colorReadoutData, hCPColorReadout);
	
	controls.colorPickerArea = GetNewControl(rCPColorPickerArea, window);
	EmbedControl(controls.colorPickerArea, controls.tabs);
	SetControlUserPaneHitTest(controls.colorPickerArea, GenericHitTest);
}

#pragma mark -

ColorPicker::ColorPicker()
{
	color.red = color.green = color.blue = 0;
}

ColorPicker::~ColorPicker()
{
	;
}

void ColorPicker::DoIdle()
{

}

void ColorPicker::UpdateCursor(Point theMouse)
{
#pragma unused (theMouse)
	;
}

void ColorPicker::SetDisplayArea(ColorsPalettePtr window, ControlHandle area)
{
	parentWindow = window;
	displayAreaControl = area;
}

#pragma mark -

RGBColorPicker::RGBColorPicker()
{

}

RGBColorPicker::~RGBColorPicker()
{
	
}

void RGBColorPicker::CreateControls()
{
	parentControl = GetNewControl(rRGBCPBaseControl, parentWindow->GetWindow());
	SetControlUserPaneHitTest(parentControl, GenericHitTest);
	EmbedControl(parentControl, displayAreaControl);
	
	redSlider = GetNewControl(rRGBCPRedSlider, parentWindow->GetWindow());
	EmbedControl(redSlider, parentControl);
	redLabel = GetNewControl(rRGBCPRedLabel, parentWindow->GetWindow());
	ResetStaticTextTitle(redLabel);
	EmbedControl(redLabel, parentControl);
	redPreview = GetNewControl(rRGBCPRedPreview, parentWindow->GetWindow());
	EmbedControl(redPreview, parentControl);
	SetControlUserPaneDraw(redPreview, RGBColorPicker::PreviewDraw);
	SetControlUserPaneHitTest(redPreview, GenericHitTest);
	
	
	greenSlider = GetNewControl(rRGBCPGreenSlider, parentWindow->GetWindow());
	EmbedControl(greenSlider, parentControl);
	greenLabel = GetNewControl(rRGBCPGreenLabel, parentWindow->GetWindow());
	ResetStaticTextTitle(greenLabel);
	EmbedControl(greenLabel, parentControl);
	greenPreview = GetNewControl(rRGBCPGreenPreview, parentWindow->GetWindow());
	EmbedControl(greenPreview, parentControl);
	SetControlUserPaneDraw(greenPreview, RGBColorPicker::PreviewDraw);
	SetControlUserPaneHitTest(greenPreview, GenericHitTest);
	
		
	blueSlider = GetNewControl(rRGBCPBlueSlider, parentWindow->GetWindow());
	EmbedControl(blueSlider, parentControl);
	blueLabel = GetNewControl(rRGBCPBlueLabel, parentWindow->GetWindow());
	ResetStaticTextTitle(blueLabel);
	EmbedControl(blueLabel, parentControl);
	bluePreview = GetNewControl(rRGBCPBluePreview, parentWindow->GetWindow());
	EmbedControl(bluePreview, parentControl);
	SetControlUserPaneDraw(bluePreview, RGBColorPicker::PreviewDraw);
	SetControlUserPaneHitTest(bluePreview, GenericHitTest);

#if TARGET_API_MAC_CARBON
	if (MUtilities::GestaltVersion(gestaltSystemVersion, 0x10, 0x00))
	{
		long		sliderWidth;
		ControlSize	smallSize;
		Rect		sliderBounds;
		
		GetThemeMetric(kThemeMetricSmallVSliderWidth, &sliderWidth);
		smallSize = kControlSizeSmall;
		
		GetControlBounds(redSlider, &sliderBounds);
		sliderBounds.right = sliderBounds.left + sliderWidth;
		SetControlBounds(redSlider, &sliderBounds);
		SetControlData(redSlider, kControlNoPart, kControlSizeTag, sizeof(ControlSize), &smallSize);
		
		GetControlBounds(greenSlider, &sliderBounds);
		sliderBounds.right = sliderBounds.left + sliderWidth;
		SetControlBounds(greenSlider, &sliderBounds);
		SetControlData(greenSlider, kControlNoPart, kControlSizeTag, sizeof(ControlSize), &smallSize);
		
		GetControlBounds(blueSlider, &sliderBounds);
		sliderBounds.right = sliderBounds.left + sliderWidth;
		SetControlBounds(blueSlider, &sliderBounds);
		SetControlData(blueSlider, kControlNoPart, kControlSizeTag, sizeof(ControlSize), &smallSize);
	}
#endif
	
	SetControlBalloonHelp(redSlider, hRGBCPRedSlider);
	SetControlBalloonHelp(redPreview, hRGBCPRedPreview);
	SetControlBalloonHelp(greenSlider, hRGBCPGreenSlider);
	SetControlBalloonHelp(greenPreview, hRGBCPGreenPreview);
	SetControlBalloonHelp(blueSlider, hRGBCPGreenSlider);
	SetControlBalloonHelp(bluePreview, hRGBCPBluePreview);
}

void RGBColorPicker::Hide()
{
	HideControl(parentControl);
}

void RGBColorPicker::SetColor(RGBColor inColor)
{
	color = inColor;
		
	SetControlValue(redSlider, color.red >> 8);
	SetControlValue(greenSlider, color.green >> 8);
	SetControlValue(blueSlider, color.blue >> 8);
	
	Draw1Control(redPreview);
	Draw1Control(greenPreview);
	Draw1Control(bluePreview);
}

RGBColor RGBColorPicker::GetColor()
{
	color.red = GetControlValue(redSlider) << 8;
	color.green = GetControlValue(greenSlider) << 8;
	color.blue = GetControlValue(blueSlider) << 8;		
			
	return color;
}


void RGBColorPicker::Show()
{
	ShowControl(parentControl);
}

void RGBColorPicker::UpdateCursor(Point theMouse)
{
#pragma unused (theMouse)
#if !TARGET_API_MAC_CARBON
	if (HMGetBalloons())
		if (HandleBalloon(rRGBCPBalloonHelp, redSlider, theMouse) ||
			HandleBalloon(rRGBCPBalloonHelp, greenSlider, theMouse) ||
			HandleBalloon(rRGBCPBalloonHelp, blueSlider, theMouse))
		{
			;
		}
		else
			HandleBalloons(theMouse, parentWindow->GetWindow(), rRGBCPBalloonHelp);
#endif
}

void RGBColorPicker::HandleContentClick(EventRecord* eventPtr)
{
	Point			where;
	ControlHandle	clickedControl;
	short			controlPart;
	
	where = eventPtr->where;
	
	SAVEGWORLD;
	
	parentWindow->SetPort();
	
	GlobalToLocal(&where);
	
	
	controlPart = FindControl(where, parentWindow->GetWindow(), &clickedControl);
	
	if (controlPart == kControlPageUpPart || controlPart == kControlPageDownPart)
		MUtilities::sounds.Start(kThemeDragSoundSliderThumb);
	
	if (controlPart != kControlNoPart && TrackControl(clickedControl, where, sliderActionUPP))
	{
		if (clickedControl == redSlider)
			color.red = GetControlValue(redSlider) << 8;
		else if (clickedControl == greenSlider)
			color.green = GetControlValue(greenSlider) << 8;
		else if (clickedControl == blueSlider)
			color.blue = GetControlValue(blueSlider) << 8;
	}
	
	if (controlPart == kControlPageUpPart || controlPart == kControlPageDownPart)
		MUtilities::sounds.End();
	
	RESTOREGWORLD;
	
	parentWindow->UpdateColors();
}

pascal void RGBColorPicker::PreviewDraw(ControlHandle theControl, short thePart)
{
#pragma unused (thePart)
	Rect			controlRect, canvasRect, tempRect;
	RGBColorPicker*	picker;
	
	picker = &ColorsPalettePtr(GetWindow(GetControlOwner(theControl)))->rgb;
	
	GetControlBounds(theControl, &controlRect);
	canvasRect = controlRect;
	
	SAVEGWORLD;
	SAVECOLORS;
	
	if (picker->parentWindow->IsBuffered())
	{
		picker->parentWindow->LockPortBits();
		picker->parentWindow->SetPort();
		
	}
	else
	{
		SetGWorld(icnsEditorClass::statics.canvasGW, NULL);
		OffsetRect(&canvasRect, -canvasRect.left, -canvasRect.top);
	}
	
	SetUpControlBackground(theControl, 32, true);
	EraseRect(&canvasRect);
	
	tempRect = canvasRect;
	InsetRect(&tempRect, 2, 2);
	
	DrawImageWell(theControl, tempRect);
	
	if (theControl == picker->redPreview)
		DrawGradient(tempRect, picker->color, 1, 0, 0);
	else if (theControl == picker->greenPreview)
		DrawGradient(tempRect, picker->color, 0, 1, 0);
	else if (theControl == picker->bluePreview)
		DrawGradient(tempRect, picker->color, 0, 0, 1);
	
		
	RESTOREGWORLD;
	
	if (picker->parentWindow->IsBuffered())
		picker->parentWindow->UnlockPortBits();
	else
		CopyBits((BitMap*)*icnsEditorClass::statics.canvasPix,
				 GetPortBitMapForCopyBits(GetQDGlobalsThePort()),
				 &canvasRect,
				 &controlRect,
				 srcCopy,
				 NULL);
				 
	RESTORECOLORS;
}

void RGBColorPicker::DrawGradient(Rect targetRect, RGBColor color,
								  int rIncrement, int gIncrement, int bIncrement)
{
	GWorldPtr		tempGW;
	PixMapHandle	tempPix;
	Rect			tempRect;
	unsigned char*			baseAddr;
	unsigned char			colorAsChar[4];
	int				height, rowBytes;
	
	height = targetRect.bottom - targetRect.top;
	
	tempRect = targetRect;
	tempRect.right = tempRect.left + 1;
	
	NewGWorld(&tempGW, 32, &tempRect, NULL, NULL, 0);
	tempPix = GetGWorldPixMap(tempGW);
	LockPixels(tempPix);
	
	baseAddr = (unsigned char*)(**tempPix).baseAddr;
	rowBytes = (**tempPix).rowBytes & 0x3FFF;
	
	*(long*)colorAsChar = RGBToLong(color);
	
	for (int i=height - 1; i >= 0; i--)
	{
		if (rIncrement == 1)
			colorAsChar[1] = 0xFF * float(i)/float(height);
		else if (gIncrement == 1)
			colorAsChar[2] = 0xFF * float(i)/float(height);
		else if (bIncrement == 1)
			colorAsChar[3] = 0xFF * float(i)/float(height);
		
		BlockMoveData(colorAsChar, baseAddr, 4);
		
		baseAddr += rowBytes;
	}
	
	SAVECOLORS;
	
	CopyBits((BitMap*)*tempPix,
			 GetPortBitMapForCopyBits(GetQDGlobalsThePort()),
			 &tempRect,
			 &targetRect,
			 srcCopy,
			 NULL);
	
	RESTORECOLORS;
	
	UnlockPixels(tempPix);
	DisposeGWorld(tempGW);
}

pascal void RGBColorPicker::SliderAction(ControlHandle theControl, short partCode)
{
	ColorsPalettePtr parentPalette;
	
	if (partCode == kControlPageUpPart || partCode == kControlPageDownPart)
	{
		Rect controlRect;
		Point	where;
		
		GetControlBounds(theControl, &controlRect);
		
		GetMouse(&where);
		
		if (where.h < controlRect.left + kSliderEndcap) where.h = controlRect.left + kSliderEndcap;
		else if (where.h > controlRect.right - kSliderEndcap) where.h = controlRect.right - kSliderEndcap;
		
		SetControlValue(theControl, float(where.h - (controlRect.left + kSliderEndcap))/float(controlRect.right - controlRect.left - kSliderEndcap * 2) * GetControlMaximum(theControl));
	}
	
	parentPalette = ColorsPalettePtr(GetWindow(GetControlOwner(theControl)));
	
	parentPalette->UpdateColors();
}

#pragma mark -

HSVColorPicker::HSVColorPicker()
{

}

HSVColorPicker::~HSVColorPicker()
{
	
}

void HSVColorPicker::CreateControls()
{
	parentControl = GetNewControl(rHSVCPBaseControl, parentWindow->GetWindow());
	EmbedControl(parentControl, displayAreaControl);
	
	hueSlider = GetNewControl(rHSVCPHueSlider, parentWindow->GetWindow());
	EmbedControl(hueSlider, parentControl);
	hueLabel = GetNewControl(rHSVCPHueLabel, parentWindow->GetWindow());
	ResetStaticTextTitle(hueLabel);
	EmbedControl(hueLabel, parentControl);
	huePreview = GetNewControl(rHSVCPHuePreview, parentWindow->GetWindow());
	EmbedControl(huePreview, parentControl);
	SetControlUserPaneDraw(huePreview, HSVColorPicker::PreviewDraw);
	SetControlUserPaneHitTest(huePreview, GenericHitTest);
	
	saturationSlider = GetNewControl(rHSVCPSaturationSlider, parentWindow->GetWindow());
	EmbedControl(saturationSlider, parentControl);
	saturationLabel = GetNewControl(rHSVCPSaturationLabel, parentWindow->GetWindow());
	ResetStaticTextTitle(saturationLabel);
	EmbedControl(saturationLabel, parentControl);
	saturationPreview = GetNewControl(rHSVCPSaturationPreview, parentWindow->GetWindow());
	EmbedControl(saturationPreview, parentControl);
	SetControlUserPaneDraw(saturationPreview, HSVColorPicker::PreviewDraw);
	SetControlUserPaneHitTest(saturationPreview, GenericHitTest);
		
	valueSlider = GetNewControl(rHSVCPValueSlider, parentWindow->GetWindow());
	EmbedControl(valueSlider, parentControl);
	valueLabel = GetNewControl(rHSVCPValueLabel, parentWindow->GetWindow());
	ResetStaticTextTitle(valueLabel);
	EmbedControl(valueLabel, parentControl);
	valuePreview = GetNewControl(rHSVCPValuePreview, parentWindow->GetWindow());
	EmbedControl(valuePreview, parentControl);
	SetControlUserPaneDraw(valuePreview, HSVColorPicker::PreviewDraw);
	SetControlUserPaneHitTest(valuePreview, GenericHitTest);

#if TARGET_API_MAC_CARBON	
	if (MUtilities::GestaltVersion(gestaltSystemVersion, 0x10, 0x00))
	{
		long		sliderWidth;
		ControlSize	smallSize;
		Rect		sliderBounds;
		
		GetThemeMetric(kThemeMetricSmallVSliderWidth, &sliderWidth);
		smallSize = kControlSizeSmall;
		
		GetControlBounds(hueSlider, &sliderBounds);
		sliderBounds.right = sliderBounds.left + sliderWidth;
		SetControlBounds(hueSlider, &sliderBounds);
		SetControlData(hueSlider, kControlNoPart, kControlSizeTag, sizeof(ControlSize), &smallSize);
		
		GetControlBounds(saturationSlider, &sliderBounds);
		sliderBounds.right = sliderBounds.left + sliderWidth;
		SetControlBounds(saturationSlider, &sliderBounds);
		SetControlData(saturationSlider, kControlNoPart, kControlSizeTag, sizeof(ControlSize), &smallSize);
		
		GetControlBounds(valueSlider, &sliderBounds);
		sliderBounds.right = sliderBounds.left + sliderWidth;
		SetControlBounds(valueSlider, &sliderBounds);
		SetControlData(valueSlider, kControlNoPart, kControlSizeTag, sizeof(ControlSize), &smallSize);
	}
#endif
				   
	SetControlBalloonHelp(hueSlider, hHSVCPHueSlider);
	SetControlBalloonHelp(huePreview, hHSVCPValuePreview);
	SetControlBalloonHelp(saturationSlider, hHSVCPSaturationSlider);
	SetControlBalloonHelp(saturationPreview, hHSVCPSaturationPreview);
	SetControlBalloonHelp(valueSlider, hHSVCPValueSlider);
	SetControlBalloonHelp(valuePreview, hHSVCPValuePreview);
}

void HSVColorPicker::Hide()
{
	HideControl(parentControl);
}

void HSVColorPicker::SetColor(RGBColor inColor)
{
	color = inColor;
	RGB2HSV(&inColor, &colorAsHSV);
	
	SetControlValue(hueSlider, float(colorAsHSV.hue)/65535.0 * 360 + 0.5);
	SetControlValue(saturationSlider, float(colorAsHSV.saturation)/65535.0 * 100 + 0.5);
	SetControlValue(valueSlider, float(colorAsHSV.value)/65535.0 * 100 + 0.5);

	if (colorAsHSV.value == 0 && colorAsHSV.saturation == 0)
	{
		DeactivateNControls(3, hueSlider, hueLabel, huePreview);
		DeactivateNControls(3, saturationSlider,  saturationLabel, saturationPreview);
	}
	else if (colorAsHSV.saturation == 0)
	{
		DeactivateNControls(3, hueSlider, hueLabel, huePreview);
		ActivateNControls(3, saturationSlider,  saturationLabel, saturationPreview);
	}
	else
	{
		ActivateNControls(3, hueSlider, hueLabel, huePreview);
		ActivateNControls(3, saturationSlider,  saturationLabel, saturationPreview);
	}
	
	Draw1Control(huePreview);
	Draw1Control(saturationPreview);
	Draw1Control(valuePreview);
}

RGBColor HSVColorPicker::GetColor()
{
	colorAsHSV.hue = float(GetControlValue(hueSlider))/360.0 * 65535;
	colorAsHSV.saturation = float(GetControlValue(saturationSlider))/100.0 * 65535;
	colorAsHSV.value = float(GetControlValue(valueSlider))/100.0 * 65535;
	
	HSV2RGB(&colorAsHSV, &color);
	
	return color;
} 


void HSVColorPicker::Show()
{
	ShowControl(parentControl);
}

void HSVColorPicker::UpdateCursor(Point theMouse)
{
#pragma unused (theMouse)
#if !TARGET_API_MAC_CARBON
	if (HMGetBalloons())
		if (HandleBalloon(rHSVCPBalloonHelp, hueSlider, theMouse) ||
			HandleBalloon(rHSVCPBalloonHelp, saturationSlider, theMouse) ||
			HandleBalloon(rHSVCPBalloonHelp, valueSlider, theMouse))
		{
			;
		}
		else
			HandleBalloons(theMouse, parentWindow->GetWindow(), rHSVCPBalloonHelp);
#endif
}

void HSVColorPicker::HandleContentClick(EventRecord* eventPtr)
{
	Point			where;
	ControlHandle	clickedControl;
	short			controlPart;
	
	where = eventPtr->where;
	
	SAVEGWORLD;
	
	parentWindow->SetPort();
	
	GlobalToLocal(&where);
	
	controlPart = FindControl(where, parentWindow->GetWindow(), &clickedControl);
	
	if (controlPart == kControlPageUpPart || controlPart == kControlPageDownPart)
		MUtilities::sounds.Start(kThemeDragSoundSliderThumb);
	
	if (controlPart != kControlNoPart && TrackControl(clickedControl, where, sliderActionUPP))
	{
		if (clickedControl == hueSlider)
			colorAsHSV.hue = float(GetControlValue(hueSlider))/360.0 * 65535;
		else if (clickedControl == saturationSlider)
			colorAsHSV.saturation = float(GetControlValue(saturationSlider))/100.0 * 65535;
		else if (clickedControl == valueSlider)
			colorAsHSV.value = float(GetControlValue(valueSlider))/100.0 * 65535;
	}
	
	if (controlPart == kControlPageUpPart || controlPart == kControlPageDownPart)
		MUtilities::sounds.End();
	
	RESTOREGWORLD;
	
	parentWindow->UpdateColors();
}


pascal void HSVColorPicker::PreviewDraw(ControlHandle theControl, short thePart)
{
#pragma unused (thePart)
	Rect			controlRect, canvasRect, tempRect;
	HSVColorPicker*	picker;
	
	picker = &ColorsPalettePtr(GetWindow(GetControlOwner(theControl)))->hsv;
	
	GetControlBounds(theControl, &controlRect);
	canvasRect = controlRect;
	
	SAVEGWORLD;
	SAVECOLORS;
	
	if (picker->parentWindow->IsBuffered())
	{
		picker->parentWindow->LockPortBits();
		picker->parentWindow->SetPort();
		
	}
	else
	{
		SetGWorld(icnsEditorClass::statics.canvasGW, NULL);
		OffsetRect(&canvasRect, -canvasRect.left, -canvasRect.top);
	}
	
	SetUpControlBackground(theControl, 32, true);
	EraseRect(&canvasRect);
	
	tempRect = canvasRect;
	InsetRect(&tempRect, 2, 2);
	
	DrawImageWell(theControl, tempRect);
	
	if (theControl == picker->huePreview)
		DrawGradient(tempRect, picker->colorAsHSV, 1, 0, 0);
	else if (theControl == picker->saturationPreview)
		DrawGradient(tempRect, picker->colorAsHSV, 0, 1, 0);
	else if (theControl == picker->valuePreview)
		DrawGradient(tempRect, picker->colorAsHSV, 0, 0, 1);
		
	RESTOREGWORLD;
	
	if (picker->parentWindow->IsBuffered())
		picker->parentWindow->UnlockPortBits();
	else
		CopyBits((BitMap*)*icnsEditorClass::statics.canvasPix,
				 GetPortBitMapForCopyBits(GetQDGlobalsThePort()),
				 &canvasRect,
				 &controlRect,
				 srcCopy,
				 NULL);
				 
	RESTORECOLORS;
}

void HSVColorPicker::DrawGradient(Rect targetRect, HSVColor color,
								  int hIncrement, int sIncrement, int vIncrement)
{
	GWorldPtr		tempGW;
	PixMapHandle	tempPix;
	Rect			tempRect;
	unsigned char*	baseAddr;
	int				height, rowBytes;
	float			h, s, v;

	height = targetRect.bottom - targetRect.top;
	
	tempRect = targetRect;
	tempRect.right = tempRect.left + 1;
	
	NewGWorld(&tempGW, 32, &tempRect, NULL, NULL, 0);
	tempPix = GetGWorldPixMap(tempGW);
	LockPixels(tempPix);
	
	h = float(color.hue) / 65535.0 * 360;
	s = float(color.saturation) / 65535.0;
	v = float(color.value) / 65535.0;
	
	baseAddr = (unsigned char*)(**tempPix).baseAddr;
	rowBytes = (**tempPix).rowBytes & 0x3FFF;
	
	for (int i=height - 1; i >= 0; i--)
	{
		if (hIncrement == 1)
			h = float(i)/float(height) * 360;
		else if (sIncrement == 1)
			s = float(i)/float(height);
		else if (vIncrement == 1)
			v = float(i)/float(height);
			
		HSV2RGBfc(h, s, v, &baseAddr[1], &baseAddr[2], &baseAddr[3]);
		
		baseAddr += rowBytes;
	}
	
	SAVECOLORS;
	
	CopyBits((BitMap*)*tempPix,
			 GetPortBitMapForCopyBits(GetQDGlobalsThePort()),
			 &tempRect,
			 &targetRect,
			 srcCopy,
			 NULL);
	
	RESTORECOLORS;
	
	UnlockPixels(tempPix);
	DisposeGWorld(tempGW);
}

pascal void HSVColorPicker::SliderAction(ControlHandle theControl, short partCode)
{
#pragma unused (partCode)
	ColorsPalettePtr parentPalette;
	
	parentPalette = ColorsPalettePtr(GetWindow(GetControlOwner(theControl)));
	
	if (partCode == kControlPageUpPart || partCode == kControlPageDownPart)
	{
		Rect controlRect;
		Point	where;
		
		GetControlBounds(theControl, &controlRect);
		
		GetMouse(&where);
		
		if (where.h < controlRect.left + kSliderEndcap) where.h = controlRect.left + kSliderEndcap;
		else if (where.h > controlRect.right - kSliderEndcap) where.h = controlRect.right - kSliderEndcap;
		
		SetControlValue(theControl, float(where.h - (controlRect.left + kSliderEndcap))/float(controlRect.right - controlRect.left - kSliderEndcap * 2) * GetControlMaximum(theControl));
	}
	
	parentPalette->UpdateColors();
}

#pragma mark -

SystemColorPicker::SystemColorPicker()
{
	previousIconName = -1;
	previousColors = -1;
	
	previousColor = kPickerNeverUsedColor;
	
	previousHoverColor = kPickerNeverUsedColor;
	
	hiliteRgn = NULL;
	updateRgn = NULL;
	
	paletteRgn = NULL;
	palettePix = NULL;
	paletteGW = NULL;
	
	tracking = false;
}

SystemColorPicker::~SystemColorPicker()
{
	if (hiliteRgn != NULL)
		DisposeRgn(hiliteRgn);
		
	if (updateRgn != NULL)
		DisposeRgn(updateRgn);
}

void SystemColorPicker::CreateControls()
{
	paletteControl = GetNewControl(rSystemCPPaletteControl, parentWindow->GetWindow());
	EmbedControl(paletteControl, displayAreaControl);
	SetControlUserPaneDraw(paletteControl, SystemColorPicker::PaletteDraw);
	SetControlUserPaneHitTest(paletteControl, GenericHitTest);
	
	SetControlBalloonHelp(paletteControl, hSystemCPPalette);
}

void SystemColorPicker::Hide()
{
	HideControl(paletteControl);
}

void SystemColorPicker::SetColor(RGBColor inColor)
{
	if (!tracking)
	{
		DEBUG("\pset color");
		previousColor = color;
		color = inColor;
		
		UpdateColorPicker();
		TrackMouseDown(NULL);
		Draw1Control(paletteControl);
	}
}

RGBColor SystemColorPicker::GetColor()
{
	return color;
}


void SystemColorPicker::Show()
{
	ShowControl(paletteControl);
}

void SystemColorPicker::UpdateCursor(Point theMouse)
{
	bool changed;
	
#if !TARGET_API_MAC_CARBON
	if (HMGetBalloons())
		HandleBalloons(theMouse, parentWindow->GetWindow(), rSystemCPBalloonHelp);
#endif

	parentWindow->UpdateReadout(-1, -1, GetColorUnderMouse(theMouse, &changed));
}

void SystemColorPicker::WindowToPaletteLocal(Point* theMouse)
{
	Rect paletteControlRect;
	
	GetControlBounds(paletteControl, &paletteControlRect);
	
	// first the control within the window
	theMouse->h -= paletteControlRect.left;
	theMouse->v -= paletteControlRect.top;
	
	// then the border of the image well
	theMouse->h -= 1;
	theMouse->v -= 1;
	
	// finally the offset of the palette we are drawing within the control
	theMouse->h -= ((paletteControlRect.right - paletteControlRect.left) -
					(paletteRect.right - paletteRect.left))/2;
	theMouse->v -= ((paletteControlRect.bottom - paletteControlRect.top) -
					(paletteRect.bottom - paletteRect.top))/2;
}

RGBColor SystemColorPicker::GetColorUnderMouse(Point theMouse, bool* changed)
{
	*changed = !AreEqualRGB(kPickerNeverUsedColor, previousHoverColor);
	
	if (palettePix == NULL || paletteGW == NULL)
		return kPickerNeverUsedColor;
		
	WindowToPaletteLocal(&theMouse);
	
	if (PtInRgn(theMouse, paletteRgn))
	{
		RGBColor	tempColor;
		
		SAVEGWORLD;
		SetGWorld(paletteGW, NULL);
		GetCPixel(theMouse.h, theMouse.v, &tempColor);
		RESTOREGWORLD;
		
		if (AreEqualRGB(tempColor, kPickerNeverUsedColor))
		{
			*changed = false;
			return previousHoverColor;
		}
		else
		{
			*changed = !AreEqualRGB(tempColor, previousHoverColor);
			previousHoverColor = tempColor;
			return tempColor;
		}
	}
	
	return kPickerNeverUsedColor;
}

void SystemColorPicker::HandleContentClick(EventRecord* eventPtr)
{
#pragma unused (eventPtr)
	Point			where;
	ControlHandle	clickedControl;
	short			controlPart;
	
	where = eventPtr->where;
	
	SAVEGWORLD;
	
	parentWindow->SetPort();
	
	GlobalToLocal(&where);
	
	controlPart = FindControl(where, parentWindow->GetWindow(), &clickedControl);
	
	if (clickedControl == paletteControl)
	{
		tracking = true;
		previousHoverColor = color;
		do
		{
			TrackMouseDown(&where);
			Draw1Control(paletteControl);
			parentWindow->UpdateColors();
			MUtilities::GetMouseLocation(GetWindowPort(parentWindow->GetWindow()), &where);
		} while (Button());
		tracking = false;
		previousColor = color;
	}
	
	RESTOREGWORLD;
}

void SystemColorPicker::UpdateColorPicker()
{
	icnsEditorPtr	frontEditor;
	int				currentColors, currentIconName;
	
	frontEditor = GetFrontEditor();
	
	if (frontEditor)
	{
		currentColors = frontEditor->colors;
		currentIconName = frontEditor->currentPixName;
	}
	else
	{
		currentColors = macOSColors;
		currentIconName = il32;
	}
	
	if (currentColors != previousColors || currentIconName != previousIconName)
	{	
		previousIconName = previousIconName;
		previousColors = currentColors;
		previousHoverColor = kPickerNeverUsedColor;
		
		icnsEditorClass::statics.GetPickerPix(currentIconName, currentColors, &palettePix, &paletteGW, &paletteRgn);
		paletteRect = (**palettePix).bounds;

	}
}

void SystemColorPicker::TrackMouseDown(Point* theMouse)
{
	bool			colorChanged;
	
	if (theMouse)
		color = GetColorUnderMouse(*theMouse, &colorChanged);
	else
		colorChanged = !AreEqualRGB(color, previousColor);
	
	if (AreEqualRGB(color, kPickerNeverUsedColor))
	{
		color = previousColor;
		DEBUG("\prestored previous color");
	}

	DEBUG("\pgot an actual color");
	if (colorChanged || !tracking) 
	{
		DEBUG("\pcolor changed");
		
		if (tracking)
		{
			if (updateRgn)
				DisposeRgn(updateRgn);
			updateRgn = NewRgn();
			CopyRgn(hiliteRgn, updateRgn);
		}	
		
		if (hiliteRgn)
			DisposeRgn(hiliteRgn);
		hiliteRgn = NewRgn();
		GetSimilarColors(&color, 1, palettePix, paletteRgn, hiliteRgn);
		if (!EmptyRgn(hiliteRgn))
			InsetRgn(hiliteRgn, -1, -1);
		
		if (tracking)
		{
			UnionRgn(hiliteRgn, updateRgn, updateRgn);
			MUtilities::sounds.Play(kThemeSoundMenuItemHilite);
		}
		
		parentWindow->UpdateReadout(-1, -1, color);
		parentWindow->Flush();
	}
}

pascal void SystemColorPicker::PaletteDraw(ControlHandle theControl, short thePart)
{
#pragma unused (thePart)
	Rect				controlRect, canvasRect, paletteTargetRect;
	SystemColorPicker*	picker;
	Point				paletteOffset;
	RgnHandle			clippingRgn;
	
	picker = &ColorsPalettePtr(GetWindow(GetControlOwner(theControl)))->system;
	
	GetControlBounds(theControl, &controlRect);
	
	canvasRect = controlRect;
	
	SAVEGWORLD;
	picker->parentWindow->SetPort();
	SAVECOLORS;
	
	paletteOffset.h = 1 + ((controlRect.right - controlRect.left) - (picker->paletteRect.right - picker->paletteRect.left))/2;
	paletteOffset.v = 1 + ((controlRect.bottom - controlRect.top) - (picker->paletteRect.bottom - picker->paletteRect.top))/2;
	
	if (!picker->parentWindow->IsBuffered())
	{
		OffsetRect(&canvasRect, -canvasRect.left, -canvasRect.top);
		SetGWorld(icnsEditorClass::statics.canvasGW, NULL);
	}
	else
	{
		paletteOffset.h += controlRect.left;
		paletteOffset.v += controlRect.top;
		picker->parentWindow->LockPortBits();
	}
	
	SetUpControlBackground(theControl, 32, true);
	
	EraseRect(&canvasRect);
	
	ForeColor(blackColor);
	BackColor(whiteColor);
	
	paletteTargetRect = picker->paletteRect;
	OffsetRect(&paletteTargetRect, paletteOffset.h, paletteOffset.v);
	OffsetRgn(picker->paletteRgn, paletteOffset.h, paletteOffset.v);
	
	CopyBits((BitMap*)*picker->palettePix,
			 GetPortBitMapForCopyBits(GetQDGlobalsThePort()),
			 &picker->paletteRect,
			 &paletteTargetRect,
			 srcCopy,
			 picker->paletteRgn);
	
	InsetRgn(picker->paletteRgn, 1, 1);
	
	if (IsControlActive(theControl))
		DrawImageWell(picker->paletteRgn, kThemeStateActive, false);
	else
		DrawImageWell(picker->paletteRgn, kThemeStateInactive, false);
		
	InsetRgn(picker->paletteRgn, -1, -1);
	OffsetRgn(picker->paletteRgn, -paletteOffset.h, -paletteOffset.v);	
	
	if (!EmptyRgn(picker->hiliteRgn))
	{
		ForeColor(whiteColor);
		OffsetRgn(picker->hiliteRgn, paletteOffset.h, paletteOffset.v);
		FrameRgn(picker->hiliteRgn);
		OffsetRgn(picker->hiliteRgn, -paletteOffset.h, -paletteOffset.v);
		ForeColor(blackColor);
	}
	
	RESTOREGWORLD;
		
	if (picker->tracking && picker->updateRgn)
		clippingRgn = picker->updateRgn;
	else
		clippingRgn = NULL;
	
	if (!picker->parentWindow->IsBuffered())
	{
		if (clippingRgn)
			OffsetRgn(clippingRgn, paletteOffset.h + controlRect.left, paletteOffset.v + controlRect.top);
			
		CopyBits((BitMap*)*icnsEditorClass::statics.canvasPix,
				 GetPortBitMapForCopyBits(GetQDGlobalsThePort()),
				 &canvasRect,
				 &controlRect,
				 srcCopy,
				 clippingRgn);
		
		if (clippingRgn)
			OffsetRgn(clippingRgn, -(paletteOffset.h + controlRect.left), -(paletteOffset.v + controlRect.top));
	}
	else
	{
		picker->parentWindow->UnlockPortBits();
#if TARGET_API_MAC_CARBON
		if (clippingRgn)
		{
			OffsetRgn(clippingRgn, paletteOffset.h, paletteOffset.v);
			QDSetDirtyRegion(GetWindowPort(picker->parentWindow->GetWindow()), clippingRgn);
			QDFlushPortBuffer(GetWindowPort(picker->parentWindow->GetWindow()), NULL);
			OffsetRgn(clippingRgn, -paletteOffset.h, -paletteOffset.v);
		}
#endif
	}
	
	RESTORECOLORS; // we're done with the color changing
}

#pragma mark -

FavoritesColorPicker::FavoritesColorPicker()
{
	
}

FavoritesColorPicker::~FavoritesColorPicker()
{
	
}

void FavoritesColorPicker::CreateControls()
{
	paletteControl = GetNewControl(rFavoritesCPPaletteControl, parentWindow->GetWindow());
	EmbedControl(paletteControl, displayAreaControl);
	SetControlUserPaneDraw(paletteControl, FavoritesColorPicker::PaletteDraw);
	SetControlUserPaneHitTest(paletteControl, GenericHitTest);
				   
	SetControlBalloonHelp(paletteControl, hFavoritesCPPalette);
}

void FavoritesColorPicker::Hide()
{
	HideControl(paletteControl);
}

void FavoritesColorPicker::SetColor(RGBColor inColor)
{
	color = inColor;
	
	Draw1Control(paletteControl);
}

RGBColor FavoritesColorPicker::GetColor()
{
	return color;
}


void FavoritesColorPicker::Show()
{
	ShowControl(paletteControl);
}

void FavoritesColorPicker::UpdateCursor(Point theMouse)
{
	Rect	paletteRect;
	int		colorIndex;

#if !TARGET_API_MAC_CARBON
	if (HMGetBalloons())
		HandleBalloons(theMouse, parentWindow->GetWindow(), rFavoritesCPBalloonHelp);
#endif

	GetControlBounds(paletteControl, &paletteRect);
	
	theMouse.h -= paletteRect.left;
	theMouse.v -= paletteRect.top;
	
	colorIndex = GetPaletteIndex(theMouse);
	
	if (colorIndex >= 0 && colorIndex < kFavoritesCPSampleXCount * kFavoritesCPSampleYCount)
		parentWindow->UpdateReadout(-1, -1, icnsEditorClass::statics.preferences.GetFavoriteColor(colorIndex));
	
	if (AreEqualRGB(icnsEditorClass::statics.preferences.GetFavoriteColor(colorIndex), kPickerNeverUsedColor) || ISSHIFTDOWN)
		MUtilities::ChangeCursor(rTPToolBaseID + toolFill);
	else if (ISCOMMANDDOWN)
		MUtilities::ChangeCursor(rFavoritesCPScissors);
	else
		MUtilities::ChangeCursor(rTPToolBaseID + toolEyeDropper);
}

int FavoritesColorPicker::GetPaletteIndex(Point theMouse)
{
	int h, v;
	
	h = (theMouse.h - 1)/(kFavoritesCPSampleWidth + kFavoritesCPSampleSpacing);
	v = (theMouse.v - 6)/(kFavoritesCPSampleHeight + kFavoritesCPSampleSpacing);
	
	return v * kFavoritesCPSampleXCount + h;
}

void FavoritesColorPicker::HandleContentClick(EventRecord* eventPtr)
{
#pragma unused (eventPtr)
	Point			where, palettePoint;
	Rect			paletteRect;
	short			controlPart;
	int				colorIndex;
	ControlHandle	clickedControl;
	
	where = eventPtr->where;
	
	SAVEGWORLD;
	
	parentWindow->SetPort();
	
	GlobalToLocal(&where);
	
	palettePoint = where;
	GetControlBounds(paletteControl, &paletteRect);
	palettePoint.h -= paletteRect.left;
	palettePoint.v -= paletteRect.top;
	
	colorIndex = GetPaletteIndex(palettePoint);
	
	if (colorIndex < 0 || colorIndex >= kFavoritesCPSampleXCount * kFavoritesCPSampleYCount)
	{
		RESTOREGWORLD;
		return;
	}
	
	controlPart = FindControl(where, parentWindow->GetWindow(), &clickedControl);
	
	if (controlPart != kControlNoPart)
	{
		
		if (AreEqualRGB(icnsEditorClass::statics.preferences.GetFavoriteColor(colorIndex), kPickerNeverUsedColor) || ISSHIFTDOWN)
		{
			icnsEditorPtr	frontEditor;
			
			frontEditor = GetFrontEditor();
			
			if (frontEditor != NULL)
			{
				RGBColor	newColor, ignored;
				
				icnsEditorClass::statics.toolPalette->GetColors(&newColor, &ignored);
				
				icnsEditorClass::statics.preferences.SetFavoriteColor(colorIndex, newColor);
			}
			
			while (Button()){;}
		}
		else if (ISCOMMANDDOWN)
		{
			icnsEditorClass::statics.preferences.SetFavoriteColor(colorIndex, kPickerNeverUsedColor);
			
			while (Button()){;}
		}
		else
		{
			do
			{
				GetMouse(&palettePoint);
				if (PtInRect(palettePoint, &paletteRect))
				{
					palettePoint.h -= paletteRect.left;
					palettePoint.v -= paletteRect.top;
		
					colorIndex = GetPaletteIndex(palettePoint);
					
					if (colorIndex >= 0 && colorIndex < kFavoritesCPSampleXCount * kFavoritesCPSampleYCount)
					{
						color = icnsEditorClass::statics.preferences.GetFavoriteColor(colorIndex);
						parentWindow->UpdateColors();
					}
				}
			} while (Button());
		}	
		
		Draw1Control(paletteControl);
			
		parentWindow->UpdateColors();
	}
	
	RESTOREGWORLD;
}

pascal void FavoritesColorPicker::PaletteDraw(ControlHandle theControl, short thePart)
{
#pragma unused (thePart)
	Rect		controlRect, canvasRect;
	Rect		imageWellRect;
	RGBColor	currentColor;
	
	GetControlBounds(theControl, &controlRect);
	canvasRect = controlRect;
	
	SAVEGWORLD;
	SAVECOLORS;
	
	if (!GetWindow(GetControlOwner(theControl))->IsBuffered())
	{
		SetGWorld(icnsEditorClass::statics.canvasGW, NULL);
		OffsetRect(&canvasRect, -canvasRect.left, -canvasRect.top);
	}
	else
	{
		GetWindow(GetControlOwner(theControl))->LockPortBits();
		SetPortWindowPort(GetControlOwner(theControl));
	}
	RESTORECOLORS;
	
	EraseRect(&canvasRect);
	
	ForeColor(blackColor);
	BackColor(whiteColor);
	
	
	imageWellRect.top = imageWellRect.left = kFavoritesCPSampleSpacing;
	imageWellRect.bottom = imageWellRect.right = imageWellRect.top + kFavoritesCPSampleHeight;
	
	for (int y=0, i=0;
		 y < kFavoritesCPSampleYCount;
		 y++, SetRect(&imageWellRect,
					  canvasRect.left + kFavoritesCPSampleSpacing,
					  canvasRect.top + kFavoritesCPSampleSpacing + y * (kFavoritesCPSampleSpacing + kFavoritesCPSampleHeight),
					  canvasRect.left + kFavoritesCPSampleSpacing + kFavoritesCPSampleWidth,
					  canvasRect.top + kFavoritesCPSampleSpacing + (y + 1) * (kFavoritesCPSampleSpacing + kFavoritesCPSampleHeight)))
		for (int x=0;
			 x < kFavoritesCPSampleXCount;
			 x++, i++, OffsetRect(&imageWellRect,
			 				 	  kFavoritesCPSampleWidth + kFavoritesCPSampleSpacing,
			 				 	  0))
		{
			currentColor = icnsEditorClass::statics.preferences.GetFavoriteColor(i);
			if (!AreEqualRGB(currentColor, kPickerNeverUsedColor)) 
			{
				RGBForeColor(&currentColor);
				PaintRect(&imageWellRect);
			}
			DrawImageWell(theControl, imageWellRect);
		}
	
	ForeColor(blackColor);
	RESTOREGWORLD;
	
	if (!GetWindow(GetControlOwner(theControl))->IsBuffered())
		CopyBits((BitMap*)*icnsEditorClass::statics.canvasPix,
				  GetPortBitMapForCopyBits(GetQDGlobalsThePort()),
				  &canvasRect,
				  &controlRect,
				  srcCopy,
				  NULL);
	else
		GetWindow(GetControlOwner(theControl))->UnlockPortBits();
			  
	RESTORECOLORS;
}

#pragma mark -

pascal void	CPBackgroundPaneDraw(ControlHandle theControl,SInt16 thePart)
{
#pragma unused (thePart)
	Rect	controlRect;
	
	//if (Button())
	//	return;
		
	GetControlBounds(theControl, &controlRect);
	
	//DrawDialogBackground(theControl, controlRect);
	
	if (IsControlActive(theControl))
		DrawThemeModelessDialogFrame(&controlRect,true);
	else
		DrawThemeModelessDialogFrame(&controlRect,false);
}

pascal ControlPartCode CPBackgroundPaneHitTest(ControlHandle theControl, Point where)
{
#pragma unused (theControl, where)
	
	return kControlNoPart;
}

pascal void	CPSwatchDraw(ControlHandle theControl,SInt16 thePart)
{
#pragma unused (thePart)
	Rect				controlRect, canvasRect;
	RgnHandle			tempRgn;
	ColorsPalettePtr	parentPalette; // the editor which owns this control
	RGBColor			foreColor, backColor;
	icnsEditorPtr		frontEditor;
	
	parentPalette = ColorsPalettePtr(GetWindow(GetControlOwner(theControl)));
	
	SAVEGWORLD;
	SAVECOLORS; // we'll be changing the foreground/background colors
	
	frontEditor = GetFrontEditor();
	
	if (frontEditor == NULL || (**frontEditor->currentPix).pixelSize == 32)
	{
		foreColor = parentPalette->fore;
		backColor = parentPalette->back;
	}
	else
	{
		foreColor = GetNearestColor(parentPalette->fore, (**frontEditor->currentPix).pmTable);
		backColor = GetNearestColor(parentPalette->back, (**frontEditor->currentPix).pmTable);
	}
	
	GetControlBounds(theControl, &controlRect);
	canvasRect = controlRect;
	
	if (!parentPalette->IsBuffered())
	{
		SetGWorld(icnsEditorClass::statics.canvasGW, NULL);
		OffsetRect(&canvasRect, -canvasRect.left, -canvasRect.top);
	}
	else
	{
		parentPalette->LockPortBits();
		parentPalette->SetPort();
	}
	
	SetUpControlBackground(theControl, 32, true);
	
	EraseRect(&canvasRect);
	
	ForeColor(blackColor);
	BackColor(whiteColor);
	
	
	OffsetRgn(parentPalette->backColorRgn, -(controlRect.left - canvasRect.left), -(controlRect.top - canvasRect.top));
	OffsetRgn(parentPalette->foreColorRgn, -(controlRect.left - canvasRect.left), -(controlRect.top - canvasRect.top));
	
	// first we draw the background color swatch (since it must appear underneath)
	if (IsControlActive(theControl))
		DrawImageWell(parentPalette->backColorRgn, kThemeStateActive, false);
	else
		DrawImageWell(parentPalette->backColorRgn, kThemeStateInactive, false);
	EraseRgn(parentPalette->backColorRgn);
	RGBForeColor(&backColor);
	tempRgn = NewRgn();
	CopyRgn(parentPalette->backColorRgn, tempRgn);
	InsetRgn(tempRgn, 1, 1);
	PaintRgn(tempRgn);
	DisposeRgn(tempRgn);
	
	if (IsControlActive(theControl))
		DrawImageWell(parentPalette->foreColorRgn, kThemeStateActive, false);
	else
		DrawImageWell(parentPalette->foreColorRgn, kThemeStateInactive, false);
	EraseRgn(parentPalette->foreColorRgn);
	RGBForeColor(&foreColor);
	tempRgn = NewRgn();
	CopyRgn(parentPalette->foreColorRgn, tempRgn);
	InsetRgn(tempRgn, 1, 1);
	PaintRgn(tempRgn);
	DisposeRgn(tempRgn);
	
	if (IsControlActive(theControl))
		if (parentPalette->currentColor == kCPFore)
			DrawFocus(parentPalette->foreColorRgn, true);
		else
			DrawFocus(parentPalette->backColorRgn, true);

	RESTOREGWORLD;
	
	if (!parentPalette->IsBuffered())
		CopyBits((BitMap*)*icnsEditorClass::statics.canvasPix,
				 GetPortBitMapForCopyBits(GetQDGlobalsThePort()),
				 &canvasRect,
				 &controlRect,
				 srcCopy,
				 NULL);
	else
		parentPalette->UnlockPortBits();
	
	RESTORECOLORS; // we're done with the color changing
	
	OffsetRgn(parentPalette->backColorRgn, (controlRect.left - canvasRect.left), (controlRect.top - canvasRect.top));
	OffsetRgn(parentPalette->foreColorRgn, (controlRect.left - canvasRect.left), (controlRect.top - canvasRect.top));
}



// __________________________________________________________________________________________
// Name			: ColorSwatchHitTest
// Input		: theControl: the color swatch control for which we must do hit testing
//				  where: the location of the click
// Output		: ControlPartCode: the part (if any) of the control that was hit
// Description	: This function checks to see if the click occured inside the color swatch
//				  control, and if it did in what part

pascal ControlPartCode CPSwatchHitTest(ControlHandle theControl, Point where)
{
	ColorsPalettePtr	parentPalette; // editor which owns the control
	
	parentPalette = ColorsPalettePtr(GetWindow(GetControlOwner(theControl)));
	
	// going through all of the rectangles which make up the control..
	if (PtInRgn(where, parentPalette->backColorRgn))
	{
		DEBUG("\pbackground");
		return kCPBack;
	}
	if (PtInRgn(where, parentPalette->foreColorRgn))
	{
		DEBUG("\pforeground");
		return kCPFore;
	}
	else
	{
		DEBUG("\pno part");
		return kControlNoPart;
	}
}
