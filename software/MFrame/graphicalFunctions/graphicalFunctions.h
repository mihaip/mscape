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

typedef void (*QTHeaderFunction) (short file, PixMapHandle imagePix, Rect bounds);

// used for determining transparency
const static long kNeverUsedColor = 0xFFFFFE;
const static RGBColor kNeverUsedColorAsRGB = {0xFFFF, 0xFFFF, 0xFE00};

const static RGBColor kPickerNeverUsedColor = {257, 0, 0};

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
/*extern void PixMapColorPicker(RGBColor* color,
							  WindowPtr window,
							  Point where,
							  PixMapHandle pickerPix,
							  GWorldPtr pickerGW,
							  RgnHandle pickerRgn,
							  CTabHandle drawingTable,
							  colorUpdateFn UpdateColors,
							  void* clientData);*/
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
extern void MergePixMap32AndMask(PixMapHandle imagePix, PixMapHandle maskPix, Rect bounds);


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

extern void FrameOvalAA(Rect* targetRect, GWorldPtr canvasGW, PixMapHandle canvasPix);
extern void FillAndFrameOvalAA(Rect* targetRect, Pattern* pattern, GWorldPtr canvasGW, PixMapHandle canvasPix);
extern void LineToAA(int x, int y, GWorldPtr canvasGW, PixMapHandle canvasPix);
extern void FramePolyAA(PolyHandle poly, GWorldPtr canvasGW, PixMapHandle canvasPix);

extern PicHandle ARGBPixMapToPicture( PixMapHandle myPixMap, PixMapHandle maskPix);
extern void DarkenPixMap32(PixMapHandle pix, Rect rect, float intensity);
extern void ExportPictureToPICTFile(PicHandle exportPic, FSSpec exportFile, long creator);
extern void ExportPixMap32ToQTFile(PixMapHandle imagePix, Rect bounds,
								   FSSpec exportFile, long creator, long fileType,
								   CodecType codec, QTHeaderFunction headerFunction);
extern void ImportQTFileToGWorld(FSSpec file, GWorldPtr target);
extern void ExportPixMap32ToPhotoshopFile(PixMapHandle imagePix, Rect bounds, PixMapHandle maskPix, FSSpec exportFile, long creator);
extern void AddPixMaps32(PixMapHandle srcPix, PixMapHandle dstPix, Rect bounds);

extern void SetupCIcon(CIconHandle icon);
extern void PlotCIconWithMode(Rect* targetRect, CIconHandle icon, int mode);

inline int constrain (int a, int lower, int upper)
{
	if (a < lower)
		return lower;
	if (a > upper)
		return upper;
	
	return a;
}

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


inline void HSV2RGBff(float h, float s, float v,
					  float* r, float* g, float* b)
{
	float f, p, q, t;
	
	h /= 60;                        // sector 0 to 5
	if (h == 6.0)
		h = 0.0;

    f = h - int(h);                      // factorial part of h
    p = v * ( 1 - s );
    q = v * ( 1 - s * f );
    t = v * ( 1 - s * ( 1 - f ) );

    switch(int(h))
    {
		case 0: *r = v; *g = t; *b = p; break;
		case 1: *r = q; *g = v; *b = p; break;
		case 2: *r = p; *g = v; *b = t; break;
		case 3: *r = p; *g = q; *b = v; break;
		case 4: *r = t; *g = p; *b = v; break;
		case 5: *r = v; *g = p; *b = q; break;
	}
}

inline void HSV2RGBfc(float h, float s, float v,
					  unsigned char* r, unsigned char* g, unsigned char* b)
{
	float f, p, q, t;
	
	h /= 60;                        // sector 0 to 5
	if (h == 6.0)
		h = 0.0;

    f = h - int(h);                      // factorial part of h
    p = v * ( 1 - s );
    q = v * ( 1 - s * f );
    t = v * ( 1 - s * ( 1 - f ) );

    switch(int(h))
    {
		case 0: *r = v * 255; *g = t * 255; *b = p * 255; break;
		case 1: *r = q * 255; *g = v * 255; *b = p * 255; break;
		case 2: *r = p * 255; *g = v * 255; *b = t * 255; break;
		case 3: *r = p * 255; *g = q * 255; *b = v * 255; break;
		case 4: *r = t * 255; *g = p * 255; *b = v * 255; break;
		case 5: *r = v * 255; *g = p * 255; *b = q * 255; break;
	}
}


inline void DrawCross(int length)
{
	Move(0, -length);
	Line(0, length * 2 + 1);
	Move(-length, -length - 1);
	Line(length * 2 + 1, 0);
	Move(-length - 1, 0);
}
