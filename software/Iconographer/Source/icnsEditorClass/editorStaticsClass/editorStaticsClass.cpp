#include "editorStaticsClass.h"
#include "icnsEditorClass.h"
#include "MAlert.h"

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

	LoadPicker(r8BitSysPicker, &sys8PickerPix, &sys8PickerGW, &sys8PickerRgn);
	LoadPicker(r4BitSysPicker, &sys4PickerPix, &sys4PickerGW, &sys4PickerRgn);
	LoadPicker(r1BitSysPicker, &sys1PickerPix, &sys1PickerGW, &sys1PickerRgn);
	
	LoadPicker(r8BitGrayPicker, &gray8PickerPix, &gray8PickerGW, &gray8PickerRgn);

	LoadPicker(r8BitWinPicker, &win8PickerPix, &win8PickerGW, &win8PickerRgn);
	LoadPicker(r4BitWinPicker, &win4PickerPix, &win4PickerGW, &win4PickerRgn);
	
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
	
	currentBalloon = 0;

	colorsPalette = new ColorsPalette();
}

void editorStaticsClass::LoadPicker(int ID,
									PixMapHandle* pickerPix,
									GWorldPtr* pickerGW,
									RgnHandle* pickerRgn)
{
	PicHandle	pickerPic;
	Rect		pickerRect;
	
	SAVEGWORLD;
	SAVECOLORS;
	
	pickerPic = GetPicture(ID);
	HLock((Handle)pickerPic);
	
	pickerRect = (**pickerPic).picFrame;
	OffsetRect(&pickerRect, -pickerRect.left, -pickerRect.top);
	
	NewGWorld(pickerGW, 32, &pickerRect, NULL, NULL, 0);
	*pickerPix = GetGWorldPixMap(*pickerGW);
	LockPixels(*pickerPix);
	
	SetGWorld(*pickerGW, NULL);
	EraseRect(&pickerRect);
	
	DrawPicture(pickerPic, &pickerRect);
	
	RESTORECOLORS;
	RESTOREGWORLD;
	
	*pickerRgn = NewRgn();
	
	PictureToRegion(pickerPic, pickerRect, *pickerRgn);
	
	HUnlock((Handle)pickerPic);
	KillPicture(pickerPic);
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
	
	UnlockPixels(sys8PickerPix); DisposeGWorld(sys8PickerGW); DisposeRgn(sys8PickerRgn);
	UnlockPixels(sys4PickerPix); DisposeGWorld(sys4PickerGW); DisposeRgn(sys4PickerRgn);
	UnlockPixels(sys1PickerPix); DisposeGWorld(sys1PickerGW); DisposeRgn(sys1PickerRgn);
	
	UnlockPixels(gray8PickerPix); DisposeGWorld(gray8PickerGW); DisposeRgn(gray8PickerRgn);
	
	UnlockPixels(win8PickerPix); DisposeGWorld(win8PickerGW); DisposeRgn(win8PickerRgn);
	UnlockPixels(win4PickerPix); DisposeGWorld(win4PickerGW); DisposeRgn(win4PickerRgn);
	
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
	
	alert.SetBeep(true);
	
	return alert.Display();
}

// __________________________________________________________________________________________
// Name			: editorStaticsClass::ChangeCursor
// Input		: ID: resource ID of the cursor which should be set
// Output		: None
// Description	: Sets the cursor to the required one, if necessary (first it compares the ID
//				  with the ID of the current cursor)

void editorStaticsClass::ChangeCursor(short ID)
{
	if (!IsFrontProcess())
		return;
		
	if (currentCursor != ID) // if the cursor isn't already set to the new value
	{
		switch (ID)
		{
			case rArrow: SetCursor(&qd.arrow); break;
			case rIBeam: SetCursor(*GetCursor(iBeamCursor)); break;
			default: SetCursor(ID); break;
			
		}
		currentCursor = ID; // and we change the current cursor	
	}
	
	cursorChanged = true;
}

