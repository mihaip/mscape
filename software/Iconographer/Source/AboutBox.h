#pragma once

#include "MWindow.h"
#include "MIcon.h"

const static MType kAboutBoxType = 'Abot';

enum AboutBoxResources
{
	rAboutBoxWindow = 128,
	rAboutBoxIcon = 128,
	rAboutBoxAppName = 129,
	rAboutBoxVersion = 130,
	rAboutBoxRegistrationInfo = 131,
	rAboutBoxWebAddressTitle = 132,
	rAboutBoxWebAddress = 133,
	rAboutBoxEmailAddressTitle = 134,
	rAboutBoxEmailAddress = 135
};

class AboutBox: public MWindow
{
	public:				
						AboutBox();
						~AboutBox();
		
		void			SetRegistrationInfo(Str255 name, Str255 company, Str255 regCode);
		
		void			HandleContentClick(EventRecord* eventPtr);
		
		void			UpdateCursor(Point theMouse);
	
	private:
		ControlHandle	icon, appName, version, registrationInfo,
						webAddressTitle, webAddress, emailAddressTitle, emailAddress;
};

typedef AboutBox* AboutBoxPtr;
