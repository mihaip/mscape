#include "icnsClass.h"
#include "MWindow.h"

const static int kIconInfoPropertiesItems[] = {iIconIDLabel, iIconIDField,
	iIDMenu, iIconNameLabel, iIconNameField, iFormatLabel, iFormatPopup,
	iIconSizeLabel, iIconSizeField, iPropertiesDivider, iFlagsGroupBox,
	iPurgeable, iPreload, iLocked, iProtected, iSystemHeap};
const static int kIconInfoPropertiesItemsCount = sizeof(kIconInfoPropertiesItems)/sizeof(int);

const static int kIconInfoMembersItems[] = {iMembersGroupBox, iThumbnailBox,
	iHugeBox, iih32Box, iich8Box, iich4Box, iichiBox, ih8mkBox, iichmBox,	
	iLargeBox, iil32Box, iicl8Box, iicl4Box, iicniBox, il8mkBox, iicnmBox,
	iSmallBox, iis32Box, iics8Box, iics4Box, iicsiBox, is8mkBox, iicsmBox,
	iMiniBox, iicm8Box, iicm4Box, iicmiBox, iicmmBox,
	
	iMembersDivider,
	iHintsLabel,
	iIconLabel, i32BitIconLabel, i8BitIconLabel, i4BitIconLabel, i1BitIconLabel,
	iMaskLabel, i8BitMaskLabel, i1BitMaskLabel};
const static int kIconInfoMembersItemsCount = sizeof(kIconInfoMembersItems)/sizeof(int);

DialogPtr			icnsClass::infoDialog = NULL;
Handle				icnsClass::propertiesControls = NULL;
Handle				icnsClass::membersControls = NULL;
ModalFilterUPP		icnsClass::eventFilterUPP;
ControlHandle		icnsClass::IDField = NULL;
ControlHandle		icnsClass::IDMenu = NULL;
ControlHandle		icnsClass::nameField = NULL;
ControlHandle		icnsClass::sizeField = NULL;
ControlHandle		icnsClass::formatPopup = NULL;
ControlHandle		icnsClass::sysHeapBox = NULL;
ControlHandle		icnsClass::purgeableBox = NULL;
ControlHandle		icnsClass::lockedBox = NULL;
ControlHandle		icnsClass::protectedBox = NULL;
ControlHandle		icnsClass::preloadBox = NULL;
ControlHandle		icnsClass::tabs = NULL;
MenuHandle			icnsClass::popupMenu = NULL;
MenuHandle			icnsClass::formatMenu = NULL;
MWindowPtr			icnsClass::infoDialogWindow = NULL;
EditIconInfoData	icnsClass::dialogData;
int					icnsClass::currentTab = -1;

enum IconInfoTabs
{
	kIconInfoPropertiesTab = 1,
	kIconInfoMembersTab = 2
};

#define SETMEMBERCHECKBOX(itemNo, member) \
GetDialogItemAsControl(dialog, itemNo, &tempControl);\
if (kDefaultMembers[format] & member)\
{\
	if (format == formatWindows)\
		if (!((member & (mask1)) == member))\
			ActivateControl(tempControl);\
		else\
			DeactivateControl(tempControl);\
	else\
		if (!((member & (icon1 + mask1)) == member))\
			ActivateControl(tempControl);\
		else\
			DeactivateControl(tempControl);\
	if ((usedMembers & member) == (member & kDefaultMembers[format]))\
		SetControlValue(tempControl, 1);\
	else if (usedMembers & member)\
		SetControlValue(tempControl, 2);\
	else\
		SetControlValue(tempControl, 0);\
}\
else\
{\
	SetControlValue(tempControl, 0);\
	DeactivateControl(tempControl);\
}

