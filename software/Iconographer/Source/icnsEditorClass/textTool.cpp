#include "textTool.h"
#include "editorStaticsClass.h"

// __________________________________________________________________________________________
// Name			: icnsEditorClass::GetTextAttributes
// Input		: None
// Output		: lastTextSettings: the previous text settings, which will be changed by the
//				  user
// Description	: Prompts the user with a dialog, in which he can set the text, the font, the
//				  size and style.

OSErr GetTextAttributes(textSettings* lastTextSettings)
{
	DialogPtr		textDialog;
	MWindowPtr		textDialogWindow;
	bool			dialogDone;
	short			itemHit, menuChoice;
	ControlHandle	fontPopup, stylePopup, sizePopup, textField, sizeField;
	Str255			text, sizeAsString, fontName;
	MenuHandle		fontMenu, styleMenu, sizeMenu;
	short			fontNo;
	int				style;
	long			size;
	OSErr			err;
	ModalFilterUPP	eventFilterUPP;
	
	textDialog = GetNewDialog(rTextDialog, NULL, (WindowPtr)-1L);
	textDialogWindow = new MWindow(GetDialogWindow(textDialog), kDialogType);
	eventFilterUPP = NewModalFilterProc(TextDialogFilter);
	
	SetDialogDefaultItem(textDialog, iOK);
	SetDialogCancelItem(textDialog, iCancel);
	
	GetDialogItemAsControl(textDialog, iFontPopup, &fontPopup);
	fontMenu = GetControlPopupMenuHandle(fontPopup);
	GetDialogItemAsControl(textDialog, iStylePopup, &stylePopup);
	styleMenu = GetControlPopupMenuHandle(stylePopup);
	GetDialogItemAsControl(textDialog, iSizePopup, &sizePopup);
	sizeMenu = GetControlPopupMenuHandle(sizePopup);
	GetDialogItemAsControl(textDialog, iTextField, &textField);
	GetDialogItemAsControl(textDialog, iSizeField, &sizeField);	
	
	NumToString(lastTextSettings->size, sizeAsString);
	SetControlValue(sizePopup, FindMenuItem(sizeMenu, sizeAsString));
	SetDialogItemText((Handle)sizeField, sizeAsString);
	GetFontName(lastTextSettings->fontNo, fontName);
	SetControlValue(fontPopup, FindMenuItem(fontMenu, fontName));
	SetDialogItemText((Handle)textField, lastTextSettings->text);
	SelectDialogItemText(textDialog, iTextField, 0, 32767);
	UpdateStyleMenu(styleMenu, stylePopup, lastTextSettings->style);
	
	CopyString(text, lastTextSettings->text);
	fontNo = lastTextSettings->fontNo;
	size = lastTextSettings->size;
	style = lastTextSettings->style;
	
	StyleControl(textField, fontNo, size, style);
	
	MWindow::CenterOnFront(textDialogWindow);
	
	MWindow::DeactivateAll();
	
	ShowWindow(GetDialogWindow(textDialog));
	
	dialogDone = false;
	
	while (!dialogDone)
	{
		ModalDialog(eventFilterUPP, &itemHit);
		
		switch (itemHit)
		{
			case iOK:
				CopyString(lastTextSettings->text, text);
				lastTextSettings->fontNo = fontNo;
				lastTextSettings->size = size;
				lastTextSettings->style = style;
				err = noErr;
				dialogDone = true;
				break; 
			case iCancel: err = userCanceledErr; dialogDone = true; break;
			case iTextField:
				GetDialogItemText((Handle)textField, text);
				break;
			case iSizeField:
				GetDialogItemText((Handle)sizeField, sizeAsString);
				SetControlValue(sizePopup, FindMenuItem(sizeMenu, sizeAsString));
				StringToNum(sizeAsString, &size);
				StyleControl(textField, fontNo, size, style);
				break;
			case iSizePopup:
				menuChoice = GetControlValue(sizePopup);
				GetMenuItemText(sizeMenu, menuChoice, sizeAsString);
				SetDialogItemText((Handle)sizeField, sizeAsString);
				SelectDialogItemText(textDialog, iSizeField, 0, 32767);
				StringToNum(sizeAsString, &size);
				StyleControl(textField, fontNo, size, style);
				break;
			case iFontPopup:
				menuChoice = GetControlValue(fontPopup);
				GetMenuItemText(fontMenu, menuChoice, fontName);
				GetFNum(fontName, &fontNo);
				StyleControl(textField, fontNo, size, style);
				break;
			case iStylePopup:
				menuChoice = GetControlValue(stylePopup);
				switch (menuChoice)
				{
					case iPlain: style = normal; break;
					case iBold: style ^= bold; break;
					case iItalic: style ^= italic; break;
					case iUnderline: style ^= underline; break;
					case iShadow: style ^= shadow; break;
					case iCondensed: style ^= condense; break;
					case iExtended: style ^= extend; break;
				}
				UpdateStyleMenu(styleMenu, stylePopup, style);
					
				Draw1Control(stylePopup);
					
				StyleControl(textField, fontNo, size, style);
				
				break;
				
		}
	}
	
	DisposeDialog(textDialog);
	
	delete textDialogWindow;
	
	MWindow::ActivateAll();
	
	return err;
}

