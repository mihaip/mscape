#include "iconmangler.h"

enum
{
	kNavOpen = 1,
	kNavSelect = 7,
	
	kReturnKeyCode = 0x24,
	kEnterKeyCode = 0x4C
};

typedef struct
{
	long			format;
	ControlHandle	formatPopup;
	bool			save;
} SaveDataStruct;

OSErr GetIconFile(FSSpec* fileSpec, long* format, bool save)
{
	OSErr			returnErr = noErr;
	SaveDataStruct	saveData;
	
	saveData.formatPopup = NULL;
	saveData.format = *format;
	saveData.save = save;
	
	MWindow::DeactivateAll();
	
	if (NavServicesAvailable())
	{
		NavReplyRecord		reply;
		NavDialogOptions	dialogOptions;
		NavEventUPP			eventUPP = NewNavEventUPP(NavOpenEventFilter);
		NavObjectFilterUPP	filterUPP = NewNavObjectFilterUPP(NavOpenFileFilter);
		Str255				openPromptText;
		Str255				windowTitle;
		
		returnErr = NavGetDefaultDialogOptions(&dialogOptions);
		
		dialogOptions.preferenceKey = 'MnOp';
		
		dialogOptions.dialogOptionFlags &= ~kNavAllowMultipleFiles;
		dialogOptions.dialogOptionFlags |= (kNavNoTypePopup | kNavAllowPreviews | kNavSupportPackages | kNavAllowOpenPackages);
		
		if (save)
			GetIndString(windowTitle, rPrompts, eInsertTitle);
		else
			GetIndString(windowTitle, rPrompts, eOpenTitle); // we get the prompt string
		CopyString(dialogOptions.windowTitle, windowTitle);
		
		if (save)
			GetIndString(openPromptText, rPrompts, eSaveIntoFile); // we get the prompt string
		else
			GetIndString(openPromptText, rPrompts, eSelectFile);
		CopyString(dialogOptions.message, openPromptText);
		
		returnErr = NavChooseObject(NULL,
									&reply,
									&dialogOptions,
									eventUPP,
									filterUPP,
									&saveData);
		
		DisposeNavEventUPP(eventUPP);
		DisposeNavObjectFilterUPP(filterUPP);

		if (returnErr == noErr)
		{
			*format = saveData.format;
			
			if (reply.validRecord)
			{
				AEDesc resultDesc;
				AEGetNthDesc( &(reply.selection), 1, typeFSS, NULL, &resultDesc );

				GetFSSpecFromAEDesc(resultDesc, *fileSpec);
				
				AEDisposeDesc(&resultDesc);
			}
			else
				returnErr = paramErr;
		}
		else
			returnErr = paramErr;
			
		NavDisposeReply(&reply);
	}
#if !TARGET_API_MAC_CARBON
	else
	{
		Point				thePt = {-1, -1};
		StandardFileReply	theReply;
		FileFilterYDUPP 	fileFilterUPP;
		DlgHookYDUPP		dialogHookUPP;
		ModalFilterYDUPP	modalFilterUPP;
		SFTypeList			typeList;

		fileFilterUPP = NewFileFilterYDProc(OpenFileFilter);
		dialogHookUPP = NewDlgHookYDProc(OpenDialogHook);
		modalFilterUPP = NewModalFilterYDProc(OpenEventFilter);
		
		CustomGetFile(fileFilterUPP, 
					  -1,					// show all types
					  typeList,
					  &theReply,
					  rOldOpenDialog,
					  thePt,				// top left point
					  dialogHookUPP,
					  modalFilterUPP,
					  NULL,				// activate list
					  NULL,				// activate proc
					  &saveData);
					  
		*format = saveData.format;
		
		DisposeRoutineDescriptor(fileFilterUPP);
		DisposeRoutineDescriptor(dialogHookUPP);
		DisposeRoutineDescriptor(modalFilterUPP);
		
		if ( theReply.sfGood)
			*fileSpec = theReply.sfFile;
		else
			returnErr =  userCanceledErr;
	}
#endif
	
	MWindow::ActivateAll();

	return returnErr;
}