void editorStaticsClass::GetPickerPix(long iconName, long colors, PixMapHandle* pix, GWorldPtr* gW, RgnHandle* shapeRgn)
{
	switch (iconName)
	{
		case h8mk: case l8mk: case s8mk:
			*pix = gray8PickerPix; *gW = gray8PickerGW; *shapeRgn = gray8PickerRgn;
			break;
		case ich4: case icl4: case ics4:
			if (colors == macOSColors)
			{
				*pix = sys4PickerPix; *gW = sys4PickerGW; *shapeRgn = sys4PickerRgn;
			}
			else
			{
				*pix = win4PickerPix; *gW = win4PickerGW; *shapeRgn = win4PickerRgn;
			}
			break;
		case ichi: case icni: case icsi:
		case ichm: case icnm: case icsm:
			*pix = sys1PickerPix; *gW = sys1PickerGW; *shapeRgn = sys1PickerRgn;
			break;
		default:
			if (colors == macOSColors)
			{
				*pix = sys8PickerPix; *gW = sys8PickerGW; *shapeRgn = sys8PickerRgn;
			}
			else
			{
				*pix = win8PickerPix; *gW = win8PickerGW; *shapeRgn = win8PickerRgn;
			}
			break;
	}
}

Point editorStaticsClass::GetDefaultColorsPalettePosition(void)
{
	Point			position;
	GDHandle		mainScreen;
	Rect			titleRect, screenRect, windowRect;
	RgnHandle		windowShape, titleBarRgn;
	
	titleBarRgn = NewRgn();
	if (GestaltVersion(gestaltSystemVersion, 0x08, 0x10))
	{
		GetWindowRegion(colorsPalette->GetWindow(),
						kWindowTitleBarRgn,
						titleBarRgn);
		titleRect = (**titleBarRgn).rgnBBox; 
		position.v = LMGetMBarHeight() + 2 + (titleRect.bottom - titleRect.top);
	}
	else
		position.v = LMGetMBarHeight() + 2 + 15;
	
	mainScreen = GetMainDevice();
	screenRect = (**mainScreen).gdRect;
	
	windowShape = NewRgn();
	if (GestaltVersion(gestaltSystemVersion, 0x08, 0x10))
		GetWindowRegion(colorsPalette->GetWindow(),
						kWindowStructureRgn,
						windowShape);
	else
	{
		RectRgn(windowShape, &colorsPalette->GetWindow()->portRect);
		InsetRgn(windowShape, -3, -3);
	}
	windowRect = (**windowShape).rgnBBox;
	position.h = screenRect.right - (windowRect.right - windowRect.left);
	
	DisposeRgn(titleBarRgn);
	DisposeRgn(windowShape);
	
	return position;
}

Point editorStaticsClass::GetColorsPalettePosition(void)
{
	RgnHandle	contentRgn;
	Point		position;
	
	contentRgn = NewRgn();
	GetWindowRegion(colorsPalette->GetWindow(),
					kWindowContentRgn,
					contentRgn);
	
	position.h = (**contentRgn).rgnBBox.left;
	position.v = (**contentRgn).rgnBBox.top;
	
	return position;
}

#pragma mark -

