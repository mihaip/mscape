#include "commonfunctions.h"

const WindowPtr kFrontmost = (WindowPtr)-1L;
const int kMessageDialogID = 3000;

/*----------------------------------------------------------------------*/
// GetScreenDepth, from the Mac Game Programming Gurus book, until I can write
// my own
/*----------------------------------------------------------------------*/

short GetScreenDepth (void)
{
	short			thisDepth;
	char			wasState;
	GDHandle		thisGDevice;
	
	thisGDevice = GetMainDevice();
	if (thisGDevice != nil)							// Make sure we have device handle.
	{
		wasState = HGetState((Handle)thisGDevice);	// Remember the handle's state.
		HLock((Handle)thisGDevice);					// Lock the device handle down.
													// Get it's depth (pixelSize).
		thisDepth = (**(**thisGDevice).gdPMap).pixelSize;
		HSetState((Handle)thisGDevice, wasState);	// Restore handle's state.
	}
	else
	{
		DisplayAlert("Can't get screen depth ", "because of an unknown reason.");				// Post generic error message.
		ExitApplication();
	}
	return (thisDepth);								// Return screen depth.
}


/*-----------------------------------------------------
 * function: 	C2Pas
 * input:		A C string and a pointer to the Pascal one
 * return:		A pointer to the Pascal string
 * description:	Converts a C (\0 terminated) string into
 *				a Pascal one (\length<string>).
 * note:		The output pointer can be the same with 
 *				input one.
 * by:			Emy Parparita
 *-----------------------------------------------------*/
char* C2Pas(char* cStr, Str255 pStr)
{
	register int	k,
					l;

	for (k = 0; cStr[k]  && k < 255; k++); /* Pascal string lenght <= 255 */
	for (l = k; k > 0; k--) pStr[k] = cStr[k - 1];
	pStr[0] = l;
	return((char*)pStr);
}/* C2Pas() */

/*----------------------------------------------------------------------*/

void InitToolBox(void)
{
	InitGraf (&qd.thePort);
	InitFonts();
	FlushEvents(everyEvent, 0);
	InitWindows();
	InitMenus();
	TEInit();
	InitDialogs( nil );
	InitCursor();
	
	ForeColor (blackColor);
	BackColor (whiteColor);

	MaxApplZone();				// Grab application memory.
	
	MoreMasters();
	MoreMasters();
	MoreMasters();
	MoreMasters();
	MoreMasters();
	
	GetDateTime((unsigned long *)&qd.randSeed);		// Randomize random seed.
}

/*----------------------------------------------------------------------*/

void ExitApplication(void)
{
	FlushEvents(everyEvent, 0);
	ExitToShell();
}

/*----------------------------------------------------------------------*/
/* DisplayAlert(error, reason) -- draws an alert with the two parameters,
								  error and reason, as it's contents
/*----------------------------------------------------------------------*/


void DisplayAlert(const char *error, const char *reason)
{
	Str255 PascalError, PascalReason;
	CGrafPtr			curPort;
	GDHandle			curDevice;
	
	GetGWorld(&curPort, &curDevice);
	
	C2Pas((char*)error, PascalError);
	C2Pas((char*)reason, PascalReason);
	
	ParamText(PascalError, PascalReason, nil, nil);
	NoteAlert(3000,nil);
	SetGWorld(curPort, curDevice);
}


/*----------------------------------------------------------------------*/
/* DisplayWindow(windowID) -- draws a window with windowID
/*----------------------------------------------------------------------*/


WindowPtr DisplayWindow(int windowID)
{
	WindowPtr	window;
	char		errorBuffer[256];
	
	window = GetNewCWindow(windowID, nil, kFrontmost);
	
	if (window == nil)
	{
		sprintf(errorBuffer, "because window ID %d not found", windowID);
		DisplayAlert("Can't display window ", errorBuffer);
		
		ExitApplication();
	}
	
	ShowWindow(window);
	SetPort(window);
	
	return window;
}

/*----------------------------------------------------------------------*/
/* DrawPicture(pictureID) -- draws a picture with pictureID in the front
							 most window
/*----------------------------------------------------------------------*/

void DrawPicture(int pictureID)
{
	Rect		pictureRect;
	WindowPtr	window;
	PicHandle	picture;
	char		errorBuffer[256];
	
	//window = FrontWindow();
	
	pictureRect = qd.thePort->portRect;
	
	picture = GetPicture(pictureID);
	
	if (picture == nil)
	{
		sprintf(errorBuffer, "because picture ID %d not found", pictureID);
		DisplayAlert("Can't draw picture", errorBuffer);
		
		ExitApplication();
	}
	
	//CenterPict(picture, &pictureRect);
	pictureRect = (**(picture)).picFrame;
	DrawPicture(picture, &pictureRect);
}

/*----------------------------------------------------------------------*/
/* CenterPict(picture, destRectPtr) -- centers picture in the destRectPtr
/*----------------------------------------------------------------------*/


