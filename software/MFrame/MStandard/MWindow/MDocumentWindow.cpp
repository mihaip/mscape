#include "MDocumentWindow.h"

MDocumentWindow::MDocumentWindow(short resID, OSType type)
			    :MWindow(resID, type)
{
	associatedFile = NULL;
}

MDocumentWindow::~MDocumentWindow()
{
	;
}

void MDocumentWindow::SetProxyIcon(OSType creator, OSType type)
{
	if (MUtilities::GestaltVersion(gestaltSystemVersion, 0x08, 0x50))
		SetWindowProxyCreatorAndType(window, creator, type, kOnSystemDisk);
}

void MDocumentWindow::SetAssociatedFile(MFile* file)
{
	associatedFile = file;
	
	RefreshProxy();
}

void MDocumentWindow::RefreshProxy()
{	
	if (associatedFile)
	{
		FSSpec proxySpec;
		
		proxySpec = associatedFile->GetAssociatedFile();
		
		if (MUtilities::GestaltVersion(gestaltSystemVersion, 0x08, 0x50))
			SetWindowProxyFSSpec(window, &proxySpec);
	}
}

void MDocumentWindow::SetModified(bool modified)
{
	if (MUtilities::GestaltVersion(gestaltSystemVersion, 0x08, 0x50))
		SetWindowModified(window, modified);
}

void MDocumentWindow::TrackProxyDrag(Point start)
{
	if (MUtilities::GestaltVersion(gestaltSystemVersion, 0x08, 0x50))
		TrackWindowProxyDrag(window, start);
}

bool MDocumentWindow::IsPathSelectClick(EventRecord* eventPtr)
{
	if (MUtilities::GestaltVersion(gestaltSystemVersion, 0x08, 0x50))
		return IsWindowPathSelectClick(window, eventPtr);
	else
		return false;
}

void MDocumentWindow::PathSelect()
{
	long result;
	
	if (MUtilities::GestaltVersion(gestaltSystemVersion, 0x08, 0x50))
	{
		WindowPathSelect(window, NULL, &result);
		if (result > 1)
		{
			ProcessSerialNumber	finderProcess;
			
			MUtilities::FindProcessBySignature('FNDR', 'MACS', &finderProcess);
			
			SetFrontProcess(&finderProcess);
		}
	}
}
