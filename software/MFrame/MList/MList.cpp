#include "MList.h"

MList::MList(StringCompareFn compareFn,
			 CellDrawFunc drawFunc,
			 CellHitTestFunc hitTestFunc,
			 CellFilterFunc filterFunc,
			 CellUpdateFunc updateFunc)
{
	CellStringCompare = compareFn;
	CellHitTest = hitTestFunc;
	CellDraw = drawFunc;
	CellFilter = filterFunc;
	CellUpdate = updateFunc;
	
	numCols = 0;
	numRows = 0;
	
	colWidths = NULL;
	rowHeights = NULL;
	
	cellClientData = NULL;
	
	data = NULL;
	
	listPix = NULL;
	listGW = NULL;
	
	SetRect(&listRect, 0, 0, 1, 0);
	
	selection = -1;
	part = -1;
	
	customAreaWidth = 0;
}

MList::~MList(void)
{
	if (data != NULL)
	{
		for (int i=0; i < numRows; i++)
			if (data[i] != NULL)
				delete data[i];
			
		delete [] data;
	}
		
	if (colWidths != NULL) delete [] colWidths;
	if (rowHeights != NULL) delete [] rowHeights;
	
	if (cellClientData != NULL)
	{
		for (int i=0; i < numRows; i++)
			if (cellClientData[i] != NULL)
				delete cellClientData[i];
		delete [] cellClientData;
	}
	
	if (listPix != NULL)
	{
		UnlockPixels(listPix);
		DisposeGWorld(listGW);
	}
}

void MList::AddRow(int insertionPoint, int height)
{
	MStringPtr* newData;
	int*	newRowHeights;
	void**	newClientData;
	int i;
	
	newData = new MStringPtr[numRows + 1];
	newRowHeights = new int[numRows + 1];
	newClientData = new void*[numRows + 1];
	
	if (insertionPoint == -1)
		insertionPoint = numRows;
		
	for(i=0; i < insertionPoint; i++)
	{
		newData[i] = data[i];
		newRowHeights[i] = rowHeights[i];
		newClientData[i] = cellClientData[i];
	}
	newData[i] = NULL;
	newRowHeights[i] = height;
	newClientData[i] = NULL;
	i++;
	for (; i < numRows + 1; i++)
	{
		newData[i] = data[i - 1];
		newRowHeights[i] = rowHeights[i - 1];
		newClientData[i] = cellClientData[i - 1];
	}
	
	if (data != NULL) delete [] data;
	if (rowHeights != NULL) delete [] rowHeights;
	if (cellClientData != NULL) delete [] cellClientData;
	
	data = newData;
	rowHeights = newRowHeights;
	cellClientData = newClientData;
	
	numRows++;
	
	listRect.bottom += height;
}

void MList::RemoveRow(int row)
{
	MStringPtr* newData;
	int*	newRowHeights;
	void**	newClientData;
	int i;
	
	newData = new MStringPtr[numRows - 1];
	newRowHeights = new int[numRows - 1];
	newClientData = new void*[numRows - 1];
	
	listRect.bottom -= rowHeights[row];
		
	for(i=0; i < row; i++)
	{
		newData[i] = data[i];
		newRowHeights[i] = rowHeights[i];
		newClientData[i] = cellClientData[i];
	}
	
	if (data[i] != NULL)
		delete data[i];
	
	if (cellClientData[i] != NULL)
		delete cellClientData[i];
	
	i++;
	for (; i < numRows; i++)
	{
		newData[i - 1] = data[i];
		newRowHeights[i - 1] = rowHeights[i];
		newClientData[i - 1] = cellClientData[i];
	}
	
	if (data != NULL) delete [] data;
	if (rowHeights != NULL) delete [] rowHeights;
	if (cellClientData != NULL) delete [] cellClientData;
	
	data = newData;
	rowHeights = newRowHeights;
	cellClientData = newClientData;
	
	numRows -= 1;
}

