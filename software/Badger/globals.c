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
GWorldPtr		baseLarge8BitIconGWorld, baseLargeIconGWorld, baseLargeMaskGWorld, baseLarge1BitMaskGWorld;
GWorldPtr		baseSmall8BitIconGWorld, baseSmallIconGWorld, baseSmallMaskGWorld, baseSmall1BitMaskGWorld; 
PixMapHandle	baseLarge8BitIconPix, baseLargeIconPix, baseLargeMaskPix, baseLarge1BitMaskPix;
PixMapHandle	baseSmall8BitIconPix, baseSmallIconPix, baseSmallMaskPix, baseSmall1BitMaskPix;


// commonfunctions.h variables

unsigned short	gMenuBarHeight;
RgnHandle 		gOriginalGrayRgn = nil;
int				gSavedDepth=0;
