#include "editorStaticsClass.h"
#include "icnsEditorClass.h"
#include "MAlert.h"
#include "iconBrowserClass.h"

const static int kPrefsSettingsPaneItems[] = {
	iShowOnlyLoadedMembers, iCheckSync, iDither,
	iStartupGroupBox, iStartupCreateNewEditor, iStartupOpenIcon, iStartupDoNothing,
	iSaveGroupBox, iSaveDataAndResource, iSaveResource, iSaveData,
	iResetPaletteLocations,
	iMembersPaletteBox, iPreviewFullSize, iPreviewScaled, iPreviewSizeSlider, iPreviewSizeField, iPreviewSizeLabel};
const static int kPrefsSettingsPaneItemsCount = sizeof(kPrefsSettingsPaneItems)/sizeof(int);

const static int kPrefsDefaultsPaneItems[] = {
	iDefaultZoomLevelLabel, iDefaultZoomLevelField, iDefaultZoomLevelArrows,
	iDefaultIconFormat,
	
	iMembersGroupBox,
	iThumbnailBox,
	iHugeBox, iih32Box, iich8Box, iich4Box, iichiBox, ih8mkBox, iichmBox,	
	iLargeBox, iil32Box, iicl8Box, iicl4Box, iicniBox, il8mkBox, iicnmBox,
	iSmallBox, iis32Box, iics8Box, iics4Box, iicsiBox, is8mkBox, iicsmBox,
	iMiniBox, iicm8Box, iicm4Box, iicmiBox, iicmmBox,
	
	 iMembersDivider,
	iHintsLabel,
	iIconLabel, i32BitIconLabel, i8BitIconLabel, i4BitIconLabel, i1BitIconLabel,
	iMaskLabel, i8BitMaskLabel, i1BitMaskLabel};
const static int kPrefsDefaultsPaneItemsCount = sizeof(kPrefsDefaultsPaneItems)/sizeof(int);

const static int kPrefsExternalEditorPaneItems[] = {
	iExternalEditorLabel, iExternalEditorButton,
	iEditorShortcutLabel, iEditorShortcutButton,
	iExportIconAndMask,
	iExportFormat};
const static int kPrefsExternalEditorPaneItemsCount = sizeof(kPrefsExternalEditorPaneItems)/sizeof(int);


// __________________________________________________________________________________________
// Name			: editorStaticsClass::editorStaticsClass
// Input		: None
// Output		: None
// Description	: Initializes all the static data, which is shared by all editors. This
//				  includes resources used in drawing the interface, and the canvas GWorld used
//				  as an intermediary step for compositing when drawing

editorStaticsClass::editorStaticsClass(void)
{
	;
}