void MList::InsertSorted(MStringPtr string, int height, void* clientData)
{
	int insertionPoint;
	
	for (insertionPoint = 0; insertionPoint < numRows; insertionPoint++)
		if (CellStringCompare(string, data[insertionPoint], clientData, cellClientData[insertionPoint]) < 0)
		{
			AddRow(insertionPoint, height);
			SetValue(insertionPoint, 0, string);
			SetCellClientData(insertionPoint, 0, clientData);
			return;
		}
		else if (CellStringCompare(string, data[insertionPoint], clientData, cellClientData[insertionPoint]) == 0)
		{
			rowHeights[insertionPoint] = height;
			SetValue(insertionPoint, 0, string);
			SetCellClientData(insertionPoint, 0, clientData);
			return;
		}

	AddRow(insertionPoint, height);
	SetValue(insertionPoint, 0, string);
	SetCellClientData(insertionPoint, 0, clientData);
}

OSErr MList::SetCellClientData(int row, int col, void* clientData)
{
#pragma unused (col)
	if (row > numRows)
		return paramErr;
		
	cellClientData[row] = clientData;
	
	return noErr;
}

OSErr MList::GetCellClientData(int row, int col, void** clientData)
{
#pragma unused (col)
	if (row > numRows)
		return paramErr;
		
	*clientData = cellClientData[row];
	
	return noErr;
}

OSErr MList::Remove(int row, int col)
{
#pragma unused (col)
	if (row > numRows)
		return paramErr;
		
	if (selection == row)
		selection = -1;
		
	RemoveRow(row);
		
	return noErr;
}

OSErr MList::SetValue(int row, int col, MStringPtr string)
{
#pragma unused (col)
	if (row > numRows)
		return paramErr;
	
	data[row] = string;
	
	return noErr;
}

OSErr MList::GetValue(int row, int col, MStringPtr* string)
{
#pragma unused (col)
	if (row > numRows)
		return paramErr;
	
	*string = data[row];
	
	return noErr;
}

OSErr MList::FindValue(MStringPtr string, void *clientData, int* row, int* col)
{
	*col = 0;

	for (int i=0; i < numRows; i++)
		if (CellStringCompare(string, data[i], clientData, cellClientData[i]) == 0)
		{
			*row = i;
			return noErr;
		}
	
	return paramErr;
}

bool MList::HandleEvent(EventRecord* eventPtr)
{
	switch (eventPtr->what)
	{
		case autoKey:
		case keyDown:
		{
			char	theKey;
			int		newVOffset = -1, newSelection = selection, height;
			
			theKey = eventPtr->message & charCodeMask; // the key that was pressed
			
			switch (theKey)
			{
				case kUpArrowCharCode:
					if (selection == -1)
					{
						for (int i=0; i < numRows; i++)
							if (CellFilter == NULL || CellFilter(data[i], cellClientData[i]))
							{
								newSelection = i;
								break;
							}
						newVOffset = 0;
					}
					else if (newSelection > 0)
					{
						for (newSelection = selection - 1; newSelection >= 0; newSelection--)
							if (CellFilter == NULL || CellFilter(data[newSelection], cellClientData[newSelection]))
								break;
							
						height = 0;
						
						for (int i=0; i < newSelection; i++)
							if (CellFilter == NULL || CellFilter(data[i], cellClientData[i]))
								height += rowHeights[i];
						
						if (height < vOffset || height > vOffset + (listRect.bottom - listRect.top))
							newVOffset = height;
					}
					break;
				case kDownArrowCharCode:
					if (selection == -1)
					{
						for (int i = numRows - 1; i > -1; i--)
							if (CellFilter == NULL || CellFilter(data[i], cellClientData[i]))
							{
								newSelection = i;
								break;
							}
						newVOffset = GetHeight() - (listRect.bottom - listRect.top);
						
						if (newVOffset < 0)
							newVOffset = 0;
					}
					else if (newSelection < CountTotal() - 1)
					{
						for (newSelection = selection + 1; newSelection < CountTotal(); newSelection++)
							if (CellFilter == NULL || CellFilter(data[newSelection], cellClientData[newSelection]))
								break;
						
						height = 0;
						
						for (int i=0; i < newSelection + 1; i++)
							if (CellFilter == NULL || CellFilter(data[i], cellClientData[i]))
								height += rowHeights[i];
						
						if (height > vOffset + (listRect.bottom - listRect.top) ||
							height < vOffset)
							newVOffset = height + (listRect.bottom - listRect.top) - rowHeights[newSelection];
					}
					break;
				default:
					return false;
			}
			
			if (newVOffset != -1)
				Update(listRect.right - listRect.left, listRect.bottom - listRect.top, newVOffset, -1);

			if (newSelection != selection)
			{
				int temp;
				
				temp = selection;
				selection = newSelection;
				part = -1;
				
				Update(listRect.right - listRect.left, listRect.bottom - listRect.top, vOffset, temp);
				Update(listRect.right - listRect.left, listRect.bottom - listRect.top, vOffset, selection);
			}
			return true;
			break;
		}
		default:
			return false;
	}
}

