#include "clip2icns.h"

void main(void)
{
	Initialize();
	
	EventLoop();
	
	CleanUp();
}

void Initialize()
{

#ifdef __expires__
	DateTimeRec		theDate;
	StringHandle	expirationBackDoor;
#endif
	
	InitToolbox();
	
	GetGWorld(&startupPort, &startupDevice);
	
#ifdef __expires__
	GetTime(&theDate);
	/* in case I can't access the source (and don't feel like setting the clock back)
	I can simply change (or remove) the STR resource 128 and then the expiration date will
	be ignored */
	expirationBackDoor = GetString( 128 );
	if (EqualString(*expirationBackDoor, "\p1", true, true))
	{
		if (theDate.month >= 11 && theDate.day >= 1 && theDate.year >= 1998)
		{
			DisplayAlert("This beta of clip2icns expired on November 1, 1998.", "Please go to http://cafe.ambrosiasw.com/gui-central/clip2cicn.html to get a new version");
			ExitApplication();
		}
	}
#endif __expires__

	InitMenuBar();
	
	AEInit();
	
	isDone = false;
	navServicesAvailable = NavServicesAvailable();
	appFile = CurResFile();
	
	LoadPreferences();
}

void InitMenuBar()
{
	Handle		menuBar;
	MenuHandle	menu;
	
	menuBar = GetNewMBar( kMenuBarID );
	SetMenuBar(menuBar);
	
	menu = GetMenuHandle ( mApple );
	AppendResMenu (menu, 'DRVR' );
	// we're adding all the items in the Apple Menu Items folder, like any good mac app should
	
	DrawMenuBar();
}

void LoadPreferences(void)
{
	OSStatus			err;
	FSSpec				preferencesFile;
	short				preferencesRefNum;
	short				myVRef;
	long				myDirID;
	PreferencesHandle	preferencesRes;
	Str255				testRegNo;
	MenuHandle			menu;
	
	preferences = (PreferencesHandle)NewHandleClear(sizeof(tPreferences));
	HLock((Handle)preferences);
	// these are the default values if no preferences file exists
	(**preferences).timesUsed = 0;
	CopyString((**preferences).name, "\pNot Registered");
	CopyString((**preferences).company, "\p");
	CopyString((**preferences).regNo, "\p");
	(**preferences).includeOldStyle = false;
	(**preferences).setBits = true;
	(**preferences).generateOldStyle = true;
	(**preferences).nameResources = true;
	(**preferences).dither = true;
	(**preferences).rememberSelection = true;
	(**preferences).lastID = -16455;
	
	err = FindFolder(kOnSystemDisk, kPreferencesFolderType, kDontCreateFolder, &myVRef, &myDirID);
	if (err == noErr)
		err = FSMakeFSSpec(myVRef, myDirID, "\pclip2icns Preferences", &preferencesFile);
	
	if (err == noErr)
		preferencesRefNum = FSpOpenResFile(&preferencesFile, fsRdWrPerm);
	
	if ((preferencesRefNum != -1) && (err == noErr))
	{
		UseResFile(preferencesRefNum);
		preferencesRes = (PreferencesHandle)Get1Resource('Pref', 128);
		(**preferences).timesUsed = (**preferencesRes).timesUsed;
		CopyString((**preferences).name, (**preferencesRes).name);
		CopyString((**preferences).company, (**preferencesRes).company);
		CopyString((**preferences).regNo, (**preferencesRes).regNo);
		(**preferences).includeOldStyle = (**preferencesRes).includeOldStyle;
		(**preferences).setBits = (**preferencesRes).setBits;
		if (GetResourceSizeOnDisk((Handle)preferencesRes) == 778)
		{
			(**preferences).generateOldStyle = (**preferencesRes).generateOldStyle;
			(**preferences).nameResources = (**preferencesRes).nameResources;
			(**preferences).dither = (**preferencesRes).dither;
			(**preferences).rememberSelection = (**preferencesRes).rememberSelection;
			(**preferences).lastID = (**preferencesRes).lastID;
		}
		
		if (!(EqualString((**preferences).name, "\pNot Registered", true, true)))
		{
			GenerateRegNo((**preferences).name, testRegNo);
			/* some people might attemp to edit the preferences since they want their own name
			in the about box registration field (if they didn't register the software themselves */
			if (!(EqualString((**preferences).regNo, testRegNo, true, true)))
			{
				DisplayAlert("", "The registration code does not match the name in the preferences file");
				CopyString((**preferences).name, "\pNot Registered");
				CopyString((**preferences).company, "\p");
				CopyString((**preferences).regNo, "\p");
			}
			else
			{
				// we disable the Register command since the software's already registered
				menu = GetMenuHandle(mApple);
				DisableItem(menu, iRegister);
			}
		}
		CloseResFile(preferencesRefNum);
		UseResFile(appFile);
	}
	else
	{
		// we have to make a preferences file since it doesn't exist yet
		FSpCreate(&preferencesFile, 'c2ic', 'Pref', 0); /*smRoman = 0*/
		FSpCreateResFile(&preferencesFile, 'c2ic', 'Pref', 0); /*smRoman = 0*/
		preferencesRefNum = FSpOpenResFile(&preferencesFile, fsCurPerm);
		
		UseResFile(preferencesRefNum);
		AddResource((Handle)preferences, 'Pref', 128, "\p");
		ChangedResource((Handle)preferences);
		WriteResource((Handle)preferences);
		UpdateResFile(preferencesRefNum);
		
		CloseResFile(preferencesRefNum);
		UseResFile(appFile);
		HUnlock((Handle)preferences);
		preferences = (PreferencesHandle)NewHandleClear(sizeof(tPreferences));
		HLock((Handle)preferences);
		(**preferences).timesUsed = 0;
		CopyString((**preferences).name, "\pNot Registered");
		CopyString((**preferences).company, "\p");
		CopyString((**preferences).regNo, "\p");
		(**preferences).includeOldStyle = false;
		(**preferences).setBits = true;
		(**preferences).generateOldStyle = true;
		(**preferences).nameResources = true;
		(**preferences).dither = true;
		(**preferences).rememberSelection = true;
		(**preferences).lastID = -16455;
	}
}

