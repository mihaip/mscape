#pragma once

#include "commonFunctions.h"
#include "MWindow.h"
#include "ColorsPalette.h"

const static int kEmergencyMemorySize = 10240;
const static int kMaxIconSize = 48; // huge (the biggest size) is 48 x 48

const static int kMaxMagnification = 10;
const static int kMinMagnification = 4;

enum staticsResources
{
	// selection patterns
	rSelectionPatterns = 1000,
	kNoOfSelectionPatterns = 8,
	
	// widget icons
	rSwapColorsIconEnabled = 200,
	rSwapColorsIconDisabled = 201,
	rResetColorsIconEnabled = 202,
	rResetColorsIconDisabled = 203,
	
	// strings
	rIconPartNames = 202,
	
	// color pickers
	r8BitSysPicker = 2050,
	r8BitGrayPicker = 2051,
	r4BitSysPicker = 2052,
	r1BitSysPicker = 2053,
	r4BitWinPicker = 2054,
	r8BitWinPicker = 2055,
	
	// dialogs
	rPreferencesDialog = 1000,
	rNagAlert = 1001,
	
	// others
	rDefaultPrefID = 129
};

enum preferencesDialogItems
{
	iDefaultZoomLevelField = 4,
	iDefaultZoomLevelArrows = 5,
	iDrawGrid = 6,
	iCheckSync = 7,
	iDither = 8,
	iStartupCreateNewEditor = 9,
	iStartupOpenIcon = 10,
	iStartupDoNothing = 11,
	iDefaultIconFormat = 13,
	iAntiAlias = 14
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
} PreferencesStruct;

typedef PreferencesStruct** PreferencesHandle;

class editorPreferencesClass
{
	private:
		void				GenerateRegCode(Str255 name, Str255 regCode);
		PreferencesHandle	data;
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
		int					GetDefaultZoomLevel();
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
	prefsColorsPaletteVisible = 256
};

typedef struct textSettings
{
	Str255 text;
	short fontNo;
	short size;
	int style;
} textSettings;

class editorStaticsClass
{
	private:
		Ptr				tempMemoryChunk;
		short			currentCursor;
		
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
		
		
		
		Rect			canvasRect;
		GWorldPtr		canvasGW;
		PixMapHandle	canvasPix;
		
		Pattern			selectionPatterns[kNoOfSelectionPatterns];
		
		textSettings	lastTextSettings;
		
		Str255*			iconPartNames;
		
		RgnHandle		dragHiliteRgn;
		
		long			currentBalloon;
		
		bool			cursorChanged;
		
		editorPreferencesClass preferences;
		
		void			ReclaimEmergencyMemory(void);
		void			AllocateEmergencyMemory(void);
		
		short			DisplayAlert(Str255 message, Str255 button1, Str255 button2, Str255 button3);
		void			ChangeCursor(short ID);
		
		void	 		GetPickerPix(long iconName, long colors, PixMapHandle* pix, GWorldPtr* gW, RgnHandle* shapeRgn);
		
		Point 			GetDefaultColorsPalettePosition(void);
		Point 			GetColorsPalettePosition(void);
		
		ColorsPalettePtr colorsPalette;
};
