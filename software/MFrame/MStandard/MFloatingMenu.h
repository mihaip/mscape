#pragma once

#include "MFloater.h"

const static long kFloatingMenuWindowType = 'FlMn';

class MFloatingMenu
{
	protected:
	
		WindowPtr		menuWindowPtr;
		MFloaterPtr		menuWindow;
		
		void			DrawContents(Rect drawRect);
		virtual void	Draw(Rect targetRect) = 0;
		virtual void	Update(Point theMouse) = 0;
		
		Rect			drawRect;
		
		GWorldPtr		canvasGW;
		PixMapHandle	canvasPix;
		
	public:
	
						MFloatingMenu(PixMapHandle canvasPix, GWorldPtr canvasGW);
						~MFloatingMenu();
						
		void			SetSize(int x, int y);
		void			Track(Point startMouse);
					
		
};
