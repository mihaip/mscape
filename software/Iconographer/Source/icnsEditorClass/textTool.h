#pragma once

#include "icnsEditorClass.h"
#include "editorStaticsClass.h"
#include "commonFunctions.h"

enum textToolResources
{
	// dialogs
	rTextDialog = 1410
};

enum textToolDialogItems
{
	iOK = 1,
	iCancel = 2,
	iTextLabel = 3,
	iTextField = 4,
	iFontPopup = 5,
	iSizeLabel = 6,
	iSizeField = 7,
	iSizePopup = 8,
	iStylePopup = 9
};

enum styleMenuItems
{
	iPlain = 1,
	iBold = 2,
	iItalic = 3,
	iUnderline = 4,
	iShadow = 5,
	iCondensed = 6,
	iExtended = 7
};

extern OSErr					GetTextAttributes(textSettings* lastTextSettings);
extern void UpdateStyleMenu(MenuHandle styleMenu, ControlHandle stylePopup, int style);
extern pascal bool TextDialogFilter(DialogPtr dialog, EventRecord* eventPtr, short* itemHit);

