// __________________________________________________________________________________________
// Program		: Meshroom
// Filename		: MUtilities.cpp
// Author		: Mihai Parparita (St. Mary's International School)
// Last modified: April 1, 2000
// Description	: implementation of common utility functions

#include "MUtilities.h"
#include "MWindow.h"
#include "MAlert.h"
#include <UnicodeConverter.h>

bool MUtilities::toolboxInited = false;
short MUtilities::currentCursor = rArrow;
bool MUtilities::cursorChanged = false;

MSounds MUtilities::sounds;

void MUtilities::InitToolbox()
{
	if (!toolboxInited)
	{
		unsigned long seed;

#if !TARGET_API_MAC_CARBON
		InitGraf (&qd.thePort);
		InitFonts();
		InitWindows();
		InitMenus();
		TEInit();
		InitDialogs(NULL);
#endif
		FlushEvents(everyEvent, 0);
		InitCursor();
		
		ForeColor (blackColor);
		BackColor (whiteColor);

#if !TARGET_API_MAC_CARBON
		MaxApplZone();				// Grab application memory.
#endif
		
		MoreMasters();
		MoreMasters();
		MoreMasters();
		MoreMasters();
		MoreMasters();
		
		GetDateTime(&seed);
		SetQDGlobalsRandomSeed(seed); // Randomize random seed.
		
		toolboxInited = true;	
	}
}

int MUtilities::strlen(const char* string)
{
	int length;
	
	for (length = 0; string[length] != NULL; length++) {;}
	
	return length;
}

void MUtilities::Sleep(int ticks)
{
	int targetTicks = TickCount() + ticks;
	
	while (TickCount() < targetTicks) {;} // Loop until TickCount() catches up.
}

bool MUtilities::GestaltVersion(MType gestaltCode, int major, int revision)
{
	char version[4];
	
	if (Gestalt(gestaltCode, (long *)version) != noErr)
		return false;
	else
	{
		if (version[2] > major)
			return true;
		else if ((version[2] == major) && version[3] >= revision)
			return true;
		else
			return false;
	}
}

bool MUtilities::GestaltExists(MType gestaltCode)
{
	long result;
	
	return (Gestalt(gestaltCode, &result) == noErr);
}

bool MUtilities::GestaltTest(MType gestaltCode, MType gestaltMask)
{
	long result;
	
	if (Gestalt(gestaltCode, &result) == noErr)
		return result & gestaltMask;
	else
		return 0;
}

bool MUtilities::IsKeyPressed(short keyCode)
{
	unsigned char	ourKeyMap[16];
	long			keyMapIndex;
	short			bitToCheck;

#if TARGET_API_MAC_CARBON
	GetKeys((long*)ourKeyMap);
#else
	GetKeys((unsigned long*)ourKeyMap);
#endif
	keyMapIndex = ourKeyMap[keyCode/8];
	bitToCheck = keyCode % 8;
	return (keyMapIndex >> bitToCheck) & 0x01;
}

void MUtilities::CrossProduct(float x0, float y0, float z0,
						 	  float x1, float y1, float z1,
						 	  float* xN, float* yN, float* zN)
{
	*xN = y0 * z1 - y1 * z0;
	*yN = -(x0 * z1 - x1 * z0);
	*zN = x0 * y1 - x1 * y0;
}

short MUtilities::DisplayAlert(Str255 message, Str255 button1, Str255 button2, Str255 button3, int type)
{
	MAlert		alert;
	MString		temp;
	
	alert.SetMovable(true);
	
	temp = button1;
	alert.SetButtonName(kMAOK, temp);
	
	temp = button2;
	alert.SetButtonName(kMACancel, temp);
	
	temp = button3;
	alert.SetButtonName(kMAOther, temp);
	
	temp = message;
	alert.SetError(temp);
	
	alert.SetType(kAlertStopAlert);
	
	if (type == kAlertStopAlert)
		alert.SetBeep(true);
	
	alert.SetType(type);
	
	return alert.Display();
}

#pragma mark -

OSErr MUtilities::FindProcessBySignature(OSType targetType, OSType targetCreator, ProcessSerialNumberPtr psnPtr)
{
	OSErr			anErr = noErr;
	bool			lookingForProcess = true;
	ProcessInfoRec	infoRec;
	
	infoRec.processInfoLength = sizeof(ProcessInfoRec);
	infoRec.processName = nil;
	infoRec.processAppSpec = nil;
	
	psnPtr->lowLongOfPSN = kNoProcess;
	psnPtr->highLongOfPSN = kNoProcess;

	while (lookingForProcess)
	{
		anErr = GetNextProcess(psnPtr);
		if (anErr != noErr)
		{
			lookingForProcess = false;
		}
		else
		{
			anErr = GetProcessInformation( psnPtr, &infoRec );
			if ( ( anErr == noErr )
				 && ( infoRec.processType == targetType )
				 && ( infoRec.processSignature == targetCreator ) )
			{
				lookingForProcess = false;
			}
		}
	}
	
	return anErr;
}

