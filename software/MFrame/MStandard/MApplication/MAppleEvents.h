// __________________________________________________________________________________________
// Program		: Meshroom
// Filename		: MAppleEvents.h
// Author		: Mihai Parparita (St. Mary's International School)
// Last modified: April 1, 2000
// Description	: type definitions and constants of AppleEvent support

#pragma once
#include "MException.h"

class MApplication;

class MAppleEvents {
	private:
		static MApplication*	parentAppPtr;
		
	public:
		
		void				Install(MApplication* parent);
		static OSErr		GotRequiredParams(const AppleEvent *theAppleEvent);

		static pascal OSErr	OpenApplication(const AppleEvent *theAppleEvent, AppleEvent *reply, long refCon);
		static pascal OSErr	OpenDocument(const AppleEvent *theAppleEvent, AppleEvent *reply, long refCon);
		static pascal OSErr	PrintDocument(const AppleEvent *theAppleEvent, AppleEvent *reply, long refCon);
		static pascal OSErr	QuitApplication(const AppleEvent *theAppleEvent, AppleEvent *reply, long refCon);
};
