#include <stdlib.h>
#include "MFile.h"
#include "MUtilities.h"
#include "commonfunctions.h"

MFile::MFile()
{
	associatedAlias = NULL;
	ResetSpec(&associatedSpec);
	ResetSpec(&previousLocation);
}

MFile::~MFile()
{
	if (associatedAlias)
		DisposeHandle((Handle)associatedAlias);
}

#pragma mark -

short MFile::OpenResourceFork(SInt8 permissions)
{
	if (associatedAlias)
	{
#if TARGET_API_MAC_CARBON
		if (HasExtension("\p.rsrc") && !HasRealResourceFork())
		{
			FSRef associatedRef;
			FSSpec	associatedSpec;
			short	refNum;
			
			associatedSpec = GetAssociatedFile();
			
			FSpMakeFSRef(&associatedSpec, &associatedRef);
			
			FSOpenResourceFile(&associatedRef, 0, NULL, permissions, &refNum);
			
			return refNum;
		}
		else
#endif
		{
			FSSpec associatedSpec;
			
			associatedSpec = GetAssociatedFile();
			
			return FSpOpenResFile(&associatedSpec, permissions);
		}
	}
	else
		return -1;
}

short MFile::OpenDataFork(SInt8 permissions)
{
	if (associatedAlias)
	{
		FSSpec	associatedSpec;
		short	refNum;
		
		associatedSpec = GetAssociatedFile();
		
		FSpOpenDF(&associatedSpec, permissions, &refNum);
		
		return refNum;
	}
	else
		return -1;
}

#pragma mark -

void MFile::SetAssociatedFile(FSRef ref)
{
	if (associatedAlias != NULL)
	{
		DisposeHandle((Handle)associatedAlias);
		associatedAlias = NULL;
	}
	
	FSNewAlias(NULL, &ref, &associatedAlias);
}

void MFile::SetAssociatedFile(FSSpec spec)
{
	if (associatedAlias != NULL)
	{
		DisposeHandle((Handle)associatedAlias);
		associatedAlias = NULL;
	}
	
	if (spec.vRefNum != -1 || spec.parID != -1)
		NewAliasMinimal(&spec, &associatedAlias);
	else
		associatedSpec = spec;
}

FSSpec MFile::GetAssociatedFile()
{
	FSSpec	spec;
	Boolean wasChanged;
	
	if (associatedAlias)
		ResolveAlias(NULL, associatedAlias, &spec, &wasChanged);
	else
		return associatedSpec;
	
	return spec;
}

FSRef MFile::GetAssociatedRef()
{
	FSRef returnRef;
	Boolean	wasChanged;
	
	if (associatedAlias)
		FSResolveAlias(NULL, associatedAlias, &returnRef, &wasChanged);
		
	return returnRef; // should do something for no associated alias
}

AliasHandle MFile::GetAssociatedAlias()
{
	return associatedAlias;
}

void MFile::SetAssociatedAEDesc(AEDesc* desc)
{
	if (desc->descriptorType != typeNull)
	{
		AEDesc	aliasDesc;
		OSErr	err;

		err = AECoerceDesc(desc, typeAlias, &aliasDesc);
		
		if (err == noErr)
		{
			AliasHandle alias;
			Size		aliasSize;
			
			aliasSize = AEGetDescDataSize(&aliasDesc);
			
			alias = AliasHandle(NewHandle(aliasSize));
			
			AEGetDescData(&aliasDesc, *alias, aliasSize);
			
			if (associatedAlias)
				DisposeHandle(Handle(associatedAlias));
				
			associatedAlias = alias;
			
			AEDisposeDesc(&aliasDesc);
		}
	}
	else
		Reset();
}

#pragma mark -

bool MFile::IsValid()
{
	if (associatedAlias == NULL)
		return false;
	else
	{
		FSSpec associatedSpec;
		
		associatedSpec = GetAssociatedFile();
		
		if (associatedSpec.parID == -1 && associatedSpec.vRefNum == -1)
			return false;
	}
	
	return true;
}

