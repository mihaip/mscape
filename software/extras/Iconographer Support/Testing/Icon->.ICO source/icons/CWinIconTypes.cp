// $Id$
// Constructors for all the specific Windows icon classes
// Copyright ©1997-9 Matthew Caldwell -- All Rights Reserved


#include "CWinIconTypes.h"

//-----------------------------------------------------------------------------

CWinICL8::CWinICL8 ( short resID )
{	
	// fill out the relevant CWinIcon fields
	imageWidth = imageHeight = 32;
	paletteBits = 8;
	
	imageBytes = imageHeight * imageWidth;
	maskBytes = imageBytes / 8;
	
	// invoke the superclass methods to load and crop the data
	LoadData( resID, 'icl8', 'ICN#' );
	CropToMask();
}

//-----------------------------------------------------------------------------

CWinICL4::CWinICL4 ( short resID )
{	
	// fill out the relevant CWinIcon fields
	imageWidth = imageHeight = 32;
	paletteBits = 4;
	
	imageBytes = imageHeight * imageWidth / 2;
	maskBytes = imageBytes / 4;
	
	// invoke the superclass methods to load and crop the data
	LoadData( resID, 'icl4', 'ICN#' );
	CropToMask();
}

//-----------------------------------------------------------------------------

CWinICNX::CWinICNX ( short resID )
{	
	// fill out the relevant CWinIcon fields
	imageWidth = imageHeight = 32;
	paletteBits = 1;
	
	imageBytes = imageHeight * imageWidth / 8;
	maskBytes = imageBytes;
	
	// invoke the superclass methods to load and crop the data
	LoadData( resID, 'ICN#', 'ICN#' );
	CropToMask();
}

//-----------------------------------------------------------------------------

CWinICS8::CWinICS8 ( short resID )
{	
	// fill out the relevant CWinIcon fields
	imageWidth = imageHeight = 16;
	paletteBits = 8;
	
	imageBytes = imageHeight * imageWidth;
	maskBytes = imageBytes / 8;
	
	// invoke the superclass methods to load and crop the data
	LoadData( resID, 'ics8', 'ics#' );
	CropToMask();
}

//-----------------------------------------------------------------------------

CWinICS4::CWinICS4 ( short resID )
{	
	// fill out the relevant CWinIcon fields
	imageWidth = imageHeight = 16;
	paletteBits = 4;
	
	imageBytes = imageHeight * imageWidth / 2;
	maskBytes = imageBytes / 4;
	
	// invoke the superclass methods to load and crop the data
	LoadData( resID, 'ics4', 'ics#' );
	CropToMask();
}

//-----------------------------------------------------------------------------

CWinICSX::CWinICSX ( short resID )
{	
	// fill out the relevant CWinIcon fields
	imageWidth = imageHeight = 16;
	paletteBits = 1;
	
	imageBytes = imageHeight * imageWidth / 8;
	maskBytes = imageBytes;
	
	// invoke the superclass methods to load and crop the data
	LoadData( resID, 'ics#', 'ics#' );
	CropToMask();
}

//-----------------------------------------------------------------------------

