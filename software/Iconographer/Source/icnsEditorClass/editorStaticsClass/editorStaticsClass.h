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

const static int kCanvasWidth = 512 + 2 * 8 * 3 + 2 * 8; //kMaxIconSize * kMaxMagnification;
const static int kCanvasHeight = 512 + 2 * 8 * 3 + 2 * 8;

const static int kMaxExternalEditorShortcutKeys = 5;

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
	iDrawGrid = 3,
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
	kSettingsTab = 1,
	kDefaultsTab = 2,
	kExternalEditorTab = 3
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
		void				Edit();
		void				Save(int ID);
		
		bool				FeatureEnabled(long flag);
		void				EnableFeature(long flag);
		void				DisableFeature(long flag);
		
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
		
		int					GetLineThickness();
		void				SetLineThickness(int thickness);
		
		Point				GetAdjustDialogLocation();
		void				SetAdjustDialogLocation(Point location);
		
		void				SetupPaletteLocations();
		void				ResetPaletteLocations();
		
		void				IncrementTimesUsed();
		int					GetTimesUsed();
		
		bool				IsRegistered();
		bool				ValidRegCode(Str255 name, Str255 inRegCode);
		void				Register(Str255 name, Str255 company, Str255 regCode);
		void				GetRegistrationInfo(Str255 name, Str255 company, Str255 regCode);
		
};

enum preferencesFlags
{
	prefsDrawGrid = 1,
	prefsDontCheckSync = 2,
	prefsDither = 4,
	prefsDontMakeNewEditor = 8,
	prefsOpenIcon = 16,
	prefsGenerateOldStyle = 32,
	prefsRealTimePreviews = 64,
	prefsAntiAlias = 128,
	prefsColorsPaletteVisible = 256,
	prefsMembersPaletteVisible = 512,
	prefsPreviewPaletteVisible = 1024,
	prefsToolPaletteVisible = 2048,
	prefsExportIconAndMask = 4096,
	prefsFilled = 8192,
	prefsPreviewScaled = 16384
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
		
		CIconHandle		swapColorsIconEnabled;
		CIconHandle		swapColorsIconDisabled;
		
		CIconHandle		resetColorsIconEnabled;
		CIconHandle		resetColorsIconDisabled;
		
		PicHandle		aliasedPic, antiAliasedPic,
						unfilledPic, filledPic;
		
		Rect			canvasRect;
		GWorldPtr		canvasGW;
		PixMapHandle	canvasPix;
		
		Pattern			selectionPatterns[kNoOfSelectionPatterns];
		
		textSettings	lastTextSettings;
		
		RgnHandle		dragHiliteRgn;
		
		long			currentBalloon;
		
		
		
		MenuHandle		zoomMenu;
		
		editorPreferencesClass preferences;
		
		void			ReclaimEmergencyMemory(void);
		void			AllocateEmergencyMemory(void);
		
		short			DisplayAlert(Str255 message, Str255 button1, Str255 button2, Str255 button3);
		
		void	 		GetPickerPix(long iconName, long colors, PixMapHandle* pix, GWorldPtr* gW, RgnHandle* shapeRgn);
		
		Point 			GetDefaultPalettePosition(MFloaterPtr palette);
		Point			GetDefaultMembersPaletteDimensions();
		
		void			Stagger(MWindowPtr window);
		Point			GetDefaultWindowPosition();
		
		void			UpdatePalettes(int flags);
		void			UpdatePalettes(icnsEditorPtr frontEditor, int flags);
		
		ColorsPalettePtr colorsPalette;
		MembersPalettePtr membersPalette;
		PreviewPalettePtr previewPalette;
		ToolPalettePtr	  toolPalette;
};
