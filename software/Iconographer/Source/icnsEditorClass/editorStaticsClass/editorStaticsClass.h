#pragma once

#include "commonFunctions.h"

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
	
	// dialogs
	rPreferencesDialog = 1000,
	rNagAlert = 1001
};

enum preferencesDialogItems
{
	iDefaultZoomLevelField = 4,
	iDefaultZoomLevelArrows = 5,
	iDrawGrid = 6,
	iCheckSync = 7,
	iDither = 8
};

typedef struct preferencesStruct
{
	long version;
	Str255 name;
	Str255 company;
	Str255 regCode;
	long flags;
	long defaultZoomLevel;
	long timesUsed;
} preferencesStruct;

typedef preferencesStruct** preferencesHandle;

class editorPreferencesClass
{
	private:
		void GenerateRegCode(Str255 name, Str255 regCode);
	public:
		preferencesHandle data;
		void Load(int ID);
		void Edit();
		void Save(int ID);
		bool IsRegistered();
		bool ValidRegCode(Str255 name, Str255 inRegCode);
		void Register(Str255 name, Str255 company, Str255 regCode);
		
};

enum preferencesFlags
{
	prefsDrawGrid = 1,
	prefsDontCheckSync = 2,
	prefsDither = 4
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
	public:
						editorStaticsClass(void);
						~editorStaticsClass(void);
		
		CGrafPtr		startupPort;
		GDHandle		startupDevice;
		
		CIconHandle		swapColorsIconEnabled;
		CIconHandle		swapColorsIconDisabled;
		
		CIconHandle		resetColorsIconEnabled;
		CIconHandle		resetColorsIconDisabled;
		
		PicHandle		sys8PickerPic;
		PicHandle		sys4PickerPic;
		PicHandle		sys1PickerPic;
		PicHandle		gray8PickerPic;
		
		Rect			canvasRect;
		GWorldPtr		canvasGW;
		PixMapHandle	canvasPix;
		
		Pattern			selectionPatterns[kNoOfSelectionPatterns];
		
		textSettings	lastTextSettings;
		
		Str255*			iconPartNames;
		
		RgnHandle		dragHiliteRgn;
		
		long			currentBalloon;
		
		editorPreferencesClass preferences;
		
		void ReclaimEmergencyMemory(void);
		void AllocateEmergencyMemory(void);
		
		short DisplayAlert(Str255 message, Str255 button1, Str255 button2, Str255 button3);
		void ChangeCursor(short ID);
};
