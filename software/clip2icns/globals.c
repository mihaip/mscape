#include "clip2icns.h"

// ui stuff
bool		isDone;
CGrafPtr	startupPort;
GDHandle	startupDevice;
bool		navServicesAvailable;
PreferencesHandle preferences;

// k stuff
FSSpec		fileSpec;
short		appFile;
FSSpec		currentScheme;


// commonfunctions.h variables

unsigned short	gMenuBarHeight;
RgnHandle 		gOriginalGrayRgn = nil;
int				gSavedDepth=0;
