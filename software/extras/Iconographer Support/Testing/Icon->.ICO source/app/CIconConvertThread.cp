// $Id$
// Worker thread that converts icons
// Copyright ©1998-9 Matthew Caldwell -- All Rights Reserved

//-------------------------------------------------------------------------------------

// includes

#include <LIconPane.h>
#include <LThread.h>
#include <UThread.h>
#include <LProgressBar.h>

#include "CPPStarterApp.h"
#include "CIconConvertThread.h"
#include "CICOFile.h"

//-------------------------------------------------------------------------------------

// constants

// the PPOB resource ID for the progress window
const ResIDT	kProgressPPOB	= 129;

// the pane IDs for the various interesting bits
const PaneIDT	kFileBarID = 'fbar';
const PaneIDT	kIconBarID = 'ibar';
const PaneIDT	kFileLabelID = 'fstr';
const PaneIDT	kIconLabelID = 'istr';
const PaneIDT	kIconID = 'icon';
const PaneIDT	kStopID = 'stop';

//-------------------------------------------------------------------------------------

// constructor
CIconConvertThread::CIconConvertThread ( CPPStarterApp* parent,
										 AEDescList& fileList )
	: LThread ( false )
{
	// zero-out the res file to indicate that it hasn't yet
	// been opened
	mOldResFile = mResFile = 0;
	
	// keep reference to parent application
	mParent = parent;
	
	// copy the file list descriptor
	mFileList = fileList;
}

//-------------------------------------------------------------------------------------

// destructor
CIconConvertThread::~CIconConvertThread()
{
	// stop listening for stop messages
	mStop->RemoveListener ( this );
	
	// dispose of the progress window
	delete mProgressBox;
	
	// dispose of the descriptor list -- we didn't create this,
	// but the parent app hands control to us and forgets about it,
	// so it's up to us to dispose of it
	AEDisposeDesc(&mFileList);
	
	// notify parent that this thread has expired
	mParent->ThreadDeleted( this );
}

//-------------------------------------------------------------------------------------

// run the thread
void* CIconConvertThread::Run ()
{
	// we're running
	mExitFlag = false;
	
	// create the progress window
	mProgressBox = LWindow::CreateWindow ( kProgressPPOB, mParent );
	
	// get pointers to its various useful panes
	mFileBar = dynamic_cast<LProgressBar*> (mProgressBox->FindPaneByID ( kFileBarID ));
	mIconBar = dynamic_cast<LProgressBar*> (mProgressBox->FindPaneByID ( kIconBarID ));
	mFileLabel = dynamic_cast<LCaption*> (mProgressBox->FindPaneByID ( kFileLabelID ));
	mIconLabel = dynamic_cast<LCaption*> (mProgressBox->FindPaneByID ( kIconLabelID ));
	mIcon = dynamic_cast<LIconPane*> (mProgressBox->FindPaneByID ( kIconID ));
	mStop = dynamic_cast<LStdButton*> (mProgressBox->FindPaneByID ( kStopID ));
	
	// listen to clicks in the button
	mStop->AddListener ( this );
	
	// throw in a Yield() just for fun
	Yield();
	
	if ( !mExitFlag )
		// start processing
		OpenDocList();
		
	return nil;
}

//-------------------------------------------------------------------------------------

// handle a context change to or from this thread
// at present this just entails making sure the appropriate
// resource file is current -- there may be more context later
void
CIconConvertThread::SwapContext ( Boolean swappingIn )
{
	// set the current resource file
	if ( swappingIn )
	{
		// allow superclass to do whatever's necessary
		LThread::SwapContext ( swappingIn );
		
		// save the current resfile and make our own res file current
		mOldResFile = ::CurResFile();

		if ( mResFile != 0 )
		{
			::UseResFile( mResFile );
		}
	}
	else
	{
		// save our own current res file and make the old one
		// current (this may well not be correct, since the
		// next thread may not be the same one that was current
		// when we were swapped in, but that's that thread's
		// problem...)
		mResFile = ::CurResFile();		

		if ( mOldResFile != 0 )
		{
			::UseResFile( mOldResFile );
		}

		// allow superclass to do its thing
		LThread::SwapContext ( swappingIn );
	}
}

//-------------------------------------------------------------------------------------