pascal Boolean OpenFileFilter(CInfoPBPtr myCInfoPBPtr, void* dataPtr)
{
	bool			visibleFlag = true;		
	SaveDataStruct*	saveData;
	
	saveData = (SaveDataStruct*)dataPtr;

	// return true if this item is invisible;
	
	if ((myCInfoPBPtr->hFileInfo.ioFlAttrib & ioDirMask) != 0)
		visibleFlag = true;
	else if (myCInfoPBPtr->hFileInfo.ioFlFndrInfo.fdFlags & kIsInvisible)
		visibleFlag = false;
	else if (saveData->save)
		visibleFlag = true;
	else
	{
		FSSpec			file;
			
		FSMakeFSSpec(myCInfoPBPtr->hFileInfo.ioVRefNum,
								 myCInfoPBPtr->hFileInfo.ioFlParID,
								 myCInfoPBPtr->hFileInfo.ioNamePtr,
								 &file);
		
		visibleFlag = FilterIconFile(file, GetControlValue(saveData->formatPopup));
	}
	
	// because the semantics of the filter proc are "true means don't show
	// it" we need to invert the result that we return
	
	return !visibleFlag;
}

// MyDlgHook is a hook routine that maps the select button to Open
// and sets the Select button name

pascal short OpenDialogHook(short item, DialogPtr theDlgPtr, void* dataPtr)
{
#pragma unused (dataPtr)
	// be sure Std File is really showing us the intended dialog,
	// not a nested modal dialog
	
	if (GetWRefCon(GetDialogWindow(theDlgPtr)) != sfMainDialogRefCon)
	{
		return item;
	}
	
	// map the Select button to Open
	
	if (item == iOpenSelect + 1)
	{
		item = sfItemOpenButton;
	}
	else if (item == iOpenFormatPopup + 1)
	{
		item = sfHookRebuildList;
	}
	
	return item;
}

pascal Boolean OpenEventFilter(DialogPtr theDlgPtr, EventRecord* eventPtr, short *item, void* dataPtr)
{
#pragma unused (item)
	SaveDataStruct* saveData;
	bool handledEvent = false;

	saveData = (SaveDataStruct*)dataPtr;

	if (saveData->formatPopup == NULL)
	{
		short itemType;
		Rect itemRect;
		Str255	promptText;
		Handle prompt;
		MenuHandle typesMenu;
		
		GetDialogItem(theDlgPtr, iOpenFormatPopup + 1, &itemType, (Handle*)&saveData->formatPopup, &itemRect);
		SetControlValue(saveData->formatPopup, saveData->format);
		typesMenu = GetControlPopupMenuHandle(saveData->formatPopup);
		
		if (saveData->save)
		{
			if (typesMenu != NULL)
			{
				DisableMenuItem(typesMenu, formatWindows);
				DisableMenuItem(typesMenu, formatMacOSXServer);
				DisableMenuItem(typesMenu, formatMacOSX);
			}
			
			SetControlValue(saveData->formatPopup, saveData->format);
			
			GetIndString(promptText, rPrompts, eSaveIntoFile); // we get the prompt string
		}
		else
		{
			Str255 tempString;
			
			InsertMenuItem(typesMenu, "\p-", formatMacOSXServer);
			GetIndString(tempString, rFormatStrings, sAllFormats);
			InsertMenuItem(typesMenu, tempString, formatMacOSXServer + 1);
			
			SetControlMaximum(saveData->formatPopup, GetControlMaximum(saveData->formatPopup) + 2);
			
			SetControlValue(saveData->formatPopup, formatAll);
			GetIndString(promptText, rPrompts, eSelectFile);	
		}
		
		GetDialogItem(theDlgPtr, iOpenPrompt + 1, &itemType, &prompt, &itemRect);
		SetDialogItemText(prompt, promptText);
	}
	else
	{
		saveData->format = GetControlValue(saveData->formatPopup);
	}
	
	switch (eventPtr->what)
	{
		case activateEvt: // if the window isn't the dialog, then we tell the update function
		case updateEvt: //  to take care of it
			if((DialogPtr) eventPtr->message != theDlgPtr)
			{
				HandleUpdate(eventPtr);
				handledEvent = true;
			}
			break;
		default:
			handledEvent = false;
			break;
	}
	
	return handledEvent;
}

