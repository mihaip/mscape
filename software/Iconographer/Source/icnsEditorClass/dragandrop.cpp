#include "icnsEditorClass.h"
#include "drawingStateClass.h"
#include "editorStaticsClass.h"

pascal OSErr ApproveDragReference (DragReference theDragRef, bool *approved, icnsEditorPtr parentEditor)
{
	OSErr 			err = noErr;
	UInt16			index = 1;
	FlavorType		flavorType;
	Point			theMouse;
	ItemReference	theItem;
	Rect			wellRect;
	
	GetDragMouse(theDragRef, &theMouse, 0);
	GlobalToLocal(&theMouse);
	
	wellRect = parentEditor->editAreaRect;
	
	*approved = false;
	if (PtInRect(theMouse, &wellRect))
	if (!(PtInRect(theMouse, &parentEditor->dragSrcRect)))
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
	OSErr 		err = noErr;
	Point		theMouse;
	bool		approved;
	Rect		wellRect, tempRect = {-20, -20, -10, -10};
	RgnHandle	hiliteRgn = NewRgn (), dummyRegion = NewRgn();
	
	RectRgn(dummyRegion, &tempRect); 
		
	GetDragMouse(theDragRef, &theMouse, 0);
	GlobalToLocal(&theMouse);
	
	wellRect = parentEditor->editAreaRect;

	if (!hiliteRgn)
		err = nilHandleErr;
	else
	{
		if (!((ApproveDragReference (theDragRef,&approved, parentEditor) == noErr) && approved))
			RectRgn(hiliteRgn, &tempRect), approved = false;
		else if (PtInRect(theMouse, &wellRect))
			RectRgn(hiliteRgn,&wellRect), approved = true;
		else
			RectRgn(hiliteRgn, &tempRect), approved = false;
		
		RGBColor dragHiliteColor, windowForeColor;
		RgnHandle	tempRgn;
		Rect		targetRect;
		
		SAVECOLORS;
		SAVEGWORLD;
		parentEditor->SetPort();
		
		GetDragHiliteColor(parentEditor->window, &dragHiliteColor);
		
		tempRgn = NewRgn();
		CopyRgn(hiliteRgn, tempRgn);
		InsetRgn(tempRgn, 2, 2);
		DiffRgn(hiliteRgn, tempRgn, hiliteRgn);
		DisposeRgn(tempRgn);
		
		GetForeColor(&windowForeColor);
		RGBForeColor(&dragHiliteColor);
		
		targetRect = parentEditor->GetPortRect();
		OffsetRect(&targetRect, -targetRect.left, -targetRect.top);
		
		if (parentEditor->statics.dragHiliteRgn == NULL)
		{			 
			parentEditor->statics.dragHiliteRgn = hiliteRgn;
			
			PaintRgn(hiliteRgn);
			
			if (approved)
				ShowDragHilite(theDragRef, dummyRegion, true);
			else
				HideDragHilite(theDragRef);
		}
		else if (!EqualRgn(hiliteRgn, parentEditor->statics.dragHiliteRgn))
		{
			InvalWindowRgn(parentEditor->window, parentEditor->statics.dragHiliteRgn);
			parentEditor->Refresh();
			
			DisposeRgn(parentEditor->statics.dragHiliteRgn);
			
			parentEditor->statics.dragHiliteRgn = hiliteRgn;
			
			PaintRgn(hiliteRgn);
			
			if (approved)
				ShowDragHilite(theDragRef, dummyRegion, true);
			else
				HideDragHilite(theDragRef);
			
		}
		else
			DisposeRgn(hiliteRgn);
		
		RGBForeColor(&windowForeColor);
		RESTOREGWORLD;
		RESTORECOLORS;
	}
	
	DisposeRgn(dummyRegion);
	
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
			
			DrawDragHilite(theDragRef, parentEditor);
			if (parentEditor->statics.dragHiliteRgn != NULL)
			{
				DisposeRgn(parentEditor->statics.dragHiliteRgn);
				parentEditor->statics.dragHiliteRgn = NULL;
			}
			break;

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
	GWorldPtr		targetGW;
	PixMapHandle	targetPix;
	Point			theMouse, localMouse;
	long			targetName;
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
			if (PtInRect(localMouse, &parentEditor->editAreaRect))
			{
				targetGW = parentEditor->currentGW;
				targetPix = parentEditor->currentPix;
				targetName = parentEditor->currentPixName;
			}
			updateRgn = NewRgn();
			RectRgn(updateRgn, &targetRect);
			if (targetPix == parentEditor->currentPix)
			{
				RgnHandle tempRgn;
				Rect		portRect;
				
				tempRgn = NewRgn();
				
				portRect = parentEditor->GetPortRect();
				
				RectRgn(tempRgn, &portRect);
				
				UnionRgn(tempRgn, updateRgn, updateRgn);
				
				DisposeRgn(tempRgn);
			}
			
			if (parentEditor->currentPix != targetPix)
				parentEditor->SaveState(targetGW, targetPix, targetName);
			
			GetFlavorType(theDragRef,theItem,2,&flavorType);
			if (flavorType == 'Icon')
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
				parentEditor->SaveState(targetGW, targetPix, targetName);
			
			parentEditor->currentState = new drawingStateClass(parentEditor->currentState, parentEditor);	
				
			
			InvalWindowRgn(parentEditor->window, updateRgn);
			parentEditor->Refresh();
			parentEditor->status |= (needToSave | needsUpdate);
			
			DisposeRgn(updateRgn);
		}
		else
			err = badDragFlavorErr;
	}
	
	return dragNotAcceptedErr;
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
									 &targetMaskName,
									 false);
	
	if (targetIconName != parentEditor->currentPixName)
		parentEditor->SaveState(targetIconGW, targetIconPix, targetIconName);
	else
		parentEditor->SaveState(targetMaskGW, targetMaskPix, targetMaskName);
	
	
	targetRect = srcRect;
	MakeTargetRect((**parentEditor->currentPix).bounds, &targetRect);
	
	(**iconPix).bounds = targetRect;
	(**maskPix).bounds = targetRect;
			   
	MergePix(targetIconPix, targetMaskPix, iconPix, maskPix, targetIconPix, targetMaskPix);

	parentEditor->members |= (targetIconName | targetMaskName);

	if (targetIconName != parentEditor->currentPixName)
		parentEditor->SaveState(targetIconGW, targetIconPix, targetIconName);
	else
		parentEditor->SaveState(targetMaskGW, targetMaskPix, targetMaskName);
	
	UnlockPixels(iconPix);
	DisposeGWorld(iconGW);
	UnlockPixels(maskPix);
	DisposeGWorld(maskGW);
}