void EventLoop(void)
{
	EventRecord	event;

	while (!isDone)
	{
		if (WaitNextEvent (everyEvent, &event, 60, nil))
		{
			DoEvent (&event);
		}
	}
}

void DoEvent(EventRecord *eventPtr)
{
	switch (eventPtr->what)
	{
		case mouseUp: HandleMouseUp(eventPtr); break;
		case mouseDown: HandleMouseDown(eventPtr); break;
		case autoKey:
		case keyDown: HandleKeyDown(eventPtr); break;
		case updateEvt: HandleUpdate(eventPtr); break;
		case activateEvt: break;
		case kHighLevelEvent: 
				if (AEProcessAppleEvent(eventPtr) != noErr)
				{ /* error - ignored */ };
				break;
	}
}

void HandleMouseUp(EventRecord *eventPtr)
{
	eventPtr; // unused
}

void HandleMouseDown(EventRecord *eventPtr)
{
	int 		part;
	WindowPtr	thisWindow;
	GDHandle	mainScreen;
	long		menuChoice;

	part = FindWindow(eventPtr->where, &thisWindow);
	switch (part)
	{
		case inMenuBar :
			menuChoice = MenuSelect( eventPtr->where);
			DoMenuCommand(menuChoice);
			break;
		case inSysWindow :
			SystemClick(eventPtr, thisWindow);
			break;
		case inDrag :
			mainScreen = GetMainDevice();
			DragWindow( thisWindow, eventPtr->where, &( ( *mainScreen )->gdRect ));
			break;
		//case inGoAway : if (TrackGoAway(previewWindow, eventPtr->where) ) CloseScheme(); break;	
	}
}

void HandleKeyDown(EventRecord *eventPtr)
{
	char	theKey;
	
	theKey = eventPtr->message & charCodeMask;
	if ( (eventPtr->modifiers & cmdKey) != 0)
		DoMenuCommand(MenuKey(theKey));
}

void HandleUpdate(EventRecord *eventPtr)
{
	WindowPtr windowToUpdate;
	
	windowToUpdate = (WindowPtr)eventPtr->message;

	if (GetWRefCon(windowToUpdate) == 0)
	{
		BeginUpdate(windowToUpdate);
		//DisplayParts(&documentWParts, displayedParts);
		EndUpdate(windowToUpdate);
	}
}

void DoMenuCommand(long menuResult)
{
	int	menuID, menuItem;
	
	if (menuResult != 0)
	{
		menuID = HiWord(menuResult);
		menuItem = LoWord(menuResult);
		switch (menuID)
		{
			case mApple :	HandleAppleChoice(menuItem); break;
			case mFile :	HandleFileChoice(menuItem); break;
			case mEdit :	HandleEditChoice(menuItem); break;
		}
		HiliteMenu(0);
	}
}

void HandleAppleChoice(int item)
{
	MenuHandle	appleMenu;
	Str255		accName;
	short		accNumber;
	
	switch (item)
	{
		case iAbout : ShowAboutBox(); break;
		case iRegister : Register(); break;
		default :
			appleMenu = GetMenuHandle (mApple);
			GetMenuItemText(appleMenu, item, accName);
			accNumber = OpenDeskAcc(accName);
			break;
	}
}