OSErr SaveFile(FSSpec* fileSpec, long* format)
{
	SaveDataStruct	saveData;
	OSErr			returnErr = noErr;
	
	MWindow::DeactivateAll();
	
	saveData.formatPopup = NULL;
	saveData.format = *format;
	saveData.save = true;
	
	if (NavServicesAvailable())
	{
		NavDialogOptions	dialogOptions;
		NavReplyRecord		reply;
		AEDesc				resultDesc;
		NavEventUPP			eventUPP = NewNavEventUPP(NavSaveEventFilter);
		long				fileType;
		
		NavGetDefaultDialogOptions ( &dialogOptions );
		dialogOptions.dialogOptionFlags &= ~(kNavAllowMultipleFiles | kNavAllowPreviews);
		dialogOptions.dialogOptionFlags |= (kNavNoTypePopup | kNavSupportPackages | kNavAllowOpenPackages);
		CopyString(dialogOptions.savedFileName, fileSpec->name);
		GetIndString((unsigned char*)&dialogOptions.message, rPrompts, eSaveFile);
		
		fileType = iconFormats[*format];
		
		returnErr = NavPutFile(NULL,
					   		   &reply,
					   		   &dialogOptions,
					   		   eventUPP,
					   		   fileType,
					   		   creatorCode,
					   		   &saveData);
		
		DisposeNavEventUPP(eventUPP);
		
		if (returnErr == noErr)
		{	
			if (reply.validRecord)
			{
				*format = saveData.format;
				
				AEGetNthDesc( &(reply.selection), 1, typeFSS, NULL, &resultDesc );

				GetFSSpecFromAEDesc(resultDesc, *fileSpec);
				
				NavDisposeReply(&reply);
				AEDisposeDesc(&resultDesc);
			}
			else
			{
				NavDisposeReply(&reply);
				returnErr = paramErr;
			}
		}
	}
#if !TARGET_API_MAC_CARBON
	else
	{
		Str255	prompt;
		Point	thePt = {-1, -1};
		StandardFileReply reply;
		ModalFilterYDUPP	modalFilterUPP;
		
		GetIndString((unsigned char*)prompt, rPrompts, eSaveFile);
		
		modalFilterUPP = NewModalFilterYDProc(SaveEventFilter);
		
		CustomPutFile(prompt,
					  fileSpec->name,
					  &reply,
					  rOldSaveDialog,
					  thePt,
					  NULL,
					  modalFilterUPP,
					  NULL,
					  NULL,
					  &saveData);
					  
		DisposeRoutineDescriptor(modalFilterUPP);
		
		if (reply.sfGood)
		{
			*format = saveData.format;
			*fileSpec = reply.sfFile;
		}
		else
			returnErr = userCanceledErr;
	}
#endif
	
	MWindow::ActivateAll();
	
	return returnErr;
}

