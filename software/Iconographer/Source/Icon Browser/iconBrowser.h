// __________________________________________________________________________________________
// Program		: Icon Mangler
// Filename		: iconBrowser.h (C++)
// Author		: Mihai Parparita (St. Mary's International School)
// Last modified: April 1, 1999
// Description	: The header file for the Icon Browser module. It includes some constants and
//				  the function prototypes

#pragma once

#include "icnsClass.h"
#include "commonFunctions.h"

enum browserResources
{
	rIconBrowser = 300,
	rStrings = 300
};

enum iconBrowserItems
{
	//iCancel = 2,
	iIconPreview = 4,
	iIconList = 5
};

enum iconBrowserErrors
{
	canceledErr = 1,
	fileIconSelected = 2
};

enum strings
{
	eItemIconText = 1
};

OSErr		IconBrowser(FSSpec fileSpec, long *ID, UpdateFunctionPtr updateFunction);
long		GetIDFromList(Cell theCell, ListHandle theList);
void		AddIconsToList(OSType resourceType, ListHandle theList);
void		InsertIntoIconList(ListHandle theList, long ID, Str255 name);
OSErr		BuildIconList(ListHandle theList, FSSpec srcSpec);
int			FindIDInList(ListHandle theList, long ID, bool nearest);
void 		DisplayIconPreview(ControlHandle displayControl, FSSpec srcSpec, long ID);
