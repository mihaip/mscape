#pragma once

class PixMapColorPicker;

typedef PixMapColorPicker* PixMapColorPickerPtr;

#include "MFloatingMenu.h"
#include "ToolPalette.h"

class PixMapColorPicker : public MFloatingMenu
{
	public:
						PixMapColorPicker(ToolPalettePtr tools,PixMapHandle canvasPix, GWorldPtr canvasGW);
						~PixMapColorPicker();
				
		void			SetPicker(PixMapHandle pickerPix, GWorldPtr pickerGW, RgnHandle pickerRgn, CTabHandle pickerTable);
		void			Track(RGBColor* color, Point where);
		
	private:
	
		PixMapHandle	pickerPix;
		GWorldPtr		pickerGW;
		RgnHandle		pickerRgn, colorRgn;
		CTabHandle		pickerTable;
		ToolPalettePtr	tools;
		RGBColor*		color, originalColor, originalNearestColor;
		Rect			pickerRect, pickerDrawRect;
		
		void			Draw(Rect drawRect);
		void			Update(Point theMouse);
		void			GetColorRegion();
};

