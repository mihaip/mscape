#include "icnsEditorClass.h"
#include "drawingStateClass.h"
#include "editorStaticsClass.h"

pascal OSErr ApproveDragReference (DragReference theDragRef, bool *approved, icnsEditorPtr parentEditor)
{
	OSErr 			err = noErr;
	UInt16			index = 1;
	DragAttributes	dragAttrs;
	FlavorType		flavorType;
	Point			theMouse;
	ItemReference	theItem;
	
	GetDragMouse(theDragRef, &theMouse, 0);
	GlobalToLocal(&theMouse);
	
	*approved = false;
	if (PtInRect(theMouse, &(**parentEditor->controls.iconEditWell).contrlRect) ||
		PtInRect(theMouse, &parentEditor->controls.display.iconHugeRect)		||
		PtInRect(theMouse, &parentEditor->controls.display.iconLargeRect)		||
		PtInRect(theMouse, &parentEditor->controls.display.iconSmallRect)		||
		PtInRect(theMouse, &parentEditor->controls.display.maskHugeRect)		||
		PtInRect(theMouse, &parentEditor->controls.display.maskLargeRect)		||
		PtInRect(theMouse, &parentEditor->controls.display.maskSmallRect)		||
		PtInRect(theMouse, &(**parentEditor->controls.display. preview).contrlRect))
	if (!(err = GetDragAttributes (theDragRef,&dragAttrs)))
	if (!(PtInRect(theMouse, &parentEditor->dragSrcRect)))
	//if (!(dragAttrs & kDragInsideSenderWindow))
	//if (!(err = CountDragItems (theDragRef,&itemCount)) && itemCount == 1)
	if (!(err = (GetDragItemReferenceNumber(theDragRef, 1, &theItem))))
	{
		GetFlavorType(theDragRef,theItem,index,&flavorType);
		switch (flavorType)
		{
			case 'icns' :
			case 'icl8' :
			case 'PICT' : break;
			default		: err = badDragFlavorErr; 
		}

		if (!err)
			*approved = true;
	}

	return err;
}

