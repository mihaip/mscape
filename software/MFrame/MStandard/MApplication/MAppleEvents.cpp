// __________________________________________________________________________________________
// Program		: Meshroom
// Filename		: MAppleEvents.cpp
// Author		: Mihai Parparita (St. Mary's International School)
// Last modified: April 1, 2000
// Description	: implementation of AppleEvent support

#include "MAppleEvents.h"
#include "MApplication.h"

MApplication* MAppleEvents::parentAppPtr = NULL;

void MAppleEvents::Install(MApplication* parent)
{	
	OSErr err = noErr;
	AEEventHandlerUPP openAppUPP, openDocUPP, printDocUPP, quitAppUPP;
	
	parentAppPtr = parent;
	
	openAppUPP = NewAEEventHandlerUPP(OpenApplication);
	openDocUPP = NewAEEventHandlerUPP(OpenDocument);
	printDocUPP = NewAEEventHandlerUPP(PrintDocument);
	quitAppUPP = NewAEEventHandlerUPP(QuitApplication);
	
	err = AEInstallEventHandler(kCoreEventClass, kAEOpenApplication, openAppUPP, 0L, false);
	if (err == noErr)
		err = AEInstallEventHandler(kCoreEventClass, kAEOpenDocuments, openDocUPP, 0L, false);
	if (err == noErr)
		err = AEInstallEventHandler(kCoreEventClass, kAEPrintDocuments, printDocUPP, 0L, false);
	if (err == noErr)
		err = AEInstallEventHandler(kCoreEventClass, kAEQuitApplication, quitAppUPP, 0L, false);
	
	if (err != noErr) MThrow(err);
}

OSErr MAppleEvents::GotRequiredParams(const AppleEvent *theAppleEvent)
{
	DescType returnedType;
	Size actualSize;

	if (AEGetAttributePtr(theAppleEvent,
						  keyMissedKeywordAttr,
						  typeWildCard,
						  &returnedType,
						  nil,
						  0,
						  &actualSize) == errAEDescNotFound)
		return noErr;
	else
		return errAEParamMissed;
}

pascal OSErr MAppleEvents::OpenApplication(const AppleEvent *theAppleEvent, AppleEvent *reply, long refCon)
{
#pragma unused (reply, refCon)
	
	parentAppPtr->HandleEvent(ehOpenApp);
	
	return GotRequiredParams(theAppleEvent);
}

pascal OSErr MAppleEvents::OpenDocument(const AppleEvent *theAppleEvent, AppleEvent *reply, long refCon)
{
	OSErr		err;
	AEDescList	fileSpecList;
	short		i;
	long		count;
	Size		actual;
	FSSpec		desc;
	AEKeyword	keyword;
	DescType	type;

	reply;
	refCon;

	err = AEGetParamDesc(theAppleEvent, keyDirectObject, typeAEList, &fileSpecList);
	
	err = AECountItems(&fileSpecList, &count);
	for (i = 1; i <= count; i++)
	{
		err = AEGetNthPtr(&fileSpecList, i, typeFSS, &keyword, &type, (Ptr)&desc, sizeof(FSSpec), &actual);
		if (err == noErr)
			parentAppPtr->HandleEvent(ehOpen);
	}
	
	return GotRequiredParams(theAppleEvent);
}

pascal OSErr MAppleEvents::PrintDocument(const AppleEvent *theAppleEvent, AppleEvent *reply, long refCon)
{
#pragma unused (theAppleEvent, reply, refCon)

	parentAppPtr->HandleEvent(ehPrint);
			
	return GotRequiredParams(theAppleEvent);
}

pascal OSErr MAppleEvents::QuitApplication(const AppleEvent *theAppleEvent, AppleEvent *reply, long refCon)
{
#pragma unused (reply, refCon)

	parentAppPtr->HandleEvent(ehQuit);
	
	return GotRequiredParams(theAppleEvent);
}
