// __________________________________________________________________________________________
// Program		: Icon Mangler
// Filename		: compression.h (C)
// Author		: Mihai Parparita (St. Mary's International School)
// Last modified: April 1, 1999
// Description	: compression/decompression function prototypes

#pragma once

OSStatus CompressPixMap(PixMapHandle srcPix, char** target, long *targetSize);
void PackData(unsigned char* source, long sourceSize, unsigned char* output, long* outputSize);
OSStatus DecompressToPixMap(unsigned char *source, PixMapHandle targetPix);
void UnpackData(unsigned char** source, unsigned char* target, int finalSize);
