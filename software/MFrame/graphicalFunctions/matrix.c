#include "graphicalFunctions.h"

void IdentityMatrix(RGBMatrix matrix)
{
	matrix[0][0] = 1.0;    /* row 1        */
    matrix[0][1] = 0.0;
    matrix[0][2] = 0.0;
   	matrix[0][3] = 0.0;
    
    matrix[1][0] = 0.0;    /* row 2        */
    matrix[1][1] = 1.0;
    matrix[1][2] = 0.0;
    matrix[1][3] = 0.0;
    
    matrix[2][0] = 0.0;    /* row 3        */
    matrix[2][1] = 0.0;
    matrix[2][2] = 1.0;
    matrix[2][3] = 0.0;
    
    matrix[3][0] = 0.0;    /* row 4        */
    matrix[3][1] = 0.0;
    matrix[3][2] = 0.0;
    matrix[3][3] = 1.0;
}

void OffsetMatrix(RGBMatrix matrix, float rOffset, float gOffset, float bOffset)
{
	RGBMatrix mmat;

    mmat[0][0] = 1.0;
    mmat[0][1] = 0.0;
    mmat[0][2] = 0.0;
    mmat[0][3] = 0.0;

    mmat[1][0] = 0.0;
    mmat[1][1] = 1.0;
    mmat[1][2] = 0.0;
    mmat[1][3] = 0.0;

    mmat[2][0] = 0.0;
    mmat[2][1] = 0.0;
    mmat[2][2] = 1.0;
    mmat[2][3] = 0.0;

    mmat[3][0] = rOffset;
    mmat[3][1] = gOffset;
    mmat[3][2] = bOffset;
    mmat[3][3] = 1.0;
    
    MultiplyMatrix(mmat,matrix,matrix);
}

void MultiplyMatrix(RGBMatrix a, RGBMatrix b, RGBMatrix c)
{
    int x, y;
    RGBMatrix temp;

    for(y=0; y<4 ; y++)
        for(x=0 ; x<4 ; x++) {
            temp[y][x] = b[y][0] * a[0][x]
                       + b[y][1] * a[1][x]
                       + b[y][2] * a[2][x]
                       + b[y][3] * a[3][x];
        }
    for(y=0; y<4; y++)
        for(x=0; x<4; x++)
            c[y][x] = temp[y][x];
}

void ScaleMatrix(RGBMatrix matrix, float rScale, float gScale, float bScale)
{
    RGBMatrix mmat;

    mmat[0][0] = rScale;
    mmat[0][1] = 0.0;
    mmat[0][2] = 0.0;
    mmat[0][3] = 0.0;

    mmat[1][0] = 0.0;
    mmat[1][1] = gScale;
    mmat[1][2] = 0.0;
    mmat[1][3] = 0.0;


    mmat[2][0] = 0.0;
    mmat[2][1] = 0.0;
    mmat[2][2] = bScale;
    mmat[2][3] = 0.0;

    mmat[3][0] = 0.0;
    mmat[3][1] = 0.0;
    mmat[3][2] = 0.0;
    mmat[3][3] = 1.0;
    
    MultiplyMatrix(mmat, matrix, matrix);
}

void SaturateMatrix(RGBMatrix matrix, float saturation)
{
    RGBMatrix mmat;
    float a, b, c, d, e, f, g, h, i;
    float rwgt, gwgt, bwgt;

    rwgt = kRLuminance;
    gwgt = kGLuminance;
    bwgt = kBLuminance;

    a = (1.0 - saturation)*rwgt + saturation;
    b = (1.0 - saturation)*rwgt;
    c = (1.0 - saturation)*rwgt;
    d = (1.0 - saturation)*gwgt;
    e = (1.0 - saturation)*gwgt + saturation;
    f = (1.0 - saturation)*gwgt;
    g = (1.0 - saturation)*bwgt;
    h = (1.0 - saturation)*bwgt;
    i = (1.0 - saturation)*bwgt + saturation;
    
    mmat[0][0] = a;
    mmat[0][1] = b;
    mmat[0][2] = c;
    mmat[0][3] = 0.0;

    mmat[1][0] = d;
    mmat[1][1] = e;
    mmat[1][2] = f;
    mmat[1][3] = 0.0;

    mmat[2][0] = g;
    mmat[2][1] = h;
    mmat[2][2] = i;
    mmat[2][3] = 0.0;

    mmat[3][0] = 0.0;
    mmat[3][1] = 0.0;
    mmat[3][2] = 0.0;
    mmat[3][3] = 1.0;
    
    MultiplyMatrix(mmat, matrix, matrix);
}

/* 
 *	xrotate -	
 *		rotate about the x (red) axis
 */
void XRotateMatrix(RGBMatrix matrix, float rs, float rc)
{
    RGBMatrix mmat;

    mmat[0][0] = 1.0;
    mmat[0][1] = 0.0;
    mmat[0][2] = 0.0;
    mmat[0][3] = 0.0;

    mmat[1][0] = 0.0;
    mmat[1][1] = rc;
    mmat[1][2] = rs;
    mmat[1][3] = 0.0;

    mmat[2][0] = 0.0;
    mmat[2][1] = -rs;
    mmat[2][2] = rc;
    mmat[2][3] = 0.0;

    mmat[3][0] = 0.0;
    mmat[3][1] = 0.0;
    mmat[3][2] = 0.0;
    mmat[3][3] = 1.0;
    
    MultiplyMatrix(mmat, matrix, matrix);
}

/* 
 *	yrotate -	
 *		rotate about the y (green) axis
 */
