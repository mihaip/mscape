// __________________________________________________________________________________________
// Program		: Meshroom
// Filename		: MAlert.h
// Author		: Mihai Parparita (St. Mary's International School)
// Last modified: April 1, 2000
// Description	: constants and type definitions of generic alert class

#pragma once

#include "MWindow.h"
#include "MString.h"

enum MAItems
{
#if TARGET_API_MAC_CARBON
	kMAApplicationIcon = 9,
#endif
	kMAOK = 1,
	kMACancel = 2,
	kMAOther = 3,
	kMAWarningIcon = 4,
	kMAError = 5,
	kMAExplanation = 6,
	kMAStopIcon = 7,
	kMANoteIcon = 8
};

enum MAResources
{
	rMAAlertMovable = 5000,
	rMAAlertNonMovable = 5001
};

class MAlert
{
	public:
				MAlert();
				~MAlert();
		
		void	SetButtonName(int buttonNo, int stringResID, int stringNo);
		void	SetButtonName(int buttonNo, MString buttonName);
		void	SetMovable(bool isMovable);
		void	SetBeep(bool alertBeeps);
		void	SetPosition(int alertPosition);
		void	SetType(int alertType);
		
		void	SetError(MString alertError);
		void	SetError(int stringResID, int stringNo);
		
		void	SetExplanation(MString alertExplanation);
		void	SetExplanation(int stringResID, int stringNo);
		
		int		Display();
		
	private:
		
		static pascal Boolean EventFilter(DialogPtr alert, EventRecord* eventPtr, short* itemHit);
		static bool	KeyButtonShortcut(DialogPtr alert, char key, int buttonIndex);
		
		static ModalFilterUPP eventFilterUPP;
	
		MString	buttonNames[4];
		
		MString	error;
		MString	explanation;
		
		bool	beep;
		bool	movable;
		int		position;
		int		type;
};