bool MUtilities::IsFrontProcess()
{
	ProcessSerialNumber	currentProcess, frontProcess;
	
	GetCurrentProcess(&currentProcess);
	GetFrontProcess(&frontProcess);
	
	if (currentProcess.lowLongOfPSN == frontProcess.lowLongOfPSN && currentProcess.highLongOfPSN == frontProcess.highLongOfPSN)
		return true;
	else
		return false;
}

OSType MUtilities::GetFrontProcessCreator()
{
	ProcessSerialNumber frontProcess;
	ProcessInfoRec	infoRec;
	
	GetCurrentProcess(&frontProcess);
	GetFrontProcess(&frontProcess);
	
	infoRec.processInfoLength = sizeof(ProcessInfoRec);
	infoRec.processName = NULL;
	infoRec.processAppSpec = NULL;
	
	GetProcessInformation(&frontProcess, &infoRec);
	
	return infoRec.processSignature;
}

FSSpec MUtilities::GetCurrentProcessSpec()
{
	ProcessSerialNumber currentProcess;
	ProcessInfoRec		infoRec;
	FSSpec				processSpec;
	
	GetCurrentProcess(&currentProcess);
	
	infoRec.processInfoLength = sizeof(ProcessInfoRec);
	infoRec.processName = NULL;
	infoRec.processAppSpec = &processSpec;
	
	GetProcessInformation(&currentProcess, &infoRec);
	
	return processSpec;
}

#pragma mark -

bool MUtilities::HasExtension(FSSpec file, Str255 extension)
{
	int fileNameCursor, extCursor;
	
	fileNameCursor = file.name[0];
	extCursor = extension[0];
	
	for (; extCursor > 0; extCursor--, fileNameCursor--)
	{
		if (fileNameCursor <= 0 ||
			file.name[fileNameCursor] != extension[extCursor])
			return false;
	}
	
	return true;
}

void MUtilities::GetCreatorAndType(FSSpec file, OSType *creator, OSType* type)
{
	FInfo info;
	
	HGetFInfo(file.vRefNum, file.parID, file.name, &info);
	*creator = info.fdCreator;
	*type = info.fdType;
}

void MUtilities::SetCreatorAndType(FSSpec file, OSType creator, OSType type)
{
	FInfo info;
	
	HGetFInfo(file.vRefNum, file.parID, file.name, &info);
	info.fdCreator = creator;
	info.fdType = type;
	HSetFInfo(file.vRefNum, file.parID, file.name, &info);
}

void MUtilities::TouchFile(FSSpec file) //spec is the file whose icon you changed
{
	CInfoPBRec  myCPB;

	if(file.parID != 1)
	{
		myCPB.dirInfo.ioDrDirID = file.parID;
		myCPB.dirInfo.ioVRefNum = file.vRefNum;
		myCPB.dirInfo.ioNamePtr =  NULL;
		myCPB.dirInfo.ioFDirIndex = -1;

		if(PBGetCatInfoSync(&myCPB) == noErr)
		{
			 GetDateTime(&(myCPB.dirInfo.ioDrMdDat));
			 PBSetCatInfoSync(&myCPB);
		}
	}
}

bool MUtilities::IsFileFolder(FSSpec file)
{
	unsigned char	ignored;
	Boolean			isFolder;
	
	ResolveAliasFile(&file, true, &isFolder, &ignored);
	
	return isFolder;
}

#pragma mark -

OSErr MUtilities::AESendFinderOpen(FSSpec inFile)
{
#if TARGET_API_MAC_CARBON
	if (GestaltVersion(gestaltSystemVersion, 0x10, 0x00))
	{
		FSRef fileRef;
		
		FSpMakeFSRef(&inFile, &fileRef);
		
		return LSOpenFSRef(&fileRef, NULL);
	}
	else
#endif
	{ 
		OSErr    err = noErr;
		AEDesc      processDesc;
		AppleEvent     ae, aeReply;
		DescType finderType = 'MACS';
		
		ae.descriptorType = aeReply.descriptorType = processDesc.descriptorType = typeNull;
		ae.dataHandle = aeReply.dataHandle = processDesc.dataHandle = nil;
	         
		err = AECreateDesc(typeApplSignature,&finderType,sizeof(DescType),&processDesc); if (err != noErr) goto bail;
		
		err = AECreateAppleEvent(kCoreEventClass, kAEOpen,&processDesc, kAutoGenerateReturnID,kAnyTransactionID,&ae); if (err != noErr) goto bail;
	           
		err = AEPutParamPtr(&ae,keyDirectObject,typeFSS,&inFile,sizeof(inFile)); if (err != noErr) goto bail;

		err  = AESend(&ae,&aeReply, kAENoReply | kAENeverInteract, kAENormalPriority, kAEDefaultTimeout,nil,nil); if (err != noErr) goto bail;

	bail:
		if (processDesc.descriptorType != typeNull) AEDisposeDesc(&processDesc);
		if (ae.descriptorType != typeNull) AEDisposeDesc(&ae);
		if (aeReply.descriptorType != typeNull) AEDisposeDesc(&aeReply);
		
		return err;
	}
}

