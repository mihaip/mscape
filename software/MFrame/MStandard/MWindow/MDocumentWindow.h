#pragma once

#include "MWindow.h"

class MDocumentWindow : public MWindow
{
	public:
	
					MDocumentWindow(short resID, OSType type);
					~MDocumentWindow();
		
		void 		SetProxyIcon(OSType creator, OSType type);
		
		void 		SetAssociatedFile(FSSpec file);
		void 		GetAssociatedFile(FSSpec* file);
		
		void		SetModified(bool modified);
		
		void		TrackProxyDrag(Point start);
		
		bool		IsPathSelectClick(EventRecord* eventPtr);
		void		PathSelect();
		
	private:
	
		AliasHandle	associatedFile;
};

typedef MDocumentWindow* MDocumentWindowPtr;
