#include "PixMapColorPicker.h"
#include "ToolPalette.h"

const static int kImageWellXPad = 3;
const static int kImageWellYPad = 3;

PatternPicker::PatternPicker(ToolPalettePtr tools, PixMapHandle canvasPix, GWorldPtr canvasGW)
		      :MFloatingMenu(canvasPix, canvasGW)
{
	resourceID = count = rows = sampleX = sampleY = 0;
	this->tools = tools;
}

PatternPicker::~PatternPicker()
{
	;
}

void PatternPicker::SetPatterns(int resourceID, int count, int rows, int sampleX, int sampleY)
{
	this->resourceID = resourceID;
	this->count = count;
	this->rows = rows;
	this->sampleX = sampleX;
	this->sampleY = sampleY;
	
	SetSize(count/rows * (sampleX + 4 + 1) + 3,
			rows * (sampleY + 4 + 1) + 3);
}

void PatternPicker::Track(short* pattern, Point where)
{
	originalPattern = *pattern;
	this->pattern = pattern;
	
	MFloatingMenu::Track(where);
}

void PatternPicker::Draw(Rect drawRect)
{
	Rect 		currentRect;
	RGBColor 	foreColor, backColor;
	Pattern 	pattern;
	
	SAVECOLORS;
	
	for(int y=0; y < rows; y++)
		for (int x=0; x < count/rows; x++)
		{
			currentRect.left = x * (sampleX + 4 + 1) + drawRect.left + 2;
			currentRect.top = y * (sampleY + 4 + 1) + drawRect.top + 2;
			currentRect.right = currentRect.left + sampleX + 4;
			currentRect.bottom = currentRect.top + sampleX + 4;
			
			InsetRect(&currentRect, 2, 2);
			DrawImageWell(tools->controls.patterns, currentRect);
			
			if (y * (count/rows) + x == *this->pattern)
				DrawThemeFocusRect(&currentRect, true);
			
			tools->GetColors(&foreColor, &backColor);
			
			GetIndPattern(&pattern, resourceID, y * (count/rows) + x + 1);
			
			RGBForeColor(&foreColor);
			RGBBackColor(&backColor);
			
			InsetRect(&currentRect, 1, 1);
			FillRect(&currentRect, &pattern);
			
			ForeColor(blackColor);
			BackColor(whiteColor);
		}
		
	RESTORECOLORS;
}

void PatternPicker::Update(Point theMouse)
{
	int newPattern;
	
	if (PtInRect(theMouse, &drawRect))
	{
		int row, col;
		
		row = (theMouse.v - drawRect.top - 2)/(sampleY + 4 + 1);
		col = (theMouse.h - drawRect.left - 2)/(sampleX + 4 + 1);
		newPattern = row * (count/rows) + col;
	}
	else
		newPattern = originalPattern;
	
	if (newPattern != *pattern)
	{
		*pattern = newPattern;
		
		MUtilities::sounds.Play(kThemeSoundMenuItemHilite);
		
		DrawContents(drawRect);
		
		tools->Update();
	}
}
