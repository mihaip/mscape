// CVolumes.h = everything you ever wanted to know about a volume

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
// Revision History:
// Wednesday, January 13, 1999 - Original
//**************************************************************************************


#pragma once

#include <Aliases.h>
#include <Math64.h>




// Read the technote "DV17 -What your Sony driver does for you"
// Also Technical Q&A's  
// "DV 18 - Detecting a CD-ROM (Updated 31-Jan-97)"
// "FL 08 - Large Volume Info Via PBXGetVolInfo"
// Note : PBXGetVolInfo is available only on System 7.5.3 and later
// Just tell everyone that 7.5.3 is available as a free download from apple.com
// I can't remember, but I think the call was only included on Universal interfaces 3.x ??
// The call is only exported by interfacelib in universal headers & libraries 3.2, or Mac OS 8.5
// if you aren't including Morefiles, you will have to define it. See the source file for more.


enum {
	kSonyDriverType = -5
};



class CVolumes : public XVolumeParam
{
	public:
									CVolumes();
									CVolumes(FSSpec&	inSpec);
									CVolumes(SInt16 inIndex);
									CVolumes(Str255 inName);
		 						~CVolumes();									

// some possible useful inlines....
		inline operator 			XVolumeParam*() {return this;};	
		inline operator const 		XVolumeParam*() const {return this;};
		inline operator 			XVolumeParam&() {return *this;};
		inline operator const 		XVolumeParam&() const {return *this;};

// Then again, maybe not.
		inline operator				FSSpec()
									{
										FSSpec temp;
										::FSMakeFSSpec(ioVRefNum,fsRtParID,mName,&temp);
										return temp;
									}
		inline operator const		FSSpec() const
									{
										FSSpec temp;
										::FSMakeFSSpec(ioVRefNum,fsRtParID,mName,&temp);
										return temp;
									}
		inline operator				AliasHandle()
									{
										FSSpec temp;
										AliasHandle alias;
										::FSMakeFSSpec(ioVRefNum,fsRtParID,mName,&temp);
										::NewAlias(	NULL, &temp , &alias);
										return alias;								
									
									
									}							
		inline bool operator 		==(const CVolumes &rhs) const
									{
										bool AreEqual = true;
										// compare the VRefNum, the creation date and the size;
										// why include the VRefNum? because I kinda rely on it not changing during my operations.
										// it could change though, by ejecting a CD, inserting a ZIP or floppy and then reinserting the CD
										// same volume but different vRefNum.
										do {
											if (rhs.ioVRefNum != ioVRefNum) { AreEqual = false; break;}
											if (rhs.ioVCrDate != ioVCrDate) { AreEqual = false; break;}
											if (rhs.ioVTotalBytes.hi != ioVTotalBytes.hi) { AreEqual = false; break;}
											if (rhs.ioVTotalBytes.lo != ioVTotalBytes.lo) { AreEqual = false; break;}
											if (rhs.ioVAlBlkSiz != ioVAlBlkSiz) {AreEqual = false; break;}
											if (rhs.ioVFSID != ioVFSID) {AreEqual = false; break;}
										} while(false);	
										return AreEqual;
									
									}	
		inline bool operator		!=	(const CVolumes &rhs) const
									{
										return(!(*this == rhs));
									}																																																							

// Were they useful?

// Now for the getters and setters.		
		  void				SetVolume(FSSpec& inSpec);
		  void				SetVolume(SInt16 inVRefNum);
		  void				SetVolumeIndex(SInt16 inVolIndex);
// DoIt does it.
		  OSErr				DoIt();

// the getters...
// Could be more of these... 		
		inline OSType				GetVolType() {return mVolType;};
		inline SInt16				GetVolVRefNum() { return this->ioVRefNum;};
		inline bool					HasCustomIcon() {return ((mDirInfo.frFlags & kHasCustomIcon) >0);};
		inline bool					Locked() const { return ((ioVAtrb & 0x8080) > 0);};
		inline bool					CanEject() const { return !((mDrvInfo & 0x00080000) != 0); };
		inline bool					HasCatSearch() const { return ((mVolInfo.vMAttrib & (1L << bHasCatSearch)) != 0);};
		inline bool					IsNetworkVolume() const {return (mVolInfo.vMServerAdr != 0);};
		inline SInt16				GetVRefNum() const {return ioVRefNum;}
		StringPtr					GetVolName(Str255 outName)
									{
										::BlockMoveData(&mName,outName,mName[0]+1);
										return outName;
									}
// The ioVNmAlBlks in XVolumeParam may be incorrect (it is only a UInt16 )
// should be ioVTotalBytes (64 bits)/ ioVAlBlkSiz(32 bits - minimum value 512)							
		UnsignedWide				GetNumAllocBlocks()
									{
										UInt64 result = UnsignedWideToUInt64(ioVTotalBytes);
										result = U64Div(result,ioVAlBlkSiz);
										return UInt64ToUnsignedWide(result);
									};					


// Volumes on the Mac can have the same name (they can have the same everything)
// Uniquely identifying one is impossible. Still, lets do the best we can.		
		UInt64						NearUniqueID()
									{
										UnsignedWide result;
										result.hi = ioVTotalBytes.lo;
										result.lo = ioVTotalBytes.hi;
										// Total bytes can't change without a reformat.
										result.hi += ioVFSID;
										// same for File System ID.
										result.lo += ioVAlBlkSiz;
										// Allocation block size and number can change with alsofts reformatter.
										result.hi += ioVSigWord;
										result.lo += ioVCrDate;
										// creation dates are a good indicator of uniqueness.
										return UnsignedWideToUInt64(result);
									}
		static SInt16				Count();							
		
	private:
		OSErr							FindVolType();
		OSErr							GetDInfo();
		// Member Variables
		Str255						mName;
		GetVolParmsInfoBuffer		mVolInfo;
		UInt32						mDrvInfo;
		OSType						mVolType;
		DInfo						mDirInfo;


};