// process the originally supplied list of documents one by one,
// updating the progress box as appropriate
void
CIconConvertThread::OpenDocList()
{
	Int32	numDocs;
	OSErr err = AECountItems( &mFileList, &numDocs );
	if (err != noErr) Throw_(err);

	// set the super-range for the progress box (# of files)
	mFileBar->SetMinValue(0);
	mFileBar->SetMaxValue(numDocs);
	mFileBar->SetValue(0);
	mFileBar->Draw(nil);
	
	// Loop through all items in the list
	// - extract descriptor for the document
	// - coerce descriptor data into a FSSpec
	// - open document
	for (Int32 i = 1; i <= numDocs; i++)
	{
		AEKeyword	theKey;
		DescType	theType;
		FSSpec		theFileSpec;
		Size		theSize;
		
		err = AEGetNthPtr ( &mFileList,
							i,
							typeFSS,
							&theKey,
							&theType,
							(Ptr) &theFileSpec,
							sizeof( FSSpec ),
							&theSize );
							
		if (err != noErr) Throw_(err);	

		// set the value and filename for the progress box
		mFileBar->SetValue(i);
		mFileLabel->SetDescriptor( theFileSpec.name );
		mFileBar->Draw(nil);
		mFileLabel->Draw(nil);
		
		OpenDocument(&theFileSpec);
		
		// if the function returned due to the Stop button being clicked,
		// go no further
		if ( mExitFlag )
			return;
	}
}

//-------------------------------------------------------------------------------------

// open a single document and process its icon resources into
// .ICO files, updating the progress box as and when
void
CIconConvertThread::OpenDocument( FSSpec *inMacFSSpec )
{
	// create a FileStream on the stack
	// the destructor (which closes the file) automatically
	// gets called before this function exits
	LFileStream		theFile( *inMacFSSpec );
	
	// process the file
	Try_
	{
		mOldResFile = ::CurResFile();
		
		// open resource fork read-only
		mResFile = theFile.OpenResourceFork(fsRdPerm);
		
		// set the current resource file
		::UseResFile ( mResFile );		

		// determine how many icons need processing
		short numIcons = ::Count1Resources( 'ICN#' );
		
		if ( numIcons )
		{
			// set the sub-range for the progress bar
			mIconBar->SetMinValue(0);
			mIconBar->SetMaxValue(numIcons);
			mIconBar->SetValue(0);
			mIconBar->Draw(nil);

			// process the icons one by one
			for ( short i = 1; i <= numIcons; i++ )
			{
				Str255 name;
				ResType type = 'ICN#';
				short id = 0;
				
				Handle icn = ::Get1IndResource( type, i );
				
				::GetResInfo ( icn, &id, &type, name );				

				// set the progress value and icon id for the progress bar
				mIconBar->SetValue( i );
				mIconLabel->SetDescriptor( name );
				mIcon->SetIconID( (ResIDT) id );
				mProgressBox->Draw(nil);
				
				::ReleaseResource ( icn );
				
				try
				{
					EnterCritical();
					
					// constructor creates file and writes icons
					CICOFile	icoFile ( id, name, inMacFSSpec->vRefNum, inMacFSSpec->parID, true );
				
					ExitCritical();
				}
				catch ( ... )
				{
					ExitCritical();
				}

				// out of scope -> destructor closes file
				// thread doesn't Yield() within any single CICOFile's
				// lifetime, so we shouldn't have to worry about leaving
				// an ICO file in an inconsistent state...
				
				// give time to other threads, especially the main one
				// for event processing
				Yield();
				
				// check for Stop having been pressed while we were yielding
				if ( mExitFlag )
					break;
			}
		}
		
		::UseResFile ( mOldResFile );		

		// this should be redundant since the destructor will do it
		// anyway when the object goes out of scope, but let's be tidy
		theFile.CloseResourceFork();
	}
	
	Catch_(inErr)
	{
		// Open or Read failed
	} EndCatch_
}

//-------------------------------------------------------------------------------------

// respond to messages
// the only message we register for is from the Stop button
// meaning this thread should just die -- set the exit flag so
// the processing loops (and hence Run()) will all exit as soon
// as the thread resumes
void
CIconConvertThread::ListenToMessage ( MessageT inMessage, void* /*ioParam*/ )
{
	if ( inMessage == msg_Cancel )
		mExitFlag = true;
}

//-------------------------------------------------------------------------------------

