// __________________________________________________________________________________________
// Program		: Meshroom
// Filename		: MFactory.cpp
// Author		: Mihai Parparita (St. Mary's International School)
// Last modified: April 1, 2000
// Description	: implementation of generic factory method object

#include "MFactory.h"

MFactoryObject::MFactoryObject(MFactoryObject* previousInList,
							   MFactoryObject* nextInList,
							   int objectID):
			    MLinkedListObject(previousInList, nextInList)
{
	ID = objectID;
}

MFactoryObject::~MFactoryObject(void)
{
	;
}

int MFactoryObject::GetID(void)
{
	return ID;
}
