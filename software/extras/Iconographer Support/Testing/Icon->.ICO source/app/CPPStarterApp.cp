// ===========================================================================
//	CPPStarterApp.cp 		©1994-1997 Metrowerks Inc. All rights reserved.
// ===========================================================================
//
//	This file contains the starter code for a basic PowerPlant application

//  $Id$
//  Icon->.ICO modifications ©1998-9 Matthew Caldwell

#include <LGrowZone.h>
#include <LWindow.h>
#include <PP_Messages.h>
#include <PP_Resources.h>
#include <PPobClasses.h>
#include <UDrawingState.h>
#include <UMemoryMgr.h>
#include <URegistrar.h>

#include <UControlRegistry.h>
#include <UGraphicUtils.h>
#include <UEnvironment.h>

#ifndef __APPEARANCE__
#include <Appearance.h>
#endif

#include <LThread.h>
#include <UThread.h>

#include <LIconPane.h>
#include <LProgressBar.h>
#include <LGAProgressBarImp.h>
#include <LAMTrackActionImp.h>

#include "CPPStarterApp.h"
#include "CIconConvertThread.h"
#include "UWinPalettes.h"

const ResIDT kNoThreadsAlert = 129;

// ===========================================================================
//		¥ Main Program
// ===========================================================================

int main(void)
{
									// Set Debugging options
	SetDebugThrow_(debugAction_Alert);
	SetDebugSignal_(debugAction_Alert);

	InitializeHeap(3);				// Initialize Memory Manager
									// Parameter is number of Master Pointer
									//   blocks to allocate
	
									// Initialize standard Toolbox managers
	UQDGlobals::InitializeToolbox(&qd);
	
									// Initialize PP environment internals
	UEnvironment::InitEnvironment();
	
	new LGrowZone(20000);			// Install a GrowZone function to catch
									//    low memory situations.
									
	// initialize the icon colour tables
	UWinPalettes::Initialize();

	CPPStarterApp	theApp;			// replace this with your App type
	theApp.Run();
	
	return 0;
}


// ---------------------------------------------------------------------------
//		¥ CPPStarterApp 			// replace this with your App type
// ---------------------------------------------------------------------------
//	Constructor

CPPStarterApp::CPPStarterApp()
{
	// check availability of the Thread Manager
	if ( ! UEnvironment::HasFeature( env_HasThreadsManager ) )
	{
		// this should be replaced with something more user-friendly later
		// (in fact, there should be provision for running without threads,
		// but we'll cross that bridge when we come to it)
		::StopAlert(kNoThreadsAlert, nil);

		ExitToShell();
	}
	
	// create main thread
	mainThread = new UMainThread();
	
	workerThread = nil;
	
	// add an attachment to yield regularly to other threads
	// note that the yield period is set here to 1 tick, to
	// hopefully make sure the event-dispatch thread gets time
	// to actually dispatch pertinent events
	AddAttachment( new LYieldAttachment( 1 ) );
	
	
	if ( UEnvironment::HasFeature( env_HasAppearance ) ) {
		::RegisterAppearanceClient();
	}

	// Register functions to create core PowerPlant classes
	// (trim this later to remove redundant code...)
	
	//RegisterAllPPClasses();
	
	// register classes not included in standard set
	RegisterClass_(LWindow);
	RegisterClass_(LStdButton);
	RegisterClass_(LCaption);
	RegisterClass_(LProgressBar);
	RegisterClass_(LIconPane);
	
	// Register the Appearance Manager/GA classes
	// UControlRegistry::RegisterClasses();
	if ( UEnvironment::HasFeature( env_HasAppearance ) )
		RegisterClassID_( LAMTrackActionImp, LProgressBar::imp_class_ID );
	else
		RegisterClassID_( LGAProgressBarImp, LProgressBar::imp_class_ID );
}


// ---------------------------------------------------------------------------
//		¥ ~CPPStarterApp			// replace this with your App type
// ---------------------------------------------------------------------------
//	Destructor
//

CPPStarterApp::~CPPStarterApp()
{
}

// ---------------------------------------------------------------------------
//		¥ StartUp
// ---------------------------------------------------------------------------
//	Show the about box on startup
//  ...or not

void
CPPStarterApp::StartUp()
{
	ShowAboutBox();
	DoQuit();
}


// ---------------------------------------------------------------------------
//		¥ FindCommandStatus
// ---------------------------------------------------------------------------
//	This function enables menu commands.
//

void
CPPStarterApp::FindCommandStatus(
	CommandT	inCommand,
	Boolean		&outEnabled,
	Boolean		&outUsesMark,
	Char16		&outMark,
	Str255		outName)
{

	switch (inCommand) {
	
		// Return menu item status according to command messages.
		// Any that you don't handle will be passed to LApplication
		
		// File->Open is always enabled --> oh no it isn't!
		case cmd_Open:
			outEnabled = false;
			break;
		
		// so is File->Quit --> ditto
		case cmd_Quit:
			outEnabled = ( workerThread == nil );
			break;

		default:
			LApplication::FindCommandStatus(inCommand, outEnabled,
												outUsesMark, outMark, outName);
			break;
	}
}

// ---------------------------------------------------------------------------
//		¥ HandleAppleEvent
// ---------------------------------------------------------------------------
//	Handle the AppleEvents we actually care about (open, opendoc, quit)
void
CPPStarterApp::HandleAppleEvent(
	const AppleEvent	&inAppleEvent,
	AppleEvent			&outAEReply,
	AEDesc				&outResult,
	long				inAENumber)
{
	switch (inAENumber) {
	
		case ae_OpenApp:
			StartUp();
			break;
			
		case ae_OpenDoc:
			DoAEOpenDoc(inAppleEvent, outAEReply, inAENumber);
			break;
			
		case ae_Quit:
			// this is probably a Bad Thing, but because quitting
			// while another thread is working seems to lead to crashes
			// we refuse to quit if there's currently a worker thread
			if ( workerThread == nil )
				DoQuit();
			break;
			
		default:
			LModelObject::HandleAppleEvent(inAppleEvent, outAEReply, outResult, inAENumber);
			break;
	}
}


// ---------------------------------------------------------------------------
//		¥ DoAEOpenDoc
// ---------------------------------------------------------------------------
//	Open one or more documents as requested
void
CPPStarterApp::DoAEOpenDoc ( const AppleEvent	&inAppleEvent,
							 AppleEvent&		/* outAEReply */,
							 long				/* inAENumber */)
{
	AEDescList	docList;
	OSErr		err = AEGetParamDesc(&inAppleEvent, keyDirectObject,
							typeWildCard, &docList);
	if (err != noErr) Throw_(err);
	
	// pass the descriptor list to a new thread which will
	// do the conversion, and set it running
	Try_
	{
		workerThread = new CIconConvertThread ( this, docList );
		workerThread->Resume();
	}
	Catch_(inErr)
	{
	} EndCatch_
}

// ---------------------------------------------------------------------------
//		¥ ThreadDeleted
// ---------------------------------------------------------------------------
//	Note that a thread has completed and doesn't have to be destroyed
//  when the app quits
void
CPPStarterApp::ThreadDeleted ( CIconConvertThread* /*thread*/ )
{
	workerThread = nil;
	SendAEQuit();
	mainThread->Yield();
}

// ---------------------------------------------------------------------------


