// __________________________________________________________________________________________
// Program		: Icon Mangler
// Filename		: graphicalFunctions.cpp (C++)
// Author		: Mihai Parparita (St. Mary's International School)
// Last modified: April 1, 1999
// Description	: this file contains graphical functions, such as flips, rotates and fills

#include "graphicalFunctions.h"

pascal OSErr QTDataUnloadProc(Ptr imageData, long bytesNeeded, long refCon);

// __________________________________________________________________________________________
// Name			: PictureToRegion
// Input		: srcPic: picture from which the outline should be derived
// Output		: targetRgn: region where the outline should be stored
//				  OSErr: if anything went wrong...
// Description	: pictures can have a mask built into them, which is used to determine the
//				  clipping when they are drawn. This function extracts that mask by drawing
//				  the picture on a background of a particular, rare color, and then looking
//				  at which pixels have been left unchanged.

OSErr PictureToRegion(PicHandle srcPic, Rect bounds, RgnHandle targetRgn)
{
	GWorldPtr		tempGW, // we'll be drawing the the picture here
					maskGW; // this is where the final BitMap will be (for trasnferring to the
							// targetRgn)
	PixMapHandle	tempPix, // PixMaps corresponding to the GWorlds above
					maskPix;
	register long	*rowBaseAddress, // pointer to the baseAddress of a row in the tempGW
					rowLongs, // the width of a row
					noOfRows, // the number of rows (height)
					noOfPixels; // the width in pixels
	OSStatus		err = noErr;
	
	SAVEGWORLD;
	SAVECOLORS;
	
	// first we create the temporary GWorld...
	err = NewGWorld(&tempGW, 32, &bounds, NULL, NULL, 0);
	if (err != noErr) {return err;}
	tempPix = GetGWorldPixMap(tempGW);
	LockPixels(tempPix);
	SetGWorld(tempGW, NULL);
	EraseRect(&bounds);

	// getting some info about the GWorld	
	noOfRows = bounds.bottom - bounds.top;
	noOfPixels = bounds.right - bounds.left;
	rowBaseAddress = (long *)(**tempPix).baseAddr;
	rowLongs = ((**tempPix).rowBytes & 0x3FFF)/4;
	// the rowBytes has the upper two bits as flags
	
	// we now fill it with the never used color
	for (int j = 0; j < noOfRows; j++, rowBaseAddress += rowLongs)
		for (int i=0; i < noOfPixels; i++)
			rowBaseAddress[i] = kNeverUsedColor;
	
	// we then draw the picture. the base assumption here is that pixels which are masked out
	// won't be affected, so we can check later on if they're still equal to kNeverUsedColor		
	DrawPicture(srcPic, &bounds);
	
	// we start at the base address
	rowBaseAddress = (long*)(**tempPix).baseAddr;	
	for (int j = 0; j < noOfRows; j++, rowBaseAddress += rowLongs)
		for (int i=0; i < noOfPixels; i++) // and move through all the rows
			if ((rowBaseAddress[i] & 0xFFFFFF) != (kNeverUsedColor & 0xFFFFFF))
				rowBaseAddress[i] = 0; // turn changed pixels to black
			else
				rowBaseAddress[i] = 0xFFFFFF; // unchanged become white
	
	// what we have right now is an image which contains masked out areas as black and the
	// rest as white. The only problem is that its in 32 bits, and BitMapToRegion wants a 1-bit
	// deep bitmap. Therefore we make a new GWorld...
	err = NewGWorld(&maskGW, 1, &bounds, NULL, NULL, 0);
	if (err != noErr) // if we failed
		{UnlockPixels(tempPix); DisposeGWorld(tempGW); return err;}
	maskPix = GetGWorldPixMap(maskGW);
	LockPixels(maskPix);
	SetGWorld(maskGW, NULL);
	EraseRect(&bounds);
	
	// ...and just copy the tempPix into the here
	CopyPixMap(tempPix,maskPix,&bounds,&bounds,srcCopy,NULL);	
	
	// now we can get the region
	BitMapToRegion(targetRgn, (BitMap*)*maskPix);
	
	RESTOREGWORLD;
	RESTORECOLORS;
	
	// we're done, so we can dispose
	UnlockPixels(tempPix);
	DisposeGWorld(tempGW);
	UnlockPixels(maskPix);
	DisposeGWorld(maskGW);
	
	return noErr;
}

// __________________________________________________________________________________________
// Name			: FillPixMap
// Input		: x, y: coordinates of source of fill
//				  color: color with which the pixmap should be filled
//				  clipRgn: region to which we're limiting the filling
// Output		: targetPix: pixmap in which the fill must be executed
// Description	: Does a point flood fill based on the input. Basically it fills all the pixels
//				  adjacent to the source area which have the same color. This is done through
//				  recursion.

void FillPixMap(PixMapHandle targetPix, int x, int y, RGBColor colorRGB, RgnHandle clipRgn)
{
	FillPixMapParams params;
	
	params.x = x;
	params.y = y;
	params.pix = targetPix;
	params.clipRgn = clipRgn;
	
	switch ((**targetPix).pixelSize) // based on the depth
	{
		// depths 1, 4 and 8 use an indexed color table, thus the color is the color table index
		case 1:
			params.GetPixel = GetPixel1;
			params.SetPixel = SetPixel1;
			params.newColor = GetColorIndex(colorRGB, (**targetPix).pmTable);
			break;
		case 4:
			params.GetPixel = GetPixel4;
			params.SetPixel = SetPixel4;
			params.newColor = GetColorIndex(colorRGB, (**targetPix).pmTable);
			break;
		case 8:
			params.GetPixel = GetPixel8; 
			params.SetPixel = SetPixel8;
			params.newColor = GetColorIndex(colorRGB, (**targetPix).pmTable);
			break;
		case 32:
			params.GetPixel = GetPixel32;
			params.SetPixel = SetPixel32;
			// for this depth we must merge the RGB components into a long
			params.newColor = ((colorRGB.red << 8)	& 0x00FF0000) +
							  ((colorRGB.green)		& 0x0000FF00) +
							  ((colorRGB.blue >> 8)	& 0x000000FF);
			break;
	}
	
	params.oldColor = params.GetPixel(x, y, targetPix);
	// the color we are replacing is whatever is undernath the pixel
	
	if (params.oldColor == params.newColor)
		return;
	
	// then we start the filling
	FillRun(&params);
}

void FillRun(FillPixMapParamsPtr params)
{
	long currentColor, currentX, currentY, runStart, runEnd;
	Rect bounds;
	Point tempPoint;
	
	bounds = (**params->pix).bounds;
	
	currentX = params->x;
	currentY = params->y;
	currentColor = params->GetPixel(currentX, currentY, params->pix);
	
	while (currentColor == params->oldColor)
	{
		currentX--;
		if (currentX < bounds.left)
			currentColor = params->newColor;
		else
			currentColor = params->GetPixel(currentX, currentY, params->pix);
	}
	
	runStart = currentX + 1;
	
	currentX = params->x;
	
	currentColor = params->GetPixel(currentX, currentY, params->pix);
	
	while (currentColor == params->oldColor)
	{
		currentX++;
		if (currentX >= bounds.right)
			currentColor = params->newColor;
		else
			currentColor = params->GetPixel(currentX, currentY, params->pix);
	}
	
	runEnd = currentX;
	
	for (currentX = runStart; currentX < runEnd; currentX++)
		{
			tempPoint.h = currentX;
			tempPoint.v = currentY;
			if ((params->clipRgn == NULL) || PtInRgn(tempPoint, params->clipRgn))
				params->SetPixel(currentX, currentY, params->newColor, params->pix);
		}
		
	currentX = runStart;
	currentY--;
	
	if ((currentY >= bounds.top))
	{
		for (currentX = runStart; currentX < runEnd; currentX++)
		{
			currentColor = params->GetPixel(currentX, currentY, params->pix);
			
			tempPoint.h = currentX;
			tempPoint.v = currentY;
	
			if (currentColor == params->oldColor && (params->clipRgn == NULL || PtInRgn(tempPoint, params->clipRgn)))
				{
					params->x = currentX;
					params->y = currentY;
					FillRun(params);
				}
		}
	}
	
	currentX = runStart;
	currentY += 2;
	
	if ((currentY < bounds.bottom))
	{
		for (currentX = runStart; currentX < runEnd; currentX++)
		{
			currentColor = params->GetPixel(currentX, currentY, params->pix);
			
			tempPoint.h = currentX;
			tempPoint.v = currentY;
			
			if (currentColor == params->oldColor && (params->clipRgn == NULL || PtInRgn(tempPoint, params->clipRgn)))
				{
					params->x = currentX;
					params->y = currentY;
					FillRun(params);
				}
		}
	}
}


// __________________________________________________________________________________________
// Name			: FlipVertical
// Input		: srcPix: the pixmap we must flip vertically
// Output		: None
// Description	: This function flips a pixmap vertically (mirrors across the x axis) by
//				  switching "strips" between the top and the bottom

