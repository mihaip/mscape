// __________________________________________________________________________________________
// Program		: Icon Mangler
// Filename		: AppleEvents.h (C++)
// Author		: Mihai Parparita (St. Mary's International School)
// Last modified: April 1, 1999
// Description	: The header file for the Apple Event functions. The code itself isn't included
//				  since it is very Mac specific and doesn't demonstrate any of the IB topics.

#pragma once

OSErr			AEInit(void);
OSErr			AEGotRequiredParams(const AppleEvent *theAppleEvent);
pascal OSErr	AEOpenApp(const AppleEvent *theAppleEvent, AppleEvent *reply, long refCon);
pascal OSErr	AEOpenDoc(const AppleEvent *theAppleEvent, AppleEvent *reply, long refCon);
pascal OSErr	AEPrintDoc(const AppleEvent *theAppleEvent, AppleEvent *reply, long refCon);
pascal OSErr	AEQuitApp(const AppleEvent *theAppleEvent, AppleEvent *reply, long refCon);

