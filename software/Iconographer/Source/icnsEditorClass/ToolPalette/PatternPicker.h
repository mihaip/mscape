#pragma once

class PatternPicker;

typedef PatternPicker* PatternPickerPtr;

#include "MFloatingMenu.h"
#include "ToolPalette.h"

class PatternPicker : public MFloatingMenu
{
	public:
						PatternPicker(ToolPalettePtr tools, PixMapHandle canvasPix, GWorldPtr canvasGW);
						~PatternPicker();
				
		void			SetPatterns(int resourceID, int count, int rows, int sampleX, int sampleY);
		void			Track(short* pattern, Point where);
		
	private:
	
		int				resourceID;
		int				count;
		int				rows;
		int				sampleX, sampleY;
		ToolPalettePtr	tools;
		short			*pattern, originalPattern;
		
		void			Draw(Rect drawRect);
		void			Update(Point theMouse);
};