void editorStaticsClass::Load()
{	
	GetGWorld(&startupPort, &startupDevice); // these are the GWorld & GDevice for the
											 // screen we start up with

	for (int i=0; i < kNoOfSelectionPatterns; i++)
		GetIndPattern(&selectionPatterns[i], rSelectionPatterns, i+1);
	// we load the patterns used for the drawing of the selection marching ant animation

	aliasedPic = GetPicture(rTPAliasedPic);
	antiAliasedPic = GetPicture(rTPAntiAliasedPic);
	
	unfilledPic = GetPicture(rTPUnfilledPic);
	filledPic = GetPicture(rTPFilledPic);

	LoadPicker(r8BitSysPicker, &sys8PickerPix, &sys8PickerGW, &sys8PickerRgn);
	LoadPicker(r4BitSysPicker, &sys4PickerPix, &sys4PickerGW, &sys4PickerRgn);
	LoadPicker(r1BitSysPicker, &sys1PickerPix, &sys1PickerGW, &sys1PickerRgn);
	
	LoadPicker(r8BitGrayPicker, &gray8PickerPix, &gray8PickerGW, &gray8PickerRgn);

	LoadPicker(r8BitWinPicker, &win8PickerPix, &win8PickerGW, &win8PickerRgn);
	LoadPicker(r4BitWinPicker, &win4PickerPix, &win4PickerGW, &win4PickerRgn);
	
	// we're making the canas GWorld/PixMap, which is used for compositing and as an
	// intermediate step before copying the result to the main screen
	SetRect(&canvasRect, 0, 0, kCanvasWidth, kCanvasHeight);
	NewGWorld(&canvasGW, 32, &canvasRect, NULL, NULL, 0);
	canvasPix = GetGWorldPixMap(canvasGW);
	LockPixels(canvasPix);
	
	(**canvasPix).pixelType = RGBDirect;
	(**canvasPix).cmpCount = 4;
	
	icnsClass::SetCanvas(canvasGW, canvasPix);

	dragHiliteRgn = NULL;
		
	AllocateEmergencyMemory(); // we reserve some memory for use in emergency situations

	CopyString(lastTextSettings.text, "\pIconographer");
	GetFNum("\pGeneva", &lastTextSettings.fontNo);
	lastTextSettings.size = 12;
	lastTextSettings.style = normal;
	
	currentBalloon = -1;

	colorsPalette = new ColorsPalette();
	membersPalette = new MembersPalette();
	previewPalette = new PreviewPalette();
	toolPalette = new ToolPalette();
	
	zoomMenu = GetMenu(mZoom);
	browserTypeMenu = GetMenu(rIBTypeMenu);
	
	firstTime = false;
	
	preferences.SetupPalettes();
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
	ReleaseResource((Handle)pickerPic);
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
	
	UnlockPixels(sys8PickerPix); DisposeGWorld(sys8PickerGW); DisposeRgn(sys8PickerRgn);
	UnlockPixels(sys4PickerPix); DisposeGWorld(sys4PickerGW); DisposeRgn(sys4PickerRgn);
	UnlockPixels(sys1PickerPix); DisposeGWorld(sys1PickerGW); DisposeRgn(sys1PickerRgn);
	
	UnlockPixels(gray8PickerPix); DisposeGWorld(gray8PickerGW); DisposeRgn(gray8PickerRgn);
	
	UnlockPixels(win8PickerPix); DisposeGWorld(win8PickerGW); DisposeRgn(win8PickerRgn);
	UnlockPixels(win4PickerPix); DisposeGWorld(win4PickerGW); DisposeRgn(win4PickerRgn);
	
	DisposeMenu(zoomMenu);
	DisposeMenu(browserTypeMenu);
	
	SetGWorld(startupPort, startupDevice); // and restore the startup port and device
	// (altho there shouldn't have been any reason to change them in the first place)
	
	delete colorsPalette;
	delete membersPalette;
	delete previewPalette;
	delete toolPalette;
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

Point editorStaticsClass::GetDefaultPalettePosition(MFloaterPtr palette)
{
	Point			position, dimensions;
	GDHandle		mainScreen;
	Rect			screenRect;
	
	mainScreen = GetMainDevice();
	screenRect = (**mainScreen).gdRect;
	
	dimensions = palette->GetPhysicalDimensions();
	
	if (palette == previewPalette)
	{
		position.v = GetMBarHeight() + previewPalette->GetBorderThickness(borderTop) + kDefaultWindowSeparation;
		position.h = screenRect.right - dimensions.h + previewPalette->GetBorderThickness(borderLeft) - kDefaultWindowSeparation;
	}
	else if (palette == toolPalette)
	{
		position.v = GetMBarHeight() + toolPalette->GetBorderThickness(borderTop) + kDefaultWindowSeparation;
		position.h = toolPalette->GetBorderThickness(borderLeft) + kDefaultWindowSeparation;
	}
	else if (palette == membersPalette)
	{
		Point	previewDimensions;
		
		previewDimensions = previewPalette->GetPhysicalDimensions();
		
		position.v = GetMBarHeight() + previewDimensions.v + membersPalette->GetBorderThickness(borderTop) + 2 * kDefaultWindowSeparation;
		position.h = screenRect.right - dimensions.h + membersPalette->GetBorderThickness(borderLeft) - kDefaultWindowSeparation;
	}
	else if (palette == colorsPalette)
	{
		Point membersDimensions;
		
		membersDimensions = membersPalette->GetPhysicalDimensions();
		
		position.v = screenRect.bottom - dimensions.v + colorsPalette->GetBorderThickness(borderTop) - kDefaultWindowSeparation;
		position.h = screenRect.right - dimensions.h + colorsPalette->GetBorderThickness(borderLeft) - membersDimensions.h - 2 * kDefaultWindowSeparation;
	}
	
	return position;
}

Point editorStaticsClass::GetDefaultMembersPaletteDimensions()
{
	Point			dimensions, previewDimensions;
	GDHandle		mainScreen;
	Rect			screenRect;
	
	mainScreen = GetMainDevice();
	screenRect = (**mainScreen).gdRect;
	
	previewDimensions = previewPalette->GetPhysicalDimensions();
	
	dimensions.h = kMPDefaultWidth;
	dimensions.v = (screenRect.bottom - screenRect.top) - 
				   (GetMBarHeight() +
				    membersPalette->GetBorderThickness(borderTop) +
				    membersPalette->GetBorderThickness(borderBottom) +
				    previewDimensions.v +
				    3 * kDefaultWindowSeparation);
				   
	return dimensions;
}

Point editorStaticsClass::GetDefaultWindowPosition()
{
	Point position, defaultPosition, returnPosition;
		
	position = toolPalette->GetPosition();
	defaultPosition = GetDefaultPalettePosition(toolPalette);
		
	if (toolPalette->IsVisible() &&
		abs(position.h - defaultPosition.h) < 5 &&
		abs(position.v - defaultPosition.v) < 5)
	{
		returnPosition.h = position.h - toolPalette->GetBorderThickness(borderLeft);
		returnPosition.v = position.v - toolPalette->GetBorderThickness(borderTop);
		position = toolPalette->GetPhysicalDimensions();
		
		returnPosition.h += position.h;
	}
	else
	{
		returnPosition.h = 0;
		returnPosition.v = GetMBarHeight();
	}
	
	return returnPosition;
}

void editorStaticsClass::Stagger(MWindowPtr window)
{
	Point previousWindowLocation, newLocation;
	MWindowPtr	currentWindow;
	
	currentWindow = MWindow::GetLast();
	if (currentWindow == window)
		currentWindow = currentWindow->GetPrevious();
	
	while (currentWindow != NULL)
	{
		if (currentWindow->GetType() != kFloaterType)
		{
			previousWindowLocation = currentWindow->GetPosition();
			break;
		}	
		currentWindow = currentWindow->GetPrevious();	
	}
	
	if (currentWindow == NULL)
		previousWindowLocation = GetDefaultWindowPosition();
	
	newLocation = previousWindowLocation;
	newLocation.h += window->GetBorderThickness(borderLeft);
	newLocation.v += window->GetBorderThickness(borderTop);
	
	if (currentWindow)
	{
		newLocation.h--;
		newLocation.v--;
	}
	else
	{
		Point position, defaultPosition;
		
		position = toolPalette->GetPosition();
		defaultPosition = GetDefaultPalettePosition(toolPalette);
			
		if (toolPalette->IsVisible() &&
			abs(position.h - defaultPosition.h) < 5 &&
			abs(position.v - defaultPosition.v) < 5)
			newLocation.h += kDefaultWindowSeparation;
	}
	
	window->SetPosition(newLocation);
}

void editorStaticsClass::UpdatePalettes(int flags)
{
	if ((flags & updateAll) && toolPalette->IsVisible()) toolPalette->Update();
	if (previewPalette->IsVisible()) previewPalette->Update();
	if (membersPalette->IsVisible()) if (flags & updateAll) membersPalette->Update(true); else membersPalette->Update(false);
	if ((flags & updateAll) && colorsPalette->IsVisible()) colorsPalette->Update();
}

void editorStaticsClass::UpdatePalettes(icnsEditorPtr frontEditor, int flags)
{
	if ((flags & updateAll) && toolPalette->IsVisible()) toolPalette->Update();
	if (previewPalette->IsVisible()) previewPalette->Update(frontEditor);
	if (membersPalette->IsVisible()) if (flags & updateAll) membersPalette->Update(frontEditor, true); else membersPalette->Update(frontEditor, false);
	if ((flags & updateAll) && colorsPalette->IsVisible()) colorsPalette->Update();
}

bool editorStaticsClass::GetSupportFolder(FSSpec* supportFolder)
{
	Str255	temp, supportFolderName;
	
	GetIndString(supportFolderName, rBasicStrings, eIconographerSupportFolder);

	CopyString(temp, "\p:");
	AppendString(temp, supportFolderName);
	
	if (FSMakeFSSpec(0, 0, temp, supportFolder) == noErr)
		return true;
	else
	{
		FSSpec 	appSpec;
		Str255 	error;
		long	dirID;
		
		GetIndString(error, rBasicStrings, eIconographerSupportFolderError);
		
		MUtilities::DisplayAlert(error, "\pOK", "\p", "\p", kAlertStopAlert);
		
		appSpec = GetApplicationFileSpec();
		
		DirCreate(appSpec.vRefNum, appSpec.parID, supportFolderName, &dirID);
		
		FSMakeFSSpec(0, 0, temp, supportFolder);
		
		return false;
	}
	
}

#pragma mark -

editorPreferencesClass::editorPreferencesClass()
{
	data = NULL;
}

void editorPreferencesClass::Setup()
{
	Load(rDefaultPrefID);
}

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
		case 0x11:
		{
			(**data).colorsPaletteLocation.h = (**data).colorsPaletteLocation.v = -1;
			(**data).membersPaletteLocation.h = (**data).membersPaletteLocation.v = -1;
			(**data).membersPaletteDimensions.h = (**data).membersPaletteDimensions.v = -1;
			(**data).previewPaletteLocation.h = (**data).previewPaletteLocation.v = -1;
			(**data).toolPaletteLocation.h = (**data).toolPaletteLocation.v = -1;
			
			(**data).flags |= prefsMembersPaletteVisible;
			(**data).flags |= prefsPreviewPaletteVisible;
			(**data).flags |= prefsToolPaletteVisible;
			
			(**data).foreColor = kBlackAsRGB;
			(**data).backColor = kWhiteAsRGB;
			
			(**data).currentTool = toolPen;
			
			if ((**data).defaultZoomLevel == 7)
				(**data).defaultZoomLevel = 8;
				
			(**data).defaultUsedMembers = kDefaultMembers[(**data).defaultFormat];
			(**data).saveFork = resourceFork;
			
			(**data).flags |= prefsExportIconAndMask;
			(**data).externalEditorAlias = NULL;
			(**data).externalEditorShortcut[0] = 0x37;
			(**data).externalEditorShortcut[1] = 0x32;
			(**data).externalEditorShortcut[2] = 0xFF;
			(**data).externalEditorFormat = exportFormatPICT;
			
			(**data).lineThickness = 1;
			(**data).pattern = 0;
			
			(**data).previewSize = 48;
			
			(**data).adjustDialogLocation.h = (**data).adjustDialogLocation.v = -1;
			
			(**data).currentColorPicker = kRGBPane;
			
			(**data).flags &= ~(prefsShowOnlyLoadedMembers | prefsPreviewSelected);
			
			(**data).previewBackground = iPPDesktop;
			
			icnsEditorClass::statics.firstTime = true;
		}
		default:
			(**data).version = 0x20;
	}	
	
	(**data).externalEditorAlias = AliasHandle(Get1Resource('Alis', 128));
	if ((**data).externalEditorAlias != NULL)
		DetachResource(Handle((**data).externalEditorAlias));
	
	(**data).recentFilesCount = 0;
	
	for (int i=0; i < kMaxRecentFiles; i++)
	{
		(**data).recentFiles[(**data).recentFilesCount] = AliasHandle(Get1Resource('Alis', kRecentFilesBaseID + i));
		if ((**data).recentFiles[i] != NULL)
			DetachResource(Handle((**data).recentFiles[(**data).recentFilesCount++]));
	}
	
	GenerateRegCode((**data).name, tempRegCode);
	
	registered = IsRegistered();
	
	if (!registered || (registered && !(EqualString(tempRegCode, (**data).regCode, true, true))))
	{
		CopyString((**data).name, "\pNot registered");
		CopyString((**data).company, "\p");
		CopyString((**data).regCode, "\p");
	}
}

