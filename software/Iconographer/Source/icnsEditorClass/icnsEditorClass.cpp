// __________________________________________________________________________________________
// Program		: Icon Mangler
// Filename		: icnsEditorClass.cpp (C++)
// Author		: Mihai Parparita (St. Mary's International School)
// Last modified: April 1, 1999
// Description	: This file contains all the functions associated with the icnsEditorClass, as
//				  well as for the subclass staticsClass.

#include "icnsEditorClass.h"
#include "drawingStateClass.h"
#include "editorStaticsClass.h"

editorStaticsClass icnsEditorClass::statics;

// __________________________________________________________________________________________
// Name			: icnsEditorClass::icnsEditorClass
// Input		: previousLastEditor: pointer to item that was the tail of the list (here we
//				  don't really care where we insert, since the order in the list of the
//				  editors does not matter to the user (the stacking order is used when
//				  displaying or closing all editors))
// Output		: None
// Description	: adds the newly created instance to the linked list, creates a new editor
//				  window, the controls, sets some default data and refreshes the display

icnsEditorClass::icnsEditorClass(icnsEditorClass* previousLastEditor)
{
	OSStatus	err = noErr; // used for checking if everything went OK
	Str255		fileName, temp;
	MenuHandle	menuHandle;
	int			ignored;
	
	nextEditor = NULL; // we insert ourselves into the linked list by making the previous
	previousEditor = previousLastEditor; // item point to us, and we point to them
	if (previousLastEditor != NULL)
		previousLastEditor->nextEditor = this;
		
	overlayPix = NULL; // unitliazed values, if they are still NULL when the destructor
	selectionGW = NULL; // is called then we won't attempt to dispose them
	selectionPix = NULL;
	currentState = NULL;
	firstState = NULL;
	
	window = GetWindow(rEditorWIND); // we load the WIND resource which describes the editor
									 // window
	if (window == NULL) // if loading failed then we're out of memory
	{
		status |= outOfMemory;
		return;
	}
		
	SetWRefCon(window, (long)this);
	// the refCon of a window is a number (a long) that is associated with it, and is put
	// there so that applications can identify the windows. In our case we use it to see
	// which editor class instance owns this window. To access it we simply use the
	// GetWRefCon function, and cast the result to a icnsEditorPtr. Note that we don't do
	// this directly, rather we have the GetEditor and GetFrontEditor functions (see below)
	
	SetThemeWindowBackground(window,kThemeActiveDialogBackgroundBrush, true);
	// we set the window background color to the standard background color
	
	err = CreateControls(); // we create the new control from the CNTL resources
	if (err != noErr) // if there was a problem with the creation
	{
		status |= outOfMemory; // we signal this and go back
		return;
	}
	
	currentPix = il32Pix; // these are the current pixels that we are displaying
	currentPixName = il32; // we use several fields for this since sometimes we need to compare
	currentGW = il32GW; // the GWorld pointers /PixMap handles to see if the a GWorld/PixMap
	// is the current one, and at other times we compare the "name" (actually a number)
	
	selectionRgn = NewRgn(); // we create the selection region
	SetEmptyRgn(selectionRgn); // and set it to empty
	selectionMagnifiedRgn = NewRgn(); // and the magnified version too
	// the selectionRgn is used for the actual 1:1 manipulation of the image. However the
	// user has a magnified view on the screen, and so we must keep around a magnified version
	// too (it would not make sense to make a magnified region on the fly, since the shape
	// of the selection does not change that often)
	
	currentSelectionPattern = 0; // this is used to keep track of the which pattern (we cycle
	// through them in order to get an animation) is being currently used
	lastSelectionTicks = LMGetTicks();
	// we step through the animations every few ticks (controlled by a constant), and this
	// variable is used to see when the last update was, and when we need a new one
	
	err = NewGWorldUnpadded(&selectionGW, 32, &largeIconRect, NULL);
	if (err != noErr)
	{
		status |= outOfMemory;
		return;
	}
	selectionPix = GetGWorldPixMap(selectionGW);
	LockPixels(selectionPix);
	// the selection GWorld/PixMap is used to store the floated selection, if any. Basically
	// it is another layer which floats on top of the normal drawing when dragging a selection
	
	currentTool = pen; // the startup default tool
	oldTool = noTool; // the oldTool variable is used to keep track of the tool that previously
	// the current one. This is used when a key that is held down (eg. option) temporarely
	// changes the current tool to a different one (for option is it the eye dropper)
	controls.toolbar.lastTool = pen;
	controls.toolbar.lastToolClickTicks = LMGetTicks();
	controls.toolbar.toolMode = frame;
	controls.toolbar.gradientMode = linear;
	controls.toolbar.lassoMode = freehand;
	
	controls.display.previewMode = previewNormal;

	UpdateToolbar(); // we must get the toolbar to draw to reflect the tool we have set
	
	
	status |= (resized | canZoomIn);
	// we are "resized" since the controls need repositioning (to take into account the
	// zoom level). We can also zoomIn since we're zoomed out at the max level right now
	
	members = il32; // by default we only have the large size, other sizes are added as the
				   // user needs them
	
	currentState = new drawingStateClass(NULL, this); // we store the current state
	firstState = currentState; // and also make this the first one
	
	srcFileSpec.vRefNum = 0;
	srcFileSpec.parID = 0;
	GetIndString(fileName, rBasicStrings, sUntitledName);
	CopyString(srcFileSpec.name, fileName);
	
	RefreshWindowTitle(); // the window title is updated to reflect the icon name
	
	foreColor.red = foreColor.green = foreColor.blue = 0; // default foreground color (black)
	backColor.red = backColor.green = backColor.blue = 0xFFFF; // and background color (white)
	
	pattern = 0;
	
	colors = macOSColors;
	
	ID = rCustomIcon; // the default ID is the standard finder custom icon ID
	GetIDMenu(ID, &menuHandle, &ignored, name);
	
	magnification = (**statics.preferences.data).defaultZoomLevel;
	NumToString(magnification, controls.zoomPlacard.text);
	AppendString(controls.zoomPlacard.text, "\p00%");
	NumToString(ID, controls.infoPlacard.text);
	CopyString(temp, "\pID: ");
	AppendString(temp, controls.infoPlacard.text);
	CopyString(controls.infoPlacard.text, temp);
	
	ResizeWindow();
	
	InstallDraggingHandlers(); // the functions which handle drag and drop must be installed
							   // after the window is visible
}

// __________________________________________________________________________________________
// Name			: icnsEditorClass::CreateControls
// Input		: None
// Output		: None
// Description	: this function loads the control resources, and puts the handles in the
//				  controls struct so that they can be used later on for hit-detection, etc.

OSStatus icnsEditorClass::CreateControls()
{
	OSStatus					err = noErr; // what we'll return...
	ControlFontStyleRec			smallTextStyle; // text style used for the controls
	ControlUserPaneDrawUPP		iconWellDrawUPP, // UPP = Universal Procedure Pointer, this one
												 // is for the drawing function of the icon well
								colorsDrawUPP, // for the color swatch
								displayDrawUPP, // the display on the right side
								previewDrawUPP, // the preview in the bottom right corner
								placardDrawUPP,
								patternsDrawUPP,
								backgroundPaneDrawUPP,
								toolbarWellDrawUPP;
	ControlUserPaneHitTestUPP	iconWellHitTestUPP, // hit testing counterparts for the controls
								colorsHitTestUPP, // mentioned above
								displayHitTestUPP,
								previewHitTestUPP,
								placardHitTestUPP,
								patternsHitTestUPP,
								backgroundPaneHitTestUPP,
								toolbarWellHitTestUPP;
	ControlUserPaneTrackingUPP	placardTrackingUPP,
								previewTrackingUPP;
	Str255						iconLabel, // text used for loading and setting of various
								maskLabel, // labels
								previewLabel;
								
	// this is the text style that we'll be using for the text controls
	smallTextStyle.flags = kControlUseFontMask | kControlUseSizeMask | kControlUseJustMask;
	smallTextStyle.font = kFontIDGeneva; // this font is installed on all systems
	smallTextStyle.size = 9;
	smallTextStyle.just = teCenter;
	
	// creating the root control, all the other controls are children of this one.
	err = CreateRootControl(window,&(controls.rootControl));
	
	controls.toolbarWell = GetNewControl(rToolbarWell, window);
	if (controls.toolbarWell == NULL) return mFulErr;
	toolbarWellDrawUPP = NewControlUserPaneDrawProc(ToolbarWellDraw); 
	toolbarWellHitTestUPP = NewControlUserPaneHitTestProc(ToolbarWellHitTest);
	
	SetControlData(controls.toolbarWell, // we set the drawing function
				   kControlNoPart,
				   kControlUserPaneDrawProcTag,
				   sizeof(toolbarWellDrawUPP),
				   (Ptr) &toolbarWellDrawUPP);
				  
	SetControlData(controls.toolbarWell, // and hit test function
				   kControlNoPart,
				   kControlUserPaneHitTestProcTag, 
				   sizeof(toolbarWellHitTestUPP),
				   (Ptr) &toolbarWellHitTestUPP);
	
	// now we load the toolbar controls. we check if the loading was successful, and if it
	// wasn't we return
	controls.toolbar.pen = GetNewControl(rPen, window);
	if (controls.toolbar.pen == NULL) return mFulErr;
	SetControlBalloonHelp(controls.toolbar.pen, 5);
	
	controls.toolbar.eyeDropper = GetNewControl(rEyeDropper, window);
	if (controls.toolbar.eyeDropper == NULL) return mFulErr;
	SetControlBalloonHelp(controls.toolbar.eyeDropper, 6);
	
	controls.toolbar.fill = GetNewControl(rFill, window);
	if (controls.toolbar.fill == NULL) return mFulErr;
	SetControlBalloonHelp(controls.toolbar.fill, 7);
	
	controls.toolbar.eraser = GetNewControl(rEraser, window);
	if (controls.toolbar.eraser == NULL) return mFulErr;
	SetControlBalloonHelp(controls.toolbar.eraser, 8);
	
	controls.toolbar.marquee = GetNewControl(rMarquee, window);
	if (controls.toolbar.marquee == NULL) return mFulErr;
	SetControlBalloonHelp(controls.toolbar.marquee, 1);
	
	controls.toolbar.move = GetNewControl(rMove, window);
	if (controls.toolbar.move == NULL) return mFulErr;
	SetControlBalloonHelp(controls.toolbar.move, 2);
	
	controls.toolbar.lasso = GetNewControl(rLasso, window);
	if (controls.toolbar.lasso == NULL) return mFulErr;
	SetControlBalloonHelp(controls.toolbar.lasso, 3);
	
	controls.toolbar.magicWand = GetNewControl(rMagicWand, window);
	if (controls.toolbar.magicWand == NULL) return mFulErr;
	SetControlBalloonHelp(controls.toolbar.magicWand, 4);
	
	controls.toolbar.line = GetNewControl(rLine, window);
	if (controls.toolbar.line == NULL) return mFulErr;
	SetControlBalloonHelp(controls.toolbar.line, 11);
	
	controls.toolbar.rectangle = GetNewControl(rRectangle, window);
	if (controls.toolbar.rectangle == NULL) return mFulErr;
	SetControlBalloonHelp(controls.toolbar.rectangle, 9);
	
	controls.toolbar.oval = GetNewControl(rOval, window);
	if (controls.toolbar.oval == NULL) return mFulErr;
	SetControlBalloonHelp(controls.toolbar.oval, 10);
	
	controls.toolbar.polygon = GetNewControl(rPolygon, window);
	if (controls.toolbar.polygon == NULL) return mFulErr;
	SetControlBalloonHelp(controls.toolbar.polygon, 12);
	
	controls.toolbar.gradient = GetNewControl(rGradient, window);
	if (controls.toolbar.gradient == NULL) return mFulErr;
	SetControlBalloonHelp(controls.toolbar.gradient, 13);
	
	controls.toolbar.text = GetNewControl(rText, window);
	if (controls.toolbar.text == NULL) return mFulErr;
	SetControlBalloonHelp(controls.toolbar.text, 14);
	
	// now we do the edit well (where the currently selected size/depth is displayed, and where
	// the actual editing takes place)
	controls.iconEditWell = GetNewControl(rIconEditWell, window);
	if (controls.iconEditWell == NULL) return mFulErr; // loading failed
	SetControlBalloonHelp(controls.iconEditWell, 15);
	// these are two handler functions which take care of the drawing and hit testing of the
	// control (since this is a custom control, and we must do these things ourselves)
	iconWellDrawUPP = NewControlUserPaneDrawProc(EditWellDraw); 
	iconWellHitTestUPP = NewControlUserPaneHitTestProc(EditWellHitTest);
	
	SetControlData(controls.iconEditWell, // we set the drawing function
				   kControlNoPart,
				   kControlUserPaneDrawProcTag,
				   sizeof(iconWellDrawUPP),
				   (Ptr) &iconWellDrawUPP);
				  
	SetControlData(controls.iconEditWell, // and hit test function
				   kControlNoPart,
				   kControlUserPaneHitTestProcTag, 
				   sizeof(iconWellHitTestUPP),
				   (Ptr) &iconWellHitTestUPP);
	
	// now we have the two displays at the bottom, one for the zoom level and the other for the
	// the info text (right now the ID, but more could be added in the future). we have both
	// the placard (which provides the background bevel for the text) and a text field for
	// each. we also set the text style for the text fields to what we want (geneva 9 centered)
	
	controls.zoomPlacard.control = GetNewControl(rZoomPlacard, window);
	if (controls.zoomPlacard.control == NULL) return mFulErr;
	SetControlBalloonHelp(controls.zoomPlacard.control, 16);
	
	// here too we must set the drawing and hit test handling functions.
	placardDrawUPP = NewControlUserPaneDrawProc(PlacardDraw);
	placardHitTestUPP = NewControlUserPaneHitTestProc(PlacardHitTest);
	placardTrackingUPP = NewControlUserPaneTrackingProc(PlacardTracking);
	SetControlData(controls.zoomPlacard.control,
				   kControlNoPart,
				   kControlUserPaneDrawProcTag, 
				   sizeof(placardDrawUPP),
				   (Ptr) &placardDrawUPP);
				   
	controls.infoPlacard.control = GetNewControl(rInfoPlacard, window);
	if (controls.infoPlacard.control == NULL) return mFulErr;
	SetControlBalloonHelp(controls.infoPlacard.control, 17);
	
	// here too we must set the drawing and hit test handling functions.
	SetControlData(controls.infoPlacard.control,
				   kControlNoPart,
				   kControlUserPaneDrawProcTag, 
				   sizeof(placardDrawUPP),
				   (Ptr) &placardDrawUPP);
	SetControlData(controls.infoPlacard.control,
				   kControlNoPart,
				   kControlUserPaneHitTestProcTag, 
				   sizeof(placardHitTestUPP),
				   (Ptr) &placardHitTestUPP);
	SetControlData(controls.infoPlacard.control,
				   kControlNoPart,
				   kControlUserPaneTrackingProcTag, 
				   sizeof(placardTrackingUPP),
				   (Ptr) &placardTrackingUPP);
	
	// another custom control, this is the swatch of the foreground and background colors
	// in adition to these two color samles it also contains two little widgets, one of the
	// swapping of the fore/back colors, and the other one to reset them to black and white
	// since these are rectangles within the control, we must make some regions for them too
	// (it'd be a waste to calculate them as needed, since the control does not move around)
	
	controls.colorSwatch.control = GetNewControl(rForeBackColors, window);
	if (controls.colorSwatch.control == NULL) return mFulErr;
	SetControlBalloonHelp(controls.colorSwatch.control, 18);
	
	// here too we must set the drawing and hit test handling functions.
	colorsDrawUPP = NewControlUserPaneDrawProc(ColorSwatchDraw);
	colorsHitTestUPP = NewControlUserPaneHitTestProc(ColorSwatchHitTest);
	SetControlData(controls.colorSwatch.control,
				   kControlNoPart,
				   kControlUserPaneDrawProcTag, 
				   sizeof(colorsDrawUPP),
				   (Ptr) &colorsDrawUPP);
	SetControlData(controls.colorSwatch.control,
				   kControlNoPart,
				   kControlUserPaneHitTestProcTag, 
				   sizeof(colorsHitTestUPP),
				   (Ptr) &colorsHitTestUPP);
	// here we create the rects that determine the subareas of the control
	MakeColorSwatchRects((**(controls.colorSwatch.control)).contrlRect,
						 &controls.colorSwatch.foreColorRect,
						 &controls.colorSwatch.backColorRect,
						 &controls.colorSwatch.swapColorsRect,
						 &controls.colorSwatch.resetColorsRect);							
	
	
	// the final set of controls is for the display on the right hand side. this display shows
	// combinations of sizes and depths. the user can choose among them by clicking on what
	// s/he wants, and/or by selecting a different depth from the popup menu. we simultaneously
	// display the currently selected icon depth and the currently selected mask depth, since
	// it makes sense for the user to want to edit them at the same time. Basically what we
	// need are two sets of image wells for the all the sizes, two pop-up menus for the depth
	// selection and two labels on the bottom to identify them to the user. In addition there
	// is also a preview area at the bottom which includes an image well where the combination
	// of the current icon and mask is displayed, and a label for it too
	controls.display.iconDisplay = GetNewControl(rIconDisplay, window);
	// this is the set of image wells for the three sizes for the icon
	if (controls.display.iconDisplay == NULL) return mFulErr;
	SetControlBalloonHelp(controls.display.iconDisplay, 19);
	
	MakeDisplayRects((**(controls.display.iconDisplay)).contrlRect, // these specify how the
					 &controls.display.iconHugeRect, // control is divided up among different
					 &controls.display.iconLargeRect, // sizes
					 &controls.display.iconSmallRect);
	
	// custom control, must specify the drawing and hit testing procedures
	displayDrawUPP = NewControlUserPaneDrawProc(DisplayDraw);
	displayHitTestUPP = NewControlUserPaneHitTestProc(DisplayHitTest);
	SetControlData(controls.display.iconDisplay, // the drawing procedure
				   kControlNoPart,
				   kControlUserPaneDrawProcTag, 
				   sizeof(displayDrawUPP),
				   (Ptr) &displayDrawUPP);
	SetControlData(controls.display.iconDisplay, // the hit test procedure
				   kControlNoPart,
				   kControlUserPaneHitTestProcTag, 
				   sizeof(displayHitTestUPP),
				   (Ptr) &displayHitTestUPP);
	
	// we also have the label, whose text is loaded from a string resource			   
	controls.display.iconLabel = GetNewControl(rIconLabel, window);
	if (controls.display.iconLabel == NULL) return mFulErr;
	GetIndString(iconLabel, rLabelStrings, sIconLabel); // loading the text
	SetControlText(controls.display.iconLabel, iconLabel);
	SetControlFontStyle(controls.display.iconLabel, &smallTextStyle); // set the style too
	
	// and the popup too
	controls.display.iconPopup = GetNewControl(rIconPopup, window);
	if (controls.display.iconPopup == NULL) return mFulErr;
	SetControlBalloonHelp(controls.display.iconPopup, 20);
	SetControlFontStyle(controls.display.iconPopup, &smallTextStyle);
	
	// same here, except we're dealing with the mask display							 
	controls.display.maskDisplay = GetNewControl(rMaskDisplay, window);
	if (controls.display.maskDisplay == NULL) return mFulErr;
	SetControlBalloonHelp(controls.display.maskDisplay, 21);
	
	MakeDisplayRects((**(controls.display.maskDisplay)).contrlRect,
					 &controls.display.maskHugeRect,
					 &controls.display.maskLargeRect,
					 &controls.display.maskSmallRect);
	
	// the function UPPs are already defined from above
	SetControlData(controls.display.maskDisplay,
				   kControlNoPart,
				   kControlUserPaneDrawProcTag, 
				   sizeof(displayDrawUPP),
				   (Ptr) &displayDrawUPP);
	SetControlData(controls.display.maskDisplay,
				   kControlNoPart,
				   kControlUserPaneHitTestProcTag, 
				   sizeof(displayHitTestUPP),
				   (Ptr) &displayHitTestUPP);

	
	// same as above
	controls.display.maskLabel = GetNewControl(rMaskLabel, window);
	if (controls.display.maskLabel == NULL) return mFulErr;
	GetIndString(maskLabel, rLabelStrings, sMaskLabel);
	SetControlText(controls.display.maskLabel, maskLabel);
	SetControlFontStyle(controls.display.maskLabel, &smallTextStyle);
	
	// ditto
	controls.display.maskPopup = GetNewControl(rMaskPopup, window);
	if (controls.display.maskPopup == NULL) return mFulErr;
	SetControlBalloonHelp(controls.display.maskPopup, 22);
	SetControlFontStyle(controls.display.maskPopup, &smallTextStyle);
	
	// and finally the preview, which is also a custom control
	controls.display.preview = GetNewControl(rPreview, window);
	if (controls.display.preview == NULL) return mFulErr;
	SetControlBalloonHelp(controls.display.preview, 23);
	previewDrawUPP = NewControlUserPaneDrawProc(PreviewDraw);
	previewHitTestUPP = NewControlUserPaneHitTestProc(PreviewHitTest);
	previewTrackingUPP = NewControlUserPaneTrackingProc(PreviewTracking);
	SetControlData(controls.display.preview, // display procedure
				   kControlNoPart,
				   kControlUserPaneDrawProcTag, 
				   sizeof(previewDrawUPP),
				   (Ptr) &previewDrawUPP);
	SetControlData(controls.display.preview, // hit test procedure
				   kControlNoPart,
				   kControlUserPaneHitTestProcTag, 
				   sizeof(previewHitTestUPP),
				   (Ptr) &previewHitTestUPP);
	SetControlData(controls.display.preview,
				   kControlNoPart,
				   kControlUserPaneTrackingProcTag, 
				   sizeof(previewTrackingUPP),
				   (Ptr) &previewTrackingUPP);
	
	// the preview has a label too
	controls.display.previewLabel = GetNewControl(rPreviewLabel, window);
	if (controls.display.previewLabel == NULL) return mFulErr;
	GetIndString(previewLabel, rLabelStrings, sPreviewLabel);
	SetControlText(controls.display.previewLabel, previewLabel);
	SetControlFontStyle(controls.display.previewLabel, &smallTextStyle);
	
		
	// the pattern swatch
	controls.patterns = GetNewControl(rPatterns, window);
	if (controls.patterns == NULL) return mFulErr;
	SetControlBalloonHelp(controls.patterns, 24);
	patternsDrawUPP = NewControlUserPaneDrawProc(PatternsDraw);
	patternsHitTestUPP = NewControlUserPaneHitTestProc(PatternsHitTest);
	SetControlData(controls.patterns,
				   kControlNoPart,
				   kControlUserPaneDrawProcTag, 
				   sizeof(patternsDrawUPP),
				   (Ptr) &patternsDrawUPP);
	SetControlData(controls.patterns,
				   kControlNoPart,
				   kControlUserPaneHitTestProcTag, 
				   sizeof(patternsHitTestUPP),
				   (Ptr) &patternsHitTestUPP);
				   
	// the background pane
	controls.backgroundPane = GetNewControl(rBackgroundPane, window);
	if (controls.backgroundPane == NULL) return mFulErr;
	backgroundPaneDrawUPP = NewControlUserPaneDrawProc(BackgroundPaneDraw);
	backgroundPaneHitTestUPP = NewControlUserPaneHitTestProc(BackgroundPaneHitTest);
	SetControlData(controls.backgroundPane,
				   kControlNoPart,
				   kControlUserPaneDrawProcTag, 
				   sizeof(backgroundPaneDrawUPP),
				   (Ptr) &backgroundPaneDrawUPP);
	SetControlData(controls.backgroundPane,
				   kControlNoPart,
				   kControlUserPaneHitTestProcTag, 
				   sizeof(backgroundPaneHitTestUPP),
				   (Ptr) &backgroundPaneHitTestUPP);
	
	return err;
}

// __________________________________________________________________________________________
// Name			: icnsEditorClass::InstallDraggingHandlers
// Input		: None
// Output		: None
// Description	: this function install certain functions which will handle dragging (they
//				  are called automatically when a drag enters the window)

void icnsEditorClass::InstallDraggingHandlers()
{
	DragReceiveHandlerUPP	dragReceiveHandlerUPP; // universal procudure pointers for the two
	DragTrackingHandlerUPP	dragTrackingHandlerUPP; // handler functions
	
	// we set these to what we need
	dragTrackingHandlerUPP = NewDragTrackingHandlerProc (DragTrackingHandler);
	dragReceiveHandlerUPP = NewDragReceiveHandlerProc (DragReceiveHandler);
	
	// and then install them
	InstallTrackingHandler(dragTrackingHandlerUPP,window,NULL);
	InstallReceiveHandler(dragReceiveHandlerUPP,window,NULL);
}

void icnsEditorClass::Show(void)
{
	ShowWindow(window);
	Refresh();
}

void icnsEditorClass::Hide(void)
{
	HideWindow(window);
}

// __________________________________________________________________________________________
// Name			: icnsEditorClass::~icnsEditorClass
// Input		: None
// Output		: None
// Description	: this is the destructor for the editor class. It maintains the linked list,
//				  disposes of the state linked linked list for this editor, as well as of any
//				  allocated data (note that the constructor for the icnsClass is also closed)

icnsEditorClass::~icnsEditorClass(void)
{
	DisposeStates(); // we must get rid of all the stored states
	delete currentState; // as well as of the current one
	
	// we also have to keep the linked list linked
	if (previousEditor != NULL)
		previousEditor->nextEditor = nextEditor;
	if (nextEditor != NULL)
		nextEditor->previousEditor = previousEditor;
	
	DisposeWindow(window); // get rid of the window
	
	statics.ChangeCursor(rArrow); // reset the cursor
	
	// and also dispose of the various regions, gworld and pixmaps that we used
	if (selectionRgn != NULL) DisposeRgn(selectionRgn);
	if (selectionMagnifiedRgn != NULL) DisposeRgn(selectionMagnifiedRgn);
	if (selectionPix != NULL) UnlockPixels(selectionPix);
	if (selectionGW != NULL) DisposeGWorld(selectionGW);
}

// __________________________________________________________________________________________
// Name			: icnsEditorClass::DoIdle
// Input		: None
// Output		: None
// Description	: This function is called from the event loop when there aren't any other
//				  events that need to be handled. It keeps track of the cursor, and keeps
//				  the status variable (with which the class interfaces with the rest of the
//				  program) up do date.