OSErr MUtilities::AESendFinderUpdate(FSSpec inFile)
{
	/*if (GestaltVersion(gestaltSystemVersion, 0x10, 0x00))
	{
		FSRef fileRef, parentRef;
		OSErr	err;
		Str255	errAsString;
		FSCatalogInfo	parentInfo;
		HFSUniStr255	parentName;
		
		DebugStr("\phere");
		
		err = FSpMakeFSRef(&inFile, &fileRef);
		if (err != noErr) {NumToString(err, errAsString); DebugStr(errAsString);}
		
		err = FSGetCatalogInfo(&fileRef, kFSCatInfoParentDirID, NULL, NULL, NULL, &parentRef);
		if (err != noErr) {NumToString(err, errAsString); DebugStr(errAsString);}
		
		err = FSGetCatalogInfo(&parentRef, kFSCatInfoSettableInfo, &parentInfo, &parentName, NULL, NULL);
		if (err != noErr) {NumToString(err, errAsString); DebugStr(errAsString);}
		
		UnicodeToTextInfo	conversionInfo;
		CreateUnicodeToTextInfoByEncoding(kTextEncodingMacRoman, &conversionInfo);
		ConvertFromUnicodeToPString(conversionInfo, parentName.length, parentName.unicode, errAsString);
		DebugStr(errAsString);
		
		err = GetUTCDateTime(&parentInfo.contentModDate, kUTCDefaultOptions);
		if (err != noErr) {NumToString(err, errAsString); DebugStr(errAsString);}
		
		err = GetUTCDateTime(&parentInfo.attributeModDate, kUTCDefaultOptions);
		if (err != noErr) {NumToString(err, errAsString); DebugStr(errAsString);}
		
		err = GetUTCDateTime(&parentInfo.accessDate, kUTCDefaultOptions);
		if (err != noErr) {NumToString(err, errAsString); DebugStr(errAsString);}
		
		err = FSSetCatalogInfo(&parentRef, kFSCatInfoSettableInfo, &parentInfo);
		if (err != noErr) {NumToString(err, errAsString); DebugStr(errAsString);}
		
		err = FNNotify(&parentRef, kFNDirectoryModifiedMessage, kNilOptions);
		if (err != noErr) {NumToString(err, errAsString); DebugStr(errAsString);}
		
		return err;
	}
	else*/
	{
		OSErr    err = noErr;
		AEDesc      processDesc;
		AppleEvent     ae, aeReply;
		DescType finderType = 'MACS';
		
		ae.descriptorType = aeReply.descriptorType = processDesc.descriptorType = typeNull;
		ae.dataHandle = aeReply.dataHandle = processDesc.dataHandle = nil;
	         
		err = AECreateDesc(typeApplSignature,&finderType,sizeof(DescType),&processDesc); if (err != noErr) goto bail;
		
		err = AECreateAppleEvent(kAEFinderSuite, kAESync,&processDesc, kAutoGenerateReturnID,kAnyTransactionID,&ae); if (err != noErr) goto bail;
	           
		err = AEPutParamPtr(&ae,keyDirectObject,typeFSS,&inFile,sizeof(inFile)); if (err != noErr) goto bail;

		err  = AESend(&ae,&aeReply, kAENoReply | kAENeverInteract, kAENormalPriority, kAEDefaultTimeout,nil,nil); if (err != noErr) goto bail;

	bail:
		if (processDesc.descriptorType != typeNull) AEDisposeDesc(&processDesc);
		if (ae.descriptorType != typeNull) AEDisposeDesc(&ae);
		if (aeReply.descriptorType != typeNull) AEDisposeDesc(&aeReply);
		
		return err;
	}
}


