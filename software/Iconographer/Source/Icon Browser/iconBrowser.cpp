// __________________________________________________________________________________________
// Program		: Icon Mangler
// Filename		: iconBrowser.cpp (C++)
// Author		: Mihai Parparita (St. Mary's International School)
// Last modified: April 2, 1999
// Description	: This file contains the function used by Icon Browser, a module used to get
//				  the user to choose an icon from the selected file

#include "iconBrowser.h"

// __________________________________________________________________________________________
// Name			: IconBrowser
// Input		: fileSpec: the file from which we want to choose an icon
//				  updateFunction: the function used to for the background refreshing
// Output		: ID: the ID the user has chosen
// Description	: This function puts up a dialog in which all of the icons from a file are listed,
//				  allowing the user to choose one

OSErr IconBrowser(FSSpec fileSpec, long *ID, UpdateFunctionPtr updateFunction)
{
	DialogPtr			iconBrowser; // the main dialog
	ControlHandle		iconPreviewControl, // the place where we'll be drawing the preview
						iconListControl; // the control with the list of all the icons
	ListHandle			iconList; // the actual list of all the icons
	short				itemHit; // the item that was hit is stored in here  
	ModalFilterUPP		eventFilterUPP; // the function which takes care of the event processing
	Cell				theCell; // a specific cell of the list
	OSStatus			returnErr; // for error checking
	int					listSize; // the length of the list of icons
	
	// we load the dialog
	iconBrowser = GetNewDialog(rIconBrowser,NULL,(WindowPtr) -1);
	
	// set the function used for updates
	SetWRefCon(iconBrowser, (long)updateFunction);
	
	// set some dialog attibutes
	SetDialogDefaultItem(iconBrowser,kStdOkItemIndex);
	SetDialogCancelItem(iconBrowser,kStdCancelItemIndex);
	SetDialogTracksCursor(iconBrowser,true);
	SetKeyboardFocus(iconBrowser,iconListControl,1);
	
	// set up the event processing function
	eventFilterUPP = NewModalFilterProc((ProcPtr) StandardEventFilter);
	
	// we load the two control variables
	GetDialogItemAsControl(iconBrowser,iIconPreview,&iconPreviewControl);
	
	GetDialogItemAsControl(iconBrowser,iIconList,&iconListControl);
	GetControlData(iconListControl,kControlNoPart,kControlListBoxListHandleTag,
								 sizeof(iconList),(Ptr) &iconList,NULL);
	
	// building the list
	BuildIconList(iconList, fileSpec);
	listSize = (*iconList)->dataBounds.bottom - (*iconList)->dataBounds.top;
	
	// if we have one or zero icons we must don'tneed a list
	switch (listSize)
	{
		case 1:
			SetPt(&theCell, 0, 0);
			*ID = GetIDFromList(theCell, iconList);
			DisposeDialog(iconBrowser);
			return noErr;
			break;
		case 0:
			DisposeDialog(iconBrowser);
			return noIconsErr;
	}
	
	// we only allow a single selection
	(*iconList)->selFlags = lOnlyOne;

	// we select the first item
	SetPt(&theCell, 0, 0);
	LSetSelect(true,theCell,iconList);
	*ID = GetIDFromList(theCell, iconList);
	
	// and now that we're done we can show the dialog
	ShowWindow(iconBrowser);
	
	// we can now draw in the icon
	SAVEGWORLD;
	SetPort(iconBrowser);
	DisplayIconPreview(iconPreviewControl, fileSpec, *ID);
	RESTOREGWORLD;
	
	// now the actual dialog loop
	do
	{
		/// we want until an event has been hit
		ModalDialog(eventFilterUPP,&itemHit);
		
		// and then deterimine what will happen
		switch (itemHit)
		{
		 	case kStdOkItemIndex: returnErr = noErr; break;
		 	case kStdCancelItemIndex: returnErr = canceledErr; break;
		 	case iIconList:
		 		// we're just extracting the newly selected item and displaying the appropriate icon
				SetPt(&theCell, 0, 0);
				LGetSelect(true,&theCell,iconList);
				*ID = GetIDFromList(theCell, iconList);
				SAVEGWORLD;
				SetPort(iconBrowser);
				DisplayIconPreview(iconPreviewControl, fileSpec, *ID);
				RESTOREGWORLD;
				break;
			
		}
		
	} while((itemHit != kStdOkItemIndex) && (itemHit != kStdCancelItemIndex));
	
	// we're donw with the dialog
	DisposeDialog(iconBrowser);
	
	return returnErr;
}

