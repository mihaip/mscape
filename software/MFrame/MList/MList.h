#pragma once

#include "MString.h"

#include "commonfunctions.h"

enum listConstants
{
	kListIndent = 5
};

typedef bool (*CellFilterFunc)(MStringPtr cellString, void *clientData);
typedef int (*CellHitTestFunc)(Rect targetRect, Point theMouse, void *clientData);
typedef void (*CellDrawFunc)(Rect targetRect, MStringPtr cellString, bool selected, int part, void *clientData);
typedef long (*StringCompareFn)(MStringPtr string1, MStringPtr string2, void *clientData1, void* clientData2);
typedef void (*CellUpdateFunc)(MStringPtr cellString, int* height, void* clientData);

class MList
{
	public:
						MList(StringCompareFn compareFn,
							  CellDrawFunc drawFunc,
							  CellHitTestFunc hitTestFunc,
							  CellFilterFunc filerFunc,
							  CellUpdateFunc updateFunc);
						~MList(void);
		
		void			AddRow(int insertionPoint, int height);
		//void			AddCol(int insertionPoint, int width);
		void			RemoveRow(int row);
		
		void			InsertSorted(MStringPtr data, int height, void* clientData);
		
		OSErr			GetCellClientData(int row, int col, void** clientData);		
		OSErr			SetCellClientData(int row, int col, void* clientData);
		
		OSErr			SetValue(int row, int col, MStringPtr string);
		OSErr			GetValue(int row, int col, MStringPtr* string);
		OSErr			FindValue(MStringPtr string, void *clientData, int* row, int* col);
		
		OSErr			Remove(int row, int col);
		
		int				Select(Point thePoint, int vOffset, int* part);
		int				GetSelection();
		
		void			Filter();
		
		bool			HandleEvent(EventRecord* eventPtr);

		void			Display(Rect targetRect, int voffset);
		
		void			SetDisplayFont(int fontNo, int size);
		void			SetCustomAreaWidth(int width);
		
		int				GetHeight();
		int				GetVOffset();
		//int			GetWidth;
		
		int				GetAverageHeight();
		
		int				CountVisible();
		int				CountTotal();

	private:
		void 			Update(int width, int height, int vOffset, int cellToDraw);
		
		Rect			listRect;
		
		int				customAreaWidth;
		
		int				vOffset;
		
		int				numCols, numRows;
		int*			colWidths;
		int*			rowHeights;
		
		StringCompareFn CellStringCompare;
		CellHitTestFunc CellHitTest;
		CellDrawFunc	CellDraw;
		CellFilterFunc	CellFilter;
		CellUpdateFunc	CellUpdate;
		
		void**			cellClientData;
		
		short			fontNo;
		short			fontSize;
		
		PixMapHandle	listPix;
		GWorldPtr		listGW;
		
		MStringPtr*		data;
		
		int				selection;
		int				part;
};