OSErr MUtilities::AESendOpenDocEventToApp(ProcessSerialNumber *targetPSN, const FSSpec * documentFSSpecPtr)
{
	if (GestaltVersion(gestaltSystemVersion, 0x10, 0x00))
		return noErr;
	else
	{
		OSErr retCode;
		AppleEvent theAppleEvent, theReplyEvent;
		AEDesc targetAddrDesc, docDesc;
		AEDescList docDescList;
		AliasHandle docAlias;
		
		// to simplify cleanup, ensure that handles are nil to start
		theAppleEvent.dataHandle = nil;
		docDescList.dataHandle = nil;
		docDesc.dataHandle = nil;
		docAlias = nil;
		
		// create an address descriptor based on the serial number of
		// the target process
		
		retCode = AECreateDesc(typeProcessSerialNumber, (Ptr) targetPSN,
			sizeof(ProcessSerialNumber), &targetAddrDesc);
		if (retCode != noErr) goto bail;
		
		// make a descriptor list containing just a descriptor with an
		// alias to the document
		
		retCode = AECreateList(nil, 0, false, &docDescList);
		if (retCode != noErr) goto bail;
		
		retCode = NewAlias(nil, documentFSSpecPtr, &docAlias);
		if (retCode != noErr) goto bail;
		
		HLock((Handle) docAlias);
		retCode = AECreateDesc(typeAlias, (Ptr) *docAlias, 
			GetHandleSize((Handle) docAlias), &docDesc);
		HUnlock((Handle) docAlias);
		if (retCode != noErr) goto bail;
		
		retCode = AEPutDesc(&docDescList, 0, &docDesc);
		if (retCode != noErr) goto bail;
		
		// now make the 'odoc' AppleEvent descriptor and insert the 
		// document descriptor list as the direct object
		
		retCode = AECreateAppleEvent(kCoreEventClass, kAEOpenDocuments,
			&targetAddrDesc, kAutoGenerateReturnID, kAnyTransactionID,
			&theAppleEvent);
		if (retCode != noErr) goto bail;
		
		retCode = AEPutParamDesc(&theAppleEvent, keyDirectObject, &docDescList);
		if (retCode != noErr) goto bail;
		
		// finally, send the Apple event
		retCode = AESend(&theAppleEvent, &theReplyEvent, kAENoReply, 
			kAENormalPriority, kAEDefaultTimeout, nil, nil);
		
	bail:
		// dispose of everything that was allocated
		
		if (theAppleEvent.dataHandle != nil)  (void) AEDisposeDesc(&theAppleEvent);
		if (docDescList.dataHandle != nil)  (void) AEDisposeDesc(&docDescList);
		if (docDesc.dataHandle != nil)  (void) AEDisposeDesc(&docDesc);
		if (docAlias != nil)  DisposeHandle((Handle) docAlias);
		
		return retCode;
	}
}