void icnsEditorClass::DoIdle(void)
{
	Point	theMouse; // the current mouse coordinates
	SAVEGWORLD; // we must save the gworld...
	SetPort(window); // since we set the current port to the editor's window...
			
	GetMouse(&theMouse); // because we want the mouse coordinates in terms of the window
	
	// if the user holds down option and the cursor is in the drawing area, we set the tool
	// to the eyedropper while option is down
	if (currentTool != marquee 		&& currentTool != move 			&&
		currentTool != magicWand	&& currentTool != lasso)
	{
		// and the tools must be drawing ones (not selection ones)
		if (ISOPTIONDOWN && currentTool != eyeDropper)
		// if option is down and we're not already using the eye dropper tool
		{
			oldTool = currentTool; // we remember the old tool
			currentTool = eyeDropper; // and set the current one to the eye dropper
		}
		else if (oldTool != noTool && !ISOPTIONDOWN)
		// if there was a tool memorized, and the option key is not down (so basically
		// the user had pressed option to change the tool to the eye dropper, and now has
		// let go)
		{
			currentTool = oldTool; // we restore the old tool
			oldTool = noTool; // and reset the saved one
		}
	}
	
	if (currentTool == lasso &&
		ISOPTIONDOWN &&
		controls.toolbar.lassoMode != polygonal &&
		controls.toolbar.oldLassoMode == noTool &&
		!(status & hasSelection))
	{
		controls.toolbar.lassoMode = polygonal;
		controls.toolbar.oldLassoMode = freehand;
	}
	else if ((currentTool == lasso && 
			 !ISOPTIONDOWN &&
			 controls.toolbar.oldLassoMode != noTool) ||
			 (ISOPTIONDOWN && (status & hasSelection) && controls.toolbar.oldLassoMode != noTool))
	{
		controls.toolbar.lassoMode = freehand;
		controls.toolbar.oldLassoMode = noTool;
	}
	
	if (!EmptyRgn(selectionRgn) && !(oldTool != noTool && currentTool == eyeDropper))
	{
		if (ISCOMMANDDOWN && currentTool != move)
		{
			oldTool = currentTool;
			currentTool = move;
		}
		else if(oldTool != noTool && !ISCOMMANDDOWN)
		{
			currentTool = oldTool;
			oldTool = noTool;
		}
	}
	
	if (EmptyRgn(selectionRgn) && oldTool != noTool && currentTool == move && !ISCOMMANDDOWN)
	{
		currentTool = oldTool;
		oldTool = noTool;
	}
	
	if (IsFrontProcess()) // if we're the main app now...
	{	
		if (HMGetBalloons())
		{
			ControlHandle theControl;
			
			FindControl(theMouse, window, &theControl);
			
			if (theControl != NULL)
			{
				HMMessageRecord standardMessage;
				OSErr err;
				
				if ((GetControlBalloonHelp(theControl) != statics.currentBalloon) || !HMIsBalloon())
				{
					BalloonVariant variant;
					Rect	balloonRect, portRect;
					
					standardMessage.hmmHelpType = khmmStringRes;
					standardMessage.u.hmmStringRes.hmmResID = rEditorBalloonHelp; 
					standardMessage.u.hmmStringRes.hmmIndex = GetControlBalloonHelp(theControl);
					
					balloonRect = (**theControl).contrlRect;
					
					theMouse.h = balloonRect.right - 10;
					theMouse.v = balloonRect.bottom - 12;
					
					LocalToGlobal(&theMouse);
					
					
					portRect = oldPort->portRect;
					
					//OffsetRect(&balloonRect, window->portRect.right, window->portRect.top);
					
					HMBalloonRect(&standardMessage, &balloonRect);
					if ((balloonRect.right > portRect.right - theMouse.h))
						if ((balloonRect.bottom > portRect.bottom - theMouse.v))
							variant = kBottomRightTipPointsDownVariant;
						else
							variant = kTopRightTipPointsRightVariant;
					else
						if ((balloonRect.bottom > portRect.bottom - theMouse.v))
							variant = kBottomLeftTipPointsDownVariant;
						else
							variant = kTopLeftTipPointsLeftVariant;
					
					err = HMShowBalloon(&standardMessage,
								  theMouse,
								  NULL,
								  NULL,
								  kBalloonWDEFID,
								  variant,
								  kHMRegularWindow);
					
					statics.currentBalloon = GetControlBalloonHelp(theControl);
				}
			}
			else if (statics.currentBalloon != 0)
			{
				HMRemoveBalloon();
				statics.currentBalloon = 0;
			}
			//else HMRemoveBalloon();
		}
		
		UpdateCursor(theMouse);
	}
	
	
	if (!EmptyRgn(selectionRgn) || (status & needsUpdate))
	// if there is a selection (selections need constant updating since the appearance of
	// marching ants must be given) or if an update is neede, then we must draw all the areas
	// in which the icons are shown
	{
		Display((**controls.iconEditWell).contrlRect, current);
		// we don't need to draw the displays if we're just here for the marching ants
		if (status & needsUpdate)
		{
			Draw1Control(controls.display.iconDisplay);
			Draw1Control(controls.display.maskDisplay);
			Draw1Control(controls.display.preview);
			status &= ~needsUpdate;
			
		}
	}

	if (currentState->previousState != NULL) // if there is a previous state, then we go back
		status |= canUndo;
	else
		status &= ~canUndo;
		
	if (currentState->nextState != NULL) // similarly for the next state
		status |= canRedo;
	else
		status &= ~canRedo;
		
	if (status & resized) // if the window has been resized, we need to refresh it
		Refresh();
		
	RESTOREGWORLD; // we can now restore the gworld
}

void icnsEditorClass::UpdateCursor(Point theMouse)
{
	if (PtInRect(theMouse, &(**controls.iconEditWell).contrlRect))
	// and the cursor is in the editing area
	{
		int x, y;
		Point drawingMouse;
		
		GetDrawingMousePosition(&x, &y, 0);
		drawingMouse.h = x;
		drawingMouse.v = y;
		
		if (PtInRgn(drawingMouse, selectionRgn) &&
			(currentTool == move || currentTool == lasso ||
			currentTool == marquee || currentTool == magicWand) &&
			!ISOPTIONDOWN && !ISSHIFTDOWN)
		{
			if (status & selectionFloated)
			{
				statics.ChangeCursor(rMoveSelectionContents);
			}
			else
			{
				if (currentTool == move)
					statics.ChangeCursor(rMoveFloatSelection);
				else
					statics.ChangeCursor(rMoveSelectionOutline);
			}
		}
		else switch (currentTool) // we can change the cursor depending on the current tool
		{
			case pen: statics.ChangeCursor(rPen); break;
			case eyeDropper: statics.ChangeCursor(rEyeDropper); break;
			case fill: statics.ChangeCursor(rFill); break;
			case eraser: statics.ChangeCursor(rEraser); break;
			case marquee:
				if (ISSHIFTDOWN && (status & hasSelection)) // different modifiers peform different operations, to
								 // inform the user we change the cursor
					statics.ChangeCursor(rMarqueeAdditive);
				else if (ISOPTIONDOWN  && (status & hasSelection))
					statics.ChangeCursor(rMarqueeSubtractive);
				else
					statics.ChangeCursor(rMarquee);
				break;
			case move: statics.ChangeCursor(rMove); break;
			case lasso:
				if (controls.toolbar.lassoMode == freehand)
					if (ISSHIFTDOWN && (status & hasSelection)) // same here
						statics.ChangeCursor(rLassoAdditive);
					else if (ISOPTIONDOWN && (status & hasSelection))
						statics.ChangeCursor(rLassoSubtractive);
					else
						statics.ChangeCursor(rLasso);
				else
					if (ISSHIFTDOWN && (status & hasSelection)) // same here
						statics.ChangeCursor(rLassoPolygonalAdditive);
					else if (ISOPTIONDOWN && (status & hasSelection))
						statics.ChangeCursor(rLassoPolygonalSubtractive);
					else
						statics.ChangeCursor(rLassoPolygonal);
				break;
			case magicWand:
				if (ISSHIFTDOWN && (status & hasSelection)) // and here
					statics.ChangeCursor(rMagicWandAdditive);
				else if (ISOPTIONDOWN && (status & hasSelection))
					statics.ChangeCursor(rMagicWandSubtractive);
				else
					statics.ChangeCursor(rMagicWand);
				break;
			case line: statics.ChangeCursor(rMarquee); break;
			case rectangle: statics.ChangeCursor(rMarquee); break;
			case oval: statics.ChangeCursor(rMarquee); break;
			case polygon: statics.ChangeCursor(rMarquee); break;
			case gradient: statics.ChangeCursor(rMarquee); break;
			case text: statics.ChangeCursor(rIBeam); break;
		}
	}
	else
	{
		if (currentTool == eyeDropper)
		{
			icnsEditorPtr currentEditor;
			Point currentMouse;
			bool cursorChanged = false;
			
			LocalToGlobal(&theMouse);
			
			
			
			for (currentEditor = this; currentEditor->previousEditor != NULL; currentEditor = currentEditor->previousEditor) {;}
			
			for (;currentEditor != NULL; currentEditor = currentEditor->nextEditor)
			{
				currentMouse = theMouse;
				SetPort(currentEditor->window);
				GlobalToLocal(&currentMouse);
				if (PtInRect(currentMouse, &(**currentEditor->controls.iconEditWell).contrlRect))
				{
					cursorChanged = true;
					statics.ChangeCursor(rEyeDropper);
				}
				SetPort(window);
				
			}
			
			if (!cursorChanged)
				statics.ChangeCursor(rArrow); 
		}
		else
			statics.ChangeCursor(rArrow); // if the cursor is outside the drawing area we change it
							  // to the arrow (default) one
	}
}

bool icnsEditorClass::CurrentDepthSupportsColors(void)
{
	switch ((**currentPix).pixelSize)
	{
		case 32:
		case 8:
		case 1:
			return false;
			break;
		case 4:
			return true;
			break;
	}
	
	return false;
}

void icnsEditorClass::ChangeColors(int newColors)
{
	if (newColors == colors) return;
	
	colors = newColors;
	
	GWorldPtr		tempGW;
	PixMapHandle	tempPix;
	CTabHandle		colorTable;
	int				copyMode;
	
	switch (colors)
	{
		case macOSColors: colorTable = NULL; break;
		case winColors: colorTable = GetCTable(r4BitWinPicker); break;
	}
	
	NewIconSet(&tempGW, &tempPix, (**currentPix).bounds, (**currentPix).pixelSize, colorTable);
	
	SAVECOLORS;
	
	if ((**statics.preferences.data).flags & prefsDither)
		copyMode = srcCopy + ditherCopy;
	else
		copyMode = srcCopy;
		
	CopyPixMap(currentPix, tempPix, &(**currentPix).bounds, &(**currentPix).bounds, copyMode, NULL);
	
	RESTORECOLORS;
	
	UnlockPixels(currentPix);
	DisposeGWorld(currentGW);
	
	currentPix = tempPix;
	currentGW = tempGW;
	
	switch (currentPixName)
	{
		case ich4: ich4Pix = tempPix; ich4GW = tempGW; break;
		case icl4: icl4Pix = tempPix; icl4GW = tempGW; break;
		case ics4: ics4Pix = tempPix; ics4GW = tempGW; break;
	}
	
	switch (colors)
	{
		case macOSColors:  break;
		case winColors: DisposeCTable(colorTable); break;
	}
	
	status |= needsUpdate;
	status |= needToSave;
}

// __________________________________________________________________________________________
// Name			: icnsEditorClass::DisposeStates
// Input		: None
// Output		: None
// Description	: This function clears all the stored states. Most likely use is after a file
//				  has been saved, so there is point in undoing (since we assume the user likes
//				  what s/he has so far). Can also be called in low memory conditions.
// Note			: This function leaves the current state there, if all the states need to be
//				  disposed of then the current state must be disposed of by hand.

void icnsEditorClass::DisposeStates(void)
{
	drawingStatePtr	tempState; // the state used to go through the linked list
	
	tempState = firstState; // we start with the first state
	
	while (tempState != currentState) // go until we reach the current one
	{
		tempState = tempState->nextState; // we move to the next one
		delete tempState->previousState; // and from there delete the previous one
	}
	currentState->previousState = NULL; // there aren't any previous states
	currentState->nextState = NULL; // or next states
	
	firstState = currentState; // and the head is the tail
}

// __________________________________________________________________________________________
// Name			: icnsEditorClass::Refresh
// Input		: None
// Output		: None
// Description	: Redraws the whole editor window, called when updates are needed. The drawing
//				  is clippied to the update region.

void icnsEditorClass::Refresh(void)
{
	Str255		magnificationText;
	Str255		IDAsString, infoText = "\p";
	
	SAVEGWORLD; // saving the current gworld for restoring later
	
	
	if ((FrontWindow() == window) &&				// if we're the front window
		IsFrontProcess() &&							// and we're in the foreground
		!IsControlActive(controls.rootControl))		// and we're deactivated
		Activate(); // we must activate
	else if ((FrontWindow() != window ||			// if we're not the front window
		!IsFrontProcess()) &&						// or we're not the foreground app
		IsControlActive(controls.rootControl))		// and we're activated
		Deactivate(); // we must deactivate
	
	BeginUpdate(window); // BeginUpdate means that the drawing is clipped to the regions which
						 // has been marked as needed updates (by InvalRect, etc.)
	
	SetPort(window); // we're drawing in the window
	
	if (status & resized) // if we were resized
	{
		if (((**currentPix).bounds.right == 32) || ((**currentPix).bounds.right == 32))
		{
			if ((window->portRect.right - window->portRect.left) != ((magnification - 7) * 32 +  kDefaultSizeRect.right))
				ResizeWindow();
		}
		else
		{
			if ((window->portRect.right - window->portRect.left) != ((magnification - 5) * 48 +  kDefaultSizeRect.right))
				ResizeWindow();
		}
		if (status & hasSelection) // and we had a selection
			MagnifySelectionRgn(); // we must redo the magnified selection region
		RepositionControls(); // we also need to reposition the controls
		
		// we must also update the zoom display text
		NumToString(magnification * 100, magnificationText);
		AppendString(magnificationText, "\p%");
		CopyString(controls.zoomPlacard.text, magnificationText);
		
		status &= ~resized; // and we're done with the resizing
	}
	
	
	
	// setting the text for the info display field (currently just the icon ID)
	NumToString(ID, IDAsString);
	if (name[0] != 0)
	{
		AppendString(infoText, "\pName: \"");
		AppendString(infoText, name);
		AppendString(infoText, "\p\" ");
	}
	AppendString(infoText, "\pID: ");
	AppendString(infoText, IDAsString);
	CopyString(controls.infoPlacard.text, infoText);
	
	UpdateControls(window, window->visRgn); // we're also refreshing the controls
	
	EndUpdate(window); // and we're done with the updating
	
	RESTOREGWORLD; // we can restore the saved gworld now
	
}

// __________________________________________________________________________________________
// Name			: icnsEditorClass::Close
// Input		: None
// Output		: None
// Description	: Right now just calls the destructor for the editor, but in the future we
//				  might want to do more things

void icnsEditorClass::Close()
{	
	delete this;
}

// __________________________________________________________________________________________
// Name			: icnsEditorClass::HandleContentClick
// Input		: eventPtr: pointer to the event record which describes the action which
//				  prompted this function to occur
// Output		: None
// Description	: based on the click location, different actions are called
//				  

void icnsEditorClass::HandleContentClick(EventRecord *eventPtr)
{
	ControlHandle	clickedControl;
	int				controlPart, oldDepth = -1;
	OSStatus		err = noErr;
	Point			where;
	
	SAVEGWORLD;
	SAVECOLORS;
	
	where = eventPtr->where;
	
	if (FrontWindow() != window) // if this window wasn't in the front, and we clicked on it
	{
		icnsEditorPtr frontEditor;
		frontEditor = GetFrontEditor();
		
		if (frontEditor != NULL)
		{
			if (frontEditor->currentTool == eyeDropper)
			{
				int x, y;
				GetDrawingMousePosition(&x, &y, noLimit);
				if (x >= 0 && y >= 0 && x < (**currentPix).bounds.right && y < (**currentPix).bounds.bottom)
				{
					Point clickLocation;
					clickLocation.h = x;
					clickLocation.v = y;
					
					if ((status & selectionFloated) && (PtInRgn(clickLocation, selectionRgn)))
						SetGWorld(selectionGW, NULL);
					else
						SetGWorld(currentGW, NULL); // go into the gworld
					
					if (ISOPTIONDOWN && frontEditor->oldTool == noTool) // if option is down and we're not in toggle mode
						GetCPixel(x, y, &frontEditor->backColor); // we pit the color we pick up into the background color
					else
						GetCPixel(x, y, &frontEditor->foreColor); // otherwise it goes into the foreground color
					RESTOREGWORLD;
					RESTORECOLORS;
					Draw1Control(frontEditor->controls.colorSwatch.control);
				}
				else
					SelectWindow(window); // bring it to the front
			}
			else 
				SelectWindow(window); // bring it to the front
		}
		else
			SelectWindow(window); // bring it to the front
	}	
		
	else
	{
		SetPort(window); 
		GlobalToLocal(&where); // we must convert the coordinates to local ones in term of
							   // the window
		controlPart = FindControl(where, window, &clickedControl);
		// we find where and in which control did the user click
		
		if (controlPart != kControlNoPart) // if the user clicked somewhere...
		{
			if (clickedControl == controls.iconEditWell) // if it as in the editing well
				HandleDrawing(); // the user wants to draw, and we must handle that
			else if (clickedControl == controls.display.iconDisplay ||// if it was in the display
					 clickedControl == controls.display.maskDisplay)
			{
				// we must handle that too
				RESTOREGWORLD; 
				RESTORECOLORS;
				HandleDisplayClick(eventPtr);
			}
			else // otherwise it's a bunch of other controls
			{
				// if the user clicked in the depth popup with the intention of copying the current
				// depth to another (holding down option) then we must remember the current depth
				if (clickedControl == controls.display.iconPopup && ISOPTIONDOWN)
				{
					oldDepth = GetControlValue(controls.display.iconPopup);
					statics.ChangeCursor(rCopyCursor);
				}
				else if (clickedControl == controls.display.maskPopup && ISOPTIONDOWN)
				{
					oldDepth = GetControlValue(controls.display.maskPopup);
					statics.ChangeCursor(rCopyCursor);
				}
				else if (clickedControl == controls.colorSwatch.control)
					// if it was the color swatch
					HandleSwatchClick(controlPart, where);
				else if (clickedControl == controls.patterns)
					HandlePatternsClick(where);
				
				if (TrackControl(clickedControl, where, NULL))
				// TrackControl sees if when the user actually lets go of the button and the
				// cursor is still over the control
				{
					if (HandleToolClick(clickedControl)) // if the user let go over the toolbar
						UpdateToolbar(); // then we must update it
					else if (clickedControl == controls.display.iconPopup)
					{
						// if the click was in the popup
						if (oldDepth != -1) // and the user had wanted to copy the depth
							// then we copy
							CopyDepth(oldDepth,
								      GetControlValue(controls.display.iconPopup),
								      icon);
						// in either case we need to update since the display has changed
						status |= needsUpdate;
					}
					else if (clickedControl == controls.display.maskPopup)
					{
						// same as above except it's fore the mask display
						if (oldDepth != -1)
							CopyDepth(oldDepth,
								      GetControlValue(controls.display.maskPopup),
								      mask);
						status |= needsUpdate;
					}
					else if (clickedControl == controls.infoPlacard.control)
						EditIconInfo();
					else if (clickedControl == controls.display.preview)
					{
						if (controls.display.previewMode == previewNormal)
							controls.display.previewMode = previewSelected;
						else
							controls.display.previewMode = previewNormal;
						
						Draw1Control(controls.display.preview);
					}
				} // if the user let go of the mouse over the control
			} // if the user didn't click in the edit well or in the display
		} // if the user clicked somewhere
	} // if window was in foreground
	
	RESTOREGWORLD;
	RESTORECOLORS;
}

// __________________________________________________________________________________________
// Name			: icnsEditorClas::HandleToolClick
// Input		: clickedControl: handle to the control that was clicked
// Output		: bool: returns true if the control that was clicked was a tool
// Description	: checks to see if the clicked control was a tool, and if it was it handles
//				  the action (by changing the current tool) and returns true

bool icnsEditorClass::HandleToolClick(ControlHandle clickedControl)
{ 
	bool clickHandled = true; // by default we handled the click
	long clickTicks;
	
	clickTicks = LMGetTicks();
	
	// here we go through all of the toolbar controls and compare them with the control
	// that was clicked, to determine which (if any) was hit
	
	if (clickedControl == controls.toolbar.pen)
		currentTool = pen;
	else if (clickedControl == controls.toolbar.eyeDropper)
		currentTool = eyeDropper;
	else if (clickedControl == controls.toolbar.fill)
		currentTool = fill;
	else if (clickedControl == controls.toolbar.eraser)
		currentTool = eraser;
	else if (clickedControl == controls.toolbar.marquee)
		currentTool = marquee;
	else if (clickedControl == controls.toolbar.move)
		currentTool = move;
	else if (clickedControl == controls.toolbar.lasso)
		currentTool = lasso;
	else if (clickedControl == controls.toolbar.magicWand)
		currentTool = magicWand;
	else if (clickedControl == controls.toolbar.line)
		currentTool = line;
	else if (clickedControl == controls.toolbar.rectangle)
		currentTool = rectangle;
	else if (clickedControl == controls.toolbar.oval)
		currentTool = oval;
	else if (clickedControl == controls.toolbar.polygon)
		currentTool = polygon;
	else if (clickedControl == controls.toolbar.gradient)
		currentTool = gradient;
	else if (clickedControl == controls.toolbar.text)
		currentTool = text;
	else clickHandled = false;
	
	if (clickHandled)
	{
		if ((currentTool == controls.toolbar.lastTool) &&
			(clickTicks - controls.toolbar.lastToolClickTicks <= LMGetDoubleTime()))
		{
			HandleToolDoubleClick(currentTool);
			controls.toolbar.lastToolClickTicks = 0;
		}
		else
			controls.toolbar.lastToolClickTicks = clickTicks;
			
		controls.toolbar.lastTool = currentTool;
	}
	
	return clickHandled;
}

void icnsEditorClass::HandleToolDoubleClick(long tool)
{
	switch (tool)
	{
		case eraser:
			SAVEGWORLD;
			SAVECOLORS;
			if (status & hasSelection)
				if (status & selectionFloated)
				{
					status &= ~selectionFloated;
					status &= ~hasSelection;
					SetEmptyRgn(selectionRgn);
				}
				else
				{
					SetGWorld(currentGW, NULL);
					RGBBackColor(&backColor);
					EraseRgn(selectionRgn);
				}
			else
			{
				SetGWorld(currentGW, NULL);
				RGBBackColor(&backColor);
				EraseRect(&(**currentPix).bounds);
			}
			RESTOREGWORLD;
			RESTORECOLORS;
			break;
		case marquee:
			if (status & selectionFloated)
				DefloatSelection();
			RectRgn(selectionRgn, &(**currentPix).bounds);
			MagnifySelectionRgn();
			status |= hasSelection;
			break;
		/*case lasso:
			RgnHandle tempRgn, temp2Rgn;
			if (status & selectionFloated)
				DefloatSelection();
			tempRgn = NewRgn();
			RectRgn(tempRgn, &(**currentPix).bounds);
			temp2Rgn = TightenLasso(tempRgn);
			CopyRgn(temp2Rgn, selectionRgn);
			if (!EmptyRgn(selectionRgn))
			{
				MagnifySelectionRgn();
				status |= hasSelection;
			}	
			DisposeRgn(tempRgn);
			DisposeRgn(temp2Rgn);
			break;*/
		case rectangle:
		case oval:
		case polygon:
			if (controls.toolbar.toolMode == frame)
			{
				controls.toolbar.toolMode = filled;
				SetBevelButtonIcon(controls.toolbar.rectangle, rRectangleFilled);
				SetBevelButtonIcon(controls.toolbar.oval, rOvalFilled);
				SetBevelButtonIcon(controls.toolbar.polygon, rPolygonFilled);
			}
			else
			{
				controls.toolbar.toolMode = frame;
				SetBevelButtonIcon(controls.toolbar.rectangle, rRectangle);
				SetBevelButtonIcon(controls.toolbar.oval, rOval);
				SetBevelButtonIcon(controls.toolbar.polygon, rPolygon);
			}
			Draw1Control(controls.toolbar.rectangle);
			Draw1Control(controls.toolbar.oval);
			Draw1Control(controls.toolbar.polygon);
			break;
		case gradient:
			if (controls.toolbar.gradientMode == linear)
			{
				controls.toolbar.gradientMode = radial;
				SetBevelButtonIcon(controls.toolbar.gradient, rGradientRadial);
			}
			else
			{
				controls.toolbar.gradientMode = linear;
				SetBevelButtonIcon(controls.toolbar.gradient, rGradient);
			}
			Draw1Control(controls.toolbar.gradient);
			break;
		case lasso:
			if (controls.toolbar.lassoMode == freehand)
			{
				controls.toolbar.lassoMode = polygonal;
				SetBevelButtonIcon(controls.toolbar.lasso, rLassoPolygonal);
			}
			else
			{
				controls.toolbar.lassoMode = freehand;
				SetBevelButtonIcon(controls.toolbar.lasso, rLasso);
			}
			break;
	}
	
	currentState = new drawingStateClass(currentState, this);
	
	status |= needsUpdate;
}

// __________________________________________________________________________________________
// Name			: icnsEditorClass::HandleDisplayClick
// Input		: eventPtr: pointer to the record describing the event that just occured
// Output		: None
// Description	: Handles a click in the display area. The click can either turn into a drag
//				  (if the user moves the mouse while the button is down) or it can be a simple
//				  click and then we just change the size/depth that we are currently editing

void icnsEditorClass::HandleDisplayClick(EventRecord* eventPtr)
{
	GWorldPtr		dragGW, // the GWorld in which we will store the image that is to be dragged 
					srcGW;  // used for storing the source image, not necessarely the same as
							// the dragGW if there is a floated selection (which must be merged) 
	PixMapHandle	dragPix, // the PixMaps for the pixel data of the above GWorlds
					srcPix;
	long			dragType, // the "names" corresponding to the above PixMaps
					srcPixName;
	bool			needToDispose; // true if we allocated a gworld (if we needed to merge)
	OSErr			err; // used for checking for errors
	
	SAVEGWORLD;
	
	
	SetPort(window); // we set the port to the window
	SAVECOLORS;
	
	if (WaitMouseMoved(eventPtr->where)) // if the user moved the mouse while it as down,
										 // we're dragging
	{
		GetDisplayPix(eventPtr->where, &srcGW, &srcPix, &srcPixName, &dragSrcRect);
		// we must know which gworld/pixmap we are dragging
		if (!(status & selectionFloated) || srcPixName != currentPixName)
		// if there isn't a selection then we don't need to merge, the drag pixmap is simply
		// the source pixmap
		{
			dragGW = srcGW;
			dragPix = srcPix;
			dragType = srcPixName;
			needToDispose = false;
			// we don't need to dispose the dragGW since it wasn't allocated
		}
		else
		{
			needToDispose = true; // now we're allocating it
			err = NewGWorld(&dragGW, // same dimensions/depth as the source GWorld
							(**srcPix).pixelSize,
							&(**srcPix).bounds,
							(**srcPix).pmTable,
							NULL,
							0);
			if (err != noErr) // if there was a problem...
			{
				status |= outOfMemory;
				return;
			}
			dragPix = GetGWorldPixMap(dragGW);
			LockPixels(dragPix);
			
			// now we can merge the drawing and the floating selection
			CopyPixMap(srcPix, // first we copy the drawing
					   dragPix,
					   &(**srcPix).bounds,
					   &(**dragPix).bounds,
					   srcCopy,
					   NULL);
			CopyPixMap(selectionPix, // and then the selection
					   dragPix,
					   &(**srcPix).bounds,
					   &(**dragPix).bounds,
					   srcCopy,
					   selectionRgn); // clipped to the selectionRgn
					 
			dragType = srcPixName;
		}
		
		DragPixMap(eventPtr, dragPix, NULL, dragPix, NULL, dragType); // the actual dragging
		if (needToDispose) // if we need to dipose...
		{
			UnlockPixels(dragPix);
			DisposeGWorld(dragGW); // then we do
		}
		RESTOREGWORLD; // we must restore the port
		RESTORECOLORS; // and the colors so that we can drag
	}
	else // just a normal click, we just set the currentPix/GW/Name to whatever the user
		 // clicked on
	{
		GetDisplayPix(eventPtr->where, &srcGW, &srcPix, &srcPixName, NULL);
		// we see where the user clicked
		
		if (srcPixName != currentPixName)
		// if it's a different size/depth than the current one
		{
			if (!EmptyRgn(selectionRgn)) // if there was a selection
			{
				if (status & selectionFloated) // we must defloat it
					DefloatSelection();
				SetEmptyRgn(selectionRgn); // and deselect it
				status &= ~hasSelection; // and now we don't have a selection anymore
			}
			
			if ((**currentPix).bounds.right != (**srcPix).bounds.right)
			// if we're moving to a different size
				status |= resized;
				// "resized" because the icon edit well needs to be a different size
				
			status |= skipState; // when restoring, we must not restore to this state, rather
								 // we must move on to the next one immediately
			// this is because we are saving the state with the old size/depth, and then with
			// the new one and we don't want the user to have to undo twice to go back
			currentState = new drawingStateClass(currentState, this);
			
			status &= ~skipState; // now we don't need to skip this state anymore
			
			InvalidateDrawingArea(); // the drawing area needs to be redrawn
			
			
			// and finally we can set the new size/depth as the current one	
			currentGW = srcGW;
			currentPix = srcPix;
			currentPixName = srcPixName;
			
			currentState = new drawingStateClass(currentState, this);
			// and save the state
			
			RefreshWindowTitle();
			Refresh(); // we can now redraw so that the user can see
			
			Draw1Control(controls.patterns);
			Draw1Control(controls.colorSwatch.control);
			Draw1Control(controls.display.iconDisplay);
			Draw1Control(controls.display.maskDisplay);
			Draw1Control(controls.display.preview);
		}
	}
	
	RESTOREGWORLD;
	RESTORECOLORS;
}

// __________________________________________________________________________________________
// Name			: icnsEditorClass::InvalidateDrawingArea
// Input		: None
// Output		: None
// Description	: adds the region where the drawing area is (it is contained by the toolbar on 
//				  the left, the display on the right, the border of the window on the top and
//				  the zoom display on the bottom) to the regions that need updating.

void icnsEditorClass::InvalidateDrawingArea(void)
{
	Rect rectToInvalidate; // the rect which will be invalidated
	SAVEGWORLD; // we must save the current gworld, since the rect is in the local coordinates
				// of the window
		
	SetPort(window);
	
	// we set the boundaries
	rectToInvalidate.left = (**(controls.toolbar.eyeDropper)).contrlRect.right;
	rectToInvalidate.right = (**(controls.display.iconPopup)).contrlRect.left;
	rectToInvalidate.top = 0;
	rectToInvalidate.bottom = (**(controls.zoomPlacard.control)).contrlRect.top;
	
	// and then invalidate it
	InvalRect(&rectToInvalidate);
	
	RESTOREGWORLD;
}