bool MFile::Moved()
{
	FSSpec	newLocation;
	bool	moved = false;
	
	newLocation = GetAssociatedFile();
	
	if (!SameSpec(newLocation, previousLocation))
		moved = true;
	
	previousLocation = newLocation;
	
	return moved;
}

void MFile::Reset()
{
	FSSpec spec;
	
	spec = GetAssociatedFile();
	
	ResetSpec(&spec);
	
	SetAssociatedFile(spec);
}

void MFile::Delete()
{
	FSSpec spec;
	
	spec = GetAssociatedFile();
	
	FSpDelete(&spec);
}

bool MFile::IsSpecialFolder(OSType folderType)
{
	FSSpec spec, folderSpec;
	
	if (FindFolder(kOnAppropriateDisk, folderType, true, &folderSpec.vRefNum, &folderSpec.parID) == noErr)
	{
		spec = GetAssociatedFile();
		
		return SameSpec(spec, folderSpec);
	}
	
	return false;
}

#pragma mark -

void MFile::ResetSpec(FSSpec *spec)
{
	spec->vRefNum = spec->parID = -1;
}

bool MFile::SameSpec(FSSpec spec1, FSSpec spec2)
{
	// normalize
	FSMakeFSSpec(spec1.vRefNum, spec1.parID, spec1.name, &spec1);
	FSMakeFSSpec(spec2.vRefNum, spec2.parID, spec2.name, &spec2);
	
	return (spec1.vRefNum == spec2.vRefNum &&
			spec1.parID == spec2.parID &&
			EqualString(spec1.name, spec2.name, true, true));
}

#pragma mark -

StringPtr MFile::GetName(Str255 name)
{
	FSSpec spec;
	
	spec = GetAssociatedFile();
	
	CopyString(name, spec.name);
	
	return name;
}

bool MFile::HasExtension(const Str255 extension)
{
	Str255 name;
	
	GetName(name);
	
	int i, j;
	
	for (i=name[0], j=extension[0]; i > 0 && j > 0; i--, j--)
		if (name[i] != extension[j] &&
			abs(name[i] - extension[j]) != abs('A' - 'a'))
			return false;
			
	return (j==0);
}

bool MFile::HasRealResourceFork()
{
	FSSpec	targetFile;
	short	resFile;
	
	targetFile = GetAssociatedFile();
	
	resFile = FSpOpenResFile(&targetFile, fsRdPerm);
	CloseResFile(resFile);
	
	return (resFile != -1);
}

bool MFile::IsFolder()
{
	Boolean			isFolder;
	
	if (IsValid())
	{
		FSSpec			file;
		unsigned char	ignored;
				
		file = GetAssociatedFile();
		
		ResolveAliasFile(&file, true, &isFolder, &ignored);
	}
	else
		return false;
		
	return isFolder;
}

void MFile::GetFolderContents(FSSpec** contents, int* contentsCount)
{
	FSSpec		tempSpec;
	CInfoPBRec  info;
	long		folderID;
	OSErr		err;
	int			folderIndex = 0;
	Str255		name;
	
	tempSpec = GetAssociatedFile();

	// first figure out our folder ID					
	info.dirInfo.ioVRefNum = tempSpec.vRefNum;
	info.dirInfo.ioNamePtr = tempSpec.name;
	info.dirInfo.ioDrDirID = tempSpec.parID;
	info.dirInfo.ioFDirIndex = 0;
	
	PBGetCatInfoSync(&info);
	
	folderID = info.dirInfo.ioDrDirID;
	
	// initialize the list
	*contents = NULL;
	*contentsCount = 0;
	
	do
	{
		CopyString(name, "\p");
		info.dirInfo.ioCompletion = NULL;
        info.dirInfo.ioNamePtr = name;
        info.dirInfo.ioVRefNum = tempSpec.vRefNum;
        info.dirInfo.ioDrDirID = folderID;
        info.dirInfo.ioFDirIndex = folderIndex++;
        err = PBGetCatInfoSync(&info);
        if (err == noErr)
        {
        	FSSpec itemSpec;
        	
        	err = FSMakeFSSpec(tempSpec.vRefNum, folderID, name, &itemSpec);
        	
        	if (err == noErr)
        	{
        		*contents = (FSSpec*)realloc(*contents, (*contentsCount + 1) * sizeof(FSSpec));
				(*contents)[(*contentsCount)++] = itemSpec;
        	}
        }
	} while (err == noErr);
}

