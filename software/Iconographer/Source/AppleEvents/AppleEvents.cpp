#include "iconMangler.h"

// __________________________________________________________________________________________
// Name			: AEInit
// Input		: None
// Output		: OSStatus: if there was a problem it is returned here
// Description	: Installs the functions which handle the four required AppleEvents (open, open
//				  doc, print and quit)

OSErr AEInit()
{
	OSErr err = noErr;
	AEEventHandlerUPP openAppUPP;
	AEEventHandlerUPP openDocUPP;
	AEEventHandlerUPP printDocUPP;
	AEEventHandlerUPP quitAppUPP;
	
	openAppUPP = NewAEEventHandlerProc(AEOpenApp);
	openDocUPP = NewAEEventHandlerProc(AEOpenDoc);
	printDocUPP = NewAEEventHandlerProc(AEPrintDoc);
	quitAppUPP = NewAEEventHandlerProc(AEQuitApp);
	
	err = AEInstallEventHandler(kCoreEventClass, kAEOpenApplication, openAppUPP, 0L, false);
	if (err == noErr)
		err = AEInstallEventHandler(kCoreEventClass, kAEOpenDocuments, openDocUPP, 0L, false);
	if (err == noErr)
		err = AEInstallEventHandler(kCoreEventClass, kAEPrintDocuments, printDocUPP, 0L, false);
	if (err == noErr)
		err = AEInstallEventHandler(kCoreEventClass, kAEQuitApplication, quitAppUPP, 0L, false);
		
	return err;
}

// __________________________________________________________________________________________
// Name			: 
// Input		: 
// Output		: 
// Description	: 
//				  

OSErr AEGotRequiredParams(const AppleEvent *theAppleEvent)
{
	DescType returnedType;
	Size actualSize;

	if ( AEGetAttributePtr(theAppleEvent, keyMissedKeywordAttr, typeWildCard, &returnedType, nil, 0, &actualSize) == errAEDescNotFound )
		return noErr;
	else
		return errAEParamMissed;
}			  

pascal OSErr AEOpenApp(const AppleEvent *theAppleEvent, AppleEvent *reply, long refCon)
{
	reply;
	refCon;
	
	if (!(icnsEditorClass::statics.preferences.IsRegistered()) &&
		(icnsEditorClass::statics.preferences.GetTimesUsed() > 50))
		Nag(true);
	
	if (MWindow::GetFront() == NULL)
	{
		if (icnsEditorClass::statics.preferences.FeatureEnabled(prefsOpenIcon))
			OpenIcon(NULL);
		else if (!icnsEditorClass::statics.preferences.FeatureEnabled(prefsDontMakeNewEditor))
			NewIcon(true);
	}
	return AEGotRequiredParams(theAppleEvent);
}

pascal OSErr AEOpenDoc(const AppleEvent *theAppleEvent, AppleEvent *reply, long refCon)
{
	OSErr		err;
	AEDescList	fileSpecList;
	short		i;
	long		count;
	Size		actual;
	FSSpec		fileToOpen;
	AEKeyword	keyword;
	DescType	type;

	reply;
	refCon;

	err = AEGetParamDesc(theAppleEvent, keyDirectObject, typeAEList, &fileSpecList);
	
	err = AECountItems(&fileSpecList, &count);
	
	if (!(icnsEditorClass::statics.preferences.IsRegistered()) &&
		(icnsEditorClass::statics.preferences.GetTimesUsed() > 50))
		Nag(true);
		
	for (i = 1; i <= count; i++)
	{
		err = AEGetNthPtr(&fileSpecList, i, typeFSS, &keyword, &type, (Ptr)&fileToOpen, sizeof(FSSpec), &actual);
		if (err == noErr)
			OpenIcon(&fileToOpen);
	}
	return AEGotRequiredParams(theAppleEvent);
}

pascal OSErr AEPrintDoc(const AppleEvent *theAppleEvent, AppleEvent *reply, long refCon)
{
	theAppleEvent;
	reply;
	refCon;
	return errAEEventNotHandled;
}

pascal OSErr AEQuitApp(const AppleEvent *theAppleEvent, AppleEvent *reply, long refCon)
{
	reply;
	refCon;
	gIsDone = true;
	return AEGotRequiredParams(theAppleEvent);
}
