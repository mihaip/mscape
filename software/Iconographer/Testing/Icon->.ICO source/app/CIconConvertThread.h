// $Id$
// Worker thread that converts icons
// Copyright ©1998-9 Matthew Caldwell -- All Rights Reserved

// A thread in which all the icon families from a bunch of
// files are processed into Windows .ICO files
// In addition to the actual conversion, this class is
// responsible for maintaining a progress dialog that allows
// the user to call a halt

#ifndef __CIconConvertThread_h__
#define __CIconConvertThread_h__

class CPPStarterApp;
class LWindow;
class LProgressBar;
class LCaption;
class LIconPane;
class LStdButton;

class CIconConvertThread : public LThread, public LListener
{
	public:
		// constructor
		CIconConvertThread ( CPPStarterApp* parent,
							 AEDescList& fileList );
		
		// destructor
		virtual ~CIconConvertThread();
							 
		// run the thread
		virtual void* Run ();
		
		// handle switching context to & from this thread
		// ensure the current resource file is set etc
		virtual void SwapContext ( Boolean swappingIn );
		
		// process the icons from a series of files dropped
		// onto the app in one go (from an Open Documents event)
		void OpenDocList ();
		
		// process the icons in a single file
		void OpenDocument ( FSSpec *inMacFSSpec );
		
		// handle button press messages
		void ListenToMessage ( MessageT inMessage, void* ioParam );
	
	protected:
		// the resource file to be restored to currency when the
		// the Thread swaps out of context
		short mOldResFile;
		
		// the resource file to be used as the current file when
		// the thread is running
		short mResFile;
		
		// the dialog used to display the progress of the conversion
		// this is created by the main thread which also handles any
		// resulting events (ie, clicks in the Cancel button)
		// -- this reference is kept so it can be updated appropriately
		LWindow* mProgressBox;
		
		// references to parts of the progress box
		
		// the upper (files) progress bar
		LProgressBar* mFileBar;
		
		// the lower (icons) progress bar
		LProgressBar* mIconBar;
		
		// the upper (files) label
		LCaption* mFileLabel;
		
		// the lower (icons) label
		LCaption* mIconLabel;
		
		// the icon itself
		LIconPane* mIcon;
		
		// the stop button
		LStdButton* mStop;
		
		// the original AppleEvent that led to this thread's creation
		AEDescList mFileList;
		
		// the parent application
		CPPStarterApp* mParent;
		
		// a flag to tell the thread to terminate on Stop
		Boolean mExitFlag;
};

#endif // __CIconConvertThread_h__
