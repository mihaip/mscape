// __________________________________________________________________________________________
// Program		: Meshroom
// Filename		: MFloater.h
// Author		: Mihai Parparita (St. Mary's International School)
// Last modified: April 1, 2000
// Description	: constants and type definitions of generic floating window class

#pragma once

#include "MWindow.h"

const static OSType kFloaterType = 'Flot';

class MFloater: public MWindow
{
	public:
				MFloater(short resID, OSType type);
				MFloater(WindowPtr inWindow, OSType type);
		virtual	~MFloater();
	
		OSType	GetType();
	
		void	Show();
		void	Hide();
		
		void	Close();
		
		bool	originallyVisible;
		
		bool	IsVisible();
		
	private:
	
		OSType	floaterType;
		
		
};

typedef MFloater* MFloaterPtr;
