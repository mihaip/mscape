// __________________________________________________________________________________________
// Program		: Meshroom
// Filename		: MLinkedList.h
// Author		: Mihai Parparita (St. Mary's International School)
// Last modified: April 1, 2000
// Description	: type definitions, implementation and constants of generic linked list

#pragma once

template <class T>
class MLinkedList
{
	public:
				MLinkedList();
				~MLinkedList();
			
		T*		GetFirst();
		T*		GetLast();
		
		void	InsertAtEnd(T* object);
		void	InsertBetween(T* object, T* previous, T* next);
		void 	InsertAtStart(T* object);
		
		bool	Find(T* object);
		bool	Delete(T* object);
		void	DeleteAll();
		
		int		Count();
		
	protected:
		T*		first;
		T*		last;
		
	friend class MLinkedListObject;
};

class MLinkedListObject;

typedef MLinkedListObject* MLinkedListObjectPtr;

class MLinkedListObject
{
	public:
								MLinkedListObject(MLinkedListObjectPtr previousInList, MLinkedListObjectPtr nextInList);
		virtual					~MLinkedListObject();
								
		MLinkedListObjectPtr	GetPrevious();
		MLinkedListObjectPtr	GetNext();
		
		void					SetPrevious(MLinkedListObjectPtr object);
		void					SetNext(MLinkedListObjectPtr object);
	protected:
		MLinkedListObjectPtr	previous;
		MLinkedListObjectPtr	next;
	
	friend class MLinkedList<MLinkedListObject>;
};

#pragma mark -

template <class T>
MLinkedList<T>::MLinkedList()
{
	first = NULL;
	last = NULL;
}

template <class T>
MLinkedList<T>::~MLinkedList()
{
	DeleteAll();
}

template <class T>
T* MLinkedList<T>::GetFirst()
{
	return first;
}

template <class T>
T* MLinkedList<T>::GetLast()
{
	return last;
}

template <class T>
void MLinkedList<T>::InsertAtEnd(T* object)
{
	object->SetPrevious(last);
	object->SetNext(NULL);
	
	if (last == NULL) // no items
	{
		last = object;
		first = object;	
	}
	else
	{
		last->SetNext(object);
		last = object;
	}
}

template <class T>
void MLinkedList<T>::InsertBetween(T* object, T* previous, T* next)
{
	if (Find(previous) && Find(next)) // if the elements we're inserting between
									  // are in the list
	{
		if (previous != NULL)
			previous->SetNext(object);
		else
			first = object;
		
		object->SetPrevious(previous);
		
		if (next != NULL)
			next->SetPrevious(object);
		else
			last = object;
			
		object->SetNext(next);
	}
}

template <class T>
void MLinkedList<T>::InsertAtStart(T* object)
{
	object->SetPrevious(NULL);
	object->SetNext(first);
	
	if (first == NULL) // no items
	{
		first = object;
		last = object;
	}
	else
	{
		first->SetPrevious(object);
		first = object;
	}
}

template <class T>
bool MLinkedList<T>::Find(T* object)
{
	T* current;
	
	for (current = first; current != NULL; current = (T*)current->GetNext())
		if (current == object)
			return true;
			
	return false;
}

template <class T>
bool MLinkedList<T>::Delete(T* object)
{
	if (Find(object))
	{
		if (first == object)
			first = (T*)object->GetNext();
		
		if (last == object)
			last = (T*)object->GetPrevious();
			
		delete object;
		return true;
	}
	
	return false;
}

template <class T>
void MLinkedList<T>::DeleteAll(void)
{
	T* current, *temp;
	
	for (current = first; current != NULL;)
	{
		temp = (T*)current->GetNext();
		delete current;
		current = temp;
	}
	
	first = NULL;
	last = NULL;
}

template <class T>
int MLinkedList<T>::Count()
{
	T*	current;
	int	count = 0;
	
	for (current = first; current != NULL; current = (T*)current->GetNext())
		count++;
	
	return count;
}
