// $Id$
// Base class for Windows icons, plus the supporting WinBitmapHeader struct
// Copyright ©1997-9 Matthew Caldwell -- All Rights Reserved


#ifndef	__CWinIcon_h__
#define __CWinIcon_h__

//-----------------------------------------------------------------------------

#include "UWinPalettes.h"
#include "UByteSwap.h"

//-----------------------------------------------------------------------------

struct WinBitmapHeader
{
	
	WinBitmapHeader ( long imageWidth,
					  long imageHeight,
					  unsigned short paletteBits );
					  
	void	WriteToStream ( LStream* stream );
	
	// only maintain the significant fields -- last 24 bytes are all 0
	unsigned long	headerSize;
	long			width;
	long			height;
	unsigned short	planes;
	unsigned short	bitsPerPixel;
};

//-----------------------------------------------------------------------------

// exceptions thrown by CWinIcon
class EWinIcon
{
	public:
		EWinIcon ( int err );
		
		int error;
};

inline EWinIcon::EWinIcon ( int err ) { error = err; }

//-----------------------------------------------------------------------------

class CWinIcon
{
	// this is an abstract base class that cannot be instantiated directly
	protected:
		// birth & death
		CWinIcon ();
		
	public:
		virtual ~CWinIcon ();
	
		// output
		void WriteToStream ( LStream* stream );
		
		// data may need to be padded for some sizes
		void WriteImageDataToStream ( LStream* stream );
		void WritePaddedImageToStream ( LStream* stream );
		void WriteMaskDataToStream ( LStream* stream );
		void WritePaddedMaskToStream ( LStream* stream );
		
		// provide info for constructing the header
		unsigned short GetWriteSize ( void );
		unsigned short GetDataSize ( void );
		unsigned short GetHeight ( void );
		unsigned short GetWidth ( void );
		unsigned short GetPaletteSize ( void );
		unsigned short GetPaletteBits ( void );

	protected:
		// the actual data comprising the icon image & mask
		unsigned char*	imageData;
		unsigned char*	maskData;
		
		// methods to allocate and load the image and mask
		// and to crop the image to the mask
		void LoadData ( short resID, ResType resType, ResType maskType );
		void CropToMask ( void );
		
		// details of the image
		unsigned short	imageWidth;
		unsigned short	imageHeight;
		unsigned short	imageBytes;
		unsigned short	maskBytes;
		
		// details of the palette
		unsigned short	paletteBits;
};

typedef CWinIcon* CWinIconPtr;

//-----------------------------------------------------------------------------

// inlines
inline unsigned short CWinIcon::GetDataSize ( void ) { return imageBytes + maskBytes; }

inline unsigned short CWinIcon::GetHeight ( void ) { return imageHeight; }
inline unsigned short CWinIcon::GetWidth ( void ) { return imageWidth; }

inline unsigned short CWinIcon::GetPaletteSize ( void )
	{ return UWinPalettes::GetPaletteSize ( paletteBits ); }
inline unsigned short CWinIcon::GetPaletteBits ( void ) { return paletteBits; }

//-----------------------------------------------------------------------------

#endif // __CWinIcon_h__