void FlipVertical(PixMapHandle srcPix)
{
	int				rowSize, // size of a row
					height; // height of the image
	char			*tempRow, // temporary place to store a row
					*topRow, // pointer to the top row
					*bottomRow; // and the bottom row
	
	// setting up the variables
	rowSize = (**srcPix).rowBytes & 0x3FFF;
	height = (**srcPix).bounds.bottom - (**srcPix).bounds.top;
	topRow = (**srcPix).baseAddr;
	bottomRow = topRow + (height - 1) * rowSize;
	
	// allocating space for the temporary row
	tempRow = NewPtr(rowSize);
	if (tempRow == NULL)
		return;
	
	// and now for half the image (since we don't want to switch them twice) we go through
	// the rows and switch them around
	for (int i=0; i < height/2; i++, topRow += rowSize, bottomRow -= rowSize)
	{
		BlockMove(topRow, tempRow, rowSize);
		BlockMove(bottomRow, topRow, rowSize);
		BlockMove(tempRow, bottomRow, rowSize);
	}
	
	// and we don't need this anymore
	DisposePtr(tempRow);
}

// __________________________________________________________________________________________
// Name			: FlipHorizontal
// Input		: srcPix: pixmap which we must flip
// Output		: None
// Description	: This function flips the pixmap horizontally (mirrors it across the y axis).
//				  Unlike the previous function, we cannot operate with "strips", since the
//				  different depths have different widths. Instead we must operate differently
//				  for each depth (for 8 bit and 32 bits we can use chars and longs for the
//				  swapping of values, but for 1 and 4 its easier to use the GetPixel1/4 and
//				  SetPixel1/4 functions.

void FlipHorizontal(PixMapHandle srcPix)
{
	int				rowSize, // width of a row
					height, width; // the dimensions of the pixmap
	char			*left, *right, tempChar; // the left and right pixels, and a temporary
											 // one for swapping
	long			temp; // temporary long for swapping
	Rect			bounds; // the dimensions of the picture
	
	// setting up these variables
	bounds = (**srcPix).bounds;
	rowSize = (**srcPix).rowBytes & 0x3FFF;
	height = (**srcPix).bounds.bottom - (**srcPix).bounds.top;
	width = bounds.right - bounds.left;
	
	switch ((**srcPix).pixelSize)
	{
		// as mentioned, for the depths of 1 and 4 we use SetPixel and GetPixel
		case 1:
			for(int y = bounds.top; y < bounds.bottom; y++)
				for (int x = bounds.left; x < bounds.left + width/2; x++)
				{
					temp = GetPixel1(x, y, srcPix);
					SetPixel1(x, y,
							 GetPixel1(bounds.right - (x - bounds.left) - 1 , y, srcPix),
							 srcPix);
					SetPixel1(bounds.right - (x - bounds.left) - 1 , y, temp, srcPix);
				}
			break;
		case 4:
			for(int y = bounds.top; y < bounds.bottom; y++)
				for (int x = bounds.left; x < bounds.left + width/2; x++)
				{
					temp = GetPixel4(x, y, srcPix);
					SetPixel4(x, y,
							 GetPixel4(bounds.right - (x - bounds.left) - 1 , y, srcPix),
							 srcPix);
					SetPixel4(bounds.right - (x - bounds.left) - 1 , y, temp, srcPix);
				}
			break;
		case 8:
			// here we can swap chars
			for(int i= 0; i < height; i++)
			{
				left = (**srcPix).baseAddr + i * rowSize;
				right = left + (width - 1);
				for (int j = 0; j < width/2; j++, left++, right--)
				{
					tempChar = *left;
					*left = *right;
					*right = tempChar;
				}
			}
			break;
		case 32:
			// and here we can swap longs
			for(int i= 0; i < height; i++)
			{
				left = (**srcPix).baseAddr + i * rowSize;
				right = left + (width - 1) * 4;
				for (int j = 0; j < width/2; j++, left+= 4, right-=4)
				{
					temp = *(long *)left;
					*(long *)left = *(long *)right;
					*(long *)right = temp;
				}
			}
		break;
	}
}

// __________________________________________________________________________________________
// Name			: Rotate
// Input		: angle: the angle of rotation
//				  srcGW, srcPix: GWorld/PixMap which we must rotate
// Output		: None
// Description	: This function rotates by 90 degrees (clockwise or anti-clockwise) the requested
//				  GWorld/PixMap. Note that the coordinates will also have to be swapped

void Rotate(int angle, GWorldPtr *srcGW, PixMapHandle *srcPix)
{
	GetPixelFuncPtr	GetPixel; // function pointers for the ones we'll use
	SetPixelFuncPtr	SetPixel;
	int				height, width; // dimensions of the pixmap
	GWorldPtr		tempGW; // used temporarely since the dimensions will change
	PixMapHandle	tempPix; // pixmap for the GWorld above
	Rect			bounds, rotatedBounds; // dimensions for the two GWorld
	Point			savedOffset; // the coordinate of the top left of the rectangle
	
	// we save the original position
	savedOffset.h = (***srcPix).bounds.left;
	savedOffset.v = (***srcPix).bounds.top;
	
	// move the bounds to 0, 0
	OffsetRect(&(***srcPix).bounds, -savedOffset.h, -savedOffset.v);
	
	// set up the variables
	bounds = (***srcPix).bounds;
	height = bounds.bottom - bounds.top;
	width = bounds.right - bounds.left;

	// the rotated bounds have the coordiates swapped around	
	SetRect(&rotatedBounds,
			bounds.top,
			bounds.left,
			bounds.bottom,
			bounds.right);
	
	// we make the rotated GWorld
	NewGWorld(&tempGW, (***srcPix).pixelSize, &rotatedBounds, (***srcPix).pmTable, NULL, 0);
	tempPix = GetGWorldPixMap(tempGW);
	LockPixels(tempPix);

	switch ((***srcPix).pixelSize) // based on the depth we use different functions
	{
		case 1: GetPixel = GetPixel1; SetPixel = SetPixel1; break;
		case 4: GetPixel = GetPixel4; SetPixel = SetPixel4; break;
		case 8: GetPixel = GetPixel8; SetPixel = SetPixel8; break;
		case 32: GetPixel = GetPixel32; SetPixel = SetPixel32; break;
	}
	
	switch (angle)
	{
		// based on the angle we swap the values
		case 90:
			for(int y= 0; y < height; y++)
				for (int x = 0; x < width; x++)
					SetPixel(height - y - 1, x, GetPixel(x, y, *srcPix), tempPix);
			break;
		case -90:
			for(int y= 0; y < height; y++)
				for (int x = 0; x < width; x++)
					SetPixel(y, width - x - 1, GetPixel(x, y, *srcPix), tempPix);
			break;
	}
	
	// now that we've rotated the pixmap we must copy the results back into the original GWorld
	SAVECOLORS;
	UnlockPixels(*srcPix);
	UpdateGWorld(srcGW, // first we must resize it
				(***srcPix).pixelSize,
				&rotatedBounds,
				(***srcPix).pmTable,
				NULL,
				0);
	*srcPix = GetGWorldPixMap(*srcGW);
	LockPixels(*srcPix);
	
	// then we can copy
	CopyPixMap(tempPix,*srcPix,&rotatedBounds,&rotatedBounds,srcCopy, NULL);
	RESTORECOLORS;
	
	// and restore the offset of the rectangle
	OffsetRect(&(***srcPix).bounds, savedOffset.h, savedOffset.v);
	
	// we're done with these
	UnlockPixels(tempPix);
	DisposeGWorld(tempGW);
}

// __________________________________________________________________________________________
// Name			: DrawGradient
// Input		: x1, y1 : coordinates of the starting point
//				  startColor : first color
//				  x2, y2 : coordinates of the ending point
//				  endColor : lastColor
//				  targetPix, targetRect: where we'll be drawing
//				  clipRgn : region to which we must limit the drawing
// Output		: None
// Description	: Draws a linear gradient between the starting and ending points with the
//				  specified colors

void DrawGradient32(int x1, int y1, RGBColor startColor,
				    int x2, int y2, RGBColor endColor,
				    PixMapHandle targetPix, Rect targetRect, RgnHandle clipRgn)
{
	gradientParams params;
	
	params.startColor = startColor;
	params.endColor = endColor;
	params.x1 = x1;
	params.y1 = y1;
	params.x2 = x2;
	params.y2 = y2;
	params.d = Distance(x1, y1, x2, y2);
	params.dSquared = DistanceSquared(x1, y1, x2, y2);
	
	for (int y = targetRect.top; y < targetRect.bottom; y++)
		for	(int x = targetRect.left; x < targetRect.right; x++)
		{
			Point temp = {y, x};
			if (clipRgn == NULL || PtInRgn(temp, clipRgn))
				SetPixel32(x, y, RGBToLong(GetGradientColor(x, y, &params)), targetPix);
		}
}

RGBColor GetGradientColor(int x, int y, gradientParams* params)
{
	RGBColor	returnColor;
	float		blendRatio, d1, d2, l1, l2;
	
	d1 = DistanceSquared(x, y, params->x1, params->y1);
	d2 = DistanceSquared(x, y, params->x2, params->y2);
	
	l1 = (d2 - d1 - params->dSquared)/(- 2 * params->d);
	l2 = (d1 - d2 - params->dSquared)/(- 2 * params->d);
	
	if (l1 > params->d)
		blendRatio = 0;
	else if (l2 > params->d)
		blendRatio = 1.0;
	else
		blendRatio = l2/params->d;
	
	returnColor.red = params->startColor.red * blendRatio + params->endColor.red * (1 - blendRatio);
	returnColor.green = params->startColor.green * blendRatio + params->endColor.green * (1 - blendRatio);
	returnColor.blue = params->startColor.blue * blendRatio + params->endColor.blue * (1 - blendRatio);
	
	return returnColor;
}

