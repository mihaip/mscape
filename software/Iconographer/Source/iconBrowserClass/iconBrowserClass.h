#include "icnsClass.h"
#include "MDocumentWindow.h"
#include "MList.h"
#include "icnsClass.h"
#include "commonFunctions.h"
#include "MString.h"

const static long kBrowserType = 'IcBr';

const static int kIBPreviewHeight = 64;
const static int kIBExtraHeight = 4;

typedef struct
{
	ControlHandle	rootControl,
					scrollBar,
					infoPlacard,
					list,
					typeMenu;	
} IconBrowserControls;

enum IBResources
{
	rBrowserWind = 300,
	rBrowserProgressDialog = 300,
	rIBStrings = 300,
	rIBTypesMenu = 300
};

enum IBControls
{
	rIBScrollBar	= 300,
	rIBInfoPlacard	= 301,
	rIBList			= 302,
	rIBTypeMenu		= 303
};

enum IBProgressItems
{
	iIBProgressBar = 1,
	iIBProgressText = 2
};

enum IBStrings
{
	eIBProgressNoName = 1,
	eIBProgressName = 2,
	eIBListID = 3,
	eIBListName = 4,
	eIBListType = 5,
	eIBListNewType = 6,
	eIBListOldType = 7,
	eIBListMembers = 8,
	eIBIconTypes = 9,
	eIBIconCountLabel = 10,
	eIBDeleteWarning = 11,
	eIBWindowTitle = 12,
	eIBNoMembers = 13
};

enum IBTypesMenu
{
	mIBNew = 1,
	mIBOld = 2,
	mIBBoth = 3
};

typedef void (*OpenFuncPtr)(FSSpec* srcFileSpec, long ID, long format, long member);

class iconBrowserClass;

typedef iconBrowserClass* iconBrowserPtr;

typedef struct
{
	iconBrowserPtr	parentBrowser;
	icnsClass*		icon;
	long			members;
	bool			newType;
	long			ID;
} ListDrawingData;

enum browserOpenFlags
{
	oldStyle = 1,
	newStyle = 2
};

enum IBStatus
{
	loadingIcons = 2
};

class iconBrowserClass : public MDocumentWindow
{
	public:
				iconBrowserClass(FSSpec file, OpenFuncPtr OpenFunc);
				~iconBrowserClass();
			
		void	Close();
		
		int		GetSelection();
		void	Clear();
		
		void	Activate(void);
		void	Deactivate(void);
		
		void	DoIdle();
		
		void	RefreshWindowTitle();
		void	RefreshList();
		void	HandleContentClick(EventRecord* eventPtr);
		void	HandleGrow(Point where);
		void	HandleKeyDown(EventRecord* eventPtr);
		
		bool				HasSelection();
		void				EditIconInfo();
		int					GetCurrentFormat();
		
		icnsClassPtr		GetBrowserTempIcon();
		
		long				status;
		
		FSSpec				srcFileSpec;
		
		static void	GetIconString(int ID, Str255 name, long members, bool newType, MStringPtr* iconString);
				
	private:
		OSErr				CreateControls();
		void				RepositionControls();
		
		bool				SizeSupported(int width, int height);
		
		int					BuildIconList();
		void				LoadFamily(OSType type, bool newType, short oldFile, short file, ControlHandle progressBar, ControlHandle progressText, MWindowPtr progressDialog);
		void 				AddIcon(int ID, Str255 name, long members, bool newType);
		void				RemoveIcon(int ID, bool newType);
		void				RefreshIconTypes();
		void				OpenCurrentIcon();
		
		MList				theList;
		
		
		OpenFuncPtr			Open;
		IconBrowserControls	controls;
		
		icnsClass			drawIcon;
		
		long				lastSelectionTime;
		int					lastSelection;
		
		short				shownIconTypes;
		long				scrollingIncrement;
		
		static void			BrowserMenuUpdate(struct EnhancedPlacardData* data, int flags);
		
	friend pascal void	ListDraw(ControlHandle theControl,SInt16 thePart);
	friend pascal ControlPartCode ListHitTest(ControlHandle theControl, Point where);
	
	friend bool IconFilter(MStringPtr cellString, void *clientData);
	
	friend pascal void ScrollBarAction(ControlHandle theControl, SInt16 thePart);
	
	friend void RefreshIconBrowser(bool newIcon, int deletedIcon, int deletedIconFormat);
};

extern iconBrowserPtr GetFrontBrowser(void);
extern iconBrowserPtr GetBrowser(WindowPtr window);

long BrowserStringCompare(MStringPtr string1, MStringPtr string2, void *clientData1, void *clientData2);

extern void IconDraw(Rect targetRect, MStringPtr cellString, bool selected, int part, void *clientData);
extern bool IconFilter(MStringPtr cellString, void *clientData);
extern void IconUpdate(MStringPtr cellString, int* height, void* clientData);


extern pascal void	ListDraw(ControlHandle theControl,SInt16 thePart);
extern pascal ControlPartCode ListHitTest(ControlHandle theControl, Point where);

extern pascal void ScrollBarAction(ControlHandle theControl, SInt16 thePart);

extern pascal void InfoPlacardDraw(ControlHandle theControl,SInt16 thePart);

int IconHitTest(Rect targetRect, Point theMouse, void *clientData);