void icnsClass::SetMembersCheckboxes(DialogPtr dialog, long usedMembers, long format)
{
	ControlHandle	tempControl;
	
	SETMEMBERCHECKBOX(iThumbnailBox, thumbnailSize);
	
	SETMEMBERCHECKBOX(iHugeBox, hugeSize);
	SETMEMBERCHECKBOX(iih32Box, ih32);
	SETMEMBERCHECKBOX(iich8Box, ich8);
	SETMEMBERCHECKBOX(iich4Box, ich4);
	SETMEMBERCHECKBOX(iichiBox, ichi);
	SETMEMBERCHECKBOX(ih8mkBox, h8mk);
	SETMEMBERCHECKBOX(iichmBox, ichm);
	
	SETMEMBERCHECKBOX(iLargeBox, largeSize);
	SETMEMBERCHECKBOX(iil32Box, il32);
	SETMEMBERCHECKBOX(iicl8Box, icl8);
	SETMEMBERCHECKBOX(iicl4Box, icl4);
	SETMEMBERCHECKBOX(iicniBox, icni);
	SETMEMBERCHECKBOX(il8mkBox, l8mk);
	SETMEMBERCHECKBOX(iicnmBox, icnm);
	
	SETMEMBERCHECKBOX(iSmallBox, smallSize);
	SETMEMBERCHECKBOX(iis32Box, is32);
	SETMEMBERCHECKBOX(iics8Box, ics8);
	SETMEMBERCHECKBOX(iics4Box, ics4);
	SETMEMBERCHECKBOX(iicsiBox, icsi);
	SETMEMBERCHECKBOX(is8mkBox, s8mk);
	SETMEMBERCHECKBOX(iicsmBox, icsm);
	
	SETMEMBERCHECKBOX(iMiniBox, miniSize);
	SETMEMBERCHECKBOX(iicm8Box, icm8);
	SETMEMBERCHECKBOX(iicm4Box, icm4);
	SETMEMBERCHECKBOX(iicmiBox, icmi);
	SETMEMBERCHECKBOX(iicmmBox, icmm);
}

#define GETMEMBERSCHECKBOX(itemNo, member)\
GetDialogItemAsControl(dialog, itemNo, &tempControl);\
if (GetControlValue(tempControl))\
	*usedMembers |= member;\
else\
	*usedMembers &= ~member;\

void icnsClass::GetMembersCheckboxes(DialogPtr dialog, long* usedMembers)
{
	ControlHandle	tempControl;
	
	*usedMembers = 0;
	
	GETMEMBERSCHECKBOX(iThumbnailBox, thumbnailSize);
	
	GETMEMBERSCHECKBOX(iih32Box, ih32);
	GETMEMBERSCHECKBOX(iich8Box, ich8);
	GETMEMBERSCHECKBOX(iich4Box, ich4);
	GETMEMBERSCHECKBOX(iichiBox, ichi);
	GETMEMBERSCHECKBOX(ih8mkBox, h8mk);
	GETMEMBERSCHECKBOX(iichmBox, ichm);
	
	GETMEMBERSCHECKBOX(iil32Box, il32);
	GETMEMBERSCHECKBOX(iicl8Box, icl8);
	GETMEMBERSCHECKBOX(iicl4Box, icl4);
	GETMEMBERSCHECKBOX(iicniBox, icni);
	GETMEMBERSCHECKBOX(il8mkBox, l8mk);
	GETMEMBERSCHECKBOX(iicnmBox, icnm);
	
	GETMEMBERSCHECKBOX(iis32Box, is32);
	GETMEMBERSCHECKBOX(iics8Box, ics8);
	GETMEMBERSCHECKBOX(iics4Box, ics4);
	GETMEMBERSCHECKBOX(iicsiBox, icsi);
	GETMEMBERSCHECKBOX(is8mkBox, s8mk);
	GETMEMBERSCHECKBOX(iicsmBox, icsm);
	
	GETMEMBERSCHECKBOX(iicm8Box, icm8);
	GETMEMBERSCHECKBOX(iicm4Box, icm4);
	GETMEMBERSCHECKBOX(iicmiBox, icmi);
	GETMEMBERSCHECKBOX(iicmmBox, icmm);
}

void icnsClass::SetMinimumMembers(long* usedMembers, int format)
{
	if (format == formatWindows)
	{
		if (*usedMembers & hugeSize) *usedMembers |= ichm; else *usedMembers &= ~ichm;
		if (*usedMembers & largeSize) *usedMembers |= icnm; else *usedMembers &= ~icnm;
		if (*usedMembers & smallSize) *usedMembers |= icsm; else *usedMembers &= ~icsm;
		if (*usedMembers & miniSize) *usedMembers |= icmm; else *usedMembers &= ~icmm;
	}
	else
	{
		if (*usedMembers & hugeSize) *usedMembers |= (ichi + ichm); else *usedMembers &= ~(ichi + ichm);
		if (*usedMembers & largeSize) *usedMembers |= (icni + icnm); else *usedMembers &= ~(icni + icnm);
		if (*usedMembers & smallSize) *usedMembers |= (icsi + icsm); else *usedMembers &= ~(icsi + icsm);
		if (*usedMembers & miniSize) *usedMembers |= (icmi + icmm); else *usedMembers &= ~(icmi + icmm);
	}
}

