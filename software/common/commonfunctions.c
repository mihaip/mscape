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

void InitToolbox(void)
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
/*----------------------------------------------------------------------*/


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
}

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
	
	pictureRect = qd.thePort->portRect;
	
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



Boolean IsKeyPressed(short keyCode)
{
	unsigned char	ourKeyMap[16];
	long			keyMapIndex;
	Boolean			isKeyPressed;
	short			bitToCheck;
	
	GetKeys((unsigned long*)ourKeyMap);
	keyMapIndex = ourKeyMap[keyCode/8];
	bitToCheck = keyCode % 8;
	isKeyPressed = (keyMapIndex >> bitToCheck) & 0x01;
	
	return isKeyPressed;
}
// DisplayRect (Rect )
// displays an alert with the coordinates of the Rect
// used for debugging

void DisplayRect(Rect rectToShow)
{
	char	buff[256];
	sprintf(buff, "top: %d, left: %d -- bottom: %d, right: %d", rectToShow.top, rectToShow.left, rectToShow.bottom, rectToShow.right);
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

void SubstituteString(Str255 string, Str255 pattern, Str255 replace)
{
	int insertionIndex, i;
	Str255	temp;
	
	CopyString(temp, string);
	
	insertionIndex = FindSubstring(string, pattern);
	
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

void ToggleCheckbox(ControlHandle checkbox)
{
	Point	mouse;
	int		value;
	
	GetMouse(&mouse);

	if (TrackControl(checkbox, mouse, nil))
	{
		value = GetControlValue(checkbox);
		value = 1 - value;
		SetControlValue(checkbox, value);
	}
}

OSStatus LaunchURL(ConstStr255Param urlStr)
{
	OSStatus err;
	ICInstance inst;
	long startSel;
	long endSel;
	
	err = ICStart(&inst, '????');			// Use your creator code if you have one!
	if (err == noErr) {
		err = ICFindConfigFile(inst, 0, nil);
			if (err == noErr) {
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
	if ((**menu).enableFlags & (1 << itemNo))
		DisableItem(menu, itemNo);
	else
		EnableItem(menu, itemNo);
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
		
		eventUPP = NewNavEventProc(DummyFunction);
		
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
			DisposeRoutineDescriptor(eventUPP);
			return noErr;
		}
		else
		{
			DisposeRoutineDescriptor(eventUPP);
			NavDisposeReply(&reply);
			return paramErr;
		}
	}
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
}

OSStatus NewFile(Str255 client, long creator, long fileType, Str255 defaultName, Str255 message, FSSpec* file)
{
	if (NavServicesAvailable())
	{
		NavDialogOptions	dialogOptions;
		NavReplyRecord		reply;
		NavEventUPP			eventUPP;
		AEDesc				resultDesc;
		OSStatus			theErr;
		
		eventUPP = NewNavEventProc(DummyFunction);
		
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
				   eventUPP,
				   creator,
				   fileType,
				   NULL);
						
		DisposeRoutineDescriptor(eventUPP);
		
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

char GetColorIndex(RGBColor color, CTabHandle colorTable)
{
	int closestValue = 0;
	int smallestDifference = 65535 * 3;
	int currentDifference;
	for (int i = 0; i < (**colorTable).ctSize + 1; i++)
	{
		currentDifference = abs(color.red - (**colorTable).ctTable[i].rgb.red) +
							abs(color.green - (**colorTable).ctTable[i].rgb.green) + 
							abs(color.blue - (**colorTable).ctTable[i].rgb.blue);
		if (currentDifference < smallestDifference)
		{
			smallestDifference = currentDifference;
			closestValue = i;
		}
	}
	return closestValue;
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
	char	*pixelAddress;
	
	x -= (**src).bounds.left;
	y -= (**src).bounds.top;
	
	pixelAddress = (**src).baseAddr + (y * ((**src).rowBytes & 0x3FFF)) + x;
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

void DrawImageWell(ControlHandle theControl, Rect targetRect)
{
	if ((**theControl).contrlHilite == kActiveHilite)
		DrawThemeGenericWell(&targetRect,true,false);
	else if ((**theControl).contrlHilite == kInactiveHilite)
		DrawThemeGenericWell(&targetRect,false,false);
}

void LocalToGlobalRect(Rect	*theRect)
{
	LocalToGlobal((Point*)(&theRect->top));
	LocalToGlobal((Point*)(&theRect->bottom));
}

void PixMapToPicture(PixMapHandle srcPix, RgnHandle maskRgn, PicHandle *targetPic)
{
	Rect			picRect;
	OpenCPicParams	picParams;
	
	SAVEGWORLD;
	SAVECOLORS;
	
	if (maskRgn == NULL)
		picRect = (**srcPix).bounds;
	else
		picRect = (**maskRgn).rgnBBox;
	
	picParams.srcRect = picRect;
	picParams.hRes =  0x00480000;
	picParams.vRes =  0x00480000;
	picParams.version = -2;
	picParams.reserved1 = 0;
	picParams.reserved2 = 0;
	
	*targetPic = OpenCPicture(&picParams);
	ClipRect(&picRect);
	ForeColor(blackColor);
	BackColor(whiteColor);
	CopyBits((BitMap*)*srcPix, &qd.thePort->portBits, &picRect, &picRect, srcCopy, maskRgn);
	ClosePicture();
	
	RESTOREGWORLD;
	RESTORECOLORS;
}

void EnableMenuItem(int menuID, int item)
{
	MenuHandle menu;
	
	menu = GetMenuHandle(menuID);
	EnableItem(menu, item);
}

void DisableMenuItem(int menuID, int item)
{
	MenuHandle menu;
	
	menu = GetMenuHandle(menuID);
	DisableItem(menu, item);
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
	
	(***colorTable).ctSeed = 0;
	(***colorTable).ctFlags = 0;
	(***colorTable).ctSize = 1;
	(***colorTable).ctTable[0].value = 0;
	(***colorTable).ctTable[0].rgb = color1;
	(***colorTable).ctTable[1].value = 1;
	(***colorTable).ctTable[1].rgb = color2;
	
	return noErr;
}

bool pascal MaskColorSearch(RGBColor *color, int *result)
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

OSStatus Make1BitMask(PixMapHandle srcPix, PixMapHandle targetPix)
{
	GrafPtr		mask;
	Rect			bounds;
	RGBColor		white = {0xFFFF, 0xFFFF, 0xFFFF};
	ColorSearchUPP	maskColorSearchUPP;
	OSStatus		err = noErr;
	
	SAVECOLORS;
	
	bounds = (**srcPix).bounds;
	
	if (srcPix == NULL || targetPix == NULL)
		return paramErr;
	
	mask = CreateGrafPort(&bounds);
	
	maskColorSearchUPP = NewColorSearchProc(MaskColorSearch);
	
	CalcCMask((BitMap*)*srcPix, &mask->portBits, &bounds, &bounds , &white, maskColorSearchUPP, 0);
	
	CopyBits(&mask->portBits,
			 (BitMap*)*targetPix,
			 &bounds,
			 &(**targetPix).bounds,
			 srcCopy,
			 NULL);
	
	RESTORECOLORS;
	
	DisposeRoutineDescriptor(maskColorSearchUPP);
	
	DisposeGrafPort(mask);
	
	return err;
}

void SetControlText(ControlHandle control, Str255 text)
{
	SetControlData(control,kControlNoPart,kControlStaticTextTextTag,text[0], (Ptr) &text[1]);
}

// __________________________________________________________________________________________
// Name			: StandardEventFilter
// Input		: dialog: pointer to the dialog for which we are filtering events
//				  eventPtr: pointer to the event which just occured, which we must process
// Output		: itemHit: which item (if any) we declare that it was hit.
// Description	: Handles events in a dialog (in our case the WantToSave/DoError ones). It
//				  takes care of updates, key downs, etc. In most cases it passes on the
//				  processing to the standard system function (StdFilterProc).

pascal bool	StandardEventFilter(DialogPtr dialog, EventRecord *eventPtr, short *itemHit)
{
	bool	handledEvent; // if true then our function tool care of the event

	handledEvent = false; // by default we didn't handle the event
	
	switch (eventPtr->what)
	{
		case activateEvt: // if the window isn't the dialog, then we tell the update function
		case updateEvt: //  to take care of it
			if((WindowPtr) eventPtr->message != dialog)
			{
				((UpdateFunctionPtr)GetWRefCon(dialog))(eventPtr);
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
				CopyString(buttonName, (**thirdButton).contrlTitle); // we get its title
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
			SetPort(dialog);

			handledEvent = StdFilterProc(dialog, eventPtr, itemHit);

			RESTOREGWORLD;
		break;
	}
		 

	return(handledEvent);
}
