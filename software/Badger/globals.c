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
GWorldPtr		baseLarge8BitIconGWorld, baseLargeIconGWorld, baseLargeMaskGWorld, baseSmallIconGWorld, baseSmallMaskGWorld, baseLarge1BitMaskGWorld;
PixMapHandle	baseLarge8BitIconPix, baseLargeIconPix, baseLargeMaskPix, baseSmallIconPix, baseSmallMaskPix, baseLarge1BitMaskPix;	


// commonfunctions.h variables

unsigned short	gMenuBarHeight;
RgnHandle 		gOriginalGrayRgn = nil;
int				gSavedDepth=0;
