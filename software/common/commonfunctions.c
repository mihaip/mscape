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

	for (k = 0; cStr[k]  && k < 255; k++){;} /* Pascal string lenght <= 255 */
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
								  
								  also included is a variation that uses
								  pascal strings
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

void DisplayValue(int value)
{
	char buff[255];
	sprintf(buff, "%d", value);
	DisplayAlert(buff, "");
}

void DisplayPAlert(Str255 error, Str255 reason)
{
	CGrafPtr			curPort;
	GDHandle			curDevice;
	
	GetGWorld(&curPort, &curDevice);
	ParamText(error, reason, nil, nil);
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
//	WindowPtr	window;
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
//	RgnHandle 	menubarRgn;
	RgnHandle	newGrayRgn;

	
	if (gOriginalGrayRgn != nil || GetMBarHeight() == 0)
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

void BlockFill(unsigned char *block, int fill, int size)
{
	register int k;

	for (k = 0; k < size; k++) block[k] = (unsigned char)fill;
}

GrafPtr CreateGrafPort(Rect* bounds)	/* Originally written by Forrest Tanaka. */
{
	GrafPtr	savedPort;		/* Saved GrafPtr for later restore. */
	GrafPtr	newPort;		/* New GrafPort. */
	Rect	localBounds;	/* Local copy of bounds. */

	GetPort( &savedPort );

	/* Set the top-left corner of bounds to (0,0). */
	localBounds = *bounds;
	OffsetRect( &localBounds, -bounds->left, -bounds->top );

	/* Allocate a new GrafPort. */
	newPort = (GrafPtr)NewPtrClear( sizeof( GrafPort ) );
	
	if (newPort != nil)
	{
		/* Initialize the new port and make the current port. */
		OpenPort( newPort );

		/* Initialize and allocate the bitmap. */
		newPort->portBits.bounds = localBounds;
  		newPort->portBits.rowBytes = ((localBounds.right + 15) >> 4) << 1;
		newPort->portBits.baseAddr =  NewPtrClear( newPort->portBits.rowBytes *
													(long)localBounds.bottom );
		if (newPort->portBits.baseAddr != nil)
		{
			/* Clean up the new port. */
			newPort->portRect = localBounds;
			ClipRect( &localBounds );
			RectRgn( newPort->visRgn, &localBounds );
			BackColor(whiteColor);
			EraseRect( &localBounds );
		}
		else
		{
			/* Allocation failed; deallocate the port. */
			ClosePort( newPort );
			DisposePtr( (Ptr)newPort );
			newPort = nil;
		}
	}
	
	SetPort( savedPort );
	return newPort;
}

void DisposeGrafPort(GrafPtr doomedPort )		/* Originally written by Forrest Tanaka. */
{
	ClosePort( doomedPort );
	DisposePtr( doomedPort->portBits.baseAddr );
	DisposePtr( (Ptr)doomedPort );
}

void MakeTargetRect(Rect src, Rect* target)
{
	float scalingFactor;

	
	if ((target->bottom - target->top) < (src.bottom - src.top) &&
		(target->right - target->left) < (src.right - src.left))
	{
		OffsetRect(target, src.left, src.top);
		OffsetRect(target, ((src.right - src.left) - (target->right - target->left))/2, ((src.bottom - src.top) - (target->bottom - target->top))/2);
		return;
	}
	if ((target->bottom - target->top) > (target->right - target->left))
	{
		scalingFactor = (float)(src.bottom - src.top)/(float)(target->bottom - target->top);
		target->top *= scalingFactor;
		target->left *= scalingFactor;
		target->bottom *= scalingFactor;
		target->right *= scalingFactor;
		OffsetRect(target, src.left, src.top);
		OffsetRect(target, ((src.right - src.left) - (target->right - target->left))/2, 0);
		return;
	}
	else
	{
		scalingFactor = (float)(src.right - src.left)/(float)(target->right - target->left);
		target->top *= scalingFactor;
		target->left *= scalingFactor;
		target->bottom *= scalingFactor;
		target->right *= scalingFactor;
		OffsetRect(target, src.left, src.top);
		OffsetRect(target, 0, ((src.bottom - src.top) - (target->bottom - target->top))/2);
		return;
	}
}

OSType GetApplSignature ( )
{
	ProcessSerialNumber	PSN;
	ProcessInfoRec		info;
	Str31				processName;
	FSSpec				FileSpec;
	info.processInfoLength = sizeof ( ProcessInfoRec );	 					
	info.processName = processName;
	info.processAppSpec = &FileSpec;
	OSErr err = GetCurrentProcess(&PSN);
	GetProcessInformation(&PSN, &info);
	return info.processSignature;
}

NavTypeListHandle MakeTypeList ( OSType applSignature, int numTypes, ... )
{
	va_list		argptrs;		
	va_start ( argptrs, numTypes );
	NavTypeListHandle h = (NavTypeListHandle) NewHandleClear ( sizeof (NavTypeList) + 
																(sizeof (OSType) * (numTypes-1)) );
	if ( h != nil )
	{
		(*h)->componentSignature = (applSignature == 0L) ? 
									GetApplSignature ( ) : applSignature;
		(*h)->reserved = 0;
		(*h)->osTypeCount = numTypes;
		for ( int i = 0; i < numTypes; i++ )
		{
			OSType theType = va_arg ( argptrs, OSType );
			(*h)->osType[i] = theType;
		}
	}
	va_end ( argptrs );
	return h;
}

void DummyFunction(void){}

int GetDepth(int noOfColors)
{
	if (noOfColors <= 2)
		return 1;
	else if (noOfColors <= 4)
		return 2;
	else if (noOfColors <= 16)
		return 4;
	else if (noOfColors <= 256)
		return 8;
	
	return 8; // default value
}

void CropPixMap(PixMapHandle pixMap, int targetRowBytes)
{
	int oldRowBytes;
	short flags;
	
	oldRowBytes = (**pixMap).rowBytes & 0x3FFF;
	flags = (**pixMap).rowBytes & 0xC000;
	(**pixMap).rowBytes = targetRowBytes + flags;
	for (int i = 0; i < (**pixMap).bounds.bottom - (**pixMap).bounds.top; i++)
		BlockMove((*pixMap)->baseAddr + i*oldRowBytes, (*pixMap)->baseAddr + i*targetRowBytes, targetRowBytes);
}

void GetFSSpecFromAEDesc ( AEDesc &inDesc, FSSpec &outValue )
{
	Handle	dataH;
	AEDesc	coerceDesc = {typeNull, nil};

	if (inDesc.descriptorType == typeFSS) {
		dataH = inDesc.dataHandle;		// Descriptor is the type we want
		
	} else {							// Try to coerce to the desired type
		if (AECoerceDesc(&inDesc, typeFSS, &coerceDesc) == noErr) {
										// Coercion succeeded
			dataH = coerceDesc.dataHandle;

		} else {						// Coercion failed
			throw (errAETypeError);
		}
	}
	
	outValue = **(FSSpec**) dataH;	// Extract value from Handle
	if (coerceDesc.dataHandle != nil) {
		AEDisposeDesc(&coerceDesc);
	}
}

OSErr SendFinderAEOpen(FSSpec &inFile)
{
	OSErr    err = noErr;
	AEDesc      processDesc;
	AppleEvent     ae, aeReply;
	
	ae.descriptorType = aeReply.descriptorType = processDesc.descriptorType = typeNull;
	ae.dataHandle = aeReply.dataHandle = processDesc.dataHandle = nil;
            
//	Try_ 
//	{
		DescType finderType = 'MACS';
		err = ::AECreateDesc(typeApplSignature,&finderType,sizeof(DescType),&processDesc);
		
//		FailOSErr_(err);
		err   = ::AECreateAppleEvent(kCoreEventClass, kAEOpen,&processDesc,
                                                
		kAutoGenerateReturnID,kAnyTransactionID,&ae);
//		FailOSErr_(err);
               
		err = ::AEPutParamPtr(&ae,keyDirectObject,typeFSS,&inFile,sizeof(inFile));
//		FailOSErr_(err);

		err  = ::AESend(&ae,&aeReply, kAENoReply | kAENeverInteract,
		kAENormalPriority,
		kAEDefaultTimeout,nil,nil);
//		ailOSErr_(err);
//	}
	//Catch_(catchErr) {err = catchErr;} EndCatch_
            
	if (processDesc.descriptorType != typeNull) AEDisposeDesc(&processDesc);
	if (ae.descriptorType != typeNull) AEDisposeDesc(&ae);
	if (aeReply.descriptorType != typeNull) AEDisposeDesc(&aeReply);
	return err;
}