int MList::Select(Point thePoint, int vOffset, int* returnPart)
{
	int height = 0;
	int	oldSelection, oldPart;
	Rect	cellRect;
	
	thePoint.v += vOffset;
	
	oldSelection = selection;
	oldPart = part;
	
	for (int i=0; i < numRows; i++)
	{
		if (CellFilter == NULL || CellFilter(data[i], cellClientData[i]))
		{
			height += rowHeights[i];
			if (height > thePoint.v)
			{
				selection = i;
				break;
			}
		}
	}
	
	SetRect(&cellRect,
			listRect.left, height - rowHeights[selection],
			listRect.right, height);
	
	if (CellHitTest != NULL)
		part = CellHitTest(cellRect, thePoint, cellClientData[selection]);
	else
		part = -1;
	
	if (selection != oldSelection)
	{
		Update(listRect.right, listRect.bottom, vOffset, oldSelection);
		Update(listRect.right, listRect.bottom, vOffset, selection);
	}
	else if (part != oldPart)
	{
		Update(listRect.right, listRect.bottom, vOffset, selection);
	}
	
	*returnPart = part;
		
	return selection;
}

int MList::GetSelection()
{
	return selection;
}

int MList::GetHeight()
{
	int totalHeight = 0;
	
	for (int i = 0; i < numRows; i++)
		if (CellFilter == NULL || CellFilter(data[i], cellClientData[i]))
			totalHeight += rowHeights[i];
	
	return totalHeight;
}

int MList::GetVOffset()
{
	return vOffset;
}

int MList::GetAverageHeight()
{
	return GetHeight()/numRows;
}

void MList::SetCustomAreaWidth(int width)
{
	customAreaWidth = width;
}

#pragma mark-

int MList::CountVisible()
{
	int visibleCells = 0;
	
	for (int i=0; i < numRows; i++)
		if (CellFilter == NULL || CellFilter(data[i], cellClientData[i]))
			visibleCells++;
	
	return visibleCells;
}

int MList::CountTotal()
{
	return numRows;
}

#pragma mark -

void MList::SetDisplayFont(int number, int size)
{
	fontNo = number;
	fontSize = size;
}