pascal OSErr DrawDragHilite(DragReference theDragRef, icnsEditorPtr parentEditor)
{
	OSErr err = noErr;
	Point	theMouse;
	bool	approved;
	
	GetDragMouse(theDragRef, &theMouse, 0);
	GlobalToLocal(&theMouse);

	RgnHandle hiliteRgn = NewRgn ( );
	if (!hiliteRgn)
		err = nilHandleErr;
	else
	{
		if (!((ApproveDragReference (theDragRef,&approved, parentEditor) == noErr) && approved))
		{
			Rect	tempRect = {-1, -1, 0, 0};
			RectRgn(hiliteRgn, &tempRect);
		}
		else if (PtInRect(theMouse, &(**parentEditor->controls.iconEditWell).contrlRect))
			RectRgn(hiliteRgn,&(**parentEditor->controls.iconEditWell).contrlRect);
		else if (PtInRect(theMouse, &parentEditor->controls.display.iconHugeRect))
			RectRgn(hiliteRgn,&parentEditor->controls.display.iconHugeRect);
		else if (PtInRect(theMouse, &parentEditor->controls.display.iconLargeRect))
			RectRgn(hiliteRgn, &parentEditor->controls.display.iconLargeRect);
		else if (PtInRect(theMouse, &parentEditor->controls.display.iconSmallRect))
			RectRgn(hiliteRgn, &parentEditor->controls.display.iconSmallRect);
		else if (PtInRect(theMouse, &parentEditor->controls.display.maskHugeRect))
			RectRgn(hiliteRgn, &parentEditor->controls.display.maskHugeRect);
		else if (PtInRect(theMouse, &parentEditor->controls.display.maskLargeRect))
			RectRgn(hiliteRgn, &parentEditor->controls.display.maskLargeRect);
		else if (PtInRect(theMouse, &parentEditor->controls.display.maskSmallRect))
			RectRgn(hiliteRgn, &parentEditor->controls.display.maskSmallRect);
		else if (PtInRect(theMouse, &(**parentEditor->controls.display.preview).contrlRect))
		{
			RectRgn(hiliteRgn, &(**parentEditor->controls.display.preview).contrlRect);
			InsetRgn(hiliteRgn, 1, 1);
		}
		else
		{
			Rect	tempRect = {-1, -1, 0, 0};
			RectRgn(hiliteRgn, &tempRect);
		}
		
		RGBColor dragHiliteColor, windowForeColor;
		RgnHandle	tempRgn;
		Rect		targetRect;
		
		SAVECOLORS;
		SAVEGWORLD;
		SetPort(parentEditor->window);
		
		GetDragHiliteColor(parentEditor->window, &dragHiliteColor);
		
		tempRgn = NewRgn();
		CopyRgn(hiliteRgn, tempRgn);
		InsetRgn(tempRgn, 2, 2);
		DiffRgn(hiliteRgn, tempRgn, hiliteRgn);
		DisposeRgn(tempRgn);
		
		GetForeColor(&windowForeColor);
		RGBForeColor(&dragHiliteColor);
		
		targetRect = parentEditor->window->portRect;
		OffsetRect(&targetRect, -targetRect.left, -targetRect.top);
		
		if (parentEditor->statics.dragHiliteRgn == NULL)
		{			 
			parentEditor->statics.dragHiliteRgn = hiliteRgn;
			
			//PlayThemeSound(kThemeSoundDragTargetUnhilite);
			 
			PaintRgn(hiliteRgn);
		}
		else if (!EqualRgn(hiliteRgn, parentEditor->statics.dragHiliteRgn))
		{
			InvalRgn(parentEditor->statics.dragHiliteRgn);
			parentEditor->Refresh();
			
			DisposeRgn(parentEditor->statics.dragHiliteRgn);
			
			//PlayThemeSound(kThemeSoundDragTargetHilite);
			
			parentEditor->statics.dragHiliteRgn = hiliteRgn;
			
			PaintRgn(hiliteRgn);
		}
		else
			DisposeRgn(hiliteRgn);
		
		RGBForeColor(&windowForeColor);
		RESTOREGWORLD;
		RESTORECOLORS;
	}
	
	return err;
}

pascal OSErr DragTrackingHandler(DragTrackingMessage message, WindowPtr theWindow, void *, DragReference theDragRef)
{
	icnsEditorPtr	parentEditor;
	
	parentEditor = GetEditor(theWindow);

	switch (message)
	{
		case kDragTrackingEnterWindow:
			
			break;

		case kDragTrackingInWindow:
			DrawDragHilite(theDragRef, parentEditor);
			break;

		case kDragTrackingLeaveWindow:

			//(void) HideDragHilite (theDragRef);
			//Draw1Control(parentEditor->controls.rootControl);
			// fall thru

		default :
			break;
	}
	
	SetGWorld(icnsEditorClass::statics.startupPort, icnsEditorClass::statics.startupDevice);
	return noErr; // there's no point in confusing Drag Manager or its caller
}