// __________________________________________________________________________________________
// Name			: icnsEditorClass::GetDisplayPix
// Input		: theMouse: global coordinates where the mouse click was
// Output		: clickedGW, clickedPix, clickedName, clickedRect: attributes describing the
//				  size/depth where the mouse clicked (so in the case of a click on the huge
//				  32 bit icon, it would return the il32Pix, il32GW, il32 and the iconHugeRect)
// Description	: as mentioned above, it determines where the click occured, so that the
//				  currentGW, currentPix variables can be changed later on.

void icnsEditorClass::GetDisplayPix(Point theMouse,
									GWorldPtr *clickedGW,
									PixMapHandle *clickedPix,
									long *clickedName,
									Rect *clickedRect)
{
	int currentIconDepth, // the currently selected icon depth
		currentMaskDepth; // the currently selected mask depth
	
	// we obtain the values by looking at the popup menu
	currentIconDepth = GetControlValue(controls.display.iconPopup);
	currentMaskDepth = GetControlValue(controls.display.maskPopup);
	
	// we convert the coordinates so that they are relative to the current port (the window)
	GlobalToLocal(&theMouse);
	
	
	// all we're doing here is going through all the display rects, and checking if the
	// the click was there. if it was then based on the current depth we can determine the
	// size/depth combination that the user clicked on, so we set all the variables	
	if (PtInRect(theMouse, &controls.display.iconHugeRect))
	{
		if (clickedRect != NULL) *clickedRect = controls.display.iconHugeRect;
		switch (currentIconDepth)
		{
			case k32BitIcon:
				*clickedGW = ih32GW; *clickedPix = ih32Pix; *clickedName = ih32; break;
			case k8BitIcon:
				*clickedGW = ich8GW; *clickedPix = ich8Pix; *clickedName = ich8; break;
			case k4BitIcon:
				*clickedGW = ich4GW; *clickedPix = ich4Pix; *clickedName = ich4; break;
			case k1BitIcon:
				*clickedGW = ichiGW; *clickedPix = ichiPix; *clickedName = ichi; break;
		}
	}
	else if (PtInRect(theMouse, &controls.display.iconLargeRect))
	{
		if (clickedRect != NULL) *clickedRect = controls.display.iconLargeRect;
		switch (currentIconDepth)
		{
			case k32BitIcon:
				*clickedGW = il32GW; *clickedPix = il32Pix; *clickedName = il32; break;
			case k8BitIcon:
				*clickedGW = icl8GW; *clickedPix = icl8Pix; *clickedName = icl8; break;
			case k4BitIcon:
				*clickedGW = icl4GW; *clickedPix = icl4Pix; *clickedName = icl4; break;
			case k1BitIcon:
				*clickedGW = icniGW; *clickedPix = icniPix; *clickedName = icni; break;
		}
	}
	else if (PtInRect(theMouse, &controls.display.iconSmallRect))
	{
		if (clickedRect != NULL) *clickedRect = controls.display.iconSmallRect;
		switch (currentIconDepth)
		{
			case k32BitIcon:
				*clickedGW = is32GW; *clickedPix = is32Pix; *clickedName = is32; break;
			case k8BitIcon:
				*clickedGW = ics8GW; *clickedPix = ics8Pix; *clickedName = ics8; break;
			case k4BitIcon:
				*clickedGW = ics4GW; *clickedPix = ics4Pix; *clickedName = ics4; break;
			case k1BitIcon:
				*clickedGW = icsiGW; *clickedPix = icsiPix; *clickedName = icsi; break;
		}
	}
	else if (PtInRect(theMouse, &controls.display.maskHugeRect))
	{
		if (clickedRect != NULL) *clickedRect = controls.display.maskHugeRect;
		switch (currentMaskDepth)
		{
			case k8BitMask:
				*clickedGW = h8mkGW; *clickedPix = h8mkPix; *clickedName = h8mk; break;
			case k1BitMask: 
				*clickedGW = ichmGW; *clickedPix = ichmPix; *clickedName = ichm; break;
		}
	}
	else if (PtInRect(theMouse, &controls.display.maskLargeRect))
	{
		if (clickedRect != NULL) *clickedRect = controls.display.maskLargeRect;
		switch (currentMaskDepth)
		{
			case k8BitMask:
				*clickedGW = l8mkGW; *clickedPix = l8mkPix; *clickedName = l8mk; break;
			case k1BitMask:
				*clickedGW = icnmGW; *clickedPix = icnmPix; *clickedName = icnm; break;
		}
	}
	else if (PtInRect(theMouse, &controls.display.maskSmallRect))
	{
		if (clickedRect != NULL) *clickedRect = controls.display.maskSmallRect;
		switch (currentMaskDepth)
		{
			case k8BitMask:
				*clickedGW = s8mkGW; *clickedPix = s8mkPix; *clickedName = s8mk; break;
			case k1BitMask:
				*clickedGW = icsmGW; *clickedPix = icsmPix; *clickedName = icsm; break;
		}
	}
	members |= *clickedName;
}

void icnsEditorClass::RefreshPopups()
{
	switch ((**currentPix).pixelSize)
	{
		case 32: SetControlValue(controls.display.iconPopup, k32BitIcon); break;
		case 8:
			switch (currentPixName)
			{
				case icl8: case ics8: case ich8: SetControlValue(controls.display.iconPopup, k8BitIcon); break;
				case l8mk: case s8mk: case h8mk: SetControlValue(controls.display.maskPopup, k8BitMask); break;
			}
			break;
		case 4: SetControlValue(controls.display.iconPopup, k4BitIcon);
		case 1:
			switch (currentPixName)
			{
				case icni: case icsi: case ichi: SetControlValue(controls.display.iconPopup, k1BitIcon); break;
				case icnm: case icsm: case ichm: SetControlValue(controls.display.maskPopup, k1BitMask); break;
			}
			break;
	}
}

void icnsEditorClass::GetCurrentIconMask(PixMapHandle* iconPix, GWorldPtr* iconGW, long* iconName, 
										   PixMapHandle* maskPix, GWorldPtr* maskGW, long* maskName)
{
	if (currentPixName & (ih32 | il32 | is32 |
						  ich8 | icl8 | ics8 |
						  ich4 | icl4 | ics4 |
						  ichi | icni | icsi))
	{
		*iconPix = currentPix;
		*iconGW = currentGW;
		*iconName = currentPixName;
		
		switch (GetControlValue(controls.display.maskPopup))
		{
			case k8BitMask:
				switch ((**currentPix).bounds.right)
				{
					case 32: *maskGW = l8mkGW; *maskPix = l8mkPix; *maskName = l8mk; break;
					case 16: *maskGW = s8mkGW; *maskPix = s8mkPix; *maskName = s8mk; break;
					case 48: *maskGW = h8mkGW; *maskPix = h8mkPix; *maskName = h8mk; break;
				}
				break;
			case k1BitMask:
				switch ((**currentPix).bounds.right)
				{
					case 32: *maskGW = icnmGW; *maskPix = icnmPix; *maskName = icnm; break;
					case 16: *maskGW = icsmGW; *maskPix = icsmPix; *maskName = icsm; break;
					case 48: *maskGW = ichmGW; *maskPix = ichmPix; *maskName = ichm; break;
				}
				break;
		}
	}
	else
	{
		*maskPix = currentPix;
		*maskGW = currentGW;
		*maskName = currentPixName;
		
		switch (GetControlValue(controls.display.iconPopup))
		{
			case k32BitIcon:
				switch ((**currentPix).bounds.right)
				{
					case 32: *iconGW = il32GW; *iconPix = il32Pix; *iconName = il32; break;
					case 16: *iconGW = is32GW; *iconPix = is32Pix; *iconName = is32; break;
					case 48: *iconGW = ih32GW; *iconPix = ih32Pix; *iconName = ih32; break;
				}
				break;
			case k8BitIcon:
				switch ((**currentPix).bounds.right)
				{
					case 32: *iconGW = icl8GW; *iconPix = icl8Pix; *iconName = icl8; break;
					case 16: *iconGW = ics8GW; *iconPix = ics8Pix; *iconName = ics8; break;
					case 48: *iconGW = ich8GW; *iconPix = ich8Pix; *iconName = ich8; break;
				}
				break;
			case k4BitIcon:
				switch ((**currentPix).bounds.right)
				{
					case 32: *iconGW = icl4GW; *iconPix = icl4Pix; *iconName = icl4; break;
					case 16: *iconGW = ics4GW; *iconPix = ics4Pix; *iconName = ics4; break;
					case 48: *iconGW = ich4GW; *iconPix = ich4Pix; *iconName = ich4; break;
				}
				break;
			case k1BitIcon:
				switch ((**currentPix).bounds.right)
				{
					case 32: *iconGW = icniGW; *iconPix = icniPix; *iconName = icni; break;
					case 16: *iconGW = icsiGW; *iconPix = icsiPix; *iconName = icsi; break;
					case 48: *iconGW = ichiGW; *iconPix = ichiPix; *iconName = ichi; break;
				}
				break;
				
		}
	}
}
// __________________________________________________________________________________________
// Name			: icnsEditorClass::HandleSwatchClick 
// Input		: controlPart: the part of the swatrch that was clicked
//				  where: the location of the click
// Output		: None
// Description	: Performs the various functions handled by the swatch control

void icnsEditorClass::HandleSwatchClick(int controlPart, Point where)
{
	Str255			messageString;
		
	switch (controlPart)
	// we do different things based on the control part where the user
	// clicked
	{
		case kForeColorPart :
			GetIndString(messageString, rLabelStrings, sForeColor);
			
			GetColor(&foreColor, where, messageString);
			break;
		case kBackColorPart :
			// same as above, except for the background color
			GetIndString(messageString, rLabelStrings, sBackColor);
			
			GetColor(&backColor, where, messageString);
			break;
		case kSwapColorsPart : SwapForeBackColors(); break;
		case kResetColorsPart: ResetForeBackColors(); break;
	}
	
	Draw1Control(controls.patterns);
	Draw1Control(controls.colorSwatch.control);
	// we must now redraw the control since the colors have changed
}
// __________________________________________________________________________________________
// Name			: icnsEditorClass::GetColor
// Input		: where: the location of the click
//				  messageString: the prompt string for the user
// Output		: color: the color chosen
// Description	: This function allows the user to choose the foreground and background colors
//				  by displaying the appropriate color choice system
void icnsEditorClass::GetColor(RGBColor* color, Point where, Str255 messageString)
{
	switch (currentPixName)
	{
		case ich8: case icl8: case ics8:
			ColorPicker(color, window, where, statics.sys8PickerPic, (**currentPix).pmTable, SwatchUpdate, this);
			break;
		case h8mk: case l8mk: case s8mk:
			ColorPicker(color, window, where, statics.gray8PickerPic, (**currentPix).pmTable, SwatchUpdate, this);
			break;
		case ich4: case icl4: case ics4:
			if (colors == macOSColors)
				ColorPicker(color, window, where, statics.sys4PickerPic, (**currentPix).pmTable, SwatchUpdate, this);
			else
				ColorPicker(color, window, where, statics.win4PickerPic, (**currentPix).pmTable, SwatchUpdate, this);
			break;
		case ichi: case icni: case icsi: case ichm: case icnm: case icsm:
			ColorPicker(color, window, where, statics.sys1PickerPic, (**currentPix).pmTable, SwatchUpdate, this);
			break;
		default:
			if (TrackControl(controls.colorSwatch.control, where, NULL))
			{
				Point location = {0, 0};
				Deactivate();
				Draw1Control(controls.rootControl);
				::GetColor(location,
						   messageString,
						   color,
						    color);
				Activate();
			}					 
			break;
	}
}

void icnsEditorClass::HandlePatternsClick(Point where)
{
	pattern = XYMenu(where,
					 window,
					 2, 12,				// rows, cols of slots
					 16, 16,			// width, height of 1 slot
					 pattern + 1,		// current selection
					 border,			// border options
					 PatternMenuDraw,	// drawing function
					 PatternMenuUpdate,	// updating function
					 this)				// client data
					 - 1;
	
	Draw1Control(controls.patterns);
}
// __________________________________________________________________________________________
// Name			: icnsEditorClass::CopyDepth
// Input		: oldDepth: source where the icon data should be copied from
//				  newDepth: target of the copy
//				  iconOrMask: tells if we're copying icons or masks
// Output		: None
// Description	: Copies the icon data from one depth to another. This is useful because most
//				  users do not want to have to do each depth by hand, but rather prefer to
//				  one of them, and copy it to the rest

void icnsEditorClass::CopyDepth(int oldDepth, int newDepth, int iconOrMask)
{
	PixMapHandle	hugeSrcPix, largeSrcPix, smallSrcPix, // the source pixmaps for all the sizes
					hugeTargetPix, largeTargetPix, smallTargetPix; // the targets
	GWorldPtr		hugeSrcGW, largeSrcGW, smallSrcGW, // the source pixmaps for all the sizes
					hugeTargetGW, largeTargetGW, smallTargetGW; // the targets
	long			hugeSrcName, largeSrcName, smallSrcName, // the source pixmaps for all the sizes
					hugeTargetName, largeTargetName, smallTargetName; // the targets			
					
	SAVEGWORLD;
	SAVECOLORS; // we must reset the fore/background colors to black/white since we don't
				// want CopyBits to colorize
				
	SetGWorld(il32GW, NULL);
	
	if (oldDepth == newDepth) // if the source and target are the same then we dont't have to
		return;				  // do anything
	
	if (iconOrMask == icon) // if it's the icon we're copying
	{
		switch (oldDepth) // we determine the source...
		{
			case k32BitIcon:
				hugeSrcPix  = ih32Pix; largeSrcPix  = il32Pix; smallSrcPix  = is32Pix;
				hugeSrcGW   = ih32GW;  largeSrcGW   = il32GW;  smallSrcGW   = is32GW;
				hugeSrcName = ih32;    largeSrcName = il32;    smallSrcName = is32; break;
			case k8BitIcon:
				hugeSrcPix  = ich8Pix; largeSrcPix  = icl8Pix; smallSrcPix  = ics8Pix;
				hugeSrcGW   = ich8GW;  largeSrcGW   = icl8GW;  smallSrcGW   = ics8GW;
				hugeSrcName = ich8;    largeSrcName = icl8;    smallSrcName = ics8; break;
			case k4BitIcon:
				hugeSrcPix  = ich4Pix; largeSrcPix  = icl4Pix; smallSrcPix  = ics4Pix;
				hugeSrcGW   = ich4GW;  largeSrcGW   = icl4GW;  smallSrcGW   = ics4GW;
				hugeSrcName = ich4;    largeSrcName = icl4;    smallSrcName = ics4; break;
			case k1BitIcon:
				hugeSrcPix  = ichiPix; largeSrcPix  = icniPix; smallSrcPix  = icsiPix;
				hugeSrcGW   = ichiGW;  largeSrcGW   = icniGW;  smallSrcGW   = icsiGW;
				hugeSrcName = ichi;    largeSrcName = icni;    smallSrcName = icsi; break;
		}
		switch (newDepth) // ...and the target
		{
			case k32BitIcon:
				hugeTargetPix  = ih32Pix; largeTargetPix  = il32Pix; smallTargetPix  = is32Pix;
				hugeTargetGW   = ih32GW;  largeTargetGW   = il32GW;  smallTargetGW   = is32GW;
				hugeTargetName = ih32;    largeTargetName = il32;    smallTargetName = is32; break;
			case k8BitIcon:
				hugeTargetPix  = ich8Pix; largeTargetPix  = icl8Pix; smallTargetPix  = ics8Pix;
				hugeTargetGW   = ich8GW;  largeTargetGW   = icl8GW;  smallTargetGW   = ics8GW;
				hugeTargetName = ich8;    largeTargetName = icl8;    smallTargetName = ics8; break;
			case k4BitIcon:
				hugeTargetPix  = ich4Pix; largeTargetPix  = icl4Pix; smallTargetPix  = ics4Pix;
				hugeTargetGW   = ich4GW;  largeTargetGW   = icl4GW;  smallTargetGW   = ics4GW;
				hugeTargetName = ich4;    largeTargetName = icl4;    smallTargetName = ics4; break;
			case k1BitIcon:
				hugeTargetPix  = ichiPix; largeTargetPix  = icniPix; smallTargetPix  = icsiPix;
				hugeTargetGW   = ichiGW;  largeTargetGW   = icniGW;  smallTargetGW   = icsiGW;
				hugeTargetName = ichi;    largeTargetName = icni;    smallTargetName = icsi; break;
		}
	}
	else // otherwise we're copying the mask
	{
		if ((oldDepth == k8BitMask) && (newDepth == k1BitMask))
		{
			Mask8ToMask1(l8mkPix, icnmPix);
			Mask8ToMask1(s8mkPix, icsmPix);
			Mask8ToMask1(h8mkPix, ichmPix);
			return;
		}
		switch (oldDepth) // so again we determine the source...
		{
			case k8BitMask:
				hugeSrcPix  = h8mkPix; largeSrcPix  = l8mkPix; smallSrcPix  = s8mkPix;
				hugeSrcGW   = h8mkGW;  largeSrcGW   = l8mkGW;  smallSrcGW   = s8mkGW;
				hugeSrcName = h8mk;    largeSrcName = l8mk;    smallSrcName = s8mk; break;
			case k1BitMask:
				hugeSrcPix  = ichmPix; largeSrcPix  = icnmPix; smallSrcPix  = icsmPix;
				hugeSrcGW   = ichmGW;  largeSrcGW   = icnmGW;  smallSrcGW   = icsmGW;
				hugeSrcName = ichm;    largeSrcName = icnm;    smallSrcName = icsm; break;
		}
		switch (newDepth) // and the target
		{
			case k8BitMask:
				hugeTargetPix  = h8mkPix; largeTargetPix  = l8mkPix; smallTargetPix  = s8mkPix;
				hugeTargetGW   = h8mkGW;  largeTargetGW   = l8mkGW;  smallTargetGW   = s8mkGW;
				hugeTargetName = h8mk;    largeTargetName = l8mk;    smallTargetName = s8mk; break;
			case k1BitMask:
				hugeTargetPix  = ichmPix; largeTargetPix  = icnmPix; smallTargetPix  = icsmPix;
				hugeTargetGW   = ichmGW;  largeTargetGW   = icnmGW;  smallTargetGW   = icsmGW;
				hugeTargetName = ichm;    largeTargetName = icnm;    smallTargetName = icsm; break;
		}
	}
	
	long copyMode;
	
	if ((**statics.preferences.data).flags & prefsDither)
		copyMode = srcCopy + ditherCopy;
	else
		copyMode = srcCopy;
		
	SaveState(hugeTargetGW, hugeTargetPix, hugeTargetName);
	SaveState(largeTargetGW, largeTargetPix, largeTargetName);
	SaveState(smallTargetGW, smallTargetPix, smallTargetName);
	
	// then we just execute a CopyBits between each of the sources and targets
	CopyPixMap(hugeSrcPix, // the huge size
			   hugeTargetPix,
			   &hugeIconRect,
			   &hugeIconRect,
			   copyMode,
			   NULL);
	CopyPixMap(largeSrcPix, // the large size
			   largeTargetPix,
			   &largeIconRect,
			   &largeIconRect,
			   copyMode,
			   NULL);
	CopyPixMap(smallSrcPix, // and the small size
			   smallTargetPix,
			   &smallIconRect,
			   &smallIconRect,
			   copyMode,
			   NULL);
			   
	status |= needToSave;
	
	SaveState(hugeTargetGW, hugeTargetPix, hugeTargetName);
	SaveState(largeTargetGW, largeTargetPix, largeTargetName);
	SaveState(smallTargetGW, smallTargetPix, smallTargetName);
	
	RESTOREGWORLD;
	RESTORECOLORS; // and now we can restote the fore/background colors
}

// __________________________________________________________________________________________
// Name			: icnsEditorClass::EditIconInfo
// Input		: None
// Output		: None
// Description	: This function displays a dialog which allows the user to change the icon's
//				  attributes (ID, name, bits)

void icnsEditorClass::EditIconInfo()
{
	DialogPtr		infoDialog;
	ModalFilterUPP	eventFilterUPP;
	bool			dialogDone;
	short			itemHit;
	ControlHandle	IDField, IDMenu, nameField, sizeField,
					sysHeapBox, purgeableBox, lockedBox, protectedBox, preloadBox;
	Str255			tempString, sizeSuffix;
	long			temp, menuSelection;
	MenuHandle		menu, popupMenu;
	int				menuID, item, i;
	
	infoDialog = GetNewDialog(rIconInfo, NULL, (WindowPtr)-1L);
	
	eventFilterUPP = NewModalFilterProc(IconInfoDialogFilter);
	
	SetDialogDefaultItem(infoDialog, iOK);
	SetDialogCancelItem(infoDialog, iCancel);
	
	GetDialogItemAsControl(infoDialog, iIconIDField, &IDField);
	GetDialogItemAsControl(infoDialog, iIDMenu, &IDMenu);
	GetDialogItemAsControl(infoDialog, iIconNameField, &nameField);
	GetDialogItemAsControl(infoDialog, iIconSizeField, &sizeField);
	
	//GetDialogItemAsControl(infoDialog, iFlagsContainer, &flagsContainer);
	
	GetDialogItemAsControl(infoDialog, iPurgeable, &purgeableBox);
	//EmbedControl(purgeableBox, flagsContainer);
	GetDialogItemAsControl(infoDialog, iPreload, &preloadBox);
	GetDialogItemAsControl(infoDialog, iLocked, &lockedBox);
	GetDialogItemAsControl(infoDialog, iProtected, &protectedBox);
	GetDialogItemAsControl(infoDialog, iSystemHeap, &sysHeapBox);
	
	popupMenu = GetMenu(mBaseIDMenu - 1);
	
	for (int i=mBaseIDMenu; i < mBaseIDMenu + mIDMenuCount; i++)
	{
		menu = GetMenu(i);
		if(menu != NULL)
			InsertMenu(menu,hierMenu); // the select menu is not directly in the menubar,
								       // rather it is a submenu of the edit menu
	}
	
	SetControlText(nameField, name);
	NumToString(ID, tempString);
	SetControlText(IDField, tempString);
	NumToString(GetSize(), tempString);
	GetIndString(sizeSuffix, rLabelStrings, sSizeSuffix);
	AppendString(tempString, sizeSuffix);
	SetControlText(sizeField, tempString);
	
	SetControlValue(purgeableBox, flags & resPurgeable);
	SetControlValue(preloadBox, flags & resPreload);
	SetControlValue(lockedBox, flags & resLocked);
	SetControlValue(protectedBox, flags & resProtected);
	SetControlValue(sysHeapBox, flags & resSysHeap);
	
	ShowWindow(infoDialog);
	
	GetIDMenu(ID, &menu, &item, tempString);
	CheckItem(menu, item, true);
	SetControlValue(IDMenu, (**menu).menuID - mBaseIDMenu + 1);
	
	dialogDone = false;
	
	while (!dialogDone)
	{
		ModalDialog(eventFilterUPP, &itemHit);
		
		switch (itemHit)
		{
			case iOK:
				dialogDone = true;
				GetControlText(IDField, tempString);
				StringToNum(tempString, &temp);
				if (temp != ID)
				{
					Handle otherIcon;
					
					otherIcon = Get1Resource('icns', temp);
					if (otherIcon != NULL)
					{
						Str255 message, overwriteButtonName, cancelButtonName;
						ReleaseResource(otherIcon);
						GetIndString(message, rBasicStrings, eIDAlreadyExists);
						SubstituteString(message, "\p<ID>", tempString);
						GetIndString(overwriteButtonName, rBasicStrings, eOverwriteButton);
						GetIndString(cancelButtonName, rBasicStrings, eInfoCancelButton);
						itemHit = icnsEditorClass::statics.DisplayAlert(message, overwriteButtonName, cancelButtonName, NULL);
						if (itemHit == 2)
							dialogDone = false;
					}
				}
				if (dialogDone)
				{
					GetControlText(nameField, name);
					ID = temp;
					flags = (GetControlValue(purgeableBox) << resPurgeableBit) +
							(GetControlValue(preloadBox) << resPreloadBit) + 
							(GetControlValue(lockedBox) << resLockedBit) +
							(GetControlValue(protectedBox) << resProtectedBit) +
							(GetControlValue(sysHeapBox) << resSysHeapBit);
					status |= needToSave;
				}
				break;
			case iCancel:
				dialogDone = true;
				break;
			case iIconIDField:
				CheckItem(menu, item, false);
				GetControlText(IDField, tempString);
				StringToNum(tempString, &temp);
				GetIDMenu(temp, &menu, &item, tempString);
				CheckItem(menu, item, true);
				SetControlValue(IDMenu, (**menu).menuID - mBaseIDMenu + 1);
				if (tempString[0] != 0)
				{
					SetControlText(nameField, tempString);
					Draw1Control(nameField);
				}
				break;
			case iIDMenu:
				menuSelection = LMGetMenuDisable();
				
				CheckItem(menu, item, false);
				
				menuID = menuSelection >> 16;
				item = menuSelection & 0x0000FFFF;
				
				menu = GetMenu(menuID);
				
				CheckItem(menu, item, true);
				
				GetMenuItemText(menu, item, tempString);
				
				for (i=1; (tempString[i] != ' '); i++)
				
				tempString[0] = i;
				if (tempString[1] == 208) tempString[1] = '-';
				SetControlText(IDField, tempString);
				
				GetMenuItemText(menu, item, tempString);
				
				tempString[i] = tempString[0] - i;
				
				SetControlText(nameField, &tempString[i]);
				
				Draw1Control(IDField);
				Draw1Control(nameField);
				
				break;
			case iPurgeable: ToggleCheckbox(purgeableBox); break;
			case iPreload: ToggleCheckbox(preloadBox); break;
			case iLocked: ToggleCheckbox(lockedBox); break;
			case iProtected: ToggleCheckbox(protectedBox); break;
			case iSystemHeap: ToggleCheckbox(sysHeapBox); break;
		}
	}
	
	DisposeRoutineDescriptor(eventFilterUPP);
	DisposeDialog(infoDialog);
}

void GetIDMenu(int ID, MenuHandle* menu, int* item, Str255 name)
{
	MenuHandle	currentMenu;
	int			itemCount;
	int			IDLength;
	int			menuLength;
	Str255		menuItemText, IDAsString;
	
	name[0] = 0;
	*menu = (MenuHandle)Get1Resource('MENU', mBaseIDMenu + mIDMenuCount - 1);
	*item = CountMItems(*menu); // "Custom ID", always last
	
	NumToString(ID, IDAsString);
	
	IDAsString[IDAsString[0] + 1] = ' ';
	
	IDLength = IDAsString[0]++;
	
	if (IDAsString[1] == '-')
		IDAsString[1] = 'Ð';
	
	for (int i = 0; i < mIDMenuCount; i++)
	{
		currentMenu = (MenuHandle) Get1Resource('MENU', mBaseIDMenu + i);
		
		if (currentMenu == NULL)
			DisplayValue(mBaseIDMenu + i);
		
		itemCount = CountMItems(currentMenu);
		
		for (int j = 1; j <= itemCount; j++)
		{
			GetMenuItemText(currentMenu, j, menuItemText);			
			
			menuLength = menuItemText[0];
			
			menuItemText[0] = IDLength + 1;
			
			if (EqualString(IDAsString, menuItemText, true, true))
			{
				*menu = currentMenu;
				*item = j;
				
				CopyString(name, &(menuItemText[IDLength + 1]));
				name[0] = menuLength - IDLength - 1;
				//name[menuLength - IDLength] = ' ';
				return;
			}
		}
	}
}

pascal bool IconInfoDialogFilter(DialogPtr dialog, EventRecord* eventPtr, short* itemHit)
{
	bool	handledEvent = false;
	
	switch (eventPtr->what)
	{
		case keyDown:
		case autoKey:
			ControlHandle IDField, focusControl;
			
			GetDialogItemAsControl(dialog, iIconIDField, &IDField);
			GetKeyboardFocus(dialog, &focusControl);
			
			if (focusControl == IDField)
			{
				char key;
				key = eventPtr->message & charCodeMask;  
				if ((key == kReturnCharCode) || (key == kEnterCharCode) ||
				    (key == kTabCharCode) || (key == kBackspaceCharCode) ||
				    (key == kEscapeCharCode) || (key == kDeleteCharCode) ||
				    (key == kRightArrowCharCode) || (key == kLeftArrowCharCode) ||
				    (key == kUpArrowCharCode) || (key == kDownArrowCharCode) ||
				    (key == '-') || ((key >= '0') && (key <= '9')) ||
				    ((key == '.') && (eventPtr->modifiers & cmdKey) != 0))
				{
				   handledEvent = StdFilterProc(dialog, eventPtr, itemHit);
				}
				else
				{
					SysBeep(6);
					handledEvent = true;
				}
			}
			else
				handledEvent = StdFilterProc(dialog, eventPtr, itemHit);
			break;
		default:
			handledEvent = StandardEditorDialogFilter(dialog, eventPtr, itemHit);
			break;
	}
	return handledEvent;
}

