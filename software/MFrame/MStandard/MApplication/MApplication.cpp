// __________________________________________________________________________________________
// Program		: Meshroom
// Filename		: MApplication.cpp
// Author		: Mihai Parparita (St. Mary's International School)
// Last modified: April 1, 2000
// Description	: implementation of application support (event handling, etc.)

#include "MApplication.h"
#include "MWindow.h"

bool 			MApplication::done = false;
MApplication*	MApplication::currentApplication = NULL;

MApplication::MApplication(MString appName) :
			  eventHandlers(this)
{
	currentApplication = this;
	name = appName;
	
	MUtilities::InitToolbox();
}

void MApplication::Initialize(void)
{
	done = false;
	
	try
	{
		CheckConfiguration();
		InitMenuBar();
		AE.Install(this);
	}
	catch (MException& exception) { exception.Display();}
}

void MApplication::CheckConfiguration(void)
{
	OSErr err;
	
	err = ::RegisterAppearanceClient();
	if (err != noErr) MThrow(err);
}

void MApplication::InitMenuBar()
{
	Handle		menuBar; // handle to the menubar resource
	MenuHandle	menu; // handle to individual menu resources
	
	menuBar = GetNewMBar( rDefaultMenuBar ); // we load the menu bar resource...
	if (menuBar != NULL)
		SetMenuBar(menuBar); // and set it, if we we've found it
	else
		MThrow(resNotFound);
	
	menu = GetMenuHandle( mApple );
	if (menu != NULL)
		AppendResMenu(menu, 'DRVR' );
		// we're adding all the items in the Apple Menu Items folder,
		// like any good mac app should
	else
		MThrow(resNotFound);
	
	SetUpMenuBar();
	
	DrawMenuBar();
}

void MApplication::SetUpMenuBar()
{

}

#pragma mark -

void MApplication::Run()
{
	EventRecord	event;
	
	Initialize();
	
	while (!done)
	{
		DoIdle(); // otherwise we can execute the idling function
		
		if (WaitNextEvent(everyEvent, &event, 60, NULL)) // when an event occurs...
			HandleEvent(&event); // we process it
			
	}
}

void MApplication::DoIdle()
{

}

void MApplication::HandleEvent(EventRecord* eventPtr)
{
	switch (eventPtr->what) {
		case mouseDown:			HandleMouseDown(eventPtr); break;
		case autoKey:
		case keyDown: 			HandleKeyDown(eventPtr); break;
		case updateEvt: 		HandleUpdate(eventPtr); break;
		case activateEvt:	 	HandleActivate(eventPtr); break;
		case kHighLevelEvent:	AEProcessAppleEvent(eventPtr); break;
		case osEvt: 			HandleOSEvent(eventPtr); break;
	}
}

void MApplication::HandleMouseDown(EventRecord* eventPtr)
{
	int 			part; // the window part where the was a click
	WindowPtr		theWindow; // winder where the click occured
	GDHandle		mainScreen; // the screen in which the window can be moved
	long			menuChoice; // the selected menu command
	MWindowPtr		clickedWindow;
	
	part = FindWindow(eventPtr->where, &theWindow);
	clickedWindow = GetWindow(theWindow);
	switch (part) // depending on where the click was, we take different actions
	{
		case inMenuBar : // if it was in the menubar, we handle the menu command
			menuChoice = MenuSelect(eventPtr->where);
			HandleMenuChoice(menuChoice);
			break;
#if !TARGET_API_MAC_CARBON
		case inSysWindow : // if the user clicked in a different window, then we deactivate
						   // this one
			MWindow::DeactivateAll();
			SystemClick(eventPtr, theWindow);
			break;
#endif
		case inDrag : // the user is attempting to drag the window
			mainScreen = GetMainDevice();
			if(clickedWindow != NULL)
				clickedWindow->Drag(eventPtr->where, ( ( *mainScreen )->gdRect ));
			else
				DragWindow(theWindow, eventPtr->where, &( ( *mainScreen )->gdRect ));
			break;
		case inGoAway: // the user has the mouse on the close box
			if (TrackGoAway(theWindow, eventPtr->where) && clickedWindow != NULL) // if he release it...
				clickedWindow->Close(); // we close the icon
			break;
		case inContent: // if it's a contect click we pass it on the class
			if (clickedWindow != NULL)
				clickedWindow->HandleContentClick(eventPtr);
			break;
		case inGrow: // same for clicks in the grow box
			if (clickedWindow != NULL)
				clickedWindow->HandleGrow(eventPtr->where);
			break;
	}
}

