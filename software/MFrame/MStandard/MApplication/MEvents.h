// __________________________________________________________________________________________
// Program		: Meshroom
// Filename		: MEvents.h
// Author		: Mihai Parparita (St. Mary's International School)
// Last modified: April 1, 2000
// Description	: type definitions and constants of event support

#pragma once

#include "MFactory.h"

class MApplication;

typedef void (MApplication::*MEventHandlerFunctionPtr)(void);

class MEventHandlers
{
	public:
		MEventHandlers(MApplication* parent);
		~MEventHandlers();
		
		void RegisterEvent(MType eventType, MEventHandlerFunctionPtr function);
		OSErr HandleEvent(MType eventType);
	
	private:
		MApplication* parentAppPtr;
	
		MFactoryDatabase<MEventHandlerFunctionPtr>	eventHandlers; 
};

enum standardEvents
{
	ehOpenApp = 'OpnA',
	
	ehAbout	= 'Abot',
	
	ehNew	= 'New ',
	ehOpen	= 'Open',
	ehClose = 'Clos',
	ehSave 	= 'Save',
	ehSaveAs = 'SavA',
	ehPrint = 'Prnt',
	ehQuit 	= 'Quit',
	
	ehClear = 'Cler'
};
