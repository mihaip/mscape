#include <QuickTimeComponents.h>
#include <ImageCodec.h>
#include "icnsEditorClass.h"
#include "drawingStateClass.h"
#include "editorStaticsClass.h"
#include "MAlert.h"

const static OSType kEffectSource = 'srcA';
const static int kStandardButtonWidth = 69;

void icnsEditorClass::ReapplyQTEffect()
{
	GWorldPtr				sourceGW;
	PixMapHandle			sourcePix;
	RgnHandle				maskRgn;
	
	if (lastEffectDesc == NULL)
		return;
	
	if (status & selectionFloated)
	{
		sourcePix = selectionPix;
		sourceGW = selectionGW;
		maskRgn = selectionRgn;
	}
	else if (status & hasSelection)
	{
		sourcePix = currentPix;
		sourceGW = currentGW;
		maskRgn = selectionRgn;
	}
	else
	{
		sourcePix = currentPix;
		sourceGW = currentGW;
		maskRgn = NULL;
	}
	
	ApplyEffect(lastEffectType, lastEffectDesc, sourceGW, sourcePix, maskRgn);
	currentState = new drawingStateClass(currentState, this); // we must save the state
	status |= needToSave; // the drawing was modified, and thus it needs to be saved...
	status |= needsUpdate; // and be update as well
}

OSErr icnsEditorClass::ApplyQTEffect(OSType effectType)
{
	GrafPtr 				mySavedPort = NULL;
	QTAtomContainer			myParamDesc = NULL;
	MenuHandle				myMenu = NULL;
	OSErr					err = noErr;
	ComponentInstance		componentInstance = NULL;
	QTAtomContainer			effectDesc = NULL;
	QTParameterDialog		effectsDialog;
	GWorldPtr				sourceGW;
	PixMapHandle			sourcePix;
	RgnHandle				maskRgn;
	QTParamPreviewRecord	preview = {1, NULL};
	
	if (status & selectionFloated)
	{
		sourcePix = selectionPix;
		sourceGW = selectionGW;
		maskRgn = selectionRgn;
	}
	else if (status & hasSelection)
	{
		sourcePix = currentPix;
		sourceGW = currentGW;
		maskRgn = selectionRgn;
	}
	else
	{
		sourcePix = currentPix;
		sourceGW = currentGW;
		maskRgn = NULL;
	}
	
	::GetPort(&mySavedPort);
	
	err = GetEffectDescription(&effectDesc, effectType);
	if (err != noErr) goto bail;
	
	err = GetComponentInstance(&componentInstance, effectType);
	if (err != noErr) goto bail;
		
	// get the list of parameters for the effect
	err = ImageCodecGetParameterList(componentInstance, &myParamDesc);
	if (err != noErr) goto bail;
	
	// set up the dialog box
	MWindow::DeactivateAll();
	
	err = ImageCodecCreateStandardParameterDialog(componentInstance,
												  myParamDesc,
											 	  effectDesc,
												  0,							// dialog options
												  NULL,						// no existing dialog
												  0,							// no existing user item
												  &effectsDialog);
	
	// setup the dialog
	PixMapToPicture(sourcePix, maskRgn, &preview.sourcePicture);
	ImageCodecStandardParameterDialogDoAction(componentInstance, effectsDialog, pdActionSetPreviewPicture, &preview);
	SetupEffectsDialog();
	
	if (RunEffectsDialogEventLoop(effectsDialog, componentInstance))
	{
		ApplyEffect(effectType, effectDesc, sourceGW, sourcePix, maskRgn);
		currentState = new drawingStateClass(currentState, this); // we must save the state
		status |= needToSave; // the drawing was modified, and thus it needs to be saved...
		status |= needsUpdate; // and be update as well
		
		// remember in case the user wants to reapply
		lastEffectType = effectType;
		if (lastEffectDesc)
			QTDisposeAtomContainer(lastEffectDesc);
		
		QTCopyAtom(effectDesc, kParentAtomIsContainer, &lastEffectDesc);
		//MUtilities::QTCopyAtomContainer(effectDesc, &lastEffectDesc);
	}
	else
		err = userCanceledErr;
		
	bail:
	MWindow::ActivateAll();
	
	if (preview.sourcePicture)
		KillPicture(preview.sourcePicture);
	
	if (myParamDesc != NULL)
		QTDisposeAtomContainer(myParamDesc);
		
	if (effectDesc)
		QTDisposeAtomContainer(effectDesc);

	::MacSetPort(mySavedPort);
	
	return err;
}

