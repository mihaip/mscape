#pragma once

#include "commonFunctions.h"
#include "MWindow.h"
#include "ColorsPalette.h"
#include "MembersPalette.h"
#include "PreviewPalette.h"
#include "ToolPalette.h"

const static int kEmergencyMemorySize = 10240;
const static int kMaxIconSize = 128; // thumbnail (the biggest size) is 128 x 128

const static int kMaxMagnification = 16;
const static int kMinMagnification = 1;

const static int kDefaultWindowSeparation = 2;

const static int kCanvasWidth = 512 + 2 * 8 * 4; //kMaxIconSize * kMaxMagnification;
const static int kCanvasHeight = 512 + 2 * 8 * 4;

const static int kMaxExternalEditorShortcutKeys = 5;

enum recentFileStuff
{
	kMaxRecentFiles = 5,
	kRecentFilesBaseID = 200
};

enum staticsResources
{
	// selection patterns
	rSelectionPatterns = 1000,
	kNoOfSelectionPatterns = 8,
	
	// color pickers
	r8BitSysPicker = 2050,
	r8BitGrayPicker = 2051,
	r4BitSysPicker = 2052,
	r1BitSysPicker = 2053,
	r4BitWinPicker = 2054,
	r8BitWinPicker = 2055,
	
	// dialogs
	rPreferencesDialog = 1000,
	rSetExternalEditorShortcut = 1002,
	
	// others
	rDefaultPrefID = 129,
	mZoom = 201
};

enum preferencesDialogItems
{
	iShowOnlyLoadedMembers = 3,
	iDefaultZoomLevelField = 4,
	iDefaultZoomLevelArrows = 5,
	iStartupCreateNewEditor = 6,
	iStartupOpenIcon = 7,
	iStartupDoNothing = 8,
	iCheckSync = 9,
	iDither = 10,
	iMembersPaletteBox = 11,
	iPreviewFullSize = 65,
	iPreviewScaled = 66,
	iPreviewSizeSlider = 67,
	iPreviewSizeField = 68,
	iPreviewSizeLabel = 69,
	
	iDefaultZoomLevelLabel = 12,
	iDefaultIconFormat = 13,
	iStartupGroupBox = 14,
	iPreferencesTabs = 15,
	iSaveGroupBox = 16,
	iSaveDataAndResource = 55,
	iSaveResource = 56,
	iSaveData = 57,
	iResetPaletteLocations = 58,
	
	iExternalEditorLabel = 63,
	iExternalEditorButton = 61,
	iEditorShortcutLabel = 64,
	iEditorShortcutButton = 62,
	iExportIconAndMask = 60,
	iExportFormat = 59
};

enum preferencesTabs
{
	kPrefsSettingsPane = 1,
	kPrefsDefaultsPane = 2,
	kPrefsExternalEditorPane = 3
};

enum prefsSaveForks
{
	dataAndResourceForks,
	dataFork,
	resourceFork
};

enum prefsExternalEditorFormat
{
	exportFormatPICT = 1,
	exportFormatPhotoshop = 2,
	exportFormatPNG = 3,
	exportFormatTIFF = 4
};

enum setExternalEditorShortcutDialogItems
{
	iShortcutDisplay = 2
};

typedef struct preferencesStruct
{
	long 		version;
	Str255 		name;
	Str255 		company;
	Str255 		regCode;
	long 		flags;
	long 		defaultZoomLevel;
	long 		timesUsed;
	long 		defaultFormat;
	Point		colorsPaletteLocation;
	RGBColor	favoriteColors[kFavoritesCPSampleYCount * kFavoritesCPSampleXCount];
	Point		membersPaletteLocation;
	Point		membersPaletteDimensions;
	Point		previewPaletteLocation;
	Point		toolPaletteLocation;
	RGBColor	foreColor, backColor;
	int			currentTool;
	long		defaultUsedMembers;
	long		saveFork;
	AliasHandle	externalEditorAlias;
	unsigned char externalEditorShortcut[kMaxExternalEditorShortcutKeys + 1];
	long		externalEditorFormat;
	long		lineThickness;
	long		pattern;
	long		previewSize;
	Point		adjustDialogLocation;
	long		currentColorPicker;
	long		previewBackground;
	AliasHandle	recentFiles[kMaxRecentFiles];
	int			recentFilesCount;
} PreferencesStruct;

typedef PreferencesStruct** PreferencesHandle;

class editorPreferencesClass
{
	private:
		void				GenerateRegCode(Str255 name, Str255 regCode);
		PreferencesHandle	data;
		
		static pascal bool	PreferencesDialogFilter(DialogPtr dialog, EventRecord* eventPtr, short* itemHit);
		
		static pascal void 	ZoomArrowsAction(ControlHandle controlHdl,SInt16 partCode);
		static pascal void	PreviewSizeSliderAction(ControlHandle theControl, SInt16 partCode);
		
	public:
	
		void				Load(int ID);
		void				Edit(int pane);
		void				Save(int ID);
		
		bool				FeatureEnabled(long flag);
		void				EnableFeature(long flag);
		void				DisableFeature(long flag);
		void				ToggleFeature(long flag);
		
		RGBColor			GetFavoriteColor(int index);
		void				SetFavoriteColor(int index, RGBColor color);
		
