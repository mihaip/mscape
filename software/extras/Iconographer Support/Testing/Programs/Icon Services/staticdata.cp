// static data.
// some of this was taken from J.W. Walkers FindIcon library.
// http://users.aol.com/~jwwalker
//
//**************************************************************************************
// 
//    PIconServices. Refcounted icons, uses icon Services if available.
//    Copyright © 1999  Peter O'Gorman.
//	  E-Mail: ogorman@kagi.com
//	  Web: http://www.ogorman.dircon.co.uk
//
//    This library is free software; you can redistribute it and/or
//    modify it under the terms of the GNU Library General Public
//    License as published by the Free Software Foundation; either
//    version 2 of the License, or (at your option) any later version.
//
//    This library is distributed in the hope that it will be useful,
//    but WITHOUT ANY WARRANTY; without even the implied warranty of
//    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
//    Library General Public License for more details.
//
//    You should have received a copy of the GNU Library General Public
//    License along with this library; if not, write to the Free
//    Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
//**************************************************************************************
#include <MacTypes.h>
#include <Icons.h>
#include <Folders.h>
#include "StaticData.h"

// there are more in Appearance Extension... This lot is for no Appearance.
const IconTypePair sIconSuiteTypePair[] =
{
	{ kGenericDocumentIcon,kGenericDocumentIconResource },
	{ kGenericStationeryIcon,kGenericStationeryIconResource },
	{ kGenericEditionFileIcon,kGenericEditionFileIconResource },
	{ kGenericApplicationIcon,kGenericApplicationIconResource },
	{ kGenericDeskAccessoryIcon,kGenericDeskAccessoryIconResource },
	{ kGenericFolderIcon,kGenericFolderIconResource },
	{ kPrivateFolderIcon,kPrivateFolderIconResource },
	{ kGenericFloppyIcon,kFloppyIconResource	 },
	{ kTrashIcon,kTrashIconResource },
	{ kGenericRAMDiskIcon,kGenericRAMDiskIconResource },
	{ kGenericCDROMIcon,kGenericCDROMIconResource },
	{ kGenericPreferencesIcon,kGenericPreferencesIconResource },
	{ kGenericQueryDocumentIcon,kGenericQueryDocumentIconResource  },
	{ kGenericExtensionIcon,kGenericExtensionIconResource },
	{ kSystemFolderIcon,kSystemFolderIconResource },
	{ kAppleMenuFolderIcon,kAppleMenuFolderIconResource },
	{ kStartupItemsFolderIcon,kStartupFolderIconResource },
	{ kShutdownItemsFolderIcon,kStartupFolderIconResource },
	{ kOwnedFolderIcon,kOwnedFolderIconResource },
	{ kDropFolderIcon,kDropFolderIconResource	 },
	{ kSharedFolderIcon,kSharedFolderIconResource },
	{ kMountedFolderIcon,kMountedFolderIconResource },
	{ kControlPanelFolderIcon,kControlPanelFolderIconResource },
	{ kPrintMonitorFolderIcon,kPrintMonitorFolderIconResource },
	{ kPreferencesFolderIcon,kPreferencesFolderIconResource },
	{ kExtensionsFolderIcon,kExtensionsFolderIconResource },
	{ kFontsFolderIcon,kFontsFolderIconResource },
	{ kFullTrashIcon,kFullTrashIconResource },
	// these ase in the system file as SICNs in pre appearance systems.
	{ kDesktopIcon,kDesktopIconResource },
	{ kOpenFolderIcon,kOpenFolderIconResource },
	{ kGenericHardDiskIcon,kGenericHardDiskIconResource },
	{ kGenericFileServerIcon,kGenericFileServerIconResource },
	{ kGenericSuitcaseIcon,kGenericSuitcaseIconResource },
	{ kGenericMoverObjectIcon,kGenericMoverObjectIconResource }	
};
// this is not all of the appearance stuff...
const IconTypePair sAppearanceIconSuitePair[]=
{
	{ kHelpIcon,kHelpIconResource },
	{ kInternationResourcesIcon, -3809 },	// international scripts
	{ kGenericFontIcon, -3807 },	// bitmapped font file
	{ kSoundFileIcon, -3810 },	// sound file (beep)
	{ kTrueTypeFontIcon, -3808 },	// TrueType font file
	{ kFontSuitcaseIcon, -3804 },	// font suitcase
	{ kGenericSuitcaseIcon, -3805 },	// desk accessory suitcase
	{ kKeyboardLayoutIcon, -3806 },	// keyboard layout file
	{ kClippingSoundTypeIcon, -3803 },	// sound clipping
	{ kClippingPictureTypeIcon, -3801 },	// PICT clipping
	{ kClippingTextTypeIcon, -3802 },	// text clipping
	{ kClippingUnknownTypeIcon, -3800 },	// generic clipping
	{ kVoicesFolderIcon, -3952},
	{ kControlPanelDisabledFolderIcon, -3951},
	{ kContextualMenuItemsFolderIcon,-3942},
	{ kAppleExtrasFolderIcon, -3943},
	{ kExtensionsDisabledFolderIcon, -3950},
	{ kTextEncodingsFolderIcon, -3955},
	{ kPrinterDescriptionFolderIcon,-3954},
	{ kStartupItemsDisabledFolderIcon,-3949},
	{ kShutdownItemsDisabledFolderIcon,-3948},
	{ kSystemExtensionDisabledFolderIcon,-3947},
	{ kGenericSharedLibaryIcon,-3967},
	{ kRecentDocumentsFolderIcon,-3966},
	{ kRecentApplicationsFolderIcon, -3965},
	{ kApplicationsFolderIcon, -3965},
	{ kDocumentsFolderIcon, -3966},
	{ kRecentServersFolderIcon, -3964},
	{ kMacOSReadMeFolderIcon,-3963},
	{ kControlStripModulesFolderIcon, -3962},
	{ kHelpFolderIcon,-3960},
	{ kScriptingAdditionsFolderIcon,-3959},
	{ kUtilitiesFolderIcon,-3945},
	{ kApplicationSupportFolderIcon, -3944},
	{ kAssistantsFolderIcon,-3946},
	{ kInternetFolderIcon, -3958}
	

};
// stuff from the pre-appearance finder.
const IconTypePair	sFinderIconSuitePair[]=
{
	{ kInternationResourcesIcon, 12500 },	// international scripts
	{ kGenericFontIcon, 14500 },	// bitmapped font file
	{ kSoundFileIcon, 14000 },	// sound file (beep)
	{ kTrueTypeFontIcon, 14501 },	// TrueType font file
	{ kFontSuitcaseIcon, 15500 },	// font suitcase
	{ kGenericSuitcaseIcon, 15750 },	// desk accessory suitcase
	{ kKeyboardLayoutIcon, 14750 }	// keyboard layout file
};
// stuff from pre appearance system
// nothing came up...
const IconTypePair	sOldSystemSuitePair[]={0,0};