OSErr MUtilities::AELaunchAppWithDoc(const FSSpec * applicationFSSpecPtr,	const FSSpec * documentFSSpecPtr)
{
	if (GestaltVersion(gestaltSystemVersion, 0x10, 0x00))
		return noErr;
	else
	{
		OSErr 				retCode;
		LaunchParamBlockRec launchParams;
		ProcessSerialNumber myPSN;
		AppleEvent 			theAppleEvent;
		AEDesc 				myAddrDesc, launchParamDesc, docDesc;
		AEDescList 			docDescList;
		AliasHandle 		docAlias;
		AppParametersPtr	parametersPtr;
		int					parametersSize;
		
		// to simplify cleanup, ensure that handles are nil to start
		theAppleEvent.dataHandle = nil;
		launchParamDesc.dataHandle = nil;
		docDescList.dataHandle = nil;
		docDesc.dataHandle = nil;
		docAlias = nil;
		parametersPtr = NULL;
		
		// the Apple event will need a valid address descriptor (even though its
		// contents will not matter since we will not be calling AESend) so make 
		// one using my own serial number
		
		(void) GetCurrentProcess(&myPSN);
		retCode = AECreateDesc(typeProcessSerialNumber, (Ptr) &myPSN,
			sizeof(ProcessSerialNumber), &myAddrDesc);
		if (retCode != noErr) goto bail;
		
		// make a descriptor list containing just a descriptor with an
		// alias to the document
		
		retCode = AECreateList(nil, 0, false, &docDescList);
		if (retCode != noErr) goto bail;
		
		retCode = NewAlias(nil, documentFSSpecPtr, &docAlias);
		if (retCode != noErr) goto bail;
		
		HLock((Handle) docAlias);
		retCode = AECreateDesc(typeAlias, (Ptr) *docAlias, 
			GetHandleSize((Handle) docAlias), &docDesc);
		HUnlock((Handle) docAlias);
		if (retCode != noErr) goto bail;
		
		retCode = AEPutDesc(&docDescList, 0, &docDesc);
		if (retCode != noErr) goto bail;
		
		// now make the 'odoc' AppleEvent descriptor and insert the 
		// document descriptor list as the direct object
		
		retCode = AECreateAppleEvent(kCoreEventClass, kAEOpenDocuments,
			&myAddrDesc, kAutoGenerateReturnID, kAnyTransactionID,
			&theAppleEvent);
		if (retCode != noErr) goto bail;
		
		retCode = AEPutParamDesc(&theAppleEvent, keyDirectObject, &docDescList);
		if (retCode != noErr) goto bail;
		
		// this Apple event will not be sent but rather will be used
		// as a parameter to the LaunchApplication call, so coerce it
		// to the magic type typeAppParamters
		
		retCode = AECoerceDesc(&theAppleEvent, typeAppParameters, &launchParamDesc);
		if (retCode != noErr) goto bail;
		
		// finally, fill in the launch parameter block, including the
		// Apple event, and make the launch call
		
		HLock((Handle) launchParamDesc.dataHandle);
		
		parametersSize = AEGetDescDataSize(&launchParamDesc);
		parametersPtr = AppParametersPtr(NewPtr(parametersSize));
		AEGetDescData(&launchParamDesc, parametersPtr, parametersSize);
		launchParams.launchAppParameters = parametersPtr;
			
		launchParams.launchBlockID = extendedBlock;
		launchParams.launchEPBLength = extendedBlockLen;
		launchParams.launchFileFlags = launchNoFileFlags;
		launchParams.launchControlFlags = launchContinue;
		launchParams.launchAppSpec = (FSSpecPtr) applicationFSSpecPtr;

		retCode = LaunchApplication(&launchParams);
		
	bail:
		// dispose of everything that was allocated
		
		if (theAppleEvent.dataHandle != nil)	(void) AEDisposeDesc(&theAppleEvent);
		if (launchParamDesc.dataHandle != nil)	(void) AEDisposeDesc(&launchParamDesc);
		if (docDescList.dataHandle != nil) 		(void) AEDisposeDesc(&docDescList);
		if (docDesc.dataHandle != nil)			(void) AEDisposeDesc(&docDesc);
		if (launchParamDesc.dataHandle != nil)	(void) AEDisposeDesc(&launchParamDesc);
		if (docAlias != nil)					DisposeHandle((Handle) docAlias);
		if (parametersPtr != NULL)				DisposePtr(Ptr(parametersPtr));
		
		return retCode;
	}
}

#pragma mark -

bool MUtilities::IsValidFileSpec(FSSpec* spec)
{
	FInfo tempFileInfo;
	
	return !((spec->name[0] == 0 &&
			 spec->vRefNum == 0 &&
			 spec->parID == 0) ||
			FSpGetFInfo(spec, &tempFileInfo) != noErr);
}

void MUtilities::ResetFileSpec(FSSpec* spec)
{
	spec->name[0] = 0;
	spec->vRefNum = 0;
	spec->parID = 0;
}

pascal void MUtilities::NavEventHandler(NavEventCallbackMessage callBackSelector, NavCBRecPtr callBackParms, void *callBackUD)
{
#pragma unused (callBackSelector, callBackUD)
	switch (callBackSelector)
	{
		case kNavCBEvent:
			EventRecord*	eventPtr;
			eventPtr = callBackParms->eventData.eventDataParms.event;
			switch (eventPtr->what)
			{
				case activateEvt: // if the window isn't the dialog, then we tell the update function
				case updateEvt: //  to take care of it
					if(NavDialogRef(eventPtr->message) != callBackParms->context)
					{
						MWindowPtr	window;
						
						window = GetWindow(WindowPtr(eventPtr->message));
						
						if (window != NULL && window->GetWindow() == WindowPtr(eventPtr->message))
							window->Refresh();
					}
					break;
			}
			break;
	}
}

FSSpec MUtilities::GetFSSpecFromAEDesc(AEDesc desc)
{
	Ptr		data;
	AEDesc	coerceDesc = {typeNull, nil};
	int		size;
	bool	coerced = false;
	FSSpec	result;
	
	ResetFileSpec(&result);

	if (desc.descriptorType == typeFSS)
	{
		size = AEGetDescDataSize(&desc);
		data = NewPtr(size);
		
		AEGetDescData(&desc, data, size); // Descriptor is the type we want
	}
	else if (AECoerceDesc(&desc, typeFSS, &coerceDesc) == noErr) // Try to coerce to the desired type
	{
		coerced = true;
		size = AEGetDescDataSize(&coerceDesc);
		data = NewPtr(size);
		
		AEGetDescData(&coerceDesc, data, size); // Coercion succeeded
	}
	
	result = *(FSSpec*) data;	// Extract value from Handle
	
	DisposePtr(data);
	
	if (coerced)
		AEDisposeDesc(&coerceDesc);
		
	return result;
}