void editorPreferencesClass::SetupPalettes()
{
	SetupPaletteLocations();
	
	icnsEditorClass::statics.toolPalette->SetColors(&(**data).foreColor, &(**data).backColor);
	icnsEditorClass::statics.toolPalette->SetCurrentTool((**data).currentTool);
	
	icnsEditorClass::statics.toolPalette->SetPatternIndex((**data).pattern);
	
	icnsEditorClass::statics.membersPalette->ResizeMemberPanes();
	
	icnsEditorClass::statics.colorsPalette->SetCurrentPicker((**data).currentColorPicker);
}

void editorPreferencesClass::SetupPaletteLocations()
{
	if ((**data).colorsPaletteLocation.h == -1)
		(**data).colorsPaletteLocation = icnsEditorClass::statics.GetDefaultPalettePosition(icnsEditorClass::statics.colorsPalette);
	if ((**data).membersPaletteLocation.h == -1)
		(**data).membersPaletteLocation = icnsEditorClass::statics.GetDefaultPalettePosition(icnsEditorClass::statics.membersPalette);	
	if ((**data).membersPaletteDimensions.h == -1)
		(**data).membersPaletteDimensions = icnsEditorClass::statics.GetDefaultMembersPaletteDimensions();
	if ((**data).previewPaletteLocation.h == -1)
		(**data).previewPaletteLocation = icnsEditorClass::statics.GetDefaultPalettePosition(icnsEditorClass::statics.previewPalette);
	if ((**data).toolPaletteLocation.h == -1)
		(**data).toolPaletteLocation = icnsEditorClass::statics.GetDefaultPalettePosition(icnsEditorClass::statics.toolPalette);
	
	icnsEditorClass::statics.colorsPalette->SetPosition((**data).colorsPaletteLocation);
	
	icnsEditorClass::statics.membersPalette->SetPosition((**data).membersPaletteLocation);
	icnsEditorClass::statics.membersPalette->SetDimensions((**data).membersPaletteDimensions);
	icnsEditorClass::statics.membersPalette->RepositionControls();
	
	icnsEditorClass::statics.previewPalette->SetPosition((**data).previewPaletteLocation);
	
	icnsEditorClass::statics.toolPalette->SetPosition((**data).toolPaletteLocation);
}

void editorPreferencesClass::ResetPaletteLocations()
{
	(**data).colorsPaletteLocation.h = -1;
	(**data).membersPaletteLocation.h = -1;
	(**data).membersPaletteDimensions.h = -1;
	(**data).previewPaletteLocation.h = -1;
	(**data).toolPaletteLocation.h = -1;
}

pascal void editorPreferencesClass::ZoomArrowsAction(ControlHandle controlHdl,SInt16 partCode)
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
		
		GetDialogItemAsControl(GetDialogFromWindow(GetControlOwner(controlHdl)), iDefaultZoomLevelField, &defaultZoomLevelField);
		
		NumToString(controlValue, tempString);
		AppendString(tempString, "\p00%");
		SetControlText(defaultZoomLevelField, tempString);
		Draw1Control(defaultZoomLevelField);
	}
}