void ShowAboutBox()
{
	DialogPtr		aboutBox;
	bool			dialogDone;
	short			itemHit;
	GWorldPtr		picGWorld, maskGWorld, tempGWorld;
	PixMapHandle	picPix, maskPix, tempPix;
	Rect			targetRect, picRect;
	Handle			item;
	short			itemType;
	Str255			address, tempString;
	
	aboutBox = GetNewDialog (aboutBoxID, nil, (WindowPtr)-1L);
	SetPort( aboutBox);
	SetDialogDefaultItem(aboutBox, kOk);
	
	ShowWindow( aboutBox );
	GetDialogItem(aboutBox, kNameField, &itemType, &item, &picRect);
	SetDialogItemText(item, (**preferences).name);
	GetDialogItem(aboutBox, kCompanyField, &itemType, &item, &picRect);
	SetDialogItemText(item, (**preferences).company);
	
	GetDialogItem(aboutBox, kAboutPic, &itemType, &item, &picRect);
	targetRect = picRect;
	OffsetRect(&picRect, -picRect.left, -picRect.top);
	NewGWorld(&tempGWorld, 32, &picRect, NULL, NULL, 0);
	tempPix = GetGWorldPixMap(tempGWorld);
	LockPixels(tempPix);
	
	NewGWorld(&picGWorld, 32, &picRect, NULL, NULL, 0);
	
	SetGWorld(picGWorld, NULL);
	DrawPicture(GetPicture(aboutPicID), &picRect);
	picPix = GetGWorldPixMap(picGWorld);
	LockPixels(picPix);
	
	NewGWorld(&maskGWorld, 32, &picRect, NULL, NULL, 0);
	SetGWorld(maskGWorld, NULL);
	DrawPicture(GetPicture(aboutPicMaskID), &picRect);
	maskPix = GetGWorldPixMap(maskGWorld);
	LockPixels(maskPix);
	
	SetGWorld(picGWorld, NULL);
	
	CopyBits(&aboutBox->portBits,
			 (BitMap *) *tempPix,
			 &targetRect,
			 &picRect,
			 srcCopy,
			 NULL);	
	
	CopyDeepMask((BitMap *) *picPix,
				 (BitMap *) *maskPix,
				 (BitMap *) *tempPix,
				 &picRect,
				 &picRect,
				 &picRect,
				 srcCopy,
				 NULL);

	CopyBits((BitMap *) *tempPix,
			 &aboutBox->portBits,
			 &picRect,
			 &targetRect,
			 srcCopy + ditherCopy,
			 NULL);	
			 
	SetPort(aboutBox);	
		 
	UnlockPixels(picPix);
	UnlockPixels(maskPix);
	UnlockPixels(tempPix);
	
	DisposeGWorld(picGWorld);
	DisposeGWorld(maskGWorld);
	DisposeGWorld(tempGWorld);
	
	dialogDone = false;
	while (!dialogDone)
	{
		ModalDialog(nil, &itemHit);
		
		switch (itemHit)
		{
			case kEmailAddress:
				GetDialogItem(aboutBox, kEmailAddress, &itemType, &item, &picRect);
				GetDialogItemText(item, tempString);
				CopyString(address, "\pmailto:");
				for (int i = 1; i <= tempString[0]; i++)
					address[7+i] = tempString[i];
				address[0] += tempString[0];
				dialogDone = true;
				if (LaunchURL((ConstStr255Param)address) != noErr)
					DisplayAlert("Can't launch URL.", "Internet Config must be installed");
				break;
			case kHomepageAddress:
				GetDialogItem(aboutBox, kHomepageAddress, &itemType, &item, &picRect);
				GetDialogItemText(item, address);
				dialogDone = true;
				if (LaunchURL((ConstStr255Param)address) != noErr)
					DisplayAlert("Can't launch URL.", "Internet Config must be installed");
				break;
			case kOk: dialogDone = true; break;
			case kAboutPic:
				if (IsKeyPressed(0x3A))
				{
					DisplayAlert("","Dedicated to Caterina!");
					dialogDone = true;
					break;
				}
		}
	}
	DisposeDialog(aboutBox);
	SetGWorld(startupPort, startupDevice);
}

void GenerateRegNo(Str255 name, Str255 regNo)
{
	long i;
	
	regNo[0] = 6;
	
	for (i=1; i <= 6; i++)
		regNo[i] = (name[i] % 10);
	for (i=1; i <= 6; i++)
		regNo[i] = ((regNo[i] + name[i+6]) % 10);
	for (i=1; i <=6; i++)
		regNo[i] = ((regNo[i] + name[i+12]) % 10);
	for (i=1; i <=6; i++)
		regNo[i] = ((regNo[i] + name[i+18]) % 10);
	
	regNo[1] = ((regNo[1] + 2) % 10) + '0';
	regNo[2] = ((regNo[2] + 4) % 10) + '0';
	regNo[3] = ((regNo[3] + 0) % 10) + '0';
	regNo[4] = ((regNo[4] + 9) % 10) + '0';
	regNo[5] = ((regNo[5] + 9) % 10) + '0';
	regNo[6] = ((regNo[6] + 8) % 10) + '0';	
}

void Register()
{
	DialogPtr		registration;
	bool			dialogDone;
	short			itemHit;
	Handle			item;
	short			itemType;
	Rect			itemRect;
	Str255			name, regNo, enteredRegNo, company;
	FSSpec			registerSpec;
	MenuHandle		menu;
	
	registration = GetNewDialog (registrationID, nil, (WindowPtr)-1L);
	SetPort( registration);
	SetDialogDefaultItem(registration, kRegister);
	SetDialogCancelItem(registration, kCancel);
	
	ShowWindow( registration );
	
	dialogDone = false;
	while (!dialogDone)
	{
		ModalDialog(nil, &itemHit);
		
		switch (itemHit)
		{
			case kRegister:
				GetDialogItem(registration, kNameField, &itemType, &item, &itemRect);
				GetDialogItemText(item, name);
				for (int i= name[0] + 1; i <= 24; i++)
					name[i] = ' ';
				name[0] = 24;
				GenerateRegNo(name, regNo);
				GetDialogItem(registration, kRegNoField, &itemType, &item, &itemRect);
				GetDialogItemText(item, enteredRegNo);
				if (EqualString(regNo, enteredRegNo, true, true))
				{
					GetDialogItem(registration, kCompanyField, &itemType, &item, &itemRect);
					GetDialogItemText(item, company);
					CopyString((**preferences).name, name);
					CopyString((**preferences).company, company);
					CopyString((**preferences).regNo, regNo);
					DisposeDialog(registration);
					SetGWorld(startupPort, startupDevice);
					DisplayAlert("","Thank you for registering clip2icns");
					menu = GetMenuHandle(mApple);
					DisableItem(menu, iRegister);
					return;
				}
				else
					DisplayAlert("The registration code that you have typed is incorrect.", "Please enter it EXACTLY as it is shown in the email that you have received");
				break;	
			case kCancel: dialogDone = true; break;
			case kLaunchRegister:
				if (FSMakeFSSpec(0, 0, "\p:Register", &registerSpec) != noErr)
				{
					DisplayAlert("Couldn't find the \"Register\" application", "Please reinstall clip2icns");
				}
				else
				{
					DisposeDialog(registration);
					SetGWorld(startupPort, startupDevice);
					SendFinderAEOpen(registerSpec);
					return;
				}
				break;
		}
		
	}
	DisposeDialog(registration);
	SetGWorld(startupPort, startupDevice);
}

