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
	AEEventHandlerUPP openAppUPP, openDocUPP, printDocUPP, quitAppUPP, preferencesUPP, reopenAppUPP;
	
	openAppUPP = NewAEEventHandlerUPP(AEOpenApp);
	reopenAppUPP = NewAEEventHandlerUPP(AEReopenApp);
	openDocUPP = NewAEEventHandlerUPP(AEOpenDoc);
	printDocUPP = NewAEEventHandlerUPP(AEPrintDoc);
	quitAppUPP = NewAEEventHandlerUPP(AEQuitApp);
	preferencesUPP = NewAEEventHandlerUPP(AEPreferences);
	
	err = AEInstallEventHandler(kCoreEventClass, kAEOpenApplication, openAppUPP, 0L, false);
	if (err == noErr)
		err = AEInstallEventHandler(kCoreEventClass, kAEReopenApplication, reopenAppUPP, 0L, false);
	if (err == noErr)
		err = AEInstallEventHandler(kCoreEventClass, kAEOpenDocuments, openDocUPP, 0L, false);
	if (err == noErr)
		err = AEInstallEventHandler(kCoreEventClass, kAEPrintDocuments, printDocUPP, 0L, false);
	if (err == noErr)
		err = AEInstallEventHandler(kCoreEventClass, kAEQuitApplication, quitAppUPP, 0L, false);
#if TARGET_API_MAC_CARBON
	if (err == noErr && MUtilities::GestaltTest(gestaltMenuMgrAttr, gestaltMenuMgrAquaLayoutMask))
		err = AEInstallEventHandler(kCoreEventClass, kAEShowPreferences, preferencesUPP, 0L, false);
#endif
		
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
#pragma unused(reply,refCon)
	
	if (MWindow::GetFront() == NULL)
	{
		if (icnsEditorClass::statics.preferences.FeatureEnabled(prefsOpenIcon))
			OpenIcon(NULL);
		else if (!icnsEditorClass::statics.preferences.FeatureEnabled(prefsDontMakeNewEditor))
			NewIcon(true);
	}
	
	PostOpen();
	
	return AEGotRequiredParams(theAppleEvent);
}

pascal OSErr AEReopenApp(const AppleEvent *theAppleEvent, AppleEvent *reply, long refCon)
{
#pragma unused(reply,refCon)
	
	if (MWindow::GetFront() == NULL)
		NewIcon(true);

	return AEGotRequiredParams(theAppleEvent);
}


pascal OSErr AEOpenDoc(const AppleEvent *theAppleEvent, AppleEvent *reply, long refCon)
{
#pragma unused(reply, refCon)
	OSErr		err;
	AEDescList	fileSpecList;
	short		i;
	long		count;
	Size		actual;
	FSSpec		fileToOpen;
	AEKeyword	keyword;
	DescType	type;

	err = AEGetParamDesc(theAppleEvent, keyDirectObject, typeAEList, &fileSpecList);
	
	err = AECountItems(&fileSpecList, &count);
		
	for (i = 1; i <= count; i++)
	{
		err = AEGetNthPtr(&fileSpecList, i, typeFSS, &keyword, &type, (Ptr)&fileToOpen, sizeof(FSSpec), &actual);
		if (err == noErr)
			OpenIcon(&fileToOpen);
	}
	
	PostOpen();
	
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

pascal OSErr AEPreferences(const AppleEvent *theAppleEvent, AppleEvent *reply, long refCon)
{
#pragma unused(reply, refCon)

	icnsEditorClass::statics.preferences.Edit(kPrefsSettingsPane);
	
	return AEGotRequiredParams(theAppleEvent);
}