pascal void editorPreferencesClass::PreviewSizeSliderAction(ControlHandle theControl, SInt16 thePart)
{
#pragma unused (thePart)
	DialogPtr	preferencesDialog;
	int			size = -1;
	Str255		sizeAsString;
	ControlHandle	previewSizeField;
	
	if (thePart == kControlPageUpPart || thePart == kControlPageDownPart)
	{
		Rect controlRect;
		Point	where;
		
		GetControlBounds(theControl, &controlRect);
		
		GetMouse(&where);
		
		if (where.h < controlRect.left + kSliderEndcap) where.h = controlRect.left + kSliderEndcap;
		else if (where.h > controlRect.right - kSliderEndcap) where.h = controlRect.right - kSliderEndcap;
		
		SetControlValue(theControl, GetControlMinimum(theControl) + float(where.h - (controlRect.left + kSliderEndcap))/float(controlRect.right - controlRect.left - kSliderEndcap * 2) * (GetControlMaximum(theControl) - GetControlMinimum(theControl)));
	}
	
	preferencesDialog = DialogPtr(GetControlReference(theControl));

	size = GetControlValue(theControl);
	NumToString(size, sizeAsString);
	
	GetDialogItemAsControl(preferencesDialog, iPreviewSizeField, &previewSizeField);
	SetControlText(previewSizeField, sizeAsString);
	
	Draw1Control(previewSizeField);
}

pascal Boolean editorPreferencesClass::PreferencesDialogFilter(DialogPtr dialog, EventRecord* eventPtr, short* itemHit)
{
	bool handledEvent = false;
	
	switch (eventPtr->what)
	{
		case mouseDown:
			Point 			theMouse;
			ControlHandle	control, arrowsControl, fieldControl, previewSizeSlider, previewSizeField;
			short			part;
			
			SAVEGWORLD;
			SetPortDialogPort(dialog);
			
			GetDialogItemAsControl(dialog, iDefaultZoomLevelArrows, &arrowsControl);
			GetDialogItemAsControl(dialog, iDefaultZoomLevelField, &fieldControl);
			GetDialogItemAsControl(dialog, iPreviewSizeSlider, &previewSizeSlider);
			GetDialogItemAsControl(dialog, iPreviewSizeField, &previewSizeField);
			
			theMouse = eventPtr->where;
			GlobalToLocal(&theMouse);
			if ((part = FindControl(theMouse, GetDialogWindow(dialog), &control)) && part)
				if (control == arrowsControl)
				{
					ControlActionUPP	arrowsActionFunctionUPP;
			
					arrowsActionFunctionUPP = NewControlActionUPP(editorPreferencesClass::ZoomArrowsAction);
					TrackControl(control, theMouse, arrowsActionFunctionUPP);
					DisposeControlActionUPP(arrowsActionFunctionUPP);
					handledEvent = true;
				}
				else if (control == fieldControl)
				{
					ClearKeyboardFocus(GetDialogWindow(dialog));
					handledEvent = true;
				}
				else if (control == previewSizeSlider)
				{
					ControlActionUPP previewSizeSliderUPP;
					
					previewSizeSliderUPP = NewControlActionUPP(editorPreferencesClass::PreviewSizeSliderAction);
					
					if (part == kControlPageUpPart || part == kControlPageDownPart)
						ThemeSoundStart(kThemeDragSoundSliderThumb);
					
					TrackControl(control, theMouse, previewSizeSliderUPP);
					
					if (part == kControlPageUpPart || part == kControlPageDownPart)
						ThemeSoundEnd();
					
					DisposeControlActionUPP(previewSizeSliderUPP);
					handledEvent = true;
				}
				else if (control == previewSizeField)
				{
					if (TrackControl(control, theMouse, NULL))
						SetKeyboardFocus(GetDialogWindow(dialog), control, kControlEditTextPart);
					
					handledEvent = true;
				}
				
			RESTOREGWORLD;
			break;
		case keyDown:
		case autoKey:
			char key;
			
			key = eventPtr->message & charCodeMask;
			switch (key)
			{
				case kReturnCharCode: case kEnterCharCode:
				case kTabCharCode: case kBackspaceCharCode:
				case kEscapeCharCode: case kDeleteCharCode:
				case kRightArrowCharCode: case kLeftArrowCharCode:
				case kUpArrowCharCode: case kDownArrowCharCode:
				case '0': case '1': case '2': case '3': case '4': case '5': case '6': case '7': case '8': case '9':
					handledEvent = StdFilterProc(dialog, eventPtr, itemHit);
					break;
				case '.':
					if ((eventPtr->modifiers & cmdKey) != 0)
						handledEvent = StdFilterProc(dialog, eventPtr, itemHit);
					else
						SysBeep(6);
						handledEvent = true;
					break;
				default:
					SysBeep(6);
					handledEvent = true;
					break;
			}
			break;
		default:
			handledEvent = MWindow::StandardDialogFilter(dialog,eventPtr,itemHit);
			break;
	}
	
	return handledEvent;
}

#define GETFLAG(control, flag) {if (GetControlValue(control)) (**data).flags |= flag; else (**data).flags &= ~flag;}