// __________________________________________________________________________________________
// Name			: GetIDFromList
// Input		: theCell: location of the cell from which we must extract the ID data
//				  theList: the list from which we must extract the data
// Output		: long: the ID stored in the selected cell
// Description	: This function extracts the ID from a list item. Basically it assumes that
//				  the ID is the first item in the list, and that it is separated by a tab

long GetIDFromList(Cell theCell, ListHandle theList)
{
	short	stringLength, // the length of the cell contents
			i, // the offset where the ID ends
			offset; // the location of the ID in memory (ignored)
	Str255	listString; // the contents of the list celll
	long	ID; // the ID we'll extract
	
	// we get the width of the string
	LGetCellDataLocation(&offset,&stringLength,theCell,theList);
	
	// extract the string data
	LGetCell((Ptr) listString + 1,&stringLength,theCell,theList);
	listString[0] = stringLength;
	
	// find the place where the ID ends
	for (i=1; i < listString[0] && listString[i] != '\t'; i++){;}
	
	// set the end of the string to there
	listString[0] = i - 1;
	
	// and extract the number
	StringToNum(listString, &ID);
	
	return ID;
}

// __________________________________________________________________________________________
// Name			: BuildIconList
// Input		: srcSpec: the source file from which we must load the icons
// Output		: theList: the list which we'll build
// Description	: The function creates a list of all the icons in the file by going through
//				  all of the icon resource types and adding them to the list

void BuildIconList(ListHandle theList, FSSpec srcSpec)
{
	short		oldFile, // the current opened file
				srcFile; // the file we'll be opening
	
	// we open the file
	oldFile = CurResFile();
	srcFile = FSpOpenResFile(&srcSpec, fsRdPerm);
	UseResFile(srcFile);
	
	// add the icons to the list
	AddIconsToList('icns', theList);
	AddIconsToList('icl8', theList);
	AddIconsToList('ics8', theList);
	AddIconsToList('ics4', theList);
	AddIconsToList('icl4', theList);
	AddIconsToList('ICN#', theList);
	AddIconsToList('ics#', theList);
	
	// and close the file and restore the previous opened file
	CloseResFile(srcFile);
	UseResFile(oldFile);
}

// __________________________________________________________________________________________
// Name			: AddIconsToList
// Input		: resourceType: the kind of resource we want to add to the list
// Output		: theList: the list to which we'll be adding
// Description	: The function inserts to the list all of the IDs and names of the specified
//				  resource type

void AddIconsToList(OSType resourceType, ListHandle theList)
{
	int			iconCount; // the number of icons
	Str255		iconName; // the name of the current icon
	OSType		type; // the type of resource (ignored, since we already know it)
	Handle		iconResource; // the handle to resource we'll be getting
	short		ID; // the ID of the current icon
	
	// we count the icons
	iconCount = Count1Resources(resourceType);
	
	// and go through all of them...
	for (int i=1; i <= iconCount; i++)
	{
		// load each one
		iconResource = Get1IndResource(resourceType, i);
		
		// get the ID and name
		GetResInfo(iconResource, &ID, &type, iconName);
		
		// and insert it into the list if isn't already there
		if (FindIDInList(theList, ID, false) == -1)
			InsertIntoIconList(theList, ID, iconName);
	}
}

// __________________________________________________________________________________________
// Name			: FindIDInList
// Input		: theList: the list through which we must search
//				  ID: the ID we're looking for
//				  nearest: true if we want to return the nearest match, otherwise we just
//				  return -1 if the item wasn't found
// Output		: int: the location where the ID was found (if any)
// Description	: This function searches through the list and sees if it can find the specified
//				  ID
// Notes		: This function assumes the list we're searching through is sorted (by ID)

int FindIDInList(ListHandle theList, long ID, bool nearest)
{
	int		totalRows, // the total number of rows
			currentRow, // the row we're examining right now
			currentID; // the ID extracted from the current row
	Cell	aCell; // the cell from which we'll be extracting data
	
	// we set up these variables
	totalRows = (*theList)->dataBounds.bottom - (*theList)->dataBounds.top;
	currentRow = -1;
	
	// and go through all of the rows
	while (currentRow < totalRows)
	{
		currentRow++;
		
		// we get the current ID
		SetPt(&aCell, 0, currentRow);
		currentID = GetIDFromList(aCell, theList);
		
		if (nearest)
		// if we're looking for the nearest place then we'll see if the current item is
		// greater than what we're looking for
 		{
			if (currentID > ID)
				return currentRow;
		}
		else // otherwise we just look for an exact match
			if (currentID == ID)
				return currentRow;
	}
	
	// if we're reached the end of the list and the item wasn't found
	if (nearest) 
		return totalRows; // the end of the list is the insertion point
	else
		return -1; // the item wasn't found
}

