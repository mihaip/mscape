// __________________________________________________________________________________________
// Program		: Icon Mangler
// Filename		: graphicalFunctions.h (C++)
// Author		: Mihai Parparita (St. Mary's International School)
// Last modified: April 1, 1999
// Description	: The header for the graphical functions, it contains the function prototypes

#include "commonfunctions.h"

#pragma once

extern void FlipVertical(PixMapHandle srcPix);
extern void FlipHorizontal(PixMapHandle srcPix);
extern void Rotate(int angle, GWorldPtr *srcGW, PixMapHandle *srcPix);
extern void FillPixMap(PixMapHandle targetPix, int x, int y, RGBColor colorRGB);
extern void FillPixel(PixMapHandle targetPix,
			   int x, int y,
			   long color,
			   long colorToReplace,
			   GetPixelFuncPtr GetPixel,
			   SetPixelFuncPtr SetPixel);
