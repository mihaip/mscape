// __________________________________________________________________________________________
// Program		: Meshroom
// Filename		: MString.h
// Author		: Mihai Parparita (St. Mary's International School)
// Last modified: April 1, 2000
// Description	: type definitions and constants of generic string class

#pragma once
#include "MUtilities.h"
#include <stdlib.h>
#include <stdio.h>
#include <string.h>

class MString {
	private:
		char* 		data;
		
		int			length;
		
	public:
					MString(char* contents = NULL);
					MString(Str255 contents);
					MString(float contents);
					MString(double contents);
					MString(const MString& src);
					~MString();
		
		char		operator[] (int position) {return data[position];}
		
		MString&	operator= (const MString& rhs) {return Assign(&rhs.data[1], rhs.Length());}
		MString&	operator= (const char* rhs) {return Assign(rhs, MUtilities::strlen(rhs));}
		MString&	operator= (const Str255 rhs) {return Assign((char *)&rhs[1], rhs[0]);}
		
		MString&	operator+= (const MString& rhs){return Append(&rhs.data[1], rhs.Length());}
		MString&	operator+= (const char* &rhs) {return Append(rhs, MUtilities::strlen(rhs));}
		MString&	operator+= (const Str255 rhs) {return Append((char *)&rhs[1], rhs[0]);}
		MString&	operator+= (const char rhs) {return Append(&rhs, 1);}
		MString&	operator+= (int number) {return Append(number);}
		
		operator unsigned char*() const;
		
		unsigned char*	AsCString();
		StringPtr		AsPascalString();
		
		MString&	Assign(const  char* contents, int length);
		MString&	Append(const char* contents, int length);
		MString&	Append(int number);
		bool 		SameAs(const char* contents) const;
		
		int			Length() const;
		
		MString		Substring(int start, int end);
		int			IndexOf(MString pattern);
		void		Substitute(MString pattern, MString replace);
		MString		GetWord(int* startIndex);
		MString		GetWordHTML(int* startIndex, bool* htmlTag);
		
		void		LoadFromResource(short resID, short index);
		void		Draw(Rect targetRect);
		void		DrawHTML(Rect targetRect);
		void		Draw();
		
		void		Display();
		
		int			Width();
		int			Height();
		int			RowHeight();
		int			DescenderHeight();
		
		static bool	IsWhiteSpace(char c);
};

typedef MString* MStringPtr;

MString	operator+ (const MString& lhs, const MString& rhs);
MString	operator+ (const MString& lhs, const char* rhs);
MString	operator+ (const MString& lhs, const Str255 rhs);
MString	operator+ (const MString& lhs, const int rhs);

//bool	operator== (const MString& lhs, const MString& rhs);
bool	operator== (const MString& lhs, const char* rhs);