void editorPreferencesClass::Edit(int pane)
{
	DialogPtr			preferencesDialog;
	ModalFilterUPP		eventFilterUPP;
	ControlHandle		defaultZoomLevelField,
						defaultZoomLevelArrows,
						showOnlyLoadedMembers,
						checkSync,
						dither,
						newEditor,
						openIcon,
						doNothing,
						defaultFormat,
						tabs,
						saveDataAndResource,
						saveData,
						saveResource,
						externalEditor,
						editorShortcut,
						exportIconAndMask,
						exportFormat,
						previewFullSize,
						previewScaled,
						previewSizeLabel,
						previewSizeSlider,
						previewSizeField,
						tempControl;
	Str255				tempString, editorShortcutTitle;
	short				itemHit, currentTab;
	bool				dialogDone;
	MenuHandle			typesMenu;
	ControlFontStyleRec	smallTextStyle; // text style used for the controls
	long				oldFormat, oldUsedMembers, previewSize;
	unsigned char		oldShortcut[kMaxExternalEditorShortcutKeys + 1];
	FSSpec				oldEditorSpec, newEditorSpec;
	
	oldFormat = (**data).defaultFormat;
	oldUsedMembers = (**data).defaultUsedMembers;
	oldEditorSpec = GetExternalEditor();
	newEditorSpec = oldEditorSpec;

	smallTextStyle.flags = kControlUseFontMask | kControlUseSizeMask;
	smallTextStyle.font = kThemeSmallSystemFont; // this font is installed on all systems
	smallTextStyle.size = 9;
	
	preferencesDialog = GetNewDialog(rPreferencesDialog, NULL, (WindowPtr)-1L);
	
	MWindow::DeactivateAll();
	
	eventFilterUPP = NewModalFilterUPP(editorPreferencesClass::PreferencesDialogFilter);
	
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
	
	GetDialogItemAsControl(preferencesDialog, iShowOnlyLoadedMembers, &showOnlyLoadedMembers);
	SetControlValue(showOnlyLoadedMembers, bool((**data).flags & prefsShowOnlyLoadedMembers));
	
	GetDialogItemAsControl(preferencesDialog, iCheckSync, &checkSync);
	SetControlValue(checkSync, !bool((**data).flags & prefsDontCheckMasks));
	
	GetDialogItemAsControl(preferencesDialog, iDither, &dither);
	SetControlValue(dither, bool((**data).flags & prefsDither));
	
	GetDialogItemAsControl(preferencesDialog, iDefaultIconFormat, &defaultFormat);
	SetControlValue(defaultFormat, (**data).defaultFormat);
	typesMenu = GetControlPopupMenuHandle(defaultFormat);
	DisableMenuItem(typesMenu, formatMacOSXServer);
	
	GetDialogItemAsControl(preferencesDialog, iStartupCreateNewEditor, &newEditor);
	SetControlValue(newEditor, bool(!((**data).flags & prefsDontMakeNewEditor)));
	
	GetDialogItemAsControl(preferencesDialog, iStartupOpenIcon, &openIcon);
	SetControlValue(openIcon, bool((**data).flags & prefsOpenIcon));
	
	GetDialogItemAsControl(preferencesDialog, iStartupDoNothing, &doNothing);
	SetControlValue(doNothing, bool((**data).flags & prefsDontMakeNewEditor) &&
							   bool(!((**data).flags & prefsOpenIcon)));
							   
	GetDialogItemAsControl(preferencesDialog, iSaveDataAndResource, &saveDataAndResource);
	if ((**data).saveFork == dataAndResourceForks) SetControlValue(saveDataAndResource, 1);
	GetDialogItemAsControl(preferencesDialog, iSaveData, &saveData);
	if ((**data).saveFork == dataFork) SetControlValue(saveData, 1);
	GetDialogItemAsControl(preferencesDialog, iSaveResource, &saveResource);
	if ((**data).saveFork == resourceFork) SetControlValue(saveResource, 1);
	
	GetDialogItemAsControl(preferencesDialog, iExternalEditorButton, &externalEditor);
	SetControlTitle(externalEditor, oldEditorSpec.name);
	SetControlFontStyle(externalEditor, &smallTextStyle);
	
	GetDialogItemAsControl(preferencesDialog, iEditorShortcutButton, &editorShortcut);
	GetEditorShortcutString(editorShortcutTitle);
	SetControlTitle(editorShortcut, editorShortcutTitle);
	SetControlFontStyle(editorShortcut, &smallTextStyle);
	
	GetDialogItemAsControl(preferencesDialog, iExportIconAndMask, &exportIconAndMask);
	SetControlValue(exportIconAndMask, bool((**data).flags & prefsExportIconAndMask));
	
	GetDialogItemAsControl(preferencesDialog, iExportFormat, &exportFormat);
	SetControlValue(exportFormat, (**data).externalEditorFormat);
	
	GetDialogItemAsControl(preferencesDialog, iPreviewFullSize, &previewFullSize);
	GetDialogItemAsControl(preferencesDialog, iPreviewScaled, &previewScaled);
	
	GetDialogItemAsControl(preferencesDialog, iPreviewSizeLabel, &previewSizeLabel);
	
	GetDialogItemAsControl(preferencesDialog, iPreviewSizeSlider, &previewSizeSlider);
	SetControlValue(previewSizeSlider, (**data).previewSize);
	SetControlReference(previewSizeSlider, long(preferencesDialog));
	
	GetDialogItemAsControl(preferencesDialog, iPreviewSizeField, &previewSizeField);
	SetControlFontStyle(previewSizeField, &smallTextStyle);
	NumToString((**data).previewSize, tempString);
	SetControlText(previewSizeField, tempString);
	
	GetDialogItemAsControl(preferencesDialog, iPreferencesTabs, &tabs);
	
	SetControlValue(tabs, pane);
	Draw1Control(tabs);
	
	for (int i=0; i < kPrefsDefaultsPaneItemsCount; i++)
	{
		GetDialogItemAsControl(preferencesDialog, kPrefsDefaultsPaneItems[i], &tempControl);
		EmbedControl(tempControl, tabs);
		if (pane == kPrefsDefaultsPane)
			Draw1Control(tempControl);
		else
			HideControl(tempControl);
	}
	
	for (int i=0; i < kPrefsExternalEditorPaneItemsCount; i++)
	{
		GetDialogItemAsControl(preferencesDialog, kPrefsExternalEditorPaneItems[i], &tempControl);
		EmbedControl(tempControl, tabs);
		if (pane == kPrefsExternalEditorPane)
			Draw1Control(tempControl);
		else
			HideControl(tempControl);
	}
	
	for (int i=0; i < kPrefsSettingsPaneItemsCount; i++)
	{
		GetDialogItemAsControl(preferencesDialog, kPrefsSettingsPaneItems[i], &tempControl);
		EmbedControl(tempControl, tabs);
		if (pane == kPrefsSettingsPane)
			Draw1Control(tempControl);
		else
			HideControl(tempControl);
	}
	
	if ((**data).flags & prefsPreviewScaled)
	{
		SetControlValue(previewFullSize, 0);
		SetControlValue(previewScaled, 1);
		ActivateControl(previewSizeLabel);
		ActivateControl(previewSizeSlider);
		ActivateControl(previewSizeField);
	}
	else
	{
		SetControlValue(previewFullSize, 1);
		SetControlValue(previewScaled, 0);
		DeactivateControl(previewSizeLabel);
		DeactivateControl(previewSizeSlider);
		DeactivateControl(previewSizeField);
	}
	
	AutoEmbedControl(newEditor, GetDialogWindow(preferencesDialog));
	AutoEmbedControl(openIcon, GetDialogWindow(preferencesDialog));
	AutoEmbedControl(doNothing, GetDialogWindow(preferencesDialog));
	
	AutoEmbedControl(saveDataAndResource, GetDialogWindow(preferencesDialog));
	AutoEmbedControl(saveData, GetDialogWindow(preferencesDialog));
	AutoEmbedControl(saveResource, GetDialogWindow(preferencesDialog));
	
	AutoEmbedControl(previewFullSize, GetDialogWindow(preferencesDialog));
	AutoEmbedControl(previewScaled, GetDialogWindow(preferencesDialog));
	
	ClearKeyboardFocus(GetDialogWindow(preferencesDialog));
	
	SAVEGWORLD;
	SetPortDialogPort(preferencesDialog);
	TextFont(applFont);
	TextSize(9);
	RESTOREGWORLD;
	
	icnsEditorClass::SetMembersCheckboxes(preferencesDialog, (**data).defaultUsedMembers, (**data).defaultFormat);
	
	ShowWindow(GetDialogWindow(preferencesDialog));
	
	dialogDone = false;
	
	for (int i=0; i < kMaxExternalEditorShortcutKeys + 1; i++)
		oldShortcut[i] = (**data).externalEditorShortcut[i];
	
	while (!dialogDone)
	{
		ModalDialog(eventFilterUPP, &itemHit);
		
		switch (itemHit)
		{
			case iOK:
				GetControlText(defaultZoomLevelField, tempString);
				tempString[0] -= 3;
				StringToNum(tempString, &(**data).defaultZoomLevel);
				
				GETFLAG(showOnlyLoadedMembers, prefsShowOnlyLoadedMembers);
				if (!GetControlValue(checkSync)) (**data).flags |= prefsDontCheckMasks; else (**data).flags &= ~prefsDontCheckMasks;
				GETFLAG(dither, prefsDither);
				GETFLAG(exportIconAndMask, prefsExportIconAndMask);
				GETFLAG(previewScaled, prefsPreviewScaled);
				
				(**data).defaultFormat = GetControlValue(defaultFormat);
				
				(**data).externalEditorFormat = GetControlValue(exportFormat);
				
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
				
				if (GetControlValue(saveDataAndResource)) (**data).saveFork = dataAndResourceForks;
				if (GetControlValue(saveResource)) (**data).saveFork = resourceFork;
				if (GetControlValue(saveData)) (**data).saveFork = dataFork;
				
				icnsEditorClass::GetMembersCheckboxes(preferencesDialog, &(**data).defaultUsedMembers);
				
				(**data).previewSize = GetControlValue(previewSizeSlider);
				dialogDone = true;
				break;
			case iCancel:
				(**data).defaultFormat = oldFormat;
				(**data).defaultUsedMembers = oldUsedMembers;
				for (int i=0; i < kMaxExternalEditorShortcutKeys + 1; i++)
					(**data).externalEditorShortcut[i] = oldShortcut[i];
				if (oldEditorSpec.parID != -1)
					SetExternalEditor(oldEditorSpec);
				
				dialogDone = true;
				break;
			case iShowOnlyLoadedMembers: ToggleCheckbox(showOnlyLoadedMembers); break;
			case iCheckSync: ToggleCheckbox(checkSync); break;
			case iDither: ToggleCheckbox(dither); break;
			
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
				
			case iSaveDataAndResource:
				SetControlValue(saveDataAndResource, 1);
				SetControlValue(saveResource, 0);
				SetControlValue(saveData, 0);
				break;
			case iSaveData:
				SetControlValue(saveDataAndResource, 0);
				SetControlValue(saveResource, 0);
				SetControlValue(saveData, 1);
				break;
			case iSaveResource:
				SetControlValue(saveDataAndResource, 0);
				SetControlValue(saveResource, 1);
				SetControlValue(saveData, 0);
				break;
			case iPreferencesTabs:
				ClearKeyboardFocus(GetDialogWindow(preferencesDialog));
				currentTab = GetControlValue(tabs);
				
				switch (currentTab)
				{
					case kPrefsSettingsPane:
						for (int i=0; i < kPrefsDefaultsPaneItemsCount; i++)
						{
							GetDialogItemAsControl(preferencesDialog, kPrefsDefaultsPaneItems[i], &tempControl);
							HideControl(tempControl);
						}
						for (int i=0; i < kPrefsExternalEditorPaneItemsCount; i++)
						{
							GetDialogItemAsControl(preferencesDialog, kPrefsExternalEditorPaneItems[i], &tempControl);
							HideControl(tempControl);
						}
						for (int i=0; i < kPrefsSettingsPaneItemsCount; i++)
						{
							GetDialogItemAsControl(preferencesDialog, kPrefsSettingsPaneItems[i], &tempControl);
							ShowControl(tempControl);
						}
						break;
					case kPrefsDefaultsPane:
						for (int i=0; i < kPrefsSettingsPaneItemsCount; i++)
						{
							GetDialogItemAsControl(preferencesDialog, kPrefsSettingsPaneItems[i], &tempControl);
							HideControl(tempControl);
						}
						for (int i=0; i < kPrefsExternalEditorPaneItemsCount; i++)
						{
							GetDialogItemAsControl(preferencesDialog, kPrefsExternalEditorPaneItems[i], &tempControl);
							HideControl(tempControl);
						}
						for (int i=0; i < kPrefsDefaultsPaneItemsCount; i++)
						{
							GetDialogItemAsControl(preferencesDialog, kPrefsDefaultsPaneItems[i], &tempControl);
							ShowControl(tempControl);
						}
						break;
					case kPrefsExternalEditorPane:
						for (int i=0; i < kPrefsSettingsPaneItemsCount; i++)
						{
							GetDialogItemAsControl(preferencesDialog, kPrefsSettingsPaneItems[i], &tempControl);
							HideControl(tempControl);
						}
						for (int i=0; i < kPrefsDefaultsPaneItemsCount; i++)
						{
							GetDialogItemAsControl(preferencesDialog, kPrefsDefaultsPaneItems[i], &tempControl);
							HideControl(tempControl);
						}
						for (int i=0; i < kPrefsExternalEditorPaneItemsCount; i++)
						{
							GetDialogItemAsControl(preferencesDialog, kPrefsExternalEditorPaneItems[i], &tempControl);
							ShowControl(tempControl);
						}
						break;
				}
				break;
			case iDefaultIconFormat:
				(**data).defaultFormat = GetControlValue(defaultFormat);
				(**data).defaultUsedMembers = kDefaultMembers[(**data).defaultFormat];
				icnsEditorClass::SetMembersCheckboxes(preferencesDialog, (**data).defaultUsedMembers, (**data).defaultFormat);
				break;
			case iResetPaletteLocations:
				ResetPaletteLocations();
				SetupPaletteLocations();
				break;
			case iExportFormat: break;
			case iExportIconAndMask: ToggleCheckbox(exportIconAndMask); break;
			case iExternalEditorButton:
				GetNewExternalEditor();
				newEditorSpec = GetExternalEditor();
				SetControlTitle(externalEditor, newEditorSpec.name);
				break;
			case iEditorShortcutButton:
				for (int i=0; i < kPrefsExternalEditorPaneItemsCount; i++)
				{
					GetDialogItemAsControl(preferencesDialog, kPrefsExternalEditorPaneItems[i], &tempControl);
					DeactivateControl(tempControl);
				}
				GetNewEditorShortcut();
				for (int i=0; i < kPrefsExternalEditorPaneItemsCount; i++)
				{
					GetDialogItemAsControl(preferencesDialog, kPrefsExternalEditorPaneItems[i], &tempControl);
					ActivateControl(tempControl);
				}
				GetEditorShortcutString(editorShortcutTitle);
				SetControlTitle (editorShortcut, editorShortcutTitle);
				break;
			case iPreviewFullSize:
				SetControlValue(previewFullSize, 1);
				SetControlValue(previewScaled, 0);
				if (IsControlActive(previewSizeLabel))
				{
					DeactivateControl(previewSizeLabel);
					DeactivateControl(previewSizeSlider);
					DeactivateControl(previewSizeField);
				}
				break;
			case iPreviewScaled:				
				SetControlValue(previewFullSize, 0);
				SetControlValue(previewScaled, 1);
				if (!IsControlActive(previewSizeLabel))
				{
					ActivateControl(previewSizeLabel);
					ActivateControl(previewSizeSlider);
					ActivateControl(previewSizeField);
				}
				break;
			case iPreviewSizeField:
				long oldValue;
				GetControlText(previewSizeField, tempString);
				StringToNum(tempString, &previewSize);
				
				oldValue = previewSize;
				
				SetControlValue(previewSizeSlider, previewSize);
				
				previewSize = GetControlValue(previewSizeSlider);
				if (previewSize < oldValue)
				{
					NumToString(previewSize, tempString);
					SetControlText(previewSizeField, tempString);
					SelectDialogItemText(preferencesDialog, iPreviewSizeField, 0, 32767);
				}
				break;
			case -1:
				break;
			default:
				icnsEditorClass::HandleMembersCheckbox(preferencesDialog, itemHit, &(**data).defaultUsedMembers, (**data).defaultFormat);
				break;
		}
	}
	
	DisposeModalFilterUPP(eventFilterUPP);
	DisposeDialog(preferencesDialog);
	
	MWindow::ActivateAll();
}

