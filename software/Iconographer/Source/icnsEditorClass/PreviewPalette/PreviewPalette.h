#pragma once

#include "MFloater.h"
#include "MIcon.h"

const static OSType kPreviewPaletteType = 'IcPP';
const static int kPPDefaultHeight = 190;

const static char kPPEasterEggPhrase[] = "mangler";
const static int kPPEasterEggPhraseLength = sizeof(kPPEasterEggPhrase)/sizeof(char) - 1;

enum PreviewPaletteResources
{
	rPPSettingsMenu = 500,
	rPPWindow = 500,
	rPPStrings = 501,
	rPPBackground = 500,
	rPPPreview = 501,
	rPPSlider = 502,
	rPPText = 503,
	rPPSettings = 504
};

enum PreviewPalettePanes
{
	kPPThumbnailPane = 1,
	kPPHintsPane = 2
};

enum previewSettingsMenu
{
	iPPNormal = 1,
	iPPSelected = 2,
	
	iPPDesktop = 4,
	iPPListView = 5,
	iPPWhite = 6,
	iPPBlack = 7,
	iPPCustomColor = 8
};

enum previewStrings
{
	ePPPickCustomColor = 1
};

class icnsEditorClass;

typedef icnsEditorClass* icnsEditorPtr;

typedef struct
{
	ControlHandle	root,
#if !TARGET_API_MAC_CARBON
					background,
#endif
					preview, slider, text, settings;
} PreviewPaletteControls;

class PreviewPalette : public MFloater
{
	public:
								PreviewPalette();
								~PreviewPalette();
		
		void					Activate();
		void					Deactivate();
		
		void					HandleContentClick(EventRecord* eventPtr);
		void					HandleKeyDown(EventRecord* eventPtr);
		
		void					DoIdle(MWindowPtr windowUnderMouse);
		
		void					Update();
		void					Update(icnsEditorPtr frontEditor);
		
		void					SetPreviewSize(int size);
	
	private:
		PreviewPaletteControls	controls;
		
		bool					oscillating, increasing;
		int						oscillationTicks;
		char					keyBuffer[kPPEasterEggPhraseLength];
		int						currentValue;
		
		icnsEditorPtr			parentEditor;
		
		MenuHandle				settingsMenu;
		
		static ControlActionUPP sliderActionUPP;
		
		int						previousBackground;
		
		void					CreateControls();
		
		static void 			FillRectWithPreviewBackground(Rect targetRect);
		
		static void				SettingsUpdate(struct EnhancedPlacardData* data, int flags);
		
		static void				SnapPreviewSize(int* value);
		
		static pascal void		SliderAction(ControlHandle theControl, SInt16 thePart);
		static pascal short 	KeyFilter(ControlHandle theControl, SInt16* keyCode, SInt16* charCode, UInt16* modifiers);
		static pascal void 		PreviewDraw(ControlHandle theControl, short thePart);
};

typedef PreviewPalette* PreviewPalettePtr;