void icnsClass::HandleMembersCheckbox(DialogPtr dialog, int itemHit, long *usedMembers, int format)
{
	ControlHandle	tempControl;
	long			temp;
	
	GetDialogItemAsControl(dialog, itemHit, &tempControl);
	ToggleCheckbox(tempControl);
	temp = GetControlValue(tempControl);
	
	switch (itemHit)
	{
		case iHugeBox: if (temp) *usedMembers |= hugeSize; else *usedMembers &= ~hugeSize; break;
		case iLargeBox: if (temp) *usedMembers |= largeSize; else *usedMembers &= ~largeSize; break;
		case iSmallBox: if (temp) *usedMembers |= smallSize; else *usedMembers &= ~smallSize; break;
		case iMiniBox: if (temp) *usedMembers |= miniSize; else *usedMembers &= ~miniSize; break;
		default: GetMembersCheckboxes(dialog, usedMembers); break;
	}
	
	*usedMembers &= kDefaultMembers[format];
	SetMinimumMembers(usedMembers, format);
	
	SetMembersCheckboxes(dialog, *usedMembers, format);
}

// __________________________________________________________________________________________
// Name			: icnsEditorClass::EditIconInfo
// Input		: None
// Output		: None
// Description	: This function displays a dialog which allows the user to change the icon's
//				  attributes (ID, name, bits)

