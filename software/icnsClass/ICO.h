#pragma once

typedef struct tagBITMAPINFOHEADER
{    
    unsigned long  biSize;          // size of structure, in bytes
    unsigned long  biWidth;         // bitmap width, in pixels
    unsigned long  biHeight;        // bitmap height, in pixels
    unsigned short   biPlanes;        // see below
    unsigned short   biBitCount;      // see below
    unsigned long  biCompression;   // see below
    unsigned long  biSizeImage;     // see below
    unsigned long  biXPelsPerMeter; // see below
    unsigned long  biYPelsPerMeter; // see below
    unsigned long  biClrUsed;       // see below
    unsigned long  biClrImportant;  // see below
} BITMAPINFOHEADER;

typedef struct tagRGBQUAD
{
	unsigned char rgbBlue;
	unsigned char rgbGreen;
	unsigned char rgbRed;
	unsigned char rgbReserved;
} RGBQUAD;

typedef struct
{
   BITMAPINFOHEADER   icHeader;      // DIB header
   RGBQUAD*           icColors;   // Color table
   unsigned char*            icXOR;      // DIB bits for XOR mask (pixel data)
   unsigned char*            icAND;      // DIB bits for AND mask (mask data)
} ICONIMAGE, *LPICONIMAGE;

typedef struct
{
    unsigned char       bWidth;          // Width, in pixels, of the image
    unsigned char       bHeight;         // Height, in pixels, of the image
    unsigned char       bColorCount;     // Number of colors in image (0 if >=8bpp)
    unsigned char       bReserved;       // Reserved ( must be 0)
    unsigned short      wPlanes;         // Color Planes
    unsigned short      wBitCount;       // Bits per pixel
    unsigned long       dwBytesInRes;    // How many bytes in this resource?
    unsigned long       dwImageOffset;   // Where in the file is this image?
    ICONIMAGE*			iconImage;
} ICONDIRENTRY, *LPICONDIRENTRY;

typedef struct
{
    unsigned short           idReserved;   // Reserved (must be 0)
    unsigned short           idType;       // Resource Type (1 for icons)
    unsigned short           idCount;      // How many images?
    ICONDIRENTRY*   		 idEntries; // An entry for each image (idCount of 'em)
} ICONDIR, *LPICONDIR;

void LoadIconDirFromFile(ICONDIR* iconDir, FSSpec srcFileSpec);
void AddICOMember(short file, int width,int height, int colorCount, long* dataOffset, int bps, CTabHandle colorTable, PixMapHandle iconPix, PixMapHandle maskPix);
