#pragma once

#include "MWindow.h"
#include "MFile.h"

class MDocumentWindow : public MWindow
{
	public:
	
					MDocumentWindow(short resID, OSType type);
					~MDocumentWindow();
		
		void 		SetProxyIcon(OSType creator, OSType type);
		
		void 		SetAssociatedFile(MFile *file);
		
		void		RefreshProxy();
		
		void		SetModified(bool modified);
		
		void		TrackProxyDrag(Point start);
		
		bool		IsPathSelectClick(EventRecord* eventPtr);
		void		PathSelect();
		
	private:
	
		MFile*		associatedFile;
};

typedef MDocumentWindow* MDocumentWindowPtr;