const fileTypeIconTypeMap sSystemFileMap[] = 
{
	{ kContainerFolderAliasType, kGenericFolderIcon },
	{ kContainerTrashAliasType, kTrashIcon},
	{ kSystemFolderAliasType, kSystemFolderIcon },
	{ kGenericExtensionIcon, kGenericExtensionIcon },
	{ 'APPL', kGenericApplicationIcon },
	{ 'dfil', kGenericDeskAccessoryIcon },
	{ 'pref', kGenericPreferencesIcon },
	{ kAppleMenuFolderAliasType, kAppleMenuFolderIcon },
	{ kControlPanelFolderAliasType, kControlPanelFolderIcon },
	{ kExtensionFolderAliasType, kExtensionsFolderIcon},
	{ kPreferencesFolderAliasType, kPreferencesFolderIcon },
	{ kStartupFolderAliasType, kStartupItemsFolderIcon },
	{ kApplicationAliasType, kGenericApplicationIcon },
	{ kExportedFolderAliasType, kOwnedFolderIcon },
	{ kDropFolderAliasType, kDropFolderIcon },
	{ kSharedFolderAliasType, kSharedFolderIcon },
	{ kMountedFolderAliasType, kMountedFolderIcon },
	{ 'thng', kGenericExtensionIcon },
	{ 'shlb', kGenericSharedLibaryIcon }
};