void icnsClass::LoadInfoDialog()
{
	ControlHandle		label, tempControl;
	ControlFontStyleRec	labelStyle, boldTextStyle;
	
	infoDialog = GetNewDialog(rIconInfo, NULL, (WindowPtr)-1L);
	
	membersControls = Get1Resource('DITL', rIconInfoMembers);
	AppendDITL(infoDialog, membersControls, overlayDITL);
	
	propertiesControls = Get1Resource('DITL', rIconInfoProperties);
	AppendDITL(infoDialog, propertiesControls, overlayDITL);
	

#if TARGET_API_MAC_CARBON
	labelStyle.flags = kControlUseJustMask;
	labelStyle.just = teFlushRight;
	GetDialogItemAsControl(infoDialog, iIconIDLabel, &label);
	SetControlFontStyle(label, &labelStyle);
	GetDialogItemAsControl(infoDialog, iIconNameLabel, &label);
	SetControlFontStyle(label, &labelStyle);
	GetDialogItemAsControl(infoDialog, iFormatLabel, &label);
	SetControlFontStyle(label, &labelStyle);
	GetDialogItemAsControl(infoDialog, iIconSizeLabel, &label);
	SetControlFontStyle(label, &labelStyle);
	
	labelStyle.just = teCenter;
	
	GetDialogItemAsControl(infoDialog, i32BitIconLabel, &label);
	SetControlFontStyle(label, &labelStyle);
	GetDialogItemAsControl(infoDialog, i8BitIconLabel, &label);
	SetControlFontStyle(label, &labelStyle);
	GetDialogItemAsControl(infoDialog, i4BitIconLabel, &label);
	SetControlFontStyle(label, &labelStyle);
	GetDialogItemAsControl(infoDialog, i1BitIconLabel, &label);
	SetControlFontStyle(label, &labelStyle);
	GetDialogItemAsControl(infoDialog, i8BitMaskLabel, &label);
	SetControlFontStyle(label, &labelStyle);
	GetDialogItemAsControl(infoDialog, i1BitMaskLabel, &label);
	SetControlFontStyle(label, &labelStyle);
#else	
	SAVEGWORLD;
	SetPortDialogPort(infoDialog);
	TextFont(applFont);
	TextSize(9);
	RESTOREGWORLD;
	
	labelStyle.flags = kControlUseFontMask | kControlUseSizeMask;
	labelStyle.font = kThemeSystemFont; // this font is installed on all systems
	labelStyle.size = 12;
	
	GetDialogItemAsControl(infoDialog, iIconIDLabel, &label);
	SetControlFontStyle(label, &labelStyle);
	GetDialogItemAsControl(infoDialog, iIconNameLabel, &label);
	SetControlFontStyle(label, &labelStyle);
	GetDialogItemAsControl(infoDialog, iIconSizeField, &label);
	SetControlFontStyle(label, &labelStyle);
#endif
	boldTextStyle.flags = kControlUseFaceMask;
	boldTextStyle.style = bold;
	GetDialogItemAsControl(infoDialog, iHintsLabel, &label);
	SetControlFontStyle(label, &boldTextStyle);
	GetDialogItemAsControl(infoDialog, iIconLabel, &label);
	SetControlFontStyle(label, &boldTextStyle);
	GetDialogItemAsControl(infoDialog, iMaskLabel, &label);
	SetControlFontStyle(label, &boldTextStyle);
	
	infoDialogWindow = new MWindow(GetDialogWindow(infoDialog), kDialogType);
	
	eventFilterUPP = NewModalFilterUPP(IconInfoDialogFilter);
	
	SetDialogDefaultItem(infoDialog, iOK);
	SetDialogCancelItem(infoDialog, iCancel);
	
	GetDialogItemAsControl(infoDialog, iIconInfoTabs, &tabs);
	
	for (int i=0; i < kIconInfoMembersItemsCount; i++)
	{
		GetDialogItemAsControl(infoDialog, kIconInfoMembersItems[i], &tempControl);
		EmbedControl(tempControl, tabs);
		HideControl(tempControl);
	}
	
	for (int i=0; i < kIconInfoPropertiesItemsCount; i++)
	{
		GetDialogItemAsControl(infoDialog, kIconInfoPropertiesItems[i], &tempControl);
		EmbedControl(tempControl, tabs);
		Draw1Control(tempControl);
	}
	
	currentTab = kIconInfoPropertiesTab;
	
	GetDialogItemAsControl(infoDialog, iIconIDField, &IDField);
	GetDialogItemAsControl(infoDialog, iIDMenu, &IDMenu); dialogData.IDMenu = IDMenu;
	GetDialogItemAsControl(infoDialog, iIconNameField, &nameField);
	GetDialogItemAsControl(infoDialog, iIconSizeField, &sizeField);
	GetDialogItemAsControl(infoDialog, iFormatPopup, &formatPopup);
	
	GetDialogItemAsControl(infoDialog, iPurgeable, &purgeableBox);
	GetDialogItemAsControl(infoDialog, iPreload, &preloadBox);
	GetDialogItemAsControl(infoDialog, iLocked, &lockedBox);
	GetDialogItemAsControl(infoDialog, iProtected, &protectedBox);
	GetDialogItemAsControl(infoDialog, iSystemHeap, &sysHeapBox);
	
	popupMenu = GetControlPopupMenuHandle(IDMenu);
	
	for (int i = mBaseIDMenu; i < mBaseIDMenu + mIDMenuCount; i++)
	{
		MenuHandle currentMenu;
		
		currentMenu = GetMenu(i);
		if(currentMenu != NULL)
			InsertMenu(currentMenu, kInsertHierarchicalMenu);
	}
	
	infoDialogWindow->SetRefCon((int)&dialogData);
}

void icnsClass::DisposeInfoDialog()
{		
	DisposeModalFilterUPP(eventFilterUPP);
	DisposeDialog(infoDialog);
	
	ReleaseResource(propertiesControls);
	ReleaseResource(membersControls);
	
	delete infoDialogWindow;
}

