#include "icnsClass.h"
#include "MWindow.h"
#include "MList.h"
#include "icnsClass.h"
#include "commonFunctions.h"

const static long kBrowserType = 'IcBr';

typedef struct
{
	ControlHandle	rootControl,
					scrollBar,
					infoPlacard,
					list,
					menu;	
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
	rIBMenu			= 303
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
	eIBListNoName = 3,
	eIBListName = 4,
	eIBIconTypes = 5,
	eIBIconCountLabel = 6,
	eIBDeleteWarning = 7
};

enum IBTypesMenu
{
	mIBNew = 1,
	mIBOld = 2,
	mIBBoth = 3
};

typedef void (*OpenFuncPtr)(FSSpec* srcFileSpec, short ID, long format, long member);

class iconBrowserClass;

typedef iconBrowserClass* iconBrowserPtr;

typedef struct
{
	iconBrowserPtr	parentBrowser;
	icnsClass*		icon;
	long			members;
	bool			newType;
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

class iconBrowserClass : public MWindow
{
	public:
				iconBrowserClass(FSSpec file, OpenFuncPtr OpenFunc, int format);
				~iconBrowserClass();
			
		void	Close();
		
		int		GetSelection();
		void	Clear();
		
		void	Activate(void);
		void	Deactivate(void);
		
		void	DoIdle();
		
		void	Refresh();
		void	RefreshList();
		void	HandleContentClick(EventRecord* eventPtr);
		void	HandleGrow(Point where);
		void	HandleKeyDown(EventRecord* eventPtr);
		
		long	status;
		
		FSSpec				srcFileSpec;
		
	private:
		OSErr				CreateControls();
		void				RepositionControls();
		
		OSErr				BuildIconList();
		void				LoadOld(short oldFile, short file, ControlHandle progressBar, ControlHandle progressText);
		void				LoadOldFamily(OSType type, ListDrawingData** drawingData, short oldFile, short file, ControlHandle progressBar, ControlHandle progressText);
		void				LoadNew(short oldFile, short file, ControlHandle progressBar, ControlHandle progressText);
		void				RefreshIconTypes();
		
		
		MList				theList;
		ListDrawingData*	newCellDrawingData;
		ListDrawingData*	icnCellDrawingData;
		ListDrawingData*	icsCellDrawingData;
		
		
		OpenFuncPtr			Open;
		IconBrowserControls	controls;
		
		icnsClass			drawIcon;
		
		long				lastSelectionTime;
		int					lastSelection;
		
		short				shownIconTypes;
		long				scrollingIncrement;
		
	friend pascal void	ListDraw(ControlHandle theControl,SInt16 thePart);
	friend pascal ControlPartCode ListHitTest(ControlHandle theControl, Point where);
	
	friend bool IconFilter(Str255 cellString, void *clientData);
	
	friend pascal void ScrollBarAction(ControlHandle theControl, SInt16 thePart);
	
	friend void RefreshIconBrowser(bool newIcon);
};

extern iconBrowserPtr GetFrontBrowser(void);
extern iconBrowserPtr GetBrowser(WindowPtr window);

short BrowserStringCompare(Str255 string1, Str255 string2, void *clientData1, void *clientData2);
extern int GetCellID(Str255 cellText);

extern void IconDraw(Rect targetRect, Str255 cellString, bool selected, int part, void *clientData);
extern void IconDrawMember(ListDrawingData* drawingData, long member, int height, Rect* displayRect, bool selected);
extern bool IconFilter(Str255 cellString, void *clientData);
extern void IconUpdate(Str255 cellString, int* height, void* clientData);


extern pascal void	ListDraw(ControlHandle theControl,SInt16 thePart);
extern pascal ControlPartCode ListHitTest(ControlHandle theControl, Point where);

extern pascal void ScrollBarAction(ControlHandle theControl, SInt16 thePart);

extern pascal void InfoPlacardDraw(ControlHandle theControl,SInt16 thePart);

short IconHitTest(Rect targetRect, Point theMouse, void *clientData);
bool IconHitTestMember(long members, long member, int height, Point theMouse, Rect* currentRect, int* thePart);
