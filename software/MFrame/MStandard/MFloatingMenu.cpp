#include "MFloatingMenu.h"
#include "MWindow.h"
#include "MFloater.h"
#include "MUtilities.h"

const static int kXPadding = 1;
const static int kYPadding = 1;

MFloatingMenu::MFloatingMenu(PixMapHandle canvasPix, GWorldPtr canvasGW)
{
	Rect defaultSize = {0, 0, 204, 204};
	
	drawRect = defaultSize;
	InsetRect(&drawRect, kXPadding, kYPadding);
	
	menuWindowPtr = NewCWindow(NULL, // storage
							 &defaultSize,
							 "\p",
							 false, // not visible
#if TARGET_API_MAC_CARBON
							 kWindowSimpleProc,
#else
							 kWindowPlainDialogProc,
#endif
							 (WindowPtr)-1L,
							 false, // no go away
							 (long)this);
#if TARGET_API_MAC_CARBON
	SetWindowClass(menuWindowPtr, kFloatingWindowClass);
#endif
	menuWindow = new MFloater(menuWindowPtr, kFloatingMenuWindowType);
	
	this->canvasPix = canvasPix;
	this->canvasGW = canvasGW;
}

MFloatingMenu::~MFloatingMenu()
{
	delete menuWindow;
}

void MFloatingMenu::SetSize(int x, int y)
{
	Point dimensions;
	
	dimensions.h = x + kXPadding * 2;
	dimensions.v = y + kYPadding * 2;
	
	menuWindow->SetDimensions(dimensions);
	
	SetRect(&drawRect, kXPadding, kYPadding, x + kXPadding, y + kYPadding);
}

void MFloatingMenu::DrawContents(Rect drawRect)
{
	SAVEGWORLD;
	
	if (!menuWindow->IsBuffered())
		SetGWorld(canvasGW, NULL);

	DrawThemeMenuBackground(&drawRect, kThemeMenuTypePopUp);		
	Draw(drawRect);
	
	RESTOREGWORLD;
	
	if (!menuWindow->IsBuffered())
	{
		Rect copyRect;
		
		copyRect = drawRect;
		InsetRect(&copyRect, -kXPadding, -kYPadding);
		
		SAVECOLORS;
		CopyBits((BitMap*)*canvasPix,
				  GetPortBitMapForCopyBits(GetQDGlobalsThePort()),
				  &copyRect,
				  &copyRect,
				  srcCopy,
				  NULL);
		RESTORECOLORS;
	}
	else
		menuWindow->Flush();
}

void MFloatingMenu::Track(Point theMouse)
{
	bool mouseMustBeDown;
	int startTicks = TickCount();
	SAVEGWORLD;
	
	menuWindow->SetPosition(theMouse);
	
	MUtilities::sounds.Play(kThemeSoundMenuOpen);
	
	menuWindow->Show();
	menuWindow->Select();
	
	menuWindow->SetPort();
	
	DrawContents(drawRect);
	
	if (!Button())
		mouseMustBeDown = false;
	else
		mouseMustBeDown = true;
	
	while((mouseMustBeDown && (Button() || (TickCount() - startTicks <= GetDblTime()))) ||
		  (!mouseMustBeDown && !Button()))
	{
		
		if (mouseMustBeDown && !Button() && (TickCount() - startTicks) <= GetDblTime())
			mouseMustBeDown = false;
		
		MUtilities::GetMouseLocation(GetWindowPort(menuWindowPtr), &theMouse);
		Update(theMouse);
	}
	
	RESTOREGWORLD;
	
	MUtilities::sounds.Play(kThemeSoundMenuClose);
	
	menuWindow->Hide();
	
	if (!mouseMustBeDown)
		FlushEvents(mDownMask, 0);
}