int icnsClass::EditIconInfo(int mode)
{
	bool				dialogDone;
	short				itemHit;
	Str255				menuTitle, tempString, sizeFormat;
	long				temp, oldFormat, oldUsedMembers;
	ControlHandle		tempControl;
	
#if !TARGET_API_MAC_CARBON
	LoadInfoDialog();
#endif	
	
	oldFormat = format;
	oldUsedMembers = usedMembers;

	if (currentTab != kIconInfoPropertiesTab)
	{
		SetControlValue(tabs, kIconInfoPropertiesTab);
		Draw1Control(tabs);
		
		for (int i=0; i < kIconInfoMembersItemsCount; i++)
		{
			GetDialogItemAsControl(infoDialog, kIconInfoMembersItems[i], &tempControl);
			HideControl(tempControl);
		}
		
		for (int i=0; i < kIconInfoPropertiesItemsCount; i++)
		{
			GetDialogItemAsControl(infoDialog, kIconInfoPropertiesItems[i], &tempControl);
			ShowControl(tempControl);
		}
		
		
		currentTab = kIconInfoPropertiesTab;
	}
	
	if (mode == kInsertIcon)
	{
		Str255 windowTitle;
		
		GetIndString(windowTitle, rIconInfoStrings, eInsertIconTitle);
		SetWTitle(GetDialogWindow(infoDialog), windowTitle);
	}
	
	if (mode == kInsertIcon || mode == kIconInfoBrowser)
	{
		formatMenu = GetControlPopupMenuHandle(formatPopup);
		if (formatMenu != NULL)
		{
			DisableMenuItem(formatMenu, formatMacOSX);
			DisableMenuItem(formatMenu, formatWindows);
			DisableMenuItem(formatMenu, formatMacOSXServer);
		}
	}
	else
	{
		formatMenu = GetControlPopupMenuHandle(formatPopup);
		if (formatMenu != NULL)
		{
			DisableMenuItem(formatMenu, formatMacOSXServer);
		}
	}
	
	if (mode == kIconInfoBrowser)
		SetTabEnabled(tabs, kIconInfoMembersTab, false);
	
	if ((format == formatWindows) || (format == formatMacOSXServer) || (format == formatMacOSX))
		ToggleNonMacOSItems(infoDialog);
	
	SetControlText(nameField, name);
	NumToString(ID, tempString);
	SetControlText(IDField, tempString);
	
	NumToString(GetSize(), tempString);
	GetControlText(sizeField, sizeFormat);
	SubstituteString(sizeFormat, "\p<size>", tempString);
	SetControlText(sizeField, sizeFormat);
	
	SetControlValue(formatPopup, format);
	
	SetControlValue(purgeableBox, (flags & resPurgeable) >> resPurgeableBit);
	SetControlValue(preloadBox, (flags & resPreload) >> resPreloadBit);
	SetControlValue(lockedBox, (flags & resLocked) >> resLockedBit);
	SetControlValue(protectedBox, (flags & resProtected) >> resProtectedBit);
	SetControlValue(sysHeapBox, (flags & resSysHeap) >> resSysHeapBit);
	
	SetMembersCheckboxes(infoDialog, usedMembers, format);
	
	MWindow::CenterOnFront(infoDialogWindow);
	
	MWindow::DeactivateAll();
	
	ShowWindow(GetDialogWindow(infoDialog));
	
	GetIDMenu(ID, &dialogData.currentMenu, &dialogData.currentItem, tempString);
	CheckMenuItem(dialogData.currentMenu, dialogData.currentItem, true);
	SetControlValue(IDMenu, GetMenuID(dialogData.currentMenu) - mBaseIDMenu + 1);
	
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
				if ((temp != ID || mode == kInsertIcon) && (srcFileSpec.vRefNum != 0 || srcFileSpec.parID != 0))
				{
					Handle otherIcon = NULL;
					short	oldFile, targetFile;
					
					oldFile = CurResFile();
					targetFile = FSpOpenResFile(&srcFileSpec, fsRdPerm);
					if (targetFile != -1)
					{
						UseResFile(targetFile);
						
						if (GetControlValue(formatPopup) == formatMacOSUniversal)
						{
							otherIcon = Get1Resource('icns', temp);
							if (otherIcon == NULL)
							{
								otherIcon = Get1Resource('ICN#', temp);
								if (otherIcon == NULL)
									otherIcon = Get1Resource('ics#', temp);
							}
						}
						else if (GetControlValue(formatPopup) == formatMacOSNew)
						{
							otherIcon = Get1Resource('icns', temp);
						}
						else
						{
							otherIcon = Get1Resource('ICN#', temp);
								if (otherIcon == NULL)
									otherIcon = Get1Resource('ics#', temp);
						}
									
						CloseResFile(targetFile);
						UseResFile(oldFile);
						if (otherIcon != NULL)
						{
							Str255 message, overwriteButtonName, cancelButtonName;
							ReleaseResource(otherIcon);
							GetIndString(message, rIconInfoStrings, eIDAlreadyExists);
							SubstituteString(message, "\p<ID>", tempString);
							GetIndString(overwriteButtonName, rIconInfoStrings, eOverwriteButton);
							GetIndString(cancelButtonName, rIconInfoStrings, eInfoCancelButton);
							itemHit = MUtilities::DisplayAlert(message, overwriteButtonName, cancelButtonName, "\p", kAlertCautionAlert);
							if (itemHit == 2)
								dialogDone = false;
						}
					}
				}
				if (dialogDone)
				{
					long newFlags, newFormat, newUsedMembers;
					Str255 newName;
					short newID;
					
					newID = temp;
					newFormat = GetControlValue(formatPopup);
					GetControlText(nameField, newName);
					newFlags = (GetControlValue(purgeableBox) << resPurgeableBit) +
								(GetControlValue(preloadBox) << resPreloadBit) + 
								(GetControlValue(lockedBox) << resLockedBit) +
								(GetControlValue(protectedBox) << resProtectedBit) +
								(GetControlValue(sysHeapBox) << resSysHeapBit);
					GetMembersCheckboxes(infoDialog, &newUsedMembers);
					
					if (newFlags == flags &&
						newFormat == oldFormat &&
						newID == ID &&
						EqualString(newName, name, true, true) &&
						newUsedMembers == oldUsedMembers)
						itemHit = iCancel;
					else
					{
						ID = newID;
						format = newFormat;
						CopyString(name, newName);
						flags = newFlags;
						usedMembers = newUsedMembers;
					}
				}
				break;
			case iCancel:
				format = oldFormat;
				usedMembers = oldUsedMembers;
				dialogDone = true;
				break;
			case iIconInfoTabs:
				int newTab;
				
				newTab = GetControlValue(tabs);
				if (newTab != currentTab)
				{
					if (currentTab == kIconInfoMembersTab)
					{
						ClearKeyboardFocus(GetDialogWindow(infoDialog));
						
						for (int i=0; i < kIconInfoMembersItemsCount; i++)
						{
							GetDialogItemAsControl(infoDialog, kIconInfoMembersItems[i], &tempControl);
							HideControl(tempControl);
						}
						
						for (int i=0; i < kIconInfoPropertiesItemsCount; i++)
						{
							GetDialogItemAsControl(infoDialog, kIconInfoPropertiesItems[i], &tempControl);
							ShowControl(tempControl);
						}
					}
					else
					{
						for (int i=0; i < kIconInfoPropertiesItemsCount; i++)
						{
							GetDialogItemAsControl(infoDialog, kIconInfoPropertiesItems[i], &tempControl);
							HideControl(tempControl);
						}
						for (int i=0; i < kIconInfoMembersItemsCount; i++)
						{
							GetDialogItemAsControl(infoDialog, kIconInfoMembersItems[i], &tempControl);
							ShowControl(tempControl);
						}
						
						SetKeyboardFocus(GetDialogWindow(infoDialog), IDField, kControlEditTextPart);
					}
					Draw1Control(tabs);
					currentTab = newTab;
				}
				break;
			case iIconIDField:
				CheckMenuItem(dialogData.currentMenu, dialogData.currentItem, false);
				GetControlText(IDField, tempString);
				StringToNum(tempString, &temp);
				GetIDMenu(temp, &dialogData.currentMenu, &dialogData.currentItem, tempString);
				CheckMenuItem(dialogData.currentMenu, dialogData.currentItem, true);
				SetControlValue(IDMenu, GetMenuID(dialogData.currentMenu) - mBaseIDMenu + 1);
				if (tempString[0] != 0)
				{
					SetControlText(nameField, tempString);
					Draw1Control(nameField);
				}
				break;
			case iIDMenu:
				CheckMenuItem(dialogData.currentMenu, dialogData.currentItem, false);
				CheckMenuItem(dialogData.newMenu, dialogData.newItem, true);
				
				GetMenuItemText(dialogData.newMenu, dialogData.newItem, menuTitle);
				
				SetControlValue(IDMenu, GetMenuID(dialogData.newMenu) - mBaseIDMenu + 1);
				
				SplitMenuItem(menuTitle, &temp, tempString);
				SetControlText(nameField, tempString);
				NumToString(temp, tempString);
				SetControlText(IDField, tempString);
				SelectDialogItemText(infoDialog, iIconIDField, 0, 32767);
				Draw1Control(IDField);
				Draw1Control(nameField);
				
				dialogData.currentMenu = dialogData.newMenu;
				dialogData.currentItem = dialogData.newItem;
				break;
			case iFormatPopup:
				format = GetControlValue(formatPopup);
				usedMembers &= kDefaultMembers[format];
				SetMembersCheckboxes(infoDialog, usedMembers, format);
				if ((format == formatWindows) || (format == formatMacOSXServer) || (format == formatMacOSX))
				{
					if (IsControlActive(IDField))
						ToggleNonMacOSItems(infoDialog);
				}
				else if (!IsControlActive(IDField))
					ToggleNonMacOSItems(infoDialog);
				break;
			case iIconNameField:
				break;
			default:
				HandleMembersCheckbox(infoDialog, itemHit, &usedMembers, format);
				break; 
		}
	}
	
	HideWindow(GetDialogWindow(infoDialog));
	
