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
#include "PISS.h"

#pragma mark PISSIcon
class PISSIcon
{

	public:
								PISSIcon();
								PISSIcon(OSType creator,OSType type,const FSSpec* inSpec,SInt16 inResID);
					virtual		~PISSIcon();	
#if !__option(RTTI)							
					virtual OSType		GetWhatKindOfIcon() { return OSType(kPISSIconUnknownKind);};	
#endif
			virtual	void				AddUser();
			virtual	void				RemoveUser();
			virtual	bool		PtInIcon(const Point *			testPt,
								 const Rect *			iconRect,
								 IconAlignmentType 		align);	
			virtual	bool		RectInIcon(const Rect *			testRect,
								 const Rect *			iconRect,
								 IconAlignmentType 		align);	
			virtual	OSErr		PlotIcon(const Rect *			theRect,
								 IconAlignmentType 		align,
								 IconTransformType 		transform);	
			virtual	OSErr		IconToRgn(RgnHandle 				theRgn,
									 const Rect *			iconRect,
									 IconAlignmentType 		align);			 
			virtual OSType		GetType() { return mType;};
			virtual OSType		GetCreator() { return mCreator;};
			virtual UInt32		GetOwners() { return mRefCount;};
			virtual Handle		GetIconData(ResType /* theType */) { return NULL;};							
	
	protected:
					Handle		mIconData;		
					UInt32		mRefCount;
					OSType		mType;
					OSType		mCreator;

};

#pragma mark PISSResourceIcon
class PISSResourceIcon : public PISSIcon
{
	public:
										PISSResourceIcon	(OSType creator,
															OSType type,
															const FSSpec* inSpec,
															SInt16 inResID);
					virtual				~PISSResourceIcon();
#if !__option(RTTI)							
					virtual OSType		GetWhatKindOfIcon() 
											{ return OSType(kPISSIconResourceKind);};
#endif												
					virtual Handle		GetIconData(ResType theType);
					virtual	void		RemoveUser();
					OSErr				UnregisterIcon();
					virtual bool		IsTheSameSpec(const FSSpec* inSpec)
										{
										
											return ((mSpec.vRefNum == inSpec->vRefNum) &&
													(mSpec.parID == inSpec->parID) &&
													(!IdenticalString(mSpec.name,inSpec->name,NULL)));
										
										};
	protected:					
					SInt16		mResRef;
					bool		mKillOnDie;
					FSSpec		mSpec;

};
#pragma mark PISSCustomIcon
class PISSCustomFileIcon : public PISSResourceIcon
{
	public:
								PISSCustomFileIcon(OSType creator,
													OSType type,
													const FSSpec* inSpec,
													SInt16 inResNum);
					virtual		~PISSCustomFileIcon();
#if !__option(RTTI)					
			virtual	OSType		GetWhatKindOfIcon() { return OSType(kPISSIconCustomFileKind);};	
#endif
};

#pragma mark PISSDTFileIcon
class PISSDTFileIcon	:	public	PISSIcon
{
	public:	
								PISSDTFileIcon(	SInt16 inVRef,
												OSType inType,
												OSType inCreator);
					virtual		~PISSDTFileIcon();	
#if !__option(RTTI)							
			virtual	OSType		GetWhatKindOfIcon() { return OSType(kPISSIconDesktopFileKind);};
#endif
			virtual Handle		GetIconData(ResType theType);
	private:
	
	
	protected:

					SInt16		mVRef;
};

#pragma mark PISSCustomFolderIcon
class PISSCustomFolderIcon	: public PISSResourceIcon
{
	public:
								PISSCustomFolderIcon(OSType creator,
													OSType type,
													const FSSpec* inSpec,
													SInt16 inResNum);
					virtual		~PISSCustomFolderIcon();
#if !__option(RTTI)					
			virtual	OSType		GetWhatKindOfIcon() { return OSType(kPISSIconCustomFolderKind);};
#endif

};

#pragma mark PISSSystemIcon
class PISSSystemIcon	:	public	PISSIcon
{
	public:
								PISSSystemIcon(OSType inIcon);
					virtual		~PISSSystemIcon();
#if !__option(RTTI)					
			virtual	OSType		GetWhatKindOfIcon() { return OSType(kPISSIconSystemKind);};
#endif
			virtual Handle		GetIconData(ResType theType);	
	
	protected:
			SInt16	mResNum;
};

#pragma mark PISSVolumeIcon
class PISSVolumeIcon : public PISSIcon
{
	public:
								PISSVolumeIcon(Handle inSuite,SInt16 inVRef,Str31 inVolName);
					virtual		~PISSVolumeIcon();
#if !__option(RTTI)					
			virtual	OSType		GetWhatKindOfIcon() { return OSType(kPISSIconVolumeKind);};
#endif
			virtual bool		IsSameVolume(SInt16 inVRef);
			
	protected:
			AliasHandle mVolume;							

};