// __________________________________________________________________________________________
// Name			: icnsEditorClass::Activate
// Input		: None
// Output		: None
// Description	: Activates all the controls in the window (it activates just the root control,
//				  but since there is a hierarchy, this causes all of them to be activated)

void icnsEditorClass::Activate()
{
	//RgnHandle	oldClip, newClip;
	//SAVEGWORLD; // we must save the current port since we're going to be dealing with the window
	
	//oldClip = NewRgn();
	//newClip = NewRgn();
	
	//SetPort(window); // set the window as the current port
	
	//GetClip(oldClip);
	//CopyRgn(oldClip, newClip);
	//SetEmptyRgn(newClip);
	//SubtractControlRegions(newClip);
	//SetClip(newClip);
	
	
	
	SetThemeWindowBackground(window,kThemeBrushDialogBackgroundActive,false);
	
	ActivateControl(controls.rootControl); // activate the control
	
	//SetClip(oldClip);
	//DisposeRgn(oldClip);
	//DisposeRgn(newClip);
	
	//InvalRect(&window->portRect); // and invalidate the whole window so that it can redrawn
	
	//Draw1Control(controls.rootControl);
	
	//Refresh();
	
	//RESTOREGWORLD; // and now we can restore the current gworld
}

// __________________________________________________________________________________________
// Name			: icnsEditorClass::Deactive
// Input		: None
// Output		: None
// Description	: Deactivates all the controls, opposite of function above 

void icnsEditorClass::Deactivate()
{
	//RgnHandle	oldClip, newClip;
	// exactly the same as the function above
	//SAVEGWORLD;
	
	//oldClip = NewRgn();
	//newClip = NewRgn();
	
	//SetPort(window); // set the window as the current port
	
	//GetClip(oldClip);
	//CopyRgn(oldClip, newClip);
	//SetEmptyRgn(newClip);
	//SubtractControlRegions(newClip);
	//SetClip(newClip);
	
	SetThemeWindowBackground(window,kThemeBrushDialogBackgroundInactive,false);
	
	DeactivateControl(controls.rootControl);
	
	//SetClip(oldClip);
	//DisposeRgn(oldClip);
	//DisposeRgn(newClip);
	
	//InvalRect(&window->portRect);
	
	//Draw1Control(controls.rootControl);
	
	//Refresh();
	
	//RESTOREGWORLD;
}

RgnHandle icnsEditorClass::GetControlsRegion(void)
{
	RgnHandle rgn, temp, temp2;
	
	rgn = NewRgn();
	temp = NewRgn();
	
	SetEmptyRgn(rgn);

	SetRectRgn(temp,
			   (**controls.toolbar.marquee).contrlRect.left,
			   (**controls.toolbar.marquee).contrlRect.top,
			   (**controls.toolbar.text).contrlRect.right,
			   (**controls.toolbar.text).contrlRect.bottom);
	InsetRgn(temp, -1, -1);
	temp2 = NewRgn();
	SetRectRgn(temp2,
			   (**temp).rgnBBox.left,
			   (**temp).rgnBBox.bottom - 1,
			   (**temp).rgnBBox.left + 1,
			   (**temp).rgnBBox.bottom);
	DiffRgn(temp, temp2, temp);
	SetRectRgn(temp2,
			   (**temp).rgnBBox.right - 1,
			   (**temp).rgnBBox.top,
			   (**temp).rgnBBox.right,
			   (**temp).rgnBBox.top + 1);
	DiffRgn(temp, temp2, temp);
	DisposeRgn(temp2);
	UnionRgn(temp, rgn, rgn);
	
	RectRgn(temp, &(**controls.iconEditWell).contrlRect);
	InsetRgn(temp, -2, -2);
	temp2 = NewRgn();
	SetRectRgn(temp2,
			   (**temp).rgnBBox.left,
			   (**temp).rgnBBox.bottom - 1,
			   (**temp).rgnBBox.left + 1,
			   (**temp).rgnBBox.bottom);
	DiffRgn(temp, temp2, temp);
	SetRectRgn(temp2,
			   (**temp).rgnBBox.right - 1,
			   (**temp).rgnBBox.top,
			   (**temp).rgnBBox.right,
			   (**temp).rgnBBox.top + 1);
	DiffRgn(temp, temp2, temp);
	DisposeRgn(temp2);
	UnionRgn(temp, rgn, rgn);
	
	RectRgn(temp, &(**controls.display.iconDisplay).contrlRect); InsetRgn(temp, -2, -2); UnionRgn(temp, rgn, rgn);
	RectRgn(temp, &(**controls.display.iconPopup).contrlRect); UnionRgn(temp, rgn, rgn);
	RectRgn(temp, &(**controls.display.iconLabel).contrlRect); UnionRgn(temp, rgn, rgn);
	RectRgn(temp, &(**controls.display.maskDisplay).contrlRect); InsetRgn(temp, -2, -2); UnionRgn(temp, rgn, rgn);
	RectRgn(temp, &(**controls.display.maskPopup).contrlRect); UnionRgn(temp, rgn, rgn);
	RectRgn(temp, &(**controls.display.maskLabel).contrlRect); UnionRgn(temp, rgn, rgn);
	RectRgn(temp, &(**controls.display.preview).contrlRect); InsetRgn(temp, -1, -1); UnionRgn(temp, rgn, rgn);
	RectRgn(temp, &(**controls.display.previewLabel).contrlRect); UnionRgn(temp, rgn, rgn);
	
	RectRgn(temp, &(**controls.zoomPlacard.control).contrlRect); UnionRgn(temp, rgn, rgn);
	RectRgn(temp, &(**controls.infoPlacard.control).contrlRect); UnionRgn(temp, rgn, rgn);
	
	RectRgn(temp, &(**controls.colorSwatch.control).contrlRect); InsetRgn(temp, -1, -1); UnionRgn(temp, rgn, rgn);
	RectRgn(temp, &(**controls.patterns).contrlRect);
	InsetRgn(temp, -2, -2);
	temp2 = NewRgn();
	SetRectRgn(temp2,
			   (**temp).rgnBBox.left,
			   (**temp).rgnBBox.bottom - 1,
			   (**temp).rgnBBox.left + 1,
			   (**temp).rgnBBox.bottom);
	DiffRgn(temp, temp2, temp);
	SetRectRgn(temp2,
			   (**temp).rgnBBox.right - 1,
			   (**temp).rgnBBox.top,
			   (**temp).rgnBBox.right,
			   (**temp).rgnBBox.top + 1);
	DiffRgn(temp, temp2, temp);
	DisposeRgn(temp2);
	
	UnionRgn(temp, rgn, rgn);
	
	DisposeRgn(temp);
	
	return rgn;
}

// __________________________________________________________________________________________
// Name			: icnsEditorClass::UpdateToolbar
// Input		: None
// Output		: None
// Description	: based on the currentTool variable, it sets set the current tool control to
//				  the pressed state (1), and the rest to the unpressed state (0)

void icnsEditorClass::UpdateToolbar()
{
	// we simply go through all the tool controls. if the currentool is the same as the 
	// control, then we press it, otherwise we unpress it
	if (currentTool == pen)
		SetControlValue(controls.toolbar.pen, 1);
	else
		SetControlValue(controls.toolbar.pen, 0);
		
	if (currentTool == eyeDropper)
		SetControlValue(controls.toolbar.eyeDropper, 1);
	else
		SetControlValue(controls.toolbar.eyeDropper, 0);
		
	if (currentTool == fill)
		SetControlValue(controls.toolbar.fill, 1);
	else
		SetControlValue(controls.toolbar.fill, 0);
		
	if (currentTool == eraser)
		SetControlValue(controls.toolbar.eraser, 1);
	else
		SetControlValue(controls.toolbar.eraser, 0);
		
	if (currentTool == marquee)
		SetControlValue(controls.toolbar.marquee, 1);
	else
		SetControlValue(controls.toolbar.marquee, 0);
		
	if (currentTool == move)
		SetControlValue(controls.toolbar.move, 1);
	else
		SetControlValue(controls.toolbar.move, 0);
		
	if (currentTool == lasso)
		SetControlValue(controls.toolbar.lasso, 1);
	else
		SetControlValue(controls.toolbar.lasso, 0);
		
	if (currentTool == magicWand)
		SetControlValue(controls.toolbar.magicWand, 1);
	else
		SetControlValue(controls.toolbar.magicWand, 0);
		
	if (currentTool == line)
		SetControlValue(controls.toolbar.line, 1);
	else
		SetControlValue(controls.toolbar.line, 0);
		
	if (currentTool == rectangle)
		SetControlValue(controls.toolbar.rectangle, 1);
	else
		SetControlValue(controls.toolbar.rectangle, 0);
		
	if (currentTool == oval)
		SetControlValue(controls.toolbar.oval, 1);
	else
		SetControlValue(controls.toolbar.oval, 0);
		
	if (currentTool == polygon)
		SetControlValue(controls.toolbar.polygon, 1);
	else
		SetControlValue(controls.toolbar.polygon, 0);
		
	if (currentTool == gradient)
		SetControlValue(controls.toolbar.gradient, 1);
	else
		SetControlValue(controls.toolbar.gradient, 0);
		
	if (currentTool == text)
		SetControlValue(controls.toolbar.text, 1);
	else
		SetControlValue(controls.toolbar.text, 0);
}

// __________________________________________________________________________________________
// Name			: icnsEditorClass::RepositionControls
// Input		: None
// Output		: None
// Description	: moves the controls in the window so that they are in their proper positions
//				  (some of the controls have to be aligned with the bottom or right sides).
//				  This is called after the window has been resized.

void icnsEditorClass::RepositionControls()
{
	Rect	windowRect, // the rectangle of the editor window
			controlRect; // the rectangle for the various controls I'll be moving
	int		h; // the target horizontal coordinate 
	int		v; // the target vertical coordinate
	int		growIncrement;
	// how much the edit area should be grown by for each magnification level
	
	SAVEGWORLD;
	SetPort(window); // we'll be changing controls in this window, so the coordinates must
					 // be local to here
	
	windowRect = window->portRect;
	OffsetRect(&windowRect, -windowRect.left, -windowRect.top);
	// want the rectangle to start at 0,0
	
	HideControl(controls.rootControl);
	// hiding the root control hides all of them, so that they can be repositioned without
	// flashes or leaving trails behind
	
	// background pane is most of the window, except for the bottom
	h = windowRect.right + 2;
	v = windowRect.bottom - 13;
	SizeControl(controls.backgroundPane, h, v);
	
	// the zoom display placard goes in the bottom left corner
	controlRect = ((**(controls.zoomPlacard.control)).contrlRect);
	h = windowRect.left - 1;
	v = windowRect.bottom - (controlRect.bottom - controlRect.top) + 1;
	MoveControl(controls.zoomPlacard.control, h, v);
	
	// the info display placard is right to the right of it
	MoveControl(controls.infoPlacard.control, h + controlRect.right, v);
	// we must also resize it so that it goes all the way across the window
	h = (windowRect.right - windowRect.left) - 63 - 16 + 4;
	v = 16;
	SizeControl(controls.infoPlacard.control, h, v);
	
	// the edit well is enlaged according to the magnification level
	controlRect = ((**(controls.iconEditWell)).contrlRect);
	growIncrement = (**currentPix).bounds.bottom - (**currentPix).bounds.top;
	// we must zoom in in whole multiples
	h = magnification * growIncrement;
	v = h; // the area is square
	SizeControl(controls.iconEditWell, h, v);
	
	// the icon display is two "widths" away from the right border of the window
	controlRect = ((**(controls.display.iconDisplay)).contrlRect);
	h = windowRect.right - 2 * (controlRect.right - controlRect.left) - 10;
	v = controlRect.top;
	MoveControl(controls.display.iconDisplay, h, v);
	MakeDisplayRects((**(controls.display.iconDisplay)).contrlRect, // we also need to update
					 &controls.display.iconHugeRect,				// all the rects for the
					 &controls.display.iconLargeRect,				// pieces which make up the
					 &controls.display.iconSmallRect);				// the display
					 
	// the icon label is right undernath it
	controlRect = (**controls.display.iconLabel).contrlRect;
	v = controlRect.top;
	MoveControl(controls.display.iconLabel, h, v);
	
	// the preview is right underneath it too			 
	controlRect = (**controls.display.preview).contrlRect;
	v = controlRect.top;
	MoveControl(controls.display.preview, h, v);
	
	// the preview label is right underneat the preview
	controlRect = (**controls.display.previewLabel).contrlRect;
	v = controlRect.top;
	MoveControl(controls.display.previewLabel, h, v);
	
	controlRect = ((**(controls.display.iconPopup)).contrlRect);
	v = controlRect.top;
	MoveControl(controls.display.iconPopup, h, v);
	
	// the mask display is one "width" away from the right border of the window
	controlRect = ((**(controls.display.maskDisplay)).contrlRect);
	h = windowRect.right - (controlRect.right - controlRect.left) - 6;
	v = controlRect.top;
	MoveControl(controls.display.maskDisplay, h, v);
	MakeDisplayRects((**(controls.display.maskDisplay)).contrlRect, // again we must update
					 &controls.display.maskHugeRect,				// the rects
					 &controls.display.maskLargeRect,
					 &controls.display.maskSmallRect);
	
	// the label is right undernath it
	controlRect = (**controls.display.maskLabel).contrlRect;
	v = controlRect.top;
	MoveControl(controls.display.maskLabel, h, v);
	
	// the popup is above it, and again it's a bit wider so we must center it
	controlRect = ((**(controls.display.maskPopup)).contrlRect);
	v = controlRect.top;
	MoveControl(controls.display.maskPopup, h, v);
	
	ShowControl(controls.rootControl); // we're done with the moving, so we can show the controls
	
	RESTOREGWORLD;
}

// __________________________________________________________________________________________
// Name			: icnsEditorClass::HandleGrow
// Input		: where: point in the grow box that was clicked
// Output		: None
// Description	: Handles a click in the grow box of the editor's window. GrowWindow (a system
//				  function is called), and then the window is resized (which eventually leads
//				  to the controls being repositioned too)

void icnsEditorClass::HandleGrow(Point where)
{
	Rect		maxGrowRect; // the minimum (top/left coordinates) and maximum sizes
							 // (bottom/right coordinates) to which the window can be grown
							 // to
	long		growSize; // the size that the window was actually grown to, the upper 2 bytes
						  // are the horizontal size and the lower 2 are the vertical
	int			hSize, vSize, // the size that the user chose
				delta, // the difference between the normal size and what the user selected
				newMagnification, // the newly selected magnification level;
				growIncrement,
				baseMagnification;
	
	if (((**currentPix).bounds.right == 16) || ((**currentPix).bounds.right == 32))
	{
		baseMagnification = 7;
		growIncrement = 32;
	}
	else
	{
		baseMagnification = 4;
		growIncrement = 48;
	}

	SetRect(&maxGrowRect, // the window can be between the...
		    kDefaultSizeRect.right, // ...default size...
		    kDefaultSizeRect.bottom,
		    kDefaultSizeRect.right + growIncrement * (kMaxMagnification - baseMagnification),
		    kDefaultSizeRect.bottom + growIncrement * (kMaxMagnification - baseMagnification));
		    // ...and the maximum magnified size
	growSize = GrowWindow(window, where, &maxGrowRect); // we let the user perfrom the resizing
	if (growSize != 0) // if the user changed the size
	{
		hSize = growSize & 0x0000FFFF; // the lower 2 bytes are the new horizontal size
		vSize = (growSize & 0xFFFF0000) >> 16; // and the upper 2 are the new vertical size
		// now we check in which direction the size change was bigger (since we must resize
		// the window proportionally)
		delta = (hSize - kDefaultSizeRect.right); 
		if (delta > (vSize - kDefaultSizeRect.bottom))
			delta = (vSize - kDefaultSizeRect.bottom);
		// the magnification is the nearest magnification level (each level corresponds to an
		// additional kMaxIconSize pixels to each dimension) 
		newMagnification = (baseMagnification  + ((delta + growIncrement - 1)/growIncrement));
		if (newMagnification != magnification) // if the magnification was changed
		{
			magnification = newMagnification; // we set the new one
			ResizeWindow();
			// and we perfrom the actual resizing (including setting the window size and
			// moving the controls)
		}
	}
}

// __________________________________________________________________________________________
// Name			: icnsEditor::ResizeWindow
// Input		: None
// Output		: None
// Description	: using the magnification field of the editor class, this resized the window
//				  to the proper size, and sets the resized bit of the status 

void icnsEditorClass::ResizeWindow(void)
{
	int			hSize, // the new horizontal size of the window
				vSize; // the new vertical size
				//increment,
				//baseMagnification;
	RgnHandle	updateRgn; // the region of the window which must be updated
	
	if (magnification > kMinMagnification) // if we're not zoomed out all the way..
		status |= canZoomOut; // we can still zoom out
	else
		status &= ~canZoomOut;
	
	if (magnification < kMaxMagnification) // if we're not zoomed in all the way
		status |= canZoomIn; // we can still zoom in
	else
		status &= ~canZoomIn;
	
	SAVEGWORLD; // we must save the current gworld since we're gonna be changing the port
	SetPort(window); // we'll be dealing with local stuff
	
	if (((**currentPix).bounds.right == 16) || ((**currentPix).bounds.right == 32))
	{
		//baseMagnification = 7;
		//increment = 32;
		hSize = (magnification - 7) * 32 + kDefaultSizeRect.right;
		vSize = (magnification - 7) * 32 + kDefaultSizeRect.bottom;
	}
	else
	{
		hSize = (magnification - 4) * 48 +  kDefaultSizeRect.right - 32;
		vSize = (magnification - 4) * 48 + kDefaultSizeRect.bottom - 32;
	}

	
	if (hSize < kDefaultSizeRect.right)
		hSize = kDefaultSizeRect.right;
	if (vSize < kDefaultSizeRect.bottom)
		vSize = kDefaultSizeRect.bottom;
		
	if (hSize != (window->portRect.right - window->portRect.left) ||
		vSize != (window->portRect.bottom - window->portRect.top))
	{
		updateRgn = NewRgn(); // we must invalidate the old window region...
		CopyRgn(window->visRgn, updateRgn);
		InvalRgn(updateRgn);
		
		SizeWindow(window, hSize, vSize, true); //...do the resizing
		
		CopyRgn(window->visRgn, updateRgn); // and invalidate the new one as well
		InvalRgn(updateRgn);
		
		DisposeRgn(updateRgn); // and now we're done with the region
	}
	
	InvalidateDrawingArea();
	InvalRect(&(**controls.zoomPlacard.control).contrlRect);
	
	RESTOREGWORLD; // and we can restore the port

	status |= resized; // and inform the program that the window has been resized
}

// __________________________________________________________________________________________
// Name			: icnsEditorClass::ZoomIn
// Input		: None
// Output		: None
// Description	: increments the magnification field (if possible) and calls ResizeWindow

void icnsEditorClass::ZoomIn(void)
{
	if (magnification != kMaxMagnification)
	// this should never be the case, but just to be sure...
	{
		magnification++;
		ResizeWindow();
	}
}

// __________________________________________________________________________________________
// Name			: icnsEditorClass::ZoomOut
// Input		: None
// Output		: None
// Description	: decrements the magnification field (if possible) and calls ResizeWindow

void icnsEditorClass::ZoomOut(void)
{
	if (magnification != kMinMagnification)
	// this should never be the case, but just to be sure...
	{
		magnification--;
		ResizeWindow();
	}
}

// __________________________________________________________________________________________
// Name			: icnsEditorClass::HandleDrawing
// Input		: None
// Output		: None
// Description	: based on the current tool, this determines what should be done with a click
//				  in the drawing area

void icnsEditorClass::HandleDrawing(void)
{
	bool needToSaveState;
	
	switch (currentTool)
	// based on the current tool we call on the appropriate function to handle the drawing
	{
		case move :			needToSaveState = HandleMove(); break;
		case marquee :		HandleMarquee(); break;
		case eraser :
		case pen :			HandlePen(); break;
		case fill :			HandleFilling(); break;
		case eyeDropper :	HandleEyeDropper();  needToSaveState = false; break;
		case lasso : 		HandleLasso(); break;
		case magicWand :	HandleMagicWand(); break;
		case line : 		HandleLine(); break;
		case oval:
		case rectangle : 	HandleRectangle(); break;
		case polygon :		HandlePolygon(); break;
		case gradient : 	HandleGradient(); break;
		case text : 		HandleText(); break;
	}
	
	if (!EmptyRgn(selectionRgn)) // if there still is a selection, we must set that flag
		status |= hasSelection;
	else
		status &= ~hasSelection;
	
	if (needToSaveState) // if there was painting performed...
	{
		currentState = new drawingStateClass(currentState, this); // we must save the state
		status |= needToSave; // the drawing was modified, and thus it needs to be saved...
		status |= needsUpdate; // and be update as well
	}
}
// __________________________________________________________________________________________
// Name			: icnsEditorClass::HandleGradient
// Input		: None
// Output		: None
// Description	: Draws a linear gradient between two user specified points by transitioning
//				  from the foreground to the background color

void icnsEditorClass::HandleGradient(void)
{
	int				startX, startY, // the starting (anchor) x and y coordinates
					x, y; // the end (free-moving) x and y coordinates
	Rect			currentBounds; // the dimensions of the current icon size
	OSStatus		err = noErr; // used for error checking
	RgnHandle		clipRgn;
	PixMapHandle	targetPix;
	GWorldPtr		targetGW;
	
	SAVEGWORLD; // we'll be changing the gworld and colors
	SAVECOLORS;
	
	// setting up this variable
	currentBounds = (**currentPix).bounds;
	SetRect(&currentBounds,
			currentBounds.left * magnification,
			currentBounds.top * magnification,
			currentBounds.right * magnification,
			currentBounds.bottom * magnification);
	
	// and the overlay itself
	err = NewGWorld(&overlayGW, 1, &currentBounds, NULL, NULL, 0);
	if (err != noErr) {status |= outOfMemory; return; }
	overlayPix = GetGWorldPixMap(overlayGW);
	LockPixels(overlayPix);
	SetGWorld(overlayGW, NULL);
	EraseRect(&currentBounds);
	
	// we get the starting position
	GetDrawingMousePosition(&startX, &startY, magnified);
	
	while (Button()) // while the button is down
	{
		// we get the new position
		GetDrawingMousePosition(&x, &y, magnified);
		if (ISSHIFTDOWN) // if shift is down, we must restrict the line to specific angles
			ConstrainLine45(startX, startY, &x, &y);
		
		// now that we the coordinates
		SetGWorld(overlayGW, NULL); // we go into the overlay
		RGBForeColor(&foreColor);
		RGBBackColor(&kWhiteAsRGB);
		EraseRect(&currentBounds); // clear the previous contents
		MoveTo(startX, startY);
		DrawCross(6);
		LineTo(x, y); // draw the line
		RESTORECOLORS;
		RESTOREGWORLD;
		Display((**controls.iconEditWell).contrlRect, current); // and draw the whole thing
	}
	
	startX /= magnification;
	startY /= magnification;
	x /= magnification;
	y /= magnification;
	
	if (EmptyRgn(selectionRgn)) // if there isn't a selection
	{
		clipRgn = NULL;
		targetPix = currentPix;
		targetGW = currentGW;
	}
	else if (status & selectionFloated) // if there's a selection and its floated
	{
		clipRgn = NULL;
		targetPix = selectionPix;
		targetGW = selectionGW;
	}
	else // otherwise (there's a selection, but it isn't floated) we must restrict the drawing
		 // to the selection contents
	{
		clipRgn = selectionRgn;
		targetPix = currentPix;
		targetGW = currentGW;
	}
	
	if (controls.toolbar.gradientMode == linear)
		DrawGradient32(startX, startY, foreColor,
					 x, y, backColor,
					 statics.canvasPix, (**targetPix).bounds, clipRgn);
	else
		DrawRadialGradient32(startX, startY, foreColor,
							 x, y, backColor,
							 statics.canvasPix, (**targetPix).bounds, clipRgn);

	if ((**statics.preferences.data).flags & prefsDither)			 
		CopyPixMap(statics.canvasPix, targetPix, &(**targetPix).bounds, &(**targetPix).bounds, srcCopy + ditherCopy, clipRgn);
	else
		CopyPixMap(statics.canvasPix, targetPix, &(**targetPix).bounds, &(**targetPix).bounds, srcCopy, clipRgn);
		
	RESTOREGWORLD; // we're done with changing the port
	RESTORECOLORS;
	
	// we're done with the overlay
	UnlockPixels(overlayPix);
	DisposeGWorld(overlayGW);
	overlayPix = NULL;
	
	Display((**controls.iconEditWell).contrlRect, current); // and draw the whole thing
	
}

// __________________________________________________________________________________________
// Name			: icnsEditorClass::HandleText
// Input		: None
// Output		: None
// Description	: Draws a user specified text at the chosen location (the text will be placed
//				  into a selection)

void icnsEditorClass::HandleText(void)
{
	int x, y, width, height, oneLineHeight;
	Rect	tempRect;
	GWorldPtr	tempGW;
	PixMapHandle tempPix;
	
	if (status & hasSelection)
	{
		if (status & selectionFloated)
			DefloatSelection();
		SetEmptyRgn(selectionRgn);
	}
	
	GetDrawingMousePosition(&x, &y, 0);
	
	if (GetTextAttributes(&statics.lastTextSettings) == userCanceledErr)
		return;
	
	SAVEGWORLD;
	SAVECOLORS;
	
	TextFont(statics.lastTextSettings.fontNo);
	TextFace(statics.lastTextSettings.style);
	TextSize(statics.lastTextSettings.size);
	
	height = StringHeight(statics.lastTextSettings.text);
	oneLineHeight = StringHeight("\pa");
	width = StringWidth(statics.lastTextSettings.text);
	SetRect(&tempRect,
			x,
			y - oneLineHeight,
			x + width,
			y + height - oneLineHeight);
	
	NewGWorld(&tempGW, 1, &tempRect, NULL, NULL, 0);
	tempPix = GetGWorldPixMap(tempGW);
	LockPixels(tempPix);
	SetGWorld(tempGW, NULL);
	//SetGWorld(currentGW, NULL);
	
	TextFont(statics.lastTextSettings.fontNo);
	TextFace(statics.lastTextSettings.style);
	TextSize(statics.lastTextSettings.size);
	
	FontInfo info;
	
	GetFontInfo(&info);
	
	EraseRect(&tempRect);
	MoveTo(x, y - info.descent);

	DrawLinedString(statics.lastTextSettings.text);

	BitMapToRegion(selectionRgn, (BitMap*)*tempPix);
	//RectRgn(selectionRgn, &tempRect);
	MagnifySelectionRgn();
	
	UnlockPixels(selectionPix);
	DisposeGWorld(selectionGW);
	NewGWorldUnpadded(&selectionGW, (**currentPix).pixelSize, &tempRect, (**currentPix).pmTable);
	selectionPix = GetGWorldPixMap(selectionGW);
	LockPixels(selectionPix);
	SetGWorld(selectionGW, NULL);
	MoveTo(x, y);
	DrawString("\ptext");
	EraseRect(&tempRect);
	RGBForeColor(&foreColor);
	
	CopyPixMap(tempPix, selectionPix, &tempRect, &tempRect, srcCopy, NULL);
	
	RESTOREGWORLD;
	RESTORECOLORS;
	
	short temp;
	GetFNum("\pGeneva",&temp);
	TextFont(temp);
	TextSize(10);
	TextFace(normal);
	
	UnlockPixels(tempPix);
	DisposeGWorld(tempGW);
	
	status |= selectionFloated;
	
	currentTool = move;
	UpdateToolbar();
}

// __________________________________________________________________________________________
// Name			: icnsEditorClass::HandleRectangle
// Input		: None
// Output		: None
// Description	: Draws a rectangle in the drawing area based on the mouse movements
//				  