const fileTypeIconTypeMap sAppearanceExtensionMap[]=
{
	{ 'ifil', kInternationResourcesIcon },	// international scripts
	{ 'ffil', kGenericFontIcon },	// bitmapped font file
	{ 'sfil', kSoundFileIcon },	// sound file (beep)
	{ 'tfil', kTrueTypeFontIcon },	// TrueType font file
	{ 'FFIL', kFontSuitcaseIcon },	// font suitcase
	{ 'DFIL', kGenericSuitcaseIcon },	// desk accessory suitcase
	{ 'kfil', kKeyboardLayoutIcon },	// keyboard layout file
	{ 'clps', kClippingSoundTypeIcon },	// sound clipping
	{ 'clpp', kClippingPictureTypeIcon },	// PICT clipping
	{ 'clpt', kClippingTextTypeIcon },	// text clipping
	{ 'clpu', kClippingUnknownTypeIcon }	// generic clipping
};
const fileTypeIconTypeMap sOldFinderMap[] =
{
	{ 'ifil', kInternationResourcesIcon },	// international scripts
	{ 'ffil', kGenericFontIcon },	// bitmapped font file
	{ 'sfil', kSoundFileIcon },	// sound file (beep)
	{ 'tfil', kTrueTypeFontIcon },	// TrueType font file
	{ 'FFIL', kFontSuitcaseIcon },	// font suitcase
	{ 'DFIL', kGenericSuitcaseIcon },	// desk accessory suitcase
	{ 'kfil', kKeyboardLayoutIcon }	// keyboard layout file

};

const fileTypeIconTypeMap sSystemFolderFolders[] =
{
	{	kSystemFolderType,kSystemFolderIcon},
	{	kDesktopFolderType,kDesktopIcon},
	{	kTrashFolderType,kTrashIcon},
	{	kAssistantsFolderType,kAssistantsFolderIcon},		
	{	kUtilitiesFolderType,kUtilitiesFolderIcon},
	{	kMacOSReadMesFolderType,kMacOSReadMeFolderIcon},
	{	kExtensionFolderType,kExtensionsFolderIcon},
	{	kControlPanelFolderType,kControlPanelFolderIcon},
	{	kFontsFolderType,kFontsFolderIcon}, 
	{	kPreferencesFolderType,kPreferencesFolderIcon}, 
	{	kAppleMenuFolderType,kAppleMenuFolderIcon},
	{	kPrintMonitorDocsFolderType,kPrintMonitorFolderIcon},
	{	kStartupFolderType,kStartupItemsFolderIcon},
	{	kShutdownFolderType,kShutdownItemsFolderIcon},
	{	kExtensionDisabledFolderType,kExtensionsDisabledFolderIcon},
	{	kControlPanelDisabledFolderType,kControlPanelDisabledFolderIcon},
	{	kSystemExtensionDisabledFolderType,kSystemExtensionDisabledFolderIcon},
	{	kStartupItemsDisabledFolderType,kStartupItemsDisabledFolderIcon},
	{	kShutdownItemsDisabledFolderType,kShutdownItemsDisabledFolderIcon},
	{	kApplicationsFolderType,kApplicationsFolderIcon},
	{	kDocumentsFolderType,kDocumentsFolderIcon},
	{	kApplicationSupportFolderType,kApplicationSupportFolderIcon},		/* third-party items and folders */
	{	kTextEncodingsFolderType,kTextEncodingsFolderIcon},		/* encoding tables */
	{	kStationeryFolderType,kGenericFolderIcon},		/* stationery */
	{	kOpenDocFolderType,kGenericFolderIcon},		/* OpenDoc root */
	{	kOpenDocShellPlugInsFolderType,kGenericFolderIcon},	/* OpenDoc Shell Plug-Ins in OpenDoc folder */
	{	kEditorsFolderType,kGenericFolderIcon},		/* OpenDoc editors in MacOS Folder */
	{	kOpenDocEditorsFolderType,kGenericFolderIcon},		/* OpenDoc subfolder of Editors folder */
	{	kOpenDocLibrariesFolderType,kGenericFolderIcon},		/* OpenDoc libraries folder */
	{	kGenEditorsFolderType,kGenericFolderIcon},		/* CKH general editors folder at root level of Sys folder */
	{	kHelpFolderType,kHelpFolderIcon},		/* CKH help folder currently at root of system folder */
	{	kInternetPlugInFolderType,kInternetPlugInFolderIcon},		/* CKH internet plug ins for browsers and stuff */
	{	kModemScriptsFolderType,kGenericFolderIcon}, 
	{	kPrinterDescriptionFolderType,kPrinterDescriptionFolderIcon},		/* CKH new folder at root of System folder for printer descs. */
	{	kPrinterDriverFolderType,kPrinterDriverFolderIcon},		/* CKH new folder at root of System folder for printer drivers */
	{	kScriptingAdditionsFolderType,kScriptingAdditionsFolderIcon},		/* CKH at root of system folder */
	{	kSharedLibrariesFolderType,kSharedLibrariesFolderIcon},		/* CKH for general shared libs. */
	{	kVoicesFolderType,kVoicesFolderIcon},		/* CKH macintalk can live here */
	{	kControlStripModulesFolderType,kControlStripModulesFolderIcon},	/* CKH for control strip modules */
	{	kAppleExtrasFolderType,kAppleExtrasFolderIcon},		/* SJF for Apple Extras folder */
	{	kContextualMenuItemsFolderType,kContextualMenuItemsFolderIcon},	/* SJF for Contextual Menu items */
	{	kALMModulesFolderType,kGenericFolderIcon},		/* EAS for Location Manager Module files except type 'thng' (within kExtensionFolderType) */
	{	kALMPreferencesFolderType,kGenericFolderIcon},		/* EAS for Location Manager Preferences (within kPreferencesFolderType; contains kALMLocationsFolderType) */
	{	kALMLocationsFolderType,kGenericFolderIcon},		/* EAS for Location Manager Locations (within kALMPreferencesFolderType) */
	{	kColorSyncProfilesFolderType,kGenericFolderIcon},		/* for ColorSyncª Profiles */
	{	kThemesFolderType,kGenericFolderIcon},		/* for Theme data files */
	{	kFavoritesFolderType,kFavoritesFolderIcon},		/* Favorties folder for Navigation Services */
	{	kInternetFolderType,kInternetFolderIcon},		/* Internet folder (root level of startup volume) */
	{	kAppearanceFolderType,kAppearanceFolderIcon},		/* Appearance folder (root of system folder) */
	{	kSoundSetsFolderType,kGenericFolderIcon},		/* Sound Sets folder (in Appearance folder) */
	{	kDesktopPicturesFolderType,kGenericFolderIcon},		/* Desktop Pictures folder (in Appearance folder) */
	{	kInternetSearchSitesFolderType,kInternetSearchSitesFolderIcon},	/* Internet Search Sites folder */
	{	kInstallerLogsFolderType,kGenericFolderIcon},		/* Installer Logs folder */
	{	kScriptsFolderType,kScriptsFolderIcon},		/* Scripts folder */
	{	kFolderActionsFolderType,kGenericFolderIcon},		/* Folder Actions Scripts folder */
	{	kLauncherItemsFolderType,kGenericFolderIcon},		/* Launcher Items folder */
	{	kRecentApplicationsFolderType,kRecentApplicationsFolderIcon},		/* Recent Applications folder */
	{	kRecentDocumentsFolderType,kRecentDocumentsFolderIcon},		/* Recent Documents folder */
	{	kRecentServersFolderType,kRecentServersFolderIcon},		/* Recent Servers folder */
	{	kSpeakableItemsFolderType,kGenericFolderIcon}
};


