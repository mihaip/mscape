// __________________________________________________________________________________________
// Program		: Meshroom
// Filename		: MWindow.h
// Author		: Mihai Parparita (St. Mary's International School)
// Last modified: April 1, 2000
// Description	: constants and type definitions of generic window class

#pragma once

#include "MUtilities.h"
#include "MControl.h"

enum MWindowBorderTypes
{
	borderTop,
	borderLeft,
	borderBottom,
	borderRight
};


const static int kZoomThreshold = 7;

const static MType kDialogType = 'Dlog';

class MWindow;

typedef MWindow* MWindowPtr;

class MWindow
{
	public:
							MWindow(short resID, OSType type);
							MWindow(WindowPtr inWindow, OSType type);
		virtual				~MWindow(void);
		
		MWindowPtr			GetNext();
		MWindowPtr			GetPrevious();
		MWindowPtr			GetNextLayered();
		
		void				Show();
		void				Hide();
		bool				IsVisible();
		void				Invalidate();
		void				Validate();
		
		OSType				GetType();
		int					GetWindowID();
		WindowPtr			GetWindow();
		
		int					GetRefCon();
		void				SetRefCon(int inRefCon);
		
		void				GetTitle(Str255 title);
		
		Point				GetPosition();
		void				SetPosition(Point position);
		
		Point				GetDimensions();
		Rect				GetBounds();
		Point				GetPhysicalDimensions();
		Rect				GetPhysicalBounds();
		void				SetDimensions(Point dimensions);
		
		int					GetBorderThickness(int side);
		
		virtual void		Close();
		
		virtual void		Activate(void);
		virtual void		Deactivate(void);
		bool				IsActive();
		
		void				SetPort();
		CGrafPtr			GetPort();
		Rect				GetPortRect();
		void				Flush();
		bool				IsBuffered();
		void				LockPortBits();
		void				UnlockPortBits();
		
		virtual void		UpdateCursor(Point theMouse);
		virtual void		DoIdle(MWindowPtr windowUnderMouse);
		
		virtual void		Refresh();
		virtual void		HandleContentClick(EventRecord* eventPtr);
		virtual void		HandleGrow(Point where);
		virtual void		ToggleZoom();
		virtual void		HandleKeyDown(EventRecord* eventPtr);
		
		virtual void		RepositionControls();
		
		static int			GetWindowCount(void);
		static int			GetNthWindowID(int index);
		
		static MWindowPtr	GetWindow(int ID);
		
		static MWindowPtr	GetFirst();
		static MWindowPtr	GetLast();
		static MWindowPtr	GetFront();
		static MWindowPtr	GetFront(MType type);
		static MWindowPtr	GetLastFloater();
		
		static void			DeactivateAll();
		static void			ActivateAll();
		
		static void			HideFloaters();
		static void			ShowFloaters();
		
		static void			ActivateFloaters();
		static void			DeactivateFloaters();
		
		void				Select();
		virtual void		Drag(Point startPoint, Rect draggingBounds);
		
		static void			SendKeyDown(EventRecord* eventPtr);
		
		static void			CenterOnFront(MWindowPtr window);
		static void			CenterOnScreen(MWindowPtr window);
		
		static pascal Boolean StandardDialogFilter(DialogPtr dialog, EventRecord* eventPtr, short* itemHit);

		
	protected:
	
		void				CreateMWindow(WindowPtr inWindow, OSType inType);
	
		MControlList		controls;
	
		WindowPtr			window;
		OSType				type;
		int					refCon;
		
		int					windowID;
		
		MWindowPtr			nextWindow;
		MWindowPtr			previousWindow;
		
		static int*			IDs;
		static int			IDCount;
		
		static MWindowPtr	firstWindow;
		static MWindowPtr	lastWindow;
		
		static bool			floatersVisible;
		
		static int			savedCursor;
		
		static int			GetNewWindowID();
		static void			ReleaseWindowID(int ID);
};


MWindowPtr GetWindow(WindowPtr window);
MWindowPtr GetWindow(WindowPtr window, MType type);
