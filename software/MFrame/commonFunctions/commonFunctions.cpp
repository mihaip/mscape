#include "commonfunctions.h"
#include "graphicalFunctions.h"
#include "MUtilities.h"
#include <string.h>

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

void DisplayFloat(float value)
{
	char buff[255];
	sprintf(buff, "%f", value);
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
/* GetWindow(windowID) -- creates a window based on the WIND resource with
						  ID windowID
/*----------------------------------------------------------------------


WindowPtr GetWindow(int windowID)
{
	WindowPtr	window;
	char		errorString[256];
	
	window = GetNewCWindow(windowID, nil, kFrontmost);
	
	if (window == NULL)
	{
		sprintf(errorString, "because window ID %d not found", windowID);
		DisplayAlert("Can't display window ", errorString);
		
		ExitApplication();
	}
	return window;
}*/

/*----------------------------------------------------------------------*/
/* DrawPicture(pictureID) -- draws a picture with pictureID in the front
							 most window
/*----------------------------------------------------------------------*/

void DrawResPicture(int pictureID)
{
	Rect		pictureRect;
	WindowPtr	window;
	PicHandle	picture;
	char		errorBuffer[256];
	
	window = FrontWindow();
	
	GetPortBounds(GetQDGlobalsThePort(), &pictureRect);
	
	picture = GetPicture(pictureID);
	
	if (picture == nil)
	{
		sprintf(errorBuffer, "because picture ID %d not found", pictureID);
		DisplayAlert("Can't draw picture", errorBuffer);
		
		ExitApplication();
	}
	
	CenterPict(picture, &pictureRect);
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
	/*GDHandle 	mainScreen;					// the information on the main screen
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
	PaintOne( ( WindowRef )0L, newGrayRgn );*/
}


//
//	showMenuBar -
//
//	Shows the menu bar and removes it from the drawable area.
//

void ShowMenubar( void )
{
	/*if (gOriginalGrayRgn == nil || GetMBarHeight() != 0)
		return;
	
	//set the menu bar to its normal height
	LMSetMBarHeight( gMenuBarHeight );
	
	// restore the original gray region
	LMSetGrayRgn( gOriginalGrayRgn );
	
	gOriginalGrayRgn = nil;
	
	// draw the menu bar
	DrawMenuBar();
	*/
}

#pragma mark -

bool IsKeyPressed(short keyCode)
{
	unsigned char	ourKeyMap[16];
	long			keyMapIndex;
	short			bitToCheck;

#if TARGET_API_MAC_CARBON
	GetKeys((long*)ourKeyMap);
#else
	GetKeys((unsigned long*)ourKeyMap);
#endif
	keyMapIndex = ourKeyMap[keyCode/8];
	bitToCheck = keyCode % 8;
	return (keyMapIndex >> bitToCheck) & 0x01;
}

void GetKeyName(short keyCode, Str255 keyName)
{
	GetIndString(keyName, rKeyNames, keyCode + 1);
}

bool KeysArePressed()
{
	KeyMap			keys;
	
	GetKeys(keys);
	
	for (int i=0; i < 4; i++)
		if (keys[i])
			return true;
			
	return false;
}

int GetNextKeyPressed(int startingPoint)
{
	unsigned char	ourKeyMap[16];
	long			keyMapIndex;
	short			bitToCheck;
	
#if TARGET_API_MAC_CARBON
	GetKeys((long*)ourKeyMap);
#else
	GetKeys((unsigned long*)ourKeyMap);
#endif
	
	for (int currentKeyCode = startingPoint; currentKeyCode < 128; currentKeyCode++)
	{
		keyMapIndex = ourKeyMap[currentKeyCode/8];
		bitToCheck = currentKeyCode % 8;
		if ((keyMapIndex >> bitToCheck) & 0x01)
			return currentKeyCode;
	}
	
	return -1;
}

#pragma mark -

// DisplayRect (Rect )
// displays an alert with the coordinates of the Rect
// used for debugging

void DisplayRect(Rect rectToShow)
{
	char	buff[256];
	sprintf(buff, "top: %d, left: %d -- bottom: %d, right: %d", rectToShow.top, rectToShow.left, rectToShow.bottom, rectToShow.right);
	DisplayAlert(buff, "");
}

void DisplayPoint(Point point)
{
	char	buff[256];
	sprintf(buff, "x: %d y: %d", point.h, point.v);
	DisplayAlert(buff, "");
}

// DisplayColor (RGBColor)
// displays an alert with the components of the color
// used for debugging

void DisplayColor(RGBColor color)
{
	char	buff[256];
	sprintf(buff, "red: %d, green: %d, blue: %d", color.red, color.green, color.blue);
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
	int				oldMode;
	PixPatHandle	oldPattern;
	Pattern			gray;
	
	oldMode = GetPortPenMode(GetQDGlobalsThePort());
	oldPattern = PixPatHandle(NewHandle(sizeof(PixPat)));
	GetPortPenPixPat(GetQDGlobalsThePort(), oldPattern);
	

	PenMode(srcOr);
	PenPat(GetQDGlobalsGray(&gray));
	PaintRect(targetRect);
	
	SetPortPenMode(GetQDGlobalsThePort(), oldMode);
	SetPortPenPixPat(GetQDGlobalsThePort(), oldPattern);
	
	DisposeHandle(Handle(oldPattern));
}

void CopyString(Str255 dst, const Str255 src)
{
	short k, l;
	for (k=0, l=src[0]; k <= l; k++)
		dst[k] = (unsigned char) src[k];
}

void AppendString(Str255 string1, Str255 string2)
{
	int s1Index, s2Index;
	s1Index = string1[0] + 1;
	s2Index = 1;
	while (s2Index <= string2[0] || s2Index > 255)
		string1[s1Index++] = string2[s2Index++];
	string1[0]+= string2[0];
}

int FindSubstring(Str255 string, Str255 pattern)
{
	int currentIndex = 1;
	bool found = false;
	
	while (currentIndex <= string[0] && !found)
	{
		if (string[currentIndex] == pattern[1])
		{
			found = true;
			for (int i = 1; i < pattern[0]; i++)
				if (string[currentIndex + i] == pattern[1 + i] && found)
					found = true;
				else
					found = false;
		}
		currentIndex++;
	}
	
	if (found)
		return currentIndex - 2;
	else
		return -1;
}

void SubstituteString(Str255 string, const Str255 pattern, Str255 replace)
{
	int insertionIndex, i;
	Str255	temp;
	
	CopyString(temp, string);
	
	insertionIndex = FindSubstring(string, (unsigned char*)pattern);
	
	if (insertionIndex == -1)
		return;
		
	string[0] += (replace[0] - pattern[0]);

	for (i=1; i <= replace[0]; i++)
		string[i + insertionIndex] = replace[i];
		
	i += insertionIndex;
	
	for (int j = insertionIndex + pattern[0] + 1; i <= string[0]; i++, j++)
		string[i] = temp[j];
} 

void BlockFill(unsigned char *block, int fill, int size)
{
	register int k;

	for (k = 0; k < size; k++) block[k] = (unsigned char)fill;
}

void FillPixMap32(PixMapHandle src, unsigned long fill)
{
	register int i, j;
	register long *rowBaseAddress, rowLongs, noOfRows, noOfPixels;
	
	noOfRows = (**src).bounds.bottom - (**src).bounds.top;
	noOfPixels = (**src).bounds.right - (**src).bounds.left;
	rowBaseAddress = (long *)(**src).baseAddr;
	rowLongs = ((**src).rowBytes & 0x3FFF)/4;
	
	for (j = 0; j < noOfRows; j++, rowBaseAddress += rowLongs)
		for (i=0; i < noOfPixels; i++)
			rowBaseAddress[i] = fill;
}

#if !TARGET_API_MAC_CARBON
GrafPtr CreateGrafPort(Rect* bounds)	/* Originally written by Forrest Tanaka. */
{
	GrafPtr	newPort;		/* New GrafPort. */
	GrafPtr	savedPort;		/* Saved GrafPtr for later restore. */
	
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
#endif

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

FSSpec GetApplicationFileSpec()
{
	ProcessSerialNumber	PSN;
	ProcessInfoRec		info;
	Str31				processName;
	FSSpec				fileSpec;
	
	info.processInfoLength = sizeof ( ProcessInfoRec );	 					
	info.processName = processName;
	info.processAppSpec = &fileSpec;
	
	GetCurrentProcess(&PSN);
	GetProcessInformation(&PSN, &info);
	
	return fileSpec;
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

pascal void DummyFunction(NavEventCallbackMessage callBackSelector, NavCBRecPtr callBackParms, void *callBackUD)
{
#pragma unused (callBackSelector, callBackParms, callBackUD)
}

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

/*void CropPixMap(PixMapHandle pixMap, int targetRowBytes)
{
//	QTSetPixMapHandleRowBytes(pixMap, targetRowBytes);
//	int oldRowBytes;
	short flags;
	
//	oldRowBytes = (**pixMap).rowBytes & 0x3FFF;
	flags = (**pixMap).rowBytes & 0xC000;
	(**pixMap).rowBytes = targetRowBytes | flags;
//	for (int i = 0; i < (**pixMap).bounds.bottom - (**pixMap).bounds.top; i++)
//		BlockMove((*pixMap)->baseAddr + i*oldRowBytes, (*pixMap)->baseAddr + i*targetRowBytes, targetRowBytes);
		
	if ((**pixMap).pmExt)
	{
		PixMapExtension** ext = (PixMapExtension**)(**pixMap).pmExt;
		(**ext).longRowBytes = targetRowBytes;
	}
}*/

void GetFSSpecFromAEDesc(AEDesc &inDesc, FSSpec &outValue)
{
	Ptr		data;
	AEDesc	coerceDesc = {typeNull, nil};
	int		size;
	bool	coerced = false;

	if (inDesc.descriptorType == typeFSS)
	{
		size = AEGetDescDataSize(&inDesc);
		data = NewPtr(size);
		
		AEGetDescData(&inDesc, data, size); // Descriptor is the type we want
	}
	else if (AECoerceDesc(&inDesc, typeFSS, &coerceDesc) == noErr) // Try to coerce to the desired type
	{
		coerced = true;
		size = AEGetDescDataSize(&coerceDesc);
		data = NewPtr(size);
		
		AEGetDescData(&coerceDesc, data, size); // Coercion succeeded
	}
	
	outValue = *(FSSpec*) data;	// Extract value from Handle
	
	DisposePtr(data);
	
	if (coerced)
		AEDisposeDesc(&coerceDesc);
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

void ToggleControl(ControlHandle theControl)
{
	if (IsControlActive(theControl))
		DeactivateControl(theControl);
	else
		ActivateControl(theControl);
}

void ToggleCheckbox(ControlHandle checkbox)
{
	Point	mouse;
	int		value;
	
	SAVEGWORLD;

#if OPAQUE_TOOLBOX_STRUCTS
	SetPortWindowPort(GetControlOwner(checkbox));
#else
	SetPort((**checkbox).contrlOwner);
#endif
	
	GetMouse(&mouse);

	if (TrackControl(checkbox, mouse, nil))
	{
		value = GetControlValue(checkbox);
		if (value == 1)
			value = 0;
		else
			value = 1;
		SetControlValue(checkbox, value);
	}
	
	RESTOREGWORLD;
}

OSStatus LaunchURL(ConstStr255Param urlStr)
{
	OSStatus err;
	ICInstance inst;
	long startSel;
	long endSel;
	
	err = ICStart(&inst, '????');			// Use your creator code if you have one!
	if (err == noErr)
	{
#if !TARGET_API_MAC_CARBON
		err = ICFindConfigFile(inst, 0, nil);
#endif
		if (err == noErr)
		{
			startSel = 0;
			endSel = urlStr[0];
			err = ICLaunchURL(inst, "\p", (char *) &urlStr[1], urlStr[0], &startSel, &endSel);
		}
		(void) ICStop(inst);
	}
	return (err);
}

bool CheckString(Str255 input)
{
	if (input[0] == 0)
		return false;
	for (int i = 1; i <= input[0]; i++)
		if (!((input[i] >= 0x30 && input[i] <= 0x39) || input[i] == 45))
			return false;
	
	return true;
}

void ToggleMenuItem(int menuID, int itemNo)
{
	MenuHandle		menu;
	menu = GetMenuHandle(menuID);
	if (IsMenuItemEnabled(menu, itemNo))
		DisableMenuItem(menu, itemNo);
	else
		EnableMenuItem(menu, itemNo);
}

#pragma mark -

void GetPenSize(int *penX, int* penY)
{
	PenState state;
	
	GetPenState(&state);
	
	*penX = state.pnSize.h;
	*penY = state.pnSize.v;
}

void SetPixelBlended(int x, int y, RGBColor color, float blendFactor)
{
	RGBColor	currentColor;
	
	GetCPixel(x, y, &currentColor);
	
	color.red = color.red * blendFactor + currentColor.red * (1.0 - blendFactor);
	color.green = color.green * blendFactor + currentColor.green * (1.0 - blendFactor);
	color.blue = color.blue * blendFactor + currentColor.blue * (1.0 - blendFactor);
	
	SetCPixel(x, y, &color);
}

void SetPixel32(int x, int y, long color, PixMapHandle target)
{
	char	*pixelAddress;
	
	x -= (**target).bounds.left;
	y -= (**target).bounds.top;
	
	pixelAddress = (**target).baseAddr + (y * ((**target).rowBytes & 0x3FFF)) + 4 * x;
	*((long *)pixelAddress) = color;
}

long GetPixel32(int x, int y, PixMapHandle src)
{
	char	*pixelAddress;
	
	x -= (**src).bounds.left;
	y -= (**src).bounds.top;
	
	pixelAddress = (**src).baseAddr + (y * ((**src).rowBytes & 0x3FFF)) + 4 * x;
	return *(long*)pixelAddress;
}

int GetColorIndex(RGBColor color, CTabHandle colorTable)
{
	int closestValue;
	double smallestDifference = 65535 * 3;
	double currentDifference;
	ColorSpec*	table;
	HSLColor inHSL, currentHSL;
	
	table = (**colorTable).ctTable;
	
	RGB2HSL(&color, &inHSL);
	
	for (int i = 0; i <= (**colorTable).ctSize; i++)
	{
		RGB2HSL(&table[i].rgb, &currentHSL);
		
		currentDifference = abs((double)(inHSL.hue - currentHSL.hue)) +
							abs((double)(inHSL.saturation - currentHSL.saturation)) + 
							abs((double)(inHSL.lightness - currentHSL.lightness));
		if (currentDifference < smallestDifference)
		{
			smallestDifference = currentDifference;
			closestValue = i;
		}
	}
	
	return closestValue;
}

RGBColor GetNearestColor(RGBColor color, CTabHandle colorTable)
{
	int closestValue;
	double smallestDifference = 65535 * 3;
	double currentDifference;
	ColorSpec*	table;
	HSLColor inHSL, currentHSL;
	
	table = (**colorTable).ctTable;
	
	RGB2HSL(&color, &inHSL);
	
	for (int i = 0; i <= (**colorTable).ctSize; i++)
	{
		RGB2HSL(&table[i].rgb, &currentHSL);
		
		currentDifference = abs(double(inHSL.hue - currentHSL.hue)) +
							abs(double(inHSL.saturation - currentHSL.saturation)) + 
							abs(double(inHSL.lightness - currentHSL.lightness));
		if (currentDifference < smallestDifference)
		{
			smallestDifference = currentDifference;
			closestValue = i;
		}
	}
	
	return table[closestValue].rgb;
}

void SetPixel8(int x, int y, long color, PixMapHandle target)
{
	char	*pixelAddress;
	
	x -= (**target).bounds.left;
	y -= (**target).bounds.top;
	
	pixelAddress = (**target).baseAddr + (y * ((**target).rowBytes & 0x3FFF)) + x;
	pixelAddress[0] = color;
}

long GetPixel8(int x, int y, PixMapHandle src)
{
	unsigned char	*pixelAddress;
	
	x -= (**src).bounds.left;
	y -= (**src).bounds.top;
	
	pixelAddress = (unsigned char *)(**src).baseAddr + (y * ((**src).rowBytes & 0x3FFF)) + x;
	return pixelAddress[0];
}

long GetPixel4(int x, int y, PixMapHandle src)
{
	char	*pixelAddress;
	long	pixelValue;
	
	x -= (**src).bounds.left;
	y -= (**src).bounds.top;
	
	pixelAddress = (**src).baseAddr + (y * ((**src).rowBytes & 0x3FFF)) + x/2;
	if (x & 1) // is odd, change bits 3..0
	{
		pixelValue = *pixelAddress & 0x0F; 
	}
	else // is even, change bits 7..4
	{
		pixelValue = (*pixelAddress >> 4)& 0xF; 
	}
	
	return pixelValue;
}

void SetPixel4(int x, int y, long color, PixMapHandle target)
{
	char	*pixelAddress;
	
	x -= (**target).bounds.left;
	y -= (**target).bounds.top;
	
	pixelAddress = (**target).baseAddr + (y * ((**target).rowBytes & 0x3FFF)) + x/2;
	if (x & 1) // is odd, change bits 3..0
	{
		*pixelAddress = (*pixelAddress & 0xF0) + (color); 
	}
	else // is even, change bits 7..4
	{
		*pixelAddress = (*pixelAddress & 0x0F) + (color << 4); 
	}
}

long GetPixel1(int x, int y, PixMapHandle src)
{
	char	*pixelAddress;
	
	x -= (**src).bounds.left;
	y -= (**src).bounds.top;
	
	pixelAddress = (**src).baseAddr + (y * ((**src).rowBytes & 0x3FFF)) + x/8;
	return (*pixelAddress >> (7 - (x & 7))) & 0x1;
} 

void SetPixel1(int x, int y, long color, PixMapHandle target)
{
	char	*pixelAddress;
	int		bitMask;
	
	x -= (**target).bounds.left;
	y -= (**target).bounds.top;
	
	pixelAddress = (**target).baseAddr + (y * ((**target).rowBytes & 0x3FFF)) + x/8;
	bitMask = 1 << (7 - (x & 7));
	*pixelAddress = ((*pixelAddress) & ~bitMask) + color * bitMask;
}

#pragma mark -

void DrawDialogBackground(ControlHandle theControl, Rect targetRect)
{
	SAVECOLORS;
	
	if (IsControlActive(theControl))
		SetThemePen(kThemeBrushDialogBackgroundActive, 32, true);
	else
		SetThemePen(kThemeBrushDialogBackgroundInactive, 32, true);
	
	PaintRect(&targetRect);
		
	RESTORECOLORS;
}

void DrawDialogBackground(ControlHandle theControl, RgnHandle targetRegion)
{
	SAVECOLORS;
	
	if (IsControlActive(theControl))
		SetThemePen(kThemeBrushDialogBackgroundActive, 32, true);
	else
		SetThemePen(kThemeBrushDialogBackgroundInactive, 32, true);
	
	PaintRgn(targetRegion);
		
	RESTORECOLORS;
}



void LocalToGlobalRect(Rect	*theRect)
{
	LocalToGlobal((Point*)(&theRect->top));
	LocalToGlobal((Point*)(&theRect->bottom));
}

void GlobalToLocalRect(Rect	*theRect)
{
	GlobalToLocal((Point*)(&theRect->top));
	GlobalToLocal((Point*)(&theRect->bottom));
}

void PixMapToPicture(PixMapHandle srcPix, RgnHandle maskRgn, PicHandle *targetPic)
{
	Rect			picRect;
	OpenCPicParams	picParams;
	OSErr			err;
	RgnHandle		oldClip;
	
	SAVEGWORLD;
	SAVECOLORS;
	
	oldClip = NewRgn();
	GetClip(oldClip);
	
	if (maskRgn == NULL)
		picRect = (**srcPix).bounds;
	else
		GetRegionBounds(maskRgn, &picRect);
		
	picParams.srcRect = picRect;
	picParams.hRes =  0x00480000;
	picParams.vRes =  0x00480000;
	picParams.version = -2;
	picParams.reserved1 = 0;
	picParams.reserved2 = 0;
	
	ClipRect(&picRect);
	*targetPic = OpenCPicture(&picParams);
	err = QDError();
	if (picRect.left == 0 && picRect.right == 32 &&
		picRect.top == 0 && picRect.bottom == 32 &&
		(**srcPix).pixelSize > 8)
	{
		Rect tempRect;
		
		tempRect = picRect;
		
		tempRect.right--;
		CopyBits((BitMap*)*srcPix,
				  GetPortBitMapForCopyBits(GetQDGlobalsThePort()),
				  &tempRect,
				  &tempRect,
				  srcCopy,
				  maskRgn);
				  
		tempRect = picRect;
		tempRect.left = tempRect.right - 1;
		
		CopyBits((BitMap*)*srcPix,
				  GetPortBitMapForCopyBits(GetQDGlobalsThePort()),
				  &tempRect,
				  &tempRect,
				  srcCopy,
				  maskRgn);
	}
	else
		CopyBits((BitMap*)*srcPix, GetPortBitMapForCopyBits(GetQDGlobalsThePort()), &picRect, &picRect, srcCopy, maskRgn);
	ClosePicture();
	
	RESTOREGWORLD;
	RESTORECOLORS;
	
	SetClip(oldClip);
	DisposeRgn(oldClip);
}

bool IsMenuItemEnabled(int menuID, int itemNo)
{
	MenuHandle		menu;
	menu = GetMenuHandle(menuID);
#if TARGET_API_MAC_CARBON
	return IsMenuItemEnabled(menu, itemNo);
#else
	return ((**menu).enableFlags & (1 << itemNo));
#endif
}

void MyEnableMenuItem(int menuID, int item)
{
	MenuHandle menu;
	
	menu = GetMenuHandle(menuID);
	EnableMenuItem(menu, item);
}

void MyDisableMenuItem(int menuID, int item)
{
	MenuHandle menu;
	
	menu = GetMenuHandle(menuID);
	DisableMenuItem(menu, item);
}

void SetCursor(int ID)
{
	CCrsrHandle		cCursor;
	CursHandle		cursor;
	
	cCursor = GetCCursor(ID);
	if (cCursor != NULL)
	{
		SetCCursor(cCursor);
		DisposeCCursor(cCursor);
	}
	else
	{
		cursor = GetCursor(ID);
		if (cursor != NULL)
		{
			SetCursor(*cursor);
			//DisposeHandle((Handle)cursor);
		}
	}
}

bool IsFrontProcess()
{
	ProcessSerialNumber	currentProcess, frontProcess;
	
	GetCurrentProcess(&currentProcess);
	GetFrontProcess(&frontProcess);
	
	if (currentProcess.lowLongOfPSN == frontProcess.lowLongOfPSN && currentProcess.highLongOfPSN == frontProcess.highLongOfPSN)
		return true;
	else
		return false;
}

OSStatus MakeTwoColorTable(CTabHandle *colorTable, RGBColor color1, RGBColor color2)
{
	*colorTable = (CTabHandle)NewHandle(sizeof(ColorTable) + sizeof(ColorSpec));
	
	if (*colorTable == NULL)
		return memFullErr;
	
	(***colorTable).ctSeed = 231654213;
	(***colorTable).ctFlags = 0;
	(***colorTable).ctSize = 1;
	(***colorTable).ctTable[0].value = 0;
	(***colorTable).ctTable[0].rgb = color1;
	(***colorTable).ctTable[1].value = 1;
	(***colorTable).ctTable[1].rgb = color2;
	
	return noErr;
}

OSStatus MakeThreeColorTable(CTabHandle *colorTable, RGBColor color1, RGBColor color2, RGBColor color3)
{
	*colorTable = (CTabHandle)NewHandle(sizeof(ColorTable) + 4 * sizeof(ColorSpec));
	
	if (*colorTable == NULL)
		return memFullErr;
	
	(***colorTable).ctSeed = 231654213;
	(***colorTable).ctFlags = 0;
	(***colorTable).ctSize = 4;
	(***colorTable).ctTable[0].value = 0;
	(***colorTable).ctTable[0].rgb = kWhiteAsRGB;
	(***colorTable).ctTable[1].value = 1;
	(***colorTable).ctTable[1].rgb = color1;
	(***colorTable).ctTable[2].value = 2;
	(***colorTable).ctTable[2].rgb = color2;
	(***colorTable).ctTable[3].value = 3;
	(***colorTable).ctTable[3].rgb = color3;
	(***colorTable).ctTable[4].value = 4;
	(***colorTable).ctTable[4].rgb = kBlackAsRGB;
	
	return noErr;
}
/*
OSStatus MakeThreeColorTable(CTabHandle *colorTable, RGBColor color1, RGBColor color2, RGBColor color3)
{
	*colorTable = (CTabHandle)NewHandle(sizeof(ColorTable) + 2 * sizeof(ColorSpec));
	
	if (*colorTable == NULL)
		return memFullErr;
	
	(***colorTable).ctSeed = 231654213;
	(***colorTable).ctFlags = 0;
	(***colorTable).ctSize = 2;
	(***colorTable).ctTable[0].value = 0;
	(***colorTable).ctTable[0].rgb = color1;
	(***colorTable).ctTable[1].value = 1;
	(***colorTable).ctTable[1].rgb = color2;
	(***colorTable).ctTable[2].value = 2;
	(***colorTable).ctTable[2].rgb = color3;
	
	return noErr;
}*/

pascal Boolean MaskColorSearch(RGBColor *color, long *result)
{
	RGBColor	matchColor;
	CGrafPtr	oldPort;
	GDHandle	oldDevice;
	
	GetGWorld(&oldPort, &oldDevice);
	
	matchColor.red = ((MatchRec*)(**oldDevice).gdRefCon)->red;
	matchColor.green = ((MatchRec*)(**oldDevice).gdRefCon)->green;
	matchColor.blue = ((MatchRec*)(**oldDevice).gdRefCon)->blue;
	
	if (color->red != matchColor.red || color->green != matchColor.green || color->blue != matchColor.blue)
		*result = 1;
	else
		*result = 0;
	return true;
}

// __________________________________________________________________________________________
// Name			: Make1BitMask
// Input		: srcPix: handle to a pixmap containing the source data
// Output		: targetPix: handle to the pixmap where the generated mask will be put;
// Description	: takes an 8 bit PixMap, and generates a mask out of it (using the system call
//				  CalcCMask, and assuming that white on the border areas is meant to be trans-
//				  parent). Masks are basically sillouettes of the drawing.

OSStatus Make1BitMask(PixMapHandle srcPix, PixMapHandle targetPix, Rect bounds)
{
#if TARGET_API_MAC_CARBON
	GWorldPtr		maskGW;
	PixMapHandle	maskPix;
#else
	GrafPtr			mask;
#endif
	RGBColor		white = {0xFFFF, 0xFFFF, 0xFFFF};
	ColorSearchUPP	maskColorSearchUPP;
	OSStatus		err = noErr;
	Rect			localBounds;
	
	SAVECOLORS;
	SAVEGWORLD;
	
	if (srcPix == NULL || targetPix == NULL)
		return paramErr;
	
	localBounds = bounds;
	OffsetRect(&localBounds, -localBounds.left, -localBounds.top);
	
	maskColorSearchUPP = NewColorSearchUPP(MaskColorSearch);

#if TARGET_API_MAC_CARBON
	NewGWorld(&maskGW, 1, &localBounds, NULL, NULL, 0);
	maskPix = GetGWorldPixMap(maskGW);
	LockPixels(maskPix);
	
	CalcCMask((BitMap*)*srcPix,
			  (BitMap*)*maskPix,
			  &bounds,
			  &localBounds,
			  &white,
			  maskColorSearchUPP,
			  0);
			  
	Rect targetBounds = (**targetPix).bounds;
	
	if ((**targetPix).pixelSize == 1)
	{
		// we have to clear off the destination and use the srcOr because of a Mac OS X 10.3
		// QuickDraw bug that causes clipping
		unsigned char* baseAddr = (unsigned char*)(**targetPix).baseAddr;
		int rowBytes = (**targetPix).rowBytes & 0x3FFF;
		for (int y=0; y < targetBounds.bottom - targetBounds.top; y++)
			memset(baseAddr + rowBytes * y, 0x00, rowBytes);
		
		CopyBits((BitMap*)*maskPix,
				 (BitMap*)*targetPix,
				 &localBounds,
				 &targetBounds,
				 srcOr,
				 NULL);
	}
	else
		CopyBits((BitMap*)*maskPix,
			 (BitMap*)*targetPix,
			 &localBounds,
			 &targetBounds,
			 srcCopy,
			 NULL);
			 
	UnlockPixels(maskPix);
	DisposeGWorld(maskGW);
#else
	mask = CreateGrafPort(&localBounds);
	
	CalcCMask((BitMap*)*srcPix,
			  GetPortBitMapForCopyBits(mask),
			  &bounds,
			  &localBounds,
			  &white,
			  maskColorSearchUPP,
			  0);
	
	CopyBits(GetPortBitMapForCopyBits(mask),
			 (BitMap*)*targetPix,
			 &localBounds,
			 &(**targetPix).bounds,
			 srcCopy,
			 NULL);
			 
	DisposeGrafPort(mask);
#endif	
	
	RESTORECOLORS;
	
	DisposeColorSearchUPP(maskColorSearchUPP);

	return err;
}


void SetControlText(ControlHandle control, Str255 text)
{
	SetControlData(control,
			       kControlNoPart,
			       kControlStaticTextTextTag,
			       text[0],
			       (char*)&text[1]);
}

void GetControlText(ControlHandle control, Str255 text)
{
	Str255 controlText;
	long realSize;
	
	GetControlData(control,
				   kControlNoPart,
				   kControlStaticTextTextTag,255,
				   (char*)&controlText[1],
				   &realSize);
	
	controlText[0] = realSize;
	
	CopyString(text, controlText);
}

void ResetStaticTextTitle(ControlHandle theControl)
{
	Str255 controlTitle;
	
	GetControlTitle(theControl, controlTitle);
	
	SetControlText(theControl, controlTitle);
}

// __________________________________________________________________________________________
// Name			: StandardEventFilter
// Input		: dialog: pointer to the dialog for which we are filtering events
//				  eventPtr: pointer to the event which just occured, which we must process
// Output		: itemHit: which item (if any) we declare that it was hit.
// Description	: Handles events in a dialog (in our case the WantToSave/DoError ones). It
//				  takes care of updates, key downs, etc. In most cases it passes on the
//				  processing to the standard system function (StdFilterProc).

pascal Boolean StandardEventFilter(DialogPtr dialog, EventRecord *eventPtr, short *itemHit)
{
	bool	handledEvent; // if true then our function tool care of the event

	handledEvent = false; // by default we didn't handle the event
	
	switch (eventPtr->what)
	{
		case activateEvt: // if the window isn't the dialog, then we tell the update function
		case updateEvt: //  to take care of it
			if((DialogPtr) eventPtr->message != dialog)
			{
				((UpdateFunctionPtr)GetWRefCon(GetDialogWindow(dialog)))(eventPtr);
				handledEvent = true;
			}
			break;
		case keyDown: // if the user presses a key, and it matches the first letter of the
		case autoKey: // third button, then we simulate a click on that button, complete
					  // with highlighting
			char key; // the character which symbolizes the key that was down
			ControlHandle thirdButton; // the button for which we must check hits
			Str255 buttonName; // the name of the button
			
			key = eventPtr->message & charCodeMask;
			GetDialogItemAsControl(dialog, kAlertStdAlertOtherButton, &thirdButton);
			if (thirdButton != NULL) // if there is a third button
			{
				GetControlTitle(thirdButton, buttonName);
				if (key == buttonName[1] || (key + 'A' - 'a') == buttonName[1])
				// if the pressed key is the fist letter of the button (regardless of the case)
				// then we simulate a click on it
				{
					*itemHit = kAlertStdAlertOtherButton;
					HiliteControl(thirdButton, 1);
					Sleep(9); // standard delay for highlighting, 9 ticks (9 * 1/60th of a second)
					HiliteControl(thirdButton, 0);
					handledEvent = true;
				}
				else
					handledEvent = StdFilterProc(dialog, eventPtr, itemHit);
					// if it was a different key then we let the system take care of it
			}
			break;
		default:
			// if it's not an event we support, then we let the system take care of it
			SAVEGWORLD;
			SetPortDialogPort(dialog);

			handledEvent = StdFilterProc(dialog, eventPtr, itemHit);

			RESTOREGWORLD;
		break;
	}
		 

	return(handledEvent);
}

short StringHeight(Str255 string)
{
	FontInfo info;
 	int lineCount = 1;
 	
 	for (int i=1; i <= string[0]; i++)
 		if (string[i] == '\r') lineCount++;
	
	GetFontInfo(&info);
	return lineCount * (info.ascent + info.leading + info.descent);
}

short CharacterHeight()
{
	FontInfo info;
	
	GetFontInfo(&info);
	return (info.ascent + info.leading + info.descent);
}

void DrawLinedString(Str255 string)
{
	int lineHeight, lineStart, lineEnd = 0;
	Str255 line;
	bool endOfString = false;
	
	lineHeight = StringHeight((unsigned char*)"\pa");
	
	while (!endOfString)
	{
		lineStart = lineEnd + 1;
		
		for (int i = lineStart; string[i] != '\r' && i <= string[0]; i++)
			lineEnd++;
		
		if (lineEnd == string[0])
			endOfString = true;
		else
			lineEnd++;
		
		line[0] = lineEnd - lineStart + 1;
		
		for (int i = lineStart; i <= lineEnd; i++)
			line[i - lineStart + 1] = string[i];
			
		DrawString(line);
		Move(-StringWidth(line), lineHeight);
	}
}

void StyleControl(ControlHandle theControl, short fontNo, short size, int style)
{
	ControlFontStyleRec			controlStyle;
	
	controlStyle.flags = kControlUseFontMask | kControlUseSizeMask | kControlUseFaceMask;
	controlStyle.font = fontNo; // this font is installed on all systems
	controlStyle.size = size;
	controlStyle.style = style;
	
	SetControlFontStyle(theControl, &controlStyle);
	
	Draw1Control(theControl);
}

int FindMenuItem(MenuHandle theMenu, Str255 itemName)
{
	int itemCount, location = 0;
	Str255 currentItemName;
	
	itemCount = CountMenuItems(theMenu);
	
	for (int i = 1; i <= itemCount; i++)
	{
		GetMenuItemText(theMenu, i, currentItemName);
		if (EqualString(currentItemName, itemName, 0, 0))
			location = i;
	}
	
	if (location == 0)
		location = itemCount;
	
	return location;
}

void SizeControl(ControlHandle theControl, int h, int v)
{
	Rect	newBounds;
	
#if OPAQUE_TOOLBOX_STRUCTS
	GetControlBounds(theControl, &newBounds);
#else
	newBounds = (**theControl).contrlRect;
#endif
	
	SetRect(&newBounds,
			newBounds.left,
			newBounds.top,
			newBounds.left + h,
			newBounds.top + v);
			
#if OPAQUE_TOOLBOX_STRUCTS
	SetControlBounds(theControl, &newBounds);
#else
	(**theControl).contrlRect = newBounds;
#endif

}

long NearestPowerOf2(unsigned long in)
{
	int out;
	for (out=0; (1 << out) < in; out++){;}
	
	return out;
}

void TouchFile(FSSpec spec) //spec is the file whose icon you changed
{
	CInfoPBRec  myCPB;

	if(spec.parID != 1)
	{
		myCPB.dirInfo.ioDrDirID = spec.parID;
		myCPB.dirInfo.ioVRefNum = spec.vRefNum;
		myCPB.dirInfo.ioNamePtr =  NULL;
		myCPB.dirInfo.ioFDirIndex = -1;

		if(PBGetCatInfoSync(&myCPB) == noErr)
		{
			 GetDateTime(&(myCPB.dirInfo.ioDrMdDat));
			 PBSetCatInfoSync(&myCPB);
		}
	}
}

unsigned long GetModificationDate(FSSpec spec)
{
	CInfoPBRec  myCPB;

	if(spec.parID != 1)
	{
		myCPB.dirInfo.ioDrDirID = spec.parID;
		myCPB.dirInfo.ioVRefNum = spec.vRefNum;
		myCPB.dirInfo.ioNamePtr =  NULL;
		myCPB.dirInfo.ioFDirIndex = -1;

		if(PBGetCatInfoSync(&myCPB) == noErr)
			return myCPB.dirInfo.ioDrMdDat;
			 PBSetCatInfoSync(&myCPB);
	}
	
	return -1;
}

OSErr FSpSetFinderFlags(FSSpec *folder, unsigned short fdFlags, bool orFlags)
{
    CInfoPBRec      PB;
    OSErr           error;

    PB.hFileInfo.ioCompletion = nil;
    PB.hFileInfo.ioNamePtr = folder->name;      
    PB.hFileInfo.ioVRefNum = folder->vRefNum;   
    PB.dirInfo.ioDrDirID = folder->parID;           
    PB.hFileInfo.ioFDirIndex = 0;   
    error = PBGetCatInfo(&PB, false);
    if (error)
        return(error);
        
    //  Since PBGetCatInfo changes the DrDirID and DrParID fields, reset
    //  them before we call SetCatInfo; else we'll get fnfErr
    PB.dirInfo.ioDrDirID = folder->parID;           
    
    //  Now set the flags.  If orFlags is true, or the desired flag
    //  with the current set--this is generally what we want to do
    if (orFlags)
        PB.hFileInfo.ioFlFndrInfo.fdFlags |= fdFlags;   
    else
        PB.hFileInfo.ioFlFndrInfo.fdFlags = fdFlags;    
    error = PBSetCatInfo(&PB, false);
    return(error);
}

#if !TARGET_API_MAC_CARBON
#pragma mark -

static char GetSelectKey(void)
{
	Str255 buttonText;
	
	GetIndString(buttonText, rSelectObjectStrings, sSelect);
	
	return buttonText[1];
}

// SetButtonName sets the name of the Select button in the dialog
//
// To do this, we need to call the Script Manager to truncate the
// label in the middle to fit the button and to merge the button
// name with the word Select (possibly followed by quotes).  Using
// the Script Manager avoids all sorts of problems internationally.
//
// buttonName is the name to appear following the word Select
// quoteFlag should be true if the name is to appear in quotes

static void SetButtonName(DialogPtr theDlgPtr, short buttonID, Str255 buttonName)
{
	ControlHandle button;
	Rect			buttonRect;
	Str255		buttonText;
	
	GetDialogItemAsControl(theDlgPtr, buttonID, &button);
	if (!EqualString(buttonName, "\pDesktop", true, true))
	{
		GetIndString(buttonText, rSelectObjectStrings, sSelect);
		SubstituteString(buttonText, "\p<file name>", buttonName);
	}
	else
	{
		GetIndString(buttonText, rSelectObjectStrings, sSelectDesktop);
	}
	
#if OPAQUE_TOOLBOX_STRUCTS
	GetControlBounds(button, &buttonRect);
#else
	buttonRect = (**button).contrlRect;
#endif
	TruncString(buttonRect.right - buttonRect.left - 20, buttonText, truncMiddle);
	SetControlTitle(button, buttonText);
}

// FlashButton briefly highlights the dialog button 
// as feedback for key equivalents

static void FlashButton(DialogPtr theDlgPtr, short buttonID)
{
	short			buttonType;
	Handle			buttonHandle;
	Rect			buttonRect;
	unsigned long	finalTicks;
	
	GetDialogItem(theDlgPtr, buttonID, &buttonType, &buttonHandle, &buttonRect);
	HiliteControl((ControlHandle) buttonHandle, kControlButtonPart);
	Delay(10, &finalTicks);
	HiliteControl((ControlHandle) buttonHandle, 0);
}

static Boolean SameFSSpec(FSSpecPtr spec1, FSSpecPtr spec2)
{
	return (spec1->vRefNum == spec2->vRefNum
			&& spec1->parID == spec2->parID
			&& EqualString(spec1->name, spec2->name, false, false));
}

// MyModalDialogFilter maps a key to the Select button, and handles
// flashing of the button when the key is hit

static pascal Boolean SFGetObjectModalDialogFilter(DialogPtr theDlgPtr, EventRecord* eventPtr,
											short *item, void* dataPtr)
{
	UserDataRecPtr	theUserDataRecPtr;
	bool			handledEvent = false;
	
	theUserDataRecPtr = (UserDataRecPtr)dataPtr;

	// make certain the proper dialog is showing, 'cause standard file
	// can nest dialogs but calls the same filter for each
	
	switch (eventPtr->what)
	{
		case activateEvt: // if the window isn't the dialog, then we tell the update function
		case updateEvt: //  to take care of it
			if((DialogPtr) eventPtr->message != theDlgPtr)
			{
				theUserDataRecPtr->updateFunction(eventPtr);
				handledEvent = true;
			}
			break;
		case keyDown:
			if (GetWRefCon(GetDialogWindow(theDlgPtr)) == sfMainDialogRefCon)
			{
				if ((eventPtr->modifiers & cmdKey) 
					&& ((eventPtr->message & charCodeMask) == GetSelectKey()))
				{
					*item = kSelectItem;
					FlashButton(theDlgPtr, kSelectItem);
					handledEvent = true;
				}
		}
			break;
		default:
			handledEvent = false;
			break;
	}
	
	return handledEvent;
}


// MyDlgHook is a hook routine that maps the select button to Open
// and sets the Select button name

static pascal short SFGetObjectDialogHook(short item, DialogPtr theDlgPtr, void* dataPtr)
{
	UserDataRecPtr	theUserDataRecPtr;
	long			desktopDirID;
	short			desktopVRefNum;
	FSSpec			tempSpec;
	OSErr			err;
	
	// be sure Std File is really showing us the intended dialog,
	// not a nested modal dialog
	
	if (GetWRefCon(GetDialogWindow(theDlgPtr)) != sfMainDialogRefCon)
	{
		return item;
	}
	
	theUserDataRecPtr = (UserDataRecPtr) dataPtr;
	
	// map the Select button to Open
	
	if (item == kSelectItem)
	{
		item = sfItemOpenButton;
	}
	
	// find the desktop folder
	
	err = FindFolder(theUserDataRecPtr->sfrPtr->sfFile.vRefNum,
					kDesktopFolderType, kDontCreateFolder,
					&desktopVRefNum, &desktopDirID);
	
	if (err != noErr)
	{
		// for errors, get value that won't match any real vRefNum/dirID
		desktopVRefNum = 0;
		desktopDirID = 0;
	}

	
	// change the Select button label if the selection has changed or
	// if this is the first call to the hook
	
	if (item == sfHookFirstCall
		|| item == sfHookChangeSelection
		|| item == sfHookRebuildList
		|| ! SameFSSpec(&theUserDataRecPtr->sfrPtr->sfFile,
					&theUserDataRecPtr->oldSelectionFSSpec))
	{
		// be sure there is a file name selected
		
		if (theUserDataRecPtr->sfrPtr->sfFile.name[0] != '\0')
		{
			SetButtonName(theDlgPtr, kSelectItem, theUserDataRecPtr->sfrPtr->sfFile.name);
		}
		else
		{
			// is the desktop selected?
			
			if (theUserDataRecPtr->sfrPtr->sfFile.vRefNum == desktopVRefNum
				&& theUserDataRecPtr->sfrPtr->sfFile.parID == desktopDirID)
			{
				// set button to "Select Desktop"
				SetButtonName(theDlgPtr, kSelectItem, "\pDesktop");
			}
			else
			{
				// get parent directory's name for the Select button
				//
				// passing an empty name string to FSMakeFSSpec gets the
				// name of the folder specified by the parID parameter
				
				(void) FSMakeFSSpec(theUserDataRecPtr->sfrPtr->sfFile.vRefNum,
					theUserDataRecPtr->sfrPtr->sfFile.parID, "\p",
					&tempSpec);
				SetButtonName(theDlgPtr, kSelectItem, tempSpec.name); // true -> use quotes
			}
		}
	}
	
	// save the current selection as the old selection for comparison next time
	//
	// it's not valid on the first call, though, or if we don't have a 
	// name available from standard file
	
	if (item != sfHookFirstCall || theUserDataRecPtr->sfrPtr->sfFile.name[0] != '\0')
	{
		theUserDataRecPtr->oldSelectionFSSpec = theUserDataRecPtr->sfrPtr->sfFile;
	}
	else
	{
		// on first call, empty string won't set the button correctly, 
		// so invalidate oldSelection
		
		theUserDataRecPtr->oldSelectionFSSpec.vRefNum = 999;
		theUserDataRecPtr->oldSelectionFSSpec.parID = 0;
	}
	
	return item;
}

#if !TARGET_API_MAC_CARBON
void StandardGetObject(FileFilterYDUPP fileFilter, UpdateFunctionPtr updateFunction, StandardFileReply *theSFR)
{
	Point 				thePt;
	SFTypeList			mySFTypeList;
	UserDataRec			myData;
	FSSpec				tempSpec;
	Boolean				folderFlag;
	Boolean				wasAliasedFlag;
	DlgHookYDUPP		dlgHookUPP;
	ModalFilterYDUPP	myModalFilterUPP;
	OSErr				err;
	
	
	// presumably we're running System 7 or later so CustomGetFile is
	// available
	
	// set initial contents of Select button to a space
	
	CopyString("\p ", theSFR->sfFile.name);
	
	// point the user data parameter at the reply record so we can get to it later
	
	myData.sfrPtr = theSFR;
	myData.updateFunction = updateFunction;
	
	// display the dialog
	
	dlgHookUPP = NewDlgHookYDProc(SFGetObjectDialogHook);
	myModalFilterUPP = NewModalFilterYDProc(SFGetObjectModalDialogFilter);
	
	thePt.h = thePt.v = -1;	// center dialog
	
	CustomGetFile(fileFilter, 
					-1,					// show all types
					mySFTypeList,
					theSFR,
					kSFGetObjectDlgID,
					thePt,				// top left point
					dlgHookUPP,
					myModalFilterUPP,
					nil,				// activate list
					nil,				// activate proc
					&myData);
					
	DisposeRoutineDescriptor(dlgHookUPP);
	DisposeRoutineDescriptor(myModalFilterUPP);
	
	// if cancel wasn't pressed and no fatal error occurred...
	
	if (theSFR->sfGood)
	{
		// if no name is in the reply record file spec,
		// use the file spec of the parent folder
		
		if (theSFR->sfFile.name[0] == '\0')
		{
			err = FSMakeFSSpec(theSFR->sfFile.vRefNum, theSFR->sfFile.parID,
								"\p", &tempSpec);
			if (err == noErr)
			{
				theSFR->sfFile = tempSpec;
			}
			else
			{
				// no name to return, forget it
				
				theSFR->sfGood = false;
			}
		}
		
		// if there is now a name in the file spec, check if it's
		// for a folder or a volume
		
		if (theSFR->sfFile.name[0] != '\0')
		{
			// the parID of the root of a disk is always fsRtParID == 1
			
			if (theSFR->sfFile.parID == fsRtParID)
			{
				theSFR->sfIsVolume = true;
				theSFR->sfIsFolder = false;	// it would be reasonable for this to be true, too
			}
			
			// we have a valid FSSpec, now let's make sure it's not for an alias file
			
			err = ResolveAliasFile(&theSFR->sfFile, true, &folderFlag, &wasAliasedFlag);
			if (err != noErr)
			{
				theSFR->sfGood = false;
			}
			
			// did the alias resolve to a folder?
			
			if (folderFlag  && ! theSFR->sfIsVolume)
			{
				theSFR->sfIsFolder = true;
			}
		}
	}
}
#endif

pascal Boolean OnlyVisibleObjectsCustomFileFilter(CInfoPBPtr myCInfoPBPtr, Ptr dataPtr)
{
#pragma unused (dataPtr)

	// return true if this item is invisible

	Boolean visibleFlag;
	
	visibleFlag = ! (myCInfoPBPtr->hFileInfo.ioFlFndrInfo.fdFlags & kIsInvisible);
	
	// because the semantics of the filter proc are "true means don't show
	// it" we need to invert the result that we return
	
	return !visibleFlag;
}

OSStatus GetFile(Str255 client, long creator, long fileType, Str255 message, FSSpec* file)
{
	if (NavServicesAvailable())
	{
		NavDialogOptions	dialogOptions;
		NavReplyRecord		reply;
		NavEventUPP			eventUPP;
		AEDesc				resultDesc;
		NavTypeListHandle	typeList;
		OSErr				err;
		
		eventUPP = NewNavEventUPP(DummyFunction);
		
		NavGetDefaultDialogOptions ( &dialogOptions );
		dialogOptions.dialogOptionFlags -= kNavAllowMultipleFiles;
		dialogOptions.dialogOptionFlags += kNavNoTypePopup;
		dialogOptions.dialogOptionFlags -= kNavAllowPreviews;
		CopyString(dialogOptions.clientName, client);
		CopyString(dialogOptions.message, message);
		if (creator == '****' && fileType == '****')
		{
			typeList = NULL;
			dialogOptions.dialogOptionFlags += kNavAllowInvisibleFiles;
		}
		else
			typeList = MakeTypeList (creator, 1, fileType);
		
		err = NavGetFile(NULL,
				   &reply,
				   &dialogOptions,
				   eventUPP,
				   NULL,
				   NULL,
				   typeList,
				   NULL);
		
		if (reply.validRecord)
		{
			AEGetNthDesc( &(reply.selection), 1, typeFSS, NULL, &resultDesc );

			GetFSSpecFromAEDesc(resultDesc, *file);
		
			NavDisposeReply(&reply);
			AEDisposeDesc(&resultDesc);
			DisposeNavEventUPP(eventUPP);
			return noErr;
		}
		else
		{
			DisposeNavEventUPP(eventUPP);
			NavDisposeReply(&reply);
			return paramErr;
		}
	}
#if !TARGET_API_MAC_CARBON
	else
	{
		StandardFileReply	reply;
		SFTypeList			typeList;
		
		typeList[0] = fileType;
		
		if (fileType != '****')
			StandardGetFile(nil, 1, typeList, &reply);
		else
			StandardGetFile(nil, -1, typeList, &reply);
		
		if ( reply.sfGood)
		{
			*file = reply.sfFile;
			return noErr;
		}
		return paramErr;
	}
#endif
	return paramErr;
}

OSStatus NewFile(Str255 client,
			     long creator,
			     long fileType,
			     Str255 defaultName,
			     Str255 message,
			     FSSpec* file,
			     NavEventUPP eventFilter)
{
	if (NavServicesAvailable())
	{
		NavDialogOptions	dialogOptions;
		NavReplyRecord		reply;
		AEDesc				resultDesc;
		OSStatus			theErr;
		
		
		NavGetDefaultDialogOptions ( &dialogOptions );
		dialogOptions.dialogOptionFlags -= kNavAllowMultipleFiles;
		dialogOptions.dialogOptionFlags += kNavNoTypePopup;
		dialogOptions.dialogOptionFlags -= kNavAllowPreviews;
		CopyString(dialogOptions.clientName, client);
		CopyString(dialogOptions.savedFileName, defaultName);
		CopyString(dialogOptions.message, message);
		
		theErr = NavPutFile(NULL,	// use system's default location
				   &reply,
				   &dialogOptions,
				   eventFilter,
				   creator,
				   fileType,
				   NULL);
						
		
		if (reply.validRecord)
		{
			AEGetNthDesc( &(reply.selection), 1, typeFSS, NULL, &resultDesc );

			GetFSSpecFromAEDesc(resultDesc, *file);
			
			NavDisposeReply(&reply);
			AEDisposeDesc(&resultDesc);
			return noErr;
		}
		else
		{
			NavDisposeReply(&reply);
			return paramErr;
		}
	}
#if !TARGET_API_MAC_CARBON
	else
	{
		StandardFileReply reply;

		StandardPutFile(message, defaultName, &reply);

		if ( reply.sfGood )
		{
			*file = reply.sfFile;	
			return noErr;
		}
		return paramErr;
	}
#endif
	return paramErr;
}
#endif

#pragma mark -

OSErr Get1IconSuite(IconSuiteRef* theIconSuite, SInt16 ID, IconSelectorValue selector)
{
	NewIconSuite(theIconSuite);
	
	// large stuff
	if (selector & kSelectorLarge1Bit)
		AddResourceToSuite('ICN#', ID, *theIconSuite);
	if (selector & kSelectorLarge4Bit)
		AddResourceToSuite('icl4', ID, *theIconSuite);
	if (selector & kSelectorLarge8Bit)
		AddResourceToSuite('icl8', ID, *theIconSuite);
	if (selector & kSelectorLarge32Bit)
		AddResourceToSuite('il32', ID, *theIconSuite);
	if (selector & kSelectorLarge8BitMask)
		AddResourceToSuite('l8mk', ID, *theIconSuite);
		
	// small stuff
	if (selector & kSelectorSmall1Bit)
		AddResourceToSuite('ics#', ID, *theIconSuite);
	if (selector & kSelectorSmall4Bit)
		AddResourceToSuite('ics4', ID, *theIconSuite);
	if (selector & kSelectorSmall8Bit)
		AddResourceToSuite('ics8', ID, *theIconSuite);
	if (selector & kSelectorSmall32Bit)
		AddResourceToSuite('is32', ID, *theIconSuite);
	if (selector & kSelectorSmall8BitMask)
		AddResourceToSuite('s8mk', ID, *theIconSuite);
		
	// huge stuff
	if (selector & kSelectorHuge1Bit)
		AddResourceToSuite('ich#', ID, *theIconSuite);
	if (selector & kSelectorHuge4Bit)
		AddResourceToSuite('ich4', ID, *theIconSuite);
	if (selector & kSelectorHuge8Bit)
		AddResourceToSuite('ich8', ID, *theIconSuite);
	if (selector & kSelectorHuge32Bit)
		AddResourceToSuite('ih32', ID, *theIconSuite);
	if (selector & kSelectorHuge8BitMask)
		AddResourceToSuite('h8mk', ID, *theIconSuite);
		
	// mini stuff
	if (selector & kSelectorMini1Bit)
		AddResourceToSuite('icm#', ID, *theIconSuite);
	if (selector & kSelectorMini4Bit)
		AddResourceToSuite('icm4', ID, *theIconSuite);
	if (selector & kSelectorMini8Bit)
		AddResourceToSuite('icm8', ID, *theIconSuite);
		
	return noErr;
	
}

void AddResourceToSuite(OSType iconType, SInt16 ID, IconSuiteRef theIconSuite)
{
	Handle iconResource;
	
	iconResource = Get1Resource(iconType, ID);
	
	if (iconResource != NULL)
	{
		DetachResource(iconResource);
		AddIconToSuite(iconResource, theIconSuite, iconType);
		
	}
}

long RegionArea(RgnHandle rgn)
{
	Rect	regionBounds;
	
	GetRegionBounds(rgn, &regionBounds);
	
	return RectArea(regionBounds);	
}

long RectArea(Rect bounds)
{
	return (bounds.bottom - bounds.top) * (bounds.right - bounds.left);
}

void GrowHandle(Handle* inHandle, int delta)
{
	Handle temp;
	int oldSize;

	oldSize = GetHandleSize(*inHandle);
	temp = NewHandleClear(oldSize + delta);
	
	BlockMoveData(**inHandle, *temp, oldSize);
	
	DisposeHandle(*inHandle);
	
	*inHandle = temp;
}


void SetBevelButtonIcon(ControlHandle theControl, short iconID)
{
	ControlButtonContentInfo	info;
	info.contentType = kControlContentCIconRes;
	info.u.resID = iconID;
	
	SetControlData(theControl, 0, kControlBevelButtonContentTag, sizeof( ControlButtonContentInfo ),
				(Ptr)&info );
}

OSErr FSReadLE(short refNum, long* count, void* buffPtr)
{
	OSErr err;
	unsigned char* buff;
	char temp;
	
	err = FSRead(refNum, count, buffPtr);
	
	if (err != noErr)
		return err;
		
	buff = (unsigned char*)buffPtr;
	
	for (int i=0; i < (*count)/2; i++)
	{
		temp = buff[i];
		
		buff[i] = buff[(*count) - i - 1];
		
		buff[(*count) - i - 1] = temp;
	}
	
	return err;
}

OSErr FSWriteLE(short refNum, long* count, void* buffPtr)
{
	OSErr err;
	unsigned char* buff;
	char temp;
	
	buff = (unsigned char*)buffPtr;
	
	for (int i=0; i < (*count)/2; i++)
	{
		temp = buff[i];
		
		buff[i] = buff[(*count) - i - 1];
		
		buff[(*count) - i - 1] = temp;
	}
	
	err = FSWrite(refNum, count, buff);
	
	return err;
}

#pragma mark -
/*
int XYMenu(Point where,
		   WindowPtr window,
		   int rows, int cols,
		   int width, int height,
		   int currentSelection,
		   int borderOptions,
		   XYMenuDrawFn Draw,
		   XYMenuUpdateFn Update,
		   void* clientData)
{
	GWorldPtr		savedGW, menuGW;
	PixMapHandle	savedPix, menuPix;
	int				previousSelection, selection;
	Rect			menuRect, saveRect, tempRect;
	const BitMap *	currentPortBits = GetPortBitMapForCopyBits(GetQDGlobalsThePort());
	RgnHandle		savedVis, unclippedRgn, clippedRgn, menuRgn;
	int				borderIncrement;
	OSErr			err;
	Point			theMouse;
	RGBColor		hiliteColor;
	
	
	where.h += 2;
	where.v += 2;
	
	SAVEGWORLD;
	SAVECOLORS;
	
	savedVis = NewRgn();
	GetPortVisibleRegion(GetWindowPort(window), savedVis);
	
	unclippedRgn = NewRgn();
	SetRectRgn(unclippedRgn,
			   -32767,
			   -32767,
			   32767,
			   32767);
	SetPortVisibleRegion(GetWindowPort(window), unclippedRgn);
	
	switch (borderOptions)
	{
		case border: borderIncrement = 2; break;
		case noBorder : borderIncrement = 0; break;
	}
	
	SetRect(&menuRect,
			where.h,
			where.v,
			where.h + cols * (width + borderIncrement) - borderIncrement,
			where.v + rows * (height + borderIncrement) - borderIncrement);
	menuRgn = NewRgn();
	RectRgn(menuRgn, &menuRect);
	InsetRgn(menuRgn, -1, -1);
	InsetRect(&menuRect, -2, -2);
	saveRect = menuRect,
	//GetThemeMenuItemExtra(kThemeMenuTypePopUp, &paddingV, &paddingH);
	saveRect.top--;
	saveRect.left--;
	saveRect.bottom += 2;
	saveRect.right += 2;
	
	clippedRgn = NewRgn();
	RectRgn(clippedRgn, &saveRect);
	DiffRgn(unclippedRgn, clippedRgn, clippedRgn);
	
	err = NewGWorld(&savedGW, 32, &saveRect, NULL, NULL, 0);
	savedPix = GetGWorldPixMap(savedGW);
	LockPixels(savedPix);
	
	SetGWorld(savedGW, NULL);
	ForeColor(blackColor);
	BackColor(whiteColor);
	
	CopyBits(currentPortBits,
			 (BitMap*)*savedPix,
			 &saveRect,
			 &saveRect,
			 srcCopy,
			 NULL);
	
	NewGWorld(&menuGW, 32, &menuRect, NULL, NULL, 0);
	menuPix = GetGWorldPixMap(menuGW);
	LockPixels(menuPix);
	SetGWorld(menuGW, NULL);
	
	DrawThemeMenuBackground(&menuRect, kThemeMenuTypePopUp);
	
	for (int i=0; i < rows; i++)
		for (int j=0; j < cols; j++)
		{
			SetRect(&tempRect,
					where.h + j * (width + borderIncrement) + 1,
				 	where.v + i * (height + borderIncrement) + 1,
				 	where.h + j * (width + borderIncrement) + width - 1,
				 	where.v + i * (height + borderIncrement) + height - 1);
			ForeColor(whiteColor);
			PaintRect(&tempRect);
			switch(borderOptions)
			{
				case border: DrawThemeGenericWell(&tempRect,true,false); break;
				case noBorder: FrameRect(&tempRect); break;
			}
			RESTORECOLORS; 
			Draw(i * cols + j,
				 where.h + j * (width + borderIncrement) + 2,
				 where.v + i * (height + borderIncrement) + 2,
				 width - 4, height - 4,
				 clientData);
		}
	RESTOREGWORLD;

	
	SetPortVisibleRegion(GetWindowPort(window), unclippedRgn);
	
	DrawThemeMenuBackground(&menuRect, kThemeMenuTypePopUp);

	CopyBits((BitMap*)*menuPix,
			 currentPortBits,
			 &menuRect,
			 &menuRect,
			 srcCopy,
			 menuRgn);	

	
	
	selection = currentSelection;
	
	LMGetHiliteRGB(&hiliteColor);
	
	selection--;
	
	theMouse.h = selection - cols * (selection/cols);
	theMouse.v = selection/cols;
	
	selection++;
	
	SetRect(&tempRect,
			where.h + theMouse.h * (width + borderIncrement) + 1,
		 	where.v + theMouse.v * (height + borderIncrement) + 1,
		 	where.h + theMouse.h * (width + borderIncrement) + width - 1,
		 	where.v + theMouse.v * (height + borderIncrement) + height - 1);
			
	RGBForeColor(&hiliteColor);

	FrameRect(&tempRect);
	
	RESTORECOLORS;
	
	while (Button())
	{
		previousSelection = selection;
		
		GetMouse(&theMouse);
		
		if (PtInRgn(theMouse, menuRgn))
		{
			theMouse.h -= where.h;
			theMouse.v -= where.v;
			
			theMouse.h /= (width + borderIncrement);
			theMouse.v /= (height + borderIncrement);
			
			selection = theMouse.v * cols + theMouse.h + 1;
			
			//if (selection == 0)
			//	SysBeep(6);
		}
		else
			selection = currentSelection;
		
		if (selection != previousSelection)
		{
			SetPortVisibleRegion(GetWindowPort(window), clippedRgn);
			Update(selection, clientData);	
			SetPortVisibleRegion(GetWindowPort(window), unclippedRgn);
			
			ForeColor(blackColor);
			BackColor(whiteColor);
						
			CopyBits((BitMap*)*menuPix,
					 currentPortBits,
					 &menuRect,
					 &menuRect,
					 srcCopy,
					 menuRgn);
			
			SetRect(&tempRect,
					where.h + theMouse.h * (width + borderIncrement) + 1,
				 	where.v + theMouse.v * (height + borderIncrement) + 1,
				 	where.h + theMouse.h * (width + borderIncrement) + width - 1,
				 	where.v + theMouse.v * (height + borderIncrement) + height - 1);
			
			RGBForeColor(&hiliteColor);
			
			FrameRect(&tempRect);
			
			RESTORECOLORS;
		}
	}
	
	SetGWorld(savedGW, NULL);
	ForeColor(blackColor);
	BackColor(whiteColor);
	
	CopyBits((BitMap*)*savedPix,
			 currentPortBits,
			 &saveRect,
			 &saveRect,
			 srcCopy,
			 NULL);
			 
	
	RESTOREGWORLD;
	RESTORECOLORS;
		 
	UnlockPixels(savedPix);
	DisposeGWorld(savedGW);
	UnlockPixels(menuPix);
	DisposeGWorld(menuGW);
	
	SetPortVisibleRegion(GetWindowPort(window), savedVis);
	
	DisposeRgn(clippedRgn);
	DisposeRgn(unclippedRgn);
	DisposeRgn(menuRgn);
	DisposeRgn(savedVis);
	
	return selection;
}*/

ControlHandle NewEnhancedPlacard(short controlID, WindowPtr parentWindow, int flags, short font, short size,
								 Str255 title, PicHandle picture, bool pictureIsResource, MenuHandle menu, GWorldPtr canvasGW, PixMapHandle canvasPix,
								 EnhancedPlacardUpdateFuncPtr updateFunc, void* clientData)
{
	ControlHandle	placard;
	EnhancedPlacardDataPtr	data;
	
	placard = GetNewControl(controlID, parentWindow);
	SetControlUserPaneDraw(placard, EnhancedPlacardDraw);
	SetControlUserPaneHitTest(placard, EnhancedPlacardHitTest);
	SetControlUserPaneTracking(placard, EnhancedPlacardTracking);
	
	data = (EnhancedPlacardDataPtr)NewPtr(sizeof(EnhancedPlacardData));
	data->flags = flags;
	data->font = font;
	data->size = size;
	CopyString(data->title, title);
	data->picture = picture;
	data->pictureIsResource = pictureIsResource;
	data->menu = menu;	
	data->menuValue = 1;
	data->canvasGW = canvasGW;
	data->canvasPix = canvasPix;
	data->updateFunc = updateFunc;
	data->clientData = clientData;
	
	SetControlReference(placard, long(data));
	
	return placard;
}

void DisposeEnhancedPlacard(ControlHandle placard)
{
	EnhancedPlacardDataPtr placardData;
	
	placardData = EnhancedPlacardDataPtr(GetControlReference(placard));
	if (placardData->picture != NULL &&
		!placardData->pictureIsResource)
		KillPicture(placardData->picture);
		
	DisposePtr(Ptr(placardData));
}

pascal void EnhancedPlacardDraw(ControlHandle placard, short partCode)
{
#pragma unused (partCode)
	EnhancedPlacardDataPtr data;
	Rect	bounds, canvasBounds, placardBounds, pictureRect;
	int		titleWidth;
	
	data = EnhancedPlacardDataPtr(GetControlReference(placard));
	
	if (data->updateFunc)
		data->updateFunc(data, enhancedPlacardUpdateState);
		
	if (data->picture)
		pictureRect = (**data->picture).picFrame;
	else
		SetRect(&pictureRect, 0, 0, 0, 0);
	
	SAVEGWORLD;
	
	GetControlBounds(placard, &bounds);
	canvasBounds = bounds;

#if TARGET_API_MAC_CARBON	
	if (!QDIsPortBuffered(GetWindowPort(GetControlOwner(placard))))
#endif
	{
		SetGWorld(data->canvasGW, NULL);
		OffsetRect(&canvasBounds, -canvasBounds.left, -canvasBounds.top);
	}
#if TARGET_API_MAC_CARBON
	else
	{
		LockPortBits((GrafPtr)GetWindowPort(GetControlOwner(placard)));
		SetPortWindowPort(GetControlOwner(placard));
	}
#endif
	
	placardBounds = canvasBounds;
	
	if (!(data->flags & enhancedPlacardDrawBorder))
		InsetRect(&placardBounds, -1, -1);
		
	if (data->flags & enhancedPlacardDrawDialogFrame)
	{
		DrawThemeModelessDialogFrame(&placardBounds, IsControlActive(placard));
		if (IsControlActive(placard))
			SetThemePen(kThemeBrushDialogBackgroundActive, 32, true);
		else
			SetThemePen(kThemeBrushDialogBackgroundInactive, 32, true);
		PaintRect(&placardBounds);
		SetThemePen(kThemeBrushBlack, 32, true);
	}
	else
	{
		if (IsControlActive(placard))
			if (IsControlHilited(placard))
				DrawThemePlacard(&placardBounds, kThemeStatePressed);
			else
				DrawThemePlacard(&placardBounds, kThemeStateActive); 
		else
			DrawThemePlacard(&placardBounds, kThemeStateInactive);
	}
	
	if (data->title[0] != 0)
	{
		int h, v;
		
		TextFont(applFont);
		TextSize(9);
		
		if (IsControlActive(placard))
			if (IsControlHilited(placard))
				SetThemeTextColor(kThemeTextColorPlacardPressed, 32, true);
			else
				SetThemeTextColor(kThemeTextColorPlacardActive, 32, true);
		else
#if TARGET_API_MAC_CARBON
			if (!QDIsPortBuffered(GetWindowPort(GetControlOwner(placard))))
				SetThemeTextColor(kThemeTextColorPlacardActive, 32, true); // still active since we do blending...
			else
#endif
				SetThemeTextColor(kThemeTextColorPlacardInactive, 32, true);
				
		titleWidth = StringWidth(data->title);
		
		h = placardBounds.left + (placardBounds.right - placardBounds.left - titleWidth)/2;
		v = placardBounds.bottom - (placardBounds.bottom - placardBounds.top - StringHeight(data->title))/2 - 2;
		
		if (data->picture)
			h += (pictureRect.right - pictureRect.left) - 2;

#if TARGET_API_MAC_CARBON
		CFStringRef cfString;
		Rect		labelRect;
	
		cfString = CFStringCreateWithPascalString(NULL, data->title, kCFStringEncodingMacRoman);
		SetRect(&labelRect, h, v - 10, h + 500, v);
		
		DrawThemeTextBox(cfString,
						 kThemeCurrentPortFont,
						 kThemeStateActive,
						 false,
						 &labelRect,
						 teFlushLeft,
						 NULL);
						 
		CFRelease(cfString);
#else
		MoveTo(h, v);
		DrawString(data->title);
#endif
		
		TextFont(0);
		TextSize(12);
	}
	
	if (data->menu != NULL)
	{
		int hOffset, vOffset;
		float blendFactor;
		
		hOffset = -2;
		vOffset = -2;
		
		if (IsControlActive(placard)
#if TARGET_API_MAC_CARBON
			|| !QDIsPortBuffered(GetWindowPort(GetControlOwner(placard)))
#endif
			)
			blendFactor = kEnhancedPlacardMenuArrowBlend;
		else
			blendFactor = kEnhancedPlacardMenuArrowInactiveBlend;
		
		if (data->flags & enhancedPlacardLargeArrow)
		{
			hOffset--;
			SetPixelBlended(placardBounds.right - 5 + hOffset, placardBounds.bottom - 4 + vOffset, kBlackAsRGB, blendFactor);
			SetPixelBlended(placardBounds.right - 4 + hOffset, placardBounds.bottom - 4 + vOffset, kBlackAsRGB, blendFactor);
			SetPixelBlended(placardBounds.right - 3 + hOffset, placardBounds.bottom - 4 + vOffset, kBlackAsRGB, blendFactor);
			SetPixelBlended(placardBounds.right - 2 + hOffset, placardBounds.bottom - 4 + vOffset, kBlackAsRGB, blendFactor);
			SetPixelBlended(placardBounds.right - 1 + hOffset, placardBounds.bottom - 4 + vOffset, kBlackAsRGB, blendFactor);
		}
		
		SetPixelBlended(placardBounds.right - 4 + hOffset, placardBounds.bottom - 3 + vOffset, kBlackAsRGB, blendFactor);
		SetPixelBlended(placardBounds.right - 3 + hOffset, placardBounds.bottom - 3 + vOffset, kBlackAsRGB, blendFactor);
		SetPixelBlended(placardBounds.right - 2 + hOffset, placardBounds.bottom - 3 + vOffset, kBlackAsRGB, blendFactor);
		
		SetPixelBlended(placardBounds.right - 3 + hOffset, placardBounds.bottom - 2 + vOffset, kBlackAsRGB, blendFactor);
	}
	
	if (data->picture != NULL)
	{	
		OffsetRect(&pictureRect,
				   placardBounds.left + ((placardBounds.right - placardBounds.left) - (pictureRect.right - pictureRect.left))/2,
				   placardBounds.top + ((placardBounds.bottom - placardBounds.top) - (pictureRect.bottom - pictureRect.top))/2);
		
		if (data->title[0])
			OffsetRect(&pictureRect, -(titleWidth/2), 0);
				   
		DrawPicture(data->picture, &pictureRect);
	}
	
	if (!IsControlActive(placard)
#if TARGET_API_MAC_CARBON
	    && !QDIsPortBuffered(GetWindowPort(GetControlOwner(placard)))
#endif
	    )
	{
		RGBColor opColor = {0xFFFF/2, 0xFFFF/2, 0xFFFF/2};
		Rect	newPlacardRect, contentRect;
		
		newPlacardRect = placardBounds;
		
		OffsetRect(&newPlacardRect, newPlacardRect.right - newPlacardRect.left, 0);
		
		if (data->flags & enhancedPlacardDrawDialogFrame)
		{
			DrawThemeModelessDialogFrame(&newPlacardRect, false);
			SetThemePen(kThemeBrushDialogBackgroundInactive, 32, true);
			PaintRect(&newPlacardRect);
			SetThemePen(kThemeBrushBlack, 32, true);
		}
		else
			DrawThemePlacard(&newPlacardRect, kThemeStateInactive);
		
		InsetRect(&newPlacardRect, 2, 2);
		
		contentRect = placardBounds;
		InsetRect(&contentRect, 2, 2);
		
		OpColor(&opColor);
		CopyBits((BitMap*)*data->canvasPix,
				 (BitMap*)*data->canvasPix,
				 &contentRect,
				 &newPlacardRect,
				 blend,
				 NULL);
		OpColor(&kWhiteAsRGB);
		
		CopyBits((BitMap*)*data->canvasPix,
				 (BitMap*)*data->canvasPix,
				 &newPlacardRect,
				 &contentRect,
				 srcCopy,
				 NULL);
	}
	
	RESTOREGWORLD;

#if TARGET_API_MAC_CARBON
	UnlockPortBits((GrafPtr)GetWindowPort(GetControlOwner(placard)));
#endif

	SAVECOLORS;
	
#if TARGET_API_MAC_CARBON
	if (!QDIsPortBuffered(GetWindowPort(GetControlOwner(placard))))
#endif
		CopyBits((BitMap*)*data->canvasPix,
				 GetPortBitMapForCopyBits(GetQDGlobalsThePort()),
				 &canvasBounds,
				 &bounds,
				 srcCopy,
				 NULL);
		
	RESTORECOLORS;
}

pascal short EnhancedPlacardHitTest(ControlHandle placard, Point where)
{
	Rect controlBounds;
	EnhancedPlacardDataPtr	data;
	
	data = EnhancedPlacardDataPtr(GetControlReference(placard));
	
	if (data->flags & enhancedPlacardNoHitTest)
		return kControlNoPart;
	else
	{
		GetControlBounds(placard, &controlBounds);
	
		return PtInRect(where, &controlBounds);
	}
}

pascal short EnhancedPlacardTracking(ControlHandle placard, Point startPt, ControlActionUPP actionProc)
{
#pragma unused (actionProc)
	Rect					controlBounds;
	EnhancedPlacardDataPtr	data;
	
	data = EnhancedPlacardDataPtr(GetControlReference(placard));
	GetControlBounds(placard, &controlBounds);
	
	if (data->menu == NULL)
	{
		Point theMouse;
		
		while (Button())
		{
			GetMouse(&theMouse);
			if (PtInRect(theMouse, &controlBounds) && !IsControlHilited(placard))
			{
				HiliteControl(placard, kControlIndicatorPart);
				Draw1Control(placard);
			}
			else if (!PtInRect(theMouse, &controlBounds) && IsControlHilited(placard))
			{
				HiliteControl(placard, kControlNoPart);
				Draw1Control(placard);
			}
		}
		
		HiliteControl(placard,  kControlNoPart);
		Draw1Control(placard);
		
		if (PtInRect(theMouse, &controlBounds))
			return kControlIndicatorPart;
		else
			return kControlNoPart;
	}
	else
	{	
		if (PtInRect(startPt, &controlBounds))
		{
			long	newValue, oldSP, startingValue;
			short	oldFont, oldSize;
			
			HiliteControl(placard, kControlIndicatorPart);
			Draw1Control(placard);
			
			
			
			if (data->font != 0 || data->size != 0)
			{
				oldFont = LMGetSysFontFam();
				oldSize = LMGetSysFontSize();
				oldSP = LMGetLastSPExtra();
				
				LMSetSysFontFam(data->font);
				LMSetSysFontSize(data->size);
				LMSetLastSPExtra(-1);
			}
			
			
			if (data->flags & enhancedPlacardMenuAtBottom)
			{
				startPt.v = controlBounds.bottom;
				startingValue = 0;
			}
			else
				startPt.v = controlBounds.top;
			
			if (data->flags & enhancedPlacardMenuAtRight)
			{
				startPt.h = controlBounds.right - GetMenuWidth(data->menu);
				startingValue = 0;
			}
			else
			{
				startPt.h = controlBounds.left;
			}
			
			if (!(data->flags & (enhancedPlacardMenuAtBottom | enhancedPlacardMenuAtRight)))
			{
				startPt.h = controlBounds.left;
				startingValue = data->menuValue;
			}
			
			//if (!(data->flags & enhancedPlacardDrawBorder))
			//{
				startPt.h++;
				startPt.v++;
			//}
			
			LocalToGlobal(&startPt);
			
			InsertMenu(data->menu, kInsertHierarchicalMenu);
			
			newValue = PopUpMenuSelect(data->menu, startPt.v, startPt.h, startingValue);
			
			if (data->font != 0 || data->size != 0)
			{
				LMSetSysFontFam(oldFont);
				LMSetSysFontSize(oldSize);
				LMSetLastSPExtra(oldSP);
			}
			
			DeleteMenu(GetMenuID(data->menu));
			
			HiliteControl(placard, kControlNoPart);
			Draw1Control(placard);
			
			if ((newValue == 0) ||
				(newValue & 0x0000FFFF == data->menuValue))
				return kControlNoPart;
			else
			{
				CheckMenuItem(data->menu, data->menuValue, false);
				data->menuValue = newValue & 0x0000FFFF;
				CheckMenuItem(data->menu, data->menuValue, true);

				return kControlIndicatorPart;
			}
		}
		else
			return kControlNoPart;
	}
}

void EnhancedPlacardHandleClick(ControlHandle placard)
{
	EnhancedPlacardDataPtr data;
	data = EnhancedPlacardDataPtr(GetControlReference(placard));
	
	if (data->updateFunc)
	{
		data->updateFunc(data, enhancedPlacardStateChanged);
		Draw1Control(placard);
	}
}

void SetEnhancedPlacardMenuValue(ControlHandle placard, int menuValue)
{
	EnhancedPlacardDataPtr data;
	data = EnhancedPlacardDataPtr(GetControlReference(placard));
	
	CheckMenuItem(data->menu, data->menuValue, false);
	
	data->menuValue = menuValue;
	
	CheckMenuItem(data->menu, data->menuValue, true);
}

int GetEnhancedPlacardMenuValue(ControlHandle placard)
{
	EnhancedPlacardDataPtr data;
	data = EnhancedPlacardDataPtr(GetControlReference(placard));
	
	return data->menuValue;
}

#pragma mark -

void DeactivateNControls(int controlCount, ... )
{
	va_list			argptrs;		
	va_start		(argptrs, controlCount);
	ControlHandle	currentControl;
	
	for (int i = 0; i < controlCount; i++ )
	{
		currentControl = va_arg(argptrs, ControlHandle);
		DeactivateControl(currentControl);
	}

	va_end ( argptrs );
}

void ActivateNControls(int controlCount, ... )
{
	va_list			argptrs;		
	va_start		(argptrs, controlCount);
	ControlHandle	currentControl;
	
	for (int i = 0; i < controlCount; i++ )
	{
		currentControl = va_arg(argptrs, ControlHandle);
		ActivateControl(currentControl);
	}

	va_end ( argptrs );
}

void GetImageWellColors(RGBColor* border,
						RGBColor* hilite,
						RGBColor* shadow,
						ThemeDrawState state)
{
	if (MUtilities::GestaltVersion(gestaltAppearanceVersion, 0x01, 0x01))
	{
		GWorldPtr 		tempGW;
		PixMapHandle	tempPix;
		Rect			tempRect = {0, 0, 5, 5};
		
		SAVEGWORLD;
		SAVECOLORS;
		
		NewGWorld(&tempGW, 32, &tempRect, NULL, NULL, 0);
		tempPix = GetGWorldPixMap(tempGW);
		LockPixels(tempPix);
		
		SetGWorld(tempGW, NULL);
		RESTORECOLORS;
		EraseRect(&tempRect);
	
		if (MUtilities::GestaltVersion(gestaltSystemVersion, 0x10, 0x00))
		{
			InsetRect(&tempRect, 2, 2);
			DrawThemeEditTextFrame(&tempRect, state);
		}
		else
		{
			InsetRect(&tempRect, 2, 2);
			DrawThemeGenericWell(&tempRect, state, false);
		}
		
		GetCPixel(0, 0, shadow);
		GetCPixel(1, 1, border);
		GetCPixel(4, 4, hilite);
		
		RESTOREGWORLD;
		RESTORECOLORS;
		
		UnlockPixels(tempPix);
		DisposeGWorld(tempGW);
		
	}
	else
	{
		if (state == kThemeStateInactive)
		{
			border->red = border->green = border->blue = 0x5500;
			hilite->red = hilite->green = hilite->blue = 0xDD00;
			shadow->red = shadow->green = shadow->blue = 0xDD00;
		}
		else
		{
			border->red = border->green = border->blue = 0;
			hilite->red = hilite->green = hilite->blue = 0xFFFF;
			shadow->red = shadow->green = shadow->blue = 0x8800;
		}
	}
}

void DrawImageWell(ControlHandle theControl, Rect targetRect)
{
	if (MUtilities::GestaltVersion(gestaltSystemVersion, 0x10, 0x00))
	{
		if (IsControlActive(theControl))
			DrawThemeEditTextFrame(&targetRect, kThemeStateActive);
		else
			DrawThemeEditTextFrame(&targetRect, kThemeStateInactive);
	}
	else if (MUtilities::GestaltVersion(gestaltAppearanceVersion, 0x01, 0x01))
	{
		if (IsControlActive(theControl))
			DrawThemeGenericWell(&targetRect, kThemeStateActive, false);
		else
			DrawThemeGenericWell(&targetRect, kThemeStateInactive, false);
	}
	else
	{
		RgnHandle targetRgn;
		
		targetRgn = NewRgn();
		RectRgn(targetRgn, &targetRect);
		
		if (IsControlActive(theControl))
			DrawImageWell(targetRgn, kThemeStateActive, false);
		else
			DrawImageWell(targetRgn, kThemeStateInactive, false);
		
		DisposeRgn(targetRgn);
	}
}


void DrawImageWell(RgnHandle theRgn, ThemeDrawState state, bool fillCenter)
{
	RGBColor borderColor, hiliteColor, shadowColor;
	RgnHandle borderRgn, hiliteRgn, shadowRgn, tempRgn;
	
	SAVECOLORS;
	
	GetImageWellColors(&borderColor, &hiliteColor, &shadowColor, state);
	
	borderRgn = NewRgn();
	CopyRgn(theRgn, borderRgn);
	InsetRgn(borderRgn, -1, -1);
	
	hiliteRgn = NewRgn();
	CopyRgn(borderRgn, hiliteRgn);
	OffsetRgn(hiliteRgn, 0, 1);
	UnionRgn(hiliteRgn, borderRgn, hiliteRgn);
	tempRgn = NewRgn();
	CopyRgn(borderRgn, tempRgn);
	OffsetRgn(tempRgn, 1, 0);
	UnionRgn(hiliteRgn, tempRgn, hiliteRgn);
	DisposeRgn(tempRgn);
	tempRgn = NewRgn();
	CopyRgn(borderRgn, tempRgn);
	OffsetRgn(tempRgn, 1, 1);
	UnionRgn(hiliteRgn, tempRgn, hiliteRgn);
	DisposeRgn(tempRgn);
	DiffRgn(hiliteRgn, borderRgn, hiliteRgn);
	
	shadowRgn = NewRgn();
	CopyRgn(borderRgn, shadowRgn);
	OffsetRgn(shadowRgn, 0, -1);
	UnionRgn(shadowRgn, borderRgn, shadowRgn);
	tempRgn = NewRgn();
	CopyRgn(borderRgn, tempRgn);
	OffsetRgn(tempRgn, -1, 0);
	UnionRgn(shadowRgn, tempRgn, shadowRgn);
	DisposeRgn(tempRgn);
	tempRgn = NewRgn();
	CopyRgn(borderRgn, tempRgn);
	OffsetRgn(tempRgn, -1, -1);
	UnionRgn(shadowRgn, tempRgn, shadowRgn);
	DisposeRgn(tempRgn);
	DiffRgn(shadowRgn, borderRgn, shadowRgn);
	
	if (fillCenter)
		PaintRgn(borderRgn);
	
	RGBForeColor(&borderColor); FrameRgn(borderRgn);
	RGBForeColor(&hiliteColor); PaintRgn(hiliteRgn);
	RGBForeColor(&shadowColor); PaintRgn(shadowRgn);
	
	DisposeRgn(borderRgn);
	DisposeRgn(hiliteRgn);
	DisposeRgn(shadowRgn);
	
	RESTORECOLORS;
}

void GetFocusColor(RGBColor* focusColor)
{
	if (MUtilities::GestaltExists(gestaltAppearanceAttr))
	{
		GWorldPtr 		tempGW;
		PixMapHandle	tempPix;
		Rect			tempRect = {0, 0, 5, 5};
		SAVEGWORLD;
		SAVECOLORS;
		
		NewGWorld(&tempGW, 32, &tempRect, NULL, NULL, 0);
		tempPix = GetGWorldPixMap(tempGW);
		LockPixels(tempPix);
		
		SetGWorld(tempGW, NULL);
		ForeColor(greenColor);
		PaintRect(&tempRect);
		
		InsetRect(&tempRect, 2, 2);
		DrawThemeFocusRect(&tempRect, true);
		
		GetCPixel(0, 0, focusColor);
		
		RESTORECOLORS;
		RESTOREGWORLD;
		
		UnlockPixels(tempPix);
		DisposeGWorld(tempGW);
	}
	else
	{
		focusColor->red = 0x6600; focusColor->green = 0x6600; focusColor->blue = 0x9900;
	}
}

void DrawFocus(RgnHandle targetRgn, bool focus)
{
	RgnHandle focusRgn, tempRgn;
	
	focusRgn = NewRgn();
	CopyRgn(targetRgn, focusRgn);
	InsetRgn(focusRgn, -2, -2);
	
	tempRgn = NewRgn();
	CopyRgn(focusRgn, tempRgn);
	OffsetRgn(tempRgn, 0, 1); UnionRgn(focusRgn, tempRgn, focusRgn);
	OffsetRgn(tempRgn, 0, -2); UnionRgn(focusRgn, tempRgn, focusRgn);
	OffsetRgn(tempRgn, 1, 1); UnionRgn(focusRgn, tempRgn, focusRgn);
	OffsetRgn(tempRgn, -2, 0); UnionRgn(focusRgn, tempRgn, focusRgn);
	DisposeRgn(tempRgn);
	
	tempRgn = NewRgn();
	CopyRgn(targetRgn, tempRgn);
	InsetRgn(tempRgn, -1, -1);
	DiffRgn(focusRgn, tempRgn, focusRgn);
	DisposeRgn(tempRgn);
	
	if (focus)
	{
		RGBColor	focusColor;
		
		SAVECOLORS;
		
		GetFocusColor(&focusColor);
		
		RGBForeColor(&focusColor);
		
		PaintRgn(focusRgn);
		
		RESTORECOLORS;
	}
	else
	{
		EraseRgn(focusRgn);
	}
	
	DisposeRgn(focusRgn);
}

ControlHandle GetKeyboardFocus(WindowPtr window)
{
	ControlHandle focusControl;
	
	GetKeyboardFocus(window, &focusControl);
	
	return focusControl;
}

void SetControlKeyFilter(ControlHandle control, ControlKeyFilterProcPtr function)
{
	ControlKeyFilterUPP functionUPP;
	
	functionUPP = NewControlKeyFilterUPP(function);
	SetControlData(control,
				   kControlNoPart,
				   kControlKeyFilterTag,
				   sizeof(functionUPP),
				   (Ptr)&functionUPP);
}

void SetControlUserPaneDraw(ControlHandle control, ControlUserPaneDrawProcPtr function)
{
	ControlUserPaneDrawUPP functionUPP;
	
	functionUPP = NewControlUserPaneDrawUPP(function);
	
	SetControlData(control,
				   kControlNoPart,
				   kControlUserPaneDrawProcTag,
				   sizeof(functionUPP),
				   (Ptr) &functionUPP);
}

void SetControlUserPaneHitTest(ControlHandle control, ControlUserPaneHitTestProcPtr function)
{
	ControlUserPaneHitTestUPP functionUPP;

	functionUPP = NewControlUserPaneHitTestUPP(function);
	
	SetControlData(control,
				   kControlNoPart,
				   kControlUserPaneHitTestProcTag,
				   sizeof(functionUPP),
				   (Ptr) &functionUPP);
}

void SetControlUserPaneTracking(ControlHandle control, ControlUserPaneTrackingProcPtr function)
{
	ControlUserPaneTrackingUPP functionUPP;
	
	functionUPP = NewControlUserPaneTrackingUPP(function);
	
	SetControlData(control,
				   kControlNoPart,
				   kControlUserPaneTrackingProcTag,
				   sizeof(functionUPP),
				   (Ptr) &functionUPP);
}

pascal short GenericHitTest(ControlHandle control, Point where)
{
	Rect	controlBounds;
	
	return PtInRect(where, GetControlBounds(control, &controlBounds));
}

pascal short NoHitTest(ControlHandle control, Point where)
{
#pragma unused(control, where)
	
	return kControlNoPart;
}

void PointsToRect(Point point1, Point point2, Rect* targetRect)
{
	if (point1.h < point2.h)
	{
		targetRect->left = point1.h;
		targetRect->right = point2.h;
	}
	else
	{
		targetRect->left = point2.h;
		targetRect->right = point1.h;
	}
	
	if (point1.v < point2.v)
	{
		targetRect->top = point1.v;
		targetRect->bottom = point2.v;
	}
	else
	{
		targetRect->top = point2.v;
		targetRect->bottom = point1.v;
	}
}

void PointsToRect(Point point1, Point point2, Point point3, Rect* targetRect)
{
	targetRect->left = min(point1.h, point2.h, point3.h);
	targetRect->right = max(point1.h, point2.h, point3.h);
	
	targetRect->top = min(point1.v, point2.v, point3.v);
	targetRect->bottom = max(point1.v, point2.v, point3.v);
}

#pragma mark -

OSErr FSWrite4(short file, long data)
{
	long length = 4;
	
	return FSWrite(file, &length, &data);
}

OSErr FSWrite2(short file, short data)
{
	long length = 2;
	
	return FSWrite(file, &length, &data);
}

#pragma mark -

void DebugValue(const Str255 label, int value)
{
	DebugNValues(label, 1, value);
}

void DebugNValues(const Str255 label, int valueCount, ...)
{
	va_list	argptrs;
	Str255	temp, temp2;
	int		value;
	
	va_start(argptrs, valueCount);
	
	CopyString(temp, label);
	
	for (int i = 0; i < valueCount; i++ )
	{
		value = va_arg(argptrs, int);
		
		NumToString(value, temp2);
		AppendString(temp, temp2);
		AppendString(temp, "\p	");
	}

	DebugStr(temp);

	va_end(argptrs);
}
