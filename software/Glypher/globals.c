#include "glypher.h"

// ui stuff
bool		isDone;
CGrafPtr	startupPort;
GDHandle	startupDevice;
bool		navServicesAvailable;

// icon stuff
FSSpec			glyphsSpec;
FSSpec			setSpec;
short			appFile;
PreferencesHandle preferences;

// commonfunctions.h variables

unsigned short	gMenuBarHeight;
RgnHandle 		gOriginalGrayRgn = nil;
int				gSavedDepth=0;
