// ===========================================================================
//	CPPStarterApp.h		©1994-1997 Metrowerks Inc. All rights reserved.
// ===========================================================================

//  $Id$
//  Icon->.ICO modifications ©1998-9 Matthew Caldwell

#pragma once

#include <LApplication.h>

class CIconConvertThread;

class	CPPStarterApp : public LApplication
{

	public:
							CPPStarterApp();		// constructor registers all PPobs
		virtual 			~CPPStarterApp();		// stub destructor
	
		// this overriding function returns the status of menu items
		
		virtual void		FindCommandStatus(CommandT inCommand,
									Boolean &outEnabled, Boolean &outUsesMark,
									Char16 &outMark, Str255 outName);
									
		virtual void HandleAppleEvent ( const AppleEvent& inAppleEvent,
										AppleEvent& outAEReply,
										AEDesc& outResult,
										long inAENumber );
		virtual void DoAEOpenDoc ( const AppleEvent& inAppleEvent,
								   AppleEvent& outAEReply,
								   long inAENumber );
								   
		void ThreadDeleted ( CIconConvertThread* thread );
		
	protected:

		virtual void		StartUp();		// overriding startup functions
		
		LThread*			mainThread;
		
		CIconConvertThread*			workerThread;

};