// __________________________________________________________________________________________
// Name			: UpdateStyleMenu
// Input		: styleMenu: handle to the menu which we must update
//			      stylePopup: the control which owns the style menu
//				  style: the actual style information
// Output		: None
// Description	: The functions checks all of the options in a style menu which are enabled
//				  (pop-up menus we're really meant to do this, but...)

void UpdateStyleMenu(MenuHandle styleMenu, ControlHandle stylePopup, int style)
{
	if (style == normal)
	{
		CheckItem(styleMenu, iPlain, true);
		SetControlValue(stylePopup, iPlain);
	}
	else
		CheckItem(styleMenu, iPlain, false);
	
	if (style & bold)
	{
		CheckItem(styleMenu, iBold, true);
		SetControlValue(stylePopup, iBold);
	}
	else
		CheckItem(styleMenu, iBold, false); 
	
	if (style & italic)
	{
		CheckItem(styleMenu, iItalic, true);
		SetControlValue(stylePopup, iItalic);
	}
	else
		CheckItem(styleMenu, iItalic, false);
	
	if (style & underline)
	{
		CheckItem(styleMenu, iUnderline, true);
		SetControlValue(stylePopup, iUnderline);
	}
	else
		CheckItem(styleMenu, iUnderline, false); 
	
	if (style & shadow)
	{
		CheckItem(styleMenu, iShadow, true);
		SetControlValue(stylePopup, iShadow);
	}
	else
		CheckItem(styleMenu, iShadow, false); 
	
	if (style & condense)
	{
		CheckItem(styleMenu, iCondensed, true);
		SetControlValue(stylePopup, iCondensed);
	}
	else
		CheckItem(styleMenu, iCondensed, false);
		
	if (style & extend)
	{
		CheckItem(styleMenu, iExtended, true);
		SetControlValue(stylePopup, iExtended);
	}
	else
		CheckItem(styleMenu, iExtended, false);
}

pascal bool TextDialogFilter(DialogPtr dialog, EventRecord* eventPtr, short* itemHit)
{
	char 	key;
	bool	handledEvent = false;
	short	itemNo;
	
	switch (eventPtr->what)
	{
		case keyDown:
		case autoKey:
			key = eventPtr->message & charCodeMask;
			itemNo = GetDialogKeyboardFocusItem(dialog);
			if (itemNo == iTextField)
			{
				if (key == kReturnCharCode)
				{
					ControlHandle control;
					Str255 text;
					
					GetDialogItemAsControl(dialog, itemNo, &control);
					GetDialogItemText((Handle)control, text);
					AppendString(text, "\p\r");
				}
				else
					handledEvent = StandardEditorDialogFilter(dialog, eventPtr, itemHit);
			}
			else if ((key == kReturnCharCode) || (key == kEnterCharCode) ||
			    (key == kTabCharCode) || (key == kBackspaceCharCode) ||
			    (key == kEscapeCharCode) || (key == kDeleteCharCode) ||
			    (key == kRightArrowCharCode) || (key == kLeftArrowCharCode) ||
			    (key == kUpArrowCharCode) || (key == kDownArrowCharCode) ||
			    ((key >= '0') && (key <= '9')) ||
			    ((key == '.') && (eventPtr->modifiers & cmdKey) != 0))
			{
			   handledEvent = StandardEditorDialogFilter(dialog, eventPtr, itemHit);
			}
			else
			{
				SysBeep(6);
				handledEvent = true;
			}
			break;
		default:
			handledEvent = StandardEditorDialogFilter(dialog,eventPtr,itemHit);
		break;
	}
	return handledEvent;
	
}
