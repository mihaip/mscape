// __________________________________________________________________________________________
// Program		: Meshroom
// Filename		: MUtilities.cpp
// Author		: Mihai Parparita (St. Mary's International School)
// Last modified: April 1, 2000
// Description	: implementation of common utility functions

#include "MUtilities.h"
#include "MWindow.h"
#include "MAlert.h"
#include "MIcon.h"
#if !PROJECTBUILDER
#include <CFBundle.h>
#endif

MIcon* MUtilities::applicationIcon = NULL;
bool MUtilities::toolboxInited = false;
short MUtilities::currentCursor = rArrow;
bool MUtilities::cursorChanged = false;

MSounds MUtilities::sounds;

const static int rNavFormatCustomItems = 6000;

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

bool MUtilities::GestaltQTVersion(int major, int revision)
{
	char			quickTimeVersion[4];
	
	if (Gestalt(gestaltQuickTimeVersion, (long *)quickTimeVersion) != noErr ||
		quickTimeVersion[0] < major ||
		(quickTimeVersion[0] == major && quickTimeVersion[1] < revision))
		return false;
	else
		return true;
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

short MUtilities::DisplayAlert(Str255 message, Str255 explanation,
							   Str255 button1, Str255 button2, Str255 button3,
							   int type, int position)
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
	
	if (explanation)
	{
		temp = explanation;
		alert.SetExplanation(temp);
	}
	
	if (type == kAlertStopAlert)
		alert.SetBeep(true);
	
	alert.SetType(type);
	
	alert.SetPosition(position);
	
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
	FSSpec				processSpec;
	
	GetCurrentProcess(&currentProcess);
	
#if TARGET_API_MAC_CARBON	
	FSRef		processRef;
	CFBundleRef	processBundle;
	CFURLRef	processURL;
	
	processBundle = CFBundleGetMainBundle();
	processURL = CFBundleCopyBundleURL(processBundle);
	CFURLGetFSRef(processURL, &processRef);
	
	FSGetCatalogInfo(&processRef, kFSCatInfoNone, NULL, NULL, &processSpec, NULL);
#else
	ProcessInfoRec		infoRec;
	
	infoRec.processInfoLength = sizeof(ProcessInfoRec);
	infoRec.processName = NULL;
	infoRec.processAppSpec = &processSpec;
	
	GetProcessInformation(&currentProcess, &infoRec);
#endif
	
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
	OSErr    	err = noErr;
	AEDesc      processDesc;
	AppleEvent  ae, aeReply;
	DescType	finderCreator = 'MACS';
	
	ae.descriptorType = aeReply.descriptorType = processDesc.descriptorType = typeNull;
	ae.dataHandle = aeReply.dataHandle = processDesc.dataHandle = nil;
         
	err = AECreateDesc(typeApplSignature, &finderCreator,sizeof(DescType),&processDesc); if (err != noErr) goto bail;
	
	err = AECreateAppleEvent(kAEFinderSuite, kAESync,&processDesc, kAutoGenerateReturnID,kAnyTransactionID,&ae); if (err != noErr) goto bail;

#if TARGET_API_MAC_CARBON
	AliasHandle		alias = NULL;
	
	err = NewAlias(NULL, &inFile, &alias); if (err != noErr) goto bail;
	
	HLock(Handle(alias));
	
	err = AEPutParamPtr(&ae,keyDirectObject,typeAlias,*alias,GetHandleSize(Handle(alias))); if (err != noErr) goto bail;

	HUnlock(Handle(alias));
#else	           
	err = AEPutParamPtr(&ae,keyDirectObject,typeFSS,&inFile,sizeof(inFile)); if (err != noErr) goto bail;
#endif

	err  = AESend(&ae,&aeReply, kAENoReply, kAENormalPriority, kAEDefaultTimeout,nil,nil); if (err != noErr) goto bail;

bail:
	if (processDesc.descriptorType != typeNull) AEDisposeDesc(&processDesc);
	if (ae.descriptorType != typeNull) AEDisposeDesc(&ae);
	if (aeReply.descriptorType != typeNull) AEDisposeDesc(&aeReply);
#if TARGET_API_MAC_CARBON
	if (alias) DisposeHandle(Handle(alias));
#endif
	
	return err;
}


