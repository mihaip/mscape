// $Id$
// Base class for Windows icons, plus the supporting WinBitmapHeader struct
// Copyright ©1997-9 Matthew Caldwell -- All Rights Reserved

#include "CWinIcon.h"

//-----------------------------------------------------------------------------

// constructing a header fills in the fields and swaps the
// bytes to Windows order -- note that it also doubles the height
// since the height recorded here is actually the height of the
// image and mask combined (why? your guess is as good as mine)
WinBitmapHeader::WinBitmapHeader ( long imageWidth,
								   long imageHeight,
								   unsigned short paletteBits )
{
	headerSize = 40; UByteSwap::Swap( headerSize );
	width = imageWidth; UByteSwap::Swap( width );
	height = imageHeight * 2; UByteSwap::Swap( height );
	planes = 1; UByteSwap::Swap( planes );
	bitsPerPixel = paletteBits; UByteSwap::Swap( bitsPerPixel );
}

//-----------------------------------------------------------------------------

// dump header contents to a stream
void WinBitmapHeader::WriteToStream ( LStream* stream )
{
	unsigned long dummy = 0;
	
	*stream << headerSize << width << height << planes << bitsPerPixel
		<< dummy << dummy << dummy << dummy << dummy << dummy;
}
	
//-----------------------------------------------------------------------------

// initialize everything to zero
CWinIcon::CWinIcon()
{
	imageData = maskData = (unsigned char*) 0;
	imageWidth = imageHeight = imageBytes = maskBytes = paletteBits = 0;
}	

//-----------------------------------------------------------------------------

// dispose of the allocated image data, if any
CWinIcon::~CWinIcon()
{
	if ( imageData ) DisposePtr( (Ptr) imageData );
	if ( maskData ) DisposePtr ( (Ptr) maskData );
}

//-----------------------------------------------------------------------------

void CWinIcon::WriteToStream ( LStream* stream )
{
	// allocate a header on the stack
	WinBitmapHeader 	header( imageWidth, imageHeight, paletteBits );
	
	// write it
	header.WriteToStream( stream );
	
	// write the palette
	UWinPalettes::WritePalette ( paletteBits, *stream );
	
	// each row must end on a 4-byte boundary -- most sizes and depths
	// do anyway, but if the bit depth is 1 and the width is 16 we need
	// to pad the data with 2 extra NULL bytes
	
	// image data -- padded if 16x16 and b&w
	if ( imageWidth == 16 && paletteBits == 1 )
		WritePaddedImageToStream ( stream );
	else
		WriteImageDataToStream ( stream );
	
	// mask data -- padded if 16x16 (since it is always b&w)
	if ( imageWidth == 16 )
		WritePaddedMaskToStream ( stream );
	else
		WriteMaskDataToStream ( stream );
}

//-----------------------------------------------------------------------------

void CWinIcon::WriteImageDataToStream ( LStream* stream )
{
	// write the image data
	for ( long bytes = 0; bytes < imageBytes; bytes++ )
		*stream << imageData[ bytes ];
}

//-----------------------------------------------------------------------------

void CWinIcon::WritePaddedImageToStream ( LStream* stream )
{
	// write the image data with two 0x00 pad bytes after every
	// two data bytes
	unsigned short padding = 0;
	
	for ( long bytes = 0; bytes < imageBytes; bytes += 2 )
		*stream << imageData[ bytes ]
				<< imageData[ bytes + 1 ]
				<< padding;
}

//-----------------------------------------------------------------------------

void CWinIcon::WriteMaskDataToStream ( LStream* stream )
{
	// write the mask data
	for ( long bytes = 0; bytes < maskBytes; bytes++ )
		*stream << maskData[ bytes ];	
}

//-----------------------------------------------------------------------------

void CWinIcon::WritePaddedMaskToStream ( LStream* stream )
{
	// write the mask data with pad bytes, as above
	unsigned short padding = 0;
	
	for ( long bytes = 0; bytes < maskBytes; bytes += 2 )
		*stream << maskData[ bytes ]
				<< maskData[ bytes + 1 ]
				<< padding;
}	

//-----------------------------------------------------------------------------

// the write size depends on any added padding, which is why it
// isn't just inlined
unsigned short CWinIcon::GetWriteSize ( void )
{
	long imageWriteSize = ( imageWidth == 16 ) && ( paletteBits == 1 )
							? imageBytes * 2
							: imageBytes;
	long maskWriteSize = ( imageWidth == 16 )
							? maskBytes * 2
							: maskBytes;
	return	(
				40												// WIN3XBITMAPHEADER
				+ UWinPalettes::GetPaletteSize ( paletteBits )	// Palette
				+ imageWriteSize								// XorMap
				+ maskWriteSize									// AndMap
			);
}

//-----------------------------------------------------------------------------

// Mac & Windows use the mask differently: on the Mac, the image data is
// clipped by the mask and then copied into the destination pixmap; on
// Windows, the destination is ANDed with the mask, and the image is
// then XORed on top of that

// the consequence of this is that the mask fully defines the clipping
// transparency region on the Mac, but on Windows the image data must
// also cooperate -- masked areas that are black will be transparent,
// other colours will invert the background in some ugly way or other

// there are a couple of assumptions here which may need to be changed
// if it doesn't work:

// 	bits in the mask bytes are ordered from lowest to highest to
//	match pixels from left to right

//	nybbles are ordered similarly, ie, in a byte of 4-bit pixels,
//	the low-order nybble represents the left hand pixel, the high-order
//	nybbles represents the right-hand pixel

//	bit and nybble orders are interpreted the same on both platforms

//	the masked data is set to the index of black (which should be 0x1,
//	0xF or 0xFF depending on the palette depth)
//	(there are commented-out versions that do the reverse if this
//	proves to be wrong!)

