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

void MFile::SetAssociatedFile(FSSpec spec)
{
	if (associatedAlias == NULL)
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

AliasHandle MFile::GetAssociatedAlias()
{
	return associatedAlias;
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
	
	ResetSpec(&spec);
	
	SetAssociatedFile(spec);
}

#pragma mark -

void MFile::ResetSpec(FSSpec *spec)
{
	spec->vRefNum = spec->parID = -1;
}

bool MFile::SameSpec(FSSpec spec1, FSSpec spec2)
{
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

bool MFile::IsVolume()
{
	FSSpec file;
	
	file = GetAssociatedFile();
	
	return (file.parID == 1);
}
