#pragma once

#include "MFloater.h"
#include "MIcon.h"

const static OSType kMembersPaletteType = 'IcMP';

const static int kMPDefaultWidth = 150;

enum MembersPaletteResources
{
	// controls
	rMPWindow = 400,
	rMPMemberPane = 400,
	rMPScrollbar = 401,
	rMPSFillerPlacard = 402,
	rMPBackgroundPane = 403,
	rMPInfoButton = 404,
	rMPAddMemberButton = 405,
	
	// pictures
	rMPInfoButtonPicture = 400,
	rMPAddMemberButtonPicture = 401,
	
	// others
	rMPHelp = 400,
	rMPNames = 401
};

enum membersPaletteBalloonHelp
{
	hInfoButton = 1,
	hAddMemberButton = 2
};

enum membersPaletteNames
{
	eMPInfo = 1,
	eMPAddMember = 2
};

const static int kScrollingIncrement = 16;
const static int kSmallGrowBoxHeight = 10;
const static int kSmallScrollbarWidth = 11;

const static int kMemberPaneExtraHeight = 24;
const static int kMemberPaneScaledExtraHeight = 14;

const static int kDragScrollBorder = 20;
const static int kDragScrollStep = 4;

const static int kDragScrollSpeed = 4;

typedef struct
{
	ControlHandle	root, scrollbar, backgroundPane, fillerPlacard, infoButton, addMemberButton;
	ControlHandle	members[kMembersCount];
} MembersPaletteControls;

class MembersPalette;

typedef MembersPalette* MembersPalettePtr;

class icnsEditorClass;

typedef icnsEditorClass* icnsEditorPtr;

class MembersPalette : public MFloater
{
	public:
								MembersPalette();
								~MembersPalette();
		
		void					Activate();
		void					Deactivate();
		
		void					Show();
		
		void					DoIdle(MWindowPtr windowUnderMouse);
		
		void 					HandleContentClick(EventRecord* eventPtr);
		bool 					HandleBoundsChange(int attributes, Rect* originalBounds, Rect* previousBounds, Rect* currentBounds);
		void					HandleGrow(Point where);
		void 					HandleWheelMove(Point location, int modifiers, EventMouseWheelAxis axis, long delta);
		
		void					Update(bool updateAll);
		void					Update(icnsEditorPtr frontEditor, bool updateAll);
		
		void					ScrollToCurrentMember();
		void					ScrollToCurrentMember(icnsEditorPtr frontEditor);
		
		void					ResizeMemberPanes();
	private:
		MembersPaletteControls	controls;
		int						pageSize;
		int						scrollValue;
		
		icnsEditorPtr			parentEditor;
		
		RgnHandle				dragHiliteRgn;
		ControlHandle			dragSrcControl;
		
		RgnHandle				oldClip;
		
		PicHandle				infoButtonPicture,
								addMemberButtonPicture;
								
		ControlHandle			lastClickedPane;
		int						lastPaneClick;
		
		icnsEditorPtr			previousEditor;
		int						previousMembers, previousUsedMembers;
		int						previousScrollValue;
		int						previousCurrentPixName;
		int						previousCurrentControlIndex;
		
		EventLoopTimerRef		dragScrollTimer;
		
		pascal static void		DragScrollTimer(EventLoopTimerRef timer, void *userData);
				
		static pascal short		MemberPaneHitTest(ControlHandle theControl, Point where);
		static pascal void		MemberPaneDraw(ControlHandle theControl, short thePart);
		static pascal void 		ScrollbarAction(ControlHandle theControl, SInt16 thePart);
		
		static pascal void		BackgroundPaneDraw(ControlHandle theControl, short thePart);
		
		static pascal void		StatesPaneDraw(ControlHandle theControl, short thePart);
		
		static void				GetPaneRect(int index, Rect parentRect, Rect* paneRect);
		
		
		void					CreateControls();
		void					RepositionControls();
		void					RefreshMemberPanes(bool checkCache);
		void					RefreshMemberPanes(icnsEditorPtr frontEditor, bool checkCache);
		int						GetTotalMembersHeight();
		int						GetTotalMembersHeight(icnsEditorPtr	frontEditor);
		
		bool					IsMemberObscured(int index);
		
		void					StartClipping();
		void					EndClipping();
		
		void 					HandleMemberPaneClick(ControlHandle pane, short controlPart, EventRecord* eventPtr);
		
		static void				InfoButtonUpdate(struct EnhancedPlacardData* data, int flags);
		static void				AddMemberButtonUpdate(struct EnhancedPlacardData* data, int flags);

		// drag and drop stuff
		
		void					InstallDraggingHandlers();
		static pascal OSErr		DragTrackingHandler(DragTrackingMessage message, WindowPtr theWindow, void *, DragReference theDragRef);
		static pascal OSErr 	DragReceiveHandler (WindowPtr theWindow, void *, DragReference theDragRef);
		static void 			DrawDragHilite(DragReference theDragRef, MembersPalettePtr parent);
		bool					ApproveDragReference(DragReference theDragRef, Rect* hiliteRect, int* memberIndex);
		void 					HiliteRegion(RgnHandle inHiliteRgn);
		void					DragScroll(Point theMouse);


		
	friend class editorPreferencesClass;
	friend class icnsEditorClass;
	friend class drawingStateClass;
};