void HandleFileChoice(int item)
{
	switch (item)
	{
		case iNewIcon : NewIcon(); break;
		case iOpenIcon : OpenIcon(); break;
		case iQuit :isDone = true; break;
	}
}

void NewIcon()
{
	OSStatus	theErr;

	theErr = NewFile("\pclip2icns", 'RSED', 'rsrc', "\pUntitled 32 Bit Icon", "\pSave Icon:",  &fileSpec);
	if (theErr == noErr)
		EditIcon(true);
}

void OpenIcon()
{
	OSStatus	theErr;
	
	theErr = GetFile("\pclip2icns", '****', '****', "\pPick an icon file to edit.", &fileSpec);
	if (theErr == noErr)
		EditIcon(false);
}

void DrawImageWell(Rect bounds)
{
	RGBColor		currentForeColor;
	CTabHandle		schemeColors;
	RGBColor		borderBR = {0, 0, 0};
	RGBColor		borderTL = {0, 0, 0};
	RGBColor		bevelBR = {0xFFFF, 0xFFFF, 0xFFFF};
	RGBColor		bevelTL = {39321, 39321, 39321};
	
	
	GetForeColor(&currentForeColor);
	schemeColors = GetCTable(-14336);
	if (schemeColors != NULL)
	{
		borderBR = (**schemeColors).ctTable[0].rgb;
		borderTL = (**schemeColors).ctTable[2].rgb;
		bevelBR = (**schemeColors).ctTable[3].rgb;
		bevelTL = (**schemeColors).ctTable[4].rgb;
	}
	
	ForeColor(whiteColor);
	PaintRect(&bounds);
	
	RGBForeColor(&borderBR);
	MoveTo(bounds.left - 1, bounds.bottom);
	LineTo(bounds.left - 1, bounds.top - 1);
	LineTo(bounds.right, bounds.top - 1);
	
	RGBForeColor(&borderTL);
	LineTo(bounds.right, bounds.bottom);
	LineTo(bounds.left - 1, bounds.bottom);

	RGBForeColor(&bevelBR);
	MoveTo(bounds.left - 2, bounds.bottom + 1);
	LineTo(bounds.right + 1, bounds.bottom + 1);
	LineTo(bounds.right + 1, bounds.top);
	
	RGBForeColor(&bevelTL);
	MoveTo(bounds.left-2, bounds.bottom);
	LineTo(bounds.left-2, bounds.top-2);
	LineTo(bounds.right, bounds.top-2);
	
	RGBForeColor(&currentForeColor);
}

#define ChangeIconPopup()\
{\
	GetDialogItem(editIcon, kIconPopup, &itemType, &item, &itemRect);\
	if ((**(PopupPrivateDataHandle)(**(ControlHandle)item).contrlData).mID != selectedType)\
	{\
		DisposeControl((ControlHandle)item);\
		(ControlHandle)item = NewControl(editIcon,\
										 &popupRect,\
										 "\pIcon:",\
										 true,\
										 0,\
										 selectedType,\
										 50,\
										 popupMenuProc + popupFixedWidth,\
										 0);\
		\
		(**(PopupPrivateDataHandle)(**(ControlHandle)item).contrlData).mID = selectedType;\
		(**(PopupPrivateDataHandle)(**(ControlHandle)item).contrlData).mHandle = GetMenu(selectedType);\
	}\
	GetDialogItem(editIcon, kIconPopup, &itemType, &item, &itemRect);\
	SetControlValue((ControlHandle)item, selectedIcns);\
	\
	GetDialogItem(editIcon, kTypesPopup, &itemType, &item, &itemRect);\
	SetControlValue((ControlHandle)item, selectedType - baseMenuID + 1);\
}
				

