#include "editorStaticsClass.h"
#include "icnsEditorClass.h"

// __________________________________________________________________________________________
// Name			: editorStaticsClass::editorStaticsClass
// Input		: None
// Output		: None
// Description	: Initializes all the static data, which is shared by all editors. This
//				  includes resources used in drawing the interface, and the canvas GWorld used
//				  as an intermediary step for compositing when drawing

editorStaticsClass::editorStaticsClass(void)
{
	InitToolbox(); // since this function is called before anything else, we must initialize
				   // the toolbox before doing anything else
	
	GetGWorld(&startupPort, &startupDevice); // these are the GWorld & GDevice for the
											 // screen we start up with

	for (int i=0; i < kNoOfSelectionPatterns; i++)
		GetIndPattern(&selectionPatterns[i], rSelectionPatterns, i+1);
	// we load the patterns used for the drawing of the selection marching ant animation

	swapColorsIconEnabled = GetCIcon(rSwapColorsIconEnabled); // here we're loading the icons
	HLock((Handle)swapColorsIconEnabled);				      // used for the disabled/
	swapColorsIconDisabled = GetCIcon(rSwapColorsIconDisabled); // enabled view of the
	HLock((Handle)swapColorsIconDisabled);					  // swap colors widget

	resetColorsIconEnabled = GetCIcon(rResetColorsIconEnabled); // ditto here, but for the
	HLock((Handle)resetColorsIconEnabled);						// reset colors widget
	resetColorsIconDisabled = GetCIcon(rResetColorsIconDisabled);
	HLock((Handle)resetColorsIconDisabled);

	sys8PickerPic = GetPicture(r8BitSysPicker);
	HLock((Handle)sys8PickerPic);
	sys4PickerPic = GetPicture(r4BitSysPicker);
	HLock((Handle)sys4PickerPic);
	sys1PickerPic = GetPicture(r1BitSysPicker);
	HLock((Handle)sys1PickerPic);
	gray8PickerPic = GetPicture(r8BitGrayPicker);
	HLock((Handle)gray8PickerPic);
	
	SetRect(&canvasRect, 0, 0, kMaxIconSize * kMaxMagnification, kMaxIconSize * kMaxMagnification);
	NewGWorld(&canvasGW, 32, &canvasRect, NULL, NULL, 0);
	canvasPix = GetGWorldPixMap(canvasGW);
	LockPixels(canvasPix);
	// we're making the canas GWorld/PixMap, which is used for compositing and as an
	// intermediate step before copying the result to the main screen
	
	Handle iconPartNamesResource;
	short	stringCount;
	char*	buff;
	
	Str255 test;
	
	GetIndString(test, rIconPartNames, 1);
	
	iconPartNamesResource = GetResource('STR#', rIconPartNames);
	
	buff = *iconPartNamesResource;
	
	stringCount = (buff[0] << 8) + (buff[1] << 0);
	
	ReleaseResource(iconPartNamesResource);
	
	iconPartNames = new Str255[stringCount + 1];
	
	for (int i=1; i <= stringCount; i++)
		GetIndString(iconPartNames[i], rIconPartNames, i);
	
	dragHiliteRgn = NULL;
		
	AllocateEmergencyMemory(); // we reserve some memory for use in emergency situations

	CopyString(lastTextSettings.text, "\pIconographer");
	GetFNum("\pGeneva", &lastTextSettings.fontNo);
	lastTextSettings.size = 12;
	lastTextSettings.style = normal;
}

// __________________________________________________________________________________________
// Name			: editorStaticsClass::~editorStaticsClass
// Input		: None
// Output		: None
// Description	: Deallocates the loaded resources and the canvas GWorld, this is only called
//				  when the programs quits

editorStaticsClass::~editorStaticsClass(void)
{
	UnlockPixels(canvasPix); // we're done with the canvas GWorld/PixMap
	DisposeGWorld(canvasGW);
	
	HUnlock((Handle)swapColorsIconEnabled); // we can get rid of these resources too
	DisposeCIcon(swapColorsIconEnabled);
	HUnlock((Handle)swapColorsIconDisabled);
	DisposeCIcon(swapColorsIconDisabled);
	HUnlock((Handle)resetColorsIconEnabled);
	DisposeCIcon(resetColorsIconEnabled);
	HUnlock((Handle)resetColorsIconDisabled);
	DisposeCIcon(resetColorsIconDisabled);
	
	HUnlock((Handle)sys8PickerPic);
	HUnlock((Handle)sys4PickerPic);
	HUnlock((Handle)sys1PickerPic);
	HUnlock((Handle)gray8PickerPic);
	
	delete [] iconPartNames;
	
	SetGWorld(startupPort, startupDevice); // and restore the startup port and device
	// (altho there shouldn't have been any reason to change them in the first place)
}