void DrawRadialGradient32(int x1, int y1, RGBColor startColor,
				         int x2, int y2, RGBColor endColor,
				         PixMapHandle targetPix, Rect targetRect, RgnHandle clipRgn)
{
	gradientParams params;
	
	params.startColor = startColor;
	params.endColor = endColor;
	params.x1 = x1;
	params.y1 = y1;
	params.x2 = x2;
	params.y2 = y2;
	params.d = Distance(x1, y1, x2, y2);
	params.dSquared = DistanceSquared(x1, y1, x2, y2);
	
	for (int y = targetRect.top; y < targetRect.bottom; y++)
		for	(int x = targetRect.left; x < targetRect.right; x++)
		{
			Point temp = {y, x};
			if (PtInRgn(temp, clipRgn) || clipRgn == NULL)
				SetPixel32(x, y, RGBToLong(GetRadialGradientColor(x, y, &params)), targetPix);
		}
}

RGBColor GetRadialGradientColor(int x, int y, gradientParams* params)
{
	RGBColor	returnColor;
	float		blendRatio, d;
	
	d = Distance(x, y, params->x1, params->y1);
	
	if (d > params->d)
		blendRatio = 1.0;
	else
		blendRatio = d/params->d;
	
	returnColor.red = params->startColor.red * (1 - blendRatio) + params->endColor.red * blendRatio;
	returnColor.green = params->startColor.green * (1- blendRatio) + params->endColor.green * blendRatio;
	returnColor.blue = params->startColor.blue * (1 - blendRatio) + params->endColor.blue * blendRatio;
	
	return returnColor;
}

// __________________________________________________________________________________________
// Name			: ColorPicker
// Input		: pickerPic: the picture to be used as the palette
//				  swatchRgn: the region in which we must draw the color sample
// Output		: color: the color chosen
// Description	: This function displays a color picker and allows the user to choose among
//				  the displayed colors.

/*void PixMapColorPicker(RGBColor* color,
				 	   WindowPtr window,
				 	   Point where,
				 	   PixMapHandle pickerPix,
				 	   GWorldPtr pickerGW,
				 	   RgnHandle pickerRgn,
				 	   CTabHandle drawingTable,
				 	   colorUpdateFn UpdateColors,
				 	   void* clientData)
{
	Rect			menuRect, pickerRect, pickerTargetRect, saveRect;
	GWorldPtr		savedGW;
	PixMapHandle	savedPix;
	OSErr			err;
	RgnHandle		savedVis, pickerTargetRgn, unclippedRgn, clippedRgn, hiliteRgn;
	const BitMap*	currentPortBits = GetPortBitMapForCopyBits(GetQDGlobalsThePort());
	Point			theMouse;
	RGBColor		savedColor, nearestColor, newColor, tempColor, previousColor;
	
	SAVEGWORLD;
	SAVECOLORS;
	
	savedColor = *color;
	
	nearestColor = GetNearestColor(*color, drawingTable);
	newColor = nearestColor;
	
	hiliteRgn = NewRgn();
	
	savedVis = NewRgn();
	GetPortVisibleRegion(GetWindowPort(window), savedVis);
	
	unclippedRgn = NewRgn();
	clippedRgn = NewRgn();
	SetRectRgn(unclippedRgn,
			   -32767,
			   -32767,
			   32767,
			   32767);
	SetPortVisibleRegion(GetWindowPort(window), unclippedRgn);
	
	pickerRect = (**pickerPix).bounds;
	pickerTargetRect = pickerRect;
	OffsetRect(&pickerTargetRect, where.h, where.v);
	
	pickerTargetRgn = NewRgn();
	CopyRgn(pickerRgn, pickerTargetRgn);
	OffsetRgn(pickerTargetRgn, where.h, where.v);
	
	menuRect = pickerRect;
	OffsetRect(&menuRect, where.h, where.v);
	InsetRect(&menuRect, -2, -2);
	saveRect = menuRect,
	//GetThemeMenuItemExtra(kThemeMenuTypePopUp, &paddingV, &paddingH);
	saveRect.top--;
	saveRect.left--;
	saveRect.bottom += 2;
	saveRect.right += 2;
	
	clippedRgn = NewRgn();
	RectRgn(clippedRgn, &saveRect);
	DiffRgn(unclippedRgn, clippedRgn, clippedRgn);
	
	err = NewGWorld(&savedGW, 32, &saveRect, NULL, NULL, 0);
	savedPix = GetGWorldPixMap(savedGW);
	LockPixels(savedPix);
	
	SetGWorld(savedGW, NULL);
	ForeColor(blackColor);
	BackColor(whiteColor);
	
	CopyBits(currentPortBits,
			 (BitMap*)*savedPix,
			 &saveRect,
			 &saveRect,
			 srcCopy,
			 NULL);
			 
	RESTOREGWORLD;
	RESTORECOLORS;
	
	ThemeSoundPlay(kThemeSoundMenuOpen);
	
	DrawThemeMenuBackground(&menuRect, kThemeMenuTypePopUp);
	
	CopyBits((BitMap*)*pickerPix,
			 currentPortBits,
			 &pickerRect,
			 &pickerTargetRect,
			 srcCopy,
			 pickerTargetRgn);
	
	GetSimilarColors(&nearestColor, 1,  pickerPix, pickerRgn, hiliteRgn);
	OffsetRgn(hiliteRgn, where.h, where.v);
	ForeColor(whiteColor);
	InsetRgn(hiliteRgn, -1, -1);
	FrameRgn(hiliteRgn);
	
	RESTORECOLORS;
	
	while (Button())
	{
		previousColor = newColor;
		
		GetMouse(&theMouse);
		
		if (PtInRgn(theMouse, pickerTargetRgn))
		{
			SetGWorld(pickerGW, NULL);
			GetCPixel(theMouse.h - where.h, theMouse.v - where.v, &tempColor);
			if (tempColor.red != 257 || tempColor.green != 0 || tempColor.blue != 0)
				newColor = tempColor;
			RESTOREGWORLD;
		}
		else
			newColor = nearestColor;
		
		if (!AreEqualRGB(previousColor, newColor))
		{
			*color = newColor;
			
			SetPortVisibleRegion(GetWindowPort(window), clippedRgn);
			UpdateColors(color, clientData);
			SetPortVisibleRegion(GetWindowPort(window), unclippedRgn);
			
			ForeColor(blackColor);
			BackColor(whiteColor);
			
			CopyBits((BitMap*)*pickerPix,
					 currentPortBits,
					 &pickerRect,
					 &pickerTargetRect,
					 srcCopy,
					 pickerTargetRgn);
			
			GetSimilarColors(&newColor, 1, pickerPix, pickerRgn, hiliteRgn);
			OffsetRgn(hiliteRgn, where.h, where.v);
			ForeColor(whiteColor);
			InsetRgn(hiliteRgn, -1, -1);
			
			ThemeSoundPlay(kThemeSoundMenuItemHilite);
			
			FrameRgn(hiliteRgn);
			RESTORECOLORS;
		}
		
		
	}
	
	SetGWorld(savedGW, NULL);
	ForeColor(blackColor);
	BackColor(whiteColor);
	
	ThemeSoundPlay(kThemeSoundMenuClose);
	
	CopyBits((BitMap*)*savedPix,
			 currentPortBits,
			 &saveRect,
			 &saveRect,
			 srcCopy,
			 NULL);
			 
	
	RESTOREGWORLD;
	RESTORECOLORS;
		 
	UnlockPixels(savedPix);
	DisposeGWorld(savedGW);

	SetPortVisibleRegion(GetWindowPort(window), savedVis);
	DisposeRgn(savedVis);
	
	DisposeRgn(unclippedRgn);
	DisposeRgn(clippedRgn);
	DisposeRgn(pickerTargetRgn);
	
	if (!AreEqualRGB(newColor, nearestColor))
		*color = newColor;
	else
		*color = savedColor;
}*/