void icnsEditorClass::HandleRectangle(void)
{
	int 		x1, y1, // the top left...
				x2, y2; // ...and bottom right coordinates of the rectangle
	Rect		drawRect, // the rectangle which the user has chosen to draw
				currentBounds; // the bounds of the current pixmap (to which the rectangle is confined)
	Point		startMouse, // this is the anchor point of the rectangle
				currentMouse; // this is the free-moving point (which the user moves around)
	OSStatus	err = noErr; // used for error checking
	CTabHandle	overlayCTab; // the the color table for the overlay gworld (foreground color+
							 // trasparent color)
	RgnHandle	savedClip = NULL;
	Pattern		fillPattern;
	
	// The way in which the user draws a rectangle is rather simple. When the user clicks in
	// the drawing that is set as the anchor poin (startMouse). While the button is down, the
	// mouse coordinate controls the opposite corner of the rectangle (currentMouse). There
	// are some modifier options. If shift is down then the rectangle will be constrained to a
	// 1:1 aspect ratio (so a square). If option is down then the anchor will be used as the
	// center of the of the rectangle, and the rectangle itself will be drawin symetrically
	// around it (based on the currentMouse). Of course, if both option and shift are held down
	// then a 1:1 aspect is maintained too.
	
	SAVEGWORLD; 
	SAVECOLORS;
	
	// setting up this variable
	currentBounds = (**currentPix).bounds;
	
	if ((**currentPix).pixelSize <= 8)
	{
		foreColor = GetNearestColor(foreColor, (**currentPix).pmTable);
		backColor = GetNearestColor(backColor, (**currentPix).pmTable);
	}
	
	GetIndPattern(&fillPattern, rDrawingPatterns, pattern + 1);
	
	err = MakeThreeColorTable(&overlayCTab, foreColor, backColor, kNeverUsedColorAsRGB);
	// we must create the color table which is used for the overlay
	if (err != noErr) {status |= outOfMemory; return; }
	
	err = NewGWorld(&overlayGW, 2, &currentBounds, overlayCTab, NULL, 0);
	// and allocate the space for the overlay
	if (err != noErr) {status |= outOfMemory; return; }
	SetGWorld(overlayGW, NULL);
	overlayPix = GetGWorldPixMap(overlayGW);
	LockPixels(overlayPix);
	RGBBackColor(&kNeverUsedColorAsRGB); // we fill it with the transparent color
	EraseRect(&currentBounds);
	GetDrawingMousePosition(&x1, &y1, 0);
	GetMouse(&startMouse); // we're not really using the mouse for determinning the current
	// coordinates, just for seeing if the user moved the mouse (if we need to update)
	
	while (Button()) // while the button is down...
	{
		GetMouse(&currentMouse); // we see if the user moved the mouse
		if (currentMouse.h != startMouse.h || currentMouse.v != startMouse.v)
		{
			// if he did, then we move into action...
			
			GetDrawingMousePosition(&x2, &y2, 0); // we get the location in terms of the drawing
			
			SetRect(&drawRect, x1, y1, x2, y2);
			// and we have the basic rectangle
			
			if (drawRect.left > drawRect.right) // if the left is bigger than the right, then
			// we switch them around 
			{
				drawRect.left = x2;
				drawRect.right = x1;
			}
			drawRect.right++; // we do this since the coordinate is truncated when we divide, 
			
			// same as above, except we do it for the top and bottom	
			if (drawRect.top > drawRect.bottom)
			{
				drawRect.top = y2;
				drawRect.bottom = y1;
			}
			drawRect.bottom++;
				
			if (ISOPTIONDOWN) // if option is down...
			{
				if (ISSHIFTDOWN) //..and shift is down too
				{
					// we need to do a square with the center at x1, y1 and with one of the
					// corners at the position of the mouse
					
					// we determine which displacement (x or y) is bigger and set the square
					// size based on that
					if (abs(x2 - x1) > abs(y2 - y1))
						SetRect(&drawRect,
								x1 - abs(x2 - x1),
								y1 - abs(x2 - x1),
								x1 + abs(x2 - x1),
								y1 + abs(x2 - x1));
					else
						SetRect(&drawRect,
							x1 - abs(y2 - y1),
							y1 - abs(y2 - y1),
							x1 + abs(y2 - y1),
							y1 + abs(y2 - y1));
							
					// then we check if we over the borders, and if we did we must shrink the
					// square (while maintaning the 1:1 aspect ratio of course)
					if (drawRect.top < 0)
					{
						drawRect.bottom += drawRect.top;
						drawRect.right += drawRect.top;
						drawRect.left -= drawRect.top;
						drawRect.top = 0;
					}
					if (drawRect.left < 0)
					{
						drawRect.right += drawRect.left;
						drawRect.bottom += drawRect.left;
						drawRect.top -= drawRect.left;
						drawRect.left = 0;
					}
					if (drawRect.bottom > currentBounds.bottom)
					{
						drawRect.top += drawRect.bottom - currentBounds.bottom;
						drawRect.right -= drawRect.bottom - currentBounds.bottom;
						drawRect.left += drawRect.bottom - currentBounds.bottom;
						drawRect.bottom = currentBounds.bottom;
					}
					if (drawRect.right > currentBounds.right)
					{
						drawRect.left += drawRect.right - currentBounds.right;
						drawRect.bottom -= drawRect.right - currentBounds.right;
						drawRect.top += drawRect.right - currentBounds.right;
						drawRect.right = currentBounds.right;
					}
				}
				else // option is down, but shift isn't
				{
					// now we simple have a rectangle with the center at x1, y1, and one of
					// the corners at x2, y2
					SetRect(&drawRect,
							x1 - abs(x2 - x1),
							y1 - abs(y2 - y1),
							x1 + abs(x2 - x1) + 1,
							y1 + abs(y2 - y1) + 1);
					
					// again we must check to see if went outside the boundaries of the drawing
					if (drawRect.top < 0)
					{
						drawRect.bottom += drawRect.top;
						drawRect.top = 0;
					}
					if (drawRect.left < 0)
					{
						drawRect.right += drawRect.left;
						drawRect.left = 0;
					}
					if (drawRect.bottom > currentBounds.bottom)
					{
						drawRect.top += drawRect.bottom - currentBounds.bottom;
						drawRect.bottom = currentBounds.bottom;
					}
					if (drawRect.right > currentBounds.right)
					{
						drawRect.left += drawRect.right - currentBounds.right;
						drawRect.right = currentBounds.right;
					}
				}
			}
			else // option is not down
			{
				if (ISSHIFTDOWN) // but shift might be
				{
					// basically what we're doing here is seeing where the anchor point is
					// top-left, top-right, bottom-right or bottom-left, and then making the
					// rectangle a square based on which dimension is bigger 
					if ((drawRect.left == x1 && drawRect.top == y1))
						if ((drawRect.right - drawRect.left) > (drawRect.bottom - drawRect.top))
							drawRect.bottom = drawRect.top + (drawRect.right - drawRect.left);
						else
							drawRect.right = drawRect.left + (drawRect.bottom - drawRect.top);
					if ((drawRect.right == x1 + 1 && drawRect.top == y1))
						if ((drawRect.right - drawRect.left) > (drawRect.bottom - drawRect.top))
							drawRect.bottom = drawRect.top + (drawRect.right - drawRect.left);
						else
							drawRect.left = drawRect.right - (drawRect.bottom - drawRect.top);
					if ((drawRect.right == x1 + 1 && drawRect.bottom == y1 + 1))
						if ((drawRect.right - drawRect.left) > (drawRect.bottom - drawRect.top))
							drawRect.top = drawRect.bottom - (drawRect.right - drawRect.left);
						else
							drawRect.left = drawRect.right - (drawRect.bottom - drawRect.top);
					if ((drawRect.left == x1 && drawRect.bottom == y1 + 1))
						if ((drawRect.right - drawRect.left) > (drawRect.bottom - drawRect.top))
							drawRect.top = drawRect.bottom - (drawRect.right - drawRect.left);
						else
							drawRect.right = drawRect.left + (drawRect.bottom - drawRect.top);
				}
			}
			
			// now that we have the rectangle which we wish draw all ready..
			SetGWorld(overlayGW, NULL);
			RGBBackColor(&kNeverUsedColorAsRGB); // we refill the gworld with the transparent color
			EraseRect(&currentBounds);
			RGBForeColor(&foreColor);
			RGBBackColor(&backColor);
			if (currentTool == rectangle)
			{
				if (controls.toolbar.toolMode == filled)
					FillRect(&drawRect, &fillPattern);
				FrameRect(&drawRect); // we draw it
			}
			else
			{
				if (controls.toolbar.toolMode == filled)
					FillOval(&drawRect, &fillPattern);
				FrameOval(&drawRect);
			}
			RESTORECOLORS;
		} // endof: the user moved the mouse
		RESTOREGWORLD;
		Display((**controls.iconEditWell).contrlRect, current);
		// we display the current icon (this adds on the overlay autmatically)
	}
	
	// we finally have a rectangle...
	
	// first we must determine where to draw it...
	if (status & hasSelection)
		if (status & selectionFloated)
			SetGWorld(selectionGW, NULL);
		else
		{
			savedClip = NewRgn();
			GetClip(savedClip);
			SetGWorld(currentGW, NULL);
			SetClip(selectionRgn);
		}
	else
		SetGWorld(currentGW, NULL);
	
	RGBForeColor(&foreColor);
	RGBBackColor(&backColor);
	
	if (currentTool == rectangle)
	{
		if (controls.toolbar.toolMode == filled)
			FillRect(&drawRect, &fillPattern);
		FrameRect(&drawRect); // we draw it
	}
	else
	{
		if (controls.toolbar.toolMode == filled)
			FillOval(&drawRect, &fillPattern);
		FrameOval(&drawRect);
	}
	
	UnlockPixels(overlayPix);
	DisposeGWorld(overlayGW);
	overlayPix = NULL;
	DisposeCTable(overlayCTab);
	
	if (savedClip != NULL)
	{
		SetClip(savedClip);
		DisposeRgn(savedClip);
	}
	
	RESTOREGWORLD;
	RESTORECOLORS;
}

// __________________________________________________________________________________________
// Name			: icnsEditorClass::HandlePolygon
// Input		: None
// Output		: None
// Description	: Draws an irregular polygon based on the vertices which the user selects.

void icnsEditorClass::HandlePolygon(void)
{
	int 		x, y;
	Rect		currentBounds;
	CTabHandle	overlayCTab;
	Point		vertices[255];
	int			noOfVertices;
	OSErr		err;
	bool 		firstTime;
	long		lastClick, clickDelay;
	RgnHandle	savedClip = NULL;
	Pattern		fillPattern;
	
	GetIndPattern(&fillPattern, rDrawingPatterns, pattern + 1);
	
	clickDelay = LMGetDoubleTime();
	
	SAVEGWORLD; // we'll be changing the gworld and colors
	SAVECOLORS;
	
	currentBounds = (**currentPix).bounds;
	
	if ((**currentPix).pixelSize <= 8)
	{
		foreColor = GetNearestColor(foreColor, (**currentPix).pmTable);
		backColor = GetNearestColor(backColor, (**currentPix).pmTable);
	}
	
	// making the color table for the overlay
	err = MakeTwoColorTable(&overlayCTab, foreColor, kNeverUsedColorAsRGB);
	if (err != noErr) {status |= outOfMemory; return; }
	
	// and the overlay itself
	err = NewGWorld(&overlayGW, 1, &currentBounds, overlayCTab, NULL, 0);
	if (err != noErr) {status |= outOfMemory; return; }
	overlayPix = GetGWorldPixMap(overlayGW);
	LockPixels(overlayPix);
	SetGWorld(overlayGW, NULL);
	EraseRect(&currentBounds);
	
	GetDrawingMousePosition(&x, &y, 0);
	vertices[0].h = x; vertices[0].v = y;
	noOfVertices = 0;
	
	firstTime = true;
	
	while (Button()){;}
	
	lastClick = LMGetTicks();
	
	while ((vertices[0].h != vertices[noOfVertices].h) ||
		   (vertices[0].v != vertices[noOfVertices].v) ||
		   firstTime)
	{
		GetDrawingMousePosition(&x, &y, 0);
		
		if (ISSHIFTDOWN)
			ConstrainLine45(vertices[noOfVertices].h, vertices[noOfVertices].v, &x, &y);
		
		SetGWorld(overlayGW, NULL);
		RGBBackColor(&kNeverUsedColorAsRGB); // we refill the gworld with the transparent color
		EraseRect(&currentBounds);
		RGBForeColor(&foreColor);
		MoveTo(vertices[0].h, vertices[0].v);
		
		for (int i=1; i <= noOfVertices; i++)
				LineTo(vertices[i].h, vertices[i].v);
		
		LineTo(x, y);
		RESTOREGWORLD;
		RESTORECOLORS;
		Display((**controls.iconEditWell).contrlRect, current);
		
		if (Button())
		{
			noOfVertices++;
			
			if (firstTime) firstTime = false;
			
			while (Button()){;}
			
			if ((LMGetTicks() - lastClick) <= clickDelay)
			{
				vertices[noOfVertices].h = vertices[0].h;
				vertices[noOfVertices].v = vertices[0].v;
				lastClick = LMGetTicks();
			}
			else
			{
				vertices[noOfVertices].h = x;
				vertices[noOfVertices].v = y;
				lastClick = LMGetTicks();
			}
		}
	}
	
	PolyHandle poly;
	
	poly = OpenPoly();
	
	MoveTo(vertices[0].h, vertices[0].v);
	
	for (int i=1; i <= noOfVertices; i++)
		LineTo(vertices[i].h, vertices[i].v);
		
	ClosePoly();
	
	if (status & hasSelection)
		if (status & selectionFloated)
			SetGWorld(selectionGW, NULL);
		else
		{
			savedClip = NewRgn();
			GetClip(savedClip);
			SetGWorld(currentGW, NULL);
			SetClip(selectionRgn);
		}
	else
		SetGWorld(currentGW, NULL);
		
	RGBForeColor(&foreColor);
	RGBBackColor(&backColor);
	
	if (controls.toolbar.toolMode == filled)
		FillPoly(poly, &fillPattern);
	FramePoly(poly);
	
	KillPoly(poly);
	
	UnlockPixels(overlayPix);
	DisposeGWorld(overlayGW);
	overlayPix = NULL;
	DisposeCTable(overlayCTab);
	
	if (savedClip != NULL)
	{
		SetClip(savedClip);
		DisposeRgn(savedClip);
	}
	
	RESTOREGWORLD;
	RESTORECOLORS;

	Display((**controls.iconEditWell).contrlRect, current);
		
	FlushEvents(mDownMask | mUpMask, 0);
}

// __________________________________________________________________________________________
// Name			: icnsEditorClass::HandleLine
// Input		: None
// Output		: None
// Description	: Draws a line in the drawing area based on mouse movements (constraints to
//				  the drawing angle can be applied by holding down shift).

void icnsEditorClass::HandleLine(void)
{
	int			startX, startY, // the starting (anchor) x and y coordinates
				x, y; // the end (free-moving) x and y coordinates
	Rect		currentBounds; // the dimensions of the current icon size
	OSStatus	err = noErr; // used for error checking
	CTabHandle	overlayCTab; // the color table for the overlay
	
	SAVEGWORLD; // we'll be changing the gworld and colors
	SAVECOLORS;
	
	// setting up this variable
	currentBounds = (**currentPix).bounds;
	
	if ((**currentPix).pixelSize <= 8)
	{
		foreColor = GetNearestColor(foreColor, (**currentPix).pmTable);
		backColor = GetNearestColor(backColor, (**currentPix).pmTable);
	}
	
	// making the color table for the overlay
	err = MakeTwoColorTable(&overlayCTab, foreColor, kNeverUsedColorAsRGB);
	if (err != noErr) {status |= outOfMemory; return; }
	
	// and the overlay itself
	err = NewGWorld(&overlayGW, 1, &currentBounds, overlayCTab, NULL, 0);
	if (err != noErr) {status |= outOfMemory; return; }
	overlayPix = GetGWorldPixMap(overlayGW);
	LockPixels(overlayPix);
	
	// we get the starting position
	GetDrawingMousePosition(&startX, &startY, 0);
	
	while (Button()) // while the button is down
	{
		// we get the new position
		GetDrawingMousePosition(&x, &y, 0);
		if (ISSHIFTDOWN) // if shift is down, we must restrict the line to specific angles
			ConstrainLine45(startX, startY, &x, &y);
		
		// now that we the coordinates
		SetGWorld(overlayGW, NULL); // we go into the overlay
		RGBForeColor(&foreColor);
		RGBBackColor(&kNeverUsedColorAsRGB);
		EraseRect(&currentBounds); // clear the previous contents
		MoveTo(startX, startY);
		LineTo(x, y); // draw the line
		RESTOREGWORLD;
		RESTORECOLORS;
		Display((**controls.iconEditWell).contrlRect, current); // and draw the whole thing
		
	}
	
	RESTOREGWORLD; // we're done with changing the port
	RESTORECOLORS;
	
	if (EmptyRgn(selectionRgn)) // if there isn't a selection
	{
		SetGWorld(currentGW, NULL); // we just draw it in in the main GWorld
		RGBForeColor(&foreColor);
		MoveTo(startX, startY);
		LineTo(x, y);
	}
	else if (status & selectionFloated) // if there's a selection and its floated
	{
		SetGWorld(selectionGW, NULL); // we just draw inside the selection contents
		RGBForeColor(&foreColor);
		MoveTo(startX, startY);
		LineTo(x, y);
	}
	else // otherwise (there's a selection, but it isn't floated) we must restrict the drawing
		 // to the selection contents
	{
		RgnHandle tempRgn; // used to temporarely store the clippin region
		
		SetGWorld(currentGW, NULL);
		
		tempRgn = NewRgn();
		GetClip(tempRgn);
		
		RGBForeColor(&foreColor);
		SetClip(selectionRgn); 
		// this is done by changing the clipping region so that it is the selection region
		MoveTo(startX, startY);
		LineTo(x, y);
		
		SetClip(tempRgn); // of course we must restore the old clipping region
		DisposeRgn(tempRgn);
	}
	
	// we're done with the overlay
	UnlockPixels(overlayPix);
	DisposeGWorld(overlayGW);
	overlayPix = NULL;
	DisposeCTable(overlayCTab);
	
	RESTOREGWORLD;
}

// __________________________________________________________________________________________
// Name			: icnsEditorClass::HandleLasso
// Input		: None
// Output		: None
// Description	: makes a selection in the drawing area by tracing the mouse movements and
//				  tightening around the shape that was encircled

void icnsEditorClass::HandleLasso(void)
{
	Rect			currentBounds; // the bounds of the current pixmap
	int				startX, startY, // the starting x and y coordinates
					mode; // the selection mode
	RgnHandle		lassoSelectionRgn, // the drawn selection shape
					tightenedRgn; 
	OSStatus		err = noErr; // error checking
	SAVEGWORLD;
	SAVECOLORS;
	
	// we get the starting position
	GetDrawingMousePosition(&startX, &startY, magnified);
		
	// we determine the mode
	if (ISSHIFTDOWN && (status & hasSelection))
		mode = additive;
	else if (ISOPTIONDOWN && (status & hasSelection))
		mode = subtractive;
	else
		mode = normal;
	
	if (mode == normal)
	{
		Point theMouse;
		
		theMouse.h = startX;
		theMouse.v = startY;
		
		if (PtInRgn(theMouse, selectionRgn))
		{
			if (status & selectionFloated)
				HandleMove();
			else
				DragSelection(startX, startY);
			return;
		}
	}
		
	// we defloat the selection if we need to
	if ((status & selectionFloated) && (mode == normal || mode == additive))
		DefloatSelection();
	
	// we deselect the current selection if we need to
	if (mode == normal)
		SetEmptyRgn(selectionRgn);
	
	// we get the current bounds, but we want them at the magnified resolution 
	currentBounds = (**currentPix).bounds;
	SetRect(&currentBounds,
			currentBounds.left * magnification,
			currentBounds.top * magnification,
			currentBounds.right * magnification,
			currentBounds.bottom * magnification);
	
	// we create the overlay
	err = NewGWorld(&overlayGW, 1, &currentBounds, NULL, NULL, 0);
	if (err != noErr) {status |= outOfMemory; return; }
	SetGWorld(overlayGW, NULL);
	EraseRect(&currentBounds);
	overlayPix = GetGWorldPixMap(overlayGW);
	LockPixels(overlayPix);
	
	
	MoveTo(startX, startY);
	
	RESTOREGWORLD;
	
	if (controls.toolbar.lassoMode == freehand)
		HandleFreehandLasso();
	else
		HandlePolygonalLasso();
		
	SetGWorld(overlayGW, NULL);
	
	// we connect it back to the starting point
	LineTo(startX, startY);
	
	//SetGWorld(il32GW, NULL);
	
	// we create these regions
	lassoSelectionRgn = NewRgn();
	
	
	// we get the overall shape of the selection
	Make1BitMask(overlayPix, overlayPix, currentBounds);
	
	// and convert it to a region
	err = BitMapToRegion(lassoSelectionRgn, (BitMap*)*overlayPix);
	
	// and shrink it down to the size of the current pixmap
	MapRgn(lassoSelectionRgn, &currentBounds, &(**currentPix).bounds);
	
	//RectRgn(lassoSelectionRgn, &(**currentPix).bounds);
	
	tightenedRgn = TightenLasso(lassoSelectionRgn);
	
	switch (mode)
	{
		case additive: UnionRgn(selectionRgn, tightenedRgn, selectionRgn); break;
		case subtractive: DiffRgn(selectionRgn, tightenedRgn, selectionRgn); break;
		case normal : CopyRgn(tightenedRgn, selectionRgn); break;
	}
	
	// we must also have the magnified shape
	MagnifySelectionRgn();
	
	// dispose with the regions
	DisposeRgn(tightenedRgn);
	DisposeRgn(lassoSelectionRgn);
	
	// and with the overlay
	UnlockPixels(overlayPix);
	DisposeGWorld(overlayGW);
	overlayPix = NULL;
	
	RESTOREGWORLD;
	RESTORECOLORS;
}

void icnsEditorClass::HandleFreehandLasso(void)
{
	int x, y;
	
	SAVEGWORLD;
	
	while (Button())
	{
		SetGWorld(overlayGW, NULL);
		// and we just trace the position
		GetDrawingMousePosition(&x, &y, magnified);
		LineTo(x, y);
		RESTOREGWORLD;
		// and keep the display updated
		Display((**controls.iconEditWell).contrlRect, current);
	}
}

void icnsEditorClass::HandlePolygonalLasso(void)
{
	int 		x, y;
	Rect		currentBounds;
	Point		vertices[255];
	int			noOfVertices;
	bool 		firstTime;
	long		lastClick, clickDelay;
	
	clickDelay = LMGetDoubleTime()/2;
	
	SAVEGWORLD; // we'll be changing the gworld and colors
	SAVECOLORS;
	
	currentBounds = (**overlayPix).bounds;
	
	GetDrawingMousePosition(&x, &y, magnified);
	vertices[0].h = x; vertices[0].v = y;
	noOfVertices = 0;
	
	firstTime = true;
	
	while (Button()){;}
	
	lastClick = LMGetTicks();
	
	while ((vertices[0].h > vertices[noOfVertices].h + 3) ||
		   (vertices[0].h < vertices[noOfVertices].h - 3) ||
		   (vertices[0].v > vertices[noOfVertices].v + 3) ||
		   (vertices[0].v < vertices[noOfVertices].v - 3) ||
		   firstTime)
	{
		GetDrawingMousePosition(&x, &y, magnified);
		
		if (ISSHIFTDOWN)
			ConstrainLine45(vertices[noOfVertices].h, vertices[noOfVertices].v, &x, &y);
		
		SetGWorld(overlayGW, NULL);
		BackColor(whiteColor);
		ForeColor(blackColor);
		//RGBBackColor(&kNeverUsedColorAsRGB); // we refill the gworld with the transparent color
		EraseRect(&currentBounds);
		//RGBForeColor(&foreColor);
		MoveTo(vertices[0].h, vertices[0].v);
		
		for (int i=1; i <= noOfVertices; i++)
				LineTo(vertices[i].h, vertices[i].v);
		
		LineTo(x, y);
		RESTOREGWORLD;
		RESTORECOLORS;
		Display((**controls.iconEditWell).contrlRect, current);
		
		if (Button())
		{
			noOfVertices++;
			
			if (firstTime) firstTime = false;
			
			while (Button()){;}
			
			if ((LMGetTicks() - lastClick) <= clickDelay)
			{
				vertices[noOfVertices].h = vertices[0].h;
				vertices[noOfVertices].v = vertices[0].v;
				lastClick = LMGetTicks();
			}
			else
			{
				vertices[noOfVertices].h = x;
				vertices[noOfVertices].v = y;
				lastClick = LMGetTicks();
			}
		}
	}	
	
	RESTOREGWORLD;
	RESTORECOLORS;
	
	FlushEvents(mDownMask | mUpMask, 0);
}


RgnHandle icnsEditorClass::TightenLasso(RgnHandle lassoSelectionRgn)
{
	RgnHandle 		tightenedRgn;
	ColorSearchUPP	maskColorSearchUPP;
	GrafPtr			temp;
	Rect			tempRect;
	
	tightenedRgn = NewRgn();
	// then we calculate the tightened selection shape
	tempRect = (**lassoSelectionRgn).rgnBBox;
	OffsetRect(&tempRect, -tempRect.left, -tempRect.top);
	temp = CreateGrafPort(&tempRect);

	maskColorSearchUPP = NewColorSearchProc(MaskColorSearch);
	
	CalcCMask((BitMap*)*currentPix,
			  &temp->portBits,
			  &(**lassoSelectionRgn).rgnBBox,
			  &tempRect,
			  &backColor,
			  maskColorSearchUPP,
			  0);
	
	BitMapToRegion(tightenedRgn, &temp->portBits);
	OffsetRgn(tightenedRgn, (**lassoSelectionRgn).rgnBBox.left, (**lassoSelectionRgn).rgnBBox.top);
	SectRgn(tightenedRgn, lassoSelectionRgn, tightenedRgn);
	
	DisposeRoutineDescriptor(maskColorSearchUPP);
	
	DisposeGrafPort(temp);
	
	return tightenedRgn;
}

// __________________________________________________________________________________________
// Name			: icnsEditorClass::HandleMagicWand
// Input		: None
// Output		: None
// Description	: makes a selection in the drawing area by selecting colors the same as the
//			      ones in the starting spot

void icnsEditorClass::HandleMagicWand()
{
	GrafPtr		selectionShape; // the selection shape (to be converted into a region)
	Rect		currentBounds; // dimensions of the current drawing
	int			x, y; // click location
	int			mode; // the selection mode
	RgnHandle	tempRgn; // this is where the new selection will be temporarely stored 
	OSStatus	err = noErr; // error checking
	
	SAVEGWORLD;
	SAVECOLORS;
	
	GetDrawingMousePosition(&x, &y, 0); // we get the click position
	
	// getting the selection mode
	if (ISSHIFTDOWN && (status & hasSelection))
		mode = additive;
	else if (ISOPTIONDOWN && (status & hasSelection))
		mode = subtractive;
	else
		mode = normal;
		
	if (mode == normal)
	{
		Point theMouse;
		
		theMouse.h = x;
		theMouse.v = y;
		
		if (PtInRgn(theMouse, selectionRgn))
		{
			if (status & selectionFloated)
				HandleMove();
			else
				DragSelection(x, y);
			return;
		}
	}
	
	// depending on the mode we have to defloat
	if ((status & selectionFloated) && (mode == normal || mode == additive))
		DefloatSelection();	
	
	// setting up the variables
	currentBounds = (**currentPix).bounds;
	tempRgn = NewRgn();

	// we make the temporary gworld
	selectionShape = CreateGrafPort(&currentBounds);
	
	
	
	if (!(status & selectionFloated)) // if there isn't a floated selection
	{
		// we must get the new selection from the current GWorld
		SetGWorld(currentGW, NULL);
		SeedCFill((BitMap*)*currentPix,
			  &selectionShape->portBits,
			  &currentBounds,
			  &currentBounds,
			  x, y,
			  0,
			  0);
	}
	else
	{
		// otherwise we get it from the selection GWorld
		SetGWorld(selectionGW, NULL);
		SeedCFill((BitMap*)*selectionPix,
			  &selectionShape->portBits,
			  &currentBounds,
			  &currentBounds,
			  x, y,
			  0,
			  0);
	}
	
	// we convert the pixmap into a region to get the selection shape
	BitMapToRegion(tempRgn, &selectionShape->portBits); 
			  
	RESTOREGWORLD;
	RESTORECOLORS;
	
	// based on the mode we either set the new region to what we have just determined, or we
	// perform the required opearations
	switch (mode)
	{
		case normal: CopyRgn(tempRgn, selectionRgn); break;
		case additive : UnionRgn(tempRgn, selectionRgn, selectionRgn); break;
		case subtractive : DiffRgn(selectionRgn, tempRgn, selectionRgn); break;
	}
	
	// we need the enlarged selection shape too
	MagnifySelectionRgn();
	
	// we're done with this
	DisposeRgn(tempRgn);
	
	// and this too
	DisposeGrafPort(selectionShape);
}

