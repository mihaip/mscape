#pragma once

#include "MWindow.h"
#include "icnsClass.h"

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
	
	private:
		ControlHandle	icon, appName, version, registrationInfo,
						webAddressTitle, webAddress, emailAddressTitle, emailAddress;
						
		icnsClass		applicationIcon;
		
		pascal static void 	IconDraw(ControlHandle iconControl, SInt16 controlPart);
};

typedef AboutBox* AboutBoxPtr;