bool MUtilities::GetFileSpec(MType creator, MType fileType, Str255 message, FileFilterProcPtr filterFunction, FSSpec* spec)
{	
#if TARGET_API_MAC_CARBON
#pragma unused (filterFunction)
#endif
	if (NavServicesAvailable())
	{
		NavDialogOptions	dialogOptions;
		NavReplyRecord		reply;
		AEDesc				resultDesc;
		NavTypeListHandle	typeList;
		OSErr				err;
		NavEventUPP			eventUPP;
		
		NavGetDefaultDialogOptions (&dialogOptions);
		dialogOptions.dialogOptionFlags -= kNavAllowMultipleFiles;
		dialogOptions.dialogOptionFlags += kNavNoTypePopup;
		dialogOptions.dialogOptionFlags -= kNavAllowPreviews;
		BlockMoveData(message, dialogOptions.message, 256);
		
		if (creator == '****' && fileType == '****')
		{
			typeList = NULL;
			dialogOptions.dialogOptionFlags += kNavAllowInvisibleFiles;
		}
		else
		{
			typeList = (NavTypeListHandle)NewHandleClear(sizeof(NavTypeList));
			(**typeList).componentSignature = creator;
			(**typeList).osTypeCount = 1;
			(**typeList).osType[0] = fileType;
		}
		
		eventUPP = NewNavEventUPP(MUtilities::NavEventHandler);
		
		err = NavGetFile(NULL,
						 &reply,
						 &dialogOptions,
						 eventUPP,
						 NULL,
						 NULL,
						 typeList,
						 NULL);
		
		DisposeNavEventUPP(eventUPP);
		
		if (reply.validRecord)
		{
			AEGetNthDesc( &(reply.selection), 1, typeFSS, NULL, &resultDesc );
			
			*spec = GetFSSpecFromAEDesc(resultDesc);
			
			NavDisposeReply(&reply);
			AEDisposeDesc(&resultDesc);
			return IsValidFileSpec(spec);
		}
		else
		{
			NavDisposeReply(&reply);
			return false;
		}
	}
#if !TARGET_API_MAC_CARBON
	else
	{
		StandardFileReply	reply;
		SFTypeList			typeList;
		FileFilterUPP fileFilter;
	
		if (filterFunction != NULL)
			fileFilter = NewFileFilterProc(filterFunction);
		else
			fileFilter = NULL;
		
		typeList[0] = fileType;
		
		if (fileType != '****')
			StandardGetFile(fileFilter, 1, typeList, &reply);
		else
			StandardGetFile(fileFilter, -1, typeList, &reply);
		
		
		if (fileFilter != NULL)
			DisposeRoutineDescriptor(fileFilter);
		
		if ( reply.sfGood)
		{
			*spec = reply.sfFile;
			return true;
		}
		return false;
	}
#endif
	return false;
}

bool MUtilities::NewFileSpec(FSSpec* spec)
{
	if (NavServicesAvailable())
	{
		NavDialogOptions	dialogOptions;
		NavReplyRecord		reply;
		AEDesc				resultDesc;
		OSStatus			theErr;
		
		
		NavGetDefaultDialogOptions ( &dialogOptions );
		dialogOptions.dialogOptionFlags -= kNavAllowMultipleFiles;
		dialogOptions.dialogOptionFlags += kNavNoTypePopup;
		dialogOptions.dialogOptionFlags -= kNavAllowPreviews;
		
		theErr = NavPutFile(NULL,	// use system's default location
				   &reply,
				   &dialogOptions,
				   NULL,
				   '****',
				   '****',
				   NULL);
						
		
		if (reply.validRecord)
		{
			AEGetNthDesc( &(reply.selection), 1, typeFSS, NULL, &resultDesc );
			
			*spec = GetFSSpecFromAEDesc(resultDesc);
			
			NavDisposeReply(&reply);
			AEDisposeDesc(&resultDesc);
			return IsValidFileSpec(spec);;
		}
		else
		{
			NavDisposeReply(&reply);
			return false;
		}
	}
#if !TARGET_API_MAC_CARBON
	else
	{
		StandardFileReply reply;

		StandardPutFile("\pSave file:", "\pUntitled", &reply);

		if ( reply.sfGood )
		{
			*spec = reply.sfFile;	
			return true;
		}
		return false;
	}
#endif
	return false;
}

#pragma mark -

// __________________________________________________________________________________________
// Name			: MUtilities::ChangeCursor
// Input		: ID: resource ID of the cursor which should be set
// Output		: None
// Description	: Sets the cursor to the required one, if necessary (first it compares the ID
//				  with the ID of the current cursor)