pascal OSErr DragReceiveHandler (WindowPtr theWindow, void *, DragReference theDragRef)
{
	icnsEditorPtr	parentEditor;
	OSErr			err = noErr;
	FlavorType		flavorType;
	ItemReference	theItem;
	GWorldPtr		targetGW, tempGW;
	PixMapHandle	targetPix, tempPix;
	Point			theMouse, localMouse;
	long			targetName, tempName;
	long			iconType, typeSize=sizeof(long);
	bool			approved, replaceIcon = false;
	PicHandle		pic;
	long			picSize;
	Rect			targetRect = {0, 0, 0, 0};
	RgnHandle		updateRgn;
	
	GetDragMouse(theDragRef, &theMouse, 0);
	localMouse = theMouse;
	GlobalToLocal(&localMouse);
	
	err = noErr;
	parentEditor = GetEditor(theWindow);
	
	if (parentEditor->statics.dragHiliteRgn != NULL)
	{
		DisposeRgn(parentEditor->statics.dragHiliteRgn);
		parentEditor->statics.dragHiliteRgn = NULL;
	}
	
	if ((ApproveDragReference (theDragRef,&approved, parentEditor) == noErr) && approved)
	{
		SetRect(&parentEditor->dragSrcRect, 0, 0, 0, 0);
		GetDragItemReferenceNumber(theDragRef, 1, &theItem);
		GetFlavorType(theDragRef,theItem,1,&flavorType);
		if (flavorType == 'PICT')
		{
			err = GetFlavorDataSize(theDragRef, theItem, 'PICT', &picSize);
			pic = (PicHandle)NewHandle(picSize);			
			err = GetFlavorData (theDragRef,theItem,'PICT',(void*)*pic,&picSize,0);
			if (PtInRect(localMouse, &(**parentEditor->controls.iconEditWell).contrlRect))
			{
				targetGW = parentEditor->currentGW;
				targetPix = parentEditor->currentPix;
				targetName = parentEditor->currentPixName;
			}
			else if (PtInRect(localMouse, &(**parentEditor->controls.display.preview).contrlRect))
			{
				replaceIcon = true;
				targetGW = parentEditor->il32GW;
				targetPix = parentEditor->il32Pix;
				targetName = il32;
			}
			else parentEditor->GetDisplayPix(theMouse, &targetGW, &targetPix, &targetName, &targetRect);
			updateRgn = NewRgn();
			RectRgn(updateRgn, &targetRect);
			if (targetPix == parentEditor->currentPix)
			{
				RgnHandle tempRgn;
				
				tempRgn = NewRgn();
				
				RectRgn(tempRgn, &parentEditor->window->portRect);
				
				UnionRgn(tempRgn, updateRgn, updateRgn);
				
				DisposeRgn(tempRgn);
			}
			
			if (parentEditor->currentPix != targetPix)
			{
				parentEditor->status |= (dontRestoreCurrentPix | skipState);
				tempPix = parentEditor->currentPix;
				tempGW = parentEditor->currentGW;
				tempName = parentEditor->currentPixName;
				parentEditor->currentPix = targetPix;
				parentEditor->currentGW = targetGW;
				parentEditor->currentPixName = targetName;
				parentEditor->currentState = new drawingStateClass(parentEditor->currentState, parentEditor);
				parentEditor->currentPix = tempPix;
				parentEditor->currentGW = tempGW;
				parentEditor->currentPixName = tempName;
				parentEditor->status &= ~(dontRestoreCurrentPix | skipState);
			}
			
			GetFlavorType(theDragRef,theItem,2,&flavorType);
			if (replaceIcon)
			{
				InsertPicIntoIcon(parentEditor, pic);
			}
			else if (flavorType == 'Icon')
			{
				GetFlavorData (theDragRef,theItem,'Icon',&iconType,&typeSize,0);
				if (iconType == selection)
					parentEditor->InsertFromPicture(pic, targetGW, insertCentered);
				else
					switch (targetName)
					{
						case h8mk: case l8mk: case s8mk: case ichm: case icnm: case icsm:
							GetFlavorData (theDragRef,theItem,'Icon',&iconType,&typeSize,0);
							switch (iconType)
							{
								case h8mk: case l8mk: case s8mk: case ichm: case icnm: case icsm:
									parentEditor->InsertFromPicture(pic, targetGW, insertCentered + insertScaled);
									break;
								default:
									parentEditor->PictureToMask(pic, targetGW);
							}
							break;
						default:
							parentEditor->InsertFromPicture(pic, targetGW, insertCentered + insertScaled);
							break;
					}
			}
			else
				parentEditor->InsertFromPicture(pic, targetGW, insertCentered);
				
			
			parentEditor->members |= targetName;
			
			DisposeHandle((Handle)pic);
			
			
			if (parentEditor->currentPix != targetPix)
			{
				parentEditor->status |= (dontRestoreCurrentPix | skipState);
				tempPix = parentEditor->currentPix;
				tempGW = parentEditor->currentGW;
				tempName = parentEditor->currentPixName;
				parentEditor->currentPix = targetPix;
				parentEditor->currentGW = targetGW;
				parentEditor->currentPixName = targetName;
				parentEditor->currentState = new drawingStateClass(parentEditor->currentState, parentEditor);	
				parentEditor->currentPix = tempPix;
				parentEditor->currentGW = tempGW;
				parentEditor->currentPixName = tempName;
				parentEditor->status &= ~(dontRestoreCurrentPix | skipState);
			}
			
			parentEditor->currentState = new drawingStateClass(parentEditor->currentState, parentEditor);	
				
			
			InvalRgn(updateRgn);
			parentEditor->Refresh();
			parentEditor->status |= (needToSave | needsUpdate);
			
			DisposeRgn(updateRgn);
		}
		else
			err = badDragFlavorErr;
	}
	
	return err;
}

