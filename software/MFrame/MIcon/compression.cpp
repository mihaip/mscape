#include "compression.h"

// __________________________________________________________________________________________
// Name			: CompressPixMap
// Input		: srcPix: a pixMapHandle to the source data, needs to be in 32 bits/pixel
// Output		: target: a newly allocated memory block containing the compressed data
//				  targetSize: the size of the allocated data;
// Description	: takes the 32 bit data of an pixmap and uses run-length compression on it
//				  the result is stored in a bunch of arrays.

OSStatus CompressPixMap(PixMapHandle srcPix, char** target, long *targetSize)
{
	OSErr err;
	switch ((**srcPix).pixelSize)
	{
		case 32:
			err = CompressPixMap32(srcPix, target, targetSize);
			break;
		default:
			int sourceSize;
			
			sourceSize = ((**srcPix).rowBytes & 0x3FFF) * ((**srcPix).bounds.bottom - (**srcPix).bounds.top);
			
			*target = NewPtr(sourceSize + 1 + sourceSize/64);
			
			if (*target == NULL)
				err = memFullErr;
			else
			{
				err = noErr;
				PackData((unsigned char*)(**srcPix).baseAddr, sourceSize, (unsigned char*)*target, targetSize);
				SetPtrSize(*target, *targetSize);
			}
			break;
	}
	
	return err;
}

OSStatus CompressPixMap32(PixMapHandle srcPix, char** target, long *targetSize)
{			
	unsigned char	*red, *green , *blue, // arrays for the uncompressed RGB data
					*redC, *greenC, *blueC; // the compressed RGB data
	unsigned long   sourceSize; // the size of the source
	Rect			srcBounds; // the bounds of the source
	long			redSize, greenSize, blueSize; // the compressed sizes
	unsigned long*	sourceData; // used to go through the pixel data of the source to extract the
							   // RGB values
	unsigned long	pixel32; // the current pixel in the source
	
	// setting up the variables
	srcBounds = (**srcPix).bounds;
	sourceSize = ((**srcPix).rowBytes & 0x3FFF) * (srcBounds.bottom - srcBounds.top);
	
	// the source contains 4 channels (Red, Green, Blue and Alpha, so each channel is 1/4 the
	// size of the whole thing)
	red = (unsigned char*)NewPtr(sourceSize/4); if (red == NULL) return memFullErr;
	green = (unsigned char*)NewPtr(sourceSize/4); if (green == NULL) return memFullErr;
	blue = (unsigned char*)NewPtr(sourceSize/4); if (blue == NULL) return memFullErr;
	
	// the maximum size of the compressed data is as big as the source and then some
	redC = (unsigned char*)NewPtr((sourceSize/4) + (sourceSize/256)); if (redC == NULL) return memFullErr;
	greenC = (unsigned char*)NewPtr(sourceSize/4 + (sourceSize/256)); if (greenC == NULL) return memFullErr;
	blueC = (unsigned char*)NewPtr(sourceSize/4 + (sourceSize/256)); if (blueC == NULL) return memFullErr;
	
	// we start at the base address
	sourceData = (unsigned long *)(*srcPix)->baseAddr;
	
	// and go through each pixel..
	for (long i=0; i < sourceSize/4; i++)
	{
		// and get the RGB value
		pixel32 = sourceData[i];
		red[i] = (pixel32 >> 16) & 0xFF;
		green[i] = (pixel32 >> 8) & 0xFF;
		blue[i] = (pixel32 >> 0) & 0xFF;
	}
	
	// then we compress the data
	PackData(red, sourceSize/4, redC, &redSize);
	PackData(green, sourceSize/4, greenC, &greenSize);
	PackData(blue, sourceSize/4, blueC, &blueSize);
	
	// determine the final size
	*targetSize = redSize + greenSize + blueSize;
	
	// allocate memory for the compressed merged data
	*target = NewPtr(*targetSize); if (target == NULL) return memFullErr;
	
	// and merge the RGB arrays
	BlockMove(redC, &(*target)[0], redSize);
	BlockMove(greenC, &(*target)[redSize], greenSize);
	BlockMove(blueC, &(*target)[redSize + greenSize], blueSize);
	
	// we're done with them, so we can dispose
	DisposePtr((char*)red);
	DisposePtr((char*)green);
	DisposePtr((char*)blue);
	DisposePtr((char*)redC);
	DisposePtr((char*)greenC);
	DisposePtr((char*)blueC);
	
	return noErr; // we got through just fine
}

