#include "MHelp.h"
#include "MUtilities.h"

int MHelp::currentBalloon = 0;

void MHelp::SetControlHelp(ControlHandle theControl, int resID, int stringNo)
{
#if TARGET_API_MAC_CARBON
	HMHelpContentRec helpContent;
	
	helpContent.version = kMacHelpVersion;
	SetRect(&helpContent.absHotRect, 0, 0, 0, 0);
	helpContent.tagSide = kHMOutsideBottomCenterAligned;
	helpContent.content[kHMMinimumContentIndex].contentType = kHMStringResContent;
	helpContent.content[kHMMinimumContentIndex].u.tagStringRes.hmmResID = resID;
	helpContent.content[kHMMinimumContentIndex].u.tagStringRes.hmmIndex = stringNo;
	helpContent.content[kHMMaximumContentIndex].contentType = kHMNoContent;
	
	HMSetControlHelpContent(theControl, &helpContent);
#else
	AuxCtlHandle aux;
	
	GetAuxiliaryControlRecord(theControl, &aux);
	
	(**aux).acRefCon = (resID << 16) | (0x0000FFFF & stringNo);
#endif
}

void MHelp::GetControlHelp(ControlHandle theControl, int *resID, int *stringNo)
{
#if TARGET_API_MAC_CARBON
	HMHelpContentRec helpContent;
	
	HMGetControlHelpContent(theControl, &helpContent);
	
	*resID = helpContent.content[kHMMinimumContentIndex].u.tagStringRes.hmmResID;
	*stringNo = helpContent.content[kHMMinimumContentIndex].u.tagStringRes.hmmIndex;
#else
	AuxCtlHandle aux;
	
	GetAuxiliaryControlRecord(theControl, &aux);
	
	*resID = (**aux).acRefCon >> 16;
	*stringNo = (**aux).acRefCon & 0x0000FFFF;
#endif
}

void MHelp::SetupDialogHelp(DialogRef theDialog, int resID)
{
	OSErr			err;
	ControlHandle	currentControl;
	int				index = 1;
	
	do
	{
		err = GetDialogItemAsControl(theDialog, index, &currentControl);
		
		if ((err == noErr) && currentControl)
		{
			Str255	helpString;
			
			GetIndString(helpString, resID, index);
			if (helpString[0])
				SetControlHelp(currentControl, resID, index);	
		}
		
		index++;
		
	} while ((err == noErr) && currentControl);
	
}

void MHelp::CleanupDialogHelp()
{
	;
}

void MHelp::HandleHelp(Point theMouse, WindowPtr window)
{
	ControlHandle	theControl;
	
#if !TARGET_API_MAC_CARBON
	if (!HMGetBalloons())
		return;
#endif
	
	SAVEGWORLD;
	
	SetPortWindowPort(window);
				
	FindControl(theMouse, window, &theControl);
	
	if (theControl != NULL)
	{
#if TARGET_API_MAC_CARBON
		HMHelpContentRec tag;
		OSStatus		err;
		
		err = HMGetControlHelpContent(theControl, &tag);
		
		if (err != noErr)
			HMDisplayTag(&tag);
#else
		int	resID, stringNo;
		Rect balloonRect;
		
		GetControlBounds(theControl, &balloonRect);
		GetControlHelp(theControl, &resID, &stringNo);
		
		HandleBalloon(resID, stringNo, balloonRect, theMouse);
#endif
	}
	else
		RemoveHelp();
	
	RESTOREGWORLD;
}

void MHelp::HandleHelp(DialogPtr dialog, EventRecord* eventPtr)
{
	Point	localMouse;
	
	localMouse = eventPtr->where;
	SAVEGWORLD;
	SetPortDialogPort(dialog);
	GlobalToLocal(&localMouse);
	RESTOREGWORLD;
	
	MHelp::HandleHelp(localMouse, GetDialogWindow(dialog));
}

void MHelp::RemoveHelp()
{
#if TARGET_API_MAC_CARBON
	HMHideTag();
#else
	if (currentBalloon != 0)
		HMRemoveBalloon();
	currentBalloon = 0;
#endif
}

#if !TARGET_API_MAC_CARBON
bool MHelp::HandleBalloon(ControlHandle theControl, Point theMouse)
{
	Rect	controlBounds;
	
	GetControlBounds(theControl, &controlBounds);
	
	if (PtInRect(theMouse, &controlBounds))
	{
		int	resID, stringNo;
		
		GetControlHelp(theControl, &resID, &stringNo);
		
		HandleBalloon(resID, stringNo, controlBounds, theMouse);
		
		return true;
	}
	else
		return false;
}

void MHelp::HandleBalloon(int strings, int index, Rect balloonRect, Point theMouse)
{
	HMMessageRecord	standardMessage;
	BalloonVariant	variant;
	Rect			portRect;
	GDHandle 		mainScreen;

	if (!MUtilities::IsFrontProcess() || !HMGetBalloons() ||
		((currentBalloon == ((strings << 16) | index)) && HMIsBalloon()))
		return;

	mainScreen = GetMainDevice();
	
	standardMessage.hmmHelpType = khmmStringRes;
	standardMessage.u.hmmStringRes.hmmResID = strings; 
	standardMessage.u.hmmStringRes.hmmIndex = index;
	
	theMouse.h = balloonRect.right - 10;
	theMouse.v = balloonRect.bottom - 10;
	
	LocalToGlobal(&theMouse);
	
	portRect = (**mainScreen).gdRect;
	
	SetRect(&balloonRect, 0, 0, 0, 0);
	HMBalloonRect(&standardMessage, &balloonRect);
	OffsetRect(&balloonRect, -balloonRect.left, -balloonRect.top);
	balloonRect.right += 41;
	balloonRect.bottom += 25;
	OffsetRect(&balloonRect, theMouse.h, theMouse.v);
	if (balloonRect.right > portRect.right)
	{
		if ((balloonRect.bottom > portRect.bottom))
			variant = kBottomRightTipPointsDownVariant;
		else
			variant = kTopRightTipPointsRightVariant;
	}
	else
	{
		if (balloonRect.bottom > portRect.bottom)
			variant = kBottomLeftTipPointsDownVariant;
		else
			variant = kTopLeftTipPointsLeftVariant;
	}
	HMShowBalloon(&standardMessage,
				  theMouse,
				  NULL,
				  NULL,
				  kBalloonWDEFID,
				  variant,
				  kHMRegularWindow);
	
	currentBalloon = (strings << 16) | index;
}
#endif