#if !TARGET_API_MAC_CARBON
	DisposeInfoDialog();
#endif	
	
	MWindow::ActivateAll();
	
	return itemHit;
}

void icnsClass::ToggleNonMacOSItems(DialogPtr infoDialog)
{
	ControlHandle currentControl;
	
	GetDialogItemAsControl(infoDialog, iIconIDLabel, &currentControl); ToggleControl(currentControl);
	GetDialogItemAsControl(infoDialog, iIconIDField, &currentControl); ToggleControl(currentControl);
	GetDialogItemAsControl(infoDialog, iIDMenu, &currentControl); ToggleControl(currentControl);
	GetDialogItemAsControl(infoDialog, iIconNameLabel, &currentControl); ToggleControl(currentControl);
	GetDialogItemAsControl(infoDialog, iIconNameField, &currentControl); ToggleControl(currentControl);
	
	GetDialogItemAsControl(infoDialog, iFlagsGroupBox, &currentControl); ToggleControl(currentControl);
#if TARGET_API_MAC_CARBON
	GetDialogItemAsControl(infoDialog, iPurgeable, &currentControl); ToggleControl(currentControl);
	GetDialogItemAsControl(infoDialog, iPreload, &currentControl); ToggleControl(currentControl);
	GetDialogItemAsControl(infoDialog, iLocked, &currentControl); ToggleControl(currentControl);
	GetDialogItemAsControl(infoDialog, iProtected, &currentControl); ToggleControl(currentControl);
	GetDialogItemAsControl(infoDialog, iSystemHeap, &currentControl); ToggleControl(currentControl);
#endif
}

