#pragma once

#include "MFloater.h"

const static OSType kColorsPaletteType = 'IcCP';

const static int kSliderEndcap = 4;
const static int kSliderThumbWidth = 13;
const static int kSmallTabTabsHeight = 22;

enum ColorsPaletteResources
{
	rCPWindow = 250,
	rCPSwatch = 250,
	rCPHelp = 250,
	rCPTabs = 251,
	rCPBackgroundPane = 252,
	rCPColorPickerArea = 253,
	rCPSeparator1 = 254,
	rCPPositionReadoutLabel = 255,
	rCPPositionReadoutData = 256,
	//rCPSeparator2 = 257,
	rCPColorReadoutLabel = 258,
	rCPColorReadoutData = 259
};

enum ColorPickers
{
	kRGBPane = 1,
	kHSVPane = 2,
	kSystemPane = 3,
	kFavoritesPane = 4
};

enum ColorPickerColorTypes
{
	kCPFore = 1,
	kCPBack = 2
};


enum CPBalloonHelp
{
	hCPSwatch = 1,
	hCPTabs = 2,
	hCPPosReadout = 3,
	hCPColorReadout = 4
};

typedef struct
{
	ControlHandle root,
				  backgroundPane,
				  swatch,
				  tabs,
				  colorPickerArea,
				  separator1,
				  positionReadoutLabel,
				  positionReadoutData,
				  separator2,
				  colorReadoutLabel,
				  colorReadoutData;
} ColorsPaletteControls;

class ColorsPalette;

typedef ColorsPalette* ColorsPalettePtr;

class ColorPicker
{
	public:
						ColorPicker();
						~ColorPicker();
		
		void				SetDisplayArea(ColorsPalettePtr window, ControlHandle area);
		
		virtual void		CreateControls() = 0;
		virtual void		HandleContentClick(EventRecord* eventPtr) = 0;
		
		virtual void		SetColor(RGBColor color) = 0;
		virtual RGBColor	GetColor() = 0;
		
		virtual void		Hide() = 0;
		virtual void		Show() = 0;
		
		virtual void		DoIdle();
		virtual void		UpdateCursor(Point theMouse);
			
	protected:
	
		ColorsPalettePtr	parentWindow;
		ControlHandle		displayAreaControl;
		
		RGBColor			color;		
};

typedef ColorPicker* ColorPickerPtr;

enum RGBColorPickerResources
{
	rRGBCPHelp = 260,
	rRGBCPBaseControl = 260,
	rRGBCPRedSlider = 261,
	rRGBCPGreenSlider = 262,
	rRGBCPBlueSlider = 263,
	rRGBCPRedLabel = 264,
	rRGBCPGreenLabel = 265,
	rRGBCPBlueLabel = 266,
	rRGBCPRedPreview = 267,
	rRGBCPGreenPreview = 268,
	rRGBCPBluePreview = 269
};

enum RGBColorPickerBalloonHelp
{
	hRGBCPRedSlider = 1,
	hRGBCPRedPreview = 2,
	hRGBCPGreenSlider = 3,
	hRGBCPGreenPreview = 4,
	hRGBCPBlueSlider = 5,
	hRGBCPBluePreview = 6
};

class RGBColorPicker : public ColorPicker
{
	public:
						RGBColorPicker();
						~RGBColorPicker();
		
		void			SetColor(RGBColor color);
		RGBColor		GetColor();
		
		void			Hide();
		void			Show();
		
		void			UpdateCursor(Point theMouse);
		
		void			CreateControls();
		void			HandleContentClick(EventRecord* eventPtr);
		
		static pascal void SliderAction(ControlHandle theControl, short partCode);
	
	private:
		static pascal void PreviewDraw(ControlHandle theControl, short thePart);
		static void		DrawGradient(Rect targetRect, RGBColor color,
								  	 int rIncrement, int gIncrement, int bIncrement);
		

		static ControlActionUPP sliderActionUPP;
	
		ControlHandle	parentControl,
						redSlider,
						redLabel,
						redPreview,
						greenSlider,
						greenLabel,
						greenPreview,
						blueSlider,
						blueLabel,
						bluePreview;
};

enum HSVColorPickerResources
{
	rHSVCPHelp = 270,
	rHSVCPBaseControl = 270,
	rHSVCPHueSlider = 271,
	rHSVCPSaturationSlider = 272,
	rHSVCPValueSlider = 273,
	rHSVCPHueLabel = 274,
	rHSVCPSaturationLabel = 275,
	rHSVCPValueLabel = 276,
	rHSVCPHuePreview = 277,
	rHSVCPSaturationPreview = 278,
	rHSVCPValuePreview = 279
};

enum HSVColorPickerBalloonHelp
{
	hHSVCPHueSlider = 1,
	hHSVCPHuePreview = 2,
	hHSVCPSaturationSlider = 3,
	hHSVCPSaturationPreview = 4,
	hHSVCPValueSlider = 5,
	hHSVCPValuePreview = 6
};

class HSVColorPicker : public ColorPicker
{
	public:
						HSVColorPicker();
						~HSVColorPicker();
		
		void			SetColor(RGBColor color);
		RGBColor		GetColor();
		
		void			Hide();
		void			Show();
		
		void			UpdateCursor(Point theMouse);
		
		void			CreateControls();
		void			HandleContentClick(EventRecord* eventPtr);
		
