#include "iconMangler.h"

OSStatus IconBrowser(FSSpec fileSpec, long *ID)
{
	DialogPtr			iconBrowser;
	ControlHandle		iconPreviewControl, iconListControl;
	ListHandle			iconList;
	short				itemHit;
	ModalFilterUPP		eventFilterUPP;
	Cell				theCell;
	OSStatus			returnErr;
	int					listSize;
	
	
	iconBrowser = GetNewDialog(iconBrowserID,NULL,(WindowPtr) -1);
	
	SetDialogDefaultItem(iconBrowser,kStdOkItemIndex);
	SetDialogCancelItem(iconBrowser,kStdCancelItemIndex);
	SetDialogTracksCursor(iconBrowser,true);
	
	SetKeyboardFocus(iconBrowser,iconListControl,1);
	
	eventFilterUPP = NewModalFilterProc((ProcPtr) EventFilter);
	
	GetDialogItemAsControl(iconBrowser,kIconPreview,&iconPreviewControl);
	
	GetDialogItemAsControl(iconBrowser,kIconList,&iconListControl);
	GetControlData(iconListControl,kControlNoPart,kControlListBoxListHandleTag,
								 sizeof(iconList),(Ptr) &iconList,NULL);
	
	BuildIconList(iconList, fileSpec);
	listSize = (*iconList)->dataBounds.bottom - (*iconList)->dataBounds.top;
	if (listSize == 1)
	{
		SetPt(&theCell, 0, 0);
		*ID = GetIDFromList(theCell, iconList);
		DisposeDialog(iconBrowser);
		return noErr;
	}
	else if (listSize == 0)
	{
		DisposeDialog(iconBrowser);
		return noIconsErr;
	}
	
	(*iconList)->selFlags = lOnlyOne;

	SetPt(&theCell,0,0);
	LSetSelect(true,theCell,iconList);
	*ID = GetIDFromList(theCell, iconList);
	
	ShowWindow(iconBrowser);
	
	SAVEGWORLD;
	SetPort(iconBrowser);
	DisplayIconPreview(iconPreviewControl, fileSpec, *ID);
	RESTOREGWORLD;
	
	
	
	do
	{
		ModalDialog(eventFilterUPP,&itemHit);
		
		switch (itemHit)
		{
		 	case kStdOkItemIndex: returnErr = noErr; break;
		 	case kStdCancelItemIndex: returnErr = canceledErr; break;
		 	case kIconList:
		 		SetPt(&theCell,0,0);
				LGetSelect(true,&theCell,iconList);
				*ID = GetIDFromList(theCell, iconList);
				SAVEGWORLD;
				SetPort(iconBrowser);
				DisplayIconPreview(iconPreviewControl, fileSpec, *ID);
				RESTOREGWORLD;
				break;
			
		}
		
	} while((itemHit != kStdOkItemIndex) && (itemHit != kStdCancelItemIndex));
	
	DisposeDialog(iconBrowser);
	
	return returnErr;
}

long GetIDFromList(Cell theCell, ListHandle theList)
{
	short	stringLength, i, offset;
	Str255	listString;
	long	ID;
	
	LGetCellDataLocation(&offset,&stringLength,theCell,theList);
	LGetCell((Ptr) listString + 1,&stringLength,theCell,theList);
	listString[0] = stringLength;
	for (i=1; i < listString[0] && listString[i] != '\t'; i++){;}
	listString[0] = i - 1;
	StringToNum(listString, &ID);
	
	return ID;
}

void BuildIconList(ListHandle theList, FSSpec srcSpec)
{
	short		oldFile, srcFile;
	
	oldFile = CurResFile();
	srcFile = FSpOpenResFile(&srcSpec, fsRdPerm);
	UseResFile(srcFile);
	
	AddIconsToList('icns', theList);
	AddIconsToList('icl8', theList);
	AddIconsToList('ics8', theList);
	AddIconsToList('ics4', theList);
	AddIconsToList('icl4', theList);
	AddIconsToList('ICN#', theList);
	AddIconsToList('ics#', theList);
	
	
	CloseResFile(srcFile);
	UseResFile(oldFile);
}

