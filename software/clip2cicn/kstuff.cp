/*#include "previewer.h"

void tWindowClass::Load(void)
{
	GetParts();
	activeCicn.Load(activeCicnID);
	inactiveCicn.Load(inactiveCicnID);
}

void tWindowClass::PartsToRects(void)
{
	Rect	currentRect;
	
	rectList.topStrechRectsNo = 0;
	rectList.bottomStrechRectsNo = 0;
	rectList.leftStrechRectsNo = 0;
	rectList.rightStrechRectsNo = 0;
	
	
	// get the top strech rects
	
	currentRect.top = 0;
	currentRect.bottom = parts.partsRects.contentRect.top;
	
	for (int i = 0; i < parts.topNoOfCodes; i++)
		if (parts.topPartsCodes[i].partNumber == 8 ||
			parts.topPartsCodes[i].partNumber == 11 ||
			parts.topPartsCodes[i].partNumber == 12 ||
			parts.topPartsCodes[i].partNumber == 13 ||
			parts.topPartsCodes[i].partNumber == 14)
		{
			currentRect.right = parts.topPartsCodes[i].totalLength;
			currentRect.left = parts.topPartsCodes[i-1].totalLength;
			
			rectList.topStrechRects[rectList.topStrechRectsNo] = currentRect;
			rectList.topStrechRectsNo++;
		}
	
	// get the bottom stretch rects
	
	currentRect.top = parts.partsRects.contentRect.bottom;
	currentRect.bottom = activeCicn.height;
	
	for (int i = 0; i < parts.topNoOfCodes; i++)
		if (parts.bottomPartsCodes[i].partNumber == 8 ||
			parts.bottomPartsCodes[i].partNumber == 11 ||
			parts.bottomPartsCodes[i].partNumber == 12 ||
			parts.bottomPartsCodes[i].partNumber == 13 ||
			parts.bottomPartsCodes[i].partNumber == 14)
		{
			currentRect.right = parts.bottomPartsCodes[i].totalLength;
			currentRect.left = parts.bottomPartsCodes[i-1].totalLength;
			
			rectList.bottomStrechRects[rectList.bottomStrechRectsNo] = currentRect;
			rectList.bottomStrechRectsNo++;
		}
	
	// get the left strech rects
	
	currentRect.left = 0;
	currentRect.right = parts.partsRects.contentRect.left;
	
	for (int i = 0; i < parts.leftNoOfCodes; i++)
		if (parts.leftPartsCodes[i].partNumber == 8 ||
			parts.leftPartsCodes[i].partNumber == 11 ||
			parts.leftPartsCodes[i].partNumber == 12 ||
			parts.leftPartsCodes[i].partNumber == 13 ||
			parts.leftPartsCodes[i].partNumber == 14)
		{
			currentRect.bottom = parts.leftPartsCodes[i].totalLength;
			currentRect.top = parts.leftPartsCodes[i-1].totalLength;
			
			rectList.leftStrechRects[rectList.leftStrechRectsNo] = currentRect;
			rectList.leftStrechRectsNo++;			
		}
	
	
	// get the right strech rects
	
	currentRect.left = parts.partsRects.contentRect.right;
	currentRect.right = activeCicn.width;
	
	for (int i = 0; i < parts.rightNoOfCodes; i++)
		if (parts.rightPartsCodes[i].partNumber == 8 ||
			parts.rightPartsCodes[i].partNumber == 11 ||
			parts.rightPartsCodes[i].partNumber == 12 ||
			parts.rightPartsCodes[i].partNumber == 13 ||
			parts.rightPartsCodes[i].partNumber == 14)
		{
			currentRect.bottom = parts.rightPartsCodes[i].totalLength;
			currentRect.top = parts.rightPartsCodes[i-1].totalLength;
			
			rectList.rightStrechRects[rectList.rightStrechRectsNo] = currentRect;
			rectList.rightStrechRectsNo++;	
		}
		

	// display the strech rects
	
	RGBForeColor(&translucentColor);
	for (int i = 0; i < rectList.topStrechRectsNo; i++)
		DrawTranslucentRect(&rectList.topStrechRects[i]);
	for (int i = 0; i < rectList.bottomStrechRectsNo; i++)
		DrawTranslucentRect(&rectList.bottomStrechRects[i]);
	for (int i = 0; i < rectList.leftStrechRectsNo; i++)
		DrawTranslucentRect(&rectList.leftStrechRects[i]);
	for (int i = 0; i < rectList.rightStrechRectsNo; i++)
		DrawTranslucentRect(&rectList.rightStrechRects[i]);
	ForeColor(blackColor);
	
	// get the top left corner
	if (parts.topPartsCodes[0].partNumber == 0 && parts.topPartsCodes[0].totalLength == 0)
	{
		rectList.tlCornerRect.top = 0;
		rectList.tlCornerRect.bottom = parts.partsRects.contentRect.top;
		rectList.tlCornerRect.left = 0;
		rectList.tlCornerRect.right = parts.topPartsCodes[1].totalLength;
	}
	else
	{
		rectList.tlCornerRect.top = 0;
		rectList.tlCornerRect.bottom = parts.leftPartsCodes[1].totalLength;
		rectList.tlCornerRect.left = 0;
		rectList.tlCornerRect.right = parts.partsRects.contentRect.left;
	}
	
	// get the top right corner
	if (parts.rightPartsCodes[0].partNumber == 0 && parts.rightPartsCodes[0].totalLength == 0)
	{
		rectList.trCornerRect.top = 0;
		rectList.trCornerRect.bottom = parts.rightPartsCodes[1].totalLength;
		rectList.trCornerRect.left = parts.partsRects.contentRect.right;
		rectList.trCornerRect.right = activeCicn.width;
	}
	else
	{
		rectList.trCornerRect.top = 0;
		rectList.trCornerRect.bottom = parts.partsRects.contentRect.top;
		rectList.trCornerRect.left = parts.topPartsCodes[parts.topNoOfCodes-2].totalLength;
		rectList.trCornerRect.right = parts.topPartsCodes[parts.topNoOfCodes-1].totalLength;
	}
	
	// get the bottom left corner
	
	rectList.blCornerRect.top = parts.partsRects.contentRect.bottom;
	rectList.blCornerRect.bottom = activeCicn.height;
	rectList.blCornerRect.left = parts.bottomPartsCodes[0].totalLength;
	rectList.blCornerRect.right = parts.bottomPartsCodes[1].totalLength;
		
	ForeColor(redColor);
	DrawTranslucentRect(&rectList.tlCornerRect);
	DrawTranslucentRect(&rectList.trCornerRect);
	DrawTranslucentRect(&rectList.blCornerRect);
	ForeColor(blackColor);
	
	DisplayRect(rectList.trCornerRect);
	
	PenMode(srcCopy);
	PenPat(&qd.black);
	
}

void tWindowClass::GetParts()
{
	Handle		partsHandle;
	int			currentOffset = 0;
	int			rectNum, partsNum;
	Rect		currentRect;
	int			rectType;
	
	partsHandle = GetResource(partsResourceType, partsID);
	
	HLock(partsHandle);
	
	// get the rects
	rectNum = ReadDataWord(partsHandle, &currentOffset) + 1;
	for (int i=0; i < 5; i++)
	{
		rectType = ReadDataWord(partsHandle, &currentOffset);
		currentRect.top = ReadDataWord(partsHandle, &currentOffset);
		currentRect.left = ReadDataWord(partsHandle, &currentOffset);
		currentRect.bottom = ReadDataWord(partsHandle, &currentOffset);
		currentRect.right = ReadDataWord(partsHandle, &currentOffset);
		switch (rectType)
		{
			case 0: parts.partsRects.contentRect = currentRect; break;
			case 1: parts.partsRects.closeBoxRect = currentRect; break;
			case 2: parts.partsRects.zoomBoxRect = currentRect; break;
			case 3: parts.partsRects.collapseBoxRect = currentRect; break;
			case 4: parts.partsRects.titleTextRect = currentRect; break;
		}
	}
	
	// get the top parts
	partsNum = ReadDataWord(partsHandle, &currentOffset) + 1;
	if (partsNum > kMaxPartCodes)
	{
		DisplayAlert("Too many top part codes in part resource ", "increase kMaxPartCodes");
		ExitToShell();
	}
	
	parts.topNoOfCodes = partsNum;
	for (int i =0; i < partsNum; i++)
	{
		parts.topPartsCodes[i].partNumber = ReadDataWord(partsHandle, &currentOffset);
		parts.topPartsCodes[i].totalLength = ReadDataWord(partsHandle, &currentOffset);
	}
	
	// get the bottom parts
	partsNum = ReadDataWord(partsHandle, &currentOffset) + 1;
	if (partsNum > kMaxPartCodes)
	{
		DisplayAlert("Too many bottom part codes in part resource ", "increase kMaxPartCodes");
		ExitToShell();
	}
	
	parts.bottomNoOfCodes = partsNum;
	for (int i =0; i < partsNum; i++)
	{
		parts.bottomPartsCodes[i].partNumber = ReadDataWord(partsHandle, &currentOffset);
		parts.bottomPartsCodes[i].totalLength = ReadDataWord(partsHandle, &currentOffset);
	}
	
	// get the left parts
	partsNum = ReadDataWord(partsHandle, &currentOffset) + 1;
	if (partsNum > kMaxPartCodes)
	{
		DisplayAlert("Too many left part codes in part resource ", "increase kMaxPartCodes");
		ExitToShell();
	}
	
	parts.leftNoOfCodes = partsNum;
	for (int i =0; i < partsNum; i++)
	{
		parts.leftPartsCodes[i].partNumber = ReadDataWord(partsHandle, &currentOffset);
		parts.leftPartsCodes[i].totalLength = ReadDataWord(partsHandle, &currentOffset);
	}
	
	// get the right parts
	partsNum = ReadDataWord(partsHandle, &currentOffset) + 1;
	if (partsNum > kMaxPartCodes)
	{
		DisplayAlert("Too many right part codes in part resource ", "increase kMaxPartCodes");
		ExitToShell();
	}
	
	parts.rightNoOfCodes = partsNum;
	for (int i =0; i < partsNum; i++)
	{
		parts.rightPartsCodes[i].partNumber = ReadDataWord(partsHandle, &currentOffset);
		parts.rightPartsCodes[i].totalLength = ReadDataWord(partsHandle, &currentOffset);
	}
	HUnlock(partsHandle);
	
}

void tWindowClass::DisplayParts(tPartsTypes partsToDisplay)
{
	Str255		partsString;
	Rect		displayRect;
	
	PenMode(srcCopy);
	PenPat(&qd.black);
	ForeColor(blackColor);
	BackColor(whiteColor);
	
	EraseRect(&previewWindowRect);
	
	SetRect(&displayRect, 0, 0, activeCicn.width, activeCicn.height);
	activeCicn.Display(displayRect, resize, NULL);
	
	switch (partsToDisplay)
	{
		case rects: RGBForeColor(&translucentColor);
					DrawTranslucentRect(&parts.partsRects.contentRect);
					DrawTranslucentRect(&parts.partsRects.closeBoxRect);
					DrawTranslucentRect(&parts.partsRects.zoomBoxRect);
					DrawTranslucentRect(&parts.partsRects.collapseBoxRect);
					DrawTranslucentRect(&parts.partsRects.titleTextRect);
					ForeColor(blackColor);
					break;
	
		case top :	for (int i = 0; i < parts.topNoOfCodes; i++)
					{
						MoveTo(parts.topPartsCodes[i].totalLength, 0);
						LineTo(parts.topPartsCodes[i].totalLength, activeCicn.height);
						NumToString(parts.topPartsCodes[i].partNumber, partsString);
						MoveTo(parts.topPartsCodes[i].totalLength - StringWidth(partsString)/2, activeCicn.height + 15);
						DrawString(partsString);
					}
					break;
		case bottom:	for (int i = 0; i < parts.bottomNoOfCodes; i++)
						{
							MoveTo(parts.bottomPartsCodes[i].totalLength, 0);
							LineTo(parts.bottomPartsCodes[i].totalLength, activeCicn.height);
							NumToString(parts.bottomPartsCodes[i].partNumber, partsString);
							MoveTo(parts.bottomPartsCodes[i].totalLength - StringWidth(partsString)/2, activeCicn.height + 15);
							DrawString(partsString);
						}
					break;
		case left:	for (int i = 0; i < parts.leftNoOfCodes; i++)
					{
						MoveTo(0, parts.leftPartsCodes[i].totalLength);
						LineTo(activeCicn.width, parts.leftPartsCodes[i].totalLength);
						NumToString(parts.leftPartsCodes[i].partNumber, partsString);
						MoveTo(activeCicn.width + 10, parts.leftPartsCodes[i].totalLength + StringWidth(partsString)/2);
						DrawString(partsString);
					}
					break;
		case right:	for (int i = 0; i < parts.rightNoOfCodes; i++)
					{
						MoveTo(0, parts.rightPartsCodes[i].totalLength);
						LineTo(activeCicn.width, parts.rightPartsCodes[i].totalLength);
						NumToString(parts.rightPartsCodes[i].partNumber, partsString);
						MoveTo(activeCicn.width + 10, parts.rightPartsCodes[i].totalLength + StringWidth(partsString)/2);
						DrawString(partsString);
					}
					break;
	}
}

void tWindowClass::DisplayPreview(Rect targetRect, Str255 windowTitle, tWindowDisplayFlags displayFlags)
{

	windowTitle;
	displayFlags;

	Rect	cicnRect;
	
	EraseRect(&previewWindowRect);
	SetRect(&cicnRect, 0, 0, activeCicn.width, activeCicn.height);
	activeCicn.Display(cicnRect, resize, NULL);
	PartsToRects();
	
/*	EraseRect(&previewWindowRect);
	
	FrameRect(&targetRect);
	
	SetRect(&cicnRect, targetRect.left, targetRect.top, targetRect.left + rectList.tlCornerRect.right, targetRect.top + rectList.tlCornerRect.bottom);
	activeCicn.Display(cicnRect, clip, &rectList.tlCornerRect);
	
	SetRect(&cicnRect, targetRect.right - (rectList.trCornerRect.right - rectList.trCornerRect.left), targetRect.top, targetRect.right, targetRect.top + rectList.tlCornerRect.bottom);
	activeCicn.Display(cicnRect, clip, &rectList.trCornerRect);
	
	
	SetRect(&cicnRect, targetRect.left + rectList.tlCornerRect.right, targetRect.top, targetRect.right - (rectList.trCornerRect.right - rectList.trCornerRect.left), targetRect.top + rectList.tlCornerRect.bottom);
	
	StrechCicnRect(&activeCicn, rectList.topStrechRects[0], cicnRect);
	
}*/
/*
void StrechCicnRect(tCicnClass* cicn, Rect sourceRect, Rect targetRect)
{
	Rect	currentRect;
	
	currentRect.top = targetRect.top;
	currentRect.bottom = targetRect.bottom;
	currentRect.left = targetRect.left;
	currentRect.right = targetRect.left + sourceRect.right - sourceRect.left;
	
	while (currentRect.right < targetRect.right)
	{
		cicn->Display(currentRect, clip, &sourceRect);
		currentRect.left = currentRect.right;
		currentRect.right += (sourceRect.right - sourceRect.left);
	}
	
	currentRect.right = targetRect.right;
	cicn->Display(currentRect, clip, &sourceRect);

}
*/
/*void DrawWindow(Rect targetRect, Str255 windowTitle)
{
	//Rect		fhRect;
	//Rect		scrollBarRect;
	Rect		cicnRect;
	Rect		displayRect;
	int 		titleLength;
	int			strechLength=100;
	int			strechDistance = 0;
	
	EraseRect(&previewWindowRect);
	
	titleLength = StringWidth(windowTitle);
	
	FrameRect(&targetRect);
	cicnRect.top = 0;
	cicnRect.left = 0;
	cicnRect.right = documentWParts.topPartsCodes[0].totalLength;
	cicnRect.bottom = documentWParts.rightPartsCodes[0].totalLength;
	displayRect = cicnRect;
	documentWA.Display(displayRect, clip, &cicnRect);
	for (int i = 1; i < documentWParts.topNoOfCodes; i++)
	{
		if (documentWParts.topPartsCodes[i].partNumber == 8)
		{
			strechDistance += strechLength;
		}
		//if (documentWParts.topPartsCodes[i].partNumber == 5)
		//{
		//	strechDistance += titleLength;
		//}
		cicnRect.left = cicnRect.right;
		cicnRect.right = documentWParts.topPartsCodes[i].totalLength;
		displayRect = cicnRect;
		displayRect.left += strechDistance;
		displayRect.right += strechDistance;
		documentWA.Display(displayRect, clip, &cicnRect);
		Sleep(60);
	}

//	DrawWindowFrame(targetRect, windowTitle);
	
//	SetRect(&fhRect, targetRect.left + 5, targetRect.top + 21, targetRect.right - 5, targetRect.top + 41);
//	DrawFinderHeader(fhRect);
	
//	SetRect(&scrollBarRect, targetRect.right - 21, targetRect.top + 40, targetRect.right - 5, targetRect.bottom - 20);
//	DrawScrollBar(scrollBarRect, vertical);
	
//	SetRect(&scrollBarRect, targetRect.left + 5, targetRect.bottom - 21, targetRect.right - 20, targetRect.bottom - 5);
//	DrawScrollBar(scrollBarRect, horizontal);
}
*/

