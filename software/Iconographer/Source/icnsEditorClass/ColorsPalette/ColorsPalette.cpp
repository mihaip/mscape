#include "ColorsPalette.h"
#include "icnsEditorClass.h"
#include "graphicalFunctions.h"

ControlActionUPP RGBColorPicker::sliderActionUPP = NewControlActionProc(RGBColorPicker::SliderAction);
ControlActionUPP HSVColorPicker::sliderActionUPP = NewControlActionProc(HSVColorPicker::SliderAction);


ColorsPalette::ColorsPalette()
			  :MFloater(rCPWindow, kColorsPaletteType)
{
	SetThemeWindowBackground(window, kThemeBrushDialogBackgroundActive, false);
	
	currentColor = kCPFore;
	
	fore.red = fore.green = fore.blue = 0;
	back.red = back.green = back.blue = 0xFFFF;
	
	CreateControls();

	rgb.SetDisplayArea(this, controls.tabs);
	rgb.CreateControls();
	
	hsv.SetDisplayArea(this, controls.tabs);
	hsv.CreateControls();
	
	system.SetDisplayArea(this, controls.tabs);
	system.CreateControls();
	
	favorites.SetDisplayArea(this, controls.tabs);
	favorites.CreateControls();
	
	rgb.Show();
	hsv.Hide();
	system.Hide();
	favorites.Hide();
	
	currentColorPicker = &rgb;
}

ColorsPalette::~ColorsPalette()
{
	
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

void ColorsPalette::DoIdle()
{
	Point		theMouse, globalMouse;
	WindowPtr	windowUnderMouse;
	
	SAVEGWORLD;
	
	SetPort();
	
	GetMouse(&theMouse);
	
	globalMouse = theMouse;
	LocalToGlobal(&globalMouse);
	FindWindow(globalMouse, &windowUnderMouse);
	
	if (windowUnderMouse == window)
	{
		Rect		colorPickerRect;
		
		GetControlBounds(controls.colorPickerArea, &colorPickerRect);
		
		if (PtInRect(theMouse, &colorPickerRect))
			currentColorPicker->DoIdle();
		else
		{
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
			if (PtInRgn(theMouse, foreColorRgn))
				UpdateReadout(-1, -1, fore);
			else if (PtInRgn(theMouse, backColorRgn))
				UpdateReadout(-1, -1, back);
		}
	}
	
	RESTOREGWORLD;
}

void ColorsPalette::HandleContentClick(EventRecord* eventPtr)
{
	Point			where;
	Rect			colorPickerRect;
	ControlHandle	clickedControl;
	short			part;
	
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
		Draw1Control(controls.tabs);
	}
}

int ColorsPalette::GetCurrentPicker()
{
	return (GetControlValue(controls.tabs));
}

void ColorsPalette::SetColors(RGBColor foreColor, RGBColor backColor)
{
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
}

void ColorsPalette::UpdateReadout(int x, int y, RGBColor color)
{
	Str255 numberAsString, finalString;

	readoutChanged = true;
	
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
}

void ColorsPalette::CreateControls()
{
	Rect						backgroundPaneRect, tempRect;
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
	SetControlBalloonHelp(controls.tabs, hCPTabs);
	
	controls.separator1 = GetNewControl(rCPSeparator1, window);
	controls.positionReadoutLabel = GetNewControl(rCPPositionReadoutLabel, window);
	ResetStaticTextTitle(controls.positionReadoutLabel);
	controls.positionReadoutData = GetNewControl(rCPPositionReadoutData, window);
	SetControlFontStyle(controls.positionReadoutData, &readoutStyle);
	SetControlBalloonHelp(controls.positionReadoutData, hCPPosReadout);
	
	controls.separator2 = GetNewControl(rCPSeparator2, window);
	controls.colorReadoutLabel = GetNewControl(rCPColorReadoutLabel, window);
	ResetStaticTextTitle(controls.colorReadoutLabel);
	controls.colorReadoutData = GetNewControl(rCPColorReadoutData, window);
	SetControlFontStyle(controls.colorReadoutData, &readoutStyle);
	SetControlBalloonHelp(controls.colorReadoutData, hCPColorReadout);
	
	controls.colorPickerArea = GetNewControl(rCPColorPickerArea, window);
	EmbedControl(controls.colorPickerArea, controls.tabs);
}

#pragma mark -

ColorPicker::ColorPicker()
{
	color.red = color.green = color.blue = 0;
}