void CenterPict(PicHandle picture, Rect *destRectPtr)
{
	Rect	windRect, pictRect;
	
	windRect = *destRectPtr;
	pictRect = (**(picture)).picFrame;
	
	OffsetRect(&pictRect, windRect.left - pictRect.left, windRect.top - pictRect.top);
	OffsetRect(&pictRect, (windRect.right - pictRect.right)/2, (windRect.bottom - pictRect.bottom)/2);
	
	*destRectPtr = pictRect;
}

/*----------------------------------------------------------------------*/
/* Sleep - pauses for a a certain amount of time, set by the parameter
/* sleepDuration. It's used to set a speed limit.
/*----------------------------------------------------------------------*/

void Sleep (int sleepDuration)
{
int targetTicks = TickCount() + sleepDuration;
	do
	{
	}
	while (TickCount() < targetTicks);			// Loop until TickCount() catches up.
}
//
//	hideMenuBar -
//
//	Hides the menu bar and adds it to the area that can be drawn
//

void HideMenubar( void )
{
	GDHandle 	mainScreen;					// the information on the main screen
	Rect 		mainScreenRect;				// the rect that bounds the menu bar
	RgnHandle 	mainScreenRgn;				// the region of the menu bar
	RgnHandle 	menubarRgn;
	RgnHandle	newGrayRgn;

	
	if (gOriginalGrayRgn != nil || GetMBarHeight == 0)
		return; // menubar already hidden
		
	// record the menu bar height
	gMenuBarHeight = GetMBarHeight();
	
	// set the menu bar to no height
	LMSetMBarHeight( 0 );
	
	// save the original gray regions (so we can restore it later)
	//gOriginalGrayRgn = NewRgn();
	gOriginalGrayRgn = LMGetGrayRgn();

	// make sure that the entire main screen is ours to play with (no menu bars or corners)
	mainScreenRgn = NewRgn();
	newGrayRgn = NewRgn();
	mainScreen = GetMainDevice();
	mainScreenRect = ( ( *mainScreen )->gdRect );
	RectRgn( mainScreenRgn, &mainScreenRect );
	UnionRgn( gOriginalGrayRgn, mainScreenRgn, newGrayRgn );
	LMSetGrayRgn( newGrayRgn );
	
	
	// draw the desktop
	PaintOne( ( WindowRef )0L, newGrayRgn );
}


//
//	showMenuBar -
//
//	Shows the menu bar and removes it from the drawable area.
//

void ShowMenubar( void )
{
	if (gOriginalGrayRgn == nil || GetMBarHeight() != 0)
		return;
	
	//set the menu bar to its normal height
	LMSetMBarHeight( gMenuBarHeight );
	
	// restore the original gray region
	LMSetGrayRgn( gOriginalGrayRgn );
	
	gOriginalGrayRgn = nil;
	
	// draw the menu bar
	DrawMenuBar();
	
}


/*
Boolean IsKeyPressed(short keyCode)
{
	unsigned char	ourKeyMap[16];
	long			keyMapIndex;
	Boolean			isKeyPressed;
	short			bitToCheck;
	
	GetKeys((KeyMap)ourKeyMap);
	keyMapIndex = ourKeyMap[keyCode/8];
	bitToCheck = keyCode % 8;
	isKeyPressed = (keyMapIndex >> bitToCheck) & 0x01;
	
	return isKeyPressed;
}
*/
// DisplayRect (Rect )
// displays an alert with the coordinates of the Rect
// used for debugging

void DisplayRect(Rect rectToShow)
{
	char	buff[256];
	sprintf(buff, "top: %d, left: %d -- bottom: %d, right: %d", rectToShow.top, rectToShow.left, rectToShow.bottom, rectToShow.right);
	DisplayAlert(buff, "");
}
// short ReadDataByte(Ptr, long)
// gets a word from the pointer, incremements the offset and returns the data
// from the Black Art of Mac Programming

// short ReadDataByte(Ptr, long)
// gets a byte from the handle, incremements the offset and returns the data
// from the Black Art of Mac Programming

char ReadDataByte(Handle data, int *currentOffset)
{	
	long offset;
	
	offset = *currentOffset;
	*currentOffset += 1;
	return (*((char *)(*data) + offset));
}

// short ReadDataWord(Ptr, long)
// gets a word from the handle, incremements the offset and returns the data
// from the Black Art of Mac Programming

short ReadDataWord(Handle data, int *currentOffset)
{	
	int offset;
	offset = *currentOffset;
	*currentOffset +=2;
	return (*((unsigned char *)(*data) + offset) << 8) + *((unsigned char *)(*data) + offset + 1) ;
}

// DrawTranslucentRect(Rect* )
// draws a fake (checkerboard pattern) translucent rect using the foreground color

void DrawTranslucentRect(Rect* targetRect)
{
	int			oldMode;
	Pattern		oldPattern;
	
	oldMode = qd.thePort->pnMode;
	oldPattern = qd.thePort->pnPat;

	PenMode(srcOr);
	PenPat(&qd.gray);
	PaintRect(targetRect);
	
	PenMode(oldMode);
	PenPat(&oldPattern);
}

void CopyString(Str255 dst, const Str255 src)
{
	int k, l;
	for (k=0, l=src[0]; k <= l; k++)
		dst[k] = src[k];
}

