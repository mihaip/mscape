#pragma once

class MFile
{
	public:
					MFile();
					~MFile();
		
		short		OpenResourceFork(SInt8 permissions);
		short		OpenDataFork(SInt8 permissions);
		
		void		SetAssociatedFile(FSSpec spec);
		FSSpec		GetAssociatedFile();
		AliasHandle	GetAssociatedAlias();
		
		bool		IsValid();
		bool		Moved();
		void		Reset();
		
		StringPtr	GetName(Str255 name);
		bool		HasExtension(const Str255 extension);
		bool		HasRealResourceFork();
		bool		IsFolder();
		bool		IsVolume();
		
		static void	ResetSpec(FSSpec* spec);
		static bool	SameSpec(FSSpec spec1, FSSpec spec2);
		
	private:
	
		AliasHandle	associatedAlias;
		FSSpec		associatedSpec, previousLocation;
};
