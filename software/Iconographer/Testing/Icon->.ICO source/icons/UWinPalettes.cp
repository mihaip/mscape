// $Id$
// Utility class to handle the Mac system palettes in Windows icons
// Copyright ©1997-9 Matthew Caldwell -- All Rights Reserved

//  maintains a set of data structures representing Windows colour palettes
//  equivalent to the Mac 1, 4 and 8 bit system palettes used for icons

//	provides static methods for initializing, writing to a file or
//	stream and getting the size of these palettes (may later also
//	provide methods for remapping colours to these palettes from
//  other ones, but let's keep it simple for now...)

//---------------------------------------------------------------------------------------------

#include "UWinPalettes.h"

//---------------------------------------------------------------------------------------------

// constants

const int kSystemPalette4Bit = 68;
const int kSystemPalette8Bit = 72;

//---------------------------------------------------------------------------------------------

// static data structures

RGBQuad UWinPalettes::pal1Bit[2];
RGBQuad UWinPalettes::pal4Bit[16];
RGBQuad UWinPalettes::pal8Bit[256];

//---------------------------------------------------------------------------------------------

// initializer -- uses the standard system palette CLUT resources
// to set up the stored palettes
void UWinPalettes::Initialize ( void )
{
	CTabHandle table;
	int i;
	
	// we can do the 1 bit palette by hand, since it's just black & white
	pal1Bit[0].SetColour ( 0, 0, 0 );
	pal1Bit[1].SetColour ( 0xFF, 0xFF, 0xFF );
	
	// do the 4-bit palette
	table = ::GetCTable ( kSystemPalette4Bit );
	for ( i = 0; i < 16; i++ )
	{
		pal4Bit[i].SetColour( (**table).ctTable[i].rgb );
	}
	
	::DisposeCTable ( table );
	
	// likewise for the 8-bit
	table = ::GetCTable ( kSystemPalette8Bit );
	for ( i = 0; i < 256; i++ )
	{
		pal8Bit[i].SetColour( (**table).ctTable[i].rgb );
	}
	
	::DisposeCTable ( table );
}

//---------------------------------------------------------------------------------------------

// our palettes are all fixed sizes (4 bytes per colour), so this is easy
short UWinPalettes::GetPaletteSize ( short bitDepth )
{
	switch ( bitDepth )
	{
		case 1:
			return 8;
		case 4:
			return 64;
		case 8:
			return 1024;
		default:
			return 0;
	}
}

//---------------------------------------------------------------------------------------------

// output
void UWinPalettes::WritePalette ( short bitDepth, LStream& stream )
{
	int i;
	
	switch ( bitDepth )
	{
		case 1:
			pal1Bit[0].WriteToStream ( stream );
			pal1Bit[1].WriteToStream ( stream );
			break;
		case 4:
			for ( i = 0; i < 16; i++ )
				pal4Bit[i].WriteToStream ( stream );
			break;
		case 8:
			for ( i = 0; i < 256; i++ )
				pal8Bit[i].WriteToStream ( stream );
	}
}

//---------------------------------------------------------------------------------------------
void UWinPalettes::WritePalette ( short bitDepth, short file )
{
	int i;
	
	switch ( bitDepth )
	{
		case 1:
			pal1Bit[0].WriteToFile ( file );
			pal1Bit[1].WriteToFile ( file );
			break;
		case 4:
			for ( i = 0; i < 16; i++ )
				pal4Bit[i].WriteToFile ( file );
			break;
		case 8:
			for ( i = 0; i < 256; i++ )
				pal8Bit[i].WriteToFile ( file );
	}
}

//---------------------------------------------------------------------------------------------