void AddIconsToList(OSType resourceType, ListHandle theList)
{
	int			iconCount;
	Str255		iconName;
	OSType		type;
	Handle		iconResource;
	short		ID; 
	
	iconCount = Count1Resources(resourceType);
	
	for (int i=1; i <= iconCount; i++)
	{
		iconResource = Get1IndResource(resourceType, i);
		
		GetResInfo(iconResource, &ID, &type, iconName);
		
		if (FindIDInList(theList, ID, false) == -1)
			InsertIntoIconList(theList, ID, iconName);
	}
}

int FindIDInList(ListHandle theList, long ID, bool nearest)
{
	int		totalRows, currentRow, currentID;
	Cell	aCell;
	
	totalRows = (*theList)->dataBounds.bottom - (*theList)->dataBounds.top;
	currentRow = -1;
	
	while (currentRow < totalRows)
	{
		currentRow++;
		
		SetPt(&aCell, 0, currentRow);
		currentID = GetIDFromList(aCell, theList);
		if (nearest)
		{
			if (currentID > ID)
				return currentRow;
		}
		else
			if (currentID == ID)
				return currentRow;
	}
	if (nearest)
		return ((*theList)->dataBounds.bottom - (*theList)->dataBounds.top);
	else
		return -1;
}

void InsertIntoIconList(ListHandle theList, long ID, Str255 name)
{
	int 	rowToInsert;
	Cell	aCell;
	Str255	listText;
	
	rowToInsert = FindIDInList(theList, ID, true);
	
	LAddRow(1,rowToInsert,theList);
	SetPt(&aCell,0,rowToInsert);
	
	NumToString(ID, listText);
	if (listText[0] < 6) AppendString(listText, "\p	");
	AppendString(listText, "\p		");
	AppendString(listText, name);

	LSetCell((Ptr) listText + 1,(SInt16) StrLength(listText),aCell,theList);
}

void DisplayIconPreview(ControlHandle displayControl, FSSpec srcSpec, long ID)
{
	icnsClass		icon;
	GWorldPtr		tempGW;
	PixMapHandle	tempPix;
	Rect			tempRect, tempDisplayRect, displayRect;
	int				thirdOfHeight;
	PixPatHandle	desktopPattern;
	SAVEGWORLD;
	
	icon.ID = ID;
	icon.LoadFromFile(srcSpec);
	
	tempRect = (**displayControl).contrlRect;
	OffsetRect(&tempRect, -tempRect.left, -tempRect.top);
	
	NewGWorld(&tempGW, 32, &tempRect, NULL, NULL, 0);
	tempPix = GetGWorldPixMap(tempGW);
	LockPixels(tempPix);
	SetGWorld(tempGW, NULL);
	
	desktopPattern = GetPixPat(16);
	
	FillCRect(&tempRect, desktopPattern);
	
	DisposePixPat(desktopPattern);
	
	thirdOfHeight = (tempRect.bottom - tempRect.top)/3;
	
	tempDisplayRect = tempRect;
	tempDisplayRect.bottom = tempDisplayRect.top + thirdOfHeight;
	displayRect = hugeIconRect;
	MakeTargetRect(tempDisplayRect, &displayRect);
	icon.Display(displayRect);
	
	OffsetRect(&tempDisplayRect, 0, thirdOfHeight);
	displayRect = largeIconRect;
	MakeTargetRect(tempDisplayRect, &displayRect);
	icon.Display(displayRect);
	
	OffsetRect(&tempDisplayRect, 0, thirdOfHeight);
	displayRect = smallIconRect;
	MakeTargetRect(tempDisplayRect, &displayRect);
	icon.Display(displayRect);
	
	RESTOREGWORLD;
	ForeColor(blackColor);
	BackColor(whiteColor);
	CopyBits((BitMap*)*tempPix, &qd.thePort->portBits, &tempRect, &(**displayControl).contrlRect, srcCopy, NULL);
	RESTORECOLORS;
	UnlockPixels(tempPix);
	DisposeGWorld(tempGW);
	
	DrawImageWell(displayControl, (**displayControl).contrlRect);
}
