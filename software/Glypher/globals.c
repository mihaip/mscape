#include <Navigation.h>
#include <icnsClass.h>

// ui stuff
bool		isDone;
CGrafPtr	startupPort;
GDHandle	startupDevice;
bool		navServicesAvailable;

// icon stuff
FSSpec			badgesSpec;
FSSpec			setSpec;
short			appFile;

// commonfunctions.h variables

unsigned short	gMenuBarHeight;
RgnHandle 		gOriginalGrayRgn = nil;
int				gSavedDepth=0;
