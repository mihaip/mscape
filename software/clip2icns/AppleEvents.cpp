#include "clip2icns.h"

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
	AEEventHandlerUPP insertIconUPP;
	OSLAccessorUPP	fileObjectAccessorUPP;
	
	openAppUPP = NewAEEventHandlerProc(AEOpenApp);
	openDocUPP = NewAEEventHandlerProc(AEOpenDoc);
	printDocUPP = NewAEEventHandlerProc(AEPrintDoc);
	quitAppUPP = NewAEEventHandlerProc(AEQuitApp);
	insertIconUPP = NewAEEventHandlerProc(AEInsertIcon);
	fileObjectAccessorUPP = NewOSLAccessorProc(FileObjectAccessor);
	
	err = AEInstallEventHandler(kCoreEventClass, kAEOpenApplication, openAppUPP, 0L, false);
	if (err == noErr)
		err = AEInstallEventHandler(kCoreEventClass, kAEOpenDocuments, openDocUPP, 0L, false);
	if (err == noErr)
		err = AEInstallEventHandler(kCoreEventClass, kAEPrintDocuments, printDocUPP, 0L, false);
	if (err == noErr)
		err = AEInstallEventHandler(kCoreEventClass, kAEQuitApplication, quitAppUPP, 0L, false);
	if (err == noErr)
		err = AEInstallEventHandler('reqd', kAEOpenApplication, openAppUPP, 0L, false);
	if (err == noErr)
		err = AEInstallEventHandler('reqd', kAEOpenDocuments, openDocUPP, 0L, false);
	if (err == noErr)
		err = AEInstallEventHandler('reqd', kAEPrintDocuments, printDocUPP, 0L, false);
	if (err == noErr)
		err = AEInstallEventHandler('reqd', kAEQuitApplication, quitAppUPP, 0L, false);
	if (err == noErr)
		err = AEInstallEventHandler('c2ci', 'insr', insertIconUPP, 0L, false);
	if (err == noErr)
		err = AEObjectInit();
	if (err == noErr)
		err = AEInstallObjectAccessor('alis', typeNull, fileObjectAccessorUPP, 0, false);
		
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
	return AEGotRequiredParams(theAppleEvent);
}

pascal OSErr AEOpenDoc(const AppleEvent *theAppleEvent, AppleEvent *reply, long refCon)
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
		{
			fileSpec = desc;
			EditIcon(false);
			return AEGotRequiredParams(theAppleEvent);
		}
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
	isDone = true;
	return AEGotRequiredParams(theAppleEvent);
}

pascal OSErr AEInsertIcon(const AppleEvent *theAppleEvent, AppleEvent *reply, long refCon)
{
	reply;
	refCon;
	long ID;
	Size	actualSize;
	DescType actualType;
	AEDescList	fileSpecList;
	Str255	name;
	OSStatus err;
	long count;
	AEKeyword	keyword;
	FSSpec		desc;
	DescType	type;
	int ignored;
	bool hasID;
	
	
	//if (!CheckClipboard(false))
	//	return noScrapErr;
	
	
	err = AEGetParamDesc(theAppleEvent, 'iFil', typeAEList, &fileSpecList);
	
	err = AECountItems(&fileSpecList, &count);
	for (int i = 1; i <= count; i++)
	{
		err = AEGetNthPtr(&fileSpecList, i, typeFSS, &keyword, &type, (Ptr)&desc, sizeof(FSSpec), &actualSize);
		if (err == noErr)
		{
			fileSpec = desc;
		}
		else
		{
			AEDesc object, token;
			unsigned char ignored;

			err = AEGetParamDesc(theAppleEvent, 'iFil', typeObjectSpecifier, &object);
			
			err = AEResolve(&object, kAEIDoMinimum, &token);
			
			err = ResolveAlias(NULL, (AliasHandle)(token.dataHandle), &desc, &ignored);
			
			AEDisposeDesc(&token);
			
			fileSpec = desc;
		}
	}
	
	err = AEGetParamPtr(theAppleEvent, 'iID ', typeSInt32, &actualType, &ID, sizeof(long), &actualSize);
	if (err != noErr)
		hasID = false;
	else
		hasID = true;
	
	err = AEGetParamPtr(theAppleEvent, 'iNam', typeChar, &actualType, (Ptr)(&(name[1])), 255, &actualSize);
	if (err == noErr)
		name[0] = actualSize;
	else if ((**preferences).nameResources && hasID)
		GetIconMenu(ID, &ignored, &ignored, name);
	
	if (hasID)
		clip2icns(ID, name);
	else
	{
		AEInteractAllowed oldLevel;
		AEGetInteractionAllowed(&oldLevel);
		AESetInteractionAllowed(kAEInteractWithLocal);
		AEInteractWithUser(kAEDefaultTimeout, NULL, NULL);
		EditIcon(false);
		AESetInteractionAllowed(oldLevel);
	}
	
	return AEGotRequiredParams(theAppleEvent);
}

pascal OSErr FileObjectAccessor(DescType	desiredClass,
								AEDesc*		containerToken,
								DescType	containerClass,
								DescType	keyForm,
								AEDesc*		keyData,
								AEDesc*		resultToken,
								long		refCon)
{
#pragma unused (desiredClass, containerToken, containerClass, keyForm, refCon)

	OSErr err;
	AEKeyword	keyword;
	
	err = AEGetNthDesc(keyData, 1, 'alis', &keyword, resultToken);
	
	return err;
}
