#pragma once

class MFile
{
	public:
					MFile();
					~MFile();
		
		short		OpenResourceFork(SInt8 permissions);
		short		OpenDataFork(SInt8 permissions);
		
		void		SetAssociatedFile(FSRef ref);
		void		SetAssociatedFile(FSSpec spec);
		FSSpec		GetAssociatedFile();
		AliasHandle	GetAssociatedAlias();
		FSRef		GetAssociatedRef();
		
		void		SetAssociatedAEDesc(AEDesc* desc);
		
		bool		IsValid();
		bool		Moved();
		void		Reset();
		void		Delete();
		
		StringPtr	GetName(Str255 name);
		bool		HasExtension(const Str255 extension);
		bool		HasRealResourceFork();
		bool		IsFolder();
		void		GetFolderContents(FSSpec** contents, int* contentsCount);
		bool		IsVolume();
		bool		IsLocked();
		OSErr 		SetLabel(short label);
		OSErr 		GetLabel(short *label);
		
		
		bool		IsSpecialFolder(OSType folderType);
		
		static void	ResetSpec(FSSpec* spec);
		static bool	SameSpec(FSSpec spec1, FSSpec spec2);
		
	private:
	
		AliasHandle	associatedAlias;
		FSSpec		associatedSpec, previousLocation;
};