void editorPreferencesClass::Save(int ID)
{
	if (icnsEditorClass::statics.colorsPalette->IsVisible())
		(**data).flags |= prefsColorsPaletteVisible;
	else
		(**data).flags &= ~prefsColorsPaletteVisible;
		
	if (icnsEditorClass::statics.membersPalette->IsVisible())
		(**data).flags |= prefsMembersPaletteVisible;
	else
		(**data).flags &= ~prefsMembersPaletteVisible;
		
	if (icnsEditorClass::statics.previewPalette->IsVisible())
		(**data).flags |= prefsPreviewPaletteVisible;
	else
		(**data).flags &= ~prefsPreviewPaletteVisible;
		
	if (icnsEditorClass::statics.toolPalette->IsVisible())
		(**data).flags |= prefsToolPaletteVisible;
	else
		(**data).flags &= ~prefsToolPaletteVisible;
	
	(**data).colorsPaletteLocation = icnsEditorClass::statics.colorsPalette->GetPosition();
	(**data).membersPaletteLocation = icnsEditorClass::statics.membersPalette->GetPosition();
	(**data).membersPaletteDimensions = icnsEditorClass::statics.membersPalette->GetDimensions();
	(**data).previewPaletteLocation = icnsEditorClass::statics.previewPalette->GetPosition();
	(**data).toolPaletteLocation = icnsEditorClass::statics.toolPalette->GetPosition();
	
	icnsEditorClass::statics.toolPalette->GetColors(&(**data).foreColor, &(**data).backColor);
	(**data).currentTool = icnsEditorClass::statics.toolPalette->GetTrueCurrentTool();
	(**data).pattern = icnsEditorClass::statics.toolPalette->GetPatternIndex();
	
	(**data).currentColorPicker = icnsEditorClass::statics.colorsPalette->GetCurrentPicker();
	
	AddResource((Handle)data, 'Pref', ID, "\p");
	ChangedResource((Handle)data);
	WriteResource((Handle)data);
	
	AddResource((Handle)(**data).externalEditorAlias, 'Alis', 128, "\pExternal Editor");
	ChangedResource((Handle)(**data).externalEditorAlias);
	WriteResource((Handle)(**data).externalEditorAlias);
	
	for (int i=0; i < kMaxRecentFiles; i++)
	{
		AddResource((Handle)(**data).recentFiles[i], 'Alis', kRecentFilesBaseID + i, "\p");
		ChangedResource((Handle)(**data).recentFiles[i]);
		WriteResource((Handle)(**data).recentFiles[i]);
	}
}

