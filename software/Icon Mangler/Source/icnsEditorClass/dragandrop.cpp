#include "icnsEditorClass.h"
#include "drawingStateClass.h"

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
		PtInRect(theMouse, &parentEditor->controls.display.maskSmallRect))
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
		else
		{
			Rect	tempRect = {-1, -1, 0, 0};
			RectRgn(hiliteRgn, &tempRect);
		}
		SAVEGWORLD;
		SAVECOLORS;
		SetPort(parentEditor->window);
		err = ShowDragHilite (theDragRef,hiliteRgn,true);
		RESTOREGWORLD;
		RESTORECOLORS;
		DisposeRgn (hiliteRgn);
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
	OSErr			err;
	FlavorType		flavorType;
	ItemReference	theItem;
	GWorldPtr		targetGW, tempGW;
	PixMapHandle	targetPix, tempPix;
	Point			theMouse, localMouse;
	long			targetName, tempName;
	long			iconType, typeSize=sizeof(long);
	bool			approved;
	PicHandle		pic;
	long			picSize;
	Rect			targetRect = {0, 0, 0, 0};
	RgnHandle		updateRgn;
	
	GetDragMouse(theDragRef, &theMouse, 0);
	localMouse = theMouse;
	GlobalToLocal(&localMouse);
	
	err = noErr;
	parentEditor = GetEditor(theWindow);
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
			if (flavorType == 'Icon')
				switch (targetName)
				{
					case h8mk: case l8mk: case s8mk: case ichm: case icnm: case icsm:
						GetFlavorData (theDragRef,theItem,'Icon',&iconType,&typeSize,0);
						switch (iconType)
						{
							case h8mk: case l8mk: case s8mk: case ichm: case icnm: case icsm:
								parentEditor->InsertFromPicture(pic, targetGW, true);
								break;
							default:
								parentEditor->PictureToMask(pic, targetGW);
						}
						break;
					default:
						parentEditor->InsertFromPicture(pic, targetGW, true);
						break;
				}
			else
				parentEditor->InsertFromPicture(pic, targetGW, false);
			switch (targetName)
			{
				case ih32: case h8mk: case ich8: case ich4: case ichi: case ichm: parentEditor->sizes |= huge; break;
				case il32: case l8mk: case icl8: case icl4: case icni: case icnm: parentEditor->sizes |= large; break;
				case is32: case s8mk: case ics8: case ics4: case icsi: case icsm: parentEditor->sizes |= small; break;
			}
			DisposeHandle((Handle)pic);
			
			parentEditor->currentState = new drawingStateClass(parentEditor->currentState, parentEditor);
			
			InvalRgn(updateRgn);
			parentEditor->Refresh();
			parentEditor->status |= needToSave;
			
			DisposeRgn(updateRgn);
		}
		else
			err = badDragFlavorErr;
	}
	return err;
	
}

void DragPixMap(EventRecord *eventPtr, PixMapHandle dragPix, long dragType)
{
	DragReference	dragRef;
	RgnHandle		dragRgn, tempRgn, maskRgn;
	PicHandle		dragPic;
	Point			offsetPt;
	
	NewDrag(&dragRef);
	
	dragRgn = NewRgn();
	maskRgn = NewRgn();
	RectRgn(dragRgn, &(**dragPix).bounds);
	CopyRgn(dragRgn, maskRgn);
	PixMapToPicture(dragPix, maskRgn, &dragPic);
	
	AddDragItemFlavor(dragRef, 0, 'PICT', *dragPic,  GetHandleSize((Handle)dragPic), 0);
	AddDragItemFlavor(dragRef, 0, 'Icon', &dragType, sizeof(long), 0);
	
	offsetPt = eventPtr->where;
	offsetPt.h -= (**dragPix).bounds.right/2;
	offsetPt.v -= (**dragPix).bounds.bottom/2;
	
	SetDragImage(dragRef, dragPix, maskRgn, offsetPt, kDragStandardTranslucency);
	
	tempRgn = NewRgn();
	CopyRgn(dragRgn, tempRgn);
	InsetRgn(tempRgn, 1, 1);
	DiffRgn(dragRgn, tempRgn, dragRgn);

	OffsetRgn (dragRgn, offsetPt.h, offsetPt.v);
	
	TrackDrag(dragRef,eventPtr,dragRgn);
	
	DisposeRgn(maskRgn);
	DisposeRgn(dragRgn);
	DisposeRgn(tempRgn);
	DisposeHandle((Handle)dragPic);
}