void MApplication::HandleKeyDown(EventRecord* eventPtr)
{
	long			menuEvent; // the key which was pressed
	
	menuEvent = MenuEvent(eventPtr);
	if (((menuEvent & 0xFFFF0000) >> 16) != 0)
	{
		HandleMenuChoice(menuEvent);
		return;
	}
}

void MApplication::HandleUpdate(EventRecord* eventPtr)
{
	WindowPtr		windowToUpdate; // the window which we must update
	MWindowPtr		currentWindow; // the window class which owns the window above
	
	windowToUpdate = (WindowPtr)eventPtr->message;
	currentWindow = GetWindow(windowToUpdate);
	if (currentWindow != NULL)
		currentWindow->Refresh(); // we just pass on the updating to the window class
}

void MApplication::HandleActivate(EventRecord* eventPtr)
{
	WindowPtr  		theWindow; // window which is becoming (in)active
	bool	    	becomingActive;	// are we activating or deactivating?
	MWindowPtr		currentWindow; // the window class belonging to the window which we are
							   // dealing with

	theWindow = (WindowPtr) eventPtr->message; 
	currentWindow = GetWindow(theWindow);
	if (currentWindow != NULL)
	{
		becomingActive = ((eventPtr->modifiers & activeFlag) == activeFlag);
		if (becomingActive)
			currentWindow->Activate();
		else
			currentWindow->Deactivate();
	}
}

void MApplication::HandleOSEvent(EventRecord* eventPtr)
{
	switch((eventPtr->message >> 24) & 0x000000FF)
	{
		case suspendResumeMessage: // if the application is being brought to the foreground or
								   // put into the background
			
			if (eventPtr->message & resumeFlag)
			{
				short part;
				WindowPtr	theWindow;
				MWindowPtr	currentWindow;
				
				MWindow::ShowFloaters();
				MWindow::ActivateAll();
				
				part = FindWindow(eventPtr->where, &theWindow);
				currentWindow = GetWindow(theWindow);
				
				if (part == inDrag)
				{
					currentWindow->Select();
				}
				
			}
			else
			{
				MWindow::HideFloaters();
				MWindow::DeactivateAll();
			}
			break;
	}
}

void MApplication::HandleMenuChoice(long menuChoice)
{
	short 		menuID, menuItem;
	MenuHandle	menu;
	MType		event;
	long startTicks;
		
	if (menuChoice == 0)
		return;
	
	startTicks = TickCount();
	
	menuID = menuChoice >> 16;
	menuItem = menuChoice & 0x00FF;
	
	menu = GetMenu(menuID);
	
	GetMenuItemCommandID(menu, menuItem, &event);
	
	eventHandlers.HandleEvent(event);
	
	while (TickCount() < startTicks + kMiniumMenuHilite) {;}
	
	HiliteMenu(0);
}

#pragma mark -

void MApplication::About()
{

}

void MApplication::New()
{

}

void MApplication::Open(FSSpec* fileSpec)
{
#pragma unused (fileSpec)
}

void MApplication::Close()
{
}

void MApplication::Save()
{
}

void MApplication::Quit()
{
	done = true;
	
	while (MWindow::GetFront() && done)
		MWindow::GetFront()->Close();
		
	if (!done)
		Run();
}

#pragma mark -

MApplication::~MApplication(void)
{
	// stuff
}

#pragma mark -

OSErr MApplication::HandleEvent(MType event)
{
	return eventHandlers.HandleEvent(event);
}

#pragma mark -

bool MApplication::IsFrontProcess()
{
	ProcessSerialNumber	currentProcess, frontProcess;
	
	GetCurrentProcess(&currentProcess);
	GetFrontProcess(&frontProcess);
	
	return ((currentProcess.lowLongOfPSN == frontProcess.lowLongOfPSN) &&
			(currentProcess.highLongOfPSN == frontProcess.highLongOfPSN));
}

MApplication* MApplication::GetCurrent()
{
	return currentApplication;
}