pascal void NavOpenEventFilter(NavEventCallbackMessage callBackSelector,
						   NavCBRecPtr callBackParms, 
						   NavCallBackUserData callBackUD)
{
	OSErr			theErr = noErr;
	ControlHandle	formatPopup;
	UInt16			firstItem = 0;
	Handle			customItems;
	MenuHandle		typesMenu;
	char			quickTimeVersion[4];
	AEDesc			location;
	SaveDataStruct*	saveData;
	DialogPtr		navDialog;
	
	saveData = (SaveDataStruct*)callBackUD;		
	navDialog = GetDialogFromWindow(callBackParms->window);

	switch (callBackSelector)
	{
		case kNavCBEvent:
			switch (callBackParms->eventData.eventDataParms.event->what)
			{
				case mouseDown:
					Point where;
					short theItem, partCode;
					
					where = callBackParms->eventData.eventDataParms.event->where;
					
					GlobalToLocal(&where);
					theItem = FindDialogItem(navDialog, where);	// get the item number of the control
					partCode = FindControl(where,callBackParms->window,&formatPopup);	// get the control itself
					
					saveData->formatPopup = formatPopup;
					
					if (formatPopup != NULL)
					{
						NavCustomControl(callBackParms->context, kNavCtlGetLocation, &location);
						NavCustomControl(callBackParms->context, kNavCtlSetLocation, &location);
					}
					break;
				/*case keyDown:
					switch (callBackParms->eventData.eventDataParms.event->message & charCodeMask)
					{
						case kReturnCharCode:
						case kEnterCharCode:
							NavCustomControl(callBackParms->context, kNavCtlAccept, NULL);
							break;
					}
					break;*/
				case activateEvt:
				case updateEvt:
					HandleUpdate(callBackParms->eventData.eventDataParms.event);
					break;
			}
			break;
		case kNavCBCustomize:						
			// here are the desired dimensions for our custom area:
			short neededWidth = callBackParms->customRect.left + 260;
			short neededHeight = callBackParms->customRect.top + 5;
			
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
			customItems = GetResource('DITL', rNavCustomItems);
			if (customItems != NULL && ResError() == noErr)
				if (NavCustomControl(callBackParms->context, kNavCtlAddControlList, customItems) == noErr)
				{
					theErr = NavCustomControl(callBackParms->context, kNavCtlGetFirstControlID, &firstItem);
					GetDialogItemAsControl(navDialog, firstItem + 1, &formatPopup);
					
					SetControlReference(formatPopup, (SInt32)customItems);
					
					saveData->formatPopup = formatPopup;
					
					if (Gestalt(gestaltQuickTimeVersion, (long *)quickTimeVersion) != noErr ||
						quickTimeVersion[0] < 4)
					{
						typesMenu = GetControlPopupMenuHandle(formatPopup);
						if (typesMenu != NULL)
							DisableMenuItem(typesMenu, formatMacOSXServer);
					}
					
					typesMenu = GetControlPopupMenuHandle(formatPopup);
					
					if (saveData->save)
					{
						if (typesMenu != NULL)
						{
							DisableMenuItem(typesMenu, formatWindows);
							DisableMenuItem(typesMenu, formatMacOSXServer);
						}
						SetControlValue(formatPopup, saveData->format);
					}
					else
					{
						if (typesMenu != NULL)
						{
							Str255 tempString;
							InsertMenuItem(typesMenu, "\p-", formatMacOSXServer);
							GetIndString(tempString, rFormatStrings, sAllFormats);
							InsertMenuItem(typesMenu, tempString, formatMacOSXServer + 1);
							SetControlMaximum(formatPopup, GetControlMaximum(formatPopup) + 2);
						}
						SetControlValue(formatPopup, formatAll);
					}
				}			
			break;
		case kNavCBTerminate:
			saveData->format = GetControlValue(saveData->formatPopup);
							
			customItems = (Handle)GetControlReference(saveData->formatPopup);
			ReleaseResource(customItems);
			break;
	}
}

pascal Boolean NavOpenFileFilter(AEDesc *theItem, void *info, void *callBackUD, NavFilterModes filterMode)
{
#pragma unused (filterMode)

	FSSpec					fileSpec;
	NavFileOrFolderInfo*	theInfo = (NavFileOrFolderInfo*)info;
	SaveDataStruct*			saveData;
	
	saveData = (SaveDataStruct*)callBackUD;
	
	if (theItem->descriptorType == typeFSS)
		if (!theInfo->isFolder && !saveData->save)
		{
			GetFSSpecFromAEDesc(*theItem, fileSpec);
			FSMakeFSSpec(fileSpec.vRefNum, fileSpec.parID, fileSpec.name, &fileSpec);
			if (saveData->formatPopup == NULL)
				return FilterIconFile(fileSpec, formatAll);
			else
				return FilterIconFile(fileSpec, GetControlValue(saveData->formatPopup));
		}
	
	return true;
}