// __________________________________________________________________________________________
// Name			: PackData
// Input		: source: an array of chars
//				  sourceSize: length in bytes of source data
// Output		: output: data compressed with a run-legnth algorithm
//				  outputSize: lenght in bytes of compressed data
// Description	: this function does a simple run-length compression (RLE). RLE works best with 
//				  large flat areas, and icons often have that, so this is why the system display
//				  functions support it. Here's a basic description of the format: a char n
//				  describes the pixels that follow it: if n <= 127, then the next n + 2 chars are
//				  to be copied as they are, else the next char is to be repeated n - 125 times
//				  (the 127 boundary is because that symbolizes the sign bit in a char)

void PackData(unsigned char* source, long sourceSize, unsigned char* output, long* outputSize)
{
	long sourceCursor=0, // keeps track of where we are in the source
		 outputCursor=0, // keeps track of where we are in the compressed data
		 currentPosition; // marker used to go from/to between repeat areas and "copy as is" areas
	unsigned char commonValue;
	
	while (sourceCursor < sourceSize)
	// while we still have data
	{	
		// we try to find a repeating are
		for (currentPosition = sourceCursor;
			((currentPosition < sourceSize - 2) &&
			(source[currentPosition] != source[currentPosition + 1] ||
			 source[currentPosition + 1] != source[currentPosition + 2])) ||
			(currentPosition >= sourceSize - 2 && currentPosition < sourceSize);
			currentPosition++){;}
		// 3 or more identical bytes start at currentPosition or less than 2 pixels left
		// sourceCursor..currentPosition - 1 copy as is
		
		if (sourceCursor < currentPosition) // non-empty "copy as is" area
		{
			while (currentPosition - sourceCursor > 0) // we just copy it as it is
			{
				int areaCount;
				
				areaCount = currentPosition - sourceCursor;
				
				if (areaCount > 128) areaCount = 128;
				
				output[outputCursor++] = (unsigned char) (areaCount - 1);
				
				for(int i=0; i < areaCount; i++)
					output[outputCursor++] = source[sourceCursor++];
				
			}
			if (sourceCursor != currentPosition)
			{
				// gross incosistency, we didn't copy as much as we were supposed to, we should
				// bail out since otherwise we might be writing over areas in memory which don't
				// belong to us. this should only happen if the source is corrupted somehow
				ExitToShell();
			}
		}
		
		// if we have more than 2 pixels left, then we can use the repeat area 
		if (sourceCursor < sourceSize - 2)
		{
			commonValue = source[sourceCursor];
			
			for (currentPosition = sourceCursor + 3;
				(currentPosition < sourceSize) && (commonValue == source[currentPosition]);
				currentPosition++){;}
			
			// sourceCursor..currentPosition - 1 is repeat area
			
			while ((currentPosition - sourceCursor) > 0)
			{
				int areaCount;
				
				areaCount = currentPosition - sourceCursor;
				
				if (areaCount > (127 + 3)) areaCount = 127 + 3;
				// if we have more than 127 + 3 pixels repeated, then we must divide it up into
				// chunks
				
				if (areaCount == 1 || areaCount == 2)
				// if we have one or two pixels left, then we should copy them as is
				{
					output[outputCursor++] = areaCount - 1;
					for (int i=0; i < areaCount; i++)
						output[outputCursor++] = commonValue;
				}
				else // otherwise we just write in the number of times it should be repeated
				{
					output[outputCursor++] = (unsigned char) (areaCount + (128 - 3));
					
					output[outputCursor++] = commonValue;
				}
				sourceCursor += areaCount;
			}
		} 
		if (sourceCursor != currentPosition)
		{
			// again, a gross inconsistency
			ExitToShell();
		}
	}
	
	(*outputSize) = outputCursor;
}