void EditIcon(bool createFile)
{
	DialogPtr			editIcon;
	bool				dialogDone;
	short				itemHit;
	Rect				itemRect;
	long				ID;
	Handle				item;
	short				itemType;
	short				file;
	Str255				errorNumber;
	Rect				popupRect;
	int					selectedIcns, selectedType=201;
	Str255				IDAsString, icnsName, windowTitle;
	ModalFilterUPP		eventFilter;
	
	eventFilter = NewModalFilterProc(StandardDialogFilter);
	
	if (createFile)
	{
		FSpDelete(&fileSpec);
		FSpCreate(&fileSpec, 'RSED', 'rsrc', 0); /*smRoman = 0*/
		FSpCreateResFile(&fileSpec, 'RSED', 'rsrc', 0); /*smRoman = 0*/
	}
	
	//appFile = CurResFile();
	file = FSpOpenResFile(&fileSpec, fsRdWrPerm);
	if (!createFile && file == -1)
	{
		switch (ResError())
		{
			case noErr:
				break;
			case opWrErr:
				DisplayAlert("You can't edit this file since it's currently open in another application.", "Please close it and try again");
				return;
				break;
			case eofErr:
				FInfo fileInfo;
				FSpGetFInfo(&fileSpec, &fileInfo);
				FSpCreateResFile(&fileSpec, fileInfo.fdCreator, fileInfo.fdType, 0); /*smRoman = 0*/
				break;
			default:
				NumToString(ResError(), errorNumber);
				DisplayPAlert("\pSomething happened that wasn't supposed to happen. Error of type: ", errorNumber);
				return;
				break;
		}
	}
	CloseResFile(file);
	UseResFile(appFile);
	
	editIcon = GetNewDialog (editIconID, nil, (WindowPtr)-1L);
	
	GetWTitle(editIcon, windowTitle);
	AppendString(windowTitle, "\p: ");
	AppendString(windowTitle, fileSpec.name);
	SetWTitle(editIcon, windowTitle);
	
	SetDialogDefaultItem(editIcon, kInsert);
	SetDialogCancelItem( editIcon, kCancel );
	SetDialogTracksCursor(editIcon,true);
	
	SelectDialogItemText( editIcon, kIDField, 0, 32767);
	
	GetDialogItem(editIcon, kIconPopup, &itemType, &item, &popupRect);
	
	ShowWindow( editIcon );
	
	if ((**preferences).rememberSelection)
		ID = (**preferences).lastID;
	else
		ID = -16455;

	GetIconMenu(ID, &selectedType, &selectedIcns, icnsName);
	ChangeIconPopup();
	NumToString(ID, IDAsString);
	GetDialogItem(editIcon, kIDField, &itemType, &item, &itemRect);
	SetDialogItemText(item, IDAsString);
	RedrawEditDialog(editIcon);

	dialogDone = false;
	while (!dialogDone)
	{
		ModalDialog(eventFilter, &itemHit);
		switch (itemHit)
		{
			case kIDField:
				GetDialogItem(editIcon, kIDField, &itemType, &item, &itemRect);
				GetDialogItemText(item, IDAsString);
				StringToNum(IDAsString, &ID);
				GetIconMenu(ID, &selectedType, &selectedIcns, icnsName);
				ChangeIconPopup();
				RedrawEditDialog(editIcon);
				break;
			case kInsert: 
				GetDialogItem(editIcon, kIDField, &itemType, &item, &itemRect);
				GetDialogItemText(item, IDAsString);
				StringToNum(IDAsString, &ID);
				if (!(**preferences).nameResources)
					CopyString(icnsName, "\p");
				else
					GetIconMenu(ID, &selectedType, &selectedIcns, icnsName);
				clip2icns(ID, icnsName);
				RedrawEditDialog(editIcon);
				break;
			case kClose:
				dialogDone = true;
				break;
			case kExtract:
				GetDialogItem(editIcon, kIDField, &itemType, &item, &itemRect);
				GetDialogItemText(item, IDAsString);
				StringToNum(IDAsString, &ID);
				icns2clip(ID);
				RedrawEditDialog(editIcon);
				break;
			case kTypesPopup:
				GetDialogItem(editIcon, kTypesPopup, &itemType, &item, &itemRect);
				selectedType = GetControlValue((ControlHandle)item) + baseMenuID - 1;
				
				selectedIcns = 1;
				ChangeIconPopup();
				RedrawEditDialog(editIcon);
				
				break;
			case kIconPopup:
				GetDialogItem(editIcon, kIconPopup, &itemType, &item, &itemRect);
				selectedIcns = GetControlValue((ControlHandle)item);
				
				RedrawEditDialog(editIcon);
				
				break;
		}
	}
	
	if ((**preferences).rememberSelection)
	{
		GetDialogItem(editIcon, kIDField, &itemType, &item, &itemRect);
		GetDialogItemText(item, IDAsString);
		StringToNum(IDAsString, &ID);
		(**preferences).lastID = ID;
	}
	
	DisposeDialog(editIcon);
}