void icnsClass::SplitMenuItem(Str255 text, long* ID, Str255 iconName)
{
	int IDEnd;
	
	for (IDEnd=1; text[IDEnd] != ' '; IDEnd++) {;}
	
	text[IDEnd] = text[0] - IDEnd;
	
	text[0] = IDEnd - 1;
	if (text[1] == 208)
		text[1] = '-';
	else if (text[1] == 0x81 && text[2] == 0x7C)
	{
		text[1] = '-';
		for (int i=2; i < text[0]; i++)
			text[i] = text[i+1];
		
		text[0]--;
	}
	
	StringToNum(text, ID);
	CopyString(iconName, &text[IDEnd]);
}

void icnsClass::GetIDMenu(int ID, MenuHandle* menu, int* item, Str255 name)
{
	MenuHandle	currentMenu;
	int			itemCount;
	long		tempID;
	Str255		menuItemText, tempName;
	bool		loaded = false;
	
	CopyString(name, "\p");
	if (menu != NULL)
#if TARGET_API_MAC_CARBON
		*menu = GetMenuHandle(mBaseIDMenu + mIDMenuCount - 1);
#else
		*menu = (MenuHandle)Get1Resource('MENU', mBaseIDMenu + mIDMenuCount - 1);
#endif
	if (item != NULL)
		*item = CountMenuItems(*menu);
	
	for (int i = 0; i < mIDMenuCount; i++)
	{
		//currentMenu = (MenuHandle) Get1Resource('MENU', mBaseIDMenu + i);
		currentMenu = GetMenuHandle(mBaseIDMenu + i);
		if (currentMenu == NULL)
		{
			currentMenu = GetMenu(mBaseIDMenu + i);
			loaded = true;
		}
			
		if (currentMenu == NULL)
			DisplayValue(mBaseIDMenu + i);
		
		itemCount = CountMenuItems(currentMenu);
		
		for (int j = 1; j <= itemCount; j++)
		{
			GetMenuItemText(currentMenu, j, menuItemText);
			
			SplitMenuItem(menuItemText, &tempID, tempName);			
			
			if (ID == tempID)
			{
				CopyString(name, tempName);
				if (menu != NULL)
					*menu = currentMenu;
				else if (loaded)
					DisposeMenu(currentMenu);
					
				if (item != NULL)
					*item = j;
				
				return;
			}
		}
		
		if (loaded && (i != mIDMenuCount - 1))
			DisposeMenu(currentMenu);
	}

}

