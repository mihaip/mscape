//**************************************************************************************
// Filename:	CSimplePointerList.h
//**************************************************************************************
// Revision History:
// Thursday, January 14, 1999 - Original
//	Sunday, May 2, 1999 - made template version
//**************************************************************************************
//**************************************************************************************
// 
//    PIconServices. Refcounted icons, uses icon Services if available.
//    Copyright © 1999  Peter O'Gorman.
//	  E-Mail: ogorman@kagi.com
//	  Web: http://www.ogorman.dircon.co.uk
//
//    This library is free software; you can redistribute it and/or
//    modify it under the terms of the GNU Library General Public
//    License as published by the Free Software Foundation; either
//    version 2 of the License, or (at your option) any later version.
//
//    This library is distributed in the hope that it will be useful,
//    but WITHOUT ANY WARRANTY; without even the implied warranty of
//    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
//    Library General Public License for more details.
//
//    You should have received a copy of the GNU Library General Public
//    License along with this library; if not, write to the Free
//    Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
//**************************************************************************************
#pragma once

#include <MacTypes.h>
#include <MacMemory.h>
#include <Errors.h>
/*
#pragma warn_implicitconv off
class CSimplePointerList
{

	public:
		enum {
			kIncrement = 10,
			indexBad = 0
		};

		inline						CSimplePointerList(): 	mHandle(NULL),
											mNumberAllocated(0)
									{ 										
										mHandle = (void***)::NewHandleClear(sizeof(void*) * kIncrement);
										if (mHandle == NULL) throw (memFullErr);
									};
									
		virtual		inline			~CSimplePointerList()
									{
											if (mHandle != NULL)
											{
												::DisposeHandle(Handle(mHandle));
												mHandle = NULL; 
											}	
									}		;
		virtual inline void			Remove(const void* inItem)
									{
										UInt32 number = ::GetHandleSize(Handle(mHandle))/sizeof(void*);
										for (UInt32 i = 0; i < mNumberAllocated; i++)
										{
											if ((*mHandle)[i] == inItem)
											{
												for (; i < mNumberAllocated; i++)
													(*mHandle)[i] = (*mHandle)[i+1];
												--mNumberAllocated;
												break;
											}		
										}
										if ((number - mNumberAllocated) > (kIncrement * 1.2))
										{
											Size newSize;
											newSize = (((mNumberAllocated/kIncrement)+1)*kIncrement);
											::SetHandleSize(Handle(mHandle),newSize*sizeof(void*));
										}
										return;
									}		;
		virtual inline OSErr		Add(const void* inItem)
									{
										OSErr theErr = noErr;
										UInt32 number = (UInt32)::GetHandleSize(Handle(mHandle))/sizeof(void*);
										if (number <= mNumberAllocated)
										{
											Size newSize = number * kIncrement;
											::SetHandleSize(Handle(mHandle),newSize*sizeof(void*));
										}
										if (theErr == noErr)
										{
											(*mHandle)[mNumberAllocated++] = (void*)inItem;
										}								
										return theErr;
									};
		virtual inline UInt32		GetIndexOf(const void* inItem)
									{
										UInt32 returnVal = indexBad;
										for (UInt32 i = 0; i < mNumberAllocated; i++)
											{
												if ((*mHandle)[i] == inItem)
												{
													returnVal = i + 1;
													break;
												}		
											}
											
										return returnVal;
									};						
		virtual inline void*		GetNthItem(UInt16 inN) const
									{
										void* returnVal = NULL;
										if (inN <= mNumberAllocated){
											returnVal = (void*)(*mHandle)[inN-1];
										}
										return returnVal;
									};
		virtual inline UInt32		GetCount() const
									{
										return mNumberAllocated;
									};									
		
	private:
		// Member Variables and Classes
		void*** mHandle;
		UInt32	mNumberAllocated;

};
*/
template <class T> class TSimpleList 
{
	public:
		enum {
			kIncrement = 10,
			indexBad = 0
		};

					TSimpleList(bool inCanDelete)	: mHandle(NULL),
													mNumberAllocated(0),
													mCanDelete(inCanDelete)
					{
										mHandle = (T**)::NewHandleClear(sizeof(T) * kIncrement);
										if (mHandle == NULL) throw (memFullErr);
					}					
			
		virtual		~TSimpleList()
					{
						if (mHandle != NULL)
						{
							if (mCanDelete)
							{					
								UInt16 iIndex = 1;
								T anItem;
								while (GetNthItem(iIndex++,&anItem))
									delete anItem;
							}
						::DisposeHandle(Handle(mHandle));
						mHandle = NULL; 	
						}	
					};
		virtual inline void			Remove(const T inItem)
					{
						UInt32 number = ::GetHandleSize(Handle(mHandle))/sizeof(T);
						for (UInt32 i = 0; i < mNumberAllocated; i++)
						{
							if ((*mHandle)[i] == inItem)
							{
								if (mCanDelete) delete (*mHandle)[i];
								for (; i < mNumberAllocated; i++)
									(*mHandle)[i] = (*mHandle)[i+1];
								--mNumberAllocated;
								break;
							}		
						}
						if ((number - mNumberAllocated) > (kIncrement * 1.2))
						{
							Size newSize;
							newSize = Size((((mNumberAllocated/kIncrement)+1)*kIncrement));
							::SetHandleSize(Handle(mHandle),Size(newSize*sizeof(T)));
						}
						return;
					};
		virtual inline OSErr		Add(const T inItem)
					{
						OSErr theErr = noErr;
						UInt32 number = (UInt32)::GetHandleSize(Handle(mHandle))/sizeof(T);
						if (number <= mNumberAllocated)
						{
							Size newSize = Size(number * kIncrement);
							::SetHandleSize(Handle(mHandle),Size(newSize*sizeof(T)));
						}
						if (theErr == noErr)
						{
							(*mHandle)[mNumberAllocated++] = inItem;
						}								
						return theErr;
					};
		virtual inline UInt32		GetIndexOf(const T inItem)
					{
						UInt32 returnVal = indexBad;
						for (UInt32 i = 0; i < mNumberAllocated; i++)
							{
								if ((*mHandle)[i] == inItem)
								{
									returnVal = i + 1;
									break;
								}		
							}
							
						return returnVal;
					};
		virtual inline Boolean		GetNthItem(UInt32 inN,T* outItem) const
					{
							Boolean returnVal = false;
							if (inN <= mNumberAllocated){
								*outItem = (*mHandle)[inN-1];
								returnVal = true;
							}
							return returnVal;
					};
		virtual inline UInt32		GetCount() const
									{
										return mNumberAllocated;
									};											
	private:
		T**		mHandle;
		UInt32	mNumberAllocated;
		bool	mCanDelete;			
					
};

