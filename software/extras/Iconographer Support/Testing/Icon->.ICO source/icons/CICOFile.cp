// $Id$
// Class to write .ICO files, plus supporting classes
// Copyright ©1997-9 Matthew Caldwell -- All Rights Reserved

//--------------------------------------------------------------------------

//#include <CursorCtl.h>

#include "CICOFile.h"
#include "CWinIconTypes.h"

//--------------------------------------------------------------------------

struct ICOHeader
{
	unsigned short reserved;
	unsigned short resType;
	unsigned short iconCount;
	
	ICOHeader( unsigned short numIcons = 0 );
	
	void WriteToStream ( LStream* stream );
};

//--------------------------------------------------------------------------

ICOHeader::ICOHeader( unsigned short numIcons )
{
	reserved = 0;
	resType = 1; UByteSwap::Swap( resType );
	iconCount = numIcons;
}

//--------------------------------------------------------------------------

void ICOHeader::WriteToStream ( LStream* stream )
{
	unsigned short temp = iconCount;
	UByteSwap::Swap(temp);
	
	*stream << reserved << resType << temp;
}

//--------------------------------------------------------------------------

struct IconEntry
{
	unsigned char	width;
	unsigned char	height;
	unsigned char	numColors;
	unsigned char	reserved;
	unsigned short	numPlanes;
	unsigned short	bitsPerPixel;
	unsigned long	dataSize;
	unsigned long	dataOffset;
	
	IconEntry();
	IconEntry( CWinIcon& icon );
	
	void WriteToStream ( LStream* stream );
};

typedef IconEntry* IconEntryPtr;

//--------------------------------------------------------------------------

inline IconEntry::IconEntry()
{
	width = height = numColors = reserved = 0;
	numPlanes = bitsPerPixel = 0;
	dataSize = dataOffset = 0;
}

//--------------------------------------------------------------------------

inline IconEntry::IconEntry( CWinIcon& icon )
{
	width = icon.GetWidth();
	height = icon.GetHeight();
	switch ( icon.GetPaletteBits() )
	{
		case 1: numColors = 2; break;
		case 4: numColors = 16; break;
		default: numColors = 0;
	}
	reserved = 0;
	numPlanes = bitsPerPixel = 0;
	dataSize = icon.GetWriteSize();
	dataOffset = 0;
}

//--------------------------------------------------------------------------

void IconEntry::WriteToStream ( LStream* stream )
{
	unsigned long size = dataSize; UByteSwap::Swap( size );
	unsigned long offset = dataOffset; UByteSwap::Swap( offset );
	
	*stream << width << height << numColors << reserved
		<< numPlanes << bitsPerPixel << size << offset;
}

//--------------------------------------------------------------------------