		static pascal void SliderAction(ControlHandle theControl, short partCode);
	
	private:
		static pascal void PreviewDraw(ControlHandle theControl, short thePart);
		static void		DrawGradient(Rect targetRect, HSVColor color,
								  	 int hIncrement, int sIncrement, int vIncrement);
								  	 
		

		static ControlActionUPP sliderActionUPP;
	
		HSVColor		colorAsHSV;
	
		ControlHandle	parentControl,
						hueSlider,
						hueLabel,
						huePreview,
						saturationSlider,
						saturationLabel,
						saturationPreview,
						valueSlider,
						valueLabel,
						valuePreview;
};

enum SystemColorPickerResources
{
	rSystemCPPaletteControl = 280,
	rSystemCPHelp = 280
};

enum SystemColorPickerBalloonHelp
{
	hSystemCPPalette = 1
};

class SystemColorPicker : public ColorPicker
{
	public:
						SystemColorPicker();
						~SystemColorPicker();
		
		void			SetColor(RGBColor color);
		RGBColor		GetColor();
		
		void			Hide();
		void			Show();
		
		void			UpdateCursor(Point theMouse);
		
		void			CreateControls();
		void			HandleContentClick(EventRecord* eventPtr);
	private:
		static pascal void PaletteDraw(ControlHandle theControl, short thePart);
		
		RGBColor		GetColorUnderMouse(Point theMouse, bool* colorChanged);
		void			WindowToPaletteLocal(Point* theMouse);
		void			TrackMouseDown(Point* theMouse);
		void			UpdateColorPicker();
		
		bool			tracking;
		
		int				previousIconName,
						previousColors;
		RGBColor		previousColor, previousHoverColor;			
		
		PixMapHandle	palettePix;
		GWorldPtr		paletteGW;
		RgnHandle		paletteRgn;
		Rect			paletteRect;
		
		RgnHandle		hiliteRgn, updateRgn;
	
		ControlHandle	paletteControl;
};

enum FavoritesColorPickerResources
{
	rFavoritesCPHelp = 290,
	rFavoritesCPPaletteControl = 290,
	rFavoritesCPScissors = 290
};

enum FavoritesColorPickerConstants
{
	kFavoritesCPSampleXCount = 16,
	kFavoritesCPSampleYCount = 8,
	kFavoritesCPSampleWidth = 10,
	kFavoritesCPSampleHeight = 10,
	kFavoritesCPSampleSpacing = 5
};

enum FavoritesColorPickerBalloonHelp
{
	hFavoritesCPPalette = 1
};

class FavoritesColorPicker : public ColorPicker
{
	public:
						FavoritesColorPicker();
						~FavoritesColorPicker();
		
		void			SetColor(RGBColor color);
		RGBColor		GetColor();
		
		void			Hide();
		void			Show();
		
		void			UpdateCursor(Point theMouse);
		
		void			CreateControls();
		void			HandleContentClick(EventRecord* eventPtr);
		
	private:
		static pascal void PaletteDraw(ControlHandle theControl, short thePart);
		
		int 			GetPaletteIndex(Point theMouse);
	
		ControlHandle	paletteControl;
};


class ColorsPalette : public MFloater
{
	public:
						ColorsPalette();
						~ColorsPalette();
				
		
		void			Close();
		
		void			Activate();
		void			Deactivate();
		void			DoIdle(MWindowPtr windowUnderMouse);
		void			UpdateCursor(Point theMouse);
		
		void			Show();
		
		bool 			HandleBoundsChange(int attributes, Rect* originalBounds, Rect* previousBounds, Rect* currentBounds);
		void			HandleContentClick(EventRecord* eventPtr);
		
		void			SetCurrentPicker(int picker);
		int				GetCurrentPicker();
		
		void			SetColors(RGBColor foreColor, RGBColor backColor);
		void			UpdateColors();
		void			GrabColors();
		
		void			Update();
		void			UpdateReadout(int x, int y, RGBColor color);
		
		bool			readoutChanged;
	
	private:
	
		RGBColor				fore, back, currentReadoutColor;
		int						currentColor;
		int						currentX, currentY;
		
		RgnHandle				foreColorRgn, backColorRgn;
	
		void					CreateControls();
	
		ColorsPaletteControls	controls;
		
		
		RGBColorPicker			rgb;
		HSVColorPicker			hsv;
		SystemColorPicker		system;
		FavoritesColorPicker	favorites;
		
		ColorPickerPtr			currentColorPicker;
		
		friend pascal void RGBColorPicker::PreviewDraw(ControlHandle theControl, short thePart);
		friend pascal void HSVColorPicker::PreviewDraw(ControlHandle theControl, short thePart);
		friend pascal void SystemColorPicker::PaletteDraw(ControlHandle theControl, short thePart);

		friend pascal void	CPSwatchDraw(ControlHandle theControl,SInt16 thePart);
		friend pascal ControlPartCode CPSwatchHitTest(ControlHandle theControl, Point where);
};


pascal void	CPBackgroundPaneDraw(ControlHandle theControl,SInt16 thePart);
pascal ControlPartCode CPBackgroundPaneHitTest(ControlHandle theControl, Point where);
pascal void	CPSwatchDraw(ControlHandle theControl,SInt16 thePart);
pascal ControlPartCode CPSwatchHitTest(ControlHandle theControl, Point where);