void GetSimilarColors(RGBColor* colorList, int noOfColors, PixMapHandle pix, RgnHandle clipRgn, RgnHandle region)
{
	GWorldPtr		tempGW, picGW;
	PixMapHandle	tempPix, picPix;
	register long	rowLongs;
	long*			pos;
	Rect			searchRect;
	long			*colorLongList;
	
	SAVEGWORLD;
	SAVECOLORS;
	
	if ((**pix).pixelSize != 32)
	{
		NewGWorldUnpadded(&picGW, 32, &(**pix).bounds, NULL);
		picPix = GetGWorldPixMap(picGW);
		LockPixels(picPix);
		SetGWorld(picGW, NULL);
		ForeColor(blackColor);
		BackColor(whiteColor);
		CopyPixMap(pix, picPix, &(**pix).bounds, &(**pix).bounds, srcCopy, NULL);
	}
	else
		picPix = pix;
	

	
	colorLongList = new long[noOfColors];
	for (int i = 0; i < noOfColors; i++)
		colorLongList[i] = RGBToLong(colorList[i]);
		
	if (clipRgn == NULL)
		searchRect = (**pix).bounds;
	else
		GetRegionBounds(clipRgn, &searchRect);
	
	NewGWorld(&tempGW, 1, &searchRect, NULL, NULL, 0);
	tempPix = GetGWorldPixMap(tempGW);
	LockPixels(tempPix);
	SetGWorld(tempGW, NULL);
	EraseRect(&searchRect);
	
	rowLongs = ((**picPix).rowBytes & 0x3FFF)/4;
	pos = ((long*)(**picPix).baseAddr) + rowLongs * searchRect.top;
	
	for (int y = 0; y < (searchRect.bottom - searchRect.top); y++, pos += rowLongs)
		for (int x = searchRect.left; x < searchRect.right; x++)
			for (int i = 0; i < noOfColors; i++)
				if ((pos[x] & 0x00FFFFFF) == (colorLongList[i] & 0x00FFFFFF))
					SetPixel1(x, y + searchRect.top, 1, tempPix);
	
	BitMapToRegion(region, (BitMap*)*tempPix);
	if (clipRgn != NULL)
	{
		//OffsetRgn(region, (**clipRgn).rgnBBox.left, (**clipRgn).rgnBBox.top);
		SectRgn(region, clipRgn, region);
	}
		
	
	RESTOREGWORLD;
	RESTORECOLORS;
	
	delete [] colorLongList;
				
	UnlockPixels(tempPix);
	DisposeGWorld(tempGW);
	
	if ((**pix).pixelSize != 32)
	{
		UnlockPixels(picPix);
		DisposeGWorld(picGW);
	}
}

void ConstrainLine45(int x1, int y1, int* x2, int* y2)
{
	double slope, tan225, tan675;
	
	if (*x2 == x1)
		return;
		
	slope = (double)(*y2 - y1)/(double)(*x2 - x1);
	
	tan225 = tan(22.5 * pi/180);
	tan675 = 1/tan225;
		
	if (slope >= 0)
	{
		if (slope < tan225)
			*y2 = y1;
		else if (slope < tan675)
			*y2 = y1 + (*x2 - x1);
		else *x2 = x1;
	}
	else
	{
		if (slope >= -tan225)
			*y2 = y1;
		else if (slope >= -tan675)
			*y2 = y1 - (*x2 - x1);
		else *x2 = x1;
	}
}

void ConstrainLine90(int x1, int y1, int* x2, int* y2)
{
	double slope;
	
	if (*x2 == x1)
		return;
		
	slope = (double)(*y2 - y1)/(double)(*x2 - x1);
		
	if (abs(slope) > 1)
		*x2 = x1;
	else *y2 = y1;
}

extern void PictureToARGB(PicHandle pic,
						  PixMapHandle picPix,
						  PixMapHandle maskPix,
						  bool scale)
{
	GWorldPtr gw1, gw2;
	PixMapHandle pix1, pix2;
	unsigned long *picCursor, *pix1Cursor, *pix2Cursor, picRowBytes, pixRowBytes, maskRowBytes;
	unsigned char *maskCursor;
	Rect	picRect;
	int		width, height;
	unsigned char	r, g, b, r1, g1, b1, r2, g2, b2, a;
	
	SAVEGWORLD;
	SAVECOLORS;
	
	if (scale) // if we scale then the picture should be as big as the target
		picRect = (**picPix).bounds;
	else // otherwise the size is left alone
		picRect = (**pic).picFrame;
		
	NewGWorld(&gw1, 32, &picRect, NULL, NULL, 0);
	pix1 = GetGWorldPixMap(gw1);
	LockPixels(pix1);
	SetGWorld(gw1, NULL);
	EraseRect(&picRect);
	DrawPicture(pic, &picRect);
	
	NewGWorld(&gw2, 32, &picRect, NULL, NULL, 0);
	pix2 = GetGWorldPixMap(gw2);
	LockPixels(pix2);
	SetGWorld(gw2, NULL);
	PaintRect(&picRect);
	DrawPicture(pic, &picRect);
	
	picCursor = (unsigned long*)(**picPix).baseAddr;
	pix1Cursor = (unsigned long*)(**pix1).baseAddr;
	pix2Cursor = (unsigned long*)(**pix2).baseAddr;
	maskCursor = (unsigned char*)(**maskPix).baseAddr;
	picRowBytes = (**picPix).rowBytes & 0x3FFF;//GetPixRowBytes(picPix);
	pixRowBytes = (**pix1).rowBytes & 0x3FFF;//GetPixRowBytes(pix1);
	maskRowBytes = (**maskPix).rowBytes & 0x3FFF;//GetPixRowBytes(maskPix);
	height = picRect.bottom - picRect.top;
	width = picRect.right - picRect.left;
	
	for (int i=0; i < height; i++,
							  picCursor += (picRowBytes - width * 4)/4,
							  pix1Cursor += (pixRowBytes - width * 4)/4,
							  pix2Cursor += (pixRowBytes - width * 4)/4,
							  maskCursor += maskRowBytes - width)
		for (int j=0; j < width; j++, picCursor++, pix1Cursor++, pix2Cursor++, maskCursor++)
		{
			r1 = GetLongRed(*pix1Cursor);
			g1 = GetLongGreen(*pix1Cursor);
			b1 = GetLongBlue(*pix1Cursor);
			
			r2 = GetLongRed(*pix2Cursor);
			g2 = GetLongGreen(*pix2Cursor);
			b2 = GetLongBlue(*pix2Cursor);
			
			a = r2 - r1 + 255;
			r = (255 * r2)/(r2 - r1 + 255);
			g = (255 * g2)/(g2 - g1 + 255);
			b = (255 * b2)/(b2 - b1 + 255);
			
			*maskCursor = a;
			if (a == 0)
				*picCursor = 0xFFFFFF;
			else
				*picCursor = (r << 16) + (g << 8) + (b << 0);
		}
		
	UnlockPixels(pix1);
	DisposeGWorld(gw1);
	UnlockPixels(pix2);
	DisposeGWorld(gw2);
	
	RESTOREGWORLD;
	RESTORECOLORS;
}

void MergePix(PixMapHandle basePicPix,
			  PixMapHandle baseMaskPix,
			  PixMapHandle overlayPicPix,
			  PixMapHandle overlayMaskPix,
			  PixMapHandle targetPicPix,
			  PixMapHandle targetMaskPix)
{
	GWorldPtr 		maskGW, tempGW;
	PixMapHandle	maskPix, tempPix;
	Rect			baseBounds, overlayBounds;
	
	SAVECOLORS;
	SAVEGWORLD;
	
	baseBounds = (**basePicPix).bounds;
	overlayBounds = (**overlayPicPix).bounds;
	
	NewGWorld(&maskGW, 1, &baseBounds, NULL, NULL, 0);
	maskPix = GetGWorldPixMap(maskGW);
	LockPixels(maskPix);
	
	NewGWorld(&tempGW, 32, &baseBounds, NULL, NULL, 0);
	tempPix = GetGWorldPixMap(tempGW);
	LockPixels(tempPix);
	SetGWorld(tempGW, NULL);
	EraseRect(&baseBounds);
	
	Make1BitMask(baseMaskPix, maskPix, (**baseMaskPix).bounds);
	
	//CopyPixMap(maskPix, targetPicPix, &overlayBounds, &overlayBounds, srcCopy, NULL);
	//CopyPixMap(overlayMaskPix, targetMaskPix, &overlayBounds, &overlayBounds, srcCopy, NULL);
	
	CopyPixMap(basePicPix, targetPicPix, &baseBounds, &baseBounds, srcCopy, NULL);
	
	CopyDeepMask((BitMap*)*overlayMaskPix,
				 (BitMap*)*maskPix,
				 (BitMap*)*tempPix,
				 &overlayBounds,
				 &overlayBounds,
				 &overlayBounds,
				 srcCopy,
				 NULL);
				 
	CopyDeepMask((BitMap*)*(overlayPicPix),
				 (BitMap*)*tempPix,
				 (BitMap*)*(targetPicPix),
				 &overlayBounds,
				 &overlayBounds,
			 	 &overlayBounds,
				 srcCopy,
				 NULL);
				 
	SetGWorld(maskGW, NULL);
	InvertRect(&baseBounds);
	
	CopyMask((BitMap *) *(overlayPicPix),
			 (BitMap *) *(maskPix),
			 (BitMap *) *(targetPicPix),
			 &overlayBounds,
			 &overlayBounds,
			 &overlayBounds
			);
			
	InvertRect(&baseBounds);
	
	UnlockPixels(tempPix);
	DisposeGWorld(tempGW);
	
	UnlockPixels(maskPix);
	DisposeGWorld(maskGW);
	
	NewGWorld(&tempGW, 32, &baseBounds, NULL, NULL, 0);
	tempPix = GetGWorldPixMap(tempGW);
	LockPixels(tempPix);
	SetGWorld(tempGW, NULL);
	
	PaintRect(&baseBounds);
	
	NewGWorld(&maskGW, 32, &baseBounds, NULL, NULL, 0);
	maskPix = GetGWorldPixMap(maskGW);
	LockPixels(maskPix);
	
	CopyPixMap(baseMaskPix, maskPix, &baseBounds, &baseBounds, srcCopy, NULL);
	
	CopyDeepMask((BitMap *) *tempPix,
			 	 (BitMap *) *overlayMaskPix,
			 	 (BitMap *) *maskPix,
				 &overlayBounds,
				 &overlayBounds,
				 &overlayBounds,
				 srcCopy,
				 NULL);
	
	
	CopyPixMap(maskPix, targetMaskPix, &overlayBounds, &overlayBounds, srcCopy, NULL);
				 		 
	UnlockPixels(tempPix);
	DisposeGWorld(tempGW);
	
	UnlockPixels(maskPix);
	DisposeGWorld(maskGW);
	
	RESTOREGWORLD;
	RESTORECOLORS;
}