void MList::Update(int width, int height, int inVOffset, int cellToDraw)
{
	FontInfo info;
	Rect	cellRect, updateRect, textRect;
	Point	thePen = {0, 0};
	int		currentHeight = 0;
	
	SAVEGWORLD;
	SAVECOLORS;
	
	if (width != listRect.right ||
		height != listRect.bottom)
	{
		SetRect(&listRect,
				0, 0,
				width, height);
		
		if (listPix != NULL)
		{
			UnlockPixels(listPix);
			DisposeGWorld(listGW);
		}
		
		NewGWorld(&listGW, 32, &listRect, NULL, NULL, 0);
		listPix = GetGWorldPixMap(listGW);
		LockPixels(listPix);
		
		updateRect = listRect;
	}
	else if (cellToDraw == -2)
	{
		if (listPix == NULL)
		{
			NewGWorld(&listGW, 32, &listRect, NULL, NULL, 0);
			listPix = GetGWorldPixMap(listGW);
			LockPixels(listPix);
		}
		updateRect = listRect;
	}
	else if (cellToDraw != -1)
	{
		updateRect = listRect;
		updateRect.top = -vOffset + 1;
		
		for (int i=0; i < cellToDraw; i++)
			if (CellFilter == NULL || CellFilter(data[i], cellClientData[i]))
				updateRect.top += rowHeights[i];
			
		updateRect.bottom = updateRect.top + rowHeights[cellToDraw] - 1;
	}
	else
	{
		SetGWorld(listGW, NULL);
		ScrollRect(&listRect, 0, vOffset - inVOffset, NULL);
		
		updateRect = listRect;
		
		if (vOffset > inVOffset)
			updateRect.bottom = updateRect.top + (vOffset - inVOffset);
		else
			updateRect.top = updateRect.bottom - (inVOffset - vOffset);
	}
	
	vOffset = inVOffset;
	
	SetGWorld(listGW, NULL);
	
	TextFont(fontNo);
	TextSize(fontSize);
	
	GetFontInfo(&info);
	
	MoveTo(0, 0);

	SetThemeBackground(kThemeBrushListViewBackground, 32, true);
	EraseRect(&updateRect);
	
	for (int i=0; i < numRows; i++)
	{
		if (CellFilter == NULL || CellFilter(data[i], cellClientData[i]))
		{
			if (currentHeight > updateRect.top + vOffset - rowHeights[i] &&
				currentHeight < updateRect.bottom + vOffset)
			{	
				GetPen(&thePen);
				thePen.v = currentHeight - vOffset;
				
				SetRect(&cellRect,
						0, thePen.v + 1,
						listRect.right, thePen.v + rowHeights[i] - 1);
				
				if (selection == i)
				{
					RGBColor hiliteColor;
					
					LMGetHiliteRGB(&hiliteColor);
					RGBForeColor(&hiliteColor);
					
					PaintRect(&cellRect);
					
					ForeColor(blackColor);
				}
				else
				{
					SetThemeBackground(kThemeBrushListViewBackground, 32, true);
					EraseRect(&cellRect);
					SetThemeBackground(kThemeTextColorWhite, 32, true);
				}
				
				SetThemeTextColor( kThemeTextColorListView, 32, true);
				
				if (CellDraw != NULL)
				{
					Rect	targetRect;
					
					targetRect = cellRect;
					
					targetRect.left = kListIndent;
					targetRect.right = targetRect.left + customAreaWidth;
					
					CellDraw(targetRect, data[i], selection == i, part, cellClientData[i]);
				}
				
				textRect = cellRect;
				textRect.left += kListIndent + customAreaWidth;
				
				if (data[i] != NULL)
					data[i]->DrawHTML(textRect);
				
				MoveTo(cellRect.left, cellRect.bottom);			
				SetThemePen( kThemeListViewSeparatorBrush, 32, true);
				Line(listRect.right, 0);
				Move(-listRect.right, 0);
			}
			currentHeight += rowHeights[i];
		}
	}
	
	TextFont(0);
	TextSize(12);
	
	RESTORECOLORS;
	RESTOREGWORLD;
}

void MList::Filter()
{
	if (CellUpdate != NULL)
		for (int i=0; i < numRows; i++)
			CellUpdate(data[i], &rowHeights[i], cellClientData[i]);
			
	Update(listRect.right - listRect.left,
		   listRect.bottom - listRect.top,
		   vOffset, -2);
} 

void MList::Display(Rect targetRect, int inVOffset)
{
	SAVECOLORS;
	
	if ((targetRect.right - targetRect.left) != listRect.right ||
		(targetRect.bottom - targetRect.top) != listRect.bottom ||
		inVOffset != vOffset)
		Update(targetRect.right - targetRect.left,
			   targetRect.bottom - targetRect.top,
			   inVOffset, -1);
	
	CopyBits((BitMap*)*listPix,
			 GetPortBitMapForCopyBits(GetQDGlobalsThePort()),
			 &listRect,
			 &targetRect,
			 srcCopy,
			 NULL);
		
	RESTORECOLORS;
}