/*void DrawWindowFrame(Rect targetRect, Str255 windowTitle)
{
	Rect		dwTLCorner = {0, 0, 5, 5};
	Rect		dwTRCorner = {0, 7, 5, 16};
	Rect		dwBLCorner = {7, 0, 16, 6};
	Rect		dwBRCorner = {7 ,7 ,16, 16};
	Rect		displayRect;
	Rect		titleBar;
	Rect		contentRect;
	RGBColor	testPixel;
	int			textPosition;
	Rect		widgetRect;
	Rect		racingStripesLeft = {0, 0, 13, 7};
	Rect		racingStripesRight = {0, 9, 13, 16};
	Rect		racingStripesRect;
	Rect		growBoxRect;
	
	SetRect(&titleBar, targetRect.left + 4, targetRect.top + 3, targetRect.right - 4, targetRect.top + 20);
	SetRect(&contentRect, targetRect.left + 6, targetRect.top + 22, targetRect.right - 6, targetRect.bottom - 6);
	
	SetRect(&displayRect, targetRect.left, targetRect.top, targetRect.left + 5, targetRect.top + 5);					  
	windowCicn.Display(displayRect, clip, &dwTLCorner);
	
	SetRect(&displayRect, targetRect.right - 9, targetRect.top, targetRect.right, targetRect.top + 5);
	windowCicn.Display(displayRect, clip, &dwTRCorner);

	SetRect(&displayRect, targetRect.left, targetRect.bottom - 9, targetRect.left + 6, targetRect.bottom);
	windowCicn.Display(displayRect, clip, &dwBLCorner);
	
	SetRect(&displayRect, targetRect.right - 9, targetRect.bottom - 9, targetRect.right, targetRect.bottom);
	windowCicn.Display(displayRect, clip, &dwBRCorner);
	

	for (int i = 0; i < 5; i++)
	{
		testPixel = windowCicn.GetPixel(6, i);
		RGBForeColor(&testPixel);
		MoveTo(targetRect.left + 5, targetRect.top + i);
		LineTo(targetRect.right - 10, targetRect.top + i);
	}
	for (int i = 0; i < 6; i++)
	{
		testPixel = windowCicn.GetPixel(i, 6);
		RGBForeColor(&testPixel);
		MoveTo(targetRect.left + i, targetRect.top + 5);
		LineTo(targetRect.left + i, targetRect.bottom - 10);
	}
	for (int i = 0; i < 7; i++)
	{
		testPixel = windowCicn.GetPixel(i+9, 6);
		RGBForeColor(&testPixel);
		MoveTo(targetRect.right - 7 + i, targetRect.top + 5);
		LineTo(targetRect.right - 7 + i, targetRect.bottom - 10);
	}
	for (int i = 0; i < 7; i++)
	{
		testPixel = windowCicn.GetPixel(6, i+9);
		RGBForeColor(&testPixel);
		MoveTo(targetRect.left + 6, targetRect.bottom - 7 + i);
		LineTo(targetRect.right - 10, targetRect.bottom - 7 + i);
	}

	testPixel = windowCicn.GetPixel(6, 3);
	RGBBackColor(&testPixel);
	EraseRect(&titleBar);
	testPixel = windowCicn.GetPixel(6, 4);
	RGBForeColor(&testPixel);
	MoveTo(targetRect.left + 5, targetRect.top + 20);
	LineTo(targetRect.right - 6, targetRect.top + 20);
	testPixel = windowCicn.GetPixel(6, 5);
	RGBForeColor(&testPixel);
	MoveTo(targetRect.left + 5, targetRect.top + 21);
	LineTo(targetRect.right - 6, targetRect.top + 21);
	
	BackColor(whiteColor);
	EraseRect(&contentRect);
	
	TextFont(0);
	TextSize(12);
	textPosition = (int)(targetRect.right - targetRect.left)/2 - StringWidth(windowTitle)/2;
	MoveTo(targetRect.left+textPosition+1, targetRect.top + 16);
	testPixel = windowCicn.GetPixel(9, 3);
	RGBForeColor(&testPixel);
	DrawString(windowTitle);
	MoveTo(targetRect.left+textPosition, targetRect.top + 15);
	testPixel = windowCicn.GetPixel(7, 3);
	RGBForeColor(&testPixel);
	DrawString(windowTitle);
	
	SetRect(&widgetRect, targetRect.left + 4, targetRect.top + 4, targetRect.left + 20, targetRect.top + 20);
	PlotIconID(&widgetRect, atNone, ttNone, closeBoxID);
	
	SetRect(&widgetRect, targetRect.right - 17, targetRect.top + 4, targetRect.right - 1, targetRect.top + 20);
	PlotIconID(&widgetRect, atNone, ttNone, windowShadeID);
	
	SetRect(&widgetRect, targetRect.right - 33, targetRect.top + 4, targetRect.right - 17, targetRect.top + 20);
	PlotIconID(&widgetRect, atNone, ttNone, zoomBoxID);
		
	SetRect(&racingStripesRect, targetRect.left + 22, targetRect.top + 4, targetRect.left + 29, targetRect.top + 17);
	racingStripesCicn.Display(racingStripesRect, clip, &racingStripesLeft);
	
	SetRect(&racingStripesRect, targetRect.left + textPosition - 11, targetRect.top + 4, targetRect.left + textPosition - 4, targetRect.top + 17);
	racingStripesCicn.Display(racingStripesRect, clip, &racingStripesRight);
	
	for (int i = 0; i <= 12; i++)
	{
		testPixel = racingStripesCicn.GetPixel(8, i);
		RGBForeColor(&testPixel);
		MoveTo(targetRect.left + 29, targetRect.top + 4 + i);
		LineTo(targetRect.left + textPosition - 12, targetRect.top + 4 + i);
	}
	
	SetRect(&racingStripesRect, targetRect.left + textPosition + StringWidth(windowTitle) + 4, targetRect.top + 4, targetRect.left + textPosition + StringWidth(windowTitle) + 11, targetRect.top + 17);
	racingStripesCicn.Display(racingStripesRect, clip, &racingStripesLeft);
	
	SetRect(&racingStripesRect, targetRect.right - 44, targetRect.top + 4, targetRect.right - 37, targetRect.top + 17);
	racingStripesCicn.Display(racingStripesRect, clip, &racingStripesRight);
	
	for (int i = 0; i <= 12; i++)
	{
		testPixel = racingStripesCicn.GetPixel(8, i);
		RGBForeColor(&testPixel);
		MoveTo(targetRect.left + textPosition + StringWidth(windowTitle) + 11, targetRect.top + 4 + i);
		LineTo(targetRect.right - 44, targetRect.top + 4 + i);
	}
	
	SetRect(&growBoxRect, targetRect.right - 21, targetRect.bottom - 21, targetRect.right - 4, targetRect.bottom - 4);
	growBoxCicn.Display(growBoxRect, resize, NULL);
}

void DrawFinderHeader(Rect targetRect)
{
	Rect		fhTLCorner = {0, 0, 5, 5};
	Rect		fhTRCorner = {0, 7, 5, 12};
	Rect		fhBLCorner = {7, 0, 12, 5};
	Rect		fhBRCorner = {7, 7, 12, 12};
	Rect		fhRect;
	short		fontNum;
	RGBColor	testPixel;
	
	SetRect(&fhRect, targetRect.left, targetRect.top, targetRect.left + 5, targetRect.top + 5);					  
	finderHeaderCicn.Display(fhRect, clip, &fhTLCorner);
	
	SetRect(&fhRect, targetRect.right - 5, targetRect.top, targetRect.right, targetRect.top + 5);
	finderHeaderCicn.Display(fhRect, clip, &fhTRCorner);

	SetRect(&fhRect, targetRect.left, targetRect.bottom - 5, targetRect.left + 5, targetRect.bottom);
	finderHeaderCicn.Display(fhRect, clip, &fhBLCorner);
	
	SetRect(&fhRect, targetRect.right - 5, targetRect.bottom - 5, targetRect.right, targetRect.bottom);
	finderHeaderCicn.Display(fhRect, clip, &fhBRCorner);
	
	for (int i = 0; i < 4; i++)
	{
		testPixel = finderHeaderCicn.GetPixel(6, i);
		RGBForeColor(&testPixel);
		MoveTo(targetRect.left + 5, targetRect.top + i);
		LineTo(targetRect.right - 6, targetRect.top + i);
	}
	for (int i = 0; i < 5; i++)
	{
		testPixel = finderHeaderCicn.GetPixel(i, 6);
		RGBForeColor(&testPixel);
		MoveTo(targetRect.left + i, targetRect.top + 5);
		LineTo(targetRect.left + i, targetRect.bottom - 6);
	}
	for (int i = 0; i < 5; i++)
	{
		testPixel = finderHeaderCicn.GetPixel(i+7, 6);
		RGBForeColor(&testPixel);
		MoveTo(targetRect.right - 5 + i, targetRect.top + 5);
		LineTo(targetRect.right - 5 + i, targetRect.bottom - 6);
	}
	for (int i = 0; i < 5; i++)
	{
		testPixel = finderHeaderCicn.GetPixel(6, i+7);
		RGBForeColor(&testPixel);
		MoveTo(targetRect.left + 5, targetRect.bottom - 5 + i);
		LineTo(targetRect.right - 6, targetRect.bottom - 5 + i);
	}

	SetRect(&fhRect, targetRect.left + 5, targetRect.top + 4, targetRect.right - 5, targetRect.bottom - 5);
	testPixel = finderHeaderCicn.GetPixel(5, 4);
	RGBBackColor(&testPixel);
	EraseRect(&fhRect);
	
	GetFNum("\pGeneva", &fontNum);
	if (fontNum != 0) TextFont(fontNum);
	TextSize(9);
	testPixel = finderHeaderCicn.GetPixel(6, 4);
	RGBForeColor(&testPixel);
	MoveTo((int)targetRect.left + (targetRect.right - targetRect.left)/2 - StringWidth("\p2 items, 7 GB available")/2, targetRect.bottom - 6);
	DrawString("\p2 items, 7 GB available");
	ForeColor(blackColor);
	BackColor(whiteColor);
}

void DrawScrollBar(Rect targetRect, tScrollBarFlags flags)
{
	Rect		scrollBarRect;
	int			trackLength;
	Rect		trackTop = {0, 0, 7, 16};
	Rect		trackBottom = {9, 0, 16, 16};
	Rect		trackLeft = {0, 0, 16, 7};
	Rect		trackRight = {0, 9, 16, 16};
	Rect		thumbRect;
	RGBColor	testPixel;

	if (flags & vertical)
	{
		trackLength = (int) (targetRect.bottom - targetRect.top)/2 - 16 - 8 - 14;
		
		SetRect(&scrollBarRect, targetRect.left, targetRect.top, targetRect.right, targetRect.top + 16);
		PlotIconID(&scrollBarRect, atNone, ttNone, upArrowID);
		
		SetRect(&scrollBarRect, targetRect.left, targetRect.bottom - 16, targetRect.right, targetRect.bottom);
		PlotIconID(&scrollBarRect, atNone, ttNone, downArrowID);
		
		SetRect(&scrollBarRect, targetRect.left, targetRect.top + 15, targetRect.right, targetRect.top + 22);
		trackUpCicn.Display(scrollBarRect, clip, &trackTop);
		
		SetRect(&scrollBarRect, targetRect.left, targetRect.top + 16 + trackLength, targetRect.right, targetRect.top + trackLength + 23);
		trackUpCicn.Display(scrollBarRect, clip, &trackBottom);
		
		for (int i = 0; i < 16; i++)
		{
			testPixel = trackUpCicn.GetPixel(i, 8);
			RGBForeColor(&testPixel);
			MoveTo(targetRect.left + i, targetRect.top + 22);
			LineTo(targetRect.left + i, targetRect.top + trackLength + 15);
		}
		
		SetRect(&thumbRect, targetRect.left, targetRect.top + trackLength + 22, targetRect.right, targetRect.top + trackLength + 39);
		thumbUpCicn.Display(thumbRect, resize, NULL);
		
		SetRect(&scrollBarRect, targetRect.left, targetRect.top + trackLength + 38, targetRect.right, targetRect.top + trackLength + 45);
		trackUpCicn.Display(scrollBarRect, clip, &trackTop);
		
		SetRect(&scrollBarRect, targetRect.left, targetRect.bottom - 22, targetRect.right, targetRect.bottom - 15);
		trackUpCicn.Display(scrollBarRect, clip, &trackBottom);
		
		for (int i = 0; i < 16; i++)
		{
			testPixel = trackUpCicn.GetPixel(i, 8);
			RGBForeColor(&testPixel);
			MoveTo(targetRect.left + i, targetRect.top + trackLength + 45);
			LineTo(targetRect.left + i, targetRect.bottom - 23);
		}
	}
	
	if (flags & horizontal)
	{
		trackLength = (int) (targetRect.right - targetRect.left)/2 - 16 - 8 - 14;
		
		SetRect(&scrollBarRect, targetRect.left, targetRect.top, targetRect.left + 16, targetRect.bottom);
		PlotIconID(&scrollBarRect, atNone, ttNone, leftArrowID);
		
		SetRect(&scrollBarRect, targetRect.right - 16, targetRect.top, targetRect.right, targetRect.bottom);
		PlotIconID(&scrollBarRect, atNone, ttNone, rightArrowID);
		
		SetRect(&scrollBarRect, targetRect.left + 15, targetRect.top, targetRect.left + 22, targetRect.bottom);
		trackSideCicn.Display(scrollBarRect, clip, &trackLeft);
		
		SetRect(&scrollBarRect, targetRect.left + 16 + trackLength, targetRect.top, targetRect.left + 23 + trackLength, targetRect.bottom);
		trackSideCicn.Display(scrollBarRect, clip, &trackRight);
		
		for (int i = 0; i < 16; i++)
		{
			testPixel = trackSideCicn.GetPixel(8, i);
			RGBForeColor(&testPixel);
			MoveTo(targetRect.left + 22, targetRect.top + i);
			LineTo(targetRect.left + 15 + trackLength, targetRect.top + i);
		}
		
		SetRect(&thumbRect, targetRect.left + 22 + trackLength, targetRect.top, targetRect.left + 39 + trackLength, targetRect.bottom);
		thumbSideCicn.Display(thumbRect, resize, NULL);
		
		SetRect(&scrollBarRect, targetRect.left + 38 + trackLength, targetRect.top, targetRect.left + 45 + trackLength, targetRect.bottom);
		trackSideCicn.Display(scrollBarRect, clip, &trackLeft);
		
		SetRect(&scrollBarRect, targetRect.right - 22, targetRect.top, targetRect.right - 15, targetRect.bottom);
		trackSideCicn.Display(scrollBarRect, clip, &trackRight);
		
		for (int i = 0; i < 16; i++)
		{
			testPixel = trackSideCicn.GetPixel(8, i);
			RGBForeColor(&testPixel);
			MoveTo(targetRect.left + trackLength + 45, targetRect.top + i);
			LineTo(targetRect.right - 23, targetRect.top + i);
		}
	}
}*/