// __________________________________________________________________________________________
// Name			: DecompressToPixMap
// Input		: source: an array of chars with the source compressed pixel data (all three
//				  channels)
// Output		: targetPix: a pixMap (assumed to be already allocated) containing the
//				  decompressed pixel data
// Description	: decompresses  RLE encoded pixel data and puts the result into a pixmap,
//				  so that it's ready for manipulation, CopyBits, etc.
// Notes		: We assume that the size of the target pixmap matches the size of the
//				  decompressed data

OSStatus DecompressToPixMap(unsigned char *source, PixMapHandle targetPix)
{
	OSErr err;
	switch ((**targetPix).pixelSize)
	{
		case 32: err = DecompressToPixMap32(source, targetPix); break;
		default:
			int targetSize;
			unsigned char* temp;
			
			targetSize = ((**targetPix).rowBytes & 0x3FFF) * ((**targetPix).bounds.bottom - (**targetPix).bounds.top);
			
			temp = source;
			
			UnpackData(&temp, (unsigned char*)(**targetPix).baseAddr, targetSize);
			break;
	}
	
	return err;
}

OSStatus DecompressToPixMap32(unsigned char *source, PixMapHandle targetPix)
{
	unsigned char*	data; // the compressed data
	unsigned long   targetSize; // the size of the expanded data
	Rect			targetBounds; // the dimensions of the expanded data
	unsigned char	*red, *green, *blue; // the decompressed channels, which we must merge
	
	// setting up these variables
	targetBounds = (**targetPix).bounds;
	targetSize = ((**targetPix).rowBytes & 0x3FFF) * (targetBounds.bottom - targetBounds.top);
	
	// we start at the source
	data = source;
	
	// make the channel arrays
	red = (unsigned char*)NewPtr(targetSize/4); if (red == NULL) return memFullErr;
	green = (unsigned char*)NewPtr(targetSize/4); if (green == NULL) return memFullErr;
	blue = (unsigned char*)NewPtr(targetSize/4); if (blue == NULL) return memFullErr;
	
	// we decompress the data (each channel is separated)
	UnpackData(&data, red, targetSize/4);
	UnpackData(&data, green, targetSize/4);
	UnpackData(&data, blue, targetSize/4);
	
	// and then we merge the three chanels
	for (long i = 0; i < targetSize/4; i++)
		((long *)(*targetPix)->baseAddr)[i] = (((unsigned long)red[i])		<< 16) +
											  (((unsigned long)green[i])	<< 8) +
											  (((unsigned long)blue[i])		<< 0);
	// we're done with these	
	DisposePtr((char*)red);
	DisposePtr((char*)green);
	DisposePtr((char*)blue);
	
	return noErr;
}

// __________________________________________________________________________________________
// Name			: UnpackData
// Input		: source: an array of chars with the source compressed data
//				  final size: the size of the final, uncompressed data, so that we know when
//				  to stop
// Output		: target: an array where the decompressed data will be put
// Description	: uses the RLE algorithm (described above) to expand compressed data
// Notes		: the source pointer is moved to the end of the data, this is because in most
//				  cases the three channels (Red, Green, Blue) are one after another

void UnpackData(unsigned char** source, unsigned char* target, int finalSize)
{
	int targetCursor=0, // keeping track of where we are in the expanded data
		sourceCursor=0; // and in the compressed data
	unsigned char end; // used to mark where we will have to stop
	
	while (targetCursor < finalSize)
	// while there is data
	{
		if ((*source)[sourceCursor] <= 127)
		// if we have to copy as is...
		{
			// we do so
			end = (*source)[sourceCursor++] + 1;
			for (int i=0; i < end && targetCursor < finalSize; i++)
				target[targetCursor++] = (*source)[sourceCursor++];
		}
		else
		{
			// otherwise we have a repeat area
			end = (*source)[sourceCursor++] - 125;
			for (int i=0; i < end && targetCursor < finalSize; i++)
				target[targetCursor++] = (*source)[sourceCursor];
			sourceCursor++;
		}
	}
	
	(*source) += sourceCursor;
	// we move the source pointer so that it points to the next set of data (if any)
}

