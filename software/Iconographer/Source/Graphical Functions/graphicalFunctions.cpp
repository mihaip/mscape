// __________________________________________________________________________________________
// Program		: Icon Mangler
// Filename		: graphicalFunctions.cpp (C++)
// Author		: Mihai Parparita (St. Mary's International School)
// Last modified: April 1, 1999
// Description	: this file contains graphical functions, such as flips, rotates and fills

#include "graphicalFunctions.h"

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
	
	// we're done, so we can dispose
	UnlockPixels(tempPix);
	DisposeGWorld(tempGW);
	UnlockPixels(maskPix);
	DisposeGWorld(maskGW);
	
	RESTOREGWORLD;
	RESTORECOLORS;
	
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
	GetPixelFuncPtr	GetPixel; // pointer to the GetPixel function we'll use (based on the depth)
	SetPixelFuncPtr	SetPixel; // ditto, but for SetPixel
	long			color, // the fill color
					colorToReplace; // the color we're replacing
	
	switch ((**targetPix).pixelSize) // based on the depth
	{
		// depths 1, 4 and 8 use an indexed color table, thus the color is the color table index
		case 1:
			GetPixel = GetPixel1;
			SetPixel = SetPixel1;
			color = GetColorIndex(colorRGB, (**targetPix).pmTable);
			break;
		case 4:
			GetPixel = GetPixel4;
			SetPixel = SetPixel4;
			color = GetColorIndex(colorRGB, (**targetPix).pmTable);
			break;
		case 8:
			GetPixel = GetPixel8; 
			SetPixel = SetPixel8;
			color = GetColorIndex(colorRGB, (**targetPix).pmTable);
			break;
		case 32:
			GetPixel = GetPixel32;
			SetPixel = SetPixel32;
			// for this depth we must merge the RGB components into a long
			color = ((colorRGB.red << 8)	& 0x00FF0000) +
					((colorRGB.green)		& 0x0000FF00) +
					((colorRGB.blue >> 8)	& 0x000000FF);
			break;
	}
	
	colorToReplace = GetPixel(x, y, targetPix);
	// the color we are replacing is whatever is undernath the pixel
	
	if (colorToReplace == color)
		return;
	
	// then we start the filling
	FillPixel(targetPix, x, y, color, colorToReplace, GetPixel, SetPixel, clipRgn);
}

// __________________________________________________________________________________________
// Name			: FillPixel
// Input		: targetPix: the pixmap which we are filling
//				  x, y: coordinates of the pixel we must fill
//				  color: color which which we must fill
//				  colorToReplace: color which we are replacing with the color above
//				  clipRgn: region to which we're limiting the filling
//				  GetPixel, SetPixel: pointers to function used to do these operations
// Output		: None
// Description	: If the current pixel is the color to be replaced, then it changes it to the
//				  new color, and calls itself for its neighboring pixels (unless its out of
//				  bounds)

