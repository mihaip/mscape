#pragma once

const static int kMTHMLHelpICSignature = 'MHlp';

enum MHHResources 
{
	rMHHStrings = 5000
};

enum MHHStrings
{
	eMHHPrefsFileName = 1,
	eMHHGetBrowserMessage = 2
};

class MHTMLHelp
{
	public:
					MHTMLHelp(Str255 pathToHelpFile);
					MHTMLHelp(FSSpec inHelpFileSpec);
			
		void		Open();
		
	private:
		
		bool		HTMLHelpInstalled();
		bool		InternetConfigInstalled();
		
		void		OpenWithHTMLHelp();
		void		OpenWithInternetConfig();
		void		OpenWithBrowser();
		
		FSSpec		GetPreferences();
		
		OSErr		GetBrowser(FSSpec *browser);	
		
		FSSpec		helpFileSpec;
		ICInstance	internetConfigInstance;
};

typedef MHTMLHelp* MHTMLHelpPtr;
