// __________________________________________________________________________________________
// Program		: Meshroom
// Filename		: MException.cpp
// Author		: Mihai Parparita (St. Mary's International School)
// Last modified: April 1, 2000
// Description	: implementation of exception support

#include "MException.h"
#include "MAlert.h"

MException::MException(int inErrorNo, MString inFileName, int inLineNo)
{
	errorNo = inErrorNo;
	fileName = inFileName;
	lineNo = inLineNo;
}

void MException::Display()
{
	MString error, explanation;
	MAlert	alert;
	
	error = "Error" + errorNo;
	
	explanation = "File: " + fileName + "\n" +
				  "Line: " + lineNo;
	
	alert.SetBeep(true);
	alert.SetError(error);
	alert.SetExplanation(explanation);
	
	alert.Display();
}