void YRotateMatrix(RGBMatrix matrix, float rs, float rc)
{
    float mmat[4][4];

    mmat[0][0] = rc;
    mmat[0][1] = 0.0;
    mmat[0][2] = -rs;
    mmat[0][3] = 0.0;

    mmat[1][0] = 0.0;
    mmat[1][1] = 1.0;
    mmat[1][2] = 0.0;
    mmat[1][3] = 0.0;

    mmat[2][0] = rs;
    mmat[2][1] = 0.0;
    mmat[2][2] = rc;
    mmat[2][3] = 0.0;

    mmat[3][0] = 0.0;
    mmat[3][1] = 0.0;
    mmat[3][2] = 0.0;
    mmat[3][3] = 1.0;
    
    MultiplyMatrix(mmat, matrix, matrix);
}

/* 
 *	zrotate -	
 *		rotate about the z (blue) axis
 */
void ZRotateMatrix(RGBMatrix matrix, float rs, float rc)
{
    RGBMatrix mmat;

    mmat[0][0] = rc;
    mmat[0][1] = rs;
    mmat[0][2] = 0.0;
    mmat[0][3] = 0.0;

    mmat[1][0] = -rs;
    mmat[1][1] = rc;
    mmat[1][2] = 0.0;
    mmat[1][3] = 0.0;

    mmat[2][0] = 0.0;
    mmat[2][1] = 0.0;
    mmat[2][2] = 1.0;
    mmat[2][3] = 0.0;

    mmat[3][0] = 0.0;
    mmat[3][1] = 0.0;
    mmat[3][2] = 0.0;
    mmat[3][3] = 1.0;
    
    
    MultiplyMatrix(mmat,matrix,matrix);
}

/* 
 *	zshear -	
 *		shear z using x and y.
 */
void ZShearMatrix(RGBMatrix matrix, float dx, float dy)
{
    RGBMatrix mmat;

    mmat[0][0] = 1.0;
    mmat[0][1] = 0.0;
    mmat[0][2] = dx;
    mmat[0][3] = 0.0;

    mmat[1][0] = 0.0;
    mmat[1][1] = 1.0;
    mmat[1][2] = dy;
    mmat[1][3] = 0.0;

    mmat[2][0] = 0.0;
    mmat[2][1] = 0.0;
    mmat[2][2] = 1.0;
    mmat[2][3] = 0.0;

    mmat[3][0] = 0.0;
    mmat[3][1] = 0.0;
    mmat[3][2] = 0.0;
    mmat[3][3] = 1.0;
    
    MultiplyMatrix(mmat, matrix, matrix);
}

void HueRotateMatrix(RGBMatrix matrix, float angle)
{
    RGBMatrix mmat;
    float mag;
    float lx, ly, lz;
    float xrs, xrc;
    float yrs, yrc;
    float zrs, zrc;
    float zsx, zsy;

    IdentityMatrix(mmat);

/* rotate the grey vector into positive Z */
    mag = sqrt(2.0);
    xrs = 1.0/mag;
    xrc = 1.0/mag;
    XRotateMatrix(mmat,xrs,xrc);
    mag = sqrt(3.0);
    yrs = -1.0/mag;
    yrc = sqrt(2.0)/mag;
    YRotateMatrix(mmat,yrs,yrc);

/* shear the space to make the luminance plane horizontal */
    XFormPoint(mmat,kRLuminance,kGLuminance,kBLuminance,&lx,&ly,&lz);
    zsx = lx/lz;
    zsy = ly/lz;
    ZShearMatrix(mmat,zsx,zsy);

/* rotate the hue */
    zrs = sin(angle*pi/180.0);
    zrc = cos(angle*pi/180.0);
    ZRotateMatrix(mmat,zrs,zrc);

/* unshear the space to put the luminance plane back */
    ZShearMatrix(mmat,-zsx,-zsy);

/* rotate the grey vector back into place */
    YRotateMatrix(mmat,-yrs,yrc);
    XRotateMatrix(mmat,-xrs,xrc);

    MultiplyMatrix(mmat,matrix,matrix);
}

/* 
 *	xformpnt -	
 *		transform a 3D point using a matrix
 */
void XFormPoint(RGBMatrix matrix, float x, float y, float z, float* tx, float* ty, float* tz)
{
    *tx = x*matrix[0][0] + y*matrix[1][0] + z*matrix[2][0] + matrix[3][0];
    *ty = x*matrix[0][1] + y*matrix[1][1] + z*matrix[2][1] + matrix[3][1];
    *tz = x*matrix[0][2] + y*matrix[1][2] + z*matrix[2][2] + matrix[3][2];
}

void ApplyMatrix(RGBMatrix matrix, PixMapHandle pix)
{
	unsigned char* pixelData;
	int			numberOfBytes;
	int ir, ig, ib, r, g, b;
	
	pixelData = (unsigned char*)(**pix).baseAddr;
	
	numberOfBytes = ((**pix).bounds.bottom - (**pix).bounds.top) * ((**pix).rowBytes & 0x3FFF);
	
	for (int i=0; i < numberOfBytes; i+=4)
	{
		ir = pixelData[1];
		ig = pixelData[2];
		ib = pixelData[3];
		r = ir*matrix[0][0] + ig*matrix[1][0] + ib*matrix[2][0] + matrix[3][0];
		g = ir*matrix[0][1] + ig*matrix[1][1] + ib*matrix[2][1] + matrix[3][1];
		b = ir*matrix[0][2] + ig*matrix[1][2] + ib*matrix[2][2] + matrix[3][2];
		if(r<0) r = 0;
		if(r>255) r = 255;
		if(g<0) g = 0;
		if(g>255) g = 255;
		if(b<0) b = 0;
		if(b>255) b = 255;
		pixelData[1] = r;
		pixelData[2] = g;
		pixelData[3] = b;
		pixelData += 4;
	}
}