void MUtilities::ChangeCursor(short ID)
{
	if (!IsFrontProcess())
		return;
		
	if (currentCursor != ID) // if the cursor isn't already set to the new value
	{
		switch (ID)
		{
			case rArrow: Cursor arrow; GetQDGlobalsArrow(&arrow); SetCursor(&arrow); break;
			case rIBeam: SetCursor(*GetCursor(iBeamCursor)); break;
			default:
				CCrsrHandle		cCursor;
				CursHandle		cursor;
				
				cCursor = GetCCursor(ID);
				if (cCursor != NULL)
				{
					SetCCursor(cCursor);
					DisposeCCursor(cCursor);
				}
				else
				{
					cursor = GetCursor(ID);
					if (cursor != NULL)
					{
						SetCursor(*cursor);
						//DisposeHandle((Handle)cursor);
					}
				}
				break;
			
		}
		currentCursor = ID; // and we change the current cursor	
	}
	
	cursorChanged = true;
}

int MUtilities::GetCurrentCursor()
{
	return currentCursor;
}

void MUtilities::ResetCursor()
{
	int temp;
	
	InitCursor();
	
	temp = currentCursor;
	
	currentCursor = rArrow;
	
	ChangeCursor(temp);
}

bool MUtilities::CursorChanged()
{
	return cursorChanged;
}

void MUtilities::ResetCursorChanged()
{
	cursorChanged = false;
}

#pragma mark -

bool MUtilities::ScrapHasFlavor(ScrapFlavorType flavorType)
{
	long		size;
	
#if TARGET_API_MAC_CARBON
	ScrapRef	currentScrap;	
	OSStatus	err;
	
	GetCurrentScrap(&currentScrap);
	
	err = GetScrapFlavorSize(currentScrap, flavorType, &size);
	
	return (size > 0 && err == noErr);
#else
	Handle		temp;
	long		offset = 0;
	temp = NewHandle(0);
	size = ::GetScrap(temp, flavorType, &offset);
	
	DisposeHandle(temp);
	
	return (size > 0);
#endif
}

long MUtilities::GetScrap(Handle data, ScrapFlavorType flavorType, long* offset)
{
#if TARGET_API_MAC_CARBON
#pragma unused (offset)
	ScrapRef	currentScrap;
	long		size;
	OSStatus	err;
	
	GetCurrentScrap(&currentScrap);
	
	err = GetScrapFlavorSize(currentScrap, flavorType, &size);
	
	if (err == noErr && size >= 0)
	{
		if (data != NULL)
			DisposeHandle(data);
			
		data = NewHandleClear(size);
		
		GetScrapFlavorData(currentScrap, flavorType, &size, *data);
	}
	
	return size;
	
#else
	return ::GetScrap(data, flavorType, offset);
#endif
}

OSStatus MUtilities::ZeroScrap()
{
#if TARGET_API_MAC_CARBON
	return ::ClearCurrentScrap();
#else
	return ::ZeroScrap();
#endif
}

OSStatus MUtilities::PutScrap(long size, ScrapFlavorType flavorType, const void* data)
{
#if TARGET_API_MAC_CARBON
	ScrapRef	currentScrap;
	
	GetCurrentScrap(&currentScrap);
	
	return PutScrapFlavor(currentScrap, flavorType, kScrapFlavorMaskNone, size, data);
#else
	return ::PutScrap(size, flavorType, data);
#endif
}

#pragma mark-