// __________________________________________________________________________________________
// Name			: editorStaticsClass::ReclaimEmergencyMemory
// Input		: None
// Output		: None
// Description	: This function frees the emergency memory chunk, so that there is more
//				  memory available, when it is required in emergency cases

void editorStaticsClass::ReclaimEmergencyMemory(void)
{
	DisposePtr(tempMemoryChunk); // we dispose of the memory, to make room
}

// __________________________________________________________________________________________
// Name			: editorStaticsClass::AllocateEmergencyMemory
// Input		: None
// Output		: None
// Description	: This function reserves a chunk of memory (actual size specified by a
//				  constant) for future use in emergency situations

void editorStaticsClass::AllocateEmergencyMemory(void)
{
	tempMemoryChunk = NewPtr(kEmergencyMemorySize);
}

short editorStaticsClass::DisplayAlert(Str255 message, Str255 button1, Str255 button2, Str255 button3)
{
	AlertStdAlertParamRec	param; // very similar to above
	OSStatus				err;
	short					itemHit;
	ModalFilterUPP			eventFilterUPP;
	
	eventFilterUPP = NewModalFilterProc((ProcPtr) StandardEditorDialogFilter);
	
	param.movable 		= true;
	param.filterProc 	= eventFilterUPP;
	param.defaultText 	= button1;
	param.cancelText	= button2;
	param.otherText		= button3;
	param.helpButton 	= false;
	param.defaultButton = kAlertStdAlertOKButton;
	param.cancelButton  = 0;
	param.position 		= 0;
	
	err = StandardAlert(kAlertStopAlert, message, NULL, &param, &itemHit);
	if (err != noErr)
		DisplayValue(err);
		
	DisposeRoutineDescriptor(eventFilterUPP);
	
	return itemHit;
}

#pragma mark -

void editorPreferencesClass::Load(int ID)
{
	
	data = (preferencesHandle)GetResource('Pref', ID);
	
	if (data == NULL)
	{
		DisplayAlert("Fatal error while loading prefs", NULL);
		return;
	}
	
	DetachResource((Handle)data);
	
	Str255 tempRegCode;
	
	GenerateRegCode((**data).name, tempRegCode);
	
	if (!(EqualString(tempRegCode, (**data).regCode, true, true)))
	{
		CopyString((**data).name, "\pNot registered");
		CopyString((**data).company, "\p");
		CopyString((**data).regCode, "\p");
	}
}

static pascal void ZoomArrowsActionFunction(ControlHandle controlHdl,SInt16 partCode)
{
	Str255	tempString;
	SInt32	controlValue;
	ControlHandle defaultZoomLevelField;

	if(partCode)
	{
		controlValue = GetControlValue(controlHdl);

		switch(partCode)
		{
			case kControlUpButtonPart:
				controlValue += 1;
				if(controlValue > GetControlMaximum(controlHdl))
				{
					controlValue = GetControlMaximum(controlHdl);
					return;
				}
			break;
			
			case kControlDownButtonPart:
				controlValue -= 1;
				if(controlValue < GetControlMinimum(controlHdl))
				{
					controlValue = GetControlMinimum(controlHdl);
					return;
				}
				break;
		}

		SetControlValue(controlHdl,controlValue);
		
		GetDialogItemAsControl((**controlHdl).contrlOwner, iDefaultZoomLevelField, &defaultZoomLevelField);
		
		NumToString(controlValue, tempString);
		AppendString(tempString, "\p00%");
		SetControlText(defaultZoomLevelField, tempString);
		Draw1Control(defaultZoomLevelField);
	}
}

static pascal bool PreferencesDialogFilter(DialogPtr dialog, EventRecord* eventPtr, short* itemHit)
{
	bool handledEvent = false;
	
	switch (eventPtr->what)
	{
		case mouseDown:
			Point theMouse;
			ControlHandle control, arrowsControl, fieldControl;
			SAVEGWORLD;
			SetPort(dialog);
			
			
			
			GetDialogItemAsControl(dialog, iDefaultZoomLevelArrows, &arrowsControl);
			GetDialogItemAsControl(dialog, iDefaultZoomLevelField, &fieldControl);
			
			theMouse = eventPtr->where;
			GlobalToLocal(&theMouse);
			if (FindControl(theMouse,dialog, &control))
				if (control == arrowsControl)
				{
					ControlActionUPP	arrowsActionFunctionUPP;
			
					arrowsActionFunctionUPP = NewControlActionProc((ProcPtr) ZoomArrowsActionFunction);
					TrackControl(control,theMouse,arrowsActionFunctionUPP);
					DisposeRoutineDescriptor(arrowsActionFunctionUPP);
					handledEvent = true;
				}
				else if (control == fieldControl)
				{
					ClearKeyboardFocus(dialog);
					handledEvent = true;
				}
			RESTOREGWORLD;
			break;
		default:
			handledEvent = StandardEditorDialogFilter(dialog,eventPtr,itemHit);
			break;
	}
	
	return handledEvent;
}

