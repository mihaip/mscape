// __________________________________________________________________________________________
// Program		: Meshroom
// Filename		: MFactory.h
// Author		: Mihai Parparita (St. Mary's International School)
// Last modified: April 1, 2000
// Description	: type definitions, constants and implementation of a generic factory method
//				  class

#pragma once

#include "MUtilities.h"
#include "MLinkedList.h"

class MFactoryObject;

typedef MFactoryObject* (*MFactoryInstatiatorFunctionPtr)(MFactoryObject* previousInList,
														  MFactoryObject* nextInList,
														  int objectID);

class MFactoryObject : public MLinkedListObject
{
	public:
								MFactoryObject(MFactoryObject* previousInList,
											   MFactoryObject* nextInList,
											   int objectID);
								~MFactoryObject();
		
		int						GetID();
		
		static MFactoryObject*	Instantiator(MFactoryObject* previousInList,
											 MFactoryObject* nextInList,
											 int objectID);
	
	protected:
	
		int						ID;
};

template <class T>
class MFactoryDatabase
{
	public:
					MFactoryDatabase();
					~MFactoryDatabase();
					
		void		RegisterObjectType(MType type, T instantiatorFunction);
		
		T 			GetInstantiator(MType type);
		
		MType		GetNthType(int index);
		int			GetTypeCount();
	
	protected:
									   
		MType*		objectTypes;
		T*			objectInstantiatorFunctions;
		int			objectTypeCount;			
};

template <class T, class instantiatorT>
class MFactory : public MLinkedList<T>
{
	public:
							MFactory(MFactoryDatabase<instantiatorT>* srcDatabase);
							~MFactory();
		
		
		T*					GetObject(MType type);
		T*					GetObject(MType type, int ID);
		
		T*					FindObject(int ID);
		bool				DeleteObject(int ID);
	
	protected:
		
		MFactoryDatabase<instantiatorT>*	objectDatabase;
		
		int					GetUniqueObjectID();
};


#pragma mark -

template <class T, class instantiatorT>
MFactory<T, instantiatorT>::MFactory(MFactoryDatabase<instantiatorT>* srcDatabase)
{
	objectDatabase = srcDatabase;
}

template <class T, class instantiatorT>
MFactory<T, instantiatorT>::~MFactory()
{
	;
}

template <class T, class instantiatorT>
T* MFactory<T, instantiatorT>::GetObject(MType type)
{
	return GetObject(type, GetUniqueObjectID());
}

template <class T, class instantiatorT>
T* MFactory<T, instantiatorT>::GetObject(MType type, int ID)
{
	instantiatorT instantiatorFunction;
	
	instantiatorFunction = objectDatabase->GetInstantiator(type);
	if (instantiatorFunction != NULL)
	{
		last = (T*)instantiatorFunction(last, NULL, ID);
		if (first == NULL)
			first = last;
		return last;
	}
	
	return NULL;
}

template <class T, class instantiatorT>
T* MFactory<T, instantiatorT>::FindObject(int ID)
{
	MFactoryObject *currentObject;

	currentObject = GetFirst();
	
	while (currentObject != NULL)
	{
		if (currentObject->GetID() == ID)
			return (T*)currentObject;
		
		currentObject = (MFactoryObject*)currentObject->GetNext();
	}
	
	return NULL;
}

template <class T, class instantiatorT>
bool MFactory<T, instantiatorT>::DeleteObject(int ID)
{
	return Delete(FindObject(ID));
}

template <class T, class instantiatorT>
int MFactory<T, instantiatorT>::GetUniqueObjectID()
{
	if (GetLast() != NULL)
	{
		return ((MFactoryObject*)GetLast())->GetID() + 1;
	}
	else
		return 0;
}

#pragma mark -

template <class T>
MFactoryDatabase<T>::MFactoryDatabase()
{
	objectTypes = NULL;
	objectInstantiatorFunctions = NULL;
	objectTypeCount = 0;
}

template <class T>
MFactoryDatabase<T>::~MFactoryDatabase()
{
	if (objectTypeCount > 0)
	{
		delete [] objectTypes;
		delete [] objectInstantiatorFunctions;
	}
}

template <class T>				
void MFactoryDatabase<T>::RegisterObjectType(MType type, T instantiatorFunction)
{
	MType*	newObjectTypes;
	T*		newObjectInstantiatorFunctions;
	int		i;
	
	newObjectTypes = new MType[objectTypeCount + 1];
	newObjectInstantiatorFunctions = new T[objectTypeCount + 1];
	
	for (i=0; i < objectTypeCount; i++)
	{
		newObjectTypes[i] = objectTypes[i];
		newObjectInstantiatorFunctions[i] = objectInstantiatorFunctions[i];
	}
	
	newObjectTypes[i] = type;
	newObjectInstantiatorFunctions[i] = instantiatorFunction;
	
	if (objectTypeCount > 0)
	{
		delete [] objectTypes;
		delete [] objectInstantiatorFunctions;
	}
	
	objectTypes = newObjectTypes;
	objectInstantiatorFunctions = newObjectInstantiatorFunctions;
	
	objectTypeCount++;
}

template <class T>
T MFactoryDatabase<T>::GetInstantiator(MType type)
{
	for (int i=0; i < objectTypeCount; i++)
		if (objectTypes[i] == type)
			return objectInstantiatorFunctions[i];
	return NULL;
}

template <class T>
MType MFactoryDatabase<T>::GetNthType(int index)
{
	if (index < objectTypeCount)
		return objectTypes[index];
	else
		return 0;
}

template <class T>
int MFactoryDatabase<T>::GetTypeCount(void)
{
	return objectTypeCount;
}