bool MFile::IsVolume()
{
	FSSpec file;
	
	file = GetAssociatedFile();
	
	return (file.parID == 1);
}



static OSErr GetDFInf(FSSpec *inSpec,CInfoPBRec *outInf)
{
    outInf->hFileInfo.ioNamePtr = inSpec->name;
    outInf->hFileInfo.ioVRefNum = inSpec->vRefNum;
    outInf->hFileInfo.ioFDirIndex = 0;
    outInf->hFileInfo.ioDirID = inSpec->parID;
    return PBGetCatInfoSync(outInf);
}

static OSErr SetDFInf(FSSpec *inSpec,CInfoPBRec *inInf)
{
    inInf->hFileInfo.ioNamePtr = inSpec->name;
    inInf->hFileInfo.ioVRefNum = inSpec->vRefNum;
    inInf->hFileInfo.ioFDirIndex = 0;
    inInf->hFileInfo.ioDirID = inSpec->parID;
    return PBSetCatInfoSync(inInf);
}

bool MFile::IsLocked()
{
	if (associatedAlias)
	{
		FSRef		 	ref;
		OSErr   		result;
		FSCatalogInfo	catalogInfo;
		FSVolumeInfo 	volumeInfo;
		
		ref = GetAssociatedRef();
		
		// get nodeFlags and vRefNum for container
		result = FSGetCatalogInfo(&ref, kFSCatInfoNodeFlags + kFSCatInfoVolume, &catalogInfo, NULL, NULL,NULL);

		// is file locked?
		if ( 0 != (catalogInfo.nodeFlags & kFSNodeLockedMask) )
		{
			result = fLckdErr; /* file is locked */
		}
		else
		{
			// file isn't locked, but is volume locked?

			// get volume flags
			result = FSGetVolumeInfo(catalogInfo.volume, 0, NULL, kFSVolInfoFlags, &volumeInfo, NULL, NULL);

			if ( 0 != (volumeInfo.flags & kFSVolFlagHardwareLockedMask) )
			{
				result = wPrErr; // volume locked by hardware
			}
			else if ( 0 != (volumeInfo.flags & kFSVolFlagSoftwareLockedMask) )
			{
				result = vLckdErr; // volume locked by software
			}
		}

 		return result != noErr;
	}	
	else // safest choice is to equate a non-existent file with it being locked
		return true;
}

OSErr MFile::SetLabel(short label)
{
	FSSpec		theFile = GetAssociatedFile();
    CInfoPBRec	theCIF;
    OSErr 		theErr = GetDFInf(&theFile,&theCIF);
    
    if(noErr == theErr)
    {
        unsigned short theUS = theCIF.hFileInfo.ioFlFndrInfo.fdFlags;
        theUS &= ~kColor;
        theUS |= (unsigned short)((label & 0x07) << 1);
        theCIF.hFileInfo.ioFlFndrInfo.fdFlags = theUS;
        theErr = SetDFInf(&theFile, &theCIF);
    }
    return theErr;
}


OSErr MFile::GetLabel(short *label)
{
	FSSpec		theFile = GetAssociatedFile();
    CInfoPBRec	theCIF;
    OSErr 		theErr = GetDFInf(&theFile,&theCIF);
    
    unsigned short theUS = theCIF.hFileInfo.ioFlFndrInfo.fdFlags;
    *label = short((kColor & theUS) >> 1);
    
    return theErr;
}