pascal Boolean icnsClass::IconInfoDialogFilter(DialogPtr dialog, EventRecord* eventPtr, short* itemHit)
{
	bool	handledEvent = false;
	
	switch (eventPtr->what)
	{
		case keyDown:
		case autoKey:
			ControlHandle IDField, focusControl;
			
			GetDialogItemAsControl(dialog, iIconIDField, &IDField);
			GetKeyboardFocus(GetDialogWindow(dialog), &focusControl);
			
			if (eventPtr->modifiers & cmdKey)
				handledEvent = StdFilterProc(dialog, eventPtr, itemHit);
			else if (focusControl == IDField)
			{
				char key;
				key = eventPtr->message & charCodeMask;  
				if ((key == kReturnCharCode) || (key == kEnterCharCode) ||
				    (key == kTabCharCode) || (key == kBackspaceCharCode) ||
				    (key == kEscapeCharCode) || (key == kDeleteCharCode) ||
				    (key == kRightArrowCharCode) || (key == kLeftArrowCharCode) ||
				    (key == kUpArrowCharCode) || (key == kDownArrowCharCode) ||
				    (key == '-') || ((key >= '0') && (key <= '9')))
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
		case mouseDown:
			MWindowPtr			infoDialogWindow;
			Point				where;
			ControlHandle		clickedControl;
			ControlPartCode		controlPart;
			EditIconInfoData*	dialogData;
			
			infoDialogWindow = GetWindow(GetDialogWindow(dialog));
			if (infoDialogWindow == NULL)
				DisplayAlert("can't find dialog's MWindow...", "");
			dialogData = (EditIconInfoData*)infoDialogWindow->GetRefCon();
			if (dialogData == NULL)
				DisplayAlert("can't find dialog data...", "");
			
			where = eventPtr->where;
			
			SAVEGWORLD;
			
			SetPortDialogPort(dialog);
			GlobalToLocal(&where);
			
			controlPart = FindControl(where, GetDialogWindow(dialog), &clickedControl);
			
			if (clickedControl == dialogData->IDMenu && controlPart != kControlNoPart)
			{
				MenuHandle menu;
				long selection;
				Rect controlBounds;
				
				menu = GetControlPopupMenuHandle(clickedControl);
				
				GetControlBounds(clickedControl, &controlBounds);
				
				where.h = controlBounds.left;
				where.v = controlBounds.top;
				LocalToGlobal(&where);
				
				InsertMenu(menu, kInsertHierarchicalMenu);
				
				selection = PopUpMenuSelect(menu, where.v, where.h, GetControlValue(clickedControl));
				
				DeleteMenu(GetMenuID(menu));
				
				if (selection)
				{
					dialogData->newMenu = GetMenuHandle(selection >> 16);
					dialogData->newItem = selection & 0x0000FFFF;
					
					*itemHit = iIDMenu;
				}
#if !TARGET_API_MAC_CARBON
				//infoDialogWindow->Invalidate();
#endif
				
				handledEvent = true;
			}
			else
				handledEvent = false;
			
			RESTOREGWORLD;
			break;
		default:
			handledEvent = MWindow::StandardDialogFilter(dialog, eventPtr, itemHit);
			break;
	}
	return handledEvent;
}