OSErr NewGWorldUnpadded(GWorldPtr* gWorld, short depth, const Rect* bounds, CTabHandle colorTable)
{
	PixMapHandle	tempPix;
	long 			realRowBytes, currentRowBytes;
	Rect			tempBounds;
	OSErr			err;
	RgnHandle		newVisibleRegion;
	
	tempBounds = *bounds;
	
	realRowBytes = (((bounds->right - bounds->left) * depth + 31) & -31) >> 3;
	
	if ((realRowBytes > 32) && (realRowBytes % 16 == 0))
		tempBounds.right -= 16 * 8 / depth;
	else if (realRowBytes == 32)
		tempBounds.right -= (tempBounds.right - tempBounds.left)/2;
	else if (realRowBytes == 16)
		tempBounds.right -= (tempBounds.right - tempBounds.left)/2;
	
	err = NewGWorld(gWorld, depth, &tempBounds,  colorTable, NULL, 0);
	
	if (err != noErr) return err;
	
	tempPix = GetGWorldPixMap(*gWorld);
	LockPixels(tempPix);
	currentRowBytes = (**tempPix).rowBytes & 0x3FFF;
	
	SetPortBounds(*gWorld, bounds);
	(**tempPix).bounds = *bounds;
	
	newVisibleRegion = NewRgn();
	RectRgn(newVisibleRegion, bounds);
	SetPortVisibleRegion(*gWorld, newVisibleRegion);
	DisposeRgn(newVisibleRegion);
	
	CropPixMap(tempPix, realRowBytes);
	
	UnlockPixels(tempPix);
	
	return noErr;
}

bool IsEmptyPixMap(PixMapHandle srcPix)
{
	Rect bounds;
	int rowBytes, rowWidth;
	unsigned char *cursor, *baseAddr;
	
	bounds = (**srcPix).bounds;
	baseAddr = (unsigned char*)(**srcPix).baseAddr;
	rowBytes = (**srcPix).rowBytes & 0x3FFF;
	rowWidth = (bounds.right - bounds.left) * (**srcPix).pixelSize/8;
	
	
	switch ((**srcPix).pixelSize)
	{
		case 32:
			for (int i=0; i < bounds.bottom - bounds.top; i++)
			{
				cursor = i * rowBytes + baseAddr;
				for (int j=0; j < rowWidth; j+=4)
					if (cursor[j + 1] != 0xFF ||
					    cursor[j + 2] != 0xFF ||
					    cursor[j + 3] != 0xFF)
						return false;
			}
		break;
		default:
			int white;
			
			white = GetColorIndex(kWhiteAsRGB, (**srcPix).pmTable);
			if ((**srcPix).pixelSize == 4)
				white = white << 4 + white;
			else if ((**srcPix).pixelSize == 1)
				if (white == 1)
					white = 0xFF;
				else
					white = 0;
				
			for (int i=0; i < bounds.bottom - bounds.top; i++)
			{
				cursor = i * rowBytes + baseAddr;
				for (int j=0; j < rowWidth; j++)
					if (cursor[j] != white)
						return false;
			}
			break;
		break;
	}
	
	return true;
}

bool SamePixMap(PixMapHandle pix1, PixMapHandle pix2)
{
	Rect bounds;
	int rowBytes1, rowBytes2, rowWidth;
	unsigned char *cursor1, *cursor2, *baseAddr1, *baseAddr2;
	
	// need to add obvious checks (bounds, pixel size, etc.)
	
	bounds = (**pix1).bounds;
	baseAddr1 = (unsigned char*)(**pix1).baseAddr;
	baseAddr2 = (unsigned char*)(**pix2).baseAddr;
	rowBytes1 = (**pix1).rowBytes & 0x3FFF;
	rowBytes2 = (**pix2).rowBytes & 0x3FFF;
	rowWidth = (bounds.right - bounds.left) * (**pix1).pixelSize/8;
	
	
	switch ((**pix1).pixelSize)
	{
		case 32:
			for (int i=0; i < bounds.bottom - bounds.top; i++)
			{
				cursor1 = i * rowBytes1 + baseAddr1;
				cursor2 = i * rowBytes2 + baseAddr2;
				for (int j=0; j < rowWidth; j+=4)
					if (cursor1[j + 1] != cursor2[j + 1] ||
					    cursor1[j + 2] != cursor2[j + 2] ||
					    cursor1[j + 3] != cursor2[j + 3])
						return false;
			}
		break;
		default:
			for (int i=0; i < bounds.bottom - bounds.top; i++)
			{
				cursor1 = i * rowBytes1 + baseAddr1;
				cursor2 = i * rowBytes2 + baseAddr2;
				for (int j=0; j < rowWidth; j++)
					if (cursor1[j] != cursor2[j])
						return false;
			}
			break;
		break;
	}
	
	return true;
}

void DrawPictureDithered(PicHandle srcPic, Rect* targetRect)
{
	GWorldPtr		tempGW;
	PixMapHandle	tempPix;
	RgnHandle		tempRgn;
	
	SAVEGWORLD;
	SAVECOLORS;
	
	NewGWorldUnpadded(&tempGW, 32, targetRect, NULL);
	tempPix = GetGWorldPixMap(tempGW);
	LockPixels(tempPix);
	
	SetGWorld(tempGW, NULL);
	EraseRect(targetRect);
	tempRgn = NewRgn();
	
	PictureToRegion(srcPic, *targetRect, tempRgn);
	
	DrawPicture(srcPic, targetRect);
	
	RESTOREGWORLD;
	
	CopyBits((BitMap*)*tempPix,
			 GetPortBitMapForCopyBits(GetQDGlobalsThePort()),
			 targetRect,
			 targetRect,
			 srcCopy + ditherCopy,
			 tempRgn);
			 

	RESTORECOLORS;
	
	UnlockPixels(tempPix);
	DisposeGWorld(tempGW);
	
	DisposeRgn(tempRgn);	
}

#pragma mark -

void Mask8ToMask1(PixMapHandle mask8Pix, PixMapHandle mask1Pix)
{
	long		white;
	Rect		bounds;
	
	bounds = (**mask8Pix).bounds;
	
	white = GetColorIndex(kWhiteAsRGB, (**mask8Pix).pmTable);
	
	for (int y = bounds.top; y < bounds.bottom; y++)
		for (int x = bounds.left; x < bounds.right; x++)
			if (GetPixel8(x, y, mask8Pix) != white)
				SetPixel1(x, y, 1, mask1Pix);
			else
				SetPixel1(x, y, 0, mask1Pix);
}

void MergePixMap32AndMask(PixMapHandle imagePix, PixMapHandle maskPix, Rect bounds)
{
	unsigned char *imageData, *maskData;
				
	if ((**maskPix).pixelSize == 8)				
		for (int y=0; y < bounds.bottom - bounds.top; y++)
		{
			imageData = (unsigned char*)(**imagePix).baseAddr + y * ((**imagePix).rowBytes & 0x3FFF);
			maskData = (unsigned char*)(**maskPix).baseAddr + y * ((**maskPix).rowBytes & 0x3FFF);
			
			for (int x=0; x < bounds.right - bounds.left; x++)
				imageData[4 * x] = maskData[x];
		}
	else
		for (int y=0; y < bounds.bottom - bounds.top; y++)
		{
			imageData = (unsigned char*)(**imagePix).baseAddr + y * ((**imagePix).rowBytes & 0x3FFF);
			
			for (int x=0; x < bounds.right - bounds.left; x++)
				imageData[4 * x] = GetPixel1(x, y, maskPix) * 0xFF;
		}
}

#pragma mark -

PicHandle ARGBPixMapToPicture(PixMapHandle imagePix, PixMapHandle maskPix)
{
	long                            maxCompressedSize = 0;
	Handle                          compressedDataH = nil;
	Ptr                             compressedDataP;
	ImageDescriptionHandle          imageDescH = nil;
	OSErr                           theErr;
	PicHandle                       myPic = nil;
	Rect                            bounds = (**imagePix).bounds;
	CodecType                       theCodecType = kAnimationCodecType;
	CodecComponent                  theCodec = (CodecComponent)anyCodec;
	CodecQ                          spatialQuality = codecNormalQuality;
	short                           depth = 0;/* let ICM choose depth */
	        

	theErr = GetMaxCompressionSize(imagePix, &bounds, depth,
	                                spatialQuality, theCodecType, 
	                                (CompressorComponent)theCodec,
	                                &maxCompressedSize);
	if (theErr) return nil;

	imageDescH = (ImageDescriptionHandle)NewHandle(4);
	compressedDataH = NewHandle(maxCompressedSize);
	if ( compressedDataH != nil && imageDescH != nil ) 
	{ 
		MoveHHi(compressedDataH);
		HLock(compressedDataH);
		compressedDataP = *compressedDataH;

		theErr = CompressImage(imagePix,
							   &bounds,
							   spatialQuality,
							   theCodecType,
							   imageDescH,
							   compressedDataP);

		if (theErr == noErr) 
		{
			OpenCPicParams	picParams;
			
			picParams.srcRect = bounds;
			picParams.hRes =  0x00480000;
			picParams.vRes =  0x00480000;
			picParams.version = -2;
			picParams.reserved1 = 0;
			picParams.reserved2 = 0;

		    ClipRect(&bounds);
		    myPic = OpenCPicture(&picParams);
		  
			FDecompressImage(compressedDataP,
							 imageDescH,
							 imagePix,
							 &bounds,
							 NULL, // matrix
							 srcCopy,
							 NULL,
							 maskPix,
							 &bounds,
							 codecLosslessQuality,
							 anyCodec,
							 0, // buffer size
							 NULL, // data loading proc
							 NULL); // progress proc	
			ClosePicture();
		}
		if ( theErr 
		        || GetHandleSize((Handle)myPic) == sizeof(Picture) ) 
		{
		    KillPicture(myPic);
		    myPic = nil;
		}
	}
	if (imageDescH) DisposeHandle( (Handle)imageDescH);
	if (compressedDataH) DisposeHandle( compressedDataH);

	return myPic;
}

