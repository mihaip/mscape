#pragma once

#include "MFloater.h"
#include "icnsClass.h"

const static OSType kPreviewPaletteType = 'IcPP';
const static int kPPDefaultHeight = 190; 

const static int kPPThumbnailSliderSnaps[] = {128, 96, 64, 48, 32, 16};
const static int kPPThumbnailSliderSnapCount = sizeof(kPPThumbnailSliderSnaps)/sizeof(int);

const static char kPPEasterEggPhrase[] = "xiling";
const static int kPPEasterEggPhraseLength = sizeof(kPPEasterEggPhrase)/sizeof(char) - 1;

enum PreviewPaletteResources
{
	rPPWindow = 500,
	rPPTabs = 500,
	rPPThumbnailPreview = 501,
	rPPThumbnailSlider = 502,
	rPPThumbnailText = 503,
	rPPHints = 504
};

enum PreviewPalettePanes
{
	kPPThumbnailPane = 1,
	kPPHintsPane = 2
};

class icnsEditorClass;

typedef icnsEditorClass* icnsEditorPtr;

typedef struct
{
	ControlHandle	root,
					tabs,
					thumbnailPreview, thumbnailSlider, thumbnailText,
					hintsPreview;
} PreviewPaletteControls;

class PreviewPalette : public MFloater
{
	public:
								PreviewPalette();
								~PreviewPalette();
		
		void					Activate();
		void					Deactivate();
		
		void					Refresh();
		
		void					HandleContentClick(EventRecord* eventPtr);
		void					HandleKeyDown(EventRecord* eventPtr);
		
		void					DoIdle();
		
		void					Update();
		void					Update(icnsEditorPtr frontEditor);
		void					SetPane(int pane);
		
	
	private:
		PreviewPaletteControls	controls;
		
		bool					selected;

		int						currentPane;
		
		bool					oscillating, increasing;
		int						oscillationTicks;
		char					keyBuffer[kPPEasterEggPhraseLength];
		
		icnsEditorPtr			parentEditor;
		
		void					CreateControls();
		
		static pascal void		ThumbnailSliderAction(ControlHandle theControl, SInt16 thePart);
		static pascal short 	KeyFilter(ControlHandle theControl, SInt16* keyCode, SInt16* charCode, SInt16* modifiers);
		static pascal void 		ThumbnailPreviewDraw(ControlHandle theControl, short thePart);
		static pascal void 		HintsPreviewDraw(ControlHandle theControl, short thePart);
		static void 			HintsPreviewDrawMember(icnsEditorClass* editor, int size, int depth, int maskDepth, Rect iconRect, int spacing, Rect drawRect, int* currentTop, bool selected);

};

typedef PreviewPalette* PreviewPalettePtr;
