// $Id$
// Utility class to handle the Mac system palettes in Windows icons
// Copyright ©1997-9 Matthew Caldwell -- All Rights Reserved

//	interface for the UWinPalettes utility class, which maintains a set
//	of data structures representing Windows colour palettes equivalent
//	to the Mac 1, 4 and 8 bit system palettes used for icons

//	provides static methods for initializing, writing to a file or
//	stream and getting the size of these palettes (may later also
//	provide methods for remapping colours to these palettes from
//  other ones, but let's keep it simple for now...)

#ifndef __UWinPalettes_h__
#define __UWinPalettes_h__

//-----------------------------------------------------------------------------

// exceptions thrown by UWinPalettes
class EWinPalettes
{
	public:
		EWinPalettes ( int err );
		
		int error;
};

inline EWinPalettes::EWinPalettes ( int err ) { error = err; }

//-----------------------------------------------------------------------------

// RGBQuad is a class representing the Windows RGBQUAD structure and allowing
// conversion between that and the Macintosh RGBColor -- note that despite the
// name, it doesn't store the fourth byte, which is Windows ignores anyway --
// it simply writes '/0' for that when it writes

//---------------------------------------------------------------------------------------------

class RGBQuad
{
	public:
	
		RGBQuad();
		RGBQuad( unsigned char r,
				 unsigned char g,
				 unsigned char b );
		RGBQuad( RGBColor col );
		
		void SetColour ( unsigned char r,
						 unsigned char g,
						 unsigned char b );
		void SetColour ( RGBColor col );
		
		RGBColor GetColour ( void );
		void WriteToStream ( LStream& stream );
		void WriteToFile ( short fileRef );
		
		unsigned char red;
		unsigned char blue;
		unsigned char green;
};

//---------------------------------------------------------------------------------------------

// all RGBQuads methods are inline, since it's all pretty simple
inline RGBQuad::RGBQuad() { red = green = blue = 0; }
inline RGBQuad::RGBQuad( unsigned char r, unsigned char g, unsigned char b )
	{ red = r; green = g; blue = b; }
inline RGBQuad::RGBQuad( RGBColor col )
	{ red = (unsigned char) (col.red >> 8);
	  green = (unsigned char) (col.green >> 8);
	  blue = (unsigned char) (col.blue >> 8); }

inline void RGBQuad::SetColour ( unsigned char r, unsigned char g, unsigned char b )
	{ red = r; green = g; blue = b; }
inline void RGBQuad::SetColour ( RGBColor col )
	{ red = (unsigned char) (col.red >> 8);
	  green = (unsigned char) (col.green >> 8);
	  blue = (unsigned char) (col.blue >> 8); }

inline RGBColor RGBQuad::GetColour ( void )
{
	RGBColor retval;
	retval.red = ((int) red ) << 8;
	retval.green = ((int) green ) << 8;
	retval.blue = ((int) blue ) << 8;
	return retval;
}

// write to a file or stream
inline void RGBQuad::WriteToStream ( LStream& stream )
{
	unsigned char dummy = 0;
	stream << blue << green << red << dummy;
}

// this is rather long & unwieldy to be inlined, but what the fuck...
inline void RGBQuad::WriteToFile ( short fileRef )
{
	long bytes = 1;
	unsigned char dummy = 0;
	
	OSErr err = ::FSWrite ( fileRef, &bytes, &blue );
	if ( err != noErr ) throw EWinPalettes ( err );
	
	bytes = 1;
	err = ::FSWrite ( fileRef, &bytes, &green );
	if ( err != noErr ) throw EWinPalettes ( err );
	
	bytes = 1;
	err = ::FSWrite ( fileRef, &bytes, &red );
	if ( err != noErr ) throw EWinPalettes ( err );
	
	bytes = 1;
	err = ::FSWrite ( fileRef, &bytes, &dummy );
	if ( err != noErr ) throw EWinPalettes ( err );
}

//---------------------------------------------------------------------------------------------

class UWinPalettes
{
	public:
	
		static void Initialize( void );
		
		static short GetPaletteSize ( short bitDepth );
		
		static void WritePalette ( short bitDepth,
								   LStream& stream );
		static void WritePalette ( short bitDepth,
								   short file );
								  
	protected:
	
		static RGBQuad		pal1Bit[2];
		static RGBQuad		pal4Bit[16];
		static RGBQuad		pal8Bit[256];
};

//---------------------------------------------------------------------------------------------

#endif  // __UWinPalettes_h__