// __________________________________________________________________________________________
// Name			: InsertIntoIconlist
// Input		: theList: the list into which we must insert
//				  ID: the ID of the icon we'll be inserting
//				  name: the name of the icon we'll be inserting
// Output		: None
// Description	: This item inserts the specified icon into the list in an appropriate place

void InsertIntoIconList(ListHandle theList, long ID, Str255 name)
{
	int 	rowToInsert; // the insertion point
	Cell	aCell; // the cell in which we'll be inserting
	Str255	listText;
	
	// we determine the insertion point
	rowToInsert = FindIDInList(theList, ID, true);
	
	// we insert the row
	LAddRow(1,rowToInsert,theList);
	SetPt(&aCell,0,rowToInsert);
	
	// we specify the insertion text
	NumToString(ID, listText);
	if (listText[0] < 6) AppendString(listText, "\p	"); // ID's to oshort, we need some padding
	AppendString(listText, "\p		");
	AppendString(listText, name);

	// and set the cell contents
	LSetCell((Ptr) listText + 1,(SInt16) StrLength(listText),aCell,theList);
}

// __________________________________________________________________________________________
// Name			: DisplayIconPreview
// Input		: displayControl: the control within which we must display
//				  srcSpec: the file from which we must display the icon
//				  ID: the ID of the icon which we must display
// Output		: None
// Description	: This function draws an icon preview within the specified control

void DisplayIconPreview(ControlHandle displayControl, FSSpec srcSpec, long ID)
{
	icnsClass		icon; // the icon which we'll be drawing
	GWorldPtr		tempGW; // temporary GWorld since we want to draw the whole thing offscreen
	PixMapHandle	tempPix; // and then copy it to the main screen
	Rect			tempRect, // the dimensions of the control
					tempDisplayRect, // used in determining the final display location
					displayRect; // the place where we'll be drawing the icon
	int				thirdOfHeight; // used in determing the display location
	PixPatHandle	desktopPattern; // the background of the preview
	
	SAVEGWORLD;
	SAVECOLORS;
	
	// we load the icon
	icon.ID = ID;
	icon.srcFileSpec = srcSpec;
	icon.Load();
	
	// create the temporary GWorld
	tempRect = (**displayControl).contrlRect;
	OffsetRect(&tempRect, -tempRect.left, -tempRect.top);
	NewGWorld(&tempGW, 32, &tempRect, NULL, NULL, 0);
	tempPix = GetGWorldPixMap(tempGW);
	LockPixels(tempPix);
	SetGWorld(tempGW, NULL);
	
	// fill it with the desktop pattern
	desktopPattern = LMGetDeskCPat();
	HLock((Handle)desktopPattern);
	FillCRect(&tempRect, desktopPattern);
	HUnlock((Handle)desktopPattern);
	
	// setting up this variable
	thirdOfHeight = (tempRect.bottom - tempRect.top)/3;
	
	// the huge icon goes in the upper third of the control
	tempDisplayRect = tempRect;
	tempDisplayRect.bottom = tempDisplayRect.top + thirdOfHeight;
	displayRect = hugeIconRect;
	MakeTargetRect(tempDisplayRect, &displayRect);
	icon.Display(displayRect);
	
	// the large icon goes in the middle third
	OffsetRect(&tempDisplayRect, 0, thirdOfHeight);
	displayRect = largeIconRect;
	MakeTargetRect(tempDisplayRect, &displayRect);
	icon.Display(displayRect);
	
	// and the small icon goes into the lower third
	OffsetRect(&tempDisplayRect, 0, thirdOfHeight);
	displayRect = smallIconRect;
	MakeTargetRect(tempDisplayRect, &displayRect);
	icon.Display(displayRect);
	
	// we're done, so we can display
	RESTOREGWORLD;
	ForeColor(blackColor);
	BackColor(whiteColor);
	CopyBits((BitMap*)*tempPix,
			 &qd.thePort->portBits,
			 &tempRect,
			 &(**displayControl).contrlRect,
			 srcCopy,
			 NULL);
	RESTORECOLORS;
	
	// we're done with these
	UnlockPixels(tempPix);
	DisposeGWorld(tempGW);
	
	// we also need a border around it
	DrawImageWell(displayControl, (**displayControl).contrlRect);
}