void CWinIcon::CropToMask ( void )
{
	// for paletteBits == 1 this should be easy, since we just need
	// to OR the mask into the image, 8 bits at a time, and NOT the result
	if ( paletteBits == 1 )
	{
		for ( int i = 0; i < maskBytes; i++ )
		{
			// imageData[i] &= ~maskData[i];
			imageData[i] |= maskData[i];
			imageData[i] = ~(imageData[i]);
		}
	}

	// for paletteBits == 8, we deal with the imageData in whole bytes,
	// so again, not too hard (I hope)
	else if ( paletteBits == 8 )
	{
		for ( int maskIndex = 0; maskIndex < maskBytes; maskIndex++ )
		{
			for ( int bitIndex = 0; bitIndex < 8; bitIndex++ )
			{
				if ( (maskData[maskIndex]) & (0x01 << (7 - bitIndex)) )
				{
					// imageData[ maskIndex * 8 + bitIndex ] = 0;
					imageData[ maskIndex * 8 + bitIndex ] = 0xFF;
				}
			}
		}
	}		
	// for paletteBits == 4, we have to deal with the image data in
	// 4-bit nybbles
	else if ( paletteBits == 4 )
	{
		for ( int maskIndex = 0; maskIndex < maskBytes; maskIndex++ )
		{
			for ( int bitIndex = 0; bitIndex < 8; bitIndex++ )
			{
				if ( (maskData[maskIndex]) & (0x01 << (7 - bitIndex)) )
				{
					int pixIndex = maskIndex * 8 + bitIndex;
					if ( pixIndex % 2 )
						// imageData[ pixIndex / 2 ] &= 0x0F;
						imageData[ pixIndex / 2 ] |= 0x0F;
					else
						// imageData[ pixIndex / 2 ] &= 0xF0;
						imageData[ pixIndex / 2 ] |= 0xF0;
				}
			}
		}
	}
	// no other pixel depths are allowed, so if we've got one there's
	// been some mistake
	else
		throw EWinIcon ( 0 );
}

//-----------------------------------------------------------------------------

void CWinIcon::LoadData ( short resID, ResType resType, ResType maskType )
{
	OSErr	err;
	
	// check that the relevant fields have been filled out and that
	// all our required conditions are met (this is no guarantee,
	// but it should catch some obvious problems)
	if ( imageWidth == 0 || imageHeight == 0 || paletteBits == 0
		 || imageBytes == 0	|| maskBytes == 0
		 || ( paletteBits != 1 && paletteBits != 4 && paletteBits != 8 )
		 || ( imageWidth % 8 != 0 ) )
		throw EWinIcon ( 0 );
	
	// allocate memory for the image data
	imageData = (unsigned char*) NewPtr ( imageBytes );
	if ( imageData == nil )
		throw EWinIcon( MemError() );
	
	maskData = (unsigned char*) NewPtr ( maskBytes );
	if ( maskData == nil )
	{
		err = MemError();
		DisposePtr ( (Ptr) imageBytes );
		imageBytes = nil;
		throw EWinIcon ( err );
	}
	
	// attempt to get the icon resource with the appropriate type & ID
	Handle	icon = Get1Resource ( resType, resID );
	
	if ( icon == nil || ( err = ResError() ) != noErr )
	{
		DisposePtr ( (Ptr) imageData );
		DisposePtr ( (Ptr) imageData );
		imageData = maskData = nil;
		
		throw EWinIcon ( err );
	}
	
	// we should now have the icon handle in icon, so lock it down and
	// deref for a pointer
	HLock ( icon );
	unsigned char* data = (unsigned char*) *icon;
	
	// data is stored in rows from the bottom to the top in Windows
	// (the opposite of the Mac method) so we have to reverse them
	
	int rows, cols;
	int rowWidth = imageWidth * paletteBits / 8;
	
	// copy the image data from the resource row by row
	for ( rows = 0; rows < imageHeight; rows++ )
	{
		for ( cols = 0; cols < rowWidth; cols++ )
		{
			*( imageData + rows * rowWidth + cols )
				= *( data + ( imageHeight - rows - 1 ) * rowWidth + cols );
		}
	}
	
	// the image and mask data may both reside in the same resource (they
	// do for ICN#, ics# and icm# types), in which case we don't need to
	// load a new resource, we just keep the one we have
	if ( resType != maskType )
	{
		// unlock and release the resource
		data = nil;
		HUnlock ( icon );
		ReleaseResource( icon );
	
		// so far so good; now attempt to get the mask resource
		icon = Get1Resource ( maskType, resID );
		
		if ( icon == nil || ( err = ResError() ) != noErr )
		{
			DisposePtr ( (Ptr) imageData );
			DisposePtr ( (Ptr) maskData );
			imageData = maskData = nil;
			
			throw EWinIcon ( err );
		}
		
		// lock and load
		HLock ( icon );
		data = (unsigned char*) *icon;
	}
	
	// copy the mask data across (this is stored in the bottom half of the
	// resource, and again we want to invert the row order, plus we also
	// need to invert the bits of the mask because the 1s and 0s are used
	// for opposite purposes on the two platforms (for fuck's sake!))
	rowWidth = imageWidth / 8;
	
	for ( rows = 0; rows < imageHeight; rows++ )
	{
		for ( cols = 0; cols < rowWidth; cols++ )
		{
			*( maskData + rows * rowWidth + cols )
				= ~(*( data + ( 2 * imageHeight - rows - 1 ) * rowWidth + cols ));
		}
	}
	
	// release the resource
	data = nil;
	HUnlock ( icon );
	ReleaseResource ( icon );
	
	// et voila!

}

//-----------------------------------------------------------------------------