void icnsEditorClass::SetupEffectsDialog()
{
#if TARGET_API_MAC_CARBON
	WindowRef		frontWindow;
	DialogPtr		dialog;
	ControlHandle	button;
	Rect			buttonRect;
	int				delta;
	
	frontWindow = ::FrontWindow();
	
	dialog = GetDialogFromWindow(frontWindow);
	
	GetDialogItemAsControl(dialog, iOK, &button);
	GetControlBounds(button, &buttonRect);
	delta = kStandardButtonWidth - (buttonRect.right - buttonRect.left);
	if (delta > 0)
		buttonRect.left -= delta;
	else
		delta = 0;
	SetControlBounds(button, &buttonRect);
	
	GetDialogItemAsControl(dialog, iCancel, &button);
	GetControlBounds(button, &buttonRect);
	OffsetRect(&buttonRect, -delta, 0);
	if (buttonRect.right - buttonRect.left < kStandardButtonWidth)
		buttonRect.left = buttonRect.right - kStandardButtonWidth;
	SetControlBounds(button, &buttonRect);
#endif
}

OSErr icnsEditorClass::GetEffectDescription(QTAtomContainer *effectDesc, OSType effectType)
{
	OSErr					err = noErr;
	OSType					myType;
	
	// create a new, empty effect description
	err = QTNewAtomContainer(effectDesc);
	if (err != noErr)
		goto bail;
			
	// create the effect ID atom: the atom type is kParameterWhatName, and the atom ID is kParameterWhatID
	myType = EndianU32_NtoB(effectType);
	err = QTInsertChild(*effectDesc, kParentAtomIsContainer, kParameterWhatName, kParameterWhatID, 0, sizeof(myType), &myType, NULL);
	if (err != noErr)
		goto bail;
		
	myType = EndianU32_NtoB(kEffectSource);
	err = QTInsertChild(*effectDesc, kParentAtomIsContainer, kEffectSourceName, 1, 0, sizeof(myType), &myType, NULL);
	if (err != noErr)
		goto bail;
		
	bail:
		return err;
}

OSErr icnsEditorClass::GetComponentInstance(ComponentInstance *componentInstance, OSType effectType)
{
	ComponentDescription	componentDesc;
	Component				component = NULL;
	OSErr					err = noErr;
	
	// set up a component description
	componentDesc.componentType			= decompressorComponentType;	// effects are image decompressor components
	componentDesc.componentSubType		= effectType;	// whichever subtype of effect we are looking for
	componentDesc.componentManufacturer	= 0;
	componentDesc.componentFlags			= 0;
	componentDesc.componentFlagsMask		= 0;
	
	
	// find the required component
	component = FindNextComponent(component, &componentDesc);
	if (component == NULL)
		return paramErr;
		
	// open the component
	*componentInstance = OpenComponent(component);
	
	return noErr;
}