pascal bool StandardDialogFilter(DialogPtr dialog, EventRecord* eventPtr, short* itemHit)
{
	char 	key;
	bool	handledEvent = false;
	GrafPtr	oldPort;
	
	switch (eventPtr->what)
	{
		case osEvt:
			
		//case activateEvt:
			GetPort(&oldPort);
			SetPort(dialog);
			InvalRect(&dialog->portRect);
			SetPort(oldPort);
		case updateEvt:
			if ((WindowPtr) eventPtr->message != dialog)
				HandleUpdate(eventPtr);
			else
			{
				if (!IsFrontProcess()) BeginUpdate(dialog);
				RedrawEditDialog(dialog);
				if (!IsFrontProcess()) EndUpdate(dialog);
			}
			break;
		case keyDown:
		case autoKey:
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

void RedrawEditDialog(DialogPtr dialog)
{
	icnsClass clipboardicns, currenticns;
	Rect				itemRect;
	long				ID;
	ControlHandle		item;
	short				itemType, i, file, x, y;
	Str255				IDAsString = "\p", menuItemText = "\p";
	short				selectedType, selectedIcns;
	PixPatHandle		desktopPattern;
	Rect				clipboardPreviewRect, iconPreviewRect, sourceRect, tempRect, currentLargeIconRect, currentSmallIconRect;
	CGrafPtr			oldPort;
	GDHandle			oldDevice;
	
	GetGWorld(&oldPort, &oldDevice);
	SetPort(dialog);
	
	if (!IsFrontProcess())
	{
		GetDialogItem(dialog, kInsert, &itemType, &((Handle)item), &itemRect);
		if ((**item).contrlHilite != 255) HiliteControl(item,255);
		GetDialogItem(dialog, kClose, &itemType, &((Handle)item), &itemRect);
		if ((**item).contrlHilite != 255) HiliteControl(item,255);
		GetDialogItem(dialog, kExtract, &itemType, &((Handle)item), &itemRect);
		if ((**item).contrlHilite != 255) HiliteControl(item,255);
		GetDialogItem(dialog, kIconPopup, &itemType, &((Handle)item), &itemRect);
		if ((**item).contrlHilite != 255) HiliteControl(item,255);
		GetDialogItem(dialog, kTypesPopup, &itemType, &((Handle)item), &itemRect);
		if ((**item).contrlHilite != 255) HiliteControl(item,255);
	}
	else
	{
		GetDialogItem(dialog, kInsert, &itemType, &(Handle)item, &itemRect);
		if (CheckClipboard(false))
			HiliteControl(item,0);
		else
			HiliteControl(item,255);
		GetDialogItem(dialog, kClose, &itemType, &(Handle)item, &itemRect);
		if ((**item).contrlHilite != 0) HiliteControl(item,0);
		GetDialogItem(dialog, kExtract, &itemType, &(Handle)item, &itemRect);
		if ((**item).contrlHilite != 0) HiliteControl(item,0);
		GetDialogItem(dialog, kIconPopup, &itemType, &(Handle)item, &itemRect);
		if ((**item).contrlHilite != 0) HiliteControl(item,0);
		GetDialogItem(dialog, kTypesPopup, &itemType, &(Handle)item, &itemRect);
		if ((**item).contrlHilite != 0) HiliteControl(item,0);
	}
	
	GetDialogItem(dialog, kIconPopup, &itemType, &(Handle)item, &itemRect);
	selectedType = (**(PopupPrivateDataHandle)(**item).contrlData).mID;
	selectedIcns = GetControlValue(item);
	
	desktopPattern = GetPixPat(16);
	GetDialogItem(dialog, kClipboardPreview, &itemType, &(Handle)item, &clipboardPreviewRect);
	DrawImageWell(clipboardPreviewRect);
	FillCRect(&clipboardPreviewRect, desktopPattern);
	GetDialogItem(dialog, kCurrentIconPreview, &itemType, &(Handle)item, &iconPreviewRect);
	DrawImageWell(iconPreviewRect);
	FillCRect(&iconPreviewRect, desktopPattern);
	
	if (CheckClipboard(false))
		clipboardicns.ImportFromClipboard((**preferences).dither);
	
	GetDialogItem(dialog, kClipboardPreview, &itemType, &(Handle)item, &sourceRect);
	sourceRect.left += (sourceRect.right - sourceRect.left)/2;
	tempRect = largeIconRect;
	MakeTargetRect(sourceRect, &tempRect);
	clipboardicns.Display(tempRect);
	
	GetDialogItem(dialog, kClipboardPreview, &itemType, &(Handle)item, &sourceRect);
	sourceRect.right -= (sourceRect.right - sourceRect.left)/2;
	tempRect = smallIconRect;
	MakeTargetRect(sourceRect, &tempRect);
	clipboardicns.Display(tempRect);
	
	GetDialogItem(dialog, kCurrentIconPreview, &itemType, &(Handle)item, &sourceRect);
	sourceRect.left += (sourceRect.right - sourceRect.left)/2;
	currentLargeIconRect = largeIconRect;
	MakeTargetRect(sourceRect, &currentLargeIconRect);
	
	GetDialogItem(dialog, kCurrentIconPreview, &itemType, &(Handle)item, &sourceRect);
	sourceRect.right -= (sourceRect.right - sourceRect.left)/2;
	currentSmallIconRect = smallIconRect;
	MakeTargetRect(sourceRect, &currentSmallIconRect);

	if ((selectedType == baseMenuID + menuCount - 1) && (selectedIcns == CountMItems((MenuHandle)Get1Resource('MENU', selectedType))))
	{
		GetDialogItem(dialog, kIDField, &itemType, &(Handle)item, &sourceRect);
		GetDialogItemText((Handle)item, IDAsString);
		StringToNum(IDAsString, &ID);
	}
	else
	{
		GetMenuItemText(GetMenu(selectedType), selectedIcns, menuItemText);
		CopyString(IDAsString, menuItemText);
		for (i=1; IDAsString[i] != ' '; i++){;}
		if (IDAsString[1] == 208) IDAsString[1] = '-';
		IDAsString[0] = i-1;
		GetDialogItem(dialog, kIDField, &itemType, &(Handle)item, &itemRect);
		SetDialogItemText((Handle)item, IDAsString);
		SelectDialogItemText( dialog, kIDField, 0, 32767);
		StringToNum(IDAsString, &ID);
	}
	
	file = FSpOpenResFile(&fileSpec, fsRdWrPerm);
	UseResFile(file);
	if (Get1Resource('icns', ID) || Get1Resource('icl8', ID) || Get1Resource('ics8', ID))
	{
		FillCRect(&iconPreviewRect, desktopPattern);
		currenticns.ID = ID;
		currenticns.srcFileSpec = fileSpec;
		currenticns.Load();
		currenticns.Display(currentLargeIconRect);
		currenticns.Display(currentSmallIconRect);
		GetDialogItem(dialog, kExtract, &itemType, &(Handle)item, &itemRect);
		if (item == NULL) SysBeep(6);
		if (IsFrontProcess())
			HiliteControl((ControlHandle)item,0);
		else
			HiliteControl((ControlHandle)item,255);
	}
	else
	{
		GetDialogItem(dialog, kCurrentIconPreview, &itemType, &(Handle)item, &sourceRect);
		x = sourceRect.left + (sourceRect.right - sourceRect.left)/2 - StringWidth("\pNot Available")/2;
		y = sourceRect.top + (sourceRect.bottom - sourceRect.top)/2 + 6;
		FillCRect(&iconPreviewRect, desktopPattern);
		MoveTo(x, y);
		DrawString("\pNot Available");
		GetDialogItem(dialog, kExtract, &itemType, &(Handle)item, &itemRect);
		HiliteControl((ControlHandle)item,255);
	}
	CloseResFile(file);
	UseResFile(appFile);
	
	DisposePixPat(desktopPattern);
	
	DrawDialog(dialog);
	
	SetGWorld(oldPort, oldDevice);
	
}

void GetIconMenu(int ID, int* group, int* item, Str255 name)
{
	MenuHandle	currentMenu;
	int			itemCount;
	int			IDLength;
	int			menuLength;
	Str255		menuItemText, IDAsString;
	
	CopyString(name, "\p ");
	*group = baseMenuID + menuCount - 1; // "Others" group, always last
	*item = CountMItems((MenuHandle)Get1Resource('MENU', *group)); // "Custom ID", always last
	
	NumToString(ID, IDAsString);
	
	IDAsString[IDAsString[0] + 1] = ' ';
	
	IDLength = IDAsString[0]++;
	
	if (IDAsString[1] == '-')
		IDAsString[1] = 'Ð';
	
	for (int i = 0; i < menuCount; i++)
	{
		UseResFile(appFile);
		currentMenu = (MenuHandle) Get1Resource('MENU', baseMenuID + i);
		
		if (currentMenu == NULL)
			DisplayValue(baseMenuID + i);
		
		itemCount = CountMItems(currentMenu);
		
		for (int j = 1; j <= itemCount; j++)
		{
			GetMenuItemText(currentMenu, j, menuItemText);			
			
			menuLength = menuItemText[0];
			
			menuItemText[0] = IDLength + 1;
			
			if (EqualString(IDAsString, menuItemText, true, true))
			{
				*group = baseMenuID + i;
				*item = j;
				
				CopyString(name, &(menuItemText[IDLength + 1]));
				name[0] = menuLength - IDLength;
				name[menuLength - IDLength] = ' ';
				return;
			}
		}
	}
}

void icns2clip(short ID)
{
	icnsClass		currenticns;
	OpenCPicParams		picParams;
	PicHandle			pic;
	GWorldPtr			clipboardGW;
	PixMapHandle		clipboardPix;
	Rect				clipboardRect = {0, 0, 32, 80};
	OSStatus			err;
	RgnHandle			oldClip;
	
	SAVEGWORLD;
	oldClip = NewRgn();
	 GetClip(oldClip);
	
	NewGWorld(&clipboardGW, 32, &clipboardRect, NULL, NULL, 0);
	clipboardPix = GetGWorldPixMap(clipboardGW);
	LockPixels(clipboardPix);
	
	currenticns.ID = ID;
	currenticns.srcFileSpec = fileSpec;
	currenticns.Load();
	currenticns.ExportToPixMap(clipboardPix);
	
	picParams.srcRect = clipboardRect;
	picParams.hRes =  0x00480000;
	picParams.vRes =  0x00480000;
	picParams.version = -2;
	picParams.reserved1 = 0;
	picParams.reserved2 = 0;
	pic = OpenCPicture(&picParams);
	ClipRect(&clipboardRect);
	CopyBits((BitMap*)*clipboardPix, &qd.thePort->portBits, &clipboardRect, &clipboardRect, srcCopy, NULL);
	ClosePicture();
	
	ZeroScrap();
	int picSize;
	picSize = GetHandleSize((Handle)pic);
	err = PutScrap(picSize, 'PICT', *pic);
	if (err != noErr)
		DisplayValue(err);
	KillPicture(pic);
	
	RESTOREGWORLD;
	
	SetClip(oldClip);
	
	UnlockPixels(clipboardPix);
	DisposeGWorld(clipboardGW);
	

	Nag();
}


void clip2icns(short icnsID, Str255 icnsName)
{
	icnsClass	clipboardicns;
	long		flags = 0;
	
	FInfo		fndrInfo;
	
	if (FSpGetFInfo(&fileSpec, &fndrInfo) != noErr)
	{
		FSpDelete(&fileSpec);
		FSpCreate(&fileSpec, 'RSED', 'rsrc', 0);
		FSpCreateResFile(&fileSpec, 'RSED', 'rsrc', 0);
	}
	
	clipboardicns.ImportFromClipboard((**preferences).dither);
	
	
	if ((**preferences).setBits && icnsID != -16455)
		clipboardicns.flags =  resSysHeap + resPurgeable;
	
	clipboardicns.ID = icnsID;
	
	CopyString(clipboardicns.name, icnsName);
	
	clipboardicns.srcFileSpec = fileSpec;
	if ((**preferences).includeOldStyle)
		flags |= includeOldStyle;
	if ((**preferences).generateOldStyle)
		flags |= generateOldStyle;
	clipboardicns.Save(flags);
	
	Nag();
}

void Nag(void)
{
	(**preferences).timesUsed++;
	
	if ((((**preferences).timesUsed % 10 == 0) || ((**preferences).timesUsed >= 50)) && (EqualString((**preferences).name, "\pNot Registered", true, true)))
	{
		short		itemHit;
		Str255		timesUsedStr;
		
		SAVEGWORLD;
	
		NumToString((**preferences).timesUsed, timesUsedStr);
		ParamText(timesUsedStr, nil, nil, nil);
		itemHit = NoteAlert(nagID, nil);
		
		if (itemHit == kRegister)
			Register();
			
		RESTOREGWORLD;
	}
}

void HandleEditChoice(int item)
{
	switch (item)
	{
		case iPreferences : SetPreferences(); break;
	}
}

void SetPreferences(void)
{
	bool			dialogDone = false;
	DialogPtr		preferencesDialog;
	ControlHandle	includeOldStyle, setBits, generateOldStyle, nameResources, dither, rememberSelection;
	Rect			itemRect;
	short			itemHit, itemType;
	
	preferencesDialog = GetNewDialog(preferencesID, NULL, (WindowPtr)-1L);
	SetPort(preferencesDialog);
	
	SetDialogDefaultItem(preferencesDialog, kOk);
	SetDialogCancelItem(preferencesDialog, kCancel);
	
	GetDialogItem(preferencesDialog, kIncludeOldStyle, &itemType, &((Handle)includeOldStyle), &itemRect);
	GetDialogItem(preferencesDialog, kSetBits, &itemType, &((Handle)setBits), &itemRect);
	GetDialogItem(preferencesDialog, kGenerateOldStyle, &itemType, &((Handle)generateOldStyle), &itemRect);
	GetDialogItem(preferencesDialog, kNameResources, &itemType, &((Handle)nameResources), &itemRect);
	GetDialogItem(preferencesDialog, kDither, &itemType, &((Handle)dither), &itemRect);
	GetDialogItem(preferencesDialog, kRememberSelection, &itemType, &((Handle)rememberSelection), &itemRect);
	
	SetControlValue(includeOldStyle, (**preferences).includeOldStyle);
	SetControlValue(setBits, (**preferences).setBits);
	SetControlValue(generateOldStyle, (**preferences).generateOldStyle);
	SetControlValue(nameResources, (**preferences).nameResources);
	SetControlValue(dither, (**preferences).dither);
	SetControlValue(rememberSelection, (**preferences).rememberSelection);
	
	ShowWindow(preferencesDialog);
	
	while(!dialogDone)
	{
		ModalDialog(NULL, &itemHit);
		switch (itemHit)
		{
			case kOk:
				dialogDone = true;
				(**preferences).includeOldStyle = GetControlValue(includeOldStyle);
				(**preferences).setBits = GetControlValue(setBits);
				(**preferences).generateOldStyle = GetControlValue(generateOldStyle);
				(**preferences).nameResources = GetControlValue(nameResources);
				(**preferences).dither = GetControlValue(dither);
				(**preferences).rememberSelection = GetControlValue(rememberSelection);
				break;
			case kCancel: dialogDone = true; break;
			case kIncludeOldStyle: ToggleCheckbox(includeOldStyle); break;
			case kSetBits: ToggleCheckbox(setBits); break;
			case kGenerateOldStyle: ToggleCheckbox(generateOldStyle); break;
			case kNameResources: ToggleCheckbox(nameResources); break;
			case kDither: ToggleCheckbox(dither); break;
			case kRememberSelection: ToggleCheckbox(rememberSelection); break;
		}
	}

	DisposeDialog(preferencesDialog);
	SetGWorld(startupPort, startupDevice);
}

void CleanUp(void)
{
	OSStatus	err;
	FSSpec		preferencesFile;
	short		preferencesRefNum;
	short		myVRef;
	long		myDirID;
	Handle		oldPrefs;

	err = FindFolder(kOnSystemDisk, kPreferencesFolderType, kDontCreateFolder, &myVRef, &myDirID);
	if (err == noErr)
		err = FSMakeFSSpec(myVRef, myDirID, "\pclip2icns Preferences", &preferencesFile);
	
	if (err == noErr)
		preferencesRefNum = FSpOpenResFile(&preferencesFile, fsRdWrPerm);
	

	if ((preferencesRefNum != -1) && (err == noErr))
	{
		UseResFile(preferencesRefNum);
		oldPrefs = Get1Resource('Pref', 128);
		if (oldPrefs != NULL)
		{
			RemoveResource(oldPrefs);
			UpdateResFile(preferencesRefNum);
			CloseResFile(preferencesRefNum);
			UseResFile(appFile);
			preferencesRefNum = FSpOpenResFile(&preferencesFile, fsRdWrPerm);
			UseResFile(preferencesRefNum);
		}
		if (preferences == NULL)
			DisplayAlert("NULL", "");
		AddResource((Handle)preferences, 'Pref', 128, "\p");
		ChangedResource((Handle)preferences);
		WriteResource((Handle)preferences);
		UpdateResFile(preferencesRefNum);
		CloseResFile(preferencesRefNum);
		UseResFile(appFile);
	}
	else
	{
		DisplayAlert("Problem saving preferences", "");
	}
	HUnlock((Handle)preferences);
	DisposeHandle((Handle)preferences);
	ExitApplication();
}
