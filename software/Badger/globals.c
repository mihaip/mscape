#include <Navigation.h>

// ui stuff
bool		isDone;
CGrafPtr	startupPort;
GDHandle	startupDevice;
bool		navServicesAvailable;

// icon stuff
FSSpec			badgesSpec;
FSSpec			setSpec;
short			appFile;
GWorldPtr	baseLargeIconGWorld, baseLargeMaskGWorld, baseSmallIconGWorld, baseSmallMaskGWorld, baseLarge1BitMaskGWorld;
PixMapHandle	baseLargeIconPix, baseLargeMaskPix, baseSmallIconPix, baseSmallMaskPix, baseLarge1BitMaskPix;	


// commonfunctions.h variables

unsigned short	gMenuBarHeight;
RgnHandle 		gOriginalGrayRgn = nil;
int				gSavedDepth=0;
