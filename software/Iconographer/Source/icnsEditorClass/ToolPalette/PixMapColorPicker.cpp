#include "PixMapColorPicker.h"
#include "ToolPalette.h"
#include "icnsEditorClass.h"

const static int kImageWellXPad = 3;
const static int kImageWellYPad = 3;

PixMapColorPicker::PixMapColorPicker(ToolPalettePtr tools, PixMapHandle canvasPix, GWorldPtr canvasGW)
				  :MFloatingMenu(canvasPix, canvasGW)
{
	pickerPix = NULL;
	pickerGW = NULL;
	pickerRgn = NULL;
	pickerTable = NULL;
	colorRgn = NULL;
	
	this->tools = tools;
}

PixMapColorPicker::~PixMapColorPicker()
{
	if (colorRgn != NULL)
		DisposeRgn(colorRgn);
	
	if (pickerRgn != NULL)
		DisposeRgn(pickerRgn);
}

void PixMapColorPicker::Draw(Rect drawRect)
{
	SAVECOLORS;
	
	InsetRgn(pickerRgn, 1, 1);
	DrawImageWell(pickerRgn, kThemeStateActive, false);
	InsetRgn(pickerRgn, -1, -1);
	
	InsetRect(&drawRect, kImageWellXPad, kImageWellYPad);
	
	CopyBits((BitMap*)*pickerPix,
			 GetPortBitMapForCopyBits(GetQDGlobalsThePort()),
			 &pickerRect,
			 &drawRect,
			 srcCopy,
			 pickerRgn);
	
	if (colorRgn != NULL)
	{
		ForeColor(whiteColor);
		FrameRgn(colorRgn);
		ForeColor(blackColor);
	}
	
	RESTORECOLORS;
}

void PixMapColorPicker::Update(Point theMouse)
{
	RGBColor newColor;
	
	if (PtInRgn(theMouse, pickerRgn))
	{
		SAVEGWORLD;
		SetGWorld(pickerGW, NULL);
		GetCPixel(theMouse.h - drawRect.left - kImageWellXPad, theMouse.v - drawRect.top - kImageWellYPad, &newColor);
		RESTOREGWORLD;
	}
	else
		newColor = originalNearestColor;
	
	if (!AreEqualRGB(newColor, *color) && !AreEqualRGB(newColor, kPickerNeverUsedColor))
	{
		*this->color = newColor;
		
		MUtilities::sounds.Play(kThemeSoundMenuItemHilite);
		
		GetColorRegion();
		DrawContents(drawRect);
		
		tools->Update();
		
		icnsEditorClass::statics.colorsPalette->UpdateReadout(-1, -1, newColor);
	}
}

void PixMapColorPicker::GetColorRegion()
{
	if (colorRgn != NULL)
		DisposeRgn(colorRgn);
	colorRgn = NewRgn();
	
	if (!AreEqualRGB(*color, kPickerNeverUsedColor))
	{
		OffsetRgn(pickerRgn, -drawRect.left - kImageWellXPad, -drawRect.top - kImageWellYPad);
		GetSimilarColors(color, 1, pickerPix, pickerRgn, colorRgn);
		OffsetRgn(pickerRgn, drawRect.left + kImageWellXPad, drawRect.top + kImageWellYPad);
	
		OffsetRgn(colorRgn, drawRect.left + kImageWellXPad, drawRect.top + kImageWellYPad);
		InsetRgn(colorRgn, -1, -1);
	}
}

void PixMapColorPicker::SetPicker(PixMapHandle pickerPix, GWorldPtr pickerGW, RgnHandle pickerRgn, CTabHandle pickerTable)
{
	Rect regionBounds;
	
	this->pickerPix = pickerPix;
	this->pickerGW = pickerGW;
	if (this->pickerRgn)
		DisposeRgn(this->pickerRgn);
	this->pickerRgn = NewRgn();
	CopyRgn(pickerRgn, this->pickerRgn);
	this->pickerTable = pickerTable;
	
	pickerRect = pickerDrawRect = (**pickerPix).bounds;
	
	GetRegionBounds(this->pickerRgn, &regionBounds);
	OffsetRgn(this->pickerRgn, -regionBounds.left + drawRect.left + kImageWellXPad, -regionBounds.top + drawRect.top + kImageWellYPad);
	
	SetSize(pickerRect.right - pickerRect.left + kImageWellXPad * 2,
			pickerDrawRect.bottom - pickerRect.top + kImageWellYPad * 2);
}

void PixMapColorPicker::Track(RGBColor* color, Point where)
{
	originalColor = *color;
	
	this->color = color;
	originalNearestColor = *this->color = GetNearestColor(*color, pickerTable);
	
	GetColorRegion();
	
	MFloatingMenu::Track(where);
	
	if (AreEqualRGB(*this->color, originalNearestColor))
		*this->color = originalColor;
}
