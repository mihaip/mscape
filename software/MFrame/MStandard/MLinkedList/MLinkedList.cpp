// __________________________________________________________________________________________
// Program		: Meshroom
// Filename		: MLinkedList.cpp
// Author		: Mihai Parparita (St. Mary's International School)
// Last modified: April 1, 2000
// Description	: implementation of generic linked list object

#include "MLinkedList.h"

MLinkedListObject::MLinkedListObject(MLinkedListObjectPtr previousInList, MLinkedListObjectPtr nextInList)
{
	previous = previousInList;
	next = nextInList;
	
	if (previousInList != NULL)
		previousInList->next = this;
	
	if (nextInList != NULL)
		nextInList->previous = this;
}

MLinkedListObject::~MLinkedListObject()
{
	if (previous != NULL)
		previous->next = next;
	
	if (next != NULL)
		next->previous = previous;
} 

MLinkedListObjectPtr MLinkedListObject::GetNext()
{
	return next;
}

MLinkedListObjectPtr MLinkedListObject::GetPrevious()
{
	return previous;
}

void MLinkedListObject::SetNext(MLinkedListObjectPtr object)
{
	next = object;
}

void MLinkedListObject::SetPrevious(MLinkedListObjectPtr object)
{
	previous = object;
}
