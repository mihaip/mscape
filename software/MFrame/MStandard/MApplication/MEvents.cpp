// __________________________________________________________________________________________
// Program		: Meshroom
// Filename		: MEvents.cpp
// Author		: Mihai Parparita (St. Mary's International School)
// Last modified: April 1, 2000
// Description	: implementation of event support

#include "MEvents.h"
#include "MApplication.h"

MEventHandlers::MEventHandlers(MApplication* parent)
{
	parentAppPtr = parent;
}

MEventHandlers::~MEventHandlers()
{

}

void MEventHandlers::RegisterEvent(MType eventType, MEventHandlerFunctionPtr function)
{
	eventHandlers.RegisterObjectType(eventType, function);
}

OSErr MEventHandlers::HandleEvent(MType eventType)
{
	MEventHandlerFunctionPtr function;
	
	function = eventHandlers.GetInstantiator(eventType);
	
	if (function)
	{
		(parentAppPtr->*function)();
		return noErr;
	}
	else
		return unimpErr;
}