void ExportPictureToPICTFile(PicHandle exportPic, FSSpec exportFile, long creator)
{
	short	pictFile;
	long	zeroData, dataLength;
	
	FSpDelete(&exportFile);
	FSpCreate(&exportFile, creator, 'PICT', 0);
	FSpOpenDF(&exportFile, fsRdWrPerm, &pictFile);
	
	zeroData = 0;
	dataLength = sizeof(zeroData);
	
	for (int i=0; i < 512 / dataLength; i++)
		FSWrite(pictFile, &dataLength, &zeroData);
		
	dataLength = GetHandleSize(Handle(exportPic));
	
	HLock(Handle(exportPic));
	FSWrite(pictFile, &dataLength, Ptr(*exportPic));
	HUnlock(Handle(exportPic));
	
	FSClose(pictFile);
}

pascal OSErr QTDataUnloadProc(Ptr imageData, long bytesNeeded, long refCon)
{
	OSErr		err = noErr;
	
	if (imageData == NULL)
		// if data is NULL, set a new position in the file from the current mark, offset by bytesNeeded
		err = SetFPos(refCon, fsFromMark, bytesNeeded);
	else
		// otherwise, write the specified data to disk
		err = FSWrite(refCon, &bytesNeeded, imageData);
	
	return err;
}

void ImportQTFileToGWorld(FSSpec file, GWorldPtr gWorld)
{
	GraphicsImportComponent		importer = NULL;
	
	GetGraphicsImporterForFile(&file, &importer);
	
	GraphicsImportSetGWorld(importer, gWorld, NULL);
	
	GraphicsImportDraw(importer);
	
	CloseComponent(importer);
}

void ExportPixMap32ToQTFile(PixMapHandle imagePix, Rect bounds,
							FSSpec exportFile, long creator, long fileType,
							CodecType codec, QTHeaderFunction headerFunction)
{
	ImageDescriptionHandle	 	imageDescription;
	Handle						imageData;
	ICMFlushProcRecord			flushProc;
	short						file;
	int							size;
	
	size = codecMinimumDataSize;
	
	imageDescription = (ImageDescriptionHandle)NewHandle(sizeof(ImageDescription));
	
	imageData = NewHandle(size);
	
	HLock(imageData);
	
	FSpDelete(&exportFile);												 	
	FSpCreate(&exportFile, creator, fileType, 0);		
	FSpOpenDF(&exportFile, fsRdWrPerm, &file);
	
	SetFPos(file, fsFromStart, 0);
				
	
	flushProc.flushProc = NewICMFlushUPP(QTDataUnloadProc);
	flushProc.flushRefCon = file;
	
	if (headerFunction != NULL)
		headerFunction(file, imagePix, bounds);

	FCompressImage(imagePix,
				   &bounds,
				   32,
				   codecNormalQuality,
				   codec,
				   anyCodec,
				   NULL,
				   codecFlagWasCompressed,
				   codecMinimumDataSize,
				   &flushProc,
				   NULL,
				   imageDescription,
				   *imageData);

	//FSWrite(file, &(**imageDescription).dataSize, *imageData);

	//SetFPos(file, fsFromStart, (**imageDescription).dataSize);

	//SetEOF(file, (**imageDescription).dataSize);
							 
	FSClose(file);
				
	HUnlock(imageData);
	DisposeHandle(imageData);
				
	DisposeICMFlushUPP(flushProc.flushProc);
}

/*void ExportPixMap32ToPhotoshopFile(PixMapHandle imagePix, Rect bounds, PixMapHandle maskPix, FSSpec exportFile, long creator)
{
	short 	file;
	long	dataLength, longData;
	short	shortData;
	
	FSpDelete(&exportFile);												 	
	FSpCreate(&exportFile, creator, kQTFileTypePhotoShop, 0);		
	FSpOpenDF(&exportFile, fsRdWrPerm, &file);
	
	
	FSWrite4(file, '8BPS'); // signature
	
	FSWrite2(file, 1); // version
	
	FSWrite2(file, 0); // reserved
	FSWrite2(file, 0); // reserved
	FSWrite2(file, 0); // reserved
	
	FSWrite2(file, 3); // number of channels
	
	FSWrite4(file, bounds.bottom - bounds.top); // dimensions
	FSWrite4(file, bounds.right - bounds.left);
	
	FSWrite2(file, 8); // bits per channel
	
	FSWrite2(file, 3); // mode, 3 = RGB
	
	FSWrite4(file, 0); // length of color data, we're in direct color, so not needed
	
	// image resource section
	FSWrite4(file, 42); // length of entire section
	
	FSWrite4(file, '8BIM'); // signature
	FSWrite2(file, 1005); // resolution info
	FSWrite2(file, 0); // name, we don't have one...
	FSWrite4(file, 16); // size, in this case 16 bytes
	FSWrite4(file, 0x004800); // horizontal res, fixed == 72 dpi
	FSWrite2(file, 1); // resolution unit, 1 = pixels/inch
	FSWrite2(file, 1); // width unit, 1 = inches
	FSWrite4(file, 0x004800); // vertical res, fixed == 72 dpi
	FSWrite2(file, 1); // resolution unit, 1 = pixels/inch
	FSWrite2(file, 1); // height unit, 1 = inches
	
	FSWrite4(file, '8BIM'); // signature
	FSWrite2(file, 1024); // currently selected layer
	FSWrite2(file, 0); // name, we don't have one...
	FSWrite4(file, 2); // size, in this case 2 bytes
	FSWrite2(file, 1); // index of the current layer, in this case 1
	
	
	// layer and mask info section
	FSWrite4(file, ****); // length of entire section
	
	// layer section
	FSWrite4(file, ****); // length of layer section
	FSWrite2(file, 2); // number of layers, in this case 2
	
	// layer 0
	FSWrite4(file, 0); // layer top
	FSWrite4(file, 0); // layer left
	FSWrite4(file, bounds.bottom - bounds.top); // layer bottom
	FSWrite4(file, bounds.right - bounds.left); // layer right
	FSWrite2(file, 3); // number of channels
	FSWrite2(file, 0); // channel 0
	FSWrite4(file, 0x82); // length of channel info
	FSWrite2(file, 1); // channel 1
	FSWrite4(file, 0x82); // length of channel info
	FSWrite2(file, 2); // channel 2
	FSWrite4(file, 0x82); // length of channel info
	
	// blending stuff
	FSWrite4(file, '8BIM'); // signature
	FSWrite4(file, 'norm'); // normal blending
	FSWrite1(file, 0xFF); // opacity, 0xFF = fully opaque
	FSWrite1(file, 0); // clipping, 0 = base
	FSWrite1(file, 0x09); // flags
	FSWrite1(file, 0); // filler
	FSWrite4(file, ****); // length of extra stuff
	FSWrite4(file, 0); // no layer mask
	
	FSWrite4(file, 0x28); // length of layer blending ranges
	FSWrite4(file, 0x0000FFFF); // blending black and white
	FSWrite4(file, 0x0000FFFF); // composite gray blend destination
	FSWrite4(file, 0x0000FFFF); // first channel source
	FSWrite4(file, 0x0000FFFF); // first channel destination
	FSWrite4(file, 0x0000FFFF); // second channel source
	FSWrite4(file, 0x0000FFFF); // second channel destination
	FSWrite4(file, 0x0000FFFF); // third channel source
	FSWrite4(file, 0x0000FFFF); // third channel destination
	FSWrite4(file, 0x0000FFFF); // third channel destination
	FSWrite4(file, 0x0000FFFF); // third channel destination
	FSWrite4(file, 0); // layer name, padded to 4 bytes
	
	// layer 1
	
	
	FSClose(file);
}*/


#pragma mark -

