// __________________________________________________________________________________________
// Program		: Meshroom
// Filename		: MFloater.h
// Author		: Mihai Parparita (St. Mary's International School)
// Last modified: April 1, 2000
// Description	: implementation of generic floating window class

#include "MFloater.h"

MFloater::MFloater(short resID, OSType type)
		 :MWindow(resID, kFloaterType)
{
#if TARGET_API_MAC_CARBON
	ChangeWindowAttributes(window, 0, kWindowHideOnSuspendAttribute);
#endif
	floaterType = type;
}

MFloater::MFloater(WindowPtr inWindow, OSType type)
		 :MWindow(inWindow, kFloaterType)
{
	floaterType = type;
}

MFloater::~MFloater()
{

}

void MFloater::Show()
{
	if (!IsWindowVisible(window))
	{
		::ShowHide(window, true);
		::BringToFront(window);
		::HiliteWindow(window, true);
	}
}

void MFloater::Hide()
{
	if (IsWindowVisible(window))
	{
		::ShowHide(window, false);
		if (MWindow::GetFront())
			::SendBehind(window, MWindow::GetFront()->GetWindow());
		::HiliteWindow(window, false);
	}
}

bool MFloater::IsVisible()
{
	if (!MWindow::floatersVisible)
		return originallyVisible;
	else
		return MWindow::IsVisible();
}

void MFloater::Close()
{
	Hide();
}
