// __________________________________________________________________________________________
// Program		: Icon Mangler
// Filename		: graphicalFunctions.h (C++)
// Author		: Mihai Parparita (St. Mary's International School)
// Last modified: April 1, 1999
// Description	: The header for the graphical functions, it contains the function prototypes

#include "commonfunctions.h"

#pragma once

typedef struct gradientParams
{
	RGBColor startColor;
	RGBColor endColor;
	int x1, y1, x2, y2;
	float d;
	float dSquared;
} gradientParams;

// used for determining transparency
const static long kNeverUsedColor = 0xFFFFFE;
const static RGBColor kNeverUsedColorAsRGB = {0xFFFF, 0xFFFF, 0xFEEE};

extern OSErr PictureToRegion(PicHandle srcPic, Rect bounds, RgnHandle targetRgn);
extern void FlipVertical(PixMapHandle srcPix);
extern void FlipHorizontal(PixMapHandle srcPix);
extern void Rotate(int angle, GWorldPtr *srcGW, PixMapHandle *srcPix);
extern void FillPixMap(PixMapHandle targetPix, int x, int y, RGBColor colorRGB, RgnHandle clipRgn);
extern void FillPixel(PixMapHandle targetPix,
			   int x, int y,
			   long color,
			   long colorToReplace,
			   GetPixelFuncPtr GetPixel,
			   SetPixelFuncPtr SetPixel,
			   RgnHandle clipRgn);
extern void DrawGradient32(int x1, int y1, RGBColor startColor,
				 		   int x2, int y2, RGBColor endColor,
				 		   PixMapHandle targetPix, Rect targetRect, RgnHandle clipRgn);
extern RGBColor GetGradientColor(int x, int y, gradientParams* params);
extern void ColorPicker(RGBColor* color,
						WindowPtr window,
						Point where,
						PicHandle pickerPic,
						RgnHandle swatchRgn,
						CTabHandle drawingTable);
extern void GetSimilarColors(RGBColor* colorList,
							 int noOfColors,
							 PixMapHandle pix,
							 RgnHandle clipRgn,
							 RgnHandle region);
extern void ConstrainLine45(int x1, int y1, int* x2, int* y2);
extern void ConstrainLine90(int x1, int y1, int* x2, int* y2);
extern void PictureToARGB(PicHandle pic,
						  PixMapHandle picPix,
						  PixMapHandle maskPix,
						  bool scale);
						  
extern void MergePix(PixMapHandle basePicPix,
				     PixMapHandle baseMaskPix,
				     PixMapHandle overlayPicPix,
			  		 PixMapHandle overlayMaskPix,
			  		 PixMapHandle targetPicPix,
			  		 PixMapHandle targetMaskPix);

inline float Distance(int x1, int y1, int x2, int y2)
{
	return sqrt((x2 - x1)*(x2 - x1) + (y2 - y1)*(y2 - y1));
}

inline float DistanceSquared(int x1, int y1, int x2, int y2)
{
	return abs((x2 - x1)*(x2 - x1) + (y2 - y1)*(y2 - y1));
}

inline bool AreEqualRGB(RGBColor color1, RGBColor color2)
{
	return (((color1.red & 0xFF00) == (color2.red & 0xFF00)) &&
			((color1.blue & 0xFF00) == (color2.blue & 0xFF00)) &&
			((color1.green & 0xFF00) == (color2.green & 0xFF00)));
}

inline char GetLongRed(long color)
{
	return ((color & 0x00FF0000) >> 16);
}

inline char GetLongGreen(long color)
{
	return ((color & 0x0000FF00) >> 8);
}

inline char GetLongBlue(long color)
{
	return ((color & 0x000000FF) >> 0);
}

inline void DrawCross(int length)
{
	Move(0, -length);
	Line(0, length * 2 + 1);
	Move(-length, -length - 1);
	Line(length * 2 + 1, 0);
	Move(-length - 1, 0);
}
