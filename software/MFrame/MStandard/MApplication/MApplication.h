// __________________________________________________________________________________________
// Program		: Meshroom
// Filename		: MApplication.h
// Author		: Mihai Parparita (St. Mary's International School)
// Last modified: April 1, 2000
// Description	: type definitions and constants of application support (event handling, etc.)

#pragma once
#include "MString.h"
#include "MException.h"
#include "MAppleEvents.h"
#include "MEvents.h"

#define RegisterEventHandler(eventType, functionPointer) \
eventHandlers.RegisterEvent(eventType, MEventHandlerFunctionPtr(functionPointer))


const static long kMiniumMenuHilite = 4;

enum MApplicationResources
{
	rDefaultMenuBar = 128
};

enum MApplicationMenus
{
	mApple = 128
};

class MApplication
{
	protected:		
		virtual void Initialize();
		virtual void CheckConfiguration();
		
		void InitMenuBar();
		
		virtual void SetUpMenuBar();
		
		virtual void HandleEvent(EventRecord* eventPtr);
		
		virtual void DoIdle();
		
		virtual void HandleMouseDown(EventRecord* eventPtr);
		virtual void HandleKeyDown(EventRecord* eventPtr);
		virtual void HandleUpdate(EventRecord* eventPtr);
		virtual void HandleActivate(EventRecord* eventPtr);
		virtual void HandleOSEvent(EventRecord* eventPtr);
		
		virtual void HandleMenuChoice(long menuChoice);
		
		virtual void About();
		
		virtual void New();
		virtual void Open(FSSpec* file);
		virtual void Close();
		virtual void Save();
		virtual void Quit();
	
		MEventHandlers	eventHandlers;
		MAppleEvents	AE;
		
		static bool done;
		
		static MApplication* currentApplication;
		
	public:
				MApplication(MString appName);
				~MApplication();
				
		
		MString	name;
		
		void Run();

		OSErr HandleEvent(MType event);		
		
		static bool	IsFrontProcess();
		static MApplication* GetCurrent();
		
	friend class MAppleEvents;
};