void icnsEditorClass::ApplyEffect(OSType effectType, QTAtomContainer effectDesc,
								  GWorldPtr sourceGW, PixMapHandle sourcePix, RgnHandle clipRgn)
{
#pragma unused(sourceGW)
	ImageSequenceDataSource	source;
	ImageDescriptionHandle	sourceDesc = NULL;
	ImageSequence			effectSequence = 0L;
	ImageDescriptionHandle	sampleDescription = NULL;
	TimeBase				timeBase;
	ICMFrameTimeRecord		frameTime;
	OSErr					err;
	TimeValue				theTime = 0;
	int						steps = 1;
	GWorldPtr				tempGW = NULL, tempGW2 = NULL;
	PixMapHandle			tempPix = NULL, tempPix2 = NULL;
	Rect					tempRect;
	
	tempRect = (**sourcePix).bounds;
	OffsetRect(&tempRect, -tempRect.left, -tempRect.top);
	err = NewGWorld(&tempGW2, 32, &tempRect, NULL, NULL, 0);
	if (err != noErr) goto bail;
	tempPix2 = GetGWorldPixMap(tempGW2);
	LockPixels(tempPix2);
	
	err = MakeImageDescriptionForEffect(effectType, &sampleDescription);
	if (err != noErr) goto bail;
		
	(**sampleDescription).vendor = kAppleManufacturer;
	(**sampleDescription).temporalQuality = codecLosslessQuality;
	(**sampleDescription).spatialQuality = codecLosslessQuality;
	(**sampleDescription).width = (**sourcePix).bounds.right - (**sourcePix).bounds.left;
	(**sampleDescription).height = (**sourcePix).bounds.bottom - (**sourcePix).bounds.top;
		
	err = DecompressSequenceBeginS(&effectSequence,
								   sampleDescription,
								   *effectDesc,
								   GetHandleSize(effectDesc),
								   tempGW2,
								   NULL,
								   &tempRect,
								   NULL,
								   ditherCopy,
								   NULL,
								   0,
								   codecLosslessQuality,
								   NULL);

	// create a new time base and associate it with the decompression sequence
	timeBase = NewTimeBase();
	err = GetMoviesError();
	if (err != noErr) goto bail;

	SetTimeBaseRate(timeBase, 0);
	err = CDSequenceSetTimeBase(effectSequence, timeBase);
	if (err != noErr) goto bail;
	
	// setup the source
	err = NewGWorld(&tempGW, 32, &tempRect, NULL, NULL, 0);
	if (err != noErr) goto bail;
	tempPix = GetGWorldPixMap(tempGW);
	LockPixels(tempPix);
	
	SAVEGWORLD;
	SetGWorld(tempGW, NULL);
	SAVECOLORS;
	CopyPixMap(sourcePix, tempPix, &(**sourcePix).bounds, &tempRect, srcCopy, NULL);
	RESTORECOLORS;
	RESTOREGWORLD;
	
	err = MakeImageDescriptionForPixMap(tempPix, &sourceDesc);
	if (err != noErr) goto bail;
	
	err = CDSequenceNewDataSource(effectSequence, &source, kEffectSource, 1, (Handle)sourceDesc, NULL, 0);
	if (err != noErr) goto bail;

	err = CDSequenceSetSourceData(source, GetPixBaseAddr(tempPix), (**sourceDesc).dataSize);
	if (err != noErr) goto bail;

	// set the timebase time to the step of the sequence to be rendered
	SetTimeBaseValue(timeBase, theTime, steps);

	frameTime.value.hi				= 0;
	frameTime.value.lo				= theTime;
	frameTime.scale					= steps;
	frameTime.base					= 0;
	frameTime.duration				= steps;
	frameTime.rate					= 0;
	frameTime.recordSize			= sizeof(frameTime);
	frameTime.frameNumber			= 1;
	frameTime.flags					= icmFrameTimeHasVirtualStartTimeAndDuration;
	frameTime.virtualStartTime.lo	= 0;
	frameTime.virtualStartTime.hi	= 0;
	frameTime.virtualDuration		= steps;
		
	err = DecompressSequenceFrameWhen(effectSequence,
									  *((Handle)effectDesc),
									  GetHandleSize((Handle)effectDesc),
									  0,
									  0,
									  NULL,
									  &frameTime);
	
	if (err == noErr)
	{
		SAVEGWORLD;
		SetGWorld(tempGW2, NULL);
		SAVECOLORS;
		if (statics.preferences.FeatureEnabled(prefsDither))
			CopyPixMap(tempPix2, sourcePix, &tempRect, &(**sourcePix).bounds, srcCopy + ditherCopy, clipRgn);
		else
			CopyPixMap(tempPix2, sourcePix, &tempRect, &(**sourcePix).bounds, srcCopy, clipRgn);
		RESTORECOLORS;
		RESTOREGWORLD;
	}
	
bail:

	if (effectSequence) CDSequenceEnd(effectSequence);
	
	if (tempPix) UnlockPixels(tempPix);	
	if (tempGW) DisposeGWorld(tempGW);
		
	if (tempPix2) UnlockPixels(tempPix2);
	if (tempGW2) DisposeGWorld(tempGW2);
		
	if (sourceDesc) DisposeHandle((Handle)sourceDesc);
}

bool icnsEditorClass::RunEffectsDialogEventLoop(QTParameterDialog dialog, ComponentInstance componentInstance)
{
	bool				handledEvent;
	OSErr				err;
	EventRecord			event;
	short				itemHit = 0;
	
	while (itemHit != iOK && itemHit != iCancel)
		if (WaitNextEvent (everyEvent, &event, 6, NULL))
		{
			handledEvent = true;
			err = ImageCodecIsStandardParameterDialogEvent(componentInstance, &event, dialog);
			switch (err)
			{
				case codecParameterDialogConfirm:
					// the user has selected the OK button of the standard (not custom) effects parameter dialog box			
					handledEvent = true;
					itemHit = iOK;
					break;
					
				case userCanceledErr:
					// the user has selected the Cancel button of the standard (not custom) effects parameter dialog box
					itemHit = iCancel;
					handledEvent = true;
					break;
								
				case featureUnsupported:
					// the event was *not* handled by ImageCodecIsStandardParameterDialogEvent;
					// let the event be processed normally
					handledEvent = true;
					break;
				
				case noErr:
				default:
					// the event was completely handled by ImageCodecIsStandardParameterDialogEvent
					handledEvent = true;
					break;
			}
			
			//if (!handledEvent)
			//	handledEvent = MWindow::StandardDialogFilter(dialog, eventPtr, itemHit);
		}
		
    
    // retrieve the values from the parameters dialog box
	if (itemHit == iOK)
		ImageCodecStandardParameterDialogDoAction(componentInstance,
											      dialog,
											      pdActionConfirmDialog,
											      NULL);
		
	// remove the dialog box
	ImageCodecDismissStandardParameterDialog(componentInstance, dialog);
	
	return (itemHit == iOK);
}