// __________________________________________________________________________________________
// Name			: icnsEditorClass::HandleMove
// Input		: None
// Output		: None
// Description	: Moves the current selection (if any) by following the mouse cursor while
//				  the mouse button is down.

bool icnsEditorClass::HandleMove(void)
{
	int		anchorX, anchorY, // previous location
			x, y, // current location
			startX, startY; // original location
	
	if (EmptyRgn(selectionRgn))
		return false;
	
	if (!(status & selectionFloated)) 
		FloatSelection(); // we must float the selection in order to be able to move it
		
	if (ISOPTIONDOWN) // if option is down, we must leave a copy behind
	{
		SAVECOLORS;
		CopyPixMap(selectionPix,
				   currentPix,
				   &(**selectionPix).bounds,
				   &(**selectionPix).bounds,
				   srcCopy,
				   selectionRgn);
		RESTORECOLORS;
	}
	
	// this is the original position
	GetDrawingMousePosition(&startX, &startY, 0);
	
	// and for the moment the previous one too
	GetDrawingMousePosition(&anchorX, &anchorY, 0);
	
	while (Button()) // we move while the button is down
	{
		GetDrawingMousePosition(&x, &y, noLimit);
		if ((x < 0) || (y < 0) || (x > (**currentPix).bounds.right) || (y > (**currentPix).bounds.bottom))
		{
			EventRecord event;
			
			// reset the selection to its original location
			OffsetRgn(selectionRgn, startX - anchorX, startY - anchorY);
			OffsetRgn(selectionMagnifiedRgn,
					  (startX - anchorX) * magnification,
					  (startY - anchorY) * magnification);
					  
			OffsetRect(&(**selectionPix).bounds, startX - anchorX, startY - anchorY);
			OffsetRgn(selectionGW->visRgn, startX - anchorX, startY - anchorY);
			
			Display((**controls.iconEditWell).contrlRect, current);
			
			GetMouse(&event.where);
			LocalToGlobal(&event.where);
			dragSrcRect = (**controls.iconEditWell).contrlRect;
			
			GWorldPtr tempGW;
			PixMapHandle tempPix;
			Rect	bounds;
			RgnHandle dragRgn;
			
			bounds = (**selectionPix).bounds;
			bounds.top *= magnification;
			bounds.left *= magnification;
			bounds.bottom *= magnification;
			bounds.right *= magnification;
			
			NewGWorld(&tempGW, (**selectionPix).pixelSize, &bounds, (**selectionPix).pmTable, NULL, 0);
			tempPix = GetGWorldPixMap(tempGW);
			LockPixels(tempPix);
			SAVECOLORS;
			CopyPixMap(selectionPix, tempPix, &(**selectionPix).bounds, &bounds, srcCopy, NULL);
			RESTORECOLORS;
			
			dragRgn = NewRgn();
			CopyRgn(selectionRgn, dragRgn);
			MapRgn(dragRgn, &(**selectionPix).bounds, &bounds);
			
			DragPixMap(&event, tempPix, dragRgn, selectionPix, selectionRgn, selection);
			
			UnlockPixels(tempPix);
			DisposeGWorld(tempGW);
			return false;		  
		}
		else
		{
			// and get the new position
			if (ISSHIFTDOWN) // angle based constraints, very similar to the line constraints
				ConstrainLine45(startX, startY, &x, &y);
			
			// we must move both the normal and the magnified selection shape
			OffsetRgn(selectionRgn, x - anchorX, y - anchorY);
			OffsetRgn(selectionMagnifiedRgn,
					 (x - anchorX) * magnification,
					 (y - anchorY) * magnification);
			
			// we must also shift the bounds of the selection contents, and the visible region
			OffsetRect(&(**selectionPix).bounds, x - anchorX, y - anchorY);
			OffsetRgn(selectionGW->visRgn, x - anchorX, y - anchorY);
			
			// now we must update the whole thing
			Display((**controls.iconEditWell).contrlRect, current);
			
			// and set the current coordinates as the old ones
			anchorX = x;
			anchorY = y;
		}
	}
	
	return true;
}

// __________________________________________________________________________________________
// Name			: icnsEditorClass::FloatSelection
// Input		: None
// Output		: None
// Description	: takes the pixel data from the drawing area, and moves it to a layer that
//				  "floats" above it, so that it can be moved without distrubing the rest of
//				  of the drawing

void icnsEditorClass::FloatSelection(void)
{
	SAVEGWORLD;
	SAVECOLORS;
	
	// we need to update the selection contents with the new dimensions
	UnlockPixels(selectionPix);
	DisposeGWorld(selectionGW);
	NewGWorldUnpadded(&selectionGW,
				(**currentPix).pixelSize,
				&(**selectionRgn).rgnBBox,
				(**currentPix).pmTable);
	selectionPix = GetGWorldPixMap(selectionGW);
	LockPixels(selectionPix);
	
	// copy the selection contents into it
	CopyPixMap(currentPix,
			   selectionPix,
			   &(**selectionRgn).rgnBBox,
			   &(**selectionRgn).rgnBBox,
			   srcCopy,
			   selectionRgn);
	
	// and leave the "hole" behind
	SetGWorld(currentGW, NULL);
	RGBBackColor(&backColor);
	EraseRgn(selectionRgn);
	
	RESTOREGWORLD;
	RESTORECOLORS;
	
	status |= selectionFloated;
}

// __________________________________________________________________________________________
// Name			: icnsEditorClass::DefloatSelection
// Input		: None
// Output		: None
// Description	: If there is a floated selection (see above) this function merges it back
//				  with the drawing.

void icnsEditorClass::DefloatSelection(void)
{
	if (!(status & selectionFloated)) // nothing to defloat
		return;
		
	SAVEGWORLD;
	SAVECOLORS;
	
	SetGWorld(selectionGW, NULL);
	
	// we copy the contents back into the drawing
	CopyPixMap(selectionPix,
			   currentPix,
			   &(**currentPix).bounds,
			   &(**currentPix).bounds,
			   srcCopy,
			   selectionRgn);
	// and reset the bounds of the selection gworld
	OffsetRect(&(**selectionPix).bounds,
				-(**selectionPix).bounds.left,
				-(**selectionPix).bounds.top);
				
	RESTOREGWORLD;
	RESTORECOLORS;
	
	// not floated anymore
	status &= ~selectionFloated;
}

// __________________________________________________________________________________________
// Name			: icnsEditorClass::HandleMarquee
// Input		: None
// Output		: None
// Description	: The most basic selection tool, this one makes a selection based on a rectangle
//				  with its endpoints at the beginning and end of the period while the mouse
//				  button was down.

void icnsEditorClass::HandleMarquee(void)
{
	int 		x1, y1, // the starting coordinates of the rectangle
				x2, y2; // the ending coordimates
	Rect		marqueeRect, // the rectangle the selection
				currentBounds; // the dimensions of the current pixmap
	Point		startMouse, // the starting coordinates
				currentMouse; // the current coordinates
	RgnHandle	savedRgn; // the saved selection shape
	int			mode; // the mode in which the selection operates
	bool		optionKeyOriginallyDown = false, // were these modifiers held down before
				shiftKeyOriginallyDown = false;  // the mouse buttom was?
	
	// we get the starting point, etc. (this is very similar to the rectangle function, only
	// differences will be noted).
	GetDrawingMousePosition(&x1, &y1, 0);
	GetMouse(&startMouse);
	
	// this function works in a very similar fashion with the rectangle tool, except that the
	// final result is a selection. Also, the modifiers (option and shift) have different effects
	// if they were held before or after the selection began, so that must be taken into account
		
	// we detemine the selection mode (additive, subtractive or normal) based on the modifiers
	if (ISSHIFTDOWN && (status & hasSelection))
	{
		mode = additive;
		shiftKeyOriginallyDown = true;
	}
	else if (ISOPTIONDOWN && (status & hasSelection))
	{
		mode = subtractive;
		optionKeyOriginallyDown = true;
	}
	else
		mode = normal;
	
	// if we're in these two modes we must save the current selection
	if (mode == normal)
	{
		Point theMouse;
		
		theMouse.h = x1;
		theMouse.v = y1;
		
		if (PtInRgn(theMouse, selectionRgn))
		{
			if (status & selectionFloated)
				HandleMove();
			else
				DragSelection(x1, y1);
			return;
		}
	}
	else
	{
		savedRgn = NewRgn();
		CopyRgn(selectionRgn, savedRgn);
	}
	
	// if there's a floated selection and we're in these modes...
	if ((status & selectionFloated) && (mode == normal || mode == additive))
		DefloatSelection(); // we must defloat it
	

	
	while (Button())
	{
		GetDrawingMousePosition(&x2, &y2, 0);
		GetMouse(&currentMouse);
		if (currentMouse.h != startMouse.h || currentMouse.v != startMouse.v)
		{
			SetRect(&marqueeRect, x1, y1, x2, y2);
			if (marqueeRect.left > marqueeRect.right)
			{
				marqueeRect.left = x2;
				marqueeRect.right = x1;
			}
			
			marqueeRect.right++;
				
			if (marqueeRect.top > marqueeRect.bottom)
			{
				marqueeRect.top = y2;
				marqueeRect.bottom = y1;
			}
			
			marqueeRect.bottom++;
			
			if (!ISOPTIONDOWN) optionKeyOriginallyDown = false;
			if (!ISSHIFTDOWN) shiftKeyOriginallyDown = false;
			// if shift or option were down originally, and now they're not, we must turn off
			// their respective variables
			
			if (ISOPTIONDOWN && !optionKeyOriginallyDown)
			// if option has been pressed after the selection process began
			{
				currentBounds = (**currentPix).bounds;
				if (ISSHIFTDOWN && !shiftKeyOriginallyDown)
				// same thing for shift
				{
					if (abs(x2 - x1) > abs(y2 - y1))
						SetRect(&marqueeRect,
								x1 - abs(x2 - x1),
								y1 - abs(x2 - x1),
								x1 + abs(x2 - x1),
								y1 + abs(x2 - x1));
					else
						SetRect(&marqueeRect,
							x1 - abs(y2 - y1),
							y1 - abs(y2 - y1),
							x1 + abs(y2 - y1),
							y1 + abs(y2 - y1));
					if (marqueeRect.top < 0)
					{
						marqueeRect.bottom += marqueeRect.top;
						marqueeRect.right += marqueeRect.top;
						marqueeRect.left -= marqueeRect.top;
						marqueeRect.top = 0;
					}
					if (marqueeRect.left < 0)
					{
						marqueeRect.right += marqueeRect.left;
						marqueeRect.bottom += marqueeRect.left;
						marqueeRect.top -= marqueeRect.left;
						marqueeRect.left = 0;
					}
					if (marqueeRect.bottom > currentBounds.bottom)
					{
						marqueeRect.top += marqueeRect.bottom - currentBounds.bottom;
						marqueeRect.right -= marqueeRect.bottom - currentBounds.bottom;
						marqueeRect.left += marqueeRect.bottom - currentBounds.bottom;
						marqueeRect.bottom = currentBounds.bottom;
					}
					if (marqueeRect.right > currentBounds.right)
					{
						marqueeRect.left += marqueeRect.right - currentBounds.right;
						marqueeRect.bottom -= marqueeRect.right - currentBounds.right;
						marqueeRect.top += marqueeRect.right - currentBounds.right;
						marqueeRect.right = currentBounds.right;
					}
				}
				else
				{
					SetRect(&marqueeRect,
							x1 - abs(x2 - x1),
							y1 - abs(y2 - y1),
							x1 + abs(x2 - x1) + 1,
							y1 + abs(y2 - y1) + 1);
					if (marqueeRect.top < 0)
					{
						marqueeRect.bottom += marqueeRect.top;
						marqueeRect.top = 0;
					}
					if (marqueeRect.left < 0)
					{
						marqueeRect.right += marqueeRect.left;
						marqueeRect.left = 0;
					}
					if (marqueeRect.bottom > currentBounds.bottom)
					{
						marqueeRect.top += marqueeRect.bottom - currentBounds.bottom;
						marqueeRect.bottom = currentBounds.bottom;
					}
					if (marqueeRect.right > currentBounds.right)
					{
						marqueeRect.left += marqueeRect.right - currentBounds.right;
						marqueeRect.right = currentBounds.right;
					}
				}
			}
			else
			{
				if (ISSHIFTDOWN && !shiftKeyOriginallyDown)
				// again, if shift has been pressed after the selection process began
				{
					if ((marqueeRect.left == x1 && marqueeRect.top == y1))
						if ((marqueeRect.right - marqueeRect.left) > (marqueeRect.bottom - marqueeRect.top))
							marqueeRect.bottom = marqueeRect.top + (marqueeRect.right - marqueeRect.left);
						else
							marqueeRect.right = marqueeRect.left + (marqueeRect.bottom - marqueeRect.top);
					if ((marqueeRect.right == x1 + 1 && marqueeRect.top == y1))
						if ((marqueeRect.right - marqueeRect.left) > (marqueeRect.bottom - marqueeRect.top))
							marqueeRect.bottom = marqueeRect.top + (marqueeRect.right - marqueeRect.left);
						else
							marqueeRect.left = marqueeRect.right - (marqueeRect.bottom - marqueeRect.top);
					if ((marqueeRect.right == x1 + 1 && marqueeRect.bottom == y1 + 1))
						if ((marqueeRect.right - marqueeRect.left) > (marqueeRect.bottom - marqueeRect.top))
							marqueeRect.top = marqueeRect.bottom - (marqueeRect.right - marqueeRect.left);
						else
							marqueeRect.left = marqueeRect.right - (marqueeRect.bottom - marqueeRect.top);
					if ((marqueeRect.left == x1 && marqueeRect.bottom == y1 + 1))
						if ((marqueeRect.right - marqueeRect.left) > (marqueeRect.bottom - marqueeRect.top))
							marqueeRect.top = marqueeRect.bottom - (marqueeRect.right - marqueeRect.left);
						else
							marqueeRect.right = marqueeRect.left + (marqueeRect.bottom - marqueeRect.top);
				}
			}
				
			RectRgn(selectionRgn, &marqueeRect);
			// now that we have a rectangle, we can convert it into a region
			
			// and if we're in a special mode, we must perform those operations on the selection
			if (mode == additive)
				UnionRgn(selectionRgn, savedRgn, selectionRgn);
			else if (mode == subtractive)
				DiffRgn(savedRgn, selectionRgn, selectionRgn);
			
			// we also need the enlarged selection for displaying
			MagnifySelectionRgn();
		}
		else if (mode == normal) // if the starting and current positions are the same
			SetEmptyRgn(selectionRgn);
		
		Display((**controls.iconEditWell).contrlRect, current);
		// we need to update the whole thing
	}
}

void icnsEditorClass::DragSelection(int anchorX, int anchorY)
{
	int		x, y, // current location
			startX, startY; // original location
	
	startX = anchorX;
	startY = anchorY;
	
	while (Button()) // we move while the button is down
	{
		GetDrawingMousePosition(&x, &y, 0);

		// and get the new position
		if (ISSHIFTDOWN) // angle based constraints, very similar to the line constraints
			ConstrainLine45(startX, startY, &x, &y);
		
		// we must move both the normal and the magnified selection shape
		OffsetRgn(selectionRgn, x - anchorX, y - anchorY);
		OffsetRgn(selectionMagnifiedRgn,
				 (x - anchorX) * magnification,
				 (y - anchorY) * magnification);
		
		Display((**controls.iconEditWell).contrlRect, current);
		
		// and set the current coordinates as the old ones
		anchorX = x;
		anchorY = y;
	}
	
	return;
}

// __________________________________________________________________________________________
// Name			: icnsEditorClass::MagnifySelectionRgn
// Input		: None
// Output		: None
// Description	: This function takes the 1:1 selection shape (stored in selectionRgn) and
//				  enlarges it (by using the magnification field) so that it can be displayed
//				  on the screen 

void icnsEditorClass::MagnifySelectionRgn(void)
{
	Rect		tempRect; // the rectangle used for enlarging
	RgnHandle	tempRgn; // the region used for "cutting out"
	
	if (EmptyRgn(selectionRgn)) // if the selection is empty, then we don't do anything
		return;
	
	// we get the target dimensions (original * magnification)
	tempRect = (**selectionRgn).rgnBBox;
	if ((**statics.preferences.data).flags & prefsDrawGrid)
	{
		SetRect(&tempRect,
				tempRect.left * magnification,
				tempRect.top * magnification,
				tempRect.right * magnification,
				tempRect.bottom * magnification);
	
		CopyRgn(selectionRgn, selectionMagnifiedRgn); // we copy the normal selection shape
		MapRgn(selectionMagnifiedRgn, &(**selectionRgn).rgnBBox, &tempRect); // and enlarge it
		
		RgnHandle tempRgn;
		
		tempRgn = NewRgn();
		CopyRgn(selectionMagnifiedRgn, tempRgn);
		OffsetRgn(tempRgn, 1, 1);
		UnionRgn(tempRgn, selectionMagnifiedRgn, selectionMagnifiedRgn);
		
		if (status & selectionFloated)
			tempRect = (**selectionPix).bounds;
		else
			tempRect = (**currentPix).bounds;
		SetRect(&tempRect,
				tempRect.left * magnification,
				tempRect.top * magnification,
				tempRect.right * magnification,
				tempRect.bottom * magnification);
		
		RectRgn(tempRgn, &tempRect);
		SectRgn(selectionMagnifiedRgn, tempRgn, selectionMagnifiedRgn);
		
		DisposeRgn(tempRgn);
	}
	else
	{
		SetRect(&tempRect,
				tempRect.left * magnification,
				tempRect.top * magnification,
				tempRect.right * magnification,
				tempRect.bottom * magnification);
	
		CopyRgn(selectionRgn, selectionMagnifiedRgn); // we copy the normal selection shape
		MapRgn(selectionMagnifiedRgn, &(**selectionRgn).rgnBBox, &tempRect); // and enlarge it
	}
	
	// we also need to "cut out" so that the region we have left over is one pixel thick
	// on all sides (since we'll be filling it with the selection pattern)
	tempRgn = NewRgn();
	CopyRgn(selectionMagnifiedRgn, tempRgn);
	InsetRgn(tempRgn, 1, 1);
	DiffRgn(selectionMagnifiedRgn, tempRgn, selectionMagnifiedRgn);
	DisposeRgn(tempRgn);
}

// __________________________________________________________________________________________
// Name			: icnsEditorClass::HandleFilling
// Input		: None
// Output		: None
// Description	: the function simulates a paint bucket tool, which fills with the foreground
//				  color all neighboring areas that have the same color as the pixel where
//				  the click was

void icnsEditorClass::HandleFilling()
{
	int				x, y; // the click location
	GWorldPtr		targetGW;
	PixMapHandle	targetPix; // pixmap where the filling will take place
	OSStatus		err = noErr; // used for error checking
	RgnHandle		clipRgn = NULL, tempRgn;
	GrafPtr			fillShape;
	Pattern			fillPattern;
	
	SAVEGWORLD;
	
	GetDrawingMousePosition(&x, &y, 0); // we get the click location
	
	if (!(EmptyRgn(selectionRgn))) // if there is a selection
	{
		Point	tempPoint;
		tempPoint.h = x;
		tempPoint.v = y;
		if (!PtInRgn(tempPoint, selectionRgn))
		// we reject the coordinates if they're outside the selection
		{
			RESTOREGWORLD;
			return;
		}
		
		// if the selection is floated we'll be drawing in the selection
		if (status & selectionFloated)
		{
			targetPix = selectionPix;
			targetGW = selectionGW;
		}
		else // otherwise it'll be in the main drawing
		{
			targetGW = currentGW;
			targetPix = currentPix;
			clipRgn = selectionRgn;
		}
	}
	else // no selection...
	{
		targetGW = currentGW;
		targetPix = currentPix;
	}
	
	// we make the temporary gworld
	fillShape = CreateGrafPort(&(**targetPix).bounds);
	
	SetGWorld(targetGW, NULL);
	SeedCFill((BitMap*)*targetPix,
		  &fillShape->portBits,
		  &(**targetPix).bounds,
		  &(**targetPix).bounds,
		  x, y,
		  0,
		  0);
	
	tempRgn = NewRgn();
	// we convert the pixmap into a region to get the selection shape
	BitMapToRegion(tempRgn, &fillShape->portBits);
	
	if (clipRgn != NULL)
		SectRgn(tempRgn, clipRgn, tempRgn);
		
	SetGWorld(targetGW, NULL);
	
	SAVECOLORS;
	
	RGBForeColor(&foreColor);
	RGBBackColor(&backColor);
	
	GetIndPattern(&fillPattern, rDrawingPatterns, pattern + 1);
	
	FillRgn(tempRgn, &fillPattern);
	
	RESTORECOLORS;
	RESTOREGWORLD;
}

// __________________________________________________________________________________________
// Name			: icnsEditorClass::HandleEyeDropper
// Input		: None
// Output		: None
// Description	: this function "picks up" the color of the pixel underneath the click, and
//				  sets it to the foreground color (or background if the option modifier is
//				  held down).

void icnsEditorClass::HandleEyeDropper(void)
{
	int x, y;
	Point clickLocation;
	SAVEGWORLD;
	
	GetDrawingMousePosition(&x, &y, 0); // we find out where the user clicked
	clickLocation.h = x;
	clickLocation.v = y;
	
	if ((status & selectionFloated) && (PtInRgn(clickLocation, selectionRgn)))
		SetGWorld(selectionGW, NULL);
	else
		SetGWorld(currentGW, NULL); // go into the gworld
	
	if (ISOPTIONDOWN && oldTool == noTool) // if option is down and we're not in toggle mode
		GetCPixel(x, y, &backColor); // we pit the color we pick up into the background color
	else
		GetCPixel(x, y, &foreColor); // otherwise it goes into the foreground color
	RESTOREGWORLD;
	
	Draw1Control(controls.patterns);
	Draw1Control(controls.colorSwatch.control); // we need to redraw the swatch
}

// __________________________________________________________________________________________
// Name			: icnsEditorClass::HandlePen
// Input		: None
// Output		: None
// Description	: this function simulates a pen tool, which draws a trail of pixels in the
//				  foreground color following the cursor, while the mouse button is held down
// Notes		: if the current tool is the eraser, then the pixels are drawn in the background
//				  color

void icnsEditorClass::HandlePen(void)
{
	Point			mousePosition, // the current mouse position
					oldMouse = {-1, -1}; // the previous mouse position
	Rect			displayRect; // the place where the result should be displayed
	int 			x, y, // the coordinates of the current position
					oldX = -1, oldY = -1, // the previous coordinates
					startX, startY; // the starting coordinates (used when constraining)
	GWorldPtr		targetGW; // the gworld where we'll be drawing
	PixMapHandle	targetPix; // the pixmap for the gworld above
	RgnHandle		savedClip = NULL; // used for limiting the drawing to the selection
	
	SAVEGWORLD;
	SAVECOLORS;
	
	GetDrawingMousePosition(&oldX, &oldY, 0);
	GetDrawingMousePosition(&startX, &startY, 0);
	
	if (status & selectionFloated) // if there's a floated selection
	{
		targetGW = selectionGW; // we draw in in
		targetPix = selectionPix;
	}
	else
	{
		if (!EmptyRgn(selectionRgn)) // if there's a non-floated selection
		{
			SetGWorld(currentGW, NULL); // we must limit the drawing (by changing the clipping
			savedClip = NewRgn(); // region) to the selection
			GetClip(savedClip);
			SetClip(selectionRgn);
			RESTOREGWORLD;
		}
		targetGW = currentGW; // we'll be drawing in the main GWorld
		targetPix = currentPix;
	}
	
	// setting up this variable
	displayRect = (**(controls.iconEditWell)).contrlRect;
	
	SetGWorld(targetGW, NULL);
	if (currentTool == pen)
	// pen mode: we draw in the foreground color (normally, toggle if curent color is foreground)
	{
		Point mouseLoc;
		RGBColor temp, nearestToFore;
		
		mouseLoc.h = oldX;
		mouseLoc.v = oldY;
		
		if (((status & selectionFloated) && PtInRgn(mouseLoc, selectionRgn)) ||
			!(status & selectionFloated))
		{
			GetCPixel(oldX, oldY, &temp);
			if ((**currentPix).pixelSize == 32)
				nearestToFore = foreColor;
			else
				nearestToFore = GetNearestColor(foreColor, (**currentPix).pmTable);
			
			if (AreEqualRGB(temp, nearestToFore))
				RGBForeColor(&backColor);
			else
				RGBForeColor(&foreColor);
		}
		else
			RGBForeColor(&foreColor);
	}
	else if (currentTool == eraser) // eraser mode: we draw in the background color
	{
		RGBForeColor(&backColor);
		PenSize(2, 2);
	}

	MoveTo(oldX, oldY); // we must draw the first pixel (which is on no matter what)
	LineTo(oldX, oldY);
	
	RESTOREGWORLD;
	
	Display(displayRect, current); // and display these results
	
	SetGWorld(targetGW, NULL);
	
	while (Button()) // while the button is down
	{
		GetMouse(&mousePosition);
		if (mousePosition.h != oldMouse.h || mousePosition.v != oldMouse.v)
		// if the user moves the mouse
		{
			oldMouse = mousePosition; // we set the new position as the old one
			RESTOREGWORLD;
			GetDrawingMousePosition(&x, &y, 0); // get the new position in terms of the drawing
			SetGWorld(targetGW, NULL);
			
			if (ISSHIFTDOWN)
				ConstrainLine90(startX, startY, &x, &y);
	
			if (x != oldX || y != oldY) // if the position is different
			{
				LineTo(x, y); // we connect the last coordinate with this one
				RESTOREGWORLD;
				Display(displayRect, current); // and display what we have
				SetGWorld(targetGW, NULL);
				
				oldX = x;
				oldY = y;
			}
		}
	}
	
	if (savedClip != NULL) // if we changed the clipping region
	{
		SetClip(savedClip); // we must restore it
		DisposeRgn(savedClip);
	}
	
	if (currentTool == eraser)
		PenSize(1, 1);
	
	RESTOREGWORLD;
	RESTORECOLORS;
}

// __________________________________________________________________________________________
// Name			: icnsEditorClass::GetDrawingMousePosition
// Input		: flags: specify options for magnifying, restriction...
// Output		: x, y: the coordinates of the mouse position
// Description	: Gets the mouse coordinates in the terms of the position of the window, and
//				  returns them in terms of the drawing area

inline void icnsEditorClass::GetDrawingMousePosition(int *x, int *y, int flags)
{
	Point	mousePosition; // the mouse position in terms of the window
	Rect	editWellRect, // the boundaries of the editing area (the actual control in the window)
			boundsRect; // the boundaries of the editing ares (magnified or not)
	long	returnedPoint; // the "point" that we get from PinRect, upper half is x coordinate,
						   // lower half is y coordinate
	
	SAVEGWORLD; // we'll be changing the port
	
	SetPort(window);
	
	GetMouse(&mousePosition); // in terms of the window
	
	editWellRect = (**(controls.iconEditWell)).contrlRect;
	boundsRect = (**currentPix).bounds;
	
	// we want the coordinates relative to the edit area
	mousePosition.h = mousePosition.h  - editWellRect.left; 
	mousePosition.v = mousePosition.v - editWellRect.top;
	 // if we want the magnified view (so the coordinate range is from 0 to currentSize *
	 // * magnification)
	if (flags & magnified)
	{
		SetRect(&boundsRect,
				boundsRect.left * magnification,
				boundsRect.top * magnification,
				boundsRect.right * magnification,
				boundsRect.bottom * magnification);
	}
	else {
		mousePosition.h = mousePosition.h/magnification;
		mousePosition.v = mousePosition.v/magnification;
	}
	if (!(flags & noLimit))
	{
		returnedPoint = PinRect(&boundsRect, mousePosition); // PinRect restricts the point to the
		// specified rectangle
		*x = returnedPoint & 0x0000FFFF;
		*y = (returnedPoint & 0xFFFF0000) >> 16;
	}
	else
	{
		*x = mousePosition.h;
		*y = mousePosition.v;
	}
	
	RESTOREGWORLD;
}

// __________________________________________________________________________________________
// Name			: icnsEditorClass::SwapForeBackColors
// Input		: None
// Output		: None
// Description	: This function swaps the foreground and background colors

void icnsEditorClass::SwapForeBackColors(void)
{
	RGBColor tempColor; // we're swapping to value, so we need a temporary place to hold one
	
	tempColor = foreColor;
	foreColor = backColor;
	backColor = tempColor;
	
	Draw1Control(controls.patterns);
	Draw1Control(controls.colorSwatch.control); // we're redrawing the control since the
	// colors changed
}