		int					GetDefaultFormat();
		long				GetDefaultUsedMembers();
		int					GetDefaultZoomLevel();
		int					GetSaveFork();
		int					GetPreviewSize();
		
		void				GetEditorShortcutString(Str255 string);
		void				GetNewEditorShortcut();
		bool				IsEditorShortcutPressed();
		FSSpec				GetExternalEditor();
		void				GetNewExternalEditor();
		void				SetExternalEditor(FSSpec editorSpec);
		int					GetExternalEditorFormat();
		long				GetExternalEditorCreator();
		bool				ExternalEditorChosen();
		
		FSSpec				GetNthRecentFile(int index);
		void				AddRecentFile(FSSpec file);
		int					GetRecentFilesCount();
		
		int					GetLineThickness();
		void				SetLineThickness(int thickness);
		
		int					GetPreviewBackground();
		void				SetPreviewBackground(int background);
		
		Point				GetAdjustDialogLocation();
		void				SetAdjustDialogLocation(Point location);
		
		void				SetupPaletteLocations();
		void				ResetPaletteLocations();
		
		void				IncrementTimesUsed();
		int					GetTimesUsed();
		
		bool				IsRegistered();
		bool				IsRegistered(Str255 name);
		bool				ValidRegCode(Str255 name, Str255 inRegCode);
		void				Register(Str255 name, Str255 company, Str255 regCode);
		void				GetRegistrationInfo(Str255 name, Str255 company, Str255 regCode);
		
};

enum preferencesFlags
{
	prefsDrawGrid = 				1 << 0,
	prefsDontCheckMasks = 			1 << 1,
	prefsDither =					1 << 2,
	prefsDontMakeNewEditor =		1 << 3,
	prefsOpenIcon = 				1 << 4,
	prefsGenerateOldStyle = 		1 << 5,
	prefsRealTimePreviews = 		1 << 6,
	prefsAntiAlias = 				1 << 7,
	prefsColorsPaletteVisible = 	1 << 8,
	prefsMembersPaletteVisible =	1 << 9,
	prefsPreviewPaletteVisible =	1 << 10,
	prefsToolPaletteVisible = 		1 << 11,
	prefsExportIconAndMask =		1 << 12,
	prefsFilled = 					1 << 13,
	prefsPreviewScaled = 			1 << 14,
	prefsShowOnlyLoadedMembers = 	1 << 15,
	prefsPreviewSelected =			1 << 16
};

typedef struct textSettings
{
	Str255 text;
	short fontNo;
	short size;
	int style;
} textSettings;

enum updateFlags
{
	updateAll = 1
};

class editorStaticsClass
{
	private:
		Ptr				tempMemoryChunk;
		
		PixMapHandle	sys8PickerPix;
		GWorldPtr		sys8PickerGW;
		RgnHandle		sys8PickerRgn;
		
		PixMapHandle	sys4PickerPix;
		GWorldPtr		sys4PickerGW;
		RgnHandle		sys4PickerRgn;
		
		PixMapHandle	sys1PickerPix;
		GWorldPtr		sys1PickerGW;
		RgnHandle		sys1PickerRgn;
		
		PixMapHandle	gray8PickerPix;
		GWorldPtr		gray8PickerGW;
		RgnHandle		gray8PickerRgn;
		
		PixMapHandle	win8PickerPix;
		GWorldPtr		win8PickerGW;
		RgnHandle		win8PickerRgn;
		
		PixMapHandle	win4PickerPix;
		GWorldPtr		win4PickerGW;
		RgnHandle		win4PickerRgn;
		
		void 			LoadPicker(int ID,
								   PixMapHandle* pickerPix,
								   GWorldPtr* pickerGW,
								   RgnHandle* pickerRgn);
	public:
						editorStaticsClass(void);
						~editorStaticsClass(void);
		
		CGrafPtr		startupPort;
		GDHandle		startupDevice;
		
		PicHandle		aliasedPic, antiAliasedPic,
						unfilledPic, filledPic;
		
		Rect			canvasRect;
		GWorldPtr		canvasGW;
		PixMapHandle	canvasPix;
		
		Pattern			selectionPatterns[kNoOfSelectionPatterns];
		
		textSettings	lastTextSettings;
		
		RgnHandle		dragHiliteRgn;
		
		long			currentBalloon;
		
		bool			firstTime;
		
		MenuHandle		zoomMenu,
						browserTypeMenu;
		
		editorPreferencesClass preferences;
		
		void			ReclaimEmergencyMemory(void);
		void			AllocateEmergencyMemory(void);
		
		short			DisplayAlert(Str255 message, Str255 button1, Str255 button2, Str255 button3, int type);
		
		void	 		GetPickerPix(long iconName, long colors, PixMapHandle* pix, GWorldPtr* gW, RgnHandle* shapeRgn);
		
		Point 			GetDefaultPalettePosition(MFloaterPtr palette);
		Point			GetDefaultMembersPaletteDimensions();
		
		void			Stagger(MWindowPtr window);
		Point			GetDefaultWindowPosition();
		
		void			UpdatePalettes(int flags);
		void			UpdatePalettes(icnsEditorPtr frontEditor, int flags);
		
		bool 			GetSupportFolder(FSSpec* supportFolder);
		
		ColorsPalettePtr colorsPalette;
		MembersPalettePtr membersPalette;
		PreviewPalettePtr previewPalette;
		ToolPalettePtr	  toolPalette;
};
