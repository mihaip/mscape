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
	IconBrowserData		data;
	
	
	// we load the dialog
	iconBrowser = GetNewDialog(rIconBrowser,NULL,(WindowPtr) -1);
	
	// set the function used for updates
	SetWRefCon(iconBrowser, (long)&data);
	
	// set some dialog attibutes
	SetDialogDefaultItem(iconBrowser,kStdOkItemIndex);
	SetDialogCancelItem(iconBrowser,kStdCancelItemIndex);
	SetDialogTracksCursor(iconBrowser,true);
	
	// set up the event processing function
	eventFilterUPP = NewModalFilterProc((ProcPtr) IconBrowserEventFilter);
	
	// we load the two control variables
	GetDialogItemAsControl(iconBrowser,iIconPreview,&iconPreviewControl);
	
	GetDialogItemAsControl(iconBrowser,iIconList,&iconListControl);
	GetControlData(iconListControl,kControlNoPart,kControlListBoxListHandleTag,
								 sizeof(iconList),(Ptr) &iconList,NULL);
	
	// building the list
	returnErr = BuildIconList(iconList, fileSpec);
	listSize = (*iconList)->dataBounds.bottom - (*iconList)->dataBounds.top;
	
	// if we have one or zero icons we must don'tneed a list
	switch (listSize)
	{
		case 2:
			long ID2;
			SetPt(&theCell, 0, 0);
			*ID = GetIDFromList(theCell, iconList);
			SetPt(&theCell, 0, 1);
			ID2 = GetIDFromList(theCell, iconList);
			
			if (*ID == 820127 && ID2 == -16455)
			{
				*ID = -16455;
				DisposeDialog(iconBrowser);
				return noErr;
			}
			break;
		case 1:
			SetPt(&theCell, 0, 0);
			*ID = GetIDFromList(theCell, iconList);
			DisposeDialog(iconBrowser);
			return noErr;
			break;
		case 0:
			if (returnErr == eofErr || returnErr == noErr)
			{
				DisposeDialog(iconBrowser);
				return fileIconSelected;
			}
			else
				return returnErr;
	}
	
	// we only allow a single selection
	(*iconList)->selFlags = lOnlyOne;

	// we select the first item
	SetPt(&theCell, 0, 0);
	LSetSelect(true,theCell,iconList);
	*ID = GetIDFromList(theCell, iconList);
	
	data.UpdateFunction = updateFunction;
	data.fileSpec = fileSpec;
	data.ID = *ID;
	data.iconPreviewControl = iconPreviewControl;
	
	// and now that we're done we can show the dialog
	ShowWindow(iconBrowser);
	
	SetKeyboardFocus(iconBrowser,iconListControl,1);//kControlListBoxPart);
	
	// we can now draw in the icon
	SAVEGWORLD;
	SetPort(iconBrowser);
	Draw1Control(iconListControl);
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
				data.ID = *ID;
				SAVEGWORLD;
				SetPort(iconBrowser);
				DisplayIconPreview(iconPreviewControl, fileSpec, *ID);
				RESTOREGWORLD;
				break;
			
		}
		
	} while((itemHit != kStdOkItemIndex) && (itemHit != kStdCancelItemIndex));
	
	if (*ID == 820127 && (FindIDInList(iconList, -16455, false) != -1))
		*ID = -16455;
	
	// we're donw with the dialog
	DisposeDialog(iconBrowser);
	
	
	
	return returnErr;
}
				