// __________________________________________________________________________________________
// Name			: icnsEditorClass::ResetForeBackColors
// Input		: None
// Output		: None
// Description	: sets the foreground and background colors to their default values (foreground
//				  black, background white).

void icnsEditorClass::ResetForeBackColors(void)
{
	foreColor = kBlackAsRGB;
	backColor = kWhiteAsRGB;
	
	Draw1Control(controls.patterns);
	Draw1Control(controls.colorSwatch.control); // again, we must redraw the control since
	// the colors have changed
}

// __________________________________________________________________________________________
// Name			: icnsEditorClass::Display
// Input		: targetRect: location where the icon data should be displayed (scaling is done
//				  automatically)
//				  source: from which pixmap the pixel data should be taken from
// Output		: None
// Description	: takes the requested icon data, merges it with the selection (if any), and 
//				  copies it to the screen.

void icnsEditorClass::Display(Rect targetRect, long source)
{
	Rect			tempRect; // the target rect moved so that it's top/left corner is at 0, 0
	GWorldPtr		mergeGW; // used when copying the merged icon + mask, if we need to add in
							 // the selection (and thus we need a temporary GWorld)
	PixMapHandle	mergePix = NULL, // the PixMaps corresponding to the above gworlds
					iconSrcPix = NULL, // the sources for the above pixmaps (these are set to
					maskSrcPix = NULL; // point to various PixMaps)
	long			iconName, maskName; // the names for the above pixmaps
	OSStatus		err = noErr; // used for error checking
	BitMap			*target; // the final target for CopyBits
	bool			drawSelection = true, drawGrid = true;
	
	SAVEGWORLD;
	target = &qd.thePort->portBits; // the target is the BitMap associated with the current port
	
	SetGWorld(statics.canvasGW, NULL);
	SAVECOLORS;
	
	tempRect = targetRect;  
	OffsetRect(&tempRect, -tempRect.left, -tempRect.top);
	// we move the tempRect so that it starts at 0, 0
	
	switch (source) // based on the source, we copy the appropriate thing to the canvas (which
					// is then copied to the target). We do this because we do not want flickering
					// when drawing more than one thing (such as floating selection)
	{
		case current:
			// we just copy the current pix
			CopyPixMap(currentPix,
					   statics.canvasPix,
					   &((**currentPix).bounds),
					   &tempRect,
					   srcCopy,
					   NULL);
					 
			if (overlayPix != NULL) // and if there is an overlay we copy that too
			{
				// we set the background color to the transparent color since the transparent mode
				// of CopyBits then knows not to copy that color
				
				// if there is no selection, or if the overlayPix is magnified, then we don't
				// clip when drawing the overlay
				
				drawSelection = false;
				if (!EmptyRgn(selectionRgn))
				{
					drawGrid = false;
					DrawSelection(statics.canvasGW, tempRect, source, true);
				}
				
				if (((**overlayPix).bounds.right == magnification * (**currentPix).bounds.right))
				{
					if (drawGrid)
					{
						DrawGrid(statics.canvasGW, tempRect);
						drawGrid = false;
					}
					
					CopyPixMap(overlayPix,
						   statics.canvasPix,
						   &(**overlayPix).bounds,
						   &tempRect,
						   srcXor,
						   NULL);
				}	
				else
				{
					Rect magnificationRect;
					RgnHandle	maskRgn;
					
					RGBBackColor(&kNeverUsedColorAsRGB);
					
					// we get the target dimensions (original * magnification)
					magnificationRect = (**selectionRgn).rgnBBox;	
					SetRect(&magnificationRect,
							magnificationRect.left * magnification,
							magnificationRect.top * magnification,
							magnificationRect.right * magnification,
							magnificationRect.bottom * magnification);
					
					maskRgn = NewRgn();
					CopyRgn(selectionRgn, maskRgn); // we copy the normal selection shape
					MapRgn(maskRgn, &(**selectionRgn).rgnBBox, &magnificationRect); // and enlarge it
					InsetRgn(maskRgn, 1, 1);
					if (EmptyRgn(selectionRgn))
						CopyPixMap(overlayPix,
							   statics.canvasPix,
							   &(**overlayPix).bounds,
							   &tempRect,
							   transparent,
							   NULL);
					else
						CopyPixMap(overlayPix,
							   statics.canvasPix,
							   &(**overlayPix).bounds,
							   &tempRect,
							   transparent,
							   maskRgn);
							   
					if (!EmptyRgn(selectionRgn))
					{
						DrawGrid(statics.canvasGW, tempRect);
						drawGrid = false;
						FillRgn(selectionMagnifiedRgn, &statics.selectionPatterns[currentSelectionPattern]);
					}
							  
					BackColor(whiteColor); // we set the background color back to white
					
					DisposeRgn(maskRgn);
				}
			}
			break;
		// the rest are just normal conversions of various sources to the appropriate PixMap
		// to be copied into the target
		case il32: 
			CopyPixMap(il32Pix,statics.canvasPix,&largeIconRect,&tempRect,srcCopy,NULL);
			break;
		case is32:
			CopyPixMap(is32Pix,statics.canvasPix,&smallIconRect,&tempRect,srcCopy,NULL);		 
			break;
		case l8mk:
			CopyPixMap(l8mkPix,statics.canvasPix,&largeIconRect,&tempRect,srcCopy,NULL);		 
			break;
		case s8mk:
			CopyPixMap(s8mkPix,statics.canvasPix,&smallIconRect,&tempRect,srcCopy,NULL);		 
			break;
		case icl8:
			CopyPixMap(icl8Pix,statics.canvasPix,&largeIconRect,&tempRect,srcCopy,NULL);		 
			break;
		case ics8:
			CopyPixMap(ics8Pix,statics.canvasPix,&smallIconRect,&tempRect,srcCopy,NULL);		 
			break;
		case icl4:
			CopyPixMap(icl4Pix,statics.canvasPix,&largeIconRect,&tempRect,srcCopy,NULL);		 
			break;
		case ics4:
			CopyPixMap(ics4Pix,statics.canvasPix,&smallIconRect,&tempRect,srcCopy,NULL);		 
			break;
		case icni:
			CopyPixMap(icniPix,statics.canvasPix,&largeIconRect,&tempRect,srcCopy,NULL);		 
			break;
		case icsi:
			CopyPixMap(icsiPix,statics.canvasPix,&smallIconRect,&tempRect,srcCopy,NULL);		 
			break;
		case icnm:
			CopyPixMap(icnmPix,statics.canvasPix,&largeIconRect,&tempRect,srcCopy,NULL);		 
			break;
		case icsm:
			CopyPixMap(icsmPix,statics.canvasPix,&smallIconRect,&tempRect,srcCopy,NULL);		 
			break;
		case ih32:
			CopyPixMap(ih32Pix,statics.canvasPix,&hugeIconRect,&tempRect,srcCopy,NULL);		 
			break;
		case h8mk:
			CopyPixMap(h8mkPix,statics.canvasPix,&hugeIconRect,&tempRect,srcCopy,NULL);		 
			break;
		case ichi:
			CopyPixMap(ichiPix,statics.canvasPix,&hugeIconRect,&tempRect,srcCopy,NULL);		 
			break;
		case ichm:
			CopyPixMap(ichmPix,statics.canvasPix,&hugeIconRect,&tempRect,srcCopy,NULL);		 
			break;
		case ich8:
			CopyPixMap(ich8Pix,statics.canvasPix,&hugeIconRect,&tempRect,srcCopy,NULL);		 
			break;
		case ich4:
			CopyPixMap(ich4Pix,statics.canvasPix,&hugeIconRect,&tempRect,srcCopy,NULL);		 
			break;
		default:
			// if the source was something else, then we assume the user wants to merge (and
			// that the source long is composed of an icon and mask source)
			
			// based on the bits set we determine the source icon and mask
			if (source & ih32) 		iconSrcPix = ih32Pix, iconName = ih32;
			else if (source & il32) iconSrcPix = il32Pix, iconName = il32;
			else if (source & is32) iconSrcPix = is32Pix, iconName = is32;
			else if (source & ich8) iconSrcPix = ich8Pix, iconName = ich8;
			else if (source & icl8) iconSrcPix = icl8Pix, iconName = icl8;
			else if (source & ics8) iconSrcPix = ics8Pix, iconName = ics8;
			else if (source & ich4) iconSrcPix = ich4Pix, iconName = ich4;
			else if (source & icl4) iconSrcPix = icl4Pix, iconName = icl4;
			else if (source & ics4) iconSrcPix = ics4Pix, iconName = ics4;
			else if (source & ichi) iconSrcPix = ichiPix, iconName = ichi;
			else if (source & icni) iconSrcPix = icniPix, iconName = icni;
			else if (source & icsi) iconSrcPix = icsiPix, iconName = icsi;
			
			if (source & h8mk) 		maskSrcPix = h8mkPix, maskName = h8mk;
			else if (source & l8mk) maskSrcPix = l8mkPix, maskName = l8mk;
			else if (source & s8mk) maskSrcPix = s8mkPix, maskName = s8mk;
			else if (source & ichm) maskSrcPix = ichmPix, maskName = ichm;
			else if (source & icnm) maskSrcPix = icnmPix, maskName = icnm;
			else if (source & icsm) maskSrcPix = icsmPix, maskName = icsm;
			
			// we copy the background from where we will be eventually drawing. we do this
			// because we'll be using masks, and thus the background should be visible through
			// the "holes" in the mask
			CopyBits(target,
					 (BitMap*)*statics.canvasPix,
					 &targetRect,
					 &tempRect,
					 srcCopy,
					 NULL);
			
			if (status & selectionFloated) // if there is a floated selection, then we must
										   // merge its contents with the mask or icon 
			{
				if (currentPixName == iconName)
				{
					err = NewGWorld(&mergeGW, // we must allocate the GWorld
									(**iconSrcPix).pixelSize,
									&(**iconSrcPix).bounds,
									(**iconSrcPix).pmTable,
									NULL,
									0);
					if (err != noErr) // if there was a problem, then return
						{status |= outOfMemory; RESTOREGWORLD; RESTORECOLORS; return; }
					mergePix = GetGWorldPixMap(mergeGW);
					LockPixels(mergePix);
					CopyPixMap(iconSrcPix, // and copy the icon into the gwolrd
							   mergePix,
							   &(**iconSrcPix).bounds,
							   &(**mergePix).bounds,
							   srcCopy,
							   NULL);

					DrawSelection(mergeGW, (**mergePix).bounds, iconName, false);
					// and then draw the selection in it
					
					iconSrcPix = mergePix; // and set it as the source
				}
				else // same as above, except for the mask
				{
					err = NewGWorld(&mergeGW, 
									(**maskSrcPix).pixelSize,
									&(**maskSrcPix).bounds,
									(**maskSrcPix).pmTable,
									NULL,
									0);
					if (err != noErr)
						{status |= outOfMemory; RESTOREGWORLD; RESTORECOLORS; return; }
					mergePix = GetGWorldPixMap(mergeGW);
					LockPixels(mergePix);
					CopyPixMap(maskSrcPix,
							   mergePix,
							   &(**maskSrcPix).bounds,
							   &(**mergePix).bounds,
							   srcCopy,
							   NULL);
					
					DrawSelection(mergeGW, (**mergePix).bounds, maskName, false);
					
					maskSrcPix = mergePix;
				}
				drawSelection = false;
			}

			CopyDeepMask((BitMap*)*iconSrcPix, // here we do the actual copying, using
						 (BitMap*)*maskSrcPix, // CopyDeepMask to do the merging
						 (BitMap*)*statics.canvasPix,
						 &(**iconSrcPix).bounds,
						 &(**maskSrcPix).bounds,
						 &tempRect,
						 srcCopy,
						 NULL);
						 
			if (source & selected)
			{
				GWorldPtr tempGW;
				PixMapHandle tempPix;
				CTabHandle	grayscaleTable;
				Rect	bounds;
				unsigned char* cursor;
				long	rowBytes;
				//SAVECOLORS;
				
				bounds = (**maskSrcPix).bounds;
				
				grayscaleTable = GetCTable(40);
				
				NewGWorld(&tempGW, 8, &bounds, grayscaleTable, NULL, 0);
				tempPix = GetGWorldPixMap(tempGW);
				LockPixels(tempPix);
				CopyPixMap(maskSrcPix,
						   tempPix,
						   &bounds,
						   &bounds,
						   srcCopy,
						   NULL);
						 
				
				rowBytes = (**tempPix).rowBytes & 0x3FFF;
				
				cursor = (unsigned char*)(**tempPix).baseAddr;
				
				for (int i=0; i < (bounds.bottom - bounds.top) * rowBytes; i++)
				{
					*cursor = (*cursor)/2;
					cursor++;
				}
				
				CopyDeepMask((BitMap*)*maskSrcPix,
							 (BitMap*)*tempPix,
							 (BitMap*)*statics.canvasPix,
							 &bounds,
							 &bounds,
							 &tempRect,
							 srcCopy,
							 NULL);
				
				UnlockPixels(tempPix);
				DisposeGWorld(tempGW);
				
				DisposeCTable(grayscaleTable);
				
				//RESTORECOLORS;
			}
			if (mergePix != NULL) // if it was allocated...
			{
				UnlockPixels(mergePix);
				DisposeGWorld(mergeGW); // we must dispose of it
			}
			break;
			
	}
	
	if (!EmptyRgn(selectionRgn) && // if there is a selection
		drawSelection) // and it hasn't been drawn already
		DrawSelection(statics.canvasGW, tempRect, source, drawGrid); // draw it now
	else if (drawGrid && (source == current))
		DrawGrid(statics.canvasGW, tempRect);
	
	CopyBits((BitMap *)*statics.canvasPix, // now we're done, we can copy the result
			 target,					   // to the target
			 &tempRect,
			 &targetRect,
			 srcCopy,
			 window->visRgn);
			  
	RESTORECOLORS;
	RESTOREGWORLD;
}

// __________________________________________________________________________________________
// Name			: icnsEditorClass::DrawSelection
// Input		: targetGW: GWorld where the selection should be drawn
//				  targetRect: rectangle in the target GWorld where the selection should be
//				  drawn
//				  targetName: name of the target GWorld (can't just compare the pointers
//				  since the current gworld shows up in the edit well, and in the display
//				  and the selection must be drawn differently).
// Output		: None
// Description	: This function draws the selection contents and the selection outline
//				  (if the target is the current GWorld) into the target GWorld

void icnsEditorClass::DrawSelection(GWorldPtr targetGW, Rect targetRect, int targetName, bool drawGrid)
{
	SAVEGWORLD;
	SAVECOLORS;
	
	if (targetName == current)
	// if we're drawing in the current pixmap then we need to draw the marquee pattern as well
	{
		if (LMGetTicks() > lastSelectionTicks + kSelectionDrawingDelay)
		// if it's time to update the selection pattern...
		{
			lastSelectionTicks = LMGetTicks();
			currentSelectionPattern++;
		}
		
		// if we've gone past the end, then we must cycle back to the beginning (the marquee
		// pattern is a repeating aninamtion)
		if (currentSelectionPattern >= kNoOfSelectionPatterns) currentSelectionPattern = 0;
		
		SetGWorld(targetGW, NULL);
		// we'll be drawing the selection now
		
		if (status & selectionFloated) // if there's a floated selection, then we must
									   // draw its contents as well
		{
			RgnHandle	enlargedSelectionRgn; // this is the selection region enlarged to the
											  // current magnification level
			Rect		tempRect; // rectangle for resizing the region
			
			tempRect = (**selectionRgn).rgnBBox; // here we're getting the final, enlarged
			SetRect(&tempRect,					 // region size
					tempRect.left * magnification,
					tempRect.top * magnification,
					tempRect.right * magnification,
					tempRect.bottom * magnification);
					
			enlargedSelectionRgn = NewRgn(); // and now we copy the region and enlarge it
			CopyRgn(selectionRgn, enlargedSelectionRgn);
			MapRgn(enlargedSelectionRgn, &(**selectionRgn).rgnBBox, &tempRect);
			
			
			// finally we can copy the selection contents, clipped to the selection shape
			// to the target
			CopyPixMap(selectionPix,
					  targetGW->portPixMap,
					  &(**currentPix).bounds,
					  &targetRect,
					  srcCopy,
					  enlargedSelectionRgn);
					  
			if (drawGrid)
				DrawGrid(targetGW, targetRect);
					  
			DisposeRgn(enlargedSelectionRgn); // we're done with the selection
		}
		// this fills the selection shape with the marquee pattern
		
		if (drawGrid)
			DrawGrid(targetGW, targetRect);
		
		FillRgn(selectionMagnifiedRgn, &statics.selectionPatterns[currentSelectionPattern]);
	}
	else if ((targetName & currentPixName) && // if the target is the current pix
			(status & selectionFloated)) // and there is a selection
			CopyPixMap(selectionPix, // we just draw the selection contents, with no marquee
					  targetGW->portPixMap, // pattern
					  &(**currentPix).bounds,
					  &targetRect,
					  srcCopy,
					  selectionRgn);
					 
	RESTOREGWORLD;
	RESTORECOLORS;
}

void icnsEditorClass::DrawGrid(GWorldPtr targetGW, Rect targetRect)
{
	if ((**statics.preferences.data).flags & prefsDrawGrid)
	{
		SAVEGWORLD;
		SAVECOLORS;
		
		SetGWorld(targetGW, NULL);
		ForeColor(whiteColor);
		
		for (int x =targetRect.left + magnification; x < targetRect.right; x+=magnification)
		{
			MoveTo(x, targetRect.top);
			LineTo(x, targetRect.bottom);
		}
		
		for (int y =targetRect.top + magnification; y < targetRect.bottom; y+=magnification)
		{
			MoveTo(targetRect.left, y);
			LineTo(targetRect.right, y);
		}
		
		RESTOREGWORLD;
		RESTORECOLORS;
	}
}

// __________________________________________________________________________________________
// Name			: icnsEditorClass::Load
// Input		: None
// Output		: None
// Description	: loads the icon (by calling the Load function of the base class), erases the
//				  previous states, and makes the current one the first one (since this is as
//				  far back as we should go).

void icnsEditorClass::Load()
{
	
	icnsClass::Load(); // we call the base function
	
	PostLoad();
}

void icnsEditorClass::LoadICO()
{
	icnsClass::LoadICO(); // we call the base function
	
	colors = winColors;
	
	PostLoad();
}

void icnsEditorClass::LoadTIFF()
{
	
	icnsClass::LoadTIFF(); // we call the base function
	
	PostLoad();
}

void icnsEditorClass::PostLoad()
{
	int iconPopup, maskPopup;
	
	if (members & il32)	{currentPix = il32Pix; currentGW = il32GW; currentPixName = il32;}
	else if (members & ih32) {currentPix = ih32Pix; currentGW = ih32GW; currentPixName = ih32;}
	else if (members & is32) {currentPix = is32Pix; currentGW = is32GW; currentPixName = is32;}
	
	else if (members & icl8) {currentPix = icl8Pix; currentGW = icl8GW; currentPixName = icl8;}
	else if (members & ich8) {currentPix = ich8Pix; currentGW = ich8GW; currentPixName = ich8;}
	else if (members & ics8) {currentPix = ics8Pix; currentGW = ics8GW; currentPixName = ics8;}
	
	else if (members & icl4) {currentPix = icl4Pix; currentGW = icl4GW; currentPixName = icl4;}
	else if (members & ich4) {currentPix = ich4Pix; currentGW = ich4GW; currentPixName = ich4;}
	else if (members & ics4) {currentPix = ics4Pix; currentGW = ics4GW; currentPixName = ics4;}
	
	else if (members & icni) {currentPix = icniPix; currentGW = icniGW; currentPixName = icni;}
	else if (members & ichi) {currentPix = ichiPix; currentGW = ichiGW; currentPixName = ichi;}
	else if (members & icsi) {currentPix = icsiPix; currentGW = icsiGW; currentPixName = icsi;}
	
	else if (members & l8mk) {currentPix = l8mkPix; currentGW = l8mkGW; currentPixName = l8mk;}
	else if (members & h8mk) {currentPix = h8mkPix; currentGW = h8mkGW; currentPixName = h8mk;}
	else if (members & s8mk) {currentPix = s8mkPix; currentGW = s8mkGW; currentPixName = s8mk;}
	
	else if (members & icnm) {currentPix = icnmPix; currentGW = icnmGW; currentPixName = icnm;}
	else if (members & ichm) {currentPix = ichmPix; currentGW = ichmGW; currentPixName = ichm;}
	else if (members & icsm) {currentPix = icsmPix; currentGW = icsmGW; currentPixName = icsm;}
	
	if ((members & il32) || (members & is32) || (members & ih32)) iconPopup = k32BitIcon;
	else if ((members & icl8) || (members & ics8) || (members & ich8)) iconPopup = k8BitIcon;
	else if ((members & icl4) || (members & ics4) || (members & ich4)) iconPopup = k4BitIcon;
	else if ((members & icni) || (members & icsi) || (members & ichi)) iconPopup = k1BitIcon;
	
	if ((members & l8mk) || (members & s8mk) || (members & h8mk)) maskPopup = k8BitMask;
	else if ((members & icnm) || (members & icsm) || (members & ichm)) maskPopup = k1BitMask;
	
	SetControlValue(controls.display.iconPopup, iconPopup);
	SetControlValue(controls.display.maskPopup, maskPopup);
	
	DisposeStates(); // the saved states don't apply anymore
	delete currentState; // including the curren one
	
	currentState = new drawingStateClass(NULL, this); // we instead save the state of the 
	firstState = currentState;						  // newly loaded icon
	
	RefreshWindowTitle(); // and refresh the window title since the source file and/or icon 
						  // name have changed
	
	status |= resized;
}

// __________________________________________________________________________________________
// Name			: icnsEditorClass::LoadFileIcon
// Input		: None
// Output		: None
// Description	: loads the icon (by calling the Load function of the base class), erases the
//				  previous states, and makes the current one the first one (since this is as
//				  far back as we should go).

void icnsEditorClass::LoadFileIcon()
{
	icnsClass::LoadFileIcon(); // we call the base function
	
	PostLoad();
}

// __________________________________________________________________________________________
// Name			: icnsEditorClass::RefreshWindowTitle
// Input		: None
// Output		: None
// Description	: Sets the editor window title to the <filename>: <icon name>

void icnsEditorClass::RefreshWindowTitle()
{
	Str255	windowTitle; // the new window title
		
	CopyString(windowTitle, "\p"); // we set back to nothing
	AppendString(windowTitle, srcFileSpec.name); // put in the file name
	AppendString(windowTitle, "\p (");
	AppendString(windowTitle, statics.iconPartNames[NearestPowerOf2(currentPixName)]);
	AppendString(windowTitle, "\p)");
	
	SetWTitle(window, windowTitle); // and set the title
}

// __________________________________________________________________________________________
// Name			: icnsEditorClass::Save
// Input		: None
// Output		: None
// Description	: saves the current icon to either the current selected file, and disposes of
//				  the current 

void icnsEditorClass::Save(void)
{
	if (!((**statics.preferences.data).flags & prefsDontCheckSync))
	{
		if ((members & l8mk) || !IsEmptyPixMap(l8mkPix))
			CheckMaskSync(l8mkPix, icnmPix, eLargeMaskSync);
		
		if ((members & s8mk) || !IsEmptyPixMap(s8mkPix))
			CheckMaskSync(s8mkPix, icsmPix, eSmallMaskSync);
			
		if ((members & h8mk) || !IsEmptyPixMap(h8mkPix))
			CheckMaskSync(h8mkPix, ichmPix, eHugeMaskSync);
	}

	if ((**statics.preferences.data).flags & prefsGenerateOldStyle)
		icnsClass::Save(generateOldStyle); // this is from the base class
	else
		icnsClass::Save(0);
	
	status &= ~needToSave; // we don't need to save (at least until the user modifies the
						   // icon)
	DisposeStates(); // we don't need the saved states either, since we assume that that he
					 // likes what he has so far
					 
	Draw1Control(controls.display.preview);
}

void icnsEditorClass::SaveICO(void)
{
	icnsClass::SaveICO(); // this is from the base class
	
	status &= ~needToSave; // we don't need to save (at least until the user modifies the
						   // icon)
	DisposeStates(); // we don't need the saved states either, since we assume that that he
					 // likes what he has so far
					 
	Draw1Control(controls.display.preview);
}

void icnsEditorClass::CheckMaskSync(PixMapHandle basePix, PixMapHandle maskPix, int errorString)
{
	GWorldPtr tempGW;
	PixMapHandle tempPix;
	short		itemHit;
	Str255		text, yesButton, noButton;
	Rect		bounds;
	
	
	bounds = (**basePix).bounds;
	
	NewGWorld(&tempGW, 1, &bounds, NULL, NULL, 0);
	tempPix = GetGWorldPixMap(tempGW);
	LockPixels(tempPix);
	
	Mask8ToMask1(basePix, tempPix);
	
	
	
	if (!SamePixMap(tempPix, maskPix))
	{
		GetIndString(text, rBasicStrings, errorString);
		GetIndString(yesButton, rBasicStrings, eYesButton);
		GetIndString(noButton, rBasicStrings, eNoButton);
		itemHit = statics.DisplayAlert(text, yesButton, noButton, NULL);
		if (itemHit == 1)
		{
			SAVECOLORS;
			CopyPixMap(tempPix, maskPix, &bounds, &bounds, srcCopy, NULL);
			RESTORECOLORS;
		}
		
	}
	UnlockPixels(tempPix);
	DisposeGWorld(tempGW);
}

// __________________________________________________________________________________________
// Name			: icnsEditorClass::HandleKeyDown
// Input		: eventPtr: pointer to the EventRecord that describes the event which happened
// Output		: None
// Description	: based on the event that happened different actions can take place (such
//				  as the switching of tools, nudging of the selection, etc.)

void icnsEditorClass::HandleKeyDown(EventRecord *eventPtr)
{
	char	theKey;
	int		xOffset = 0, yOffset = 0;
	
	theKey = eventPtr->message & charCodeMask; // the key that was pressed
	
	switch (theKey)
	{
		case 'n': currentTool = pen; break; // these are the tool shortcuts
		case 'e': currentTool = eraser; break;
		case 'i': currentTool = eyeDropper; break;
		case 'k': currentTool = fill; break;
		case 'm': currentTool = marquee; break;
		case 'v': currentTool = move; break;
		case 'l': currentTool = lasso; break;
		case 'w': currentTool = magicWand; break;
		case 'y': currentTool = line; break;
		case 'r': currentTool = rectangle; break;
		case 'o': currentTool = oval; break;
		case 'p': currentTool = polygon; break;
		case 'g': currentTool = gradient; break;
		case 't': currentTool = text; break;
		case 'x': SwapForeBackColors(); break;
		case 'd': ResetForeBackColors(); break;
		case '	': ToggleIconMask(); break;
		case kDeleteKey : // delete key either
			if ((eventPtr->modifiers & optionKey) != 0) // fills if option is down
				Fill();
			else // or clears if it isn't
				Clear();
			break;
		case kUpArrowCharCode : xOffset = 0; yOffset = -1; break; // the arrow keys move the
		case kDownArrowCharCode : xOffset = 0; yOffset = 1; break; // current selection around
		case kLeftArrowCharCode : xOffset = -1; yOffset = 0; break;
		case kRightArrowCharCode : xOffset = 1; yOffset = 0; break;
	}
	UpdateToolbar(); // the current tool might have changed, so we need to update the toolbar
	
	if ((xOffset != 0 || yOffset != 0) && !EmptyRgn(selectionRgn))
	// if the user pressed one of the arrow keys and there is a selection														
	{
		if ( (eventPtr->modifiers & shiftKey) != 0) // if shift is down...
		{
			xOffset *= 10; // the offsets are magnified by 10
			yOffset *= 10;
		}
		
		if (currentTool == move || (status & selectionFloated))
		// if the move tool is selected we offset the selection shape. the same also happens
		// if we have a floated selection and we're using the marquee tool
		{
			if (!(status & selectionFloated)) // since we'll be moving the selection contents
			// we need to float the selection to make it glide over the rest of the picture
				FloatSelection();
			if ( (eventPtr->modifiers & optionKey) != 0)
			// if option key is down then we should leave a copy behind (standard mac behavior)
				CopyPixMap(selectionPix,
						   currentPix,
						   &(**selectionPix).bounds,
						   &(**selectionPix).bounds,
						   srcCopy,
						   selectionRgn);
			// for the actual moving, we need to offset the selection region, the magnified
			// selection region and the actual selection contents
			OffsetRgn(selectionRgn, xOffset, yOffset);
			OffsetRgn(selectionMagnifiedRgn, xOffset * magnification, yOffset * magnification);
			OffsetRect(&(**selectionPix).bounds, xOffset, yOffset);
		}
		else
		{
			// here we just move the selection shape
			OffsetRgn(selectionRgn, xOffset, yOffset);
			OffsetRgn(selectionMagnifiedRgn, xOffset * magnification, yOffset * magnification);
		}
		
		// we've changed the drawing, so we must save the new state
		currentState = new drawingStateClass(currentState, this);
		
		// and we've modifed the drawing and it also needs updating
		status |= needToSave;
		status |= needsUpdate;
	}
}