ColorPicker::~ColorPicker()
{

}

void ColorPicker::DoIdle()
{

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

void RGBColorPicker::DoIdle()
{
	Point theMouse;
	
	GetMouse(&theMouse);
	
	if (HMGetBalloons())
		if (HandleBalloon(rRGBCPBalloonHelp, redSlider, theMouse) ||
			HandleBalloon(rRGBCPBalloonHelp, greenSlider, theMouse) ||
			HandleBalloon(rRGBCPBalloonHelp, blueSlider, theMouse))
		{
			;
		}
		else
			HandleBalloons(theMouse, parentWindow->GetWindow(), rRGBCPBalloonHelp);
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
		ThemeSoundStart(kThemeDragSoundSliderThumb);
	
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
		ThemeSoundEnd();
	
	RESTOREGWORLD;
	
	parentWindow->UpdateColors();
}

pascal void RGBColorPicker::PreviewDraw(ControlHandle theControl, short thePart)
{
#pragma unused (thePart)
	Rect			controlRect, tempRect;
	RGBColorPicker*	picker;
	
	picker = &ColorsPalettePtr(GetWindow(GetControlOwner(theControl)))->rgb;
	
	GetControlBounds(theControl, &controlRect);
	
	// stupid corner trick since the background seems to be wrong
	tempRect = controlRect;
	tempRect.top = tempRect.bottom - 1;
	tempRect.right = tempRect.left + 1;
	EraseRect(&tempRect);
	tempRect = controlRect;
	tempRect.bottom = tempRect.top + 1;
	tempRect.left = tempRect.right - 1;
	EraseRect(&tempRect);
	
	InsetRect(&controlRect, 2, 2);
	
	DrawImageWell(theControl, controlRect);
	
	if (theControl == picker->redPreview)
		DrawGradient(controlRect, picker->color, 1, 0, 0);
	else if (theControl == picker->greenPreview)
		DrawGradient(controlRect, picker->color, 0, 1, 0);
	else if (theControl == picker->bluePreview)
		DrawGradient(controlRect, picker->color, 0, 0, 1);
}

void RGBColorPicker::DrawGradient(Rect targetRect, RGBColor color,
								  int rIncrement, int gIncrement, int bIncrement)
{
	GWorldPtr		tempGW;
	PixMapHandle	tempPix;
	Rect			tempRect;
	unsigned char*			baseAddr;
	unsigned char			colorAsChar[4];
	int				width;
	
	width = targetRect.right - targetRect.left;
	
	tempRect = targetRect;
	tempRect.bottom = tempRect.top + 1;
	
	NewGWorld(&tempGW, 32, &tempRect, NULL, NULL, 0);
	tempPix = GetGWorldPixMap(tempGW);
	LockPixels(tempPix);
	
	baseAddr = (unsigned char*)(**tempPix).baseAddr;
	
	*(long*)colorAsChar = RGBToLong(color);
	
	for (int i=0; i < width; i++)
	{
		if (rIncrement == 1)
			colorAsChar[1] = 0xFF * float(i)/float(width);
		else if (gIncrement == 1)
			colorAsChar[2] = 0xFF * float(i)/float(width);
		else if (bIncrement == 1)
			colorAsChar[3] = 0xFF * float(i)/float(width);
		
		BlockMoveData(colorAsChar, baseAddr, 4);
		
		baseAddr += 4;
	}
	
	SAVECOLORS;
	
	CopyBits((BitMap*)*tempPix,
			 GetPortBitMapForCopyBits(qd.thePort),
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

void HSVColorPicker::DoIdle()
{
	Point theMouse;
	
	GetMouse(&theMouse);
	
	if (HMGetBalloons())
		if (HandleBalloon(rHSVCPBalloonHelp, hueSlider, theMouse) ||
			HandleBalloon(rHSVCPBalloonHelp, saturationSlider, theMouse) ||
			HandleBalloon(rHSVCPBalloonHelp, valueSlider, theMouse))
		{
			;
		}
		else
			HandleBalloons(theMouse, parentWindow->GetWindow(), rHSVCPBalloonHelp);
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
		ThemeSoundStart(kThemeDragSoundSliderThumb);
	
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
		ThemeSoundEnd();
	
	RESTOREGWORLD;
	
	parentWindow->UpdateColors();
}

pascal void HSVColorPicker::PreviewDraw(ControlHandle theControl, short thePart)
{
#pragma unused (thePart)
	Rect			controlRect, tempRect;
	HSVColorPicker*	picker;
	
	picker = &ColorsPalettePtr(GetWindow(GetControlOwner(theControl)))->hsv;
	
	GetControlBounds(theControl, &controlRect);
	
	// stupid corner trick since the background seems to be wrong
	tempRect = controlRect;
	tempRect.top = tempRect.bottom - 1;
	tempRect.right = tempRect.left + 1;
	EraseRect(&tempRect);
	tempRect = controlRect;
	tempRect.bottom = tempRect.top + 1;
	tempRect.left = tempRect.right - 1;
	EraseRect(&tempRect);
	
	InsetRect(&controlRect, 2, 2);
	
	DrawImageWell(theControl, controlRect);
	
	if (theControl == picker->huePreview)
		DrawGradient(controlRect, picker->colorAsHSV, 1, 0, 0);
	else if (theControl == picker->saturationPreview)
		DrawGradient(controlRect, picker->colorAsHSV, 0, 1, 0);
	else if (theControl == picker->valuePreview)
		DrawGradient(controlRect, picker->colorAsHSV, 0, 0, 1);
}

void HSVColorPicker::DrawGradient(Rect targetRect, HSVColor color,
								  int hIncrement, int sIncrement, int vIncrement)
{
	GWorldPtr		tempGW;
	PixMapHandle	tempPix;
	Rect			tempRect;
	unsigned char*	baseAddr;
	int				width;
	float			h, s, v;

	width = targetRect.right - targetRect.left;
	
	tempRect = targetRect;
	tempRect.bottom = tempRect.top + 1;
	
	NewGWorld(&tempGW, 32, &tempRect, NULL, NULL, 0);
	tempPix = GetGWorldPixMap(tempGW);
	LockPixels(tempPix);
	
	h = float(color.hue) / 65535.0 * 360;
	s = float(color.saturation) / 65535.0;
	v = float(color.value) / 65535.0;
	
	baseAddr = (unsigned char*)(**tempPix).baseAddr;
	
	for (int i=0; i < width; i++)
	{
		if (hIncrement == 1)
			h = float(i)/float(width) * 360;
		else if (sIncrement == 1)
			s = float(i)/float(width);
		else if (vIncrement == 1)
			v = float(i)/float(width);
			
		HSV2RGBfc(h, s, v, &baseAddr[1], &baseAddr[2], &baseAddr[3]);
		
		baseAddr += 4;
	}
	
	SAVECOLORS;
	
	CopyBits((BitMap*)*tempPix,
			 GetPortBitMapForCopyBits(qd.thePort),
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
	
	paletteTargetRgn = NULL;
	
	currentPoint.h = currentPoint.v = -1;
}

SystemColorPicker::~SystemColorPicker()
{
	if (hiliteRgn != NULL)
		DisposeRgn(hiliteRgn);
		
	if (paletteRgn != NULL)
		DisposeRgn(paletteRgn);
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
	color = inColor;
	
	Draw1Control(paletteControl);
}

RGBColor SystemColorPicker::GetColor()
{
	return color;
}


void SystemColorPicker::Show()
{
	ShowControl(paletteControl);
}

void SystemColorPicker::DoIdle()
{
	Point theMouse;
	Rect	controlRect;
	
	GetMouse(&theMouse);
	
	if (HMGetBalloons())
		HandleBalloons(theMouse, parentWindow->GetWindow(), rSystemCPBalloonHelp);
	
	GetControlBounds(paletteControl, &controlRect);
	
	theMouse.h -= controlRect.left;
	theMouse.v -= controlRect.top;
	
	if (PtInRgn(theMouse, paletteTargetRgn))
	{
		RGBColor	tempColor;
		
		theMouse.h -= paletteTargetRect.left;
		theMouse.v -= paletteTargetRect.top;
		
		SAVEGWORLD;
		
		SetGWorld(paletteGW, NULL);
		
		GetCPixel(theMouse.h, theMouse.v, &tempColor);
		if (AreEqualRGB(tempColor, kPickerNeverUsedColor))
			tempColor = previousHoverColor;
		else
			previousHoverColor = tempColor; 
		
		RESTOREGWORLD;
		
		parentWindow->UpdateReadout(-1, -1, tempColor);
	}
}

void SystemColorPicker::HandleContentClick(EventRecord* eventPtr)
{
#pragma unused (eventPtr)
	Point			where;
	ControlHandle	clickedControl;
	short			controlPart;
	Rect			controlRect;
	RGBColor		temp;
	
	where = eventPtr->where;
	
	SAVEGWORLD;
	
	parentWindow->SetPort();
	
	GlobalToLocal(&where);
	
	
	controlPart = FindControl(where, parentWindow->GetWindow(), &clickedControl);
	
	if (clickedControl == paletteControl)
	{
		GetControlBounds(paletteControl, &controlRect);
		
		do
		{
			GetMouse(&currentPoint);
			currentPoint.h -= controlRect.left;
			currentPoint.v -= controlRect.top;
			temp = color;
			color = previousColor;
			parentWindow->UpdateColors();
			color = temp;
		} while (Button());
		
		currentPoint.h = currentPoint.v = -1;
		
		color = previousColor;
			
		parentWindow->UpdateColors();
	}
	
	RESTOREGWORLD;
}

pascal void SystemColorPicker::PaletteDraw(ControlHandle theControl, short thePart)
{
#pragma unused (thePart)
	Rect				controlRect, canvasRect;
	SystemColorPicker*	picker;
	icnsEditorPtr		frontEditor;
	int					newColors, newIconName;
	RGBColor			newColor;
	
	picker = &ColorsPalettePtr(GetWindow(GetControlOwner(theControl)))->system;
	
	GetControlBounds(theControl, &controlRect);
	
	canvasRect = controlRect;
	OffsetRect(&canvasRect, -canvasRect.left, -canvasRect.top);
	
	
	frontEditor = GetFrontEditor();
	if (frontEditor == NULL)
	{
		newIconName = il32;
		newColors = macOSColors;
	}
	else
	{
		newIconName = frontEditor->currentPixName;
		newColors = frontEditor->colors;
	}
	
	if (newIconName != picker->previousIconName || newColors != picker->previousColors)
	{
		int					hOffset, vOffset;
		
		picker->previousIconName = newIconName;
		picker->previousColors = newColors;
		picker->previousColor = kPickerNeverUsedColor;
		
		icnsEditorClass::statics.GetPickerPix(newIconName, newColors, &picker->palettePix, &picker->paletteGW, &picker->paletteRgn);
		
		picker->paletteRect = (**picker->palettePix).bounds;
	
		hOffset = -picker->paletteRect.left +
				  ((canvasRect.right - canvasRect.left) - (picker->paletteRect.right - picker->paletteRect.left))/2;
		vOffset = -picker->paletteRect.top +
				  ((canvasRect.bottom - canvasRect.top) - (picker->paletteRect.bottom - picker->paletteRect.top))/2;
	
		picker->paletteTargetRect = picker->paletteRect;
		OffsetRect(&picker->paletteTargetRect, hOffset, vOffset);
		
		if (picker->paletteTargetRgn != NULL)
			DisposeRgn(picker->paletteTargetRgn);
			
		picker->paletteTargetRgn = NewRgn();
		CopyRgn(picker->paletteRgn, picker->paletteTargetRgn);
		OffsetRgn(picker->paletteTargetRgn, hOffset, vOffset);
	}
	
	
	SAVEGWORLD;
	SAVECOLORS;
	
	SetGWorld(icnsEditorClass::statics.canvasGW, NULL);
	
	RESTORECOLORS;
	
	EraseRect(&canvasRect);
	
	ForeColor(blackColor);
	BackColor(whiteColor);
	
	CopyPixMap(picker->palettePix,
			   icnsEditorClass::statics.canvasPix,
			   &picker->paletteRect,
			   &picker->paletteTargetRect,
			   srcCopy,
			   picker->paletteTargetRgn);
	
	if (picker->currentPoint.h == -1 || !PtInRgn(picker->currentPoint, picker->paletteTargetRgn))
		newColor = picker->GetColor();
	else
	{
		GetCPixel(picker->currentPoint.h, picker->currentPoint.v, &newColor);
	}
	
	if (AreEqualRGB(newColor, kPickerNeverUsedColor))
		newColor = picker->previousColor;
	
	if (!AreEqualRGB(newColor, picker->previousColor))
	{
		int					hOffset, vOffset;
		
		
		if (picker->hiliteRgn != NULL)
			DisposeRgn(picker->hiliteRgn);
		
		picker->hiliteRgn = NewRgn();
		hOffset = picker->paletteRect.left;
		vOffset = picker->paletteRect.top;
		
		//OffsetRgn(picker->paletteRgn, -hOffset, -vOffset);
		
		GetSimilarColors(&newColor, 1, icnsEditorClass::statics.canvasPix, picker->paletteTargetRgn, picker->hiliteRgn);
		//OffsetRgn(picker->paletteRgn, hOffset, vOffset);
		//OffsetRgn(picker->hiliteRgn, hOffset, vOffset);
		InsetRgn(picker->hiliteRgn, -1, -1);
		
		picker->previousColor = newColor;
		
		if (picker->currentPoint.h != -1)
			ThemeSoundPlay(kThemeSoundMenuItemHilite);
	}
	
	InsetRgn(picker->paletteTargetRgn, 1, 1);
	
	if (IsControlActive(theControl))
		DrawImageWell(picker->paletteTargetRgn, kThemeStateActive, false);
	else
		DrawImageWell(picker->paletteTargetRgn, kThemeStateInactive, false);
		
	InsetRgn(picker->paletteTargetRgn, -1, -1);	
	
	ForeColor(whiteColor);
	FrameRgn(picker->hiliteRgn);
	ForeColor(blackColor);
	
	RESTOREGWORLD;
	
	CopyBits((BitMap*)*icnsEditorClass::statics.canvasPix,
			 GetPortBitMapForCopyBits(qd.thePort),
			 &canvasRect,
			 &controlRect,
			 srcCopy,
			 NULL);
	
	RESTORECOLORS; // we're done with the color changing*/
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

void FavoritesColorPicker::DoIdle()
{
	Point	theMouse;
	Rect	paletteRect;
	int		colorIndex;
	
	GetMouse(&theMouse);
	
	if (HMGetBalloons())
		HandleBalloons(theMouse, parentWindow->GetWindow(), rFavoritesCPBalloonHelp);
	
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
	OffsetRect(&canvasRect, -canvasRect.left, -canvasRect.top);
	
	SAVEGWORLD;
	SAVECOLORS;
	
	SetGWorld(icnsEditorClass::statics.canvasGW, NULL);
	
	RESTORECOLORS;
	
	EraseRect(&canvasRect);
	
	ForeColor(blackColor);
	BackColor(whiteColor);
	
	imageWellRect.top = imageWellRect.left = kFavoritesCPSampleSpacing;
	imageWellRect.bottom = imageWellRect.right = imageWellRect.top + kFavoritesCPSampleHeight;
	
	for (int y=0, i=0;
		 y < kFavoritesCPSampleYCount;
		 y++, SetRect(&imageWellRect,
					  kFavoritesCPSampleSpacing,
					  imageWellRect.top + kFavoritesCPSampleSpacing + kFavoritesCPSampleHeight,
					  kFavoritesCPSampleSpacing + kFavoritesCPSampleWidth,
					  imageWellRect.bottom + kFavoritesCPSampleSpacing + kFavoritesCPSampleHeight))
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
	
	CopyBits((BitMap*)*icnsEditorClass::statics.canvasPix,
			  GetPortBitMapForCopyBits(qd.thePort),
			  &canvasRect,
			  &controlRect,
			  srcCopy,
			  NULL);
			  
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
	OffsetRect(&canvasRect, -canvasRect.left, -canvasRect.top);
	
	SetGWorld(icnsEditorClass::statics.canvasGW, NULL);
	
	RESTORECOLORS;
	
	EraseRect(&canvasRect);
	
	ForeColor(blackColor);
	BackColor(whiteColor);
	
	
	OffsetRgn(parentPalette->backColorRgn, -controlRect.left, -controlRect.top);
	OffsetRgn(parentPalette->foreColorRgn, -controlRect.left, -controlRect.top);
	
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
	
	CopyBits((BitMap*)*icnsEditorClass::statics.canvasPix,
			 GetPortBitMapForCopyBits(qd.thePort),
			 &canvasRect,
			 &controlRect,
			 srcCopy,
			 NULL);
	
	RESTORECOLORS; // we're done with the color changing
	
	OffsetRgn(parentPalette->backColorRgn, controlRect.left, controlRect.top);
	OffsetRgn(parentPalette->foreColorRgn, controlRect.left, controlRect.top);
}

pascal ControlPartCode CPBackgroundPaneHitTest(ControlHandle theControl, Point where)
{
#pragma unused (theControl, where)
	
	return kControlNoPart;
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
		return kCPBack;
	if (PtInRgn(where, parentPalette->foreColorRgn))
		return kCPFore;
	else
		return kControlNoPart;
}