void editorPreferencesClass::Edit()
{
	DialogPtr			preferencesDialog;
	ModalFilterUPP		eventFilterUPP;
	ControlHandle		defaultZoomLevelField, defaultZoomLevelArrows;
	Str255				tempString;
	short				itemHit;
	bool				dialogDone;
	ControlFontStyleRec	smallTextStyle; // text style used for the controls
	
	
	smallTextStyle.flags = kControlUseFontMask | kControlUseSizeMask;
	smallTextStyle.font = kThemeSmallSystemFont; // this font is installed on all systems
	smallTextStyle.size = 9;
	
	preferencesDialog = GetNewDialog(rPreferencesDialog, NULL, (WindowPtr)-1L);
	
	eventFilterUPP = NewModalFilterProc(PreferencesDialogFilter);
	
	SetDialogDefaultItem(preferencesDialog, iOK);
	SetDialogCancelItem(preferencesDialog, iCancel);
	
	GetDialogItemAsControl(preferencesDialog, iDefaultZoomLevelField, &defaultZoomLevelField);
	NumToString((**data).defaultZoomLevel, tempString);
	AppendString(tempString, "\p00%");
	SetControlText(defaultZoomLevelField, tempString);
	SetControlFontStyle(defaultZoomLevelField, &smallTextStyle); // set the style too
	Draw1Control(defaultZoomLevelField);
	
	GetDialogItemAsControl(preferencesDialog, iDefaultZoomLevelArrows, &defaultZoomLevelArrows);
	(**defaultZoomLevelArrows).contrlMin = kMinMagnification;
	(**defaultZoomLevelArrows).contrlMax = kMaxMagnification;
	(**defaultZoomLevelArrows).contrlValue = (**data).defaultZoomLevel;
	
	ClearKeyboardFocus(preferencesDialog);
	
	ShowWindow(preferencesDialog);
	
	dialogDone = false;
	
	while (!dialogDone)
	{
		ModalDialog(eventFilterUPP, &itemHit);
		
		switch (itemHit)
		{
			case iOK:
				GetControlText(defaultZoomLevelField, tempString);
				tempString[0] -= 3;
				StringToNum(tempString, &(**data).defaultZoomLevel);
				dialogDone = true;
				break;
			case iCancel:
				dialogDone = true;
				break;
		}
	}
	
	DisposeRoutineDescriptor(eventFilterUPP);
	
	DisposeDialog(preferencesDialog);
	
}

void editorPreferencesClass::Save(int ID)
{
	AddResource((Handle)data, 'Pref', ID, "\p");
	ChangedResource((Handle)data);
	WriteResource((Handle)data);
}

bool editorPreferencesClass::IsRegistered(void)
{
	return !(EqualString("\pNot registered", (**data).name, true, true));
}

void editorPreferencesClass::GenerateRegCode(Str255 name, Str255 regCode)
{
	for (int i = name[0] + 1; i <= 24; i++)
		name[i] = ' ';
	
	name[0] = 24;
	
	regCode[0] = 8;
	regCode[1] = 'A' + ((name[1] ^ 'I') + (name[3] ^ 'p')) % 24;
	regCode[2] = 'A' + ((name[2] ^ 'c') + (name[4] ^ 'h')) % 24;
	regCode[3] = '0' + ((name[6] ^ 'o') + (name[5] ^ 'e')) % 9;
	regCode[4] = '0' + ((name[8] ^ 'n') + (name[7] ^ 'r')) % 9;
	regCode[5] = '0' + ((name[10] ^ 'o') + name[9] + name[17] + name[19] ) % 9;
	regCode[6] = '0' + ((name[12] ^ 'g') + name[11] + name[18] + name[20]) % 9;
	regCode[7] = '0' + ((name[14] ^ 'r') + name[13] + name[23] + name[21]) % 9;
	regCode[8] = '0' + ((name[15] ^ 'a') + name[16] + name[22] + name[24]) % 9;
}

bool editorPreferencesClass::ValidRegCode(Str255 name, Str255 inRegCode)
{
	Str255 regCode;
	
	GenerateRegCode(name, regCode);
	return EqualString(inRegCode, regCode, true, true);
}

void editorPreferencesClass::Register(Str255 name, Str255 company, Str255 regCode)
{
	CopyString((**data).name, name);
	CopyString((**data).company, company);
	CopyString((**data).regCode, regCode);
}