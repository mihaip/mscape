#pragma once

class MHelp
{
	public:
		static void SetControlHelp(ControlHandle theControl, int resID, int stringNo);
		static void GetControlHelp(ControlHandle theControl, int *resID, int *stringNo);

		static void HandleHelp(Point theMouse, WindowPtr window);
		static void HandleHelp(DialogRef dialog, EventRecord* eventPtr);
		static void RemoveHelp();
		
		static void SetupDialogHelp(DialogRef theDialog, int resID);
		static void CleanupDialogHelp();
		
#if !TARGET_API_MAC_CARBON
		static bool HandleBalloon(ControlHandle theControl, Point theMouse);
		static void HandleBalloon(int strings, int index, Rect ballonRect, Point theMouse);
#endif
	private:
		static int currentBalloon;
};