void FillPixel(PixMapHandle targetPix,
			   int x, int y,
			   long color,
			   long colorToReplace,
			   GetPixelFuncPtr GetPixel,
			   SetPixelFuncPtr SetPixel,
			   RgnHandle clipRgn)
{
	Point temp = {y, x};
	if ((colorToReplace == GetPixel(x, y, targetPix)) &&
	    (PtInRgn(temp, clipRgn) || clipRgn == NULL)) // if this is a color we can fill
	{
		Rect	bounds; // the dimensions of the target pixmap
		
		SetPixel(x, y, color, targetPix); // we change it
		bounds = (**targetPix).bounds; // and we get the bounds
		
		// and call ourselves for the neighboring pixels, if we're within the bounds
		if (y - 1 >= bounds.top)
			FillPixel(targetPix, x, y - 1, color, colorToReplace, GetPixel, SetPixel, clipRgn);
		if (y + 1 <= bounds.bottom)
			FillPixel(targetPix, x, y + 1, color, colorToReplace, GetPixel, SetPixel, clipRgn);
		if (x - 1 >= bounds.left)
			FillPixel(targetPix, x - 1, y, color, colorToReplace, GetPixel, SetPixel, clipRgn);
		if (x + 1 <= bounds.right)
			FillPixel(targetPix, x + 1, y, color, colorToReplace, GetPixel, SetPixel, clipRgn);
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
							 GetPixel1(bounds.right - (x - bounds.left) - 1 , y, srcPix),
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
			if (PtInRgn(temp, clipRgn) || clipRgn == NULL)
				SetPixel32(x, y, RGBToLong(&GetGradientColor(x, y, &params)), targetPix);
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
				SetPixel32(x, y, RGBToLong(&GetRadialGradientColor(x, y, &params)), targetPix);
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
	
	returnColor.red = params->startColor.red * blendRatio + params->endColor.red * (1 - blendRatio);
	returnColor.green = params->startColor.green * blendRatio + params->endColor.green * (1 - blendRatio);
	returnColor.blue = params->startColor.blue * blendRatio + params->endColor.blue * (1 - blendRatio);
	
	return returnColor;
}

// __________________________________________________________________________________________
// Name			: ColorPicker
// Input		: pickerPic: the picture to be used as the palette
//				  swatchRgn: the region in which we must draw the color sample
// Output		: color: the color chosen
// Description	: This function displays a color picker and allows the user to choose among
//				  the displayed colors.

void ColorPicker(RGBColor* color, WindowPtr window, Point where, PicHandle pickerPic, RgnHandle swatchRgn, CTabHandle drawingTable)
{
	Rect			menuRect, pickerRect, saveRect;
	GWorldPtr		savedGW, pickerGW;
	PixMapHandle	savedPix, pickerPix;
	OSErr			err;
	RgnHandle		savedVis, pickerRgn, tempRgn, hiliteRgn;
	BitMapPtr		currentPortBits;
	Point			theMouse;
	RGBColor		nearestColor, newColor, tempColor, previousColor;
	short			paddingH, paddingV;
	
	SAVEGWORLD;
	SAVECOLORS;
	
	nearestColor = GetNearestColor(*color, drawingTable);
	newColor = nearestColor;
	
	currentPortBits = &qd.thePort->portBits;
	hiliteRgn = NewRgn();
	
	savedVis = NewRgn();
	CopyRgn(window->visRgn, savedVis);
	SetRectRgn(window->visRgn,
			   -32767,
			   -32767,
			   32767,
			   32767);
	
	pickerRgn = NewRgn();
	PictureToRegion(pickerPic, (**pickerPic).picFrame, pickerRgn);
	OffsetRgn(pickerRgn, where.h, where.v);
	
	SetRect(&pickerRect,
			where.h,
			where.v,
			where.h + (**pickerPic).picFrame.right - (**pickerPic).picFrame.left,
			where.v + (**pickerPic).picFrame.bottom - (**pickerPic).picFrame.top);
			
	NewGWorld(&pickerGW, 32, &pickerRect, NULL, NULL, 0);
	pickerPix = GetGWorldPixMap(pickerGW);
	LockPixels(pickerPix);
	SetGWorld(pickerGW, NULL);
	DrawPicture(pickerPic, &pickerRect);
	
	menuRect = pickerRect;
	InsetRect(&menuRect, -2, -2);
	saveRect = menuRect,
	GetThemeMenuItemExtra(kThemeMenuTypePopUp, &paddingV, &paddingH);
	saveRect.top--;
	saveRect.left--;
	saveRect.bottom += 2;
	saveRect.right += 2;
	
	tempRgn = NewRgn();
	RectRgn(tempRgn, &saveRect);
	DiffRgn(swatchRgn, tempRgn, swatchRgn);
	DisposeRgn(tempRgn);
	
	err = NewGWorld(&savedGW, 32, &saveRect, NULL, NULL, 0);
	savedPix = GetGWorldPixMap(savedGW);
	LockPixels(savedPix);
	
	CopyBits(currentPortBits,
			 (BitMap*)*savedPix,
			 &saveRect,
			 &saveRect,
			 srcCopy,
			 NULL);
			 
	RESTOREGWORLD;
	RESTORECOLORS;
	
	DrawThemeMenuBackground(&menuRect, kThemeMenuTypePopUp);
	
	DrawPicture(pickerPic, &pickerRect);
	
	GetSimilarColors(&nearestColor, 1,  pickerPix, pickerRgn, hiliteRgn);
	ForeColor(whiteColor);
	InsetRgn(hiliteRgn, -1, -1);
	FrameRgn(hiliteRgn);
	
	RESTORECOLORS;
	
	while (Button())
	{
		previousColor = newColor;
		
		GetMouse(&theMouse);
		
		if (PtInRgn(theMouse, pickerRgn))
			{
				SetGWorld(pickerGW, NULL);
				GetCPixel(theMouse.h, theMouse.v, &tempColor);
				if (tempColor.red != 257 || tempColor.green != 0 || tempColor.blue != 0)
					newColor = tempColor;
				RESTOREGWORLD;
			}
		else
			newColor = nearestColor;
		
		if (!AreEqualRGB(previousColor, newColor))
		{
			
			RGBForeColor(&newColor);
			PaintRgn(swatchRgn);
			
			ForeColor(blackColor);
			BackColor(whiteColor);
			
			CopyBits((BitMap*)*pickerPix,
					 currentPortBits,
					 &pickerRect,
					 &pickerRect,
					 srcCopy,
					 pickerRgn);	
			
			GetSimilarColors(&newColor, 1, pickerPix, pickerRgn, hiliteRgn);
			ForeColor(whiteColor);
			InsetRgn(hiliteRgn, -1, -1);
			FrameRgn(hiliteRgn);
			RESTORECOLORS;
		}
		
		
	}
	
	SetGWorld(savedGW, NULL);
	ForeColor(blackColor);
	BackColor(whiteColor);
	
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
	UnlockPixels(pickerPix);
	DisposeGWorld(pickerGW);

	CopyRgn(savedVis, window->visRgn);
	DisposeRgn(savedVis);
	
	if (!AreEqualRGB(newColor, nearestColor))
	*color = newColor;
}

void GetSimilarColors(RGBColor* colorList, int noOfColors, PixMapHandle pix, RgnHandle clipRgn, RgnHandle region)
{
	GWorldPtr		tempGW, picGW;
	PixMapHandle	tempPix, picPix;
	register long	rowLongs;
	long*			pos;
	register long	top, bottom, left, right;
	long			*colorLongList;
	
	if ((**pix).pixelSize != 32)
	{
		NewGWorld(&picGW, 32, &(**pix).bounds, NULL, NULL, 0);
		picPix = GetGWorldPixMap(picGW);
		LockPixels(picPix);
		CopyPixMap(pix, picPix, &(**pix).bounds, &(**pix).bounds, srcCopy, NULL);
	}
	else
		picPix = pix;
	
	SAVEGWORLD;
	SAVECOLORS;
	
	colorLongList = new long[noOfColors];
	for (int i = 0; i < noOfColors; i++)
		colorLongList[i] = RGBToLong(&colorList[i]);
	
	NewGWorld(&tempGW, 1, &(**pix).bounds, NULL, NULL, 0);
	tempPix = GetGWorldPixMap(tempGW);
	LockPixels(tempPix);
	SetGWorld(tempGW, NULL);
	EraseRect(&(**pix).bounds);
	
	left = (**pix).bounds.left;
	right = (**pix).bounds.right;
	top = (**pix).bounds.top;
	bottom = (**pix).bounds.bottom;
	rowLongs = ((**picPix).rowBytes & 0x3FFF)/4;
	pos = ((long*)(**picPix).baseAddr) - left;
	
	for (int y = top; y < bottom; y++, pos += rowLongs)
		for (int x = left; x < right; x++)
			for (int i = 0; i < noOfColors; i++)
				if (pos[x] == colorLongList[i])
					SetPixel1(x, y, 1, tempPix);
				
	BitMapToRegion(region, (BitMap*)*tempPix);
	if (clipRgn != NULL)
		SectRgn(region, clipRgn, region);
	
	
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

OSErr NewGWorldUnpadded(GWorldPtr* gWorld, short depth, Rect* bounds, CTabHandle colorTable)
{
	PixMapHandle tempPix;
	int realRowBytes, currentRowBytes;
	Rect	tempBounds;
	OSErr	err;
	
	tempBounds = *bounds;
	
	realRowBytes = (((bounds->right - bounds->left) * depth + 31) & -31) >> 3;
	if (realRowBytes > 32)
		tempBounds.right -= 16*8/depth;
	else if (realRowBytes == 16)
		tempBounds.right /= 2;
	
	err = NewGWorld(gWorld, depth, &tempBounds,  colorTable, NULL, 0);
	if (err != noErr) return err;
	tempPix = GetGWorldPixMap(*gWorld);
	LockPixels(tempPix);
	currentRowBytes = (**tempPix).rowBytes & 0x3FFF;
	(**gWorld).portRect = *bounds;
	(**tempPix).bounds = *bounds;
	(**(**gWorld).portPixMap).bounds = *bounds;
	(**(**gWorld).visRgn).rgnBBox = *bounds;
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
	GWorldPtr tempGW;
	PixMapHandle tempPix;
	
	SAVEGWORLD;
	SAVECOLORS;
	
	NewGWorld(&tempGW, 32, targetRect, NULL, NULL, 0);
	tempPix = GetGWorldPixMap(tempGW);
	LockPixels(tempPix);
	
	SetGWorld(tempGW, NULL);
	
	DrawPicture(srcPic, targetRect);
	
	RESTOREGWORLD;
	
	CopyBits((BitMap*)*tempPix,
			 &qd.thePort->portBits,
			 targetRect,
			 targetRect,
			 srcCopy + ditherCopy,
			 NULL);
			 

	RESTORECOLORS;
	
	UnlockPixels(tempPix);
	DisposeGWorld(tempGW);	
}