int GetAverageLuminance(PixMapHandle pix)
{
	int numberOfPixels;
	unsigned char* pixelData;
	int	rowWidth;
	Rect bounds;
	double sum;
	
	bounds = (**pix).bounds;
	
	rowWidth = (**pix).rowBytes & 0x3FFF;
	
	pixelData = (unsigned char*)(**pix).baseAddr;
	
	sum = numberOfPixels = 0;
	
	for (int i=bounds.top; i < bounds.bottom; i++)
	{
		pixelData += rowWidth;
		for (int j=0; j < (bounds.right - bounds.left) * 4; j+=4)
		{
		
			sum += kRLuminance * (float)pixelData[j + 1] +
				   kGLuminance * (float)pixelData[j + 2] + 
				   kBLuminance * (float)pixelData[j + 3];
			numberOfPixels++;
		}
		
	}
	
	//DisplayValue(sum/num);
	
	return sum/numberOfPixels;
}

void ChangeContrast(PixMapHandle pix, int contrast)
{
	int avg, numberOfBytes;
	unsigned char* pixelData;
	float c;
	
	c = 1.0 + (float)contrast/100.0;
	
	avg = GetAverageLuminance(pix);
	
	pixelData = (unsigned char*)(**pix).baseAddr;
	
	numberOfBytes = ((**pix).bounds.bottom - (**pix).bounds.top) * ((**pix).rowBytes & 0x3FFF);
	
	for (int j=0; j < numberOfBytes; j+=4)
	{
		pixelData[j + 1] = constrain((1.0 - c) * avg + c * pixelData[j + 1], 0, 255);
		pixelData[j + 2] = constrain((1.0 - c) * avg + c * pixelData[j + 2], 0, 255);
		pixelData[j + 3] = constrain((1.0 - c) * avg + c * pixelData[j + 3], 0, 255);
	}
}

void ColorizePixMap(PixMapHandle pix, int hue, float saturation)
{
	unsigned char value;
	unsigned char* pixelData;
	int			numberOfBytes;
    float		s;
    
    pixelData = (unsigned char*)(**pix).baseAddr;
	
	numberOfBytes = ((**pix).bounds.bottom - (**pix).bounds.top) * ((**pix).rowBytes & 0x3FFF);
	
	for (int j=0; j < numberOfBytes; j+=4)
	{
		value = max(pixelData[j + 1], pixelData[j + 2], pixelData[j + 3]);
		
		if (saturation == 0)
		{
			pixelData[j + 1] = pixelData[j + 2] = pixelData[j + 3] = value;
		}
		else
		{
			s = saturation;
			
			if (value > 127)
				s -= s*2*(float(value)/255.0 - 0.5);
				
			HSV2RGBfc(hue, s, float(value)/255.0,
					 &pixelData[j + 1], &pixelData[j + 2], &pixelData[j + 3]);
		}
	}
}

#pragma mark -

void FrameOvalAA(Rect* targetRect, GWorldPtr canvasGW, PixMapHandle canvasPix)
{
	int			penX, penY;
	Rect		largeRect, maskRect, colorRect;
	RGBColor	penColor;
	
	GetPenSize(&penX, &penY);
	
	largeRect = *targetRect;
	
	largeRect.top *= 3;
	largeRect.bottom *= 3;
	largeRect.left *= 3;
	largeRect.right *= 3;
	
	OffsetRect(&largeRect, -largeRect.left, -largeRect.top);
	
	maskRect = *targetRect;
	OffsetRect(&maskRect, -maskRect.left, -maskRect.top);
	OffsetRect(&maskRect, largeRect.right, 0);
	
	colorRect = *targetRect;
	OffsetRect(&colorRect, -colorRect.left, -colorRect.top);
	OffsetRect(&colorRect, largeRect.right, maskRect.bottom);
	
	GetForeColor(&penColor);
	
	SAVEGWORLD;
	SAVECOLORS;
	
	SetGWorld(canvasGW, NULL);
	ForeColor(blackColor);
	BackColor(whiteColor);
	
	PenSize(3 * penX, 3 * penY);
	EraseRect(&largeRect);	
	FrameOval(&largeRect);
	
	PenSize(1, 1);

	
	CopyPixMap(canvasPix, canvasPix, &largeRect, &maskRect, srcCopy, NULL);
		
	RGBForeColor(&penColor);
	PaintRect(&colorRect);
	ForeColor(blackColor);
	
	RESTOREGWORLD;
	
	CopyDeepMask((BitMap*)*canvasPix,
				 (BitMap*)*canvasPix,
				 GetPortBitMapForCopyBits(GetQDGlobalsThePort()),
				 &colorRect,
				 &maskRect,
				 targetRect,
				 srcCopy,
				 NULL);
				 
	RESTORECOLORS;
}

void FillAndFrameOvalAA(Rect* targetRect, Pattern* pattern, GWorldPtr canvasGW, PixMapHandle canvasPix)
{
	int			penX, penY;
	Rect 		patternRect, largeRect, maskRect, mask2Rect, colorRect;
	RGBColor	backColor, penColor;
	
	GetPenSize(&penX, &penY);
	
	largeRect = *targetRect;
	
	largeRect.top *= 3;
	largeRect.bottom *= 3;
	largeRect.left *= 3;
	largeRect.right *= 3;
	
	OffsetRect(&largeRect, -largeRect.left, -largeRect.top);
	
	patternRect = *targetRect;
	OffsetRect(&patternRect, -patternRect.left, -patternRect.top);
	OffsetRect(&patternRect, 0, largeRect.bottom);
	
	mask2Rect = *targetRect;
	OffsetRect(&mask2Rect, -mask2Rect.left, -mask2Rect.top);
	OffsetRect(&mask2Rect, patternRect.right, largeRect.bottom);
	
	maskRect = *targetRect;
	OffsetRect(&maskRect, -maskRect.left, -maskRect.top);
	OffsetRect(&maskRect, largeRect.right, 0);
	
	colorRect = *targetRect;
	OffsetRect(&colorRect, -colorRect.left, -colorRect.top);
	OffsetRect(&colorRect, largeRect.right, maskRect.bottom);
	
	GetForeColor(&penColor);
	GetBackColor(&backColor);
	
	SAVEGWORLD;
	SAVECOLORS;
	
	SetGWorld(canvasGW, NULL);
	ForeColor(blackColor);
	BackColor(whiteColor);
	
	PenSize(3 * penX, 3 * penY);
	EraseRect(&largeRect);	
	PaintOval(&largeRect);

	
	
	CopyPixMap(canvasPix, canvasPix, &largeRect, &maskRect, srcCopy, NULL);
		
	RGBForeColor(&penColor);
	RGBBackColor(&backColor);
	
	Rect tempRect;
	tempRect = *targetRect;
	FillRect(&tempRect, pattern);
	
	ForeColor(blackColor);
	BackColor(whiteColor);
	
	CopyPixMap(canvasPix, canvasPix, &tempRect, &patternRect, srcCopy, NULL);
	
	RGBForeColor(&penColor);
	RGBBackColor(&backColor);
	
	PaintRect(&colorRect);
	
	InvertRect(&maskRect);
	
	ForeColor(blackColor);
	BackColor(whiteColor);
	
	CopyDeepMask((BitMap*)*canvasPix,
				 (BitMap*)*canvasPix,
				 (BitMap*)*canvasPix,
				 &colorRect,
				 &maskRect,
				 &patternRect,
				 srcCopy,
				 NULL);
	
	InvertRect(&maskRect);
	
	EraseRect(&largeRect);	
	FrameOval(&largeRect);
	
	PenSize(1, 1);
	
	CopyPixMap(canvasPix, canvasPix, &largeRect, &mask2Rect, srcCopy, NULL);
	
	CopyDeepMask((BitMap*)*canvasPix,
				 (BitMap*)*canvasPix,
				 (BitMap*)*canvasPix,
				 &colorRect,
				 &mask2Rect,
				 &patternRect,
				 srcCopy,
				 NULL);
				 
	/*PaintRect(&colorRect);
	
	CopyDeepMask((BitMap*)*canvasPix,
				 (BitMap*)*canvasPix,
				 (BitMap*)*canvasPix,
				 &colorRect,
				 &mask2Rect,
				 &maskRect,
				 srcCopy,
				 NULL);*/
	
	RESTOREGWORLD;
	
	CopyDeepMask((BitMap*)*canvasPix,
				 (BitMap*)*canvasPix,
				 GetPortBitMapForCopyBits(GetQDGlobalsThePort()),
				 &patternRect,
				 &maskRect,
				 targetRect,
				 srcCopy,
				 NULL);
	
	/*CopyBits((BitMap*)*canvasPix,
			 &qd.thePort->portBits,
			 &patternRect,
			 targetRect,
			 srcCopy,
			 NULL);*/
	
				 
	RESTORECOLORS;
}