OSErr MUtilities::AESendOpenDocEventToApp(ProcessSerialNumber *targetPSN, const FSSpec * documentFSSpecPtr)
{
	if (GestaltVersion(gestaltSystemVersion, 0x10, 0x00))
	{
		DisplayPAlert("\pThis function is not yet implemented on Mac OS X", "\pPlease contact Mihai.");
		return noErr;
	}
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
	//FInfo tempFileInfo;
	
	return !((spec->name[0] == 0 &&
			 spec->vRefNum == 0 &&
			 spec->parID == 0));
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

bool MUtilities::GetFileSpec(Str255 message, FileFilterProcPtr filterFunction, FSSpec* spec, MType creator, int fileTypeCount, const OSType fileTypes[])
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
		
		if (creator == '****' && fileTypes[0] == '****')
		{
			typeList = NULL;
			dialogOptions.dialogOptionFlags += kNavAllowInvisibleFiles;
		}
		else
		{
			typeList = (NavTypeListHandle)NewHandleClear(sizeof(NavTypeList) + sizeof(OSType) * (fileTypeCount - 1));
			(**typeList).componentSignature = creator;
			(**typeList).osTypeCount = fileTypeCount;
			for (int i=0; i < fileTypeCount; i++)
			{
				(**typeList).osType[i] = fileTypes[i];
				if (fileTypes[i] == 'APPL')
					dialogOptions.dialogOptionFlags |= kNavSupportPackages;
			}
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
		FileFilterUPP		fileFilter;
	
		if (filterFunction != NULL)
			fileFilter = NewFileFilterProc(filterFunction);
		else
			fileFilter = NULL;
		
		if (fileTypes[0] != '****')
			StandardGetFile(fileFilter, fileTypeCount, fileTypes, &reply);
		else
			StandardGetFile(fileFilter, -1, fileTypes, &reply);
		
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

bool MUtilities::GetFileSpec(MType creator, MType fileType, Str255 message, FileFilterProcPtr filterFunction, FSSpec* spec)
{
	return GetFileSpec(message, filterFunction, spec, creator, 1, &fileType);
}

#pragma mark -

typedef struct
{
	int		fileTypeCount;
	MType	*fileTypes;
} ChooseObjectsData;

bool MUtilities::GetObjects(Str255 prompt, FSSpec** specs, long *specCount, int fileTypeCount, const OSType fileTypes[])
{
	ChooseObjectsData	data;
	
	data.fileTypes = (unsigned long *)fileTypes;
	data.fileTypeCount = fileTypeCount;
	
	if (NavServicesAvailable())
	{
		NavDialogOptions	dialogOptions;
		NavReplyRecord		reply;
		AEDesc				resultDesc;
		OSErr				err;
		NavEventUPP			eventUPP;
		NavObjectFilterUPP	filterUPP;
		
		NavGetDefaultDialogOptions (&dialogOptions);
		dialogOptions.dialogOptionFlags += kNavNoTypePopup;
		dialogOptions.dialogOptionFlags -= kNavAllowPreviews;
		BlockMoveData(prompt, dialogOptions.message, 256);
		
		eventUPP = NewNavEventUPP(MUtilities::NavEventHandler);
		filterUPP = NewNavObjectFilterUPP(MUtilities::NavObjectsFileFilter);
		
		err = NavChooseObject(NULL,
							  &reply,
							  &dialogOptions,
							  eventUPP,
							  filterUPP,
							  &data);
							  
		DisposeNavEventUPP(eventUPP);
		DisposeNavObjectFilterUPP(filterUPP);
		
		if (reply.validRecord)
		{
			AECountItems(&reply.selection, specCount);
			
			*specs = new FSSpec[*specCount];
			
			for (int i=0; i < *specCount; i++)
			{
				AEGetNthDesc(&reply.selection, i + 1, typeFSS, NULL, &resultDesc);
			
				(*specs)[i] = GetFSSpecFromAEDesc(resultDesc);
				
				AEDisposeDesc(&resultDesc);
			}
			
			NavDisposeReply(&reply);
			return IsValidFileSpec(&(*specs)[0]);
		}
		else
		{
			NavDisposeReply(&reply);
			return false;
		}
	}
	else
		return false;
}

pascal Boolean MUtilities::NavObjectsFileFilter(AEDesc *theItem, void *info, void *callBackUD, NavFilterModes filterMode)
{
#pragma unused (filterMode)
	NavFileOrFolderInfo*	theInfo = (NavFileOrFolderInfo*)info;
	ChooseObjectsData*		data;
	
	data = (ChooseObjectsData*)callBackUD;
	
	if (theItem->descriptorType == typeFSS && !theInfo->isFolder)
	{
		for (int i=0; i < data->fileTypeCount; i++)
			if (theInfo->fileAndFolder.fileInfo.finderInfo.fdType == data->fileTypes[i])
				return true;
				
		return false;
	}
	
	return true;
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

bool MUtilities::NewFileSpecWithFormats(Str255 prompt, Str255 currentName, Str255 formatPopupLabel,
										int formatCount, Str255 formats[], Str255 extensions[], int options,
										FSSpec* spec, int* format)
{
	if (NavServicesAvailable())
	{
		NavDialogOptions	dialogOptions;
		NavReplyRecord		reply;
		AEDesc				resultDesc;
		NavEventUPP			eventUPP = NewNavEventUPP(MUtilities::NavFormatsEventHandler);
		FormatsSaveData		saveData;
		OSErr				err;
		
		saveData.formatsCount = formatCount;
		saveData.formats = formats;
		saveData.extensions = extensions;
		saveData.chosenFormat = *format;
		saveData.formatPopup = NULL;
		CopyString(saveData.formatPopupLabel, formatPopupLabel);
		saveData.customItems = NULL;
		saveData.forceExtension = options & kForceExtension;
		
		NavGetDefaultDialogOptions(&dialogOptions );
		dialogOptions.dialogOptionFlags &= ~(kNavAllowMultipleFiles | kNavAllowPreviews);
		dialogOptions.dialogOptionFlags |= (kNavNoTypePopup | kNavSupportPackages | kNavAllowOpenPackages);
		CopyString(dialogOptions.savedFileName, currentName);
		CopyString(dialogOptions.message, prompt);
		
		if (options & kNewFolder)
			dialogOptions.dialogOptionFlags |= kNavDontConfirmReplacement;
		
		/*if (options & kPutFile)*/
			err = NavPutFile(NULL,
					   		 &reply,
					   		 &dialogOptions,
					   		 eventUPP,
					   		 '****',
					   		 '****',
					   		 &saveData);
		/*else if (options & kNewFolder)
			err = NavNewFolder(NULL,
							   &reply,
							   &dialogOptions,
							   eventUPP,
							   &saveData);*/
		
		DisposeNavEventUPP(eventUPP);
		
		if (err == noErr)
		{	
			if (reply.validRecord)
			{
				*format = saveData.chosenFormat;
				
				AEGetNthDesc( &(reply.selection), 1, typeFSS, NULL, &resultDesc );

				*spec = GetFSSpecFromAEDesc(resultDesc);
				
				NavDisposeReply(&reply);
				AEDisposeDesc(&resultDesc);
				
				return true;
			}
			else
			{
				NavDisposeReply(&reply);
				return false;
			}
		}
		else
			return false;
	}
	else
		return false;
}

pascal void MUtilities::NavFormatsEventHandler(NavEventCallbackMessage callBackSelector, 
											   NavCBRecPtr callBackParms, 
											   NavCallBackUserData callBackUD)
{
	OSErr				theErr = noErr;
	FormatsSaveData*	saveData;
	DialogPtr			navDialog;
	
	saveData = (FormatsSaveData*)callBackUD;
	navDialog = GetDialogFromWindow(callBackParms->window);

	switch (callBackSelector)
	{
		case kNavCBEvent:
			switch (callBackParms->eventData.eventDataParms.event->what)
			{
				case mouseDown:
					Point 			where;
					short 			partCode;
					ControlHandle	clickedControl;
					
					where = callBackParms->eventData.eventDataParms.event->where;
					
					GlobalToLocal(&where);
					partCode = FindControl(where, callBackParms->window, &clickedControl);	// get the control itself
					
					if (clickedControl == saveData->formatPopup && clickedControl != NULL)
						SyncNameToFormatPopup(callBackParms, saveData);
					break;
				case keyUp: // keyUp seems to be required for OS X, keyDown isn't passed on
				case keyDown: // on the other hand, OS 9's Nav. Services only give us keyDown
					SyncFormatPopupToName(callBackParms, saveData);
					break;
				default:
					NavEventHandler(callBackSelector, callBackParms, callBackUD);
					break;
			}
			break;
		case kNavCBCustomize:
							
			// here are the desired dimensions for our custom area:
			short neededWidth = callBackParms->customRect.left + 260;
			short neededHeight = callBackParms->customRect.top + 30;
			
			// check to see if this is the first round of negotiations:
			if ((callBackParms->customRect.right == 0) && (callBackParms->customRect.bottom == 0))
			{
				// it is, so tell NavServices what dimensions we want:
				callBackParms->customRect.right = neededWidth;
				callBackParms->customRect.bottom = neededHeight;
			}
			else
			{
				if (callBackParms->customRect.right < neededWidth)	// is NavServices width too small for us?
					callBackParms->customRect.right = neededWidth;

				if (callBackParms->customRect.bottom < neededHeight)
					callBackParms->customRect.bottom = neededHeight;
			}
			break;
			
		case kNavCBStart:
			// add the rest of the custom controls via the DITL resource list:
			saveData->customItems = GetResource('DITL', rNavFormatCustomItems);
			if (saveData->customItems != NULL &&
				ResError() == noErr &&
				NavCustomControl(callBackParms->context, kNavCtlAddControlList, saveData->customItems) == noErr)
			{
				UInt16	firstItem = 0;
				
				theErr = NavCustomControl(callBackParms->context, kNavCtlGetFirstControlID, &firstItem);
				GetDialogItemAsControl(navDialog, firstItem + 1, &saveData->formatPopup);
				
				InitializeFormatPopup(saveData);
				SyncNameToFormatPopup(callBackParms, saveData);
			}			
			break;
			
		case kNavCBTerminate:
			saveData->chosenFormat = GetControlValue(saveData->formatPopup) - 1;
			if (saveData->customItems)
				ReleaseResource(saveData->customItems);
			break;
	}
}

void MUtilities::InitializeFormatPopup(FormatsSaveData* saveData)
{
	MenuHandle typesMenu;
	
	typesMenu = GetControlPopupMenuHandle(saveData->formatPopup);
	
	for (int i=0; i < saveData->formatsCount; i++)
		InsertMenuItem(typesMenu, saveData->formats[i], i);
	
	SetControlTitle(saveData->formatPopup, saveData->formatPopupLabel);
	SetControlMaximum(saveData->formatPopup, saveData->formatsCount);
	SetControlValue(saveData->formatPopup, saveData->chosenFormat + 1);
}

void MUtilities::SyncNameToFormatPopup(NavCBRecPtr callBackParms, FormatsSaveData* saveData)
{
	if (saveData->forceExtension && saveData->formatPopup != NULL)
	{
		Str255 fileName;
		
		NavCustomControl(callBackParms->context, kNavCtlGetEditFileName, &fileName);
		
		SetFileExtension(fileName, saveData->extensions[GetControlValue(saveData->formatPopup) - 1]);
		
		NavCustomControl(callBackParms->context, kNavCtlSetEditFileName, &fileName);
	}
}

void MUtilities::SyncFormatPopupToName(NavCBRecPtr callBackParms, FormatsSaveData* saveData)
{
	if (saveData->forceExtension && saveData->formatPopup != NULL)
	{
		Str255 fileName;
		
		NavCustomControl(callBackParms->context, kNavCtlGetEditFileName, &fileName);
		
		for (int i=0; i < saveData->formatsCount; i++)
			if (FileHasExtension(fileName, saveData->extensions[i]))
			{
				SetControlValue(saveData->formatPopup, i + 1);
				Draw1Control(saveData->formatPopup);
				break;
			}
	}
}

#pragma mark -

bool MUtilities::FileHasExtension(Str255 name, const Str255 extension)
{
	int i, j;
	Str255 fullExtension = "\p.";
	
	AppendString(fullExtension, (unsigned char*)(extension));
	
	for (i=name[0], j=fullExtension[0]; i > 0 && j > 0; i--, j--)
		if (name[i] != fullExtension[j] &&
			abs(name[i] - fullExtension[j]) != abs('A' - 'a'))
			return false;
			
	return (j==0);
}

void MUtilities::StripExtension(Str255 name)
{
	for (int i=name[0]; i > 0 && name[i] != ' '; i--)
		if (name[i] == '.')
		{
			name[0] = i - 1;
			break;
		}
}

void MUtilities::SetFileExtension(Str255 name, const Str255 extension)
{
	// strip the current extension, if any
	StripExtension(name);
		
	// append the new one
	AppendString(name, "\p.");
	AppendString(name, (unsigned char*)(extension));
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
					else if (GestaltVersion(gestaltAppearanceVersion, 0x01, 0x10))
						SetThemeCursor(ID);
						
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
	UInt32				modifiers;
	
	TrackMouseLocationWithOptions(port, 0, kEventDurationMillisecond * 200, location, &modifiers, &result);	
	/*
	switch(result)
	{
		case kMouseTrackingMousePressed: DebugStr("\pkMouseTrackingMousePressed"); break;
  		case kMouseTrackingMouseReleased: DebugStr("\pkMouseTrackingMouseReleased"); break;
  		case kMouseTrackingMouseExited: DebugStr("\pkMouseTrackingMouseExited"); break;
  		case kMouseTrackingMouseEntered: DebugStr("\pkMouseTrackingMouseEntered"); break;
  		case kMouseTrackingMouseMoved: DebugStr("\pkMouseTrackingMouseMoved"); break;
  		case kMouseTrackingKeyModifiersChanged: DebugStr("\pkMouseTrackingKeyModifiersChanged"); break;
 		case kMouseTrackingUserCancelled: DebugStr("\pkMouseTrackingUserCancelled"); break;
 		case kMouseTrackingTimedOut: DebugStr("\pkMouseTrackingTimedOut"); break;
	}
	*/
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

/*OSErr Mutilities::QTCopyAtomContainer(QTAtomContainer source, QTAtomContainer* dest)
{
	short		childrenCount;
	QTAtomType	currentChildType = ;
	QTAtomID	currentChildID;
	
	QTNewAtomContainer(dest);
	
	while (currentChildType = QTGetNextChildType(source, kParentAtomIsContainer, currentChildType))
	{
		childrenCount = QTCountChildrenOfType(source, kParentAtomIsContainer, currentChildType);
		
		for (int i=1; i <= childrenCount; i++)
		{
			QTFindChildByIndex(source, kParentAtomIsContainer, currentChildType, i, &currentChildID);
			QTCopyAtom(source, 	
		}
	}
}*/

pascal void MUtilities::ApplicationIconDraw(ControlHandle iconControl, SInt16 controlPart)
{
#pragma unused (controlPart)
	Rect		iconBounds;
	
	if (!applicationIcon)
	{
		applicationIcon = new MIcon;

		applicationIcon->format = formatMacOSUniversal;
		applicationIcon->file.SetAssociatedFile(MUtilities::GetCurrentProcessSpec());
		applicationIcon->LoadFileIcon();
	}
	
	GetControlBounds(iconControl, &iconBounds);
	
	applicationIcon->Display(iconBounds, false);
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
