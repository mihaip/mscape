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
#pragma once
typedef struct	{OSType folder_type; SInt16 icon_id;} FolderPair;
typedef FolderPair IconTypePair;

typedef struct 
	{
	OSType fileType; 
	OSType iconType;
	} fileTypeIconTypeMap;


class IconSuiteTypePair
{
	public:
static	UInt32		GetSize();
static	IconTypePair GetItem(UInt32 n);
};

class FinderIconSuitePair
{
	public:
static	UInt32		GetSize();
static	IconTypePair GetItem(UInt32 n);
};

class AppearanceIconSuitePair
{
	public:
static	UInt32		GetSize();
static	IconTypePair GetItem(UInt32 n);
};
class OldSystemSuitePair
{
	public:
static	UInt32		GetSize() ;
static	IconTypePair GetItem(UInt32 n) ;
};
class SystemFileMap
{
	public:
static	UInt32		GetSize() ;
static	fileTypeIconTypeMap GetItem(UInt32 n) ;
};
class OldFinderMap
{
	public:
static	UInt32		GetSize() ;
static	fileTypeIconTypeMap GetItem(UInt32 n) ;
};
class AppearanceExtensionMap
{
	public:
static	UInt32		GetSize() ;
static	fileTypeIconTypeMap GetItem(UInt32 n) ;
};
class SystemFolderFolders
{
	public:
static	UInt32		GetSize() ;
static	fileTypeIconTypeMap GetItem(UInt32 n) ;
};