pascal void NavSaveEventFilter(NavEventCallbackMessage callBackSelector, 
							   NavCBRecPtr callBackParms, 
							   NavCallBackUserData callBackUD)
{
	OSErr			theErr = noErr;
	ControlHandle	formatPopup;
	Str255			fileName;
	UInt16			firstItem = 0;
	Handle			customItems;
	MenuHandle		typesMenu;
	SaveDataStruct*	saveData;
	DialogPtr		navDialog;
	
	saveData = (SaveDataStruct*)callBackUD;
	navDialog = GetDialogFromWindow(callBackParms->window);

	switch (callBackSelector)
	{
		case kNavCBEvent:
			switch (callBackParms->eventData.eventDataParms.event->what)
			{
				case mouseDown:
					Point where;
					short theItem, partCode;
					
					where = callBackParms->eventData.eventDataParms.event->where;
					
					GlobalToLocal(&where);
					theItem = FindDialogItem(navDialog, where);	// get the item number of the control
					partCode = FindControl(where,callBackParms->window,&formatPopup);	// get the control itself
					
					if ((formatPopup != NULL))
					{
						NavCustomControl(callBackParms->context,kNavCtlGetEditFileName,&fileName);
						
						SetFileExtension(GetControlValue(formatPopup), fileName);
						
						NavCustomControl(callBackParms->context,kNavCtlSetEditFileName,&fileName);
					}
					break;
				case keyDown:
					NavCustomControl(callBackParms->context,kNavCtlGetFirstControlID,&firstItem);	// ask NavServices for our first control ID
					GetDialogItemAsControl(navDialog, firstItem + 1, &formatPopup);
					
					NavCustomControl(callBackParms->context,kNavCtlGetEditFileName,&fileName);
					
					SyncPopupToName(fileName, formatPopup);
					break;
				case activateEvt:
				case updateEvt:
					HandleUpdate(callBackParms->eventData.eventDataParms.event);
					break;
				default:
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
			customItems = GetResource('DITL', rNavCustomItems);
			if (customItems != NULL && ResError() == noErr)
				if (NavCustomControl(callBackParms->context, kNavCtlAddControlList, customItems) == noErr)
				{
					theErr = NavCustomControl(callBackParms->context, kNavCtlGetFirstControlID, &firstItem);
					GetDialogItemAsControl(navDialog, firstItem + 1, &formatPopup);
					
					saveData->formatPopup = formatPopup;
					
					SetControlReference(formatPopup, (SInt32)customItems);
					
					typesMenu = GetControlPopupMenuHandle(formatPopup);
					if (typesMenu != NULL)
						DisableMenuItem(typesMenu, formatMacOSXServer);
					
					NavCustomControl(callBackParms->context,kNavCtlGetEditFileName,&fileName);
					
					SetControlValue(formatPopup, saveData->format);
					
					NavCustomControl(callBackParms->context,kNavCtlGetEditFileName,&fileName);
						
					SetFileExtension(GetControlValue(formatPopup), fileName);
						
					NavCustomControl(callBackParms->context,kNavCtlSetEditFileName,&fileName);
				}			
			break;
			
		case kNavCBTerminate:
			saveData->format = GetControlValue(saveData->formatPopup);
			
			customItems = (Handle)GetControlReference(saveData->formatPopup);
			ReleaseResource(customItems);
			break;
	}
}

pascal Boolean SaveEventFilter(DialogPtr theDlgPtr, EventRecord* eventPtr, short *item, void* dataPtr)
{
#pragma unused (item)

	bool			handledEvent = false;
	ControlHandle	formatPopup, nameField;
	Str255			fileName;
	SaveDataStruct*	saveData;
	
	saveData = (SaveDataStruct*)dataPtr;
	
	if (saveData->formatPopup == NULL)
	{
		short itemType;
		Rect itemRect;
		
		GetDialogItem(theDlgPtr, iSaveFormatPopup + 1, &itemType, (Handle*)&saveData->formatPopup, &itemRect);
		SetControlValue(saveData->formatPopup, saveData->format);
		
		GetDialogItem(theDlgPtr, sfItemFileNameTextEdit, &itemType, (Handle*)&nameField, &itemRect);
			
		GetDialogItemText((Handle)nameField, fileName);
		
		SetFileExtension(GetControlValue(saveData->formatPopup), fileName);
		
		SetDialogItemText((Handle)nameField, fileName);
	}
	else
	{
		saveData->format = GetControlValue(saveData->formatPopup);
	}
	
	
	switch (eventPtr->what)
	{
		case activateEvt: // if the window isn't the dialog, then we tell the update function
		case updateEvt: //  to take care of it
			if((DialogPtr) eventPtr->message != theDlgPtr)
			{
				HandleUpdate(eventPtr);
				handledEvent = true;
			}
			break;
		case mouseDown:
			Point where;
			short theItem, partCode, itemType;
			Rect bounds;

			
			where = eventPtr->where;
			
			GlobalToLocal(&where);
			
			theItem = FindDialogItem(theDlgPtr, where);	// get the item number of the control
			partCode = FindControl(where, GetDialogWindow(theDlgPtr), &formatPopup);	// get the control itself
			
			//GetDialogItemAsControl(theDlgPtr, sfItemFileNameTextEdit, &nameField);
			GetDialogItem(theDlgPtr, sfItemFileNameTextEdit, &itemType, (Handle*)&nameField, &bounds);
			
			if ((theItem == iSaveFormatPopup) && (formatPopup != NULL) && TrackControl(formatPopup, where, NULL))
			{
				GetDialogItemText((Handle)nameField, fileName);
				
				SetFileExtension(GetControlValue(formatPopup), fileName);
				
				SetDialogItemText((Handle)nameField, fileName);
				
				//Draw1Control(nameField);
				
				handledEvent = true;
			}
			
			
			break;
		case keyDown:
			if (GetWRefCon(GetDialogWindow(theDlgPtr)) == sfMainDialogRefCon)
			{
				GetDialogItem(theDlgPtr, sfItemFileNameTextEdit, &itemType, (Handle*)&nameField, &bounds);
				GetDialogItemText((Handle)nameField, fileName);
				
				fileName[fileName[0] + 1] = eventPtr->message & charCodeMask;
				fileName[0]++;
				
				//GetDialogItemAsControl(theDlgPtr, 13, &formatPopup);
				GetDialogItem(theDlgPtr, 13, &itemType, (Handle*)&formatPopup, &bounds);
			
				SyncPopupToName(fileName, formatPopup);
			}
			break;
		default:
			handledEvent = false;
			break;
	}
	
	return handledEvent;
}

void SyncPopupToName(Str255 fileName, ControlHandle formatPopup)
{
	if (IsICOFile(fileName))
		SetControlValue(formatPopup, formatWindows);
	else if (IsTIFFFile(fileName))
		SetControlValue(formatPopup, formatMacOSXServer);
	else if (IsicnsFile(fileName))
		SetControlValue(formatPopup, formatMacOSX);
	else
	{
		short currentValue;
		
		currentValue = GetControlValue(formatPopup);
		
		if (currentValue != formatMacOSUniversal &&
			currentValue != formatMacOSNew &&
			currentValue != formatMacOSOld)
		SetControlValue(formatPopup, formatMacOSUniversal);
	}
		
	Draw1Control(formatPopup);
}
