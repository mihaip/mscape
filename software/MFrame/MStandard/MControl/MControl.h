// __________________________________________________________________________________________
// Program		: Meshroom
// Filename		: MControl.h
// Author		: Mihai Parparita (St. Mary's International School)
// Last modified: April 1, 2000
// Description	: type definitions and constants of control support

#pragma once

#include "MLinkedList.h"
#include "MString.h"

class MWindow;

typedef MWindow* MWindowPtr;

class MControl : public MLinkedListObject
{
	public:
		MControl(short controlID, MWindowPtr parentWindow);
		virtual ~MControl();
		
		ControlHandle GetControl();
		
		void Show();
		void Hide();
		
		void Activate();
		void Deactivate();
		bool IsActive();
		
		short GetID();
		
		void Move(int x, int y);
		void Resize(int width, int height);
		void Resize(Rect controlRect);
		
		void SetTitle(MString title);
		void SetValue(int value);
		
		void Draw();
		
		virtual ControlActionUPP GetTrackingFunction();
		
		virtual void HandleClick();
		
	protected:
		ControlHandle	control;
		MWindowPtr		window;
		short			ID;
	
};

typedef MControl* MControlPtr;

class MControlList : public MLinkedList<MControl>
{
	public:
		MControlList(MWindowPtr parentWindow);
		~MControlList();
		
		void	CreateRootControl();
		
		void	DeactivateAll();
		void 	ActivateAll();
		
		void	InsertControl(short controlID);
		MControlPtr	FindControl(short controlID);
		
	private:
	
		MWindowPtr	window;
		ControlHandle	root;
};

enum MUserPaneResources
{
	rUserPane = 10100
};

class MUserPane : public MControl
{
	public:
		MUserPane(MWindowPtr parentWindow);
		virtual ~MUserPane();
		
		virtual void	DrawPane();
		
	private:
	
		static pascal void Draw(ControlHandle control, SInt16 part);
		static pascal ControlPartCode HitTest(ControlHandle control, Point where);
};