void editorPreferencesClass::Load(int ID)
{
	bool				registered;
	PreferencesHandle	tempData;
	Str255				tempRegCode;
	
	tempData = (PreferencesHandle)Get1Resource('Pref', ID);
	
	if (tempData == NULL)
		tempData = (PreferencesHandle)GetResource('Pref', rDefaultPrefID);
	
	data = (PreferencesHandle)NewHandleClear(sizeof(PreferencesStruct));
	
	(**data) = (**tempData);
	
	ReleaseResource((Handle)tempData);
	
	switch ((**data).version)
	{
		case 1:
		{
			PreferencesHandle	defaultPreferences;
			
			if ((**data).flags & prefsGenerateOldStyle)
				(**data).defaultFormat = formatMacOSUniversal;
			else
				(**data).defaultFormat = formatMacOSNew;
				
			(**data).flags |= prefsAntiAlias;
			(**data).flags |= prefsColorsPaletteVisible;
			(**data).colorsPaletteLocation.h = -1;
			(**data).colorsPaletteLocation.v = -1;
			
			defaultPreferences = (PreferencesHandle)GetResource('Pref', rDefaultPrefID);
			
			for (int i=0; i < kFavoritesCPSampleYCount * kFavoritesCPSampleXCount; i++)
				(**data).favoriteColors[i] = (**defaultPreferences).favoriteColors[i];
				
			ReleaseResource((Handle)defaultPreferences);
		}
		default:
			(**data).version = 0x11;
	}	
	
	
	GenerateRegCode((**data).name, tempRegCode);
	
	registered = IsRegistered();
	
	if (!registered || (registered && !(EqualString(tempRegCode, (**data).regCode, true, true))))
	{
		CopyString((**data).name, "\pNot registered");
		CopyString((**data).company, "\p");
		CopyString((**data).regCode, "\p");
	}
	
	if ((**data).colorsPaletteLocation.h == -1)
		(**data).colorsPaletteLocation = icnsEditorClass::statics.GetDefaultColorsPalettePosition();
	
	MoveWindow(icnsEditorClass::statics.colorsPalette->GetWindow(),
					   (**data).colorsPaletteLocation.h,
					   (**data).colorsPaletteLocation.v,
					   false);
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
		
		GetDialogItemAsControl(GetControlOwner(controlHdl), iDefaultZoomLevelField, &defaultZoomLevelField);
		
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
	ControlHandle		defaultZoomLevelField,
						defaultZoomLevelArrows,
						drawGrid,
						checkSync,
						dither,
						newEditor,
						openIcon,
						doNothing,
						defaultFormat,
						antiAlias;
	Str255				tempString;
	short				itemHit;
	bool				dialogDone;
	MenuHandle			typesMenu;
	ControlFontStyleRec	smallTextStyle; // text style used for the controls
	
	
	smallTextStyle.flags = kControlUseFontMask | kControlUseSizeMask;
	smallTextStyle.font = kThemeSmallSystemFont; // this font is installed on all systems
	smallTextStyle.size = 9;
	
	preferencesDialog = GetNewDialog(rPreferencesDialog, NULL, (WindowPtr)-1L);
	
	MWindow::DeactivateAll();
	
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
	SetControlMinimum(defaultZoomLevelArrows, kMinMagnification);
	SetControlMaximum(defaultZoomLevelArrows, kMaxMagnification);
	SetControlValue(defaultZoomLevelArrows, (**data).defaultZoomLevel);
	
	GetDialogItemAsControl(preferencesDialog, iDrawGrid, &drawGrid);
	SetControlValue(drawGrid, bool((**data).flags & prefsDrawGrid));
	
	GetDialogItemAsControl(preferencesDialog, iCheckSync, &checkSync);
	SetControlValue(checkSync, !bool((**data).flags & prefsDontCheckSync));
	
	GetDialogItemAsControl(preferencesDialog, iDither, &dither);
	SetControlValue(dither, bool((**data).flags & prefsDither));
	
	GetDialogItemAsControl(preferencesDialog, iAntiAlias, &antiAlias);
	SetControlValue(antiAlias, bool((**data).flags & prefsAntiAlias));
	
	GetDialogItemAsControl(preferencesDialog, iDefaultIconFormat, &defaultFormat);
	SetControlValue(defaultFormat, (**data).defaultFormat);
	typesMenu = GetControlPopupMenuHandle(defaultFormat);
	DisableItem(typesMenu, formatMacOSXServer);
	
	GetDialogItemAsControl(preferencesDialog, iStartupCreateNewEditor, &newEditor);
	SetControlValue(newEditor, bool(!((**data).flags & prefsDontMakeNewEditor)));
	
	GetDialogItemAsControl(preferencesDialog, iStartupOpenIcon, &openIcon);
	SetControlValue(openIcon, bool((**data).flags & prefsOpenIcon));
	
	GetDialogItemAsControl(preferencesDialog, iStartupDoNothing, &doNothing);
	SetControlValue(doNothing, bool((**data).flags & prefsDontMakeNewEditor) &&
							   bool(!((**data).flags & prefsOpenIcon)));
	
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
				(**data).flags = (GetControlValue(drawGrid) << 0) |
								 ((GetControlValue(checkSync) ^ 1) << 1) |
								 (GetControlValue(dither) << 2) |
								 (GetControlValue(antiAlias) << 7);
				(**data).defaultFormat = GetControlValue(defaultFormat);
				
				if (GetControlValue(doNothing))
				{
					(**data).flags |= prefsDontMakeNewEditor;
					(**data).flags &= ~prefsOpenIcon;
				}
				else if (GetControlValue(newEditor))
				{
					(**data).flags &= ~prefsDontMakeNewEditor;
					(**data).flags &= ~prefsOpenIcon;	
				}
				else
				{
					(**data).flags |= prefsDontMakeNewEditor;
					(**data).flags |= prefsOpenIcon;
				}
				
				dialogDone = true;
				break;
			case iCancel:
				dialogDone = true;
				break;
			case iDrawGrid: ToggleCheckbox(drawGrid); break;
			case iCheckSync: ToggleCheckbox(checkSync); break;
			case iDither: ToggleCheckbox(dither); break;
			case iAntiAlias: ToggleCheckbox(antiAlias); break;
			case iStartupCreateNewEditor :
				SetControlValue(newEditor, 1);
				SetControlValue(openIcon, 0);
				SetControlValue(doNothing, 0);
				break;
			case iStartupOpenIcon:
				SetControlValue(newEditor, 0);
				SetControlValue(openIcon, 1);
				SetControlValue(doNothing, 0);
				break;
			case iStartupDoNothing :
				SetControlValue(newEditor, 0);
				SetControlValue(openIcon, 0);
				SetControlValue(doNothing, 1);
				break;
		}
	}
	
	DisposeRoutineDescriptor(eventFilterUPP);
	DisposeDialog(preferencesDialog);
	
	MWindow::ActivateAll();
}

