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

#if TARGET_API_MAC_CARBON
const static int kDefaultWindowSeparation = 3;
#else
const static int kDefaultWindowSeparation = 2;
#endif

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
	rPreferencesGeneralPane = 1100,
	rPreferencesDefaultsPane = 1101,
	rPreferencesExternalEditorPane = 1102,
	rSetExternalEditorShortcut = 1002,
	
	// others
	rDefaultPrefID = 129,
	mZoom = 201
};

enum preferencesDialogItems
{
	iPreferencesTabs = 3,
	
	// defaults pane
	iDefaultZoomLevelLabel = 4,
	iDefaultZoomLevelField = 5,
	iDefaultZoomLevelArrows = 6,
	iDefaultIconFormat = 7,
	iDefaultIconFormatLabel = 8,
	// default members stuff goes here, constants are in MIcon.h
	
	
	// external editor pane	
	iExternalEditorLabel = 55,
	iExternalEditorButton = 56,
	iEditorShortcutLabel = 57,
	iEditorShortcutButton = 58,
	iExportFormat = 59,
	iExportIconAndMask = 60,
	iExportFormatLabel = 61,
	
	// general pane
	iShowOnlyLoadedMembers = 62,
	iCheckSync = 63,
	iDither = 64,
	iStartupDivider = 65,
	iStartupCreateNewEditor = 66,
	iStartupOpenIcon = 67,
	iStartupDoNothing = 68,
	iMembersPaletteDivider = 69,
	iPreviewFullSize = 70,
	iPreviewScaled = 71,
	iPreviewSizeLabel = 72,
	iPreviewSizeSlider = 73,
	iPreviewSizeField = 74,
	iResetPaletteLocations = 75,
	iMembersPaletteLabel = 76,
	iStartupLabel = 77,
	iSettingsLabel = 78,
	iSaveExtraInfo = 79
};

enum preferencesTabs
{
	kPrefsSettingsPane = 1,
	kPrefsDefaultsPane = 2,
	kPrefsExternalEditorPane = 3
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

enum prefsStrokeLocations
{
	strokeInside = 1,
	strokeCenter = 2,
	strokeOutside = 3
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
	long		saveForkIgnored;
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
	RGBColor	previewBackgroundColor;
	int			lastSelectionExpansion;
	int			lastSelectionStrokeAmount;
	int			lastSelectionStrokeLocation;
	Rect		lastScreenBounds;
} PreferencesStruct;

typedef PreferencesStruct** PreferencesHandle;

class editorPreferencesClass
{
	private:
		void				GenerateRegCode(Str255 name, Str255 regCode);
		PreferencesHandle	data;
		
		void				LoadDialog();
		void				DisposeDialog();
		void				SetPane(int pane);
		DialogPtr			preferencesDialog;
		ModalFilterUPP		eventFilterUPP;
		ControlHandle		defaultZoomLevelField,
							defaultZoomLevelArrows,
							showOnlyLoadedMembers,
							checkSync,
							dither,
							saveExtraInfo,
							newEditor,
							openIcon,
							doNothing,
							defaultFormat,
							tabs,
							externalEditor,
							editorShortcut,
							exportIconAndMask,
							exportFormat,
							previewFullSize,
							previewScaled,
							previewSizeLabel,
							previewSizeSlider,
							previewSizeField;
		Handle				generalControls, defaultsControls, externalEditorControls;
		MenuHandle			typesMenu;

#if TARGET_API_MAC_CARBON
		bool				dialogLoaded;
#endif
	
		int					currentPane;
		
		static pascal Boolean	PreferencesDialogFilter(DialogPtr dialog, EventRecord* eventPtr, short* itemHit);
		
		static pascal void 	ZoomArrowsAction(ControlHandle controlHdl,SInt16 partCode);
		static pascal void	PreviewSizeSliderAction(ControlHandle theControl, SInt16 partCode);
		
	public:
							editorPreferencesClass();
							~editorPreferencesClass();
							
		void				Setup();
		void				Load(int ID);
		
		void				SetupPalettes();
		void				UpdatePaletteStatus();
		
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
		/*int					GetSaveFork();*/
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
		
		int					GetLastSelectionExpansion();
		void				SetLastSelectionExpansion(int expansion);
		
		int					GetLastSelectionStrokeAmount();
		void				SetLastSelectionStrokeAmount(int stroke);
		
		int					GetLastSelectionStrokeLocation();
		void				SetLastSelectionStrokeLocation(int stroke);
		
		int					GetPreviewBackground();
		void				SetPreviewBackground(int background);
		
		RGBColor			GetPreviewBackgroundColor();
		void				SetPreviewBackgroundColor(RGBColor color);
		
		Point				GetAdjustDialogLocation();
		void				SetAdjustDialogLocation(Point location);
		
		void				SetupPaletteLocations();
		void				ResetPaletteLocations();
		
		Rect				GetLastScreenBounds();
		
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
	prefsPreviewSelected =			1 << 16,
	prefsSaveExtraInfo = 			1 << 17
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
		
		int				untitledCount;
		
		void 			LoadPicker(int ID,
								   PixMapHandle* pickerPix,
								   GWorldPtr* pickerGW,
								   RgnHandle* pickerRgn);
								   
		bool			loaded;
		
	public:
						editorStaticsClass(void);
						~editorStaticsClass(void);
						
		void			Load();
		void			Dispose();
		
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
		
		void	 		GetPickerPix(long iconName, long colors, PixMapHandle* pix, GWorldPtr* gW, RgnHandle* shapeRgn);
		
		Point 			GetDefaultPalettePosition(MFloaterPtr palette);
		Point			GetDefaultMembersPaletteDimensions();
		
		Rect			GetAvailableScreenRect();
		
		void			Stagger(MWindowPtr window);
		Point			GetDefaultWindowPosition();
		void			MakeIconNameUnique(Str255 name);
		
		void			UpdatePalettes(int flags);
		void			UpdatePalettes(icnsEditorPtr frontEditor, int flags);
		
		bool 			GetSupportFolder(FSSpec* supportFolder);
		
		ColorsPalettePtr colorsPalette;
		MembersPalettePtr membersPalette;
		PreviewPalettePtr previewPalette;
		ToolPalettePtr	  toolPalette;
};
