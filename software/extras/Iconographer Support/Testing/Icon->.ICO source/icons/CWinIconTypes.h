// $Id$
// Declarations of all the specific Windows icon classes
// Copyright ©1997-9 Matthew Caldwell -- All Rights Reserved

//	a group of simple classes derived from CWinIcon, each
//	encapsulating the details of a single icon resource kind and setting
//	themselves up for CWinIcon to do the actual work

#ifndef __CWinIconTypes_h__
#define __CWinIconTypes_h__

//-----------------------------------------------------------------------------

#include "CWinIcon.h"

//-----------------------------------------------------------------------------

class CWinICL8 : public CWinIcon
{
	public:
		// birth & death
		CWinICL8 ( short resID );

};

//-----------------------------------------------------------------------------

class CWinICL4 : public CWinIcon
{
	public:
		CWinICL4 ( short resID );
};

//-----------------------------------------------------------------------------

class CWinICNX : public CWinIcon
{
	public:
		CWinICNX ( short resID );
};

//-----------------------------------------------------------------------------

class CWinICS8 : public CWinIcon
{
	public:
		CWinICS8 ( short resID );
};

//-----------------------------------------------------------------------------

class CWinICS4 : public CWinIcon
{
	public:
		CWinICS4 ( short resID );
};

//-----------------------------------------------------------------------------

class CWinICSX : public CWinIcon
{
	public:
		CWinICSX ( short resID );
};

#endif // __CWinIconTypes_h__

