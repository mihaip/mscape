#include "commonfunctions.h"

const WindowPtr kFrontmost = (WindowPtr)-1L;
const int kMessageDialogID = 3000;



char* C2Pas(char* cStr, Str255 pStr)
{
	register int	k,
					l;

	for (k = 0; cStr[k]  && k < 255; k++){;} /* Pascal string lenght <= 255 */
	for (l = k; k > 0; k--) pStr[k] = cStr[k - 1];
	pStr[0] = l;
	return((char*)pStr);
}

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

void ExitApplication(void)
{
	FlushEvents(everyEvent, 0);
	ExitToShell();
}

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

void DisplayPAlert(Str255 error, Str255 reason)
{
	CGrafPtr			curPort;
	GDHandle			curDevice;
	
	GetGWorld(&curPort, &curDevice);
	ParamText(error, reason, nil, nil);
	NoteAlert(3000,nil);
	SetGWorld(curPort, curDevice);
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

void DrawImageWell(ControlHandle theControl, Rect targetRect)
{
	if ((**theControl).contrlHilite == 255)
		DrawThemeGenericWell(&targetRect,false,false);
	else
		DrawThemeGenericWell(&targetRect,true,false);
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

OSStatus Make1BitMask(PixMapHandle srcPix, PixMapHandle targetPix, Rect bounds)
{
	GrafPtr			mask;
	RGBColor		white = {0xFFFF, 0xFFFF, 0xFFFF};
	ColorSearchUPP	maskColorSearchUPP;
	OSStatus		err = noErr;
	Rect			localBounds;
	
	SAVECOLORS;
	
	if (srcPix == NULL || targetPix == NULL)
		return paramErr;
	
	localBounds = bounds;
	OffsetRect(&localBounds, -localBounds.left, -localBounds.top);
	
	mask = CreateGrafPort(&localBounds);
	
	maskColorSearchUPP = NewColorSearchProc(MaskColorSearch);
	
	CalcCMask((BitMap*)*srcPix,
			  &mask->portBits,
			  &bounds,
			  &localBounds,
			  &white,
			  maskColorSearchUPP,
			  0);
	
	CopyBits(&mask->portBits,
			 (BitMap*)*targetPix,
			 &localBounds,
			 &(**targetPix).bounds,
			 srcCopy,
			 NULL);
	
	RESTORECOLORS;
	
	DisposeRoutineDescriptor(maskColorSearchUPP);
	
	DisposeGrafPort(mask);
	
	return err;
}
