// __________________________________________________________________________________________
// Program		: Meshroom
// Filename		: MUtilities.cpp
// Author		: Mihai Parparita (St. Mary's International School)
// Last modified: April 1, 2000
// Description	: type definitions of common utility functions

#pragma once

class MIcon;

// type definitions

typedef unsigned long MType;

enum MUtilitiesCursor
{
	rArrow = 0, // not really an ID
	rIBeam = 1 // ditto
};

class MSounds
{
	protected:
		bool	SoundsSupported();
		
	public:
				MSounds();
				
		void	Play(MType sound);
		void	Start(MType sound);
		void	End();
};

class MUtilities
{
	private:
		static bool		toolboxInited;
		static short	currentCursor;
		static bool		cursorChanged;
		
		static MIcon*	applicationIcon;
		
	public:
		static void		InitToolbox();
		
		static int		strlen(const char* string);
		
		static void		Sleep(int ticks);
		
		static bool		GestaltTest(MType gestaltCode, MType gestaltMask);
		static bool 	GestaltVersion(MType gestaltCode, int major, int revision);
		static bool 	GestaltExists(MType gestaltCode);
		
		static bool		IsKeyPressed(short keyCode);
		
		static void		CrossProduct(float x0, float y0, float z0,
								 	 float x1, float y1, float z1,
								 	 float* xN, float* yN, float* zN);
								 	 
		static short	DisplayAlert(Str255 message, Str255 explanation,
								Str255 button1, Str255 button2, Str255 button3, int type, int position);
		
		
		static FSSpec	GetCurrentProcessSpec();
		static OSType	GetFrontProcessCreator();
		static OSErr	FindProcessBySignature(OSType targetType, OSType targetCreator, ProcessSerialNumberPtr psnPtr);
		static bool		IsFrontProcess();
		
		static OSErr	AESendFinderUpdate(FSSpec inFile);
		static OSErr	AESendFinderOpen(FSSpec inFile);
		static OSErr 	AESendOpenDocEventToApp(ProcessSerialNumber *targetPSN, const FSSpec * documentFSSpecPtr);
		static OSErr 	AELaunchAppWithDoc(const FSSpec * applicationFSSpecPtr, const FSSpec * documentFSSpecPtr);
		
		static bool		HasExtension(FSSpec file, Str255 extension);
		static void 	GetCreatorAndType(FSSpec file, OSType *creator, OSType* type);
		static void		SetCreatorAndType(FSSpec file, OSType creator, OSType type);
		static void		WaitForFileUpdate(FSSpec fileSpec);
		static void		TouchFile(FSSpec file);
		
		static bool		IsValidFileSpec(FSSpec* spec);
		static void		ResetFileSpec(FSSpec* spec);
		static FSSpec	GetFSSpecFromAEDesc(AEDesc desc);
		static bool		GetFileSpec(MType creator, MType fileType, Str255 message, FileFilterProcPtr filterFunction, FSSpec* spec);
		static bool		NewFileSpec(FSSpec* spec);
		
		static void		ChangeCursor(short ID);
		static int 		GetCurrentCursor();
		static void		ResetCursor();
		static bool 	CursorChanged();
		static void		ResetCursorChanged();
		
		static pascal void NavEventHandler(NavEventCallbackMessage callBackSelector, NavCBRecPtr callBackParms, void *callBackUD);
										   
		static long 	GetScrap(Handle data, ScrapFlavorType flavorType, long* offset);
		static OSStatus	ZeroScrap();
		static OSStatus	PutScrap(long size, ScrapFlavorType flavorType, const void* data);
		static bool		ScrapHasFlavor(ScrapFlavorType flavorType);
		
		static PixPatHandle	GetDesktopPattern();
		static void		DoneWithDesktopPattern(PixPatHandle pattern);
		
		static void		GetMouseLocation(CGrafPtr port, Point* location);
		
		static int 		CountVisibleMenuItems(MenuRef menu);
		
		static Rect		GetUsableScreenRect();
		
		static pascal void ApplicationIconDraw(ControlHandle iconControl, SInt16 controlPart);
		
		static MSounds	sounds;
};

// macros
#ifndef SAVEGWORLD
#define SAVEGWORLD\
	CGrafPtr		oldPort;\
	GDHandle		oldDevice;\
	\
	::GetGWorld(&oldPort, &oldDevice);
#endif

#ifndef RESTOREGWORLD
#define RESTOREGWORLD\
	::SetGWorld(oldPort, oldDevice);
#endif

#ifndef SAVECOLORS
#define SAVECOLORS\
	RGBColor		oldForeColor, oldBackColor;\
	PenState		oldState;\
	::GetForeColor(&oldForeColor);\
	::GetBackColor(&oldBackColor);\
	::GetPenState(&oldState);\
	::ForeColor(blackColor);\
	::BackColor(whiteColor);
#endif

#ifndef RESTORECOLORS
#define RESTORECOLORS\
	::SetPenState(&oldState);\
	::RGBForeColor(&oldForeColor);\
	::RGBBackColor(&oldBackColor);
#endif

#ifndef ISSHIFTDOWN
#define ISSHIFTDOWN\
	(MUtilities::IsKeyPressed(0x38) || MUtilities::IsKeyPressed(0x3C))
#endif

#ifndef ISOPTIONDOWN
#define ISOPTIONDOWN\
	(MUtilities::IsKeyPressed(0x3A) || MUtilities::IsKeyPressed(0x3D))
#endif
