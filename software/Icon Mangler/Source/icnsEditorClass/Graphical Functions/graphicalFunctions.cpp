// __________________________________________________________________________________________
// Program		: Icon Mangler
// Filename		: graphicalFunctions.cpp (C++)
// Author		: Mihai Parparita (St. Mary's International School)
// Last modified: April 1, 1999
// Description	: this file contains graphical functions, such as flips, rotates and fills

#include "graphicalFunctions.h"

// __________________________________________________________________________________________
// Name			: FillPixMap
// Input		: x, y: coordinates of source of fill
//				  color: color with which the pixmap should be filled
// Output		: targetPix: pixmap in which the fill must be executed
// Description	: Does a point flood fill based on the input. Basically it fills all the pixels
//				  adjacent to the source area which have the same color. This is done through
//				  recursion.

void FillPixMap(PixMapHandle targetPix, int x, int y, RGBColor colorRGB)
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
	
	// then we start the filling
	FillPixel(targetPix, x, y, color, colorToReplace, GetPixel, SetPixel);
}

// __________________________________________________________________________________________
// Name			: FillPixel
// Input		: targetPix: the pixmap which we are filling
//				  x, y: coordinates of the pixel we must fill
//				  color: color which which we must fill
//				  colorToReplace: color which we are replacing with the color above
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
			   SetPixelFuncPtr SetPixel)
{
	if (colorToReplace == GetPixel(x, y, targetPix)) // if this is a color we can fill
	{
		Rect	bounds; // the dimensions of the target pixmap
		
		SetPixel(x, y, color, targetPix); // we change it
		bounds = (**targetPix).bounds; // and we get the bounds
		
		// and call ourselves for the neighboring pixels, if we're within the bounds
		if (y - 1 >= bounds.top)
			FillPixel(targetPix, x, y - 1, color, colorToReplace, GetPixel, SetPixel);
		if (y + 1 <= bounds.bottom)
			FillPixel(targetPix, x, y + 1, color, colorToReplace, GetPixel, SetPixel);
		if (x - 1 >= bounds.left)
			FillPixel(targetPix, x - 1, y, color, colorToReplace, GetPixel, SetPixel);
		if (x + 1 <= bounds.right)
			FillPixel(targetPix, x + 1, y, color, colorToReplace, GetPixel, SetPixel);
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
