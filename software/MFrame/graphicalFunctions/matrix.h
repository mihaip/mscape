#pragma once

typedef float RGBMatrix[4][4];

const static float kRLuminance = 0.3086;
const static float kGLuminance = 0.6094;
const static float kBLuminance = 0.0820;

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