void InsertPicIntoIcon(icnsEditorPtr parentEditor, PicHandle pic)
{
	GWorldPtr		iconGW, maskGW, targetIconGW, targetMaskGW;
	PixMapHandle	iconPix, maskPix, targetIconPix, targetMaskPix;
	long			targetIconName, targetMaskName;
	Rect			srcRect, targetRect;
	CTabHandle		grayscaleTable;
	
	srcRect = (**pic).picFrame;
	
	NewGWorld(&iconGW, 32, &srcRect, NULL, NULL, 0);
	iconPix = GetGWorldPixMap(iconGW);
	LockPixels(iconPix);
	
	grayscaleTable = GetCTable(40);
	NewGWorld(&maskGW, 8, &srcRect, grayscaleTable, NULL, 0);
	maskPix = GetGWorldPixMap(maskGW);
	LockPixels(maskPix);
	
	DisposeCTable(grayscaleTable);
	
	PictureToARGB(pic, iconPix, maskPix, true);
	
	parentEditor->GetCurrentIconMask(&targetIconPix,
									 &targetIconGW,
									 &targetIconName,
									 &targetMaskPix,
									 &targetMaskGW,
									 &targetMaskName);
	
	if (targetIconName != parentEditor->currentPixName)
	{
		GWorldPtr tempGW;
		PixMapHandle tempPix;
		long	tempName;
		
		parentEditor->status |= (dontRestoreCurrentPix | skipState);
		tempPix = parentEditor->currentPix;
		tempGW = parentEditor->currentGW;
		tempName = parentEditor->currentPixName;
		parentEditor->currentPix = targetIconPix;
		parentEditor->currentGW = targetIconGW;
		parentEditor->currentPixName = targetIconName;
		parentEditor->currentState = new drawingStateClass(parentEditor->currentState, parentEditor);
		parentEditor->currentPix = tempPix;
		parentEditor->currentGW = tempGW;
		parentEditor->currentPixName = tempName;
		parentEditor->status &= ~(dontRestoreCurrentPix | skipState);
	
	}
	else
	{
		GWorldPtr tempGW;
		PixMapHandle tempPix;
		long	tempName;
		
		parentEditor->status |= (dontRestoreCurrentPix | skipState);
		tempPix = parentEditor->currentPix;
		tempGW = parentEditor->currentGW;
		tempName = parentEditor->currentPixName;
		parentEditor->currentPix = targetMaskPix;
		parentEditor->currentGW = targetMaskGW;
		parentEditor->currentPixName = targetMaskName;
		parentEditor->currentState = new drawingStateClass(parentEditor->currentState, parentEditor);
		parentEditor->currentPix = tempPix;
		parentEditor->currentGW = tempGW;
		parentEditor->currentPixName = tempName;
		parentEditor->status &= ~(dontRestoreCurrentPix | skipState);
	}
	
	
	targetRect = srcRect;
	MakeTargetRect((**parentEditor->currentPix).bounds, &targetRect);
	
	(**iconPix).bounds = targetRect;
	(**maskPix).bounds = targetRect;
			   
	MergePix(targetIconPix, targetMaskPix, iconPix, maskPix, targetIconPix, targetMaskPix);

	if (targetIconName != parentEditor->currentPixName)
	{
		GWorldPtr tempGW;
		PixMapHandle tempPix;
		long	tempName;
		
		parentEditor->status |= (dontRestoreCurrentPix | skipState);
		tempPix = parentEditor->currentPix;
		tempGW = parentEditor->currentGW;
		tempName = parentEditor->currentPixName;
		parentEditor->currentPix = targetIconPix;
		parentEditor->currentGW = targetIconGW;
		parentEditor->currentPixName = targetIconName;
		parentEditor->currentState = new drawingStateClass(parentEditor->currentState, parentEditor);
		parentEditor->currentPix = tempPix;
		parentEditor->currentGW = tempGW;
		parentEditor->currentPixName = tempName;
		parentEditor->status &= ~(dontRestoreCurrentPix | skipState);
	}
	else
	{
		GWorldPtr tempGW;
		PixMapHandle tempPix;
		long	tempName;
		
		parentEditor->status |= (dontRestoreCurrentPix | skipState);
		tempPix = parentEditor->currentPix;
		tempGW = parentEditor->currentGW;
		tempName = parentEditor->currentPixName;
		parentEditor->currentPix = targetMaskPix;
		parentEditor->currentGW = targetMaskGW;
		parentEditor->currentPixName = targetMaskName;
		parentEditor->currentState = new drawingStateClass(parentEditor->currentState, parentEditor);
		parentEditor->currentPix = tempPix;
		parentEditor->currentGW = tempGW;
		parentEditor->currentPixName = tempName;
		parentEditor->status &= ~(dontRestoreCurrentPix | skipState);
	}
	
	UnlockPixels(iconPix);
	DisposeGWorld(iconGW);
	UnlockPixels(maskPix);
	DisposeGWorld(maskGW);
}

