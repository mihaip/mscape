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

typedef struct FillPixMapParams
{
	PixMapHandle pix;
	int		x;
	int		y;
	long	newColor;
	long	oldColor;
	RgnHandle clipRgn;
	SetPixelFuncPtr SetPixel;
	GetPixelFuncPtr GetPixel;
} FillPixMapParams, *FillPixMapParamsPtr;

typedef float RGBMatrix[4][4];

typedef pascal void (*colorUpdateFn) (RGBColor* color, void *clientData);

// used for determining transparency
const static long kNeverUsedColor = 0xFFFFFE;
const static RGBColor kNeverUsedColorAsRGB = {0xFFFF, 0xFFFF, 0xFEEE};

const static float kRLuminance = 0.3086;
const static float kGLuminance = 0.6094;
const static float kBLuminance = 0.0820;

extern OSErr PictureToRegion(PicHandle srcPic, Rect bounds, RgnHandle targetRgn);
extern void FlipVertical(PixMapHandle srcPix);
extern void FlipHorizontal(PixMapHandle srcPix);
extern void Rotate(int angle, GWorldPtr *srcGW, PixMapHandle *srcPix);
extern void FillPixMap(PixMapHandle targetPix, int x, int y, RGBColor colorRGB, RgnHandle clipRgn);
extern void FillRun(FillPixMapParamsPtr params);
extern void DrawGradient32(int x1, int y1, RGBColor startColor,
				 		   int x2, int y2, RGBColor endColor,
				 		   PixMapHandle targetPix, Rect targetRect, RgnHandle clipRgn);
extern RGBColor GetGradientColor(int x, int y, gradientParams* params);
extern void DrawRadialGradient32(int x1, int y1, RGBColor startColor,
				 		   		 int x2, int y2, RGBColor endColor,
				 		 	     PixMapHandle targetPix, Rect targetRect, RgnHandle clipRgn);
RGBColor GetRadialGradientColor(int x, int y, gradientParams* params);
extern void ColorPicker(RGBColor* color,
						WindowPtr window,
						Point where,
						PicHandle pickerPic,
						CTabHandle drawingTable,
						colorUpdateFn UpdateColors,
						void* clientData);
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
extern OSErr NewGWorldUnpadded(GWorldPtr* gWorld, short depth, const Rect* rect, CTabHandle colorTable);
extern bool IsEmptyPixMap(PixMapHandle srcPix);
extern bool SamePixMap(PixMapHandle pix1, PixMapHandle pix2);
extern void DrawPictureDithered(PicHandle srcPic, Rect* targetRect);
extern void Mask8ToMask1(PixMapHandle mask8Pix, PixMapHandle mask1Pix);

extern void ChangeContrast(PixMapHandle pix, int contrast);
extern int	GetAverageLuminance(PixMapHandle pix);
extern void ColorizePixMap(PixMapHandle pix, int hue, float saturation);

extern void IdentityMatrix(RGBMatrix matrix);
extern void OffsetMatrix(RGBMatrix matrix, float rOffset, float gOffset, float bOffset);
extern void MultiplyMatrix(RGBMatrix a, RGBMatrix b, RGBMatrix c);
extern void ScaleMatrix(RGBMatrix matrix, float rScale, float gScale, float bScale);
extern void SaturateMatrix(RGBMatrix matrix, float saturation);
extern void XRotateMatrix(RGBMatrix matrix, float rs, float rc);
extern void YRotateMatrix(RGBMatrix matrix, float rs, float rc);
extern void ZRotateMatrix(RGBMatrix matrix, float rs, float rc);
extern void ZShearMatrix(RGBMatrix matrix, float dx, float dy);
extern void HueRotateMatrix(RGBMatrix matrix, float angle);
extern void ApplyMatrix(RGBMatrix matrix, PixMapHandle pix);
extern void XFormPoint(RGBMatrix matrix, float x, float y, float z, float* tx, float* ty, float* tz);



PicHandle ARGBPixMapToPicture( PixMapHandle myPixMap, PixMapHandle maskPix);


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