void icnsEditorClass::ToggleIconMask(void)
{
	GWorldPtr		iconGW, maskGW;
	PixMapHandle	iconPix, maskPix;
	long			iconName, maskName;
	
	
	status |= skipState;
	currentState = new drawingStateClass(currentState, this);
	status &= ~skipState;
	
	GetCurrentIconMask(&iconPix, &iconGW, &iconName, &maskPix, &maskGW, &maskName);
	
	if (iconName == currentPixName)
	{
		currentPix = maskPix;
		currentGW = maskGW;
		currentPixName = maskName;
	}
	else
	{
		currentPix = iconPix;
		currentGW = iconGW;
		currentPixName = iconName;
	}
	
	members |= currentPixName;
	
	currentState = new drawingStateClass(currentState, this);
	
	Draw1Control(controls.iconEditWell);
	Draw1Control(controls.display.iconDisplay);
	Draw1Control(controls.display.maskDisplay);
	
	RefreshWindowTitle();
}

void icnsEditorClass::SaveState(GWorldPtr gWorld, PixMapHandle pix, long name)
{
	GWorldPtr tempGW;
	PixMapHandle tempPix;
	long	tempPixName;
	
	status |= (skipState | dontRestoreCurrentPix);
	
	tempGW = currentGW; tempPix = currentPix; tempPixName = currentPixName;
	
	currentGW = gWorld; currentPix = pix; currentPixName = name;
	currentState = new drawingStateClass(currentState, this);
	
	currentGW = tempGW; currentPix = tempPix; currentPixName = tempPixName;
	
	status &= ~(skipState | dontRestoreCurrentPix);
}

// __________________________________________________________________________________________
// Name			: icnsEditorClass::Undo
// Input		: None
// Output		: None
// Description	: this function sets the current state to the previous stored one and restores
//				  it.				  

void icnsEditorClass::Undo()
{
	if (currentState->previousState != NULL)
	// this function shouldn't be called if undo is impossible, but just to be sure
	{
		currentState = currentState->previousState; // we simply move back in the linked list
		currentState->RestoreState(this); // and restore the state

		status |= needsUpdate; // we also need to update
		
		if (status & resized) // if the saved state needs resizing, we must refresh the whole window
			Refresh();
		
		// if the restored state needed to be skipped, then we must call ourselves
		// usually we want to do this if we had an intermediary state, such as when switching
		// between icon depths/sizes, or when we did a drag-and-drop
		if (status & skipState)
			Undo();
	}
	
	RefreshWindowTitle();
}

// __________________________________________________________________________________________
// Name			: icnsEditorClass::Redo
// Input		: None
// Output		: None
// Description	: we set the current state to the next one, and restore it				  


void icnsEditorClass::Redo()
{
	// save as above, except we move forward through the linked list
	if (currentState->nextState != NULL)
	{
		currentState = currentState->nextState;
		currentState->RestoreState(this);
		
		status |= needsUpdate;
		
		if (status & resized)
			Refresh();
		
		if (status & skipState)
			Redo();
	}
	
	RefreshWindowTitle();
}

// __________________________________________________________________________________________
// Name			: icnsEditorClass::Cut
// Input		: None
// Output		: None
// Description	: this function handles a cut command (the selection contents are copied into 
//				  the clipboard (a copy command) and then the previous location of the selection
//				  is cleared (if it wasn't a floated selection) or the selection is set to
//				  nothing (if it was floated))
// Notes		: we assume that there was a selection in the first place (although nothing
//				  bad should happen if there isn't).

void icnsEditorClass::Cut()
{
	
	Copy(copyNormally); // first we copy the selection contents
	
	if (!(status & selectionFloated))
	// if there wasn't a floated selection, then we must leave a "hole" in the drawing
	{
		SAVEGWORLD;
		SetGWorld(currentGW, NULL);
		RGBBackColor(&backColor); // fileed with the background color
		EraseRgn(selectionRgn);
		RESTOREGWORLD;
	}
	
	OffsetRect(&(**selectionPix).bounds, // we must reset the selectionPix to 0, 0
			  -(**selectionPix).bounds.left,
			  -(**selectionPix).bounds.top);
	SetEmptyRgn(selectionRgn); // no more selection
	status &= ~hasSelection;
	status &= ~selectionFloated;
	
	status |= needToSave; // we've made modifications
	status |= needsUpdate;
	
	currentState = new drawingStateClass(currentState, this);
	
}

// __________________________________________________________________________________________
// Name			: icnsEditorClass::Copy
// Input		: None
// Output		: None
// Description	: this function implements a copy command, which takes the current contents of
//				  the selection (floated or otherwise) and copies them in the clipboard, so
//				  that they can be pasted into other programs (or Icon Mangler itself).


void icnsEditorClass::Copy(int copyMode)
{
	unsigned long	picSize;
	PicHandle		pic;
	OSStatus		err;
			
	switch (copyMode)
	{
		case copyNormally:
			SAVEGWORLD;
			
			SetGWorld(currentGW, NULL);
			
			if (status & selectionFloated) // if there is a selection
				PixMapToPicture(selectionPix, selectionRgn, &pic); // we copy from there
			else
				PixMapToPicture(currentPix, selectionRgn, &pic); // otherwise from the image
			
			ZeroScrap(); // we reset the clipboard (scrap)
			picSize = GetHandleSize((Handle)pic); // the size of the picture
			
			err = PutScrap(picSize, 'PICT', *pic); // we put the picture into the clipboard
			if (err != noErr)
				DisplayValue(err); // if there was a problem (unlikely) we display the error code
			
			KillPicture(pic);
			
			RESTOREGWORLD;
			break;
		case copyAsIconAndMask:
			GWorldPtr		iconGW, maskGW;
			PixMapHandle	iconPix, maskPix;
			long			iconName, maskName;
			
			GetCurrentIconMask(&iconPix, &iconGW, &iconName, &maskPix, &maskGW, &maskName);
			
			pic = ARGBPixMapToPicture(iconPix, maskPix);
			
			ZeroScrap(); // we reset the clipboard (scrap)
			picSize = GetHandleSize((Handle)pic); // the size of the picture
			
			err = PutScrap(picSize, 'PICT', *pic); // we put the picture into the clipboard
			if (err != noErr)
				DisplayValue(err); // if there was a problem (unlikely) we display the error code
			
			KillPicture(pic);
			
			break;
		case copyIconFamily:
			int			icnsSize;
			IconFamilyHandle icnsHandle;
			
			icnsHandle = Geticns();
			
			SetResInfo((Handle)icnsHandle, ID, name);
			icnsSize = GetHandleSize((Handle)icnsHandle);
			
			ZeroScrap();
			
			PutScrap(icnsSize, 'icns', *icnsHandle);
			
			DisposeHandle((Handle)icnsHandle);
			
			break;
	}
}

void icnsEditorClass::SaveMembers()
{
	SaveState(ih32GW, ih32Pix, ih32);
	SaveState(il32GW, il32Pix, il32);
	SaveState(is32GW, is32Pix, is32);
	
	SaveState(h8mkGW, h8mkPix, h8mk);
	SaveState(l8mkGW, l8mkPix, l8mk);
	SaveState(s8mkGW, s8mkPix, s8mk);
	
	SaveState(ich8GW, ich8Pix, ich8);
	SaveState(icl8GW, icl8Pix, icl8);
	SaveState(ics8GW, ics8Pix, ics8);
	
	SaveState(ich4GW, ich4Pix, ich4);
	SaveState(icl4GW, icl4Pix, icl4);
	SaveState(ics4GW, ics4Pix, ics4);
	
	SaveState(ichiGW, ichiPix, ichi);
	SaveState(icniGW, icniPix, icni);
	SaveState(icsiGW, icsiPix, icsi);
	
	SaveState(ichmGW, ichmPix, ichm);
	SaveState(icnmGW, icnmPix, icnm);
	SaveState(icsmGW, icsmPix, icsm);
}

// __________________________________________________________________________________________
// Name			: icnsEditorClass::Paste
// Input		: None
// Output		: None
// Description	: this function imports the contents of the clipboard, and sets them as a 
//				  floating selection (using the InsertFromPicture command)


void icnsEditorClass::Paste(int pasteType)
{
	if (pasteType == pasteIconFamily)
	{
		IconFamilyHandle clipIconFamily;
		long offset, familySize;
		
		familySize = GetScrap(NULL, 'icns', &offset);
		if (familySize > 0)
		{
			SaveMembers();
			
			clipIconFamily = (IconFamilyHandle)NewHandle(familySize);
			HLock((Handle)clipIconFamily);
			
			familySize = GetScrap((Handle)clipIconFamily, 'icns', &offset);
			
			LoadFromIconFamily(clipIconFamily);
			
			HUnlock((Handle)clipIconFamily);
			DisposeHandle((Handle)clipIconFamily);
			
			status |= needToSave;
			
			SaveMembers();
			currentState = new drawingStateClass(currentState, this);
			
			status |= needsUpdate;
		}
	}
	else
	{
		PicHandle		clipPicture;
		long			offset, picSize;
		
		// we attempt to get the picture data from the clipboard
		picSize = GetScrap(NULL,'PICT',&offset);
		if(picSize > 0) // if there is any
		{
			// we allocate the handle where the pic will be store
			clipPicture = (PicHandle)NewHandle(picSize);
			HLock((Handle)clipPicture);
			
			
			picSize = GetScrap((Handle)clipPicture,'PICT',&offset); // we import it
			
			switch (pasteType)
			{
				case normally:
					InsertFromPicture(clipPicture, currentGW, insertCentered); // and we insert it into the drawing
					break;
				case asIconAndMask:
					InsertPicIntoIcon(this, clipPicture);
					break;
				case intoSelection:
					if (status & selectionFloated)
						DefloatSelection();
					(**clipPicture).picFrame = (**selectionRgn).rgnBBox;
					InsertFromPicture(clipPicture, currentGW, 0);
					break;
			}
			
			status |= needToSave; // we've modified the picture
		
			currentState = new drawingStateClass(currentState, this);
			
			status |= needsUpdate;
			
			HUnlock((Handle)clipPicture); // we're done with the picture
			DisposeHandle((Handle)clipPicture);
		}
	}
}

// __________________________________________________________________________________________
// Name			: icnsEditorClass::InsertFromPicture
// Input		: srcPic: handle to the picture that should be drawn into the GWorld
//				  scale: true if the picture should be expanded/shrunk to fit the gworld
//				  boundary, if false then the picture will be centered.
// Output		: targetGW: pointed to the GWorld where the picture should be drawn
// Description	: This function draws the specified picture into a GWorld. If the target
//				  GWorld is the current one, then the picture is placed into a selection,
//				  otherwise it is drawn straight into the GWorld


void icnsEditorClass::InsertFromPicture(PicHandle srcPic, GWorldPtr targetGW, int options)
{
	Rect	picRect, // the dimensions of the picture
			currentBounds; // the size of the current GWorld
	
	SAVEGWORLD;
	SAVECOLORS;
	
	if (options & insertScaled) // if we scale then the picture should be as big as the target
		picRect = targetGW->portRect;
	else // otherwise the size is left alone
		picRect = (**srcPic).picFrame;
		
	OffsetRect(&picRect, -picRect.left, -picRect.top);
	
	if (options & insertCentered)
		OffsetRect(&picRect,
				   (targetGW->portRect.right - picRect.right)/2,
				   (targetGW->portRect.bottom - picRect.bottom)/2);
	
	if (targetGW == currentGW)
	// if we're inserting into the current gworld we must put the picture into a floating selection
	{
		if (status & selectionFloated) // if there was a selection already...
			DefloatSelection(); // we must defloat it
		
		status |= (selectionFloated | hasSelection);
		// we'll be creating a new selection so we must set these flags

		currentBounds = (**currentPix).bounds; // we want the picture to be centered
		
		// we must now update the selection GWorld/PixMap so that it reflects the size of the
		// picture we are inserting
		UnlockPixels(selectionPix);
		DisposeGWorld(selectionGW);
		NewGWorldUnpadded(&selectionGW,
				 (**currentPix).pixelSize,
				 &picRect,
				 (**currentPix).pmTable);
		selectionPix = GetGWorldPixMap(selectionGW);
		LockPixels(selectionPix);
		
		// now that we have the selection GWorld set up, we can draw the picture in it
		SetGWorld(selectionGW, NULL);
		EraseRect(&picRect);
		if ((**statics.preferences.data).flags & prefsDither)
			DrawPictureDithered(srcPic, &picRect);
		else
			DrawPicture(srcPic, &picRect);
		
		// the selection shape should be the region which is the picture shape  
		PictureToRegion(srcPic, picRect, selectionRgn);
		MagnifySelectionRgn(); // we want the enlarged selection shape too
		
		// since we've made a selection, the user is likely to want to move it so we set the
		// current tool to the move tool
		currentTool = move;
	}
	else // otherwise we just draw it in
	{
		SetGWorld(targetGW, NULL);
		ForeColor(blackColor);
		BackColor(whiteColor);
		if ((**statics.preferences.data).flags & prefsDither)
			DrawPictureDithered(srcPic, &picRect);
		else
			DrawPicture(srcPic, &picRect);
	}
	RESTOREGWORLD;
	RESTORECOLORS;
	
	UpdateToolbar(); // we might have changed the current tool
	
	status |= needsUpdate; // we need updating
	
	if (!EmptyRgn(selectionRgn)) // checking for selections
		status |= hasSelection;
	else
		status &= ~hasSelection;
}

// __________________________________________________________________________________________
// Name			: icnsEditorClass::PictureToMask
// Input		: srcPic: handle to the picture whose outline (not the built-in one, but just
//				  one determined on the fly based on white regions around the picture)
// Output		: maskGW: handle to the GWorld where the generated mask should be stored
// Description	: This function draws the source picture, and makes a mask out of it based on
//				  the white areas around the picture
// Note 		: this function isn't quite the same as the one above. This one creates the mask
// 				  based on the colors surrouding the picture, while the other one attempts to
//				  extract the one stored in the picture

void icnsEditorClass::PictureToMask(PicHandle srcPic, GWorldPtr maskGW)
{
	GWorldPtr		tempGW; // the GWorld in which we'll be drawing the picture
	PixMapHandle	tempPix; // PixMap belonging to the GWorld above
	Rect			bounds; // the bounds of the mask
	OSStatus		err = noErr; // used for error checking
	
	SAVEGWORLD;
	SAVECOLORS;
	
	bounds = maskGW->portRect; // we get the bounds
	
	// make a GWorld for the picture
	err = NewGWorld(&tempGW, 32, &bounds, NULL, NULL, 0);
	if (err != noErr) {status |= outOfMemory; return; }
	tempPix = GetGWorldPixMap(tempGW);
	LockPixels(tempPix);
	SetGWorld(tempGW, NULL);
	EraseRect(&bounds);
	
	// draw it in
	DrawPicture(srcPic, &bounds);
	
	// and then get the mask
	Make1BitMask(tempPix, maskGW->portPixMap, (**tempPix).bounds);
	
	RESTOREGWORLD;
	RESTORECOLORS;
	
	// we're done
	UnlockPixels(tempPix);
	DisposeGWorld(tempGW);
}

// __________________________________________________________________________________________
// Name			: icnsEditorClass::Clear
// Input		: None
// Output		: None
// Description	: this function clears out the current selection. If it's floated, then the 
//				  entire selection is deleted, otherwise the contents are set to the background
//				  color, but the outline is left.

void icnsEditorClass::Clear(void)
{
	SAVEGWORLD;
	SAVECOLORS;
	
	if (status & selectionFloated) // if we have a floating selection...
	{
		status &= ~selectionFloated;
		status &= ~hasSelection;
		SetEmptyRgn(selectionRgn); // we just empty it
	}
	else
	{
		SetGWorld(currentGW, NULL); // otherwise we clear out the selected region in the 
		RGBBackColor(&backColor); // pixmap by filling it with the background color
		EraseRgn(selectionRgn);
	}
	RESTOREGWORLD;
	RESTORECOLORS;
	
	status |= needToSave; // we've made changes...
	status |= needsUpdate;
	
	currentState = new drawingStateClass(currentState, this);
}

// __________________________________________________________________________________________
// Name			: icnsEditorClass::Fill
// Input		: None
// Output		: None
// Description	: this function does a general fill (not to a specific point) of the current
//				  selection with the foreground color

void icnsEditorClass::Fill(void)
{
	SAVEGWORLD;
	SAVECOLORS;
	
	if (status & selectionFloated) // if there's a floated selection
		SetGWorld(selectionGW, NULL); // then we draw in the selection GWorld
	else
		SetGWorld(currentGW, NULL); // otherwise we draw in the current GWorld
		
	RGBForeColor(&foreColor); 
	PaintRgn(selectionRgn); // we paint in the region
	
	RESTOREGWORLD;
	RESTORECOLORS;
	
	status |= needToSave; // we've made changes
	status |= needsUpdate;
	
	currentState = new drawingStateClass(currentState, this);
}

// __________________________________________________________________________________________
// Name			: icnsEditorClass::Select
// Input		: selectionType: what selection operation should be done (all, none, inverse)
// Output		: None
// Description	: performs an operation the selection. It can either select the entire image,
//				  select nothing, or inverse the current selection (so that what was previously
//				  selected is not deselected and vice-versa).

void icnsEditorClass::Select(int selectionType)
{
	if (status & selectionFloated) // if there was a selection already we must defloat it
		DefloatSelection();
		
	switch (selectionType) // based on the operation we want to do
	{
		case all: // select the whole image
			RectRgn(selectionRgn, &(**currentPix).bounds);
			// simply convert the current dimensions into a rectangle
			MagnifySelectionRgn();
			break;
		case similar:
			RGBColor* colors;
			int	noOfColors;
			
			if (status & selectionFloated)
				DefloatSelection();
			
			status &= ~selectionFloated;
			
			GetSelectionColors(&colors, &noOfColors);
			SetEmptyRgn(selectionRgn);
			GetSimilarColors(colors, noOfColors, currentPix, NULL, selectionRgn);
			MagnifySelectionRgn();
			
			delete colors;
			
			break;
		case none:
			SetEmptyRgn(selectionRgn); // set the selection to nothing
			break;
		case inverse:
			RgnHandle	tempRgn;
			
			// basically we create a region the size of the whole drawing, and subtract from it
			// the current selection
			tempRgn = NewRgn();
			RectRgn(tempRgn, &(**currentPix).bounds);
			DiffRgn(tempRgn, selectionRgn, selectionRgn);
			DisposeRgn(tempRgn);
			
			MagnifySelectionRgn();
			break;
	}
	
	if (!EmptyRgn(selectionRgn)) // if there's still a selection...
		status |= hasSelection;
	else
		status &= ~hasSelection;
	
	status |= needsUpdate;
	
	currentState = new drawingStateClass(currentState, this);
}

void icnsEditorClass::GetSelectionColors(RGBColor** colors, int* noOfColors)
{
	Point temp;
	RGBColor	*tempColorPtr, tempColor;
	bool	exists = false;
	
	*noOfColors = 0;
	
	SAVEGWORLD;
	SetGWorld(currentGW, NULL);
	
	*colors = new RGBColor;
	
	for (int y = (**selectionRgn).rgnBBox.top; y < (**selectionRgn).rgnBBox.bottom; y++)
		for (int x = (**selectionRgn).rgnBBox.left; x < (**selectionRgn).rgnBBox.right; x++)
		{
			temp.h = x; temp.v = y;
			if (PtInRgn(temp, selectionRgn))
			{
				GetCPixel(x, y, &tempColor);
				for (int i = 0; i < (*noOfColors); i++)
					if (!AreEqualRGB(tempColor, (*colors)[i]) && !exists)
					exists = false;
				else
					exists = true; 
				
				if (!exists)
				{
					(*colors)[*noOfColors] = tempColor;
					(*noOfColors)++;
					tempColorPtr = new RGBColor[*noOfColors + 1];
					for (int i = 0; i < (*noOfColors) +1 ; i++)
						tempColorPtr[i] = (*colors)[i];
						
					delete *colors;
					
					*colors = tempColorPtr;
				}
				
				exists = false;
			}
		}
		
	RESTOREGWORLD;
}

// __________________________________________________________________________________________
// Name			: icnsEditorClass::Rotate
// Input		: angle: how many degress the selection should be rotated, currently only 90
//				  and -90 are supported, but real rotations could be added later on
// Output		: None
// Description	: rotates the current pixmap (or the selection if there is one) by 90 or -90
//				  degrees

void icnsEditorClass::Rotate(int angle)
{	
	if (EmptyRgn(selectionRgn)) // if there isn't a selection
		::Rotate(angle, &currentGW, &currentPix); // we just rotate the entire drawing
	else
	{
		GWorldPtr		tempGW; // we'll be drawing the selection shape here, rotating it and
								// converting it back into a region
		PixMapHandle	tempPix; // PixMap belonging to the GWorld above
		OSStatus		err = noErr; // error checking
		
		SAVEGWORLD;
		SAVECOLORS;
		
		if (!(status & selectionFloated)) // if there is a selection but it's not floated
			FloatSelection(); // we float it
			
		::Rotate(angle, &selectionGW, &selectionPix); // we rotate the contents
		
		// we make the tempGW the size of the selection
		err = NewGWorld(&tempGW, 1, &(**selectionRgn).rgnBBox, NULL, NULL, 0);
		if (err != noErr) {status |= outOfMemory; return; }
		tempPix = GetGWorldPixMap(tempGW);
		LockPixels(tempPix);
		
		// we draw the selection in
		SetGWorld(tempGW, NULL);
		EraseRect(&qd.thePort->portRect);
		PaintRgn(selectionRgn);
		
		// we rotate the GWorld
		::Rotate(angle, &tempGW, &tempPix);
		
		// and we convert it back into a region
		BitMapToRegion(selectionRgn, (BitMap*)*tempPix);
		MagnifySelectionRgn();
		
		RESTOREGWORLD;
		RESTORECOLORS;
		
		// we're done with these
		UnlockPixels(tempPix);
		DisposeGWorld(tempGW);
	}

	status |= needToSave; // we made some changes
	status |= needsUpdate;
	
	currentState = new drawingStateClass(currentState, this);
}

// __________________________________________________________________________________________
// Name			: icnsEditorClass::Flip
// Input		: flipType: are we flipping vertically of horizontally
// Output		: None
// Description	: this function flips the entire image (or the selection if there is one) 
//				  horizontally or vertically. This means that the image is reflected about a
//				  vertical (for horizontal flips) or a horizontal (for vertical flips) axis
//				  in the middle

void icnsEditorClass::Flip(int flipType)
{
	// this function is very similar to the above, with the except that the rotation is replaced
	// by flips
	if (EmptyRgn(selectionRgn))
	{
		if (flipType == horizontal)
			::FlipHorizontal(currentPix);
		else
			::FlipVertical(currentPix);
	}
	else
	{
		GWorldPtr		tempGW;						
		PixMapHandle	tempPix; 
		OSStatus		err = noErr;
		
		SAVEGWORLD;
		SAVECOLORS;
		
		if (!(status & selectionFloated))
			FloatSelection();
			
		if (flipType == horizontal)
			::FlipHorizontal(selectionPix);
		else
			::FlipVertical(selectionPix);
		
		err = NewGWorld(&tempGW, 1, &(**selectionRgn).rgnBBox, NULL, NULL, 0);
		if (err != noErr) {status |= outOfMemory; return; }
		tempPix = GetGWorldPixMap(tempGW);
		LockPixels(tempPix);
		
		SetGWorld(tempGW, NULL);
		EraseRect(&qd.thePort->portRect);
		PaintRgn(selectionRgn);
		
		if (flipType == horizontal)
			::FlipHorizontal(tempPix);
		else
			::FlipVertical(tempPix);
		
		BitMapToRegion(selectionRgn, (BitMap*)*tempPix);
		MagnifySelectionRgn();
		
		RESTOREGWORLD;
		RESTORECOLORS;
		
		UnlockPixels(tempPix);
		DisposeGWorld(tempGW);
	}
	
	status |= needToSave;
	status |= needsUpdate;
	
	currentState = new drawingStateClass(currentState, this);
}

// __________________________________________________________________________________________
// Name			: icnsEditorClass::Invert
// Input		: None
// Output		: None
// Description	: This function takes the current icon data (or selection, if there is one) 
//				  and inverts it. Inversion means to take the complement of the colors of the
//				  the pixels.

void icnsEditorClass::Invert(void)
{
	SAVEGWORLD;
	
	if (status & selectionFloated)
	// if the selection is floated we must invert the contents of the selectionGW
	{
		SetGWorld(selectionGW, NULL);
		InvertRect(&(**selectionPix).bounds);
	}
	else if (status & hasSelection)
	// if there's only a selection, we must only invert the selection region
	// to do this we'll be changing the clipping region so that only the selection region
	// is not clipped and then invert the whole GWorld (but in reality only the selection area
	// will be inverted)
	{
		RgnHandle oldClip; // the current clipping region
		
		oldClip = NewRgn();
		GetClip(oldClip); // we get the old clipping region
		
		SetGWorld(currentGW, NULL);
		SetClip(selectionRgn); // we set the new clipping region
		
		InvertRect(&(**currentPix).bounds); // invert
		
		SetClip(oldClip); // restore the old clipping region
		
		DisposeRgn(oldClip); // and deallocate the local copy
	}
	else // if nothing is selected then we just invert the whole thing
	{
		SetGWorld(currentGW, NULL);
		InvertRect(&(**currentPix).bounds);
	}
	
	RESTOREGWORLD;
	
	// we've made changes
	status |= needToSave;
	status |= needsUpdate;
	
	currentState = new drawingStateClass(currentState, this);
}



// __________________________________________________________________________________________
// Name			: GetEditor
// Input		: window: pointer to the window from which the editor class pointed should
//				  be extracted
// Output		: icnsEditorPtr: pointer to the editor class instance associtated with the
//				  window
// Description	: this functions returns the editor associated with the chosen window,
//				  if there is one (see icnsEditorClass::icnsEditorClass for the method used
//				  to assign an editor to a window).

icnsEditorPtr GetEditor(WindowPtr window)
{
	icnsEditorPtr windowsEditor; // the editor class which owns that window
	
	if (window == NULL) // if the window is invalid then we (obviously) don't have an editor 
		return NULL;
	
	windowsEditor = (icnsEditorPtr)GetWRefCon(window); // we get the pointer stored in the
														 // window's RefCon
	
	// if the window is indeed the one that's associated with that editor
	if (window == windowsEditor->window) 
		return windowsEditor; // we return the pointer
	else
		return NULL; // otherwise the window doesn't belong to any editor
}

// __________________________________________________________________________________________
// Name			: GetEditor
// Input		: None
// Output		: icnsEditorPort: pointer to the editor class instance associated with the
//				  front most window
// Description	: a wrapper for the function above, it returns the editor associated with the
//				  front-most window

icnsEditorPtr GetFrontEditor(void)
{
	return GetEditor(FrontWindow());
}


// __________________________________________________________________________________________
// Name			: StandardEditDialogFilter
// Input		: dialog: the dialog for which we must perform the event filtering
//				  eventPtr: the event that just occured
// Output		: itemHit: the item that was hit, based on the event
// Description	: This function processed events when an editor opens up a dialog. it takes
//				  care of refreshes, etc.

pascal bool StandardEditorDialogFilter(DialogPtr dialog, EventRecord* eventPtr, short* itemHit)
{
	bool	handledEvent = false;
	GrafPtr	oldPort;
	icnsEditorPtr editor;
	
	switch (eventPtr->what)
	{
		//case osEvt:
		case activateEvt:
			GetPort(&oldPort);
			SetPort(dialog);
			InvalRect(&dialog->portRect);
			SetPort(oldPort);
		case updateEvt:
			if ((WindowPtr) eventPtr->message != dialog)
			{
				editor = GetEditor((WindowPtr)eventPtr->message);
				if (editor != NULL)
					editor->Refresh();
			}
			else
				handledEvent = StdFilterProc(dialog, eventPtr, itemHit);
			break;
		default:
			GetPort(&oldPort);
			SetPort(dialog);
			
			handledEvent = StdFilterProc(dialog,eventPtr,itemHit);
			SetPort(oldPort);
		break;
	}
	return handledEvent;
}


void SetControlBalloonHelp(ControlHandle theControl, long stringNo)
{
	(**theControl).contrlRfCon = stringNo;
}

long GetControlBalloonHelp(ControlHandle theControl)
{
	return (**theControl).contrlRfCon;
}