void DragPixMap(Rect dragSourceRect,
				EventRecord *eventPtr,
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
	{
		if (dragPix != NULL)
			RectRgn(maskRgn, &(**dragPix).bounds);
		else
		{
			RectRgn(maskRgn, &dragSourceRect);
			OffsetRgn(maskRgn, -dragSourceRect.left, -dragSourceRect.top);
		}
	}
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
	
	offsetPt.h = dragSourceRect.left;
	offsetPt.v = dragSourceRect.top;
	LocalToGlobal(&offsetPt);
	
	if (dragPix != NULL && RegionArea(maskRgn) <= kMaximumTranslucentArea)
		SetDragImage(dragRef, dragPix, maskRgn, offsetPt, kDragStandardTranslucency);
	
	tempRgn = NewRgn();
	CopyRgn(maskRgn, tempRgn);
	InsetRgn(tempRgn, 1, 1);
	DiffRgn(maskRgn, tempRgn, tempRgn);

	OffsetRgn(tempRgn, offsetPt.h, offsetPt.v);
	
	TrackDrag(dragRef, eventPtr, tempRgn);
	
	DisposeRgn(maskRgn);
	DisposeRgn(dragRgn);
	DisposeRgn(tempRgn);
	DisposeHandle((Handle)dragPic);
	
	DisposeDrag(dragRef);
}
