// __________________________________________________________________________________________
// Program		: Meshroom
// Filename		: MException.h
// Author		: Mihai Parparita (St. Mary's International School)
// Last modified: April 1, 2000
// Description	: type definitions, macros and constants of exception support

#pragma once
#include "MString.h"

#ifndef MThrow
#define MThrow(err) throw MException(err, __FILE__, __LINE__)
#endif

class MException
{
	protected:
		int		errorNo;
		MString fileName;
		int		lineNo;	
	public:
				MException(int inErrorNo, MString inFileName, int iLineNo);
		void	Display();
};