void DragPixMap(EventRecord *eventPtr,
				PixMapHandle dragPix,
				RgnHandle dragShapeRgn,
				PixMapHandle dragContentsPix,
				RgnHandle dragContentsRgn,
				long dragType)
{
	DragReference	dragRef;
	RgnHandle		dragRgn, tempRgn, maskRgn;
	PicHandle		dragPic;
	Point			offsetPt;
	
	NewDrag(&dragRef);
	
	maskRgn = NewRgn();
	if (dragShapeRgn == NULL)
		RectRgn(maskRgn, &(**dragPix).bounds);
	else
		CopyRgn(dragShapeRgn, maskRgn);
		
	dragRgn = NewRgn();
	if (dragContentsRgn == NULL)
		RectRgn(dragRgn,  &(**dragContentsPix).bounds);
	else
		CopyRgn(dragContentsRgn, dragRgn);

	
	PixMapToPicture(dragContentsPix, dragRgn, &dragPic);
	
	AddDragItemFlavor(dragRef, 0, 'PICT', *dragPic,  GetHandleSize((Handle)dragPic), 0);
	AddDragItemFlavor(dragRef, 0, 'Icon', &dragType, sizeof(long), 0);
	
	offsetPt = eventPtr->where;
	offsetPt.h -= (**dragPix).bounds.right/2;
	offsetPt.v -= (**dragPix).bounds.bottom/2;
	
	if (RegionArea(maskRgn) < 9216)
		SetDragImage(dragRef, dragPix, maskRgn, offsetPt, kDragStandardTranslucency);
	
	tempRgn = NewRgn();
	CopyRgn(maskRgn, tempRgn);
	InsetRgn(tempRgn, 1, 1);
	DiffRgn(maskRgn, tempRgn, tempRgn);

	OffsetRgn(tempRgn, offsetPt.h, offsetPt.v);
	
	TrackDrag(dragRef,eventPtr,tempRgn);
	
	DisposeRgn(maskRgn);
	DisposeRgn(dragRgn);
	DisposeRgn(tempRgn);
	DisposeHandle((Handle)dragPic);
}
