#include "MHTMLHelp.h"
#include "MUtilities.h"

MHTMLHelp::MHTMLHelp(Str255 pathToHelpFile)
{
	FSMakeFSSpec(0, 0, pathToHelpFile, &helpFileSpec);
}

MHTMLHelp::MHTMLHelp(FSSpec inHelpFileSpec)
{
	helpFileSpec = inHelpFileSpec;
}

void MHTMLHelp::Open()
{
	if (HTMLHelpInstalled())
		OpenWithHTMLHelp();
	else if (InternetConfigInstalled())
		OpenWithInternetConfig();
	else
		OpenWithBrowser();
}

#pragma mark -

bool MHTMLHelp::HTMLHelpInstalled()
{
	return MUtilities::GestaltVersion(gestaltSystemVersion, 0x08, 0x50);
}

void MHTMLHelp::OpenWithHTMLHelp()
{
	MUtilities::SetCreatorAndType(helpFileSpec, 'hbwr', 'TEXT');
	MUtilities::AESendFinderUpdate(helpFileSpec);
	MUtilities::AESendFinderOpen(helpFileSpec);
}

#pragma mark -

bool MHTMLHelp::InternetConfigInstalled()
{
	return (ICStart(&internetConfigInstance, kMTHMLHelpICSignature) == noErr);
}

void MHTMLHelp::OpenWithInternetConfig()
{
	ICAttr		attributes;
	Handle		mappings;
	long		count;
	long		pos = 0, longestLength = 0;
	ICMapEntry	entry, bestEntry;
	OSType		oldCreator, oldType;
	
#if !TARGET_API_MAC_CARBON
	ICFindConfigFile(internetConfigInstance, 0, NULL);
#endif

	ICGetPrefHandle(internetConfigInstance, kICMapping, &attributes, &mappings);
	
	ICCountMapEntries(internetConfigInstance, mappings, &count);
	
	for (int i=1; i <= count; i++)
	{
		ICGetMapEntry(internetConfigInstance, mappings, pos, &entry);
		pos += entry.totalLength;
		if (!(entry.flags & kICMapNotIncomingMask) &&
			 (entry.extension[0] > longestLength) &&
			 (entry.extension[0] < helpFileSpec.name[0]) &&
			 (MUtilities::HasExtension(helpFileSpec, entry.extension)))
			{
				bestEntry = entry;
				longestLength = entry.extension[0];
			}
	}
	
	if (longestLength > 0)
	{
		MUtilities::GetCreatorAndType(helpFileSpec, &oldCreator, &oldType);
		MUtilities::SetCreatorAndType(helpFileSpec, bestEntry.fileCreator, bestEntry.fileType);
		MUtilities::AESendFinderUpdate(helpFileSpec);
		//MUtilities::WaitForFileUpdate(helpFileSpec);
		MUtilities::AESendFinderOpen(helpFileSpec);

	}
	
	ICStop(internetConfigInstance);
}

#pragma mark -

void MHTMLHelp::OpenWithBrowser()
{
	FSSpec				browser;
	OSErr				err;
	OSType				browserType, browserCreator;
	ProcessSerialNumber	browserSerialNumber;
	
	err = GetBrowser(&browser);
	
	if (err == noErr)
	{
		MUtilities::GetCreatorAndType(browser, &browserCreator, &browserType);
		
		err = MUtilities::FindProcessBySignature(browserType, browserCreator, &browserSerialNumber);
		if (err)
			MUtilities::AELaunchAppWithDoc(&browser, &helpFileSpec);
		else
			MUtilities::AESendOpenDocEventToApp(&browserSerialNumber, &helpFileSpec);
		
	}
}

FSSpec MHTMLHelp::GetPreferences()
{
	short				myVRef;
	long				myDirID;
	OSErr				err;
	Str255				prefsFileName;
	FSSpec				preferencesFile;
	short				preferencesRefNum;
	
	GetIndString(prefsFileName, rMHHStrings, eMHHPrefsFileName);
	
	err = FindFolder(kOnSystemDisk, kPreferencesFolderType, kDontCreateFolder, &myVRef, &myDirID);
	
	if (err == noErr)
		err = FSMakeFSSpec(myVRef, myDirID, prefsFileName, &preferencesFile);
		
	if (err == noErr)
	{
		preferencesRefNum = FSpOpenResFile(&preferencesFile, fsRdWrPerm);
		if (preferencesRefNum != -1)
			CloseResFile(preferencesRefNum);
	}
		
	if ((preferencesRefNum == -1) || (err != noErr))
	{
		FSpCreate(&preferencesFile, kMTHMLHelpICSignature, 'pref', 0); /*smRoman = 0*/
		FSpCreateResFile(&preferencesFile, kMTHMLHelpICSignature, 'pref', 0); /*smRoman = 0*/
	}
	
	return preferencesFile;
}

OSErr MHTMLHelp::GetBrowser(FSSpec* browser)
{
	FSSpec 		preferencesFile;
	short 		preferencesRefNum, oldFile;
	AliasHandle	browserAlias;
	Boolean		ignored;
	Str255		message;
	
	preferencesFile = GetPreferences();
	
	preferencesRefNum = FSpOpenResFile(&preferencesFile, fsRdWrPerm);
	oldFile = CurResFile();
	UseResFile(preferencesRefNum);
	
	browserAlias = (AliasHandle)GetResource('alis', 128);
	
	if (browserAlias == NULL)
	{
		CloseResFile(preferencesRefNum);
		UseResFile(oldFile);
		
		GetIndString(message, rMHHStrings, eMHHGetBrowserMessage);
		
		if (!MUtilities::GetFileSpec('****', 'APPL', message, NULL, browser))
			return userCanceledErr;
		
		NewAliasMinimal(browser, &browserAlias);
		
		preferencesRefNum = FSpOpenResFile(&preferencesFile, fsRdWrPerm);
		oldFile = CurResFile();
		UseResFile(preferencesRefNum);
		
		UpdateResFile(preferencesRefNum);
		AddResource((Handle)browserAlias, 'alis', 128, "\p");
		ChangedResource((Handle)browserAlias);
		WriteResource((Handle)browserAlias);
	}
	else
		ResolveAlias(NULL, browserAlias, browser, &ignored);
	
	ReleaseResource(Handle(browserAlias));
	
	CloseResFile(preferencesRefNum);
	UseResFile(oldFile);
	
	return noErr;
}