#pragma mark -

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

void editorPreferencesClass::ToggleFeature(long flag)
{
	if ((**data).flags & flag)
		(**data).flags &= ~flag;
	else
		(**data).flags |= flag;
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

long editorPreferencesClass::GetDefaultUsedMembers()
{
	return (**data).defaultUsedMembers;
}

int editorPreferencesClass::GetDefaultZoomLevel()
{
	return (**data).defaultZoomLevel;
}

int editorPreferencesClass::GetSaveFork()
{
	return (**data).saveFork;
}

int editorPreferencesClass::GetPreviewSize()
{
	return (**data).previewSize;
}

Point editorPreferencesClass::GetAdjustDialogLocation(void)
{
	return (**data).adjustDialogLocation;
}

void editorPreferencesClass::SetAdjustDialogLocation(Point location)
{
	(**data).adjustDialogLocation = location;
}

#pragma mark -

void editorPreferencesClass::GetEditorShortcutString(Str255 string)
{
	int currentKey = 0;
	Str255	currentKeyName;
	
	CopyString(string, "\p");
	
	while ((**data).externalEditorShortcut[currentKey] != 0xFF)
	{
		GetKeyName((**data).externalEditorShortcut[currentKey++], currentKeyName);
		AppendString(string, currentKeyName);
		AppendString(string, "\p + ");
	}
	
	if (string[0])
		string[0] -= 3;
	else
		GetIndString(string, rBasicStrings, eClickToChooseAShortcut);
}

void editorPreferencesClass::GetNewEditorShortcut()
{
	DialogPtr			dialog;
	ControlFontStyleRec	smallTextStyle;
	ControlHandle		shortcutDisplay;
	Str255				shortcutText;
	int					insertionPoint = 0;
	int					currentKey;
	
	dialog = GetNewDialog(rSetExternalEditorShortcut, NULL, (WindowPtr)-1L);
	
	smallTextStyle.flags = kControlUseFontMask | kControlUseSizeMask | kControlUseJustMask;
	smallTextStyle.font = kThemeSmallSystemFont; // this font is installed on all systems
	smallTextStyle.size = 9;
	smallTextStyle.just = teJustCenter;
	
	GetDialogItemAsControl(dialog, iShortcutDisplay, &shortcutDisplay);
	SetControlFontStyle(shortcutDisplay, &smallTextStyle);
	
	MWindow::DeactivateAll();
	
	ShowWindow(GetDialogWindow(dialog));
	
	DrawControls(GetDialogWindow(dialog));
	
	for (int i=0; i < kMaxExternalEditorShortcutKeys + 1; i++)
		(**data).externalEditorShortcut[i] = 0xFF;
	
	while (!KeysArePressed()) {;}
	
	while (KeysArePressed() && insertionPoint < kMaxExternalEditorShortcutKeys)
	{
		currentKey = -1;
		
		do
		{
			currentKey = GetNextKeyPressed(currentKey + 1);
			if (currentKey != -1)
			{
				bool newKey = true;
				
				for (int i=0; i < insertionPoint; i++)
					if ((**data).externalEditorShortcut[i] == currentKey)
						newKey = false;
						
				if (newKey && insertionPoint < kMaxExternalEditorShortcutKeys)
				{
					(**data).externalEditorShortcut[insertionPoint++] = currentKey;
					GetEditorShortcutString(shortcutText);
					SetControlText(shortcutDisplay, shortcutText);
					Draw1Control(shortcutDisplay);
				}
			}
		} while (currentKey != -1);
	}
	
	DisposeDialog(dialog);
	
	FlushEvents(everyEvent, 0);
	
	MWindow::ActivateAll();
}

bool editorPreferencesClass::IsEditorShortcutPressed()
{
	if ((**data).externalEditorShortcut[0] == 0xFF)
		return false;
	
	for (int i=0; (**data).externalEditorShortcut[i] != 0xFF; i++)
		if (!IsKeyPressed((**data).externalEditorShortcut[i]))
			return false;
			
	return true;	
}

FSSpec editorPreferencesClass::GetExternalEditor()
{
	FSSpec editorSpec;
	Boolean wasChanged;
	
	if ((**data).externalEditorAlias == NULL ||
		ResolveAlias(NULL, (**data).externalEditorAlias, &editorSpec, &wasChanged) != noErr)
	{
		GetIndString(editorSpec.name, rBasicStrings, eClickToChooseAnEditor);
		editorSpec.vRefNum = -1;
		editorSpec.parID = -1;
	}
	
	return editorSpec;
}

void editorPreferencesClass::GetNewExternalEditor()
{
	FSSpec newSpec;
	
	if (MUtilities::GetFileSpec('****', 'APPL', "\p", NULL, &newSpec))
		SetExternalEditor(newSpec);
}

void editorPreferencesClass::SetExternalEditor(FSSpec editorSpec)
{
	if ((**data).externalEditorAlias != NULL)
		DisposeHandle(Handle((**data).externalEditorAlias));
	NewAliasMinimal(&editorSpec, &(**data).externalEditorAlias);
}

int editorPreferencesClass::GetExternalEditorFormat()
{
	return (**data).externalEditorFormat;
}

long editorPreferencesClass::GetExternalEditorCreator()
{
	FInfo	fileInfo;
	FSSpec	externalEditor;
	
	externalEditor = GetExternalEditor();
	
	FSpGetFInfo(&externalEditor, &fileInfo);
	
	return fileInfo.fdCreator;
}

bool editorPreferencesClass::ExternalEditorChosen()
{
	FSSpec externalEditor;
	
	externalEditor = GetExternalEditor();
	
	return (externalEditor.vRefNum != -1 || externalEditor.parID != -1);
}

#pragma mark -

int editorPreferencesClass::GetLineThickness()
{
	return (**data).lineThickness;
}

void editorPreferencesClass::SetLineThickness(int thickness)
{
	(**data).lineThickness = thickness;
}

#pragma mark -

int editorPreferencesClass::GetPreviewBackground()
{
	return (**data).previewBackground;
}

void editorPreferencesClass::SetPreviewBackground(int background)
{
	(**data).previewBackground = background;
}

#pragma mark -

FSSpec editorPreferencesClass::GetNthRecentFile(int index)
{
	FSSpec recentFile;
	
	if ((**data).recentFiles[index] == NULL || index >= (**data).recentFilesCount)
	{
		CopyString(recentFile.name, "\p");
		recentFile.vRefNum = -1;
		recentFile.parID = -1;
	}
	else
	{
		Boolean wasChanged;
		
		if (ResolveAlias(NULL, (**data).recentFiles[index], &recentFile, &wasChanged) != noErr)
		{
			CopyString(recentFile.name, "\p");
			recentFile.vRefNum = -1;
			recentFile.parID = -1;
			
			for (int i=index; i < (**data).recentFilesCount - 1; i++)
				(**data).recentFiles[i] = (**data).recentFiles[i + 1];
			
			(**data).recentFilesCount--;
		}
	}
	
	return recentFile;
}

void editorPreferencesClass::AddRecentFile(FSSpec file)
{
	FSSpec currentFile;
	int	indexToBeDeleted;
	
	if ((**data).recentFilesCount < kMaxRecentFiles)
		indexToBeDeleted = -1;
	else
		indexToBeDeleted = kMaxRecentFiles - 1;
	
	for (int i=0; i < (**data).recentFilesCount; i++)
	{
		currentFile	= GetNthRecentFile(i);
		if (SameFile(currentFile, file))
			indexToBeDeleted = i;
	}
	
	if (indexToBeDeleted != -1 && (**data).recentFiles[indexToBeDeleted] != NULL)
		DisposeHandle(Handle((**data).recentFiles[indexToBeDeleted]));
	else
		indexToBeDeleted = (**data).recentFilesCount++;
	
	for (int i=indexToBeDeleted; i > 0; i--)
		(**data).recentFiles[i] = (**data).recentFiles[i - 1];
	
	NewAliasMinimal(&file, &(**data).recentFiles[0]);
}

int editorPreferencesClass::GetRecentFilesCount()
{
	return (**data).recentFilesCount;
}

#pragma mark -

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

bool editorPreferencesClass::IsRegistered()
{
	return IsRegistered((**data).name);
}

bool editorPreferencesClass::IsRegistered(Str255 name)
{
	return !(EqualString("\pNot registered", name, true, true) ||
			 EqualString("\pInpher                  ", name, true, true) ||
			 EqualString("\pMacintosh               ", name, true, true));
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
	return (IsRegistered(name) && EqualString(inRegCode, regCode, true, true));
}

void editorPreferencesClass::Register(Str255 name, Str255 company, Str255 regCode)
{
	CopyString((**data).name, name);
	CopyString((**data).company, company);
	CopyString((**data).regCode, regCode);
}
