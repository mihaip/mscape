#include "AboutBox.h"
#include "iconmangler.h"
#include "commonfunctions.h"
#include "MHelp.h"

AboutBox::AboutBox()
		 :MWindow(rAboutBoxWindow, kAboutBoxType)
{
	ControlFontStyleRec			controlStyle;
	
	ChangeWindowAttributes(window, kWindowCloseBoxAttribute, kWindowFullZoomAttribute | kWindowCollapseBoxAttribute);
	
	icon = GetNewControl(rAboutBoxIcon, window);
	SetControlUserPaneDraw(icon, MUtilities::ApplicationIconDraw);
	
	appName = GetNewControl(rAboutBoxAppName, window);
	ResetStaticTextTitle(appName);
	
	controlStyle.flags = kControlUseFontMask | kControlUseSizeMask | kControlUseFaceMask | kControlUseJustMask | kControlAddToMetaFontMask;
	controlStyle.font = kControlFontBigSystemFont; // this font is installed on all systems
	controlStyle.size = 19;
	controlStyle.style = bold;
	controlStyle.just = teCenter;
	SetControlFontStyle(appName, &controlStyle);
	
	version = GetNewControl(rAboutBoxVersion, window);
	ResetStaticTextTitle(version);
	controlStyle.flags = kControlUseFontMask | kControlUseSizeMask | kControlUseJustMask | kControlAddToMetaFontMask;
	controlStyle.font = kControlFontSmallSystemFont; // this font is installed on all systems
	controlStyle.size = 12;
	controlStyle.just = teCenter;
	SetControlFontStyle(version, &controlStyle);
	
	registrationInfo = GetNewControl(rAboutBoxRegistrationInfo, window);
	controlStyle.flags = kControlUseFontMask | kControlUseSizeMask | kControlUseJustMask | kControlAddToMetaFontMask;
	controlStyle.font = kControlFontSmallSystemFont; // this font is installed on all systems
	controlStyle.size = 10;
	controlStyle.just = teFlushLeft;
	SetControlFontStyle(registrationInfo, &controlStyle);
	MHelp::SetControlHelp(registrationInfo, rAboutHelp, hRegistrationInfo);
	
	webAddressTitle = GetNewControl(rAboutBoxWebAddressTitle, window);
	ResetStaticTextTitle(webAddressTitle);
	controlStyle.just = teFlushRight;
	SetControlFontStyle(webAddressTitle, &controlStyle);
	
	emailAddressTitle = GetNewControl(rAboutBoxEmailAddressTitle, window);
	ResetStaticTextTitle(emailAddressTitle);
	SetControlFontStyle(emailAddressTitle, &controlStyle);
	
	webAddress = GetNewControl(rAboutBoxWebAddress, window);
	ResetStaticTextTitle(webAddress);
	controlStyle.flags |= kControlUseFaceMask | kControlUseForeColorMask;
	controlStyle.style = underline;
	controlStyle.foreColor.red = controlStyle.foreColor.green = 0;
	controlStyle.foreColor.blue = 0xFFFF;
	SetControlFontStyle(webAddress, &controlStyle);
	MHelp::SetControlHelp(webAddress, rAboutHelp, hWebAddress);
	
	emailAddress = GetNewControl(rAboutBoxEmailAddress, window);
	ResetStaticTextTitle(emailAddress);
	SetControlFontStyle(emailAddress, &controlStyle);
	MHelp::SetControlHelp(emailAddress, rAboutHelp, hEmailAddress);
}

AboutBox::~AboutBox()
{

}

void AboutBox::SetRegistrationInfo(Str255 name, Str255 company, Str255 regCode)
{
	Str255 registrationText;
	
	GetIndString(registrationText, rDefaultNames, eRegisteredTo);
	
	if (name[0])
	{
		AppendString(registrationText, "\p\n\t");
		AppendString(registrationText, name);
	}
	
	if (company[0])
	{
		AppendString(registrationText, "\p\n\t");
		AppendString(registrationText, company);
	}
	
	if (regCode[0])
	{
		AppendString(registrationText, "\p\n\t");
		AppendString(registrationText, regCode);
	}
	
	SetControlText(registrationInfo, registrationText);
}

void AboutBox::HandleContentClick(EventRecord* eventPtr)
{
	ControlHandle	clickedControl;
	OSStatus		err = noErr;
	Point			where;
	Str255			address;
	
	if (MWindow::GetFront() != this)
	{
		Select();
		return;
	}
	
	SAVEGWORLD;
	
	where = eventPtr->where;
	
	SetPort();
	GlobalToLocal(&where);
	
	FindControl(where, window, &clickedControl);
	
	TrackControl(clickedControl, where, (ControlActionUPP) -1);
	
	GetMouse(&where);
	
	FindControl(where, window, &clickedControl);
	
	if (clickedControl == webAddress)
	{
		GetIndString(address, rDefaultNames, eHomepageAddress);
		LaunchURL((ConstStr255Param)address);
	}
	else if (clickedControl == emailAddress)
	{
		GetIndString(address, rDefaultNames, eEmailAddress);
		LaunchURL((ConstStr255Param)address);
	}
	
	RESTOREGWORLD;
}

void AboutBox::UpdateCursor(Point theMouse)
{
	Rect controlRect;
	
	if (MUtilities::GestaltVersion(gestaltAppearanceVersion, 0x01, 0x10))
	{
		GetControlBounds(webAddress, &controlRect);
		if (PtInRect(theMouse, &controlRect))
			MUtilities::ChangeCursor(kThemePointingHandCursor);
		else
		{
			GetControlBounds(emailAddress, &controlRect);
			if (PtInRect(theMouse, &controlRect))
				MUtilities::ChangeCursor(kThemePointingHandCursor);
		}
	}
}
