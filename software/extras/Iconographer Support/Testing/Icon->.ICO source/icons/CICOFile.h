// $Id$
// Class to write .ICO files
// Copyright ©1997-9 Matthew Caldwell -- All Rights Reserved

#ifndef __CICOFile_h__
#define __CICOFile_h__

//--------------------------------------------------------------------------

class CICOFile
{
	public:
		CICOFile ( short resID,
				   Str255 resName,
				   int vRefNum,
				   long parID,
				   Boolean spinCursor = false );
		virtual ~CICOFile ();
		
	protected:
		void	CreateCustomIcon ( short resID );
								   
		LFileStream* file;		// pointer to the file we create
};

//--------------------------------------------------------------------------

#endif // __CICOFile_h__