void editorPreferencesClass::Save(int ID)
{
	if (icnsEditorClass::statics.colorsPalette->IsVisible())
		(**data).flags |= prefsColorsPaletteVisible;
	else
		(**data).flags &= ~prefsColorsPaletteVisible;
	
	(**data).colorsPaletteLocation = icnsEditorClass::statics.GetColorsPalettePosition();
	
	
	AddResource((Handle)data, 'Pref', ID, "\p");
	ChangedResource((Handle)data);
	WriteResource((Handle)data);
}

bool editorPreferencesClass::FeatureEnabled(long flag)
{
	return (**data).flags & flag;
}

void editorPreferencesClass::EnableFeature(long flag)
{
	(**data).flags |= flag;
}

void editorPreferencesClass::DisableFeature(long flag)
{
	(**data).flags &= ~flag;
}

RGBColor editorPreferencesClass::GetFavoriteColor(int index)
{
	return (**data).favoriteColors[index];
}

void editorPreferencesClass::SetFavoriteColor(int index, RGBColor color)
{
	(**data).favoriteColors[index] = color;
}

int editorPreferencesClass::GetDefaultFormat()
{
	return (**data).defaultFormat;
}

int editorPreferencesClass::GetDefaultZoomLevel()
{
	return (**data).defaultZoomLevel;
}

void editorPreferencesClass::IncrementTimesUsed()
{
	(**data).timesUsed++;
}

int editorPreferencesClass::GetTimesUsed()
{
	return (**data).timesUsed;
}

void editorPreferencesClass::GetRegistrationInfo(Str255 name, Str255 company, Str255 regCode)
{
	CopyString(name, (**data).name);
	CopyString(company, (**data).company);
	CopyString(regCode, (**data).regCode);
}	

bool editorPreferencesClass::IsRegistered(void)
{
	return !(EqualString("\pNot registered", (**data).name, true, true) ||
			EqualString("\pInpher                  ", (**data).name, true, true));
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