CICOFile::CICOFile ( short resID,
				     Str255 resName,
				     int vRefNum,
				     long parID,
				     Boolean spinCursor )
{
	// create icon objects for all the icons in the family, build
	// the directory and write the whole lot to a file
	const int kHeaderSize = 6;
	const int kIconEntrySize = 16;
	
	// only create file after we've actually succeeded in creating icons
	file = nil;
	
	// there may be as many as 6 icons in a family
	IconEntryPtr	entries[6];
	CWinIconPtr		icons[6];
	int				numIcons = 0, i;
	ICOHeader		header;
	
	// attempt to create all the icons, counting number of successes
	try
	{
		icons[ numIcons ] = new CWinICNX ( resID );
		entries [ numIcons ] = new IconEntry ( *(icons[ numIcons ]) );
		numIcons++;
	}
	catch ( EWinIcon e )
	{
	}
	try
	{
		icons[ numIcons ] = new CWinICL8 ( resID );
		entries [ numIcons ] = new IconEntry ( *(icons[ numIcons ]) );
		numIcons++;
	}
	catch ( EWinIcon e )
	{
	}
	try
	{
		icons[ numIcons ] = new CWinICL4 ( resID );
		entries [ numIcons ] = new IconEntry ( *(icons[ numIcons ]) );
		numIcons++;
	}
	catch ( EWinIcon e )
	{
	}
	try
	{
		icons[ numIcons ] = new CWinICSX ( resID );
		entries [ numIcons ] = new IconEntry ( *(icons[ numIcons ]) );
		numIcons++;
	}
	catch ( EWinIcon e )
	{
	}
	try
	{
		icons[ numIcons ] = new CWinICS8 ( resID );
		entries [ numIcons ] = new IconEntry ( *(icons[ numIcons ]) );
		numIcons++;
	}
	catch ( EWinIcon e )
	{
	}
	try
	{
		icons[ numIcons ] = new CWinICS4 ( resID );
		entries [ numIcons ] = new IconEntry ( *(icons[ numIcons ]) );
		numIcons++;
	}
	catch ( EWinIcon e )
	{
	}

	// bail out if we didn't manage to create any icons -- this probably
	// shouldn't happen, since we've already checked the presence of at
	// least an ICN# in order to get the resID in the first place, but you
	// never can tell...
	if ( numIcons == 0 )
		throw EWinIcon( 0 );

	header.iconCount = numIcons;
	
	// create the directory
	int buildUp = 0;
	int directorySize = numIcons * kIconEntrySize;
	
	for ( i = 0; i < numIcons; i++ )
	{
		entries[i]->dataOffset = kHeaderSize + directorySize + buildUp;
		buildUp += icons[i]->GetWriteSize();
	}

	// okay, the data part is all set -- now we need a file to write it to

	// we use the resource name as the name for the new file, unless the
	// resource is unnamed or the name is too long for a file, in which
	// case we use the resource ID
	
	if ( resName[0] == 0 || resName[0] > 30 )
	{
		resName[0] = 5;
		short scratch = ( resID >= 0 ? resID : -resID );
		
		for ( int length = 5; length > 0; length-- )
		{
			resName[length] = '0' + scratch % 10;
			scratch /= 10;
			
		}
	}
	
	// now we append ".ICO" to the filename, or amend the final letters if
	// there isn't room to add them
	resName[0] += 4;
	if ( resName[0] > 31 )
		resName[0] = 31;
	
	int tmp = resName[0];
	
	resName[ tmp - 3 ] = '.';
	resName[ tmp - 2 ] = 'I';
	resName[ tmp - 1 ] = 'C';
	resName[ tmp ] = 'O';
	
	// attempt to create the file
	FSSpec fileSpec;
	OSErr err = FSMakeFSSpec( vRefNum,
							  parID,
							  resName,
							  &fileSpec );
	
	// we should probably do something more meaningful than this here,
	// but for the moment, if the file already exists, give up!
	if ( err != fnfErr )
	{
		for ( i = 0; i < numIcons; i++ )
		{
			delete entries[i];
			delete icons[i];
		}
		throw EWinIcon ( err );
	}

	file = new LFileStream ( fileSpec );
	file->CreateNewFile ( 'dosa', '????', smSystemScript );
	file->OpenDataFork ( fsRdWrPerm );
	
	
//	if ( spinCursor )
//		::SpinCursor(0);
	
	// write it all out	
	header.WriteToStream ( file );
	
	for ( i = 0; i < numIcons; i++ )
		entries[i]->WriteToStream ( file );
	
	for ( i = 0; i < numIcons; i++ )
		icons[i]->WriteToStream ( file );
	
	// delete the objects we've created
	for ( i = 0; i < numIcons; i++ )
	{
		delete entries[i];
		delete icons[i];
	}
	
	// copy the macintosh icon family as a custom icon family
	// for the new file, so that it looks like what it is
	CreateCustomIcon ( resID );
	
	// et voila!
}

//--------------------------------------------------------------------------

// destructor

CICOFile::~CICOFile ()
{
	delete file;
}

//--------------------------------------------------------------------------

// copy the specified macintosh icon family into the new file
// with resID -16455 and set the file's custom icon bit
// (this is separated from the constructor to make things
// slightly clearer, but is only ever called from there)

void CICOFile::CreateCustomIcon ( short resID )
{
	// a bunch of resource handles to copy
	Handle	iconHandles[6];
	ResType	iconTypes[6] = { 'icl8', 'ics8', 'icl4', 'ics4', 'ICN#', 'ics#' };
	int i;
	 
	// save the current resource file for
	// later restoration (though this may happen
	// automatically on close)
	short srcResFile = ::CurResFile();
	
	// read in all the possible icon family resources
	// with the specified ID
	// (no error checking here -- if any of these reads
	// fail, they return nil and we just don't write it)
	for ( i = 0; i < 6; i++ )
		iconHandles[i] = ::Get1Resource ( iconTypes[i], resID );
	
	// open the resource fork of our file stream for writing
	short dstResFile = file->OpenResourceFork ( fsRdWrPerm );
	
	// make it the current resource file
	::UseResFile ( dstResFile );
	
	// for each resource that successfully read, detach the data
	// and write it to the new file's resource map
	for ( i = 0; i < 6; i++ )
	{
		if ( iconHandles[i] != nil )
		{
			::DetachResource( iconHandles[i] );
			::AddResource( iconHandles[i],
						   iconTypes[i],
						   -16455,
						   "\pCustom Icon" );
		}
	}
	
	// flush the resource fork changes to disk
	::UpdateResFile ( dstResFile );
	
	// dispose of the handles
	for ( i = 0; i < 6; i++ )
		if ( iconHandles[i] != nil )
			::DisposeHandle( iconHandles[i] );
	
	// set the custom icon bit in the new file's Finder info
	FInfo info;
	FSSpec spec;
	
	file->GetSpecifier( spec );
	
	// if this fails, the custom icon bit won't be set and things won't
	// be quite right, but what can one do?
	OSErr err = ::FSpGetFInfo( &spec, &info );
	if ( err == noErr )
	{
		info.fdFlags |= kHasCustomIcon;
		::FSpSetFInfo( &spec, &info );
	}
	
	// restore the original current res file
	::UseResFile( srcResFile );
}