pascal bool	IconBrowserEventFilter(DialogPtr dialog, EventRecord *eventPtr, short *itemHit)
{
	bool	handledEvent; // if true then our function tool care of the event
	IconBrowserDataPtr dataPtr;
	
	dataPtr = (IconBrowserDataPtr)GetWRefCon(dialog);

	handledEvent = false; // by default we didn't handle the event
	
	switch (eventPtr->what)
	{
		case activateEvt: // if the window isn't the dialog, then we tell the update function
		case updateEvt: //  to take care of it
			if((WindowPtr) eventPtr->message == dialog)
			{
				SAVEGWORLD;
				SetPort(dialog);
				DisplayIconPreview(dataPtr->iconPreviewControl, dataPtr->fileSpec, dataPtr->ID);
				RESTOREGWORLD;
				break;
			}
			else
			{
				dataPtr->UpdateFunction(eventPtr);
				handledEvent = true;
			}
			break;
		default:
			// if it's not an event we support, then we let the system take care of it
			SAVEGWORLD;
			SetPort(dialog);

			handledEvent = StdFilterProc(dialog, eventPtr, itemHit);

			RESTOREGWORLD;
		break;
	}
		
	return(handledEvent);
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
	
	
	if (theCell.h == 0 && theCell.v == 0)
		return 820127;
	
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

OSErr BuildIconList(ListHandle theList, FSSpec srcSpec)
{
	short		oldFile, // the current opened file
				srcFile; // the file we'll be opening
	Cell		aCell;
	Str255		itemIconLabel;
	
	GetIndString(itemIconLabel, rStrings, eItemIconText);
	
	// we open the file
	oldFile = CurResFile();
	srcFile = FSpOpenResFile(&srcSpec, fsRdPerm);
	
	if (srcFile == -1)
		return ResError();
	
	UseResFile(srcFile);
	
	// we insert the "item icon" row
	LAddRow(1,0,theList);
	SetPt(&aCell,0,0);
	LSetCell((Ptr) itemIconLabel + 1,(SInt16) StrLength(itemIconLabel),aCell,theList);

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
	
	return noErr;
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
	currentRow = 0;
	
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
	if (listText[0] < 6) // ID's to oshort, we need some padding
	{
		if (listText[0] < 4)
			AppendString(listText, "\p	");
		AppendString(listText, "\p	");
	}
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
					hugeDisplayRect = {0, 0, 0, 0},
					largeDisplayRect = {0, 0, 0, 0},
					smallDisplayRect = {0, 0, 0, 0},
					gWorldRect;
	PixPatHandle	desktopPattern; // the background of the preview
	SAVEGWORLD;
	SAVECOLORS;
	
	// we load the icon
	icon.srcFileSpec = srcSpec;
	if (ID == 820127)
		icon.LoadFileIcon();
	else
	{
		icon.ID = ID;
		icon.Load();
	}
	
	// create the temporary GWorld
	gWorldRect = (**displayControl).contrlRect;
	OffsetRect(&gWorldRect, -gWorldRect.left, -gWorldRect.top);
	NewGWorld(&tempGW, 32, &gWorldRect, NULL, NULL, 0);
	tempPix = GetGWorldPixMap(tempGW);
	LockPixels(tempPix);
	SetGWorld(tempGW, NULL);
	
	// fill it with the desktop pattern
	desktopPattern = LMGetDeskCPat();
	HLock((Handle)desktopPattern);
	FillCRect(&gWorldRect, desktopPattern);
	HUnlock((Handle)desktopPattern);
	
	if ((icon.members & hugeSize) && (icon.members & largeSize) && (icon.members & smallSize))
	{
		// huge icon rect
		tempRect = gWorldRect;
		tempRect.bottom = tempRect.top + (tempRect.right - tempRect.left);
		hugeDisplayRect = hugeIconRect;
		MakeTargetRect(tempRect, &hugeDisplayRect);
		
		// large icon rect
		tempRect = gWorldRect;
		tempRect.top += (tempRect.right - tempRect.left);
		tempRect.bottom = tempRect.top + (tempRect.right - tempRect.left) * 2/3;
		largeDisplayRect = largeIconRect;
		MakeTargetRect(tempRect, &largeDisplayRect);
	
		// small icon rect
		tempRect.top = tempRect.bottom;
		tempRect.bottom = gWorldRect.bottom;
		smallDisplayRect = smallIconRect;
		MakeTargetRect(tempRect, &smallDisplayRect);
	}
	else if (!(icon.members & hugeSize) && (icon.members & largeSize) && (icon.members & smallSize))
	{
		// large icon rect
		tempRect = gWorldRect;
		tempRect.bottom = tempRect.top + (tempRect.bottom - tempRect.top) * 5/9;
		largeDisplayRect = largeIconRect;
		MakeTargetRect(tempRect, &largeDisplayRect);
	
		// small icon rect
		tempRect.top = tempRect.bottom;
		tempRect.bottom = gWorldRect.bottom;
		smallDisplayRect = smallIconRect;
		MakeTargetRect(tempRect, &smallDisplayRect);
	}
	else if (!(icon.members & hugeSize) && !(icon.members & largeSize) && (icon.members & smallSize))
	{
		// small icon rect
		smallDisplayRect = smallIconRect;
		MakeTargetRect(gWorldRect, &smallDisplayRect);
	}
	else if (!(icon.members & hugeSize) && (icon.members & largeSize) && !(icon.members & smallSize))
	{
		// large icon rect
		largeDisplayRect = largeIconRect;
		MakeTargetRect(gWorldRect, &largeDisplayRect);
	}
	else if ((icon.members & hugeSize) && !(icon.members & largeSize) && !(icon.members & smallSize))
	{
		// huge icon rect
		hugeDisplayRect = hugeIconRect;
		MakeTargetRect(gWorldRect, &hugeDisplayRect);
	}
	else if ((icon.members & hugeSize) && !(icon.members & largeSize) && (icon.members & smallSize))
	{
		// huge icon rect
		tempRect = gWorldRect;
		tempRect.bottom = tempRect.top + (tempRect.bottom - tempRect.top) * 2/3;
		hugeDisplayRect = hugeIconRect;
		MakeTargetRect(tempRect, &hugeDisplayRect);
	
		// small icon rect
		tempRect.top = tempRect.bottom;
		tempRect.bottom = gWorldRect.bottom;
		smallDisplayRect = smallIconRect;
		MakeTargetRect(tempRect, &smallDisplayRect);
	}
	else if ((icon.members & hugeSize) && (icon.members & largeSize) && !(icon.members & smallSize))
	{
		// huge icon rect
		tempRect = gWorldRect;
		tempRect.bottom = tempRect.top + (tempRect.bottom - tempRect.top) * 5/9;
		hugeDisplayRect = hugeIconRect;
		MakeTargetRect(tempRect, &hugeDisplayRect);
	
		// large icon rect
		tempRect.top = tempRect.bottom;
		tempRect.bottom = gWorldRect.bottom;
		largeDisplayRect = largeIconRect;
		MakeTargetRect(tempRect, &largeDisplayRect);
	}

	if (!EmptyRect(&hugeDisplayRect))
		icon.Display(hugeDisplayRect);
	if (!EmptyRect(&largeDisplayRect))
		icon.Display(largeDisplayRect);
	if (!EmptyRect(&smallDisplayRect))
		icon.Display(smallDisplayRect);	
	
	// we're done, so we can display
	RESTOREGWORLD;
	ForeColor(blackColor);
	BackColor(whiteColor);
	CopyBits((BitMap*)*tempPix,
			 &qd.thePort->portBits,
			 &gWorldRect,
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