void FramePolyAA(PolyHandle poly, GWorldPtr canvasGW, PixMapHandle canvasPix)
{
	int			penX, penY;
	Rect 		largeRect, drawRect, targetRect, maskRect, colorRect;
	PolyHandle	largePoly;
	RGBColor 	penColor;
	
	GetPenSize(&penX, &penY);
	
	targetRect = (**poly).polyBBox;
	
	InsetRect(&targetRect, -penX, -penY);
	
	largeRect = (**poly).polyBBox;
	
	largeRect.top *= 3;
	largeRect.bottom *= 3;
	largeRect.left *= 3;
	largeRect.right *= 3;
	
	drawRect = largeRect;
	InsetRect(&drawRect, -3 * penX, -3 * penY);
	
	largePoly = OpenPoly();
	
	FramePoly(poly);
	
	ClosePoly();
	
	OffsetRect(&largeRect, -largeRect.left, -largeRect.top);
	OffsetRect(&drawRect, -drawRect.left, -drawRect.top);
	
	MapPoly(largePoly, &(**poly).polyBBox, &largeRect);
	OffsetPoly(largePoly, 3 * penX, 3 * penY);
	
	maskRect = targetRect;
	OffsetRect(&maskRect, -maskRect.left, -maskRect.top);
	OffsetRect(&maskRect, drawRect.right, 0);
	
	colorRect = targetRect;
	OffsetRect(&colorRect, -colorRect.left, -colorRect.top);
	OffsetRect(&colorRect, drawRect.right, maskRect.bottom);
	
	GetForeColor(&penColor);
	
	SAVEGWORLD;
	SAVECOLORS;
	
	SetGWorld(canvasGW, NULL);
	ForeColor(blackColor);
	BackColor(whiteColor);
	
	PenSize(3 * penX, 3 * penY);
	EraseRect(&drawRect);
	
	FramePoly(largePoly);
	
	PenSize(1, 1);
	
	CopyPixMap(canvasPix, canvasPix, &drawRect, &maskRect, srcCopy, NULL);
		
	RGBForeColor(&penColor);
	PaintRect(&colorRect);
	ForeColor(blackColor);
	
	RESTOREGWORLD;
	
	CopyDeepMask((BitMap*)*canvasPix,
				 (BitMap*)*canvasPix,
				 GetPortBitMapForCopyBits(GetQDGlobalsThePort()),
				 &colorRect,
				 &maskRect,
				 &targetRect,
				 srcCopy,
				 NULL);
				 
	RESTORECOLORS;
	
	KillPoly(largePoly);
}

void LineToAA(int x, int y, GWorldPtr canvasGW, PixMapHandle canvasPix)
{
	Rect 		targetRect, largeRect, maskRect, colorRect;
	RGBColor	penColor;
	Point		start;
	int			penX, penY;
	
	GetPenSize(&penX, &penY);
	
	GetPen(&start);
	
	if (start.h < x)
	{
		targetRect.left = start.h;
		targetRect.right = x;
	}
	else
	{
		targetRect.left = x;
		targetRect.right = start.h;
	}
	
	if (start.v < y)
	{
		targetRect.top = start.v;
		targetRect.bottom = y;
	}
	else
	{
		targetRect.top = y;
		targetRect.bottom = start.v;
	}
	
	InsetRect(&targetRect, -penX, -penY);
	
	largeRect = targetRect;
	
	largeRect.top *= 3;
	largeRect.bottom *= 3;
	largeRect.left *= 3;
	largeRect.right *= 3;
	
	OffsetRect(&largeRect, -largeRect.left, -largeRect.top);
	
	maskRect = targetRect;
	OffsetRect(&maskRect, -maskRect.left, -maskRect.top);
	OffsetRect(&maskRect, largeRect.right, 0);
	
	colorRect = targetRect;
	OffsetRect(&colorRect, -colorRect.left, -colorRect.top);
	OffsetRect(&colorRect, largeRect.right, maskRect.bottom);
	
	GetForeColor(&penColor);
	
	SAVEGWORLD;
	SAVECOLORS;
	
	SetGWorld(canvasGW, NULL);
	ForeColor(blackColor);
	BackColor(whiteColor);
	
	PenSize(3 * penX, 3 * penY);
	EraseRect(&largeRect);
	MoveTo(start.h * 3 - targetRect.left * 3,
		   start.v * 3 - targetRect.top * 3);
	LineTo(x * 3 - targetRect.left * 3,
		   y * 3 - targetRect.top * 3);

	PenSize(1, 1);

	CopyPixMap(canvasPix, canvasPix, &largeRect, &maskRect, srcCopy, NULL);
		
	RGBForeColor(&penColor);
	PaintRect(&colorRect);
	ForeColor(blackColor);
	
	RESTOREGWORLD;
	
	CopyDeepMask((BitMap*)*canvasPix,
				 (BitMap*)*canvasPix,
				 GetPortBitMapForCopyBits(GetQDGlobalsThePort()),
				 &colorRect,
				 &maskRect,
				 &targetRect,
				 srcCopy,
				 NULL);
				 
	RESTORECOLORS;
}

#pragma mark -

void DarkenPixMap32(PixMapHandle pix, Rect rect, float intensity)
{
	unsigned char* currentPixel;
	int				rowBytes;
	
	rowBytes = (**pix).rowBytes & 0x3FFF;
	currentPixel = (unsigned char*)((**pix).baseAddr + rect.top * rowBytes + rect.left * 4);
	
	    	
	for (int y = rect.top; y < rect.bottom; y++)
	{
		for (int x = 0; x < rect.right - rect.left; x++)
		{
			currentPixel[4 * x + 1] *= intensity;
			currentPixel[4 * x + 2] *= intensity;
			currentPixel[4 * x + 3] *= intensity;
		}
		currentPixel += rowBytes;
	}
}

void AddPixMaps32(PixMapHandle srcPix, PixMapHandle dstPix, Rect bounds)
{
	unsigned char *src, *dst;
	int		totalSize, temp;
	
	src = (unsigned char*)(**srcPix).baseAddr;
	dst = (unsigned char*)(**dstPix).baseAddr;
	
	totalSize = ((**srcPix).rowBytes & 0x3FFF) * (bounds.bottom - bounds.top);
	
	for (int i=0; i < totalSize; i++)
	{
		temp = src[i] + dst[i];
		if (temp > 0xFF) temp = 0xFF;
		dst[i] = temp;
	}
}

#pragma mark -

void SetupCIcon(CIconHandle icon)
{
	int bitmapSize, maskSize, colorsSize;
	Rect	bitmapBounds, maskBounds;
	
	bitmapBounds = (**icon).iconBMap.bounds;
	maskBounds = (**icon).iconMask.bounds;
	
	bitmapSize = (bitmapBounds.bottom - bitmapBounds.top) * ((**icon).iconBMap.rowBytes & 0x3FFF);
	maskSize = (maskBounds.bottom - maskBounds.top) * ((**icon).iconMask.rowBytes & 0x3FFF);
	colorsSize = sizeof(ColorTable) + (**(**icon).iconPMap.pmTable).ctSize * sizeof(ColorSpec);
	
	(**icon).iconPMap.baseAddr = ((char*)((**icon).iconMaskData)) + maskSize + bitmapSize + colorsSize;
	(**icon).iconMask.baseAddr = (char*)((**icon).iconMaskData);
	(**icon).iconBMap.baseAddr = (char*)((**icon).iconMaskData) + maskSize;
}

void PlotCIconWithMode(Rect* target, CIconHandle icon, int mode)
{
	SAVECOLORS;
	
	CopyDeepMask(&(**icon).iconBMap,
				 &(**icon).iconMask,
				 GetPortBitMapForCopyBits(GetQDGlobalsThePort()),
				 &(**icon).iconPMap.bounds,
				 &(**icon).iconMask.bounds,
				 target,
				 mode,
				 NULL);

	RESTORECOLORS;
}

#pragma mark -

int GetGWorldColors(GWorldPtr gW, Rect bounds, RgnHandle boundingRgn, RGBColor** colors, int** frequencies)
{
	int			noOfColors;
	Point		temp;
	RGBColor	tempColor;
	bool		exists = false;
	
	SAVEGWORLD;
	
	SetGWorld(gW, NULL);
	
	noOfColors = 0;
	*colors = new RGBColor[128];
	if (frequencies)
		*frequencies = new int[128];
	
	for (int y = bounds.top; y < bounds.bottom; y++)
		for (int x = bounds.left; x < bounds.right; x++)
		{
			temp.h = x; temp.v = y;
			if (boundingRgn == NULL || PtInRgn(temp, boundingRgn))
			{
				GetCPixel(x, y, &tempColor);
				exists = false;
				for (int i = 0; i < noOfColors; i++)
					if (AreEqualRGB(tempColor, (*colors)[i]))
					{
						exists = true;
						if (frequencies)
							(*frequencies)[i]++;
						break;
					}
				
				if (!exists)
				{
					(*colors)[noOfColors] = tempColor;
					if (frequencies)
						(*frequencies)[noOfColors] = 1;
					noOfColors++;
					
					if (noOfColors % 128 == 0)
					{
						RGBColor	*tempColorPtr;
						
						tempColorPtr = new RGBColor[noOfColors + 128];
						
						for (int i = 0; i < noOfColors ; i++)
							tempColorPtr[i] = (*colors)[i];
							
						delete *colors;
						*colors = tempColorPtr;
						
						if (frequencies)
						{
							int			*tempFrequenciesPtr;
						
							tempFrequenciesPtr = new int[noOfColors + 128];
						
							for (int i = 0; i < noOfColors ; i++)
								tempFrequenciesPtr[i] = (*frequencies)[i];
							
						
							delete *frequencies;
							*frequencies = tempFrequenciesPtr;
						}	
					}
				}
			}
		}
	
	RESTOREGWORLD;
	
	return noOfColors;
}

int FindInColorTable(CTabHandle colorTable, RGBColor color)
{
	for (int i=0; i <= (**colorTable).ctSize; i++)
		if (AreEqualRGB((**colorTable).ctTable[i].rgb, color))
			return (**colorTable).ctTable[i].value;
	
	return -1;
}