PixPatHandle MUtilities::GetDesktopPattern()
{
#if TARGET_API_MAC_CARBON
	PixPatHandle	pixPat;
	RGBColor		macOSXBlueAsRGB = {16705, 26985, 43690};
	
	pixPat = NewPixPat();
	MakeRGBPat(pixPat, &macOSXBlueAsRGB);
	
	return pixPat;
/*
	Collection		theme;
	long			patternSize, pixMapSize, colorDataSize, pixelDataSize;
	PixPatHandle	patternData, actualPattern;
	PixMapHandle	patMap;
	Handle			patData;
	CTabHandle		colorData;
	
	theme = NewCollection();
	
	GetTheme(theme);
	GetCollectionItem(theme,
				      kThemeDesktopPatternTag,
				      kCollectionDontWantId,
				      &patternSize,
				      (void*)kCollectionDontWantData);
	patternData = PixPatHandle(NewHandleClear(patternSize));

	GetCollectionItem(theme,
					  kThemeDesktopPatternTag,
					  kCollectionDontWantId,
					  (long*)kCollectionDontWantSize,
					  *patternData);
	Str255 themeName;
	long themeNameSize = 255;
	GetCollectionItem(theme, kThemeNameTag, 0, &themeNameSize, &themeName);
	DEBUG(themeName);
	DisposeCollection(theme);
 
	DEBUG("\pgot pattern handle");

	HLock(Handle(patternData));
		
	actualPattern = NewPixPat();
	HLock(Handle(actualPattern));
	
	pixMapSize = (long)(**patternData).patData - (long)(**patternData).patMap;
	
	patMap = PixMapHandle(NewHandleClear(pixMapSize));
	HLock(Handle(patMap));
	BlockMoveData((char*)(*patternData) + (long)(**patternData).patMap, *patMap, pixMapSize);
	if ((**actualPattern).patMap != NULL)
		DisposeHandle(Handle((**actualPattern).patMap));
	(**actualPattern).patMap = patMap;
	
	DEBUG("\pset up pixmap");
	
	pixelDataSize = ((**patMap).bounds.bottom - (**patMap).bounds.top) * ((**patMap).rowBytes & 0x3FFF);
	colorDataSize = patternSize - (long)(**patternData).patData - pixelDataSize;
	
	Str255 temp;
	NumToString((long)patternSize, temp);
	DEBUG(temp);
	NumToString(colorDataSize, temp);
	DEBUG(temp);
	
	colorData = CTabHandle(NewHandleClear(colorDataSize));
	HLock(Handle(colorData));
	BlockMoveData((char*)(*patternData) + (long)(**patternData).patData + pixelDataSize, *colorData, colorDataSize);
	if ((**(**actualPattern).patMap).pmTable != NULL)
		DisposeHandle(Handle((**(**actualPattern).patMap).pmTable));
	(**(**actualPattern).patMap).pmTable = colorData;
	
	DEBUG("\pset up color data");
	
	patData = NewHandleClear(pixelDataSize);
	HLock(Handle(patData));
	BlockMoveData((char*)(*patternData) + (long)(**patternData).patData, *patData, pixelDataSize);
	if ((**actualPattern).patData != NULL)
		DisposeHandle(Handle((**actualPattern).patData));
	(**actualPattern).patData = patData;
	
	DEBUG("\pset up pixel data");
	
	PixPatChanged(actualPattern);
	
	HUnlock(Handle(patternData));
	DisposeHandle(Handle(patternData));
	
	HUnlock(Handle(actualPattern));
	
	DEBUG("\pall done with getting the pattern");
	
	return actualPattern;
	*/
#else
	return LMGetDeskCPat();
#endif
}

void MUtilities::DoneWithDesktopPattern(PixPatHandle pattern)
{
#if TARGET_API_MAC_CARBON
	DEBUG("\pabout to dispose the pattern");
	DisposePixPat(pattern);
	DEBUG("\pdone disposing");
#else
#pragma unused(pattern)
#endif
}

#pragma mark -

void MUtilities::GetMouseLocation(CGrafPtr port, Point* location)
{
#if TARGET_API_MAC_CARBON
	MouseTrackingResult result;
	
	TrackMouseLocation(port, location, &result);
#else
	SAVEGWORLD; // we'll be changing the port
		
	SetPort(GrafPtr(port));
		
	GetMouse(location); // in terms of the window
	
	RESTOREGWORLD;
#endif
}

int MUtilities::CountVisibleMenuItems(MenuRef menu)
{
	int total;
	
	total = CountMenuItems(menu);
	
#if TARGET_API_MAC_CARBON
	MenuItemAttributes attributes;
	int count = 0;
	
	for (int i=1; i <= total; i++)
	{
		GetMenuItemAttributes(menu, i, &attributes);
		if (!(attributes & kMenuItemAttrHidden))
			count++;
	}
	
	return count;
#else
	return total;
#endif
}

Rect MUtilities::GetUsableScreenRect()
{
	Rect			usableRect;
	GDHandle		mainScreen;
		
	mainScreen = GetMainDevice();
	
#if TARGET_API_MAC_CARBON
	GetAvailableWindowPositioningBounds(mainScreen, &usableRect);
#else
	
	usableRect = (**mainScreen).gdRect;
	usableRect.top += GetMBarHeight();
#endif

	return usableRect;
}

#pragma mark -

MSounds::MSounds()
{
	;
}

bool MSounds::SoundsSupported()
{
	/*MUtilities::GestaltVersion(gestaltSystemVersion, 0x08, 0x50));*/
	return (MUtilities::GestaltVersion(gestaltAppearanceVersion, 0x01, 0x10));
}


void MSounds::Start(MType sound)
{
	if (SoundsSupported())
		BeginThemeDragSound(sound);
}

void MSounds::End()
{
	if (SoundsSupported())
		EndThemeDragSound();
}

void MSounds::Play(MType sound)
{
	if (SoundsSupported())
		PlayThemeSound(sound);
}
