// __________________________________________________________________________________________
// Program		: Meshroom
// Filename		: MControl.cpp
// Author		: Mihai Parparita (St. Mary's International School)
// Last modified: April 1, 2000
// Description	: implementation of control support

#include "MControl.h"
#include "MException.h"
#include "MWindow.h"

MControl::MControl(short controlID, MWindowPtr parentWindow)
		 :MLinkedListObject(NULL, NULL) // by default, the control isn't in a list
{
	Str255 tempTitle;
	
	window = parentWindow;
	control = GetNewControl(controlID, window->GetWindow());
	if (control == NULL)
		MThrow(mFulErr);
		
	GetControlTitle(control, tempTitle);
	
	if (tempTitle[0])
		SetTitle(tempTitle);
		
	SetControlReference(control, (long)this);
	ID = controlID;
}

MControl::~MControl()
{
	DisposeControl(control);
}

ControlHandle MControl::GetControl()
{
	return control;
}

#pragma mark -

void MControl::Show()
{
	ShowControl(control);
}

void MControl::Hide()
{
	HideControl(control);
}

#pragma mark -


void MControl::Activate()
{
	ActivateControl(control);
}

void MControl::Deactivate()
{
	DeactivateControl(control);
}

bool MControl::IsActive()
{
	return IsControlActive(control);
}

#pragma mark -

short MControl::GetID()
{
	return ID;
}

void MControl::Move(int x, int y)
{
	MoveControl(control, x, y);
}

void MControl::Resize(int width, int height)
{
	SizeControl(control, width, height);
}

void MControl::Resize(Rect controlRect)
{
	MoveControl(control, controlRect.left, controlRect.top);
	SizeControl(control, controlRect.right - controlRect.left, controlRect.bottom - controlRect.top);
}

void MControl::SetTitle(MString title)
{
	SetControlTitle(control, title.AsPascalString());
	
	SetControlData(control,
			       kControlNoPart,
			       kControlStaticTextTextTag,
			       title.Length(),
			       (char*)(title.AsCString()));
			       
	Draw();
}

void MControl::SetValue(int value)
{
	SetControlValue(control, value);
}

void MControl::Draw()
{
	Draw1Control(control);
}

ControlActionUPP MControl::GetTrackingFunction()
{
	return NULL;
}

void MControl::HandleClick()
{
	SysBeep(6);
}

#pragma mark -

MControlList::MControlList(MWindowPtr parentWindow)
{
	window = parentWindow;
	root = NULL;
}

MControlList::~MControlList()
{
	;
}

void MControlList::CreateRootControl()
{
	::CreateRootControl(window->GetWindow(), &root);
}

void MControlList::ActivateAll()
{
	if (root && !IsControlActive(root))
	{
		SetThemeWindowBackground(window->GetWindow(), kThemeBrushDialogBackgroundActive, false);
		ActivateControl(root);
	}
}

void MControlList::DeactivateAll()
{
	if (root && IsControlActive(root))
	{
		SetThemeWindowBackground(window->GetWindow(), kThemeBrushDialogBackgroundActive, false);
		DeactivateControl(root);
	}
}

void MControlList::InsertControl(short controlID)
{
	MControlPtr	newControl;
	
	newControl = new MControl(controlID, window);
	
	InsertAtEnd(newControl);
}

MControlPtr MControlList::FindControl(short controlID)
{
	for (MControlPtr currentControl = GetFirst();
		currentControl != NULL;
		currentControl = (MControlPtr)currentControl->GetNext())
	{
		if (currentControl->GetID() == controlID)
			return currentControl;
	}
	
	return NULL;
}

#pragma mark -

MUserPane::MUserPane(MWindowPtr parentWindow)
		  :MControl(rUserPane, parentWindow)
{
	ControlUserPaneDrawUPP		drawUPP;
	ControlUserPaneHitTestUPP	hitTestUPP;
	
	drawUPP = NewControlUserPaneDrawUPP(Draw);
	hitTestUPP = NewControlUserPaneHitTestUPP(HitTest);
	
	
	SetControlData(control, // we set the drawing function
				   kControlNoPart,
				   kControlUserPaneDrawProcTag,
				   sizeof(drawUPP),
				   (Ptr) &drawUPP);
				  
	SetControlData(control, // and hit test function
				   kControlNoPart,
				   kControlUserPaneHitTestProcTag, 
				   sizeof(hitTestUPP),
				   (Ptr) &hitTestUPP);
}

MUserPane::~MUserPane()
{
	;
}

void MUserPane::DrawPane()
{
	;
}

pascal void MUserPane::Draw(ControlHandle control, SInt16 part)
{
#pragma unused (part)
	MUserPane*	controlOwner;
	
	controlOwner = (MUserPane*)GetControlReference(control);
	
	controlOwner->DrawPane();
}

pascal ControlPartCode MUserPane::HitTest(ControlHandle control, Point where)
{
	Rect controlBounds;
	
	return (PtInRect(where, GetControlBounds(control, &controlBounds)));
}