UInt32		IconSuiteTypePair::GetSize() {return sizeof(sIconSuiteTypePair);}
IconTypePair IconSuiteTypePair::GetItem(UInt32 n) {return sIconSuiteTypePair[n];};

UInt32		AppearanceIconSuitePair::GetSize() {return sizeof(sAppearanceIconSuitePair);}
IconTypePair AppearanceIconSuitePair::GetItem(UInt32 n) {return sAppearanceIconSuitePair[n];};

UInt32		OldSystemSuitePair::GetSize() {return sizeof(sOldSystemSuitePair);};
IconTypePair OldSystemSuitePair::GetItem(UInt32 n) {return sOldSystemSuitePair[n];};

UInt32		SystemFileMap::GetSize() {return sizeof(sSystemFileMap);};
fileTypeIconTypeMap SystemFileMap::GetItem(UInt32 n) {return sSystemFileMap[n];};

UInt32		OldFinderMap::GetSize() {return sizeof(sOldFinderMap);};
fileTypeIconTypeMap OldFinderMap::GetItem(UInt32 n) {return sOldFinderMap[n];};

UInt32		AppearanceExtensionMap::GetSize() {return sizeof(sAppearanceExtensionMap);};
fileTypeIconTypeMap AppearanceExtensionMap::GetItem(UInt32 n) {return sAppearanceExtensionMap[n];};

UInt32		SystemFolderFolders::GetSize() {return sizeof(sSystemFolderFolders);};
fileTypeIconTypeMap SystemFolderFolders::GetItem(UInt32 n) {return sSystemFolderFolders[n];};


UInt32		FinderIconSuitePair::GetSize() {return sizeof(sFinderIconSuitePair);};
IconTypePair FinderIconSuitePair::GetItem(UInt32 n) {return sFinderIconSuitePair[n];};

