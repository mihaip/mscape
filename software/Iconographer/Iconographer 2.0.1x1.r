/* Resource fork of software/Iconographer/Iconographer 2.0.1x1 */
resource 'ALRT' (3000) {
	{40, 40, 134, 416},
	3000,
	{	/* array: 4 elements */
		/* [1] */
		OK, visible, sound1,
		/* [2] */
		OK, visible, sound1,
		/* [3] */
		OK, visible, sound1,
		/* [4] */
		OK, visible, sound1
	},
	alertPositionMainScreen
};

resource 'BNDL' (128) {
	'Mngl',
	0,
	{	/* array TypeArray: 2 elements */
		/* [1] */
		'ICN#',
		{	/* array IDArray: 7 elements */
			/* [1] */
			0, 128,
			/* [2] */
			1, 0,
			/* [3] */
			2, 129,
			/* [4] */
			3, 0,
			/* [5] */
			4, 0,
			/* [6] */
			5, 130,
			/* [7] */
			6, 131
		},
		/* [2] */
		'FREF',
		{	/* array IDArray: 7 elements */
			/* [1] */
			0, 128,
			/* [2] */
			1, 129,
			/* [3] */
			2, 130,
			/* [4] */
			3, 131,
			/* [5] */
			4, 132,
			/* [6] */
			5, 133,
			/* [7] */
			6, 134
		}
	}
};

resource 'CNTL' (200, "Icon Edit Well", purgeable) {
	{0, 0, 194, 194},
	0,
	visible,
	100,
	0,
	256,
	0,
	""
};

resource 'CNTL' (201, "Zoom Placard", purgeable) {
	{193, 4294967295, 209, 63},
	32,
	visible,
	0,
	0,
	256,
	0,
	""
};

resource 'CNTL' (202, "Vertical Scrollbar", purgeable) {
	{4294967295, 193, 194, 209},
	0,
	visible,
	100,
	0,
	386,
	0,
	""
};

resource 'CNTL' (203, "Horizontal Scrollbar", purgeable) {
	{193, 62, 209, 194},
	0,
	visible,
	100,
	0,
	386,
	0,
	""
};

resource 'CNTL' (250, "Colors Palette: Fore/Back Colors", purgeable) {
	{23, 8, 77, 62},
	0,
	visible,
	100,
	0,
	264,
	0,
	""
};

resource 'CNTL' (251, "Colors Palette: Tabs", purgeable) {
	{3, 71, 161, 321},
	251,
	visible,
	100,
	0,
	137,
	0,
	""
};

resource 'CNTL' (252, "Colors Palette: Background Pane", purgeable) {
	{4294967295, 4294967295, 11, 10},
	0,
	visible,
	100,
	0,
	256,
	0,
	""
};

resource 'CNTL' (253, "Colors Palette: Color Pickers Area", purgeable) {
	{22, 73, 158, 317},
	0,
	visible,
	100,
	0,
	256,
	0,
	""
};

resource 'CNTL' (254, "Colors Palette: Separator 1", purgeable) {
	{84, 6, 85, 66},
	0,
	visible,
	100,
	0,
	144,
	0,
	""
};

resource 'CNTL' (255, "Colors Palette: Position Readout Label", purgeable) {
	{90, 8, 115, 20},
	0,
	visible,
	100,
	0,
	296,
	0,
	"X:\nY:"
};

resource 'CNTL' (256, "Colors Palette: Position Readout Data", purgeable) {
	{90, 20, 115, 62},
	0,
	visible,
	100,
	0,
	296,
	0,
	"128\n67"
};

resource 'CNTL' (257, "Colors Palette: Separator 2", purgeable) {
	{116, 6, 117, 66},
	0,
	visible,
	100,
	0,
	144,
	0,
	""
};

resource 'CNTL' (258, "Colors Palette: Color Readout Label", purgeable) {
	{120, 8, 155, 20},
	0,
	visible,
	100,
	0,
	296,
	0,
	"R:\nG:\nB:"
};

resource 'CNTL' (259, "Colors Palette: Color Readout Data", purgeable) {
	{120, 20, 155, 62},
	0,
	visible,
	100,
	0,
	296,
	0,
	"100%\n100%\n100%"
};

resource 'CNTL' (260, "Colors Palette: RGB Picker: Parent", purgeable) {
	{22, 73, 158, 317},
	2,
	visible,
	100,
	0,
	256,
	0,
	""
};

resource 'CNTL' (261, "Colors Palette: RGB Picker: Red Slider", purgeable) {
	{34, 100, 50, 308},
	0,
	visible,
	255,
	0,
	49,
	0,
	"Red:"
};

resource 'CNTL' (262, "Colors Palette: RGB Picker: Green Slider", purgeable) {
	{71, 100, 89, 308},
	0,
	visible,
	255,
	0,
	49,
	0,
	"Green:"
};

resource 'CNTL' (263, "Colors Palette: RGB Picker: Blue Slider", purgeable) {
	{108, 100, 126, 308},
	0,
	visible,
	255,
	0,
	49,
	0,
	"Blue:"
};

resource 'CNTL' (264, "Colors Palette: RGB Colors: Red Label", purgeable) {
	{34, 84, 45, 96},
	0,
	visible,
	100,
	0,
	296,
	0,
	"R:"
};

resource 'CNTL' (265, "Colors Palette: RGB Colors: Green Label", purgeable) {
	{71, 84, 82, 96},
	0,
	visible,
	100,
	0,
	296,
	0,
	"G:"
};

resource 'CNTL' (266, "Colors Palette: RGB Colors: Blue Label", purgeable) {
	{108, 84, 119, 96},
	0,
	visible,
	100,
	0,
	296,
	0,
	"B:"
};

resource 'CNTL' (267, "Colors Palette: RGB Picker: Red Preview", purgeable) {
	{52, 109, 64, 300},
	0,
	visible,
	100,
	0,
	256,
	0,
	""
};

resource 'CNTL' (268, "Colors Palette: RGB Picker: Green Preview", purgeable) {
	{89, 109, 101, 300},
	0,
	visible,
	100,
	0,
	256,
	0,
	""
};

resource 'CNTL' (269, "Colors Palette: RGB Picker: Blue Preview", purgeable) {
	{126, 109, 138, 300},
	0,
	visible,
	100,
	0,
	256,
	0,
	""
};

resource 'CNTL' (270, "Colors Palette: HSV Picker: Parent", purgeable) {
	{22, 73, 158, 317},
	2,
	visible,
	100,
	0,
	256,
	0,
	""
};

resource 'CNTL' (271, "Colors Palette: HSV Picker: Hue Slider", purgeable) {
	{34, 100, 50, 308},
	0,
	visible,
	360,
	0,
	49,
	0,
	"Hue:"
};

resource 'CNTL' (272, "Colors Palette: HSV Picker: Saturation Slider", purgeable) {
	{71, 100, 87, 308},
	0,
	visible,
	100,
	0,
	49,
	0,
	"Green:"
};

resource 'CNTL' (273, "Colors Palette: HSV Picker: Value Slider", purgeable) {
	{108, 100, 124, 308},
	0,
	visible,
	100,
	0,
	49,
	0,
	"Value:"
};

resource 'CNTL' (274, "Colors Palette: HSV Colors: Hue Label", purgeable) {
	{34, 84, 47, 96},
	0,
	visible,
	100,
	0,
	296,
	0,
	"H:"
};

resource 'CNTL' (275, "Colors Palette: HSV Colors: Saturation Label", purgeable) {
	{71, 84, 82, 96},
	0,
	visible,
	100,
	0,
	296,
	0,
	"S:"
};

resource 'CNTL' (276, "Colors Palette: HSV Colors: Value Label", purgeable) {
	{108, 84, 119, 96},
	0,
	visible,
	100,
	0,
	296,
	0,
	"V:"
};

resource 'CNTL' (277, "Colors Palette: HSV Picker: Hue Preview", purgeable) {
	{52, 109, 64, 300},
	0,
	visible,
	100,
	0,
	256,
	0,
	""
};

resource 'CNTL' (278, "Colors Palette: HSV Picker: Saturation Preview", purgeable) {
	{89, 109, 101, 300},
	0,
	visible,
	100,
	0,
	256,
	0,
	""
};

resource 'CNTL' (279, "Colors Palette: HSV Picker: Value Preview", purgeable) {
	{126, 109, 138, 300},
	0,
	visible,
	100,
	0,
	256,
	0,
	""
};

resource 'CNTL' (280, "Colors Palette: System Picker: Palette", purgeable) {
	{22, 73, 158, 317},
	2,
	visible,
	100,
	0,
	256,
	0,
	""
};

resource 'CNTL' (290, "Colors Palette: Favorites Picker: Palette", purgeable) {
	{28, 74, 152, 316},
	2,
	visible,
	100,
	0,
	256,
	0,
	""
};

resource 'CNTL' (300, "Icon Browser: Scroll Bar", purgeable) {
	{4294967295, 319, 343, 335},
	0,
	visible,
	100,
	0,
	386,
	0,
	""
};

resource 'CNTL' (301, "Icon Browser: Info Pane", purgeable) {
	{343, 100, 359, 320},
	0,
	visible,
	100,
	0,
	256,
	0,
	"27 icons"
};

resource 'CNTL' (302, "Icon Browser: List", purgeable) {
	{0, 0, 344, 320},
	0,
	visible,
	100,
	0,
	256,
	0,
	""
};

resource 'CNTL' (303, "Icon Browser: Type Menu", purgeable) {
	{343, 4294967295, 359, 101},
	32,
	visible,
	100,
	0,
	256,
	0,
	"Icon Types:"
};

resource 'CNTL' (310, "Icon Browser: Progress Bar", purgeable) {
	{28, 8, 41, 342},
	0,
	visible,
	100,
	0,
	80,
	0,
	""
};

resource 'CNTL' (400, "Members Pane", purgeable) {
	{0, 4294967295, 128, 141},
	0,
	visible,
	100,
	0,
	256,
	0,
	""
};

resource 'CNTL' (401, "Members Scrollbar", purgeable) {
	{4294967295, 140, 451, 151},
	0,
	visible,
	100,
	0,
	386,
	0,
	""
};

resource 'CNTL' (402, "Members State Selection", purgeable) {
	{450, 4294967295, 461, 41},
	400,
	visible,
	402,
	512,
	256,
	0,
	""
};

resource 'CNTL' (403, "Background Pane", purgeable) {
	{0, 4294967295, 100, 99},
	0,
	visible,
	100,
	0,
	256,
	0,
	""
};

resource 'CNTL' (404, "Members Info", purgeable) {
	{450, 109, 461, 141},
	400,
	visible,
	402,
	512,
	256,
	0,
	""
};

resource 'CNTL' (405, "Add Member", purgeable) {
	{450, 40, 461, 110},
	400,
	visible,
	402,
	512,
	256,
	0,
	""
};

resource 'CNTL' (500, "Preview Background", purgeable) {
	{4294967295, 4294967295, 176, 151},
	0,
	visible,
	100,
	0,
	256,
	0,
	""
};

resource 'CNTL' (501, "Preview Area", purgeable) {
	{32, 6, 170, 144},
	0,
	visible,
	100,
	0,
	256,
	0,
	""
};

resource 'CNTL' (502, "Preview Slider", purgeable) {
	{7, 6, 23, 116},
	32,
	visible,
	128,
	0,
	57,
	0,
	""
};

resource 'CNTL' (503, "Preview Text", purgeable) {
	{9, 122, 21, 142},
	0,
	visible,
	100,
	0,
	280,
	0,
	""
};

resource 'CNTL' (504, "Preview Settings", purgeable) {
	{175, 4294967295, 191, 151},
	32,
	visible,
	100,
	0,
	256,
	0,
	""
};

resource 'CNTL' (600, "Pen Tool", purgeable) {
	{41, 4294967295, 63, 26},
	0,
	visible,
	600,
	258,
	32,
	0,
	""
};

resource 'CNTL' (601, "Eyedropper Tool", purgeable) {
	{41, 25, 63, 52},
	0,
	visible,
	601,
	258,
	32,
	0,
	""
};

resource 'CNTL' (602, "Fill Tool", purgeable) {
	{62, 4294967295, 84, 26},
	0,
	visible,
	602,
	258,
	32,
	0,
	""
};

resource 'CNTL' (603, "Eraser Tool", purgeable) {
	{62, 25, 84, 52},
	0,
	visible,
	603,
	258,
	32,
	0,
	""
};

resource 'CNTL' (604, "Marquee Tool", purgeable) {
	{4294967295, 4294967295, 21, 26},
	0,
	visible,
	604,
	258,
	32,
	0,
	""
};

resource 'CNTL' (605, "Move Tool", purgeable) {
	{4294967295, 25, 21, 52},
	0,
	visible,
	605,
	258,
	32,
	0,
	""
};

resource 'CNTL' (606, "Lasso Tool", purgeable) {
	{20, 4294967295, 42, 26},
	0,
	visible,
	606,
	258,
	32,
	0,
	""
};

resource 'CNTL' (607, "Wand Tool", purgeable) {
	{20, 25, 42, 52},
	0,
	visible,
	607,
	258,
	32,
	0,
	""
};

resource 'CNTL' (608, "Line Tool", purgeable) {
	{104, 4294967295, 126, 26},
	0,
	visible,
	608,
	258,
	32,
	0,
	""
};

resource 'CNTL' (609, "Rectangle Tool", purgeable) {
	{83, 4294967295, 105, 26},
	0,
	visible,
	609,
	258,
	32,
	0,
	""
};

resource 'CNTL' (610, "Oval Tool", purgeable) {
	{83, 25, 105, 52},
	0,
	visible,
	610,
	258,
	32,
	0,
	""
};

resource 'CNTL' (611, "Polygon Tool", purgeable) {
	{104, 25, 126, 52},
	0,
	visible,
	611,
	258,
	32,
	0,
	""
};

resource 'CNTL' (612, "Gradient Tool", purgeable) {
	{125, 4294967295, 147, 26},
	0,
	visible,
	612,
	258,
	32,
	0,
	""
};

resource 'CNTL' (613, "Text Tool", purgeable) {
	{125, 25, 147, 52},
	0,
	visible,
	613,
	258,
	32,
	0,
	""
};

resource 'CNTL' (614, "Pan Tool", purgeable) {
	{146, 4294967295, 168, 26},
	0,
	visible,
	614,
	258,
	32,
	0,
	""
};

resource 'CNTL' (615, "Zoom Tool", purgeable) {
	{146, 25, 168, 52},
	0,
	visible,
	615,
	258,
	32,
	0,
	""
};

resource 'CNTL' (620, "Color Swatch", purgeable) {
	{210, 5, 251, 46},
	0,
	visible,
	100,
	0,
	256,
	0,
	""
};

resource 'CNTL' (621, "Patterns", purgeable) {
	{189, 5, 207, 46},
	0,
	visible,
	100,
	0,
	256,
	0,
	""
};

resource 'CNTL' (622, "Background Pane", purgeable) {
	{185, 4294967295, 254, 52},
	0,
	visible,
	100,
	0,
	256,
	0,
	""
};

resource 'CNTL' (623, "Line Thickness", purgeable) {
	{168, 0, 185, 17},
	32,
	visible,
	100,
	0,
	256,
	0,
	""
};

resource 'CNTL' (624, "Anti-aliasing", purgeable) {
	{168, 17, 185, 34},
	32,
	visible,
	100,
	0,
	256,
	0,
	""
};

resource 'CNTL' (625, "Fill", purgeable) {
	{168, 34, 185, 51},
	32,
	visible,
	100,
	0,
	256,
	0,
	""
};

resource 'CNTL' (1000, "Zoom Level Arrows", purgeable) {
	{40, 366, 64, 379},
	0,
	visible,
	100,
	0,
	96,
	0,
	""
};

resource 'CNTL' (1001, "Flags Group Box", purgeable) {
	{245, 10, 307, 379},
	0,
	visible,
	100,
	0,
	160,
	0,
	"Flags"
};

resource 'CNTL' (1002, "ID Popup", purgeable) {
	{11, 130, 31, 152},
	0,
	visible,
	0,
	202,
	400,
	0,
	""
};

resource 'CNTL' (1003, "Startup Options Group Box", purgeable) {
	{92, 9, 160, 189},
	0,
	visible,
	120,
	0,
	160,
	0,
	"Startup Options:"
};

resource 'CNTL' (1004, "Default Format", purgeable) {
	{74, 10, 94, 378},
	0,
	visible,
	-1,
	4000,
	401,
	0,
	"Default icon format:"
};

resource 'CNTL' (1005, "Icon Info: Icon Format", purgeable) {
	{40, 10, 60, 378},
	0,
	visible,
	-1,
	4000,
	401,
	0,
	"Icon Format:"
};

resource 'CNTL' (1006, "Members Group Box", purgeable) {
	{99, 9, 241, 381},
	0,
	visible,
	100,
	0,
	160,
	0,
	"Members"
};

resource 'CNTL' (1007, "Preferences Tabs", purgeable) {
	{8, 0, 252, 390},
	1007,
	visible,
	100,
	0,
	128,
	0,
	""
};

resource 'CNTL' (1008, "Default Members Group Box", purgeable) {
	{99, 9, 241, 381},
	0,
	visible,
	100,
	0,
	160,
	0,
	"Default Members"
};

resource 'CNTL' (1009, "Saving Options Group Box", purgeable) {
	{92, 198, 160, 378},
	0,
	visible,
	120,
	0,
	160,
	0,
	"Mac OS Icon Saving:"
};

resource 'CNTL' (1010, "Adjust Tabs", purgeable) {
	{8, 0, 141, 367},
	1010,
	visible,
	100,
	0,
	128,
	0,
	""
};

resource 'CNTL' (1011, "Hue Slider", purgeable) {
	{47, 83, 78, 303},
	5,
	visible,
	180,
	-180,
	51,
	0,
	"Hue:"
};

resource 'CNTL' (1012, "Saturation Slider", purgeable) {
	{85, 83, 116, 303},
	5,
	visible,
	100,
	-100,
	51,
	0,
	"Saturation:"
};

resource 'CNTL' (1013, "Lightness Slider", purgeable) {
	{124, 92, 155, 312},
	6,
	visible,
	100,
	-100,
	51,
	0,
	"Lightness:"
};

resource 'CNTL' (1014, "Brightness Slider", purgeable) {
	{47, 83, 78, 303},
	5,
	visible,
	100,
	-100,
	51,
	0,
	"Brightness:"
};

resource 'CNTL' (1015, "Contrast Slider", purgeable) {
	{85, 83, 116, 303},
	5,
	visible,
	100,
	-100,
	51,
	0,
	"Contrast:"
};

resource 'CNTL' (1016, "External Format", purgeable) {
	{95, 7, 115, 379},
	0,
	visible,
	172,
	1016,
	401,
	0,
	"Export format:"
};

resource 'CNTL' (1017, "External Editor App", purgeable) {
	{41, 179, 62, 379},
	0,
	visible,
	100,
	0,
	32,
	0,
	""
};

resource 'CNTL' (1018, "External Editor Shortcut", purgeable) {
	{68, 179, 89, 379},
	0,
	visible,
	100,
	0,
	32,
	0,
	""
};

resource 'CNTL' (1019, "Members Palette Box", purgeable) {
	{162, 9, 215, 378},
	0,
	visible,
	100,
	0,
	160,
	0,
	"Members Palette Display:"
};

resource 'CNTL' (1020, "Members Palette Display Slider", purgeable) {
	{187, 222, 203, 340},
	64,
	visible,
	64,
	16,
	57,
	0,
	""
};

resource 'CNTL' (1100, purgeable) {
	{121, 13, 137, 153},
	0,
	visible,
	100,
	0,
	377,
	0,
	"Thumbnail (128 x 128)"
};

resource 'CNTL' (1101, purgeable) {
	{165, 13, 181, 153},
	0,
	visible,
	100,
	0,
	377,
	0,
	"Huge (48 x 48)"
};

resource 'CNTL' (1102, purgeable) {
	{184, 13, 200, 153},
	0,
	visible,
	100,
	0,
	377,
	0,
	"Large (32 x 32)"
};

resource 'CNTL' (1103, purgeable) {
	{202, 13, 218, 153},
	0,
	visible,
	100,
	0,
	377,
	0,
	"Small (16 x 16)"
};

resource 'CNTL' (1104, purgeable) {
	{220, 13, 236, 153},
	0,
	visible,
	100,
	0,
	377,
	0,
	"Mini (16 x 12)"
};

resource 'CNTL' (1105, "Members Divider", purgeable) {
	{159, 15, 162, 373},
	0,
	visible,
	100,
	0,
	144,
	0,
	"Purgeable"
};

resource 'CNTL' (1106, purgeable) {
	{264, 14, 280, 124},
	0,
	visible,
	100,
	0,
	377,
	0,
	"Purgeable"
};

resource 'CNTL' (1107, purgeable) {
	{282, 14, 298, 124},
	0,
	visible,
	100,
	0,
	377,
	0,
	"Preload"
};

resource 'CNTL' (1108, purgeable) {
	{264, 134, 280, 244},
	0,
	visible,
	100,
	0,
	377,
	0,
	"Protected"
};

resource 'CNTL' (1109, purgeable) {
	{282, 134, 298, 244},
	0,
	visible,
	100,
	0,
	377,
	0,
	"System Heap"
};

resource 'CNTL' (1110, purgeable) {
	{264, 264, 280, 374},
	0,
	visible,
	100,
	0,
	377,
	0,
	"Locked"
};

resource 'CNTL' (1120, "Add Member Type Menu", purgeable) {
	{56, 4, 76, 338},
	0,
	visible,
	100,
	1120,
	401,
	0,
	"Member type:"
};

resource 'CNTL' (1121, "Add Member Source Menu", purgeable) {
	{82, 4, 102, 338},
	0,
	visible,
	100,
	1121,
	401,
	0,
	"Copy from:"
};

resource 'CNTL' (1410, "Font Popup", purgeable) {
	{8, 8, 28, 188},
	0,
	visible,
	45,
	1410,
	405,
	1179602500,
	"Font:"
};

resource 'CNTL' (1411, "Size Popup", purgeable) {
	{37, 166, 57, 188},
	0,
	visible,
	0,
	1411,
	401,
	0,
	""
};

resource 'CNTL' (1412, "Size Popup", purgeable) {
	{66, 8, 86, 190},
	0,
	visible,
	45,
	1412,
	401,
	0,
	"Style:"
};

resource 'CNTL' (2000, "Types Pop-up", purgeable) {
	{6, 8, 26, 258},
	0,
	visible,
	100,
	4000,
	409,
	0,
	"Icon Format:"
};

resource 'CNTL' (2001, "Old Types Pop-up", purgeable) {
	{185, 11, 205, 261},
	0,
	visible,
	100,
	4000,
	409,
	0,
	"Icon Format:"
};

resource 'CNTL' (10100, "User Pane", purgeable) {
	{0, 0, 16, 16},
	0,
	visible,
	100,
	0,
	256,
	0,
	""
};

resource 'DITL' (128, "About Box") {
	{	/* array DITLarray: 6 elements */
		/* [1] */
		{68, 120, 96, 278},
		UserItem {
			enabled
		},
		/* [2] */
		{92, 120, 116, 276},
		UserItem {
			enabled
		},
		/* [3] */
		{0, 0, 300, 456},
		UserItem {
			enabled
		},
		/* [4] */
		{253, 2, 265, 202},
		UserItem {
			disabled
		},
		/* [5] */
		{267, 2, 279, 202},
		UserItem {
			disabled
		},
		/* [6] */
		{281, 2, 293, 202},
		UserItem {
			disabled
		}
	}
};

resource 'DITL' (129, "Registration") {
	{	/* array DITLarray: 9 elements */
		/* [1] */
		{102, 270, 122, 338},
		Button {
			enabled,
			"OK"
		},
		/* [2] */
		{102, 190, 121, 254},
		Button {
			enabled,
			"Cancel"
		},
		/* [3] */
		{102, 7, 122, 167},
		Button {
			enabled,
			"Purchase Registration"
		},
		/* [4] */
		{12, 136, 28, 336},
		EditText {
			enabled,
			""
		},
		/* [5] */
		{40, 136, 56, 336},
		EditText {
			enabled,
			""
		},
		/* [6] */
		{68, 136, 84, 336},
		EditText {
			enabled,
			""
		},
		/* [7] */
		{12, 8, 28, 51},
		StaticText {
			disabled,
			"Name:"
		},
		/* [8] */
		{40, 8, 56, 98},
		StaticText {
			disabled,
			"Organization:"
		},
		/* [9] */
		{68, 8, 84, 131},
		StaticText {
			disabled,
			"Registration Code:"
		}
	}
};

resource 'DITL' (250, purgeable) {
	{	/* array DITLarray: 10 elements */
		/* [1] */
		{23, 8, 77, 62},
		Control {
			enabled,
			250
		},
		/* [2] */
		{3, 71, 161, 321},
		Control {
			enabled,
			251
		},
		/* [3] */
		{4294967295, 4294967295, 11, 10},
		Control {
			enabled,
			252
		},
		/* [4] */
		{22, 73, 158, 317},
		Control {
			enabled,
			253
		},
		/* [5] */
		{116, 6, 117, 66},
		Control {
			enabled,
			257
		},
		/* [6] */
		{120, 20, 155, 62},
		Control {
			enabled,
			259
		},
		/* [7] */
		{120, 8, 155, 20},
		Control {
			enabled,
			258
		},
		/* [8] */
		{84, 6, 85, 66},
		Control {
			enabled,
			254
		},
		/* [9] */
		{90, 20, 115, 62},
		Control {
			enabled,
			256
		},
		/* [10] */
		{90, 8, 115, 20},
		Control {
			enabled,
			255
		}
	}
};

resource 'DITL' (260, purgeable) {
	{	/* array DITLarray: 10 elements */
		/* [1] */
		{22, 73, 158, 317},
		Control {
			enabled,
			260
		},
		/* [2] */
		{108, 100, 126, 308},
		Control {
			enabled,
			263
		},
		/* [3] */
		{34, 100, 52, 308},
		Control {
			enabled,
			261
		},
		/* [4] */
		{71, 100, 89, 308},
		Control {
			enabled,
			262
		},
		/* [5] */
		{108, 84, 119, 96},
		Control {
			enabled,
			266
		},
		/* [6] */
		{34, 84, 45, 96},
		Control {
			enabled,
			264
		},
		/* [7] */
		{71, 84, 82, 96},
		Control {
			enabled,
			265
		},
		/* [8] */
		{52, 109, 64, 300},
		Control {
			enabled,
			267
		},
		/* [9] */
		{89, 109, 101, 300},
		Control {
			enabled,
			268
		},
		/* [10] */
		{126, 109, 138, 300},
		Control {
			enabled,
			269
		}
	}
};

resource 'DITL' (270, purgeable) {
	{	/* array DITLarray: 10 elements */
		/* [1] */
		{22, 73, 158, 317},
		Control {
			enabled,
			270
		},
		/* [2] */
		{108, 100, 124, 308},
		Control {
			enabled,
			273
		},
		/* [3] */
		{34, 100, 50, 308},
		Control {
			enabled,
			271
		},
		/* [4] */
		{71, 100, 87, 308},
		Control {
			enabled,
			272
		},
		/* [5] */
		{34, 84, 47, 96},
		Control {
			enabled,
			274
		},
		/* [6] */
		{71, 84, 82, 96},
		Control {
			enabled,
			275
		},
		/* [7] */
		{108, 84, 119, 96},
		Control {
			enabled,
			276
		},
		/* [8] */
		{52, 109, 64, 300},
		Control {
			enabled,
			277
		},
		/* [9] */
		{89, 109, 101, 300},
		Control {
			enabled,
			278
		},
		/* [10] */
		{126, 109, 138, 300},
		Control {
			enabled,
			279
		}
	}
};

resource 'DITL' (280, purgeable) {
	{	/* array DITLarray: 1 elements */
		/* [1] */
		{22, 73, 158, 317},
		Control {
			enabled,
			280
		}
	}
};

resource 'DITL' (290, purgeable) {
	{	/* array DITLarray: 1 elements */
		/* [1] */
		{28, 74, 152, 316},
		Control {
			enabled,
			290
		}
	}
};

resource 'DITL' (300, purgeable) {
	{	/* array DITLarray: 2 elements */
		/* [1] */
		{28, 8, 41, 342},
		Control {
			enabled,
			310
		},
		/* [2] */
		{4, 8, 21, 341},
		StaticText {
			disabled,
			""
		}
	}
};

resource 'DITL' (301, purgeable) {
	{	/* array DITLarray: 4 elements */
		/* [1] */
		{4294967295, 319, 343, 335},
		Control {
			enabled,
			300
		},
		/* [2] */
		{343, 100, 359, 320},
		Control {
			enabled,
			301
		},
		/* [3] */
		{0, 0, 344, 320},
		Control {
			enabled,
			302
		},
		/* [4] */
		{343, 4294967295, 359, 101},
		Control {
			enabled,
			303
		}
	}
};

resource 'DITL' (1000, "Preferences", purgeable) {
	{	/* array DITLarray: 69 elements */
		/* [1] */
		{261, 306, 281, 374},
		Button {
			enabled,
			"OK"
		},
		/* [2] */
		{261, 226, 281, 290},
		Button {
			enabled,
			"Cancel"
		},
		/* [3] */
		{39, 8, 55, 313},
		CheckBox {
			enabled,
			"Show only loaded members"
		},
		/* [4] */
		{46, 320, 57, 360},
		EditText {
			disabled,
			"1000%"
		},
		/* [5] */
		{40, 366, 64, 379},
		Control {
			enabled,
			1000
		},
		/* [6] */
		{107, 16, 123, 181},
		RadioButton {
			enabled,
			"Create a new icon"
		},
		/* [7] */
		{123, 16, 139, 181},
		RadioButton {
			enabled,
			"Open an existing icon"
		},
		/* [8] */
		{139, 16, 155, 181},
		RadioButton {
			enabled,
			"Do nothing"
		},
		/* [9] */
		{56, 8, 72, 313},
		CheckBox {
			enabled,
			"Check masks when saving"
		},
		/* [10] */
		{73, 8, 89, 313},
		CheckBox {
			enabled,
			"Dither when working with lower depths"
		},
		/* [11] */
		{162, 9, 215, 378},
		Control {
			enabled,
			1019
		},
		/* [12] */
		{44, 10, 62, 309},
		StaticText {
			disabled,
			"Default zoom level:"
		},
		/* [13] */
		{74, 10, 94, 378},
		Control {
			enabled,
			1004
		},
		/* [14] */
		{92, 9, 160, 189},
		Control {
			enabled,
			1003
		},
		/* [15] */
		{8, 0, 252, 390},
		Control {
			enabled,
			1007
		},
		/* [16] */
		{92, 198, 160, 378},
		Control {
			enabled,
			1009
		},
		/* [17] */
		{99, 9, 241, 381},
		Control {
			enabled,
			1008
		},
		/* [18] */
		{220, 13, 236, 153},
		Control {
			enabled,
			1104
		},
		/* [19] */
		{121, 13, 137, 153},
		Control {
			enabled,
			1100
		},
		/* [20] */
		{165, 13, 181, 153},
		Control {
			enabled,
			1101
		},
		/* [21] */
		{184, 13, 200, 153},
		Control {
			enabled,
			1102
		},
		/* [22] */
		{202, 13, 218, 153},
		Control {
			enabled,
			1103
		},
		/* [23] */
		{159, 15, 162, 373},
		Control {
			enabled,
			1105
		},
		/* [24] */
		{142, 15, 156, 53},
		StaticText {
			disabled,
			"Hints"
		},
		/* [25] */
		{142, 112, 154, 141},
		StaticText {
			disabled,
			"Icon:"
		},
		/* [26] */
		{142, 148, 154, 179},
		StaticText {
			disabled,
			"32-bit"
		},
		/* [27] */
		{142, 180, 154, 211},
		StaticText {
			disabled,
			"8-bit"
		},
		/* [28] */
		{142, 212, 154, 243},
		StaticText {
			disabled,
			"4-bit"
		},
		/* [29] */
		{142, 244, 154, 275},
		StaticText {
			disabled,
			"1-bit"
		},
		/* [30] */
		{142, 281, 154, 316},
		StaticText {
			disabled,
			"Mask:"
		},
		/* [31] */
		{142, 315, 154, 346},
		StaticText {
			disabled,
			"8-bit"
		},
		/* [32] */
		{142, 347, 154, 378},
		StaticText {
			disabled,
			"1-bit"
		},
		/* [33] */
		{165, 154, 181, 171},
		CheckBox {
			enabled,
			""
		},
		/* [34] */
		{184, 154, 200, 171},
		CheckBox {
			enabled,
			""
		},
		/* [35] */
		{202, 154, 218, 171},
		CheckBox {
			enabled,
			""
		},
		/* [36] */
		{165, 182, 181, 199},
		CheckBox {
			enabled,
			""
		},
		/* [37] */
		{184, 182, 200, 199},
		CheckBox {
			enabled,
			""
		},
		/* [38] */
		{202, 182, 218, 199},
		CheckBox {
			enabled,
			""
		},
		/* [39] */
		{220, 182, 236, 199},
		CheckBox {
			enabled,
			""
		},
		/* [40] */
		{165, 214, 181, 231},
		CheckBox {
			enabled,
			""
		},
		/* [41] */
		{184, 214, 200, 231},
		CheckBox {
			enabled,
			""
		},
		/* [42] */
		{202, 214, 218, 231},
		CheckBox {
			enabled,
			""
		},
		/* [43] */
		{220, 214, 236, 231},
		CheckBox {
			enabled,
			""
		},
		/* [44] */
		{165, 246, 181, 263},
		CheckBox {
			disabled,
			""
		},
		/* [45] */
		{184, 246, 200, 263},
		CheckBox {
			disabled,
			""
		},
		/* [46] */
		{202, 246, 218, 263},
		CheckBox {
			disabled,
			""
		},
		/* [47] */
		{220, 246, 236, 263},
		CheckBox {
			disabled,
			""
		},
		/* [48] */
		{165, 318, 181, 335},
		CheckBox {
			enabled,
			""
		},
		/* [49] */
		{184, 318, 200, 335},
		CheckBox {
			enabled,
			""
		},
		/* [50] */
		{202, 318, 218, 335},
		CheckBox {
			enabled,
			""
		},
		/* [51] */
		{165, 350, 181, 367},
		CheckBox {
			disabled,
			""
		},
		/* [52] */
		{184, 350, 200, 367},
		CheckBox {
			disabled,
			""
		},
		/* [53] */
		{202, 350, 218, 367},
		CheckBox {
			disabled,
			""
		},
		/* [54] */
		{220, 350, 236, 367},
		CheckBox {
			disabled,
			""
		},
		/* [55] */
		{107, 202, 123, 367},
		RadioButton {
			enabled,
			"Data & resource forks"
		},
		/* [56] */
		{123, 202, 139, 367},
		RadioButton {
			enabled,
			"Resource fork only"
		},
		/* [57] */
		{139, 202, 155, 367},
		RadioButton {
			enabled,
			"Data fork only"
		},
		/* [58] */
		{222, 99, 242, 277},
		Button {
			enabled,
			"Reset Palette Locations"
		},
		/* [59] */
		{95, 7, 115, 379},
		Control {
			enabled,
			1016
		},
		/* [60] */
		{119, 9, 135, 169},
		CheckBox {
			enabled,
			"Export icon and mask"
		},
		/* [61] */
		{41, 179, 62, 379},
		Control {
			enabled,
			1017
		},
		/* [62] */
		{68, 179, 89, 379},
		Control {
			enabled,
			1018
		},
		/* [63] */
		{44, 10, 61, 119},
		StaticText {
			disabled,
			"External editor: "
		},
		/* [64] */
		{71, 10, 88, 149},
		StaticText {
			disabled,
			"Editor key shortcut:"
		},
		/* [65] */
		{177, 16, 193, 176},
		RadioButton {
			enabled,
			"Full size"
		},
		/* [66] */
		{193, 16, 209, 176},
		RadioButton {
			enabled,
			"Scaled"
		},
		/* [67] */
		{187, 222, 203, 340},
		Control {
			enabled,
			1020
		},
		/* [68] */
		{189, 347, 201, 363},
		EditText {
			enabled,
			"64"
		},
		/* [69] */
		{187, 187, 203, 220},
		StaticText {
			disabled,
			"Size:"
		}
	}
};

resource 'DITL' (1001, "Icon Info", purgeable) {
	{	/* array DITLarray: 54 elements */
		/* [1] */
		{318, 306, 338, 374},
		Button {
			enabled,
			"OK"
		},
		/* [2] */
		{318, 228, 338, 292},
		Button {
			enabled,
			"Cancel"
		},
		/* [3] */
		{13, 7, 29, 58},
		StaticText {
			enabled,
			"ID:"
		},
		/* [4] */
		{13, 64, 29, 124},
		EditText {
			enabled,
			"-16455"
		},
		/* [5] */
		{70, 10, 86, 60},
		StaticText {
			disabled,
			"Name:"
		},
		/* [6] */
		{70, 64, 86, 375},
		EditText {
			enabled,
			""
		},
		/* [7] */
		{245, 10, 307, 379},
		Control {
			enabled,
			1001
		},
		/* [8] */
		{13, 198, 29, 376},
		StaticText {
			disabled,
			""
		},
		/* [9] */
		{264, 14, 280, 124},
		Control {
			enabled,
			1106
		},
		/* [10] */
		{282, 14, 298, 124},
		Control {
			enabled,
			1107
		},
		/* [11] */
		{264, 264, 280, 374},
		Control {
			enabled,
			1110
		},
		/* [12] */
		{264, 134, 280, 244},
		Control {
			enabled,
			1108
		},
		/* [13] */
		{282, 134, 298, 244},
		Control {
			enabled,
			1109
		},
		/* [14] */
		{13, 165, 29, 200},
		StaticText {
			disabled,
			"Size:"
		},
		/* [15] */
		{11, 130, 31, 152},
		Control {
			enabled,
			1002
		},
		/* [16] */
		{40, 10, 60, 378},
		Control {
			enabled,
			1005
		},
		/* [17] */
		{99, 9, 241, 381},
		Control {
			enabled,
			1006
		},
		/* [18] */
		{220, 13, 236, 153},
		Control {
			enabled,
			1104
		},
		/* [19] */
		{121, 13, 137, 153},
		Control {
			enabled,
			1100
		},
		/* [20] */
		{165, 13, 181, 153},
		Control {
			enabled,
			1101
		},
		/* [21] */
		{184, 13, 200, 153},
		Control {
			enabled,
			1102
		},
		/* [22] */
		{202, 13, 218, 153},
		Control {
			enabled,
			1103
		},
		/* [23] */
		{159, 15, 162, 373},
		Control {
			enabled,
			1105
		},
		/* [24] */
		{142, 15, 156, 53},
		StaticText {
			disabled,
			"Hints"
		},
		/* [25] */
		{142, 112, 154, 141},
		StaticText {
			disabled,
			"Icon:"
		},
		/* [26] */
		{142, 148, 154, 179},
		StaticText {
			disabled,
			"32-bit"
		},
		/* [27] */
		{142, 180, 154, 211},
		StaticText {
			disabled,
			"8-bit"
		},
		/* [28] */
		{142, 212, 154, 243},
		StaticText {
			disabled,
			"4-bit"
		},
		/* [29] */
		{142, 244, 154, 275},
		StaticText {
			disabled,
			"1-bit"
		},
		/* [30] */
		{142, 281, 154, 316},
		StaticText {
			disabled,
			"Mask:"
		},
		/* [31] */
		{142, 315, 154, 346},
		StaticText {
			disabled,
			"8-bit"
		},
		/* [32] */
		{142, 347, 154, 378},
		StaticText {
			disabled,
			"1-bit"
		},
		/* [33] */
		{165, 154, 181, 171},
		CheckBox {
			enabled,
			""
		},
		/* [34] */
		{184, 154, 200, 171},
		CheckBox {
			enabled,
			""
		},
		/* [35] */
		{202, 154, 218, 171},
		CheckBox {
			enabled,
			""
		},
		/* [36] */
		{165, 182, 181, 199},
		CheckBox {
			enabled,
			""
		},
		/* [37] */
		{184, 182, 200, 199},
		CheckBox {
			enabled,
			""
		},
		/* [38] */
		{202, 182, 218, 199},
		CheckBox {
			enabled,
			""
		},
		/* [39] */
		{220, 182, 236, 199},
		CheckBox {
			enabled,
			""
		},
		/* [40] */
		{165, 214, 181, 231},
		CheckBox {
			enabled,
			""
		},
		/* [41] */
		{184, 214, 200, 231},
		CheckBox {
			enabled,
			""
		},
		/* [42] */
		{202, 214, 218, 231},
		CheckBox {
			enabled,
			""
		},
		/* [43] */
		{220, 214, 236, 231},
		CheckBox {
			enabled,
			""
		},
		/* [44] */
		{165, 246, 181, 263},
		CheckBox {
			disabled,
			""
		},
		/* [45] */
		{184, 246, 200, 263},
		CheckBox {
			disabled,
			""
		},
		/* [46] */
		{202, 246, 218, 263},
		CheckBox {
			disabled,
			""
		},
		/* [47] */
		{220, 246, 236, 263},
		CheckBox {
			disabled,
			""
		},
		/* [48] */
		{165, 318, 181, 335},
		CheckBox {
			enabled,
			""
		},
		/* [49] */
		{184, 318, 200, 335},
		CheckBox {
			enabled,
			""
		},
		/* [50] */
		{202, 318, 218, 335},
		CheckBox {
			enabled,
			""
		},
		/* [51] */
		{165, 350, 181, 367},
		CheckBox {
			disabled,
			""
		},
		/* [52] */
		{184, 350, 200, 367},
		CheckBox {
			disabled,
			""
		},
		/* [53] */
		{202, 350, 218, 367},
		CheckBox {
			disabled,
			""
		},
		/* [54] */
		{220, 350, 236, 367},
		CheckBox {
			disabled,
			""
		}
	}
};

resource 'DITL' (1002, purgeable) {
	{	/* array DITLarray: 2 elements */
		/* [1] */
		{2, 2, 34, 346},
		StaticText {
			disabled,
			"Press all of the keys you intend to use "
			"as a shortcut. Let go of all of them to "
			"set it."
		},
		/* [2] */
		{38, 2, 55, 346},
		StaticText {
			disabled,
			""
		}
	}
};

resource 'DITL' (1003, purgeable) {
	{	/* array DITLarray: 5 elements */
		/* [1] */
		{116, 270, 136, 338},
		Button {
			enabled,
			"Add"
		},
		/* [2] */
		{116, 190, 136, 254},
		Button {
			enabled,
			"Cancel"
		},
		/* [3] */
		{4, 4, 52, 344},
		StaticText {
			disabled,
			"Select the new member you wish to add, a"
			"nd optionally the current member you wis"
			"h it to be based upon."
		},
		/* [4] */
		{56, 4, 76, 338},
		Control {
			enabled,
			1120
		},
		/* [5] */
		{82, 4, 102, 338},
		Control {
			enabled,
			1121
		}
	}
};

resource 'DITL' (1010, "Adjust", purgeable) {
	{	/* array DITLarray: 4 elements */
		/* [1] */
		{153, 285, 173, 353},
		Button {
			enabled,
			"OK"
		},
		/* [2] */
		{153, 205, 173, 269},
		Button {
			enabled,
			"Cancel"
		},
		/* [3] */
		{153, 5, 173, 165},
		CheckBox {
			enabled,
			"Real-time preview"
		},
		/* [4] */
		{8, 0, 141, 367},
		Control {
			enabled,
			1010
		}
	}
};

resource 'DITL' (1011, "Adjust: Hue & Saturation Pane", purgeable) {
	{	/* array DITLarray: 7 elements */
		/* [1] */
		{47, 83, 78, 303},
		Control {
			enabled,
			1011
		},
		/* [2] */
		{85, 83, 116, 303},
		Control {
			enabled,
			1012
		},
		/* [3] */
		{50, 316, 66, 352},
		EditText {
			enabled,
			"0"
		},
		/* [4] */
		{87, 316, 103, 352},
		EditText {
			enabled,
			"0"
		},
		/* [5] */
		{116, 6, 132, 166},
		CheckBox {
			enabled,
			"Colorize"
		},
		/* [6] */
		{47, 5, 68, 80},
		StaticText {
			disabled,
			"Hue:"
		},
		/* [7] */
		{85, 5, 106, 80},
		StaticText {
			disabled,
			"Saturation:"
		}
	}
};

resource 'DITL' (1012, "Adjust: Brightness & Saturation Pane", purgeable) {
	{	/* array DITLarray: 6 elements */
		/* [1] */
		{47, 83, 78, 303},
		Control {
			enabled,
			1014
		},
		/* [2] */
		{85, 83, 116, 303},
		Control {
			enabled,
			1015
		},
		/* [3] */
		{50, 316, 66, 352},
		EditText {
			enabled,
			"0"
		},
		/* [4] */
		{87, 316, 103, 352},
		EditText {
			enabled,
			"0"
		},
		/* [5] */
		{47, 5, 67, 84},
		StaticText {
			disabled,
			"Brightness:"
		},
		/* [6] */
		{85, 5, 105, 84},
		StaticText {
			disabled,
			"Contrast:"
		}
	}
};

resource 'DITL' (1410, "Text Tool", purgeable) {
	{	/* array DITLarray: 9 elements */
		/* [1] */
		{204, 123, 224, 191},
		Button {
			enabled,
			"OK"
		},
		/* [2] */
		{204, 43, 224, 107},
		Button {
			enabled,
			"Cancel"
		},
		/* [3] */
		{100, 11, 116, 51},
		StaticText {
			disabled,
			"Text:"
		},
		/* [4] */
		{119, 16, 187, 192},
		EditText {
			enabled,
			"Icon Mangler"
		},
		/* [5] */
		{8, 8, 28, 188},
		Control {
			enabled,
			1410
		},
		/* [6] */
		{38, 11, 54, 56},
		StaticText {
			disabled,
			"Size:"
		},
		/* [7] */
		{39, 124, 55, 158},
		EditText {
			enabled,
			"12"
		},
		/* [8] */
		{37, 166, 57, 188},
		Control {
			enabled,
			1411
		},
		/* [9] */
		{66, 8, 86, 190},
		Control {
			enabled,
			1412
		}
	}
};

resource 'DITL' (2000, purgeable) {
	{	/* array DITLarray: 1 elements */
		/* [1] */
		{6, 8, 26, 258},
		Control {
			enabled,
			2000
		}
	}
};

resource 'DITL' (3000, "Basic Alert") {
	{	/* array DITLarray: 2 elements */
		/* [1] */
		{67, 311, 87, 369},
		Button {
			enabled,
			"OK"
		},
		/* [2] */
		{8, 58, 60, 369},
		StaticText {
			disabled,
			"^0 ^1."
		}
	}
};

resource 'DITL' (3001, "Select Object", purgeable) {
	{	/* array DITLarray: 12 elements */
		/* [1] */
		{155, 283, 175, 363},
		Button {
			enabled,
			"Open"
		},
		/* [2] */
		{124, 283, 144, 363},
		Button {
			enabled,
			"Cancel"
		},
		/* [3] */
		{0, 0, 0, 0},
		HelpItem {
			disabled,
			HMScanhdlg {
				-6043
			}
		},
		/* [4] */
		{30, 263, 46, 365},
		UserItem {
			enabled
		},
		/* [5] */
		{51, 283, 71, 363},
		Button {
			enabled,
			"Eject"
		},
		/* [6] */
		{79, 283, 99, 363},
		Button {
			enabled,
			"Desktop"
		},
		/* [7] */
		{51, 11, 181, 261},
		UserItem {
			enabled
		},
		/* [8] */
		{28, 11, 47, 261},
		UserItem {
			enabled
		},
		/* [9] */
		{111, 282, 112, 364},
		Picture {
			disabled,
			11
		},
		/* [10] */
		{185, 283, 205, 363},
		Button {
			enabled,
			"Select"
		},
		/* [11] */
		{6, 9, 23, 392},
		StaticText {
			disabled,
			"Select the file or folder whose icon you"
			" want to replace."
		},
		/* [12] */
		{185, 11, 205, 261},
		Control {
			enabled,
			2001
		}
	}
};

resource 'DITL' (3002, purgeable) {
	{	/* array DITLarray: 13 elements */
		/* [1] */
		{161, 277, 181, 357},
		Button {
			enabled,
			"Save"
		},
		/* [2] */
		{130, 277, 150, 357},
		Button {
			enabled,
			"Cancel"
		},
		/* [3] */
		{0, 0, 0, 0},
		HelpItem {
			disabled,
			HMScanhdlg {
				-6043
			}
		},
		/* [4] */
		{8, 267, 24, 363},
		UserItem {
			enabled
		},
		/* [5] */
		{32, 277, 52, 357},
		Button {
			enabled,
			"Eject"
		},
		/* [6] */
		{60, 277, 80, 357},
		Button {
			enabled,
			"Desktop"
		},
		/* [7] */
		{29, 12, 127, 261},
		UserItem {
			enabled
		},
		/* [8] */
		{6, 12, 25, 261},
		UserItem {
			enabled
		},
		/* [9] */
		{119, 275, 120, 359},
		Picture {
			disabled,
			11
		},
		/* [10] */
		{157, 15, 173, 259},
		EditText {
			enabled,
			""
		},
		/* [11] */
		{136, 15, 152, 227},
		StaticText {
			disabled,
			"Save icon as:"
		},
		/* [12] */
		{88, 277, 108, 357},
		UserItem {
			disabled
		},
		/* [13] */
		{185, 11, 205, 261},
		Control {
			enabled,
			2001
		}
	}
};

resource 'DITL' (4000, purgeable) {
	{	/* array DITLarray: 8 elements */
		/* [1] */
		{58, 288, 78, 356},
		Button {
			enabled,
			"OK"
		},
		/* [2] */
		{58, 208, 78, 272},
		Button {
			enabled,
			"Cancel"
		},
		/* [3] */
		{58, 70, 78, 150},
		Button {
			enabled,
			"Button"
		},
		/* [4] */
		{12, 20, 44, 52},
		Icon {
			disabled,
			2
		},
		/* [5] */
		{12, 70, 28, 356},
		StaticText {
			disabled,
			"Static text"
		},
		/* [6] */
		{32, 70, 46, 356},
		StaticText {
			disabled,
			"Static text"
		},
		/* [7] */
		{12, 20, 44, 52},
		Icon {
			disabled,
			0
		},
		/* [8] */
		{12, 20, 44, 52},
		Icon {
			disabled,
			1
		}
	}
};

resource 'DITL' (9999) {
	{	/* array DITLarray: 4 elements */
		/* [1] */
		{0, 0, 194, 194},
		Control {
			enabled,
			200
		},
		/* [2] */
		{193, 4294967295, 209, 63},
		Control {
			enabled,
			201
		},
		/* [3] */
		{193, 62, 209, 194},
		Control {
			enabled,
			203
		},
		/* [4] */
		{4294967295, 193, 194, 209},
		Control {
			enabled,
			202
		}
	}
};

data 'DLGX' (0) {
	$"0654 6563 686E 6F00 0000 0000 0000 0000"            /* .Techno......... */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"000C 0000 0000 0000 0004 0004 0000 0000"            /* ................ */
	$"0000"                                               /* .. */
};

data 'DLGX' (128) {
	$"0743 6869 6361 676F 0000 0000 0000 0000"            /* .Chicago........ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"000C 0000 0000 0000 0004 0004 0000 0000"            /* ................ */
	$"0006 000A 0000 0000 0000 0000 0000 000A"            /* ................ */
	$"0000 0000 0000 0000 0000 000A 0000 0000"            /* ................ */
	$"0000 0000 0000 000A 0000 0000 0000 0000"            /* ................ */
	$"0000 000A 0000 0000 0000 0000 0000 000A"            /* ................ */
	$"0000 0000 0000 0000 0000"                           /* .......... */
};

data 'DLGX' (129) {
	$"0654 6563 686E 6F00 0000 0000 0000 0000"            /* .Techno......... */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"000C 0000 0000 0000 0004 0004 0000 0000"            /* ................ */
	$"0009 0000 0000 0000 0000 0000 0000 0001"            /* ................ */
	$"0000 0000 0000 0000 0000 0002 0000 0000"            /* ................ */
	$"0000 0000 0000 0007 0000 0000 0000 0000"            /* ................ */
	$"0000 0007 0000 0000 0000 0000 0000 0007"            /* ................ */
	$"0000 0000 0000 0000 0000 0006 0000 0000"            /* ................ */
	$"0000 0000 0000 0006 0000 0000 0000 0000"            /* ................ */
	$"0000 0006 0000 0000 0000 0000 0000"                 /* .............. */
};

data 'DLGX' (250) {
	$"0647 656E 6576 6100 0000 0000 0000 0000"            /* .Geneva......... */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0009 0000 0000 0000 0004 0004 0000 0000"            /* ................ */
	$"000A 0005 0000 0000 0000 0000 0000 0005"            /* ................ */
	$"0000 0000 0000 0000 0000 0005 0000 0000"            /* ................ */
	$"0000 0000 0000 0005 0000 0000 0000 0000"            /* ................ */
	$"0000 0005 0000 0000 0000 0000 0000 0005"            /* ................ */
	$"0000 0000 0000 0000 0000 0005 0000 0000"            /* ................ */
	$"0000 0000 0000 0005 0000 0000 0000 0000"            /* ................ */
	$"0000 0005 0000 0000 0000 0000 0000 0005"            /* ................ */
	$"0000 0000 0000 0000 0000"                           /* .......... */
};

data 'DLGX' (260) {
	$"0647 656E 6576 6100 0000 0000 0000 0000"            /* .Geneva......... */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0009 0000 0000 0000 0004 0004 0000 0000"            /* ................ */
	$"000A 0005 0000 0000 0000 0000 0000 0005"            /* ................ */
	$"0000 0000 0000 0000 0000 0005 0000 0000"            /* ................ */
	$"0000 0000 0000 0005 0000 0000 0000 0000"            /* ................ */
	$"0000 0005 0000 0000 0000 0000 0000 0005"            /* ................ */
	$"0000 0000 0000 0000 0000 0005 0000 0000"            /* ................ */
	$"0000 0000 0000 0005 0000 0000 0000 0000"            /* ................ */
	$"0000 0005 0000 0000 0000 0000 0000 0005"            /* ................ */
	$"0000 0000 0000 0000 0000"                           /* .......... */
};

data 'DLGX' (270) {
	$"0647 656E 6576 6100 0000 0000 0000 0000"            /* .Geneva......... */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0009 0000 0000 0000 0004 0004 0000 0000"            /* ................ */
	$"000A 0005 0000 0000 0000 0000 0000 0005"            /* ................ */
	$"0000 0000 0000 0000 0000 0005 0000 0000"            /* ................ */
	$"0000 0000 0000 0005 0000 0000 0000 0000"            /* ................ */
	$"0000 0005 0000 0000 0000 0000 0000 0005"            /* ................ */
	$"0000 0000 0000 0000 0000 0005 0000 0000"            /* ................ */
	$"0000 0000 0000 0005 0000 0000 0000 0000"            /* ................ */
	$"0000 0005 0000 0000 0000 0000 0000 0005"            /* ................ */
	$"0000 0000 0000 0000 0000"                           /* .......... */
};

data 'DLGX' (280) {
	$"0647 656E 6576 6100 0000 0000 0000 0000"            /* .Geneva......... */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0009 0000 0000 0000 0004 0004 0000 0000"            /* ................ */
	$"0001 0005 0000 0000 0000 0000 0000"                 /* .............. */
};

data 'DLGX' (290) {
	$"0647 656E 6576 6100 0000 0000 0000 0000"            /* .Geneva......... */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0009 0000 0000 0000 0004 0004 0000 0000"            /* ................ */
	$"0001 0005 0000 0000 0000 0000 0000"                 /* .............. */
};

data 'DLGX' (300) {
	$"0654 6563 686E 6F00 0000 0000 0000 0000"            /* .Techno......... */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"000C 0000 0000 0000 0004 0004 0000 0000"            /* ................ */
	$"0002 0005 0000 0000 0000 0000 0000 0006"            /* ................ */
	$"0000 0000 0000 0000 0000"                           /* .......... */
};

data 'DLGX' (301) {
	$"0654 6563 686E 6F00 0000 0000 0000 0000"            /* .Techno......... */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"000C 0000 0000 0000 0004 0004 0000 0000"            /* ................ */
	$"0004 0005 0000 0000 0000 0000 0000 0005"            /* ................ */
	$"0000 0000 0000 0000 0000 0005 0000 0000"            /* ................ */
	$"0000 0000 0000 0005 0000 0000 0000 0000"            /* ................ */
	$"0000"                                               /* .. */
};

data 'DLGX' (1000) {
	$"0647 656E 6576 6100 0000 0000 0000 0000"            /* .Geneva......... */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0009 0000 0000 0000 0004 0004 0000 0000"            /* ................ */
	$"0045 0000 0000 0000 0000 0000 0000 0001"            /* .E.............. */
	$"0000 0000 0000 0000 0000 0003 0000 0000"            /* ................ */
	$"0000 0000 0000 0007 0000 0000 0000 0000"            /* ................ */
	$"0000 0005 0000 0000 0000 0000 0000 0004"            /* ................ */
	$"0000 0001 0000 0000 0000 0004 0000 0001"            /* ................ */
	$"0000 0000 0000 0004 0000 0001 0000 0000"            /* ................ */
	$"0000 0003 0000 0000 0000 0000 0000 0003"            /* ................ */
	$"0000 0000 0000 0000 0000 0005 0000 0000"            /* ................ */
	$"0000 0000 0000 0006 0000 0000 0000 0000"            /* ................ */
	$"0000 0005 0000 0000 0000 0000 0000 0005"            /* ................ */
	$"0000 0000 0000 0000 0000 0005 0000 0000"            /* ................ */
	$"0000 0000 0000 0005 0000 0000 0000 0000"            /* ................ */
	$"0000 0005 0000 0000 0000 0000 0000 0005"            /* ................ */
	$"0000 0000 0000 0000 0000 0005 0000 0000"            /* ................ */
	$"0000 0000 0000 0005 0000 0000 0000 0000"            /* ................ */
	$"0000 0005 0000 0000 0000 0000 0000 0005"            /* ................ */
	$"0000 0000 0000 0000 0000 0005 0000 0000"            /* ................ */
	$"0000 0000 0000 0006 0000 0000 0000 0000"            /* ................ */
	$"0000 0006 0000 0000 0000 0000 0000 0006"            /* ................ */
	$"0000 0000 0000 0000 0000 0006 0000 0000"            /* ................ */
	$"0000 0000 0000 0006 0000 0000 0000 0000"            /* ................ */
	$"0000 0006 0000 0000 0000 0000 0000 0006"            /* ................ */
	$"0000 0000 0000 0000 0000 0006 0000 0000"            /* ................ */
	$"0000 0000 0000 0006 0000 0000 0000 0000"            /* ................ */
	$"0000 0003 0000 0000 0000 0000 0000 0003"            /* ................ */
	$"0000 0000 0000 0000 0000 0003 0000 0000"            /* ................ */
	$"0000 0000 0000 0003 0000 0000 0000 0000"            /* ................ */
	$"0000 0003 0000 0000 0000 0000 0000 0003"            /* ................ */
	$"0000 0000 0000 0000 0000 0003 0000 0000"            /* ................ */
	$"0000 0000 0000 0003 0000 0000 0000 0000"            /* ................ */
	$"0000 0003 0000 0000 0000 0000 0000 0003"            /* ................ */
	$"0000 0000 0000 0000 0000 0003 0000 0000"            /* ................ */
	$"0000 0000 0000 0003 0000 0000 0000 0000"            /* ................ */
	$"0000 0003 0000 0000 0000 0000 0000 0003"            /* ................ */
	$"0000 0000 0000 0000 0000 0003 0000 0000"            /* ................ */
	$"0000 0000 0000 0003 0000 0000 0000 0000"            /* ................ */
	$"0000 0003 0000 0000 0000 0000 0000 0003"            /* ................ */
	$"0000 0000 0000 0000 0000 0003 0000 0000"            /* ................ */
	$"0000 0000 0000 0003 0000 0000 0000 0000"            /* ................ */
	$"0000 0003 0000 0000 0000 0000 0000 0003"            /* ................ */
	$"0000 0000 0000 0000 0000 0004 0000 0001"            /* ................ */
	$"0000 0000 0000 0004 0000 0001 0000 0000"            /* ................ */
	$"0000 0004 0000 0001 0000 0000 0000 0002"            /* ................ */
	$"0000 0000 0000 0000 0000 0005 0000 0000"            /* ................ */
	$"0000 0000 0000 0003 0000 0000 0000 0000"            /* ................ */
	$"0000 0005 0000 0000 0000 0000 0000 0005"            /* ................ */
	$"0000 0000 0000 0000 0000 0006 0000 0000"            /* ................ */
	$"0000 0000 0000 0006 0000 0000 0000 0000"            /* ................ */
	$"0000 0004 0000 0001 0000 0000 0000 0004"            /* ................ */
	$"0000 0001 0000 0000 0000 0005 0000 0000"            /* ................ */
	$"0000 0000 0000 0007 0000 0000 0000 0000"            /* ................ */
	$"0000 0006 0000 0000 0000 0000 0000"                 /* .............. */
};

data 'DLGX' (1001) {
	$"0647 656E 6576 6100 0000 0000 0000 0000"            /* .Geneva......... */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0009 0000 0000 0000 0004 0004 0000 0000"            /* ................ */
	$"0036 0000 0000 0000 0000 0000 0000 0001"            /* .6.............. */
	$"0000 0000 0000 0000 0000 0006 0000 0000"            /* ................ */
	$"0000 0000 0000 0007 0000 0000 0000 0000"            /* ................ */
	$"0000 0006 0000 0000 0000 0000 0000 0007"            /* ................ */
	$"0000 0000 0000 0000 0000 0005 8000 0000"            /* ............Ä... */
	$"0000 0000 0000 0006 0000 0000 0000 0000"            /* ................ */
	$"0000 0005 0000 0000 0000 0000 0000 0005"            /* ................ */
	$"0000 0000 0000 0000 0000 0005 0000 0000"            /* ................ */
	$"0000 0000 0000 0005 0000 0000 0000 0000"            /* ................ */
	$"0000 0005 0000 0000 0000 0000 0000 0006"            /* ................ */
	$"0000 0000 0000 0000 0000 0005 0000 0000"            /* ................ */
	$"0000 0000 0000 0005 0000 0000 0000 0000"            /* ................ */
	$"0000 0005 8000 0000 0000 0000 0000 0005"            /* ....Ä........... */
	$"0000 0000 0000 0000 0000 0005 0000 0000"            /* ................ */
	$"0000 0000 0000 0005 0000 0000 0000 0000"            /* ................ */
	$"0000 0005 0000 0000 0000 0000 0000 0005"            /* ................ */
	$"0000 0000 0000 0000 0000 0005 0000 0000"            /* ................ */
	$"0000 0000 0000 0006 0000 0000 0000 0000"            /* ................ */
	$"0000 0006 0000 0000 0000 0000 0000 0006"            /* ................ */
	$"0000 0000 0000 0000 0000 0006 0000 0000"            /* ................ */
	$"0000 0000 0000 0006 0000 0000 0000 0000"            /* ................ */
	$"0000 0006 0000 0000 0000 0000 0000 0006"            /* ................ */
	$"0000 0000 0000 0000 0000 0006 0000 0000"            /* ................ */
	$"0000 0000 0000 0006 0000 0000 0000 0000"            /* ................ */
	$"0000 0003 0000 0000 0000 0000 0000 0003"            /* ................ */
	$"0000 0000 0000 0000 0000 0003 0000 0000"            /* ................ */
	$"0000 0000 0000 0003 0000 0000 0000 0000"            /* ................ */
	$"0000 0003 0000 0000 0000 0000 0000 0003"            /* ................ */
	$"0000 0000 0000 0000 0000 0003 0000 0000"            /* ................ */
	$"0000 0000 0000 0003 0000 0000 0000 0000"            /* ................ */
	$"0000 0003 0000 0000 0000 0000 0000 0003"            /* ................ */
	$"0000 0000 0000 0000 0000 0003 0000 0000"            /* ................ */
	$"0000 0000 0000 0003 0000 0000 0000 0000"            /* ................ */
	$"0000 0003 0000 0000 0000 0000 0000 0003"            /* ................ */
	$"0000 0000 0000 0000 0000 0003 0000 0000"            /* ................ */
	$"0000 0000 0000 0003 0000 0000 0000 0000"            /* ................ */
	$"0000 0003 0000 0000 0000 0000 0000 0003"            /* ................ */
	$"0000 0000 0000 0000 0000 0003 0000 0000"            /* ................ */
	$"0000 0000 0000 0003 0000 0000 0000 0000"            /* ................ */
	$"0000 0003 0000 0000 0000 0000 0000 0003"            /* ................ */
	$"0000 0000 0000 0000 0000"                           /* .......... */
};

data 'DLGX' (1002) {
	$"0654 6563 686E 6F00 0000 0000 0000 0000"            /* .Techno......... */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"000C 0000 0000 0000 0004 0004 0000 0000"            /* ................ */
	$"0002 0006 0000 0000 0000 0000 0000 0006"            /* ................ */
	$"0000 0000 0000 0000 0000"                           /* .......... */
};

data 'DLGX' (1003) {
	$"0654 6563 686E 6F00 0000 0000 0000 0000"            /* .Techno......... */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"000C 0000 0000 0000 0004 0004 0000 0000"            /* ................ */
	$"0005 0000 0000 0000 0000 0000 0000 0001"            /* ................ */
	$"0000 0000 0000 0000 0000 0006 0000 0000"            /* ................ */
	$"0000 0000 0000 0005 0000 0000 0000 0000"            /* ................ */
	$"0000 0005 0000 0000 0000 0000 0000"                 /* .............. */
};

data 'DLGX' (1010) {
	$"0743 6869 6361 676F 0000 0000 0000 0000"            /* .Chicago........ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"000C 0000 0000 0000 0004 0004 0000 0000"            /* ................ */
	$"0004 0000 0000 0000 0000 0000 0000 0001"            /* ................ */
	$"0000 0000 0000 0000 0000 0003 0000 0000"            /* ................ */
	$"0000 0000 0000 0005 0000 0000 0000 0000"            /* ................ */
	$"0000"                                               /* .. */
};

data 'DLGX' (1011) {
	$"0743 6869 6361 676F 0000 0000 0000 0000"            /* .Chicago........ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"000C 0000 0000 0000 0004 0004 0000 0000"            /* ................ */
	$"0007 0005 0000 0000 0000 0000 0000 0005"            /* ................ */
	$"0000 0000 0000 0000 0000 0007 0000 0000"            /* ................ */
	$"0000 0000 0000 0007 0000 0000 0000 0000"            /* ................ */
	$"0000 0003 0000 0000 0000 0000 0000 0006"            /* ................ */
	$"0000 0000 0000 0000 0000 0006 0000 0000"            /* ................ */
	$"0000 0000 0000"                                     /* ...... */
};

data 'DLGX' (1012) {
	$"0743 6869 6361 676F 0000 0000 0000 0000"            /* .Chicago........ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"000C 0000 0000 0000 0004 0004 0000 0000"            /* ................ */
	$"0006 0005 0000 0000 0000 0000 0000 0005"            /* ................ */
	$"0000 0000 0000 0000 0000 0007 0000 0000"            /* ................ */
	$"0000 0000 0000 0007 0000 0000 0000 0000"            /* ................ */
	$"0000 0006 0000 0000 0000 0000 0000 0006"            /* ................ */
	$"0000 0000 0000 0000 0000"                           /* .......... */
};

data 'DLGX' (1410) {
	$"0654 6563 686E 6F00 0000 0000 0000 0000"            /* .Techno......... */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"000C 0000 0000 0000 0004 0004 0000 0000"            /* ................ */
	$"0009 0000 0000 0000 0000 0000 0000 0001"            /* ................ */
	$"0000 0000 0000 0000 0000 0006 0000 0000"            /* ................ */
	$"0000 0000 0000 0007 0000 0000 0000 0000"            /* ................ */
	$"0000 0005 0000 0000 0000 0000 0000 0006"            /* ................ */
	$"0000 0000 0000 0000 0000 0007 0000 0000"            /* ................ */
	$"0000 0000 0000 0005 0000 0000 0000 0000"            /* ................ */
	$"0000 0005 0000 0000 0000 0000 0000"                 /* .............. */
};

data 'DLGX' (2000) {
	$"0654 6563 686E 6F00 0000 0000 0000 0000"            /* .Techno......... */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"000C 0000 0000 0000 0004 0004 0000 0000"            /* ................ */
	$"0001 0005 0000 0000 0000 0000 0000"                 /* .............. */
};

data 'DLGX' (3001) {
	$"0654 6563 686E 6F00 0000 0000 0000 0000"            /* .Techno......... */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"000C 0000 0000 0000 0004 0004 0000 0000"            /* ................ */
	$"000C 0002 0000 0000 0000 0000 0000 0001"            /* ................ */
	$"0000 0000 0000 0000 0000 000A 0000 0000"            /* ................ */
	$"0000 0000 0000 0002 0000 0000 0000 0000"            /* ................ */
	$"0000 0002 0000 0000 0000 0000 0000 000A"            /* ................ */
	$"0000 0000 0000 0000 0000 000A 0000 0000"            /* ................ */
	$"0000 0000 0000 0009 0000 0000 0000 0000"            /* ................ */
	$"0000 0002 0000 0000 0000 0000 0000 0006"            /* ................ */
	$"0000 0000 0000 0000 0000 0005 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000"                                               /* .. */
};

data 'DLGX' (3002) {
	$"0843 6861 7263 6F61 6C00 0000 0000 0000"            /* .Charcoal....... */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"000C 0000 0000 0000 0004 0004 0000 0000"            /* ................ */
	$"000D 0002 0000 0000 0000 0000 0000 0001"            /* ................ */
	$"0000 0000 0000 0000 0000 000A 0000 0000"            /* ................ */
	$"0000 0000 0000 0002 0000 0000 0000 0000"            /* ................ */
	$"0000 0002 0000 0000 0000 0000 0000 000A"            /* ................ */
	$"0000 0000 0000 0000 0000 000A 0000 0000"            /* ................ */
	$"0000 0000 0000 0009 0000 0000 0000 0000"            /* ................ */
	$"0000 0007 0000 0000 0000 0000 0000 0006"            /* ................ */
	$"0000 0000 0000 0000 0000 000A 0000 0000"            /* ................ */
	$"0000 0000 0000 0005 0000 0000 0000 0000"            /* ................ */
	$"0000 D650 EB00 0012 0000 0050 0020"                 /* ..÷PÎ......P.  */
};

data 'DLGX' (4000) {
	$"0654 6563 686E 6F00 0000 0000 0000 0000"            /* .Techno......... */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"000C 0000 0000 0000 0004 0004 0000 0000"            /* ................ */
	$"0008 0000 0000 0000 0000 0000 0000 0001"            /* ................ */
	$"0000 0000 0000 0000 0000 0002 0000 0000"            /* ................ */
	$"0000 0000 0000 0008 0000 0000 0000 0000"            /* ................ */
	$"0000 0006 0000 0000 0000 0000 0000 0006"            /* ................ */
	$"0000 0000 0000 0000 0000 0008 0000 0000"            /* ................ */
	$"0000 0000 0000 0008 0000 0000 0000 0000"            /* ................ */
	$"0000"                                               /* .. */
};

data 'DLGX' (9999) {
	$"0654 6563 686E 6F00 0000 0000 0000 0000"            /* .Techno......... */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"000C 0000 0000 0000 0004 0004 0000 0000"            /* ................ */
	$"0004 0005 0000 0000 0000 0000 0000 0005"            /* ................ */
	$"8000 0000 0000 0000 0000 0005 0000 0000"            /* Ä............... */
	$"0000 0000 0000 0005 0000 0000 0000 0000"            /* ................ */
	$"0000"                                               /* .. */
};

resource 'DLOG' (128, "About") {
	{100, 100, 400, 556},
	plainDBox,
	invisible,
	noGoAway,
	0x0,
	128,
	"About",
	alertPositionMainScreen
};

resource 'DLOG' (129, "Register") {
	{178, 612, 313, 962},
	1043,
	invisible,
	goAway,
	0x0,
	129,
	"Register…",
	alertPositionMainScreen
};

resource 'DLOG' (250, "Colors Palette", purgeable) {
	{432, 158, 592, 478},
	1057,
	visible,
	goAway,
	0x0,
	250,
	"Colors",
	noAutoCenter
};

resource 'DLOG' (260, "Colors Palette: RGB Picker", purgeable) {
	{299, 526, 459, 846},
	dBoxProc,
	visible,
	goAway,
	0x0,
	260,
	"",
	noAutoCenter
};

resource 'DLOG' (270, "Colors Palette: HSV Picker", purgeable) {
	{299, 526, 459, 846},
	dBoxProc,
	visible,
	goAway,
	0x0,
	270,
	"",
	noAutoCenter
};

resource 'DLOG' (280, "Colors Palette: System Picker", purgeable) {
	{299, 526, 459, 846},
	dBoxProc,
	visible,
	goAway,
	0x0,
	280,
	"",
	noAutoCenter
};

resource 'DLOG' (290, "Colors Palette: Favorites Picker", purgeable) {
	{299, 526, 459, 846},
	dBoxProc,
	visible,
	goAway,
	0x0,
	290,
	"",
	noAutoCenter
};

resource 'DLOG' (300, "Icon Browser: Progress", purgeable) {
	{260, 315, 312, 664},
	1043,
	invisible,
	noGoAway,
	0x0,
	300,
	"Loading Icons: <name>",
	centerMainScreen
};

resource 'DLOG' (301, "Icon Browser Mockup", purgeable) {
	{230, 146, 588, 480},
	documentProc,
	visible,
	goAway,
	0x0,
	301,
	"",
	noAutoCenter
};

resource 'DLOG' (1000, "Preferences", purgeable) {
	{285, 148, 577, 545},
	1043,
	invisible,
	goAway,
	0x0,
	1000,
	"Preferences",
	centerMainScreen
};

resource 'DLOG' (1001, "Icon Info", purgeable) {
	{228, 594, 575, 978},
	1043,
	invisible,
	goAway,
	0x0,
	1001,
	"Icon Info…",
	centerMainScreen
};

resource 'DLOG' (1002, "Set External Editor Shortcut", purgeable) {
	{259, 337, 318, 687},
	dBoxProc,
	invisible,
	noGoAway,
	0x0,
	1002,
	"",
	centerParentWindow
};

resource 'DLOG' (1003, "Add Member", purgeable) {
	{475, 625, 623, 975},
	1043,
	invisible,
	noGoAway,
	0x0,
	1003,
	"Add Member...",
	noAutoCenter
};

resource 'DLOG' (1010, "Adjust", purgeable) {
	{259, 337, 443, 704},
	1043,
	invisible,
	noGoAway,
	0x0,
	1010,
	"Adjust…",
	centerParentWindowScreen
};

resource 'DLOG' (1011, purgeable) {
	{341, 144, 561, 519},
	1024,
	visible,
	goAway,
	0x0,
	1011,
	"DITL 1011 “Adjust: Pane 1” from icnsEdit"
	"orClass.rsrc",
	noAutoCenter
};

resource 'DLOG' (1012, purgeable) {
	{337, 600, 549, 1015},
	1024,
	visible,
	goAway,
	0x0,
	1012,
	"",
	noAutoCenter
};

resource 'DLOG' (1410, "Text Tool", purgeable) {
	{389, 44, 622, 250},
	1043,
	invisible,
	goAway,
	0x0,
	1410,
	"Text Tool",
	centerParentWindow
};

resource 'DLOG' (2000, "Nav Custom Items", purgeable) {
	{253, 278, 283, 547},
	1024,
	visible,
	goAway,
	0x0,
	2000,
	"DITL 2000 from iconmangler.µ.rsrc",
	noAutoCenter
};

resource 'DLOG' (3001, "Open File", purgeable) {
	{100, 100, 315, 472},
	dBoxProc,
	invisible,
	noGoAway,
	0x0,
	3001,
	"",
	noAutoCenter
};

resource 'DLOG' (3002, "Save File", purgeable) {
	{185, 272, 401, 639},
	dBoxProc,
	invisible,
	noGoAway,
	0x746D4449,
	3002,
	"",
	noAutoCenter
};

resource 'DLOG' (4000, "MAlert: Movable", purgeable) {
	{566, 19, 656, 387},
	1045,
	invisible,
	goAway,
	0x0,
	4000,
	"",
	noAutoCenter
};

resource 'DLOG' (4001, "MAlert: Non Movable", purgeable) {
	{566, 19, 656, 387},
	1044,
	invisible,
	goAway,
	0x0,
	4000,
	"",
	noAutoCenter
};

resource 'DLOG' (9999, purgeable) {
	{200, 219, 407, 426},
	1025,
	visible,
	goAway,
	0x0,
	9999,
	"Untitled Icon",
	noAutoCenter
};

resource 'FREF' (1) {
	'fold',
	3,
	""
};

resource 'FREF' (2) {
	'disk',
	4,
	""
};

resource 'FREF' (128) {
	'APPL',
	0,
	""
};

resource 'FREF' (129) {
	'****',
	1,
	""
};

resource 'FREF' (130) {
	'Icon',
	2,
	""
};

resource 'FREF' (131) {
	'fold',
	3,
	""
};

resource 'FREF' (132) {
	'disk',
	4,
	""
};

resource 'FREF' (133) {
	'ICO ',
	5,
	""
};

resource 'FREF' (134) {
	'TIFF',
	6,
	""
};

resource 'ICN#' (-16455) {
	{	/* array: 2 elements */
		/* [1] */
		$"0000 0000 0000 0038 0000 C048 0003 C090"
		$"000F 6120 003C 7E40 00F0 34C0 03C0 31C0"
		$"0F00 33A0 3C00 E790 F000 CF8C C01B 9F03"
		$"6066 0003 618E 4003 3031 D407 30CF FEAF"
		$"1816 0357 182C 01FF 0C38 00DF 0C70 0EC0"
		$"0670 7860 067C C060 037F 8030 033F 00FF"
		$"0180 03FF 0180 0FFF 00C0 3FFC 00C0 FFF8"
		$"0063 FFE0 006F FF00 003F FC00 003F C0",
		/* [2] */
		$"0000 0000 0000 0038 0000 C078 0003 C0F0"
		$"000F E1E0 003F FFC0 00FF FF80 03FF FFC0"
		$"0FFF FFE0 3FFF FFF0 FFFF FFF8 FFFF FFFF"
		$"7FFF FFFF 7FFF FFFF 3FFF FFFF 3FFF FFFF"
		$"1FFF FFFF 1FFF FFFF 0FFF FFDF 0FFF FFC0"
		$"07FF FFE0 07FF FFE0 03FF FFF0 03FF FFFF"
		$"01FF FFFF 01FF FFFF 00FF FFFC 00FF FFF8"
		$"007F FFE0 007F FF00 003F FC00 003F C0"
	}
};

resource 'ICN#' (128) {
	{	/* array: 2 elements */
		/* [1] */
		$"0000 0000 0000 0038 0000 C048 0003 C090"
		$"000F 6120 003C 7E40 00F0 34C0 03C0 31C0"
		$"0F00 33A0 3C00 E790 F000 CF8C C01B 9F03"
		$"6066 0003 618E 4003 3031 D407 30CF FEAF"
		$"1816 0357 182C 01FF 0C38 00DF 0C70 0EC0"
		$"0670 7860 067C C060 037F 8030 033F 00FF"
		$"0180 03FF 0180 0FFF 00C0 3FFC 00C0 FFF8"
		$"0063 FFE0 006F FF00 003F FC00 003F C0",
		/* [2] */
		$"0000 0000 0000 0038 0000 C078 0003 C0F0"
		$"000F E1E0 003F FFC0 00FF FF80 03FF FFC0"
		$"0FFF FFE0 3FFF FFF0 FFFF FFF8 FFFF FFFF"
		$"7FFF FFFF 7FFF FFFF 3FFF FFFF 3FFF FFFF"
		$"1FFF FFFF 1FFF FFFF 0FFF FFDF 0FFF FFC0"
		$"07FF FFE0 07FF FFE0 03FF FFF0 03FF FFFF"
		$"01FF FFFF 01FF FFFF 00FF FFFC 00FF FFF8"
		$"007F FFE0 007F FF00 003F FC00 003F C0"
	}
};

resource 'ICN#' (129, "Mac OS Icon") {
	{	/* array: 2 elements */
		/* [1] */
		$"03FF FF80 0200 00C0 0200 00A0 0200 0090"
		$"7FFF F088 6CCD B884 6BB4 B0FE 6BB5 3856"
		$"6BB5 3002 6CCD B806 7FFF F002 02AA A806"
		$"0200 0002 0200 1006 0200 2002 021F FF86"
		$"0210 4082 0212 4886 0212 4882 0210 4086"
		$"0210 7082 0213 2286 0210 FC82 0210 2086"
		$"021F FF82 0200 1006 0200 0802 0200 0006"
		$"0200 0002 0200 0006 02AA AAAA 03FF FFFE",
		/* [2] */
		$"03FF FF80 03FF FFC0 03FF FFE0 03FF FFF0"
		$"7FFF FFF8 7FFF FFFC 7FFF FFFE 7FFF FFFE"
		$"7FFF FFFE 7FFF FFFE 7FFF FFFE 03FF FFFE"
		$"03FF FFFE 03FF FFFE 03FF FFFE 03FF FFFE"
		$"03FF FFFE 03FF FFFE 03FF FFFE 03FF FFFE"
		$"03FF FFFE 03FF FFFE 03FF FFFE 03FF FFFE"
		$"03FF FFFE 03FF FFFE 03FF FFFE 03FF FFFE"
		$"03FF FFFE 03FF FFFE 03FF FFFE 03FF FFFE"
	}
};

resource 'ICN#' (130, "Windows Icon") {
	{	/* array: 2 elements */
		/* [1] */
		$"03FF FF80 0200 00C0 0200 00A0 0200 0090"
		$"7FFF 8088 5D5D 8084 5D4D C0FE 5555 8056"
		$"5559 C002 6B5D 8006 7FFF C002 02AA 8006"
		$"0200 0002 0201 0006 0200 F002 0200 7F06"
		$"0200 27C2 0204 66C6 0223 FCC2 0200 FF86"
		$"0200 DB82 0208 F986 0203 F902 0200 7F06"
		$"0200 0602 0200 0006 0200 0002 0200 0006"
		$"0200 0002 0200 0006 02AA AAAA 03FF FFFE",
		/* [2] */
		$"03FF FF80 03FF FFC0 03FF FFE0 03FF FFF0"
		$"7FFF FFF8 7FFF FFFC 7FFF FFFE 7FFF FFFE"
		$"7FFF FFFE 7FFF FFFE 7FFF FFFE 03FF FFFE"
		$"03FF FFFE 03FF FFFE 03FF FFFE 03FF FFFE"
		$"03FF FFFE 03FF FFFE 03FF FFFE 03FF FFFE"
		$"03FF FFFE 03FF FFFE 03FF FFFE 03FF FFFE"
		$"03FF FFFE 03FF FFFE 03FF FFFE 03FF FFFE"
		$"03FF FFFE 03FF FFFE 03FF FFFE 03FF FFFE"
	}
};

resource 'ICN#' (131, "Mac OS X Icon") {
	{	/* array: 2 elements */
		/* [1] */
		$"03FF FF80 0200 00C0 0200 00A0 0200 0090"
		$"7FFF C088 6288 E084 76BB C0FE 7699 E056"
		$"76BB C002 76BB E006 7FFF C002 02AA A006"
		$"0200 0002 021F FF86 023F FFC2 023F FFC6"
		$"0238 71C2 023E 77C6 023E 67C2 023F 0FC6"
		$"023F 9FC2 023F 9FC6 023F 0FC2 023E 67C6"
		$"023C F3C2 0238 60C6 023F FFC2 023F FFC6"
		$"021F FF82 0200 0006 02AA AAAA 03FF FFFE",
		/* [2] */
		$"03FF FF80 03FF FFC0 03FF FFE0 03FF FFF0"
		$"7FFF FFF8 7FFF FFFC 7FFF FFFE 7FFF FFFE"
		$"7FFF FFFE 7FFF FFFE 7FFF FFFE 03FF FFFE"
		$"03FF FFFE 03FF FFFE 03FF FFFE 03FF FFFE"
		$"03FF FFFE 03FF FFFE 03FF FFFE 03FF FFFE"
		$"03FF FFFE 03FF FFFE 03FF FFFE 03FF FFFE"
		$"03FF FFFE 03FF FFFE 03FF FFFE 03FF FFFE"
		$"03FF FFFE 03FF FFFE 03FF FFFE 03FF FFFE"
	}
};

resource 'MBAR' (128) {
	{	/* array MenuArray: 5 elements */
		/* [1] */
		128,
		/* [2] */
		129,
		/* [3] */
		131,
		/* [4] */
		136,
		/* [5] */
		138
	}
};

resource 'MENU' (128) {
	128,
	textMenuProc,
	0x7FFFFFFB,
	enabled,
	apple,
	{	/* array: 3 elements */
		/* [1] */
		"About Iconographer…", noIcon, noKey, noMark, plain,
		/* [2] */
		"Register…", noIcon, noKey, noMark, plain,
		/* [3] */
		"-", noIcon, noKey, noMark, plain
	}
};

resource 'MENU' (129) {
	129,
	textMenuProc,
	0x7FFFFDEF,
	enabled,
	"File",
	{	/* array: 11 elements */
		/* [1] */
		"New Icon", noIcon, "N", noMark, plain,
		/* [2] */
		"Open Icon", noIcon, "O", noMark, plain,
		/* [3] */
		"Open Recent", noIcon, hierarchicalMenu, "Ç", plain,
		/* [4] */
		"Close", noIcon, "W", noMark, plain,
		/* [5] */
		"-", noIcon, noKey, noMark, plain,
		/* [6] */
		"Save", noIcon, "S", noMark, plain,
		/* [7] */
		"Save As…", noIcon, "S", noMark, plain,
		/* [8] */
		"Save Into File…", noIcon, noKey, noMark, plain,
		/* [9] */
		"Revert", noIcon, noKey, noMark, plain,
		/* [10] */
		"-", noIcon, noKey, noMark, plain,
		/* [11] */
		"Quit", noIcon, "Q", noMark, plain
	}
};

resource 'MENU' (130) {
	130,
	textMenuProc,
	allEnabled,
	enabled,
	"Open Recent",
	{	/* array: 0 elements */
	}
};

resource 'MENU' (131) {
	131,
	textMenuProc,
	0x7FFFFBFB,
	enabled,
	"Edit",
	{	/* array: 12 elements */
		/* [1] */
		"Undo", noIcon, "Z", noMark, plain,
		/* [2] */
		"Redo", noIcon, "Z", noMark, plain,
		/* [3] */
		"-", noIcon, noKey, noMark, plain,
		/* [4] */
		"Cut", noIcon, "X", noMark, plain,
		/* [5] */
		"Copy", noIcon, hierarchicalMenu, "á", plain,
		/* [6] */
		"Paste", noIcon, hierarchicalMenu, "Ü", plain,
		/* [7] */
		"Clear", noIcon, noKey, noMark, plain,
		/* [8] */
		"Select", noIcon, hierarchicalMenu, "Ñ", plain,
		/* [9] */
		"Transform", noIcon, hierarchicalMenu, "Ö", plain,
		/* [10] */
		"Adjust…", noIcon, "U", noMark, plain,
		/* [11] */
		"-", noIcon, noKey, noMark, plain,
		/* [12] */
		"Preferences…", noIcon, ";", noMark, plain
	}
};

resource 'MENU' (132) {
	132,
	textMenuProc,
	allEnabled,
	enabled,
	"Select",
	{	/* array: 4 elements */
		/* [1] */
		"All", noIcon, "A", noMark, plain,
		/* [2] */
		"Similar", noIcon, noKey, noMark, plain,
		/* [3] */
		"Deselect", noIcon, "D", noMark, plain,
		/* [4] */
		"Inverse", noIcon, "I", noMark, plain
	}
};

resource 'MENU' (133) {
	133,
	textMenuProc,
	0x7FFFFFDB,
	enabled,
	"Transform",
	{	/* array: 7 elements */
		/* [1] */
		"Rotate CW", noIcon, "T", noMark, plain,
		/* [2] */
		"Rotate CCW", noIcon, "T", noMark, plain,
		/* [3] */
		"-", noIcon, noKey, noMark, plain,
		/* [4] */
		"Flip Horizontal", noIcon, "[", noMark, plain,
		/* [5] */
		"Flip Vertical", noIcon, "]", noMark, plain,
		/* [6] */
		"-", noIcon, noKey, noMark, plain,
		/* [7] */
		"Invert", noIcon, "I", noMark, plain
	}
};

resource 'MENU' (134) {
	134,
	textMenuProc,
	allEnabled,
	enabled,
	"Paste",
	{	/* array: 4 elements */
		/* [1] */
		"Normally", noIcon, "V", noMark, plain,
		/* [2] */
		"As Icon and Mask", noIcon, "V", noMark, plain,
		/* [3] */
		"Into Current Selection", noIcon, "V", noMark, plain,
		/* [4] */
		"Icon Family", noIcon, "V", noMark, plain
	}
};

resource 'MENU' (135) {
	135,
	textMenuProc,
	allEnabled,
	enabled,
	"Copy",
	{	/* array: 3 elements */
		/* [1] */
		"Normally", noIcon, "C", noMark, plain,
		/* [2] */
		"Icon and Mask", noIcon, "C", noMark, plain,
		/* [3] */
		"Icon Family", noIcon, "C", noMark, plain
	}
};

resource 'MENU' (136) {
	136,
	textMenuProc,
	0x7FFFFEEB,
	enabled,
	"Icon",
	{	/* array: 10 elements */
		/* [1] */
		"Zoom In", noIcon, "=", noMark, plain,
		/* [2] */
		"Zoom Out", noIcon, "-", noMark, plain,
		/* [3] */
		"-", noIcon, noKey, noMark, plain,
		/* [4] */
		"Colors", noIcon, hierarchicalMenu, "â", plain,
		/* [5] */
		"-", noIcon, noKey, noMark, plain,
		/* [6] */
		"Insert…", noIcon, "K", noMark, plain,
		/* [7] */
		"Info…", noIcon, "I", noMark, plain,
		/* [8] */
		"Show Pixel Grid", noIcon, "G", noMark, plain,
		/* [9] */
		"-", noIcon, noKey, noMark, plain,
		/* [10] */
		"Open In External Editor", noIcon, noKey, noMark, plain
	}
};

resource 'MENU' (137) {
	137,
	textMenuProc,
	allEnabled,
	enabled,
	"Colors",
	{	/* array: 2 elements */
		/* [1] */
		"Mac OS System Palette", noIcon, noKey, noMark, plain,
		/* [2] */
		"Windows System Palette", noIcon, noKey, noMark, plain
	}
};

resource 'MENU' (138) {
	138,
	textMenuProc,
	0x7FFFFFCF,
	enabled,
	"Windows",
	{	/* array: 6 elements */
		/* [1] */
		"Show Tools", noIcon, "1", noMark, plain,
		/* [2] */
		"Show Members", noIcon, "2", noMark, plain,
		/* [3] */
		"Show Preview", noIcon, "3", noMark, plain,
		/* [4] */
		"Show Colors", noIcon, "4", noMark, plain,
		/* [5] */
		"-", noIcon, noKey, noMark, plain,
		/* [6] */
		"-", noIcon, noKey, noMark, plain
	}
};

resource 'MENU' (201) {
	201,
	textMenuProc,
	allEnabled,
	enabled,
	"Zoom",
	{	/* array: 5 elements */
		/* [1] */
		"100%", noIcon, noKey, noMark, plain,
		/* [2] */
		"200%", noIcon, noKey, noMark, plain,
		/* [3] */
		"400%", noIcon, noKey, noMark, plain,
		/* [4] */
		"800%", noIcon, noKey, noMark, plain,
		/* [5] */
		"1600%", noIcon, noKey, noMark, plain
	}
};

resource 'MENU' (202) {
	202,
	textMenuProc,
	allEnabled,
	enabled,
	"IDs",
	{	/* array: 7 elements */
		/* [1] */
		"Item Icon", noIcon, hierarchicalMenu, "À", plain,
		/* [2] */
		"System Folders", noIcon, hierarchicalMenu, "Ã", plain,
		/* [3] */
		"Generic Icons", noIcon, hierarchicalMenu, "Õ", plain,
		/* [4] */
		"Internet Icons", noIcon, hierarchicalMenu, "Œ", plain,
		/* [5] */
		"Battery Status", noIcon, hierarchicalMenu, "œ", plain,
		/* [6] */
		"Badges", noIcon, hierarchicalMenu, "–", plain,
		/* [7] */
		"Others", noIcon, hierarchicalMenu, "—", plain
	}
};

resource 'MENU' (203) {
	203,
	textMenuProc,
	allEnabled,
	enabled,
	"Item Icon",
	{	/* array: 1 elements */
		/* [1] */
		"–16455 Item Icon", noIcon, noKey, noMark, plain
	}
};

resource 'MENU' (204) {
	204,
	textMenuProc,
	allEnabled,
	enabled,
	"System Folders",
	{	/* array: 56 elements */
		/* [1] */
		"–20803 Language & Region Support", noIcon, noKey, noMark, plain,
		/* [2] */
		"–20801 Internet Search Sites", noIcon, noKey, noMark, plain,
		/* [3] */
		"–20797 Scripts", noIcon, noKey, noMark, plain,
		/* [4] */
		"–20792 ColorSync Profiles", noIcon, noKey, noMark, plain,
		/* [5] */
		"–20744 Internet", noIcon, noKey, noMark, plain,
		/* [6] */
		"–20729 Favorites", noIcon, noKey, noMark, plain,
		/* [7] */
		"–20724 Speakable Items", noIcon, noKey, noMark, plain,
		/* [8] */
		"–20723 Appearance", noIcon, noKey, noMark, plain,
		/* [9] */
		"–3999 Generic Folder", noIcon, noKey, noMark, plain,
		/* [10] */
		"–3997 Open Folder", noIcon, noKey, noMark, plain,
		/* [11] */
		"–3994 Private Folder", noIcon, noKey, noMark, plain,
		/* [12] */
		"–3993 Trash Empty", noIcon, noKey, noMark, plain,
		/* [13] */
		"–3992 Desktop", noIcon, noKey, noMark, plain,
		/* [14] */
		"–3984 Trash Full", noIcon, noKey, noMark, plain,
		/* [15] */
		"–3983 System Folder", noIcon, noKey, noMark, plain,
		/* [16] */
		"–3982 Apple Menu Items", noIcon, noKey, noMark, plain,
		/* [17] */
		"–3981 Startup Items", noIcon, noKey, noMark, plain,
		/* [18] */
		"–3980 Shared Folder", noIcon, noKey, noMark, plain,
		/* [19] */
		"–3979 Drop Folder", noIcon, noKey, noMark, plain,
		/* [20] */
		"–3978 Share Point", noIcon, noKey, noMark, plain,
		/* [21] */
		"–3977 Mounted Folder", noIcon, noKey, noMark, plain,
		/* [22] */
		"–3976 Control Panels", noIcon, noKey, noMark, plain,
		/* [23] */
		"–3975 Print Spool", noIcon, noKey, noMark, plain,
		/* [24] */
		"–3974 Preferences", noIcon, noKey, noMark, plain,
		/* [25] */
		"–3973 Extensions", noIcon, noKey, noMark, plain,
		/* [26] */
		"–3972 File Server", noIcon, noKey, noMark, plain,
		/* [27] */
		"–3968 Fonts", noIcon, noKey, noMark, plain,
		/* [28] */
		"–3966 Recent Documents", noIcon, noKey, noMark, plain,
		/* [29] */
		"–3965 Recent Applications", noIcon, noKey, noMark, plain,
		/* [30] */
		"–3964 Recent Servers", noIcon, noKey, noMark, plain,
		/* [31] */
		"–3963 MacOS Read Me Files", noIcon, noKey, noMark, plain,
		/* [32] */
		"–3962 Control Strip Modules", noIcon, noKey, noMark, plain,
		/* [33] */
		"–3961 Sounds", noIcon, noKey, noMark, plain,
		/* [34] */
		"–3960 Help", noIcon, noKey, noMark, plain,
		/* [35] */
		"–3959 Scripting Additions", noIcon, noKey, noMark, plain,
		/* [36] */
		"–3958 Internet Plug-ins", noIcon, noKey, noMark, plain,
		/* [37] */
		"–3957 Language Support", noIcon, noKey, noMark, plain,
		/* [38] */
		"–3956 Shared Libraries", noIcon, noKey, noMark, plain,
		/* [39] */
		"–3955 Text Encodings", noIcon, noKey, noMark, plain,
		/* [40] */
		"–3954 Printer Drivers", noIcon, noKey, noMark, plain,
		/* [41] */
		"–3953 Printer Descriptions", noIcon, noKey, noMark, plain,
		/* [42] */
		"–3952 Voices", noIcon, noKey, noMark, plain,
		/* [43] */
		"–3951 Control Panels (Disabled)", noIcon, noKey, noMark, plain,
		/* [44] */
		"–3950 Extensions (Disabled)", noIcon, noKey, noMark, plain,
		/* [45] */
		"–3949 Startup Items (Disabled)", noIcon, noKey, noMark, plain,
		/* [46] */
		"–3948 Shutdown Items (Disabled)", noIcon, noKey, noMark, plain,
		/* [47] */
		"–3947 System Extensions (Disabled)", noIcon, noKey, noMark, plain,
		/* [48] */
		"–3946 Assistants", noIcon, noKey, noMark, plain,
		/* [49] */
		"–3945 Utilities", noIcon, noKey, noMark, plain,
		/* [50] */
		"–3944 Application Support", noIcon, noKey, noMark, plain,
		/* [51] */
		"–3943 Apple Extras", noIcon, noKey, noMark, plain,
		/* [52] */
		"–3942 Contextual Menu Items", noIcon, noKey, noMark, plain,
		/* [53] */
		"–3812 Workgroup", noIcon, noKey, noMark, plain,
		/* [54] */
		"–3811 User", noIcon, noKey, noMark, plain,
		/* [55] */
		"–3774 System Folder (protected)", noIcon, noKey, noMark, plain,
		/* [56] */
		"–3773 Applications Folder (protected)", noIcon, noKey, noMark, plain
	}
};

resource 'MENU' (205) {
	205,
	textMenuProc,
	allEnabled,
	enabled,
	"Generic Icons",
	{	/* array: 37 elements */
		/* [1] */
		"–20800 Disk Image", noIcon, noKey, noMark, plain,
		/* [2] */
		"–20799 Generic PC Card", noIcon, noKey, noMark, plain,
		/* [3] */
		"–20794 TrueType Multi Flat Font", noIcon, noKey, noMark, plain,
		/* [4] */
		"–20752 Generic Font Scaler", noIcon, noKey, noMark, plain,
		/* [5] */
		"–20743 LaserWriter", noIcon, noKey, noMark, plain,
		/* [6] */
		"–20732 TrueType Flat Font", noIcon, noKey, noMark, plain,
		/* [7] */
		"–16415 Generic Extension", noIcon, noKey, noMark, plain,
		/* [8] */
		"–4000 Generic Document", noIcon, noKey, noMark, plain,
		/* [9] */
		"–3998 Floppy", noIcon, noKey, noMark, plain,
		/* [10] */
		"–3996 Generic App", noIcon, noKey, noMark, plain,
		/* [11] */
		"–3995 Apple HD", noIcon, noKey, noMark, plain,
		/* [12] */
		"–3991 Generic DA", noIcon, noKey, noMark, plain,
		/* [13] */
		"–3989 Edition File", noIcon, noKey, noMark, plain,
		/* [14] */
		"–3988 RAM Disk", noIcon, noKey, noMark, plain,
		/* [15] */
		"–3987 CD", noIcon, noKey, noMark, plain,
		/* [16] */
		"–3985 Stationery", noIcon, noKey, noMark, plain,
		/* [17] */
		"–3971 Generic Preferences", noIcon, noKey, noMark, plain,
		/* [18] */
		"–3970 Generic Suitcase", noIcon, noKey, noMark, plain,
		/* [19] */
		"–3969 Generic DA Document", noIcon, noKey, noMark, plain,
		/* [20] */
		"–3967 Shared Library", noIcon, noKey, noMark, plain,
		/* [21] */
		"–3851 Generic Control Strip Module", noIcon, noKey, noMark, plain,
		/* [22] */
		"–3850 Generic Codec", noIcon, noKey, noMark, plain,
		/* [23] */
		"–3832 PC Disk", noIcon, noKey, noMark, plain,
		/* [24] */
		"–3831 Apple II Disk", noIcon, noKey, noMark, plain,
		/* [25] */
		"–3824 Generic Control Panel", noIcon, noKey, noMark, plain,
		/* [26] */
		"–3817 Removable Disk", noIcon, noKey, noMark, plain,
		/* [27] */
		"–3810 Sound", noIcon, noKey, noMark, plain,
		/* [28] */
		"–3809 International Script", noIcon, noKey, noMark, plain,
		/* [29] */
		"–3808 TrueType Font", noIcon, noKey, noMark, plain,
		/* [30] */
		"–3807 Bitmap Font", noIcon, noKey, noMark, plain,
		/* [31] */
		"–3806 Keyboard Layout", noIcon, noKey, noMark, plain,
		/* [32] */
		"–3805 DA Suitcase", noIcon, noKey, noMark, plain,
		/* [33] */
		"–3804 Font Suitcase", noIcon, noKey, noMark, plain,
		/* [34] */
		"–3803 Sound Clipping", noIcon, noKey, noMark, plain,
		/* [35] */
		"–3802 Text Clipping", noIcon, noKey, noMark, plain,
		/* [36] */
		"–3801 Picture Clipping", noIcon, noKey, noMark, plain,
		/* [37] */
		"–3800 Generic Clipping", noIcon, noKey, noMark, plain
	}
};

resource 'MENU' (206) {
	206,
	textMenuProc,
	allEnabled,
	enabled,
	"Internet Icons",
	{	/* array: 12 elements */
		/* [1] */
		"–20796 AppleTalk Zone", noIcon, noKey, noMark, plain,
		/* [2] */
		"–20795 FTP Server", noIcon, noKey, noMark, plain,
		/* [3] */
		"–20793 AppleShare Server", noIcon, noKey, noMark, plain,
		/* [4] */
		"–20739 Generic Location", noIcon, noKey, noMark, plain,
		/* [5] */
		"–20738 Newsgroup Location", noIcon, noKey, noMark, plain,
		/* [6] */
		"–20737 E-mail Location", noIcon, noKey, noMark, plain,
		/* [7] */
		"–20736 File Location", noIcon, noKey, noMark, plain,
		/* [8] */
		"–20735 AppleShare Location", noIcon, noKey, noMark, plain,
		/* [9] */
		"–20734 FTP Location", noIcon, noKey, noMark, plain,
		/* [10] */
		"–20733 HTTP Location", noIcon, noKey, noMark, plain,
		/* [11] */
		"–20731 IP File Server", noIcon, noKey, noMark, plain,
		/* [12] */
		"–20726 AppleTalk", noIcon, noKey, noMark, plain
	}
};

resource 'MENU' (207) {
	207,
	textMenuProc,
	0x7FFFFEFF,
	enabled,
	"Battery Status",
	{	/* array: 19 elements */
		/* [1] */
		"–20290 Battery Charging Full", noIcon, noKey, noMark, plain,
		/* [2] */
		"–20289 Battery Charging 90%", noIcon, noKey, noMark, plain,
		/* [3] */
		"–20288 Battery Charging 75%", noIcon, noKey, noMark, plain,
		/* [4] */
		"–20287 Battery Charging 60%", noIcon, noKey, noMark, plain,
		/* [5] */
		"–20286 Battery Charging 45%", noIcon, noKey, noMark, plain,
		/* [6] */
		"–20285 Battery Charging 30%", noIcon, noKey, noMark, plain,
		/* [7] */
		"–20284 Battery Charging 15%", noIcon, noKey, noMark, plain,
		/* [8] */
		"–20283 Battery Charging Empty", noIcon, noKey, noMark, plain,
		/* [9] */
		"-", noIcon, noKey, noMark, plain,
		/* [10] */
		"–20282 Battery In-use Full", noIcon, noKey, noMark, plain,
		/* [11] */
		"–20281 Battery In-Use 90%", noIcon, noKey, noMark, plain,
		/* [12] */
		"–20280 Battery In-Use 75%", noIcon, noKey, noMark, plain,
		/* [13] */
		"–20279 Battery In-Use 60%", noIcon, noKey, noMark, plain,
		/* [14] */
		"–20278 Battery In-Use 45%", noIcon, noKey, noMark, plain,
		/* [15] */
		"–20277 Battery In-Use 30%", noIcon, noKey, noMark, plain,
		/* [16] */
		"–20276 Battery In-Use 15%", noIcon, noKey, noMark, plain,
		/* [17] */
		"–20275 Battery In-Use Empty", noIcon, noKey, noMark, plain,
		/* [18] */
		"–20274 No Battery", noIcon, noKey, noMark, plain,
		/* [19] */
		"–4001 Plugged in (?)", noIcon, noKey, noMark, plain
	}
};

resource 'MENU' (208) {
	208,
	textMenuProc,
	allEnabled,
	enabled,
	"Badges",
	{	/* array: 5 elements */
		/* [1] */
		"–20789 Alias Badge", noIcon, noKey, noMark, plain,
		/* [2] */
		"–20788 Mounted Badge", noIcon, noKey, noMark, plain,
		/* [3] */
		"–20787 Shared Badge", noIcon, noKey, noMark, plain,
		/* [4] */
		"–20786 Locked Badge", noIcon, noKey, noMark, plain,
		/* [5] */
		"–20740 Script Badge", noIcon, noKey, noMark, plain
	}
};

resource 'MENU' (209) {
	209,
	textMenuProc,
	0x75F6FF6D,
	enabled,
	"Others",
	{	/* array: 43 elements */
		/* [1] */
		"–16386 Apple Menu Icon", noIcon, noKey, noMark, plain,
		/* [2] */
		"-", noIcon, noKey, noMark, plain,
		/* [3] */
		"–20798 Unlocked", noIcon, noKey, noMark, plain,
		/* [4] */
		"–3823 Locked", noIcon, noKey, noMark, plain,
		/* [5] */
		"-", noIcon, noKey, noMark, plain,
		/* [6] */
		"–20791 Descending Sort Order", noIcon, noKey, noMark, plain,
		/* [7] */
		"–20790 Ascending Sort Order", noIcon, noKey, noMark, plain,
		/* [8] */
		"-", noIcon, noKey, noMark, plain,
		/* [9] */
		"–20751 Privileges: Writable", noIcon, noKey, noMark, plain,
		/* [10] */
		"–20750 Privileges: Uknown", noIcon, noKey, noMark, plain,
		/* [11] */
		"–20749 Privileges: N/A", noIcon, noKey, noMark, plain,
		/* [12] */
		"–20748 Privileges: Read", noIcon, noKey, noMark, plain,
		/* [13] */
		"–20747 Privileges: Read/Write", noIcon, noKey, noMark, plain,
		/* [14] */
		"–3784 Privileges: No Folders", noIcon, noKey, noMark, plain,
		/* [15] */
		"–3783 Privileges: No Write", noIcon, noKey, noMark, plain,
		/* [16] */
		"–3782 Privileges: No Files", noIcon, noKey, noMark, plain,
		/* [17] */
		"-", noIcon, noKey, noMark, plain,
		/* [18] */
		"–20746 Snap to Grid", noIcon, noKey, noMark, plain,
		/* [19] */
		"–20745 Keep Arranged", noIcon, noKey, noMark, plain,
		/* [20] */
		"-", noIcon, noKey, noMark, plain,
		/* [21] */
		"–20741 Backwards Arrow", noIcon, noKey, noMark, plain,
		/* [22] */
		"–20742 Forward Arrow Icon", noIcon, noKey, noMark, plain,
		/* [23] */
		"–20730 Recent Items Icon", noIcon, noKey, noMark, plain,
		/* [24] */
		"–20729 Favorite Items", noIcon, noKey, noMark, plain,
		/* [25] */
		"–20728 Shortcut Icon", noIcon, noKey, noMark, plain,
		/* [26] */
		"-", noIcon, noKey, noMark, plain,
		/* [27] */
		"–20271 Help Icon", noIcon, noKey, noMark, plain,
		/* [28] */
		"-", noIcon, noKey, noMark, plain,
		/* [29] */
		"–16509 Clipboard", noIcon, noKey, noMark, plain,
		/* [30] */
		"–16494 System Suitcase", noIcon, noKey, noMark, plain,
		/* [31] */
		"–16482 Finder", noIcon, noKey, noMark, plain,
		/* [32] */
		"–3828 MacOS Logo", noIcon, noKey, noMark, plain,
		/* [33] */
		"-", noIcon, noKey, noMark, plain,
		/* [34] */
		"–3822 Stop Icon", noIcon, noKey, noMark, plain,
		/* [35] */
		"–3821 Caution Icon", noIcon, noKey, noMark, plain,
		/* [36] */
		"–3820 Note Icon", noIcon, noKey, noMark, plain,
		/* [37] */
		"-", noIcon, noKey, noMark, plain,
		/* [38] */
		"–3816 Group", noIcon, noKey, noMark, plain,
		/* [39] */
		"–3815 Owner", noIcon, noKey, noMark, plain,
		/* [40] */
		"–3813 Guest User", noIcon, noKey, noMark, plain,
		/* [41] */
		"–3814 User", noIcon, noKey, noMark, plain,
		/* [42] */
		"-", noIcon, noKey, noMark, plain,
		/* [43] */
		"Custom ID", noIcon, noKey, noMark, 2
	}
};

resource 'MENU' (303, "Icon Browser: Icon Types") {
	303,
	textMenuProc,
	allEnabled,
	enabled,
	"Icon Types",
	{	/* array: 3 elements */
		/* [1] */
		"New", noIcon, noKey, noMark, plain,
		/* [2] */
		"Old", noIcon, noKey, noMark, plain,
		/* [3] */
		"Both", noIcon, noKey, noMark, plain
	}
};

resource 'MENU' (400, "Icon States") {
	400,
	textMenuProc,
	allEnabled,
	enabled,
	"Icon States",
	{	/* array: 8 elements */
		/* [1] */
		"Normal", noIcon, noKey, noMark, plain,
		/* [2] */
		"Hover", noIcon, noKey, noMark, plain,
		/* [3] */
		"Selected", noIcon, noKey, noMark, plain,
		/* [4] */
		"Open", noIcon, noKey, noMark, plain,
		/* [5] */
		"Accept Drop", noIcon, noKey, noMark, plain,
		/* [6] */
		"Accept Drop Open/Running", noIcon, noKey, noMark, plain,
		/* [7] */
		"Disabled", noIcon, noKey, noMark, plain,
		/* [8] */
		"Tile", noIcon, noKey, noMark, plain
	}
};

resource 'MENU' (500) {
	500,
	textMenuProc,
	0x7FFFFFFB,
	enabled,
	"Preview Settings",
	{	/* array: 7 elements */
		/* [1] */
		"Normal", noIcon, noKey, noMark, plain,
		/* [2] */
		"Selected", noIcon, noKey, noMark, plain,
		/* [3] */
		"-", noIcon, noKey, noMark, plain,
		/* [4] */
		"Desktop", noIcon, noKey, noMark, plain,
		/* [5] */
		"List View", noIcon, noKey, noMark, plain,
		/* [6] */
		"White", noIcon, noKey, noMark, plain,
		/* [7] */
		"Black", noIcon, noKey, noMark, plain
	}
};

resource 'MENU' (623) {
	623,
	textMenuProc,
	allEnabled,
	enabled,
	"Line Thickness",
	{	/* array: 8 elements */
		/* [1] */
		" ", 1, noKey, noMark, plain,
		/* [2] */
		" ", 2, noKey, noMark, plain,
		/* [3] */
		" ", 3, noKey, noMark, plain,
		/* [4] */
		" ", 4, noKey, noMark, plain,
		/* [5] */
		" ", 5, noKey, noMark, plain,
		/* [6] */
		" ", 6, noKey, noMark, plain,
		/* [7] */
		" ", 7, noKey, noMark, plain,
		/* [8] */
		" ", 8, noKey, noMark, plain
	}
};

resource 'MENU' (624) {
	624,
	textMenuProc,
	allEnabled,
	enabled,
	"Anti-aliasing",
	{	/* array: 2 elements */
		/* [1] */
		"Aliased", noIcon, noKey, noMark, plain,
		/* [2] */
		"Anti-aliased", noIcon, noKey, noMark, plain
	}
};

resource 'MENU' (625) {
	625,
	textMenuProc,
	allEnabled,
	enabled,
	"Fill",
	{	/* array: 2 elements */
		/* [1] */
		"Unfilled", noIcon, noKey, noMark, plain,
		/* [2] */
		"Filled", noIcon, noKey, noMark, plain
	}
};

resource 'MENU' (1016) {
	1016,
	textMenuProc,
	allEnabled,
	enabled,
	"Image Format",
	{	/* array: 4 elements */
		/* [1] */
		"PICT", noIcon, noKey, noMark, plain,
		/* [2] */
		"Photoshop", noIcon, noKey, noMark, plain,
		/* [3] */
		"PNG", noIcon, noKey, noMark, plain,
		/* [4] */
		"TIFF", noIcon, noKey, noMark, plain
	}
};

resource 'MENU' (1120) {
	1120,
	textMenuProc,
	allEnabled,
	enabled,
	"Member Type",
	{	/* array: 0 elements */
	}
};

resource 'MENU' (1121) {
	1121,
	textMenuProc,
	0x7FFFFFFB,
	enabled,
	"Source",
	{	/* array: 3 elements */
		/* [1] */
		"None", noIcon, noKey, noMark, 2,
		/* [2] */
		"Current", noIcon, noKey, noMark, 2,
		/* [3] */
		"-", noIcon, noKey, noMark, plain
	}
};

resource 'MENU' (1410) {
	1410,
	textMenuProc,
	allEnabled,
	enabled,
	"Font",
	{	/* array: 0 elements */
	}
};

resource 'MENU' (1411) {
	1411,
	textMenuProc,
	0x7FFFFDFF,
	enabled,
	"Size",
	{	/* array: 11 elements */
		/* [1] */
		"9", noIcon, noKey, noMark, plain,
		/* [2] */
		"10", noIcon, noKey, noMark, plain,
		/* [3] */
		"12", noIcon, noKey, noMark, plain,
		/* [4] */
		"14", noIcon, noKey, noMark, plain,
		/* [5] */
		"18", noIcon, noKey, noMark, plain,
		/* [6] */
		"24", noIcon, noKey, noMark, plain,
		/* [7] */
		"36", noIcon, noKey, noMark, plain,
		/* [8] */
		"48", noIcon, noKey, noMark, plain,
		/* [9] */
		"72", noIcon, noKey, noMark, plain,
		/* [10] */
		"-", noIcon, noKey, noMark, plain,
		/* [11] */
		"Other", noIcon, noKey, noMark, 2
	}
};

resource 'MENU' (1412) {
	1412,
	textMenuProc,
	allEnabled,
	enabled,
	"Style",
	{	/* array: 7 elements */
		/* [1] */
		"Plain", noIcon, noKey, noMark, plain,
		/* [2] */
		"Bold", noIcon, noKey, noMark, 1,
		/* [3] */
		"Italic", noIcon, noKey, noMark, 2,
		/* [4] */
		"Underline", noIcon, noKey, noMark, 4,
		/* [5] */
		"Shadow", noIcon, noKey, noMark, 16,
		/* [6] */
		"Condensed", noIcon, noKey, noMark, 32,
		/* [7] */
		"Extended", noIcon, noKey, noMark, 64
	}
};

resource 'MENU' (4000, "Icon Formats") {
	4000,
	textMenuProc,
	allEnabled,
	enabled,
	"Icon Formats",
	{	/* array: 5 elements */
		/* [1] */
		"Mac OS Universal", noIcon, noKey, noMark, plain,
		/* [2] */
		"Mac OS New", noIcon, noKey, noMark, plain,
		/* [3] */
		"Mac OS Old", noIcon, noKey, noMark, plain,
		/* [4] */
		"Windows", noIcon, noKey, noMark, plain,
		/* [5] */
		"Mac OS X Server", noIcon, noKey, noMark, plain
	}
};

data 'Mcmd' (128) {
	$"0002 0000 0000 0000 0000"                           /* .......... */
};

data 'Mcmd' (129) {
	$"0000"                                               /* .. */
};

data 'Mcmd' (130) {
	$"0009 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000"                                     /* ...... */
};

data 'Mcmd' (131) {
	$"0003 0000 0000 0000 0000 0000 0000"                 /* .............. */
};

data 'Mcmd' (132) {
	$"0000"                                               /* .. */
};

data 'Mcmd' (133) {
	$"0000"                                               /* .. */
};

data 'Mcmd' (134) {
	$"0000"                                               /* .. */
};

data 'Mcmd' (135) {
	$"0000"                                               /* .. */
};

data 'Mcmd' (136) {
	$"0000"                                               /* .. */
};

data 'Mcmd' (137) {
	$"0000"                                               /* .. */
};

data 'Mcmd' (201) {
	$"0002 0000 0000 0000 0000"                           /* .......... */
};

data 'Mcmd' (202) {
	$"0000"                                               /* .. */
};

data 'Mcmd' (203) {
	$"0000"                                               /* .. */
};

data 'Mcmd' (207) {
	$"0000"                                               /* .. */
};

data 'Mcmd' (1021) {
	$"0003 0000 0000 0000 0000 0000 0000"                 /* .............. */
};

data 'Mcmd' (1410) {
	$"0000"                                               /* .. */
};

data 'Mcmd' (1411) {
	$"000B 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000"                 /* .............. */
};

data 'Mcmd' (1412) {
	$"0000"                                               /* .. */
};

data 'Mcmd' (2000) {
	$"0000"                                               /* .. */
};

data 'Mngl' (0, "Owner resource") {
	$"1BA9 2031 3939 382D 3230 3030 204D 6968"            /* .© 1998-2000 Mih */
	$"6169 2050 6172 7061 7269 7461"                      /* ai Parparita */
};

data 'PAT#' (1000, purgeable) {
	$"0008 F0E1 C387 0F1E 3C78 78F0 E1C3 870F"            /* ..·√á..<xx·√á. */
	$"1E3C 3C78 F0E1 C387 0F1E 1E3C 78F0 E1C3"            /* .<<x·√á...<x·√ */
	$"870F 0F1E 3C78 F0E1 C387 870F 1E3C 78F0"            /* á...<x·√áá..<x */
	$"E1C3 C387 0F1E 3C78 F0E1 E1C3 870F 1E3C"            /* ·√√á..<x··√á..< */
	$"78F0"                                               /* x */
};

data 'PAT#' (1001, preload) {
	$"0018 FFFF FFFF FFFF FFFF 7FFF F7FF 7FFF"            /* ..ˇˇˇˇˇˇˇˇ.ˇ˜ˇ.ˇ */
	$"F7FF DDFF 77FF DDFF 77FF DD77 DD77 DD77"            /* ˜ˇ›ˇwˇ›ˇwˇ›w›w›w */
	$"DD77 AA55 AA55 AA55 AA55 55FF 55FF 55FF"            /* ›w™U™U™U™UUˇUˇUˇ */
	$"55FF AAAA AAAA AAAA AAAA EEDD BB77 EEDD"            /* Uˇ™™™™™™™™Ó›ªwÓ› */
	$"BB77 FEFD FBF7 EFDF BF7F 8888 8888 8888"            /* ªw˛˝˚˜Ôﬂø.àààààà */
	$"8888 FF88 8888 FF88 8888 00FF 00FF 00FF"            /* ààˇàààˇààà.ˇ.ˇ.ˇ */
	$"00FF 0000 0000 0000 0000 8000 0800 8000"            /* .ˇ........Ä...Ä. */
	$"0800 8800 2200 8800 2200 8822 8822 8822"            /* ..à.".à.".à"à"à" */
	$"8822 55AA 55AA 55AA 55AA AA00 AA00 AA00"            /* à"U™U™U™U™™.™.™. */
	$"AA00 5555 5555 5555 5555 8000 0000 0000"            /* ™.UUUUUUUUÄ..... */
	$"0000 1122 4488 1122 4488 0102 0408 1020"            /* ..."Dà."Dà.....  */
	$"4080 FF00 0000 FF00 0000 FF00 FF00 FF00"            /* @Äˇ...ˇ...ˇ.ˇ.ˇ. */
	$"FF00"                                               /* ˇ. */
};

resource 'PICT' (128, "About Pic") {
	51786,
	{0, 0, 300, 456},
	$"0011 02FF 0C00 FFFE 0000 0048 0000 0048"
	$"0000 0000 0000 012C 01C8 0000 0000 00A1"
	$"01F2 0016 3842 494D 0000 0000 0000 012C"
	$"01C8 4772 8970 68AF 626A 0001 000A 0000"
	$"0000 012C 01C8 8200 0000 AEA6 0000 0001"
	$"0000 0000 0000 0000 0000 0000 0000 0001"
	$"0000 0000 0000 0000 0000 0000 0000 4000"
	$"0000 0000 0000 0000 0000 0000 0000 0040"
	$"0000 0000 0110 01C8 0000 0300 0000 0000"
	$"0000 0056 6A70 6567 0000 0000 0000 0000"
	$"0001 0001 6170 706C 0000 0000 0000 0300"
	$"01C8 0110 0048 0000 0048 0000 0000 AE0B"
	$"0001 0C50 686F 746F 202D 204A 5045 4700"
	$"0000 0000 0000 0000 0000 0000 0000 0000"
	$"0000 0018 FFFF FFD8 FFE0 0010 4A46 4946"
	$"0001 0101 0048 0048 0000 FFFE 000C 4170"
	$"706C 654D 6172 6B0A FFDB 0084 0003 0202"
	$"0202 0203 0202 0203 0303 0304 0604 0404"
	$"0404 0705 0605 0609 0809 0908 0808 0809"
	$"0A0D 0B09 0A0D 0A08 080C 100C 0D0E 0E0F"
	$"0F0F 090B 1011 100E 110D 0E0F 0E01 0303"
	$"0304 0304 0704 0407 0E0A 080A 0E0E 0E0E"
	$"0E0E 0E0E 0E0E 0E0E 0E0E 0E0E 0E0E 0E0E"
	$"0E0E 0E0E 0E0E 0E0E 0E0E 0E0E 0E0E 0E0E"
	$"0E0E 0E0E 0E0E 0E0E 0E0E 0E0E 0E0E FFC4"
	$"01A2 0000 0105 0101 0101 0101 0000 0000"
	$"0000 0000 0102 0304 0506 0708 090A 0B01"
	$"0003 0101 0101 0101 0101 0100 0000 0000"
	$"0001 0203 0405 0607 0809 0A0B 1000 0201"
	$"0303 0204 0305 0504 0400 0001 7D01 0203"
	$"0004 1105 1221 3141 0613 5161 0722 7114"
	$"3281 91A1 0823 42B1 C115 52D1 F024 3362"
	$"7282 090A 1617 1819 1A25 2627 2829 2A34"
	$"3536 3738 393A 4344 4546 4748 494A 5354"
	$"5556 5758 595A 6364 6566 6768 696A 7374"
	$"7576 7778 797A 8384 8586 8788 898A 9293"
	$"9495 9697 9899 9AA2 A3A4 A5A6 A7A8 A9AA"
	$"B2B3 B4B5 B6B7 B8B9 BAC2 C3C4 C5C6 C7C8"
	$"C9CA D2D3 D4D5 D6D7 D8D9 DAE1 E2E3 E4E5"
	$"E6E7 E8E9 EAF1 F2F3 F4F5 F6F7 F8F9 FA11"
	$"0002 0102 0404 0304 0705 0404 0001 0277"
	$"0001 0203 1104 0521 3106 1241 5107 6171"
	$"1322 3281 0814 4291 A1B1 C109 2333 52F0"
	$"1562 72D1 0A16 2434 E125 F117 1819 1A26"
	$"2728 292A 3536 3738 393A 4344 4546 4748"
	$"494A 5354 5556 5758 595A 6364 6566 6768"
	$"696A 7374 7576 7778 797A 8283 8485 8687"
	$"8889 8A92 9394 9596 9798 999A A2A3 A4A5"
	$"A6A7 A8A9 AAB2 B3B4 B5B6 B7B8 B9BA C2C3"
	$"C4C5 C6C7 C8C9 CAD2 D3D4 D5D6 D7D8 D9DA"
	$"E2E3 E4E5 E6E7 E8E9 EAF2 F3F4 F5F6 F7F8"
	$"F9FA FFC0 0011 0801 1001 C803 0121 0002"
	$"1101 0311 01FF DA00 0C03 0100 0211 0311"
	$"003F 00FC FC62 C5CF CCDD 4F7A 0B30 FE26"
	$"FCE9 DCCD 6E20 66FE F37E 74A1 A4E9 B8E3"
	$"EB48 D037 9FEF 37E7 4091 FA6E 3F9D 002B"
	$"3381 8DC7 F3A5 0CE0 0F98 8FC6 9362 B0A5"
	$"9F3C 31FC E941 6EEC 7F3A 5CE5 8073 9C12"
	$"7F3A 5CB1 3F2B 1E3D E86F 4245 563C 8663"
	$"F9D2 E587 427F 3ACE F71A D450 EFD3 2697"
	$"2C7F 88FE 7414 A219 6FEF 1FCE 9413 9E58"
	$"FE74 5CAB 0F5C FA9F CE94 1627 6963 8FAD"
	$"26CA 4850 181F BC7F 3A91 37E3 863F 9D22"
	$"D02A 9190 4B7E 74AA 644C 12C7 F3A2 E311"
	$"8B11 CB1E BEB4 A371 1C31 FCEA 39AD A140"
	$"B903 1B8E 7EB4 A371 E371 FCE9 3631 C030"
	$"3F78 FE74 E084 F25C F1EF 59DC 2C2E D27D"
	$"47BE 69E3 9500 39E3 DE8B 96A2 08AD EF8F"
	$"AD38 673D 4FE7 493B 3292 B0E0 AC09 DAC7"
	$"9F7A 7E09 382C 7F3A 94EC 8761 CBBF 380C"
	$"7F3A B763 3491 3603 1E4F 5CD6 753D E8B4"
	$"6F41 FB39 A66E 4579 E6C7 B371 CE7D 6925"
	$"46E4 0CFE 75E3 28FB 39EA 7D34 5FB5 A774"
	$"655C C6C4 9F9C 8FC6 B2E7 89C9 C6E3 F9D7"
	$"A946 7A1E 3E22 9EAC A32C 5203 B4B1 FCEA"
	$"B323 2F1B 8FE7 5DF0 A963 C7AB 0232 181F"
	$"BC7F 3A0B 381C 13F9 D6B7 B9CF CA38 13FD"
	$"E3F9 D391 DB38 24D0 F635 868C 9599 80E1"
	$"8FE7 4E1B D80E 4E3B F359 2D8D 96A1 9753"
	$"D0E3 B1CD 292D 8C92 7F3A 1BD4 D547 4207"
	$"91FA 6E38 FAD4 0CCC 0E43 1FCE B547 1CF4"
	$"0576 3FC4 7F3A 7066 231B 8FE7 4D99 44BF"
	$"A196 3AD6 9CA5 8E0D DC20 F3FE DAD7 B27D"
	$"9D3F BD27 FDFC 6FF1 A114 CF03 392E 71EA"
	$"6BE9 1FD9 4FF6 5FF0 9FED 07A0 F88F 56F1"
	$"2788 B56D 324D 16FA 1B58 92C5 6260 EAF1"
	$"EF25 B783 CE7D 2BCD CF73 1A99 4E06 78AA"
	$"714D C6DA 3DB5 697E A4E0 30AB 135E 34E4"
	$"EC9D FF00 23DC 9FFE 09BB F0BD 2377 1E3E"
	$"F146 5549 FF00 576F D87F BB5F 01DF DB25"
	$"9EA1 7766 8599 6DEE 2585 49EA 42B9 504F"
	$"E55E 670C 7105 7CF1 D555 A0A3 C9CB 6B5F"
	$"ADFB FA1D 9996 0618 250E 46DD EFBF 9588"
	$"7071 C501 6BEA DBB1 E5AD 45E4 76A5 254D"
	$"43D7 5014 28ED 4A01 A5A0 EE38 0C72 C282"
	$"1460 8EF4 8685 C738 F5A7 007A 6452 DCBB"
	$"0107 6F00 E69C AAD8 ED48 7663 8267 93D6"
	$"8098 3CD0 5243 8277 14A4 1E84 526C A487"
	$"AC64 8EA2 828C A01C D0DA 68A4 2A12 3902"
	$"9490 C013 52DD 876B 8FF2 C6DA 3630 E7B5"
	$"4E85 5853 1918 CF24 FA53 D53D 0735 2C6B"
	$"B120 8C1E A39A 4D9D 8F35 0F42 EC3D 6300"
	$"61B9 CF4A 1620 AD8C 75A8 722D 447A 2648"
	$"EB8C F4AE 8BE1 EF85 ECFC 67E3 FF00 0D78"
	$"46F6 E258 2DB5 AD5A D74F 9658 B1BD 1259"
	$"150B 2E78 C807 BD09 DF41 DACA E7E9 31FF"
	$"0082 47FC 2127 23E2 578B FF00 2B5F FE37"
	$"5F22 FED9 FF00 B317 85FF 0066 2F18 787B"
	$"C37E 16D7 F54D 5A1D 634C 92FA 592F C461"
	$"9196 5D80 2EC5 0318 F5AE 8AB4 1463 74CE"
	$"7A35 DD49 72B4 7CF2 9180 B938 A747 1B33"
	$"8D80 93E9 5C9D 0ECB 72EA CD28 AD67 8D44"
	$"8A9C 139A DCB5 B592 FD52 3B78 99E5 90E1"
	$"5546 777D 2BC6 C554 4BDF E87D 1601 4B48"
	$"35AB 28EB 5A25 EE97 31B7 BB83 638E A0F6"
	$"FAD6 0DC4 2339 00E0 5746 12B4 6B53 8CE3"
	$"B3D4 CF19 45D3 94A3 25AA 284A 8B91 C1AA"
	$"B2C6 BBB2 3A57 AB4D E878 55A2 AE56 68B1"
	$"C8E9 4C20 1E31 8AEA 8C93 4714 A361 A149"
	$"A072 7356 9DC9 B8F0 C7A5 4D10 2411 9FAD"
	$"62FD D378 32C2 8DC9 B707 0290 C676 E4D6"
	$"573B 146C 8A92 A60F 5154 DC65 B15D 34DD"
	$"D1E6 D756 61C4 639E F4F1 D375 5B31 8A34"
	$"7420 7FB6 F4D3 FF00 4F90 7FE8 C5AF 68C1"
	$"F4A4 8A3C 04FD E6FA 9AFB CFFE 09B9 FF00"
	$"226F 8EFF 00EC 3169 FF00 A20D 7CEF 18BF"
	$"F847 ABEB 1FFD 291D 1947 FBDC 7E7F 91F6"
	$"14BF EA64 FF00 71BF 957E 2E5F 58DE 6A7E"
	$"27BB D3B4 FB59 6EAE EEB5 29A1 8208 50BB"
	$"C923 4AC1 5554 7249 3C01 5F39 C012 51FA"
	$"D36E C928 FF00 EDC7 A39E ABFB 34BC FF00"
	$"43EB 0F86 9FF0 4EAF 116B 5A74 3AAF C4EF"
	$"17AE 80F3 2871 A658 40B7 53C6 3D25 9198"
	$"22B7 B2EE C7A9 AEE7 51FF 0082 6E78 125B"
	$"564D 27E2 3EBD 6D73 83B1 E7B4 8664 CF6C"
	$"8054 E3F1 A78B E3C9 4710 E386 A49D 34F7"
	$"6DA6 FCFC BC85 4B23 4E9D EA4E D2F2 E87C"
	$"B5F1 BFF6 6EF8 83F0 1AF2 16F1 1450 6A1A"
	$"35E4 863B 4D5E C831 8246 EBB1 C1E6 27C7"
	$"3B4F 5EC4 F38E 1BC1 BE0A F12F C43F 1259"
	$"7847 C25A 5CBA 86A9 7EE5 6185 3800 0E59"
	$"DD8F 0A8A 392C 7815 F6B8 4CD7 0F8C C0AC"
	$"745D A166 DDFA 5B74 FD3F 13C6 AD85 A94A"
	$"B7B1 6B5E 9E77 D8FB 1BC1 FF00 F04D DB31"
	$"611C DE3D F88F 38BD 65CB DB69 36AA 628C"
	$"FA79 B21C B63D 7681 5A1A E7FC 1377 C2F2"
	$"DA31 F0C7 C4BD 52DA EC29 D82F ECA3 9A26"
	$"3DB7 142A C07D 01AF 859F 1ED4 F6DE E505"
	$"ECEF D5BE 6B7E 573D C8E4 71E4 D67E F7A6"
	$"87C9 BF17 3E0A 78F3 E0A6 BD1E 83E3 5B08"
	$"D56E 433D 95F5 BB17 B6BB 41D4 A360 608C"
	$"8CA9 C11F 4209 F55F 803F B1DA FC73 F023"
	$"78D4 F8EC E8E5 6FA6 B2FB 3FD8 7CFF 00B8"
	$"14EE DDBC 75DD D31D ABEA 71FC 414B 0D97"
	$"4331 A31E 78C9 AB2B DB7B EFE6 9AB3 3CEA"
	$"3809 54AE F0F3 7668 EEBC 45FF 0004 EABA"
	$"D1B4 0D47 56D3 BE24 4BA9 5DDA 5B49 2DBD"
	$"947A 580D 7320 1F24 60F9 9C16 3819 ED9C"
	$"D6AF 817F E09C F632 E890 5E7C 45F1 D5E4"
	$"1AAC F187 92CF 4B85 0C56 E48C EC32 BF2E"
	$"4742 4003 D2BE 6EA7 1DFE E1CA 9D14 A77B"
	$"24DD D5AD AB7F 92F9 9E84 725B 4ED2 9E96"
	$"EC79 6FED 15FB 1EEB 1F04 F495 F197 87F5"
	$"C6D7 BC37 E6AC 372F 2C22 1B8B 3763 842E"
	$"1495 6427 E5DC 3183 8C8E 4579 2FC2 DF85"
	$"3E38 F8CF E33B 2F87 FF00 0F74 57D4 F58B"
	$"DCB0 4DDB 2386 35C6 F966 90F1 1C6B 9E58"
	$"FB00 0920 1FAD C973 58E7 1848 E222 ACEE"
	$"D35D 9AFE 93F9 9E6E 2F0C F0B5 1C1B BADD"
	$"7A1F A07E 07FF 0082 3E68 EBA7 4571 F11F"
	$"E2ED F49A 83A6 65B7 D1AC 9238 636F 4592"
	$"5259 FEBB 56AD 78B7 FE08 F9E1 896C 247F"
	$"02FC 60D5 2D6F 954F 971E AB61 1CF0 BB76"
	$"DCD1 9565 1F40 6BDA F67E 6717 B4F2 3E0D"
	$"F8D9 F00F E24F ECF1 E2D3 E0DF 88FA 42DB"
	$"4F2A 19AC AEED DBCD B5BE 841C 7990 C981"
	$"900E 0152 0329 EA39 04FA 87EC 8DFB 1478"
	$"9FF6 A9B9 D435 99B5 D1E1 DF09 68F2 8B6B"
	$"9D44 41E7 CD3D C150 DE4C 0848 5242 952C"
	$"C4E1 43AF 049A C795 B972 9AF3 251E 63EA"
	$"7F15 FF00 C120 7C24 FA2C A7C0 DF16 7588"
	$"3574 4261 1AA5 A453 5B48 D8E1 5FCB DAC8"
	$"09EE 3763 D0D7 9EFC 33FF 0082 4D78 DBC4"
	$"FE1B 6D4F E227 8F47 8535 84BD B8B6 6D3A"
	$"2B15 BE43 146F B526 597C C5C8 9305 8703"
	$"82BD C902 FD96 BA10 AB69 AA31 3F68 7FF8"
	$"26E8 F803 F087 5DF8 AE3E 2B3E B3FD 8BF6"
	$"61F6 13A5 083C DF36 E238 7EF8 95B1 8F37"
	$"774E 718A A9FB 34FF 00C1 3997 F686 F847"
	$"A67C 556F 8A6F A29D 4AE2 EE0F B10D 2C5C"
	$"08FC 99DE 2CEF 322E 73B3 3D38 CD43 A579"
	$"72DC BF69 EEF3 58E8 BE2E FF00 C12E 352F"
	$"869F 0FF5 1F16 687F 12EE BC49 AA5B B410"
	$"D869 10E8 E227 BDB8 9654 8923 0FE6 9DBC"
	$"BE73 8C00 0938 1CD7 37F1 AFFE 09F7 3FC0"
	$"1FD9 DAE7 E2BF 8C3C 6EF7 DE28 86E2 CA27"
	$"D32C A151 676F E74C A8EA 656F 9E42 A18F"
	$"CC02 8C8E 8450 E972 DDDC 6AAF 35B4 DCE2"
	$"7F66 AFD8 6FE2 8FED 2300 F11D 9CD0 786F"
	$"C229 218C EB17 D1B3 9B96 5387 5B68 460C"
	$"9820 82C4 8504 6324 E40F AE6C 3FE0 917F"
	$"0BE1 B544 D47E 29F8 A2E2 E07D F962 B7B6"
	$"855B E8A4 363F 3344 28F3 ABB0 9D6E 4959"
	$"1E7D F153 FE09 37E2 3D17 47B8 D5BE 11FC"
	$"425D 7EEA 0432 0D2B 55B7 4B59 2603 F823"
	$"9D58 A6E3 DB78 507D 475A F893 42F0 46A1"
	$"A8F8 FF00 4EF8 79AB C53E 937F 77AC 43A3"
	$"DD2C F111 25A4 AF30 89C3 21C1 DCA4 9C8E"
	$"3A56 5569 BA6D 7666 D46A 2A89 BEA8 FBD4"
	$"FF00 C120 901F 97E3 94B8 ED9D 0D7F F8F5"
	$"725A CFFC 12A7 C6D0 78FB 47F0 AE81 E3D8"
	$"EF34 3B8B 492E F56D 72E7 4FF2 56CF 0EAA"
	$"90C5 1873 E74A E371 C654 285C 93C8 CDBC"
	$"335B 3223 8B5D 51E9 7AB7 FC12 3BC1 0DA2"
	$"BC7A 17C5 9D76 2D5C 47F2 4D75 670C 96EC"
	$"F8FE 28D7 0C14 9F46 247B D7C6 DA27 C2AF"
	$"177C 16FD A8BC 2BF0 E3C6 B649 0EA9 A678"
	$"9F4D CBC4 7745 3C4D 3A18 E68D 8F54 65E4"
	$"771C 8382 0D45 5A3E CECD 1A52 AFED 534D"
	$"6A7E E1D7 C93F B58F EC67 E23F DA87 E2C7"
	$"8675 71E2 6B6F 0FF8 6F45 D1A4 B6BB BAF2"
	$"BED1 7324 CD39 6091 4590 3EEF 2598 81C8"
	$"C03D BAEA 41CE 3CA8 E2A3 354E 5CCC F3DF"
	$"107F C125 3C18 FA44 83C2 9F15 B5A8 3555"
	$"4262 6D42 D219 ADDD B1C0 654D ACA0 9EE0"
	$"923D 0D7C 4BE2 CF82 7E2B F85D E33D 47C0"
	$"BE35 B116 DAAE 9920 0E10 EE8E 5423 2924"
	$"6DFC 48E3 907F 0382 081E 3E64 BEA9 4534"
	$"F47A 1ED6 592F AE55 716B 55A9 F407 C08F"
	$"D86B C6BF 1A74 88BC 497B 790F 873C 3931"
	$"221B B9E2 32CB 7383 8630 C591 95CE 46E6"
	$"2012 0E33 835F 4EF8 0BFE 09C3 F0C7 C0D2"
	$"4D7C DE2D D6B5 3BF9 50AA CD3C 50AA 447D"
	$"5230 0E3F 335E 7FF6 2CB3 4C1C A35A 6E1C"
	$"EBA6 F6F9 F7FC 8EDA F9DF D471 2950 8A6E"
	$"3BDF B9E1 3FB4 37FC 13C7 E21E 8705 FF00"
	$"8E3C 09AF 278B ADE1 569A 7D3F ECFF 0067"
	$"BD0A 3926 3504 ACB8 1FC2 30C7 B027 8AF8"
	$"F7E1 D780 DBE2 27C4 9F0D FC3C 7BD3 A77F"
	$"C245 AA43 A69B 9F2B CC30 798D B776 CC8C"
	$"E3D3 229D 3C14 F2E9 430E DDE3 A24C EC96"
	$"651C D613 C4DA D25B AFEB A1F6 B49F F048"
	$"4473 C7C7 0907 FDC1 17FF 008F 579C 7FC3"
	$"B07C 5D7D F1AA 5F86 9A47 8E16 5F0E 699A"
	$"5DAE A1AB 788A 7D3F CBF2 A599 E50B 6B0C"
	$"21C8 965D 9107 C960 0061 9EA0 1F77 EAAE"
	$"36D4 F9A7 8E55 2F78 D8F9 E3F6 A8F8 29A4"
	$"7ECF DF1A 357F 859A 1EAF 79AA 5A69 96B6"
	$"530B ABB5 5591 DA68 1246 C85E 0005 8E3D"
	$"ABC8 193B D2BF 2C9A 1FC7 152E E46C B83B"
	$"BD69 A57B F4AD 1333 6AC2 61B3 C54D 0B10"
	$"7152 F51C 1D99 7EDD D4A9 5033 4F95 7781"
	$"DAB9 5DD4 8F4E 2B9A 0675 CA6D 26A9 3A91"
	$"CD76 41DC F331 0AC3 08DD 8CD4 8BC1 E0D6"
	$"8F63 9E26 8685 BFFB 734D 3FF4 F90F FE8C"
	$"5AF6 9CB7 AD08 6780 1C79 8C3D CD7D E9FF"
	$"0004 DCFF 0091 37C7 7FF6 18B5 FF00 D106"
	$"BE77 8C6D FD8F 57D6 3FFA 523A 328B FD6E"
	$"3F3F C8FB 0A5F F532 7FB8 DFCA BF3D 3F61"
	$"7F0A 586B DFB4 1788 35EB DB74 95BC 3969"
	$"7975 6DBC 0216 692E 0421 87FB 415D B07B"
	$"57C1 E435 5D1C B331 947F 922B EF72 5FA9"
	$"EEE3 A2A7 89C3 A7DD FE16 67E8 7019 207A"
	$"D782 FECE FF00 1CBC 57F1 57E2 0FC4 DF0C"
	$"F881 2CFE C5E1 8D4B CBD2 CC30 F96E 9019"
	$"A688 239F E338 881D C79C 93DB 8AF1 B078"
	$"3A75 F098 9AF2 DE9A 8B5F 3924 FF00 03AE"
	$"B559 42AD 382D A4DD FE4A E7A2 7C68 F06D"
	$"978F FE15 78A7 C297 D6EB 28BB D367 7877"
	$"0CEC B845 2F0B 8F75 7553 F98E F5F3 37FC"
	$"1393 C216 6343 F15F C429 6DD5 AEE7 B98B"
	$"4882 5239 8E35 459A 500F FB46 48B3 FEEF"
	$"BD7A D80C 54A1 9063 2927 F6A1 FF00 933D"
	$"7F08 9CB5 E927 8EA5 3F27 F87F C39F 5AF8"
	$"CF5B 9BC3 3E0E D7BC 476E 8AF3 697A 5DD5"
	$"E44A C32A 5E38 9994 1F6D C067 DABC EBF6"
	$"56F8 A9E2 6F8C 9F07 ED7C 69E2 F36C DAA7"
	$"F68D DD94 AF6F 1085 1D63 2854 EC1C 0387"
	$"C71E 95E4 D3C1 C279 754C 53F8 A338 C57A"
	$"3526 FF00 2475 4AAB 5888 D2E8 D37F 7344"
	$"1FB5 CF83 34EF 18FC 06F1 2B5D DB23 DD68"
	$"707F 6BD9 4A46 5A29 2220 BE0F A347 BD4F"
	$"D47A 5725 FB03 7FC9 0B93 FEC3 979F FA0C"
	$"55EA 53AA E7C3 B3A6 FECD 556F 9AFF 003B"
	$"9CF2 8258 F52E F1FD 4F73 F881 E229 FC21"
	$"E04F 1178 AAD2 3479 F49D 2EE6 F215 7195"
	$"3222 12B9 03A8 DD8C D705 FB2D 7C52 F127"
	$"C61F 8436 BE32 F16B 5B3E A9FD A175 6533"
	$"DBC2 2147 1194 2A76 0E01 C3E3 8F4A F329"
	$"E0E9 CB2D A98B 7F14 6718 AF46 9B7F A1D1"
	$"2AB2 5888 D2E8 D37F 8A35 3F68 FB18 F50F"
	$"80FE 3BB7 9543 2AE8 9713 E0FA C604 8A7F"
	$"0280 FE15 9DFF 0004 96F8 79A6 E9FF 000C"
	$"7C59 F13D ED13 FB4B 59D6 3FB2 6398 8059"
	$"6D6D E38D CAA9 EA03 4933 6477 F2D7 D057"
	$"DF70 0BBE 16AA FEF7 E88F 133C F8E2 FCBF"
	$"53EC 0F8D BE36 D47E 1BFC 21F1 8F8F 3478"
	$"A292 FF00 42D1 AEAF 6D56 51B9 3CD4 8C94"
	$"DC3B 8070 48EF 8AE1 FF00 635F 8C3E 28F8"
	$"EBFB 3FF8 7FE2 178D 1ED5 F5BB 992E 6DEF"
	$"24B6 8443 1C8D 1CCC A182 0E17 E5DB 9C71"
	$"9AFB DBFB D63C 2B7B B738 9FF8 28FF 00C3"
	$"8D27 C6FF 00B3 16BB AF5C DAA3 6A7E 1096"
	$"0D5B 4F9B 68DC 9995 2299 41EA 15A2 9189"
	$"1DCA 2FA5 4DFF 0004 DED2 2DF4 AFD9 27C2"
	$"92C4 8824 D42E B52B C9D9 460B BB5D CAA0"
	$"9F70 888B F451 53FF 002F 3E45 5FF7 7F33"
	$"D3BF 69CF 89BA D7C1 CF80 FE33 F891 E1B4"
	$"B76D 5B46 D3CC 965F 6843 2462 6675 8D4B"
	$"2E46 402F 9C77 C543 FB2C FC4C F10F C62F"
	$"803E 0DF8 91E2 CFB3 FF00 6C6B 3672 B5D9"
	$"B78F CB8D A48E 7922 DC17 A2E4 460E 0719"
	$"2714 F9BD EE5F 2279 7DDB F99C 37FC 1430"
	$"03FB 22F8 E41F 5D3B FF00 4BED AB33 FE09"
	$"B008 FD92 7C30 0FFC FF00 EABF FA5D 352F"
	$"F979 F234 FF00 975F 33EA 078A 3976 F991"
	$"ABED 60CB B803 823A 11EF 5F31 FF00 C146"
	$"ECA4 D4BF 65ED 574D 85B6 BDDE B5A4 5BAB"
	$"0E70 5EF2 2507 F36A 753E 064D 2F8D 7A9F"
	$"4178 1BC2 BA57 81FC 1BA1 F83F 44B3 8ED6"
	$"C346 B082 CA08 6318 0AA8 817F 3E32 4F72"
	$"4D7C EFF1 F3F6 97F1 C7C3 0FDA 9BE1 37C2"
	$"2D11 6C5B C3FE 2CF2 C6AD 1CB0 6F96 433C"
	$"ED04 6524 CFC9 B0AE EE3A F39E D4A7 2E48"
	$"AB0E 9C7D A49D FCCF A96B F2C7 F6C8 F0AD"
	$"8F87 FF00 6F7F 09EA 3636 C902 EBD7 7A15"
	$"FCC1 171B E617 0227 73EE 4469 9FA5 4621"
	$"7BAB D4D3 0BF1 B5E4 CFD4 EAF9 87F6 90FD"
	$"A37C 75F0 AFF6 82F8 39F0 CFC3 46C1 347F"
	$"185F A43A C79F 0799 24A9 2DCC 56EA A8D9"
	$"F931 BD9B 23A9 DBDB 20DD 4938 46E8 CE8C"
	$"14E5 67E6 7D3D 5F9C DFB7 1E9B 15B7 EDB3"
	$"F072 FE34 556B C5D3 4C84 7572 9A83 28CF"
	$"D01A 8C47 C1F3 4698 5FE2 7C99 FA33 5F33"
	$"7ED0 BFB4 678D FE18 7ED0 DF08 7E17 F86E"
	$"2B23 A478 B2F1 1359 F3A0 F324 9239 AE63"
	$"B68C 2367 E4DA 599B 23A9 033C 641A AD53"
	$"D9C7 9BD0 9C3D 2F6D 3E5F 27F8 23E9 9AF8"
	$"4BF6 D8F0 85AE BBF1 F3C1 D621 007D 76C2"
	$"DACE 565E 1B06 E9A3 CE7D 42B1 C579 3C41"
	$"173C 138A DF9A 3F8B B1E9 E412 E4C6 27FD"
	$"D97E 0AE7 DC5A 4E97 63A1 E976 7A36 996E"
	$"9059 D8C0 96D0 4483 6AA4 68A1 5400 3B00"
	$"0578 2FC6 4F8F 5E30 F027 ED17 F0C3 E16E"
	$"871D 9B68 FE26 6FF8 9A89 21DD 232C 9218"
	$"9363 E7E5 DA46 EE3A F7AE EC6D 59E1 A945"
	$"D2FE 68AF 9369 3FC0 E6CB E843 175A 6AAF"
	$"F2CD FCD2 6D7E 27D0 B5F9 93F1 57E1 E69B"
	$"E01F F828 8785 21D1 ECD6 DECB 59F1 0697"
	$"ACC7 1A2E D459 266F DF05 03A0 3223 37D5"
	$"AB3C C637 8D39 7692 FC4D 7299 DA75 61D1"
	$"C1FE 07E9 B535 5110 B32A 282E 72C4 0C6E"
	$"3803 27D7 8007 E15E 89E4 9F8C 7FF0 5215"
	$"CFED 6FE2 CC0F F971 D2BF F48E 3AF9 7D90"
	$"9200 C579 F2F8 DFA9 EBC1 7EEE 3E88 89D1"
	$"811F 266A 3707 D315 5177 2268 6018 079A"
	$"546C 74AB B232 D9DC B76D 2EDF 981E 7357"
	$"5497 19C8 AE5A 9B9E 9D09 5E25 3BA5 5E7F"
	$"4AA0 DB40 E6B6 A3AA 38B1 76B9 1305 FE1A"
	$"0703 1DEB A3A1 C29E A686 84C4 6B5A 6F3F"
	$"F2F9 07FE 8C5A F69C D092 2EE7 81B0 FDE3"
	$"1F7A FBCB FE09 B9FF 0022 6F8E FF00 EC31"
	$"6BFF 00A2 0D7C D718 37FD 9157 D63F FA52"
	$"3A72 8FF7 B8FC FF00 23EC 297F D4C9 FEE3"
	$"7F2A F863 FE09 F63F E2E9 7C47 FF00 AF33"
	$"FF00 A595 F019 47FC 8AB3 0F4A 7FFA 533D"
	$"EC57 FBD5 0F59 7E47 DD69 F797 EB5F 97DE"
	$"1DFD A0FC 5FF0 0BE2 8FC4 4BAF 09E9 9A55"
	$"EB6B 7AC5 C473 8BF4 91C2 88AE 662B B763"
	$"2FF7 CE73 ED5D BC25 81A7 9943 1585 AADA"
	$"8C94 6F6D F495 FF00 432C D2B4 B0EE 9548"
	$"EE9B FC8E CA6F F828 6FC5 EB9B 792D DFC3"
	$"1E14 0B32 346C 4417 1900 8C1F F96B EF5E"
	$"DBFF 0004 F589 61F8 29AA 22F6 F11D C0CF"
	$"AFFA 3DB0 FE95 E8E7 991D 0C97 2AAA A849"
	$"BE79 42F7 B74B F64B B986 0F19 3C66 222E"
	$"692B 27B7 9DBF C8F7 4F8B 5FF2 4AFC 65FF"
	$"0060 0BFF 00FD 10F5 E39F B009 CFEC ED0F"
	$"FD87 F50F E50D 7CC5 0FF9 1257 FF00 AF90"
	$"FF00 D264 7A33 FF00 7B87 F85F E68F 52F8"
	$"FBFF 0024 43C7 DFF6 2E5F FF00 E896 AF2B"
	$"FD82 3FE4 8649 FF00 61CB BFFD 062A D287"
	$"FC88 AB7F D7C8 FE4C 53FF 007C 8FF8 5FE6"
	$"7ADF C6EF F923 7E37 FF00 B015 DFFE 806B"
	$"CABF 6081 8FD9 EE21 FF00 51FD 43F9 4351"
	$"47FE 4475 BFEB EC7F F496 39FF 00BD C3FC"
	$"2FF3 47A6 FC7D C7FC 290F 1EE7 FE85 DBEF"
	$"FD12 D5D0 7FC1 2E46 3F65 A83F EC61 D4BF"
	$"F424 AFB3 E01F F77A DFE2 FD11 E4E7 9F14"
	$"7D0F 64FD AB79 FD9B 7E25 0FFA 96EF 7FF4"
	$"59AF 2DFF 0082 680D BFB2 6F87 867F E621"
	$"A87F E8F3 5F7B F6FE 4784 BE0F 99DE FEDA"
	$"601F D95F E25E 403F F124 90F3 FEFA 5739"
	$"FF00 04F4 E3F6 47F0 37FB B7DF FA59 352F"
	$"F979 F21F FCBB F997 FF00 6F5F F934 AF88"
	$"9FF5 E117 FE94 4549 FB03 E7FE 1917 E1CE"
	$"7FE7 CEEF FF00 4B6E 297F CBCF 97EA 3FF9"
	$"75F3 297F C142 C67F 646F 1CE0 679D 37FF"
	$"004B EDAB 37FE 09B9 FF00 2697 E19F FAFF"
	$"00D5 7FF4 B66A 3FE5 EFCB F51F FCBA F99E"
	$"D5F1 B7E2 23FC 25F8 49E2 DF89 30DA C773"
	$"3787 F4A9 EF21 8642 423C AAB8 8C36 39DB"
	$"B8AE 71CE 335F 8CBE 37FD ABFE 3E7C 4FB8"
	$"44F1 EFC4 1BDD 534C 37D6 FA83 E90B 1C50"
	$"5979 90CA B2C6 A234 5040 0CA3 1C93 EF58"
	$"62AA 38DA 28DB 0B4E 324E 4CFB 0BE1 BFFC"
	$"143B F699 F8BF AAFF 0062 FC37 FD9D F49D"
	$"76E1 0813 35BC 9742 1833 D0CB 3330 48C7"
	$"FBC4 1AF6 DB2F D9A3 C79F 17FE 2FF8 37F6"
	$"81F8 FB3E 8BA2 6ABE 0F82 35B0 F0F7 87A4"
	$"92E6 3691 2579 51EE 6E65 EEAE FF00 7230"
	$"41DA 3E7E A0D4 253A EB55 6429 C618 77A3"
	$"BB3E A2AF CDAF DBBE 141F B697 C279 028D"
	$"CD1E 9593 EB8D 41B1 5788 F83E 689C 27F1"
	$"3E4C FD25 AF82 FF00 6DE0 4FED 7DFB 3B90"
	$"3FE6 2B63 FF00 A74B 7A78 8F83 E6BF 3161"
	$"7F89 F27F 91F7 A57E 7AFE DD20 1FDB 1BE0"
	$"87AE CB2F FD38 9A58 8F83 E68A C1FF 0013"
	$"E4FF 0023 F42A BE2E FDAC 34E1 73FB 59FC"
	$"12BA D993 0DDD 873E 98D4 A335 CD99 CF93"
	$"0F7F 38FE 68E9 CA61 ED31 36FE ECBF 267D"
	$"A35F 37FC 69F0 0378 9FF6 8CF0 1F88 AF5C"
	$"269D A359 C321 CF47 985D 3155 F7EC 6B87"
	$"88EA 7B2C 1737 F7E1 FF00 A522 B279 F262"
	$"1B5F CB2F C8FA 42B8 AF13 7C1C F007 8C7C"
	$"6DA2 7C45 D7F4 66B8 D7BC 3DB3 FB3E E44F"
	$"2279 5B5C BAFC A0ED 6F98 93C8 AF66 AD18"
	$"578A 8CD6 89A7 F35A A382 857A 9879 3953"
	$"766D 35F2 7A33 B5AF CFDF DA72 E42F FC14"
	$"23E1 15B7 F7BF B2DB FF00 26A5 AC31 AAF4"
	$"D7AA FCCE ACB5 DAAB FF00 0CBF 23F4 0ABE"
	$"16FF 0082 8AFE D53F 13FE 0F6B 1E1E F871"
	$"F0BF 5A1A 1CFA 9E9E FA9D FEA5 1C49 25C0"
	$"4F30 C714 7117 0550 651C 9382 7A01 8E73"
	$"AE22 6E9D 36D6 E638 3A4A B555 196C 7E69"
	$"78D3 C69E 2EF8 89E2 09FC 59E3 9D7E F35B"
	$"D62E 9112 7BDB B60D 2C8A 8A15 0120 0180"
	$"A001 C741 5CD3 E031 AE18 B6F5 67A7 38A8"
	$"E8B6 1801 EED5 132E 09C1 CD69 17A9 8BD8"
	$"8986 3BD3 3381 EF5A AD4C 1A1D 149B 7A9A"
	$"B826 381C D4CA 1766 F4AA 5911 4D26 7A91"
	$"54A4 393C 55D3 5631 AEF9 88F3 CD38 6370"
	$"26B5 3951 7B41 DA75 CD37 FEBF 21FF 00D1"
	$"8B5E D785 A760 3C0D FEF9 FAD7 DE7F F04D"
	$"D1FF 0014 6F8E BFEC 316B FF00 A20D 7CC7"
	$"187F C8A2 AFAC 7FF4 A476 E53F EF71 F9FE"
	$"47D8 32FF 00A9 93FD C6FE 55F0 C7FC 13F0"
	$"A8F8 A9F1 1933 F31B 2271 EC2F 3FFA E2BF"
	$"3FCA 3FE4 5598 7A53 FF00 D299 EEE2 BFDE"
	$"A87A CBF2 3EEB 4FBC BF5A FCD3 F861 F027"
	$"46F8 F9F1 DBC7 FE19 D6FC 43A8 6911 585D"
	$"DFDE A4B6 5147 23BB 7DAC A6D2 24E3 186C"
	$"FE15 D5C2 D8C9 65F4 7198 9824 DC63 1767"
	$"B6E4 6654 5579 52A6 DDAE DFE4 7B5D D7FC"
	$"1387 C036 B693 DD0F 8A1E 2626 189E 400D"
	$"9DA0 076A 9383 C7B5 741F F04F 57F3 3E09"
	$"EA4F C64F 88AE 091E 99B7 B6AE 9CC3 3EAB"
	$"9E65 359D 5A6A 3C92 86CD BBDF 9BBF A19D"
	$"0C14 7078 9828 C9BB A96F E563 DD3E 2C7F"
	$"C92C F197 FD80 6FFF 00F4 43D7 8E7E C063"
	$"1FB3 C423 FEA3 FA87 F286 BC5A 1FF2 24AF"
	$"FF00 5F21 FF00 A4C8 EC9F FBDC 3FC2 FF00"
	$"347A 8FC7 C207 C10F 1E96 381F F08E DF8F"
	$"FC82 D5E5 9FB0 4FFC 90D9 7FEC 3977 FF00"
	$"A0C5 5743 FE44 55BF EBEC 7F21 4FFD F23F"
	$"E17F 99EB 5F1B 7FE4 8E78 DFFE C057 7FFA"
	$"01AF 2AFD 827F E4DF 22FF 00B0 FEA1 FCA1"
	$"A8A3 FF00 224A DFF5 F63F FA4B 2A5F EF71"
	$"FF00 0BFC D1E9 BF1F BFE4 87F8 F7FE C5DB"
	$"EFFD 12D5 D07F C12E 411F B2CC 19FF 00A1"
	$"8752 FF00 D092 BECB 805F FB3D 65FD EFD1"
	$"1E46 79F1 47D0 F65F DAB3 FE4D BBE2 4FFD"
	$"8B77 BFFA 2CD7 977F C134 FF00 E4D3 BC3F"
	$"FF00 610D 43FF 0047 1AFB DFB7 F23C 35FC"
	$"37EA 775F B6A3 AC7F B2BF C4A2 F9C1 D159"
	$"7F13 2201 FA9A E6FF 00E0 9E33 4737 EC91"
	$"E08F 2CE4 21D4 233F EF2D ECE0 FEA2 97FC"
	$"BCF9 7EA3 FF00 977F 3367 F6E7 B1BB D43F"
	$"650F 88D0 595B C93C A9A6 2CBE 5C6A 5D8A"
	$"A4D1 B360 0E4E 0027 F0A3 F616 B0BD D37F"
	$"64EF 8756 BA8D ACB6 D3FF 0067 CF2F 9722"
	$"9460 AF75 3BA1 C1E7 9565 23D8 8A3F E5EF"
	$"CBF5 0BFE EBE7 FA19 5FF0 509F F934 8F1C"
	$"738E 74EF FD2F B6AC DFF8 26E8 C7EC 99E1"
	$"91FF 004F FAAF FE96 CD45 FF00 7B6F 2FD4"
	$"AFF9 71F3 FD0E C3F6 D919 FD94 7E27 0FFA"
	$"8149 FF00 A1A5 7E27 69F6 526A 1A85 A697"
	$"0BEC 7BDB 88AD 95B1 9DA6 4708 0FE6 6B93"
	$"17F1 AF43 AB07 F03F 53F7 E7E1 AFC3 CF0C"
	$"7C2C F056 95E0 8F08 E916 FA76 9FA6 DB24"
	$"4121 40A6 470A 37C8 E7AB BB1C 92C7 924D"
	$"7837 ED37 FB40 F8B7 C0FF 001C BE0F 7C18"
	$"F09D CAD9 43E2 BD6A D6E7 5AB9 500C AF69"
	$"F694 8D6D D33F 755C 87DC 7AE1 4018 C9AE"
	$"B9BF 670D 3C8E 4A71 F6B3 F7BC D9F5 0D7E"
	$"6F7E DDCB BBF6 CEF8 4BED 1E99 FF00 A706"
	$"A8C4 FC1F 3469 8457 A9F2 67E9 0D7C 1DFB"
	$"6D93 FF00 0D79 FB3C 0C7F CC56 C7FF 004E"
	$"96F4 F13F C3F9 AFCC 584F E27C 9FE4 7DE3"
	$"5F04 FEDA BA54 97BF B5E7 C18B A500 AC31"
	$"D9E7 FF00 0604 D658 FAAE 8D1E 65DD 7E66"
	$"B974 1CEB D976 7F91 F7B5 7CBF FB44 7843"
	$"58D6 FF00 685F 857A D69F 007B 7D3E EACD"
	$"A76C FDD5 5BE4 63FA 0AE1 CFAB 470F 8453"
	$"96DC D05F 7C92 3A72 457C 56F6 F767 FF00"
	$"A4B3 EA0A F95F F69F F883 3E81 F1BB E187"
	$"8461 7DAB A9DE 5ACB 21FF 0067 ED45 7FA5"
	$"73F1 351F 6F82 8C3A 7B4A 6DFA 2926 6DC3"
	$"B08C F1BE F2BA 519B FBA2 CFAA 2BE3 4FDB"
	$"1353 F109 F8D3 E07F 0D69 7E27 D5F4 BB3D"
	$"56D6 0827 1637 9241 FEB2 ECA1 6C29 00B0"
	$"07A9 F4AE CCEA 528E 17DD 7677 5B7A 9864"
	$"8A2F 16B9 926A D2D1 FA1D 9EAB FB0E E97A"
	$"AA14 6F8E BF14 A0CF 7875 D753 FCAB E47F"
	$"1E7C 1D87 E097 EDD7 F08B C2F6 DE34 F12F"
	$"89D2 E2F3 4CBB 379A F5E1 BBB8 426E 1D76"
	$"2B9E 8836 E40F 735A C708 B0F0 4B9D CB5E"
	$"AC16 31E2 6A39 7228 E8F6 47EA 857E 577F"
	$"C153 016F 8F7E 1F53 C81E 13B7 C0F4 FF00"
	$"4BBA AD71 CED4 7E66 3962 BE22 DE4C F8B2"
	$"584B 060D DBBD 673C 7BB3 918C 715E 7D2A"
	$"9A1E BD6A 6446 30A3 19A8 5D31 C8AE 9833"
	$"8E71 B103 81DE 987D 6B74 7349 5860 CF38"
	$"EB4B E690 3045 68E3 7335 2B0D 67DD D7B5"
	$"309C 0A12 B591 3525 CC33 07A8 A507 3D6A"
	$"CC4B DA0F FC87 34DF FAFC 83FF 0046 2D7B"
	$"5E45 2407 8391 9661 EE6B EF1F F826 F0C7"
	$"837C 75FF 0061 8B5F FD10 6BE6 38C3 FE45"
	$"157D 63FF 00A5 23BF 2A5F ED51 F9FE 47D8"
	$"32FF 00A9 93FD C6FE 55F9 D7FB 13F8 C6CF"
	$"C33F B44E A5A3 DFCC B0A7 89A1 BDD3 A266"
	$"3806 759B CD8D 3EAC 6320 57C3 E414 9D6C"
	$"B730 82DF 922F EEE6 7FA1 ED63 A5C9 88A0"
	$"DF77 F8D9 1FA2 E0E0 83E9 5F3E 7C0D FD9D"
	$"7C49 F0BB E347 8FFE 206A B7D6 12E9 3AF3"
	$"CA34 A582 4669 8A4B 3999 BCD5 2A02 15F9"
	$"57A9 CF27 8AF2 3018 E861 70D8 9A32 4EF5"
	$"2292 F552 4F5F 95CE BAD4 5D4A 94E6 BECB"
	$"7F91 E95F 1B7C 75A7 7C39 F855 E24F 156A"
	$"53AC 7E4D 8CB0 5B29 3832 DCC8 A521 8D7D"
	$"4962 3E80 13DA BE74 FF00 8274 F89E C9BC"
	$"2DE2 BF02 19D4 5DDA 5F45 AAC7 193C BC52"
	$"46B0 BB01 E8AD 1203 FEF8 AF4F 0585 94B2"
	$"0C55 64B4 E687 FE4A D5FF 00F4 A39A B544"
	$"B1B4 A1E4 FF00 1FF8 63EA CF18 6872 789B"
	$"C23A E786 E295 6393 55D3 6EAC A376 FBAA"
	$"F244 C8A4 FB02 467D ABCF 7F65 EF85 1E21"
	$"F82F F092 DBC1 3E2A 9ACE 4D4C 6A17 57B2"
	$"FD92 532C 4A24 2814 062A 3270 80F4 EF5E"
	$"4D3C 6421 97D4 C235 EF4A 7192 ED64 A49F"
	$"E68E A952 6EBC 6A74 49AF C8CF FDAF FC67"
	$"A7F8 47E0 4788 2DAE 6E15 6EF5 F45D 26CA"
	$"2CFC D234 8C0C 840F 458C 3927 E9EB 5CC7"
	$"EC15 FF00 2436 4FFB 0E5D FF00 E831 57AB"
	$"4E93 870E CE6F ED55 56F4 4ADF 9DCE 7724"
	$"F1A9 768F EA7A DFC6 DE7E 0E78 DC7F D40A"
	$"EFFF 0040 35E5 5FB0 5E7F E19F 6207 FE83"
	$"DA87 F286 B968 FF00 C892 B7FD 7D8F FE92"
	$"CD25 FEF7 1FF0 BFCD 1E9B F1F3 FE48 8F8F"
	$"3FEC 5EBE FF00 D12D 547F E093 DE3A D3B5"
	$"2F84 1E26 F87A 6E50 6A5A 1EB8 D7FE 4960"
	$"18DB 5CC5 1856 03A9 0248 6504 F6CA FA8A"
	$"FB2E 027F B8AB FE2F D0F2 73B5 771F 4FD4"
	$"FADB E337 826F BE24 7C27 F177 80B4 BB88"
	$"A0BD D774 7BAB 1B69 2624 46B2 BC64 26E2"
	$"0121 7763 2403 81D8 D713 FB20 7C1A F127"
	$"C06F 80DA 0FC3 AF18 4D65 26B5 6925 CDC5"
	$"E7D8 A569 6157 9256 60A8 ECAA 5B0B B79C"
	$"0E73 F5AF D039 7DEB 9E0F 32E4 E53C FBFE"
	$"0A45 F11B 4AF0 6FEC D5AA F85E 7B95 5D4F"
	$"C637 36FA 6D94 3BBE 7654 9527 99F1 DD42"
	$"47B4 FBC8 B5F3 AFFC 13CF F6CA F87F F0C7"
	$"C2F3 FC12 F8AD AD45 A1DA 2DF4 B7BA 36AB"
	$"7071 6CBE 710D 2C13 37FC B2F9 F73A BB7C"
	$"BF3B 0246 0670 9CD4 6AA6 FB1B C29B 951D"
	$"3B9F 74EB 5FB4 A7EC FBA2 E8F2 EB1A AFC6"
	$"4F06 7D84 4658 98F5 7B7B 8322 91D1 238D"
	$"99A4 247F 0A82 4FA5 6D7C 26F8 9DE1 9F8C"
	$"5E04 D3FE 20F8 363B 85D1 7516 992C CDC4"
	$"5E4B B245 2B45 BB67 F082 5090 0F38 C640"
	$"E95B 29C5 BB26 60E1 24AE D1E4 9FF0 5055"
	$"DDFB 2578 DD7D 4E9D FF00 A5F6 D59D FF00"
	$"04E2 5DBF B27F 8657 D2FF 0055 FF00 D2D9"
	$"AB3B FEFA DE5F A9AF FCB8 F9FE 875F FB6B"
	$"607E CA9F 1373 FF00 4039 3FF4 34AF C5BD"
	$"0258 6C35 FD27 51B8 3B62 B6D4 2DA7 9093"
	$"C054 9518 9FC8 1AE5 C669 35E8 75E0 95E0"
	$"FD4F E836 D6E2 3BBB 686E A16C C734 6B22"
	$"91DC 1191 FCEB E6AF 8F5F B337 8CBE 277E"
	$"D29F 0A7E 3068 179A 647A 3F84 A48B FB5D"
	$"6E26 749C 2C33 99E3 3120 521F 7166 5E4A"
	$"E3AF 35DB 522E 71B2 F238 694D 5395 DF66"
	$"7D35 5F9C 3FB7 52EE FDB3 7E13 7B47 A67F"
	$"E9C1 AB2C 5BB5 3F9A 36C1 FF00 13E4 CFD1"
	$"EAF9 AFF6 86FD 9BBC 63F1 63E3 D7C2 2F89"
	$"BA05 DE98 9A4F 832F 927D 592E 6664 9424"
	$"7711 5C21 8942 90E4 98D9 704A E383 EB5A"
	$"5683 A90E 55E5 F999 50A8 A94F 99F6 7F91"
	$"F4A5 7CC5 F1DB C15A 4788 FF00 682F 05F8"
	$"8753 9CEE D222 B58E 28C1 FE33 72CE 0FF2"
	$"AF0B 89EB CB0F 824E 3BB9 C17E 27AD C3F1"
	$"BE2D B6B6 84BF 23E9 DAF1 CF8A 53DC 7FC2"
	$"D7F0 559D BC65 B7C9 0BB9 FEEA 8B85 C9A7"
	$"C4F2 E5C0 27FD FA7F FA5A 31C9 A2A5 897C"
	$"CF4E 59BF FC95 9EC7 5F07 FEDB 4FE2 483F"
	$"697F 871A 8F87 74BF B53E 95A4 C57F 2B32"
	$"E542 A5EB 123F DE21 4E3E B5A7 124E 9D3C"
	$"BE75 2A3B 28B4 FEE7 B7CC EDE1 5E67 9946"
	$"31EB 192F 935A BF92 3EE7 D375 0B5D 5B4F"
	$"B6D4 ECA4 125B DD44 B346 C0E4 1561 91FC"
	$"EBC4 3E37 7ECF 9AD7 C51F 8A9E 09F1 C69D"
	$"A8DA 5BD9 684F 10BE 12B3 090A 4738 986C"
	$"0010 C48D C392 3071 5D39 8D09 E618 58AA"
	$"0D6A E2FE 574D FE07 9F97 5786 0312 E559"
	$"3D14 97CE CD2F C4F7 8AFC FDF8 DB63 A878"
	$"DBF6 ECF0 2F89 74CB 1927 D334 1D57 4CD3"
	$"FED0 0654 B472 1694 83E8 19C8 CFAA 9ACB"
	$"38C7 D2C1 7B08 D495 9CE6 92FE BEEF BCDB"
	$"27C2 4B13 2AD2 4B48 C1B3 F40A BF2D 7FE0"
	$"A916 B2C9 F1D7 4099 14E0 7856 0527 1FF4"
	$"F575 FE35 D798 3B51 D7BA 31CA 55F1 1F26"
	$"7C5C 5339 5EDE B55E 6B70 4606 315E 5462"
	$"E323 DFA8 934A DD4A 6F6E 39C8 E9FA D559"
	$"61DA 33DA BAE1 2382 B42C 5691 062A 164C"
	$"703B 5754 5E97 3826 3395 ED4C 639E 48AD"
	$"CC1A 13B1 A630 CAD1 D4C9 8D19 5183 CD0B"
	$"8E4D 3259 7B42 6FF8 9E69 BC7F CBE4 3FFA"
	$"316B DAB7 7B53 423C 31BE F1FA D7B9 7ECE"
	$"BFB5 25E7 ECF5 A46B 7A45 B782 20D7 86B5"
	$"7715 D192 4D45 AD3C A289 B368 0227 DD9C"
	$"E73C 5799 9BE5 CB35 C24B 0AE7 CB7B 6B6B"
	$"ECD3 DAE8 E8C2 E23E AD55 54B5 ED73 D75F"
	$"FE0A 4DAA 1465 3F07 ACC6 E047 FC87 9FBF"
	$"FDBB 57C7 ADA9 5D8D 59F5 AB39 64B5 B9FB"
	$"535D C4F1 3956 85CB EF52 AC39 041C 60FB"
	$"579B 91F0 F432 4F69 FBCE 7E7B 6F1B 6D7F"
	$"377B DCE8 C663 9E33 97DD B5AF D7FE 01F5"
	$"8FC3 CFF8 2877 8A74 4D36 0D33 E237 8423"
	$"F104 9028 4FED 1B29 C5B5 C480 7792 3605"
	$"19BD 5815 CFA6 726B B2BE FF00 8291 784C"
	$"5BB1 D2BE 17EB 725C 63E5 5BAB D823 8F3E"
	$"EC9B 8FE9 5F3B 89E0 4E7A CE58 7ACA 34DB"
	$"D9A6 DAF2 5DFC B63D 0A79 CDA1 69C2 F23E"
	$"65F8 D5FB 41F8 EFE3 B6A1 04BE 279A 1B3D"
	$"2EC9 99EC B4AB 4DC2 0858 F05D 89E6 4931"
	$"C6E3 F805 1C57 29E0 4F1D F89F E19F 89ED"
	$"3C61 E0ED 4DEC 753B 3242 B81B 9244 3C34"
	$"7229 E1D1 8750 7F9D 7D7E 1F2C C3E1 B05F"
	$"504A F0B3 4FCE FBBF 57F8 1E65 4C44 EA55"
	$"F6CF E2B9 F5A7 86BF E0A3 912D AC71 F8CB"
	$"E1A4 AF72 A30F 2E95 78A1 1CFA 88E5 195F"
	$"A6E6 FAD5 DD63 FE0A 3BA1 8B56 1E1C F861"
	$"A949 7583 B7ED F7D1 4718 3EA7 CB0C 4FD3"
	$"8FAD 7C54 B816 5ED7 DDAE B93C D3E6 B7E4"
	$"7AF1 CDD7 2EB0 D7F0 3E58 F8B1 F193 C6FF"
	$"001A 35F4 D7FC 677E 8E20 568E CECE DD4C"
	$"76F6 884E 488D 093C 9E32 C496 38E4 D7A6"
	$"FC09 FDAF 6F3E 0778 21BC 1707 806D F594"
	$"37B2 DE7D A64D 4DAD 8FCE 146D D821 7E9B"
	$"7AE7 BF4A FA6C 6E45 4B13 97C3 2FA7 2E48"
	$"C6D6 76BE D7F3 5BDE ECE1 A58B 953A CEB4"
	$"95DB 3ACF 19FE DF3A 978D 3C21 AD78 45FE"
	$"165A DA2E B363 3591 B85D 65E4 3107 5C6E"
	$"0BF6 71BB 1E99 15CD 7C0A FDAE EFBE 0778"
	$"053C 0507 802D F594 5BEB 8BEF B53E A6D6"
	$"C499 427C BB04 2FD3 675C F39E 95E5 C384"
	$"E30C 14F0 7EDD FBD2 52BF 2F64 D5AD 7FD4"
	$"E879 8B75 555E 4D95 B7FF 0080 74DE 3AFD"
	$"BBB5 0F1D 782F 5DF0 649F 0C2D 6C97 5BD3"
	$"E7B0 370B AC3C A621 2215 DE10 C037 6339"
	$"C646 7D6B C3BE 10FC 5EF1 E7C0 DF1A DB78"
	$"F7E1 EEAD F61D 4A05 3148 AEBE 6417 3092"
	$"3743 347D 1D0E 07A1 0402 0820 1AF5 323C"
	$"A564 B4E5 08D4 E6BB BED6 FD59 862F 11F5"
	$"B69B 56D0 FBBF C29F F057 8B11 651C 7E3B"
	$"F835 77F6 D55C 3CBA 36A3 1B44 E7B9 11CE"
	$"14A0 F6DC D8F5 3537 897F E0AF 1A2F F67C"
	$"83C1 9F06 7526 BE2A 4236 AFA8 C514 4A7B"
	$"12B0 8766 1ED9 5CFA 8AFA 178A 496D A9E7"
	$"AC25 FAE8 7C35 F19F E377 C45F DA03 C5CF"
	$"E35F 889A BADD 5D2A 186D 2D60 5315 B594"
	$"39CF 970C 793B 4679 2492 CC79 624D 7E83"
	$"7FC1 3ABC 37F0 3FE2 87C0 95D1 FC41 E04F"
	$"0BEA BE29 F0D5 FDCD BEA2 D79A 7C13 5CBC"
	$"52C8 D2DB C84B 2962 9B1C C60F AC4C 2A29"
	$"353A 9EF7 535A F1E4 A5EE F43E 80F8 97FB"
	$"1EFC 0DF8 8DE0 8D57 C1D6 DE05 D0FC 393E"
	$"A31A 88B5 5D2B 4CB7 86EA D9D5 832B A305"
	$"F518 23B8 2457 6BF0 6BE1 568D F04B E1A6"
	$"85F0 C340 BCB9 BCB2 D121 78D6 E6E7 6896"
	$"6679 1A47 660A 0019 676C 0EC3 039C 5752"
	$"A718 CB99 1C4E A4A5 1E56 7CC1 FF00 0534"
	$"F8CF E1AD 03E1 427C 1B82 F63B 8F11 789A"
	$"E6DE E25B 5460 CD6D 670C 8243 2498 FBBB"
	$"9D11 541F BDF3 1ED5 F377 ECF1 FF00 0507"
	$"D4FF 0067 EF85 9A6F C2EB 6F85 36BA E47A"
	$"74F7 538B E935 B6B4 3279 D33C B8F2 C5B3"
	$"E31B F1F7 8E71 9E2B 8EAD 7F67 5AE9 5F4B"
	$"1DB4 70FE D68A 4DDA EEE6 CFC6 1FF8 292E"
	$"A7F1 8FE1 7789 7E18 DC7C 1FB5 D2A3 F115"
	$"8B59 1BD4 D79A E0C1 9653 BBCB 36AB BFA7"
	$"4DC3 AF5A F8CC 2A1C 8232 0F18 3D2B 9AB5"
	$"6F6C D3B5 8ECC 3E1F D8AB 5EE7 DB7F 023F"
	$"E0A6 3E23 F86F E14B 0F05 7C4C F06C DE27"
	$"B5D2 A05B 5B3D 4ACA E561 BCF2 9000 8932"
	$"C9F2 4A40 006F DCA7 0390 4E4D 6AFC 51FF"
	$"0082 A3EB 7E24 4D3A C7E1 AF81 6E74 4B48"
	$"6FAD AEAF E6BE BC43 7375 0C72 ABBD B47E"
	$"5865 8964 0A51 9F2C 76B1 C2D6 BF5E 6A16"
	$"B6A6 3FD9 E9D4 E6BE 9D8D 35FF 0082 B56B"
	$"6C70 3E04 D97F E14A FF00 FC87 5E25 E3FF"
	$"00DA 1EE7 F697 FDA3 BE1D 78DA F3C2 5178"
	$"79B4 ED43 4DD3 BECD 1DF1 BD0F 8BC0 FBF7"
	$"98A3 C7DE C630 7A75 A8A9 8CF6 AB95 C6DA"
	$"F734 A582 F60F 9D4A FA3E 87EC 1D78 8FC5"
	$"BF17 F8EF C0DF 1574 0D6F 44D4 606F 0EC9"
	$"A4CB 16A7 A6DC E764 EE25 051D 08E5 2450"
	$"480D C820 E083 C616 7B98 4F2A C0CB 1505"
	$"7716 B4EF 7693 FC0E 6CA7 0B0C 6E25 51A8"
	$"EC9A 97E5 A7E2 67F8 9BF6 B9D0 742D 3A69"
	$"EDBC 3573 2DCC 6990 249D 1630 7DC8 C923"
	$"F0FC ABE6 9D5B F684 B9D5 BC57 69E3 6D49"
	$"96E6 617B 1DCF 921B 6290 8C08 8C70 768C"
	$"0C77 FC6B F35C F78A 259C BA50 A14D C610"
	$"9293 BBD5 BE9B 74DF EF3F 4BE1 CE11 7848"
	$"4EBD 695E 524D 2D36 4FF5 3D56 7FDB E354"
	$"B8D4 6DB4 8F0F FC29 8B51 BCBA 9022 4635"
	$"865C 03DC 916E 78AD 8F8B 5F1F 2D7C 36FA"
	$"3F8A F55D 12DE 2D66 D444 DF61 8EEB CCCE"
	$"1C39 4F33 6023 3823 3B7D F15D 79AF 17CF"
	$"1B86 549D 049F 345F C57D 534D 7D95 FF00"
	$"00F2 6A70 6AC0 62A8 D1A5 5DCA 53BF 32E5"
	$"B5A3 DFE2 7B9C 7687 FF00 0513 F10F 897C"
	$"5307 85F4 7F83 7693 48C7 3713 7F6F 3ED8"
	$"13D4 E2D7 93ED 5BBF 107C 70BF 1135 FB3D"
	$"6A6D 052C A7B7 B4FB 20DB 2F9D B977 97E1"
	$"8AAE 393D 3151 C47C 4F3C C70A B04A 8A4E"
	$"5CB2 BF35 ECEF 74AD 65BD 8D70 BC39 1C97"
	$"13ED A15F 99A4 D5B9 6DBE 8FAB 3A1F 017C"
	$"4DF1 1F83 6016 1147 1DE6 9E09 22DA 6246"
	$"C27A EC61 CAFD 3047 B57A 027E D0DA 56DC"
	$"4BE1 ABE0 C3AE C963 65FC C91F CABA 327E"
	$"3196 030F 1C3E 269B 928E 9169 EB6E CEFD"
	$"BA3E C78D 8FC8 A38B AEEA D197 2B7B A7B5"
	$"CE6F C55F 1EB5 7D5A D5EC 343B 11A5 C728"
	$"2AF3 B49E 64D8 F45C 0017 EBC9 F4C5 79C6"
	$"8BAA C5A2 EBB6 5ADA C293 9B1B 85B8 11B3"
	$"6DDE 54E7 1BB0 719F 5AF0 339E 219E 678B"
	$"A789 AB0B 420D 3846 FE77 777D DD91 E9E0"
	$"32AF A8D0 9528 CB59 5EEF E56F C0F4 F93F"
	$"69BB 8407 1E11 8188 FF00 A881 FF00 E355"
	$"F387 ED0D 359F C73F 115B 7887 53F0 EC56"
	$"6F69 62B6 4A04 DE7E E557 77CE EDAB 8E5C"
	$"F18E D5DB 9BF1 C54C C70C A8C2 9723 BA77"
	$"E6BE DE5C A8DF 21E1 EA78 1C57 B79C F995"
	$"9AB5 ADBF CCF9 9BC4 BF06 6C60 3249 6D66"
	$"4039 C605 790F 88FC 2373 A448 C042 E141"
	$"C735 DB90 6733 C4BF 6756 5A9E AE73 93C2"
	$"34FD B505 F2EC 7392 C457 036F 4E0D 529E"
	$"DD8E EF6A FB7A 733E 2AA4 0A12 C3C7 4AA8"
	$"C837 1193 5DD0 D4F2 AA46 C464 0F53 4D38"
	$"3C57 5239 5A1A C001 C530 F4A7 D4CA 4869"
	$"0462 9AA7 3918 EB4D 6C43 2EE8 5FF2 1CD3"
	$"7FEB F21F FD18 B5ED 54D0 8F0E 6FF5 847B"
	$"D2B0 C103 2693 18F6 038C D281 DB15 0C10"
	$"7CDD 29DB 40C1 CFD6 87A1 6890 AF4A 7152"
	$"0741 51D0 A018 C75A 303A 8E2A 6C59 22C7"
	$"B872 2942 0EE2 B3BB 6325 8D00 1E94 EE47"
	$"6DD4 9971 1FB3 2011 D2B4 EDBC 37E2 3BDD"
	$"3A4D 5EC7 C39A B5CD 8421 8C97 70D8 CD24"
	$"0817 962D 2AA9 5181 D727 8EF4 9229 798B"
	$"A4F8 7FC4 3AFF 0099 FD83 E1FD 4F53 F231"
	$"E6FD 86CE 5B9F 2F76 76EE F2D4 EDCE 0E33"
	$"D707 D285 D135 87B0 9B55 FEC7 BFFB 0DB3"
	$"F953 5DFD 9A4F 2227 C81B 5E4D BB55 B240"
	$"C120 F22A 1A6C D168 EC2E A1A4 6AFA 3C91"
	$"C3AB E937 BA7C 92A0 9234 BBB6 92DD 9D0F"
	$"4650 E012 A7D4 715A BE0A F1CF 8D7E 1BEB"
	$"91F8 A7C0 5E29 D474 1D56 252A 2E6C 6631"
	$"B329 EAAC 3EEB A9FE EB02 3DA9 5DC5 E855"
	$"9495 99F4 7683 FF00 052A FDA9 ECE2 8B4E"
	$"9353 D0B5 899C AC51 34DA 3AF9 AEC7 000C"
	$"4457 7313 ED92 6A1F 1AFF 00C1 413F 6B4D"
	$"404D A0DF EBD0 F85E 62B8 963B 5D19 6D2E"
	$"A3C8 E0E6 605D 323D AB57 8AA9 6338 E129"
	$"5CF0 6974 AF88 5E38 BAB8 F13D C68D E26F"
	$"10DC 5EC8 CF36 A26D 2E6F 9A69 3A31 6982"
	$"B6E2 3A75 E3A5 645E E99A 8E95 70D6 5AAE"
	$"9B79 6372 A016 82EA 0782 400F 4251 C020"
	$"7E15 C734 F73B 61CB B222 5452 303A 0A90"
	$"26E5 DA10 62A5 F91A 20C7 CA38 E2A4 4427"
	$"1C54 5EDB 9448 B10F 3308 48CF F3AE A7C0"
	$"3E1B F12E B1E2 4B2F F845 9251 A95B DC47"
	$"35BC E83F D448 AC0A BE7A 6410 0FE1 5C98"
	$"AC44 3094 E556 ABB2 4AFF 00D7 CCE9 C361"
	$"E589 9C69 C7AF E5D4 FD00 F0BF 8C3E 2D78"
	$"06C2 3B8F 887F 16BC 47A8 5ECF 1F98 23BA"
	$"291C 63FD DC20 C8AE 4FC7 9F1D 2FB5 D5F3"
	$"B51D 6A4B E920 0C91 348C 3E55 3C90 3005"
	$"7E69 9B67 9986 39CA 8579 CB95 DBDD E8BB"
	$"74BF 4B9F 6793 F0F6 15D4 55E9 4159 689A"
	$"EA78 578D BE22 4F7D 6B32 AC84 8653 C66B"
	$"CE34 DF14 DD6A 16D0 5940 1A79 C49B 2148"
	$"F259 9C9E 38AD F2FC 128D 0752 4B66 9FC8"
	$"FAEA D8A8 61E5 1A09 E967 F81F 5F7C 2AF0"
	$"443F 053C 1ADE 3AF1 BF95 2788 F528 B7C1"
	$"0BF2 6042 3818 3D09 CD78 8F8C B5FF 0016"
	$"FC4B D7EE 5741 B29A FEF6 662B 1460 131C"
	$"593D 58D7 9919 42A6 25A9 E915 BBFD 3D52"
	$"FCCF 0B2E AB2C 555C 466B 2DB5 8C3C 92FF"
	$"0036 7AB7 C17F 85F6 FF00 0C34 398E B322"
	$"5CF8 82F0 EFB9 61CE D07F 873E D5E8 D1EA"
	$"76A8 0394 271C 29C5 678A AFF5 8AB2 AA95"
	$"937A 2F25 B1E6 D5A7 2AD2 BDEC 236B 8738"
	$"8D91 7D49 354A E3C5 36B1 6774 DB88 38C0"
	$"3C57 246A DE4B 5F90 53C0 39BB 2288 F132"
	$"5DB1 5886 01FE 2F4A 992E A431 F991 C839"
	$"1CF3 59B5 ADFB 1D73 A2E8 AE52 8CF7 33A0"
	$"EA4A 1E4F 3587 7DAA AB6E 456F 9477 159C"
	$"EEF4 475D 1A71 A8F5 326E 6EAC 6784 A5D1"
	$"DA54 123A 735E 5BE3 7D3F 4ABE 89CB 2AAB"
	$"1C80 3D6B BF2C 954A 1885 347A 0A8A 9539"
	$"41BD 19E1 BE22 D017 4F95 C2E3 9391 5C95"
	$"C92A 76F7 EF5F AFE5 F5FD BD25 27B9 F9A6"
	$"6786 FAB5 4712 93A7 5DDD 2A94 AA03 115E"
	$"D537 D0F9 EAD1 2B1A 6607 AD75 A671 490C"
	$"2BC9 E734 840D BD2A 998B 4444 D379 3D2A"
	$"8CD9 7742 FF00 90E6 9BFF 005F 90FF 00E8"
	$"C5AF 6AC7 B9A6 893C 4769 C9C0 EE79 A520"
	$"74A8 B8D0 EC71 C8C5 0A09 38A4 52D4 7804"
	$"52F0 4636 9ACD 9A24 3C06 55C9 E297 1C67"
	$"9CD3 1D84 2872 09EF 4E09 8393 DAA1 B651"
	$"3463 3C0A 784C F078 C548 EC3D 63E2 9C91"
	$"1527 9FC2 A7B9 6912 2A75 F41D BD6B F503"
	$"F620 D4F4 DB5F D91F 47F0 A6B7 186D 3FC6"
	$"BE2F D47C 2F70 1BFB B770 3AFE 64A8 51EE"
	$"D578 77EF 3162 17B8 BD44 FF00 8277 6812"
	$"FC23 F0D7 F626 A90A AEB3 E36F 196A FA6C"
	$"8186 196D B49B 7923 723D 85C0 6FFB F95F"
	$"3ACF A06B 527E C39F 1775 F83C 617F 0E99"
	$"0F8D CC72 68AB 6F6E 6DE7 7375 0012 3485"
	$"3CD0 46E0 70AC 07CA 323A D549 3E44 BC99"
	$"117E FB7E 6BF3 3E88 FDA4 BE17 7C00 F895"
	$"F173 E187 86BE 2C78 E7C4 9A76 BDE2 5F0E"
	$"5968 FA2D 8E8F 6D19 8E37 6721 25B9 95C3"
	$"603C 8E11 540E A093 C723 E6AD 13F6 5EF8"
	$"57E1 9F8B 1F10 FC09 F16F E26E A296 BE0A"
	$"9553 4DD3 744B 4136 B1AF 2B8D EA61 870D"
	$"8DAA 5036 07DE 61C8 009A 9AB0 8395 EFD7"
	$"5FB8 AA53 9A8D 92E9 A7DF D4DC F89B FB2C"
	$"F85F E165 DFC1 DF89 DF0E F5BF 1659 69BE"
	$"34F1 469F 651D 8F89 2C63 B7D4 B4D9 BED0"
	$"8D1C 8571 B4FD D66D AC08 E179 20E0 70FF"
	$"00B6 DE91 AAE8 BFB4 9F8A 6C35 6F11 DDEB"
	$"D771 C764 5EFA EA18 6192 4CDB A100 A428"
	$"A830 0E38 51D2 B1AB 1E48 B49E 975F 91D3"
	$"467E D249 B5AD 9FE0 D1F5 1FC0 897E 39C5"
	$"FB08 E8CF FB3D 095B C57F F093 5C67 CB4B"
	$"763F 65F3 24F3 789F E4EB B3DF D2B2 FF00"
	$"6B1D 335D D6FF 0067 DF84 F67F B456 A3A0"
	$"689F 14AF F5F1 6973 A83F 92BF 65B0 7790"
	$"4934 E623 8F2D 22F2 5DF6 FCBB C71C E2B5"
	$"9733 A5EF 7C3C ABEF 305C 8AAF BBF1 733F"
	$"B8E7 F41F D8AB E037 C42F EDAF 0A7C 35F1"
	$"8FC4 4BBD 5B47 D31A FA2F 12DD E948 BA15"
	$"F481 4111 C726 D058 1271 F2F6 0C43 3639"
	$"E3FE 1F7E CBDF 03A6 F80B E1CF 8F3F 17BE"
	$"27EB 3E1D D3EF 7529 EC6F E1B5 844E 6765"
	$"6912 28AD 9522 67DE 4C65 8921 BE55 6E07"
	$"518B A14E E9DD F2D9 FE16 3758 9AB6 B72A"
	$"E6BA FC6E 1A27 ECD9 F003 47F8 03E1 3F8F"
	$"FF00 13BE 2078 AAC3 4FD7 350B CB49 2C34"
	$"DB68 A796 E025 D5C4 30AC 20A8 29FB B837"
	$"BB31 3DC0 C120 53FC 67FB 21FC 33F0 CFC4"
	$"9F03 0FF8 5C1F 60F8 65E3 BD36 4D56 C35B"
	$"BC8D 7ED4 BB16 36FB 2A00 BB5E 5712 A143"
	$"B738 0F95 2579 8950 A728 A7CD D9BF 4669"
	$"1C4D 4E66 B974 F792 F546 BF8C BF64 8F86"
	$"573F 07F5 EF8B 9F0B 2F3C 7F64 3C35 70B0"
	$"C96B E2BD 396D 46A0 8591 4CB6 F850 D8F9"
	$"C104 FA10 5457 B7F8 4BF6 7FF8 5BF0 63E1"
	$"8E8F E27B CF10 DF0D 5B5E D0A2 BE8E 078C"
	$"48EF 78F0 A48C A0AA 7CB1 2960 067F 3AF9"
	$"EE20 C261 EA61 EA7B 6A8E 3051 E6F3 DEC9"
	$"7CDD 8F67 2AC4 E223 28CA 9414 A729 3879"
	$"2565 26D7 CAE7 A5CB 1E97 1FC5 CF85 965E"
	$"2AD6 B52B FB9B CD1D EE74 C410 43E5 AC9B"
	$"398E 4C01 FBBD A58E 7939 02BE 61F1 4F85"
	$"7E09 78CB F680 F1FD AEB5 F107 5DD2 34AD"
	$"1E49 E79B 4D8E D639 351D 4750 F324 F360"
	$"B189 036E 8805 5C1C 6E25 8038 EB5C D1CB"
	$"B0D8 9A6E 9E22 7272 F697 72B2 FF00 9F70"
	$"D15B CAC9 69B9 EDE0 71F8 ACBD FB6C 3D38"
	$"F2FB 1D15 DFFC FD9A BBF9 DDBF 2472 5FB4"
	$"07EC EDA3 784F E187 873E 30FC 33FF 0084"
	$"CE4B 1D7A FDB4 F7D1 3C47 60B6 F7D0 1DB2"
	$"1593 0B8F 9498 8F07 390C A41E D4BF B2C7"
	$"C069 7C3B FF00 1733 C7F6 BB2F 9DCB 6996"
	$"3201 FBA3 D99C 1EF5 E767 D1A1 95E1 A786"
	$"A4FD E972 B57D D27B DFF2 2DE6 388C CA94"
	$"6B4A CA51 738B E5D9 BDAE BCBA 9EC1 E30F"
	$"0EB7 8CF5 36B9 F166 B0E2 053F 2DB4 072B"
	$"8F7F 4AA0 977E 1DF0 BDA7 D874 1B28 6CC7"
	$"DD25 065D FDC9 EB5F 9EC6 7539 6D2E B77F"
	$"3BFF 0056 3DBC 329D 5A50 C352 5CB0 8AB7"
	$"AF99 93A9 F8CB 4DD2 544D 7976 A1B1 9203"
	$"64FE 35CA 5EFC 75B3 F33E CF66 802E 719A"
	$"DA96 12A5 6BCE 0F44 7AB4 B00A 494A 5A1C"
	$"FDDF C5D9 AEAE 4C11 5C7C CC71 806A 6D3B"
	$"C532 EA57 1E4F 99BF 60DD 2303 C0F6 35D4"
	$"F2FF 0062 AF2D CEC8 C294 55A0 7470 789E"
	$"D2C5 3FD7 7DFE 83D6 A3BB F887 6B66 03AC"
	$"9C11 D335 C8B0 F394 B630 786E 77CC FA99"
	$"177F 135E 4809 49C2 A7A6 79AE 79BE 282D"
	$"BB15 9363 A9ED 9E6B BE96 5AE7 EEDB 52B9"
	$"6950 5A98 5A87 C4FD 3247 6DD3 B6FC 1C73"
	$"C572 9A97 8EE0 B90D E7C9 BB8F 94E6 BDAC"
	$"164B 529B E692 38EB 6694 29AB 459C 56BB"
	$"AEAD E1DE 5C1C 7BD7 177B 760C 8CE0 835F"
	$"7B95 D0F6 74F9 4FCF B3BC 57B5 9391 545D"
	$"171D 0532 401B 2D8A F5E3 1E53 E779 D48A"
	$"CDDC 6DA8 8A81 DABA 1339 6486 3718 E38A"
	$"630E C3A5 69BA 3268 8D94 5342 E4E2 ACC1"
	$"9774 2FF9 0DE9 C3FE 9F21 FF00 D18B 5ED3"
	$"83E9 5491 278A 1CF3 F534 9B79 C9AC DE85"
	$"242F 39CE 69E8 06EA 0A48 7E39 38A4 4191"
	$"F4AC 8B43 8EEE 18F2 0539 5803 C8E0 D2B8"
	$"C7F9 6CD8 3E94 E543 D715 2DDC B892 2A95"
	$"183D 4F4A 9546 3098 C9EE 7D2B 272D 6C68"
	$"9683 C00A 719E 6948 39A4 CB8A B0F4 EB5F"
	$"5278 23F6 8EF0 8782 7F65 8F0D FC3F B3BF"
	$"BA3E 34F0 FF00 C44B 3F15 25B8 B771 19B7"
	$"86E1 653F BDFB B921 48DB EF8A 709A 8DDF"
	$"9054 8732 4977 3DC7 52FD B47E 03AF ED31"
	$"E05F 16E8 17F7 D6DE 04F0 DE8F AD35 CC83"
	$"4E95 5FFB 4F50 7DD2 9116 3736 ED91 92D8"
	$"EA4D 7802 FC69 F01A 7EC8 5F12 3E0E 9BFB"
	$"9FF8 49BC 49E2 C1AB 69F0 7D99 FCB7 B6FB"
	$"4412 6E69 3EEA 9DB1 B707 9AD2 75A2 EF6F"
	$"3FC9 1942 8C95 AFE5 F9B3 AFF8 C7FB 45FC"
	$"2FF1 9FED 23F0 6FE2 6E85 A9DD CBA1 7836"
	$"1D1D 3569 5ECE 4478 CDBD D096 5DA8 465F"
	$"0BE9 D7B5 7A1E 87FB 54FC 14D4 3C71 F1C2"
	$"5B5F 1E6A BE07 BBF1 EC96 7268 5E32 B6D2"
	$"64B8 9E08 E285 55E2 D8A0 C919 DCA7 1C00"
	$"7793 9055 692A D0E6 7AF5 FD2C 53A3 3E55"
	$"A74F D6F6 395F 8B1F B467 C27F 147C 3FF8"
	$"43E1 8D17 C75E 27F1 16A1 E03F 1ADA 6ABA"
	$"B6A3 AF5A 482F 2FAD E394 B4B7 25B7 3824"
	$"E72A 9BB7 6DC0 EA31 5E33 FB59 7C4A F0AF"
	$"C5BF 8F1E 22F1 F782 EE66 B9D1 F518 ED56"
	$"0965 85A1 6263 8111 B28D C8F9 94D6 35EA"
	$"C651 693E DF82 3A28 5294 249B 5DFF 0016"
	$"8ED6 1FDA 07C3 9A4F EC61 A6FC 1FF0 F789"
	$"756D 3BC6 96DE 246D 4245 B412 C005 B179"
	$"09C4 EA40 39DC BF2E 6BC8 BE1F F8EE DF4C"
	$"F8A7 E16F 1C7C 425B DF11 D869 3AAD B5DD"
	$"F457 52B5 D492 C092 0665 1E61 3BB1 8CED"
	$"2704 800F 5AC6 7554 9C7B 248D 69D2 694B"
	$"BB6C FBAE C3F6 B6F8 1FA3 7C5D D6FC 7BA8"
	$"7C7D F1A7 88B4 6F10 69F2 5B69 FA0F F654"
	$"F0E9 BA00 2899 1E59 23CC 9094 C065 43C3"
	$"365B A57C CFE3 3F8B BE07 D5FF 0064 3F08"
	$"FC19 D3F5 19E5 F136 8BE2 79F5 2BA8 BECC"
	$"EB17 D9D8 5D05 6590 8009 3E72 71D7 93E9"
	$"5B55 C453 926A F7DF F168 C68E 1EA2 69F2"
	$"DB55 F826 7B74 5A1F C2AF 127E C29F 0834"
	$"0F8B 5E25 D5BC 3767 73AB 6A4D 69AB E9F6"
	$"7F6C 36D3 2DE5 E12B 2443 24A3 A161 9009"
	$"042F 6CD7 49E1 DFDA 57E0 B699 F15F C07A"
	$"368D A7DF CBE0 6F00 7876 E345 D375 8B8B"
	$"42F3 2DD4 8215 FB40 848D C142 43B7 38DD"
	$"976F 9715 957C 5D0C 228C A4F5 7CBF 768E"
	$"E694 7075 F16E 6A0B 44E7 6F37 B58E 834E"
	$"F1EF 8375 3F87 3E33 F868 FF00 157C 51E3"
	$"9D67 5B96 3B88 B54D 5ED2 48A1 650C AC22"
	$"8558 9312 2853 9C85 1B9B 8181 595F 1EBE"
	$"2AF8 6AE3 40F0 9E8B A35C 48F7 9A46 8C96"
	$"5708 F194 0B22 A22E 013D 7EE9 E457 C171"
	$"1667 4315 0A98 6854 726E 1149 B4F5 6AA3"
	$"93FC 363E D787 F28C 44AB D294 A0A3 1E79"
	$"4AC9 EC9C 125F 8AD7 EF33 FC4D FB4B 7C39"
	$"93E2 AFC2 3F15 DA5C DFDD 5AF8 5B4D 367A"
	$"AA47 6AC2 5491 9021 D8A7 1BC0 249E 3B0E"
	$"2BA6 F86D 79F0 C7C3 3F10 3E29 F8A3 4EF1"
	$"66A9 630F C408 E2BA B2D7 DF4E 30DD E9B2"
	$"B3CC 6782 34C1 7DBF 3444 3E06 48EC 4035"
	$"E853 CF30 1857 29D5 9B8B 94AF 1766 ED7A"
	$"718F 35BF BAD5 C78F C931 F4E8 C29A 827E"
	$"E59A BF6A B29D BD25 1763 73C6 DF15 BC0F"
	$"0FC3 5B1F 0B69 7E21 D4F5 9D42 C350 33BD"
	$"C6AE 8F2C B72A 7783 26F7 2DFD E180 4E40"
	$"15E3 1A97 C54B 78B7 B23A 6DC7 049C 60FB"
	$"0AF9 0CE7 151C C315 19E1 A6E6 9423 16E4"
	$"ACDB 4ACD BF37 BFCC F5B2 5C9E AC28 B55E"
	$"2A37 949A 4B64 9BBA B7A6 C723 A8FC 5C8E"
	$"185E 596E 159B 9DBF 3579 E6B7 F152 4999"
	$"9D66 504F 4F9A B970 5965 493E 692D 2E7D"
	$"1F2D 1C12 DFA1 C0EB 3E36 96F2 62F2 5F33"
	$"6472 339A E4AE BC57 3ABB AC6F 81CE 0FA5"
	$"7DB6 0329 8463 CAD1 F3F9 8670 F96D 4D96"
	$"744D 6996 2796 4918 DC48 42C6 0FF1 13DC"
	$"577B 6BE2 3834 5B28 B4C8 6E33 7137 CD72"
	$"F9E4 1F4A E2CC B07C D250 8AEB F91B 65D8"
	$"B6E9 B954 7B2F C599 D7DF 1100 676F 3498"
	$"A1F9 63E7 A9AE 7AEB C793 DCBB CB24 C401"
	$"D003 5B61 727D A524 6589 CE94 344C CBB8"
	$"F1B5 E3E2 3121 0879 EB54 2E3C 5133 217F"
	$"30EE FAD7 B587 CAE1 0927 63C3 C467 32A8"
	$"9D99 853E AF33 12CE 4F3C E6AB 9D4E 53F7"
	$"989F C6BD C861 A095 8F9A AB8E A976 466F"
	$"1989 0324 5559 86E1 91C5 7453 8C61 A238"
	$"6BD4 956D 594B CC65 6C83 C54A B759 C7CD"
	$"5D6E 9DD6 879C AA59 D98E 3221 C60D 2311"
	$"8CD4 DAC6 8E4A 447E BC66 98C3 22AD 3D0C"
	$"D8DE 08E9 5194 C1EB 548C 5A2F 6868 06BB"
	$"A6F3 FF00 2F90 7FE8 C5AF 6AD8 B57C C4D8"
	$"F0F3 D4F5 EA69 DD45 6726 52D0 704C F7A7"
	$"2A60 E41C D4F3 1489 0647 F0D2 6307 8EF5"
	$"2500 5663 B7B0 E6A5 5407 A8E2 A6E5 21EA"
	$"1F18 1CFB D380 2A39 1CD4 9714 4A87 7AF2"
	$"B83D 8D3D 4360 81C1 3D4D 6725 ADCD 22AE"
	$"8704 E393 F37A D3D1 4719 3924 E2A6 5A1A"
	$"21E9 102C 54F4 AD35 F0C7 8857 423E 271A"
	$"16A3 FD8E 26FB 39D4 BECB 27D9 44B9 E13C"
	$"EDBB 377F B39C D474 287E 89E1 CD7F C4D7"
	$"CBA5 F873 45D4 356B D286 4FB3 D8DA C973"
	$"2951 D4EC 8C13 81DC E2AB 189A 395A 3994"
	$"AB29 2AC0 8C10 4750 47AD 45DA B685 A5A8"
	$"A883 A1E8 2A48 D413 8538 26B3 66D1 44AB"
	$"191C 1393 EB4E 4047 5E05 43D7 4344 87A4"
	$"45C9 1B78 F5AB 30D8 4A70 4822 B294 9451"
	$"7183 7A1B 1A37 8475 7D7F 5083 4AD1 B4DB"
	$"BD42 F6E9 B643 6B6B 0B4D 2CAD E8A8 A0B3"
	$"1F60 2BAE D67E 0A78 F3C1 8D0B 78C3 C13A"
	$"E68A B71C 42DA 8584 B6CB 21F4 5675 009F"
	$"6073 5CB5 6ABF 66E6 93B2 DDF4 3AE9 D18F"
	$"B450 9492 6F65 D7EE 3AE8 753F 186A FE0B"
	$"D23E 1DEA BADC B378 7342 9E49 EC2C 1910"
	$"2C12 48CC CE41 0371 CB48 E792 7EF5 6D78"
	$"7FC1 7757 3751 59E9 BA7D C5E5 D4A7 115B"
	$"DB44 D2C9 27FB A8A0 93F8 57CC 6331 9531"
	$"73E5 BEBA 256F B923 DDC2 61A9 E162 E5B2"
	$"D5BF CD9E ADE0 ED12 4D02 D25B 9BE8 1E0B"
	$"90EC AE92 2947 4DA7 0548 3C82 0820 83E9"
	$"58DE 29D1 A4F1 F4EF 6F6D E5D9 A2F1 F699"
	$"0ED0 BEE3 D6BE 2311 579A BF33 7D5F E07D"
	$"565B 7A72 F6AB 64B4 F31B A0F8 17C2 9E09"
	$"7DF1 06D4 3516 196B B993 E51F EE83 C7E3"
	$"547C 41E2 FB68 58C4 27DC 3A9E 734E 5396"
	$"22B3 6F5F D0ED A4AA 57A9 ED2A 2D1F 43CA"
	$"3C4D F10A F350 BB31 89FC BB58 7200 0793"
	$"5C16 ADE3 A984 8D1C 33B3 05CF 7CD7 D665"
	$"7967 B4B2 6B45 A99E 3B31 A782 A7CA 72F7"
	$"5E25 BFBA 6243 360F 504D 546B CBBB 81B5"
	$"E422 BEBA 9E16 9D28 DB76 7C5D 5C65 5C44"
	$"9BBE 8569 6394 3F24 B647 E550 35B1 2B89"
	$"090A 3A9F 5F6A EBA4 E30E 8705 58C9 6E59"
	$"B2BA 68E7 5BB6 18F2 4622 5FEE D24F A9DD"
	$"33C9 3990 8793 8CFB 547B 18CE 7CCD 797F"
	$"5EA5 7D66 70A5 CB7E B728 CD79 2615 7921"
	$"79FC 6AA4 B76C 149E FE95 E853 8C62 B63C"
	$"9AD5 6527 7656 4B89 8925 CE7D 291E 4639"
	$"21B1 ED5D 1149 F438 E551 A444 F296 0149"
	$"CD30 03C0 15A2 491C EE5C C3B2 D9F9 5714"
	$"AC30 A413 93DE 8D2E 2575 72A4 B180 A48A"
	$"A850 A1CD 75C1 E879 95E1 66C9 164C 0E45"
	$"3BCD A250 EA10 9E96 250E 0A8C 0A50 011C"
	$"8A84 8DFC C6B6 3D31 4CC0 3D07 1564 B572"
	$"E688 3FE2 7BA6 103F E5F2 0FFD 18B5 ED79"
	$"FF00 6050 89B1 E225 30C7 E5EE 6931 9E31"
	$"59B6 2487 05A5 0483 8A92 D214 1627 1CD4"
	$"AAA0 72D5 2D94 380C AE54 53D5 0E33 5252"
	$"88F4 562B EC3D 29E1 030F 7F7A 9B94 8775"
	$"3C7E 3520 071F 5A89 3368 AB0A 14F7 A915"
	$"3215 97D7 159B 7729 1285 2A39 EC79 AFBB"
	$"3E06 4369 E2FF 00D8 FF00 48F8 277A 9113"
	$"F117 54F1 1D8E 98CF 8CA6 AB6B 0C77 967B"
	$"491C 1668 5909 F463 5A51 F89F A588 ACAD"
	$"14FC EFF7 19FF 00F0 4FAB 31F0 FEF6 DFC7"
	$"D7D6 E23D 53C6 BE28 B7F0 4692 B2A7 CC20"
	$"8A37 BBD4 9C03 FF00 5CE0 8F3D 9811 DEBC"
	$"FBC1 DF03 FC19 7BF0 E2EF E307 8A7C 1DE3"
	$"DF1C 8BDF 126A 1A64 9A77 83DE 243A 4C70"
	$"B03E 75D1 28EE CF26 F251 42AA E17E 63C8"
	$"AAB2 708D D6D7 7A6F D039 9AA9 269E F65A"
	$"EDD4 CBD1 BE09 FC25 BEF1 278E BC52 9E33"
	$"D735 1F86 1E05 B0B6 BE9A 682D 56DF 55B9"
	$"9EE5 9638 74FD B228 48E6 5959 91E4 C6D0"
	$"1370 033F 2D6B EF00 FECF 5E27 3E0F D6BC"
	$"1FE3 4D5F C296 5AA6 B0FA 6788 B4AD 6993"
	$"50BB D320 0BBD 6F20 6891 7CE8 9C7C 8011"
	$"9121 03A0 35CF 3F66 B77B EDE9 7B1D 1075"
	$"5EA9 68B7 F5B5 FF00 C8EE 356F D9E3 E1CF"
	$"887E 1E78 D7C5 BE0A F047 C51F 0C3F 832C"
	$"BFB4 2DB5 0F13 C486 CF5A 844A 1180 5F2A"
	$"3314 ACA7 7A85 2CA0 039A B1AF 7C16 FD9C"
	$"BE1C 2782 ADBC 6B73 E39D 4EEB C5FE 1BD3"
	$"358B B3A7 5C5A C31E 8E6E 6352 F27C D1E6"
	$"6F98 B154 E30A BC96 26B0 A9EC A0F9 E774"
	$"ADB7 5DDA FF00 826B 4A35 AAFB B0B3 777A"
	$"F4D9 3FF8 04FA 3FEC 830E 8DE2 FF00 1DDB"
	$"78A5 3C41 AEE8 5E07 B8B6 B786 0F0E DAF9"
	$"97FA B3DD 2096 D428 2184 29E4 B092 4720"
	$"EDE8 3922 A2F8 9DFB 3FE8 9E1D F036 9BF1"
	$"33C2 BA07 8AF4 1B3B AD49 F4AB ED1B C4B0"
	$"E2E2 DA61 1891 248A 5D89 E6C2 E323 2541"
	$"0C08 FA70 6269 B8D2 9E8E EAEE F6F7 7476"
	$"B7AE 8D9D D87A AA55 60AE ACEC AD7F 7B55"
	$"7BFA 6B63 A0FD 99EF FC35 E1A7 F16E 9BA8"
	$"789E 3F09 EB7A F68A 6C34 7F10 3C6C CB63"
	$"2970 5C6E 5198 F7A8 0378 C630 79AF 449B"
	$"C35F 17BC 21F0 FF00 C556 37FA FE9B F11B"
	$"C25A 8DA0 4B9B 9875 B6D5 069D 2EED C974"
	$"8AE7 CC8D 971E 8077 3D2B CEA7 5AAD 5C3A"
	$"7426 9B8A 9734 2F66 D3BE B6EB A7CD 58ED"
	$"AB4E 9D3C 4355 A0D2 938F 2CED 749A B697"
	$"E9AF DF73 0A0F 04FC 30F0 3786 F41D 4BE2"
	$"243A FEA3 A9F8 8ECF FB4E 2B6D 2A68 ADD2"
	$"CECD 9888 A462 EA4C 9238 0582 F031 D6BD"
	$"3BE1 7F84 7C3B F0F7 C7FE 2AB4 9AFB 58BB"
	$"F33C 233E A7A3 DFD9 3470 39D3 E587 7B31"
	$"CF29 703E 50A4 1DA1 9589 ED5C D87C 2E1A"
	$"8D6A 72BC B9A2 D735 ADBC A2DA B76E 56AC"
	$"FB9A E2B1 188A B4A7 1B47 9649 F2EF F664"
	$"93BF 7E65 AAEC 748F A178 1FC4 9F0F FC2B"
	$"672C 7E20 58EE B5AB A47B 8927 80CC 32E9"
	$"E6B4 CFB4 EE18 6047 7CEE 2692 D3E0 C787"
	$"EDAD FC4F 6F79 7121 9348 9258 2C22 240F"
	$"B44B 1C6F 310C 31CF EE90 3718 EB5E 6FF6"
	$"460F 309D 3AB4 F995 E314 EF6D FD9D E3B2"
	$"DDB5 67DD 9B7F 6A62 F070 9517 CBA4 A4D5"
	$"AFB7 3DA5 BF64 EEBB 23CF 3C65 69F0 F2FE"
	$"C7C1 569E 21D7 EE74 46D6 ED26 D46E 1ED6"
	$"112C AB68 1996 048A 30A4 B492 94C2 9391"
	$"F303 8E2B C9BE 24FC 3BF0 F4BF 07FC 47F1"
	$"57C3 3E12 F1E7 84A5 F0E5 CDB4 4D6F E284"
	$"063D 4619 D8A6 F84F 968C AEA4 02C3 95C3"
	$"0C1E F578 2CAB 0B57 9DDA 5CE9 27A7 C31B"
	$"4232 D74E ADB8 AED6 3DBA 398E 3301 4A9C"
	$"66E1 C8E5 6D7E 395E 6E3E EEBF 6525 27A6"
	$"B738 8F8A FF00 093E 19E8 37DE 17F8 67E1"
	$"0D43 C51A B7C4 0F1B D9E8 5776 6279 218F"
	$"4ED3 9AF1 6332 2CA4 2879 4B6E 765C 0C22"
	$"6DC9 6393 5BF6 DFB2 47C3 FD73 C5B7 3F08"
	$"34FF 0008 FC62 B3D7 11A7 B3B5 F1AD F694"
	$"5345 BABE 895B EFDB F940 C56A EEA5 524F"
	$"30B6 0AB1 E2BE DB09 81A5 4BDD A69B 5B7C"
	$"FBFA 2D0F 91C6 E695 EB25 3ACE 2B79 5BBA"
	$"D345 E6F5 7E5A 1F20 CB7E 96B3 4D60 2DF3"
	$"2DBC AF0C 849E 03AB 1560 3D79 06A8 CFAB"
	$"DEEE F2D5 5547 A8E6 9D3C 1ABF 34DE A555"
	$"C7B5 1B51 5723 8751 D537 EC62 193B 8039"
	$"ABF0 4D6D 364E 5F70 EAA4 D554 A518 7F0F"
	$"6270 B88A 9517 EF47 9577 0423 0515 0C8A"
	$"C301 8640 AC61 A6A6 F555 C8F6 07C9 0BC5"
	$"46F0 2B31 2579 AE98 CD6C 7154 A774 CA92"
	$"4406 4918 A81A 318C 8CD7 4459 E7D4 8D88"
	$"B68E B484 9032 2B53 9F96 C481 98C6 B81D"
	$"3BD2 365B 9C7E 3475 1EC4 4D19 3C54 32DB"
	$"B103 02B5 8CAC 6156 9F31 1880 91D3 A527"
	$"93CE 315A F39C FECA C395 3152 8048 E054"
	$"365A 8B19 8C1C 119A 455E 7D05 171F 2B2E"
	$"E823 FE27 BA70 3FF3 F90F FE8C 5AF6 BC2D"
	$"55D9 0D1E 207E F119 E84F 3499 2D8E 2A2E"
	$"4A1E 3E53 EB4E 4404 D4B3 443C 4633 C75A"
	$"7943 8018 67E9 52B5 18E0 871B 573F 876A"
	$"9154 84DB FCEA 6F62 C722 EC07 9A78 4058"
	$"91DA A0B8 A1C1 76AF 0BCF 7A91 540F 98F3"
	$"C74A 9A86 887A 056E 306A 4545 040E 82B3"
	$"D2C5 C513 2A75 61F3 7B1A F6DD 33E3 6699"
	$"E19F 83BF 0CFC 3DE1 E9AE 53C5 7E07 F1BD"
	$"DF89 9834 4443 E5B2 A794 03E7 E6C9 5219"
	$"7D09 F5A2 3539 6FFD 752A 54F9 D2FE BA1E"
	$"A3AE 7ED3 5F09 57F6 85F8 65E2 6F07 596A"
	$"7A6F C3BF 05DD DE6A D730 BDB1 331B FBF9"
	$"259A F645 8C75 F9DE 3418 EC9C 715C 47C3"
	$"4F16 7C2E 4D1D A6B4 F8B7 E2DF 84DE 3483"
	$"54BA 9E5D 6749 B4BB BF83 57B2 91F7 448F"
	$"1412 A98E 48F9 1823 6907 9CF4 152A B4E4"
	$"EF7B 767D B6FF 0022 2346 6A36 B26F AAEF"
	$"ABBF E67A 76AF F1AB E1EF C4AF 1678 D3C3"
	$"9E20 FED8 83C2 7E32 D0B4 AD2E 7F10 0B18"
	$"FEDF 26A3 60C1 E3D4 A7B6 4215 BCD6 CABA"
	$"29CE C0B8 E7A3 7C0F AC7C 02F8 37E2 FF00"
	$"065D F87E D2FF 00C5 371A 4EA1 7379 ABF8"
	$"9A5D 3DAD 5C2C 9098 A04B 4B49 5C8C 42C4"
	$"4B97 1B8B 0E09 E00F 26B6 6587 F68A 72BD"
	$"D3DA DD39 AF7B FA5F 4EE7 A747 2FC4 7B37"
	$"4E29 59AD 5DFA F2DA DF7D B53A 2B5F 1E7C"
	$"35B5 D27C 75E1 FF00 127C 71F1 AF8C 6FBC"
	$"5DA0 DC58 5BEA FA8E 9B71 F66B 33BD 2448"
	$"85BC 92B4 85DD 9002 E36A 2ED1 8182 71B5"
	$"F133 C3FF 0006 7589 3E1C 5CF8 EFC5 5AC6"
	$"8B77 A7F8 1B42 6B9B 5B6D 30DE AEA3 6FE4"
	$"02A9 1481 8086 4E19 4970 5704 1F5A C2AE"
	$"230F 569B E6AB 2B2B 5E56 F36F 6F3D BCB7"
	$"37A5 4711 4671 70A7 14DD ECAF A6C9 6FE5"
	$"BF9E C52B 2F8E 5A67 8ABC 41E3 EB5D 6B53"
	$"D73C 2961 E31B AB4B CB1D 4B49 2F2D C698"
	$"F688 2181 6548 DD5A 58DA 0555 70A7 3919"
	$"1EDC DFC4 2D6F C35A 8787 74EF 0AE8 7E33"
	$"F137 8BAE E3B9 7BBB ED67 5596 E618 586D"
	$"DA90 C16B 2C8D B40E 58BB 7CD9 381C 74F3"
	$"F159 842B 5193 94DA 9BBA 5157 B6B2 6EEF"
	$"E4ED 6EE7 A187 C054 A15A 3151 8B8A B3E6"
	$"D2FA 452B 6D7D D5EF DAE4 9F0B 351F 0469"
	$"B69A E785 FC7F A549 2697 E208 2389 753B"
	$"4823 92EF 4D9E 362C 92C5 BB9D A771 0EA0"
	$"8C8C 75C6 2BB7 D275 CF85 9F0A B45F 1137"
	$"837C 4FAB 78A3 57D7 F4B9 7484 12E9 C6C2"
	$"D6DA 290A 9779 0392 D238 DA30 00C7 5E99"
	$"AE1A 15B0 708C 6A49 B556 09A4 92D2 57BD"
	$"9B7D 2D7B 3F24 AC6F 5E8E 2673 9538 24E9"
	$"CDA6 DB7F 0DAD 7497 5BDB 4F36 CA97 5AD7"
	$"C32F 881E 19F0 D45E 31F1 4EA1 E1AD 5BC3"
	$"5A72 68F2 9874 D6BF 8EFA CE32 4C26 32AC"
	$"0C72 0525 4EEF 97BF D2DE 9FF1 C7C2 D3FC"
	$"4BD7 75B9 62BA B3D1 DFC2 73F8 7747 8994"
	$"4922 A889 6387 CCDB C02C 4166 2380 5BBD"
	$"278D A10A 7ED5 36E5 2B73 2B7C 3CB1 69D9"
	$"F5E6 6EFE 4850 C162 2BCB D8D9 595D 45DF"
	$"7E69 26BD 2CB4 F333 1BE3 8F85 E4F8 64BE"
	$"1F4D 7AE6 CFC4 5A36 A777 716F 6C6D 0C91"
	$"5EC3 36CE 9283 88CA ED3D 473D AAC7 8D3F"
	$"6C3F 0CC9 ADFC 3ED5 AC12 E8FF 0067 CEB7"
	$"DE2A 531E DF3E 778E 3B79 9506 7E65 F291"
	$"88FF 007F 15CD 80C4 5382 54E0 DB6E 349E"
	$"DB4A 9B49 FDF1 5BF9 D8F7 EB64 3539 B9EB"
	$"5924 EAA7 AEF1 9C5B 8BF2 B49A 4D79 5CE4"
	$"74FF 00DA 27C0 36BF 1F35 3F88 535C DFE9"
	$"FE15 8F44 7F0D 7876 EA2B 5135 D693 1081"
	$"6282 ED21 3D59 5848 DB7A 812B 6338 C1E6"
	$"FC4D F173 E175 C7C2 CF89 1F0F 2FFE 33F8"
	$"C3C5 FADF 892D AD6E AD35 BD53 4CB8 16D2"
	$"4B6D 2974 B386 1925 7962 DFB8 9696 4214"
	$"7181 C73F 4983 C451 AAEA 7BCD 46F3 B2B6"
	$"8D34 926F D36F BBCC F1B3 0C2E 2292 A6B9"
	$"2327 CB4E F2BE AB95 DDA5 FE27 ADFD 6FD0"
	$"F25F 8AFF 00B4 168E 9F19 3C15 F13B C102"
	$"4BA9 3C29 A478 7E31 15CC 662D F736 5046"
	$"B346 7BED 2559 777A 1C8A EE35 8F8D 3F08"
	$"750F 13EB 1F17 9FE3 EFC5 ED52 CF51 3737"
	$"F65F 0E56 4BFD 3CDB DE4B 9658 65D4 92E7"
	$"CA36 B1C8 D91E 580F B154 75C8 AFA5 C338"
	$"D38B A8DE 8DDD 1F1B 8E4E BCA3 429A BB8A"
	$"B33E 4186 E5D2 E1CD C139 91D9 DB92 7927"
	$"2793 C9FA 9E6B 5E35 87CB F906 7777 AC71"
	$"71E5 69F7 3AF0 0D4A 2E2F 7892 C56C CA55"
	$"F040 F5A7 5C41 F669 23B9 5E99 C1AE 1955"
	$"F7EC 7A71 A4D4 1CFB 3B93 DD23 C6DB E350"
	$"5319 CFD6 AB7D A32B 875E 9DA8 A71E 78AF"
	$"20AB 3719 356F 317E D36C C369 C83E D4C0"
	$"C992 3F5A D793 94E7 F697 4412 C4CF C267"
	$"19CD 4122 60F4 C56F 4DD8 E4AB 1E6D 4856"
	$"3001 C8E0 F02A 278C 4698 CE6B A20E E734"
	$"D590 A877 4445 3385 E077 ED54 8C5B 4ECC"
	$"4638 EF4C 249E A702 AFA1 121A 4F40 B484"
	$"0E94 D19B D868 503A 9A52 580F 9455 1086"
	$"B763 8A1B 8C11 46C3 65CD 0C8F EDBD 34FF"
	$"00D3 E41F FA31 6BDA 3755 2919 33C4 D908"
	$"2437 1834 A806 EC9F 4A81 0F50 AA79 A7AA"
	$"81DE A5B2 921C 3008 CF7A 9003 8014 D426"
	$"5243 D58A F418 F534 A09C 9C8E 2A5D CD12"
	$"B926 30A0 05E2 9E0F 2368 E6A6 4FB1 AA1D"
	$"F306 C632 6A44 4F97 38E4 F515 9B91 4977"
	$"2644 1BB8 A942 8760 B8E8 2B27 25B1 B455"
	$"F544 B146 09DA 3EB9 A94A 2632 0026 A1BE"
	$"86B6 B0B1 2B37 C9B7 A9AE 9FC3 BA04 93C8"
	$"19A3 04D7 1E32 AFB2 A773 AF09 4BDA 4D5B"
	$"63D3 74FD 0D6D A00E 1803 8F4A 8AE0 9120"
	$"C720 E474 AF96 8D57 524D BE87 D349 7B38"
	$"A443 1C17 0F21 5442 E7B0 0335 E9B6 DE17"
	$"F1AF 8D56 C753 F14E A723 C363 650D 85AF"
	$"9982 C96F 10C4 718C 0FBA A381 5CF8 BC7A"
	$"C2C2 CF5B F40A 743D AC93 92DB A9D6 697E"
	$"1DD1 F4AB 6DB6 F6A1 E77E 199C 678A AF73"
	$"E05F B55C 37F6 72ED 91F9 54C6 0135 E1BC"
	$"44E3 3F68 BAEE BB1D 9A47 7303 50D2 EFB4"
	$"89DE 0D46 031C 918C 6DE9 F8D5 09AE E189"
	$"3E61 C377 CD77 460D 38B5 EA45 D38E 873B"
	$"AAEB F140 72A7 2002 0735 CEC5 AE4B 3CEC"
	$"1463 7290 0E6B B161 24F0 F27E 4187 AF0A"
	$"789A 7AFD A472 F7B0 EBDA 96AD 6DA6 68F1"
	$"CB2E A73C A238 1154 B649 3DF1 5D77 C67F"
	$"84DA A7C2 0D23 4AD5 35EB F8EE EFF5 08C3"
	$"CD6E A31E 5B63 A1A2 1561 1AB4 6845 7BD2"
	$"D1F9 27B1 ED66 58C7 42A4 A0F5 E64D FC92"
	$"D4F1 3BBF 105D 5D4A 0469 B59B E500 F415"
	$"AD25 AAE9 5649 7264 5B92 CB96 3D76 1AFA"
	$"6AD4 6386 54E9 C3AE E7CE E071 32C7 4AA5"
	$"69E8 A0B4 5DEE 7396 7E19 9F5A BD92 F638"
	$"0BF9 84E3 8E2A 7BBB 34D2 E4FB 1CF6 FE5C"
	$"8A39 06BB 9E25 559A C345 EB13 CCA5 97AC"
	$"252F ADB5 A49B D4E7 7588 90E6 58D0 29EA"
	$"6AD6 8282 FA35 5670 31C7 5AF4 2B37 F56E"
	$"6974 3C8A 118B C772 A7A4 8E8B ECD1 4002"
	$"2FCC 1464 E6AA 5ECB 1B40 4003 806B C7A7"
	$"794D 367D 2558 2853 71F2 2AD8 CC2E 2D4A"
	$"3BF2 848A 8668 98E5 BA64 F4AE E8BF 6752"
	$"513C B6FD AD28 C9EF 620F 2F0F F32D 2342"
	$"33F2 B62B A549 491C 7C8E F61C A250 9B77"
	$"8C7D 29AD 13E0 B139 1494 ACEC 2941 A5B1"
	$"55C1 008E C3BD 5793 91C9 AEAA 699C 35B6"
	$"2147 C1D9 EB4E 239A D5AD 4E48 3BC4 42A7"
	$"3C8A 610D 9A13 D097 AE81 E592 A1D7 18A6"
	$"98DF 3C8A B499 2D01 E38C 7348 738C 814C"
	$"9B0D CE47 20E6 90F0 06E0 467A 714E DAD8"
	$"16A8 BBA2 955D 6F4D 073F F1F9 07FE 8C5A"
	$"F66D CBEF F955 A819 33C5 4E4B 6369 EB4F"
	$"0986 E9DA B26C 2C4A 57BD 3D55 42F4 E4D6"
	$"4F63 4487 A296 C702 A4DA 54F6 A91A 43C2"
	$"313D A955 5581 2477 A2F7 358A B126 14F4"
	$"14E5 4247 B564 CA48 9110 839C D4E9 1336"
	$"0468 ECE4 E02A 0C93 9F6A 893B 2B9A C237"
	$"D0BF 71A1 6A9A 6C62 7BDD 32E6 DE17 E8EF"
	$"1B28 3F89 1502 01BD 4E4E DE79 1FD6 B9FD"
	$"AD3A C9F2 34D7 75DC EB95 1951 9A55 559F"
	$"E87A F7C1 DF81 92FC 468A 6D67 54BA FB1E"
	$"9303 6011 90D2 11D7 15D3 F8F7 F677 D02D"
	$"2C25 B9F0 66A5 2C97 10A9 668A 43F7 B1E9"
	$"5F15 8DE2 79E0 F315 874A F4E2 ECFE 7B9F"
	$"5781 E1F8 6230 8DBF E234 DAFD 0F24 D234"
	$"098C E56E A1C4 A8F8 7523 A1AF 4CD0 B435"
	$"8552 410A D7A7 99E2 A2D5 A1B1 C580 C3B8"
	$"B6E5 D0E9 7EC2 648B 6A82 08E9 B6A4 D2BC"
	$"197B ADDD 64EE 8A05 E19B BD7C FCF1 0E9A"
	$"727F 12D8 F663 454F 6D8F 4CF0 DFC3 3403"
	$"6585 8801 065A 7947 5FA5 76DA 2F80 356B"
	$"A426 1799 C2B6 3E51 85AF 1672 AB8B 968A"
	$"F364 D5C5 52A1 1693 D11D 6DBF C35B 8625"
	$"DEC3 3B40 FBC2 B43F E111 B30F 0CF2 DBF9"
	$"3241 F280 A3BD 75D2 CB2B D35C B58F 06AE"
	$"6D1A 92B4 4F3C F881 E139 EE6E A5BC D414"
	$"7929 C798 AA49 C578 C7C4 0F02 EA9A 75B1"
	$"D43C 38EF 796E EA49 001D CB59 E0F1 0A8D"
	$"7F67 89D1 5EDF E47B 9097 B7A3 1953 6792"
	$"9B7B EBB9 F64C 1D5D 4E0A B035 D0E9 1E18"
	$"924B 88E3 F28C 93CA 408D 1412 49F4 AFA7"
	$"AD38 D3A7 74F4 39A9 439A 5CD2 D2C7 D41E"
	$"00F8 71E1 5F83 3A09 F887 E2FB 485B 5C92"
	$"22D6 C8E0 131E 471C 1AF9 07F6 85F8 AD71"
	$"F10F 5B97 7C86 5512 1E3A 851E 82BC 9CAE"
	$"94B1 1994 1FF2 FBD2 F2BE 915F 25F9 8FDB"
	$"CF11 0AF8 CABA DFF7 70F4 5BBF 99E1 37CB"
	$"74F2 6D40 5238 CE32 2A7D 3753 BBB3 6786"
	$"795A 589C 60A9 E6BF 49AB 4A35 2928 BDD6"
	$"BF91 F394 6B57 A15A EB44 F43D 3BC2 FAD6"
	$"93A6 6971 2141 2487 9DA3 A8AC BF1A BC5A"
	$"B46E F2DB C692 6328 EBD7 F1AF 90A1 87A9"
	$"0C7B A926 7E81 8AC4 51AB 972A 14D6 96FC"
	$"4F34 B7B2 D475 498D A5B4 6CC4 1219 F1C5"
	$"7516 1E0B 8ECE D84A F745 671D 466B E9F1"
	$"F8E8 E1E3 EC61 AC99 F139 5655 5319 55D7"
	$"A9A4 629D BD4A F3DE BC45 ED67 7F99 7BFA"
	$"D66C F76D BB91 9045 1428 E8A5 DCD7 138A"
	$"DE3D 8834 BB9F 2EF1 E17E 164E 456D A223"
	$"828D C8CF 5A9C 5271 A974 6781 929D 2B3E"
	$"8559 E20A 7F76 6ABA A907 9A69 BB68 2AB1"
	$"B4AE 87BB 3630 075A 6EDE 3FA5 691D 8976"
	$"7121 9828 C928 3755 1954 3E43 71F4 AEAA"
	$"775B 9C15 EDD0 87EC 724C C36A 1C7A D68A"
	$"68B2 797B 9E4C 0038 AD67 5545 A89C 74E8"
	$"B936 FB1A DA17 8774 EBF9 556E DA4C 13D8"
	$"D7A1 697F 07FC 2BA9 B287 B99E 30DD C1AF"
	$"0732 CD31 183A 9684 6E8F 7303 96D0 C542"
	$"F50E A2DB F654 F0E6 A09B A1D7 E745 6F53"
	$"4EBA FD8F 2DC9 3E47 8AD4 2E38 DC0D 79EB"
	$"89AA DD39 D335 9E43 86E9 268C 8BFF 00D9"
	$"0759 8A2D F61E 28B4 948E 8A55 AB9F D47F"
	$"65AF 88F6 4824 81AD 6E33 FDDC 8AEE A3C5"
	$"1879 7F1A 1638 EAE4 328A BD19 9953 7ECE"
	$"5F14 2220 B694 1F23 B118 1556 5FD9 FBE2"
	$"9467 0FA2 9751 E845 772E 22C0 B57E 6672"
	$"BC8B 15D1 22C6 8FF0 17E2 843A D69F 20F0"
	$"F394 1750 B31C 8E00 75AF 5CFF 0085 3BF1"
	$"13FE 800D FA57 451C FF00 0538 E933 1A99"
	$"362E 1BC4 F984 6D0F B413 924D 3FBF 35DF"
	$"27A9 E622 4519 073D A9EB 1A90 09CF 152E"
	$"E55A E382 E385 E869 E8B9 ED53 7E85 A8D8"
	$"9045 CE73 F953 D63C 0070 33E9 5973 B5A1"
	$"A243 F69C 903A F615 2A20 DB8F E2F5 F4A5"
	$"2765 7345 1BA1 C102 A02E 381C B1F4 AF7D"
	$"F803 E09D 0347 807C 47F1 8C51 DC27 22C2"
	$"DDC6 413F DE23 D457 CEF1 2E3A 782C 138D"
	$"3769 4DF2 AF46 B5FC 0FA1 E1CC B9E3 B18A"
	$"1BA4 AFFA 7E67 A6F8 A3E2 5785 FC41 6B26"
	$"8BAD E8F6 9756 B2E7 6A94 036F A1E3 BD7C"
	$"FDF1 27C2 1E1D D151 357F 0A4C EB6B 3F12"
	$"44DC ED6E F8AF 90E1 CAF8 AC3E 2638 77FC"
	$"3A97 F934 B747 DAE7 F925 3FA9 4EBB 7EFC"
	$"16FE 573D 97E1 9F89 5749 F025 8DB4 2C15"
	$"00DC 474C B1A7 EABE 368C DC00 AD86 4FBD"
	$"EE2B C8C5 61DD 6C5D 48BF E67F 99EF 65F4"
	$"210C 3D2A 8FF9 63F9 239D 5D0A D6FF 0054"
	$"7D46 04CA 4E77 10BD 8D75 FA67 84AF 1E3F"
	$"3DA1 6489 7EEA FF00 1357 AB3C 6463 087B"
	$"57E4 7CAE 2B0E A8E2 2A53 4B4B FE67 6BE1"
	$"7F87 8F71 1B6A 3A84 F141 6B08 24E7 827E"
	$"B5E9 1E15 D3FC 3179 A53D 9787 7499 2FB5"
	$"076D 8195 781E F5C2 EB7B 4AD1 8A4D B6AC"
	$"979B DAE7 0622 729C 6F49 F2C2 2F56 CF6E"
	$"F077 C1F6 5B58 9F59 6C92 A331 0E00 3E95"
	$"E856 7E0D D334 E816 DEDA DE34 55E9 8C57"
	$"E8B9 3647 1C35 152A CAF3 7B9F 0398 E652"
	$"C554 6A1A 4486 F7C3 D1AA 308D 39FE 7586"
	$"DE16 7766 76B7 18EE 3D6B AABE 07DA 4D41"
	$"238A 1539 60DB 7A98 DA97 8361 9E07 492D"
	$"94F5 C291 5E5B AFF8 41B4 B9DE E6DE DC1E"
	$"A1E2 2BF2 95F6 AF8E CFF2 6752 9FB5 8693"
	$"8EAB FC8F A0CA 31CD 4DD2 6F46 78C7 8BBC"
	$"21E0 8D5A 696E F4D2 2D2F 15B6 BC05 70DB"
	$"ABB7 F851 F0B3 49F0 4D94 9E3F F19B C64C"
	$"4A5A D637 FBA3 D18E 7BD7 8B47 18EA 4254"
	$"EAAB 28EA FC92 E9EA F63E 931E E74B 0D18"
	$"C3E3 9BE5 5E7E 6780 FED2 5F1E 64F1 1DCC"
	$"D67A 7DC6 5189 8E35 43D0 7AFD 2BC6 3C0F"
	$"E0E6 D5A6 1ACE B503 BC79 DAA1 87DE 3FE1"
	$"5EE6 5707 83C0 CF11 3F8E ABBA FCD1 D12A"
	$"6A94 E961 A3F0 D34A FEBD 6E52 F187 85ED"
	$"74BB F952 283E 5625 82E2 B83B 8B23 14CC"
	$"76B6 3B11 DABE 8B2C C4CA A535 CCEE CCF3"
	$"6C24 7994 E9AF 76D7 FBC7 585D DCA4 BE44"
	$"4D87 CE37 11C6 2BA0 6D12 7FB2 0BC3 3CA7"
	$"CC1C 0279 FF00 F556 98DA 91C2 C949 ABB6"
	$"6797 5296 269B 52BA 5146 7D86 ABFD 8B24"
	$"90AC 4B86 3CB6 39CD 4173 ADDC DD4A 561C"
	$"9C9E 94D6 1954 AAEA BEA8 258E 74E8 2A09"
	$"5ACF A753 3354 B795 D3CF 627C C3D0 77E2"
	$"B3D0 B489 FBC6 183C 57AD 45DE 9E9D 0F9D"
	$"C4C7 92BB 4FA8 8D1F 953C 570A 186C EBEF"
	$"5AEB 72DC 3671 BBB1 1535 E9F3 F2B6 CAC2"
	$"49D3 E78F 4BDC 6F99 81B9 FD7B 0A8C C8B9"
	$"CB7C BF51 514E 9C97 637A B553 D006 E76C"
	$"0DCC 4F60 0D59 8F4F D42E 08F2 ECE4 1EE4"
	$"54CA A538 3F7D 9094 A7A2 2DA7 86A5 6E6E"
	$"5B6E 7A0A B517 8734 E8E3 32B9 DC57 AE6B"
	$"96A6 364F E0D8 DD61 55BD E326 E515 670B"
	$"1001 7DAA 6B88 D96D CED1 C915 DA9F C29F"
	$"53CF 6ACA 762C E832 EDDB 9078 35EA 9E16"
	$"BF76 68A3 1F74 6335 E3E6 D4F9 DD9B D0F5"
	$"B279 B8C5 247B 9787 5CBD AC6D 8200 15D1"
	$"8763 D460 9F4A F8E5 B3B1 ECD4 6DCA E195"
	$"4CB9 1F2F BF7A AD24 A841 6154 E299 9AD5"
	$"EA54 79C8 1B01 F7A4 8D4C ADD4 E0F4 34D4"
	$"7952 5634 BD8D CD26 DD45 D5A8 FF00 A6C8"
	$"3FF1 E15D D7D9 C575 6174 4D23 8EBB 6DAD"
	$"4FCA A2A0 6EC8 F981 34F4 0808 07AD 7E97"
	$"7EA7 C0A4 38A7 5F4A 9157 0831 4F9A E5A4"
	$"3970 47D6 A455 206D EDEB 59B5 A5CD 521E"
	$"A090 71FC 352A 8208 1EB5 9356 2922 558D"
	$"40CE 7E63 5263 62FC C3BF 352D B358 A3A4"
	$"D13E 1CF8 CBC4 16ED 7FA5 F87A E678 08C8"
	$"9367 0F5E 877B 36BD E1DF 0D58 69FA 9D8C"
	$"F034 2086 1B4E 16BE 373C C560 B1B3 A785"
	$"A53B D48C AED7 C8FD 0B83 F095 F075 E788"
	$"AD1B 4650 D3EF 473C B7E6 F195 FCF2 4679"
	$"24F5 A4F1 3ABC BA28 2086 5563 F2FA 5736"
	$"1A9F B1C4 52F2 67B7 9CD6 75B0 35D2 7BC5"
	$"9DB7 C3A0 6FBC 2220 690B 792C 718A B7A7"
	$"F803 C45A FDC9 5B50 D1C1 21E6 56AF 1F17"
	$"5618 7C65 64FA 37F8 EA75 E071 14E3 9551"
	$"A927 B451 EBDE 0DF8 3FA9 58D9 8F26 3772"
	$"8796 6FE2 3EA2 BA2D 5348 D7F4 E367 368D"
	$"A734 B323 812C 4832 1BFD EAE3 74E3 564A"
	$"73F8 5EC7 CCD6 CC61 88AA EDBF F563 D6FC"
	$"1DF0 7351 F145 B457 BE20 885B 23E1 8C11"
	$"9207 E35E F3E0 DF87 3A17 85A0 45D3 B4E8"
	$"A238 EA17 9AFA DE17 E1F9 5293 C662 1DE5"
	$"2D97 63E1 B3AC DDD6 6F0D 4748 2FC4 7AF8"
	$"CB51 D4A7 BB8F C21E 139B 53B7 B099 ADE6"
	$"B896 E52C D1E4 5386 58B7 825C 83C6 7006"
	$"6B5F C31E 26B2 F14E 9F25 DDA4 52DB CF6D"
	$"335A DDDA CDF2 C96F 32F0 C8DE BD88 3D0D"
	$"7E88 A292 D0F9 935D A156 FBE8 33FA 5402"
	$"D140 2738 6278 53FE 159C A95D 94A5 A18B"
	$"E28D 4BC3 FE1F B6FB 56B5 7B15 B83C 4698"
	$"CC92 9F44 41F3 31F6 02BC EB56 D1FC 57E2"
	$"F065 874D FF00 847F 4A71 C4B7 0A1E F665"
	$"F68F A443 FDEC 9AF3 F198 455A 2EEB 435A"
	$"555D 2926 8E2E F3E1 3F87 6D75 28EE AF22"
	$"57B4 B63E 6C86 46CB 171F DE3D EBE7 7FDA"
	$"7FE3 9C32 6EF0 B68D 284B 5857 6154 381C"
	$"7007 15F9 9E33 089E 25E1 16AE A4AE FF00"
	$"C31D 7F17 F91F 7394 549E 36AC 6BD4 F828"
	$"C7FF 0026 7B1F 2F78 5FC2 5AA7 8E35 13A8"
	$"5D12 2DA2 6CB3 9F4F 4AF6 0B0D 2A3B 6448"
	$"618C 2246 36AA 91DB D6BD 1C5E 2612 A8B0"
	$"B0FB 08F6 2342 A421 EDE7 BCEE FF00 C8A3"
	$"E2AF 03AF 882D 17EC E563 BB8B 201F EF0A"
	$"F35B 8F84 1AEC 97E9 6623 C425 B2F2 76C5"
	$"2C36 2658 64DF 9FE6 76CE 54B1 1423 097D"
	$"936B 56F8 5B6B A435 BEFB 3F3E CC11 BE74"
	$"19DA 7DEB 03C6 9A77 F628 1696 E774 4573"
	$"1483 D3D2 A638 DAD5 AB42 1575 5A9E 9515"
	$"4A54 2552 0ACD A3CE AEAD 24BC 9C42 8BB5"
	$"9AB4 347D 26DA D647 8AF5 C2C9 8E18 D7D3"
	$"D5C4 C951 508E F63E 568E 0F9E BBA9 3D93"
	$"FC46 DCE9 135E DE45 656C 7CC9 6E24 11A6"
	$"D19E 0F19 AF6B F0CF C05F 08E9 71C1 71A9"
	$"07BB B8D8 0CB1 3FDD DDEF 5E66 3330 AB46"
	$"8469 C1DA 5234 A983 A72A CEA4 96C7 4907"
	$"C1BF 01DC 4FE7 4DE1 E8C1 272A BCE2 A0F1"
	$"0780 BC03 07EE E3F0 F428 CA31 919A F1DE"
	$"3F17 3945 7B56 6D1C 3D04 9B70 DCC9 D1BE"
	$"1BF8 52FA E013 A2C6 C9BB A56F 6AFF 000A"
	$"3C0D 6B6B BE3D 0610 E067 8CD6 92CC 3191"
	$"9F2F B466 6A86 1F4B 4373 CCF5 6D02 C2D2"
	$"E0FD 96CE 38D1 4903 02B2 8DB9 2E7E 4F97"
	$"E95D F0A9 5271 4EA4 AE64 E114 F456 6665"
	$"FC2A 83AE 09E8 2B16 EEFD 6189 9063 0383"
	$"5E96 121E DACC E4C4 CFD9 A7E8 635A 7FA4"
	$"DCF3 D09A DCBC B1FD C294 1C11 8AF4 6BCF"
	$"D9D5 8A3C CA11 F694 A4CA 7A75 BC90 3ED6"
	$"3DF3 5E91 E0EC 35CC 4C5B 8E33 5C39 AC9B"
	$"836B B1D9 962E 4691 F407 8655 7ECE 9CE5"
	$"2BA0 0783 F2E0 F6FA 57C7 F325 64BA B3DC"
	$"A92B 4AC5 4B89 5864 E72B DAAA 4DBB 0193"
	$"A1A1 4B5B 0249 EA55 76CC 8047 C9FE 2AD3"
	$"B48C 91F3 AFCB FC35 529A B033 6F49 3FE9"
	$"76B8 4E04 C9FF 00A1 0AEE 77FF 00B3 5BE1"
	$"9E8C E0AE ECD1 F94E C024 840F E234 E2B9"
	$"3BB1 C8E2 BF4D BEE7 C32D C951 7273 4E11"
	$"F2B8 6F5A 8B9A 5B42 4D83 69C8 CD3D 176A"
	$"F2BC 5436 5A44 D1AC 6C36 AA91 9E95 2471"
	$"C8B9 2718 1DAB 3764 9B36 8C5A D624 8130"
	$"C1F6 9FA1 AF42 F841 E00B 7F18 F884 DE6A"
	$"C98D 234F 60D3 03FF 002D 5BA8 02BC 8CE7"
	$"1BF5 1C0D 4AD1 7AA5 A7AB D11E AE4F 8278"
	$"AC65 3A51 5757 BBF4 5B9F 5A8F 1068 7A16"
	$"9AB3 2795 16C5 0914 0AA1 4051 C0E9 5C4E"
	$"ADF1 7F43 B976 B49B 4782 E43E 54AB 2023"
	$"1DF9 C57E 3F87 C3D4 AF1B ADD5 EEFA EF73"
	$"F55C 2E0A 559F B4A8 EDD2 DE47 92FC 484F"
	$"058D 357C 49E1 D81B 4FBA 5942 4D6E 3EEB"
	$"E4F6 AC5F 0DDA 3F8B C9F0 F478 5BAB BFF5"
	$"39ED 8AFB 4C14 B110 C142 BD75 79C1 BF9A"
	$"5ADC F2F1 D185 2AD3 C2C9 E928 DFEF 4CFA"
	$"23E1 B7C1 D934 3D36 1B69 4862 E7F7 E64C"
	$"019E F8AF 4AD1 74DD 2F4F D47F B1FC 37A6"
	$"C978 C9CC 891A EFDA 6BE7 B32F 6B89 94F1"
	$"10D6 7277 B797 63C5 7884 A92C 32D2 105A"
	$"B3BC D37C 0BE3 8D62 E921 B78D 6D20 6E4E"
	$"3A81 EFEF 5EA9 E13F 8396 BA66 2E35 199A"
	$"E643 D437 4CD7 D464 9915 5C54 D57C 4AB2"
	$"EC7C BE63 9B50 C343 D961 3E27 D7B1 E9B6"
	$"3A55 BD8C 6B12 C454 2F4E 3B7B 62B9 19B5"
	$"DF1B F87F 54BC D675 AD28 4FE1 B798 AA47"
	$"6ECB 2DCD 9463 03CD 2100 0C84 8C95 C965"
	$"1CFB 57E9 5429 4694 7951 F1ED B7AB 3B4D"
	$"36EE C352 B382 FF00 4EB8 86E2 DAE2 3DE9"
	$"2C64 1570 79CF 1C1E D5E6 FA0F 88EE 74BF"
	$"1378 BED3 4BD0 AF35 1D4A F356 2E96 E91F"
	$"9512 22C6 A824 9256 1B51 491E E4F6 15B0"
	$"8EE5 7539 347D 0C6A 5E33 BBD3 AC24 00BD"
	$"C347 2110 A9CF 0033 6093 8C0E 0727 3C73"
	$"585F F091 78AB C5E7 6783 B4FF 00EC DD39"
	$"F83A BEA3 1105 C7AC 16E7 E66F 666C 0F6E"
	$"D458 0D2D 07C0 FA2E 9178 7559 DE6D 5356"
	$"61FB DD42 FDFC D97E 8A3A 46BE CA07 A558"
	$"D76F 05B1 10C5 0F9B 248A 76A0 E704 773E"
	$"D5CF 899B A70E 68AB B2E9 C39D F29F 237E"
	$"D13F 1B34 EF0D 595C D869 3789 2CCD B848"
	$"51BA 30E0 8FC2 BE40 F867 F0BF C5BF B43F"
	$"8E1E DACD 5D6D 4486 4BDB C6FB 9127 5239"
	$"EF8E 95F9 860D CB11 89AB 894B DEBF 2C7F"
	$"5FC6 E7E8 F85A 50CA F2F8 FB67 6BFB F2F4"
	$"5B2F 99F5 66B1 FB37 DBF8 7747 8B4B F0C4"
	$"7B12 DD31 E663 9958 7735 E75A A786 351D"
	$"310D BEAB 0949 1384 755E 322B C8C6 616A"
	$"D2A8 E557 E34C F472 ACDE 9E3A 972B DFF2"
	$"39D1 7525 BC8D 05D2 ED23 A38E E3DE A780"
	$"1BA2 BE5B E53A 641C 8AEA A759 55D7 A9A5"
	$"6A2E 9B36 E089 2180 C415 0A30 F994 80C1"
	$"BF3A E33C 4FE1 1D1F 598D A236 C049 9243"
	$"0A21 5796 7CE3 A15A 545F 344E 6B4E F82B"
	$"A391 34F7 774E 2771 F23E 0613 DAB2 66F8"
	$"2BAA 35D7 971E A16C D092 7121 2322 BD18"
	$"E3E5 29DD EC69 3AAA CD1D BF85 7E18 E89E"
	$"17C5 C98F EDD7 D8FF 005C E061 7E95 D088"
	$"2433 92DC 83D7 15C9 52BC ABB6 E5E4 73DE"
	$"ECD2 7916 CACC B31E 40E2 B85D 4E67 D42E"
	$"4463 904D 6749 5A5C CC57 D2C7 5BE1 CD1D"
	$"6D6D D5DC 74E7 14FF 0011 9FF4 6280 EDE2"
	$"9397 34B9 89EA 790E B519 372C 1C7A E0D7"
	$"3F3C 6BC8 3DAB D4A3 2D90 9AE6 399D 5E42"
	$"7273 8C57 0FA9 CEC4 B286 EA6B E9B2 C869"
	$"73E7 F349 7245 96B4 18B6 C81E 419A EA49"
	$"0D03 2B74 ED46 39DE A860 17EE 2C67 3AAC"
	$"62BA DF06 5C2F DA62 C670 08AC 318F 9E8B"
	$"37C3 2E5A A8FA 13C3 7751 ADBA B21E 76D7"
	$"42D7 1230 073D 457C 838D AE7B 33D5 9038"
	$"223D E1B7 7A8F 4AA8 EE0E 1707 0684 9496"
	$"828B B0FB 4B66 6639 FBA3 9AD6 8954 2A88"
	$"D092 6973 6C85 265E D3B3 F6FB 558C E3F7"
	$"E99F FBE8 5773 E5BF F7FF 005A ECC3 2D19"
	$"C95F 747E 563A 65C9 1D89 C548 809F 997B"
	$"F1CD 7E90 CF87 B589 319F 90F0 6A40 814A"
	$"C657 27B1 F5AC DB46 895C 7852 3819 E4F4"
	$"A991 0B0C 8C9C 7E42 A5E8 EC6D 18B7 D2C4"
	$"A141 5C01 F8F4 C575 FF00 0EFE 15F8 97E2"
	$"35E9 B5D2 2231 DAC5 CCF7 5270 8A33 D01F"
	$"5AF3 F1F8 EA79 761E 788A 9F65 3B2F 3EC7"
	$"560F 092C 6D65 423D 7F25 B9EF 965F B2E7"
	$"836C 2CD5 3509 6E6F AE88 C3B7 2801 F6C5"
	$"3B5A F08D AFC2 CF0C ADBF 8711 9ADA 37F3"
	$"660D F78F D6BF 30C4 E7F8 CCDA D4B1 3650"
	$"72D5 2FC0 FD23 29CA 3098 0AAA 70BB 959A"
	$"FF00 33CB 355F 888B AD60 C777 F2F2 AC84"
	$"E0A9 ACBB 6BC3 212E E594 1E32 7818 EE73"
	$"5ED5 1C24 B0CB 9651 D4F5 6598 C6AD 9D39"
	$"7BBF D6E7 1DE3 2F12 CDAA 5E45 A368 6449"
	$"6F07 FAC7 EB96 AF64 FD9C FC09 7963 ABA7"
	$"89AE A192 E650 BFBA 539E F5EE 63AD 80CA"
	$"D52B 7BD2 D75E 973E 0EA6 2679 9669 56B5"
	$"FF00 76BE 17E8 BFCC FA9F C3BF 0CBC 7FF1"
	$"0351 6F34 C9A4 69E8 46D6 5249 6E79 FD2B"
	$"E98F 037C 2ED2 FC2B 68B0 595B 0F39 8013"
	$"4C47 CCE7 EB5C 991E 58AA 4955 92DB F33C"
	$"5CF7 325C BF56 A4FD 7CCE 92F7 5987 44D5"
	$"2D3C 35A5 6912 6A3A A5C4 7E79 891D 6248"
	$"6104 0324 9237 4F61 824D 75CA A00C 2FCA"
	$"40E4 75C7 E15F A146 2924 91F2 1E62 1C6E"
	$"2546 4127 2DCF F3FC E9FD 3287 85F4 CF5F"
	$"FF00 5FF4 AB19 C25A F812 E34C D4F5 3D56"
	$"E35E 3A1E 892C E2E3 EC1A 7CED 0C47 0726"
	$"4924 38F2 F3D5 9536 83EA 6AC3 78D3 52F1"
	$"03B5 8780 3485 BB41 F2BE A979 BA2B 38F1"
	$"C654 FDE9 88FF 0067 8F7A 6059 D2FC 0168"
	$"9769 AD78 92F2 5D7B 554E 639A EC03 0C3F"
	$"F5C6 11F2 A75E BC9F 7AEA 8E43 0DAD C95C"
	$"0CE4 52B8 114B 2B45 1EE6 EE08 23BB 1CD7"
	$"CC9F B58F C778 3E18 F876 E348 D32E D25D"
	$"7B50 8C89 0AC9 86B7 88F0 76E3 BD70 63AA"
	$"3843 47AB D17A BEBF 2576 77E5 F4BD AD64"
	$"9EDB BF44 7E7E FC35 F00F 8F7E 3BF8 B974"
	$"9D20 DDCF 6D71 3E64 9A4C 9108 2725 893F"
	$"CABF 533E 0D7C 01F0 BFC2 4F09 C1E1 CD31"
	$"3E76 0A6E 6503 0D2B F72C 7D33 DABC 6C36"
	$"0E38 8C4A E45C B185 B6EB 2B1E CE6D 8D97"
	$"D555 093B F36B E915 B23A 6D67 C1C8 EE05"
	$"BB16 0C31 8EE2 B83F 12FC 33B4 B8B7 6FB5"
	$"58AE 3070 C467 F1AE 7CDB 2CF6 BCCD FDE7"
	$"9382 C4CB 0CD3 A6F5 3C2B C73F 0524 286E"
	$"3468 95DC E774 7FDE 15E2 9ADE 8FAF 783A"
	$"F449 0593 A203 F341 2640 C7B1 AF8C 9529"
	$"61E6 A2D6 87E8 981C 6C71 B4B9 5BF7 8D1D"
	$"37C5 7A6E A50B 2A9F B35C 1187 4906 39F6"
	$"F5AA 9732 C21F 7BB9 F6C7 7A51 85DF 29BE"
	$"B4CA 336A 6C48 2ABC 67D6 A7B6 B966 C16C"
	$"E0F4 02B7 E450 8A8B 3269 B674 1685 4A66"
	$"35C1 2391 4B3F 976C 9E6B 1047 6E31 8ACA"
	$"6DA6 EC38 AD6C CE53 5ED7 77E6 2DE3 1D30"
	$"0F34 CF0E 69ED 3CFF 0069 9632 73F7 6B48"
	$"C796 1CD2 DC6D DDE8 7790 AA43 1824 1CE3"
	$"915C D789 2E31 1303 C819 C528 A564 427A"
	$"DCF2 8D6E 4769 99CF 03B5 60DC 4EA1 7793"
	$"CD7A B185 E2AC 2E74 93B9 C96B 5307 2EF8"
	$"C0C5 70B7 AE24 9C81 8EBD CD7D 4E56 BDDB"
	$"9F31 9B4A F249 9B9A 3964 4424 0E6B 6BCE"
	$"C0F9 88C7 6AC3 12AF 559D 9855 CB49 22AD"
	$"D3E4 8E98 ADEF 094F E55C 2EDE E6B3 AD1F"
	$"DC17 076A E9B3 DCFC 31A8 3184 018D B8AE"
	$"C6DE ED5F 68DD 8C0E 95F2 7562 D69D 0F6B"
	$"7D49 24B9 2E76 A2E0 0FD6 9AB0 EF3B DF23"
	$"D2B2 D22A C812 4CD1 863F DCE1 1464 1E4D"
	$"588C ED5D A320 1E9C 567B 3572 24AC 5DD3"
	$"A01F 6EB5 DCE0 0F39 0F1D 7EF0 AEE7 CA87"
	$"FE7A 3577 E1B6 672D 7DD1 F95E 413C E39C"
	$"9CD3 F6EE 00A8 C57E 8D26 7C55 894A AF04"
	$"574B E03F 01EB BF10 75F8 7C3D E1E8 4497"
	$"3302 59DC E046 BDEB 8B15 8A86 0E8C ABCD"
	$"6915 73A7 0D87 789A B1A5 1DD9 EB1A AFEC"
	$"85E3 ED2E CA4B 9B1D 4AD6 F648 B24C 790B"
	$"823A 8CF7 AF1B BDD2 6F34 8BE9 B4BD 52D5"
	$"EDEE A224 4887 804D 78D9 4F10 61B3 6738"
	$"C138 CA3A B4FA AEE8 F5B1 F945 4C0A 555C"
	$"B9A0 F4F4 76D0 B9E1 6F0D DE78 B35D B6F0"
	$"F69F 1912 DC3F 27A8 551D 49FC 335F 57F8"
	$"4353 D33C 11A7 2F85 7494 411D 9802 5207"
	$"32B7 7626 BE7B 8BF1 52AB 2860 E1D3 DF7F"
	$"923E 9384 72FF 006F 0AB8 9A9B E915 FA9D"
	$"E597 8CF4 99A1 4BB9 AE11 1107 CE0F 7358"
	$"3E31 F167 83B5 CD2E 6B51 3209 9D4A FE15"
	$"F1D4 E5CF 76A3 AA3E 9E86 06B5 2AEA 507A"
	$"23E1 EF88 BA64 BE18 F13C F6F6 4C5A 3B8C"
	$"C88C 3A0E 6B06 1BDD 6B50 5FB3 1BA9 C8E9"
	$"B549 CD7E DB80 8E1F 1582 A55A A2D5 C53F"
	$"99F9 366B 5711 82C7 E230 B424 F493 D3C9"
	$"EA77 3E06 F055 E9B9 4B8B E55B 7B56 E482"
	$"72CD 5FA2 DFB3 47C2 DB5B 9F0E 5BEB 061D"
	$"916E DAA1 FA91 5F31 9BC9 6678 C851 83BC"
	$"56FF 0023 D184 2596 65B3 94FE 27B1 F59E"
	$"85E1 FB7B 3B75 8E28 C041 FAD6 34DE 2ED7"
	$"7C3F AC5E 5DEB 5E1E 9E2F 0BC7 2AC1 1DE8"
	$"5065 848F BD23 A024 9849 E37F 18F4 C57D"
	$"8E0F 0F1A 54D4 52D8 F8AA 9373 9733 1FE3"
	$"3F0D 6ABA AAC3 E2FF 0002 EA31 C7A9 A5A3"
	$"DB92 8CA5 2EAD 9F07 0AE7 80E3 AAB5 7297"
	$"A3C1 76DA 2B4D A427 8834 9F15 5B21 30A3"
	$"A5CC 9792 5C0E CF9C A4AA 4F04 F231 D2BB"
	$"9107 AB68 8FA9 CBA4 59CF AC45 1DBD F496"
	$"C8D7 48BC 8490 A0DC 0F6E 0D73 F7FE 3E8A"
	$"EAEA 4D23 C19A 7BEB F7D1 B6D9 1E26 DB69"
	$"6FFF 005D 67C6 38EB B577 1A2C 0362 F015"
	$"C6AF 345A 978F B566 D5E4 8CEF 4B28 C18A"
	$"C613 DB11 F590 FF00 B4E4 FD2B ADF2 E086"
	$"311C 4162 8D40 5541 850A A3B0 0380 3143"
	$"603C 85FE 2231 C9EB FCA8 7750 A778 38E3"
	$"20D2 BD80 E03E 2CFC 4FD1 BE16 F84A F3C5"
	$"1AAC 8BB9 5585 A45D DDFB 7E15 F975 A93F"
	$"8E7F 692F 89F2 59E9 9149 793D EDD7 2E7A"
	$"2293 D33E 8057 8D8D A8B9 9DF5 E5B6 9E72"
	$"DBF4 5F33 DECA A9B4 9CF6 BFFE 931D DFF5"
	$"D8FD 31F8 05F0 1BC3 FF00 04FC 1906 8B63"
	$"0ABE A32A 87BB BADA 32EE 4738 3E95 EA18"
	$"70DB 57B0 E460 8C1F 5FD6 BBF0 943E AF49"
	$"45EF BBF5 3CAC 5E21 E26B 4AA7 4E9E 9D09"
	$"1065 5778 3BC7 52D8 A82E 2D6D EE11 A390"
	$"6519 48C1 071D B9F6 AE89 C14E 2E2F A9CF"
	$"16D3 BA38 ED4B C008 E4CD 6E76 9CE4 03F9"
	$"D79E F8B7 E18D 96B9 04B6 DA85 9233 1CFC"
	$"DB79 CFD6 BE37 30CA 1C53 5D19 EE60 B1EE"
	$"9CD4 E3BA 3E74 F88F F053 55D0 C6FD 3EC5"
	$"66B6 525B 28B8 751F 5EF5 E45A B5AE A1A5"
	$"B192 E229 1A15 E318 E457 C946 94B0 F595"
	$"39F9 9F7F 86C5 431D 4149 6E37 4AF2 B510"
	$"2481 B2A7 B679 15D0 DAE9 CC14 2E31 E95A"
	$"CE4E 93E8 46DA 1A70 21B3 512C 8DC7 35C8"
	$"F8AF C462 1574 8A5E 3DAA 69C7 9A6B BF50"
	$"4ECA ECE7 741B 7B9D 62E7 CF64 62B9 EF5E"
	$"ADA4 E9FF 0065 B655 C0DD 5AE2 1581 3F74"
	$"B175 26C4 3BC8 5AE4 35A7 F3CB 2487 D6B0"
	$"A772 628F 3AD7 EDCA B1C0 F96B 8DBD 2636"
	$"23B5 7B94 55D2 39EA 3E53 92D7 242C ACA1"
	$"B15C 808D 9EE3 0572 33D6 BEAB 2F8A 8C0F"
	$"9ACC 65CF 5123 A2D3 C88C 2EE3 C0AB 6D70"
	$"0E76 907E B5C9 3839 4CED A6D4 20B5 2BB4"
	$"B239 1182 39AE A7C2 96F2 8700 AE79 EB46"
	$"21AA 749A 268C 9D4A 8AC7 B2F8 7627 5895"
	$"4F18 19AE CAD2 3674 0C07 4AF8 DAAB 567D"
	$"1AD1 1AF6 7034 9D54 0C56 8A5A 2FDD 3838"
	$"ED5C CEF7 336D C742 468C 8215 0607 A52A"
	$"800E 1B14 ED70 6EE5 9D3C 8FB5 DB9D BCF9"
	$"C9FF 00A1 0AEC B77F B3FA D75E 1A5A 339A"
	$"BEE8 FCBB 6DBB B3DF 3CD3 8291 F74F 15FA"
	$"3377 3E36 2AEA E4CB 180B 96AF 72FD 9675"
	$"A834 9F13 DC44 E156 6940 DAF8 E71F 5AF0"
	$"7886 2E59 7555 1DF4 FC1A 67B9 9028 FD7E"
	$"9DFA DD7D E99F 65C1 B4E9 6F71 B462 46E4"
	$"FAD7 CE1F B427 80AC B5AB 5935 7D3A D912"
	$"FED3 E762 382C BEFE B5F9 CE17 12B0 18DA"
	$"189E 9749 FA3F F827 D743 0CF1 787A D877"
	$"D53B 7F89 6C79 EFC0 E58B 49B6 D57C 532C"
	$"5F38 0615 247D CC1A 6EB3 E22D 566D 61AE"
	$"3418 DEE8 924B 9418 523E B5EC E320 B159"
	$"A56F 6BA2 8DA2 9FC8 EECA 3FD9 727A 735B"
	$"BD7D 7531 751F 1F5D 4376 74F9 AE8C 2DFC"
	$"68DC 60FF 005A A2DE 2988 379D 35DF CBFE"
	$"F727 F0AE DA79 572A B28D FB3E E69F DBF4"
	$"A575 CD6B 6E73 3AE3 CBE3 0D4E 1B9C 148A"
	$"1055 4918 CFE3 5DAF 867C 0CB7 488B A758"
	$"6642 3E69 08C6 DFC7 BD7A F8AC 57D4 F0B4"
	$"E8EC 96FF 00E4 7C95 1A4B 1D8C AB8B 92D5"
	$"BBFD C7A3 F87B 4ED1 B45D 4534 E9AD 6E75"
	$"6BF0 9B9A DEDA 2331 8C7A 91D0 7E35 FA1B"
	$"FB3F C9A3 6A5E 0CB3 1A76 F492 D8EC B8B6"
	$"950C 72C0 D8E0 3A1E 47B1 E86B 8722 A13A"
	$"F88F 6F2D 2EB6 F2E8 EC79 9C4B 898B A31A"
	$"2BB9 ED11 46CB 1011 F0C4 7E94 F3B5 D042"
	$"4064 6521 830D CAC0 F041 FF00 EBD7 E831"
	$"5647 C533 84D3 FC1B E28D 3B59 BEB4 F0FE"
	$"A674 0F0E CB20 65B7 565B 9937 E72C D6E1"
	$"86D8 15BF BA73 DF00 66B6 359F 1EE9 3A75"
	$"D0D1 74B8 67D6 F58C 002C EC46 F643 D8CA"
	$"FF00 7621 EE7F 2ABD C0A0 3C29 E21F 153F"
	$"9FE3 9D4C 4566 4E46 8DA7 BB24 58FF 00A6"
	$"D2FD E97F DD18 5EBD 6BAC D3F4 FB1D 32D9"
	$"6C34 FB48 AD6D E2F9 638A 2508 A07D 0526"
	$"04F8 2C31 BB9F 4F4F 5A11 813C 96C0 C618"
	$"77FF 0039 A100 E3F2 E49C E064 F358 1ABE"
	$"BD69 6367 75AA 5ECE B069 F651 9926 958E"
	$"01C7 38CD 4C9A 5BEC B57E 8869 37A2 DDED"
	$"EA7E 6BFE D0BF 16BC 49FB 42FC 474F 0DF8"
	$"5D26 9B4F 497E CD6B 0479 E99C 6E20 57D9"
	$"FF00 B31F ECE9 A57C 1FF0 DDB5 F5ED A44F"
	$"AE5D 2032 3B75 4C8C 900F AD78 7878 BC55"
	$"78B9 2D9F 3BF5 FB2B E5FA 1F45 8C92 C1E1"
	$"BD94 776B 97E4 B593 F9B3 DD8A ED7C 2100"
	$"1CE4 6323 F1F6 A579 5963 0413 9381 8183"
	$"835E E9F3 818C AA93 BB3D 73EA 69B9 67C8"
	$"E064 FD72 3A64 FAD0 039B 0796 5CF3 81DC"
	$"11EB ED54 AEB4 D82E 8ED3 1F3C 8C8A CAB5"
	$"3552 3665 C24E 0EE7 3DAB 783E 0BB8 9D44"
	$"41C3 020A E2BC 27E2 47C0 5B3D 4239 26B2"
	$"8764 B825 401C 67DC 57C8 E719 6394 79E2"
	$"B55B 1F41 9566 2E84 D2BE 9D4F 973C 73F0"
	$"9F5F F06D DACF 63E6 4123 1259 8659 09FA"
	$"5666 89E3 85B6 9574 FF00 14C2 D6B2 83B5"
	$"660B B958 FF00 4AF9 B50B A4A6 BDFF 00CC"
	$"FB35 2534 A707 78B3 43C4 5E22 B682 D4CB"
	$"6F71 1CA8 7EE9 5391 5E77 1C77 3AEE A382"
	$"331B 1E71 C8AA C1C5 538B 9496 D72E A3F8"
	$"5773 D43C 2DE1 E4B1 876B 2152 BC82 6BA3"
	$"9196 14F9 5BAD 7355 9FB5 9399 2FB2 322F"
	$"2491 8303 961D AB07 5081 8E5D B826 AE16"
	$"695C 6B43 8FD6 6D77 8395 383C 5711 A9E9"
	$"ECC1 B2BD 0F6A F630 B2D5 2672 E223 A338"
	$"6D7A CA4C B291 8C57 26E2 58DF 84E6 BEB3"
	$"06E3 CB63 E5F1 A9A9 5D96 ED25 9CA7 2071"
	$"DAAF 8899 A307 0727 DE8A 908C 5DC2 9CE5"
	$"28A2 DD85 8BC9 203B 78AF 40F0 D5B2 C318"
	$"3B79 CF35 E5E3 E4DC 6C8F 4F01 04A5 767A"
	$"7689 3261 0020 1C57 5B69 3028 153A F7AF"
	$"94AB 1716 CF7D BD2C 8D9B 4327 CA39 03F9"
	$"D694 5267 9E33 D335 CFAB 7CAB 7339 6AAE"
	$"588D 320F 5AAD 2EE5 CB76 156D 1312 97F6"
	$"B456 D7B6 F873 9132 71FF 0002 15D3 7FC2"
	$"463D 47E5 5B61 E0EC DA22 B416 973F 38DD"
	$"012D F2F4 26A5 40A3 0AC3 8231 5FA3 1F16"
	$"B644 8231 8D87 AD77 5F07 DA78 3C7D A5A4"
	$"24FE F495 2077 AF33 34B3 C1D6 BFF2 BFC8"
	$"F572 A7C9 8CA3 25D2 4BF1 76FD 4FD0 0B38"
	$"CC1E 1FF2 9C7C CB93 8AF2 DF1B D85C 6A79"
	$"11C3 BA46 0576 8E8C 0FAD 7E43 5EA3 FDDA"
	$"F257 3F42 CB25 0A75 AA4E 7B26 CC0F 87DF"
	$"08E5 D12C 2F53 C408 AD0D ECCD 27D9 A338"
	$"C29F 7AB5 E33F 04A5 8E85 12F8 3F4C 8AD4"
	$"3B6D 0367 27EA 6BD7 A929 D5AD 2AD5 3E16"
	$"EECE 0963 B485 0A7F 046E 97DE 788F 8B3E"
	$"1769 1771 4C7C 437F F64B F894 ED7E ACE7"
	$"F0AF 38B2 F86B AF4A F9D3 EC66 9ADC 3153"
	$"7130 38C7 A806 BEBB 2BCE A32A 12F6 CAD0"
	$"8FC2 FA9E 1E3F 28E7 AEAA 41FB D2DD 743B"
	$"5D1F C0F2 DA20 9563 96E1 A31C A11C 67DA"
	$"BB2F 0669 7E3A 5D36 6D5A 496D 74B8 2156"
	$"74B6 9E12 D903 A076 CF04 FB57 9D8B C5D3"
	$"C636 E6AF B249 79F5 3B7D 954C 253B 53D1"
	$"24DB 6FF2 3EB4 F80D F0DB 42F1 00B6 D5E7"
	$"82CA D354 BE85 27B9 B646 1E69 C0EA 4752"
	$"057B DD85 EF87 FC15 F117 5696 F2EE 3B58"
	$"1347 B28B 6005 9E69 B739 0AA8 BF33 B6D1"
	$"D874 35F4 FC3F 809E 1D4A 7537 7A2F 4E87"
	$"C367 38D5 8A9A 8AE8 7A1E 83AA 5C6B 76AF"
	$"7771 A2DE 696A 5888 62BA 6512 489C 10C5"
	$"0676 64FF 0009 E7F3 A835 FF00 19E8 7E1D"
	$"9A1B 59E5 7BAB F9B9 86C2 D13C EB89 49F4"
	$"45E4 0FF6 8E05 7D32 5D8F 10C6 5D2F C63E"
	$"303B F5DB C3E1 ED29 CFFC 78D9 4BBA EA55"
	$"3FF3 D671 F701 FEEA 7D33 D874 DA36 87A4"
	$"6836 3FD9 FA26 9B15 9C20 64AC 6BF7 C9EE"
	$"EDD5 8F1D 49CD 3F40 2F92 338D AA31 D89F"
	$"C8D0 379C 00B8 CF39 EBFC E900 9900 3156"
	$"51B8 9240 3EDF E4D3 8121 4939 EB83 F371"
	$"EE7F 9D00 73DA EEB9 0C4F 1D89 B8D8 AE70"
	$"5CF1 9F6A F92F F6CF F8D0 74FD 261F 853E"
	$"19B9 66BC D440 3722 2E49 53C0 4E3D EB8F"
	$"1B51 53C3 49DF 5935 1F45 BB7F 71DF 9651"
	$"7571 3097 48DE 5F35 B7E2 CE9F F63C FD99"
	$"8782 B488 BE21 78CA CD4E B97E BE64 10C8"
	$"3FD4 A1E8 707A 1E6B EAB3 C156 1276 C019"
	$"E87D B14B 034F D9D2 BB5A CB5F F2FC 2C19"
	$"8D6F 6D5D DB68 E8BF 5FC4 503E 6077 6EED"
	$"D31C E7BF D294 60A0 61C8 1D49 E3D2 BB11"
	$"C026 D51E C549 249F D71D E9E3 2790 31CE"
	$"403D 6980 C560 A0ED 1B8E 3E6E 3F2A 4251"
	$"501C FDE0 793D BD68 E802 F206 09EF 8FBB"
	$"8C7E 3546 FB4B 8AF3 2BB5 4363 0BEF 58D5"
	$"A4AA 46CC B84B 95DC E1BC 4FF0 E74D D620"
	$"7373 6892 75CE 5411 5F31 FC61 FD9D FED0"
	$"8D75 E1FB 30B9 C991 3B67 D40E D5F1 79B6"
	$"5AE9 BF6B 1DD1 F539 3E65 ECDF B39B F759"
	$"F267 8BBC 27E2 6F08 5C4A A639 05AC 672F"
	$"0904 A9FA 1ADF F85D E23F 0A6A F20B 19AE"
	$"12D6 FB38 1148 7682 7EA6 BCEA B175 F0DE"
	$"D61B 2DD7 57E7 F23E 9215 942A 724B AEC7"
	$"B398 C410 88F7 2900 6430 E86B 3AE0 316C"
	$"91C1 E457 93A3 354F 7231 6818 195C F03B"
	$"5626 A44B 0F91 030A DA2B 6345 AA39 BBFB"
	$"4673 BC28 C771 5C96 ADA7 9C92 9803 3CD7"
	$"650A 9EF1 9CA3 CC99 C86A 9A5C 7316 F973"
	$"C573 171E 1A46 7040 3DFB 57D1 6131 0D2B"
	$"1E26 2F0E A6C6 C5E1 E58F A467 3E95 7174"
	$"9551 9284 1C56 F3C4 73BB 1853 C3F2 2B16"
	$"ECB4 FCC8 A880 8AEC F47D 31A3 0883 249E"
	$"A6B8 3195 2CAC 7A38 4858 ECB4 CD3E 5465"
	$"2324 D765 A6C2 1136 BFDF AF9F A92E 6933"
	$"D4B1 B56F E60C 291D 055D 88FC B803 BD63"
	$"3693 D372 245B 52E0 051E 954B 5399 A081"
	$"F046 719E B4D6 89DC 98EE 795E B9E2 97B7"
	$"D4ED 4C6E 39B8 8C1F FBEC 56D7 FC26 137F"
	$"7857 B580 C329 D3B9 CF8B A9CB 248F 9076"
	$"B6E2 7DEA 60A0 904A E78E 7DBE 95F5 CDA5"
	$"AB3E 4E28 9E18 9B76 D518 63F7 7775 3F8D"
	$"7B3F ECCF A0DB DFF8 BA5F 10DE A068 F4D4"
	$"2AA9 8CE5 8FA1 AF0B 3DAD EC72 FAD2 6B75"
	$"6FBD A47A F93D 2557 1B4D 6D6B B6FD 353E"
	$"B2BA D6FE D36A D6F6 1B9E 6946 178C EC6F"
	$"423B D4D6 1F0C FC5F A858 C179 7968 436E"
	$"C974 3B14 8F5C 1AFC FF00 0B87 F6F2 8CA1"
	$"1BBE FD2C 7BB8 AC74 3074 F964 F77F 79BF"
	$"A77C 37D5 EF26 7B0D 2233 7533 7594 8FDD"
	$"467B EECF 5FC2 BBAD 37E0 16EB 136F AA5F"
	$"99EE 9D49 120F F551 B63B 0AFA 4CB7 25C5"
	$"6677 AB35 68A7 68F6 F53E 7B19 9D53 C234"
	$"A9AF 7B4B F92F F33C 635B FD9E 745F 0DF8"
	$"833E 2633 EABA 94CC D25A DBC5 0B4E CCA0"
	$"FDE5 41D0 0F53 815A DA4F C34D 375F FB45"
	$"95BD 9B41 2599 026B 49A0 30C9 183D 1990"
	$"F63D 88E2 B2AB 94E2 14ED 2DA3 A5BC 8F46"
	$"39E4 2AFB D15B FF00 5635 F49F 80BA 7DC5"
	$"D243 FD9E 42B1 E582 E07E 55EC 1E17 F807"
	$"E1CD 2ADD 565B 186E 01F9 8ACB 1820 E318"
	$"E08A F472 BC97 99A9 CEEA DB1E 7669 9C54"
	$"71E4 4F73 6AEF C2BA C789 751D 1E38 7C36"
	$"9A14 1A35 EACF F6F9 A68D E765 5E0C 712C"
	$"59C2 B0EB B88E DC57 55AF EA1E 0EF0 CDD2"
	$"EBFA E258 C37C 57CB B794 C424 B871 9385"
	$"8C01 BD8F B0F5 AFBC A54D 538A 8A3E 3A4D"
	$"C9B6 CCBF 33C7 3E31 61F6 6127 85B4 961C"
	$"C92A 87BF 9D7D 94FC B07D 4E5B D856 F787"
	$"BC25 A2F8 5E36 1A5D 9813 49CC F753 1324"
	$"F39F 5791 8962 7DBA 7A62 B4D8 46B6 09E4"
	$"A839 E7D3 8CFF 00F5 E872 63CB 03CF 438E"
	$"4D20 13A9 281F 9C0C 73DF 9EBF E7B5 00E0"
	$"8007 5CE7 B814 0060 2608 500F 6240 C0AC"
	$"7BDD 6639 2E8E 9969 2ABC C07E F082 32A3"
	$"D3DE A799 7346 17D5 BB20 B3B3 6BA6 E60F"
	$"89EE 3C3F 65A1 5E6A BE27 B88E D34E B546"
	$"6799 CED2 B81D 173D EBE6 BF80 FF00 026D"
	$"FE25 7C49 D43E 3678 944D 3E87 0DCB 0D12"
	$"2B91 979D 41E2 46CF 6E95 CB9B 52A5 3C5D"
	$"3A51 F8AD AF6B 7F9B D51E 865B 5E74 7095"
	$"6ADB 46EC 9F99 F652 2840 AA70 A146 D555"
	$"E060 74FF 00F5 52C7 82D9 039C 7392 33F4"
	$"FF00 3EB5 D88F 3C14 924E 49E3 AE7A 522F"
	$"99B4 0276 F39F 73EB 4805 C154 0598 6E03"
	$"EF63 8FCA 90EE 3F27 2318 279F CA98 0BBB"
	$"E4CE CC2F 538F 7FF3 FA52 32B6 0020 11DD"
	$"7FFD 7F4F E740 0637 6130 700F DEC8 1814"
	$"E5FE E807 8E29 2022 9E31 227C EA0E 4F24"
	$"718F E9DE B1B5 0F0E 5A5D 42C6 4556 53F9"
	$"7FF5 EB9F 1142 3595 99AD 2A8E 1B1E 33E3"
	$"DF80 7A3F 89AC 2EAC A0B5 8E26 B862 D9DB"
	$"904F D3FC 2BF3 CFF6 95F8 1F73 F0CB 5B6F"
	$"B124 F132 8DE0 AF07 EAA7 BD7C B430 AF03"
	$"894E DEE4 B4F4 3E96 8E29 E2E8 B85F DE5A"
	$"A38E F87F FB41 788F C34B 1E9B E275 9354"
	$"D381 DA1B FE5A C63E A6BE 88F0 A78C 7C37"
	$"E33B 6FB5 683A 9472 8032 D148 46F4 3E84"
	$"77AF 3B37 CB7E A937 88A5 1BD3 7BF9 1ECE"
	$"0318 F10B D9D5 D24B F135 2EAE 0725 7A91"
	$"8C11 8AC4 BB50 C491 F203 5E25 A4AD 6F33"
	$"D48A 69EA 655D DBEE 4C63 70F5 15CF 6A36"
	$"5FBB 2180 E7D3 AD74 D36D 38A6 0DD9 58E5"
	$"EFAC 5621 D092 7B9A C87B 43BF 39C0 AF5E"
	$"12D3 438A AC6E 33EC C1BE 61DA A516 19E7"
	$"6F07 939A D1D4 D0CB D95C D1D3 B4A0 5C16"
	$"4500 F4AE BB4A B048 9501 0323 8AE1 AF5B"
	$"9AE7 6D18 72D8 E9EC 6DC2 2E41 C007 9ADD"
	$"B755 6C90 A0E4 75AE 072D 59AC 9D8B D190"
	$"ADC3 1E9D 2AEC 21B6 8663 DEB2 4AD6 644B"
	$"52C3 5D45 1296 7C74 AE1B C5FE 268A 2824"
	$"5071 8079 14D5 E6EC 8AA7 057B B3C1 7C41"
	$"E244 9F58 B18D 5C9C DE45 FF00 A1AD 74FF"
	$"00DA 5FED 1AFB BCB3 0D18 61E2 8F9C CCAB"
	$"AF6D 63C4 7696 C80B 8E4D 59B3 D3AE AF6E"
	$"16CE C617 B8B8 7385 48D4 9C9A E9AB 28A8"
	$"B727 65D5 F638 609B 764B 53D6 FC19 FB3A"
	$"6BDA A469 7DE3 1B93 A5D9 641F 297F D6BF"
	$"B57D 1FF0 FF00 E1BE 99A6 5BAE 8DE1 1D1F"
	$"C94C 6659 5B87 90F6 249A F80C DF33 9669"
	$"2F61 49FE ED3F BD9F 4185 A11C 1D37 3A9F"
	$"11EE DE0E F03E 91A3 DCDB C915 BBEA 7ABA"
	$"0DC7 0331 A67D 73D7 15E9 765E 0BD4 3503"
	$"E6EB 7719 463B BECF 170A 3EB5 EE64 D95B"
	$"AB0F 6715 685F DE7D FD3C 8F99 CCF1 953D"
	$"A7B4 A9F1 EBCA BB2E 8DF9 9D6E 9BA0 DAD9"
	$"208E DA14 8635 E36A 0E07 BD67 78C3 5CD6"
	$"3C37 79A3 59E8 9A34 5A8B 5F4B 309A 22C5"
	$"5D96 34DF 888F 4DE4 6719 EBD3 BD7D BD38"
	$"4694 5538 6915 D0F9 E779 3E69 6ACA 92E9"
	$"3A47 8E25 87C6 DE14 D6DA C752 86DC D9CC"
	$"925B ACA4 F39F 2658 5F05 5C11 EA0F D6B9"
	$"AD0B 4ED3 75AB 69BC 53AA 7C41 1A46 BC90"
	$"9B5B D84C 56D6 E2DF CB62 423C 4EB9 6504"
	$"939C F353 2A10 9BBC 96A6 B1A9 282B 2677"
	$"9F0F 6F2E 35CF 0CDA EADA B584 50DC 3348"
	$"BE60 8CC6 B322 B10B 2853 F743 800E 3DEB"
	$"7B54 D534 DD16 C5B5 0D63 5182 C6D9 4732"
	$"48C1 47D0 1EE7 DBAD 5C60 A2AD 125C 9CB5"
	$"672C DE22 F167 8BF7 2F84 EC7F B274 C7E3"
	$"FB57 528B 0EEB FDE8 2DCE 09F6 67C0 F6AD"
	$"4D07 C0FA 3689 70DA 8CBE 6EA3 ABC8 086D"
	$"46F9 FCE9 DBFD DC8C 20F4 0A00 ABD8 4740"
	$"8086 210F 5EA7 041C FF00 4A71 1950 A47B"
	$"0C9C 67FC FF00 4A40 0C08 0157 85C1 CF72"
	$"7FCF AD04 9C82 0673 C331 1D3F CF34 00D0"
	$"080A 7233 8E78 C7F8 E7FF 00AD 4EDD B082"
	$"CC4F 5C7F 5A00 F3DF 899F 14B4 BF06 5A2D"
	$"AC77 43ED B30C BA2F 2513 BFE3 5E1D 75F1"
	$"26DB 53BB 3AAE 95E2 1169 25BF EF33 BF0C"
	$"DFFD 6AFC DF8A 336A AB15 1A78 66D3 86A9"
	$"AEE7 D964 D93C E586 F6F3 8734 65A3 5E46"
	$"75B2 78EB F6A1 F155 AE97 A937 D9FC 1FA4"
	$"306B 8F23 2A97 320F 5F5A FACF 43D2 6C34"
	$"2D32 DB44 D3A0 582D 6CE1 11C6 8836 E00F"
	$"6F4E B5F5 B94D 5AD8 D8FD 72BF C524 BFE0"
	$"FF00 5EA7 8F9B 429E 0DC7 0547 E187 EBDF"
	$"CCD0 1838 2B80 DCE0 7404 7A8A 1769 5064"
	$"CEE0 6BDB 3C50 201C ABAE 7927 AF3F A7D6"
	$"906E 6DA8 14E3 F889 3D3D 0D00 2E30 B803"
	$"273C 1C77 FF00 F5FA D363 2C24 2429 03A9"
	$"CF39 FCBA 5003 8850 7008 2318 3F4A 6F98"
	$"002D C74C 80A3 B7F5 A06B 5213 730C 68CC"
	$"4838 0485 C73F 97F9 029B 36A7 6F0C 6B3B"
	$"BE51 BB0E 4FFF 005B D2A7 9923 58D1 94AD"
	$"6F41 B2DF 5A22 4731 7C86 236E 073F 5C53"
	$"E5B8 DCBB 73F2 9E87 D38F D293 683D 9495"
	$"AE45 0C31 C7BB 2463 A000 67F3 C578 AFED"
	$"01F0 DF48 F1C6 98D1 5C69 D14A D1E4 82EB"
	$"9C7D 0F6A E1C7 528D 4A2E 2D1D 581A AE95"
	$"7523 E02F 893F B3FD B595 C4B2 E896 6B6D"
	$"7099 2548 F95E BC46 FF00 4EF1 1782 AEC6"
	$"A1A7 C93D 8DE2 B7CC 6224 640F D315 E161"
	$"311C FF00 ECF5 B55B 6BD5 1F51 5A92 8AF6"
	$"F4BD 4F46 F037 ED1B 6F77 247A 3F8D A2D8"
	$"DF71 2F17 B1FF 006A BD8E 1BAB 0D52 CD6E"
	$"F4FB A8AE A071 C3A1 CD78 7996 5B3C BEAF"
	$"2A57 83D9 F6F2 3D1C BB1D 1C6C 39BE D754"
	$"66DC 0F98 AC64 803A FBD6 55E8 458C E157"
	$"35C3 176B 26F5 3D04 AFAB 472F AAA4 7273"
	$"9E47 5AC3 9919 5F2B 8231 5EA5 04D2 B339"
	$"AAB5 718A 3240 C645 5DB4 B58A 4C93 81F5"
	$"AB9C 9222 3136 AD6D D42A 82A3 03A5 6ED8"
	$"A050 003D EBCF AAAF B1D7 1F77 7376 D460"
	$"82DC 8F4A D8B6 F2F8 392B ED5C B256 06AE"
	$"8B68 5B7E 1578 A749 A8C5 6884 EEE9 D735"
	$"1AA6 897A E871 DE26 F194 71AB 18E7 55C7"
	$"5E6B C6FC 5DE3 B33A 3C69 37A8 2735 EAE5"
	$"D857 39D9 99E2 AAAA 34EF D4F3 6B6D 45EF"
	$"75DD 3C96 2717 70F2 7FEB A2D7 A9EE 6FEF"
	$"0AFB BC3F 2C20 958F 8BC6 7354 A9CC 9963"
	$"C05F B377 8CBC 5006 A1AF 4126 93A4 96EA"
	$"EB89 1BE9 5F46 F807 E0CF 85FC 0761 E758"
	$"E9B8 93A9 BA99 4172 3F1A F81C E736 78B9"
	$"3C1D 14FD 9AF8 9F73 E8B0 9845 8682 AB37"
	$"793E 9D8E 9F4B D026 D4EE 48D2 9D66 24E4"
	$"C92F FAB5 AF4D F87B F0F7 54B8 089A BDCC"
	$"772D BC97 5B3C 888A E780 49E6 BCEC BB2D"
	$"58D9 29CB BE96 EA6B 99E2 FEAD 1717 F15B"
	$"EE3D 92F6 FF00 C15F 0E74 DB7B DF13 EA96"
	$"3A4C 5237 9500 76FD E4AF D963 400B C8DD"
	$"3850 6B5B C1DE 3BF0 4F8E 63B8 7F0A 7882"
	$"DEFE 4B26 0975 061A 39AD D8F2 04B1 380E"
	$"9ED9 15FA 9E1A 8BA3 4ECB 43F3 DA93 7566"
	$"E527 7B9D 305E 01C8 5C67 EB58 1E2D D075"
	$"7D51 F4DD 4B41 B8B3 4D47 4ABB 33C4 9761"
	$"8C6C 190A 3062 BF37 439E 3AE3 DEBA 52B1"
	$"073B 75F0 AAF0 DF45 E2C5 D7A3 BCF1 325C"
	$"25C3 493D B84B 37C0 C043 0A8C 8C0E 8FCB"
	$"03DE BB3B FD3B 41E3 55D6 74ED 34CB 080C"
	$"F737 10C6 7CB1 ECEC 3200 3EE2 A9B0 39F9"
	$"3C6B AA78 8E4F B1FC 3FD3 3ED5 12F0 FABD"
	$"E068 ED23 EC4C 63EF 4DF8 71EF 56B4 AF00"
	$"5845 7C9A E788 EF66 D7B5 4539 5B8B B188"
	$"A13F F4C6 1FB9 18F4 EA7D E8D8 4750 7001"
	$"1901 40CF B629 3CDF 9300 9DD9 E323 A73F"
	$"E78A 4310 9049 C38C 31EA 4FB7 B549 D541"
	$"3D3D FF00 9D00 3028 75EB B431 3EBC F6A5"
	$"75DD 8462 413C 75FE 5400 9C45 190D 9C03"
	$"D7D2 BCD3 E25F C4FF 00F8 45EC 65FE CD61"
	$"35D6 D2A0 8C60 7A57 9D99 E2FE A987 725B"
	$"9EA6 5381 FED0 C4C6 93DB A9F1 878E BE27"
	$"6A5A 8DD5 E5CB 5C89 6640 C669 643F 773F"
	$"C22B CE7E 19E9 BAAF C67F 8916 3E0F D32F"
	$"4DB4 1732 05BB BB2D 848D 3B81 EA48 CE05"
	$"7E6D 86A5 F5CC 4373 EAF7 F3BE 87ED 55D5"
	$"2CAB 00E5 05B2 F87D 0FD3 FF00 0278 4343"
	$"F00F 872D 7C33 A15B 98A0 B650 371C 7992"
	$"91F7 99FD 49AE 8F81 851B 803F A62B F54A"
	$"14A3 429C 69C7 64AC 7E0F 89AB 3AF5 6556"
	$"7BB6 D860 3800 1FAE 79FD 6933 9E1B 3C8E"
	$"315B 1889 BD94 3332 1527 8EB9 FC69 4EC7"
	$"5531 9C1E D919 FCE8 B80A 7249 3BB1 D87B"
	$"8FE9 CD20 9180 C640 6270 0018 EDDE 8D80"
	$"AD71 771D A200 0333 39DA 4005 B07F 3FD3"
	$"F2AE 57C4 3E32 B7D1 A686 CE76 F32F AE09"
	$"8EDB 6465 A28D FA00 E579 C93F C239 F5C5"
	$"6356 A282 BB3D 3CBB 052C 5545 18EE EEFE"
	$"4B7F 9F63 CE35 BF8A 49A5 EB96 DE1A BB9B"
	$"CDF1 5DF4 6459 C888 F2DA 024E 1439 4FBC"
	$"4FCD FEAF 72AE 3E7C 7354 57E2 4DD2 EBAB"
	$"E1D1 2A1F 1B4B 0FDE 1BA4 B273 824A 871F"
	$"2990 28CF 3988 7F7F 208A F2E5 8A77 B79D"
	$"BFED EFF2 FEB6 68FD 0687 0EAF 64A6 D68E"
	$"0E7D 3F82 9EBE 93BA BDB7 B7F7 9492 D1B0"
	$"F1DD C4BA B4DA 3686 E87C 5654 C977 1C84"
	$"9B77 DBCB 9899 B0AE 4003 2CC4 28CF C84F"
	$"5AEB FC3B E215 9F50 9B4E D35F 76AA BF35"
	$"DC2F BFCA EDB8 C65C 0C8C 9C6E 383E 9C72"
	$"77A5 5B99 FCED F3EB F2FE BB9E 5665 95AA"
	$"307C CB5E 5527 B7F0 F4E4 7FE2 EEBA 6BD1"
	$"46FD CDA4 D14E 5A24 2448 AB96 5E70 3D71"
	$"9F7F 5F6A CDD6 B4A4 BB81 9645 CEE1 8C57"
	$"5D45 CD13 E275 854B 33C1 7E24 FC31 8F51"
	$"5731 4443 73C8 1CE6 BE70 F177 C1BF 3DDE"
	$"2BCB 10E9 C825 96BE 6B17 86F7 F9A3 A347"
	$"D2E0 7149 4796 5AA3 C6BC 55FB 334B E5BD"
	$"EE85 19DF 9276 639F C2B9 ED23 4CF1 9FC3"
	$"B767 D36E A589 57FD 65B4 D9DA DEB5 BCB1"
	$"0B1D 86F6 388D F67F A0E3 87FA AE23 DAD0"
	$"76FE B547 73A0 7C4C D1FC 4A45 A6A6 A74D"
	$"BF51 F71F 8473 EC6B 42F5 5D18 B123 2C38"
	$"6439 0457 CC62 304F 0D55 D3A9 AED6 7DCF"
	$"A1C3 E263 88A7 78EF F979 1837 56E0 A9DE"
	$"589E B9AC 8B8B 72AE 36E7 078A D69C FDE2"
	$"E6B9 B522 F20A E557 902A E5A2 F96A 0152"
	$"6B59 B56B 1304 D6A6 E5BB C785 4CE2 B520"
	$"9218 C020 E4D7 9F3B C9DD 1D17 B9AD 6D30"
	$"72B8 18FC 6B5E 2BB8 E140 5B68 3F5A C5A1"
	$"952F 3C4A B167 0EBC 0EC6 B8BF 10F8 D0A2"
	$"B05B 80BF 8D69 4293 9CAC 903E 582E 6679"
	$"3F89 BC5E D397 48E4 C9E7 2735 C0DD DDC9"
	$"312C D93C 9AFB 2C0E 1553 85DE E7CE 6618"
	$"9756 5A6C 47A4 B30D 6B4F 0318 3750 F1FF"
	$"006D 16BD 7327 D2BD 9A49 729E 0D69 3E63"
	$"EF36 F88D E1DD 34A6 9969 E1EB 9D4E 4270"
	$"AB04 61A3 07D4 9F4A 965F 0DEB FE37 BD86"
	$"E2FE C5EC 6251 F25B 443E 520F 426B F388"
	$"4638 DA71 A549 592D DFF5 DCFA E961 6795"
	$"CFEB 1899 A726 B48F 6F36 7A9F 827E 09DA"
	$"8449 F514 2A17 9118 E01F AD3B 4FF1 D78C"
	$"354D 4753 D2FE 137C 3282 FF00 4FD0 6EA4"
	$"B1B8 D475 7BD3 A6C5 7170 9C49 15B2 6C2E"
	$"D83C 6F6C 2E7D 2BED 729C B561 E9A9 496A"
	$"7C5E 6398 4F17 36BA 1916 8BAB FC60 F13D"
	$"8FC4 EF03 CD6F E1EF 1AF8 20DC 683A B787"
	$"F5F8 0DCC 3133 FCC4 078C 82A4 8E56 55C8"
	$"61D4 7158 DF0F E1F8 89F1 4754 B9F8 D5A5"
	$"78EF C1DA 06BF 0DA5 C683 7BA7 7F63 492F"
	$"9022 9F76 DBB2 D3AB 6ECA 0218 8F95 5B1D"
	$"735E F256 4796 7ACF C13F 88DA 87C5 0F06"
	$"BEB9 ABD8 5ADB DED8 EA17 3A5D CB59 CC64"
	$"B5B8 7808 066B 763C 98DB 3EBD 548E D5DE"
	$"EF45 DFB9 546C 1927 3C0F C693 B219 C9DE"
	$"78F9 6EEE 64D1 FC17 A63E BB78 AC52 4991"
	$"F659 5B9C 73E6 4F8C 1C7F 7572 7F1A 65BF"
	$"8067 D5EE 23D4 BC75 A91D 6665 3BA3 B245"
	$"F2EC 20FF 0076 2CFC E7A7 CCF9 FA50 075F"
	$"0A2C 4A21 4458 E251 B546 3017 8E9E DF4A"
	$"7632 4861 8C8C 13EB F8F6 A400 9BF6 649C"
	$"3104 018E D48A 802E D527 D304 1279 FE74"
	$"00ED 98C0 CE48 CE3F FAFF 00A5 21C2 9501"
	$"87CB C9E3 9F7F E940 0800 C052 402A 3D78"
	$"3460 EDCB 743D 80C1 E680 2BDD C822 8198"
	$"C2D2 1C1C C6A3 923A 703B 76FF 00EB D7CC"
	$"FF00 B40F 8375 0D46 CA6D 53C3 B768 B344"
	$"15E7 B2DC 7CC8 D4E7 1903 DC1C 6704 E7A5"
	$"78F9 CD1F 6D87 76DD 1F53 C2D5 5D0C 5A9E"
	$"E9E8 FCBC FD3A 1F09 F8CE 6D76 E9A6 D389"
	$"2AAB 232B 843B 8EEF 7229 DF0E EFFC 4DE1"
	$"978D B46B 6923 566D CD20 1CE4 77DC 3D0D"
	$"7C24 E30A 541C 23A3 DDFA A3F7 7865 B52A"
	$"D295 6C44 7979 9351 F24B 5F79 7472 DA2B"
	$"D5F4 3EBA F869 F197 C58C B00D 4C4C D200"
	$"17CE DCC4 9AFA 97C1 DAFD DEB3 6293 DCA3"
	$"AEE0 0FCF DEBD AE1D CC2A 5697 B377 B1F8"
	$"A714 6594 7095 1CA9 E9E4 7579 247A F5C8"
	$"DBD0 71C5 076F 1B9C 8EFC 9C63 9EF5 F707"
	$"C50E 1866 3C82 40EB 8E86 9B9E 1BE6 3C8C"
	$"9278 C7F8 5300 1B8F 2475 EF9E 303F FAF4"
	$"C90B 60ED DB91 9E58 E07B F5A4 356B EA71"
	$"5E24 D6EF 9A19 17C3 B2C3 1796 FB6E 9EE7"
	$"2995 240F 909F 7FF8 1FF7 6BE7 3D53 C7BA"
	$"96B9 1DE5 B7C2 8963 3A35 9CB2 2788 CEA8"
	$"66B7 9962 2086 3136 0BC6 B8DF 8017 CF63"
	$"D88C 8AF1 F1D5 A49A 51DD EDFA DFF4 3F52"
	$"E11C B295 484E A625 3F65 1B7B 4B59 BE67"
	$"FC2E 54F7 5CD6 E65B 747A 3470 1A0E AABA"
	$"968B 73A7 7C2C 95AE FC01 03CC 9E24 9F57"
	$"3341 7B6D BC36 EF29 5376 C528 A4AA DBE6"
	$"4908 0260 0715 D4F8 2EDA DB55 F0D2 E97E"
	$"11B9 9AF3 E1DC 48F6 FA8E A77B 3326 A56E"
	$"DB95 8C79 5C85 C129 B6DD 0189 BAB9 EAC3"
	$"C8A2 D4DA E5DA D65F E0EA DF9A FEB4 48FD"
	$"2734 84B0 D09F D612 538C D4AA D926 9621"
	$"DFD9 462F AD39 26B9 B6BB 69BB 4A55 6DE8"
	$"9A4F 8766 BFD1 5347 B596 47F0 808C 47FD"
	$"B064 3F6C 3229 E164 E0AC 8727 887F D5A8"
	$"E720 F27D 0BC3 FA3D C9B6 5B20 AE34 6895"
	$"7CAB FF00 3499 E52B C0DF 9FF5 87AF 1C05"
	$"EC6B D8A1 4DEF FD5B BFAF F5D4 FCC3 39C6"
	$"45C6 517B A939 3D3F E5EB B5E1 FE05 6D3A"
	$"AD3F 94F4 5D31 4A46 1154 4912 8004 ACD9"
	$"6603 B93D CD5C 9A20 DCED 0463 9C9A F52D"
	$"747E 7155 FEF1 98BA 9685 1DD2 9250 1FA8"
	$"AE33 57F8 7969 7459 8C0A 7F0A F3EB D0BE"
	$"A755 0C43 8687 17AB 7C2C 806F 31C3 8FC2"
	$"BCC3 C5DF 08EC EFA2 961B DD3C 3A9C 82CA"
	$"9CE2 BC4C 461D C1B9 C746 7B98 5C5D ED17"
	$"B1F3 97C4 8FD9 B355 D3AD E4D6 3409 05CD"
	$"A86C ED1C 4919 FC3B 5703 E1FB DF17 6821"
	$"ACF5 0B46 B9B7 5E36 3E77 28F5 14A7 3A78"
	$"FA36 9E92 8FF5 F89D D45D 4C35 5E68 6B16"
	$"7510 DC58 EA90 95B4 701D 3978 DBEF 8FC2"
	$"A85C DB1D E57C BE00 EFD6 BC77 4DD2 959E"
	$"E7B1 ED14 A3CC B67F 8151 2DCC 3F2C 8BC1"
	$"A6CB 7696 E380 07BD 1AB9 58B5 6B59 9977"
	$"5E22 F29B 76FE 9D2A BC7E 312A F969 F033"
	$"D2B5 8611 C96C 64EB 462E C6F5 978D E13F"
	$"EB24 C71C 7353 5CF8 EE20 B859 73F8 D62F"
	$"0737 2B1A AAD1 6AE7 27AD 78E9 803B 6523"
	$"39E8 6B84 D4FC 533D DB31 2EC7 F1AF 6705"
	$"82F6 7AB4 7998 DC5D D72C 5986 F70D 2B33"
	$"B7D7 AD54 9AE3 60CE 01F4 AF72 1068 F127"
	$"2B21 BA54 A5B5 DD38 E7FE 5EA1 E3FE DA2D"
	$"7B06 E3EB 5D91 8B48 F32B 4FDE 3F54 3C03"
	$"F09B 4AB5 8D66 36E0 3E72 C71C 9AF5 4B1F"
	$"0C69 B6AB 9484 02BD F1DA BC6C A32C A74E"
	$"929B 5B86 6198 56C4 D572 93B9 E51A 8EB7"
	$"F1CF C07E 25D6 7C79 AB68 B06A DE06 9AE4"
	$"46DA 159C DF69 D434 FB54 40BF 6C87 0AA1"
	$"C310 5DA1 E4E0 E41C 835E B3E1 4F13 685E"
	$"35D0 ED3C 4FE1 7D52 DEFF 004E BD52 F1CB"
	$"0104 13DC 30FE 1607 AA9E 41EB 5F45 6D2C"
	$"8F2C F9FF 00C2 FE33 F107 877E 2DFC 57B3"
	$"F0C7 C3ED 635C D7B5 8D6E DFEC F0B2 7D8E"
	$"CE28 23B6 4459 EE2E 9C61 1198 B614 0666"
	$"0320 1AF4 8B2F 829E 1BF1 4451 EBDF 15BC"
	$"1DE1 6BFF 0013 DD16 37B3 E970 CB04 32AE"
	$"7E44 932D 99B6 8E09 7C83 8CE0 0E29 B761"
	$"237A E3C5 5E1C F0E0 8FC2 7E14 D217 50BB"
	$"B541 143A 5693 1AAC 76C0 74DE C311 C207"
	$"BF3E D51A F83B 5AF1 430B 8F1E EA80 5B39"
	$"DCBA 3D83 98E0 C750 2593 8798 FB70 BED4"
	$"8675 B6B6 167A 7DB4 763A 7DAC 56B0 44B8"
	$"8E38 D362 28E3 A01C 7615 2818 DAD9 1B8F"
	$"CA3B 771D 696E 0244 8D96 0D86 6C90 7B74"
	$"F5A0 EE39 6E5B B15F 4FCA 900E EA32 09CA"
	$"8CF1 CFF9 FE74 1DCD 8DBF 329E 73EB C77F"
	$"4A60 20C1 1F2F 1D86 0F34 A319 20E4 039F"
	$"C3FC F340 0632 4961 D4F6 3907 FCF1 4855"
	$"B69D 839E 99CF 5FFE B500 56BB F955 9239"
	$"4452 85E1 88EB 9E95 E2BF 116D AECB 4D7B"
	$"E1BB E5F0 EEA0 9313 7124 8A0C DA82 800B"
	$"470E 587C E7AE D523 7657 7328 CD71 6313"
	$"E4D3 47DF B1F5 3C31 28AC 4AF6 91E6 86D2"
	$"8FF3 2FF2 8EEF CBC9 B3E5 DD43 C31A 3EAB"
	$"E76B 9E1E D1DB C2F6 61E7 9AF3 40BB B459"
	$"6FB5 5119 C37D 9909 185D CC46 CC22 46DB"
	$"8032 102B 7BC0 3E01 D2EE 2D63 D6ED 2C86"
	$"9FA3 4D6E 27B8 F0E4 BF3E A192 76AC 8777"
	$"CDE5 B119 5958 7206 D0BD 09F8 D960 615A"
	$"7A2B 27AD BB79 7AF5 F43F 7BCC 71F5 69E0"
	$"A51A 93E7 95F9 6524 FE39 EBCB 5BCA 9C2C"
	$"A2FB CB4B DD29 4BE9 AF87 DF09 BC33 6914"
	$"5A85 A592 A466 3571 6B2A 7EF2 2279 F987"
	$"507E BD72 3A57 A8C1 6F69 62AA 90C4 02A8"
	$"C93C 0000 FE55 F539 765F 4F09 4D72 A3F9"
	$"D737 C656 C662 A4EA 3BBF CFCD 793E 8577"
	$"D66D 3CCC AC80 2796 5CDC 71E5 AAFA EEF4"
	$"EBF3 74CD 588B 51B7 790C 4F20 03A8 9090"
	$"11B3 D3F3 AF49 4D1C 12C3 4E2B 55FD 76F5"
	$"2E65 76E3 701D 307A 6466 9A1D 72CD B485"
	$"1EDD 7D71 5672 DBA8 FC12 07CA B82B 8C67"
	$"8FF3 CD54 D41E DE28 09B8 7655 DC30 00CE"
	$"EED8 CD0F 6D4A A69C A494 773C 2BE3 25FE"
	$"991D A44F F10E FE7B 1B23 721B 4D3A 712D"
	$"24AD C7DE 53F2 9509 C977 C32F F067 A578"
	$"178D EE65 BCB9 B1D4 7E34 EA43 C376 F0DE"
	$"8B9F 0DDC 6877 1286 BD1B 54AB CAC4 6E54"
	$"2A10 1B99 8197 960A A402 07CD 63E4 9CA4"
	$"A4EC B4E6 F2FE 5B7E BFF0 E7EF 3C19 4A51"
	$"C3D2 9E1E 1CD3 F795 08B4 AD36 D7EF 54FD"
	$"15DC 7BD9 ADD4 1B9C 595C DFEA 9A56 A7F1"
	$"6651 E11B FB2B 869F 43B6 D1EE 5A18 2F61"
	$"6E44 932A EE30 23B6 D06E 8132 4C09 CAF4"
	$"6AF7 5F08 F85E FEFA 6B3D 63C5 96AB E1E9"
	$"ECD9 D2D6 C74F 9445 05C4 479E 557F D4AB"
	$"13CE 7264 EA71 9A78 3A6E 527C DA3F B5E5"
	$"D92F 5EBF F009 E27C 653C 3D08 7B0F 7A9A"
	$"528D 26D6 B513 BF3C A7DE 506D A8B7 BA6D"
	$"FF00 CBC7 6F57 D3B4 1475 859A D3EC 91AC"
	$"7E50 B388 0488 A678 18E8 14FA 77AD B874"
	$"B863 60C1 7644 176F 9406 171E 83DB DABD"
	$"F842 C7E2 F89C 5B9C 9ABD D77E EFF9 9F99"
	$"6D23 5083 6360 6704 28FB BF95 48CB C01C"
	$"64F5 C93E BC8C 56B6 3CE6 EEC6 B22F 5620"
	$"053C 5466 088A 95F6 C0C8 A971 4F71 A762"
	$"9DC6 9B04 AA37 0196 E07A 67E9 5CFE ABE1"
	$"4B6B 9424 45D7 8E45 70D7 A0A4 8E9A 559C"
	$"59C3 6A9E 0011 3B34 708D AD9D CB8C 861E"
	$"F5C0 78BB E03E 81E2 2B19 3669 EB6D 31E5"
	$"658D 7907 DEBE 7B11 8574 E7ED 11EF E1B1"
	$"EE2A D73E 64F8 8BF0 47C4 3E11 98DD C701"
	$"0A87 2B73 10E0 FA6E AE04 EB72 5B5C 2586"
	$"BD6C 03BF 0B70 9F77 F1A3 1145 6228 A9C7"
	$"E24B F0EC 7A18 4C4F B29B 52F8 586A 0231"
	$"1F99 0387 4F51 CD71 1ADE A263 CED6 200C"
	$"D79D 874A 73D4 F5EB 4B92 3738 9D47 55B8"
	$"6638 6E2B 24DC DC39 2EEE DC9E 2BE9 2953"
	$"491E 155A ADCA E899 753B 88B0 3CC6 3F8F"
	$"4A53 AEDD 0523 71FC E9BA 1196 A2FA C34A"
	$"C51B 8BE9 E719 6635 5816 61F5 AEBA 71B2"
	$"B1C9 524E 5A8C 240C A96C E6A9 CCE1 94AA"
	$"E411 5AC4 E5AB 21BA 33AF F6EE 9A09 E977"
	$"0FFE 8C5A F65D C95D 6968 79F5 5372 D0FD"
	$"ABD1 AD1A D215 C479 C8AD 7015 4121 46DC"
	$"6011 9ACF 0D1E 5824 71C9 DDDC 5CE0 A851"
	$"803B 578B 69FF 00B3 C5CC DE38 D77C 47A8"
	$"F89E 7D1B 45D6 2E56 76D0 7C35 34F6 105D"
	$"32E0 89AE 9F76 4484 FDE1 16C0 D819 2791"
	$"5D09 D89B 1E95 AEF8 D342 F0CB 47A7 CCF3"
	$"5D5F C831 069F 6CBE 75C4 87B7 CA3E E8FF"
	$"0069 B03A F358 EDA3 F8C3 C60A 0F89 2EDB"
	$"42D2 F3FF 0020 EB09 BFD2 651D FCE9 C7DD"
	$"E39D A98F AD00 74DA 3683 A6E8 169F D9FA"
	$"269F 6F67 6EBC ED89 3193 EA4F 5624 E793"
	$"9357 CE57 6FCA B8C7 273D F8A4 0295 0A03"
	$"AF4E 4907 A67B 0A37 0CEE 3C93 CFA6 7F3E"
	$"946C 0226 0E08 6201 C63B 9C67 F3A4 1F3E"
	$"30CB 9279 03E9 4807 7DEC 7390 DE87 23BE"
	$"7E94 2B0C 7CA1 82E3 924F 39E2 9808 CB98"
	$"C174 FAE4 D2EE 1C6D EB8E C7B7 D680 1BCE"
	$"7393 B483 9C70 7A52 AB02 0807 81C6 09E9"
	$"4808 6E60 5963 2AEB F363 E563 C053 9F4A"
	$"F19F 893A 78D4 278A C2F2 DCCD ABAC 6D25"
	$"86AD 2C21 EDAD 40CF 2EA4 80C8 0F25 5BE5"
	$"18E7 3902 B971 6AF0 B7F5 E4FE 47D2 F0D5"
	$"474F 14A4 9D9A BBDE DA5B DE8A F392 D176"
	$"DFA1 F376 AD05 E5D7 8A5E C6FE 68DB E20E"
	$"9F64 2E60 F1B5 CC24 69D6 F19E 5312 1211"
	$"F0A4 2A5C 328C 676A A165 04F4 7F0F B533"
	$"73E2 9D46 1B59 1AD7 C77A 598E 2D47 C4F7"
	$"F118 2D2F 1DF0 1BCA DE70 B248 3690 C46F"
	$"9D07 9881 7E62 7E6E 9B6A A2BE F7FF 00C9"
	$"D7DB F4ED F7F7 3F75 C742 3530 3271 5EEA"
	$"A69D 93D7 EAF2 6AD8 74BF 9D39 272E A935"
	$"1BFB D167 D21E 17F1 45A4 B6D7 37C2 1B8B"
	$"6B9B 562B 752B DB95 13B0 1F37 9699 3CE4"
	$"1629 D40C 127D 313C 67F1 2D2D B469 BC4B"
	$"7C5E 3F0F C30B 7DA3 4E48 7CCB B9B1 D4AA"
	$"A9CB 8CE3 E604 220C 9278 38F7 6588 51A5"
	$"E5BB FD7E F3F1 EC36 4F2A F8F5 1766 EEA3"
	$"1D74 E67F 0B6F B47E D3F5 7D19 E63A AFC5"
	$"D7D2 B434 F176 A9E6 1F00 5CA4 7F67 D3A1"
	$"858D FB4C C580 249F 943E 51F1 2B91 0BA8"
	$"C282 DC0D 41F1 8E1F 0F69 B6BA C78A EE56"
	$"4F09 6A2B 19D1 A0B3 89FE D312 9C61 E50C"
	$"3722 8049 6327 CC4E 3CB0 548A F3D6 3795"
	$"DE5B 257F FB75 ECBD 7BFF 00C3 9F6D 5385"
	$"DD68 4614 57BD 2938 4755 FC78 DB9E 4FFB"
	$"8D5F 97FC DC2F DF43 F156 2F0F 35BC 1E30"
	$"B88D E1D4 1C7F 6779 10BE E8E3 2015 3203"
	$"F757 0578 2779 CF4C 735D ADBF 8AD6 0BA8"
	$"6C35 79E2 F3A6 2444 C884 A8CF 4CFA 73C6"
	$"3A8E F5EA 52C4 5F49 6EB7 F9EC 7E7F 98E4"
	$"8E9D AA52 4F96 7771 D57D 9F8E FF00 3DBB"
	$"EFB1 D2C3 76C9 FB99 7689 1B3B 4EEC 83E9"
	$"9C54 1ABF DB62 B266 B1B7 4B89 1F1B 95FE"
	$"618F A7F1 7E95 D6DB E5D3 73E6 2118 AAB1"
	$"E676 8BEA 7CF9 E3AB BBBB 79AF 8782 2CA3"
	$"F15E A33C EA6F 74EB C6FB 4A44 14E7 7C68"
	$"78B9 6423 1BB2 3CA1 CE0E 323C 423B A4B0"
	$"D4F5 29BE 1EB4 BF11 F57B 9BD5 9754 D2EF"
	$"AF12 ED74 B947 2D2D B3B8 DB72 E8D9 02E0"
	$"E123 0A3E 57E5 87CD 62DD A69C 75DF 957F"
	$"33EA 9FA7 4FFE D8FD EF86 6927 8592 ACFD"
	$"9A69 7B59 5BF8 115C BC93 8DB6 752D 695B"
	$"5B27 FF00 3EB5 EABE 1CDA D8D8 DECD 1786"
	$"3537 F88B 7726 A3F6 8B9B 4BC9 84ED A4CC"
	$"7EF4 9007 24BB 9248 6BA4 262F 9795 E86B"
	$"E93F 0669 D169 F1EE 1A83 EB12 B4C5 F6CA"
	$"E1FE CC4F 50AC 7927 393B FEE9 C020 77AE"
	$"CCBA 2ACA CEE9 75FE 6FF8 63E6 38DA B4DC"
	$"E5ED 21EC E72D E095 9525 D1AE DED1 6AED"
	$"D5BE A8EF E18C 2E41 62CC 096C 1238 A972"
	$"3924 05C8 FC3F 3FCA BDC4 7E4B 2776 2630"
	$"064E 029E A7D7 14FD F850 0AED 0464 E7B0"
	$"A091 A46D 4C9D A4F3 8F73 EB8F 5A40 0300"
	$"581C 86FA E47B D200 C6E6 3BB9 C8E0 6471"
	$"4D64 566E 5460 13D7 AE7F A527 1B8D 32AC"
	$"F60A EA58 C430 3AF1 5997 5A2C 7B59 500C"
	$"9CF1 8EA6 B92B 5052 5637 854B 1C37 8A3C"
	$"3714 D6D3 C371 651C F0C8 0864 6190 7FC2"
	$"BE32 F8D3 F05A 2B36 9EFB C383 6C52 1265"
	$"B67E 76FF 00BA 6BC5 97FB 255D 57BA F73D"
	$"DC3B 7888 596E 7CDD A8FF 006A 6852 184C"
	$"8FB1 3202 B573 7AC6 A1F6 B420 21DC 7AD6"
	$"3EC2 9CA5 CF4F A9ED 3A93 A70F 673D 4E7E"
	$"685C 6030 FCEA 0922 60B9 5FE1 AF47 648F"
	$"3FB9 5256 2369 1C1C F38A 899F 3C62 B44D"
	$"27A9 94AC 42C7 1C13 8CF1 4C79 3682 15BA"
	$"715B C753 193B 22B4 921E A0F2 2AA5 C4DC"
	$"0DAD 8CF5 ADE9 238A AC87 E88C BFDB 5A76"
	$"4E4F DB21 E7FE DA2D 7B2E E1EB 5D89 1C6E"
	$"48FD C545 511E 0AE3 1F8F F2A5 0AC4 0E09"
	$"518C 31EE 31DF FF00 AF50 958E 4327 5FF1"
	$"5685 E17B 6597 59D4 1616 94ED 8A15 1E64"
	$"B3B7 A222 8DCC 7E82 B0F7 78E3 C643 0824"
	$"F0AE 90DC 0242 BEA1 32FB 0E56 01F5 CB0F"
	$"E54B 4037 342F 0B68 1E19 89E2 D2AC 7CB9"
	$"646C CD73 2319 2798 F732 48DF 331F A9AD"
	$"70B8 CFDD E472 0003 BD2D C023 2178 E30A"
	$"A4E3 D3FC F348 DB54 852F D724 E4F1 8340"
	$"0D2A A8FD 76B7 A8EE 3BE6 A420 9539 191D"
	$"727F 0A00 60DC 3695 1C9E D9DD FCFF 000A"
	$"319C 1231 9E83 81D3 DBFC F4A4 02B9 4605"
	$"030E E7A6 4E47 B7AF 4A33 CECC EE23 A8CE"
	$"3D3B 5300 EA43 E5BD 063B 7B9A 41C6 4A9C"
	$"AEDE C31E F934 00E1 9604 1EAC DD32 280A"
	$"587D DE0F 7F4E 28DC 06C9 1096 1238 6539"
	$"CE47 515E 7BF1 1B49 B43A 1DD5 8F88 6033"
	$"E857 2AA8 D0C0 3F7B BBB3 16E8 B82A 0E4F"
	$"0303 A9AC 3111 4E9B BEDD 7D0F 5B25 AB3A"
	$"78BA 7ECD DA57 4E3D 9493 D1BF 23E6 2F8A"
	$"5A65 8E83 62BA 27C4 C479 FC0B 733C 6345"
	$"B2D2 D244 BA8D C90C 5E47 C9F2 DBE6 F9CC"
	$"9B8B 330F 2940 6247 3F75 1DBE 9F71 A5F8"
	$"47E3 348B 2D8F DA95 7C21 6BA3 A4C8 6DE1"
	$"38D8 9391 9644 2DB0 142C 6E15 CB83 8539"
	$"1F2D 5928 D46A 7B2B 297A 7D94 BF5F F3B9"
	$"FD0F 96D5 A95F 074A 783F 8A5C D3A3 771B"
	$"2AA9 2588 94FC 9ABA 827A 5DB6 BDD7 1B7B"
	$"9695 AC6B 56AF 6BA1 F8B7 EC4F E245 CA69"
	$"11DA EE10 6C07 11AC 8C87 1D54 ED00 9231"
	$"8948 EDC1 F8C7 569A EFC5 93C9 E1C0 B7DF"
	$"146D EDF6 0B19 DDC5 892B C901 4808 F22A"
	$"807C AC88 54F5 27A0 EDAD 397B 349F C57F"
	$"FC9B A7CB FAEC 7C9E 5585 A4B1 739D 2BAA"
	$"2E2D B6ED CCB0 EDFB F2EF CF7D 5754 ACED"
	$"7E64 79D5 BDC5 DC9E 2DD4 758F 02DB C7AF"
	$"FC4F 5896 1D73 45BA 99A5 D362 4420 4E61"
	$"8DF6 ACE1 36A6 F8D8 F950 9F9A 20C0 0DB6"
	$"F43B A7D3 F53D 535B F84F 2AF8 BB58 BEBB"
	$"597C 4305 EDE1 9ADF 4D50 06E9 A179 5409"
	$"003B 80BC 3F74 2855 53D4 F9B1 6EE9 C357"
	$"76D7 9CBE D2F4 5D3F E0B3 EF2B D38B 8386"
	$"27DD 8384 6351 A8AF DDD1 5CAE 84D5 BEDD"
	$"46B9 676D 6E9A DA9C 6F7B C3DA D368 11DD"
	$"DCFC 2EBD 7F16 68B7 7712 4DE2 0D47 51BF"
	$"317F 648C 1DD2 C6EF CC40 7CCD F6A6 CB3F"
	$"1B40 CE4F 51E0 FF00 1FFF 00C2 3F6B 1C1E"
	$"08BB 3E22 F053 BCB2 6A7A F5D5 C9B7 6D37"
	$"3C12 370C DA8C 1C86 3B9A 6278 009D 95D1"
	$"46B7 B36B 91DD 2DB5 DE3F 69BF 4FF8 3D0F"
	$"1733 CB3E BB1A 9F59 8F24 A4D7 B54A 3A53"
	$"AB14 D52A 71B6 FED5 59B4 AF76 EDB5 48DB"
	$"D6FC 1BF1 26C5 6CA0 9B45 BF5D 53C2 9B0B"
	$"4DAB C92F 96D6 F9E3 6B2F 588F 4C46 72CD"
	$"9E3A E077 EFE2 8D3E F74A FB5C 7AD2 47A4"
	$"EC0C B7E1 F03E 981C F5FE 11CF F4F7 2857"
	$"5285 AFA7 47E5 DCFC 8F36 C9EA D0C4 F33A"
	$"7EF7 35A5 1B6D 52FF 0007 DDAD F67A 3D99"
	$"E33F 13E5 FEDC B7D4 628F 54FF 0084 2608"
	$"9A39 1F5D 7216 3BE5 C8D8 B332 61B0 C406"
	$"5109 2723 E704 723C 7350 82F7 5BD4 B55D"
	$"374F 66F8 7377 6975 6E6E FC5B 7221 8E3D"
	$"6F27 6C5E 7C91 7C8E 64E5 D228 8957 FF00"
	$"96A5 8824 78F8 CBCA 7A3B 5FFF 0025 DFDE"
	$"F9EB F8FF 0074 FD3B 8679 6861 573C 7DA2"
	$"859B 5ADF 117E 4FDC F9BA 6F95 A5E5 0FFA"
	$"7A7A 2FC3 DB7F B66A 5A8E 93A0 68D3 7836"
	$"F2D2 E63F B7EB 13C2 B0A5 FB7C B812 EDFF"
	$"0054 EC72 EB04 45A3 20F3 8C6E AFA4 FC39"
	$"6D0C 5E64 56D6 AD15 C2ED F3AE 7628 331F"
	$"5E38 19E4 ED1C 73DE BD3C BD69 7B59 745D"
	$"BBBF 99F0 5C69 36AA 7239 A9CA C9CA 69B6"
	$"A49A 8B8C 7FED C565 E6AC DEAE 4974 8AC4"
	$"965C E38E 02F5 3CF5 A714 6EC1 81E9 EBF8"
	$"D7AA 7E70 2852 1540 5008 3F30 273D 7AD2"
	$"6D3B 8332 93CF 231D 3FC6 9885 3B77 7CCB"
	$"D7F1 A1DC 6D0C A067 3827 D3DC 8A00 6800"
	$"3921 06EF 5CF7 EFDE 9235 C93B D8ED E0A8"
	$"07A7 E39A 000E 31D4 021B 3CFE 948C 18E4"
	$"6492 339E 703E B52D 0D1C EF88 228D E06E"
	$"3048 FF00 EBD7 CD3F 16CC 30C7 330C 6F19"
	$"AF13 1F47 9D68 7B79 654E 5958 F8C7 E21C"
	$"50DC 5DC8 F2A2 8393 D38A F2EB D894 B100"
	$"0C03 C60D 7161 63CA CFA3 C4C9 722B 14A4"
	$"8908 F987 4ACE B90A BC8E 9DC0 AF42 0AEA"
	$"E797 295B 5326 E190 1CAF 1ED5 4CC8 5BA1"
	$"C62B 7497 5462 D8D9 0ED5 0CC7 767A 7B54"
	$"0F22 200D 9C9E E2AE 2653 9685 4964 2416"
	$"5E3D AAA3 B64E 4F4F 4AEA A68E 1A8C B1A2"
	$"FF00 C873 4EC1 E3ED 90FF 00E8 C5AF 67AE"
	$"A472 367E DFEA DADE 91A0 5A3E A3AC EA10"
	$"595B 20C3 3CAC 1464 F61F DE3E C39E 6B96"
	$"3AEF 8BFC 6388 FC29 6A74 5D32 4C8F ED4D"
	$"421F DF48 BEB0 407A 0F46 7C0F 6ED5 0606"
	$"A683 E09D 1B42 B937 DB66 D435 3917 136A"
	$"17AD E74E DF42 7841 C745 C0E9 5D00 C32E"
	$"1B92 3834 8041 9230 A776 DFC6 94FC B8E0"
	$"83D0 673C 7D4D 2010 EEE8 060A F1C0 E7EB"
	$"EFF4 F6A5 280B 119F 6DB9 A603 0873 271C"
	$"0E85 80EA 7F97 A734 EDD9 3C36 7B12 0F14"
	$"00A7 E651 96C0 18FC 4D28 0371 18F6 E074"
	$"146E 0357 1804 743D 07F7 47AD 2A72 40E4"
	$"F3D5 860F 5FD3 8A00 4196 C654 A81C 9C9E"
	$"7DA8 190B C152 08F4 3822 8014 8201 208E"
	$"FC9E 99CF E948 4337 38E4 800E 0F3E F8A0"
	$"0420 7180 39C8 C1FF 000A C7D7 5AE2 3B37"
	$"7B34 85D7 38B8 F307 CA14 7560 0F1C 7BF4"
	$"C544 FE16 74E1 B95D 48F3 6C7C CFE3 45D4"
	$"7426 B8D6 BE1E 436D A8E8 D717 0D2E BD7B"
	$"AACE 47D8 1392 2446 6E63 182C 5671 997F"
	$"8540 2327 CA7C 3771 61E1 AB39 EE7E 1EDC"
	$"B6AD E03B C9A7 7D7B C49A A5E3 C13E 9733"
	$"7052 3041 6824 F2CA 6194 196E 030E 98C2"
	$"FCB6 21F2 D456 E976 B5FB 2FE2 6FD3 A7DF"
	$"D0FE 87C9 17D6 3032 8D4D 39F9 6356 D14F"
	$"96AC 53F6 34E0 BB54 D14F BDD4 5E93 D3B5"
	$"F0C5 E69D 65E1 64D3 346D 5669 BC05 7114"
	$"88DE 269A 5227 8A66 C168 5100 CA1E 006B"
	$"55C9 9148 62C3 195C CF17 226A 7A5C FE1E"
	$"D7B5 23E1 7F0D 08A3 B7B0 F182 CA25 B8D4"
	$"0677 2424 A10D 3A1C 0C43 1F08 1417 3F28"
	$"3449 A74F 953D 2D6B F68F 497A F4FC 3B05"
	$"08CE 18E7 5654 D3A8 A7CD C96D 2559 35CD"
	$"42FF 00CA 97BD 77A3 7EFB D148 E72E E19F"
	$"5A8D F40D 76E2 6F01 585B DC5A C761 E277"
	$"BA89 E7F1 0F97 8110 9244 D9E7 B600 78E4"
	$"4658 A23C 49EA 3B1D 37C3 BAA7 8ADF 725B"
	$"DCF8 01EC EF89 7744 87CC D7E4 55C3 1604"
	$"289E 7E08 208F B38D FC0C 9C1C E9C5 D495"
	$"B66F FF00 25B6 CFFE DFFC 5BEC CECC 7622"
	$"960E 929E 9521 1BB5 A492 ACE4 9734 3ABB"
	$"61DA D16B C918 A5A4 A2DB BB73 E0CB FD4E"
	$"04D7 BC37 6D75 E13B 2B09 669A EFC3 F6F0"
	$"233E B0EA 3E77 40F8 F364 6FBA 59F3 1A64"
	$"EC1E BC9F F665 D4B6 36FE 2EF0 E5BC DE1D"
	$"F0D4 114F 2DC7 8221 811E 4D4C 2E04 8D0A"
	$"381E 7863 F2BC B20F 9002 2353 8D82 EA52"
	$"6B55 A755 E495 AF1F FB7B FCBB B39B 038F"
	$"A751 38D5 929F 2BE4 93BB F7E7 2E6E 4AEE"
	$"DD29 6A9B 57E5 4A56 D610 0D0B 5DBA B2D2"
	$"ED7E 20E8 D0DC 695E 118E D1E4 6F01 C16F"
	$"BE79 D776 1A48 F7FC CF11 6C96 BB93 7300"
	$"8428 6C00 BD5D BFC4 036B E1E4 F1F3 ACE7"
	$"C2B2 DB09 22F0 9AC6 22B8 40C7 0B20 CFFA"
	$"B8C9 05BE D6D9 2FD0 06EA A52A DC8B CADC"
	$"DFF6 EFF2 7AFF 00C3 F70C C32B 8E26 7BA7"
	$"2E6F 64DD FE2A D77F ED2D 7F2B D569 A5EF"
	$"15A3 899F E2BD 76DA EFC3 9FF0 9678 E567"
	$"D53C 172A 4726 9BA3 436C 6D6F 2C59 F704"
	$"7048 26CD 7218 34EC 5D27 E8A1 8904 73BE"
	$"2496 08F4 48B5 8F89 8CBA 97C3 994C 6FE1"
	$"FD33 4DB6 36D7 B64A E4ED C293 FE8C BB03"
	$"6F96 42DE 7120 A13B BE59 AB24 EEE5 B5AF"
	$"2F38 F44B CD7F 97F2 B37C BA84 E92A 70C3"
	$"E925 370A 3EF5 D471 0ADC F525 DE13 4DFF"
	$"008A F269 5EB4 6DEA DE08 17B3 E956 B7DE"
	$"2392 D24F 02BC 51B6 8105 9234 3343 1903"
	$"6AC4 ADF3 449B 47CF E765 9C8C AE7A D7D1"
	$"5E19 B98F EC10 3591 4FEC C923 02DB 6A90"
	$"42FF 000F 079E 9DCE 73EB 5EDE 01E9 AEFF"
	$"00A7 4FEB D3AD CFC9 B8C5 45CD AA69 FB34"
	$"DAD5 A6FD AFDB 77EA 9CAE EFB3 7CCD 7BAE"
	$"26E8 2878 0402 DCF5 C714 A53E 5DDC 920E"
	$"073F CFF2 AF50 FCFC 1081 9DCC 7239 CE4F"
	$"5348 D940 30C7 1C67 BED1 DF93 F4A3 A084"
	$"0371 1B46 3B8C F273 DF8A 50DB 9BA1 03FC"
	$"2900 E380 A48D CD91 C0C6 78FA 5013 B0C0"
	$"E781 D8D3 01AF 26E2 1BCC C2A9 1C0E E7DF"
	$"FC2A ADD5 D2C5 F397 C0E4 9A89 48A8 C4E0"
	$"BC5F E29B 5B6B 774F 300E 0F7A F94B E2D7"
	$"8BE2 97CD 5594 1EBC E6BC FC43 4D34 7A98"
	$"38B4 F43E 4FF1 A6AC 2E27 7CB0 EA7A 1AF3"
	$"DB9B E064 3B78 AE2A 7148 F765 37CA 932A"
	$"4BA8 0C63 AD67 5C5D A30E BC9E D5D5 4D5E"
	$"2714 D999 3CDC 9056 AA33 7615 AC51 8F30"
	$"C794 A8C6 ECD5 6672 A092 4735 B462 6139"
	$"7420 690F 4AAC CD9C D745 2573 8E6C B5A1"
	$"9FF8 9E69 A3FE 9F21 FF00 D18B 5ED1 5D16"
	$"39DC CFDA 3D2F C036 96F7 6BAD 6BD7 B2EB"
	$"DAAA FCCB 7378 0148 BDA1 887C 910F A0CF"
	$"BD74 F9E0 9562 71C7 B8F7 CF7E F591 90E3"
	$"B48F 98E3 69F5 C678 A690 CDC1 6C28 3C83"
	$"D318 FE54 805D A7EF B464 9078 3DE9 AAE1"
	$"98E0 8C8C F3EB 4C07 6D28 CCDB 40DC 79C0"
	$"FE7C D185 00FD DDBF 789C E38E DF5A 004F"
	$"3181 00A8 2A3A 9CE3 E98A 5037 6495 207A"
	$"71D3 DE8D C361 3690 E08C 11E9 E9EF 4EC0"
	$"2C02 E00C E4B7 4C9E F400 8480 704E 47AF"
	$"A73C 7E14 9B48 055D B007 04E7 39F7 A005"
	$"6CA8 E319 EDE8 4FBD 3486 259B 046D 3BB0"
	$"4F27 1FFD 7A00 0124 8DC7 9C16 19CE 0741"
	$"CFAF 5A52 0C63 E52A 73D0 6DEB ED40 09B5"
	$"595C ECEF DF81 9159 FAAC 21D5 A459 0B34"
	$"7961 129C 6E20 7BF1 9E95 3257 46D4 1DA6"
	$"9B3C 43E2 2787 E791 E3F1 358C 9731 9D3E"
	$"3967 6F0D D9EC 4FB6 127E 6600 8C0D D9F9"
	$"8B86 6F94 EC1C 8C78 36B9 6874 E51E 30B3"
	$"80A5 9D96 9B99 BE1E 59A2 469E 5C8D 8323"
	$"201B 9207 3872 ECAD 3862 00C2 9527 E6F1"
	$"B071 937F 3FFE D3E7 6FEB 53F7 6E13 C546"
	$"AD08 C1DB FE7D BDF4 6DBB 625F 770E 6B27"
	$"B5DB D527 1B4D 15D1 D060 93C4 D3DB 4B75"
	$"A33D AC30 BFC3 F895 613A 6893 2633 32A3"
	$"16B7 8F71 DD1B AAF9 C5D8 2C84 06F9 B47C"
	$"52B6 5616 8975 E34D 3AE3 C55A 06A1 3C31"
	$"59F8 7A3B 6103 68CE 76B2 C72A C7FF 001E"
	$"EE01 55F2 63E5 C9F9 C8DD F373 68A2 D495"
	$"D2D5 AF27 F63F EDDF F3EC 8F76 5194 B110"
	$"9519 2854 93E5 8CAE F49C 795B C43B EFED"
	$"A2D5 AFA3 4E3A FEF2 76E7 F5D8 2D74 0BAB"
	$"5D3F E2BE FF00 1A59 DFDF 7D9F 42B7 B1B2"
	$"C8D2 186D 0629 638C A856 0360 7D39 3860"
	$"A1B7 03D7 D0B4 06B9 F0FD D58E 9BF1 5AF2"
	$"3F13 4971 73E5 6906 C622 E965 1AB1 558D"
	$"CC78 DC81 80DB 6C83 F760 618F F0AD 51F7"
	$"66F9 F5B7 C5FD EFE5 B7A7 5FBB B18E 68FD"
	$"BE12 1F56 5C9C EA4E 8272 FE13 8FF1 B9AF"
	$"FF00 3F1A 6E2D DEED F33B 5A47 B8CB E185"
	$"D45E 3D43 57FB 3DD6 AC80 FD8E 4539 46C1"
	$"C209 36F0 707A 28E0 77EE 0F1B E2EF 8671"
	$"6A9A B1F1 525B C0DE 3AB7 8B10 24AC DF66"
	$"9580 C219 5570 1DC0 076A FDCE 8183 0F96"
	$"BD8A D87E 78EB BEFF 00F6 F74F 97FC 13F3"
	$"1CAF 3978 4AEB 95B5 1B38 79AA 4FE3 DFED"
	$"2E9D AD1E CCF2 AD73 C0F7 52EB EFE2 C82D"
	$"E19B E2E2 27CB 6724 AEF6 AEF8 C0DE 83E5"
	$"96E0 20E2 207C ACE3 21B6 E2B9 B6D3 6F6D"
	$"F5DB 8F13 E9E9 14DF 1825 8047 75A3 F9ED"
	$"2DA1 723E 6013 EE5C DC84 0336 B931 AFFB"
	$"7820 78D5 2938 BBAE F7FF 00B8 9DBD 3FAE"
	$"A7EA 782C C29D 7A6A 326E CA1E CDE8 ACB0"
	$"7A7B FE53 4FAE E959 DAF0 6537 86F6 C75B"
	$"D47C 4DE1 A821 D4BE 29DE 4063 D43C 3AF7"
	$"4D79 6A84 83E7 08D5 B22F A50A AA7E C659"
	$"9623 9C79 9B30 A96E 0E8B A96A 9E30 F0F4"
	$"435D F881 7F1A FF00 6CF8 527B C37D 696C"
	$"E4FE F0E3 9375 2AE0 016E 0910 E48C B150"
	$"B58D 9AD5 6B66 DAD7 79F5 8F9A FCFF 00ED"
	$"E3D4 BC2A 4796 6F97 9A31 A727 CB6E 4C2A"
	$"E5E4 AEBF 966D AB3D B95F 4B50 47AC F807"
	$"469E C356 BDF1 8CF7 7773 F88B 5381 1F51"
	$"F0CD C5C8 BA10 31E5 BCEC 7174 5703 6C69"
	$"CC59 0187 181F 45F8 6925 B851 A85F 4725"
	$"B4F2 A6E6 B377 0769 23BF D076 EA3B D7BF"
	$"808D 959F AFCF AAF9 7F9B EA7E 31C6 55A3"
	$"56A7 B449 2B25 0492 B270 8A4A 352D D399"
	$"25E8 B960 F583 3A26 603F 78DC FA7D 07F3"
	$"347C 80A9 F983 376E B8EF D3A0 AF50 FCE8"
	$"783F 300D E9EB C1A4 1D57 8033 9EE4 FE1F"
	$"4A60 2107 6EC4 553B B271 9C63 EB8F C7F2"
	$"A5C2 AA9D 8DB4 2F5E FF00 9668 005F EE80"
	$"AAA3 19CF 34C9 6558 C1E8 3772 31C6 6949"
	$"D90D 2BB3 1B54 D6E0 B446 666E DCFA D799"
	$"F8BB E265 B58C 5266 E178 1EB5 C156 AEB6"
	$"3B68 D1BE A7CE DF10 3E31 8712 2ADC F5CF"
	$"7AF9 BBC6 FF00 109E F9E4 5F33 24E7 BD71"
	$"D497 333D 7C3D 2E5D 4F1B D6F5 A334 CC4B"
	$"7527 3CD7 3B35 E6DE 7770 69C2 3A1D 3376"
	$"2B1B C2C4 E08A AD34 FB9C FAFB 574A 56D8"
	$"E39B B913 B96E 493C 5573 28C9 15A4 118C"
	$"9D91 0492 83F8 540E E08C 1ADD 239A 5220"
	$"6639 A638 F941 CE0D 6F15 6396 6CB5 A17F"
	$"C873 4DFF 00AF C87F F462 D7B4 D688 C4FD"
	$"CCE3 A060 0839 C6DE 9498 2328 A38F 7EA7"
	$"3D6B 3205 0CA5 4200 7A64 0EBF 8E69 0065"
	$"6031 9232 075C 5000 3206 4F53 C939 E9C7"
	$"5A52 4927 380A 719E 3F3A 4039 55B9 0C41"
	$"19E3 8CF5 F5A6 92F8 19C0 CF18 EE3F FADF"
	$"E34C 05CE 579C 21E8 0FAF BD22 3065 DC17"
	$"0AA7 8DDF FD7F 7A2F A80A EBB5 4338 0587"
	$"2293 96CF EED5 B20E 3068 010B 65D5 D412"
	$"0FDE 18C7 E63F CF4A 153E 6190 0123 07B9"
	$"FCF1 400A 4AED 24B0 C118 391E FE99 A423"
	$"79F9 9482 D920 FF00 9E94 001C 9DA4 2AE0"
	$"F6E4 FD29 7192 C376 D3D3 F5CD 000C B91F"
	$"21C1 3C0C F381 C556 9217 6575 5CF9 A460"
	$"3E38 14AD 7D8B 83B3 D4E2 BC5D A1DC DF79"
	$"D7DE 1C58 A1D7 E350 CB3C A36E 71D4 A93F"
	$"287C 6007 3D05 7CE5 E25D 0AFA FB5C D475"
	$"4F84 F141 0FC4 5B66 26FA FEE1 1A24 607E"
	$"49E4 8379 DB1C 9838 9257 00BA E4A0 C966"
	$"AF17 1F06 DAE5 DF78 FF00 8BBF F5D6 DE67"
	$"EA7C 1D8C A718 CBEB 0DFB 34B9 6B5B AD17"
	$"6F75 7CEF 7B6B CBCC 93BC A270 9A35 CFDB"
	$"B5BD 4758 F825 1DA9 F1DD 8B79 9E23 BABA"
	$"8E44 83CA DC3E D13D AACB F2A4 3BC0 F359"
	$"F12B 0F9A 355C 9ADB F0BE B163 38BF D4BE"
	$"09C7 6D71 2863 FF00 093C B7AF 2247 05B8"
	$"E5E4 80C8 018E DB86 3E6B 7EF8 F418 E41F"
	$"229C 926B D9F5 BB8F AFDB BFE9 F2F3 3F4C"
	$"C750 938C D635 BF75 4635 ED67 6A6E CF0E"
	$"A36D DDDD A76F 89B9 F470 3134 C6B7 F0DA"
	$"4F3F C158 23D5 3C35 7B23 AF89 2FB5 1BE6"
	$"B57B 18B0 D8DB 2361 AD61 DA64 31DC E1A5"
	$"73F2 37F7 1B5F E1DE A49E 178E 287E 1186"
	$"F11F 842F 2695 B58D 5B50 B8FB 2CB6 39E1"
	$"C852 7162 1570 770C BCF9 183C 800A 6F92"
	$"51F6 7ADB E1D7 78BF 89BF 4FEB E11E 3A9C"
	$"B154 2AAC 73E5 73B7 B76A 37E4 AB14 FD8C"
	$"236D D4D5 AE96 E9A5 A7B7 D3E8 CF85 B7DA"
	$"6DA5 8C31 F83A F25D 7347 B876 696E 6462"
	$"8613 9C60 21FF 0052 00F5 E58F A74A F4F9"
	$"B4FB 6D42 20F6 D28F 3194 A2CE 146F 4CE3"
	$"8CF6 1D88 EBFA D7D3 61AD 2A49 2DBA 3EE7"
	$"E079 F7B4 A18E 955A B1B4 EEF9 E3D1 3BED"
	$"E775 F7EF D4E6 759F 062E A4B2 4712 ADBE"
	$"AE60 30A6 A6B1 80FE 5E79 4DDD 554F 4241"
	$"C9F5 E6B9 1D53 E1A4 73A4 B6D6 4A96 DE28"
	$"FB3F 94DA DF94 11DE 31C9 4DE0 6E8D 0F03"
	$"CC1F 39C6 09C1 ACEA E1F9 BFAE BDCE ECB7"
	$"3B74 124F 54B5 7AEF 4FAD 3F4F 2D9E DD59"
	$"CE6A 9F0A 8BC9 341A 5086 DFC6 CF6E 229B"
	$"5A36 DE59 B851 C94D C398 4118 1E7A 8DEC"
	$"00DD C134 DD3F E16D B596 A525 D695 6D14"
	$"7F10 0C1E 54FA D2C1 E499 401F 308F B464"
	$"8C03 3E03 3818 271C 571F D53D EBFD DFE2"
	$"EFFD 7E87 D347 891B A4E0 DBD5 7BDA DEF8"
	$"7D2D 4BCE D6F9 ABF5 9B3B BF0E F80E CB4B"
	$"BA4D 427B 6B69 3C4E E9B6 5B98 2229 1EFE"
	$"7718 D338 8DF0 4032 0037 6338 19E7 D0AC"
	$"EC4C 4127 BD0A F720 61B6 9C00 7AF4 EE7A"
	$"735E 950A 4A9A B2F9 FA9F 079C E612 C5CF"
	$"9DB7 DA37 D6D0 E89F 9F77 D5DD F52F 0914"
	$"8640 DF37 A95E 071E D4FC A8EA 3919 E838"
	$"AEA3 C000 B8E3 7019 EDED 4D77 DA40 523E"
	$"84F3 F41F AD00 2A15 0D84 3E83 A77F F3FC"
	$"A948 201C 8FD7 009A 006A 8704 A8FF 0080"
	$"E4F3 F5F5 ACDD 5AEC DB46 CE0E 001D 2B2A"
	$"8EC8 B82B B3C0 3E28 7C42 6D32 3976 CA41"
	$"1903 9AF9 3BC7 DF16 AE66 9245 FB43 11CF"
	$"7AF2 2A7C 47BF 86A7 78A3 C53C 45E3 89EF"
	$"5D98 4C7A 7AD7 9F6A 9ADC D331 2189 CE7B"
	$"D441 5D9D BCAA 28E7 EEAE F7F2 4E7D EA9C"
	$"8CC3 BF5A EB51 B591 CF39 36C6 91B4 6EA8"
	$"8C83 F3AD 22B4 306C 8DE4 5008 079A A8CD"
	$"8C91 5A41 1CF3 92B1 0337 AD46 5B3D EBA2"
	$"28E4 6C61 0C39 069A CE09 39AD 9184 996B"
	$"4239 D734 E20F 4BC8 7FF4 62D7 B4EE 1EB5"
	$"4886 7EE6 1CB3 01B4 2919 C03D BD69 C371"
	$"1960 03FD 78FF 0038 ACC8 10B6 F6DB C807"
	$"20FF 0080 34B9 65C8 381E E7BF D684 035C"
	$"6D18 1862 7AE7 938E F4ED E785 3D49 C8C0"
	$"E36F F4A4 0041 D802 F6CF 61F8 7148 EC00"
	$"6DC0 1279 C11C F6C5 3014 E368 2493 CE4E"
	$"3B7F 8D29 249C 0DB9 238E 3340 0837 162A"
	$"24C0 E9D3 38FF 0022 914B 37CC 485C 13DB"
	$"27AF E940 00DD B806 CF20 E33E BEE6 94FF"
	$"0010 E481 D02F 51DB 8A00 172D 962C 33FD"
	$"EE9C FF00 9FE9 4D52 8980 E00E C48F 5140"
	$"0E72 8012 01E7 91F9 763F 4A0F 0060 704F"
	$"D31C E38A 004C 2021 3800 0041 5E3E B834"
	$"3260 7239 04E3 1CE0 FA50 08CA D6B4 B5D5"
	$"EDCC 324E 6275 6041 53D4 8EC4 77ED 8F4A"
	$"F21F 885E 056F 19DB 859A EAE3 41BA B4B8"
	$"575F B395 DF7E E832 A083 8F32 55C7 C8E7"
	$"E55C F4E0 570E 2E97 B48B 5DFA F6FF 0087"
	$"3EB7 86F3 1FA8 D78D 5B29 723F 85ED 24F7"
	$"BFF8 7E2F 549F 43C3 3C47 E1ED 4FC7 6B6D"
	$"7723 6A3E 05BA D335 3334 36B6 AC82 E75D"
	$"9E24 3B76 6767 9D7A BB00 595B F75F BC20"
	$"7242 B625 ADDE A3E3 AB5B 5F12 699F 6BF8"
	$"7FFD 9D7F 2CA3 44B5 4413 6B92 A677 BDB2"
	$"304F B45C 7015 8C83 CB42 485E C95F 3935"
	$"272E B172 D7FC 36E9 EB2F C5B5 DD9F B961"
	$"6AD1 8D04 9F2D 58D1 BC75 BFEF D54E 6F7D"
	$"EFEE D0B3 EFCB 18C9 AB38 C6EC D3B5 4BAF"
	$"13E9 B078 E744 8EE7 C1BA 069E D773 5F78"
	$"5E0B 4595 B565 5FF5 F25B C242 FDB0 3292"
	$"9379 A364 1C94 E015 593C 3B3C FA86 9D6B"
	$"E36F 0391 E16F 02DA 24AF A8F8 5D6D 7CF9"
	$"6F19 4812 3460 E1AF 7712 ABF6 8621 61FB"
	$"BC6D 2AD1 1939 34E3 A37A AD3E 18E9 78FC"
	$"FF00 1D3F 999D 55A8 C284 274E B7EF 2319"
	$"7B29 3E6B 3AB5 9F37 2567 BE94 DB69 BD79"
	$"65CF 656A 113D BBE1 3EB7 6BA8 E936 7E25"
	$"F00C 1FD8 7E1C 42FF 006B D325 4F31 E475"
	$"C090 83D6 E8F2 079B 9DA9 8C70 062B DE7C"
	$"39A8 D9EA 960B 77A7 C661 527F 7884 7208"
	$"EBF3 7F17 D457 D160 66A5 056D 9ABA F25D"
	$"BFAF 5EA7 E1DC 5F85 A94B 1351 D477 9C24"
	$"E352 5FCD 3BBF 7979 7974 F87E C9B6 F1EF"
	$"3B09 217D AABB 431C B179 58C0 04E4 AF04"
	$"1F53 C7BD 7A2D 5CF8 A8CB 96C5 7974 C89A"
	$"3316 D2BB 9466 4EE7 D39F 4E7A 53D3 4F85"
	$"6128 3009 51FB DDBF 3377 209F 4CF6 A9E5"
	$"36F6 F2B5 BE7F F009 62B5 86D8 0203 3BB2"
	$"E0B1 E4E0 76FD 6A75 4050 82BD FE63 BB39"
	$"FF00 3C55 2461 2939 3BB1 54F4 5083 038E"
	$"BD3E B488 00C6 0027 18CF E39A 648A E437"
	$"F163 1827 F952 1241 2E70 BC60 678F EB40"
	$"0AC3 0811 48E7 A7F4 A6E1 8921 90E0 751D"
	$"B1C5 2011 CED5 C60F A9ED E9D7 F4AE 63C5"
	$"F726 0B27 CB73 B49E 4D63 59D9 1B52 5792"
	$"3E2E F8E3 ADB2 B4E0 49EB 5F1D F8BB 5691"
	$"E690 799D CF7A F16A 3F7A E7D3 E155 A173"
	$"85BA BD62 4E5F 93DA B2AE 6E49 CAFE 75AD"
	$"15A9 55A5 65A1 41BE 604F A535 A403 191C"
	$"D75E FA9C 7291 1492 1C60 1A80 CA3E EFAD"
	$"6908 9CF3 96A5 791C F407 9A89 9CE3 AD6E"
	$"A363 9672 B91B 1CE0 D30B 735A A460 D8D2"
	$"47E7 4C24 83D3 8AB4 6522 EE8A 31AE E9DB"
	$"471F 6C87 FF00 462D 7B47 CDE9 5489 67FF"
	$"D900 0098 000A 0000 0000 002C 0045 0000"
	$"0000 002C 0045 0000 0000 0110 01C8 0000"
	$"08FD FF02 0000 FEFE 000B 0780 7FFF FF00"
	$"07FF C0FF 000B 0780 7FFF FF00 1FFF F0FF"
	$"000B 0780 7FFF FF00 7FFF FCFF 000B 0780"
	$"7FFF FF00 FFFF FEFF 000A 0480 7FC0 FF01"
	$"FEFF FF00 0B09 887F 003F 03FF 01FF 8000"
	$"0B09 887E 001F 03FC 007F 8000 0B09 887C"
	$"000F 07F8 003F C000 0B09 8078 1C07 07F0"
	$"001F C000 0B09 8078 1C07 0FE0 000F E000"
	$"0B09 8070 1C03 0FC0 0007 E000 0B09 8070"
	$"1C03 1FC0 0007 F000 0B09 8070 1C03 1F80"
	$"0003 F000 0B09 8070 1C03 1F80 0003 F000"
	$"0B09 8070 1C03 1F80 3FFC F000 0B09 8070"
	$"1C03 1F80 27FC F000 0B09 8070 0803 1F80"
	$"3FFC F000 0B09 8070 0003 1F80 0003 F000"
	$"0B09 8070 0003 1F80 0003 F000 0B09 87F0"
	$"1C03 1FC0 0007 F000 0B09 81F0 1C03 0FC0"
	$"0007 E000 0B09 81F0 1C07 0FE0 000F E000"
	$"0B09 81F0 0007 07F0 001F C000 0B09 81F0"
	$"000F 07F8 003F C000 0B09 81E0 001F 03FC"
	$"007F 8000 0B09 8F80 007F 03FF 01FF C000"
	$"0B00 81FE FF00 01FE FF01 E000 0B00 81FE"
	$"FF00 00FE FF01 F000 0B00 81FE FF05 007F"
	$"FFFF F000 0B00 81FE FF05 001F FFFF F000"
	$"09FD FF05 0007 FFCF F000 08FC 0004 01FF"
	$"03F0 0002 F700 0B09 3800 0C7C 0000 3DCF"
	$"F800 0B09 4402 0454 8000 1291 A800 0B09"
	$"8200 0410 0000 12A0 2000 0B09 83B6 7591"
	$"B7D8 1CA0 2000 0B09 8292 9510 9A64 10A0"
	$"2000 0B09 8292 8710 927C 10A0 2000 0B09"
	$"4492 8510 9260 1091 2000 0B09 38FF 7FB9"
	$"FB7C 39CF 7000 0400 18F8 0004 000E F800"
	$"8200 0000 172A 0000 0001 0000 0000 0000"
	$"0000 0000 0000 0000 0001 0000 0000 0000"
	$"0000 0000 0110 0000 4000 0000 0000 0000"
	$"0000 0000 0000 0000 0040 0000 0000 001C"
	$"01C8 0000 0300 0000 0000 0000 0056 6A70"
	$"6567 0000 0000 0000 0000 0001 0001 6170"
	$"706C 0000 0000 0000 0300 01C8 001C 0048"
	$"0000 0048 0000 0000 1690 0001 0C50 686F"
	$"746F 202D 204A 5045 4700 0000 0000 0000"
	$"0000 0000 0000 0000 0000 0000 0018 FFFF"
	$"FFD8 FFE0 0010 4A46 4946 0001 0101 0048"
	$"0048 0000 FFFE 000C 4170 706C 654D 6172"
	$"6B0A FFDB 0084 0003 0202 0202 0203 0202"
	$"0203 0303 0304 0604 0404 0404 0705 0605"
	$"0609 0809 0908 0808 0809 0A0D 0B09 0A0D"
	$"0A08 080C 100C 0D0E 0E0F 0F0F 090B 1011"
	$"100E 110D 0E0F 0E01 0303 0304 0304 0704"
	$"0407 0E0A 080A 0E0E 0E0E 0E0E 0E0E 0E0E"
	$"0E0E 0E0E 0E0E 0E0E 0E0E 0E0E 0E0E 0E0E"
	$"0E0E 0E0E 0E0E 0E0E 0E0E 0E0E 0E0E 0E0E"
	$"0E0E 0E0E 0E0E 0E0E FFC4 01A2 0000 0105"
	$"0101 0101 0101 0000 0000 0000 0000 0102"
	$"0304 0506 0708 090A 0B01 0003 0101 0101"
	$"0101 0101 0100 0000 0000 0001 0203 0405"
	$"0607 0809 0A0B 1000 0201 0303 0204 0305"
	$"0504 0400 0001 7D01 0203 0004 1105 1221"
	$"3141 0613 5161 0722 7114 3281 91A1 0823"
	$"42B1 C115 52D1 F024 3362 7282 090A 1617"
	$"1819 1A25 2627 2829 2A34 3536 3738 393A"
	$"4344 4546 4748 494A 5354 5556 5758 595A"
	$"6364 6566 6768 696A 7374 7576 7778 797A"
	$"8384 8586 8788 898A 9293 9495 9697 9899"
	$"9AA2 A3A4 A5A6 A7A8 A9AA B2B3 B4B5 B6B7"
	$"B8B9 BAC2 C3C4 C5C6 C7C8 C9CA D2D3 D4D5"
	$"D6D7 D8D9 DAE1 E2E3 E4E5 E6E7 E8E9 EAF1"
	$"F2F3 F4F5 F6F7 F8F9 FA11 0002 0102 0404"
	$"0304 0705 0404 0001 0277 0001 0203 1104"
	$"0521 3106 1241 5107 6171 1322 3281 0814"
	$"4291 A1B1 C109 2333 52F0 1562 72D1 0A16"
	$"2434 E125 F117 1819 1A26 2728 292A 3536"
	$"3738 393A 4344 4546 4748 494A 5354 5556"
	$"5758 595A 6364 6566 6768 696A 7374 7576"
	$"7778 797A 8283 8485 8687 8889 8A92 9394"
	$"9596 9798 999A A2A3 A4A5 A6A7 A8A9 AAB2"
	$"B3B4 B5B6 B7B8 B9BA C2C3 C4C5 C6C7 C8C9"
	$"CAD2 D3D4 D5D6 D7D8 D9DA E2E3 E4E5 E6E7"
	$"E8E9 EAF2 F3F4 F5F6 F7F8 F9FA FFC0 0011"
	$"0800 1C01 C803 0121 0002 1101 0311 01FF"
	$"DA00 0C03 0100 0211 0311 003F 00FD 47C0"
	$"6CA3 0231 CE01 CFF9 E947 DFDA A0E3 24F0"
	$"3823 FCE6 B8CD 01D8 85DC 40C8 EABF CA9C"
	$"41DC 0A03 961E 9C1A 0069 76DA 7201 EA33"
	$"DA95 77A9 F2CF DD00 8EB8 EFC0 FCA9 DC02"
	$"3058 10D8 193F E47F 9F5A 1893 C852 40E0"
	$"74E0 E680 1194 361B 2060 E49E BFE7 BD29"
	$"19F9 5412 41E3 3FE3 4000 1B80 DB8C 6318"
	$"1C13 E949 85C9 2EA7 7138 2703 91D7 1400"
	$"2156 3C63 A631 9E31 FD68 DE31 B704 8E80"
	$"E7DB DE80 1DB4 2800 28C7 1DB2 29A8 50BF"
	$"03E6 EE33 C726 8F20 1738 1B70 C001 C311"
	$"9FAD 1B48 186D A323 EF7F 9FA5 001B 93EF"
	$"B300 31F4 EFC5 0CA1 4300 49C7 BE08 38F5"
	$"FAFF 003A 2E03 1A24 7043 E1B6 7723 A1FE"
	$"B589 AFE8 36DA B859 278E 337B 0822 12F9"
	$"D84F 60F8 EAB9 ED51 3829 2B1D 784A F2C3"
	$"D453 8BDB F2EB FF00 00F1 BF1E 7803 4FF1"
	$"3DC2 5FEB 96B6 B73E 2EB1 8CC7 631C AE63"
	$"8250 0E62 8EE4 AE32 B9C9 40A4 73C3 1009"
	$"AF17 F156 8516 BDAB DBEA 7E3E 8EDA 7F89"
	$"DA74 67FB 3EC1 E66B 7826 20FE E23B DF2C"
	$"058D B93B 618C 8DDC 6E2A 0907 E7B1 9455"
	$"DB7B 3DFF 00C4 B65E 9DFE 7E47 ED7C 2F9A"
	$"5470 8AA4 DF3D 34D4 74BD B0F2 FE24 B5DE"
	$"4B4E 5BDF 6A6A D673 398B E797 57D7 ACBC"
	$"55E3 4544 F8C5 A644 CF65 A047 766D 23B8"
	$"6420 C0B7 2A83 6DBD C052 EC2D 5197 CE50"
	$"A1B6 96C3 CDE7 CB7F AADA FC40 D7A0 6B7F"
	$"8A1A 7580 68FC 2105 DF91 14D1 0185 7923"
	$"1CDB C654 EE36 4A43 3641 3B14 D79B AB6F"
	$"9BBD DEBF F2F1 7D9F 9F5F F807 DD38 C610"
	$"8AA4 FDD5 174A 178D FF00 D8E5 7BD7 6FAB"
	$"8FD9 6F74 936B F7AD 9E97 E019 2F35 FD57"
	$"4FF1 C788 DE7D 13C5 D6F6 8241 E188 6611"
	$"1788 7DC6 118E 6DE0 239F 2301 DBAE 0677"
	$"37D2 5E0D BABA D56D 2D75 0BDB 53A6 C9B3"
	$"FE3D F1B3 70EA 0AAF F0A1 F43C D7BD 97B6"
	$"D6BB BD5F 93ED FD7E 87E3 BC6D 0842 5683"
	$"4E34 FDC8 3FF9 F90D 6D53 CEFD FAEA EFEF"
	$"1D69 21D5 8ED0 BDB9 EE28 DEC5 C03F 2F19"
	$"C019 CFFF 005E BD8B 9F98 810B C7CF 9F51"
	$"8FA6 29D9 2319 E87F 4A00 62B2 91B7 07B0"
	$"CF5F E5F8 D2B2 A903 6F4C E770 F5FE B480"
	$"3730 5DEA 73C1 0063 BF1F AD28 F988 DE3A"
	$"74C7 D69F 900D 51B7 1B41 19E8 4F19 FC29"
	$"5FE5 52B8 231C 919C D201 4AB1 E546 D1B7"
	$"07D7 E9C7 E348 1942 E464 7701 B83F 4A36"
	$"0DC8 2E2F 1205 C315 18C8 03DB EBF9 5799"
	$"7C41 F112 98FE CD1B A2B4 AC23 5C9C 72C4"
	$"019F C48A E2C4 D4D2 C766 169D E573 E64F"
	$"8D5F 057E 264B AFE8 BE1E FECF B3FB 5F8A"
	$"2E25 B6D3 545D A157 9113 CC6D C7F8 46D0"
	$"4E4D 7C85 F1E7 E157 8D3E 0BF8 9E1F 0B78"
	$"F62B 3B7B FBAB 35BF 54B7 B959 C085 9DD1"
	$"4961 C024 C6FC 7B57 154C 3548 5DC9 6899"
	$"EEE1 F154 A694 23BB 57FD 0F1E 9AED 5D77"
	$"A323 2E48 C839 AA4F 2A3B 6565 539E 3820"
	$"F357 4E36 D42A 3213 3464 F96B 2216 1D81"
	$"C9AF 4EB9 FD9C 7E23 C5F0 87FE 179B B681"
	$"FF00 08D7 D992 EB68 D5A1 379B 1A65 847F"
	$"A367 7E77 B0C8 C74E 6BAA 11E6 4D23 8EAC"
	$"D42D 7EA7 9249 7310 6D86 55DC 7F84 919A"
	$"ACF3 AAB6 19D4 13D0 135B 4568 8E6A 9221"
	$"F3D6 5242 3AB6 D383 839A F64F 83BF B2DF"
	$"8E3E 30F8 7EEB C656 FABE 91E1 FD02 DA53"
	$"00BF D525 6459 5C60 36C0 07DD 0480 5988"
	$"1938 1939 AE6C CB31 A596 61FD BD54 DEA9"
	$"24B7 6DF4 4451 A32C 44F9 2273 FF00 19FE"
	$"0578 E3E0 66B1 6BA5 78B5 2D27 8351 4792"
	$"CAFA CDD9 E09C 2901 80DC 032B 2EE5 CA91"
	$"DC11 91CD 749F 08BF 64CF 1FFC 5EF0 C3F8"
	$"DA2D 5747 F0FE 8264 68A0 BCD4 E565 F3D9"
	$"4ED2 5140 E177 7CBB 988C 9E99 AE6A B9F6"
	$"168E 5F0C C6CD C65A 24B7 6F55 6F95 9FDC"
	$"5C70 7525 59D1 D9AD DF4B 1C9F C65F 81BE"
	$"37F8 19AE 5B68 BE30 86DA 48EF A369 6CAF"
	$"6D24 3241 70AA 70D8 2406 5604 8CA9 00F2"
	$"3A8E 6ABF C2FF 0082 3F11 BE32 6B51 E95E"
	$"0ED0 A66B 727F 7DA9 5CA3 C565 6EBD CBCB"
	$"B483 D318 5CB1 3C62 BA63 9C61 5E01 662E"
	$"56A6 D5F5 DFD3 D6FA 58C2 585A 9EDB D825"
	$"EF7F 5AFA 14FC 53E0 2D5F E17F C529 3C03"
	$"AEDD DA5C 5F69 1A95 BC53 4B6A CCD1 312C"
	$"8DF2 9655 38C1 1D40 AF46 DBFE D577 E1AB"
	$"2C4D 1856 82D2 4935 F357 39EA 45D3 9383"
	$"E8DA 3F73 5BE7 62EA 54EC 2402 0FF3 ED4E"
	$"C90C 18E3 93D0 9C1F F39A A321 7850 5402"
	$"0B1E 33D3 AD0D F75B 3D71 C034 0084 6D63"
	$"F336 1BE6 C7BD 2725 B18E FCE3 BFF8 F6A0"
	$"05DC 2452 8482 7A7E B487 E760 5491 DB27"
	$"EA3F C0D0 03B6 63E6 7C83 9E06 723A D343"
	$"A306 0082 5464 607A F7A0 07FC C177 0271"
	$"CF24 E6A3 F2C0 0177 3161 D323 9C50 C057"
	$"C285 DD80 01E3 93C0 FA7E 14E1 B4E4 A1DD"
	$"C671 9E9D A801 B82A 06D4 27A9 C939 3FE1"
	$"46E2 EC16 3619 3CE7 BF5C FF00 4A00 5DA8"
	$"41DE 09C9 E382 29A4 6E6D EA79 033F AFE3"
	$"E946 E02E 1580 380C A33C 718C 9EFF 00CE"
	$"914C 8137 2801 73EB D3F2 34BD 0071 0778"
	$"5119 18CE D39E 0E7A D35A 3795 58E5 43E0"
	$"E0E3 FC9E 94C6 9DB5 30F5 CD1A 3BE8 D961"
	$"6587 5044 2B15 D796 0950 7B03 D863 8CF5"
	$"15E4 DE2F F027 F6BE EB5D 3123 B6F1 8DBC"
	$"052C F579 20CB 479E A8A4 FDDE 38F3 8FCC"
	$"A0F1 8E09 E0C5 52E7 565F 2F5E 8CFA FE1E"
	$"CCBE AB34 E5B4 7596 BBD3 FB50 F9DD FF00"
	$"C3D8 F1BD 67C2 725C DE7F C23F A6AC 2FF1"
	$"5ED6 D8C3 6BAC CF6D F286 003F 911B 3F59"
	$"426E 097A E3E5 2700 81B5 8645 B786 A55D"
	$"4D2C 5D2D 2E7E 345B 2145 D53C 92D1 34E3"
	$"24A4 7B86 D92F 9546 3ED0 C361 3B8A E586"
	$"4F81 2A5E F69B 6DFF 0071 3B9F B361 F324"
	$"E8F2 BBF3 5B99 BBE8 B06F 7A7E 4F7D B54A"
	$"F67F 09EA 9E06 F034 70DE 5A6B 9E30 8AD2"
	$"E3E2 1C2B 9668 9F74 026E CCFF 00C3 2DD0"
	$"5E0B 0F90 1E99 C023 DEF4 0B4B A96D EDEE"
	$"F5F4 45D4 31F3 2237 53D8 B9E9 BFE9 C57B"
	$"781A 5C8A CFAE FF00 E23F 28E2 CC7A C4D4"
	$"BC5B E55E ED24 FF00 E7CE B6BF 9FE3 B2E8"
	$"7421 5989 F998 673C 93D0 FF00 FAA9 719C"
	$"9DFF 0028 0463 A01F FD7A F4CF 8162 A71B"
	$"4860 00C9 231C FD28 53B9 4EDC E71C 0CD2"
	$"1089 F781 2BF3 91CE 78A4 5D88 BBBD 7A60"
	$"F19F F3ED 400F 1938 9064 920F 7EDF E3FE"
	$"14D0 0960 41C1 2300 E79C F5C7 F5A6 01BF"
	$"0C57 8E9D BA71 EFFE 7A53 8719 6077 03CF"
	$"5E7F FADD A8B8 11BC A9B7 2CE3 AF1C 6791"
	$"59B7 DAAC 56E3 7B90 00C8 F427 FC2B 0A93"
	$"5146 B4E0 E4CE 03C5 DE3F B4D3 EDE4 40EA"
	$"9C1E 8718 AF98 FE27 7C57 2E25 30CF F3A6"
	$"597E 6E84 722B C1C4 5673 7A1F 4581 C2D9"
	$"5D9F 55EA 1691 78CF 53F8 45E3 5817 CC86"
	$"1B89 6F43 0E46 27D2 E7DA 7F32 B5E7 1E1D"
	$"F017 81BE 297E D5DF 14BC 55E2 9D02 CB5C"
	$"BAF0 4596 8BA3 E971 5EC4 B3C3 0B4B 6CF7"
	$"1238 4605 77EE 6DA0 91C7 38C6 6BE9 5C54"
	$"DABF 577F FC94 F0A3 3941 4B97 46A2 D7FE"
	$"4DFF 0004 E23F 686F 82BE 15D6 FC05 F0DB"
	$"E25F 8ABE 1CF8 77C3 BE39 B1F1 9787 60D4"
	$"EDF4 D8A1 F2A4 867D 4618 65B6 97CB CACC"
	$"855C 119C E083 D890 7AAF DA27 43FD 937C"
	$"23AC F86B C19E 3BF0 B787 F4BD 57C7 5756"
	$"BA5C 060D 3521 5166 9751 BCBB A445 0B0A"
	$"B160 ACD9 0581 0390 387C 908D DC97 6055"
	$"2A4F 9541 BD2F F72D 4ADF B435 AFC2 EF87"
	$"1A2E BDA3 7C47 FD9D ECEF 3E1A 3691 0AE9"
	$"9AA7 8734 08AE 25B2 BAFD E2CD F68F 2CAB"
	$"5AAA FEE0 C72A 8032 5BE6 C8C5 7966 97F0"
	$"C3C1 5E20 FF00 826D E8D7 09E1 DD2E 3D53"
	$"55B4 D3AD 7FB5 7EC7 17DA C097 5886 22FE"
	$"685D DBB6 3632 0FB5 3718 DDE9 6D1F FC02"
	$"14A4 A29D EFAA FF00 827D 07FF 000A BBE0"
	$"EF86 3C67 E18F D9EE C7E0 F784 24F0 BEAB"
	$"E19D 4EFA 7F3F 4D8A 5999 EDA5 B389 773B"
	$"292E 585C B967 6258 B007 3D6B CA3E 0B7C"
	$"1CF8 5DF0 EFE1 7FC7 BB21 E00D 075D B7F0"
	$"7788 F5F1 A72E AD65 1DCB FD9E 3B38 E78E"
	$"0695 817D 8376 CE0E 71CE 73CD 6BCA AFB6"
	$"C65C F26B 73CB FF00 E0A3 BE04 F014 7FB3"
	$"87C3 3F88 BA1F 81F4 4D0B 569E EACE 1DDA"
	$"65A2 5B05 827B 3695 A1CA 8059 1591 7686"
	$"CE30 7D4D 7CCF F02F C6FE 3EF8 B7E1 DD2F"
	$"F64F D3F4 8D31 7C35 7129 B9D4 B501 1C9F"
	$"6982 D16E 85D4 AE4E EDB9 DD84 5E3B AFD6"
	$"BC6C F285 19E1 FDBD 56D2 A2D5 456E AE29"
	$"D93F 2676 6067 252E 48EB CDEE FC99 D87F"
	$"C142 7C7D A3DF EB9E 1BF8 67A6 3A3D C681"
	$"1C97 B7DB 4EEF 25A5 5558 62CF AEC0 588F"
	$"F693 DEBB CB34 45FF 0082 7F68 3B54 00F6"
	$"56CC DEE7 FB4F AFF2 AF8D F632 A194 E5AA"
	$"5BBA B197 DEE4 D7E0 D1EB 73A9 E26B B5D2"
	$"2D7D D631 FF00 E0A3 8ABF F08B 7C3B 9303"
	$"77DB AFD7 3DF1 E4C0 715C CFEC 0DF1 67C7"
	$"57FE 325F 8477 7AC0 97C2 B63A 45ED EDAD"
	$"91B7 8818 66F3 95CB 0902 8739 695F 2189"
	$"EBC6 302B 4C3E 1A9E 2785 2F51 5F93 9E4B"
	$"C9A9 4ACF F166 73A9 2A79 9DA3 D6C9 FA59"
	$"1E4F FB4E B01F B54F 89B2 3FE6 356D FF00"
	$"A0C5 56B7 AFF7 4D7D BE52 FF00 D830 FF00"
	$"E08F FE92 8F1B 14FF 007F 3F57 F99F BA01"
	$"FEF7 CAC3 1C9E 694E 01C8 C377 E382 7FC6"
	$"BA51 80A7 81C1 607E B4D2 4955 072C 4F00"
	$"0A00 0659 BF76 D91D CE7A 9FF3 8A56 28DF"
	$"BB07 276E 463A 1A00 4276 6379 C963 C647"
	$"E7C0 A504 8C16 24B6 3BF4 07FC 9A00 09C9"
	$"033B 7A82 48E8 7FCF F3A0 155C 7CBB 48CF"
	$"5E38 A000 9DE8 71C7 3C8F 7F4F 7A6E F2A7"
	$"2460 903B 631F 87E7 400A AADF 7B6E 7238"
	$"FCB9 A53B B2AD 9DA3 381D CD00 000E A63C"
	$"37DD 3EF4 6188 0080 31E9 9E45 0034 3338"
	$"DD82 09E1 860F 4C74 FF00 EBD2 B2BF 4551"
	$"8231 E983 4803 685F 94AA B673 C7A7 4A54"
	$"DA77 01C7 F9FE 7D29 8010 EA09 5504 76CE"
	$"39A4 0AA5 F1D0 9E48 F5A0 06CD 1ABA 1400"
	$"82CA 3181 599A 9E91 16AB 6EF6 A253 0CCC"
	$"A02C 8A79 6039 0ADD CAFB 54CA 2A4A C746"
	$"1EB3 A325 2EDA 9C9E AFE0 E1AB 5BCD A75A"
	$"28B7 BFF2 0426 FC81 BE58 C127 CA91 BAF9"
	$"249C 8507 F3A8 21F0 1DAC 68D0 DB9D DAEF"
	$"D9C5 ABEA 9244 1659 621F F2C8 BE37 2A76"
	$"073B 8800 126B 8DD0 4E57 FEAF DCFA 5A79"
	$"C4A1 4BD9 F9DD BBEF 076F 73D3 4DB6 D12B"
	$"1BDA 5786 A2D3 D924 9D52 7D59 23F2 FED6"
	$"2300 95FE E8CF 4FF7 BA9A E8ED ECCA 80D3"
	$"9569 1460 91FC B15D 14E1 CAAC 7858 DC53"
	$"AF2E 67F2 F28F 444C CCAA 3E65 C05E 9D88"
	$"ED4A 1B0C ED83 C1C6 40C7 7EFE B5B1 E783"
	$"1072 770C 6723 3FAE 69DC FF00 0B72 3A1C"
	$"6680 130C 3807 820E 401D 3A62 9576 F014"
	$"74C0 CF40 0500 0413 8524 F3EF 9A46 5014"
	$"2900 64F0 3FCF 7A00 42C0 03F2 807B 82D8"
	$"A8E6 9822 827E 551D 4838 07FC 9A89 3B22"
	$"92B9 CDEB 3E23 B7B4 0CCF 20C8 1D7B 5791"
	$"78E7 E295 B58C 6FB6 7195 0718 3D2B C4C6"
	$"62AD A23D 9C0E 11CD A763 E6AF 881F 16E6"
	$"BC79 425C F1CF 05AB C07C 53E3 79AE 5A42"
	$"D367 AF7A F22F CDB9 F4F4 E9A8 23F4 5BF6"
	$"68F8 F7F0 9E4F 80DE 058B C57F 137C 25A5"
	$"EA9A 7E9C 2D64 B4D4 35AB 5B79 E130 B3C0"
	$"A5A3 9240 CB94 5046 4721 81E8 6BC8 3F66"
	$"8FDA 3FE1 A5AF ED19 F1CF 4BF1 2F8C B4CD"
	$"3E3F 166B AB73 A26A 3737 491D A5CC 56FE"
	$"6C21 5672 7664 AB21 5E70 C3A6 7A57 D7C2"
	$"BC39 68FB CBCF EE3E 3678 7A9C D5FD D7E5"
	$"A7F7 AFA1 87F1 26E3 E05F C22F 877F 0CBC"
	$"0977 E2EF 096B FF00 109B C67A 25C5 FEAF"
	$"A7DE ADC7 956F 1EA8 93CF 7171 3163 E522"
	$"C585 CB91 9FA0 2473 DFB7 9FC4 0F82 3E35"
	$"F8ED F086 F755 F14E 8BE2 8F06 DAEF 8BC4"
	$"2348 D492 EC25 B34E 9BC3 B5B3 9643 B7E6"
	$"E086 C038 AB6E 0A2E 37EC 28FB 4735 3B3D"
	$"79AD E5D8 FA47 C2BE 3CF8 37F0 8B49 F10E"
	$"A2BF 1DFC 29A8 7C24 6D0E D974 6D1E E35F"
	$"FED5 BBB7 9944 DF6A 4579 6479 6449 11A0"
	$"5587 2C54 AB0D AB93 5E21 6BF1 BFE1 5E8D"
	$"FF00 04F2 D374 EB5F 1B78 73FB 6AC1 6C6F"
	$"13C3 CBAA DB7F 682A 47AD 453F 95F6 60FE"
	$"6061 12E7 1B78 033D 2BA1 5969 7E8C E46A"
	$"4F5B 755F F04F A1DF E2D7 C12F 1278 E3C3"
	$"3F1F 2CBE 36F8 263F 0EE9 5E19 D4EC 668E"
	$"7D56 18EE 375D 4B67 2A66 32C1 94A8 B670"
	$"C8C0 3EE6 5001 E6BC 53E1 87ED 13F0 87C5"
	$"1F07 7F68 6D66 4F88 1E1E D2A5 F14E B7E2"
	$"3B8D 26C3 51D5 2DED 2EEE A16B 1586 0748"
	$"2471 21F3 3665 4632 4B63 AD5B 6910 A2ED"
	$"B1E7 7FB7 CFC4 DF87 3E2D FD93 3E1A 787F"
	$"C2BE 3FF0 D6B5 AA58 DDE9 6D75 63A7 EAD6"
	$"D757 1005 B091 5CC9 146E 5940 6214 E40C"
	$"1383 5C87 EC59 3FC2 9F87 DF0B 2E7C 517D"
	$"F10B C2BA 6F8B 3C4A F309 9752 D4AD A196"
	$"D228 A478 E08D A379 15B6 92BE 69E9 B832"
	$"FA03 5F2D C5DE DE79 7BA5 8783 9F34 A29A"
	$"8A6D DB7E 97EA 92F9 9E96 55C9 1ADC D51A"
	$"564F 7EFB 7EA7 9D6A 7FB3 CFC2 DD6B E26C"
	$"6FE3 4FDA 7742 D5D7 C450 DF6A 57DA A5B5"
	$"E594 7E55 CA34 5B51 D9A7 651B FCD6 DA38"
	$"E23E 338E 3D3B E1A7 897E 1D7C 45FD 9C25"
	$"F811 6BF1 1344 D1B5 6D06 E9F4 E0FA 9DCA"
	$"4426 861B E334 73A7 2048 AE9D D338 279E"
	$"2BC1 CC31 58CC 6E1E 94D6 1650 8D19 427C"
	$"B677 B272 8B5A A5B5 97A2 7AE8 76D0 A74A"
	$"8CE5 1F6A 9B9A 92BE 96E8 FF00 CFEE 23FD"
	$"A275 FF00 833F 1E7E 2478 2FE1 25F7 C4ED"
	$"3B4F D374 682F EFF5 1D66 0BCB 716F 0CAC"
	$"91A4 50F9 D237 9458 EC24 804E 3A75 AF23"
	$"FD92 B50F 067C 38FD A675 F82F BC63 A5C1"
	$"A158 D86A 5636 9AA5 EDEC 1043 70A2 58C4"
	$"644A 5821 2CAB 9183 CF38 ABC1 D2C6 D3C9"
	$"AA60 2745 FF00 09C9 68EE DCA5 2F77 D6D6"
	$"76DF 533A D2A3 2C64 6BA9 FDAB 6EB6 496B"
	$"F79C 17ED 15AC 695A EFED 37E2 0D5F 43D4"
	$"ED35 1B0B 9D62 D9A1 BAB4 9D27 8651 8886"
	$"51D0 9561 907A 1AD3 DD5F 7395 C1D3 C0D0"
	$"8C95 9A84 534F 74F9 51E4 625A 9569 B5DD"
	$"FE67 EEAC 7CE4 E318 3818 E31D 2907 CC06"
	$"7F89 49E0 9FF3 DEAB A198 3615 8300 3A31"
	$"A593 F751 E579 C93D 6988 441B 8A39 2724"
	$"1CF3 ED4E 2727 900E 38A9 6D80 D030 1C8C"
	$"F0BD 3348 D926 3392 32A4 903E 828B 8C52"
	$"C4BF 96C0 1500 1C1F CE9E 5780 7273 F851"
	$"701B B427 DDE0 1524 8ED9 F5A1 941C 8233"
	$"8CE3 3CD0 DE80 2649 5272 78E4 0F4C 5388"
	$"0251 8EAC 0E4D 17B8 B623 2ED8 761C 1070"
	$"31F5 C548 C022 0551 DF14 EE31 A3E5 5183"
	$"8C73 FA50 CB88 D8E4 9207 53CF 5C1F E94A"
	$"E02C 8C40 00F3 D7AF E1FE 2681 F3C8 474C"
	$"63A7 D29D C06A 9319 DAA7 B11C FB1A 1497"
	$"7604 E393 823A 8A57 D006 9C39 2ACA 085C"
	$"E3F2 1528 51B5 724F 4142 60C8 F761 7705"
	$"1901 88EB DB1F E34C 7558 F6B2 8196 3B0F"
	$"B8EB 4AE5 2248 9555 1DB1 9207 53DF 8CF3"
	$"48C7 1F38 E085 07F1 A77D 097A B1EA 8B81"
	$"F46F E9FE 346D DBB9 7731 0BC8 C9A0 06AE"
	$"4889 727E 6249 3DFA E69E E024 648E C33D"
	$"7BD0 D888 9256 3C71 CE49 FCA9 4C8C 2403"
	$"FBCC 14FE 5426 3689 1462 4C75 EA79 EDC8"
	$"1440 4C8A 18F6 2C30 3EB4 F710 D727 3B7B"
	$"1C7F 8D62 6B32 38B6 2436 39C5 73D6 F84D"
	$"A92F 791E 2DE3 99EE 8C72 8177 2AF5 E847"
	$"F857 CDBE 368A E2E2 493C CD46 EB92 7A15"
	$"FF00 E26B E7E7 4D49 EA7D 5612 A38A 491E"
	$"45AD F876 1B97 712D FDE1 EBFC 49FF 00C4"
	$"D71D 79E0 4D32 566D F7B7 C739 FE34 FF00"
	$"E22A 6146 30B3 5D4E D755 BB98 B73F 0F34"
	$"776E 6EEF B8FF 006E 3FFE 22A9 CDF0 EB46"
	$"C7FC 7DDF 7FDF 71FF 00F1 15E9 460A E8F3"
	$"2BCD A28B FC39 D181 205E 5FF2 7FBF 1FFF"
	$"0011 5565 F86F A29D C3ED 97E3 8FEF C7FF"
	$"00C4 575C 228E 29CD B453 6F86 7A26 33F6"
	$"DD43 FEFB 8FFF 0088 A61F 863A 113C DE6A"
	$"1FF7 DC7F FC45 7440 E2A8 C6B7 C30D 07FE"
	$"7EEF FF00 EFB8 FF00 F88A 8CFC 30D0 8F3F"
	$"6CD4 3FEF B8FF 00F8 8ADD 2B98 3629 F863"
	$"A10E 9797 FF00 F7DC 7FFC 4530 FC31 D0BF"
	$"E7F2 FF00 FEFB 8FFF 0088 AA46 4C3F E158"
	$"685C FF00 A65F FF00 DF71 FF00 F114 C6F8"
	$"61A1 7FCF E6A1 FF00 7DC7 FF00 C455 2246"
	$"B7C2 FD0B 1FF1 F9A8 7FDF 71FF 00F1 151B"
	$"7C30 D0B1 FF00 1FBA 87FD FC8F FF00 88A7"
	$"1DC8 7B96 F46F 865A 22EA D60C 2F75 0056"
	$"EA22 3E78 FF00 BE3F D8AF 57FF 0085 7BA6"
	$"7FD0 4B51 FF00 BEA2 FF00 E375 B08F FFD9"
	$"0098 000A 0000 0000 002C 0045 0000 0000"
	$"002C 0045 0110 0000 012C 01C8 0000 08FD"
	$"FF02 0000 FEFE 000B 0780 7FFF FF00 07FF"
	$"C0FF 000B 0780 7FFF FF00 1FFF F0FF 000B"
	$"0780 7FFF FF00 7FFF FCFF 000B 0780 7FFF"
	$"FF00 FFFF FEFF 000A 0480 7FC0 FF01 FEFF"
	$"FF00 0B09 887F 003F 03FF 01FF 8000 0B09"
	$"887E 001F 03FC 007F 8000 0B09 887C 000F"
	$"07F8 003F C000 0B09 8078 1C07 07F0 001F"
	$"C000 0B09 8078 1C07 0FE0 000F E000 0B09"
	$"8070 1C03 0FC0 0007 E000 0B09 8070 1C03"
	$"1FC0 0007 F000 0B09 8070 1C03 1F80 0003"
	$"F000 0B09 8070 1C03 1F80 0003 F000 0B09"
	$"8070 1C03 1F80 3FFC F000 0B09 8070 1C03"
	$"1F80 27FC F000 0B09 8070 0803 1F80 3FFC"
	$"F000 0B09 8070 0003 1F80 0003 F000 0B09"
	$"8070 0003 1F80 0003 F000 0B09 87F0 1C03"
	$"1FC0 0007 F000 0B09 81F0 1C03 0FC0 0007"
	$"E000 0B09 81F0 1C07 0FE0 000F E000 0B09"
	$"81F0 0007 07F0 001F C000 0B09 81F0 000F"
	$"07F8 003F C000 0B09 81E0 001F 03FC 007F"
	$"8000 0B09 8F80 007F 03FF 01FF C000 0B00"
	$"81FE FF00 01FE FF01 E000 0B00 81FE FF00"
	$"00FE FF01 F000 0B00 81FE FF05 007F FFFF"
	$"F000 0B00 81FE FF05 001F FFFF F000 09FD"
	$"FF05 0007 FFCF F000 08FC 0004 01FF 03F0"
	$"0002 F700 0B09 3800 0C7C 0000 3DCF F800"
	$"0B09 4402 0454 8000 1291 A800 0B09 8200"
	$"0410 0000 12A0 2000 0B09 83B6 7591 B7D8"
	$"1CA0 2000 0B09 8292 9510 9A64 10A0 2000"
	$"0B09 8292 8710 927C 10A0 2000 0B09 4492"
	$"8510 9260 1091 2000 0B09 38FF 7FB9 FB7C"
	$"39CF 7000 0400 18F8 0004 000E F800 00FF"
};

resource 'PICT' (400, "Info Button") {
	498,
	{0, 0, 7, 7},
	$"0011 02FF 0C00 FFFE 0000 0048 0000 0048"
	$"0000 0000 0000 0007 0007 0000 0000 00A1"
	$"01F2 0016 3842 494D 0000 0000 0000 0007"
	$"0007 4772 8970 68AF 626A 0001 000A 0000"
	$"0000 0007 0007 8201 0000 00E4 0000 0001"
	$"0000 0000 0000 0000 0000 0000 0000 0001"
	$"0000 0000 0000 0000 0000 0000 0000 4000"
	$"0000 0000 00B2 0000 0000 0007 0007 0000"
	$"0056 726C 6520 0000 0000 0000 0000 0001"
	$"0001 6170 706C 0000 0000 0000 0400 0007"
	$"0007 0048 0000 0048 0000 0000 005C 0001"
	$"0941 6E69 6D61 7469 6F6E 0000 0000 0000"
	$"0000 0000 0000 0000 0000 0000 0000 0000"
	$"0028 0028 4000 005C 0008 0000 0000 0007"
	$"0000 0102 0060 B8F5 B860 0000 FF01 0260"
	$"9F47 0A47 9F60 00FF 0102 B847 00FF 0047"
	$"B800 FF01 02F5 0A00 FF00 0AF5 00FF 0102"
	$"B847 00FF 0047 B800 FF01 0260 9F47 FF47"
	$"9F60 00FF 0102 0060 B8F5 B860 0000 FF00"
	$"009A 0000 00FF 801C 0000 0000 0007 0007"
	$"0000 0004 0000 0000 0048 0000 0048 0000"
	$"0010 0020 0003 0008 0000 0000 0000 0000"
	$"0000 0000 0000 0000 0007 0007 0000 0000"
	$"0007 0007 0040 0E00 FFFC 00FF FFFC 00FF"
	$"FFFC 0000 FF02 EC00 14FF 0002 FF00 FFFD"
	$"0002 FF00 FFFD 0004 FF00 FF00 0014 FF00"
	$"02FF 9FFF FD00 02FF 9FFF FD00 04FF 9FFF"
	$"0000 14FF 0002 FF00 FFFD 0002 FF00 FFFD"
	$"0004 FF00 FF00 000E FE00 0053 FB00 0053"
	$"FB00 0053 FE00 0E00 FFFC 00FF FFFC 00FF"
	$"FFFC 0000 FF00 00FF"
};

resource 'PICT' (401, "Add Member Button") {
	508,
	{0, 0, 7, 7},
	$"0011 02FF 0C00 FFFE 0000 0048 0000 0048"
	$"0000 0000 0000 0007 0007 0000 0000 00A1"
	$"01F2 0016 3842 494D 0000 0000 0000 0007"
	$"0007 4772 8970 68AF 626A 0001 000A 0000"
	$"0000 0007 0007 8201 0000 00E4 0000 0001"
	$"0000 0000 0000 0000 0000 0000 0000 0001"
	$"0000 0000 0000 0000 0000 0000 0000 4000"
	$"0000 0000 00B2 0000 0000 0007 0007 0000"
	$"0056 726C 6520 0000 0000 0000 0000 0001"
	$"0001 6170 706C 0000 0000 0000 0400 0007"
	$"0007 0048 0000 0048 0000 0000 005C 0001"
	$"0941 6E69 6D61 7469 6F6E 0000 0000 0000"
	$"0000 0000 0000 0000 0000 0000 0000 0000"
	$"0028 0028 4000 005C 0008 0000 0000 0007"
	$"0000 0102 FFFF FFFF FFFF 0300 FF01 02FF"
	$"0000 0000 FF00 00FF 0102 FF00 0000 00FF"
	$"0000 FF01 02FF FFFF FF00 FF00 00FF 0102"
	$"FF7F 00FF 00FF 0000 FF01 02FF 007F FF00"
	$"FF00 00FF 0102 7FFF FFFF FFFF 0000 FF00"
	$"009A 0000 00FF 801C 0000 0000 0007 0007"
	$"0000 0004 0000 0000 0048 0000 0048 0000"
	$"0010 0020 0003 0008 0000 0000 0000 0000"
	$"0000 0000 0000 0000 0007 0007 0000 0000"
	$"0007 0007 0040 02EC 0013 0000 FDFF 0200"
	$"FF00 FDFF 0200 FF00 FDFF 0100 FF13 0000"
	$"FDFF 0200 FF00 FDFF 0200 FF00 FDFF 0100"
	$"FF12 FD00 02FF 00FF FD00 02FF 00FF FD00"
	$"02FF 00FF 16FF 0012 FF00 FF00 FF00 00FF"
	$"00FF 00FF 0000 FF00 FF00 FF16 1400 FF00"
	$"00FF 00FF 00FF 0000 FF00 FF00 FF00 00FF"
	$"00FF 0CFB 0000 FFFB 0000 FFFB 0000 FF00"
	$"00FF"
};

resource 'PICT' (660, "Line Aliased") {
	2586,
	{0, 0, 10, 13},
	$"0011 02FF 0C00 FFFE 0000 0048 0000 0048"
	$"0000 0000 0000 000A 000D 0000 0000 00A1"
	$"01F2 0016 3842 494D 0000 0000 0000 000A"
	$"000D 4772 8970 68AF 626A 0001 000A 0000"
	$"0000 000A 000D 8201 0000 0136 0000 0001"
	$"0000 0000 0000 0000 0000 0000 0000 0001"
	$"0000 0000 0000 0000 0000 0000 0000 4000"
	$"0000 0000 0103 0000 0000 000A 000D 0000"
	$"0056 726C 6520 0000 0000 0000 0000 0001"
	$"0001 6170 706C 0000 0000 0000 0400 000D"
	$"000A 0048 0000 0048 0000 0000 00AD 0001"
	$"0941 6E69 6D61 7469 6F6E 0000 0000 0000"
	$"0000 0000 0000 0000 0000 0000 0000 0000"
	$"0028 0028 4000 00AD 0008 0000 0000 000A"
	$"0000 01FE 0000 0000 0200 0000 FFFF 0000"
	$"00FF 01FE 0000 0000 0200 00FF FFFF 0000"
	$"00FF 01FE 0000 0000 02FF FFFF FF00 0000"
	$"00FF 0104 0000 0000 0000 00FF FFFF 0000"
	$"0000 0000 FF01 0400 0000 0000 00FF FFFF"
	$"0000 0000 0000 00FF 0102 0000 0000 FFFF"
	$"FFFF FE00 0000 00FF 0102 0000 00FF FFFF"
	$"0000 FE00 0000 00FF 0102 0000 FFFF FF00"
	$"0000 FE00 0000 00FF 0101 FFFF FFFF FD00"
	$"0000 00FF 0101 FFFF 0000 FD00 0000 00FF"
	$"0000 0098 8010 0000 0000 000A 000D 0000"
	$"0000 0000 0000 0048 0000 0048 0000 0000"
	$"0008 0001 0008 0000 0000 0000 0000 0000"
	$"0000 0000 0028 0000 00FF 0000 FFFF FFFF"
	$"FFFF 0001 FEFE FEFE FEFE 0002 FDFD FDFD"
	$"FDFD 0003 FCFC FCFC FCFC 0004 FBFB FBFB"
	$"FBFB 0005 FAFA FAFA FAFA 0006 F9F9 F9F9"
	$"F9F9 0007 F8F8 F8F8 F8F8 0008 F7F7 F7F7"
	$"F7F7 0009 F6F6 F6F6 F6F6 000A F5F5 F5F5"
	$"F5F5 000B F4F4 F4F4 F4F4 000C F3F3 F3F3"
	$"F3F3 000D F2F2 F2F2 F2F2 000E F1F1 F1F1"
	$"F1F1 000F F0F0 F0F0 F0F0 0010 EFEF EFEF"
	$"EFEF 0011 EEEE EEEE EEEE 0012 EDED EDED"
	$"EDED 0013 ECEC ECEC ECEC 0014 EBEB EBEB"
	$"EBEB 0015 EAEA EAEA EAEA 0016 E9E9 E9E9"
	$"E9E9 0017 E8E8 E8E8 E8E8 0018 E7E7 E7E7"
	$"E7E7 0019 E6E6 E6E6 E6E6 001A E5E5 E5E5"
	$"E5E5 001B E4E4 E4E4 E4E4 001C E3E3 E3E3"
	$"E3E3 001D E2E2 E2E2 E2E2 001E E1E1 E1E1"
	$"E1E1 001F E0E0 E0E0 E0E0 0020 DFDF DFDF"
	$"DFDF 0021 DEDE DEDE DEDE 0022 DDDD DDDD"
	$"DDDD 0023 DCDC DCDC DCDC 0024 DBDB DBDB"
	$"DBDB 0025 DADA DADA DADA 0026 D9D9 D9D9"
	$"D9D9 0027 D8D8 D8D8 D8D8 0028 D7D7 D7D7"
	$"D7D7 0029 D6D6 D6D6 D6D6 002A D5D5 D5D5"
	$"D5D5 002B D4D4 D4D4 D4D4 002C D3D3 D3D3"
	$"D3D3 002D D2D2 D2D2 D2D2 002E D1D1 D1D1"
	$"D1D1 002F D0D0 D0D0 D0D0 0030 CFCF CFCF"
	$"CFCF 0031 CECE CECE CECE 0032 CDCD CDCD"
	$"CDCD 0033 CCCC CCCC CCCC 0034 CBCB CBCB"
	$"CBCB 0035 CACA CACA CACA 0036 C9C9 C9C9"
	$"C9C9 0037 C8C8 C8C8 C8C8 0038 C7C7 C7C7"
	$"C7C7 0039 C6C6 C6C6 C6C6 003A C5C5 C5C5"
	$"C5C5 003B C4C4 C4C4 C4C4 003C C3C3 C3C3"
	$"C3C3 003D C2C2 C2C2 C2C2 003E C1C1 C1C1"
	$"C1C1 003F C0C0 C0C0 C0C0 0040 BFBF BFBF"
	$"BFBF 0041 BEBE BEBE BEBE 0042 BDBD BDBD"
	$"BDBD 0043 BCBC BCBC BCBC 0044 BBBB BBBB"
	$"BBBB 0045 BABA BABA BABA 0046 B9B9 B9B9"
	$"B9B9 0047 B8B8 B8B8 B8B8 0048 B7B7 B7B7"
	$"B7B7 0049 B6B6 B6B6 B6B6 004A B5B5 B5B5"
	$"B5B5 004B B4B4 B4B4 B4B4 004C B3B3 B3B3"
	$"B3B3 004D B2B2 B2B2 B2B2 004E B1B1 B1B1"
	$"B1B1 004F B0B0 B0B0 B0B0 0050 AFAF AFAF"
	$"AFAF 0051 AEAE AEAE AEAE 0052 ADAD ADAD"
	$"ADAD 0053 ACAC ACAC ACAC 0054 ABAB ABAB"
	$"ABAB 0055 AAAA AAAA AAAA 0056 A9A9 A9A9"
	$"A9A9 0057 A8A8 A8A8 A8A8 0058 A7A7 A7A7"
	$"A7A7 0059 A6A6 A6A6 A6A6 005A A5A5 A5A5"
	$"A5A5 005B A4A4 A4A4 A4A4 005C A3A3 A3A3"
	$"A3A3 005D A2A2 A2A2 A2A2 005E A1A1 A1A1"
	$"A1A1 005F A0A0 A0A0 A0A0 0060 9F9F 9F9F"
	$"9F9F 0061 9E9E 9E9E 9E9E 0062 9D9D 9D9D"
	$"9D9D 0063 9C9C 9C9C 9C9C 0064 9B9B 9B9B"
	$"9B9B 0065 9A9A 9A9A 9A9A 0066 9999 9999"
	$"9999 0067 9898 9898 9898 0068 9797 9797"
	$"9797 0069 9696 9696 9696 006A 9595 9595"
	$"9595 006B 9494 9494 9494 006C 9393 9393"
	$"9393 006D 9292 9292 9292 006E 9191 9191"
	$"9191 006F 9090 9090 9090 0070 8F8F 8F8F"
	$"8F8F 0071 8E8E 8E8E 8E8E 0072 8D8D 8D8D"
	$"8D8D 0073 8C8C 8C8C 8C8C 0074 8B8B 8B8B"
	$"8B8B 0075 8A8A 8A8A 8A8A 0076 8989 8989"
	$"8989 0077 8888 8888 8888 0078 8787 8787"
	$"8787 0079 8686 8686 8686 007A 8585 8585"
	$"8585 007B 8484 8484 8484 007C 8383 8383"
	$"8383 007D 8282 8282 8282 007E 8181 8181"
	$"8181 007F 8080 8080 8080 0080 7F7F 7F7F"
	$"7F7F 0081 7E7E 7E7E 7E7E 0082 7D7D 7D7D"
	$"7D7D 0083 7C7C 7C7C 7C7C 0084 7B7B 7B7B"
	$"7B7B 0085 7A7A 7A7A 7A7A 0086 7979 7979"
	$"7979 0087 7878 7878 7878 0088 7777 7777"
	$"7777 0089 7676 7676 7676 008A 7575 7575"
	$"7575 008B 7474 7474 7474 008C 7373 7373"
	$"7373 008D 7272 7272 7272 008E 7171 7171"
	$"7171 008F 7070 7070 7070 0090 6F6F 6F6F"
	$"6F6F 0091 6E6E 6E6E 6E6E 0092 6D6D 6D6D"
	$"6D6D 0093 6C6C 6C6C 6C6C 0094 6B6B 6B6B"
	$"6B6B 0095 6A6A 6A6A 6A6A 0096 6969 6969"
	$"6969 0097 6868 6868 6868 0098 6767 6767"
	$"6767 0099 6666 6666 6666 009A 6565 6565"
	$"6565 009B 6464 6464 6464 009C 6363 6363"
	$"6363 009D 6262 6262 6262 009E 6161 6161"
	$"6161 009F 6060 6060 6060 00A0 5F5F 5F5F"
	$"5F5F 00A1 5E5E 5E5E 5E5E 00A2 5D5D 5D5D"
	$"5D5D 00A3 5C5C 5C5C 5C5C 00A4 5B5B 5B5B"
	$"5B5B 00A5 5A5A 5A5A 5A5A 00A6 5959 5959"
	$"5959 00A7 5858 5858 5858 00A8 5757 5757"
	$"5757 00A9 5656 5656 5656 00AA 5555 5555"
	$"5555 00AB 5454 5454 5454 00AC 5353 5353"
	$"5353 00AD 5252 5252 5252 00AE 5151 5151"
	$"5151 00AF 5050 5050 5050 00B0 4F4F 4F4F"
	$"4F4F 00B1 4E4E 4E4E 4E4E 00B2 4D4D 4D4D"
	$"4D4D 00B3 4C4C 4C4C 4C4C 00B4 4B4B 4B4B"
	$"4B4B 00B5 4A4A 4A4A 4A4A 00B6 4949 4949"
	$"4949 00B7 4848 4848 4848 00B8 4747 4747"
	$"4747 00B9 4646 4646 4646 00BA 4545 4545"
	$"4545 00BB 4444 4444 4444 00BC 4343 4343"
	$"4343 00BD 4242 4242 4242 00BE 4141 4141"
	$"4141 00BF 4040 4040 4040 00C0 3F3F 3F3F"
	$"3F3F 00C1 3E3E 3E3E 3E3E 00C2 3D3D 3D3D"
	$"3D3D 00C3 3C3C 3C3C 3C3C 00C4 3B3B 3B3B"
	$"3B3B 00C5 3A3A 3A3A 3A3A 00C6 3939 3939"
	$"3939 00C7 3838 3838 3838 00C8 3737 3737"
	$"3737 00C9 3636 3636 3636 00CA 3535 3535"
	$"3535 00CB 3434 3434 3434 00CC 3333 3333"
	$"3333 00CD 3232 3232 3232 00CE 3131 3131"
	$"3131 00CF 3030 3030 3030 00D0 2F2F 2F2F"
	$"2F2F 00D1 2E2E 2E2E 2E2E 00D2 2D2D 2D2D"
	$"2D2D 00D3 2C2C 2C2C 2C2C 00D4 2B2B 2B2B"
	$"2B2B 00D5 2A2A 2A2A 2A2A 00D6 2929 2929"
	$"2929 00D7 2828 2828 2828 00D8 2727 2727"
	$"2727 00D9 2626 2626 2626 00DA 2525 2525"
	$"2525 00DB 2424 2424 2424 00DC 2323 2323"
	$"2323 00DD 2222 2222 2222 00DE 2121 2121"
	$"2121 00DF 2020 2020 2020 00E0 1F1F 1F1F"
	$"1F1F 00E1 1E1E 1E1E 1E1E 00E2 1D1D 1D1D"
	$"1D1D 00E3 1C1C 1C1C 1C1C 00E4 1B1B 1B1B"
	$"1B1B 00E5 1A1A 1A1A 1A1A 00E6 1919 1919"
	$"1919 00E7 1818 1818 1818 00E8 1717 1717"
	$"1717 00E9 1616 1616 1616 00EA 1515 1515"
	$"1515 00EB 1414 1414 1414 00EC 1313 1313"
	$"1313 00ED 1212 1212 1212 00EE 1111 1111"
	$"1111 00EF 1010 1010 1010 00F0 0F0F 0F0F"
	$"0F0F 00F1 0E0E 0E0E 0E0E 00F2 0D0D 0D0D"
	$"0D0D 00F3 0C0C 0C0C 0C0C 00F4 0B0B 0B0B"
	$"0B0B 00F5 0A0A 0A0A 0A0A 00F6 0909 0909"
	$"0909 00F7 0808 0808 0808 00F8 0707 0707"
	$"0707 00F9 0606 0606 0606 00FA 0505 0505"
	$"0505 00FB 0404 0404 0404 00FC 0303 0303"
	$"0303 00FD 0202 0202 0202 00FE 0101 0101"
	$"0101 00FF 0000 0000 0000 0000 0000 000A"
	$"000D 0000 0000 000A 000D 0000 06F6 00FF"
	$"FFFE 0006 F700 FEFF FE00 06F9 00FD FFFD"
	$"0006 FA00 FEFF FB00 06FB 00FE FFFA 0006"
	$"FD00 FDFF F900 06FE 00FE FFF7 0006 FF00"
	$"FEFF F600 04FD FFF5 0004 FFFF F300 00FF"
};

resource 'PICT' (661, "Line Anti-Aliased") {
	2628,
	{0, 0, 12, 13},
	$"0011 02FF 0C00 FFFE 0000 0048 0000 0048"
	$"0000 0000 0000 000C 000D 0000 0000 00A1"
	$"01F2 0016 3842 494D 0000 0000 0000 000C"
	$"000D 4772 8970 68AF 626A 0001 000A 0000"
	$"0000 000C 000D 8201 0000 0154 0000 0001"
	$"0000 0000 0000 0000 0000 0000 0000 0001"
	$"0000 0000 0000 0000 0000 0000 0000 4000"
	$"0000 0000 0122 0000 0000 000C 000D 0000"
	$"0056 726C 6520 0000 0000 0000 0000 0001"
	$"0001 6170 706C 0000 0000 0000 0400 000D"
	$"000C 0048 0000 0048 0000 0000 00CC 0001"
	$"0941 6E69 6D61 7469 6F6E 0000 0000 0000"
	$"0000 0000 0000 0000 0000 0000 0000 0000"
	$"0028 0028 4000 00CC 0008 0000 0000 000C"
	$"0000 01FE 0000 0000 0200 0000 0100 0000"
	$"00FF 01FE 0000 0000 0200 0008 C342 0000"
	$"00FF 01FE 0000 0000 0200 29ED FF9B 0000"
	$"00FF 0104 0000 0000 0000 0001 74FF FF46"
	$"0000 0000 FF01 0400 0000 0000 0007 BAFF"
	$"E415 0000 0000 00FF 0104 0000 0000 0029"
	$"EDFF 9B04 0000 0000 0000 FF01 0200 0000"
	$"0074 FFFF 46FE 0000 0000 FF01 0200 0007"
	$"B2FF E41B 00FE 0000 0000 FF01 0200 29ED"
	$"FF9B 0400 00FE 0000 0000 FF01 0167 FFFF"
	$"4CFD 0000 0000 FF01 0186 E41B 00FD 0000"
	$"0000 FF01 0101 0400 00FD 0000 0000 FF00"
	$"0098 8010 0000 0000 000C 000D 0000 0000"
	$"0000 0000 0048 0000 0048 0000 0000 0008"
	$"0001 0008 0000 0000 0000 0000 0000 0000"
	$"0000 0028 0000 00FF 0000 FFFF FFFF FFFF"
	$"0001 FEFE FEFE FEFE 0002 FDFD FDFD FDFD"
	$"0003 FCFC FCFC FCFC 0004 FBFB FBFB FBFB"
	$"0005 FAFA FAFA FAFA 0006 F9F9 F9F9 F9F9"
	$"0007 F8F8 F8F8 F8F8 0008 F7F7 F7F7 F7F7"
	$"0009 F6F6 F6F6 F6F6 000A F5F5 F5F5 F5F5"
	$"000B F4F4 F4F4 F4F4 000C F3F3 F3F3 F3F3"
	$"000D F2F2 F2F2 F2F2 000E F1F1 F1F1 F1F1"
	$"000F F0F0 F0F0 F0F0 0010 EFEF EFEF EFEF"
	$"0011 EEEE EEEE EEEE 0012 EDED EDED EDED"
	$"0013 ECEC ECEC ECEC 0014 EBEB EBEB EBEB"
	$"0015 EAEA EAEA EAEA 0016 E9E9 E9E9 E9E9"
	$"0017 E8E8 E8E8 E8E8 0018 E7E7 E7E7 E7E7"
	$"0019 E6E6 E6E6 E6E6 001A E5E5 E5E5 E5E5"
	$"001B E4E4 E4E4 E4E4 001C E3E3 E3E3 E3E3"
	$"001D E2E2 E2E2 E2E2 001E E1E1 E1E1 E1E1"
	$"001F E0E0 E0E0 E0E0 0020 DFDF DFDF DFDF"
	$"0021 DEDE DEDE DEDE 0022 DDDD DDDD DDDD"
	$"0023 DCDC DCDC DCDC 0024 DBDB DBDB DBDB"
	$"0025 DADA DADA DADA 0026 D9D9 D9D9 D9D9"
	$"0027 D8D8 D8D8 D8D8 0028 D7D7 D7D7 D7D7"
	$"0029 D6D6 D6D6 D6D6 002A D5D5 D5D5 D5D5"
	$"002B D4D4 D4D4 D4D4 002C D3D3 D3D3 D3D3"
	$"002D D2D2 D2D2 D2D2 002E D1D1 D1D1 D1D1"
	$"002F D0D0 D0D0 D0D0 0030 CFCF CFCF CFCF"
	$"0031 CECE CECE CECE 0032 CDCD CDCD CDCD"
	$"0033 CCCC CCCC CCCC 0034 CBCB CBCB CBCB"
	$"0035 CACA CACA CACA 0036 C9C9 C9C9 C9C9"
	$"0037 C8C8 C8C8 C8C8 0038 C7C7 C7C7 C7C7"
	$"0039 C6C6 C6C6 C6C6 003A C5C5 C5C5 C5C5"
	$"003B C4C4 C4C4 C4C4 003C C3C3 C3C3 C3C3"
	$"003D C2C2 C2C2 C2C2 003E C1C1 C1C1 C1C1"
	$"003F C0C0 C0C0 C0C0 0040 BFBF BFBF BFBF"
	$"0041 BEBE BEBE BEBE 0042 BDBD BDBD BDBD"
	$"0043 BCBC BCBC BCBC 0044 BBBB BBBB BBBB"
	$"0045 BABA BABA BABA 0046 B9B9 B9B9 B9B9"
	$"0047 B8B8 B8B8 B8B8 0048 B7B7 B7B7 B7B7"
	$"0049 B6B6 B6B6 B6B6 004A B5B5 B5B5 B5B5"
	$"004B B4B4 B4B4 B4B4 004C B3B3 B3B3 B3B3"
	$"004D B2B2 B2B2 B2B2 004E B1B1 B1B1 B1B1"
	$"004F B0B0 B0B0 B0B0 0050 AFAF AFAF AFAF"
	$"0051 AEAE AEAE AEAE 0052 ADAD ADAD ADAD"
	$"0053 ACAC ACAC ACAC 0054 ABAB ABAB ABAB"
	$"0055 AAAA AAAA AAAA 0056 A9A9 A9A9 A9A9"
	$"0057 A8A8 A8A8 A8A8 0058 A7A7 A7A7 A7A7"
	$"0059 A6A6 A6A6 A6A6 005A A5A5 A5A5 A5A5"
	$"005B A4A4 A4A4 A4A4 005C A3A3 A3A3 A3A3"
	$"005D A2A2 A2A2 A2A2 005E A1A1 A1A1 A1A1"
	$"005F A0A0 A0A0 A0A0 0060 9F9F 9F9F 9F9F"
	$"0061 9E9E 9E9E 9E9E 0062 9D9D 9D9D 9D9D"
	$"0063 9C9C 9C9C 9C9C 0064 9B9B 9B9B 9B9B"
	$"0065 9A9A 9A9A 9A9A 0066 9999 9999 9999"
	$"0067 9898 9898 9898 0068 9797 9797 9797"
	$"0069 9696 9696 9696 006A 9595 9595 9595"
	$"006B 9494 9494 9494 006C 9393 9393 9393"
	$"006D 9292 9292 9292 006E 9191 9191 9191"
	$"006F 9090 9090 9090 0070 8F8F 8F8F 8F8F"
	$"0071 8E8E 8E8E 8E8E 0072 8D8D 8D8D 8D8D"
	$"0073 8C8C 8C8C 8C8C 0074 8B8B 8B8B 8B8B"
	$"0075 8A8A 8A8A 8A8A 0076 8989 8989 8989"
	$"0077 8888 8888 8888 0078 8787 8787 8787"
	$"0079 8686 8686 8686 007A 8585 8585 8585"
	$"007B 8484 8484 8484 007C 8383 8383 8383"
	$"007D 8282 8282 8282 007E 8181 8181 8181"
	$"007F 8080 8080 8080 0080 7F7F 7F7F 7F7F"
	$"0081 7E7E 7E7E 7E7E 0082 7D7D 7D7D 7D7D"
	$"0083 7C7C 7C7C 7C7C 0084 7B7B 7B7B 7B7B"
	$"0085 7A7A 7A7A 7A7A 0086 7979 7979 7979"
	$"0087 7878 7878 7878 0088 7777 7777 7777"
	$"0089 7676 7676 7676 008A 7575 7575 7575"
	$"008B 7474 7474 7474 008C 7373 7373 7373"
	$"008D 7272 7272 7272 008E 7171 7171 7171"
	$"008F 7070 7070 7070 0090 6F6F 6F6F 6F6F"
	$"0091 6E6E 6E6E 6E6E 0092 6D6D 6D6D 6D6D"
	$"0093 6C6C 6C6C 6C6C 0094 6B6B 6B6B 6B6B"
	$"0095 6A6A 6A6A 6A6A 0096 6969 6969 6969"
	$"0097 6868 6868 6868 0098 6767 6767 6767"
	$"0099 6666 6666 6666 009A 6565 6565 6565"
	$"009B 6464 6464 6464 009C 6363 6363 6363"
	$"009D 6262 6262 6262 009E 6161 6161 6161"
	$"009F 6060 6060 6060 00A0 5F5F 5F5F 5F5F"
	$"00A1 5E5E 5E5E 5E5E 00A2 5D5D 5D5D 5D5D"
	$"00A3 5C5C 5C5C 5C5C 00A4 5B5B 5B5B 5B5B"
	$"00A5 5A5A 5A5A 5A5A 00A6 5959 5959 5959"
	$"00A7 5858 5858 5858 00A8 5757 5757 5757"
	$"00A9 5656 5656 5656 00AA 5555 5555 5555"
	$"00AB 5454 5454 5454 00AC 5353 5353 5353"
	$"00AD 5252 5252 5252 00AE 5151 5151 5151"
	$"00AF 5050 5050 5050 00B0 4F4F 4F4F 4F4F"
	$"00B1 4E4E 4E4E 4E4E 00B2 4D4D 4D4D 4D4D"
	$"00B3 4C4C 4C4C 4C4C 00B4 4B4B 4B4B 4B4B"
	$"00B5 4A4A 4A4A 4A4A 00B6 4949 4949 4949"
	$"00B7 4848 4848 4848 00B8 4747 4747 4747"
	$"00B9 4646 4646 4646 00BA 4545 4545 4545"
	$"00BB 4444 4444 4444 00BC 4343 4343 4343"
	$"00BD 4242 4242 4242 00BE 4141 4141 4141"
	$"00BF 4040 4040 4040 00C0 3F3F 3F3F 3F3F"
	$"00C1 3E3E 3E3E 3E3E 00C2 3D3D 3D3D 3D3D"
	$"00C3 3C3C 3C3C 3C3C 00C4 3B3B 3B3B 3B3B"
	$"00C5 3A3A 3A3A 3A3A 00C6 3939 3939 3939"
	$"00C7 3838 3838 3838 00C8 3737 3737 3737"
	$"00C9 3636 3636 3636 00CA 3535 3535 3535"
	$"00CB 3434 3434 3434 00CC 3333 3333 3333"
	$"00CD 3232 3232 3232 00CE 3131 3131 3131"
	$"00CF 3030 3030 3030 00D0 2F2F 2F2F 2F2F"
	$"00D1 2E2E 2E2E 2E2E 00D2 2D2D 2D2D 2D2D"
	$"00D3 2C2C 2C2C 2C2C 00D4 2B2B 2B2B 2B2B"
	$"00D5 2A2A 2A2A 2A2A 00D6 2929 2929 2929"
	$"00D7 2828 2828 2828 00D8 2727 2727 2727"
	$"00D9 2626 2626 2626 00DA 2525 2525 2525"
	$"00DB 2424 2424 2424 00DC 2323 2323 2323"
	$"00DD 2222 2222 2222 00DE 2121 2121 2121"
	$"00DF 2020 2020 2020 00E0 1F1F 1F1F 1F1F"
	$"00E1 1E1E 1E1E 1E1E 00E2 1D1D 1D1D 1D1D"
	$"00E3 1C1C 1C1C 1C1C 00E4 1B1B 1B1B 1B1B"
	$"00E5 1A1A 1A1A 1A1A 00E6 1919 1919 1919"
	$"00E7 1818 1818 1818 00E8 1717 1717 1717"
	$"00E9 1616 1616 1616 00EA 1515 1515 1515"
	$"00EB 1414 1414 1414 00EC 1313 1313 1313"
	$"00ED 1212 1212 1212 00EE 1111 1111 1111"
	$"00EF 1010 1010 1010 00F0 0F0F 0F0F 0F0F"
	$"00F1 0E0E 0E0E 0E0E 00F2 0D0D 0D0D 0D0D"
	$"00F3 0C0C 0C0C 0C0C 00F4 0B0B 0B0B 0B0B"
	$"00F5 0A0A 0A0A 0A0A 00F6 0909 0909 0909"
	$"00F7 0808 0808 0808 00F8 0707 0707 0707"
	$"00F9 0606 0606 0606 00FA 0505 0505 0505"
	$"00FB 0404 0404 0404 00FC 0303 0303 0303"
	$"00FD 0202 0202 0202 00FE 0101 0101 0101"
	$"00FF 0000 0000 0000 0000 0000 000C 000D"
	$"0000 0000 000C 000D 0000 06F6 00FF FFFE"
	$"0006 F700 FEFF FE00 06F8 00FD FFFE 0006"
	$"FA00 FBFF FE00 06FB 00FC FFFC 0006 FC00"
	$"FCFF FB00 06FE 00FB FFFA 0006 FF00 FCFF"
	$"F800 0600 00FC FFF7 0004 FCFF F600 04FE"
	$"FFF4 0004 FFFF F300 00FF"
};

resource 'PICT' (662, "Unfilled") {
	2574,
	{0, 0, 10, 11},
	$"0011 02FF 0C00 FFFE 0000 0048 0000 0048"
	$"0000 0000 0000 000A 000B 0000 0000 00A1"
	$"01F2 0016 3842 494D 0000 0000 0000 000A"
	$"000B 4772 8970 68AF 626A 0001 000A 0000"
	$"0000 000A 000B 8201 0000 0124 0000 0001"
	$"0000 0000 0000 0000 0000 0000 0000 0001"
	$"0000 0000 0000 0000 0000 0000 0000 4000"
	$"0000 0000 00F2 0000 0000 000A 000B 0000"
	$"0056 726C 6520 0000 0000 0000 0000 0001"
	$"0001 6170 706C 0000 0000 0000 0400 000B"
	$"000A 0048 0000 0048 0000 0000 009C 0001"
	$"0941 6E69 6D61 7469 6F6E 0000 0000 0000"
	$"0000 0000 0000 0000 0000 0000 0000 0000"
	$"0028 0028 4000 009C 0008 0000 0000 000A"
	$"0000 01FE FFFF FFFF 01FF FFFF 00FF 0103"
	$"FF00 0000 0000 0000 0000 FF00 FF01 03FF"
	$"0000 0000 0000 0000 00FF 00FF 0103 FF00"
	$"0000 0000 0000 0000 FF00 FF01 03FF 0000"
	$"0000 0000 0000 00FF 00FF 0103 FF00 0000"
	$"0000 0000 0000 FF00 FF01 03FF 0000 0000"
	$"0000 0000 00FF 00FF 0103 FF00 0000 0000"
	$"0000 0000 FF00 FF01 FEFF FFFF FF01 FFFF"
	$"FF00 FF01 0103 0000 00FE 0000 0000 FF00"
	$"0098 800C 0000 0000 000A 000B 0000 0000"
	$"0000 0000 0048 0000 0048 0000 0000 0008"
	$"0001 0008 0000 0000 0000 0000 0000 0000"
	$"0000 0028 0000 00FF 0000 FFFF FFFF FFFF"
	$"0001 FEFE FEFE FEFE 0002 FDFD FDFD FDFD"
	$"0003 FCFC FCFC FCFC 0004 FBFB FBFB FBFB"
	$"0005 FAFA FAFA FAFA 0006 F9F9 F9F9 F9F9"
	$"0007 F8F8 F8F8 F8F8 0008 F7F7 F7F7 F7F7"
	$"0009 F6F6 F6F6 F6F6 000A F5F5 F5F5 F5F5"
	$"000B F4F4 F4F4 F4F4 000C F3F3 F3F3 F3F3"
	$"000D F2F2 F2F2 F2F2 000E F1F1 F1F1 F1F1"
	$"000F F0F0 F0F0 F0F0 0010 EFEF EFEF EFEF"
	$"0011 EEEE EEEE EEEE 0012 EDED EDED EDED"
	$"0013 ECEC ECEC ECEC 0014 EBEB EBEB EBEB"
	$"0015 EAEA EAEA EAEA 0016 E9E9 E9E9 E9E9"
	$"0017 E8E8 E8E8 E8E8 0018 E7E7 E7E7 E7E7"
	$"0019 E6E6 E6E6 E6E6 001A E5E5 E5E5 E5E5"
	$"001B E4E4 E4E4 E4E4 001C E3E3 E3E3 E3E3"
	$"001D E2E2 E2E2 E2E2 001E E1E1 E1E1 E1E1"
	$"001F E0E0 E0E0 E0E0 0020 DFDF DFDF DFDF"
	$"0021 DEDE DEDE DEDE 0022 DDDD DDDD DDDD"
	$"0023 DCDC DCDC DCDC 0024 DBDB DBDB DBDB"
	$"0025 DADA DADA DADA 0026 D9D9 D9D9 D9D9"
	$"0027 D8D8 D8D8 D8D8 0028 D7D7 D7D7 D7D7"
	$"0029 D6D6 D6D6 D6D6 002A D5D5 D5D5 D5D5"
	$"002B D4D4 D4D4 D4D4 002C D3D3 D3D3 D3D3"
	$"002D D2D2 D2D2 D2D2 002E D1D1 D1D1 D1D1"
	$"002F D0D0 D0D0 D0D0 0030 CFCF CFCF CFCF"
	$"0031 CECE CECE CECE 0032 CDCD CDCD CDCD"
	$"0033 CCCC CCCC CCCC 0034 CBCB CBCB CBCB"
	$"0035 CACA CACA CACA 0036 C9C9 C9C9 C9C9"
	$"0037 C8C8 C8C8 C8C8 0038 C7C7 C7C7 C7C7"
	$"0039 C6C6 C6C6 C6C6 003A C5C5 C5C5 C5C5"
	$"003B C4C4 C4C4 C4C4 003C C3C3 C3C3 C3C3"
	$"003D C2C2 C2C2 C2C2 003E C1C1 C1C1 C1C1"
	$"003F C0C0 C0C0 C0C0 0040 BFBF BFBF BFBF"
	$"0041 BEBE BEBE BEBE 0042 BDBD BDBD BDBD"
	$"0043 BCBC BCBC BCBC 0044 BBBB BBBB BBBB"
	$"0045 BABA BABA BABA 0046 B9B9 B9B9 B9B9"
	$"0047 B8B8 B8B8 B8B8 0048 B7B7 B7B7 B7B7"
	$"0049 B6B6 B6B6 B6B6 004A B5B5 B5B5 B5B5"
	$"004B B4B4 B4B4 B4B4 004C B3B3 B3B3 B3B3"
	$"004D B2B2 B2B2 B2B2 004E B1B1 B1B1 B1B1"
	$"004F B0B0 B0B0 B0B0 0050 AFAF AFAF AFAF"
	$"0051 AEAE AEAE AEAE 0052 ADAD ADAD ADAD"
	$"0053 ACAC ACAC ACAC 0054 ABAB ABAB ABAB"
	$"0055 AAAA AAAA AAAA 0056 A9A9 A9A9 A9A9"
	$"0057 A8A8 A8A8 A8A8 0058 A7A7 A7A7 A7A7"
	$"0059 A6A6 A6A6 A6A6 005A A5A5 A5A5 A5A5"
	$"005B A4A4 A4A4 A4A4 005C A3A3 A3A3 A3A3"
	$"005D A2A2 A2A2 A2A2 005E A1A1 A1A1 A1A1"
	$"005F A0A0 A0A0 A0A0 0060 9F9F 9F9F 9F9F"
	$"0061 9E9E 9E9E 9E9E 0062 9D9D 9D9D 9D9D"
	$"0063 9C9C 9C9C 9C9C 0064 9B9B 9B9B 9B9B"
	$"0065 9A9A 9A9A 9A9A 0066 9999 9999 9999"
	$"0067 9898 9898 9898 0068 9797 9797 9797"
	$"0069 9696 9696 9696 006A 9595 9595 9595"
	$"006B 9494 9494 9494 006C 9393 9393 9393"
	$"006D 9292 9292 9292 006E 9191 9191 9191"
	$"006F 9090 9090 9090 0070 8F8F 8F8F 8F8F"
	$"0071 8E8E 8E8E 8E8E 0072 8D8D 8D8D 8D8D"
	$"0073 8C8C 8C8C 8C8C 0074 8B8B 8B8B 8B8B"
	$"0075 8A8A 8A8A 8A8A 0076 8989 8989 8989"
	$"0077 8888 8888 8888 0078 8787 8787 8787"
	$"0079 8686 8686 8686 007A 8585 8585 8585"
	$"007B 8484 8484 8484 007C 8383 8383 8383"
	$"007D 8282 8282 8282 007E 8181 8181 8181"
	$"007F 8080 8080 8080 0080 7F7F 7F7F 7F7F"
	$"0081 7E7E 7E7E 7E7E 0082 7D7D 7D7D 7D7D"
	$"0083 7C7C 7C7C 7C7C 0084 7B7B 7B7B 7B7B"
	$"0085 7A7A 7A7A 7A7A 0086 7979 7979 7979"
	$"0087 7878 7878 7878 0088 7777 7777 7777"
	$"0089 7676 7676 7676 008A 7575 7575 7575"
	$"008B 7474 7474 7474 008C 7373 7373 7373"
	$"008D 7272 7272 7272 008E 7171 7171 7171"
	$"008F 7070 7070 7070 0090 6F6F 6F6F 6F6F"
	$"0091 6E6E 6E6E 6E6E 0092 6D6D 6D6D 6D6D"
	$"0093 6C6C 6C6C 6C6C 0094 6B6B 6B6B 6B6B"
	$"0095 6A6A 6A6A 6A6A 0096 6969 6969 6969"
	$"0097 6868 6868 6868 0098 6767 6767 6767"
	$"0099 6666 6666 6666 009A 6565 6565 6565"
	$"009B 6464 6464 6464 009C 6363 6363 6363"
	$"009D 6262 6262 6262 009E 6161 6161 6161"
	$"009F 6060 6060 6060 00A0 5F5F 5F5F 5F5F"
	$"00A1 5E5E 5E5E 5E5E 00A2 5D5D 5D5D 5D5D"
	$"00A3 5C5C 5C5C 5C5C 00A4 5B5B 5B5B 5B5B"
	$"00A5 5A5A 5A5A 5A5A 00A6 5959 5959 5959"
	$"00A7 5858 5858 5858 00A8 5757 5757 5757"
	$"00A9 5656 5656 5656 00AA 5555 5555 5555"
	$"00AB 5454 5454 5454 00AC 5353 5353 5353"
	$"00AD 5252 5252 5252 00AE 5151 5151 5151"
	$"00AF 5050 5050 5050 00B0 4F4F 4F4F 4F4F"
	$"00B1 4E4E 4E4E 4E4E 00B2 4D4D 4D4D 4D4D"
	$"00B3 4C4C 4C4C 4C4C 00B4 4B4B 4B4B 4B4B"
	$"00B5 4A4A 4A4A 4A4A 00B6 4949 4949 4949"
	$"00B7 4848 4848 4848 00B8 4747 4747 4747"
	$"00B9 4646 4646 4646 00BA 4545 4545 4545"
	$"00BB 4444 4444 4444 00BC 4343 4343 4343"
	$"00BD 4242 4242 4242 00BE 4141 4141 4141"
	$"00BF 4040 4040 4040 00C0 3F3F 3F3F 3F3F"
	$"00C1 3E3E 3E3E 3E3E 00C2 3D3D 3D3D 3D3D"
	$"00C3 3C3C 3C3C 3C3C 00C4 3B3B 3B3B 3B3B"
	$"00C5 3A3A 3A3A 3A3A 00C6 3939 3939 3939"
	$"00C7 3838 3838 3838 00C8 3737 3737 3737"
	$"00C9 3636 3636 3636 00CA 3535 3535 3535"
	$"00CB 3434 3434 3434 00CC 3333 3333 3333"
	$"00CD 3232 3232 3232 00CE 3131 3131 3131"
	$"00CF 3030 3030 3030 00D0 2F2F 2F2F 2F2F"
	$"00D1 2E2E 2E2E 2E2E 00D2 2D2D 2D2D 2D2D"
	$"00D3 2C2C 2C2C 2C2C 00D4 2B2B 2B2B 2B2B"
	$"00D5 2A2A 2A2A 2A2A 00D6 2929 2929 2929"
	$"00D7 2828 2828 2828 00D8 2727 2727 2727"
	$"00D9 2626 2626 2626 00DA 2525 2525 2525"
	$"00DB 2424 2424 2424 00DC 2323 2323 2323"
	$"00DD 2222 2222 2222 00DE 2121 2121 2121"
	$"00DF 2020 2020 2020 00E0 1F1F 1F1F 1F1F"
	$"00E1 1E1E 1E1E 1E1E 00E2 1D1D 1D1D 1D1D"
	$"00E3 1C1C 1C1C 1C1C 00E4 1B1B 1B1B 1B1B"
	$"00E5 1A1A 1A1A 1A1A 00E6 1919 1919 1919"
	$"00E7 1818 1818 1818 00E8 1717 1717 1717"
	$"00E9 1616 1616 1616 00EA 1515 1515 1515"
	$"00EB 1414 1414 1414 00EC 1313 1313 1313"
	$"00ED 1212 1212 1212 00EE 1111 1111 1111"
	$"00EF 1010 1010 1010 00F0 0F0F 0F0F 0F0F"
	$"00F1 0E0E 0E0E 0E0E 00F2 0D0D 0D0D 0D0D"
	$"00F3 0C0C 0C0C 0C0C 00F4 0B0B 0B0B 0B0B"
	$"00F5 0A0A 0A0A 0A0A 00F6 0909 0909 0909"
	$"00F7 0808 0808 0808 00F8 0707 0707 0707"
	$"00F9 0606 0606 0606 00FA 0505 0505 0505"
	$"00FB 0404 0404 0404 00FC 0303 0303 0303"
	$"00FD 0202 0202 0202 00FE 0101 0101 0101"
	$"00FF 0000 0000 0000 0000 0000 000A 000B"
	$"0000 0000 000A 000B 0000 04F6 FF00 0007"
	$"00FF F800 01FF 0007 00FF F800 01FF 0007"
	$"00FF F800 01FF 0007 00FF F800 01FF 0007"
	$"00FF F800 01FF 0007 00FF F800 01FF 0007"
	$"00FF F800 01FF 0004 F6FF 0000 0400 FFF6"
	$"0000 00FF"
};

resource 'PICT' (663, "Filled") {
	2616,
	{0, 0, 10, 11},
	$"0011 02FF 0C00 FFFE 0000 0048 0000 0048"
	$"0000 0000 0000 000A 000B 0000 0000 00A1"
	$"01F2 0016 3842 494D 0000 0000 0000 000A"
	$"000B 4772 8970 68AF 626A 0001 000A 0000"
	$"0000 000A 000B 8201 0000 0124 0000 0001"
	$"0000 0000 0000 0000 0000 0000 0000 0001"
	$"0000 0000 0000 0000 0000 0000 0000 4000"
	$"0000 0000 00F2 0000 0000 000A 000B 0000"
	$"0056 726C 6520 0000 0000 0000 0000 0001"
	$"0001 6170 706C 0000 0000 0000 0400 000B"
	$"000A 0048 0000 0048 0000 0000 009C 0001"
	$"0941 6E69 6D61 7469 6F6E 0000 0000 0000"
	$"0000 0000 0000 0000 0000 0000 0000 0000"
	$"0028 0028 4000 009C 0008 0000 0000 000A"
	$"0000 01FE FFFF FFFF 01FF FFFF 00FF 0103"
	$"FF00 8F00 8F00 8F00 8F00 FF00 FF01 03FF"
	$"8F00 8F00 8F00 8F00 8FFF 00FF 0103 FF00"
	$"8F00 8F00 8F00 8F00 FF00 FF01 03FF 8F00"
	$"8F00 8F00 8F00 8FFF 00FF 0103 FF00 8F00"
	$"8F00 8F00 8F00 FF00 FF01 03FF 8F00 8F00"
	$"8F00 8F00 8FFF 00FF 0103 FF00 8F00 8F00"
	$"8F00 8F00 FF00 FF01 FEFF FFFF FF01 FFFF"
	$"FF00 FF01 0103 0000 00FE 0000 0000 FF00"
	$"0098 800C 0000 0000 000A 000B 0000 0000"
	$"0000 0000 0048 0000 0048 0000 0000 0008"
	$"0001 0008 0000 0000 0000 0000 0000 0000"
	$"0000 0028 0000 00FF 0000 FFFF FFFF FFFF"
	$"0001 FEFE FEFE FEFE 0002 FDFD FDFD FDFD"
	$"0003 FCFC FCFC FCFC 0004 FBFB FBFB FBFB"
	$"0005 FAFA FAFA FAFA 0006 F9F9 F9F9 F9F9"
	$"0007 F8F8 F8F8 F8F8 0008 F7F7 F7F7 F7F7"
	$"0009 F6F6 F6F6 F6F6 000A F5F5 F5F5 F5F5"
	$"000B F4F4 F4F4 F4F4 000C F3F3 F3F3 F3F3"
	$"000D F2F2 F2F2 F2F2 000E F1F1 F1F1 F1F1"
	$"000F F0F0 F0F0 F0F0 0010 EFEF EFEF EFEF"
	$"0011 EEEE EEEE EEEE 0012 EDED EDED EDED"
	$"0013 ECEC ECEC ECEC 0014 EBEB EBEB EBEB"
	$"0015 EAEA EAEA EAEA 0016 E9E9 E9E9 E9E9"
	$"0017 E8E8 E8E8 E8E8 0018 E7E7 E7E7 E7E7"
	$"0019 E6E6 E6E6 E6E6 001A E5E5 E5E5 E5E5"
	$"001B E4E4 E4E4 E4E4 001C E3E3 E3E3 E3E3"
	$"001D E2E2 E2E2 E2E2 001E E1E1 E1E1 E1E1"
	$"001F E0E0 E0E0 E0E0 0020 DFDF DFDF DFDF"
	$"0021 DEDE DEDE DEDE 0022 DDDD DDDD DDDD"
	$"0023 DCDC DCDC DCDC 0024 DBDB DBDB DBDB"
	$"0025 DADA DADA DADA 0026 D9D9 D9D9 D9D9"
	$"0027 D8D8 D8D8 D8D8 0028 D7D7 D7D7 D7D7"
	$"0029 D6D6 D6D6 D6D6 002A D5D5 D5D5 D5D5"
	$"002B D4D4 D4D4 D4D4 002C D3D3 D3D3 D3D3"
	$"002D D2D2 D2D2 D2D2 002E D1D1 D1D1 D1D1"
	$"002F D0D0 D0D0 D0D0 0030 CFCF CFCF CFCF"
	$"0031 CECE CECE CECE 0032 CDCD CDCD CDCD"
	$"0033 CCCC CCCC CCCC 0034 CBCB CBCB CBCB"
	$"0035 CACA CACA CACA 0036 C9C9 C9C9 C9C9"
	$"0037 C8C8 C8C8 C8C8 0038 C7C7 C7C7 C7C7"
	$"0039 C6C6 C6C6 C6C6 003A C5C5 C5C5 C5C5"
	$"003B C4C4 C4C4 C4C4 003C C3C3 C3C3 C3C3"
	$"003D C2C2 C2C2 C2C2 003E C1C1 C1C1 C1C1"
	$"003F C0C0 C0C0 C0C0 0040 BFBF BFBF BFBF"
	$"0041 BEBE BEBE BEBE 0042 BDBD BDBD BDBD"
	$"0043 BCBC BCBC BCBC 0044 BBBB BBBB BBBB"
	$"0045 BABA BABA BABA 0046 B9B9 B9B9 B9B9"
	$"0047 B8B8 B8B8 B8B8 0048 B7B7 B7B7 B7B7"
	$"0049 B6B6 B6B6 B6B6 004A B5B5 B5B5 B5B5"
	$"004B B4B4 B4B4 B4B4 004C B3B3 B3B3 B3B3"
	$"004D B2B2 B2B2 B2B2 004E B1B1 B1B1 B1B1"
	$"004F B0B0 B0B0 B0B0 0050 AFAF AFAF AFAF"
	$"0051 AEAE AEAE AEAE 0052 ADAD ADAD ADAD"
	$"0053 ACAC ACAC ACAC 0054 ABAB ABAB ABAB"
	$"0055 AAAA AAAA AAAA 0056 A9A9 A9A9 A9A9"
	$"0057 A8A8 A8A8 A8A8 0058 A7A7 A7A7 A7A7"
	$"0059 A6A6 A6A6 A6A6 005A A5A5 A5A5 A5A5"
	$"005B A4A4 A4A4 A4A4 005C A3A3 A3A3 A3A3"
	$"005D A2A2 A2A2 A2A2 005E A1A1 A1A1 A1A1"
	$"005F A0A0 A0A0 A0A0 0060 9F9F 9F9F 9F9F"
	$"0061 9E9E 9E9E 9E9E 0062 9D9D 9D9D 9D9D"
	$"0063 9C9C 9C9C 9C9C 0064 9B9B 9B9B 9B9B"
	$"0065 9A9A 9A9A 9A9A 0066 9999 9999 9999"
	$"0067 9898 9898 9898 0068 9797 9797 9797"
	$"0069 9696 9696 9696 006A 9595 9595 9595"
	$"006B 9494 9494 9494 006C 9393 9393 9393"
	$"006D 9292 9292 9292 006E 9191 9191 9191"
	$"006F 9090 9090 9090 0070 8F8F 8F8F 8F8F"
	$"0071 8E8E 8E8E 8E8E 0072 8D8D 8D8D 8D8D"
	$"0073 8C8C 8C8C 8C8C 0074 8B8B 8B8B 8B8B"
	$"0075 8A8A 8A8A 8A8A 0076 8989 8989 8989"
	$"0077 8888 8888 8888 0078 8787 8787 8787"
	$"0079 8686 8686 8686 007A 8585 8585 8585"
	$"007B 8484 8484 8484 007C 8383 8383 8383"
	$"007D 8282 8282 8282 007E 8181 8181 8181"
	$"007F 8080 8080 8080 0080 7F7F 7F7F 7F7F"
	$"0081 7E7E 7E7E 7E7E 0082 7D7D 7D7D 7D7D"
	$"0083 7C7C 7C7C 7C7C 0084 7B7B 7B7B 7B7B"
	$"0085 7A7A 7A7A 7A7A 0086 7979 7979 7979"
	$"0087 7878 7878 7878 0088 7777 7777 7777"
	$"0089 7676 7676 7676 008A 7575 7575 7575"
	$"008B 7474 7474 7474 008C 7373 7373 7373"
	$"008D 7272 7272 7272 008E 7171 7171 7171"
	$"008F 7070 7070 7070 0090 6F6F 6F6F 6F6F"
	$"0091 6E6E 6E6E 6E6E 0092 6D6D 6D6D 6D6D"
	$"0093 6C6C 6C6C 6C6C 0094 6B6B 6B6B 6B6B"
	$"0095 6A6A 6A6A 6A6A 0096 6969 6969 6969"
	$"0097 6868 6868 6868 0098 6767 6767 6767"
	$"0099 6666 6666 6666 009A 6565 6565 6565"
	$"009B 6464 6464 6464 009C 6363 6363 6363"
	$"009D 6262 6262 6262 009E 6161 6161 6161"
	$"009F 6060 6060 6060 00A0 5F5F 5F5F 5F5F"
	$"00A1 5E5E 5E5E 5E5E 00A2 5D5D 5D5D 5D5D"
	$"00A3 5C5C 5C5C 5C5C 00A4 5B5B 5B5B 5B5B"
	$"00A5 5A5A 5A5A 5A5A 00A6 5959 5959 5959"
	$"00A7 5858 5858 5858 00A8 5757 5757 5757"
	$"00A9 5656 5656 5656 00AA 5555 5555 5555"
	$"00AB 5454 5454 5454 00AC 5353 5353 5353"
	$"00AD 5252 5252 5252 00AE 5151 5151 5151"
	$"00AF 5050 5050 5050 00B0 4F4F 4F4F 4F4F"
	$"00B1 4E4E 4E4E 4E4E 00B2 4D4D 4D4D 4D4D"
	$"00B3 4C4C 4C4C 4C4C 00B4 4B4B 4B4B 4B4B"
	$"00B5 4A4A 4A4A 4A4A 00B6 4949 4949 4949"
	$"00B7 4848 4848 4848 00B8 4747 4747 4747"
	$"00B9 4646 4646 4646 00BA 4545 4545 4545"
	$"00BB 4444 4444 4444 00BC 4343 4343 4343"
	$"00BD 4242 4242 4242 00BE 4141 4141 4141"
	$"00BF 4040 4040 4040 00C0 3F3F 3F3F 3F3F"
	$"00C1 3E3E 3E3E 3E3E 00C2 3D3D 3D3D 3D3D"
	$"00C3 3C3C 3C3C 3C3C 00C4 3B3B 3B3B 3B3B"
	$"00C5 3A3A 3A3A 3A3A 00C6 3939 3939 3939"
	$"00C7 3838 3838 3838 00C8 3737 3737 3737"
	$"00C9 3636 3636 3636 00CA 3535 3535 3535"
	$"00CB 3434 3434 3434 00CC 3333 3333 3333"
	$"00CD 3232 3232 3232 00CE 3131 3131 3131"
	$"00CF 3030 3030 3030 00D0 2F2F 2F2F 2F2F"
	$"00D1 2E2E 2E2E 2E2E 00D2 2D2D 2D2D 2D2D"
	$"00D3 2C2C 2C2C 2C2C 00D4 2B2B 2B2B 2B2B"
	$"00D5 2A2A 2A2A 2A2A 00D6 2929 2929 2929"
	$"00D7 2828 2828 2828 00D8 2727 2727 2727"
	$"00D9 2626 2626 2626 00DA 2525 2525 2525"
	$"00DB 2424 2424 2424 00DC 2323 2323 2323"
	$"00DD 2222 2222 2222 00DE 2121 2121 2121"
	$"00DF 2020 2020 2020 00E0 1F1F 1F1F 1F1F"
	$"00E1 1E1E 1E1E 1E1E 00E2 1D1D 1D1D 1D1D"
	$"00E3 1C1C 1C1C 1C1C 00E4 1B1B 1B1B 1B1B"
	$"00E5 1A1A 1A1A 1A1A 00E6 1919 1919 1919"
	$"00E7 1818 1818 1818 00E8 1717 1717 1717"
	$"00E9 1616 1616 1616 00EA 1515 1515 1515"
	$"00EB 1414 1414 1414 00EC 1313 1313 1313"
	$"00ED 1212 1212 1212 00EE 1111 1111 1111"
	$"00EF 1010 1010 1010 00F0 0F0F 0F0F 0F0F"
	$"00F1 0E0E 0E0E 0E0E 00F2 0D0D 0D0D 0D0D"
	$"00F3 0C0C 0C0C 0C0C 00F4 0B0B 0B0B 0B0B"
	$"00F5 0A0A 0A0A 0A0A 00F6 0909 0909 0909"
	$"00F7 0808 0808 0808 00F8 0707 0707 0707"
	$"00F9 0606 0606 0606 00FA 0505 0505 0505"
	$"00FB 0404 0404 0404 00FC 0303 0303 0303"
	$"00FD 0202 0202 0202 00FE 0101 0101 0101"
	$"00FF 0000 0000 0000 0000 0000 000A 000B"
	$"0000 0000 000A 000B 0000 04F6 FF00 000D"
	$"0BFF 00FF 00FF 00FF 00FF 00FF 000D FFFF"
	$"0900 FF00 FF00 FF00 FFFF 000D 0BFF 00FF"
	$"00FF 00FF 00FF 00FF 000D FFFF 0900 FF00"
	$"FF00 FF00 FFFF 000D 0BFF 00FF 00FF 00FF"
	$"00FF 00FF 000D FFFF 0900 FF00 FF00 FF00"
	$"FFFF 000D 0BFF 00FF 00FF 00FF 00FF 00FF"
	$"0004 F6FF 0000 0400 FFF6 0000 00FF"
};

resource 'PICT' (2050, "System Palette Picker") {
	28688,
	{0, 0, 129, 185},
	$"0011 02FF 0C00 FFFE 0000 0048 0000 0048"
	$"0000 0000 0000 0081 00B9 0000 0000 00A1"
	$"01F2 0016 3842 494D 0000 0000 0000 0081"
	$"00B9 4772 8970 68AF 626A 0001 000A 0000"
	$"0000 0081 00B9 8201 0000 0D3C 0000 0001"
	$"0000 0000 0000 0000 0000 0000 0000 0001"
	$"0000 0000 0000 0000 0000 0000 0000 4000"
	$"0000 0000 0D09 0000 0000 0081 00B9 0000"
	$"0056 726C 6520 0000 0000 0000 0000 0001"
	$"0001 6170 706C 0000 0000 0000 0400 00B9"
	$"0081 0048 0000 0048 0000 0000 0CB3 0001"
	$"0941 6E69 6D61 7469 6F6E 0000 0000 0000"
	$"0000 0000 0000 0000 0000 0000 0000 0000"
	$"0028 0028 4000 0CB3 0008 0000 0000 0081"
	$"0000 01F8 FFFF FFFF 02FF 0000 0000 0000"
	$"00DC FFFF FFFF 01FF 0000 00FF 01F8 FFFF"
	$"FFFF 02FF 0000 0000 0000 00DC FFFF FFFF"
	$"01FF 0000 00FF 01F8 FFFF FFFF 02FF 0000"
	$"0000 0000 00DC FFFF FFFF 01FF 0000 00FF"
	$"01F8 FFFF FFFF 02FF 0000 0000 0000 00DC"
	$"FFFF FFFF 01FF 0000 00FF 01F8 FFFF FFFF"
	$"02FF 0000 0000 0000 00DC FFFF FFFF 01FF"
	$"0000 00FF 01F8 FFFF FFFF 02FF 0000 0000"
	$"0000 00DC FFFF FFFF 01FF 0000 00FF 01F8"
	$"FFFF FFFF 02FF 0000 0000 0000 00DC FFFF"
	$"FFFF 01FF 0000 00FF 01F8 FFFF FFFF 02FF"
	$"0000 0000 0000 00DC FFFF FFFF 01FF 0000"
	$"00FF 01F8 FFFF FFFF 02FF 0000 0000 0000"
	$"00DC FFFF FFFF 01FF 0000 00FF 01F8 FFFF"
	$"FFFF 02FF 0000 0000 0000 00DC FFFF FFFF"
	$"01FF 0000 00FF 01F8 FFFF FFFF 02FF 0000"
	$"0000 0000 00DC FFFF FFFF 01FF 0000 00FF"
	$"01F8 FFFF FFFF 02FF 0000 0000 0000 00DC"
	$"FFFF FFFF 01FF 0000 00FF 01F8 FFFF FFFF"
	$"02FF 0000 0000 0000 00DC FFFF FFFF 01FF"
	$"0000 00FF 01F8 FFFF FFFF 02FF 0000 0000"
	$"0000 00DC FFFF FFFF 01FF 0000 00FF 01F8"
	$"FFFF FFFF 02FF 0000 0000 0000 00DC FFFF"
	$"FFFF 01FF 0000 00FF 01F8 FFFF FFFF 02FF"
	$"0000 0000 0000 00DC FFFF FFFF 01FF 0000"
	$"00FF 01F8 FFFF FFFF 02FF 0000 0000 0000"
	$"00DC FFFF FFFF 01FF 0000 00FF 01F8 FFFF"
	$"FFFF 02FF 0000 0000 0000 00DC FFFF FFFF"
	$"01FF 0000 00FF 01F8 FFFF FFFF 02FF 0000"
	$"0000 0000 00DC FFFF FFFF 01FF 0000 00FF"
	$"01F8 FFFF FFFF 02FF 0000 0000 0000 00DC"
	$"FFFF FFFF 01FF 0000 00FF 01F8 FFFF FFFF"
	$"02FF 0000 0000 0000 00DC FFFF FFFF 01FF"
	$"0000 00FF 01F8 FFFF FFFF 02FF 0000 0000"
	$"0000 00DC FFFF FFFF 01FF 0000 00FF 01F8"
	$"FFFF FFFF 02FF 0000 0000 0000 00DC FFFF"
	$"FFFF 01FF 0000 00FF 01F8 FFFF FFFF 02FF"
	$"0000 0000 0000 00DC FFFF FFFF 01FF 0000"
	$"00FF 01F8 FFFF FFFF 02FF 0000 0000 0000"
	$"00DC FFFF FFFF 01FF 0000 00FF 01F8 FFFF"
	$"FFFF 02FF 0000 0000 0000 00DC FFFF FFFF"
	$"01FF 0000 00FF 01F8 FFFF FFFF 02FF 0000"
	$"0000 0000 00DC FFFF FFFF 01FF 0000 00FF"
	$"01F8 FFFF FFFF 02FF 0000 0000 0000 00DC"
	$"FFFF FFFF 01FF 0000 00FF 01F8 FFFF FFFF"
	$"02FF 0000 0000 0000 00DC FFFF FFFF 01FF"
	$"0000 00FF 01F8 FFFF FFFF 02FF 0000 0000"
	$"0000 00DC FFFF FFFF 01FF 0000 00FF 01F8"
	$"FFFF FFFF 02FF 0000 0000 0000 00DC FFFF"
	$"FFFF 01FF 0000 00FF 01F8 FFFF FFFF 02FF"
	$"0000 0000 0000 00DC FFFF FFFF 01FF 0000"
	$"00FF 01F8 FFFF FFFF 02FF 0000 0000 0000"
	$"00DC FFFF FFFF 01FF 0000 00FF 01F8 FFFF"
	$"FFFF 02FF 0000 0000 0000 00DC FFFF FFFF"
	$"01FF 0000 00FF 01F8 FFFF FFFF 02FF 0000"
	$"0000 0000 00DC FFFF FFFF 01FF 0000 00FF"
	$"01F8 FFFF FFFF 02FF 0000 0000 0000 00DC"
	$"FFFF FFFF 01FF 0000 00FF 01F8 FFFF FFFF"
	$"02FF 0000 0000 0000 00DC FFFF FFFF 01FF"
	$"0000 00FF 01F8 FFFF FFFF 02FF 0000 0000"
	$"0000 00DC FFFF FFFF 01FF 0000 00FF 01F8"
	$"FFFF FFFF 02FF 0000 0000 0000 00DC FFFF"
	$"FFFF 01FF 0000 00FF 01F8 FFFF FFFF 02FF"
	$"0000 0000 0000 00DC FFFF FFFF 01FF 0000"
	$"00FF 01F8 FFFF FFFF 02FF 0000 0000 0000"
	$"00DC FFFF FFFF 01FF 0000 00FF 01F8 FFFF"
	$"FFFF 02FF 0000 0000 0000 00DC FFFF FFFF"
	$"01FF 0000 00FF 01F8 FFFF FFFF 02FF 0000"
	$"0000 0000 00DC FFFF FFFF 01FF 0000 00FF"
	$"01F8 FFFF FFFF 02FF 0000 0000 0000 00DC"
	$"FFFF FFFF 01FF 0000 00FF 01F8 FFFF FFFF"
	$"02FF 0000 0000 0000 00DC FFFF FFFF 01FF"
	$"0000 00FF 01F8 FFFF FFFF 02FF 0000 0000"
	$"0000 00DC FFFF FFFF 01FF 0000 00FF 01F8"
	$"FFFF FFFF 02FF 0000 0000 0000 00DC FFFF"
	$"FFFF 01FF 0000 00FF 01F8 FFFF FFFF 02FF"
	$"0000 0000 0000 00DC FFFF FFFF 01FF 0000"
	$"00FF 01F8 FFFF FFFF 02FF 0000 0000 0000"
	$"00DC FFFF FFFF 01FF 0000 00FF 01F8 FFFF"
	$"FFFF 02FF 0000 0000 0000 00DC FFFF FFFF"
	$"01FF 0000 00FF 01F8 FFFF FFFF 02FF 0000"
	$"0000 0000 00DC FFFF FFFF 01FF 0000 00FF"
	$"01F8 FFFF FFFF 02FF 0000 0000 0000 00DC"
	$"FFFF FFFF 01FF 0000 00FF 01F8 FFFF FFFF"
	$"02FF 0000 0000 0000 00DC FFFF FFFF 01FF"
	$"0000 00FF 01F8 FFFF FFFF 02FF 0000 0000"
	$"0000 00DC FFFF FFFF 01FF 0000 00FF 01F8"
	$"FFFF FFFF 02FF 0000 0000 0000 00DC FFFF"
	$"FFFF 01FF 0000 00FF 01F8 FFFF FFFF 02FF"
	$"0000 0000 0000 00DC FFFF FFFF 01FF 0000"
	$"00FF 01F8 FFFF FFFF 02FF 0000 0000 0000"
	$"00DC FFFF FFFF 01FF 0000 00FF 01F8 FFFF"
	$"FFFF 02FF 0000 0000 0000 00DC FFFF FFFF"
	$"01FF 0000 00FF 01F8 FFFF FFFF 02FF 0000"
	$"0000 0000 00DC FFFF FFFF 01FF 0000 00FF"
	$"01F8 FFFF FFFF 02FF 0000 0000 0000 00DC"
	$"FFFF FFFF 01FF 0000 00FF 01F8 FFFF FFFF"
	$"02FF 0000 0000 0000 00DC FFFF FFFF 01FF"
	$"0000 00FF 01F8 FFFF FFFF 02FF 0000 0000"
	$"0000 00DC FFFF FFFF 01FF 0000 00FF 01F8"
	$"FFFF FFFF 02FF 0000 0000 0000 00DC FFFF"
	$"FFFF 01FF 0000 00FF 01F8 FFFF FFFF 02FF"
	$"0000 0000 0000 00DC FFFF FFFF 01FF 0000"
	$"00FF 01F8 FFFF FFFF 02FF 0000 0000 0000"
	$"00DC FFFF FFFF 01FF 0000 00FF 01F8 FFFF"
	$"FFFF 02FF 0000 0000 0000 00DC FFFF FFFF"
	$"01FF 0000 00FF 01F8 FFFF FFFF 02FF 0000"
	$"0000 0000 00DC FFFF FFFF 01FF 0000 00FF"
	$"01F8 FFFF FFFF 02FF 0000 0000 0000 00DC"
	$"FFFF FFFF 01FF 0000 00FF 01F8 FFFF FFFF"
	$"02FF 0000 0000 0000 00DC FFFF FFFF 01FF"
	$"0000 00FF 01F8 FFFF FFFF 02FF 0000 0000"
	$"0000 00DC FFFF FFFF 01FF 0000 00FF 01F8"
	$"FFFF FFFF 02FF 0000 0000 0000 00DC FFFF"
	$"FFFF 01FF 0000 00FF 01F8 FFFF FFFF 02FF"
	$"0000 0000 0000 00DC FFFF FFFF 01FF 0000"
	$"00FF 01F8 FFFF FFFF 02FF 0000 0000 0000"
	$"00DC FFFF FFFF 01FF 0000 00FF 01F8 FFFF"
	$"FFFF 02FF 0000 0000 0000 00DC FFFF FFFF"
	$"01FF 0000 00FF 01F8 FFFF FFFF 02FF 0000"
	$"0000 0000 00DC FFFF FFFF 01FF 0000 00FF"
	$"01F8 FFFF FFFF 02FF 0000 0000 0000 00DC"
	$"FFFF FFFF 01FF 0000 00FF 01F8 FFFF FFFF"
	$"02FF 0000 0000 0000 00DC FFFF FFFF 01FF"
	$"0000 00FF 01F8 FFFF FFFF 02FF 0000 0000"
	$"0000 00DC FFFF FFFF 01FF 0000 00FF 01F8"
	$"FFFF FFFF 02FF 0000 0000 0000 00DC FFFF"
	$"FFFF 01FF 0000 00FF 01F8 FFFF FFFF 02FF"
	$"0000 0000 0000 00DC FFFF FFFF 01FF 0000"
	$"00FF 01F8 FFFF FFFF 02FF 0000 0000 0000"
	$"00DC FFFF FFFF 01FF 0000 00FF 01F8 FFFF"
	$"FFFF 02FF 0000 0000 0000 00DC FFFF FFFF"
	$"01FF 0000 00FF 01F8 FFFF FFFF 02FF 0000"
	$"0000 0000 00DC FFFF FFFF 01FF 0000 00FF"
	$"01F8 FFFF FFFF 02FF 0000 0000 0000 00DC"
	$"FFFF FFFF 01FF 0000 00FF 01F8 FFFF FFFF"
	$"02FF 0000 0000 0000 00DC FFFF FFFF 01FF"
	$"0000 00FF 01F8 FFFF FFFF 02FF 0000 0000"
	$"0000 00DC FFFF FFFF 01FF 0000 00FF 01F8"
	$"FFFF FFFF 02FF 0000 0000 0000 00DC FFFF"
	$"FFFF 01FF 0000 00FF 01F8 FFFF FFFF 02FF"
	$"0000 0000 0000 00DC FFFF FFFF 01FF 0000"
	$"00FF 01F8 FFFF FFFF 02FF 0000 0000 0000"
	$"00DC FFFF FFFF 01FF 0000 00FF 01F8 FFFF"
	$"FFFF 02FF 0000 0000 0000 00DC FFFF FFFF"
	$"01FF 0000 00FF 01F8 FFFF FFFF 02FF 0000"
	$"0000 0000 00DC FFFF FFFF 01FF 0000 00FF"
	$"01F8 FFFF FFFF 02FF 0000 0000 0000 00DC"
	$"FFFF FFFF 01FF 0000 00FF 01F8 FFFF FFFF"
	$"02FF 0000 0000 0000 00DC FFFF FFFF 01FF"
	$"0000 00FF 01F8 FFFF FFFF 02FF 0000 0000"
	$"0000 00DC FFFF FFFF 01FF 0000 00FF 01F8"
	$"FFFF FFFF 02FF 0000 0000 0000 00DC FFFF"
	$"FFFF 01FF 0000 00FF 01F8 FFFF FFFF 02FF"
	$"0000 0000 0000 00DC FFFF FFFF 01FF 0000"
	$"00FF 01F8 FFFF FFFF 02FF 0000 0000 0000"
	$"00DC FFFF FFFF 01FF 0000 00FF 01F8 FFFF"
	$"FFFF 01FF 0000 00DA 0000 0000 FF01 F8FF"
	$"FFFF FF01 FF00 0000 DA00 0000 00FF 01F8"
	$"FFFF FFFF 01FF 0000 00DA 0000 0000 FF01"
	$"F8FF FFFF FF01 FF00 0000 DA00 0000 00FF"
	$"01F8 FFFF FFFF 01FF 0000 00DA 0000 0000"
	$"FF01 F8FF FFFF FF01 FF00 0000 DA00 0000"
	$"00FF 01F8 FFFF FFFF 01FF 0000 00DA 0000"
	$"0000 FF01 F8FF FFFF FF01 FF00 0000 DA00"
	$"0000 00FF 01F8 FFFF FFFF 01FF 0000 00DA"
	$"0000 0000 FF01 F8FF FFFF FF01 FF00 0000"
	$"DA00 0000 00FF 01F8 FFFF FFFF 01FF 0000"
	$"00DA 0000 0000 FF01 F8FF FFFF FF01 FF00"
	$"0000 DA00 0000 00FF 01F8 FFFF FFFF 01FF"
	$"0000 00DA 0000 0000 FF01 F8FF FFFF FF01"
	$"FF00 0000 DA00 0000 00FF 01F8 FFFF FFFF"
	$"01FF 0000 00DA 0000 0000 FF01 F8FF FFFF"
	$"FF01 FF00 0000 FD00 0000 00DE FFFF FFFF"
	$"01FF 0000 00FF 01F8 FFFF FFFF 01FF 0000"
	$"00FD 0000 0000 DEFF FFFF FF01 FF00 0000"
	$"FF01 F8FF FFFF FF01 FF00 0000 FD00 0000"
	$"00DE FFFF FFFF 01FF 0000 00FF 01F8 FFFF"
	$"FFFF 01FF 0000 00FD 0000 0000 DEFF FFFF"
	$"FF01 FF00 0000 FF01 F8FF FFFF FF01 FF00"
	$"0000 FD00 0000 00DE FFFF FFFF 01FF 0000"
	$"00FF 01F8 FFFF FFFF 01FF 0000 00FD 0000"
	$"0000 DEFF FFFF FF01 FF00 0000 FF01 F8FF"
	$"FFFF FF01 FF00 0000 FD00 0000 00DE FFFF"
	$"FFFF 01FF 0000 00FF 01F8 FFFF FFFF 01FF"
	$"0000 00FD 0000 0000 DEFF FFFF FF01 FF00"
	$"0000 FF01 F8FF FFFF FF01 FF00 0000 FD00"
	$"0000 00DE FFFF FFFF 01FF 0000 00FF 01F8"
	$"FFFF FFFF 01FF 0000 00FD 0000 0000 DEFF"
	$"FFFF FF01 FF00 0000 FF01 F8FF FFFF FF01"
	$"FF00 0000 FD00 0000 00DE FFFF FFFF 01FF"
	$"0000 00FF 01F8 FFFF FFFF 01FF 0000 00FD"
	$"0000 0000 DEFF FFFF FF01 FF00 0000 FF01"
	$"F8FF FFFF FF01 FF00 0000 FD00 0000 00DE"
	$"FFFF FFFF 01FF 0000 00FF 01F8 FFFF FFFF"
	$"01FF 0000 00FD 0000 0000 DEFF FFFF FF01"
	$"FF00 0000 FF01 F8FF FFFF FF01 FF00 0000"
	$"FD00 0000 00DE FFFF FFFF 01FF 0000 00FF"
	$"01F8 FFFF FFFF 01FF 0000 00FD 0000 0000"
	$"DEFF FFFF FF01 FF00 0000 FF01 F8FF FFFF"
	$"FF01 FF00 0000 FD00 0000 00DE FFFF FFFF"
	$"01FF 0000 00FF 0000 009A 0000 00FF 82E4"
	$"0000 0000 0081 00B9 0000 0004 0000 0000"
	$"0048 0000 0048 0000 0010 0020 0003 0008"
	$"0000 0000 0000 0000 0000 0000 0000 0000"
	$"0081 00B9 0000 0000 0081 00B9 0040 0018"
	$"E001 FAFF A901 C801 E000 FAFF E200 8100"
	$"EE00 FAFF 9B00 D600 0100 0001 FAFF 0001"
	$"FA00 0001 FA00 0001 FAFF 0001 FAFF 0001"
	$"FAFF 0001 FAFF 0001 FAFF 0001 FAFF 0001"
	$"FAFF 0001 FAFF 0001 FAFF 0001 FAFF 0001"
	$"FAFF 0001 FAFF 0001 FAFF 0001 FAFF 0001"
	$"FAFF 0001 FAFF 0001 FAFF 0001 FAFF 0001"
	$"FAFF 0001 FAFF 0101 00FA FFF8 00FA FFF8"
	$"00FA FF00 00FA FF00 00FA FF00 00FA FF00"
	$"00FB FF01 FF00 FAFF 0000 FAFF 0000 FACC"
	$"0000 FACC 0000 FACC 0000 FACC 0000 FACC"
	$"0000 FACC 0000 FA99 0000 FA99 0000 FA99"
	$"0000 FA99 0000 FA99 0000 FA99 FF00 FAFF"
	$"0000 FCFF FFFF F000 FAFF 0000 FAFF 0000"
	$"FACC 0000 FA99 0000 FA66 0000 FA33 F800"
	$"FAFF 0000 FACC 0000 FA99 0000 FA66 0000"
	$"FA33 F800 FCFF FFFF 0000 FACC 0000 FA99"
	$"0000 FA66 0000 FA33 F800 0100 0001 FAFF"
	$"0001 FA00 0001 FA00 0001 FAFF 0001 FAFF"
	$"0001 FAFF 0001 FAFF 0001 FAFF 0001 FAFF"
	$"0001 FAFF 0001 FAFF 0001 FAFF 0001 FAFF"
	$"0001 FAFF 0001 FAFF 0001 FAFF 0001 FAFF"
	$"0001 FAFF 0001 FAFF 0001 FAFF 0001 FAFF"
	$"0001 FAFF 0001 FAFF 0101 00FA FFF8 00FA"
	$"FFF8 00FA FF00 00FA FF00 00FA FF00 00FA"
	$"FF00 00FB FF01 FF00 FAFF 0000 FAFF 0000"
	$"FACC 0000 FACC 0000 FACC 0000 FACC 0000"
	$"FACC 0000 FACC 0000 FA99 0000 FA99 0000"
	$"FA99 0000 FA99 0000 FA99 0000 FA99 FF00"
	$"FAFF 0000 FCFF FFFF F000 FAFF 0000 FAFF"
	$"0000 FACC 0000 FA99 0000 FA66 0000 FA33"
	$"F800 FAFF 0000 FACC 0000 FA99 0000 FA66"
	$"0000 FA33 F800 FCFF FFFF 0000 FACC 0000"
	$"FA99 0000 FA66 0000 FA33 F800 0100 0001"
	$"FAFF 0001 FA00 0001 FA00 0001 FAFF 0001"
	$"FAFF 0001 FAFF 0001 FAFF 0001 FAFF 0001"
	$"FAFF 0001 FAFF 0001 FAFF 0001 FAFF 0001"
	$"FAFF 0001 FAFF 0001 FAFF 0001 FAFF 0001"
	$"FAFF 0001 FAFF 0001 FAFF 0001 FAFF 0001"
	$"FAFF 0001 FAFF 0001 FAFF 0101 00FA FFF8"
	$"00FA FFF8 00FA FF00 00FA FF00 00FA FF00"
	$"00FA FF00 00FB FF01 FF00 FAFF 0000 FAFF"
	$"0000 FACC 0000 FACC 0000 FACC 0000 FACC"
	$"0000 FACC 0000 FACC 0000 FA99 0000 FA99"
	$"0000 FA99 0000 FA99 0000 FA99 0000 FA99"
	$"FF00 FAFF 0000 FCFF FFFF F000 FAFF 0000"
	$"FAFF 0000 FACC 0000 FA99 0000 FA66 0000"
	$"FA33 F800 FAFF 0000 FACC 0000 FA99 0000"
	$"FA66 0000 FA33 F800 FCFF FFFF 0000 FACC"
	$"0000 FA99 0000 FA66 0000 FA33 F800 0100"
	$"0001 FAFF 0001 FA00 0001 FA00 0001 FAFF"
	$"0001 FAFF 0001 FAFF 0001 FAFF 0001 FAFF"
	$"0001 FAFF 0001 FAFF 0001 FAFF 0001 FAFF"
	$"0001 FAFF 0001 FAFF 0001 FAFF 0001 FAFF"
	$"0001 FAFF 0001 FAFF 0001 FAFF 0001 FAFF"
	$"0001 FAFF 0001 FAFF 0001 FAFF 0101 00FA"
	$"FFF8 00FA FFF8 00FA FF00 00FA FF00 00FA"
	$"FF00 00FA FF00 00FB FF01 FF00 FAFF 0000"
	$"FAFF 0000 FACC 0000 FACC 0000 FACC 0000"
	$"FACC 0000 FACC 0000 FACC 0000 FA99 0000"
	$"FA99 0000 FA99 0000 FA99 0000 FA99 0000"
	$"FA99 FF00 FAFF 0000 FCFF FFFF F000 FAFF"
	$"0000 FAFF 0000 FACC 0000 FA99 0000 FA66"
	$"0000 FA33 F800 FAFF 0000 FACC 0000 FA99"
	$"0000 FA66 0000 FA33 F800 FCFF FFFF 0000"
	$"FACC 0000 FA99 0000 FA66 0000 FA33 F800"
	$"0100 0001 FAFF 0001 FA00 0001 FA00 0001"
	$"FAFF 0001 FAFF 0001 FAFF 0001 FAFF 0001"
	$"FAFF 0001 FAFF 0001 FAFF 0001 FAFF 0001"
	$"FAFF 0001 FAFF 0001 FAFF 0001 FAFF 0001"
	$"FAFF 0001 FAFF 0001 FAFF 0001 FAFF 0001"
	$"FAFF 0001 FAFF 0001 FAFF 0001 FAFF 0101"
	$"00FA FFF8 00FA FFF8 00FA FF00 00FA FF00"
	$"00FA FF00 00FA FF00 00FB FF01 FF00 FAFF"
	$"0000 FAFF 0000 FACC 0000 FACC 0000 FACC"
	$"0000 FACC 0000 FACC 0000 FACC 0000 FA99"
	$"0000 FA99 0000 FA99 0000 FA99 0000 FA99"
	$"0000 FA99 FF00 FAFF 0000 FCFF FFFF F000"
	$"FAFF 0000 FAFF 0000 FACC 0000 FA99 0000"
	$"FA66 0000 FA33 F800 FAFF 0000 FACC 0000"
	$"FA99 0000 FA66 0000 FA33 F800 FCFF FFFF"
	$"0000 FACC 0000 FA99 0000 FA66 0000 FA33"
	$"F800 0100 0001 FAFF 0001 FA00 0001 FA00"
	$"0001 FAFF 0001 FAFF 0001 FAFF 0001 FAFF"
	$"0001 FAFF 0001 FAFF 0001 FAFF 0001 FAFF"
	$"0001 FAFF 0001 FAFF 0001 FAFF 0001 FAFF"
	$"0001 FAFF 0001 FAFF 0001 FAFF 0001 FAFF"
	$"0001 FAFF 0001 FAFF 0001 FAFF 0001 FAFF"
	$"0101 00FA FFF8 00FA FFF8 00FA FF00 00FA"
	$"FF00 00FA FF00 00FA FF00 00FB FF01 FF00"
	$"FAFF 0000 FAFF 0000 FACC 0000 FACC 0000"
	$"FACC 0000 FACC 0000 FACC 0000 FACC 0000"
	$"FA99 0000 FA99 0000 FA99 0000 FA99 0000"
	$"FA99 0000 FA99 FF00 FAFF 0000 FCFF FFFF"
	$"F000 FAFF 0000 FAFF 0000 FACC 0000 FA99"
	$"0000 FA66 0000 FA33 F800 FAFF 0000 FACC"
	$"0000 FA99 0000 FA66 0000 FA33 F800 FCFF"
	$"FFFF 0000 FACC 0000 FA99 0000 FA66 0000"
	$"FA33 F800 0100 0001 FAFF 0001 FA00 0001"
	$"FA00 0001 FAFF 0001 FAFF 0001 FAFF 0001"
	$"FAFF 0001 FAFF 0001 FAFF 0001 FAFF 0001"
	$"FAFF 0001 FAFF 0001 FAFF 0001 FAFF 0001"
	$"FAFF 0001 FAFF 0001 FAFF 0001 FAFF 0001"
	$"FAFF 0001 FAFF 0001 FAFF 0001 FAFF 0001"
	$"FAFF 0101 00FA FFF8 00FA FFF8 00FA FF00"
	$"00FA FF00 00FA FF00 00FA FF00 00FB FF01"
	$"FF00 FAFF 0000 FAFF 0000 FACC 0000 FACC"
	$"0000 FACC 0000 FACC 0000 FACC 0000 FACC"
	$"0000 FA99 0000 FA99 0000 FA99 0000 FA99"
	$"0000 FA99 0000 FA99 FF00 FAFF 0000 FCFF"
	$"FFFF F000 FAFF 0000 FAFF 0000 FACC 0000"
	$"FA99 0000 FA66 0000 FA33 F800 FAFF 0000"
	$"FACC 0000 FA99 0000 FA66 0000 FA33 F800"
	$"FCFF FFFF 0000 FACC 0000 FA99 0000 FA66"
	$"0000 FA33 F800 0018 E001 FAFF A901 C801"
	$"E000 FAFF E200 8100 EE00 FAFF 9B00 D600"
	$"0100 0001 FAEE 0001 FA00 0001 FA00 0001"
	$"FAEE 0001 FAFF 0001 FACC 0001 FACC 0001"
	$"FACC 0001 FACC 0001 FACC 0001 FACC 0001"
	$"FACC 0001 FACC 0001 FACC 0001 FACC 0001"
	$"FACC 0001 FACC 0001 FACC 0001 FACC 0001"
	$"FACC 0001 FACC 0001 FACC 0001 FACC 0101"
	$"00FA EEF8 00FA EEF8 00FA FF00 00FA FF00"
	$"00FA FF00 00FA FF00 00FB FF01 FF00 FAFF"
	$"0000 FAFF 0000 FACC 0000 FACC 0000 FACC"
	$"0000 FACC 0000 FACC 0000 FACC 0000 FA99"
	$"0000 FA99 0000 FA99 0000 FA99 0000 FA99"
	$"0000 FA99 FF00 FAEE 0000 FCEE FFEE F000"
	$"FAFF 0000 FAFF 0000 FACC 0000 FA99 0000"
	$"FA66 0000 FA33 F800 FAFF 0000 FACC 0000"
	$"FA99 0000 FA66 0000 FA33 F800 FCFF FFFF"
	$"0000 FACC 0000 FA99 0000 FA66 0000 FA33"
	$"F800 0100 0001 FAEE 0001 FA00 0001 FA00"
	$"0001 FAEE 0001 FAFF 0001 FACC 0001 FACC"
	$"0001 FACC 0001 FACC 0001 FACC 0001 FACC"
	$"0001 FACC 0001 FACC 0001 FACC 0001 FACC"
	$"0001 FACC 0001 FACC 0001 FACC 0001 FACC"
	$"0001 FACC 0001 FACC 0001 FACC 0001 FACC"
	$"0101 00FA EEF8 00FA EEF8 00FA FF00 00FA"
	$"FF00 00FA FF00 00FA FF00 00FB FF01 FF00"
	$"FAFF 0000 FAFF 0000 FACC 0000 FACC 0000"
	$"FACC 0000 FACC 0000 FACC 0000 FACC 0000"
	$"FA99 0000 FA99 0000 FA99 0000 FA99 0000"
	$"FA99 0000 FA99 FF00 FAEE 0000 FCEE FFEE"
	$"F000 FAFF 0000 FAFF 0000 FACC 0000 FA99"
	$"0000 FA66 0000 FA33 F800 FAFF 0000 FACC"
	$"0000 FA99 0000 FA66 0000 FA33 F800 FCFF"
	$"FFFF 0000 FACC 0000 FA99 0000 FA66 0000"
	$"FA33 F800 0100 0001 FAEE 0001 FA00 0001"
	$"FA00 0001 FAEE 0001 FAFF 0001 FACC 0001"
	$"FACC 0001 FACC 0001 FACC 0001 FACC 0001"
	$"FACC 0001 FACC 0001 FACC 0001 FACC 0001"
	$"FACC 0001 FACC 0001 FACC 0001 FACC 0001"
	$"FACC 0001 FACC 0001 FACC 0001 FACC 0001"
	$"FACC 0101 00FA EEF8 00FA EEF8 00FA FF00"
	$"00FA FF00 00FA FF00 00FA FF00 00FB FF01"
	$"FF00 FAFF 0000 FAFF 0000 FACC 0000 FACC"
	$"0000 FACC 0000 FACC 0000 FACC 0000 FACC"
	$"0000 FA99 0000 FA99 0000 FA99 0000 FA99"
	$"0000 FA99 0000 FA99 FF00 FAEE 0000 FCEE"
	$"FFEE F000 FAFF 0000 FAFF 0000 FACC 0000"
	$"FA99 0000 FA66 0000 FA33 F800 FAFF 0000"
	$"FACC 0000 FA99 0000 FA66 0000 FA33 F800"
	$"FCFF FFFF 0000 FACC 0000 FA99 0000 FA66"
	$"0000 FA33 F800 0100 0001 FAEE 0001 FA00"
	$"0001 FA00 0001 FAEE 0001 FAFF 0001 FACC"
	$"0001 FACC 0001 FACC 0001 FACC 0001 FACC"
	$"0001 FACC 0001 FACC 0001 FACC 0001 FACC"
	$"0001 FACC 0001 FACC 0001 FACC 0001 FACC"
	$"0001 FACC 0001 FACC 0001 FACC 0001 FACC"
	$"0001 FACC 0101 00FA EEF8 00FA EEF8 00FA"
	$"FF00 00FA FF00 00FA FF00 00FA FF00 00FB"
	$"FF01 FF00 FAFF 0000 FAFF 0000 FACC 0000"
	$"FACC 0000 FACC 0000 FACC 0000 FACC 0000"
	$"FACC 0000 FA99 0000 FA99 0000 FA99 0000"
	$"FA99 0000 FA99 0000 FA99 FF00 FAEE 0000"
	$"FCEE FFEE F000 FAFF 0000 FAFF 0000 FACC"
	$"0000 FA99 0000 FA66 0000 FA33 F800 FAFF"
	$"0000 FACC 0000 FA99 0000 FA66 0000 FA33"
	$"F800 FCFF FFFF 0000 FACC 0000 FA99 0000"
	$"FA66 0000 FA33 F800 0100 0001 FAEE 0001"
	$"FA00 0001 FA00 0001 FAEE 0001 FAFF 0001"
	$"FACC 0001 FACC 0001 FACC 0001 FACC 0001"
	$"FACC 0001 FACC 0001 FACC 0001 FACC 0001"
	$"FACC 0001 FACC 0001 FACC 0001 FACC 0001"
	$"FACC 0001 FACC 0001 FACC 0001 FACC 0001"
	$"FACC 0001 FACC 0101 00FA EEF8 00FA EEF8"
	$"00FA FF00 00FA FF00 00FA FF00 00FA FF00"
	$"00FB FF01 FF00 FAFF 0000 FAFF 0000 FACC"
	$"0000 FACC 0000 FACC 0000 FACC 0000 FACC"
	$"0000 FACC 0000 FA99 0000 FA99 0000 FA99"
	$"0000 FA99 0000 FA99 0000 FA99 FF00 FAEE"
	$"0000 FCEE FFEE F000 FAFF 0000 FAFF 0000"
	$"FACC 0000 FA99 0000 FA66 0000 FA33 F800"
	$"FAFF 0000 FACC 0000 FA99 0000 FA66 0000"
	$"FA33 F800 FCFF FFFF 0000 FACC 0000 FA99"
	$"0000 FA66 0000 FA33 F800 0100 0001 FAEE"
	$"0001 FA00 0001 FA00 0001 FAEE 0001 FAFF"
	$"0001 FACC 0001 FACC 0001 FACC 0001 FACC"
	$"0001 FACC 0001 FACC 0001 FACC 0001 FACC"
	$"0001 FACC 0001 FACC 0001 FACC 0001 FACC"
	$"0001 FACC 0001 FACC 0001 FACC 0001 FACC"
	$"0001 FACC 0001 FACC 0101 00FA EEF8 00FA"
	$"EEF8 00FA FF00 00FA FF00 00FA FF00 00FA"
	$"FF00 00FB FF01 FF00 FAFF 0000 FAFF 0000"
	$"FACC 0000 FACC 0000 FACC 0000 FACC 0000"
	$"FACC 0000 FACC 0000 FA99 0000 FA99 0000"
	$"FA99 0000 FA99 0000 FA99 0000 FA99 FF00"
	$"FAEE 0000 FCEE FFEE F000 FAFF 0000 FAFF"
	$"0000 FACC 0000 FA99 0000 FA66 0000 FA33"
	$"F800 FAFF 0000 FACC 0000 FA99 0000 FA66"
	$"0000 FA33 F800 FCFF FFFF 0000 FACC 0000"
	$"FA99 0000 FA66 0000 FA33 F800 0100 0001"
	$"FAEE 0001 FA00 0001 FA00 0001 FAEE 0001"
	$"FAFF 0001 FACC 0001 FACC 0001 FACC 0001"
	$"FACC 0001 FACC 0001 FACC 0001 FACC 0001"
	$"FACC 0001 FACC 0001 FACC 0001 FACC 0001"
	$"FACC 0001 FACC 0001 FACC 0001 FACC 0001"
	$"FACC 0001 FACC 0001 FACC 0101 00FA EEF8"
	$"00FA EEF8 00FA FF00 00FA FF00 00FA FF00"
	$"00FA FF00 00FB FF01 FF00 FAFF 0000 FAFF"
	$"0000 FACC 0000 FACC 0000 FACC 0000 FACC"
	$"0000 FACC 0000 FACC 0000 FA99 0000 FA99"
	$"0000 FA99 0000 FA99 0000 FA99 0000 FA99"
	$"FF00 FAEE 0000 FCEE FFEE F000 FAFF 0000"
	$"FAFF 0000 FACC 0000 FA99 0000 FA66 0000"
	$"FA33 F800 FAFF 0000 FACC 0000 FA99 0000"
	$"FA66 0000 FA33 F800 FCFF FFFF 0000 FACC"
	$"0000 FA99 0000 FA66 0000 FA33 F800 0018"
	$"E001 FAFF A901 C801 E000 FAFF E200 8100"
	$"EE00 FAFF 9B00 D600 0100 0001 FADD 0001"
	$"FA00 0001 FA00 0001 FADD 0001 FAFF 0001"
	$"FA99 0001 FA99 0001 FA99 0001 FA99 0001"
	$"FA99 0001 FA99 0001 FA99 0001 FA99 0001"
	$"FA99 0001 FA99 0001 FA99 0001 FA99 0001"
	$"FA99 0001 FA99 0001 FA99 0001 FA99 0001"
	$"FA99 0001 FA99 0101 00FA DDF8 00FA DDF8"
	$"00FA FF00 00FA FF00 00FA FF00 00FA FF00"
	$"00FB FF01 FF00 FAFF 0000 FAFF 0000 FACC"
	$"0000 FACC 0000 FACC 0000 FACC 0000 FACC"
	$"0000 FACC 0000 FA99 0000 FA99 0000 FA99"
	$"0000 FA99 0000 FA99 0000 FA99 FF00 FADD"
	$"0000 FCDD FFDD F000 FAFF 0000 FAFF 0000"
	$"FACC 0000 FA99 0000 FA66 0000 FA33 F800"
	$"FAFF 0000 FACC 0000 FA99 0000 FA66 0000"
	$"FA33 F800 FCFF FFFF 0000 FACC 0000 FA99"
	$"0000 FA66 0000 FA33 F800 0100 0001 FADD"
	$"0001 FA00 0001 FA00 0001 FADD 0001 FAFF"
	$"0001 FA99 0001 FA99 0001 FA99 0001 FA99"
	$"0001 FA99 0001 FA99 0001 FA99 0001 FA99"
	$"0001 FA99 0001 FA99 0001 FA99 0001 FA99"
	$"0001 FA99 0001 FA99 0001 FA99 0001 FA99"
	$"0001 FA99 0001 FA99 0101 00FA DDF8 00FA"
	$"DDF8 00FA FF00 00FA FF00 00FA FF00 00FA"
	$"FF00 00FB FF01 FF00 FAFF 0000 FAFF 0000"
	$"FACC 0000 FACC 0000 FACC 0000 FACC 0000"
	$"FACC 0000 FACC 0000 FA99 0000 FA99 0000"
	$"FA99 0000 FA99 0000 FA99 0000 FA99 FF00"
	$"FADD 0000 FCDD FFDD F000 FAFF 0000 FAFF"
	$"0000 FACC 0000 FA99 0000 FA66 0000 FA33"
	$"F800 FAFF 0000 FACC 0000 FA99 0000 FA66"
	$"0000 FA33 F800 FCFF FFFF 0000 FACC 0000"
	$"FA99 0000 FA66 0000 FA33 F800 0100 0001"
	$"FADD 0001 FA00 0001 FA00 0001 FADD 0001"
	$"FAFF 0001 FA99 0001 FA99 0001 FA99 0001"
	$"FA99 0001 FA99 0001 FA99 0001 FA99 0001"
	$"FA99 0001 FA99 0001 FA99 0001 FA99 0001"
	$"FA99 0001 FA99 0001 FA99 0001 FA99 0001"
	$"FA99 0001 FA99 0001 FA99 0101 00FA DDF8"
	$"00FA DDF8 00FA FF00 00FA FF00 00FA FF00"
	$"00FA FF00 00FB FF01 FF00 FAFF 0000 FAFF"
	$"0000 FACC 0000 FACC 0000 FACC 0000 FACC"
	$"0000 FACC 0000 FACC 0000 FA99 0000 FA99"
	$"0000 FA99 0000 FA99 0000 FA99 0000 FA99"
	$"FF00 FADD 0000 FCDD FFDD F000 FAFF 0000"
	$"FAFF 0000 FACC 0000 FA99 0000 FA66 0000"
	$"FA33 F800 FAFF 0000 FACC 0000 FA99 0000"
	$"FA66 0000 FA33 F800 FCFF FFFF 0000 FACC"
	$"0000 FA99 0000 FA66 0000 FA33 F800 0100"
	$"0001 FADD 0001 FA00 0001 FA00 0001 FADD"
	$"0001 FAFF 0001 FA99 0001 FA99 0001 FA99"
	$"0001 FA99 0001 FA99 0001 FA99 0001 FA99"
	$"0001 FA99 0001 FA99 0001 FA99 0001 FA99"
	$"0001 FA99 0001 FA99 0001 FA99 0001 FA99"
	$"0001 FA99 0001 FA99 0001 FA99 0101 00FA"
	$"DDF8 00FA DDF8 00FA FF00 00FA FF00 00FA"
	$"FF00 00FA FF00 00FB FF01 FF00 FAFF 0000"
	$"FAFF 0000 FACC 0000 FACC 0000 FACC 0000"
	$"FACC 0000 FACC 0000 FACC 0000 FA99 0000"
	$"FA99 0000 FA99 0000 FA99 0000 FA99 0000"
	$"FA99 FF00 FADD 0000 FCDD FFDD F000 FAFF"
	$"0000 FAFF 0000 FACC 0000 FA99 0000 FA66"
	$"0000 FA33 F800 FAFF 0000 FACC 0000 FA99"
	$"0000 FA66 0000 FA33 F800 FCFF FFFF 0000"
	$"FACC 0000 FA99 0000 FA66 0000 FA33 F800"
	$"0100 0001 FADD 0001 FA00 0001 FA00 0001"
	$"FADD 0001 FAFF 0001 FA99 0001 FA99 0001"
	$"FA99 0001 FA99 0001 FA99 0001 FA99 0001"
	$"FA99 0001 FA99 0001 FA99 0001 FA99 0001"
	$"FA99 0001 FA99 0001 FA99 0001 FA99 0001"
	$"FA99 0001 FA99 0001 FA99 0001 FA99 0101"
	$"00FA DDF8 00FA DDF8 00FA FF00 00FA FF00"
	$"00FA FF00 00FA FF00 00FB FF01 FF00 FAFF"
	$"0000 FAFF 0000 FACC 0000 FACC 0000 FACC"
	$"0000 FACC 0000 FACC 0000 FACC 0000 FA99"
	$"0000 FA99 0000 FA99 0000 FA99 0000 FA99"
	$"0000 FA99 FF00 FADD 0000 FCDD FFDD F000"
	$"FAFF 0000 FAFF 0000 FACC 0000 FA99 0000"
	$"FA66 0000 FA33 F800 FAFF 0000 FACC 0000"
	$"FA99 0000 FA66 0000 FA33 F800 FCFF FFFF"
	$"0000 FACC 0000 FA99 0000 FA66 0000 FA33"
	$"F800 0100 0001 FADD 0001 FA00 0001 FA00"
	$"0001 FADD 0001 FAFF 0001 FA99 0001 FA99"
	$"0001 FA99 0001 FA99 0001 FA99 0001 FA99"
	$"0001 FA99 0001 FA99 0001 FA99 0001 FA99"
	$"0001 FA99 0001 FA99 0001 FA99 0001 FA99"
	$"0001 FA99 0001 FA99 0001 FA99 0001 FA99"
	$"0101 00FA DDF8 00FA DDF8 00FA FF00 00FA"
	$"FF00 00FA FF00 00FA FF00 00FB FF01 FF00"
	$"FAFF 0000 FAFF 0000 FACC 0000 FACC 0000"
	$"FACC 0000 FACC 0000 FACC 0000 FACC 0000"
	$"FA99 0000 FA99 0000 FA99 0000 FA99 0000"
	$"FA99 0000 FA99 FF00 FADD 0000 FCDD FFDD"
	$"F000 FAFF 0000 FAFF 0000 FACC 0000 FA99"
	$"0000 FA66 0000 FA33 F800 FAFF 0000 FACC"
	$"0000 FA99 0000 FA66 0000 FA33 F800 FCFF"
	$"FFFF 0000 FACC 0000 FA99 0000 FA66 0000"
	$"FA33 F800 0100 0001 FADD 0001 FA00 0001"
	$"FA00 0001 FADD 0001 FAFF 0001 FA99 0001"
	$"FA99 0001 FA99 0001 FA99 0001 FA99 0001"
	$"FA99 0001 FA99 0001 FA99 0001 FA99 0001"
	$"FA99 0001 FA99 0001 FA99 0001 FA99 0001"
	$"FA99 0001 FA99 0001 FA99 0001 FA99 0001"
	$"FA99 0101 00FA DDF8 00FA DDF8 00FA FF00"
	$"00FA FF00 00FA FF00 00FA FF00 00FB FF01"
	$"FF00 FAFF 0000 FAFF 0000 FACC 0000 FACC"
	$"0000 FACC 0000 FACC 0000 FACC 0000 FACC"
	$"0000 FA99 0000 FA99 0000 FA99 0000 FA99"
	$"0000 FA99 0000 FA99 FF00 FADD 0000 FCDD"
	$"FFDD F000 FAFF 0000 FAFF 0000 FACC 0000"
	$"FA99 0000 FA66 0000 FA33 F800 FAFF 0000"
	$"FACC 0000 FA99 0000 FA66 0000 FA33 F800"
	$"FCFF FFFF 0000 FACC 0000 FA99 0000 FA66"
	$"0000 FA33 F800 0018 E001 FAFF A901 C801"
	$"E000 FAFF E200 8100 EE00 FAFF 9B00 D600"
	$"0100 0001 FACC 0001 FA00 0001 FA00 0001"
	$"FACC 0001 FAFF 0001 FA66 0001 FA66 0001"
	$"FA66 0001 FA66 0001 FA66 0001 FA66 0001"
	$"FA66 0001 FA66 0001 FA66 0001 FA66 0001"
	$"FA66 0001 FA66 0001 FA66 0001 FA66 0001"
	$"FA66 0001 FA66 0001 FA66 0001 FA66 0101"
	$"00FA CCF8 00FA CCF8 00FA FF00 00FA FF00"
	$"00FA FF00 00FA FF00 00FB FF01 FF00 FAFF"
	$"0000 FAFF 0000 FACC 0000 FACC 0000 FACC"
	$"0000 FACC 0000 FACC 0000 FACC 0000 FA99"
	$"0000 FA99 0000 FA99 0000 FA99 0000 FA99"
	$"0000 FA99 FF00 FACC 0000 FCCC FFCC F000"
	$"FAFF 0000 FAFF 0000 FACC 0000 FA99 0000"
	$"FA66 0000 FA33 F800 FAFF 0000 FACC 0000"
	$"FA99 0000 FA66 0000 FA33 F800 FCFF FFFF"
	$"0000 FACC 0000 FA99 0000 FA66 0000 FA33"
	$"F800 0100 0001 FACC 0001 FA00 0001 FA00"
	$"0001 FACC 0001 FAFF 0001 FA66 0001 FA66"
	$"0001 FA66 0001 FA66 0001 FA66 0001 FA66"
	$"0001 FA66 0001 FA66 0001 FA66 0001 FA66"
	$"0001 FA66 0001 FA66 0001 FA66 0001 FA66"
	$"0001 FA66 0001 FA66 0001 FA66 0001 FA66"
	$"0101 00FA CCF8 00FA CCF8 00FA FF00 00FA"
	$"FF00 00FA FF00 00FA FF00 00FB FF01 FF00"
	$"FAFF 0000 FAFF 0000 FACC 0000 FACC 0000"
	$"FACC 0000 FACC 0000 FACC 0000 FACC 0000"
	$"FA99 0000 FA99 0000 FA99 0000 FA99 0000"
	$"FA99 0000 FA99 FF00 FACC 0000 FCCC FFCC"
	$"F000 FAFF 0000 FAFF 0000 FACC 0000 FA99"
	$"0000 FA66 0000 FA33 F800 FAFF 0000 FACC"
	$"0000 FA99 0000 FA66 0000 FA33 F800 FCFF"
	$"FFFF 0000 FACC 0000 FA99 0000 FA66 0000"
	$"FA33 F800 0100 0001 FACC 0001 FA00 0001"
	$"FA00 0001 FACC 0001 FAFF 0001 FA66 0001"
	$"FA66 0001 FA66 0001 FA66 0001 FA66 0001"
	$"FA66 0001 FA66 0001 FA66 0001 FA66 0001"
	$"FA66 0001 FA66 0001 FA66 0001 FA66 0001"
	$"FA66 0001 FA66 0001 FA66 0001 FA66 0001"
	$"FA66 0101 00FA CCF8 00FA CCF8 00FA FF00"
	$"00FA FF00 00FA FF00 00FA FF00 00FB FF01"
	$"FF00 FAFF 0000 FAFF 0000 FACC 0000 FACC"
	$"0000 FACC 0000 FACC 0000 FACC 0000 FACC"
	$"0000 FA99 0000 FA99 0000 FA99 0000 FA99"
	$"0000 FA99 0000 FA99 FF00 FACC 0000 FCCC"
	$"FFCC F000 FAFF 0000 FAFF 0000 FACC 0000"
	$"FA99 0000 FA66 0000 FA33 F800 FAFF 0000"
	$"FACC 0000 FA99 0000 FA66 0000 FA33 F800"
	$"FCFF FFFF 0000 FACC 0000 FA99 0000 FA66"
	$"0000 FA33 F800 0100 0001 FACC 0001 FA00"
	$"0001 FA00 0001 FACC 0001 FAFF 0001 FA66"
	$"0001 FA66 0001 FA66 0001 FA66 0001 FA66"
	$"0001 FA66 0001 FA66 0001 FA66 0001 FA66"
	$"0001 FA66 0001 FA66 0001 FA66 0001 FA66"
	$"0001 FA66 0001 FA66 0001 FA66 0001 FA66"
	$"0001 FA66 0101 00FA CCF8 00FA CCF8 00FA"
	$"FF00 00FA FF00 00FA FF00 00FA FF00 00FB"
	$"FF01 FF00 FAFF 0000 FAFF 0000 FACC 0000"
	$"FACC 0000 FACC 0000 FACC 0000 FACC 0000"
	$"FACC 0000 FA99 0000 FA99 0000 FA99 0000"
	$"FA99 0000 FA99 0000 FA99 FF00 FACC 0000"
	$"FCCC FFCC F000 FAFF 0000 FAFF 0000 FACC"
	$"0000 FA99 0000 FA66 0000 FA33 F800 FAFF"
	$"0000 FACC 0000 FA99 0000 FA66 0000 FA33"
	$"F800 FCFF FFFF 0000 FACC 0000 FA99 0000"
	$"FA66 0000 FA33 F800 0100 0001 FACC 0001"
	$"FA00 0001 FA00 0001 FACC 0001 FAFF 0001"
	$"FA66 0001 FA66 0001 FA66 0001 FA66 0001"
	$"FA66 0001 FA66 0001 FA66 0001 FA66 0001"
	$"FA66 0001 FA66 0001 FA66 0001 FA66 0001"
	$"FA66 0001 FA66 0001 FA66 0001 FA66 0001"
	$"FA66 0001 FA66 0101 00FA CCF8 00FA CCF8"
	$"00FA FF00 00FA FF00 00FA FF00 00FA FF00"
	$"00FB FF01 FF00 FAFF 0000 FAFF 0000 FACC"
	$"0000 FACC 0000 FACC 0000 FACC 0000 FACC"
	$"0000 FACC 0000 FA99 0000 FA99 0000 FA99"
	$"0000 FA99 0000 FA99 0000 FA99 FF00 FACC"
	$"0000 FCCC FFCC F000 FAFF 0000 FAFF 0000"
	$"FACC 0000 FA99 0000 FA66 0000 FA33 F800"
	$"FAFF 0000 FACC 0000 FA99 0000 FA66 0000"
	$"FA33 F800 FCFF FFFF 0000 FACC 0000 FA99"
	$"0000 FA66 0000 FA33 F800 0100 0001 FACC"
	$"0001 FA00 0001 FA00 0001 FACC 0001 FAFF"
	$"0001 FA66 0001 FA66 0001 FA66 0001 FA66"
	$"0001 FA66 0001 FA66 0001 FA66 0001 FA66"
	$"0001 FA66 0001 FA66 0001 FA66 0001 FA66"
	$"0001 FA66 0001 FA66 0001 FA66 0001 FA66"
	$"0001 FA66 0001 FA66 0101 00FA CCF8 00FA"
	$"CCF8 00FA FF00 00FA FF00 00FA FF00 00FA"
	$"FF00 00FB FF01 FF00 FAFF 0000 FAFF 0000"
	$"FACC 0000 FACC 0000 FACC 0000 FACC 0000"
	$"FACC 0000 FACC 0000 FA99 0000 FA99 0000"
	$"FA99 0000 FA99 0000 FA99 0000 FA99 FF00"
	$"FACC 0000 FCCC FFCC F000 FAFF 0000 FAFF"
	$"0000 FACC 0000 FA99 0000 FA66 0000 FA33"
	$"F800 FAFF 0000 FACC 0000 FA99 0000 FA66"
	$"0000 FA33 F800 FCFF FFFF 0000 FACC 0000"
	$"FA99 0000 FA66 0000 FA33 F800 0100 0001"
	$"FACC 0001 FA00 0001 FA00 0001 FACC 0001"
	$"FAFF 0001 FA66 0001 FA66 0001 FA66 0001"
	$"FA66 0001 FA66 0001 FA66 0001 FA66 0001"
	$"FA66 0001 FA66 0001 FA66 0001 FA66 0001"
	$"FA66 0001 FA66 0001 FA66 0001 FA66 0001"
	$"FA66 0001 FA66 0001 FA66 0101 00FA CCF8"
	$"00FA CCF8 00FA FF00 00FA FF00 00FA FF00"
	$"00FA FF00 00FB FF01 FF00 FAFF 0000 FAFF"
	$"0000 FACC 0000 FACC 0000 FACC 0000 FACC"
	$"0000 FACC 0000 FACC 0000 FA99 0000 FA99"
	$"0000 FA99 0000 FA99 0000 FA99 0000 FA99"
	$"FF00 FACC 0000 FCCC FFCC F000 FAFF 0000"
	$"FAFF 0000 FACC 0000 FA99 0000 FA66 0000"
	$"FA33 F800 FAFF 0000 FACC 0000 FA99 0000"
	$"FA66 0000 FA33 F800 FCFF FFFF 0000 FACC"
	$"0000 FA99 0000 FA66 0000 FA33 F800 0018"
	$"E001 FAFF A901 C801 E000 FAFF E200 8100"
	$"EE00 FAFF 9B00 D600 0100 0001 FABB 0001"
	$"FA00 0001 FA00 0001 FABB 0001 FAFF 0001"
	$"FA33 0001 FA33 0001 FA33 0001 FA33 0001"
	$"FA33 0001 FA33 0001 FA33 0001 FA33 0001"
	$"FA33 0001 FA33 0001 FA33 0001 FA33 0001"
	$"FA33 0001 FA33 0001 FA33 0001 FA33 0001"
	$"FA33 0001 FA33 0101 00FA BBF8 00FA BBF8"
	$"00FA FF00 00FA FF00 00FA FF00 00FA FF00"
	$"00FB FF01 FF00 FAFF 0000 FAFF 0000 FACC"
	$"0000 FACC 0000 FACC 0000 FACC 0000 FACC"
	$"0000 FACC 0000 FA99 0000 FA99 0000 FA99"
	$"0000 FA99 0000 FA99 0000 FA99 FF00 FABB"
	$"0000 FCBB FFBB F000 FAFF 0000 FAFF 0000"
	$"FACC 0000 FA99 0000 FA66 0000 FA33 F800"
	$"FAFF 0000 FACC 0000 FA99 0000 FA66 0000"
	$"FA33 F800 FCFF FFFF 0000 FACC 0000 FA99"
	$"0000 FA66 0000 FA33 F800 0100 0001 FABB"
	$"0001 FA00 0001 FA00 0001 FABB 0001 FAFF"
	$"0001 FA33 0001 FA33 0001 FA33 0001 FA33"
	$"0001 FA33 0001 FA33 0001 FA33 0001 FA33"
	$"0001 FA33 0001 FA33 0001 FA33 0001 FA33"
	$"0001 FA33 0001 FA33 0001 FA33 0001 FA33"
	$"0001 FA33 0001 FA33 0101 00FA BBF8 00FA"
	$"BBF8 00FA FF00 00FA FF00 00FA FF00 00FA"
	$"FF00 00FB FF01 FF00 FAFF 0000 FAFF 0000"
	$"FACC 0000 FACC 0000 FACC 0000 FACC 0000"
	$"FACC 0000 FACC 0000 FA99 0000 FA99 0000"
	$"FA99 0000 FA99 0000 FA99 0000 FA99 FF00"
	$"FABB 0000 FCBB FFBB F000 FAFF 0000 FAFF"
	$"0000 FACC 0000 FA99 0000 FA66 0000 FA33"
	$"F800 FAFF 0000 FACC 0000 FA99 0000 FA66"
	$"0000 FA33 F800 FCFF FFFF 0000 FACC 0000"
	$"FA99 0000 FA66 0000 FA33 F800 0100 0001"
	$"FABB 0001 FA00 0001 FA00 0001 FABB 0001"
	$"FAFF 0001 FA33 0001 FA33 0001 FA33 0001"
	$"FA33 0001 FA33 0001 FA33 0001 FA33 0001"
	$"FA33 0001 FA33 0001 FA33 0001 FA33 0001"
	$"FA33 0001 FA33 0001 FA33 0001 FA33 0001"
	$"FA33 0001 FA33 0001 FA33 0101 00FA BBF8"
	$"00FA BBF8 00FA FF00 00FA FF00 00FA FF00"
	$"00FA FF00 00FB FF01 FF00 FAFF 0000 FAFF"
	$"0000 FACC 0000 FACC 0000 FACC 0000 FACC"
	$"0000 FACC 0000 FACC 0000 FA99 0000 FA99"
	$"0000 FA99 0000 FA99 0000 FA99 0000 FA99"
	$"FF00 FABB 0000 FCBB FFBB F000 FAFF 0000"
	$"FAFF 0000 FACC 0000 FA99 0000 FA66 0000"
	$"FA33 F800 FAFF 0000 FACC 0000 FA99 0000"
	$"FA66 0000 FA33 F800 FCFF FFFF 0000 FACC"
	$"0000 FA99 0000 FA66 0000 FA33 F800 0100"
	$"0001 FABB 0001 FA00 0001 FA00 0001 FABB"
	$"0001 FAFF 0001 FA33 0001 FA33 0001 FA33"
	$"0001 FA33 0001 FA33 0001 FA33 0001 FA33"
	$"0001 FA33 0001 FA33 0001 FA33 0001 FA33"
	$"0001 FA33 0001 FA33 0001 FA33 0001 FA33"
	$"0001 FA33 0001 FA33 0001 FA33 0101 00FA"
	$"BBF8 00FA BBF8 00FA FF00 00FA FF00 00FA"
	$"FF00 00FA FF00 00FB FF01 FF00 FAFF 0000"
	$"FAFF 0000 FACC 0000 FACC 0000 FACC 0000"
	$"FACC 0000 FACC 0000 FACC 0000 FA99 0000"
	$"FA99 0000 FA99 0000 FA99 0000 FA99 0000"
	$"FA99 FF00 FABB 0000 FCBB FFBB F000 FAFF"
	$"0000 FAFF 0000 FACC 0000 FA99 0000 FA66"
	$"0000 FA33 F800 FAFF 0000 FACC 0000 FA99"
	$"0000 FA66 0000 FA33 F800 FCFF FFFF 0000"
	$"FACC 0000 FA99 0000 FA66 0000 FA33 F800"
	$"0100 0001 FABB 0001 FA00 0001 FA00 0001"
	$"FABB 0001 FAFF 0001 FA33 0001 FA33 0001"
	$"FA33 0001 FA33 0001 FA33 0001 FA33 0001"
	$"FA33 0001 FA33 0001 FA33 0001 FA33 0001"
	$"FA33 0001 FA33 0001 FA33 0001 FA33 0001"
	$"FA33 0001 FA33 0001 FA33 0001 FA33 0101"
	$"00FA BBF8 00FA BBF8 00FA FF00 00FA FF00"
	$"00FA FF00 00FA FF00 00FB FF01 FF00 FAFF"
	$"0000 FAFF 0000 FACC 0000 FACC 0000 FACC"
	$"0000 FACC 0000 FACC 0000 FACC 0000 FA99"
	$"0000 FA99 0000 FA99 0000 FA99 0000 FA99"
	$"0000 FA99 FF00 FABB 0000 FCBB FFBB F000"
	$"FAFF 0000 FAFF 0000 FACC 0000 FA99 0000"
	$"FA66 0000 FA33 F800 FAFF 0000 FACC 0000"
	$"FA99 0000 FA66 0000 FA33 F800 FCFF FFFF"
	$"0000 FACC 0000 FA99 0000 FA66 0000 FA33"
	$"F800 0100 0001 FABB 0001 FA00 0001 FA00"
	$"0001 FABB 0001 FAFF 0001 FA33 0001 FA33"
	$"0001 FA33 0001 FA33 0001 FA33 0001 FA33"
	$"0001 FA33 0001 FA33 0001 FA33 0001 FA33"
	$"0001 FA33 0001 FA33 0001 FA33 0001 FA33"
	$"0001 FA33 0001 FA33 0001 FA33 0001 FA33"
	$"0101 00FA BBF8 00FA BBF8 00FA FF00 00FA"
	$"FF00 00FA FF00 00FA FF00 00FB FF01 FF00"
	$"FAFF 0000 FAFF 0000 FACC 0000 FACC 0000"
	$"FACC 0000 FACC 0000 FACC 0000 FACC 0000"
	$"FA99 0000 FA99 0000 FA99 0000 FA99 0000"
	$"FA99 0000 FA99 FF00 FABB 0000 FCBB FFBB"
	$"F000 FAFF 0000 FAFF 0000 FACC 0000 FA99"
	$"0000 FA66 0000 FA33 F800 FAFF 0000 FACC"
	$"0000 FA99 0000 FA66 0000 FA33 F800 FCFF"
	$"FFFF 0000 FACC 0000 FA99 0000 FA66 0000"
	$"FA33 F800 0100 0001 FABB 0001 FA00 0001"
	$"FA00 0001 FABB 0001 FAFF 0001 FA33 0001"
	$"FA33 0001 FA33 0001 FA33 0001 FA33 0001"
	$"FA33 0001 FA33 0001 FA33 0001 FA33 0001"
	$"FA33 0001 FA33 0001 FA33 0001 FA33 0001"
	$"FA33 0001 FA33 0001 FA33 0001 FA33 0001"
	$"FA33 0101 00FA BBF8 00FA BBF8 00FA FF00"
	$"00FA FF00 00FA FF00 00FA FF00 00FB FF01"
	$"FF00 FAFF 0000 FAFF 0000 FACC 0000 FACC"
	$"0000 FACC 0000 FACC 0000 FACC 0000 FACC"
	$"0000 FA99 0000 FA99 0000 FA99 0000 FA99"
	$"0000 FA99 0000 FA99 FF00 FABB 0000 FCBB"
	$"FFBB F000 FAFF 0000 FAFF 0000 FACC 0000"
	$"FA99 0000 FA66 0000 FA33 F800 FAFF 0000"
	$"FACC 0000 FA99 0000 FA66 0000 FA33 F800"
	$"FCFF FFFF 0000 FACC 0000 FA99 0000 FA66"
	$"0000 FA33 F800 0018 E001 FAFF A901 C801"
	$"E000 FAFF E200 8100 EE00 FAFF 9B00 D600"
	$"0100 0001 FAAA 0001 FA00 0001 FA00 0001"
	$"FAAA 0001 FAFF 0001 FA00 0001 FA00 0001"
	$"FA00 0001 FA00 0001 FA00 0001 FA00 0001"
	$"FA00 0001 FA00 0001 FA00 0001 FA00 0001"
	$"FA00 0001 FA00 0001 FA00 0001 FA00 0001"
	$"FA00 0001 FA00 0001 FA00 0001 FA00 0101"
	$"00FA AAF8 00FA AAF8 00FA FF00 00FA FF00"
	$"00FA FF00 00FA FF00 00FB FF01 FF00 FAFF"
	$"0000 FAFF 0000 FACC 0000 FACC 0000 FACC"
	$"0000 FACC 0000 FACC 0000 FACC 0000 FA99"
	$"0000 FA99 0000 FA99 0000 FA99 0000 FA99"
	$"0000 FA99 FF00 FAAA 0000 FCAA FFAA F000"
	$"FAFF 0000 FAFF 0000 FACC 0000 FA99 0000"
	$"FA66 0000 FA33 F800 FAFF 0000 FACC 0000"
	$"FA99 0000 FA66 0000 FA33 F800 FCFF FFFF"
	$"0000 FACC 0000 FA99 0000 FA66 0000 FA33"
	$"F800 0100 0001 FAAA 0001 FA00 0001 FA00"
	$"0001 FAAA 0001 FAFF 0001 FA00 0001 FA00"
	$"0001 FA00 0001 FA00 0001 FA00 0001 FA00"
	$"0001 FA00 0001 FA00 0001 FA00 0001 FA00"
	$"0001 FA00 0001 FA00 0001 FA00 0001 FA00"
	$"0001 FA00 0001 FA00 0001 FA00 0001 FA00"
	$"0101 00FA AAF8 00FA AAF8 00FA FF00 00FA"
	$"FF00 00FA FF00 00FA FF00 00FB FF01 FF00"
	$"FAFF 0000 FAFF 0000 FACC 0000 FACC 0000"
	$"FACC 0000 FACC 0000 FACC 0000 FACC 0000"
	$"FA99 0000 FA99 0000 FA99 0000 FA99 0000"
	$"FA99 0000 FA99 FF00 FAAA 0000 FCAA FFAA"
	$"F000 FAFF 0000 FAFF 0000 FACC 0000 FA99"
	$"0000 FA66 0000 FA33 F800 FAFF 0000 FACC"
	$"0000 FA99 0000 FA66 0000 FA33 F800 FCFF"
	$"FFFF 0000 FACC 0000 FA99 0000 FA66 0000"
	$"FA33 F800 0100 0001 FAAA 0001 FA00 0001"
	$"FA00 0001 FAAA 0001 FAFF 0001 FA00 0001"
	$"FA00 0001 FA00 0001 FA00 0001 FA00 0001"
	$"FA00 0001 FA00 0001 FA00 0001 FA00 0001"
	$"FA00 0001 FA00 0001 FA00 0001 FA00 0001"
	$"FA00 0001 FA00 0001 FA00 0001 FA00 0001"
	$"FA00 0101 00FA AAF8 00FA AAF8 00FA FF00"
	$"00FA FF00 00FA FF00 00FA FF00 00FB FF01"
	$"FF00 FAFF 0000 FAFF 0000 FACC 0000 FACC"
	$"0000 FACC 0000 FACC 0000 FACC 0000 FACC"
	$"0000 FA99 0000 FA99 0000 FA99 0000 FA99"
	$"0000 FA99 0000 FA99 FF00 FAAA 0000 FCAA"
	$"FFAA F000 FAFF 0000 FAFF 0000 FACC 0000"
	$"FA99 0000 FA66 0000 FA33 F800 FAFF 0000"
	$"FACC 0000 FA99 0000 FA66 0000 FA33 F800"
	$"FCFF FFFF 0000 FACC 0000 FA99 0000 FA66"
	$"0000 FA33 F800 0100 0001 FAAA 0001 FA00"
	$"0001 FA00 0001 FAAA 0001 FAFF 0001 FA00"
	$"0001 FA00 0001 FA00 0001 FA00 0001 FA00"
	$"0001 FA00 0001 FA00 0001 FA00 0001 FA00"
	$"0001 FA00 0001 FA00 0001 FA00 0001 FA00"
	$"0001 FA00 0001 FA00 0001 FA00 0001 FA00"
	$"0001 FA00 0101 00FA AAF8 00FA AAF8 00FA"
	$"FF00 00FA FF00 00FA FF00 00FA FF00 00FB"
	$"FF01 FF00 FAFF 0000 FAFF 0000 FACC 0000"
	$"FACC 0000 FACC 0000 FACC 0000 FACC 0000"
	$"FACC 0000 FA99 0000 FA99 0000 FA99 0000"
	$"FA99 0000 FA99 0000 FA99 FF00 FAAA 0000"
	$"FCAA FFAA F000 FAFF 0000 FAFF 0000 FACC"
	$"0000 FA99 0000 FA66 0000 FA33 F800 FAFF"
	$"0000 FACC 0000 FA99 0000 FA66 0000 FA33"
	$"F800 FCFF FFFF 0000 FACC 0000 FA99 0000"
	$"FA66 0000 FA33 F800 0100 0001 FAAA 0001"
	$"FA00 0001 FA00 0001 FAAA 0001 FAFF 0001"
	$"FA00 0001 FA00 0001 FA00 0001 FA00 0001"
	$"FA00 0001 FA00 0001 FA00 0001 FA00 0001"
	$"FA00 0001 FA00 0001 FA00 0001 FA00 0001"
	$"FA00 0001 FA00 0001 FA00 0001 FA00 0001"
	$"FA00 0001 FA00 0101 00FA AAF8 00FA AAF8"
	$"00FA FF00 00FA FF00 00FA FF00 00FA FF00"
	$"00FB FF01 FF00 FAFF 0000 FAFF 0000 FACC"
	$"0000 FACC 0000 FACC 0000 FACC 0000 FACC"
	$"0000 FACC 0000 FA99 0000 FA99 0000 FA99"
	$"0000 FA99 0000 FA99 0000 FA99 FF00 FAAA"
	$"0000 FCAA FFAA F000 FAFF 0000 FAFF 0000"
	$"FACC 0000 FA99 0000 FA66 0000 FA33 F800"
	$"FAFF 0000 FACC 0000 FA99 0000 FA66 0000"
	$"FA33 F800 FCFF FFFF 0000 FACC 0000 FA99"
	$"0000 FA66 0000 FA33 F800 0100 0001 FAAA"
	$"0001 FA00 0001 FA00 0001 FAAA 0001 FAFF"
	$"0001 FA00 0001 FA00 0001 FA00 0001 FA00"
	$"0001 FA00 0001 FA00 0001 FA00 0001 FA00"
	$"0001 FA00 0001 FA00 0001 FA00 0001 FA00"
	$"0001 FA00 0001 FA00 0001 FA00 0001 FA00"
	$"0001 FA00 0001 FA00 0101 00FA AAF8 00FA"
	$"AAF8 00FA FF00 00FA FF00 00FA FF00 00FA"
	$"FF00 00FB FF01 FF00 FAFF 0000 FAFF 0000"
	$"FACC 0000 FACC 0000 FACC 0000 FACC 0000"
	$"FACC 0000 FACC 0000 FA99 0000 FA99 0000"
	$"FA99 0000 FA99 0000 FA99 0000 FA99 FF00"
	$"FAAA 0000 FCAA FFAA F000 FAFF 0000 FAFF"
	$"0000 FACC 0000 FA99 0000 FA66 0000 FA33"
	$"F800 FAFF 0000 FACC 0000 FA99 0000 FA66"
	$"0000 FA33 F800 FCFF FFFF 0000 FACC 0000"
	$"FA99 0000 FA66 0000 FA33 F800 0100 0001"
	$"FAAA 0001 FA00 0001 FA00 0001 FAAA 0001"
	$"FAFF 0001 FA00 0001 FA00 0001 FA00 0001"
	$"FA00 0001 FA00 0001 FA00 0001 FA00 0001"
	$"FA00 0001 FA00 0001 FA00 0001 FA00 0001"
	$"FA00 0001 FA00 0001 FA00 0001 FA00 0001"
	$"FA00 0001 FA00 0001 FA00 0101 00FA AAF8"
	$"00FA AAF8 00FA FF00 00FA FF00 00FA FF00"
	$"00FA FF00 00FB FF01 FF00 FAFF 0000 FAFF"
	$"0000 FACC 0000 FACC 0000 FACC 0000 FACC"
	$"0000 FACC 0000 FACC 0000 FA99 0000 FA99"
	$"0000 FA99 0000 FA99 0000 FA99 0000 FA99"
	$"FF00 FAAA 0000 FCAA FFAA F000 FAFF 0000"
	$"FAFF 0000 FACC 0000 FA99 0000 FA66 0000"
	$"FA33 F800 FAFF 0000 FACC 0000 FA99 0000"
	$"FA66 0000 FA33 F800 FCFF FFFF 0000 FACC"
	$"0000 FA99 0000 FA66 0000 FA33 F800 0018"
	$"E001 FAFF A901 C801 E000 FAFF E200 8100"
	$"EE00 FAFF 9B00 D600 00E8 0001 FA99 0001"
	$"FA00 0001 FA00 0001 FA99 0001 FAFF 0001"
	$"FAFF 0001 FAFF 0001 FAFF 0001 FAFF 0001"
	$"FAFF 0001 FAFF 0001 FAFF 0001 FAFF 0001"
	$"FAFF 0001 FAFF 0001 FAFF 0001 FAFF 0001"
	$"FAFF 0001 FAFF 0001 FAFF 0001 FAFF 0001"
	$"FAFF 0001 FAFF 0101 00FA 99F8 00FA 99F8"
	$"00FA FF00 00FA 6600 00FA 6600 00FA 6600"
	$"00FB 6601 6600 FA66 0000 FA66 0000 FA33"
	$"0000 FA33 0000 FA33 0000 FA33 0000 FA33"
	$"0000 FA33 CF00 FA99 0000 FC99 FF99 F000"
	$"FAFF 0000 FAFF 0000 FACC 0000 FA99 0000"
	$"FA66 0000 FA33 F800 FAFF 0000 FACC 0000"
	$"FA99 0000 FA66 0000 FA33 F800 FCFF FFFF"
	$"0000 FACC 0000 FA99 0000 FA66 0000 FA33"
	$"F800 00E8 0001 FA99 0001 FA00 0001 FA00"
	$"0001 FA99 0001 FAFF 0001 FAFF 0001 FAFF"
	$"0001 FAFF 0001 FAFF 0001 FAFF 0001 FAFF"
	$"0001 FAFF 0001 FAFF 0001 FAFF 0001 FAFF"
	$"0001 FAFF 0001 FAFF 0001 FAFF 0001 FAFF"
	$"0001 FAFF 0001 FAFF 0001 FAFF 0001 FAFF"
	$"0101 00FA 99F8 00FA 99F8 00FA FF00 00FA"
	$"6600 00FA 6600 00FA 6600 00FB 6601 6600"
	$"FA66 0000 FA66 0000 FA33 0000 FA33 0000"
	$"FA33 0000 FA33 0000 FA33 0000 FA33 CF00"
	$"FA99 0000 FC99 FF99 F000 FAFF 0000 FAFF"
	$"0000 FACC 0000 FA99 0000 FA66 0000 FA33"
	$"F800 FAFF 0000 FACC 0000 FA99 0000 FA66"
	$"0000 FA33 F800 FCFF FFFF 0000 FACC 0000"
	$"FA99 0000 FA66 0000 FA33 F800 00E8 0001"
	$"FA99 0001 FA00 0001 FA00 0001 FA99 0001"
	$"FAFF 0001 FAFF 0001 FAFF 0001 FAFF 0001"
	$"FAFF 0001 FAFF 0001 FAFF 0001 FAFF 0001"
	$"FAFF 0001 FAFF 0001 FAFF 0001 FAFF 0001"
	$"FAFF 0001 FAFF 0001 FAFF 0001 FAFF 0001"
	$"FAFF 0001 FAFF 0001 FAFF 0101 00FA 99F8"
	$"00FA 99F8 00FA FF00 00FA 6600 00FA 6600"
	$"00FA 6600 00FB 6601 6600 FA66 0000 FA66"
	$"0000 FA33 0000 FA33 0000 FA33 0000 FA33"
	$"0000 FA33 0000 FA33 CF00 FA99 0000 FC99"
	$"FF99 F000 FAFF 0000 FAFF 0000 FACC 0000"
	$"FA99 0000 FA66 0000 FA33 F800 FAFF 0000"
	$"FACC 0000 FA99 0000 FA66 0000 FA33 F800"
	$"FCFF FFFF 0000 FACC 0000 FA99 0000 FA66"
	$"0000 FA33 F800 00E8 0001 FA99 0001 FA00"
	$"0001 FA00 0001 FA99 0001 FAFF 0001 FAFF"
	$"0001 FAFF 0001 FAFF 0001 FAFF 0001 FAFF"
	$"0001 FAFF 0001 FAFF 0001 FAFF 0001 FAFF"
	$"0001 FAFF 0001 FAFF 0001 FAFF 0001 FAFF"
	$"0001 FAFF 0001 FAFF 0001 FAFF 0001 FAFF"
	$"0001 FAFF 0101 00FA 99F8 00FA 99F8 00FA"
	$"FF00 00FA 6600 00FA 6600 00FA 6600 00FB"
	$"6601 6600 FA66 0000 FA66 0000 FA33 0000"
	$"FA33 0000 FA33 0000 FA33 0000 FA33 0000"
	$"FA33 CF00 FA99 0000 FC99 FF99 F000 FAFF"
	$"0000 FAFF 0000 FACC 0000 FA99 0000 FA66"
	$"0000 FA33 F800 FAFF 0000 FACC 0000 FA99"
	$"0000 FA66 0000 FA33 F800 FCFF FFFF 0000"
	$"FACC 0000 FA99 0000 FA66 0000 FA33 F800"
	$"00E8 0001 FA99 0001 FA00 0001 FA00 0001"
	$"FA99 0001 FAFF 0001 FAFF 0001 FAFF 0001"
	$"FAFF 0001 FAFF 0001 FAFF 0001 FAFF 0001"
	$"FAFF 0001 FAFF 0001 FAFF 0001 FAFF 0001"
	$"FAFF 0001 FAFF 0001 FAFF 0001 FAFF 0001"
	$"FAFF 0001 FAFF 0001 FAFF 0001 FAFF 0101"
	$"00FA 99F8 00FA 99F8 00FA FF00 00FA 6600"
	$"00FA 6600 00FA 6600 00FB 6601 6600 FA66"
	$"0000 FA66 0000 FA33 0000 FA33 0000 FA33"
	$"0000 FA33 0000 FA33 0000 FA33 CF00 FA99"
	$"0000 FC99 FF99 F000 FAFF 0000 FAFF 0000"
	$"FACC 0000 FA99 0000 FA66 0000 FA33 F800"
	$"FAFF 0000 FACC 0000 FA99 0000 FA66 0000"
	$"FA33 F800 FCFF FFFF 0000 FACC 0000 FA99"
	$"0000 FA66 0000 FA33 F800 00E8 0001 FA99"
	$"0001 FA00 0001 FA00 0001 FA99 0001 FAFF"
	$"0001 FAFF 0001 FAFF 0001 FAFF 0001 FAFF"
	$"0001 FAFF 0001 FAFF 0001 FAFF 0001 FAFF"
	$"0001 FAFF 0001 FAFF 0001 FAFF 0001 FAFF"
	$"0001 FAFF 0001 FAFF 0001 FAFF 0001 FAFF"
	$"0001 FAFF 0001 FAFF 0101 00FA 99F8 00FA"
	$"99F8 00FA FF00 00FA 6600 00FA 6600 00FA"
	$"6600 00FB 6601 6600 FA66 0000 FA66 0000"
	$"FA33 0000 FA33 0000 FA33 0000 FA33 0000"
	$"FA33 0000 FA33 CF00 FA99 0000 FC99 FF99"
	$"F000 FAFF 0000 FAFF 0000 FACC 0000 FA99"
	$"0000 FA66 0000 FA33 F800 FAFF 0000 FACC"
	$"0000 FA99 0000 FA66 0000 FA33 F800 FCFF"
	$"FFFF 0000 FACC 0000 FA99 0000 FA66 0000"
	$"FA33 F800 00E8 0001 FA99 0001 FA00 0001"
	$"FA00 0001 FA99 0001 FAFF 0001 FAFF 0001"
	$"FAFF 0001 FAFF 0001 FAFF 0001 FAFF 0001"
	$"FAFF 0001 FAFF 0001 FAFF 0001 FAFF 0001"
	$"FAFF 0001 FAFF 0001 FAFF 0001 FAFF 0001"
	$"FAFF 0001 FAFF 0001 FAFF 0001 FAFF 0001"
	$"FAFF 0101 00FA 99F8 00FA 99F8 00FA FF00"
	$"00FA 6600 00FA 6600 00FA 6600 00FB 6601"
	$"6600 FA66 0000 FA66 0000 FA33 0000 FA33"
	$"0000 FA33 0000 FA33 0000 FA33 0000 FA33"
	$"CF00 FA99 0000 FC99 FF99 F000 FAFF 0000"
	$"FAFF 0000 FACC 0000 FA99 0000 FA66 0000"
	$"FA33 F800 FAFF 0000 FACC 0000 FA99 0000"
	$"FA66 0000 FA33 F800 FCFF FFFF 0000 FACC"
	$"0000 FA99 0000 FA66 0000 FA33 F800 0018"
	$"E001 FAFF A901 C801 E000 FAFF E200 8100"
	$"EE00 FAFF 9B00 D600 00E8 0001 FA88 0001"
	$"FA00 0001 FA00 0001 FA88 0001 FAFF 0001"
	$"FACC 0001 FACC 0001 FACC 0001 FACC 0001"
	$"FACC 0001 FACC 0001 FACC 0001 FACC 0001"
	$"FACC 0001 FACC 0001 FACC 0001 FACC 0001"
	$"FACC 0001 FACC 0001 FACC 0001 FACC 0001"
	$"FACC 0001 FACC 0101 00FA 88F8 00FA 88F8"
	$"00FA FF00 00FA 6600 00FA 6600 00FA 6600"
	$"00FB 6601 6600 FA66 0000 FA66 0000 FA33"
	$"0000 FA33 0000 FA33 0000 FA33 0000 FA33"
	$"0000 FA33 CF00 FA88 0000 FC88 FF88 F000"
	$"FAFF 0000 FAFF 0000 FACC 0000 FA99 0000"
	$"FA66 0000 FA33 F800 FAFF 0000 FACC 0000"
	$"FA99 0000 FA66 0000 FA33 F800 FCFF FFFF"
	$"0000 FACC 0000 FA99 0000 FA66 0000 FA33"
	$"F800 00E8 0001 FA88 0001 FA00 0001 FA00"
	$"0001 FA88 0001 FAFF 0001 FACC 0001 FACC"
	$"0001 FACC 0001 FACC 0001 FACC 0001 FACC"
	$"0001 FACC 0001 FACC 0001 FACC 0001 FACC"
	$"0001 FACC 0001 FACC 0001 FACC 0001 FACC"
	$"0001 FACC 0001 FACC 0001 FACC 0001 FACC"
	$"0101 00FA 88F8 00FA 88F8 00FA FF00 00FA"
	$"6600 00FA 6600 00FA 6600 00FB 6601 6600"
	$"FA66 0000 FA66 0000 FA33 0000 FA33 0000"
	$"FA33 0000 FA33 0000 FA33 0000 FA33 CF00"
	$"FA88 0000 FC88 FF88 F000 FAFF 0000 FAFF"
	$"0000 FACC 0000 FA99 0000 FA66 0000 FA33"
	$"F800 FAFF 0000 FACC 0000 FA99 0000 FA66"
	$"0000 FA33 F800 FCFF FFFF 0000 FACC 0000"
	$"FA99 0000 FA66 0000 FA33 F800 00E8 0001"
	$"FA88 0001 FA00 0001 FA00 0001 FA88 0001"
	$"FAFF 0001 FACC 0001 FACC 0001 FACC 0001"
	$"FACC 0001 FACC 0001 FACC 0001 FACC 0001"
	$"FACC 0001 FACC 0001 FACC 0001 FACC 0001"
	$"FACC 0001 FACC 0001 FACC 0001 FACC 0001"
	$"FACC 0001 FACC 0001 FACC 0101 00FA 88F8"
	$"00FA 88F8 00FA FF00 00FA 6600 00FA 6600"
	$"00FA 6600 00FB 6601 6600 FA66 0000 FA66"
	$"0000 FA33 0000 FA33 0000 FA33 0000 FA33"
	$"0000 FA33 0000 FA33 CF00 FA88 0000 FC88"
	$"FF88 F000 FAFF 0000 FAFF 0000 FACC 0000"
	$"FA99 0000 FA66 0000 FA33 F800 FAFF 0000"
	$"FACC 0000 FA99 0000 FA66 0000 FA33 F800"
	$"FCFF FFFF 0000 FACC 0000 FA99 0000 FA66"
	$"0000 FA33 F800 00E8 0001 FA88 0001 FA00"
	$"0001 FA00 0001 FA88 0001 FAFF 0001 FACC"
	$"0001 FACC 0001 FACC 0001 FACC 0001 FACC"
	$"0001 FACC 0001 FACC 0001 FACC 0001 FACC"
	$"0001 FACC 0001 FACC 0001 FACC 0001 FACC"
	$"0001 FACC 0001 FACC 0001 FACC 0001 FACC"
	$"0001 FACC 0101 00FA 88F8 00FA 88F8 00FA"
	$"FF00 00FA 6600 00FA 6600 00FA 6600 00FB"
	$"6601 6600 FA66 0000 FA66 0000 FA33 0000"
	$"FA33 0000 FA33 0000 FA33 0000 FA33 0000"
	$"FA33 CF00 FA88 0000 FC88 FF88 F000 FAFF"
	$"0000 FAFF 0000 FACC 0000 FA99 0000 FA66"
	$"0000 FA33 F800 FAFF 0000 FACC 0000 FA99"
	$"0000 FA66 0000 FA33 F800 FCFF FFFF 0000"
	$"FACC 0000 FA99 0000 FA66 0000 FA33 F800"
	$"00E8 0001 FA88 0001 FA00 0001 FA00 0001"
	$"FA88 0001 FAFF 0001 FACC 0001 FACC 0001"
	$"FACC 0001 FACC 0001 FACC 0001 FACC 0001"
	$"FACC 0001 FACC 0001 FACC 0001 FACC 0001"
	$"FACC 0001 FACC 0001 FACC 0001 FACC 0001"
	$"FACC 0001 FACC 0001 FACC 0001 FACC 0101"
	$"00FA 88F8 00FA 88F8 00FA FF00 00FA 6600"
	$"00FA 6600 00FA 6600 00FB 6601 6600 FA66"
	$"0000 FA66 0000 FA33 0000 FA33 0000 FA33"
	$"0000 FA33 0000 FA33 0000 FA33 CF00 FA88"
	$"0000 FC88 FF88 F000 FAFF 0000 FAFF 0000"
	$"FACC 0000 FA99 0000 FA66 0000 FA33 F800"
	$"FAFF 0000 FACC 0000 FA99 0000 FA66 0000"
	$"FA33 F800 FCFF FFFF 0000 FACC 0000 FA99"
	$"0000 FA66 0000 FA33 F800 00E8 0001 FA88"
	$"0001 FA00 0001 FA00 0001 FA88 0001 FAFF"
	$"0001 FACC 0001 FACC 0001 FACC 0001 FACC"
	$"0001 FACC 0001 FACC 0001 FACC 0001 FACC"
	$"0001 FACC 0001 FACC 0001 FACC 0001 FACC"
	$"0001 FACC 0001 FACC 0001 FACC 0001 FACC"
	$"0001 FACC 0001 FACC 0101 00FA 88F8 00FA"
	$"88F8 00FA FF00 00FA 6600 00FA 6600 00FA"
	$"6600 00FB 6601 6600 FA66 0000 FA66 0000"
	$"FA33 0000 FA33 0000 FA33 0000 FA33 0000"
	$"FA33 0000 FA33 CF00 FA88 0000 FC88 FF88"
	$"F000 FAFF 0000 FAFF 0000 FACC 0000 FA99"
	$"0000 FA66 0000 FA33 F800 FAFF 0000 FACC"
	$"0000 FA99 0000 FA66 0000 FA33 F800 FCFF"
	$"FFFF 0000 FACC 0000 FA99 0000 FA66 0000"
	$"FA33 F800 00E8 0001 FA88 0001 FA00 0001"
	$"FA00 0001 FA88 0001 FAFF 0001 FACC 0001"
	$"FACC 0001 FACC 0001 FACC 0001 FACC 0001"
	$"FACC 0001 FACC 0001 FACC 0001 FACC 0001"
	$"FACC 0001 FACC 0001 FACC 0001 FACC 0001"
	$"FACC 0001 FACC 0001 FACC 0001 FACC 0001"
	$"FACC 0101 00FA 88F8 00FA 88F8 00FA FF00"
	$"00FA 6600 00FA 6600 00FA 6600 00FB 6601"
	$"6600 FA66 0000 FA66 0000 FA33 0000 FA33"
	$"0000 FA33 0000 FA33 0000 FA33 0000 FA33"
	$"CF00 FA88 0000 FC88 FF88 F000 FAFF 0000"
	$"FAFF 0000 FACC 0000 FA99 0000 FA66 0000"
	$"FA33 F800 FAFF 0000 FACC 0000 FA99 0000"
	$"FA66 0000 FA33 F800 FCFF FFFF 0000 FACC"
	$"0000 FA99 0000 FA66 0000 FA33 F800 0018"
	$"E001 FAFF A901 C801 E000 FAFF E200 8100"
	$"EE00 FAFF 9B00 D600 00E8 0001 FA77 0001"
	$"FA00 0001 FA00 0001 FA77 0001 FAFF 0001"
	$"FA99 0001 FA99 0001 FA99 0001 FA99 0001"
	$"FA99 0001 FA99 0001 FA99 0001 FA99 0001"
	$"FA99 0001 FA99 0001 FA99 0001 FA99 0001"
	$"FA99 0001 FA99 0001 FA99 0001 FA99 0001"
	$"FA99 0001 FA99 0101 00FA 77F8 00FA 77F8"
	$"00FA FF00 00FA 6600 00FA 6600 00FA 6600"
	$"00FB 6601 6600 FA66 0000 FA66 0000 FA33"
	$"0000 FA33 0000 FA33 0000 FA33 0000 FA33"
	$"0000 FA33 CF00 FA77 0000 FC77 FF77 F000"
	$"FAFF 0000 FAFF 0000 FACC 0000 FA99 0000"
	$"FA66 0000 FA33 F800 FAFF 0000 FACC 0000"
	$"FA99 0000 FA66 0000 FA33 F800 FCFF FFFF"
	$"0000 FACC 0000 FA99 0000 FA66 0000 FA33"
	$"F800 00E8 0001 FA77 0001 FA00 0001 FA00"
	$"0001 FA77 0001 FAFF 0001 FA99 0001 FA99"
	$"0001 FA99 0001 FA99 0001 FA99 0001 FA99"
	$"0001 FA99 0001 FA99 0001 FA99 0001 FA99"
	$"0001 FA99 0001 FA99 0001 FA99 0001 FA99"
	$"0001 FA99 0001 FA99 0001 FA99 0001 FA99"
	$"0101 00FA 77F8 00FA 77F8 00FA FF00 00FA"
	$"6600 00FA 6600 00FA 6600 00FB 6601 6600"
	$"FA66 0000 FA66 0000 FA33 0000 FA33 0000"
	$"FA33 0000 FA33 0000 FA33 0000 FA33 CF00"
	$"FA77 0000 FC77 FF77 F000 FAFF 0000 FAFF"
	$"0000 FACC 0000 FA99 0000 FA66 0000 FA33"
	$"F800 FAFF 0000 FACC 0000 FA99 0000 FA66"
	$"0000 FA33 F800 FCFF FFFF 0000 FACC 0000"
	$"FA99 0000 FA66 0000 FA33 F800 00E8 0001"
	$"FA77 0001 FA00 0001 FA00 0001 FA77 0001"
	$"FAFF 0001 FA99 0001 FA99 0001 FA99 0001"
	$"FA99 0001 FA99 0001 FA99 0001 FA99 0001"
	$"FA99 0001 FA99 0001 FA99 0001 FA99 0001"
	$"FA99 0001 FA99 0001 FA99 0001 FA99 0001"
	$"FA99 0001 FA99 0001 FA99 0101 00FA 77F8"
	$"00FA 77F8 00FA FF00 00FA 6600 00FA 6600"
	$"00FA 6600 00FB 6601 6600 FA66 0000 FA66"
	$"0000 FA33 0000 FA33 0000 FA33 0000 FA33"
	$"0000 FA33 0000 FA33 CF00 FA77 0000 FC77"
	$"FF77 F000 FAFF 0000 FAFF 0000 FACC 0000"
	$"FA99 0000 FA66 0000 FA33 F800 FAFF 0000"
	$"FACC 0000 FA99 0000 FA66 0000 FA33 F800"
	$"FCFF FFFF 0000 FACC 0000 FA99 0000 FA66"
	$"0000 FA33 F800 00E8 0001 FA77 0001 FA00"
	$"0001 FA00 0001 FA77 0001 FAFF 0001 FA99"
	$"0001 FA99 0001 FA99 0001 FA99 0001 FA99"
	$"0001 FA99 0001 FA99 0001 FA99 0001 FA99"
	$"0001 FA99 0001 FA99 0001 FA99 0001 FA99"
	$"0001 FA99 0001 FA99 0001 FA99 0001 FA99"
	$"0001 FA99 0101 00FA 77F8 00FA 77F8 00FA"
	$"FF00 00FA 6600 00FA 6600 00FA 6600 00FB"
	$"6601 6600 FA66 0000 FA66 0000 FA33 0000"
	$"FA33 0000 FA33 0000 FA33 0000 FA33 0000"
	$"FA33 CF00 FA77 0000 FC77 FF77 F000 FAFF"
	$"0000 FAFF 0000 FACC 0000 FA99 0000 FA66"
	$"0000 FA33 F800 FAFF 0000 FACC 0000 FA99"
	$"0000 FA66 0000 FA33 F800 FCFF FFFF 0000"
	$"FACC 0000 FA99 0000 FA66 0000 FA33 F800"
	$"00E8 0001 FA77 0001 FA00 0001 FA00 0001"
	$"FA77 0001 FAFF 0001 FA99 0001 FA99 0001"
	$"FA99 0001 FA99 0001 FA99 0001 FA99 0001"
	$"FA99 0001 FA99 0001 FA99 0001 FA99 0001"
	$"FA99 0001 FA99 0001 FA99 0001 FA99 0001"
	$"FA99 0001 FA99 0001 FA99 0001 FA99 0101"
	$"00FA 77F8 00FA 77F8 00FA FF00 00FA 6600"
	$"00FA 6600 00FA 6600 00FB 6601 6600 FA66"
	$"0000 FA66 0000 FA33 0000 FA33 0000 FA33"
	$"0000 FA33 0000 FA33 0000 FA33 CF00 FA77"
	$"0000 FC77 FF77 F000 FAFF 0000 FAFF 0000"
	$"FACC 0000 FA99 0000 FA66 0000 FA33 F800"
	$"FAFF 0000 FACC 0000 FA99 0000 FA66 0000"
	$"FA33 F800 FCFF FFFF 0000 FACC 0000 FA99"
	$"0000 FA66 0000 FA33 F800 00E8 0001 FA77"
	$"0001 FA00 0001 FA00 0001 FA77 0001 FAFF"
	$"0001 FA99 0001 FA99 0001 FA99 0001 FA99"
	$"0001 FA99 0001 FA99 0001 FA99 0001 FA99"
	$"0001 FA99 0001 FA99 0001 FA99 0001 FA99"
	$"0001 FA99 0001 FA99 0001 FA99 0001 FA99"
	$"0001 FA99 0001 FA99 0101 00FA 77F8 00FA"
	$"77F8 00FA FF00 00FA 6600 00FA 6600 00FA"
	$"6600 00FB 6601 6600 FA66 0000 FA66 0000"
	$"FA33 0000 FA33 0000 FA33 0000 FA33 0000"
	$"FA33 0000 FA33 CF00 FA77 0000 FC77 FF77"
	$"F000 FAFF 0000 FAFF 0000 FACC 0000 FA99"
	$"0000 FA66 0000 FA33 F800 FAFF 0000 FACC"
	$"0000 FA99 0000 FA66 0000 FA33 F800 FCFF"
	$"FFFF 0000 FACC 0000 FA99 0000 FA66 0000"
	$"FA33 F800 00E8 0001 FA77 0001 FA00 0001"
	$"FA00 0001 FA77 0001 FAFF 0001 FA99 0001"
	$"FA99 0001 FA99 0001 FA99 0001 FA99 0001"
	$"FA99 0001 FA99 0001 FA99 0001 FA99 0001"
	$"FA99 0001 FA99 0001 FA99 0001 FA99 0001"
	$"FA99 0001 FA99 0001 FA99 0001 FA99 0001"
	$"FA99 0101 00FA 77F8 00FA 77F8 00FA FF00"
	$"00FA 6600 00FA 6600 00FA 6600 00FB 6601"
	$"6600 FA66 0000 FA66 0000 FA33 0000 FA33"
	$"0000 FA33 0000 FA33 0000 FA33 0000 FA33"
	$"CF00 FA77 0000 FC77 FF77 F000 FAFF 0000"
	$"FAFF 0000 FACC 0000 FA99 0000 FA66 0000"
	$"FA33 F800 FAFF 0000 FACC 0000 FA99 0000"
	$"FA66 0000 FA33 F800 FCFF FFFF 0000 FACC"
	$"0000 FA99 0000 FA66 0000 FA33 F800 0018"
	$"E001 FAFF A901 C801 E000 FAFF E200 8100"
	$"EE00 FAFF 9B00 D600 00EC 0001 FA66 0001"
	$"FA00 0001 FA00 0001 FA66 0001 FAFF 0001"
	$"FA66 0001 FA66 0001 FA66 0001 FA66 0001"
	$"FA66 0001 FA66 0001 FA66 0001 FA66 0001"
	$"FA66 0001 FA66 0001 FA66 0001 FA66 0001"
	$"FA66 0001 FA66 0001 FA66 0001 FA66 0001"
	$"FA66 0001 FA66 0101 00FA 66F8 00FA 66F8"
	$"00FA FF00 00FA 6600 00FA 6600 00FA 6600"
	$"00FB 6601 6600 FA66 0000 FA66 0000 FA33"
	$"0000 FA33 0000 FA33 0000 FA33 0000 FA33"
	$"0000 FA33 CF00 FA66 0000 FC66 FF66 0000"
	$"FA33 F800 FAFF 0000 FAFF 0000 FACC 0000"
	$"FA99 0000 FA66 0000 FA33 F800 FAFF 0000"
	$"FACC 0000 FA99 0000 FA66 0000 FA33 F800"
	$"FCFF FFFF 0000 FACC 0000 FA99 0000 FA66"
	$"0000 FA33 F800 00EC 0001 FA66 0001 FA00"
	$"0001 FA00 0001 FA66 0001 FAFF 0001 FA66"
	$"0001 FA66 0001 FA66 0001 FA66 0001 FA66"
	$"0001 FA66 0001 FA66 0001 FA66 0001 FA66"
	$"0001 FA66 0001 FA66 0001 FA66 0001 FA66"
	$"0001 FA66 0001 FA66 0001 FA66 0001 FA66"
	$"0001 FA66 0101 00FA 66F8 00FA 66F8 00FA"
	$"FF00 00FA 6600 00FA 6600 00FA 6600 00FB"
	$"6601 6600 FA66 0000 FA66 0000 FA33 0000"
	$"FA33 0000 FA33 0000 FA33 0000 FA33 0000"
	$"FA33 CF00 FA66 0000 FC66 FF66 0000 FA33"
	$"F800 FAFF 0000 FAFF 0000 FACC 0000 FA99"
	$"0000 FA66 0000 FA33 F800 FAFF 0000 FACC"
	$"0000 FA99 0000 FA66 0000 FA33 F800 FCFF"
	$"FFFF 0000 FACC 0000 FA99 0000 FA66 0000"
	$"FA33 F800 00EC 0001 FA66 0001 FA00 0001"
	$"FA00 0001 FA66 0001 FAFF 0001 FA66 0001"
	$"FA66 0001 FA66 0001 FA66 0001 FA66 0001"
	$"FA66 0001 FA66 0001 FA66 0001 FA66 0001"
	$"FA66 0001 FA66 0001 FA66 0001 FA66 0001"
	$"FA66 0001 FA66 0001 FA66 0001 FA66 0001"
	$"FA66 0101 00FA 66F8 00FA 66F8 00FA FF00"
	$"00FA 6600 00FA 6600 00FA 6600 00FB 6601"
	$"6600 FA66 0000 FA66 0000 FA33 0000 FA33"
	$"0000 FA33 0000 FA33 0000 FA33 0000 FA33"
	$"CF00 FA66 0000 FC66 FF66 0000 FA33 F800"
	$"FAFF 0000 FAFF 0000 FACC 0000 FA99 0000"
	$"FA66 0000 FA33 F800 FAFF 0000 FACC 0000"
	$"FA99 0000 FA66 0000 FA33 F800 FCFF FFFF"
	$"0000 FACC 0000 FA99 0000 FA66 0000 FA33"
	$"F800 00EC 0001 FA66 0001 FA00 0001 FA00"
	$"0001 FA66 0001 FAFF 0001 FA66 0001 FA66"
	$"0001 FA66 0001 FA66 0001 FA66 0001 FA66"
	$"0001 FA66 0001 FA66 0001 FA66 0001 FA66"
	$"0001 FA66 0001 FA66 0001 FA66 0001 FA66"
	$"0001 FA66 0001 FA66 0001 FA66 0001 FA66"
	$"0101 00FA 66F8 00FA 66F8 00FA FF00 00FA"
	$"6600 00FA 6600 00FA 6600 00FB 6601 6600"
	$"FA66 0000 FA66 0000 FA33 0000 FA33 0000"
	$"FA33 0000 FA33 0000 FA33 0000 FA33 CF00"
	$"FA66 0000 FC66 FF66 0000 FA33 F800 FAFF"
	$"0000 FAFF 0000 FACC 0000 FA99 0000 FA66"
	$"0000 FA33 F800 FAFF 0000 FACC 0000 FA99"
	$"0000 FA66 0000 FA33 F800 FCFF FFFF 0000"
	$"FACC 0000 FA99 0000 FA66 0000 FA33 F800"
	$"00EC 0001 FA66 0001 FA00 0001 FA00 0001"
	$"FA66 0001 FAFF 0001 FA66 0001 FA66 0001"
	$"FA66 0001 FA66 0001 FA66 0001 FA66 0001"
	$"FA66 0001 FA66 0001 FA66 0001 FA66 0001"
	$"FA66 0001 FA66 0001 FA66 0001 FA66 0001"
	$"FA66 0001 FA66 0001 FA66 0001 FA66 0101"
	$"00FA 66F8 00FA 66F8 00FA FF00 00FA 6600"
	$"00FA 6600 00FA 6600 00FB 6601 6600 FA66"
	$"0000 FA66 0000 FA33 0000 FA33 0000 FA33"
	$"0000 FA33 0000 FA33 0000 FA33 CF00 FA66"
	$"0000 FC66 FF66 0000 FA33 F800 FAFF 0000"
	$"FAFF 0000 FACC 0000 FA99 0000 FA66 0000"
	$"FA33 F800 FAFF 0000 FACC 0000 FA99 0000"
	$"FA66 0000 FA33 F800 FCFF FFFF 0000 FACC"
	$"0000 FA99 0000 FA66 0000 FA33 F800 00EC"
	$"0001 FA66 0001 FA00 0001 FA00 0001 FA66"
	$"0001 FAFF 0001 FA66 0001 FA66 0001 FA66"
	$"0001 FA66 0001 FA66 0001 FA66 0001 FA66"
	$"0001 FA66 0001 FA66 0001 FA66 0001 FA66"
	$"0001 FA66 0001 FA66 0001 FA66 0001 FA66"
	$"0001 FA66 0001 FA66 0001 FA66 0101 00FA"
	$"66F8 00FA 66F8 00FA FF00 00FA 6600 00FA"
	$"6600 00FA 6600 00FB 6601 6600 FA66 0000"
	$"FA66 0000 FA33 0000 FA33 0000 FA33 0000"
	$"FA33 0000 FA33 0000 FA33 CF00 FA66 0000"
	$"FC66 FF66 0000 FA33 F800 FAFF 0000 FAFF"
	$"0000 FACC 0000 FA99 0000 FA66 0000 FA33"
	$"F800 FAFF 0000 FACC 0000 FA99 0000 FA66"
	$"0000 FA33 F800 FCFF FFFF 0000 FACC 0000"
	$"FA99 0000 FA66 0000 FA33 F800 00EC 0001"
	$"FA66 0001 FA00 0001 FA00 0001 FA66 0001"
	$"FAFF 0001 FA66 0001 FA66 0001 FA66 0001"
	$"FA66 0001 FA66 0001 FA66 0001 FA66 0001"
	$"FA66 0001 FA66 0001 FA66 0001 FA66 0001"
	$"FA66 0001 FA66 0001 FA66 0001 FA66 0001"
	$"FA66 0001 FA66 0001 FA66 0101 00FA 66F8"
	$"00FA 66F8 00FA FF00 00FA 6600 00FA 6600"
	$"00FA 6600 00FB 6601 6600 FA66 0000 FA66"
	$"0000 FA33 0000 FA33 0000 FA33 0000 FA33"
	$"0000 FA33 0000 FA33 CF00 FA66 0000 FC66"
	$"FF66 0000 FA33 F800 FAFF 0000 FAFF 0000"
	$"FACC 0000 FA99 0000 FA66 0000 FA33 F800"
	$"FAFF 0000 FACC 0000 FA99 0000 FA66 0000"
	$"FA33 F800 FCFF FFFF 0000 FACC 0000 FA99"
	$"0000 FA66 0000 FA33 F800 0018 E001 FAFF"
	$"A901 C801 E000 FAFF E200 8100 EE00 FAFF"
	$"9B00 D600 00E8 0001 FA55 0001 FA00 0001"
	$"FA00 0001 FA55 0001 FAFF 0001 FA33 0001"
	$"FA33 0001 FA33 0001 FA33 0001 FA33 0001"
	$"FA33 0001 FA33 0001 FA33 0001 FA33 0001"
	$"FA33 0001 FA33 0001 FA33 0001 FA33 0001"
	$"FA33 0001 FA33 0001 FA33 0001 FA33 0001"
	$"FA33 0101 00FA 55F8 00FA 55F8 00FA FF00"
	$"00FA 6600 00FA 6600 00FA 6600 00FB 6601"
	$"6600 FA66 0000 FA66 0000 FA33 0000 FA33"
	$"0000 FA33 0000 FA33 0000 FA33 0000 FA33"
	$"CF00 FA55 0000 FC55 FF55 F000 FAFF 0000"
	$"FAFF 0000 FACC 0000 FA99 0000 FA66 0000"
	$"FA33 F800 FAFF 0000 FACC 0000 FA99 0000"
	$"FA66 0000 FA33 F800 FCFF FFFF 0000 FACC"
	$"0000 FA99 0000 FA66 0000 FA33 F800 00E8"
	$"0001 FA55 0001 FA00 0001 FA00 0001 FA55"
	$"0001 FAFF 0001 FA33 0001 FA33 0001 FA33"
	$"0001 FA33 0001 FA33 0001 FA33 0001 FA33"
	$"0001 FA33 0001 FA33 0001 FA33 0001 FA33"
	$"0001 FA33 0001 FA33 0001 FA33 0001 FA33"
	$"0001 FA33 0001 FA33 0001 FA33 0101 00FA"
	$"55F8 00FA 55F8 00FA FF00 00FA 6600 00FA"
	$"6600 00FA 6600 00FB 6601 6600 FA66 0000"
	$"FA66 0000 FA33 0000 FA33 0000 FA33 0000"
	$"FA33 0000 FA33 0000 FA33 CF00 FA55 0000"
	$"FC55 FF55 F000 FAFF 0000 FAFF 0000 FACC"
	$"0000 FA99 0000 FA66 0000 FA33 F800 FAFF"
	$"0000 FACC 0000 FA99 0000 FA66 0000 FA33"
	$"F800 FCFF FFFF 0000 FACC 0000 FA99 0000"
	$"FA66 0000 FA33 F800 00E8 0001 FA55 0001"
	$"FA00 0001 FA00 0001 FA55 0001 FAFF 0001"
	$"FA33 0001 FA33 0001 FA33 0001 FA33 0001"
	$"FA33 0001 FA33 0001 FA33 0001 FA33 0001"
	$"FA33 0001 FA33 0001 FA33 0001 FA33 0001"
	$"FA33 0001 FA33 0001 FA33 0001 FA33 0001"
	$"FA33 0001 FA33 0101 00FA 55F8 00FA 55F8"
	$"00FA FF00 00FA 6600 00FA 6600 00FA 6600"
	$"00FB 6601 6600 FA66 0000 FA66 0000 FA33"
	$"0000 FA33 0000 FA33 0000 FA33 0000 FA33"
	$"0000 FA33 CF00 FA55 0000 FC55 FF55 F000"
	$"FAFF 0000 FAFF 0000 FACC 0000 FA99 0000"
	$"FA66 0000 FA33 F800 FAFF 0000 FACC 0000"
	$"FA99 0000 FA66 0000 FA33 F800 FCFF FFFF"
	$"0000 FACC 0000 FA99 0000 FA66 0000 FA33"
	$"F800 00E8 0001 FA55 0001 FA00 0001 FA00"
	$"0001 FA55 0001 FAFF 0001 FA33 0001 FA33"
	$"0001 FA33 0001 FA33 0001 FA33 0001 FA33"
	$"0001 FA33 0001 FA33 0001 FA33 0001 FA33"
	$"0001 FA33 0001 FA33 0001 FA33 0001 FA33"
	$"0001 FA33 0001 FA33 0001 FA33 0001 FA33"
	$"0101 00FA 55F8 00FA 55F8 00FA FF00 00FA"
	$"6600 00FA 6600 00FA 6600 00FB 6601 6600"
	$"FA66 0000 FA66 0000 FA33 0000 FA33 0000"
	$"FA33 0000 FA33 0000 FA33 0000 FA33 CF00"
	$"FA55 0000 FC55 FF55 F000 FAFF 0000 FAFF"
	$"0000 FACC 0000 FA99 0000 FA66 0000 FA33"
	$"F800 FAFF 0000 FACC 0000 FA99 0000 FA66"
	$"0000 FA33 F800 FCFF FFFF 0000 FACC 0000"
	$"FA99 0000 FA66 0000 FA33 F800 00E8 0001"
	$"FA55 0001 FA00 0001 FA00 0001 FA55 0001"
	$"FAFF 0001 FA33 0001 FA33 0001 FA33 0001"
	$"FA33 0001 FA33 0001 FA33 0001 FA33 0001"
	$"FA33 0001 FA33 0001 FA33 0001 FA33 0001"
	$"FA33 0001 FA33 0001 FA33 0001 FA33 0001"
	$"FA33 0001 FA33 0001 FA33 0101 00FA 55F8"
	$"00FA 55F8 00FA FF00 00FA 6600 00FA 6600"
	$"00FA 6600 00FB 6601 6600 FA66 0000 FA66"
	$"0000 FA33 0000 FA33 0000 FA33 0000 FA33"
	$"0000 FA33 0000 FA33 CF00 FA55 0000 FC55"
	$"FF55 F000 FAFF 0000 FAFF 0000 FACC 0000"
	$"FA99 0000 FA66 0000 FA33 F800 FAFF 0000"
	$"FACC 0000 FA99 0000 FA66 0000 FA33 F800"
	$"FCFF FFFF 0000 FACC 0000 FA99 0000 FA66"
	$"0000 FA33 F800 00E8 0001 FA55 0001 FA00"
	$"0001 FA00 0001 FA55 0001 FAFF 0001 FA33"
	$"0001 FA33 0001 FA33 0001 FA33 0001 FA33"
	$"0001 FA33 0001 FA33 0001 FA33 0001 FA33"
	$"0001 FA33 0001 FA33 0001 FA33 0001 FA33"
	$"0001 FA33 0001 FA33 0001 FA33 0001 FA33"
	$"0001 FA33 0101 00FA 55F8 00FA 55F8 00FA"
	$"FF00 00FA 6600 00FA 6600 00FA 6600 00FB"
	$"6601 6600 FA66 0000 FA66 0000 FA33 0000"
	$"FA33 0000 FA33 0000 FA33 0000 FA33 0000"
	$"FA33 CF00 FA55 0000 FC55 FF55 F000 FAFF"
	$"0000 FAFF 0000 FACC 0000 FA99 0000 FA66"
	$"0000 FA33 F800 FAFF 0000 FACC 0000 FA99"
	$"0000 FA66 0000 FA33 F800 FCFF FFFF 0000"
	$"FACC 0000 FA99 0000 FA66 0000 FA33 F800"
	$"00E8 0001 FA55 0001 FA00 0001 FA00 0001"
	$"FA55 0001 FAFF 0001 FA33 0001 FA33 0001"
	$"FA33 0001 FA33 0001 FA33 0001 FA33 0001"
	$"FA33 0001 FA33 0001 FA33 0001 FA33 0001"
	$"FA33 0001 FA33 0001 FA33 0001 FA33 0001"
	$"FA33 0001 FA33 0001 FA33 0001 FA33 0101"
	$"00FA 55F8 00FA 55F8 00FA FF00 00FA 6600"
	$"00FA 6600 00FA 6600 00FB 6601 6600 FA66"
	$"0000 FA66 0000 FA33 0000 FA33 0000 FA33"
	$"0000 FA33 0000 FA33 0000 FA33 CF00 FA55"
	$"0000 FC55 FF55 F000 FAFF 0000 FAFF 0000"
	$"FACC 0000 FA99 0000 FA66 0000 FA33 F800"
	$"FAFF 0000 FACC 0000 FA99 0000 FA66 0000"
	$"FA33 F800 FCFF FFFF 0000 FACC 0000 FA99"
	$"0000 FA66 0000 FA33 F800 0018 E001 FAFF"
	$"A901 C801 E000 FAFF E200 8100 EE00 FAFF"
	$"9B00 D600 00E8 0001 FA44 0001 FA00 0001"
	$"FA00 0001 FA44 0001 FAFF 0001 FA00 0001"
	$"FA00 0001 FA00 0001 FA00 0001 FA00 0001"
	$"FA00 0001 FA00 0001 FA00 0001 FA00 0001"
	$"FA00 0001 FA00 0001 FA00 0001 FA00 0001"
	$"FA00 0001 FA00 0001 FA00 0001 FA00 0001"
	$"FA00 0101 00FA 44F8 00FA 44F8 00FA FF00"
	$"00FA 6600 00FA 6600 00FA 6600 00FB 6601"
	$"6600 FA66 0000 FA66 0000 FA33 0000 FA33"
	$"0000 FA33 0000 FA33 0000 FA33 0000 FA33"
	$"CF00 FA44 0000 FC44 FF44 F000 FAFF 0000"
	$"FAFF 0000 FACC 0000 FA99 0000 FA66 0000"
	$"FA33 F800 FAFF 0000 FACC 0000 FA99 0000"
	$"FA66 0000 FA33 F800 FCFF FFFF 0000 FACC"
	$"0000 FA99 0000 FA66 0000 FA33 F800 00E8"
	$"0001 FA44 0001 FA00 0001 FA00 0001 FA44"
	$"0001 FAFF 0001 FA00 0001 FA00 0001 FA00"
	$"0001 FA00 0001 FA00 0001 FA00 0001 FA00"
	$"0001 FA00 0001 FA00 0001 FA00 0001 FA00"
	$"0001 FA00 0001 FA00 0001 FA00 0001 FA00"
	$"0001 FA00 0001 FA00 0001 FA00 0101 00FA"
	$"44F8 00FA 44F8 00FA FF00 00FA 6600 00FA"
	$"6600 00FA 6600 00FB 6601 6600 FA66 0000"
	$"FA66 0000 FA33 0000 FA33 0000 FA33 0000"
	$"FA33 0000 FA33 0000 FA33 CF00 FA44 0000"
	$"FC44 FF44 F000 FAFF 0000 FAFF 0000 FACC"
	$"0000 FA99 0000 FA66 0000 FA33 F800 FAFF"
	$"0000 FACC 0000 FA99 0000 FA66 0000 FA33"
	$"F800 FCFF FFFF 0000 FACC 0000 FA99 0000"
	$"FA66 0000 FA33 F800 00E8 0001 FA44 0001"
	$"FA00 0001 FA00 0001 FA44 0001 FAFF 0001"
	$"FA00 0001 FA00 0001 FA00 0001 FA00 0001"
	$"FA00 0001 FA00 0001 FA00 0001 FA00 0001"
	$"FA00 0001 FA00 0001 FA00 0001 FA00 0001"
	$"FA00 0001 FA00 0001 FA00 0001 FA00 0001"
	$"FA00 0001 FA00 0101 00FA 44F8 00FA 44F8"
	$"00FA FF00 00FA 6600 00FA 6600 00FA 6600"
	$"00FB 6601 6600 FA66 0000 FA66 0000 FA33"
	$"0000 FA33 0000 FA33 0000 FA33 0000 FA33"
	$"0000 FA33 CF00 FA44 0000 FC44 FF44 F000"
	$"FAFF 0000 FAFF 0000 FACC 0000 FA99 0000"
	$"FA66 0000 FA33 F800 FAFF 0000 FACC 0000"
	$"FA99 0000 FA66 0000 FA33 F800 FCFF FFFF"
	$"0000 FACC 0000 FA99 0000 FA66 0000 FA33"
	$"F800 00E8 0001 FA44 0001 FA00 0001 FA00"
	$"0001 FA44 0001 FAFF 0001 FA00 0001 FA00"
	$"0001 FA00 0001 FA00 0001 FA00 0001 FA00"
	$"0001 FA00 0001 FA00 0001 FA00 0001 FA00"
	$"0001 FA00 0001 FA00 0001 FA00 0001 FA00"
	$"0001 FA00 0001 FA00 0001 FA00 0001 FA00"
	$"0101 00FA 44F8 00FA 44F8 00FA FF00 00FA"
	$"6600 00FA 6600 00FA 6600 00FB 6601 6600"
	$"FA66 0000 FA66 0000 FA33 0000 FA33 0000"
	$"FA33 0000 FA33 0000 FA33 0000 FA33 CF00"
	$"FA44 0000 FC44 FF44 F000 FAFF 0000 FAFF"
	$"0000 FACC 0000 FA99 0000 FA66 0000 FA33"
	$"F800 FAFF 0000 FACC 0000 FA99 0000 FA66"
	$"0000 FA33 F800 FCFF FFFF 0000 FACC 0000"
	$"FA99 0000 FA66 0000 FA33 F800 00E8 0001"
	$"FA44 0001 FA00 0001 FA00 0001 FA44 0001"
	$"FAFF 0001 FA00 0001 FA00 0001 FA00 0001"
	$"FA00 0001 FA00 0001 FA00 0001 FA00 0001"
	$"FA00 0001 FA00 0001 FA00 0001 FA00 0001"
	$"FA00 0001 FA00 0001 FA00 0001 FA00 0001"
	$"FA00 0001 FA00 0001 FA00 0101 00FA 44F8"
	$"00FA 44F8 00FA FF00 00FA 6600 00FA 6600"
	$"00FA 6600 00FB 6601 6600 FA66 0000 FA66"
	$"0000 FA33 0000 FA33 0000 FA33 0000 FA33"
	$"0000 FA33 0000 FA33 CF00 FA44 0000 FC44"
	$"FF44 F000 FAFF 0000 FAFF 0000 FACC 0000"
	$"FA99 0000 FA66 0000 FA33 F800 FAFF 0000"
	$"FACC 0000 FA99 0000 FA66 0000 FA33 F800"
	$"FCFF FFFF 0000 FACC 0000 FA99 0000 FA66"
	$"0000 FA33 F800 00E8 0001 FA44 0001 FA00"
	$"0001 FA00 0001 FA44 0001 FAFF 0001 FA00"
	$"0001 FA00 0001 FA00 0001 FA00 0001 FA00"
	$"0001 FA00 0001 FA00 0001 FA00 0001 FA00"
	$"0001 FA00 0001 FA00 0001 FA00 0001 FA00"
	$"0001 FA00 0001 FA00 0001 FA00 0001 FA00"
	$"0001 FA00 0101 00FA 44F8 00FA 44F8 00FA"
	$"FF00 00FA 6600 00FA 6600 00FA 6600 00FB"
	$"6601 6600 FA66 0000 FA66 0000 FA33 0000"
	$"FA33 0000 FA33 0000 FA33 0000 FA33 0000"
	$"FA33 CF00 FA44 0000 FC44 FF44 F000 FAFF"
	$"0000 FAFF 0000 FACC 0000 FA99 0000 FA66"
	$"0000 FA33 F800 FAFF 0000 FACC 0000 FA99"
	$"0000 FA66 0000 FA33 F800 FCFF FFFF 0000"
	$"FACC 0000 FA99 0000 FA66 0000 FA33 F800"
	$"00E8 0001 FA44 0001 FA00 0001 FA00 0001"
	$"FA44 0001 FAFF 0001 FA00 0001 FA00 0001"
	$"FA00 0001 FA00 0001 FA00 0001 FA00 0001"
	$"FA00 0001 FA00 0001 FA00 0001 FA00 0001"
	$"FA00 0001 FA00 0001 FA00 0001 FA00 0001"
	$"FA00 0001 FA00 0001 FA00 0001 FA00 0101"
	$"00FA 44F8 00FA 44F8 00FA FF00 00FA 6600"
	$"00FA 6600 00FA 6600 00FB 6601 6600 FA66"
	$"0000 FA66 0000 FA33 0000 FA33 0000 FA33"
	$"0000 FA33 0000 FA33 0000 FA33 CF00 FA44"
	$"0000 FC44 FF44 F000 FAFF 0000 FAFF 0000"
	$"FACC 0000 FA99 0000 FA66 0000 FA33 F800"
	$"FAFF 0000 FACC 0000 FA99 0000 FA66 0000"
	$"FA33 F800 FCFF FFFF 0000 FACC 0000 FA99"
	$"0000 FA66 0000 FA33 F800 0018 E001 FAFF"
	$"A901 C801 E000 FAFF E200 8100 EE00 FAFF"
	$"9B00 D600 0034 0001 FA33 0001 FA00 0001"
	$"FA00 0001 FA33 0001 A2FF C8FF 0000 FA33"
	$"F800 FA33 F800 DBFF 8FFF 0000 FA33 0000"
	$"FC33 FF33 F000 94FF D6FF 0034 0001 FA33"
	$"0001 FA00 0001 FA00 0001 FA33 0001 A2FF"
	$"C8FF 0000 FA33 F800 FA33 F800 DBFF 8FFF"
	$"0000 FA33 0000 FC33 FF33 F000 94FF D6FF"
	$"0034 0001 FA33 0001 FA00 0001 FA00 0001"
	$"FA33 0001 A2FF C8FF 0000 FA33 F800 FA33"
	$"F800 DBFF 8FFF 0000 FA33 0000 FC33 FF33"
	$"F000 94FF D6FF 0034 0001 FA33 0001 FA00"
	$"0001 FA00 0001 FA33 0001 A2FF C8FF 0000"
	$"FA33 F800 FA33 F800 DBFF 8FFF 0000 FA33"
	$"0000 FC33 FF33 F000 94FF D6FF 0034 0001"
	$"FA33 0001 FA00 0001 FA00 0001 FA33 0001"
	$"A2FF C8FF 0000 FA33 F800 FA33 F800 DBFF"
	$"8FFF 0000 FA33 0000 FC33 FF33 F000 94FF"
	$"D6FF 0034 0001 FA33 0001 FA00 0001 FA00"
	$"0001 FA33 0001 A2FF C8FF 0000 FA33 F800"
	$"FA33 F800 DBFF 8FFF 0000 FA33 0000 FC33"
	$"FF33 F000 94FF D6FF 0034 0001 FA33 0001"
	$"FA00 0001 FA00 0001 FA33 0001 A2FF C8FF"
	$"0000 FA33 F800 FA33 F800 DBFF 8FFF 0000"
	$"FA33 0000 FC33 FF33 F000 94FF D6FF 0014"
	$"E001 A2FF C8FF E000 DBFF 8FFF F300 EE00"
	$"94FF D6FF 0034 0001 FA22 0001 FA00 0001"
	$"FA00 0001 FA22 0001 A2FF C8FF 0000 FA22"
	$"F800 FA22 F800 DBFF 8FFF 0000 FA22 0000"
	$"FC22 FF22 F000 94FF D6FF 0034 0001 FA22"
	$"0001 FA00 0001 FA00 0001 FA22 0001 A2FF"
	$"C8FF 0000 FA22 F800 FA22 F800 DBFF 8FFF"
	$"0000 FA22 0000 FC22 FF22 F000 94FF D6FF"
	$"0034 0001 FA22 0001 FA00 0001 FA00 0001"
	$"FA22 0001 A2FF C8FF 0000 FA22 F800 FA22"
	$"F800 DBFF 8FFF 0000 FA22 0000 FC22 FF22"
	$"F000 94FF D6FF 0034 0001 FA22 0001 FA00"
	$"0001 FA00 0001 FA22 0001 A2FF C8FF 0000"
	$"FA22 F800 FA22 F800 DBFF 8FFF 0000 FA22"
	$"0000 FC22 FF22 F000 94FF D6FF 0034 0001"
	$"FA22 0001 FA00 0001 FA00 0001 FA22 0001"
	$"A2FF C8FF 0000 FA22 F800 FA22 F800 DBFF"
	$"8FFF 0000 FA22 0000 FC22 FF22 F000 94FF"
	$"D6FF 0034 0001 FA22 0001 FA00 0001 FA00"
	$"0001 FA22 0001 A2FF C8FF 0000 FA22 F800"
	$"FA22 F800 DBFF 8FFF 0000 FA22 0000 FC22"
	$"FF22 F000 94FF D6FF 0034 0001 FA22 0001"
	$"FA00 0001 FA00 0001 FA22 0001 A2FF C8FF"
	$"0000 FA22 F800 FA22 F800 DBFF 8FFF 0000"
	$"FA22 0000 FC22 FF22 F000 94FF D6FF 0018"
	$"E001 F2FF B101 C801 E000 F2FF EA00 8100"
	$"EE00 F2FF A300 D600 00E4 0001 FA11 0001"
	$"FA00 0001 FA00 0001 FA11 0001 F2FF 0001"
	$"FADD 0001 FA99 0001 FAFF 0001 FA99 0001"
	$"FAFF 0001 FA33 0001 FA00 0001 FA33 0001"
	$"FA33 0001 FA99 0001 FA00 0001 FA00 0001"
	$"FA33 0001 FACC 0001 FA99 0001 FA66 0001"
	$"FA33 0101 00FA 11F8 00FA 11F8 00F2 FFF0"
	$"00FB 6601 6600 FA66 0000 FAFF 0000 FAFF"
	$"0000 FABB 0000 FA99 0000 FA66 0000 FAFF"
	$"0000 FA99 F000 FACC 0000 FA99 0000 FA66"
	$"0000 FA33 FF00 FA11 0000 FC11 FF11 F000"
	$"F2FF F800 FA66 0000 FACC 0000 FA99 F800"
	$"FA99 F800 FA66 0000 FA66 0000 FAFF 0000"
	$"FAFF 0000 FCDD FFDD 0000 FA99 0000 FAFF"
	$"0000 FAFF 0000 FACC 0000 FA66 0000 00E4"
	$"0001 FA11 0001 FA00 0001 FA00 0001 FA11"
	$"0001 F2FF 0001 FADD 0001 FA99 0001 FAFF"
	$"0001 FA99 0001 FAFF 0001 FA33 0001 FA00"
	$"0001 FA33 0001 FA33 0001 FA99 0001 FA00"
	$"0001 FA00 0001 FA33 0001 FACC 0001 FA99"
	$"0001 FA66 0001 FA33 0101 00FA 11F8 00FA"
	$"11F8 00F2 FFF0 00FB 6601 6600 FA66 0000"
	$"FAFF 0000 FAFF 0000 FABB 0000 FA99 0000"
	$"FA66 0000 FAFF 0000 FA99 F000 FACC 0000"
	$"FA99 0000 FA66 0000 FA33 FF00 FA11 0000"
	$"FC11 FF11 F000 F2FF F800 FA66 0000 FACC"
	$"0000 FA99 F800 FA99 F800 FA66 0000 FA66"
	$"0000 FAFF 0000 FAFF 0000 FCDD FFDD 0000"
	$"FA99 0000 FAFF 0000 FAFF 0000 FACC 0000"
	$"FA66 0000 00E4 0001 FA11 0001 FA00 0001"
	$"FA00 0001 FA11 0001 F2FF 0001 FADD 0001"
	$"FA99 0001 FAFF 0001 FA99 0001 FAFF 0001"
	$"FA33 0001 FA00 0001 FA33 0001 FA33 0001"
	$"FA99 0001 FA00 0001 FA00 0001 FA33 0001"
	$"FACC 0001 FA99 0001 FA66 0001 FA33 0101"
	$"00FA 11F8 00FA 11F8 00F2 FFF0 00FB 6601"
	$"6600 FA66 0000 FAFF 0000 FAFF 0000 FABB"
	$"0000 FA99 0000 FA66 0000 FAFF 0000 FA99"
	$"F000 FACC 0000 FA99 0000 FA66 0000 FA33"
	$"FF00 FA11 0000 FC11 FF11 F000 F2FF F800"
	$"FA66 0000 FACC 0000 FA99 F800 FA99 F800"
	$"FA66 0000 FA66 0000 FAFF 0000 FAFF 0000"
	$"FCDD FFDD 0000 FA99 0000 FAFF 0000 FAFF"
	$"0000 FACC 0000 FA66 0000 00E4 0001 FA11"
	$"0001 FA00 0001 FA00 0001 FA11 0001 F2FF"
	$"0001 FADD 0001 FA99 0001 FAFF 0001 FA99"
	$"0001 FAFF 0001 FA33 0001 FA00 0001 FA33"
	$"0001 FA33 0001 FA99 0001 FA00 0001 FA00"
	$"0001 FA33 0001 FACC 0001 FA99 0001 FA66"
	$"0001 FA33 0101 00FA 11F8 00FA 11F8 00F2"
	$"FFF0 00FB 6601 6600 FA66 0000 FAFF 0000"
	$"FAFF 0000 FABB 0000 FA99 0000 FA66 0000"
	$"FAFF 0000 FA99 F000 FACC 0000 FA99 0000"
	$"FA66 0000 FA33 FF00 FA11 0000 FC11 FF11"
	$"F000 F2FF F800 FA66 0000 FACC 0000 FA99"
	$"F800 FA99 F800 FA66 0000 FA66 0000 FAFF"
	$"0000 FAFF 0000 FCDD FFDD 0000 FA99 0000"
	$"FAFF 0000 FAFF 0000 FACC 0000 FA66 0000"
	$"00E4 0001 FA11 0001 FA00 0001 FA00 0001"
	$"FA11 0001 F2FF 0001 FADD 0001 FA99 0001"
	$"FAFF 0001 FA99 0001 FAFF 0001 FA33 0001"
	$"FA00 0001 FA33 0001 FA33 0001 FA99 0001"
	$"FA00 0001 FA00 0001 FA33 0001 FACC 0001"
	$"FA99 0001 FA66 0001 FA33 0101 00FA 11F8"
	$"00FA 11F8 00F2 FFF0 00FB 6601 6600 FA66"
	$"0000 FAFF 0000 FAFF 0000 FABB 0000 FA99"
	$"0000 FA66 0000 FAFF 0000 FA99 F000 FACC"
	$"0000 FA99 0000 FA66 0000 FA33 FF00 FA11"
	$"0000 FC11 FF11 F000 F2FF F800 FA66 0000"
	$"FACC 0000 FA99 F800 FA99 F800 FA66 0000"
	$"FA66 0000 FAFF 0000 FAFF 0000 FCDD FFDD"
	$"0000 FA99 0000 FAFF 0000 FAFF 0000 FACC"
	$"0000 FA66 0000 00E4 0001 FA11 0001 FA00"
	$"0001 FA00 0001 FA11 0001 F2FF 0001 FADD"
	$"0001 FA99 0001 FAFF 0001 FA99 0001 FAFF"
	$"0001 FA33 0001 FA00 0001 FA33 0001 FA33"
	$"0001 FA99 0001 FA00 0001 FA00 0001 FA33"
	$"0001 FACC 0001 FA99 0001 FA66 0001 FA33"
	$"0101 00FA 11F8 00FA 11F8 00F2 FFF0 00FB"
	$"6601 6600 FA66 0000 FAFF 0000 FAFF 0000"
	$"FABB 0000 FA99 0000 FA66 0000 FAFF 0000"
	$"FA99 F000 FACC 0000 FA99 0000 FA66 0000"
	$"FA33 FF00 FA11 0000 FC11 FF11 F000 F2FF"
	$"F800 FA66 0000 FACC 0000 FA99 F800 FA99"
	$"F800 FA66 0000 FA66 0000 FAFF 0000 FAFF"
	$"0000 FCDD FFDD 0000 FA99 0000 FAFF 0000"
	$"FAFF 0000 FACC 0000 FA66 0000 00E4 0001"
	$"FA11 0001 FA00 0001 FA00 0001 FA11 0001"
	$"F2FF 0001 FADD 0001 FA99 0001 FAFF 0001"
	$"FA99 0001 FAFF 0001 FA33 0001 FA00 0001"
	$"FA33 0001 FA33 0001 FA99 0001 FA00 0001"
	$"FA00 0001 FA33 0001 FACC 0001 FA99 0001"
	$"FA66 0001 FA33 0101 00FA 11F8 00FA 11F8"
	$"00F2 FFF0 00FB 6601 6600 FA66 0000 FAFF"
	$"0000 FAFF 0000 FABB 0000 FA99 0000 FA66"
	$"0000 FAFF 0000 FA99 F000 FACC 0000 FA99"
	$"0000 FA66 0000 FA33 FF00 FA11 0000 FC11"
	$"FF11 F000 F2FF F800 FA66 0000 FACC 0000"
	$"FA99 F800 FA99 F800 FA66 0000 FA66 0000"
	$"FAFF 0000 FAFF 0000 FCDD FFDD 0000 FA99"
	$"0000 FAFF 0000 FAFF 0000 FACC 0000 FA66"
	$"0000 0018 E001 F2FF B101 C801 E000 F2FF"
	$"EA00 8100 EE00 F2FF A300 D600 00E9 0001"
	$"FA00 0001 FA00 0001 FA00 0001 FA00 0001"
	$"F2FF 0001 FAFF 0001 FACC 0001 FAFF 0001"
	$"FAFF 0001 FAFF 0001 FAEE 0001 FADD 0001"
	$"FACC 0001 FABB 0001 FAAA 0001 FA88 0001"
	$"FA77 0001 FA55 0001 FA44 0001 FA22 0001"
	$"FA11 0001 FA00 0001 E000 F2FF 0000 FA66"
	$"0000 FA99 0000 FBCC 01CC 00FA FF00 00FA"
	$"FF00 00FA EE00 00FA DD00 00FA CC00 00FA"
	$"BB00 00FA AA00 00FA 8800 00FA 7700 00FA"
	$"5500 00FA 4400 00FA 2200 00FA 11EA 00EE"
	$"00F2 FF00 00FA 3300 00FA 6600 00FA 9900"
	$"00FA CC00 00FA FF00 00FA EE00 00FA DD00"
	$"00FA CC00 00FA BB00 00FA AA00 00FA 8800"
	$"00FC 77FF 7700 00FA 5500 00FA 4400 00FA"
	$"2200 00FA 11F8 0000 E900 01FA 0000 01FA"
	$"0000 01FA 0000 01FA 0000 01F2 FF00 01FA"
	$"FF00 01FA CC00 01FA FF00 01FA FF00 01FA"
	$"FF00 01FA EE00 01FA DD00 01FA CC00 01FA"
	$"BB00 01FA AA00 01FA 8800 01FA 7700 01FA"
	$"5500 01FA 4400 01FA 2200 01FA 1100 01FA"
	$"0000 01E0 00F2 FF00 00FA 6600 00FA 9900"
	$"00FB CC01 CC00 FAFF 0000 FAFF 0000 FAEE"
	$"0000 FADD 0000 FACC 0000 FABB 0000 FAAA"
	$"0000 FA88 0000 FA77 0000 FA55 0000 FA44"
	$"0000 FA22 0000 FA11 EA00 EE00 F2FF 0000"
	$"FA33 0000 FA66 0000 FA99 0000 FACC 0000"
	$"FAFF 0000 FAEE 0000 FADD 0000 FACC 0000"
	$"FABB 0000 FAAA 0000 FA88 0000 FC77 FF77"
	$"0000 FA55 0000 FA44 0000 FA22 0000 FA11"
	$"F800 00E9 0001 FA00 0001 FA00 0001 FA00"
	$"0001 FA00 0001 F2FF 0001 FAFF 0001 FACC"
	$"0001 FAFF 0001 FAFF 0001 FAFF 0001 FAEE"
	$"0001 FADD 0001 FACC 0001 FABB 0001 FAAA"
	$"0001 FA88 0001 FA77 0001 FA55 0001 FA44"
	$"0001 FA22 0001 FA11 0001 FA00 0001 E000"
	$"F2FF 0000 FA66 0000 FA99 0000 FBCC 01CC"
	$"00FA FF00 00FA FF00 00FA EE00 00FA DD00"
	$"00FA CC00 00FA BB00 00FA AA00 00FA 8800"
	$"00FA 7700 00FA 5500 00FA 4400 00FA 2200"
	$"00FA 11EA 00EE 00F2 FF00 00FA 3300 00FA"
	$"6600 00FA 9900 00FA CC00 00FA FF00 00FA"
	$"EE00 00FA DD00 00FA CC00 00FA BB00 00FA"
	$"AA00 00FA 8800 00FC 77FF 7700 00FA 5500"
	$"00FA 4400 00FA 2200 00FA 11F8 0000 E900"
	$"01FA 0000 01FA 0000 01FA 0000 01FA 0000"
	$"01F2 FF00 01FA FF00 01FA CC00 01FA FF00"
	$"01FA FF00 01FA FF00 01FA EE00 01FA DD00"
	$"01FA CC00 01FA BB00 01FA AA00 01FA 8800"
	$"01FA 7700 01FA 5500 01FA 4400 01FA 2200"
	$"01FA 1100 01FA 0000 01E0 00F2 FF00 00FA"
	$"6600 00FA 9900 00FB CC01 CC00 FAFF 0000"
	$"FAFF 0000 FAEE 0000 FADD 0000 FACC 0000"
	$"FABB 0000 FAAA 0000 FA88 0000 FA77 0000"
	$"FA55 0000 FA44 0000 FA22 0000 FA11 EA00"
	$"EE00 F2FF 0000 FA33 0000 FA66 0000 FA99"
	$"0000 FACC 0000 FAFF 0000 FAEE 0000 FADD"
	$"0000 FACC 0000 FABB 0000 FAAA 0000 FA88"
	$"0000 FC77 FF77 0000 FA55 0000 FA44 0000"
	$"FA22 0000 FA11 F800 00E9 0001 FA00 0001"
	$"FA00 0001 FA00 0001 FA00 0001 F2FF 0001"
	$"FAFF 0001 FACC 0001 FAFF 0001 FAFF 0001"
	$"FAFF 0001 FAEE 0001 FADD 0001 FACC 0001"
	$"FABB 0001 FAAA 0001 FA88 0001 FA77 0001"
	$"FA55 0001 FA44 0001 FA22 0001 FA11 0001"
	$"FA00 0001 E000 F2FF 0000 FA66 0000 FA99"
	$"0000 FBCC 01CC 00FA FF00 00FA FF00 00FA"
	$"EE00 00FA DD00 00FA CC00 00FA BB00 00FA"
	$"AA00 00FA 8800 00FA 7700 00FA 5500 00FA"
	$"4400 00FA 2200 00FA 11EA 00EE 00F2 FF00"
	$"00FA 3300 00FA 6600 00FA 9900 00FA CC00"
	$"00FA FF00 00FA EE00 00FA DD00 00FA CC00"
	$"00FA BB00 00FA AA00 00FA 8800 00FC 77FF"
	$"7700 00FA 5500 00FA 4400 00FA 2200 00FA"
	$"11F8 0000 E900 01FA 0000 01FA 0000 01FA"
	$"0000 01FA 0000 01F2 FF00 01FA FF00 01FA"
	$"CC00 01FA FF00 01FA FF00 01FA FF00 01FA"
	$"EE00 01FA DD00 01FA CC00 01FA BB00 01FA"
	$"AA00 01FA 8800 01FA 7700 01FA 5500 01FA"
	$"4400 01FA 2200 01FA 1100 01FA 0000 01E0"
	$"00F2 FF00 00FA 6600 00FA 9900 00FB CC01"
	$"CC00 FAFF 0000 FAFF 0000 FAEE 0000 FADD"
	$"0000 FACC 0000 FABB 0000 FAAA 0000 FA88"
	$"0000 FA77 0000 FA55 0000 FA44 0000 FA22"
	$"0000 FA11 EA00 EE00 F2FF 0000 FA33 0000"
	$"FA66 0000 FA99 0000 FACC 0000 FAFF 0000"
	$"FAEE 0000 FADD 0000 FACC 0000 FABB 0000"
	$"FAAA 0000 FA88 0000 FC77 FF77 0000 FA55"
	$"0000 FA44 0000 FA22 0000 FA11 F800 00E9"
	$"0001 FA00 0001 FA00 0001 FA00 0001 FA00"
	$"0001 F2FF 0001 FAFF 0001 FACC 0001 FAFF"
	$"0001 FAFF 0001 FAFF 0001 FAEE 0001 FADD"
	$"0001 FACC 0001 FABB 0001 FAAA 0001 FA88"
	$"0001 FA77 0001 FA55 0001 FA44 0001 FA22"
	$"0001 FA11 0001 FA00 0001 E000 F2FF 0000"
	$"FA66 0000 FA99 0000 FBCC 01CC 00FA FF00"
	$"00FA FF00 00FA EE00 00FA DD00 00FA CC00"
	$"00FA BB00 00FA AA00 00FA 8800 00FA 7700"
	$"00FA 5500 00FA 4400 00FA 2200 00FA 11EA"
	$"00EE 00F2 FF00 00FA 3300 00FA 6600 00FA"
	$"9900 00FA CC00 00FA FF00 00FA EE00 00FA"
	$"DD00 00FA CC00 00FA BB00 00FA AA00 00FA"
	$"8800 00FC 77FF 7700 00FA 5500 00FA 4400"
	$"00FA 2200 00FA 11F8 0000 18E0 01F2 FFB1"
	$"01C8 01E0 00F2 FFEA 0081 00EE 00F2 FFA3"
	$"00D6 0000 00FF"
};

resource 'PICT' (2051, "Graycale Picker") {
	22792,
	{0, 0, 129, 129},
	$"0011 02FF 0C00 FFFE 0000 0048 0000 0048"
	$"0000 0000 0000 0081 0081 0000 0000 00A1"
	$"01F2 0016 3842 494D 0000 0000 0000 0081"
	$"0081 4772 8970 68AF 626A 0001 000A 0000"
	$"0000 0081 0081 009A 0000 00FF 8204 0000"
	$"0000 0081 0081 0000 0004 0000 0000 0048"
	$"0000 0048 0000 0010 0020 0003 0008 0000"
	$"0000 0000 0000 0000 0000 0000 0000 0081"
	$"0081 0000 0000 0081 0081 0040 000A 8101"
	$"0001 8200 8100 FE00 00BC 0001 FA00 F801"
	$"FA02 0001 FA03 0001 FA04 0001 FA05 0001"
	$"FA06 0001 FA07 0001 FA08 0001 FA09 0001"
	$"FA0A 0001 FA0B 0001 FA0C 0001 FA0D 0001"
	$"FA0E 0001 FA0F 0001 F800 FA01 0000 FA02"
	$"0000 FA03 0000 FA04 0000 FA05 0000 FA06"
	$"0000 FA07 0000 FA08 0000 FA09 0000 FA0A"
	$"0000 FA0B 0000 FA0C 0000 FA0D 0000 FA0E"
	$"0000 FB0F 000F F700 FA01 0000 FA02 0000"
	$"FA03 0000 FA04 0000 FA05 0000 FA06 0000"
	$"FA07 0000 FA08 0000 FA09 0000 FA0A 0000"
	$"FA0B 0000 FA0C 0000 FA0D 0000 FA0E 0000"
	$"FC0F FF0F 0000 00BC 0001 FA00 F801 FA02"
	$"0001 FA03 0001 FA04 0001 FA05 0001 FA06"
	$"0001 FA07 0001 FA08 0001 FA09 0001 FA0A"
	$"0001 FA0B 0001 FA0C 0001 FA0D 0001 FA0E"
	$"0001 FA0F 0001 F800 FA01 0000 FA02 0000"
	$"FA03 0000 FA04 0000 FA05 0000 FA06 0000"
	$"FA07 0000 FA08 0000 FA09 0000 FA0A 0000"
	$"FA0B 0000 FA0C 0000 FA0D 0000 FA0E 0000"
	$"FB0F 000F F700 FA01 0000 FA02 0000 FA03"
	$"0000 FA04 0000 FA05 0000 FA06 0000 FA07"
	$"0000 FA08 0000 FA09 0000 FA0A 0000 FA0B"
	$"0000 FA0C 0000 FA0D 0000 FA0E 0000 FC0F"
	$"FF0F 0000 00BC 0001 FA00 F801 FA02 0001"
	$"FA03 0001 FA04 0001 FA05 0001 FA06 0001"
	$"FA07 0001 FA08 0001 FA09 0001 FA0A 0001"
	$"FA0B 0001 FA0C 0001 FA0D 0001 FA0E 0001"
	$"FA0F 0001 F800 FA01 0000 FA02 0000 FA03"
	$"0000 FA04 0000 FA05 0000 FA06 0000 FA07"
	$"0000 FA08 0000 FA09 0000 FA0A 0000 FA0B"
	$"0000 FA0C 0000 FA0D 0000 FA0E 0000 FB0F"
	$"000F F700 FA01 0000 FA02 0000 FA03 0000"
	$"FA04 0000 FA05 0000 FA06 0000 FA07 0000"
	$"FA08 0000 FA09 0000 FA0A 0000 FA0B 0000"
	$"FA0C 0000 FA0D 0000 FA0E 0000 FC0F FF0F"
	$"0000 00BC 0001 FA00 F801 FA02 0001 FA03"
	$"0001 FA04 0001 FA05 0001 FA06 0001 FA07"
	$"0001 FA08 0001 FA09 0001 FA0A 0001 FA0B"
	$"0001 FA0C 0001 FA0D 0001 FA0E 0001 FA0F"
	$"0001 F800 FA01 0000 FA02 0000 FA03 0000"
	$"FA04 0000 FA05 0000 FA06 0000 FA07 0000"
	$"FA08 0000 FA09 0000 FA0A 0000 FA0B 0000"
	$"FA0C 0000 FA0D 0000 FA0E 0000 FB0F 000F"
	$"F700 FA01 0000 FA02 0000 FA03 0000 FA04"
	$"0000 FA05 0000 FA06 0000 FA07 0000 FA08"
	$"0000 FA09 0000 FA0A 0000 FA0B 0000 FA0C"
	$"0000 FA0D 0000 FA0E 0000 FC0F FF0F 0000"
	$"00BC 0001 FA00 F801 FA02 0001 FA03 0001"
	$"FA04 0001 FA05 0001 FA06 0001 FA07 0001"
	$"FA08 0001 FA09 0001 FA0A 0001 FA0B 0001"
	$"FA0C 0001 FA0D 0001 FA0E 0001 FA0F 0001"
	$"F800 FA01 0000 FA02 0000 FA03 0000 FA04"
	$"0000 FA05 0000 FA06 0000 FA07 0000 FA08"
	$"0000 FA09 0000 FA0A 0000 FA0B 0000 FA0C"
	$"0000 FA0D 0000 FA0E 0000 FB0F 000F F700"
	$"FA01 0000 FA02 0000 FA03 0000 FA04 0000"
	$"FA05 0000 FA06 0000 FA07 0000 FA08 0000"
	$"FA09 0000 FA0A 0000 FA0B 0000 FA0C 0000"
	$"FA0D 0000 FA0E 0000 FC0F FF0F 0000 00BC"
	$"0001 FA00 F801 FA02 0001 FA03 0001 FA04"
	$"0001 FA05 0001 FA06 0001 FA07 0001 FA08"
	$"0001 FA09 0001 FA0A 0001 FA0B 0001 FA0C"
	$"0001 FA0D 0001 FA0E 0001 FA0F 0001 F800"
	$"FA01 0000 FA02 0000 FA03 0000 FA04 0000"
	$"FA05 0000 FA06 0000 FA07 0000 FA08 0000"
	$"FA09 0000 FA0A 0000 FA0B 0000 FA0C 0000"
	$"FA0D 0000 FA0E 0000 FB0F 000F F700 FA01"
	$"0000 FA02 0000 FA03 0000 FA04 0000 FA05"
	$"0000 FA06 0000 FA07 0000 FA08 0000 FA09"
	$"0000 FA0A 0000 FA0B 0000 FA0C 0000 FA0D"
	$"0000 FA0E 0000 FC0F FF0F 0000 00BC 0001"
	$"FA00 F801 FA02 0001 FA03 0001 FA04 0001"
	$"FA05 0001 FA06 0001 FA07 0001 FA08 0001"
	$"FA09 0001 FA0A 0001 FA0B 0001 FA0C 0001"
	$"FA0D 0001 FA0E 0001 FA0F 0001 F800 FA01"
	$"0000 FA02 0000 FA03 0000 FA04 0000 FA05"
	$"0000 FA06 0000 FA07 0000 FA08 0000 FA09"
	$"0000 FA0A 0000 FA0B 0000 FA0C 0000 FA0D"
	$"0000 FA0E 0000 FB0F 000F F700 FA01 0000"
	$"FA02 0000 FA03 0000 FA04 0000 FA05 0000"
	$"FA06 0000 FA07 0000 FA08 0000 FA09 0000"
	$"FA0A 0000 FA0B 0000 FA0C 0000 FA0D 0000"
	$"FA0E 0000 FC0F FF0F 0000 000A 8101 0001"
	$"8200 8100 FE00 00C7 0001 FA10 0001 FA11"
	$"0001 FA12 0001 FA13 0001 FA14 0001 FA15"
	$"0001 FA16 0001 FA17 0001 FA18 0001 FA19"
	$"0001 FA1A 0001 FA1B 0001 FA1C 0001 FA1D"
	$"0001 FA1E 0001 FA1F 0101 00FA 1000 00FA"
	$"1100 00FA 1200 00FA 1300 00FA 1400 00FA"
	$"1500 00FA 1600 00FA 1700 00FA 1800 00FA"
	$"1900 00FA 1A00 00FA 1B00 00FA 1C00 00FA"
	$"1D00 00FA 1E00 00FB 1F02 1F00 00FA 1000"
	$"00FA 1100 00FA 1200 00FA 1300 00FA 1400"
	$"00FA 1500 00FA 1600 00FA 1700 00FA 1800"
	$"00FA 1900 00FA 1A00 00FA 1B00 00FA 1C00"
	$"00FA 1D00 00FA 1E00 00FC 1FFF 1F00 0000"
	$"C700 01FA 1000 01FA 1100 01FA 1200 01FA"
	$"1300 01FA 1400 01FA 1500 01FA 1600 01FA"
	$"1700 01FA 1800 01FA 1900 01FA 1A00 01FA"
	$"1B00 01FA 1C00 01FA 1D00 01FA 1E00 01FA"
	$"1F01 0100 FA10 0000 FA11 0000 FA12 0000"
	$"FA13 0000 FA14 0000 FA15 0000 FA16 0000"
	$"FA17 0000 FA18 0000 FA19 0000 FA1A 0000"
	$"FA1B 0000 FA1C 0000 FA1D 0000 FA1E 0000"
	$"FB1F 021F 0000 FA10 0000 FA11 0000 FA12"
	$"0000 FA13 0000 FA14 0000 FA15 0000 FA16"
	$"0000 FA17 0000 FA18 0000 FA19 0000 FA1A"
	$"0000 FA1B 0000 FA1C 0000 FA1D 0000 FA1E"
	$"0000 FC1F FF1F 0000 00C7 0001 FA10 0001"
	$"FA11 0001 FA12 0001 FA13 0001 FA14 0001"
	$"FA15 0001 FA16 0001 FA17 0001 FA18 0001"
	$"FA19 0001 FA1A 0001 FA1B 0001 FA1C 0001"
	$"FA1D 0001 FA1E 0001 FA1F 0101 00FA 1000"
	$"00FA 1100 00FA 1200 00FA 1300 00FA 1400"
	$"00FA 1500 00FA 1600 00FA 1700 00FA 1800"
	$"00FA 1900 00FA 1A00 00FA 1B00 00FA 1C00"
	$"00FA 1D00 00FA 1E00 00FB 1F02 1F00 00FA"
	$"1000 00FA 1100 00FA 1200 00FA 1300 00FA"
	$"1400 00FA 1500 00FA 1600 00FA 1700 00FA"
	$"1800 00FA 1900 00FA 1A00 00FA 1B00 00FA"
	$"1C00 00FA 1D00 00FA 1E00 00FC 1FFF 1F00"
	$"0000 C700 01FA 1000 01FA 1100 01FA 1200"
	$"01FA 1300 01FA 1400 01FA 1500 01FA 1600"
	$"01FA 1700 01FA 1800 01FA 1900 01FA 1A00"
	$"01FA 1B00 01FA 1C00 01FA 1D00 01FA 1E00"
	$"01FA 1F01 0100 FA10 0000 FA11 0000 FA12"
	$"0000 FA13 0000 FA14 0000 FA15 0000 FA16"
	$"0000 FA17 0000 FA18 0000 FA19 0000 FA1A"
	$"0000 FA1B 0000 FA1C 0000 FA1D 0000 FA1E"
	$"0000 FB1F 021F 0000 FA10 0000 FA11 0000"
	$"FA12 0000 FA13 0000 FA14 0000 FA15 0000"
	$"FA16 0000 FA17 0000 FA18 0000 FA19 0000"
	$"FA1A 0000 FA1B 0000 FA1C 0000 FA1D 0000"
	$"FA1E 0000 FC1F FF1F 0000 00C7 0001 FA10"
	$"0001 FA11 0001 FA12 0001 FA13 0001 FA14"
	$"0001 FA15 0001 FA16 0001 FA17 0001 FA18"
	$"0001 FA19 0001 FA1A 0001 FA1B 0001 FA1C"
	$"0001 FA1D 0001 FA1E 0001 FA1F 0101 00FA"
	$"1000 00FA 1100 00FA 1200 00FA 1300 00FA"
	$"1400 00FA 1500 00FA 1600 00FA 1700 00FA"
	$"1800 00FA 1900 00FA 1A00 00FA 1B00 00FA"
	$"1C00 00FA 1D00 00FA 1E00 00FB 1F02 1F00"
	$"00FA 1000 00FA 1100 00FA 1200 00FA 1300"
	$"00FA 1400 00FA 1500 00FA 1600 00FA 1700"
	$"00FA 1800 00FA 1900 00FA 1A00 00FA 1B00"
	$"00FA 1C00 00FA 1D00 00FA 1E00 00FC 1FFF"
	$"1F00 0000 C700 01FA 1000 01FA 1100 01FA"
	$"1200 01FA 1300 01FA 1400 01FA 1500 01FA"
	$"1600 01FA 1700 01FA 1800 01FA 1900 01FA"
	$"1A00 01FA 1B00 01FA 1C00 01FA 1D00 01FA"
	$"1E00 01FA 1F01 0100 FA10 0000 FA11 0000"
	$"FA12 0000 FA13 0000 FA14 0000 FA15 0000"
	$"FA16 0000 FA17 0000 FA18 0000 FA19 0000"
	$"FA1A 0000 FA1B 0000 FA1C 0000 FA1D 0000"
	$"FA1E 0000 FB1F 021F 0000 FA10 0000 FA11"
	$"0000 FA12 0000 FA13 0000 FA14 0000 FA15"
	$"0000 FA16 0000 FA17 0000 FA18 0000 FA19"
	$"0000 FA1A 0000 FA1B 0000 FA1C 0000 FA1D"
	$"0000 FA1E 0000 FC1F FF1F 0000 00C7 0001"
	$"FA10 0001 FA11 0001 FA12 0001 FA13 0001"
	$"FA14 0001 FA15 0001 FA16 0001 FA17 0001"
	$"FA18 0001 FA19 0001 FA1A 0001 FA1B 0001"
	$"FA1C 0001 FA1D 0001 FA1E 0001 FA1F 0101"
	$"00FA 1000 00FA 1100 00FA 1200 00FA 1300"
	$"00FA 1400 00FA 1500 00FA 1600 00FA 1700"
	$"00FA 1800 00FA 1900 00FA 1A00 00FA 1B00"
	$"00FA 1C00 00FA 1D00 00FA 1E00 00FB 1F02"
	$"1F00 00FA 1000 00FA 1100 00FA 1200 00FA"
	$"1300 00FA 1400 00FA 1500 00FA 1600 00FA"
	$"1700 00FA 1800 00FA 1900 00FA 1A00 00FA"
	$"1B00 00FA 1C00 00FA 1D00 00FA 1E00 00FC"
	$"1FFF 1F00 0000 0A81 0100 0182 0081 00FE"
	$"0000 C700 01FA 2000 01FA 2100 01FA 2200"
	$"01FA 2300 01FA 2400 01FA 2500 01FA 2600"
	$"01FA 2700 01FA 2800 01FA 2900 01FA 2A00"
	$"01FA 2B00 01FA 2C00 01FA 2D00 01FA 2E00"
	$"01FA 2F01 0100 FA20 0000 FA21 0000 FA22"
	$"0000 FA23 0000 FA24 0000 FA25 0000 FA26"
	$"0000 FA27 0000 FA28 0000 FA29 0000 FA2A"
	$"0000 FA2B 0000 FA2C 0000 FA2D 0000 FA2E"
	$"0000 FB2F 022F 0000 FA20 0000 FA21 0000"
	$"FA22 0000 FA23 0000 FA24 0000 FA25 0000"
	$"FA26 0000 FA27 0000 FA28 0000 FA29 0000"
	$"FA2A 0000 FA2B 0000 FA2C 0000 FA2D 0000"
	$"FA2E 0000 FC2F FF2F 0000 00C7 0001 FA20"
	$"0001 FA21 0001 FA22 0001 FA23 0001 FA24"
	$"0001 FA25 0001 FA26 0001 FA27 0001 FA28"
	$"0001 FA29 0001 FA2A 0001 FA2B 0001 FA2C"
	$"0001 FA2D 0001 FA2E 0001 FA2F 0101 00FA"
	$"2000 00FA 2100 00FA 2200 00FA 2300 00FA"
	$"2400 00FA 2500 00FA 2600 00FA 2700 00FA"
	$"2800 00FA 2900 00FA 2A00 00FA 2B00 00FA"
	$"2C00 00FA 2D00 00FA 2E00 00FB 2F02 2F00"
	$"00FA 2000 00FA 2100 00FA 2200 00FA 2300"
	$"00FA 2400 00FA 2500 00FA 2600 00FA 2700"
	$"00FA 2800 00FA 2900 00FA 2A00 00FA 2B00"
	$"00FA 2C00 00FA 2D00 00FA 2E00 00FC 2FFF"
	$"2F00 0000 C700 01FA 2000 01FA 2100 01FA"
	$"2200 01FA 2300 01FA 2400 01FA 2500 01FA"
	$"2600 01FA 2700 01FA 2800 01FA 2900 01FA"
	$"2A00 01FA 2B00 01FA 2C00 01FA 2D00 01FA"
	$"2E00 01FA 2F01 0100 FA20 0000 FA21 0000"
	$"FA22 0000 FA23 0000 FA24 0000 FA25 0000"
	$"FA26 0000 FA27 0000 FA28 0000 FA29 0000"
	$"FA2A 0000 FA2B 0000 FA2C 0000 FA2D 0000"
	$"FA2E 0000 FB2F 022F 0000 FA20 0000 FA21"
	$"0000 FA22 0000 FA23 0000 FA24 0000 FA25"
	$"0000 FA26 0000 FA27 0000 FA28 0000 FA29"
	$"0000 FA2A 0000 FA2B 0000 FA2C 0000 FA2D"
	$"0000 FA2E 0000 FC2F FF2F 0000 00C7 0001"
	$"FA20 0001 FA21 0001 FA22 0001 FA23 0001"
	$"FA24 0001 FA25 0001 FA26 0001 FA27 0001"
	$"FA28 0001 FA29 0001 FA2A 0001 FA2B 0001"
	$"FA2C 0001 FA2D 0001 FA2E 0001 FA2F 0101"
	$"00FA 2000 00FA 2100 00FA 2200 00FA 2300"
	$"00FA 2400 00FA 2500 00FA 2600 00FA 2700"
	$"00FA 2800 00FA 2900 00FA 2A00 00FA 2B00"
	$"00FA 2C00 00FA 2D00 00FA 2E00 00FB 2F02"
	$"2F00 00FA 2000 00FA 2100 00FA 2200 00FA"
	$"2300 00FA 2400 00FA 2500 00FA 2600 00FA"
	$"2700 00FA 2800 00FA 2900 00FA 2A00 00FA"
	$"2B00 00FA 2C00 00FA 2D00 00FA 2E00 00FC"
	$"2FFF 2F00 0000 C700 01FA 2000 01FA 2100"
	$"01FA 2200 01FA 2300 01FA 2400 01FA 2500"
	$"01FA 2600 01FA 2700 01FA 2800 01FA 2900"
	$"01FA 2A00 01FA 2B00 01FA 2C00 01FA 2D00"
	$"01FA 2E00 01FA 2F01 0100 FA20 0000 FA21"
	$"0000 FA22 0000 FA23 0000 FA24 0000 FA25"
	$"0000 FA26 0000 FA27 0000 FA28 0000 FA29"
	$"0000 FA2A 0000 FA2B 0000 FA2C 0000 FA2D"
	$"0000 FA2E 0000 FB2F 022F 0000 FA20 0000"
	$"FA21 0000 FA22 0000 FA23 0000 FA24 0000"
	$"FA25 0000 FA26 0000 FA27 0000 FA28 0000"
	$"FA29 0000 FA2A 0000 FA2B 0000 FA2C 0000"
	$"FA2D 0000 FA2E 0000 FC2F FF2F 0000 00C7"
	$"0001 FA20 0001 FA21 0001 FA22 0001 FA23"
	$"0001 FA24 0001 FA25 0001 FA26 0001 FA27"
	$"0001 FA28 0001 FA29 0001 FA2A 0001 FA2B"
	$"0001 FA2C 0001 FA2D 0001 FA2E 0001 FA2F"
	$"0101 00FA 2000 00FA 2100 00FA 2200 00FA"
	$"2300 00FA 2400 00FA 2500 00FA 2600 00FA"
	$"2700 00FA 2800 00FA 2900 00FA 2A00 00FA"
	$"2B00 00FA 2C00 00FA 2D00 00FA 2E00 00FB"
	$"2F02 2F00 00FA 2000 00FA 2100 00FA 2200"
	$"00FA 2300 00FA 2400 00FA 2500 00FA 2600"
	$"00FA 2700 00FA 2800 00FA 2900 00FA 2A00"
	$"00FA 2B00 00FA 2C00 00FA 2D00 00FA 2E00"
	$"00FC 2FFF 2F00 0000 C700 01FA 2000 01FA"
	$"2100 01FA 2200 01FA 2300 01FA 2400 01FA"
	$"2500 01FA 2600 01FA 2700 01FA 2800 01FA"
	$"2900 01FA 2A00 01FA 2B00 01FA 2C00 01FA"
	$"2D00 01FA 2E00 01FA 2F01 0100 FA20 0000"
	$"FA21 0000 FA22 0000 FA23 0000 FA24 0000"
	$"FA25 0000 FA26 0000 FA27 0000 FA28 0000"
	$"FA29 0000 FA2A 0000 FA2B 0000 FA2C 0000"
	$"FA2D 0000 FA2E 0000 FB2F 022F 0000 FA20"
	$"0000 FA21 0000 FA22 0000 FA23 0000 FA24"
	$"0000 FA25 0000 FA26 0000 FA27 0000 FA28"
	$"0000 FA29 0000 FA2A 0000 FA2B 0000 FA2C"
	$"0000 FA2D 0000 FA2E 0000 FC2F FF2F 0000"
	$"000A 8101 0001 8200 8100 FE00 00C7 0001"
	$"FA30 0001 FA31 0001 FA32 0001 FA33 0001"
	$"FA34 0001 FA35 0001 FA36 0001 FA37 0001"
	$"FA38 0001 FA39 0001 FA3A 0001 FA3B 0001"
	$"FA3C 0001 FA3D 0001 FA3E 0001 FA3F 0101"
	$"00FA 3000 00FA 3100 00FA 3200 00FA 3300"
	$"00FA 3400 00FA 3500 00FA 3600 00FA 3700"
	$"00FA 3800 00FA 3900 00FA 3A00 00FA 3B00"
	$"00FA 3C00 00FA 3D00 00FA 3E00 00FB 3F02"
	$"3F00 00FA 3000 00FA 3100 00FA 3200 00FA"
	$"3300 00FA 3400 00FA 3500 00FA 3600 00FA"
	$"3700 00FA 3800 00FA 3900 00FA 3A00 00FA"
	$"3B00 00FA 3C00 00FA 3D00 00FA 3E00 00FC"
	$"3FFF 3F00 0000 C700 01FA 3000 01FA 3100"
	$"01FA 3200 01FA 3300 01FA 3400 01FA 3500"
	$"01FA 3600 01FA 3700 01FA 3800 01FA 3900"
	$"01FA 3A00 01FA 3B00 01FA 3C00 01FA 3D00"
	$"01FA 3E00 01FA 3F01 0100 FA30 0000 FA31"
	$"0000 FA32 0000 FA33 0000 FA34 0000 FA35"
	$"0000 FA36 0000 FA37 0000 FA38 0000 FA39"
	$"0000 FA3A 0000 FA3B 0000 FA3C 0000 FA3D"
	$"0000 FA3E 0000 FB3F 023F 0000 FA30 0000"
	$"FA31 0000 FA32 0000 FA33 0000 FA34 0000"
	$"FA35 0000 FA36 0000 FA37 0000 FA38 0000"
	$"FA39 0000 FA3A 0000 FA3B 0000 FA3C 0000"
	$"FA3D 0000 FA3E 0000 FC3F FF3F 0000 00C7"
	$"0001 FA30 0001 FA31 0001 FA32 0001 FA33"
	$"0001 FA34 0001 FA35 0001 FA36 0001 FA37"
	$"0001 FA38 0001 FA39 0001 FA3A 0001 FA3B"
	$"0001 FA3C 0001 FA3D 0001 FA3E 0001 FA3F"
	$"0101 00FA 3000 00FA 3100 00FA 3200 00FA"
	$"3300 00FA 3400 00FA 3500 00FA 3600 00FA"
	$"3700 00FA 3800 00FA 3900 00FA 3A00 00FA"
	$"3B00 00FA 3C00 00FA 3D00 00FA 3E00 00FB"
	$"3F02 3F00 00FA 3000 00FA 3100 00FA 3200"
	$"00FA 3300 00FA 3400 00FA 3500 00FA 3600"
	$"00FA 3700 00FA 3800 00FA 3900 00FA 3A00"
	$"00FA 3B00 00FA 3C00 00FA 3D00 00FA 3E00"
	$"00FC 3FFF 3F00 0000 C700 01FA 3000 01FA"
	$"3100 01FA 3200 01FA 3300 01FA 3400 01FA"
	$"3500 01FA 3600 01FA 3700 01FA 3800 01FA"
	$"3900 01FA 3A00 01FA 3B00 01FA 3C00 01FA"
	$"3D00 01FA 3E00 01FA 3F01 0100 FA30 0000"
	$"FA31 0000 FA32 0000 FA33 0000 FA34 0000"
	$"FA35 0000 FA36 0000 FA37 0000 FA38 0000"
	$"FA39 0000 FA3A 0000 FA3B 0000 FA3C 0000"
	$"FA3D 0000 FA3E 0000 FB3F 023F 0000 FA30"
	$"0000 FA31 0000 FA32 0000 FA33 0000 FA34"
	$"0000 FA35 0000 FA36 0000 FA37 0000 FA38"
	$"0000 FA39 0000 FA3A 0000 FA3B 0000 FA3C"
	$"0000 FA3D 0000 FA3E 0000 FC3F FF3F 0000"
	$"00C7 0001 FA30 0001 FA31 0001 FA32 0001"
	$"FA33 0001 FA34 0001 FA35 0001 FA36 0001"
	$"FA37 0001 FA38 0001 FA39 0001 FA3A 0001"
	$"FA3B 0001 FA3C 0001 FA3D 0001 FA3E 0001"
	$"FA3F 0101 00FA 3000 00FA 3100 00FA 3200"
	$"00FA 3300 00FA 3400 00FA 3500 00FA 3600"
	$"00FA 3700 00FA 3800 00FA 3900 00FA 3A00"
	$"00FA 3B00 00FA 3C00 00FA 3D00 00FA 3E00"
	$"00FB 3F02 3F00 00FA 3000 00FA 3100 00FA"
	$"3200 00FA 3300 00FA 3400 00FA 3500 00FA"
	$"3600 00FA 3700 00FA 3800 00FA 3900 00FA"
	$"3A00 00FA 3B00 00FA 3C00 00FA 3D00 00FA"
	$"3E00 00FC 3FFF 3F00 0000 C700 01FA 3000"
	$"01FA 3100 01FA 3200 01FA 3300 01FA 3400"
	$"01FA 3500 01FA 3600 01FA 3700 01FA 3800"
	$"01FA 3900 01FA 3A00 01FA 3B00 01FA 3C00"
	$"01FA 3D00 01FA 3E00 01FA 3F01 0100 FA30"
	$"0000 FA31 0000 FA32 0000 FA33 0000 FA34"
	$"0000 FA35 0000 FA36 0000 FA37 0000 FA38"
	$"0000 FA39 0000 FA3A 0000 FA3B 0000 FA3C"
	$"0000 FA3D 0000 FA3E 0000 FB3F 023F 0000"
	$"FA30 0000 FA31 0000 FA32 0000 FA33 0000"
	$"FA34 0000 FA35 0000 FA36 0000 FA37 0000"
	$"FA38 0000 FA39 0000 FA3A 0000 FA3B 0000"
	$"FA3C 0000 FA3D 0000 FA3E 0000 FC3F FF3F"
	$"0000 00C7 0001 FA30 0001 FA31 0001 FA32"
	$"0001 FA33 0001 FA34 0001 FA35 0001 FA36"
	$"0001 FA37 0001 FA38 0001 FA39 0001 FA3A"
	$"0001 FA3B 0001 FA3C 0001 FA3D 0001 FA3E"
	$"0001 FA3F 0101 00FA 3000 00FA 3100 00FA"
	$"3200 00FA 3300 00FA 3400 00FA 3500 00FA"
	$"3600 00FA 3700 00FA 3800 00FA 3900 00FA"
	$"3A00 00FA 3B00 00FA 3C00 00FA 3D00 00FA"
	$"3E00 00FB 3F02 3F00 00FA 3000 00FA 3100"
	$"00FA 3200 00FA 3300 00FA 3400 00FA 3500"
	$"00FA 3600 00FA 3700 00FA 3800 00FA 3900"
	$"00FA 3A00 00FA 3B00 00FA 3C00 00FA 3D00"
	$"00FA 3E00 00FC 3FFF 3F00 0000 0A81 0100"
	$"0182 0081 00FE 0000 C700 01FA 4000 01FA"
	$"4100 01FA 4200 01FA 4300 01FA 4400 01FA"
	$"4500 01FA 4600 01FA 4700 01FA 4800 01FA"
	$"4900 01FA 4A00 01FA 4B00 01FA 4C00 01FA"
	$"4D00 01FA 4E00 01FA 4F01 0100 FA40 0000"
	$"FA41 0000 FA42 0000 FA43 0000 FA44 0000"
	$"FA45 0000 FA46 0000 FA47 0000 FA48 0000"
	$"FA49 0000 FA4A 0000 FA4B 0000 FA4C 0000"
	$"FA4D 0000 FA4E 0000 FB4F 024F 0000 FA40"
	$"0000 FA41 0000 FA42 0000 FA43 0000 FA44"
	$"0000 FA45 0000 FA46 0000 FA47 0000 FA48"
	$"0000 FA49 0000 FA4A 0000 FA4B 0000 FA4C"
	$"0000 FA4D 0000 FA4E 0000 FC4F FF4F 0000"
	$"00C7 0001 FA40 0001 FA41 0001 FA42 0001"
	$"FA43 0001 FA44 0001 FA45 0001 FA46 0001"
	$"FA47 0001 FA48 0001 FA49 0001 FA4A 0001"
	$"FA4B 0001 FA4C 0001 FA4D 0001 FA4E 0001"
	$"FA4F 0101 00FA 4000 00FA 4100 00FA 4200"
	$"00FA 4300 00FA 4400 00FA 4500 00FA 4600"
	$"00FA 4700 00FA 4800 00FA 4900 00FA 4A00"
	$"00FA 4B00 00FA 4C00 00FA 4D00 00FA 4E00"
	$"00FB 4F02 4F00 00FA 4000 00FA 4100 00FA"
	$"4200 00FA 4300 00FA 4400 00FA 4500 00FA"
	$"4600 00FA 4700 00FA 4800 00FA 4900 00FA"
	$"4A00 00FA 4B00 00FA 4C00 00FA 4D00 00FA"
	$"4E00 00FC 4FFF 4F00 0000 C700 01FA 4000"
	$"01FA 4100 01FA 4200 01FA 4300 01FA 4400"
	$"01FA 4500 01FA 4600 01FA 4700 01FA 4800"
	$"01FA 4900 01FA 4A00 01FA 4B00 01FA 4C00"
	$"01FA 4D00 01FA 4E00 01FA 4F01 0100 FA40"
	$"0000 FA41 0000 FA42 0000 FA43 0000 FA44"
	$"0000 FA45 0000 FA46 0000 FA47 0000 FA48"
	$"0000 FA49 0000 FA4A 0000 FA4B 0000 FA4C"
	$"0000 FA4D 0000 FA4E 0000 FB4F 024F 0000"
	$"FA40 0000 FA41 0000 FA42 0000 FA43 0000"
	$"FA44 0000 FA45 0000 FA46 0000 FA47 0000"
	$"FA48 0000 FA49 0000 FA4A 0000 FA4B 0000"
	$"FA4C 0000 FA4D 0000 FA4E 0000 FC4F FF4F"
	$"0000 00C7 0001 FA40 0001 FA41 0001 FA42"
	$"0001 FA43 0001 FA44 0001 FA45 0001 FA46"
	$"0001 FA47 0001 FA48 0001 FA49 0001 FA4A"
	$"0001 FA4B 0001 FA4C 0001 FA4D 0001 FA4E"
	$"0001 FA4F 0101 00FA 4000 00FA 4100 00FA"
	$"4200 00FA 4300 00FA 4400 00FA 4500 00FA"
	$"4600 00FA 4700 00FA 4800 00FA 4900 00FA"
	$"4A00 00FA 4B00 00FA 4C00 00FA 4D00 00FA"
	$"4E00 00FB 4F02 4F00 00FA 4000 00FA 4100"
	$"00FA 4200 00FA 4300 00FA 4400 00FA 4500"
	$"00FA 4600 00FA 4700 00FA 4800 00FA 4900"
	$"00FA 4A00 00FA 4B00 00FA 4C00 00FA 4D00"
	$"00FA 4E00 00FC 4FFF 4F00 0000 C700 01FA"
	$"4000 01FA 4100 01FA 4200 01FA 4300 01FA"
	$"4400 01FA 4500 01FA 4600 01FA 4700 01FA"
	$"4800 01FA 4900 01FA 4A00 01FA 4B00 01FA"
	$"4C00 01FA 4D00 01FA 4E00 01FA 4F01 0100"
	$"FA40 0000 FA41 0000 FA42 0000 FA43 0000"
	$"FA44 0000 FA45 0000 FA46 0000 FA47 0000"
	$"FA48 0000 FA49 0000 FA4A 0000 FA4B 0000"
	$"FA4C 0000 FA4D 0000 FA4E 0000 FB4F 024F"
	$"0000 FA40 0000 FA41 0000 FA42 0000 FA43"
	$"0000 FA44 0000 FA45 0000 FA46 0000 FA47"
	$"0000 FA48 0000 FA49 0000 FA4A 0000 FA4B"
	$"0000 FA4C 0000 FA4D 0000 FA4E 0000 FC4F"
	$"FF4F 0000 00C7 0001 FA40 0001 FA41 0001"
	$"FA42 0001 FA43 0001 FA44 0001 FA45 0001"
	$"FA46 0001 FA47 0001 FA48 0001 FA49 0001"
	$"FA4A 0001 FA4B 0001 FA4C 0001 FA4D 0001"
	$"FA4E 0001 FA4F 0101 00FA 4000 00FA 4100"
	$"00FA 4200 00FA 4300 00FA 4400 00FA 4500"
	$"00FA 4600 00FA 4700 00FA 4800 00FA 4900"
	$"00FA 4A00 00FA 4B00 00FA 4C00 00FA 4D00"
	$"00FA 4E00 00FB 4F02 4F00 00FA 4000 00FA"
	$"4100 00FA 4200 00FA 4300 00FA 4400 00FA"
	$"4500 00FA 4600 00FA 4700 00FA 4800 00FA"
	$"4900 00FA 4A00 00FA 4B00 00FA 4C00 00FA"
	$"4D00 00FA 4E00 00FC 4FFF 4F00 0000 C700"
	$"01FA 4000 01FA 4100 01FA 4200 01FA 4300"
	$"01FA 4400 01FA 4500 01FA 4600 01FA 4700"
	$"01FA 4800 01FA 4900 01FA 4A00 01FA 4B00"
	$"01FA 4C00 01FA 4D00 01FA 4E00 01FA 4F01"
	$"0100 FA40 0000 FA41 0000 FA42 0000 FA43"
	$"0000 FA44 0000 FA45 0000 FA46 0000 FA47"
	$"0000 FA48 0000 FA49 0000 FA4A 0000 FA4B"
	$"0000 FA4C 0000 FA4D 0000 FA4E 0000 FB4F"
	$"024F 0000 FA40 0000 FA41 0000 FA42 0000"
	$"FA43 0000 FA44 0000 FA45 0000 FA46 0000"
	$"FA47 0000 FA48 0000 FA49 0000 FA4A 0000"
	$"FA4B 0000 FA4C 0000 FA4D 0000 FA4E 0000"
	$"FC4F FF4F 0000 000A 8101 0001 8200 8100"
	$"FE00 00C7 0001 FA50 0001 FA51 0001 FA52"
	$"0001 FA53 0001 FA54 0001 FA55 0001 FA56"
	$"0001 FA57 0001 FA58 0001 FA59 0001 FA5A"
	$"0001 FA5B 0001 FA5C 0001 FA5D 0001 FA5E"
	$"0001 FA5F 0101 00FA 5000 00FA 5100 00FA"
	$"5200 00FA 5300 00FA 5400 00FA 5500 00FA"
	$"5600 00FA 5700 00FA 5800 00FA 5900 00FA"
	$"5A00 00FA 5B00 00FA 5C00 00FA 5D00 00FA"
	$"5E00 00FB 5F02 5F00 00FA 5000 00FA 5100"
	$"00FA 5200 00FA 5300 00FA 5400 00FA 5500"
	$"00FA 5600 00FA 5700 00FA 5800 00FA 5900"
	$"00FA 5A00 00FA 5B00 00FA 5C00 00FA 5D00"
	$"00FA 5E00 00FC 5FFF 5F00 0000 C700 01FA"
	$"5000 01FA 5100 01FA 5200 01FA 5300 01FA"
	$"5400 01FA 5500 01FA 5600 01FA 5700 01FA"
	$"5800 01FA 5900 01FA 5A00 01FA 5B00 01FA"
	$"5C00 01FA 5D00 01FA 5E00 01FA 5F01 0100"
	$"FA50 0000 FA51 0000 FA52 0000 FA53 0000"
	$"FA54 0000 FA55 0000 FA56 0000 FA57 0000"
	$"FA58 0000 FA59 0000 FA5A 0000 FA5B 0000"
	$"FA5C 0000 FA5D 0000 FA5E 0000 FB5F 025F"
	$"0000 FA50 0000 FA51 0000 FA52 0000 FA53"
	$"0000 FA54 0000 FA55 0000 FA56 0000 FA57"
	$"0000 FA58 0000 FA59 0000 FA5A 0000 FA5B"
	$"0000 FA5C 0000 FA5D 0000 FA5E 0000 FC5F"
	$"FF5F 0000 00C7 0001 FA50 0001 FA51 0001"
	$"FA52 0001 FA53 0001 FA54 0001 FA55 0001"
	$"FA56 0001 FA57 0001 FA58 0001 FA59 0001"
	$"FA5A 0001 FA5B 0001 FA5C 0001 FA5D 0001"
	$"FA5E 0001 FA5F 0101 00FA 5000 00FA 5100"
	$"00FA 5200 00FA 5300 00FA 5400 00FA 5500"
	$"00FA 5600 00FA 5700 00FA 5800 00FA 5900"
	$"00FA 5A00 00FA 5B00 00FA 5C00 00FA 5D00"
	$"00FA 5E00 00FB 5F02 5F00 00FA 5000 00FA"
	$"5100 00FA 5200 00FA 5300 00FA 5400 00FA"
	$"5500 00FA 5600 00FA 5700 00FA 5800 00FA"
	$"5900 00FA 5A00 00FA 5B00 00FA 5C00 00FA"
	$"5D00 00FA 5E00 00FC 5FFF 5F00 0000 C700"
	$"01FA 5000 01FA 5100 01FA 5200 01FA 5300"
	$"01FA 5400 01FA 5500 01FA 5600 01FA 5700"
	$"01FA 5800 01FA 5900 01FA 5A00 01FA 5B00"
	$"01FA 5C00 01FA 5D00 01FA 5E00 01FA 5F01"
	$"0100 FA50 0000 FA51 0000 FA52 0000 FA53"
	$"0000 FA54 0000 FA55 0000 FA56 0000 FA57"
	$"0000 FA58 0000 FA59 0000 FA5A 0000 FA5B"
	$"0000 FA5C 0000 FA5D 0000 FA5E 0000 FB5F"
	$"025F 0000 FA50 0000 FA51 0000 FA52 0000"
	$"FA53 0000 FA54 0000 FA55 0000 FA56 0000"
	$"FA57 0000 FA58 0000 FA59 0000 FA5A 0000"
	$"FA5B 0000 FA5C 0000 FA5D 0000 FA5E 0000"
	$"FC5F FF5F 0000 00C7 0001 FA50 0001 FA51"
	$"0001 FA52 0001 FA53 0001 FA54 0001 FA55"
	$"0001 FA56 0001 FA57 0001 FA58 0001 FA59"
	$"0001 FA5A 0001 FA5B 0001 FA5C 0001 FA5D"
	$"0001 FA5E 0001 FA5F 0101 00FA 5000 00FA"
	$"5100 00FA 5200 00FA 5300 00FA 5400 00FA"
	$"5500 00FA 5600 00FA 5700 00FA 5800 00FA"
	$"5900 00FA 5A00 00FA 5B00 00FA 5C00 00FA"
	$"5D00 00FA 5E00 00FB 5F02 5F00 00FA 5000"
	$"00FA 5100 00FA 5200 00FA 5300 00FA 5400"
	$"00FA 5500 00FA 5600 00FA 5700 00FA 5800"
	$"00FA 5900 00FA 5A00 00FA 5B00 00FA 5C00"
	$"00FA 5D00 00FA 5E00 00FC 5FFF 5F00 0000"
	$"C700 01FA 5000 01FA 5100 01FA 5200 01FA"
	$"5300 01FA 5400 01FA 5500 01FA 5600 01FA"
	$"5700 01FA 5800 01FA 5900 01FA 5A00 01FA"
	$"5B00 01FA 5C00 01FA 5D00 01FA 5E00 01FA"
	$"5F01 0100 FA50 0000 FA51 0000 FA52 0000"
	$"FA53 0000 FA54 0000 FA55 0000 FA56 0000"
	$"FA57 0000 FA58 0000 FA59 0000 FA5A 0000"
	$"FA5B 0000 FA5C 0000 FA5D 0000 FA5E 0000"
	$"FB5F 025F 0000 FA50 0000 FA51 0000 FA52"
	$"0000 FA53 0000 FA54 0000 FA55 0000 FA56"
	$"0000 FA57 0000 FA58 0000 FA59 0000 FA5A"
	$"0000 FA5B 0000 FA5C 0000 FA5D 0000 FA5E"
	$"0000 FC5F FF5F 0000 00C7 0001 FA50 0001"
	$"FA51 0001 FA52 0001 FA53 0001 FA54 0001"
	$"FA55 0001 FA56 0001 FA57 0001 FA58 0001"
	$"FA59 0001 FA5A 0001 FA5B 0001 FA5C 0001"
	$"FA5D 0001 FA5E 0001 FA5F 0101 00FA 5000"
	$"00FA 5100 00FA 5200 00FA 5300 00FA 5400"
	$"00FA 5500 00FA 5600 00FA 5700 00FA 5800"
	$"00FA 5900 00FA 5A00 00FA 5B00 00FA 5C00"
	$"00FA 5D00 00FA 5E00 00FB 5F02 5F00 00FA"
	$"5000 00FA 5100 00FA 5200 00FA 5300 00FA"
	$"5400 00FA 5500 00FA 5600 00FA 5700 00FA"
	$"5800 00FA 5900 00FA 5A00 00FA 5B00 00FA"
	$"5C00 00FA 5D00 00FA 5E00 00FC 5FFF 5F00"
	$"0000 0A81 0100 0182 0081 00FE 0000 C700"
	$"01FA 6000 01FA 6100 01FA 6200 01FA 6300"
	$"01FA 6400 01FA 6500 01FA 6600 01FA 6700"
	$"01FA 6800 01FA 6900 01FA 6A00 01FA 6B00"
	$"01FA 6C00 01FA 6D00 01FA 6E00 01FA 6F01"
	$"0100 FA60 0000 FA61 0000 FA62 0000 FA63"
	$"0000 FA64 0000 FA65 0000 FA66 0000 FA67"
	$"0000 FA68 0000 FA69 0000 FA6A 0000 FA6B"
	$"0000 FA6C 0000 FA6D 0000 FA6E 0000 FB6F"
	$"026F 0000 FA60 0000 FA61 0000 FA62 0000"
	$"FA63 0000 FA64 0000 FA65 0000 FA66 0000"
	$"FA67 0000 FA68 0000 FA69 0000 FA6A 0000"
	$"FA6B 0000 FA6C 0000 FA6D 0000 FA6E 0000"
	$"FC6F FF6F 0000 00C7 0001 FA60 0001 FA61"
	$"0001 FA62 0001 FA63 0001 FA64 0001 FA65"
	$"0001 FA66 0001 FA67 0001 FA68 0001 FA69"
	$"0001 FA6A 0001 FA6B 0001 FA6C 0001 FA6D"
	$"0001 FA6E 0001 FA6F 0101 00FA 6000 00FA"
	$"6100 00FA 6200 00FA 6300 00FA 6400 00FA"
	$"6500 00FA 6600 00FA 6700 00FA 6800 00FA"
	$"6900 00FA 6A00 00FA 6B00 00FA 6C00 00FA"
	$"6D00 00FA 6E00 00FB 6F02 6F00 00FA 6000"
	$"00FA 6100 00FA 6200 00FA 6300 00FA 6400"
	$"00FA 6500 00FA 6600 00FA 6700 00FA 6800"
	$"00FA 6900 00FA 6A00 00FA 6B00 00FA 6C00"
	$"00FA 6D00 00FA 6E00 00FC 6FFF 6F00 0000"
	$"C700 01FA 6000 01FA 6100 01FA 6200 01FA"
	$"6300 01FA 6400 01FA 6500 01FA 6600 01FA"
	$"6700 01FA 6800 01FA 6900 01FA 6A00 01FA"
	$"6B00 01FA 6C00 01FA 6D00 01FA 6E00 01FA"
	$"6F01 0100 FA60 0000 FA61 0000 FA62 0000"
	$"FA63 0000 FA64 0000 FA65 0000 FA66 0000"
	$"FA67 0000 FA68 0000 FA69 0000 FA6A 0000"
	$"FA6B 0000 FA6C 0000 FA6D 0000 FA6E 0000"
	$"FB6F 026F 0000 FA60 0000 FA61 0000 FA62"
	$"0000 FA63 0000 FA64 0000 FA65 0000 FA66"
	$"0000 FA67 0000 FA68 0000 FA69 0000 FA6A"
	$"0000 FA6B 0000 FA6C 0000 FA6D 0000 FA6E"
	$"0000 FC6F FF6F 0000 00C7 0001 FA60 0001"
	$"FA61 0001 FA62 0001 FA63 0001 FA64 0001"
	$"FA65 0001 FA66 0001 FA67 0001 FA68 0001"
	$"FA69 0001 FA6A 0001 FA6B 0001 FA6C 0001"
	$"FA6D 0001 FA6E 0001 FA6F 0101 00FA 6000"
	$"00FA 6100 00FA 6200 00FA 6300 00FA 6400"
	$"00FA 6500 00FA 6600 00FA 6700 00FA 6800"
	$"00FA 6900 00FA 6A00 00FA 6B00 00FA 6C00"
	$"00FA 6D00 00FA 6E00 00FB 6F02 6F00 00FA"
	$"6000 00FA 6100 00FA 6200 00FA 6300 00FA"
	$"6400 00FA 6500 00FA 6600 00FA 6700 00FA"
	$"6800 00FA 6900 00FA 6A00 00FA 6B00 00FA"
	$"6C00 00FA 6D00 00FA 6E00 00FC 6FFF 6F00"
	$"0000 C700 01FA 6000 01FA 6100 01FA 6200"
	$"01FA 6300 01FA 6400 01FA 6500 01FA 6600"
	$"01FA 6700 01FA 6800 01FA 6900 01FA 6A00"
	$"01FA 6B00 01FA 6C00 01FA 6D00 01FA 6E00"
	$"01FA 6F01 0100 FA60 0000 FA61 0000 FA62"
	$"0000 FA63 0000 FA64 0000 FA65 0000 FA66"
	$"0000 FA67 0000 FA68 0000 FA69 0000 FA6A"
	$"0000 FA6B 0000 FA6C 0000 FA6D 0000 FA6E"
	$"0000 FB6F 026F 0000 FA60 0000 FA61 0000"
	$"FA62 0000 FA63 0000 FA64 0000 FA65 0000"
	$"FA66 0000 FA67 0000 FA68 0000 FA69 0000"
	$"FA6A 0000 FA6B 0000 FA6C 0000 FA6D 0000"
	$"FA6E 0000 FC6F FF6F 0000 00C7 0001 FA60"
	$"0001 FA61 0001 FA62 0001 FA63 0001 FA64"
	$"0001 FA65 0001 FA66 0001 FA67 0001 FA68"
	$"0001 FA69 0001 FA6A 0001 FA6B 0001 FA6C"
	$"0001 FA6D 0001 FA6E 0001 FA6F 0101 00FA"
	$"6000 00FA 6100 00FA 6200 00FA 6300 00FA"
	$"6400 00FA 6500 00FA 6600 00FA 6700 00FA"
	$"6800 00FA 6900 00FA 6A00 00FA 6B00 00FA"
	$"6C00 00FA 6D00 00FA 6E00 00FB 6F02 6F00"
	$"00FA 6000 00FA 6100 00FA 6200 00FA 6300"
	$"00FA 6400 00FA 6500 00FA 6600 00FA 6700"
	$"00FA 6800 00FA 6900 00FA 6A00 00FA 6B00"
	$"00FA 6C00 00FA 6D00 00FA 6E00 00FC 6FFF"
	$"6F00 0000 C700 01FA 6000 01FA 6100 01FA"
	$"6200 01FA 6300 01FA 6400 01FA 6500 01FA"
	$"6600 01FA 6700 01FA 6800 01FA 6900 01FA"
	$"6A00 01FA 6B00 01FA 6C00 01FA 6D00 01FA"
	$"6E00 01FA 6F01 0100 FA60 0000 FA61 0000"
	$"FA62 0000 FA63 0000 FA64 0000 FA65 0000"
	$"FA66 0000 FA67 0000 FA68 0000 FA69 0000"
	$"FA6A 0000 FA6B 0000 FA6C 0000 FA6D 0000"
	$"FA6E 0000 FB6F 026F 0000 FA60 0000 FA61"
	$"0000 FA62 0000 FA63 0000 FA64 0000 FA65"
	$"0000 FA66 0000 FA67 0000 FA68 0000 FA69"
	$"0000 FA6A 0000 FA6B 0000 FA6C 0000 FA6D"
	$"0000 FA6E 0000 FC6F FF6F 0000 000A 8101"
	$"0001 8200 8100 FE00 00C7 0001 FA70 0001"
	$"FA71 0001 FA72 0001 FA73 0001 FA74 0001"
	$"FA75 0001 FA76 0001 FA77 0001 FA78 0001"
	$"FA79 0001 FA7A 0001 FA7B 0001 FA7C 0001"
	$"FA7D 0001 FA7E 0001 FA7F 0101 00FA 7000"
	$"00FA 7100 00FA 7200 00FA 7300 00FA 7400"
	$"00FA 7500 00FA 7600 00FA 7700 00FA 7800"
	$"00FA 7900 00FA 7A00 00FA 7B00 00FA 7C00"
	$"00FA 7D00 00FA 7E00 00FB 7F02 7F00 00FA"
	$"7000 00FA 7100 00FA 7200 00FA 7300 00FA"
	$"7400 00FA 7500 00FA 7600 00FA 7700 00FA"
	$"7800 00FA 7900 00FA 7A00 00FA 7B00 00FA"
	$"7C00 00FA 7D00 00FA 7E00 00FC 7FFF 7F00"
	$"0000 C700 01FA 7000 01FA 7100 01FA 7200"
	$"01FA 7300 01FA 7400 01FA 7500 01FA 7600"
	$"01FA 7700 01FA 7800 01FA 7900 01FA 7A00"
	$"01FA 7B00 01FA 7C00 01FA 7D00 01FA 7E00"
	$"01FA 7F01 0100 FA70 0000 FA71 0000 FA72"
	$"0000 FA73 0000 FA74 0000 FA75 0000 FA76"
	$"0000 FA77 0000 FA78 0000 FA79 0000 FA7A"
	$"0000 FA7B 0000 FA7C 0000 FA7D 0000 FA7E"
	$"0000 FB7F 027F 0000 FA70 0000 FA71 0000"
	$"FA72 0000 FA73 0000 FA74 0000 FA75 0000"
	$"FA76 0000 FA77 0000 FA78 0000 FA79 0000"
	$"FA7A 0000 FA7B 0000 FA7C 0000 FA7D 0000"
	$"FA7E 0000 FC7F FF7F 0000 00C7 0001 FA70"
	$"0001 FA71 0001 FA72 0001 FA73 0001 FA74"
	$"0001 FA75 0001 FA76 0001 FA77 0001 FA78"
	$"0001 FA79 0001 FA7A 0001 FA7B 0001 FA7C"
	$"0001 FA7D 0001 FA7E 0001 FA7F 0101 00FA"
	$"7000 00FA 7100 00FA 7200 00FA 7300 00FA"
	$"7400 00FA 7500 00FA 7600 00FA 7700 00FA"
	$"7800 00FA 7900 00FA 7A00 00FA 7B00 00FA"
	$"7C00 00FA 7D00 00FA 7E00 00FB 7F02 7F00"
	$"00FA 7000 00FA 7100 00FA 7200 00FA 7300"
	$"00FA 7400 00FA 7500 00FA 7600 00FA 7700"
	$"00FA 7800 00FA 7900 00FA 7A00 00FA 7B00"
	$"00FA 7C00 00FA 7D00 00FA 7E00 00FC 7FFF"
	$"7F00 0000 C700 01FA 7000 01FA 7100 01FA"
	$"7200 01FA 7300 01FA 7400 01FA 7500 01FA"
	$"7600 01FA 7700 01FA 7800 01FA 7900 01FA"
	$"7A00 01FA 7B00 01FA 7C00 01FA 7D00 01FA"
	$"7E00 01FA 7F01 0100 FA70 0000 FA71 0000"
	$"FA72 0000 FA73 0000 FA74 0000 FA75 0000"
	$"FA76 0000 FA77 0000 FA78 0000 FA79 0000"
	$"FA7A 0000 FA7B 0000 FA7C 0000 FA7D 0000"
	$"FA7E 0000 FB7F 027F 0000 FA70 0000 FA71"
	$"0000 FA72 0000 FA73 0000 FA74 0000 FA75"
	$"0000 FA76 0000 FA77 0000 FA78 0000 FA79"
	$"0000 FA7A 0000 FA7B 0000 FA7C 0000 FA7D"
	$"0000 FA7E 0000 FC7F FF7F 0000 00C7 0001"
	$"FA70 0001 FA71 0001 FA72 0001 FA73 0001"
	$"FA74 0001 FA75 0001 FA76 0001 FA77 0001"
	$"FA78 0001 FA79 0001 FA7A 0001 FA7B 0001"
	$"FA7C 0001 FA7D 0001 FA7E 0001 FA7F 0101"
	$"00FA 7000 00FA 7100 00FA 7200 00FA 7300"
	$"00FA 7400 00FA 7500 00FA 7600 00FA 7700"
	$"00FA 7800 00FA 7900 00FA 7A00 00FA 7B00"
	$"00FA 7C00 00FA 7D00 00FA 7E00 00FB 7F02"
	$"7F00 00FA 7000 00FA 7100 00FA 7200 00FA"
	$"7300 00FA 7400 00FA 7500 00FA 7600 00FA"
	$"7700 00FA 7800 00FA 7900 00FA 7A00 00FA"
	$"7B00 00FA 7C00 00FA 7D00 00FA 7E00 00FC"
	$"7FFF 7F00 0000 C700 01FA 7000 01FA 7100"
	$"01FA 7200 01FA 7300 01FA 7400 01FA 7500"
	$"01FA 7600 01FA 7700 01FA 7800 01FA 7900"
	$"01FA 7A00 01FA 7B00 01FA 7C00 01FA 7D00"
	$"01FA 7E00 01FA 7F01 0100 FA70 0000 FA71"
	$"0000 FA72 0000 FA73 0000 FA74 0000 FA75"
	$"0000 FA76 0000 FA77 0000 FA78 0000 FA79"
	$"0000 FA7A 0000 FA7B 0000 FA7C 0000 FA7D"
	$"0000 FA7E 0000 FB7F 027F 0000 FA70 0000"
	$"FA71 0000 FA72 0000 FA73 0000 FA74 0000"
	$"FA75 0000 FA76 0000 FA77 0000 FA78 0000"
	$"FA79 0000 FA7A 0000 FA7B 0000 FA7C 0000"
	$"FA7D 0000 FA7E 0000 FC7F FF7F 0000 00C7"
	$"0001 FA70 0001 FA71 0001 FA72 0001 FA73"
	$"0001 FA74 0001 FA75 0001 FA76 0001 FA77"
	$"0001 FA78 0001 FA79 0001 FA7A 0001 FA7B"
	$"0001 FA7C 0001 FA7D 0001 FA7E 0001 FA7F"
	$"0101 00FA 7000 00FA 7100 00FA 7200 00FA"
	$"7300 00FA 7400 00FA 7500 00FA 7600 00FA"
	$"7700 00FA 7800 00FA 7900 00FA 7A00 00FA"
	$"7B00 00FA 7C00 00FA 7D00 00FA 7E00 00FB"
	$"7F02 7F00 00FA 7000 00FA 7100 00FA 7200"
	$"00FA 7300 00FA 7400 00FA 7500 00FA 7600"
	$"00FA 7700 00FA 7800 00FA 7900 00FA 7A00"
	$"00FA 7B00 00FA 7C00 00FA 7D00 00FA 7E00"
	$"00FC 7FFF 7F00 0000 0A81 0100 0182 0081"
	$"00FE 0000 C700 01FA 8000 01FA 8100 01FA"
	$"8200 01FA 8300 01FA 8400 01FA 8500 01FA"
	$"8600 01FA 8700 01FA 8800 01FA 8900 01FA"
	$"8A00 01FA 8B00 01FA 8C00 01FA 8D00 01FA"
	$"8E00 01FA 8F01 0100 FA80 0000 FA81 0000"
	$"FA82 0000 FA83 0000 FA84 0000 FA85 0000"
	$"FA86 0000 FA87 0000 FA88 0000 FA89 0000"
	$"FA8A 0000 FA8B 0000 FA8C 0000 FA8D 0000"
	$"FA8E 0000 FB8F 028F 0000 FA80 0000 FA81"
	$"0000 FA82 0000 FA83 0000 FA84 0000 FA85"
	$"0000 FA86 0000 FA87 0000 FA88 0000 FA89"
	$"0000 FA8A 0000 FA8B 0000 FA8C 0000 FA8D"
	$"0000 FA8E 0000 FC8F FF8F 0000 00C7 0001"
	$"FA80 0001 FA81 0001 FA82 0001 FA83 0001"
	$"FA84 0001 FA85 0001 FA86 0001 FA87 0001"
	$"FA88 0001 FA89 0001 FA8A 0001 FA8B 0001"
	$"FA8C 0001 FA8D 0001 FA8E 0001 FA8F 0101"
	$"00FA 8000 00FA 8100 00FA 8200 00FA 8300"
	$"00FA 8400 00FA 8500 00FA 8600 00FA 8700"
	$"00FA 8800 00FA 8900 00FA 8A00 00FA 8B00"
	$"00FA 8C00 00FA 8D00 00FA 8E00 00FB 8F02"
	$"8F00 00FA 8000 00FA 8100 00FA 8200 00FA"
	$"8300 00FA 8400 00FA 8500 00FA 8600 00FA"
	$"8700 00FA 8800 00FA 8900 00FA 8A00 00FA"
	$"8B00 00FA 8C00 00FA 8D00 00FA 8E00 00FC"
	$"8FFF 8F00 0000 C700 01FA 8000 01FA 8100"
	$"01FA 8200 01FA 8300 01FA 8400 01FA 8500"
	$"01FA 8600 01FA 8700 01FA 8800 01FA 8900"
	$"01FA 8A00 01FA 8B00 01FA 8C00 01FA 8D00"
	$"01FA 8E00 01FA 8F01 0100 FA80 0000 FA81"
	$"0000 FA82 0000 FA83 0000 FA84 0000 FA85"
	$"0000 FA86 0000 FA87 0000 FA88 0000 FA89"
	$"0000 FA8A 0000 FA8B 0000 FA8C 0000 FA8D"
	$"0000 FA8E 0000 FB8F 028F 0000 FA80 0000"
	$"FA81 0000 FA82 0000 FA83 0000 FA84 0000"
	$"FA85 0000 FA86 0000 FA87 0000 FA88 0000"
	$"FA89 0000 FA8A 0000 FA8B 0000 FA8C 0000"
	$"FA8D 0000 FA8E 0000 FC8F FF8F 0000 00C7"
	$"0001 FA80 0001 FA81 0001 FA82 0001 FA83"
	$"0001 FA84 0001 FA85 0001 FA86 0001 FA87"
	$"0001 FA88 0001 FA89 0001 FA8A 0001 FA8B"
	$"0001 FA8C 0001 FA8D 0001 FA8E 0001 FA8F"
	$"0101 00FA 8000 00FA 8100 00FA 8200 00FA"
	$"8300 00FA 8400 00FA 8500 00FA 8600 00FA"
	$"8700 00FA 8800 00FA 8900 00FA 8A00 00FA"
	$"8B00 00FA 8C00 00FA 8D00 00FA 8E00 00FB"
	$"8F02 8F00 00FA 8000 00FA 8100 00FA 8200"
	$"00FA 8300 00FA 8400 00FA 8500 00FA 8600"
	$"00FA 8700 00FA 8800 00FA 8900 00FA 8A00"
	$"00FA 8B00 00FA 8C00 00FA 8D00 00FA 8E00"
	$"00FC 8FFF 8F00 0000 C700 01FA 8000 01FA"
	$"8100 01FA 8200 01FA 8300 01FA 8400 01FA"
	$"8500 01FA 8600 01FA 8700 01FA 8800 01FA"
	$"8900 01FA 8A00 01FA 8B00 01FA 8C00 01FA"
	$"8D00 01FA 8E00 01FA 8F01 0100 FA80 0000"
	$"FA81 0000 FA82 0000 FA83 0000 FA84 0000"
	$"FA85 0000 FA86 0000 FA87 0000 FA88 0000"
	$"FA89 0000 FA8A 0000 FA8B 0000 FA8C 0000"
	$"FA8D 0000 FA8E 0000 FB8F 028F 0000 FA80"
	$"0000 FA81 0000 FA82 0000 FA83 0000 FA84"
	$"0000 FA85 0000 FA86 0000 FA87 0000 FA88"
	$"0000 FA89 0000 FA8A 0000 FA8B 0000 FA8C"
	$"0000 FA8D 0000 FA8E 0000 FC8F FF8F 0000"
	$"00C7 0001 FA80 0001 FA81 0001 FA82 0001"
	$"FA83 0001 FA84 0001 FA85 0001 FA86 0001"
	$"FA87 0001 FA88 0001 FA89 0001 FA8A 0001"
	$"FA8B 0001 FA8C 0001 FA8D 0001 FA8E 0001"
	$"FA8F 0101 00FA 8000 00FA 8100 00FA 8200"
	$"00FA 8300 00FA 8400 00FA 8500 00FA 8600"
	$"00FA 8700 00FA 8800 00FA 8900 00FA 8A00"
	$"00FA 8B00 00FA 8C00 00FA 8D00 00FA 8E00"
	$"00FB 8F02 8F00 00FA 8000 00FA 8100 00FA"
	$"8200 00FA 8300 00FA 8400 00FA 8500 00FA"
	$"8600 00FA 8700 00FA 8800 00FA 8900 00FA"
	$"8A00 00FA 8B00 00FA 8C00 00FA 8D00 00FA"
	$"8E00 00FC 8FFF 8F00 0000 C700 01FA 8000"
	$"01FA 8100 01FA 8200 01FA 8300 01FA 8400"
	$"01FA 8500 01FA 8600 01FA 8700 01FA 8800"
	$"01FA 8900 01FA 8A00 01FA 8B00 01FA 8C00"
	$"01FA 8D00 01FA 8E00 01FA 8F01 0100 FA80"
	$"0000 FA81 0000 FA82 0000 FA83 0000 FA84"
	$"0000 FA85 0000 FA86 0000 FA87 0000 FA88"
	$"0000 FA89 0000 FA8A 0000 FA8B 0000 FA8C"
	$"0000 FA8D 0000 FA8E 0000 FB8F 028F 0000"
	$"FA80 0000 FA81 0000 FA82 0000 FA83 0000"
	$"FA84 0000 FA85 0000 FA86 0000 FA87 0000"
	$"FA88 0000 FA89 0000 FA8A 0000 FA8B 0000"
	$"FA8C 0000 FA8D 0000 FA8E 0000 FC8F FF8F"
	$"0000 000A 8101 0001 8200 8100 FE00 00C7"
	$"0001 FA90 0001 FA91 0001 FA92 0001 FA93"
	$"0001 FA94 0001 FA95 0001 FA96 0001 FA97"
	$"0001 FA98 0001 FA99 0001 FA9A 0001 FA9B"
	$"0001 FA9C 0001 FA9D 0001 FA9E 0001 FA9F"
	$"0101 00FA 9000 00FA 9100 00FA 9200 00FA"
	$"9300 00FA 9400 00FA 9500 00FA 9600 00FA"
	$"9700 00FA 9800 00FA 9900 00FA 9A00 00FA"
	$"9B00 00FA 9C00 00FA 9D00 00FA 9E00 00FB"
	$"9F02 9F00 00FA 9000 00FA 9100 00FA 9200"
	$"00FA 9300 00FA 9400 00FA 9500 00FA 9600"
	$"00FA 9700 00FA 9800 00FA 9900 00FA 9A00"
	$"00FA 9B00 00FA 9C00 00FA 9D00 00FA 9E00"
	$"00FC 9FFF 9F00 0000 C700 01FA 9000 01FA"
	$"9100 01FA 9200 01FA 9300 01FA 9400 01FA"
	$"9500 01FA 9600 01FA 9700 01FA 9800 01FA"
	$"9900 01FA 9A00 01FA 9B00 01FA 9C00 01FA"
	$"9D00 01FA 9E00 01FA 9F01 0100 FA90 0000"
	$"FA91 0000 FA92 0000 FA93 0000 FA94 0000"
	$"FA95 0000 FA96 0000 FA97 0000 FA98 0000"
	$"FA99 0000 FA9A 0000 FA9B 0000 FA9C 0000"
	$"FA9D 0000 FA9E 0000 FB9F 029F 0000 FA90"
	$"0000 FA91 0000 FA92 0000 FA93 0000 FA94"
	$"0000 FA95 0000 FA96 0000 FA97 0000 FA98"
	$"0000 FA99 0000 FA9A 0000 FA9B 0000 FA9C"
	$"0000 FA9D 0000 FA9E 0000 FC9F FF9F 0000"
	$"00C7 0001 FA90 0001 FA91 0001 FA92 0001"
	$"FA93 0001 FA94 0001 FA95 0001 FA96 0001"
	$"FA97 0001 FA98 0001 FA99 0001 FA9A 0001"
	$"FA9B 0001 FA9C 0001 FA9D 0001 FA9E 0001"
	$"FA9F 0101 00FA 9000 00FA 9100 00FA 9200"
	$"00FA 9300 00FA 9400 00FA 9500 00FA 9600"
	$"00FA 9700 00FA 9800 00FA 9900 00FA 9A00"
	$"00FA 9B00 00FA 9C00 00FA 9D00 00FA 9E00"
	$"00FB 9F02 9F00 00FA 9000 00FA 9100 00FA"
	$"9200 00FA 9300 00FA 9400 00FA 9500 00FA"
	$"9600 00FA 9700 00FA 9800 00FA 9900 00FA"
	$"9A00 00FA 9B00 00FA 9C00 00FA 9D00 00FA"
	$"9E00 00FC 9FFF 9F00 0000 C700 01FA 9000"
	$"01FA 9100 01FA 9200 01FA 9300 01FA 9400"
	$"01FA 9500 01FA 9600 01FA 9700 01FA 9800"
	$"01FA 9900 01FA 9A00 01FA 9B00 01FA 9C00"
	$"01FA 9D00 01FA 9E00 01FA 9F01 0100 FA90"
	$"0000 FA91 0000 FA92 0000 FA93 0000 FA94"
	$"0000 FA95 0000 FA96 0000 FA97 0000 FA98"
	$"0000 FA99 0000 FA9A 0000 FA9B 0000 FA9C"
	$"0000 FA9D 0000 FA9E 0000 FB9F 029F 0000"
	$"FA90 0000 FA91 0000 FA92 0000 FA93 0000"
	$"FA94 0000 FA95 0000 FA96 0000 FA97 0000"
	$"FA98 0000 FA99 0000 FA9A 0000 FA9B 0000"
	$"FA9C 0000 FA9D 0000 FA9E 0000 FC9F FF9F"
	$"0000 00C7 0001 FA90 0001 FA91 0001 FA92"
	$"0001 FA93 0001 FA94 0001 FA95 0001 FA96"
	$"0001 FA97 0001 FA98 0001 FA99 0001 FA9A"
	$"0001 FA9B 0001 FA9C 0001 FA9D 0001 FA9E"
	$"0001 FA9F 0101 00FA 9000 00FA 9100 00FA"
	$"9200 00FA 9300 00FA 9400 00FA 9500 00FA"
	$"9600 00FA 9700 00FA 9800 00FA 9900 00FA"
	$"9A00 00FA 9B00 00FA 9C00 00FA 9D00 00FA"
	$"9E00 00FB 9F02 9F00 00FA 9000 00FA 9100"
	$"00FA 9200 00FA 9300 00FA 9400 00FA 9500"
	$"00FA 9600 00FA 9700 00FA 9800 00FA 9900"
	$"00FA 9A00 00FA 9B00 00FA 9C00 00FA 9D00"
	$"00FA 9E00 00FC 9FFF 9F00 0000 C700 01FA"
	$"9000 01FA 9100 01FA 9200 01FA 9300 01FA"
	$"9400 01FA 9500 01FA 9600 01FA 9700 01FA"
	$"9800 01FA 9900 01FA 9A00 01FA 9B00 01FA"
	$"9C00 01FA 9D00 01FA 9E00 01FA 9F01 0100"
	$"FA90 0000 FA91 0000 FA92 0000 FA93 0000"
	$"FA94 0000 FA95 0000 FA96 0000 FA97 0000"
	$"FA98 0000 FA99 0000 FA9A 0000 FA9B 0000"
	$"FA9C 0000 FA9D 0000 FA9E 0000 FB9F 029F"
	$"0000 FA90 0000 FA91 0000 FA92 0000 FA93"
	$"0000 FA94 0000 FA95 0000 FA96 0000 FA97"
	$"0000 FA98 0000 FA99 0000 FA9A 0000 FA9B"
	$"0000 FA9C 0000 FA9D 0000 FA9E 0000 FC9F"
	$"FF9F 0000 00C7 0001 FA90 0001 FA91 0001"
	$"FA92 0001 FA93 0001 FA94 0001 FA95 0001"
	$"FA96 0001 FA97 0001 FA98 0001 FA99 0001"
	$"FA9A 0001 FA9B 0001 FA9C 0001 FA9D 0001"
	$"FA9E 0001 FA9F 0101 00FA 9000 00FA 9100"
	$"00FA 9200 00FA 9300 00FA 9400 00FA 9500"
	$"00FA 9600 00FA 9700 00FA 9800 00FA 9900"
	$"00FA 9A00 00FA 9B00 00FA 9C00 00FA 9D00"
	$"00FA 9E00 00FB 9F02 9F00 00FA 9000 00FA"
	$"9100 00FA 9200 00FA 9300 00FA 9400 00FA"
	$"9500 00FA 9600 00FA 9700 00FA 9800 00FA"
	$"9900 00FA 9A00 00FA 9B00 00FA 9C00 00FA"
	$"9D00 00FA 9E00 00FC 9FFF 9F00 0000 0A81"
	$"0100 0182 0081 00FE 0000 C700 01FA A000"
	$"01FA A100 01FA A200 01FA A300 01FA A400"
	$"01FA A500 01FA A600 01FA A700 01FA A800"
	$"01FA A900 01FA AA00 01FA AB00 01FA AC00"
	$"01FA AD00 01FA AE00 01FA AF01 0100 FAA0"
	$"0000 FAA1 0000 FAA2 0000 FAA3 0000 FAA4"
	$"0000 FAA5 0000 FAA6 0000 FAA7 0000 FAA8"
	$"0000 FAA9 0000 FAAA 0000 FAAB 0000 FAAC"
	$"0000 FAAD 0000 FAAE 0000 FBAF 02AF 0000"
	$"FAA0 0000 FAA1 0000 FAA2 0000 FAA3 0000"
	$"FAA4 0000 FAA5 0000 FAA6 0000 FAA7 0000"
	$"FAA8 0000 FAA9 0000 FAAA 0000 FAAB 0000"
	$"FAAC 0000 FAAD 0000 FAAE 0000 FCAF FFAF"
	$"0000 00C7 0001 FAA0 0001 FAA1 0001 FAA2"
	$"0001 FAA3 0001 FAA4 0001 FAA5 0001 FAA6"
	$"0001 FAA7 0001 FAA8 0001 FAA9 0001 FAAA"
	$"0001 FAAB 0001 FAAC 0001 FAAD 0001 FAAE"
	$"0001 FAAF 0101 00FA A000 00FA A100 00FA"
	$"A200 00FA A300 00FA A400 00FA A500 00FA"
	$"A600 00FA A700 00FA A800 00FA A900 00FA"
	$"AA00 00FA AB00 00FA AC00 00FA AD00 00FA"
	$"AE00 00FB AF02 AF00 00FA A000 00FA A100"
	$"00FA A200 00FA A300 00FA A400 00FA A500"
	$"00FA A600 00FA A700 00FA A800 00FA A900"
	$"00FA AA00 00FA AB00 00FA AC00 00FA AD00"
	$"00FA AE00 00FC AFFF AF00 0000 C700 01FA"
	$"A000 01FA A100 01FA A200 01FA A300 01FA"
	$"A400 01FA A500 01FA A600 01FA A700 01FA"
	$"A800 01FA A900 01FA AA00 01FA AB00 01FA"
	$"AC00 01FA AD00 01FA AE00 01FA AF01 0100"
	$"FAA0 0000 FAA1 0000 FAA2 0000 FAA3 0000"
	$"FAA4 0000 FAA5 0000 FAA6 0000 FAA7 0000"
	$"FAA8 0000 FAA9 0000 FAAA 0000 FAAB 0000"
	$"FAAC 0000 FAAD 0000 FAAE 0000 FBAF 02AF"
	$"0000 FAA0 0000 FAA1 0000 FAA2 0000 FAA3"
	$"0000 FAA4 0000 FAA5 0000 FAA6 0000 FAA7"
	$"0000 FAA8 0000 FAA9 0000 FAAA 0000 FAAB"
	$"0000 FAAC 0000 FAAD 0000 FAAE 0000 FCAF"
	$"FFAF 0000 00C7 0001 FAA0 0001 FAA1 0001"
	$"FAA2 0001 FAA3 0001 FAA4 0001 FAA5 0001"
	$"FAA6 0001 FAA7 0001 FAA8 0001 FAA9 0001"
	$"FAAA 0001 FAAB 0001 FAAC 0001 FAAD 0001"
	$"FAAE 0001 FAAF 0101 00FA A000 00FA A100"
	$"00FA A200 00FA A300 00FA A400 00FA A500"
	$"00FA A600 00FA A700 00FA A800 00FA A900"
	$"00FA AA00 00FA AB00 00FA AC00 00FA AD00"
	$"00FA AE00 00FB AF02 AF00 00FA A000 00FA"
	$"A100 00FA A200 00FA A300 00FA A400 00FA"
	$"A500 00FA A600 00FA A700 00FA A800 00FA"
	$"A900 00FA AA00 00FA AB00 00FA AC00 00FA"
	$"AD00 00FA AE00 00FC AFFF AF00 0000 C700"
	$"01FA A000 01FA A100 01FA A200 01FA A300"
	$"01FA A400 01FA A500 01FA A600 01FA A700"
	$"01FA A800 01FA A900 01FA AA00 01FA AB00"
	$"01FA AC00 01FA AD00 01FA AE00 01FA AF01"
	$"0100 FAA0 0000 FAA1 0000 FAA2 0000 FAA3"
	$"0000 FAA4 0000 FAA5 0000 FAA6 0000 FAA7"
	$"0000 FAA8 0000 FAA9 0000 FAAA 0000 FAAB"
	$"0000 FAAC 0000 FAAD 0000 FAAE 0000 FBAF"
	$"02AF 0000 FAA0 0000 FAA1 0000 FAA2 0000"
	$"FAA3 0000 FAA4 0000 FAA5 0000 FAA6 0000"
	$"FAA7 0000 FAA8 0000 FAA9 0000 FAAA 0000"
	$"FAAB 0000 FAAC 0000 FAAD 0000 FAAE 0000"
	$"FCAF FFAF 0000 00C7 0001 FAA0 0001 FAA1"
	$"0001 FAA2 0001 FAA3 0001 FAA4 0001 FAA5"
	$"0001 FAA6 0001 FAA7 0001 FAA8 0001 FAA9"
	$"0001 FAAA 0001 FAAB 0001 FAAC 0001 FAAD"
	$"0001 FAAE 0001 FAAF 0101 00FA A000 00FA"
	$"A100 00FA A200 00FA A300 00FA A400 00FA"
	$"A500 00FA A600 00FA A700 00FA A800 00FA"
	$"A900 00FA AA00 00FA AB00 00FA AC00 00FA"
	$"AD00 00FA AE00 00FB AF02 AF00 00FA A000"
	$"00FA A100 00FA A200 00FA A300 00FA A400"
	$"00FA A500 00FA A600 00FA A700 00FA A800"
	$"00FA A900 00FA AA00 00FA AB00 00FA AC00"
	$"00FA AD00 00FA AE00 00FC AFFF AF00 0000"
	$"C700 01FA A000 01FA A100 01FA A200 01FA"
	$"A300 01FA A400 01FA A500 01FA A600 01FA"
	$"A700 01FA A800 01FA A900 01FA AA00 01FA"
	$"AB00 01FA AC00 01FA AD00 01FA AE00 01FA"
	$"AF01 0100 FAA0 0000 FAA1 0000 FAA2 0000"
	$"FAA3 0000 FAA4 0000 FAA5 0000 FAA6 0000"
	$"FAA7 0000 FAA8 0000 FAA9 0000 FAAA 0000"
	$"FAAB 0000 FAAC 0000 FAAD 0000 FAAE 0000"
	$"FBAF 02AF 0000 FAA0 0000 FAA1 0000 FAA2"
	$"0000 FAA3 0000 FAA4 0000 FAA5 0000 FAA6"
	$"0000 FAA7 0000 FAA8 0000 FAA9 0000 FAAA"
	$"0000 FAAB 0000 FAAC 0000 FAAD 0000 FAAE"
	$"0000 FCAF FFAF 0000 000A 8101 0001 8200"
	$"8100 FE00 00C7 0001 FAB0 0001 FAB1 0001"
	$"FAB2 0001 FAB3 0001 FAB4 0001 FAB5 0001"
	$"FAB6 0001 FAB7 0001 FAB8 0001 FAB9 0001"
	$"FABA 0001 FABB 0001 FABC 0001 FABD 0001"
	$"FABE 0001 FABF 0101 00FA B000 00FA B100"
	$"00FA B200 00FA B300 00FA B400 00FA B500"
	$"00FA B600 00FA B700 00FA B800 00FA B900"
	$"00FA BA00 00FA BB00 00FA BC00 00FA BD00"
	$"00FA BE00 00FB BF02 BF00 00FA B000 00FA"
	$"B100 00FA B200 00FA B300 00FA B400 00FA"
	$"B500 00FA B600 00FA B700 00FA B800 00FA"
	$"B900 00FA BA00 00FA BB00 00FA BC00 00FA"
	$"BD00 00FA BE00 00FC BFFF BF00 0000 C700"
	$"01FA B000 01FA B100 01FA B200 01FA B300"
	$"01FA B400 01FA B500 01FA B600 01FA B700"
	$"01FA B800 01FA B900 01FA BA00 01FA BB00"
	$"01FA BC00 01FA BD00 01FA BE00 01FA BF01"
	$"0100 FAB0 0000 FAB1 0000 FAB2 0000 FAB3"
	$"0000 FAB4 0000 FAB5 0000 FAB6 0000 FAB7"
	$"0000 FAB8 0000 FAB9 0000 FABA 0000 FABB"
	$"0000 FABC 0000 FABD 0000 FABE 0000 FBBF"
	$"02BF 0000 FAB0 0000 FAB1 0000 FAB2 0000"
	$"FAB3 0000 FAB4 0000 FAB5 0000 FAB6 0000"
	$"FAB7 0000 FAB8 0000 FAB9 0000 FABA 0000"
	$"FABB 0000 FABC 0000 FABD 0000 FABE 0000"
	$"FCBF FFBF 0000 00C7 0001 FAB0 0001 FAB1"
	$"0001 FAB2 0001 FAB3 0001 FAB4 0001 FAB5"
	$"0001 FAB6 0001 FAB7 0001 FAB8 0001 FAB9"
	$"0001 FABA 0001 FABB 0001 FABC 0001 FABD"
	$"0001 FABE 0001 FABF 0101 00FA B000 00FA"
	$"B100 00FA B200 00FA B300 00FA B400 00FA"
	$"B500 00FA B600 00FA B700 00FA B800 00FA"
	$"B900 00FA BA00 00FA BB00 00FA BC00 00FA"
	$"BD00 00FA BE00 00FB BF02 BF00 00FA B000"
	$"00FA B100 00FA B200 00FA B300 00FA B400"
	$"00FA B500 00FA B600 00FA B700 00FA B800"
	$"00FA B900 00FA BA00 00FA BB00 00FA BC00"
	$"00FA BD00 00FA BE00 00FC BFFF BF00 0000"
	$"C700 01FA B000 01FA B100 01FA B200 01FA"
	$"B300 01FA B400 01FA B500 01FA B600 01FA"
	$"B700 01FA B800 01FA B900 01FA BA00 01FA"
	$"BB00 01FA BC00 01FA BD00 01FA BE00 01FA"
	$"BF01 0100 FAB0 0000 FAB1 0000 FAB2 0000"
	$"FAB3 0000 FAB4 0000 FAB5 0000 FAB6 0000"
	$"FAB7 0000 FAB8 0000 FAB9 0000 FABA 0000"
	$"FABB 0000 FABC 0000 FABD 0000 FABE 0000"
	$"FBBF 02BF 0000 FAB0 0000 FAB1 0000 FAB2"
	$"0000 FAB3 0000 FAB4 0000 FAB5 0000 FAB6"
	$"0000 FAB7 0000 FAB8 0000 FAB9 0000 FABA"
	$"0000 FABB 0000 FABC 0000 FABD 0000 FABE"
	$"0000 FCBF FFBF 0000 00C7 0001 FAB0 0001"
	$"FAB1 0001 FAB2 0001 FAB3 0001 FAB4 0001"
	$"FAB5 0001 FAB6 0001 FAB7 0001 FAB8 0001"
	$"FAB9 0001 FABA 0001 FABB 0001 FABC 0001"
	$"FABD 0001 FABE 0001 FABF 0101 00FA B000"
	$"00FA B100 00FA B200 00FA B300 00FA B400"
	$"00FA B500 00FA B600 00FA B700 00FA B800"
	$"00FA B900 00FA BA00 00FA BB00 00FA BC00"
	$"00FA BD00 00FA BE00 00FB BF02 BF00 00FA"
	$"B000 00FA B100 00FA B200 00FA B300 00FA"
	$"B400 00FA B500 00FA B600 00FA B700 00FA"
	$"B800 00FA B900 00FA BA00 00FA BB00 00FA"
	$"BC00 00FA BD00 00FA BE00 00FC BFFF BF00"
	$"0000 C700 01FA B000 01FA B100 01FA B200"
	$"01FA B300 01FA B400 01FA B500 01FA B600"
	$"01FA B700 01FA B800 01FA B900 01FA BA00"
	$"01FA BB00 01FA BC00 01FA BD00 01FA BE00"
	$"01FA BF01 0100 FAB0 0000 FAB1 0000 FAB2"
	$"0000 FAB3 0000 FAB4 0000 FAB5 0000 FAB6"
	$"0000 FAB7 0000 FAB8 0000 FAB9 0000 FABA"
	$"0000 FABB 0000 FABC 0000 FABD 0000 FABE"
	$"0000 FBBF 02BF 0000 FAB0 0000 FAB1 0000"
	$"FAB2 0000 FAB3 0000 FAB4 0000 FAB5 0000"
	$"FAB6 0000 FAB7 0000 FAB8 0000 FAB9 0000"
	$"FABA 0000 FABB 0000 FABC 0000 FABD 0000"
	$"FABE 0000 FCBF FFBF 0000 00C7 0001 FAB0"
	$"0001 FAB1 0001 FAB2 0001 FAB3 0001 FAB4"
	$"0001 FAB5 0001 FAB6 0001 FAB7 0001 FAB8"
	$"0001 FAB9 0001 FABA 0001 FABB 0001 FABC"
	$"0001 FABD 0001 FABE 0001 FABF 0101 00FA"
	$"B000 00FA B100 00FA B200 00FA B300 00FA"
	$"B400 00FA B500 00FA B600 00FA B700 00FA"
	$"B800 00FA B900 00FA BA00 00FA BB00 00FA"
	$"BC00 00FA BD00 00FA BE00 00FB BF02 BF00"
	$"00FA B000 00FA B100 00FA B200 00FA B300"
	$"00FA B400 00FA B500 00FA B600 00FA B700"
	$"00FA B800 00FA B900 00FA BA00 00FA BB00"
	$"00FA BC00 00FA BD00 00FA BE00 00FC BFFF"
	$"BF00 0000 0A81 0100 0182 0081 00FE 0000"
	$"C700 01FA C000 01FA C100 01FA C200 01FA"
	$"C300 01FA C400 01FA C500 01FA C600 01FA"
	$"C700 01FA C800 01FA C900 01FA CA00 01FA"
	$"CB00 01FA CC00 01FA CD00 01FA CE00 01FA"
	$"CF01 0100 FAC0 0000 FAC1 0000 FAC2 0000"
	$"FAC3 0000 FAC4 0000 FAC5 0000 FAC6 0000"
	$"FAC7 0000 FAC8 0000 FAC9 0000 FACA 0000"
	$"FACB 0000 FACC 0000 FACD 0000 FACE 0000"
	$"FBCF 02CF 0000 FAC0 0000 FAC1 0000 FAC2"
	$"0000 FAC3 0000 FAC4 0000 FAC5 0000 FAC6"
	$"0000 FAC7 0000 FAC8 0000 FAC9 0000 FACA"
	$"0000 FACB 0000 FACC 0000 FACD 0000 FACE"
	$"0000 FCCF FFCF 0000 00C7 0001 FAC0 0001"
	$"FAC1 0001 FAC2 0001 FAC3 0001 FAC4 0001"
	$"FAC5 0001 FAC6 0001 FAC7 0001 FAC8 0001"
	$"FAC9 0001 FACA 0001 FACB 0001 FACC 0001"
	$"FACD 0001 FACE 0001 FACF 0101 00FA C000"
	$"00FA C100 00FA C200 00FA C300 00FA C400"
	$"00FA C500 00FA C600 00FA C700 00FA C800"
	$"00FA C900 00FA CA00 00FA CB00 00FA CC00"
	$"00FA CD00 00FA CE00 00FB CF02 CF00 00FA"
	$"C000 00FA C100 00FA C200 00FA C300 00FA"
	$"C400 00FA C500 00FA C600 00FA C700 00FA"
	$"C800 00FA C900 00FA CA00 00FA CB00 00FA"
	$"CC00 00FA CD00 00FA CE00 00FC CFFF CF00"
	$"0000 C700 01FA C000 01FA C100 01FA C200"
	$"01FA C300 01FA C400 01FA C500 01FA C600"
	$"01FA C700 01FA C800 01FA C900 01FA CA00"
	$"01FA CB00 01FA CC00 01FA CD00 01FA CE00"
	$"01FA CF01 0100 FAC0 0000 FAC1 0000 FAC2"
	$"0000 FAC3 0000 FAC4 0000 FAC5 0000 FAC6"
	$"0000 FAC7 0000 FAC8 0000 FAC9 0000 FACA"
	$"0000 FACB 0000 FACC 0000 FACD 0000 FACE"
	$"0000 FBCF 02CF 0000 FAC0 0000 FAC1 0000"
	$"FAC2 0000 FAC3 0000 FAC4 0000 FAC5 0000"
	$"FAC6 0000 FAC7 0000 FAC8 0000 FAC9 0000"
	$"FACA 0000 FACB 0000 FACC 0000 FACD 0000"
	$"FACE 0000 FCCF FFCF 0000 00C7 0001 FAC0"
	$"0001 FAC1 0001 FAC2 0001 FAC3 0001 FAC4"
	$"0001 FAC5 0001 FAC6 0001 FAC7 0001 FAC8"
	$"0001 FAC9 0001 FACA 0001 FACB 0001 FACC"
	$"0001 FACD 0001 FACE 0001 FACF 0101 00FA"
	$"C000 00FA C100 00FA C200 00FA C300 00FA"
	$"C400 00FA C500 00FA C600 00FA C700 00FA"
	$"C800 00FA C900 00FA CA00 00FA CB00 00FA"
	$"CC00 00FA CD00 00FA CE00 00FB CF02 CF00"
	$"00FA C000 00FA C100 00FA C200 00FA C300"
	$"00FA C400 00FA C500 00FA C600 00FA C700"
	$"00FA C800 00FA C900 00FA CA00 00FA CB00"
	$"00FA CC00 00FA CD00 00FA CE00 00FC CFFF"
	$"CF00 0000 C700 01FA C000 01FA C100 01FA"
	$"C200 01FA C300 01FA C400 01FA C500 01FA"
	$"C600 01FA C700 01FA C800 01FA C900 01FA"
	$"CA00 01FA CB00 01FA CC00 01FA CD00 01FA"
	$"CE00 01FA CF01 0100 FAC0 0000 FAC1 0000"
	$"FAC2 0000 FAC3 0000 FAC4 0000 FAC5 0000"
	$"FAC6 0000 FAC7 0000 FAC8 0000 FAC9 0000"
	$"FACA 0000 FACB 0000 FACC 0000 FACD 0000"
	$"FACE 0000 FBCF 02CF 0000 FAC0 0000 FAC1"
	$"0000 FAC2 0000 FAC3 0000 FAC4 0000 FAC5"
	$"0000 FAC6 0000 FAC7 0000 FAC8 0000 FAC9"
	$"0000 FACA 0000 FACB 0000 FACC 0000 FACD"
	$"0000 FACE 0000 FCCF FFCF 0000 00C7 0001"
	$"FAC0 0001 FAC1 0001 FAC2 0001 FAC3 0001"
	$"FAC4 0001 FAC5 0001 FAC6 0001 FAC7 0001"
	$"FAC8 0001 FAC9 0001 FACA 0001 FACB 0001"
	$"FACC 0001 FACD 0001 FACE 0001 FACF 0101"
	$"00FA C000 00FA C100 00FA C200 00FA C300"
	$"00FA C400 00FA C500 00FA C600 00FA C700"
	$"00FA C800 00FA C900 00FA CA00 00FA CB00"
	$"00FA CC00 00FA CD00 00FA CE00 00FB CF02"
	$"CF00 00FA C000 00FA C100 00FA C200 00FA"
	$"C300 00FA C400 00FA C500 00FA C600 00FA"
	$"C700 00FA C800 00FA C900 00FA CA00 00FA"
	$"CB00 00FA CC00 00FA CD00 00FA CE00 00FC"
	$"CFFF CF00 0000 C700 01FA C000 01FA C100"
	$"01FA C200 01FA C300 01FA C400 01FA C500"
	$"01FA C600 01FA C700 01FA C800 01FA C900"
	$"01FA CA00 01FA CB00 01FA CC00 01FA CD00"
	$"01FA CE00 01FA CF01 0100 FAC0 0000 FAC1"
	$"0000 FAC2 0000 FAC3 0000 FAC4 0000 FAC5"
	$"0000 FAC6 0000 FAC7 0000 FAC8 0000 FAC9"
	$"0000 FACA 0000 FACB 0000 FACC 0000 FACD"
	$"0000 FACE 0000 FBCF 02CF 0000 FAC0 0000"
	$"FAC1 0000 FAC2 0000 FAC3 0000 FAC4 0000"
	$"FAC5 0000 FAC6 0000 FAC7 0000 FAC8 0000"
	$"FAC9 0000 FACA 0000 FACB 0000 FACC 0000"
	$"FACD 0000 FACE 0000 FCCF FFCF 0000 000A"
	$"8101 0001 8200 8100 FE00 00C7 0001 FAD0"
	$"0001 FAD1 0001 FAD2 0001 FAD3 0001 FAD4"
	$"0001 FAD5 0001 FAD6 0001 FAD7 0001 FAD8"
	$"0001 FAD9 0001 FADA 0001 FADB 0001 FADC"
	$"0001 FADD 0001 FADE 0001 FADF 0101 00FA"
	$"D000 00FA D100 00FA D200 00FA D300 00FA"
	$"D400 00FA D500 00FA D600 00FA D700 00FA"
	$"D800 00FA D900 00FA DA00 00FA DB00 00FA"
	$"DC00 00FA DD00 00FA DE00 00FB DF02 DF00"
	$"00FA D000 00FA D100 00FA D200 00FA D300"
	$"00FA D400 00FA D500 00FA D600 00FA D700"
	$"00FA D800 00FA D900 00FA DA00 00FA DB00"
	$"00FA DC00 00FA DD00 00FA DE00 00FC DFFF"
	$"DF00 0000 C700 01FA D000 01FA D100 01FA"
	$"D200 01FA D300 01FA D400 01FA D500 01FA"
	$"D600 01FA D700 01FA D800 01FA D900 01FA"
	$"DA00 01FA DB00 01FA DC00 01FA DD00 01FA"
	$"DE00 01FA DF01 0100 FAD0 0000 FAD1 0000"
	$"FAD2 0000 FAD3 0000 FAD4 0000 FAD5 0000"
	$"FAD6 0000 FAD7 0000 FAD8 0000 FAD9 0000"
	$"FADA 0000 FADB 0000 FADC 0000 FADD 0000"
	$"FADE 0000 FBDF 02DF 0000 FAD0 0000 FAD1"
	$"0000 FAD2 0000 FAD3 0000 FAD4 0000 FAD5"
	$"0000 FAD6 0000 FAD7 0000 FAD8 0000 FAD9"
	$"0000 FADA 0000 FADB 0000 FADC 0000 FADD"
	$"0000 FADE 0000 FCDF FFDF 0000 00C7 0001"
	$"FAD0 0001 FAD1 0001 FAD2 0001 FAD3 0001"
	$"FAD4 0001 FAD5 0001 FAD6 0001 FAD7 0001"
	$"FAD8 0001 FAD9 0001 FADA 0001 FADB 0001"
	$"FADC 0001 FADD 0001 FADE 0001 FADF 0101"
	$"00FA D000 00FA D100 00FA D200 00FA D300"
	$"00FA D400 00FA D500 00FA D600 00FA D700"
	$"00FA D800 00FA D900 00FA DA00 00FA DB00"
	$"00FA DC00 00FA DD00 00FA DE00 00FB DF02"
	$"DF00 00FA D000 00FA D100 00FA D200 00FA"
	$"D300 00FA D400 00FA D500 00FA D600 00FA"
	$"D700 00FA D800 00FA D900 00FA DA00 00FA"
	$"DB00 00FA DC00 00FA DD00 00FA DE00 00FC"
	$"DFFF DF00 0000 C700 01FA D000 01FA D100"
	$"01FA D200 01FA D300 01FA D400 01FA D500"
	$"01FA D600 01FA D700 01FA D800 01FA D900"
	$"01FA DA00 01FA DB00 01FA DC00 01FA DD00"
	$"01FA DE00 01FA DF01 0100 FAD0 0000 FAD1"
	$"0000 FAD2 0000 FAD3 0000 FAD4 0000 FAD5"
	$"0000 FAD6 0000 FAD7 0000 FAD8 0000 FAD9"
	$"0000 FADA 0000 FADB 0000 FADC 0000 FADD"
	$"0000 FADE 0000 FBDF 02DF 0000 FAD0 0000"
	$"FAD1 0000 FAD2 0000 FAD3 0000 FAD4 0000"
	$"FAD5 0000 FAD6 0000 FAD7 0000 FAD8 0000"
	$"FAD9 0000 FADA 0000 FADB 0000 FADC 0000"
	$"FADD 0000 FADE 0000 FCDF FFDF 0000 00C7"
	$"0001 FAD0 0001 FAD1 0001 FAD2 0001 FAD3"
	$"0001 FAD4 0001 FAD5 0001 FAD6 0001 FAD7"
	$"0001 FAD8 0001 FAD9 0001 FADA 0001 FADB"
	$"0001 FADC 0001 FADD 0001 FADE 0001 FADF"
	$"0101 00FA D000 00FA D100 00FA D200 00FA"
	$"D300 00FA D400 00FA D500 00FA D600 00FA"
	$"D700 00FA D800 00FA D900 00FA DA00 00FA"
	$"DB00 00FA DC00 00FA DD00 00FA DE00 00FB"
	$"DF02 DF00 00FA D000 00FA D100 00FA D200"
	$"00FA D300 00FA D400 00FA D500 00FA D600"
	$"00FA D700 00FA D800 00FA D900 00FA DA00"
	$"00FA DB00 00FA DC00 00FA DD00 00FA DE00"
	$"00FC DFFF DF00 0000 C700 01FA D000 01FA"
	$"D100 01FA D200 01FA D300 01FA D400 01FA"
	$"D500 01FA D600 01FA D700 01FA D800 01FA"
	$"D900 01FA DA00 01FA DB00 01FA DC00 01FA"
	$"DD00 01FA DE00 01FA DF01 0100 FAD0 0000"
	$"FAD1 0000 FAD2 0000 FAD3 0000 FAD4 0000"
	$"FAD5 0000 FAD6 0000 FAD7 0000 FAD8 0000"
	$"FAD9 0000 FADA 0000 FADB 0000 FADC 0000"
	$"FADD 0000 FADE 0000 FBDF 02DF 0000 FAD0"
	$"0000 FAD1 0000 FAD2 0000 FAD3 0000 FAD4"
	$"0000 FAD5 0000 FAD6 0000 FAD7 0000 FAD8"
	$"0000 FAD9 0000 FADA 0000 FADB 0000 FADC"
	$"0000 FADD 0000 FADE 0000 FCDF FFDF 0000"
	$"00C7 0001 FAD0 0001 FAD1 0001 FAD2 0001"
	$"FAD3 0001 FAD4 0001 FAD5 0001 FAD6 0001"
	$"FAD7 0001 FAD8 0001 FAD9 0001 FADA 0001"
	$"FADB 0001 FADC 0001 FADD 0001 FADE 0001"
	$"FADF 0101 00FA D000 00FA D100 00FA D200"
	$"00FA D300 00FA D400 00FA D500 00FA D600"
	$"00FA D700 00FA D800 00FA D900 00FA DA00"
	$"00FA DB00 00FA DC00 00FA DD00 00FA DE00"
	$"00FB DF02 DF00 00FA D000 00FA D100 00FA"
	$"D200 00FA D300 00FA D400 00FA D500 00FA"
	$"D600 00FA D700 00FA D800 00FA D900 00FA"
	$"DA00 00FA DB00 00FA DC00 00FA DD00 00FA"
	$"DE00 00FC DFFF DF00 0000 0A81 0100 0182"
	$"0081 00FE 0000 C700 01FA E000 01FA E100"
	$"01FA E200 01FA E300 01FA E400 01FA E500"
	$"01FA E600 01FA E700 01FA E800 01FA E900"
	$"01FA EA00 01FA EB00 01FA EC00 01FA ED00"
	$"01FA EE00 01FA EF01 0100 FAE0 0000 FAE1"
	$"0000 FAE2 0000 FAE3 0000 FAE4 0000 FAE5"
	$"0000 FAE6 0000 FAE7 0000 FAE8 0000 FAE9"
	$"0000 FAEA 0000 FAEB 0000 FAEC 0000 FAED"
	$"0000 FAEE 0000 FBEF 02EF 0000 FAE0 0000"
	$"FAE1 0000 FAE2 0000 FAE3 0000 FAE4 0000"
	$"FAE5 0000 FAE6 0000 FAE7 0000 FAE8 0000"
	$"FAE9 0000 FAEA 0000 FAEB 0000 FAEC 0000"
	$"FAED 0000 FAEE 0000 FCEF FFEF 0000 00C7"
	$"0001 FAE0 0001 FAE1 0001 FAE2 0001 FAE3"
	$"0001 FAE4 0001 FAE5 0001 FAE6 0001 FAE7"
	$"0001 FAE8 0001 FAE9 0001 FAEA 0001 FAEB"
	$"0001 FAEC 0001 FAED 0001 FAEE 0001 FAEF"
	$"0101 00FA E000 00FA E100 00FA E200 00FA"
	$"E300 00FA E400 00FA E500 00FA E600 00FA"
	$"E700 00FA E800 00FA E900 00FA EA00 00FA"
	$"EB00 00FA EC00 00FA ED00 00FA EE00 00FB"
	$"EF02 EF00 00FA E000 00FA E100 00FA E200"
	$"00FA E300 00FA E400 00FA E500 00FA E600"
	$"00FA E700 00FA E800 00FA E900 00FA EA00"
	$"00FA EB00 00FA EC00 00FA ED00 00FA EE00"
	$"00FC EFFF EF00 0000 C700 01FA E000 01FA"
	$"E100 01FA E200 01FA E300 01FA E400 01FA"
	$"E500 01FA E600 01FA E700 01FA E800 01FA"
	$"E900 01FA EA00 01FA EB00 01FA EC00 01FA"
	$"ED00 01FA EE00 01FA EF01 0100 FAE0 0000"
	$"FAE1 0000 FAE2 0000 FAE3 0000 FAE4 0000"
	$"FAE5 0000 FAE6 0000 FAE7 0000 FAE8 0000"
	$"FAE9 0000 FAEA 0000 FAEB 0000 FAEC 0000"
	$"FAED 0000 FAEE 0000 FBEF 02EF 0000 FAE0"
	$"0000 FAE1 0000 FAE2 0000 FAE3 0000 FAE4"
	$"0000 FAE5 0000 FAE6 0000 FAE7 0000 FAE8"
	$"0000 FAE9 0000 FAEA 0000 FAEB 0000 FAEC"
	$"0000 FAED 0000 FAEE 0000 FCEF FFEF 0000"
	$"00C7 0001 FAE0 0001 FAE1 0001 FAE2 0001"
	$"FAE3 0001 FAE4 0001 FAE5 0001 FAE6 0001"
	$"FAE7 0001 FAE8 0001 FAE9 0001 FAEA 0001"
	$"FAEB 0001 FAEC 0001 FAED 0001 FAEE 0001"
	$"FAEF 0101 00FA E000 00FA E100 00FA E200"
	$"00FA E300 00FA E400 00FA E500 00FA E600"
	$"00FA E700 00FA E800 00FA E900 00FA EA00"
	$"00FA EB00 00FA EC00 00FA ED00 00FA EE00"
	$"00FB EF02 EF00 00FA E000 00FA E100 00FA"
	$"E200 00FA E300 00FA E400 00FA E500 00FA"
	$"E600 00FA E700 00FA E800 00FA E900 00FA"
	$"EA00 00FA EB00 00FA EC00 00FA ED00 00FA"
	$"EE00 00FC EFFF EF00 0000 C700 01FA E000"
	$"01FA E100 01FA E200 01FA E300 01FA E400"
	$"01FA E500 01FA E600 01FA E700 01FA E800"
	$"01FA E900 01FA EA00 01FA EB00 01FA EC00"
	$"01FA ED00 01FA EE00 01FA EF01 0100 FAE0"
	$"0000 FAE1 0000 FAE2 0000 FAE3 0000 FAE4"
	$"0000 FAE5 0000 FAE6 0000 FAE7 0000 FAE8"
	$"0000 FAE9 0000 FAEA 0000 FAEB 0000 FAEC"
	$"0000 FAED 0000 FAEE 0000 FBEF 02EF 0000"
	$"FAE0 0000 FAE1 0000 FAE2 0000 FAE3 0000"
	$"FAE4 0000 FAE5 0000 FAE6 0000 FAE7 0000"
	$"FAE8 0000 FAE9 0000 FAEA 0000 FAEB 0000"
	$"FAEC 0000 FAED 0000 FAEE 0000 FCEF FFEF"
	$"0000 00C7 0001 FAE0 0001 FAE1 0001 FAE2"
	$"0001 FAE3 0001 FAE4 0001 FAE5 0001 FAE6"
	$"0001 FAE7 0001 FAE8 0001 FAE9 0001 FAEA"
	$"0001 FAEB 0001 FAEC 0001 FAED 0001 FAEE"
	$"0001 FAEF 0101 00FA E000 00FA E100 00FA"
	$"E200 00FA E300 00FA E400 00FA E500 00FA"
	$"E600 00FA E700 00FA E800 00FA E900 00FA"
	$"EA00 00FA EB00 00FA EC00 00FA ED00 00FA"
	$"EE00 00FB EF02 EF00 00FA E000 00FA E100"
	$"00FA E200 00FA E300 00FA E400 00FA E500"
	$"00FA E600 00FA E700 00FA E800 00FA E900"
	$"00FA EA00 00FA EB00 00FA EC00 00FA ED00"
	$"00FA EE00 00FC EFFF EF00 0000 C700 01FA"
	$"E000 01FA E100 01FA E200 01FA E300 01FA"
	$"E400 01FA E500 01FA E600 01FA E700 01FA"
	$"E800 01FA E900 01FA EA00 01FA EB00 01FA"
	$"EC00 01FA ED00 01FA EE00 01FA EF01 0100"
	$"FAE0 0000 FAE1 0000 FAE2 0000 FAE3 0000"
	$"FAE4 0000 FAE5 0000 FAE6 0000 FAE7 0000"
	$"FAE8 0000 FAE9 0000 FAEA 0000 FAEB 0000"
	$"FAEC 0000 FAED 0000 FAEE 0000 FBEF 02EF"
	$"0000 FAE0 0000 FAE1 0000 FAE2 0000 FAE3"
	$"0000 FAE4 0000 FAE5 0000 FAE6 0000 FAE7"
	$"0000 FAE8 0000 FAE9 0000 FAEA 0000 FAEB"
	$"0000 FAEC 0000 FAED 0000 FAEE 0000 FCEF"
	$"FFEF 0000 000A 8101 0001 8200 8100 FE00"
	$"00C7 0001 FAF0 0001 FAF1 0001 FAF2 0001"
	$"FAF3 0001 FAF4 0001 FAF5 0001 FAF6 0001"
	$"FAF7 0001 FAF8 0001 FAF9 0001 FAFA 0001"
	$"FAFB 0001 FAFC 0001 FAFD 0001 FAFE 0001"
	$"FAFF 0101 00FA F000 00FA F100 00FA F200"
	$"00FA F300 00FA F400 00FA F500 00FA F600"
	$"00FA F700 00FA F800 00FA F900 00FA FA00"
	$"00FA FB00 00FA FC00 00FA FD00 00FA FE00"
	$"00FB FF02 FF00 00FA F000 00FA F100 00FA"
	$"F200 00FA F300 00FA F400 00FA F500 00FA"
	$"F600 00FA F700 00FA F800 00FA F900 00FA"
	$"FA00 00FA FB00 00FA FC00 00FA FD00 00FA"
	$"FE00 00FC FFFF FF00 0000 C700 01FA F000"
	$"01FA F100 01FA F200 01FA F300 01FA F400"
	$"01FA F500 01FA F600 01FA F700 01FA F800"
	$"01FA F900 01FA FA00 01FA FB00 01FA FC00"
	$"01FA FD00 01FA FE00 01FA FF01 0100 FAF0"
	$"0000 FAF1 0000 FAF2 0000 FAF3 0000 FAF4"
	$"0000 FAF5 0000 FAF6 0000 FAF7 0000 FAF8"
	$"0000 FAF9 0000 FAFA 0000 FAFB 0000 FAFC"
	$"0000 FAFD 0000 FAFE 0000 FBFF 02FF 0000"
	$"FAF0 0000 FAF1 0000 FAF2 0000 FAF3 0000"
	$"FAF4 0000 FAF5 0000 FAF6 0000 FAF7 0000"
	$"FAF8 0000 FAF9 0000 FAFA 0000 FAFB 0000"
	$"FAFC 0000 FAFD 0000 FAFE 0000 FCFF FFFF"
	$"0000 00C7 0001 FAF0 0001 FAF1 0001 FAF2"
	$"0001 FAF3 0001 FAF4 0001 FAF5 0001 FAF6"
	$"0001 FAF7 0001 FAF8 0001 FAF9 0001 FAFA"
	$"0001 FAFB 0001 FAFC 0001 FAFD 0001 FAFE"
	$"0001 FAFF 0101 00FA F000 00FA F100 00FA"
	$"F200 00FA F300 00FA F400 00FA F500 00FA"
	$"F600 00FA F700 00FA F800 00FA F900 00FA"
	$"FA00 00FA FB00 00FA FC00 00FA FD00 00FA"
	$"FE00 00FB FF02 FF00 00FA F000 00FA F100"
	$"00FA F200 00FA F300 00FA F400 00FA F500"
	$"00FA F600 00FA F700 00FA F800 00FA F900"
	$"00FA FA00 00FA FB00 00FA FC00 00FA FD00"
	$"00FA FE00 00FC FFFF FF00 0000 C700 01FA"
	$"F000 01FA F100 01FA F200 01FA F300 01FA"
	$"F400 01FA F500 01FA F600 01FA F700 01FA"
	$"F800 01FA F900 01FA FA00 01FA FB00 01FA"
	$"FC00 01FA FD00 01FA FE00 01FA FF01 0100"
	$"FAF0 0000 FAF1 0000 FAF2 0000 FAF3 0000"
	$"FAF4 0000 FAF5 0000 FAF6 0000 FAF7 0000"
	$"FAF8 0000 FAF9 0000 FAFA 0000 FAFB 0000"
	$"FAFC 0000 FAFD 0000 FAFE 0000 FBFF 02FF"
	$"0000 FAF0 0000 FAF1 0000 FAF2 0000 FAF3"
	$"0000 FAF4 0000 FAF5 0000 FAF6 0000 FAF7"
	$"0000 FAF8 0000 FAF9 0000 FAFA 0000 FAFB"
	$"0000 FAFC 0000 FAFD 0000 FAFE 0000 FCFF"
	$"FFFF 0000 00C7 0001 FAF0 0001 FAF1 0001"
	$"FAF2 0001 FAF3 0001 FAF4 0001 FAF5 0001"
	$"FAF6 0001 FAF7 0001 FAF8 0001 FAF9 0001"
	$"FAFA 0001 FAFB 0001 FAFC 0001 FAFD 0001"
	$"FAFE 0001 FAFF 0101 00FA F000 00FA F100"
	$"00FA F200 00FA F300 00FA F400 00FA F500"
	$"00FA F600 00FA F700 00FA F800 00FA F900"
	$"00FA FA00 00FA FB00 00FA FC00 00FA FD00"
	$"00FA FE00 00FB FF02 FF00 00FA F000 00FA"
	$"F100 00FA F200 00FA F300 00FA F400 00FA"
	$"F500 00FA F600 00FA F700 00FA F800 00FA"
	$"F900 00FA FA00 00FA FB00 00FA FC00 00FA"
	$"FD00 00FA FE00 00FC FFFF FF00 0000 C700"
	$"01FA F000 01FA F100 01FA F200 01FA F300"
	$"01FA F400 01FA F500 01FA F600 01FA F700"
	$"01FA F800 01FA F900 01FA FA00 01FA FB00"
	$"01FA FC00 01FA FD00 01FA FE00 01FA FF01"
	$"0100 FAF0 0000 FAF1 0000 FAF2 0000 FAF3"
	$"0000 FAF4 0000 FAF5 0000 FAF6 0000 FAF7"
	$"0000 FAF8 0000 FAF9 0000 FAFA 0000 FAFB"
	$"0000 FAFC 0000 FAFD 0000 FAFE 0000 FBFF"
	$"02FF 0000 FAF0 0000 FAF1 0000 FAF2 0000"
	$"FAF3 0000 FAF4 0000 FAF5 0000 FAF6 0000"
	$"FAF7 0000 FAF8 0000 FAF9 0000 FAFA 0000"
	$"FAFB 0000 FAFC 0000 FAFD 0000 FAFE 0000"
	$"FCFF FFFF 0000 00C7 0001 FAF0 0001 FAF1"
	$"0001 FAF2 0001 FAF3 0001 FAF4 0001 FAF5"
	$"0001 FAF6 0001 FAF7 0001 FAF8 0001 FAF9"
	$"0001 FAFA 0001 FAFB 0001 FAFC 0001 FAFD"
	$"0001 FAFE 0001 FAFF 0101 00FA F000 00FA"
	$"F100 00FA F200 00FA F300 00FA F400 00FA"
	$"F500 00FA F600 00FA F700 00FA F800 00FA"
	$"F900 00FA FA00 00FA FB00 00FA FC00 00FA"
	$"FD00 00FA FE00 00FB FF02 FF00 00FA F000"
	$"00FA F100 00FA F200 00FA F300 00FA F400"
	$"00FA F500 00FA F600 00FA F700 00FA F800"
	$"00FA F900 00FA FA00 00FA FB00 00FA FC00"
	$"00FA FD00 00FA FE00 00FC FFFF FF00 0000"
	$"0A81 0100 0182 0081 00FE 0000 00FF"
};

resource 'PICT' (2052, "4 Bit Picker") {
	1242,
	{0, 0, 49, 49},
	$"0011 02FF 0C00 FFFE 0000 0048 0000 0048"
	$"0000 0000 0000 0031 0031 0000 0000 00A1"
	$"01F2 0016 3842 494D 0000 0000 0000 0031"
	$"0031 4772 8970 68AF 626A 0001 000A 0000"
	$"0000 0031 0031 0098 8034 0000 0000 0031"
	$"0031 0000 0000 0000 0000 0048 0000 0048"
	$"0000 0000 0008 0001 0008 0000 0000 0000"
	$"0000 0000 0000 004A A7F0 0000 0010 0000"
	$"FFFF FFFF FFFF 0001 F2F2 0808 8484 0002"
	$"4646 0000 A5A5 0003 0000 0000 D4D4 0004"
	$"0202 ABAB EAEA 0005 0000 6464 1111 0006"
	$"1F1F B7B7 1414 0007 FCFC F3F3 0505 0008"
	$"9090 7171 3A3A 0009 5656 2C2C 0505 000A"
	$"FFFF 6464 0202 000B 0101 0000 0000 000C"
	$"DDDD 0808 0606 000D C0C0 C0C0 C0C0 000E"
	$"8080 8080 8080 000F 4040 4040 4040 0010"
	$"0000 0000 0000 0000 0000 0031 0031 0000"
	$"0000 0031 0031 0000 04D0 0BFE 0014 000B"
	$"F600 000B F607 000B F60A 000B F60C 000B"
	$"FE00 1400 0BF6 0000 0BF6 0700 0BF6 0A00"
	$"0BF6 0C00 0BFE 0014 000B F600 000B F607"
	$"000B F60A 000B F60C 000B FE00 1400 0BF6"
	$"0000 0BF6 0700 0BF6 0A00 0BF6 0C00 0BFE"
	$"0014 000B F600 000B F607 000B F60A 000B"
	$"F60C 000B FE00 1400 0BF6 0000 0BF6 0700"
	$"0BF6 0A00 0BF6 0C00 0BFE 0014 000B F600"
	$"000B F607 000B F60A 000B F60C 000B FE00"
	$"1400 0BF6 0000 0BF6 0700 0BF6 0A00 0BF6"
	$"0C00 0BFE 0014 000B F600 000B F607 000B"
	$"F60A 000B F60C 000B FE00 1400 0BF6 0000"
	$"0BF6 0700 0BF6 0A00 0BF6 0C00 0BFE 0014"
	$"000B F600 000B F607 000B F60A 000B F60C"
	$"000B FE00 04D0 0BFE 0014 000B F601 000B"
	$"F602 000B F603 000B F604 000B FE00 1400"
	$"0BF6 0100 0BF6 0200 0BF6 0300 0BF6 0400"
	$"0BFE 0014 000B F601 000B F602 000B F603"
	$"000B F604 000B FE00 1400 0BF6 0100 0BF6"
	$"0200 0BF6 0300 0BF6 0400 0BFE 0014 000B"
	$"F601 000B F602 000B F603 000B F604 000B"
	$"FE00 1400 0BF6 0100 0BF6 0200 0BF6 0300"
	$"0BF6 0400 0BFE 0014 000B F601 000B F602"
	$"000B F603 000B F604 000B FE00 1400 0BF6"
	$"0100 0BF6 0200 0BF6 0300 0BF6 0400 0BFE"
	$"0014 000B F601 000B F602 000B F603 000B"
	$"F604 000B FE00 1400 0BF6 0100 0BF6 0200"
	$"0BF6 0300 0BF6 0400 0BFE 0014 000B F601"
	$"000B F602 000B F603 000B F604 000B FE00"
	$"04D0 0BFE 0014 000B F606 000B F605 000B"
	$"F609 000B F608 000B FE00 1400 0BF6 0600"
	$"0BF6 0500 0BF6 0900 0BF6 0800 0BFE 0014"
	$"000B F606 000B F605 000B F609 000B F608"
	$"000B FE00 1400 0BF6 0600 0BF6 0500 0BF6"
	$"0900 0BF6 0800 0BFE 0014 000B F606 000B"
	$"F605 000B F609 000B F608 000B FE00 1400"
	$"0BF6 0600 0BF6 0500 0BF6 0900 0BF6 0800"
	$"0BFE 0014 000B F606 000B F605 000B F609"
	$"000B F608 000B FE00 1400 0BF6 0600 0BF6"
	$"0500 0BF6 0900 0BF6 0800 0BFE 0014 000B"
	$"F606 000B F605 000B F609 000B F608 000B"
	$"FE00 1400 0BF6 0600 0BF6 0500 0BF6 0900"
	$"0BF6 0800 0BFE 0014 000B F606 000B F605"
	$"000B F609 000B F608 000B FE00 04D0 0BFE"
	$"0014 000B F60D 000B F60E 000B F60F 000B"
	$"F610 000B FE00 1400 0BF6 0D00 0BF6 0E00"
	$"0BF6 0F00 0BF6 1000 0BFE 0014 000B F60D"
	$"000B F60E 000B F60F 000B F610 000B FE00"
	$"1400 0BF6 0D00 0BF6 0E00 0BF6 0F00 0BF6"
	$"1000 0BFE 0014 000B F60D 000B F60E 000B"
	$"F60F 000B F610 000B FE00 1400 0BF6 0D00"
	$"0BF6 0E00 0BF6 0F00 0BF6 1000 0BFE 0014"
	$"000B F60D 000B F60E 000B F60F 000B F610"
	$"000B FE00 1400 0BF6 0D00 0BF6 0E00 0BF6"
	$"0F00 0BF6 1000 0BFE 0014 000B F60D 000B"
	$"F60E 000B F60F 000B F610 000B FE00 1400"
	$"0BF6 0D00 0BF6 0E00 0BF6 0F00 0BF6 1000"
	$"0BFE 0014 000B F60D 000B F60E 000B F60F"
	$"000B F610 000B FE00 04D0 0BFE 0000 00FF"
};

resource 'PICT' (2053, "1 Bit Picker") {
	390,
	{0, 0, 17, 33},
	$"0011 02FF 0C00 FFFE 0000 0048 0000 0048"
	$"0000 0000 0000 0011 0021 0000 0000 00A1"
	$"01F2 0016 3842 494D 0000 0000 0000 0011"
	$"0021 4772 8970 68AF 626A 0001 000A 0000"
	$"0000 0011 0021 0098 800C 0000 0000 0011"
	$"0021 0000 0000 0000 0000 0048 0000 0048"
	$"0000 0000 0002 0001 0002 0000 0000 0000"
	$"0000 0000 0000 004A 5686 0000 0002 0000"
	$"FFFF FFFF FFFF 0001 0101 0000 0000 0002"
	$"0000 0000 0000 0000 0000 0011 0021 0000"
	$"0000 0011 0021 0000 06F9 5500 01FE 000C"
	$"0040 FE00 006A FEAA 0001 FE00 0C00 40FE"
	$"0000 6AFE AA00 01FE 000C 0040 FE00 006A"
	$"FEAA 0001 FE00 0C00 40FE 0000 6AFE AA00"
	$"01FE 000C 0040 FE00 006A FEAA 0001 FE00"
	$"0C00 40FE 0000 6AFE AA00 01FE 000C 0040"
	$"FE00 006A FEAA 0001 FE00 0C00 40FE 0000"
	$"6AFE AA00 01FE 000C 0040 FE00 006A FEAA"
	$"0001 FE00 0C00 40FE 0000 6AFE AA00 01FE"
	$"000C 0040 FE00 006A FEAA 0001 FE00 0C00"
	$"40FE 0000 6AFE AA00 01FE 000C 0040 FE00"
	$"006A FEAA 0001 FE00 0C00 40FE 0000 6AFE"
	$"AA00 01FE 000C 0040 FE00 006A FEAA 0001"
	$"FE00 06F9 5500 01FE 0000 00FF"
};

resource 'PICT' (2054, "Windows 4-bit Picker") {
	1242,
	{0, 0, 49, 49},
	$"0011 02FF 0C00 FFFE 0000 0048 0000 0048"
	$"0000 0000 0000 0031 0031 0000 0000 00A1"
	$"01F2 0016 3842 494D 0000 0000 0000 0031"
	$"0031 4772 8970 68AF 626A 0001 000A 0000"
	$"0000 0031 0031 0098 8034 0000 0000 0031"
	$"0031 0000 0000 0000 0000 0048 0000 0048"
	$"0000 0000 0008 0001 0008 0000 0000 0000"
	$"0000 0000 0000 0046 A411 0000 0010 0000"
	$"FFFF FFFF FFFF 0001 FFFF 0000 FFFF 0002"
	$"7B7B 0000 7B7B 0003 0000 0000 FFFF 0004"
	$"0000 0000 7B7B 0005 0000 FFFF FFFF 0006"
	$"0000 7B7B 7B7B 0007 0000 FFFF 0000 0008"
	$"0000 7B7B 0000 0009 FFFF FFFF 0000 000A"
	$"7B7B 7B7B 0000 000B FFFF 0000 0000 000C"
	$"7B7B 0000 0000 000D 0101 0000 0000 000E"
	$"BDBD BDBD BDBD 000F 7B7B 7B7B 7B7B 0010"
	$"0000 0000 0000 0000 0000 0031 0031 0000"
	$"0000 0031 0031 0000 04D0 0DFE 0014 000D"
	$"F609 000D F607 000D F60A 000D F608 000D"
	$"FE00 1400 0DF6 0900 0DF6 0700 0DF6 0A00"
	$"0DF6 0800 0DFE 0014 000D F609 000D F607"
	$"000D F60A 000D F608 000D FE00 1400 0DF6"
	$"0900 0DF6 0700 0DF6 0A00 0DF6 0800 0DFE"
	$"0014 000D F609 000D F607 000D F60A 000D"
	$"F608 000D FE00 1400 0DF6 0900 0DF6 0700"
	$"0DF6 0A00 0DF6 0800 0DFE 0014 000D F609"
	$"000D F607 000D F60A 000D F608 000D FE00"
	$"1400 0DF6 0900 0DF6 0700 0DF6 0A00 0DF6"
	$"0800 0DFE 0014 000D F609 000D F607 000D"
	$"F60A 000D F608 000D FE00 1400 0DF6 0900"
	$"0DF6 0700 0DF6 0A00 0DF6 0800 0DFE 0014"
	$"000D F609 000D F607 000D F60A 000D F608"
	$"000D FE00 04D0 0DFE 0014 000D F601 000D"
	$"F602 000D F60C 000D F60B 000D FE00 1400"
	$"0DF6 0100 0DF6 0200 0DF6 0C00 0DF6 0B00"
	$"0DFE 0014 000D F601 000D F602 000D F60C"
	$"000D F60B 000D FE00 1400 0DF6 0100 0DF6"
	$"0200 0DF6 0C00 0DF6 0B00 0DFE 0014 000D"
	$"F601 000D F602 000D F60C 000D F60B 000D"
	$"FE00 1400 0DF6 0100 0DF6 0200 0DF6 0C00"
	$"0DF6 0B00 0DFE 0014 000D F601 000D F602"
	$"000D F60C 000D F60B 000D FE00 1400 0DF6"
	$"0100 0DF6 0200 0DF6 0C00 0DF6 0B00 0DFE"
	$"0014 000D F601 000D F602 000D F60C 000D"
	$"F60B 000D FE00 1400 0DF6 0100 0DF6 0200"
	$"0DF6 0C00 0DF6 0B00 0DFE 0014 000D F601"
	$"000D F602 000D F60C 000D F60B 000D FE00"
	$"04D0 0DFE 0014 000D F605 000D F606 000D"
	$"F603 000D F604 000D FE00 1400 0DF6 0500"
	$"0DF6 0600 0DF6 0300 0DF6 0400 0DFE 0014"
	$"000D F605 000D F606 000D F603 000D F604"
	$"000D FE00 1400 0DF6 0500 0DF6 0600 0DF6"
	$"0300 0DF6 0400 0DFE 0014 000D F605 000D"
	$"F606 000D F603 000D F604 000D FE00 1400"
	$"0DF6 0500 0DF6 0600 0DF6 0300 0DF6 0400"
	$"0DFE 0014 000D F605 000D F606 000D F603"
	$"000D F604 000D FE00 1400 0DF6 0500 0DF6"
	$"0600 0DF6 0300 0DF6 0400 0DFE 0014 000D"
	$"F605 000D F606 000D F603 000D F604 000D"
	$"FE00 1400 0DF6 0500 0DF6 0600 0DF6 0300"
	$"0DF6 0400 0DFE 0014 000D F605 000D F606"
	$"000D F603 000D F604 000D FE00 04D0 0DFE"
	$"0014 000D F600 000D F60E 000D F60F 000D"
	$"F610 000D FE00 1400 0DF6 0000 0DF6 0E00"
	$"0DF6 0F00 0DF6 1000 0DFE 0014 000D F600"
	$"000D F60E 000D F60F 000D F610 000D FE00"
	$"1400 0DF6 0000 0DF6 0E00 0DF6 0F00 0DF6"
	$"1000 0DFE 0014 000D F600 000D F60E 000D"
	$"F60F 000D F610 000D FE00 1400 0DF6 0000"
	$"0DF6 0E00 0DF6 0F00 0DF6 1000 0DFE 0014"
	$"000D F600 000D F60E 000D F60F 000D F610"
	$"000D FE00 1400 0DF6 0000 0DF6 0E00 0DF6"
	$"0F00 0DF6 1000 0DFE 0014 000D F600 000D"
	$"F60E 000D F60F 000D F610 000D FE00 1400"
	$"0DF6 0000 0DF6 0E00 0DF6 0F00 0DF6 1000"
	$"0DFE 0014 000D F600 000D F60E 000D F60F"
	$"000D F610 000D FE00 04D0 0DFE 0000 00FF"
};

resource 'PICT' (2055, "Windows 8-bit Picker") {
	22124,
	{0, 0, 129, 129},
	$"0011 02FF 0C00 FFFE 0000 0048 0000 0048"
	$"0000 0000 0000 0081 0081 0000 0000 00A1"
	$"01F2 0016 3842 494D 0000 0000 0000 0081"
	$"0081 4772 8970 68AF 626A 0001 000A 0000"
	$"0000 0081 0081 8201 0000 06CC 0000 0001"
	$"0000 0000 0000 0000 0000 0000 0000 0001"
	$"0000 0000 0000 0000 0000 0000 0000 4000"
	$"0000 0000 0699 0000 0000 0081 0081 0000"
	$"0056 726C 6520 0000 0000 0000 0000 0001"
	$"0001 6170 706C 0000 0000 0000 0400 0081"
	$"0081 0048 0000 0048 0000 0000 0643 0001"
	$"0941 6E69 6D61 7469 6F6E 0000 0000 0000"
	$"0000 0000 0000 0000 0000 0000 0000 0000"
	$"0028 0028 4000 0643 0008 0000 0000 0081"
	$"0000 01EA FFFF FFFF 01FF 0000 00F6 0000"
	$"0000 FF01 EAFF FFFF FF01 FF00 0000 F600"
	$"0000 00FF 01EA FFFF FFFF 01FF 0000 00F6"
	$"0000 0000 FF01 EAFF FFFF FF01 FF00 0000"
	$"F600 0000 00FF 01EA FFFF FFFF 01FF 0000"
	$"00F6 0000 0000 FF01 EAFF FFFF FF01 FF00"
	$"0000 F600 0000 00FF 01EA FFFF FFFF 01FF"
	$"0000 00F6 0000 0000 FF01 EAFF FFFF FF01"
	$"FF00 0000 F600 0000 00FF 01E0 FFFF FFFF"
	$"01FF 0000 00FF 01E0 FFFF FFFF 01FF 0000"
	$"00FF 01E0 FFFF FFFF 01FF 0000 00FF 01E0"
	$"FFFF FFFF 01FF 0000 00FF 01E0 FFFF FFFF"
	$"01FF 0000 00FF 01E0 FFFF FFFF 01FF 0000"
	$"00FF 01E0 FFFF FFFF 01FF 0000 00FF 01E0"
	$"FFFF FFFF 01FF 0000 00FF 01E0 FFFF FFFF"
	$"01FF 0000 00FF 01E0 FFFF FFFF 01FF 0000"
	$"00FF 01E0 FFFF FFFF 01FF 0000 00FF 01E0"
	$"FFFF FFFF 01FF 0000 00FF 01E0 FFFF FFFF"
	$"01FF 0000 00FF 01E0 FFFF FFFF 01FF 0000"
	$"00FF 01E0 FFFF FFFF 01FF 0000 00FF 01E0"
	$"FFFF FFFF 01FF 0000 00FF 01E0 FFFF FFFF"
	$"01FF 0000 00FF 01E0 FFFF FFFF 01FF 0000"
	$"00FF 01E0 FFFF FFFF 01FF 0000 00FF 01E0"
	$"FFFF FFFF 01FF 0000 00FF 01E0 FFFF FFFF"
	$"01FF 0000 00FF 01E0 FFFF FFFF 01FF 0000"
	$"00FF 01E0 FFFF FFFF 01FF 0000 00FF 01E0"
	$"FFFF FFFF 01FF 0000 00FF 01E0 FFFF FFFF"
	$"01FF 0000 00FF 01E0 FFFF FFFF 01FF 0000"
	$"00FF 01E0 FFFF FFFF 01FF 0000 00FF 01E0"
	$"FFFF FFFF 01FF 0000 00FF 01E0 FFFF FFFF"
	$"01FF 0000 00FF 01E0 FFFF FFFF 01FF 0000"
	$"00FF 01E0 FFFF FFFF 01FF 0000 00FF 01E0"
	$"FFFF FFFF 01FF 0000 00FF 01E0 FFFF FFFF"
	$"01FF 0000 00FF 01E0 FFFF FFFF 01FF 0000"
	$"00FF 01E0 FFFF FFFF 01FF 0000 00FF 01E0"
	$"FFFF FFFF 01FF 0000 00FF 01E0 FFFF FFFF"
	$"01FF 0000 00FF 01E0 FFFF FFFF 01FF 0000"
	$"00FF 01E0 FFFF FFFF 01FF 0000 00FF 01E0"
	$"FFFF FFFF 01FF 0000 00FF 01E0 FFFF FFFF"
	$"01FF 0000 00FF 01E0 FFFF FFFF 01FF 0000"
	$"00FF 01E0 FFFF FFFF 01FF 0000 00FF 01E0"
	$"FFFF FFFF 01FF 0000 00FF 01E0 FFFF FFFF"
	$"01FF 0000 00FF 01E0 FFFF FFFF 01FF 0000"
	$"00FF 01E0 FFFF FFFF 01FF 0000 00FF 01E0"
	$"FFFF FFFF 01FF 0000 00FF 01E0 FFFF FFFF"
	$"01FF 0000 00FF 01E0 FFFF FFFF 01FF 0000"
	$"00FF 01E0 FFFF FFFF 01FF 0000 00FF 01E0"
	$"FFFF FFFF 01FF 0000 00FF 01E0 FFFF FFFF"
	$"01FF 0000 00FF 01E0 FFFF FFFF 01FF 0000"
	$"00FF 01E0 FFFF FFFF 01FF 0000 00FF 01E0"
	$"FFFF FFFF 01FF 0000 00FF 01E0 FFFF FFFF"
	$"01FF 0000 00FF 01E0 FFFF FFFF 01FF 0000"
	$"00FF 01E0 FFFF FFFF 01FF 0000 00FF 01E0"
	$"FFFF FFFF 01FF 0000 00FF 01E0 FFFF FFFF"
	$"01FF 0000 00FF 01E0 FFFF FFFF 01FF 0000"
	$"00FF 01E0 FFFF FFFF 01FF 0000 00FF 01E0"
	$"FFFF FFFF 01FF 0000 00FF 01E0 FFFF FFFF"
	$"01FF 0000 00FF 01E0 FFFF FFFF 01FF 0000"
	$"00FF 01E0 FFFF FFFF 01FF 0000 00FF 01E0"
	$"FFFF FFFF 01FF 0000 00FF 01E0 FFFF FFFF"
	$"01FF 0000 00FF 01E0 FFFF FFFF 01FF 0000"
	$"00FF 01E0 FFFF FFFF 01FF 0000 00FF 01E0"
	$"FFFF FFFF 01FF 0000 00FF 01E0 FFFF FFFF"
	$"01FF 0000 00FF 01E0 FFFF FFFF 01FF 0000"
	$"00FF 01E0 FFFF FFFF 01FF 0000 00FF 01E0"
	$"FFFF FFFF 01FF 0000 00FF 01E0 FFFF FFFF"
	$"01FF 0000 00FF 01E0 FFFF FFFF 01FF 0000"
	$"00FF 01E0 FFFF FFFF 01FF 0000 00FF 01E0"
	$"FFFF FFFF 01FF 0000 00FF 01E0 FFFF FFFF"
	$"01FF 0000 00FF 01E0 FFFF FFFF 01FF 0000"
	$"00FF 01E0 FFFF FFFF 01FF 0000 00FF 01E0"
	$"FFFF FFFF 01FF 0000 00FF 01E0 FFFF FFFF"
	$"01FF 0000 00FF 01E0 FFFF FFFF 01FF 0000"
	$"00FF 01E0 FFFF FFFF 01FF 0000 00FF 01E0"
	$"FFFF FFFF 01FF 0000 00FF 01E0 FFFF FFFF"
	$"01FF 0000 00FF 01E0 FFFF FFFF 01FF 0000"
	$"00FF 01E0 FFFF FFFF 01FF 0000 00FF 01E0"
	$"FFFF FFFF 01FF 0000 00FF 01E0 FFFF FFFF"
	$"01FF 0000 00FF 01E0 FFFF FFFF 01FF 0000"
	$"00FF 01E0 FFFF FFFF 01FF 0000 00FF 01E0"
	$"FFFF FFFF 01FF 0000 00FF 01E0 FFFF FFFF"
	$"01FF 0000 00FF 01E0 FFFF FFFF 01FF 0000"
	$"00FF 01E0 FFFF FFFF 01FF 0000 00FF 01E0"
	$"FFFF FFFF 01FF 0000 00FF 01E0 FFFF FFFF"
	$"01FF 0000 00FF 01E0 FFFF FFFF 01FF 0000"
	$"00FF 01E0 FFFF FFFF 01FF 0000 00FF 01E0"
	$"FFFF FFFF 01FF 0000 00FF 01E0 FFFF FFFF"
	$"01FF 0000 00FF 01E0 FFFF FFFF 01FF 0000"
	$"00FF 01E0 FFFF FFFF 01FF 0000 00FF 01E0"
	$"FFFF FFFF 01FF 0000 00FF 01E0 FFFF FFFF"
	$"01FF 0000 00FF 01E0 FFFF FFFF 01FF 0000"
	$"00FF 01E0 FFFF FFFF 01FF 0000 00FF 01E0"
	$"FFFF FFFF 01FF 0000 00FF 01E0 FFFF FFFF"
	$"01FF 0000 00FF 01E0 FFFF FFFF 01FF 0000"
	$"00FF 01E0 FFFF FFFF 01FF 0000 00FF 01E0"
	$"FFFF FFFF 01FF 0000 00FF 01E0 FFFF FFFF"
	$"01FF 0000 00FF 01E0 FFFF FFFF 01FF 0000"
	$"00FF 01E0 FFFF FFFF 01FF 0000 00FF 01E0"
	$"FFFF FFFF 01FF 0000 00FF 01E0 FFFF FFFF"
	$"01FF 0000 00FF 0000 009A 0000 00FF 8204"
	$"0000 0000 0081 0081 0000 0004 0000 0000"
	$"0048 0000 0048 0000 0010 0020 0003 0008"
	$"0000 0000 0000 0000 0000 0000 0000 0000"
	$"0081 0081 0000 0000 0081 0081 0040 0012"
	$"A801 DAFF 00FF A800 DBFF FFFF A800 DCFF"
	$"FEFF 0076 0001 FA00 0001 FA80 0001 FA00"
	$"0001 FA80 0001 FA00 0001 FA80 0001 FA00"
	$"0001 FAC0 0001 FA7F 0001 FAA6 0001 FA1C"
	$"0001 DAFF 00FF F000 FA80 0000 FA80 F000"
	$"FA80 0000 FAC0 0000 FA7F 0000 FACA 0000"
	$"FA1C 0000 DBFF FFFF E000 FA80 0000 FA80"
	$"0000 FA80 0000 FAC0 0000 FA7F 0000 FAF0"
	$"0000 FA1C 0000 DCFF FEFF 0076 0001 FA00"
	$"0001 FA80 0001 FA00 0001 FA80 0001 FA00"
	$"0001 FA80 0001 FA00 0001 FAC0 0001 FA7F"
	$"0001 FAA6 0001 FA1C 0001 DAFF 00FF F000"
	$"FA80 0000 FA80 F000 FA80 0000 FAC0 0000"
	$"FA7F 0000 FACA 0000 FA1C 0000 DBFF FFFF"
	$"E000 FA80 0000 FA80 0000 FA80 0000 FAC0"
	$"0000 FA7F 0000 FAF0 0000 FA1C 0000 DCFF"
	$"FEFF 0076 0001 FA00 0001 FA80 0001 FA00"
	$"0001 FA80 0001 FA00 0001 FA80 0001 FA00"
	$"0001 FAC0 0001 FA7F 0001 FAA6 0001 FA1C"
	$"0001 DAFF 00FF F000 FA80 0000 FA80 F000"
	$"FA80 0000 FAC0 0000 FA7F 0000 FACA 0000"
	$"FA1C 0000 DBFF FFFF E000 FA80 0000 FA80"
	$"0000 FA80 0000 FAC0 0000 FA7F 0000 FAF0"
	$"0000 FA1C 0000 DCFF FEFF 0076 0001 FA00"
	$"0001 FA80 0001 FA00 0001 FA80 0001 FA00"
	$"0001 FA80 0001 FA00 0001 FAC0 0001 FA7F"
	$"0001 FAA6 0001 FA1C 0001 DAFF 00FF F000"
	$"FA80 0000 FA80 F000 FA80 0000 FAC0 0000"
	$"FA7F 0000 FACA 0000 FA1C 0000 DBFF FFFF"
	$"E000 FA80 0000 FA80 0000 FA80 0000 FAC0"
	$"0000 FA7F 0000 FAF0 0000 FA1C 0000 DCFF"
	$"FEFF 0076 0001 FA00 0001 FA80 0001 FA00"
	$"0001 FA80 0001 FA00 0001 FA80 0001 FA00"
	$"0001 FAC0 0001 FA7F 0001 FAA6 0001 FA1C"
	$"0001 DAFF 00FF F000 FA80 0000 FA80 F000"
	$"FA80 0000 FAC0 0000 FA7F 0000 FACA 0000"
	$"FA1C 0000 DBFF FFFF E000 FA80 0000 FA80"
	$"0000 FA80 0000 FAC0 0000 FA7F 0000 FAF0"
	$"0000 FA1C 0000 DCFF FEFF 0076 0001 FA00"
	$"0001 FA80 0001 FA00 0001 FA80 0001 FA00"
	$"0001 FA80 0001 FA00 0001 FAC0 0001 FA7F"
	$"0001 FAA6 0001 FA1C 0001 DAFF 00FF F000"
	$"FA80 0000 FA80 F000 FA80 0000 FAC0 0000"
	$"FA7F 0000 FACA 0000 FA1C 0000 DBFF FFFF"
	$"E000 FA80 0000 FA80 0000 FA80 0000 FAC0"
	$"0000 FA7F 0000 FAF0 0000 FA1C 0000 DCFF"
	$"FEFF 0076 0001 FA00 0001 FA80 0001 FA00"
	$"0001 FA80 0001 FA00 0001 FA80 0001 FA00"
	$"0001 FAC0 0001 FA7F 0001 FAA6 0001 FA1C"
	$"0001 DAFF 00FF F000 FA80 0000 FA80 F000"
	$"FA80 0000 FAC0 0000 FA7F 0000 FACA 0000"
	$"FA1C 0000 DBFF FFFF E000 FA80 0000 FA80"
	$"0000 FA80 0000 FAC0 0000 FA7F 0000 FAF0"
	$"0000 FA1C 0000 DCFF FEFF 000A 8101 0001"
	$"8200 8100 FE00 00AB 0001 FA22 0001 FA29"
	$"0001 FA55 0001 FA4D 0001 FA42 0001 FA39"
	$"0001 FAFF 0001 FAFF 0001 FAD6 0001 FACC"
	$"0001 FAEF 0001 FAE7 0001 FAAD 0001 FA33"
	$"0001 FA66 0001 FA99 0101 00FA 2200 00FA"
	$"2900 00FA 5500 00FA 4D00 00FA 4200 00FA"
	$"3900 00FA 7C00 00FA 50F8 00FA EC00 00FA"
	$"D600 00FA E700 00FA A9EA 00FE 00FA 2200"
	$"00FA 2900 00FA 5500 00FA 4D00 00FA 4200"
	$"00FA 3900 00FA 8000 00FA 5000 00FA 9300"
	$"00FA FF00 00FA C600 00FA D600 00FA 90EB"
	$"00FE 0000 AB00 01FA 2200 01FA 2900 01FA"
	$"5500 01FA 4D00 01FA 4200 01FA 3900 01FA"
	$"FF00 01FA FF00 01FA D600 01FA CC00 01FA"
	$"EF00 01FA E700 01FA AD00 01FA 3300 01FA"
	$"6600 01FA 9901 0100 FA22 0000 FA29 0000"
	$"FA55 0000 FA4D 0000 FA42 0000 FA39 0000"
	$"FA7C 0000 FA50 F800 FAEC 0000 FAD6 0000"
	$"FAE7 0000 FAA9 EA00 FE00 FA22 0000 FA29"
	$"0000 FA55 0000 FA4D 0000 FA42 0000 FA39"
	$"0000 FA80 0000 FA50 0000 FA93 0000 FAFF"
	$"0000 FAC6 0000 FAD6 0000 FA90 EB00 FE00"
	$"00AB 0001 FA22 0001 FA29 0001 FA55 0001"
	$"FA4D 0001 FA42 0001 FA39 0001 FAFF 0001"
	$"FAFF 0001 FAD6 0001 FACC 0001 FAEF 0001"
	$"FAE7 0001 FAAD 0001 FA33 0001 FA66 0001"
	$"FA99 0101 00FA 2200 00FA 2900 00FA 5500"
	$"00FA 4D00 00FA 4200 00FA 3900 00FA 7C00"
	$"00FA 50F8 00FA EC00 00FA D600 00FA E700"
	$"00FA A9EA 00FE 00FA 2200 00FA 2900 00FA"
	$"5500 00FA 4D00 00FA 4200 00FA 3900 00FA"
	$"8000 00FA 5000 00FA 9300 00FA FF00 00FA"
	$"C600 00FA D600 00FA 90EB 00FE 0000 AB00"
	$"01FA 2200 01FA 2900 01FA 5500 01FA 4D00"
	$"01FA 4200 01FA 3900 01FA FF00 01FA FF00"
	$"01FA D600 01FA CC00 01FA EF00 01FA E700"
	$"01FA AD00 01FA 3300 01FA 6600 01FA 9901"
	$"0100 FA22 0000 FA29 0000 FA55 0000 FA4D"
	$"0000 FA42 0000 FA39 0000 FA7C 0000 FA50"
	$"F800 FAEC 0000 FAD6 0000 FAE7 0000 FAA9"
	$"EA00 FE00 FA22 0000 FA29 0000 FA55 0000"
	$"FA4D 0000 FA42 0000 FA39 0000 FA80 0000"
	$"FA50 0000 FA93 0000 FAFF 0000 FAC6 0000"
	$"FAD6 0000 FA90 EB00 FE00 00AB 0001 FA22"
	$"0001 FA29 0001 FA55 0001 FA4D 0001 FA42"
	$"0001 FA39 0001 FAFF 0001 FAFF 0001 FAD6"
	$"0001 FACC 0001 FAEF 0001 FAE7 0001 FAAD"
	$"0001 FA33 0001 FA66 0001 FA99 0101 00FA"
	$"2200 00FA 2900 00FA 5500 00FA 4D00 00FA"
	$"4200 00FA 3900 00FA 7C00 00FA 50F8 00FA"
	$"EC00 00FA D600 00FA E700 00FA A9EA 00FE"
	$"00FA 2200 00FA 2900 00FA 5500 00FA 4D00"
	$"00FA 4200 00FA 3900 00FA 8000 00FA 5000"
	$"00FA 9300 00FA FF00 00FA C600 00FA D600"
	$"00FA 90EB 00FE 0000 AB00 01FA 2200 01FA"
	$"2900 01FA 5500 01FA 4D00 01FA 4200 01FA"
	$"3900 01FA FF00 01FA FF00 01FA D600 01FA"
	$"CC00 01FA EF00 01FA E700 01FA AD00 01FA"
	$"3300 01FA 6600 01FA 9901 0100 FA22 0000"
	$"FA29 0000 FA55 0000 FA4D 0000 FA42 0000"
	$"FA39 0000 FA7C 0000 FA50 F800 FAEC 0000"
	$"FAD6 0000 FAE7 0000 FAA9 EA00 FE00 FA22"
	$"0000 FA29 0000 FA55 0000 FA4D 0000 FA42"
	$"0000 FA39 0000 FA80 0000 FA50 0000 FA93"
	$"0000 FAFF 0000 FAC6 0000 FAD6 0000 FA90"
	$"EB00 FE00 00AB 0001 FA22 0001 FA29 0001"
	$"FA55 0001 FA4D 0001 FA42 0001 FA39 0001"
	$"FAFF 0001 FAFF 0001 FAD6 0001 FACC 0001"
	$"FAEF 0001 FAE7 0001 FAAD 0001 FA33 0001"
	$"FA66 0001 FA99 0101 00FA 2200 00FA 2900"
	$"00FA 5500 00FA 4D00 00FA 4200 00FA 3900"
	$"00FA 7C00 00FA 50F8 00FA EC00 00FA D600"
	$"00FA E700 00FA A9EA 00FE 00FA 2200 00FA"
	$"2900 00FA 5500 00FA 4D00 00FA 4200 00FA"
	$"3900 00FA 8000 00FA 5000 00FA 9300 00FA"
	$"FF00 00FA C600 00FA D600 00FA 90EB 00FE"
	$"0000 0A81 0100 0182 0081 00FE 0000 8400"
	$"01FA CC00 01FA 0000 01FA 3300 01FA 6600"
	$"01FA 9900 01FA CC00 01FA FF00 01FA 0000"
	$"01FA 3300 01FA 6600 01FA 9900 01FA CC00"
	$"01FA FF00 01FA 0000 01FA 3300 01FA 6600"
	$"01F8 00FA 3300 00FA 3300 00FA 3300 00FA"
	$"3300 00FA 3300 00FA 3300 00FA 6600 00FA"
	$"6600 00FA 6600 00FA 6600 00FA 6600 00FA"
	$"6600 00FA 9900 00FA 9900 00FB 9900 9982"
	$"00FE 0000 8400 01FA CC00 01FA 0000 01FA"
	$"3300 01FA 6600 01FA 9900 01FA CC00 01FA"
	$"FF00 01FA 0000 01FA 3300 01FA 6600 01FA"
	$"9900 01FA CC00 01FA FF00 01FA 0000 01FA"
	$"3300 01FA 6600 01F8 00FA 3300 00FA 3300"
	$"00FA 3300 00FA 3300 00FA 3300 00FA 3300"
	$"00FA 6600 00FA 6600 00FA 6600 00FA 6600"
	$"00FA 6600 00FA 6600 00FA 9900 00FA 9900"
	$"00FB 9900 9982 00FE 0000 8400 01FA CC00"
	$"01FA 0000 01FA 3300 01FA 6600 01FA 9900"
	$"01FA CC00 01FA FF00 01FA 0000 01FA 3300"
	$"01FA 6600 01FA 9900 01FA CC00 01FA FF00"
	$"01FA 0000 01FA 3300 01FA 6600 01F8 00FA"
	$"3300 00FA 3300 00FA 3300 00FA 3300 00FA"
	$"3300 00FA 3300 00FA 6600 00FA 6600 00FA"
	$"6600 00FA 6600 00FA 6600 00FA 6600 00FA"
	$"9900 00FA 9900 00FB 9900 9982 00FE 0000"
	$"8400 01FA CC00 01FA 0000 01FA 3300 01FA"
	$"6600 01FA 9900 01FA CC00 01FA FF00 01FA"
	$"0000 01FA 3300 01FA 6600 01FA 9900 01FA"
	$"CC00 01FA FF00 01FA 0000 01FA 3300 01FA"
	$"6600 01F8 00FA 3300 00FA 3300 00FA 3300"
	$"00FA 3300 00FA 3300 00FA 3300 00FA 6600"
	$"00FA 6600 00FA 6600 00FA 6600 00FA 6600"
	$"00FA 6600 00FA 9900 00FA 9900 00FB 9900"
	$"9982 00FE 0000 8400 01FA CC00 01FA 0000"
	$"01FA 3300 01FA 6600 01FA 9900 01FA CC00"
	$"01FA FF00 01FA 0000 01FA 3300 01FA 6600"
	$"01FA 9900 01FA CC00 01FA FF00 01FA 0000"
	$"01FA 3300 01FA 6600 01F8 00FA 3300 00FA"
	$"3300 00FA 3300 00FA 3300 00FA 3300 00FA"
	$"3300 00FA 6600 00FA 6600 00FA 6600 00FA"
	$"6600 00FA 6600 00FA 6600 00FA 9900 00FA"
	$"9900 00FB 9900 9982 00FE 0000 8400 01FA"
	$"CC00 01FA 0000 01FA 3300 01FA 6600 01FA"
	$"9900 01FA CC00 01FA FF00 01FA 0000 01FA"
	$"3300 01FA 6600 01FA 9900 01FA CC00 01FA"
	$"FF00 01FA 0000 01FA 3300 01FA 6600 01F8"
	$"00FA 3300 00FA 3300 00FA 3300 00FA 3300"
	$"00FA 3300 00FA 3300 00FA 6600 00FA 6600"
	$"00FA 6600 00FA 6600 00FA 6600 00FA 6600"
	$"00FA 9900 00FA 9900 00FB 9900 9982 00FE"
	$"0000 8400 01FA CC00 01FA 0000 01FA 3300"
	$"01FA 6600 01FA 9900 01FA CC00 01FA FF00"
	$"01FA 0000 01FA 3300 01FA 6600 01FA 9900"
	$"01FA CC00 01FA FF00 01FA 0000 01FA 3300"
	$"01FA 6600 01F8 00FA 3300 00FA 3300 00FA"
	$"3300 00FA 3300 00FA 3300 00FA 3300 00FA"
	$"6600 00FA 6600 00FA 6600 00FA 6600 00FA"
	$"6600 00FA 6600 00FA 9900 00FA 9900 00FB"
	$"9900 9982 00FE 0000 0A81 0100 0182 0081"
	$"00FE 0000 8700 01FA 9900 01FA CC00 01FA"
	$"FF00 01FA 0000 01FA 3300 01FA 6600 01FA"
	$"9900 01FA CC00 01FA FF00 01FA 6600 01FA"
	$"9900 01FA CC00 01FA 0000 01FA 3300 01FA"
	$"6600 01FA 9901 0100 FA99 0000 FA99 0000"
	$"FA99 0000 FACC 0000 FACC 0000 FACC 0000"
	$"FACC 0000 FACC 0000 FACC 0000 FAFF 0000"
	$"FAFF 0000 FAFF E200 9E00 FA33 0000 FA33"
	$"0000 FA33 0000 FC33 FF33 0000 0087 0001"
	$"FA99 0001 FACC 0001 FAFF 0001 FA00 0001"
	$"FA33 0001 FA66 0001 FA99 0001 FACC 0001"
	$"FAFF 0001 FA66 0001 FA99 0001 FACC 0001"
	$"FA00 0001 FA33 0001 FA66 0001 FA99 0101"
	$"00FA 9900 00FA 9900 00FA 9900 00FA CC00"
	$"00FA CC00 00FA CC00 00FA CC00 00FA CC00"
	$"00FA CC00 00FA FF00 00FA FF00 00FA FFE2"
	$"009E 00FA 3300 00FA 3300 00FA 3300 00FC"
	$"33FF 3300 0000 8700 01FA 9900 01FA CC00"
	$"01FA FF00 01FA 0000 01FA 3300 01FA 6600"
	$"01FA 9900 01FA CC00 01FA FF00 01FA 6600"
	$"01FA 9900 01FA CC00 01FA 0000 01FA 3300"
	$"01FA 6600 01FA 9901 0100 FA99 0000 FA99"
	$"0000 FA99 0000 FACC 0000 FACC 0000 FACC"
	$"0000 FACC 0000 FACC 0000 FACC 0000 FAFF"
	$"0000 FAFF 0000 FAFF E200 9E00 FA33 0000"
	$"FA33 0000 FA33 0000 FC33 FF33 0000 0087"
	$"0001 FA99 0001 FACC 0001 FAFF 0001 FA00"
	$"0001 FA33 0001 FA66 0001 FA99 0001 FACC"
	$"0001 FAFF 0001 FA66 0001 FA99 0001 FACC"
	$"0001 FA00 0001 FA33 0001 FA66 0001 FA99"
	$"0101 00FA 9900 00FA 9900 00FA 9900 00FA"
	$"CC00 00FA CC00 00FA CC00 00FA CC00 00FA"
	$"CC00 00FA CC00 00FA FF00 00FA FF00 00FA"
	$"FFE2 009E 00FA 3300 00FA 3300 00FA 3300"
	$"00FC 33FF 3300 0000 8700 01FA 9900 01FA"
	$"CC00 01FA FF00 01FA 0000 01FA 3300 01FA"
	$"6600 01FA 9900 01FA CC00 01FA FF00 01FA"
	$"6600 01FA 9900 01FA CC00 01FA 0000 01FA"
	$"3300 01FA 6600 01FA 9901 0100 FA99 0000"
	$"FA99 0000 FA99 0000 FACC 0000 FACC 0000"
	$"FACC 0000 FACC 0000 FACC 0000 FACC 0000"
	$"FAFF 0000 FAFF 0000 FAFF E200 9E00 FA33"
	$"0000 FA33 0000 FA33 0000 FC33 FF33 0000"
	$"0087 0001 FA99 0001 FACC 0001 FAFF 0001"
	$"FA00 0001 FA33 0001 FA66 0001 FA99 0001"
	$"FACC 0001 FAFF 0001 FA66 0001 FA99 0001"
	$"FACC 0001 FA00 0001 FA33 0001 FA66 0001"
	$"FA99 0101 00FA 9900 00FA 9900 00FA 9900"
	$"00FA CC00 00FA CC00 00FA CC00 00FA CC00"
	$"00FA CC00 00FA CC00 00FA FF00 00FA FF00"
	$"00FA FFE2 009E 00FA 3300 00FA 3300 00FA"
	$"3300 00FC 33FF 3300 0000 8700 01FA 9900"
	$"01FA CC00 01FA FF00 01FA 0000 01FA 3300"
	$"01FA 6600 01FA 9900 01FA CC00 01FA FF00"
	$"01FA 6600 01FA 9900 01FA CC00 01FA 0000"
	$"01FA 3300 01FA 6600 01FA 9901 0100 FA99"
	$"0000 FA99 0000 FA99 0000 FACC 0000 FACC"
	$"0000 FACC 0000 FACC 0000 FACC 0000 FACC"
	$"0000 FAFF 0000 FAFF 0000 FAFF E200 9E00"
	$"FA33 0000 FA33 0000 FA33 0000 FC33 FF33"
	$"0000 000A 8101 0001 8200 8100 FE00 00C0"
	$"0001 FACC 0001 FAFF 0001 FA00 0001 FA33"
	$"0001 FA66 0001 FA99 0001 FACC 0001 FAFF"
	$"0001 FA00 0001 FA33 0001 FA66 0001 FA99"
	$"0001 FACC 0001 FAFF 0001 FA00 0001 FA33"
	$"0001 F000 FA33 0000 FA33 0000 FA33 0000"
	$"FA33 0000 FA33 0000 FA33 0000 FA66 0000"
	$"FA66 0000 FA66 0000 FA66 0000 FA66 0000"
	$"FA66 0000 FA99 0000 FB99 0299 0000 FA33"
	$"0000 FA33 0000 FA33 0000 FA33 0000 FA33"
	$"0000 FA33 0000 FA33 0000 FA33 0000 FA33"
	$"0000 FA33 0000 FA33 0000 FA33 0000 FA33"
	$"0000 FA33 0000 FA33 0000 FC33 FF33 0000"
	$"00C0 0001 FACC 0001 FAFF 0001 FA00 0001"
	$"FA33 0001 FA66 0001 FA99 0001 FACC 0001"
	$"FAFF 0001 FA00 0001 FA33 0001 FA66 0001"
	$"FA99 0001 FACC 0001 FAFF 0001 FA00 0001"
	$"FA33 0001 F000 FA33 0000 FA33 0000 FA33"
	$"0000 FA33 0000 FA33 0000 FA33 0000 FA66"
	$"0000 FA66 0000 FA66 0000 FA66 0000 FA66"
	$"0000 FA66 0000 FA99 0000 FB99 0299 0000"
	$"FA33 0000 FA33 0000 FA33 0000 FA33 0000"
	$"FA33 0000 FA33 0000 FA33 0000 FA33 0000"
	$"FA33 0000 FA33 0000 FA33 0000 FA33 0000"
	$"FA33 0000 FA33 0000 FA33 0000 FC33 FF33"
	$"0000 00C0 0001 FACC 0001 FAFF 0001 FA00"
	$"0001 FA33 0001 FA66 0001 FA99 0001 FACC"
	$"0001 FAFF 0001 FA00 0001 FA33 0001 FA66"
	$"0001 FA99 0001 FACC 0001 FAFF 0001 FA00"
	$"0001 FA33 0001 F000 FA33 0000 FA33 0000"
	$"FA33 0000 FA33 0000 FA33 0000 FA33 0000"
	$"FA66 0000 FA66 0000 FA66 0000 FA66 0000"
	$"FA66 0000 FA66 0000 FA99 0000 FB99 0299"
	$"0000 FA33 0000 FA33 0000 FA33 0000 FA33"
	$"0000 FA33 0000 FA33 0000 FA33 0000 FA33"
	$"0000 FA33 0000 FA33 0000 FA33 0000 FA33"
	$"0000 FA33 0000 FA33 0000 FA33 0000 FC33"
	$"FF33 0000 00C0 0001 FACC 0001 FAFF 0001"
	$"FA00 0001 FA33 0001 FA66 0001 FA99 0001"
	$"FACC 0001 FAFF 0001 FA00 0001 FA33 0001"
	$"FA66 0001 FA99 0001 FACC 0001 FAFF 0001"
	$"FA00 0001 FA33 0001 F000 FA33 0000 FA33"
	$"0000 FA33 0000 FA33 0000 FA33 0000 FA33"
	$"0000 FA66 0000 FA66 0000 FA66 0000 FA66"
	$"0000 FA66 0000 FA66 0000 FA99 0000 FB99"
	$"0299 0000 FA33 0000 FA33 0000 FA33 0000"
	$"FA33 0000 FA33 0000 FA33 0000 FA33 0000"
	$"FA33 0000 FA33 0000 FA33 0000 FA33 0000"
	$"FA33 0000 FA33 0000 FA33 0000 FA33 0000"
	$"FC33 FF33 0000 00C0 0001 FACC 0001 FAFF"
	$"0001 FA00 0001 FA33 0001 FA66 0001 FA99"
	$"0001 FACC 0001 FAFF 0001 FA00 0001 FA33"
	$"0001 FA66 0001 FA99 0001 FACC 0001 FAFF"
	$"0001 FA00 0001 FA33 0001 F000 FA33 0000"
	$"FA33 0000 FA33 0000 FA33 0000 FA33 0000"
	$"FA33 0000 FA66 0000 FA66 0000 FA66 0000"
	$"FA66 0000 FA66 0000 FA66 0000 FA99 0000"
	$"FB99 0299 0000 FA33 0000 FA33 0000 FA33"
	$"0000 FA33 0000 FA33 0000 FA33 0000 FA33"
	$"0000 FA33 0000 FA33 0000 FA33 0000 FA33"
	$"0000 FA33 0000 FA33 0000 FA33 0000 FA33"
	$"0000 FC33 FF33 0000 00C0 0001 FACC 0001"
	$"FAFF 0001 FA00 0001 FA33 0001 FA66 0001"
	$"FA99 0001 FACC 0001 FAFF 0001 FA00 0001"
	$"FA33 0001 FA66 0001 FA99 0001 FACC 0001"
	$"FAFF 0001 FA00 0001 FA33 0001 F000 FA33"
	$"0000 FA33 0000 FA33 0000 FA33 0000 FA33"
	$"0000 FA33 0000 FA66 0000 FA66 0000 FA66"
	$"0000 FA66 0000 FA66 0000 FA66 0000 FA99"
	$"0000 FB99 0299 0000 FA33 0000 FA33 0000"
	$"FA33 0000 FA33 0000 FA33 0000 FA33 0000"
	$"FA33 0000 FA33 0000 FA33 0000 FA33 0000"
	$"FA33 0000 FA33 0000 FA33 0000 FA33 0000"
	$"FA33 0000 FC33 FF33 0000 00C0 0001 FACC"
	$"0001 FAFF 0001 FA00 0001 FA33 0001 FA66"
	$"0001 FA99 0001 FACC 0001 FAFF 0001 FA00"
	$"0001 FA33 0001 FA66 0001 FA99 0001 FACC"
	$"0001 FAFF 0001 FA00 0001 FA33 0001 F000"
	$"FA33 0000 FA33 0000 FA33 0000 FA33 0000"
	$"FA33 0000 FA33 0000 FA66 0000 FA66 0000"
	$"FA66 0000 FA66 0000 FA66 0000 FA66 0000"
	$"FA99 0000 FB99 0299 0000 FA33 0000 FA33"
	$"0000 FA33 0000 FA33 0000 FA33 0000 FA33"
	$"0000 FA33 0000 FA33 0000 FA33 0000 FA33"
	$"0000 FA33 0000 FA33 0000 FA33 0000 FA33"
	$"0000 FA33 0000 FC33 FF33 0000 000A 8101"
	$"0001 8200 8100 FE00 00C3 0001 FA66 0001"
	$"FA99 0001 FACC 0001 FAFF 0001 FA00 0001"
	$"FA33 0001 FA66 0001 FA99 0001 FACC 0001"
	$"FAFF 0001 FA33 0001 FA66 0001 FA99 0001"
	$"FACC 0001 FAFF 0001 FA00 0101 00FA 9900"
	$"00FA 9900 00FA 9900 00FA 9900 00FA CC00"
	$"00FA CC00 00FA CC00 00FA CC00 00FA CC00"
	$"00FA CC00 00FA FF00 00FA FF00 00FA FF00"
	$"00FA FF00 00FA FFFA 00FE 00FA 3300 00FA"
	$"3300 00FA 3300 00FA 3300 00FA 3300 00FA"
	$"3300 00FA 3300 00FA 3300 00FA 3300 00FA"
	$"3300 00FA 3300 00FA 3300 00FA 3300 00FA"
	$"3300 00FA 3300 00FC 66FF 6600 0000 C300"
	$"01FA 6600 01FA 9900 01FA CC00 01FA FF00"
	$"01FA 0000 01FA 3300 01FA 6600 01FA 9900"
	$"01FA CC00 01FA FF00 01FA 3300 01FA 6600"
	$"01FA 9900 01FA CC00 01FA FF00 01FA 0001"
	$"0100 FA99 0000 FA99 0000 FA99 0000 FA99"
	$"0000 FACC 0000 FACC 0000 FACC 0000 FACC"
	$"0000 FACC 0000 FACC 0000 FAFF 0000 FAFF"
	$"0000 FAFF 0000 FAFF 0000 FAFF FA00 FE00"
	$"FA33 0000 FA33 0000 FA33 0000 FA33 0000"
	$"FA33 0000 FA33 0000 FA33 0000 FA33 0000"
	$"FA33 0000 FA33 0000 FA33 0000 FA33 0000"
	$"FA33 0000 FA33 0000 FA33 0000 FC66 FF66"
	$"0000 00C3 0001 FA66 0001 FA99 0001 FACC"
	$"0001 FAFF 0001 FA00 0001 FA33 0001 FA66"
	$"0001 FA99 0001 FACC 0001 FAFF 0001 FA33"
	$"0001 FA66 0001 FA99 0001 FACC 0001 FAFF"
	$"0001 FA00 0101 00FA 9900 00FA 9900 00FA"
	$"9900 00FA 9900 00FA CC00 00FA CC00 00FA"
	$"CC00 00FA CC00 00FA CC00 00FA CC00 00FA"
	$"FF00 00FA FF00 00FA FF00 00FA FF00 00FA"
	$"FFFA 00FE 00FA 3300 00FA 3300 00FA 3300"
	$"00FA 3300 00FA 3300 00FA 3300 00FA 3300"
	$"00FA 3300 00FA 3300 00FA 3300 00FA 3300"
	$"00FA 3300 00FA 3300 00FA 3300 00FA 3300"
	$"00FC 66FF 6600 0000 C300 01FA 6600 01FA"
	$"9900 01FA CC00 01FA FF00 01FA 0000 01FA"
	$"3300 01FA 6600 01FA 9900 01FA CC00 01FA"
	$"FF00 01FA 3300 01FA 6600 01FA 9900 01FA"
	$"CC00 01FA FF00 01FA 0001 0100 FA99 0000"
	$"FA99 0000 FA99 0000 FA99 0000 FACC 0000"
	$"FACC 0000 FACC 0000 FACC 0000 FACC 0000"
	$"FACC 0000 FAFF 0000 FAFF 0000 FAFF 0000"
	$"FAFF 0000 FAFF FA00 FE00 FA33 0000 FA33"
	$"0000 FA33 0000 FA33 0000 FA33 0000 FA33"
	$"0000 FA33 0000 FA33 0000 FA33 0000 FA33"
	$"0000 FA33 0000 FA33 0000 FA33 0000 FA33"
	$"0000 FA33 0000 FC66 FF66 0000 00C3 0001"
	$"FA66 0001 FA99 0001 FACC 0001 FAFF 0001"
	$"FA00 0001 FA33 0001 FA66 0001 FA99 0001"
	$"FACC 0001 FAFF 0001 FA33 0001 FA66 0001"
	$"FA99 0001 FACC 0001 FAFF 0001 FA00 0101"
	$"00FA 9900 00FA 9900 00FA 9900 00FA 9900"
	$"00FA CC00 00FA CC00 00FA CC00 00FA CC00"
	$"00FA CC00 00FA CC00 00FA FF00 00FA FF00"
	$"00FA FF00 00FA FF00 00FA FFFA 00FE 00FA"
	$"3300 00FA 3300 00FA 3300 00FA 3300 00FA"
	$"3300 00FA 3300 00FA 3300 00FA 3300 00FA"
	$"3300 00FA 3300 00FA 3300 00FA 3300 00FA"
	$"3300 00FA 3300 00FA 3300 00FC 66FF 6600"
	$"0000 C300 01FA 6600 01FA 9900 01FA CC00"
	$"01FA FF00 01FA 0000 01FA 3300 01FA 6600"
	$"01FA 9900 01FA CC00 01FA FF00 01FA 3300"
	$"01FA 6600 01FA 9900 01FA CC00 01FA FF00"
	$"01FA 0001 0100 FA99 0000 FA99 0000 FA99"
	$"0000 FA99 0000 FACC 0000 FACC 0000 FACC"
	$"0000 FACC 0000 FACC 0000 FACC 0000 FAFF"
	$"0000 FAFF 0000 FAFF 0000 FAFF 0000 FAFF"
	$"FA00 FE00 FA33 0000 FA33 0000 FA33 0000"
	$"FA33 0000 FA33 0000 FA33 0000 FA33 0000"
	$"FA33 0000 FA33 0000 FA33 0000 FA33 0000"
	$"FA33 0000 FA33 0000 FA33 0000 FA33 0000"
	$"FC66 FF66 0000 00C3 0001 FA66 0001 FA99"
	$"0001 FACC 0001 FAFF 0001 FA00 0001 FA33"
	$"0001 FA66 0001 FA99 0001 FACC 0001 FAFF"
	$"0001 FA33 0001 FA66 0001 FA99 0001 FACC"
	$"0001 FAFF 0001 FA00 0101 00FA 9900 00FA"
	$"9900 00FA 9900 00FA 9900 00FA CC00 00FA"
	$"CC00 00FA CC00 00FA CC00 00FA CC00 00FA"
	$"CC00 00FA FF00 00FA FF00 00FA FF00 00FA"
	$"FF00 00FA FFFA 00FE 00FA 3300 00FA 3300"
	$"00FA 3300 00FA 3300 00FA 3300 00FA 3300"
	$"00FA 3300 00FA 3300 00FA 3300 00FA 3300"
	$"00FA 3300 00FA 3300 00FA 3300 00FA 3300"
	$"00FA 3300 00FC 66FF 6600 0000 0A81 0100"
	$"0182 0081 00FE 0000 B400 01FA 3300 01FA"
	$"6600 01FA 9900 01FA CC00 01FA FF00 01FA"
	$"0000 01FA 3300 01FA 6600 01FA 9900 01FA"
	$"CC00 01FA FF00 01FA 0000 01FA 3300 01FA"
	$"6600 01FA 9900 01FA CC00 01D8 00FA 3300"
	$"00FA 3300 00FA 3300 00FA 3300 00FA 3300"
	$"00FA 3300 00FA 6600 00FA 6600 00FA 6600"
	$"00FA 6600 00FB 6602 6600 00FA 6600 00FA"
	$"6600 00FA 6600 00FA 6600 00FA 6600 00FA"
	$"6600 00FA 6600 00FA 6600 00FA 6600 00FA"
	$"6600 00FA 6600 00FA 6600 00FA 6600 00FA"
	$"6600 00FA 6600 00FC 66FF 6600 0000 B400"
	$"01FA 3300 01FA 6600 01FA 9900 01FA CC00"
	$"01FA FF00 01FA 0000 01FA 3300 01FA 6600"
	$"01FA 9900 01FA CC00 01FA FF00 01FA 0000"
	$"01FA 3300 01FA 6600 01FA 9900 01FA CC00"
	$"01D8 00FA 3300 00FA 3300 00FA 3300 00FA"
	$"3300 00FA 3300 00FA 3300 00FA 6600 00FA"
	$"6600 00FA 6600 00FA 6600 00FB 6602 6600"
	$"00FA 6600 00FA 6600 00FA 6600 00FA 6600"
	$"00FA 6600 00FA 6600 00FA 6600 00FA 6600"
	$"00FA 6600 00FA 6600 00FA 6600 00FA 6600"
	$"00FA 6600 00FA 6600 00FA 6600 00FC 66FF"
	$"6600 0000 B400 01FA 3300 01FA 6600 01FA"
	$"9900 01FA CC00 01FA FF00 01FA 0000 01FA"
	$"3300 01FA 6600 01FA 9900 01FA CC00 01FA"
	$"FF00 01FA 0000 01FA 3300 01FA 6600 01FA"
	$"9900 01FA CC00 01D8 00FA 3300 00FA 3300"
	$"00FA 3300 00FA 3300 00FA 3300 00FA 3300"
	$"00FA 6600 00FA 6600 00FA 6600 00FA 6600"
	$"00FB 6602 6600 00FA 6600 00FA 6600 00FA"
	$"6600 00FA 6600 00FA 6600 00FA 6600 00FA"
	$"6600 00FA 6600 00FA 6600 00FA 6600 00FA"
	$"6600 00FA 6600 00FA 6600 00FA 6600 00FA"
	$"6600 00FC 66FF 6600 0000 B400 01FA 3300"
	$"01FA 6600 01FA 9900 01FA CC00 01FA FF00"
	$"01FA 0000 01FA 3300 01FA 6600 01FA 9900"
	$"01FA CC00 01FA FF00 01FA 0000 01FA 3300"
	$"01FA 6600 01FA 9900 01FA CC00 01D8 00FA"
	$"3300 00FA 3300 00FA 3300 00FA 3300 00FA"
	$"3300 00FA 3300 00FA 6600 00FA 6600 00FA"
	$"6600 00FA 6600 00FB 6602 6600 00FA 6600"
	$"00FA 6600 00FA 6600 00FA 6600 00FA 6600"
	$"00FA 6600 00FA 6600 00FA 6600 00FA 6600"
	$"00FA 6600 00FA 6600 00FA 6600 00FA 6600"
	$"00FA 6600 00FA 6600 00FC 66FF 6600 0000"
	$"B400 01FA 3300 01FA 6600 01FA 9900 01FA"
	$"CC00 01FA FF00 01FA 0000 01FA 3300 01FA"
	$"6600 01FA 9900 01FA CC00 01FA FF00 01FA"
	$"0000 01FA 3300 01FA 6600 01FA 9900 01FA"
	$"CC00 01D8 00FA 3300 00FA 3300 00FA 3300"
	$"00FA 3300 00FA 3300 00FA 3300 00FA 6600"
	$"00FA 6600 00FA 6600 00FA 6600 00FB 6602"
	$"6600 00FA 6600 00FA 6600 00FA 6600 00FA"
	$"6600 00FA 6600 00FA 6600 00FA 6600 00FA"
	$"6600 00FA 6600 00FA 6600 00FA 6600 00FA"
	$"6600 00FA 6600 00FA 6600 00FA 6600 00FC"
	$"66FF 6600 0000 B400 01FA 3300 01FA 6600"
	$"01FA 9900 01FA CC00 01FA FF00 01FA 0000"
	$"01FA 3300 01FA 6600 01FA 9900 01FA CC00"
	$"01FA FF00 01FA 0000 01FA 3300 01FA 6600"
	$"01FA 9900 01FA CC00 01D8 00FA 3300 00FA"
	$"3300 00FA 3300 00FA 3300 00FA 3300 00FA"
	$"3300 00FA 6600 00FA 6600 00FA 6600 00FA"
	$"6600 00FB 6602 6600 00FA 6600 00FA 6600"
	$"00FA 6600 00FA 6600 00FA 6600 00FA 6600"
	$"00FA 6600 00FA 6600 00FA 6600 00FA 6600"
	$"00FA 6600 00FA 6600 00FA 6600 00FA 6600"
	$"00FA 6600 00FC 66FF 6600 0000 B400 01FA"
	$"3300 01FA 6600 01FA 9900 01FA CC00 01FA"
	$"FF00 01FA 0000 01FA 3300 01FA 6600 01FA"
	$"9900 01FA CC00 01FA FF00 01FA 0000 01FA"
	$"3300 01FA 6600 01FA 9900 01FA CC00 01D8"
	$"00FA 3300 00FA 3300 00FA 3300 00FA 3300"
	$"00FA 3300 00FA 3300 00FA 6600 00FA 6600"
	$"00FA 6600 00FA 6600 00FB 6602 6600 00FA"
	$"6600 00FA 6600 00FA 6600 00FA 6600 00FA"
	$"6600 00FA 6600 00FA 6600 00FA 6600 00FA"
	$"6600 00FA 6600 00FA 6600 00FA 6600 00FA"
	$"6600 00FA 6600 00FA 6600 00FC 66FF 6600"
	$"0000 0A81 0100 0182 0081 00FE 0000 C300"
	$"01FA 0000 01FA 3300 01FA 6600 01FA 9900"
	$"01FA CC00 01FA FF00 01FA 0000 01FA 3300"
	$"01FA 9900 01FA CC00 01FA FF00 01FA 0000"
	$"01FA 3300 01FA 9900 01FA CC00 01FA FF01"
	$"0100 FA99 0000 FA99 0000 FA99 0000 FA99"
	$"0000 FA99 0000 FA99 0000 FACC 0000 FACC"
	$"0000 FACC 0000 FACC 0000 FACC 0000 FAFF"
	$"0000 FAFF 0000 FAFF 0000 FAFF FA00 FE00"
	$"FA66 0000 FA66 0000 FA66 0000 FA66 0000"
	$"FA66 0000 FA66 0000 FA66 0000 FA66 0000"
	$"FA66 0000 FA66 0000 FA66 0000 FA66 0000"
	$"FA66 0000 FA66 0000 FA66 0000 FCCC FFCC"
	$"0000 00C3 0001 FA00 0001 FA33 0001 FA66"
	$"0001 FA99 0001 FACC 0001 FAFF 0001 FA00"
	$"0001 FA33 0001 FA99 0001 FACC 0001 FAFF"
	$"0001 FA00 0001 FA33 0001 FA99 0001 FACC"
	$"0001 FAFF 0101 00FA 9900 00FA 9900 00FA"
	$"9900 00FA 9900 00FA 9900 00FA 9900 00FA"
	$"CC00 00FA CC00 00FA CC00 00FA CC00 00FA"
	$"CC00 00FA FF00 00FA FF00 00FA FF00 00FA"
	$"FFFA 00FE 00FA 6600 00FA 6600 00FA 6600"
	$"00FA 6600 00FA 6600 00FA 6600 00FA 6600"
	$"00FA 6600 00FA 6600 00FA 6600 00FA 6600"
	$"00FA 6600 00FA 6600 00FA 6600 00FA 6600"
	$"00FC CCFF CC00 0000 C300 01FA 0000 01FA"
	$"3300 01FA 6600 01FA 9900 01FA CC00 01FA"
	$"FF00 01FA 0000 01FA 3300 01FA 9900 01FA"
	$"CC00 01FA FF00 01FA 0000 01FA 3300 01FA"
	$"9900 01FA CC00 01FA FF01 0100 FA99 0000"
	$"FA99 0000 FA99 0000 FA99 0000 FA99 0000"
	$"FA99 0000 FACC 0000 FACC 0000 FACC 0000"
	$"FACC 0000 FACC 0000 FAFF 0000 FAFF 0000"
	$"FAFF 0000 FAFF FA00 FE00 FA66 0000 FA66"
	$"0000 FA66 0000 FA66 0000 FA66 0000 FA66"
	$"0000 FA66 0000 FA66 0000 FA66 0000 FA66"
	$"0000 FA66 0000 FA66 0000 FA66 0000 FA66"
	$"0000 FA66 0000 FCCC FFCC 0000 00C3 0001"
	$"FA00 0001 FA33 0001 FA66 0001 FA99 0001"
	$"FACC 0001 FAFF 0001 FA00 0001 FA33 0001"
	$"FA99 0001 FACC 0001 FAFF 0001 FA00 0001"
	$"FA33 0001 FA99 0001 FACC 0001 FAFF 0101"
	$"00FA 9900 00FA 9900 00FA 9900 00FA 9900"
	$"00FA 9900 00FA 9900 00FA CC00 00FA CC00"
	$"00FA CC00 00FA CC00 00FA CC00 00FA FF00"
	$"00FA FF00 00FA FF00 00FA FFFA 00FE 00FA"
	$"6600 00FA 6600 00FA 6600 00FA 6600 00FA"
	$"6600 00FA 6600 00FA 6600 00FA 6600 00FA"
	$"6600 00FA 6600 00FA 6600 00FA 6600 00FA"
	$"6600 00FA 6600 00FA 6600 00FC CCFF CC00"
	$"0000 C300 01FA 0000 01FA 3300 01FA 6600"
	$"01FA 9900 01FA CC00 01FA FF00 01FA 0000"
	$"01FA 3300 01FA 9900 01FA CC00 01FA FF00"
	$"01FA 0000 01FA 3300 01FA 9900 01FA CC00"
	$"01FA FF01 0100 FA99 0000 FA99 0000 FA99"
	$"0000 FA99 0000 FA99 0000 FA99 0000 FACC"
	$"0000 FACC 0000 FACC 0000 FACC 0000 FACC"
	$"0000 FAFF 0000 FAFF 0000 FAFF 0000 FAFF"
	$"FA00 FE00 FA66 0000 FA66 0000 FA66 0000"
	$"FA66 0000 FA66 0000 FA66 0000 FA66 0000"
	$"FA66 0000 FA66 0000 FA66 0000 FA66 0000"
	$"FA66 0000 FA66 0000 FA66 0000 FA66 0000"
	$"FCCC FFCC 0000 00C3 0001 FA00 0001 FA33"
	$"0001 FA66 0001 FA99 0001 FACC 0001 FAFF"
	$"0001 FA00 0001 FA33 0001 FA99 0001 FACC"
	$"0001 FAFF 0001 FA00 0001 FA33 0001 FA99"
	$"0001 FACC 0001 FAFF 0101 00FA 9900 00FA"
	$"9900 00FA 9900 00FA 9900 00FA 9900 00FA"
	$"9900 00FA CC00 00FA CC00 00FA CC00 00FA"
	$"CC00 00FA CC00 00FA FF00 00FA FF00 00FA"
	$"FF00 00FA FFFA 00FE 00FA 6600 00FA 6600"
	$"00FA 6600 00FA 6600 00FA 6600 00FA 6600"
	$"00FA 6600 00FA 6600 00FA 6600 00FA 6600"
	$"00FA 6600 00FA 6600 00FA 6600 00FA 6600"
	$"00FA 6600 00FC CCFF CC00 0000 C300 01FA"
	$"0000 01FA 3300 01FA 6600 01FA 9900 01FA"
	$"CC00 01FA FF00 01FA 0000 01FA 3300 01FA"
	$"9900 01FA CC00 01FA FF00 01FA 0000 01FA"
	$"3300 01FA 9900 01FA CC00 01FA FF01 0100"
	$"FA99 0000 FA99 0000 FA99 0000 FA99 0000"
	$"FA99 0000 FA99 0000 FACC 0000 FACC 0000"
	$"FACC 0000 FACC 0000 FACC 0000 FAFF 0000"
	$"FAFF 0000 FAFF 0000 FAFF FA00 FE00 FA66"
	$"0000 FA66 0000 FA66 0000 FA66 0000 FA66"
	$"0000 FA66 0000 FA66 0000 FA66 0000 FA66"
	$"0000 FA66 0000 FA66 0000 FA66 0000 FA66"
	$"0000 FA66 0000 FA66 0000 FCCC FFCC 0000"
	$"000A 8101 0001 8200 8100 FE00 00B0 0001"
	$"FACC 0001 FA00 0001 FA99 0001 FA99 0001"
	$"FACC 0001 FA00 0001 FA33 0001 FA66 0001"
	$"FACC 0001 FAFF 0001 FA00 0001 FA33 0001"
	$"FA66 0001 FA99 0001 FACC 0001 FAFF 0001"
	$"F800 FA99 0000 FA33 E800 FA33 F800 FA33"
	$"F800 FA66 0000 FA66 0000 FA33 0000 FA66"
	$"0000 FA66 0000 FB33 0233 0000 FAFF 0000"
	$"FA99 0000 FA99 0000 FA99 0000 FA99 0000"
	$"FA99 0000 FA99 0000 FA99 0000 FA99 0000"
	$"FA99 0000 FA99 0000 FA99 0000 FA99 0000"
	$"FA99 0000 FA99 0000 FC99 FF99 0000 00B0"
	$"0001 FACC 0001 FA00 0001 FA99 0001 FA99"
	$"0001 FACC 0001 FA00 0001 FA33 0001 FA66"
	$"0001 FACC 0001 FAFF 0001 FA00 0001 FA33"
	$"0001 FA66 0001 FA99 0001 FACC 0001 FAFF"
	$"0001 F800 FA99 0000 FA33 E800 FA33 F800"
	$"FA33 F800 FA66 0000 FA66 0000 FA33 0000"
	$"FA66 0000 FA66 0000 FB33 0233 0000 FAFF"
	$"0000 FA99 0000 FA99 0000 FA99 0000 FA99"
	$"0000 FA99 0000 FA99 0000 FA99 0000 FA99"
	$"0000 FA99 0000 FA99 0000 FA99 0000 FA99"
	$"0000 FA99 0000 FA99 0000 FC99 FF99 0000"
	$"00B0 0001 FACC 0001 FA00 0001 FA99 0001"
	$"FA99 0001 FACC 0001 FA00 0001 FA33 0001"
	$"FA66 0001 FACC 0001 FAFF 0001 FA00 0001"
	$"FA33 0001 FA66 0001 FA99 0001 FACC 0001"
	$"FAFF 0001 F800 FA99 0000 FA33 E800 FA33"
	$"F800 FA33 F800 FA66 0000 FA66 0000 FA33"
	$"0000 FA66 0000 FA66 0000 FB33 0233 0000"
	$"FAFF 0000 FA99 0000 FA99 0000 FA99 0000"
	$"FA99 0000 FA99 0000 FA99 0000 FA99 0000"
	$"FA99 0000 FA99 0000 FA99 0000 FA99 0000"
	$"FA99 0000 FA99 0000 FA99 0000 FC99 FF99"
	$"0000 00B0 0001 FACC 0001 FA00 0001 FA99"
	$"0001 FA99 0001 FACC 0001 FA00 0001 FA33"
	$"0001 FA66 0001 FACC 0001 FAFF 0001 FA00"
	$"0001 FA33 0001 FA66 0001 FA99 0001 FACC"
	$"0001 FAFF 0001 F800 FA99 0000 FA33 E800"
	$"FA33 F800 FA33 F800 FA66 0000 FA66 0000"
	$"FA33 0000 FA66 0000 FA66 0000 FB33 0233"
	$"0000 FAFF 0000 FA99 0000 FA99 0000 FA99"
	$"0000 FA99 0000 FA99 0000 FA99 0000 FA99"
	$"0000 FA99 0000 FA99 0000 FA99 0000 FA99"
	$"0000 FA99 0000 FA99 0000 FA99 0000 FC99"
	$"FF99 0000 00B0 0001 FACC 0001 FA00 0001"
	$"FA99 0001 FA99 0001 FACC 0001 FA00 0001"
	$"FA33 0001 FA66 0001 FACC 0001 FAFF 0001"
	$"FA00 0001 FA33 0001 FA66 0001 FA99 0001"
	$"FACC 0001 FAFF 0001 F800 FA99 0000 FA33"
	$"E800 FA33 F800 FA33 F800 FA66 0000 FA66"
	$"0000 FA33 0000 FA66 0000 FA66 0000 FB33"
	$"0233 0000 FAFF 0000 FA99 0000 FA99 0000"
	$"FA99 0000 FA99 0000 FA99 0000 FA99 0000"
	$"FA99 0000 FA99 0000 FA99 0000 FA99 0000"
	$"FA99 0000 FA99 0000 FA99 0000 FA99 0000"
	$"FC99 FF99 0000 00B0 0001 FACC 0001 FA00"
	$"0001 FA99 0001 FA99 0001 FACC 0001 FA00"
	$"0001 FA33 0001 FA66 0001 FACC 0001 FAFF"
	$"0001 FA00 0001 FA33 0001 FA66 0001 FA99"
	$"0001 FACC 0001 FAFF 0001 F800 FA99 0000"
	$"FA33 E800 FA33 F800 FA33 F800 FA66 0000"
	$"FA66 0000 FA33 0000 FA66 0000 FA66 0000"
	$"FB33 0233 0000 FAFF 0000 FA99 0000 FA99"
	$"0000 FA99 0000 FA99 0000 FA99 0000 FA99"
	$"0000 FA99 0000 FA99 0000 FA99 0000 FA99"
	$"0000 FA99 0000 FA99 0000 FA99 0000 FA99"
	$"0000 FC99 FF99 0000 00B0 0001 FACC 0001"
	$"FA00 0001 FA99 0001 FA99 0001 FACC 0001"
	$"FA00 0001 FA33 0001 FA66 0001 FACC 0001"
	$"FAFF 0001 FA00 0001 FA33 0001 FA66 0001"
	$"FA99 0001 FACC 0001 FAFF 0001 F800 FA99"
	$"0000 FA33 E800 FA33 F800 FA33 F800 FA66"
	$"0000 FA66 0000 FA33 0000 FA66 0000 FA66"
	$"0000 FB33 0233 0000 FAFF 0000 FA99 0000"
	$"FA99 0000 FA99 0000 FA99 0000 FA99 0000"
	$"FA99 0000 FA99 0000 FA99 0000 FA99 0000"
	$"FA99 0000 FA99 0000 FA99 0000 FA99 0000"
	$"FA99 0000 FC99 FF99 0000 000A 8101 0001"
	$"8200 8100 FE00 00C7 0001 FA33 0001 FA66"
	$"0001 FA99 0001 FACC 0001 FAFF 0001 FA00"
	$"0001 FA33 0001 FA66 0001 FA99 0001 FACC"
	$"0001 FAFF 0001 FA00 0001 FA33 0001 FA66"
	$"0001 FA99 0001 FACC 0101 00FA 9900 00FA"
	$"9900 00FA 9900 00FA 9900 00FA 9900 00FA"
	$"CC00 00FA CC00 00FA CC00 00FA CC00 00FA"
	$"CC00 00FA CC00 00FA FF00 00FA FF00 00FA"
	$"CC00 00FA FF00 00FB FF02 FF00 00FA 9900"
	$"00FA 9900 00FA 9900 00FA 9900 00FA 9900"
	$"00FA 9900 00FA 9900 00FA 6600 00FA 9900"
	$"00FA 9900 00FA 9900 00FA 9900 00FA 9900"
	$"00FA 9900 00FA 9900 00FC 99FF 9900 0000"
	$"C700 01FA 3300 01FA 6600 01FA 9900 01FA"
	$"CC00 01FA FF00 01FA 0000 01FA 3300 01FA"
	$"6600 01FA 9900 01FA CC00 01FA FF00 01FA"
	$"0000 01FA 3300 01FA 6600 01FA 9900 01FA"
	$"CC01 0100 FA99 0000 FA99 0000 FA99 0000"
	$"FA99 0000 FA99 0000 FACC 0000 FACC 0000"
	$"FACC 0000 FACC 0000 FACC 0000 FACC 0000"
	$"FAFF 0000 FAFF 0000 FACC 0000 FAFF 0000"
	$"FBFF 02FF 0000 FA99 0000 FA99 0000 FA99"
	$"0000 FA99 0000 FA99 0000 FA99 0000 FA99"
	$"0000 FA66 0000 FA99 0000 FA99 0000 FA99"
	$"0000 FA99 0000 FA99 0000 FA99 0000 FA99"
	$"0000 FC99 FF99 0000 00C7 0001 FA33 0001"
	$"FA66 0001 FA99 0001 FACC 0001 FAFF 0001"
	$"FA00 0001 FA33 0001 FA66 0001 FA99 0001"
	$"FACC 0001 FAFF 0001 FA00 0001 FA33 0001"
	$"FA66 0001 FA99 0001 FACC 0101 00FA 9900"
	$"00FA 9900 00FA 9900 00FA 9900 00FA 9900"
	$"00FA CC00 00FA CC00 00FA CC00 00FA CC00"
	$"00FA CC00 00FA CC00 00FA FF00 00FA FF00"
	$"00FA CC00 00FA FF00 00FB FF02 FF00 00FA"
	$"9900 00FA 9900 00FA 9900 00FA 9900 00FA"
	$"9900 00FA 9900 00FA 9900 00FA 6600 00FA"
	$"9900 00FA 9900 00FA 9900 00FA 9900 00FA"
	$"9900 00FA 9900 00FA 9900 00FC 99FF 9900"
	$"0000 C700 01FA 3300 01FA 6600 01FA 9900"
	$"01FA CC00 01FA FF00 01FA 0000 01FA 3300"
	$"01FA 6600 01FA 9900 01FA CC00 01FA FF00"
	$"01FA 0000 01FA 3300 01FA 6600 01FA 9900"
	$"01FA CC01 0100 FA99 0000 FA99 0000 FA99"
	$"0000 FA99 0000 FA99 0000 FACC 0000 FACC"
	$"0000 FACC 0000 FACC 0000 FACC 0000 FACC"
	$"0000 FAFF 0000 FAFF 0000 FACC 0000 FAFF"
	$"0000 FBFF 02FF 0000 FA99 0000 FA99 0000"
	$"FA99 0000 FA99 0000 FA99 0000 FA99 0000"
	$"FA99 0000 FA66 0000 FA99 0000 FA99 0000"
	$"FA99 0000 FA99 0000 FA99 0000 FA99 0000"
	$"FA99 0000 FC99 FF99 0000 00C7 0001 FA33"
	$"0001 FA66 0001 FA99 0001 FACC 0001 FAFF"
	$"0001 FA00 0001 FA33 0001 FA66 0001 FA99"
	$"0001 FACC 0001 FAFF 0001 FA00 0001 FA33"
	$"0001 FA66 0001 FA99 0001 FACC 0101 00FA"
	$"9900 00FA 9900 00FA 9900 00FA 9900 00FA"
	$"9900 00FA CC00 00FA CC00 00FA CC00 00FA"
	$"CC00 00FA CC00 00FA CC00 00FA FF00 00FA"
	$"FF00 00FA CC00 00FA FF00 00FB FF02 FF00"
	$"00FA 9900 00FA 9900 00FA 9900 00FA 9900"
	$"00FA 9900 00FA 9900 00FA 9900 00FA 6600"
	$"00FA 9900 00FA 9900 00FA 9900 00FA 9900"
	$"00FA 9900 00FA 9900 00FA 9900 00FC 99FF"
	$"9900 0000 C700 01FA 3300 01FA 6600 01FA"
	$"9900 01FA CC00 01FA FF00 01FA 0000 01FA"
	$"3300 01FA 6600 01FA 9900 01FA CC00 01FA"
	$"FF00 01FA 0000 01FA 3300 01FA 6600 01FA"
	$"9900 01FA CC01 0100 FA99 0000 FA99 0000"
	$"FA99 0000 FA99 0000 FA99 0000 FACC 0000"
	$"FACC 0000 FACC 0000 FACC 0000 FACC 0000"
	$"FACC 0000 FAFF 0000 FAFF 0000 FACC 0000"
	$"FAFF 0000 FBFF 02FF 0000 FA99 0000 FA99"
	$"0000 FA99 0000 FA99 0000 FA99 0000 FA99"
	$"0000 FA99 0000 FA66 0000 FA99 0000 FA99"
	$"0000 FA99 0000 FA99 0000 FA99 0000 FA99"
	$"0000 FA99 0000 FC99 FF99 0000 00C7 0001"
	$"FA33 0001 FA66 0001 FA99 0001 FACC 0001"
	$"FAFF 0001 FA00 0001 FA33 0001 FA66 0001"
	$"FA99 0001 FACC 0001 FAFF 0001 FA00 0001"
	$"FA33 0001 FA66 0001 FA99 0001 FACC 0101"
	$"00FA 9900 00FA 9900 00FA 9900 00FA 9900"
	$"00FA 9900 00FA CC00 00FA CC00 00FA CC00"
	$"00FA CC00 00FA CC00 00FA CC00 00FA FF00"
	$"00FA FF00 00FA CC00 00FA FF00 00FB FF02"
	$"FF00 00FA 9900 00FA 9900 00FA 9900 00FA"
	$"9900 00FA 9900 00FA 9900 00FA 9900 00FA"
	$"6600 00FA 9900 00FA 9900 00FA 9900 00FA"
	$"9900 00FA 9900 00FA 9900 00FA 9900 00FC"
	$"99FF 9900 0000 0A81 0100 0182 0081 00FE"
	$"0000 B300 01FA FF00 01FA 0000 01FA 3300"
	$"01FA 6600 01FA 9900 01FA CC00 01FA 0000"
	$"01FA 3300 01FA 6600 01FA 9900 01FA CC00"
	$"01FA FF00 01FA 0000 01FA 3300 01FA 6600"
	$"01FA 9901 0100 FAFF D800 FA33 0000 FA33"
	$"0000 FA33 0000 FA33 0000 FA33 0000 FA33"
	$"0000 FA66 0000 FA66 0000 FA66 0000 FB66"
	$"0266 0000 FA99 0000 FACC 0000 FA99 0000"
	$"FACC 0000 FACC 0000 FACC 0000 FA99 0000"
	$"FACC 0000 FACC 0000 FACC 0000 FACC 0000"
	$"FACC 0000 FACC 0000 FACC 0000 FA99 0000"
	$"FCCC FFCC 0000 00B3 0001 FAFF 0001 FA00"
	$"0001 FA33 0001 FA66 0001 FA99 0001 FACC"
	$"0001 FA00 0001 FA33 0001 FA66 0001 FA99"
	$"0001 FACC 0001 FAFF 0001 FA00 0001 FA33"
	$"0001 FA66 0001 FA99 0101 00FA FFD8 00FA"
	$"3300 00FA 3300 00FA 3300 00FA 3300 00FA"
	$"3300 00FA 3300 00FA 6600 00FA 6600 00FA"
	$"6600 00FB 6602 6600 00FA 9900 00FA CC00"
	$"00FA 9900 00FA CC00 00FA CC00 00FA CC00"
	$"00FA 9900 00FA CC00 00FA CC00 00FA CC00"
	$"00FA CC00 00FA CC00 00FA CC00 00FA CC00"
	$"00FA 9900 00FC CCFF CC00 0000 B300 01FA"
	$"FF00 01FA 0000 01FA 3300 01FA 6600 01FA"
	$"9900 01FA CC00 01FA 0000 01FA 3300 01FA"
	$"6600 01FA 9900 01FA CC00 01FA FF00 01FA"
	$"0000 01FA 3300 01FA 6600 01FA 9901 0100"
	$"FAFF D800 FA33 0000 FA33 0000 FA33 0000"
	$"FA33 0000 FA33 0000 FA33 0000 FA66 0000"
	$"FA66 0000 FA66 0000 FB66 0266 0000 FA99"
	$"0000 FACC 0000 FA99 0000 FACC 0000 FACC"
	$"0000 FACC 0000 FA99 0000 FACC 0000 FACC"
	$"0000 FACC 0000 FACC 0000 FACC 0000 FACC"
	$"0000 FACC 0000 FA99 0000 FCCC FFCC 0000"
	$"00B3 0001 FAFF 0001 FA00 0001 FA33 0001"
	$"FA66 0001 FA99 0001 FACC 0001 FA00 0001"
	$"FA33 0001 FA66 0001 FA99 0001 FACC 0001"
	$"FAFF 0001 FA00 0001 FA33 0001 FA66 0001"
	$"FA99 0101 00FA FFD8 00FA 3300 00FA 3300"
	$"00FA 3300 00FA 3300 00FA 3300 00FA 3300"
	$"00FA 6600 00FA 6600 00FA 6600 00FB 6602"
	$"6600 00FA 9900 00FA CC00 00FA 9900 00FA"
	$"CC00 00FA CC00 00FA CC00 00FA 9900 00FA"
	$"CC00 00FA CC00 00FA CC00 00FA CC00 00FA"
	$"CC00 00FA CC00 00FA CC00 00FA 9900 00FC"
	$"CCFF CC00 0000 B300 01FA FF00 01FA 0000"
	$"01FA 3300 01FA 6600 01FA 9900 01FA CC00"
	$"01FA 0000 01FA 3300 01FA 6600 01FA 9900"
	$"01FA CC00 01FA FF00 01FA 0000 01FA 3300"
	$"01FA 6600 01FA 9901 0100 FAFF D800 FA33"
	$"0000 FA33 0000 FA33 0000 FA33 0000 FA33"
	$"0000 FA33 0000 FA66 0000 FA66 0000 FA66"
	$"0000 FB66 0266 0000 FA99 0000 FACC 0000"
	$"FA99 0000 FACC 0000 FACC 0000 FACC 0000"
	$"FA99 0000 FACC 0000 FACC 0000 FACC 0000"
	$"FACC 0000 FACC 0000 FACC 0000 FACC 0000"
	$"FA99 0000 FCCC FFCC 0000 00B3 0001 FAFF"
	$"0001 FA00 0001 FA33 0001 FA66 0001 FA99"
	$"0001 FACC 0001 FA00 0001 FA33 0001 FA66"
	$"0001 FA99 0001 FACC 0001 FAFF 0001 FA00"
	$"0001 FA33 0001 FA66 0001 FA99 0101 00FA"
	$"FFD8 00FA 3300 00FA 3300 00FA 3300 00FA"
	$"3300 00FA 3300 00FA 3300 00FA 6600 00FA"
	$"6600 00FA 6600 00FB 6602 6600 00FA 9900"
	$"00FA CC00 00FA 9900 00FA CC00 00FA CC00"
	$"00FA CC00 00FA 9900 00FA CC00 00FA CC00"
	$"00FA CC00 00FA CC00 00FA CC00 00FA CC00"
	$"00FA CC00 00FA 9900 00FC CCFF CC00 0000"
	$"B300 01FA FF00 01FA 0000 01FA 3300 01FA"
	$"6600 01FA 9900 01FA CC00 01FA 0000 01FA"
	$"3300 01FA 6600 01FA 9900 01FA CC00 01FA"
	$"FF00 01FA 0000 01FA 3300 01FA 6600 01FA"
	$"9901 0100 FAFF D800 FA33 0000 FA33 0000"
	$"FA33 0000 FA33 0000 FA33 0000 FA33 0000"
	$"FA66 0000 FA66 0000 FA66 0000 FB66 0266"
	$"0000 FA99 0000 FACC 0000 FA99 0000 FACC"
	$"0000 FACC 0000 FACC 0000 FA99 0000 FACC"
	$"0000 FACC 0000 FACC 0000 FACC 0000 FACC"
	$"0000 FACC 0000 FACC 0000 FA99 0000 FCCC"
	$"FFCC 0000 000A 8101 0001 8200 8100 FE00"
	$"00C7 0001 FACC 0001 FAFF 0001 FA00 0001"
	$"FA33 0001 FA66 0001 FA99 0001 FACC 0001"
	$"FAFF 0001 FA00 0001 FA33 0001 FA66 0001"
	$"FA99 0001 FACC 0001 FAFF 0001 FA00 0001"
	$"FA33 0101 00FA 6600 00FA 6600 00FA 9900"
	$"00FA 9900 00FA 9900 00FA 9900 00FA 9900"
	$"00FA 9900 00FA CC00 00FA CC00 00FA CC00"
	$"00FA CC00 00FA CC00 00FA CC00 00FA FF00"
	$"00FB FF02 FF00 00FA CC00 00FA 9900 00FA"
	$"CC00 00FA CC00 00FA CC00 00FA CC00 00FA"
	$"CC00 00FA CC00 00FA CC00 00FA CC00 00FA"
	$"CC00 00FA CC00 00FA CC00 00FA CC00 00FA"
	$"CC00 00FC CCFF CC00 0000 C700 01FA CC00"
	$"01FA FF00 01FA 0000 01FA 3300 01FA 6600"
	$"01FA 9900 01FA CC00 01FA FF00 01FA 0000"
	$"01FA 3300 01FA 6600 01FA 9900 01FA CC00"
	$"01FA FF00 01FA 0000 01FA 3301 0100 FA66"
	$"0000 FA66 0000 FA99 0000 FA99 0000 FA99"
	$"0000 FA99 0000 FA99 0000 FA99 0000 FACC"
	$"0000 FACC 0000 FACC 0000 FACC 0000 FACC"
	$"0000 FACC 0000 FAFF 0000 FBFF 02FF 0000"
	$"FACC 0000 FA99 0000 FACC 0000 FACC 0000"
	$"FACC 0000 FACC 0000 FACC 0000 FACC 0000"
	$"FACC 0000 FACC 0000 FACC 0000 FACC 0000"
	$"FACC 0000 FACC 0000 FACC 0000 FCCC FFCC"
	$"0000 00C7 0001 FACC 0001 FAFF 0001 FA00"
	$"0001 FA33 0001 FA66 0001 FA99 0001 FACC"
	$"0001 FAFF 0001 FA00 0001 FA33 0001 FA66"
	$"0001 FA99 0001 FACC 0001 FAFF 0001 FA00"
	$"0001 FA33 0101 00FA 6600 00FA 6600 00FA"
	$"9900 00FA 9900 00FA 9900 00FA 9900 00FA"
	$"9900 00FA 9900 00FA CC00 00FA CC00 00FA"
	$"CC00 00FA CC00 00FA CC00 00FA CC00 00FA"
	$"FF00 00FB FF02 FF00 00FA CC00 00FA 9900"
	$"00FA CC00 00FA CC00 00FA CC00 00FA CC00"
	$"00FA CC00 00FA CC00 00FA CC00 00FA CC00"
	$"00FA CC00 00FA CC00 00FA CC00 00FA CC00"
	$"00FA CC00 00FC CCFF CC00 0000 C700 01FA"
	$"CC00 01FA FF00 01FA 0000 01FA 3300 01FA"
	$"6600 01FA 9900 01FA CC00 01FA FF00 01FA"
	$"0000 01FA 3300 01FA 6600 01FA 9900 01FA"
	$"CC00 01FA FF00 01FA 0000 01FA 3301 0100"
	$"FA66 0000 FA66 0000 FA99 0000 FA99 0000"
	$"FA99 0000 FA99 0000 FA99 0000 FA99 0000"
	$"FACC 0000 FACC 0000 FACC 0000 FACC 0000"
	$"FACC 0000 FACC 0000 FAFF 0000 FBFF 02FF"
	$"0000 FACC 0000 FA99 0000 FACC 0000 FACC"
	$"0000 FACC 0000 FACC 0000 FACC 0000 FACC"
	$"0000 FACC 0000 FACC 0000 FACC 0000 FACC"
	$"0000 FACC 0000 FACC 0000 FACC 0000 FCCC"
	$"FFCC 0000 00C7 0001 FACC 0001 FAFF 0001"
	$"FA00 0001 FA33 0001 FA66 0001 FA99 0001"
	$"FACC 0001 FAFF 0001 FA00 0001 FA33 0001"
	$"FA66 0001 FA99 0001 FACC 0001 FAFF 0001"
	$"FA00 0001 FA33 0101 00FA 6600 00FA 6600"
	$"00FA 9900 00FA 9900 00FA 9900 00FA 9900"
	$"00FA 9900 00FA 9900 00FA CC00 00FA CC00"
	$"00FA CC00 00FA CC00 00FA CC00 00FA CC00"
	$"00FA FF00 00FB FF02 FF00 00FA CC00 00FA"
	$"9900 00FA CC00 00FA CC00 00FA CC00 00FA"
	$"CC00 00FA CC00 00FA CC00 00FA CC00 00FA"
	$"CC00 00FA CC00 00FA CC00 00FA CC00 00FA"
	$"CC00 00FA CC00 00FC CCFF CC00 0000 C700"
	$"01FA CC00 01FA FF00 01FA 0000 01FA 3300"
	$"01FA 6600 01FA 9900 01FA CC00 01FA FF00"
	$"01FA 0000 01FA 3300 01FA 6600 01FA 9900"
	$"01FA CC00 01FA FF00 01FA 0000 01FA 3301"
	$"0100 FA66 0000 FA66 0000 FA99 0000 FA99"
	$"0000 FA99 0000 FA99 0000 FA99 0000 FA99"
	$"0000 FACC 0000 FACC 0000 FACC 0000 FACC"
	$"0000 FACC 0000 FACC 0000 FAFF 0000 FBFF"
	$"02FF 0000 FACC 0000 FA99 0000 FACC 0000"
	$"FACC 0000 FACC 0000 FACC 0000 FACC 0000"
	$"FACC 0000 FACC 0000 FACC 0000 FACC 0000"
	$"FACC 0000 FACC 0000 FACC 0000 FACC 0000"
	$"FCCC FFCC 0000 00C7 0001 FACC 0001 FAFF"
	$"0001 FA00 0001 FA33 0001 FA66 0001 FA99"
	$"0001 FACC 0001 FAFF 0001 FA00 0001 FA33"
	$"0001 FA66 0001 FA99 0001 FACC 0001 FAFF"
	$"0001 FA00 0001 FA33 0101 00FA 6600 00FA"
	$"6600 00FA 9900 00FA 9900 00FA 9900 00FA"
	$"9900 00FA 9900 00FA 9900 00FA CC00 00FA"
	$"CC00 00FA CC00 00FA CC00 00FA CC00 00FA"
	$"CC00 00FA FF00 00FB FF02 FF00 00FA CC00"
	$"00FA 9900 00FA CC00 00FA CC00 00FA CC00"
	$"00FA CC00 00FA CC00 00FA CC00 00FA CC00"
	$"00FA CC00 00FA CC00 00FA CC00 00FA CC00"
	$"00FA CC00 00FA CC00 00FC CCFF CC00 0000"
	$"0A81 0100 0182 0081 00FE 0000 BB00 01FA"
	$"6600 01FA 9900 01FA CC00 01FA FF00 01FA"
	$"3300 01FA 6600 01FA 9900 01FA 0000 01FA"
	$"3300 01FA 6600 01FA 9900 01FA CC00 01FA"
	$"FF00 01FA 0000 01FA 3300 01FA 6601 0100"
	$"FAFF 0000 FAFF 0000 FAFF 0000 FAFF E800"
	$"FA33 0000 FA33 0000 FA33 0000 FA33 0000"
	$"FA33 0000 FA33 0000 FA66 0000 FA66 0000"
	$"FB66 0266 0000 FA99 0000 FACC 0000 FACC"
	$"0000 FACC 0000 FACC 0000 FAFF 0000 FAFF"
	$"0000 FACC 0000 FAFF 0000 FAFF 0000 FAFF"
	$"0000 FAFF 0000 FAFF 0000 FAFF 0000 FAFF"
	$"0000 FCCC FFCC 0000 00BB 0001 FA66 0001"
	$"FA99 0001 FACC 0001 FAFF 0001 FA33 0001"
	$"FA66 0001 FA99 0001 FA00 0001 FA33 0001"
	$"FA66 0001 FA99 0001 FACC 0001 FAFF 0001"
	$"FA00 0001 FA33 0001 FA66 0101 00FA FF00"
	$"00FA FF00 00FA FF00 00FA FFE8 00FA 3300"
	$"00FA 3300 00FA 3300 00FA 3300 00FA 3300"
	$"00FA 3300 00FA 6600 00FA 6600 00FB 6602"
	$"6600 00FA 9900 00FA CC00 00FA CC00 00FA"
	$"CC00 00FA CC00 00FA FF00 00FA FF00 00FA"
	$"CC00 00FA FF00 00FA FF00 00FA FF00 00FA"
	$"FF00 00FA FF00 00FA FF00 00FA FF00 00FC"
	$"CCFF CC00 0000 BB00 01FA 6600 01FA 9900"
	$"01FA CC00 01FA FF00 01FA 3300 01FA 6600"
	$"01FA 9900 01FA 0000 01FA 3300 01FA 6600"
	$"01FA 9900 01FA CC00 01FA FF00 01FA 0000"
	$"01FA 3300 01FA 6601 0100 FAFF 0000 FAFF"
	$"0000 FAFF 0000 FAFF E800 FA33 0000 FA33"
	$"0000 FA33 0000 FA33 0000 FA33 0000 FA33"
	$"0000 FA66 0000 FA66 0000 FB66 0266 0000"
	$"FA99 0000 FACC 0000 FACC 0000 FACC 0000"
	$"FACC 0000 FAFF 0000 FAFF 0000 FACC 0000"
	$"FAFF 0000 FAFF 0000 FAFF 0000 FAFF 0000"
	$"FAFF 0000 FAFF 0000 FAFF 0000 FCCC FFCC"
	$"0000 00BB 0001 FA66 0001 FA99 0001 FACC"
	$"0001 FAFF 0001 FA33 0001 FA66 0001 FA99"
	$"0001 FA00 0001 FA33 0001 FA66 0001 FA99"
	$"0001 FACC 0001 FAFF 0001 FA00 0001 FA33"
	$"0001 FA66 0101 00FA FF00 00FA FF00 00FA"
	$"FF00 00FA FFE8 00FA 3300 00FA 3300 00FA"
	$"3300 00FA 3300 00FA 3300 00FA 3300 00FA"
	$"6600 00FA 6600 00FB 6602 6600 00FA 9900"
	$"00FA CC00 00FA CC00 00FA CC00 00FA CC00"
	$"00FA FF00 00FA FF00 00FA CC00 00FA FF00"
	$"00FA FF00 00FA FF00 00FA FF00 00FA FF00"
	$"00FA FF00 00FA FF00 00FC CCFF CC00 0000"
	$"BB00 01FA 6600 01FA 9900 01FA CC00 01FA"
	$"FF00 01FA 3300 01FA 6600 01FA 9900 01FA"
	$"0000 01FA 3300 01FA 6600 01FA 9900 01FA"
	$"CC00 01FA FF00 01FA 0000 01FA 3300 01FA"
	$"6601 0100 FAFF 0000 FAFF 0000 FAFF 0000"
	$"FAFF E800 FA33 0000 FA33 0000 FA33 0000"
	$"FA33 0000 FA33 0000 FA33 0000 FA66 0000"
	$"FA66 0000 FB66 0266 0000 FA99 0000 FACC"
	$"0000 FACC 0000 FACC 0000 FACC 0000 FAFF"
	$"0000 FAFF 0000 FACC 0000 FAFF 0000 FAFF"
	$"0000 FAFF 0000 FAFF 0000 FAFF 0000 FAFF"
	$"0000 FAFF 0000 FCCC FFCC 0000 00BB 0001"
	$"FA66 0001 FA99 0001 FACC 0001 FAFF 0001"
	$"FA33 0001 FA66 0001 FA99 0001 FA00 0001"
	$"FA33 0001 FA66 0001 FA99 0001 FACC 0001"
	$"FAFF 0001 FA00 0001 FA33 0001 FA66 0101"
	$"00FA FF00 00FA FF00 00FA FF00 00FA FFE8"
	$"00FA 3300 00FA 3300 00FA 3300 00FA 3300"
	$"00FA 3300 00FA 3300 00FA 6600 00FA 6600"
	$"00FB 6602 6600 00FA 9900 00FA CC00 00FA"
	$"CC00 00FA CC00 00FA CC00 00FA FF00 00FA"
	$"FF00 00FA CC00 00FA FF00 00FA FF00 00FA"
	$"FF00 00FA FF00 00FA FF00 00FA FF00 00FA"
	$"FF00 00FC CCFF CC00 0000 BB00 01FA 6600"
	$"01FA 9900 01FA CC00 01FA FF00 01FA 3300"
	$"01FA 6600 01FA 9900 01FA 0000 01FA 3300"
	$"01FA 6600 01FA 9900 01FA CC00 01FA FF00"
	$"01FA 0000 01FA 3300 01FA 6601 0100 FAFF"
	$"0000 FAFF 0000 FAFF 0000 FAFF E800 FA33"
	$"0000 FA33 0000 FA33 0000 FA33 0000 FA33"
	$"0000 FA33 0000 FA66 0000 FA66 0000 FB66"
	$"0266 0000 FA99 0000 FACC 0000 FACC 0000"
	$"FACC 0000 FACC 0000 FAFF 0000 FAFF 0000"
	$"FACC 0000 FAFF 0000 FAFF 0000 FAFF 0000"
	$"FAFF 0000 FAFF 0000 FAFF 0000 FAFF 0000"
	$"FCCC FFCC 0000 000A 8101 0001 8200 8100"
	$"FE00 00C7 0001 FA99 0001 FACC 0001 FAFF"
	$"0001 FA00 0001 FA33 0001 FA66 0001 FA99"
	$"0001 FACC 0001 FAFF 0001 FA00 0001 FA33"
	$"0001 FA66 0001 FA99 0001 FACC 0001 FAFF"
	$"0001 FA33 0101 00FA 6600 00FA 6600 00FA"
	$"6600 00FA 9900 00FA 9900 00FA 9900 00FA"
	$"9900 00FA 9900 00FA 9900 00FA CC00 00FA"
	$"CC00 00FA CC00 00FA CC00 00FA CC00 00FA"
	$"CC00 00FB FF02 FF00 00FA FF00 00FA FF00"
	$"00FA CC00 00FA FF00 00FA FF00 00FA FF00"
	$"00FA FF00 00FA FF00 00FA FF00 00FA FF00"
	$"00FA FF00 00FA FF00 00FA FF00 00FA FF00"
	$"00FA FF00 00FC FFFF FF00 0000 C700 01FA"
	$"9900 01FA CC00 01FA FF00 01FA 0000 01FA"
	$"3300 01FA 6600 01FA 9900 01FA CC00 01FA"
	$"FF00 01FA 0000 01FA 3300 01FA 6600 01FA"
	$"9900 01FA CC00 01FA FF00 01FA 3301 0100"
	$"FA66 0000 FA66 0000 FA66 0000 FA99 0000"
	$"FA99 0000 FA99 0000 FA99 0000 FA99 0000"
	$"FA99 0000 FACC 0000 FACC 0000 FACC 0000"
	$"FACC 0000 FACC 0000 FACC 0000 FBFF 02FF"
	$"0000 FAFF 0000 FAFF 0000 FACC 0000 FAFF"
	$"0000 FAFF 0000 FAFF 0000 FAFF 0000 FAFF"
	$"0000 FAFF 0000 FAFF 0000 FAFF 0000 FAFF"
	$"0000 FAFF 0000 FAFF 0000 FAFF 0000 FCFF"
	$"FFFF 0000 00C7 0001 FA99 0001 FACC 0001"
	$"FAFF 0001 FA00 0001 FA33 0001 FA66 0001"
	$"FA99 0001 FACC 0001 FAFF 0001 FA00 0001"
	$"FA33 0001 FA66 0001 FA99 0001 FACC 0001"
	$"FAFF 0001 FA33 0101 00FA 6600 00FA 6600"
	$"00FA 6600 00FA 9900 00FA 9900 00FA 9900"
	$"00FA 9900 00FA 9900 00FA 9900 00FA CC00"
	$"00FA CC00 00FA CC00 00FA CC00 00FA CC00"
	$"00FA CC00 00FB FF02 FF00 00FA FF00 00FA"
	$"FF00 00FA CC00 00FA FF00 00FA FF00 00FA"
	$"FF00 00FA FF00 00FA FF00 00FA FF00 00FA"
	$"FF00 00FA FF00 00FA FF00 00FA FF00 00FA"
	$"FF00 00FA FF00 00FC FFFF FF00 0000 C700"
	$"01FA 9900 01FA CC00 01FA FF00 01FA 0000"
	$"01FA 3300 01FA 6600 01FA 9900 01FA CC00"
	$"01FA FF00 01FA 0000 01FA 3300 01FA 6600"
	$"01FA 9900 01FA CC00 01FA FF00 01FA 3301"
	$"0100 FA66 0000 FA66 0000 FA66 0000 FA99"
	$"0000 FA99 0000 FA99 0000 FA99 0000 FA99"
	$"0000 FA99 0000 FACC 0000 FACC 0000 FACC"
	$"0000 FACC 0000 FACC 0000 FACC 0000 FBFF"
	$"02FF 0000 FAFF 0000 FAFF 0000 FACC 0000"
	$"FAFF 0000 FAFF 0000 FAFF 0000 FAFF 0000"
	$"FAFF 0000 FAFF 0000 FAFF 0000 FAFF 0000"
	$"FAFF 0000 FAFF 0000 FAFF 0000 FAFF 0000"
	$"FCFF FFFF 0000 00C7 0001 FA99 0001 FACC"
	$"0001 FAFF 0001 FA00 0001 FA33 0001 FA66"
	$"0001 FA99 0001 FACC 0001 FAFF 0001 FA00"
	$"0001 FA33 0001 FA66 0001 FA99 0001 FACC"
	$"0001 FAFF 0001 FA33 0101 00FA 6600 00FA"
	$"6600 00FA 6600 00FA 9900 00FA 9900 00FA"
	$"9900 00FA 9900 00FA 9900 00FA 9900 00FA"
	$"CC00 00FA CC00 00FA CC00 00FA CC00 00FA"
	$"CC00 00FA CC00 00FB FF02 FF00 00FA FF00"
	$"00FA FF00 00FA CC00 00FA FF00 00FA FF00"
	$"00FA FF00 00FA FF00 00FA FF00 00FA FF00"
	$"00FA FF00 00FA FF00 00FA FF00 00FA FF00"
	$"00FA FF00 00FA FF00 00FC FFFF FF00 0000"
	$"C700 01FA 9900 01FA CC00 01FA FF00 01FA"
	$"0000 01FA 3300 01FA 6600 01FA 9900 01FA"
	$"CC00 01FA FF00 01FA 0000 01FA 3300 01FA"
	$"6600 01FA 9900 01FA CC00 01FA FF00 01FA"
	$"3301 0100 FA66 0000 FA66 0000 FA66 0000"
	$"FA99 0000 FA99 0000 FA99 0000 FA99 0000"
	$"FA99 0000 FA99 0000 FACC 0000 FACC 0000"
	$"FACC 0000 FACC 0000 FACC 0000 FACC 0000"
	$"FBFF 02FF 0000 FAFF 0000 FAFF 0000 FACC"
	$"0000 FAFF 0000 FAFF 0000 FAFF 0000 FAFF"
	$"0000 FAFF 0000 FAFF 0000 FAFF 0000 FAFF"
	$"0000 FAFF 0000 FAFF 0000 FAFF 0000 FAFF"
	$"0000 FCFF FFFF 0000 00C7 0001 FA99 0001"
	$"FACC 0001 FAFF 0001 FA00 0001 FA33 0001"
	$"FA66 0001 FA99 0001 FACC 0001 FAFF 0001"
	$"FA00 0001 FA33 0001 FA66 0001 FA99 0001"
	$"FACC 0001 FAFF 0001 FA33 0101 00FA 6600"
	$"00FA 6600 00FA 6600 00FA 9900 00FA 9900"
	$"00FA 9900 00FA 9900 00FA 9900 00FA 9900"
	$"00FA CC00 00FA CC00 00FA CC00 00FA CC00"
	$"00FA CC00 00FA CC00 00FB FF02 FF00 00FA"
	$"FF00 00FA FF00 00FA CC00 00FA FF00 00FA"
	$"FF00 00FA FF00 00FA FF00 00FA FF00 00FA"
	$"FF00 00FA FF00 00FA FF00 00FA FF00 00FA"
	$"FF00 00FA FF00 00FA FF00 00FC FFFF FF00"
	$"0000 0A81 0100 0182 0081 00FE 0000 C300"
	$"01FA 6600 01FA 9900 01FA CC00 01FA FF00"
	$"01FA 6600 01FA FF00 01FA 6600 01FA FF00"
	$"01FA 6600 01FA A500 01FA 5F00 01FA 7700"
	$"01FA 8600 01FA 9600 01FA CB00 01FA B201"
	$"0100 FAFF 0000 FAFF 0000 FAFF 0000 FA66"
	$"0000 FAFF 0000 FAFF 0000 FA66 0000 FA66"
	$"0000 FAFF F800 FA5F 0000 FA77 0000 FA86"
	$"0000 FA96 0000 FACB 0000 FBB2 02B2 0000"
	$"FACC 0000 FAFF 0000 FAFF 0000 FA66 0000"
	$"FA66 0000 FA66 0000 FAFF 0000 FAFF 0000"
	$"FAFF 0000 FA21 0000 FA5F 0000 FA77 0000"
	$"FA86 0000 FA96 0000 FACB 0000 FCB2 FFB2"
	$"0000 00C3 0001 FA66 0001 FA99 0001 FACC"
	$"0001 FAFF 0001 FA66 0001 FAFF 0001 FA66"
	$"0001 FAFF 0001 FA66 0001 FAA5 0001 FA5F"
	$"0001 FA77 0001 FA86 0001 FA96 0001 FACB"
	$"0001 FAB2 0101 00FA FF00 00FA FF00 00FA"
	$"FF00 00FA 6600 00FA FF00 00FA FF00 00FA"
	$"6600 00FA 6600 00FA FFF8 00FA 5F00 00FA"
	$"7700 00FA 8600 00FA 9600 00FA CB00 00FB"
	$"B202 B200 00FA CC00 00FA FF00 00FA FF00"
	$"00FA 6600 00FA 6600 00FA 6600 00FA FF00"
	$"00FA FF00 00FA FF00 00FA 2100 00FA 5F00"
	$"00FA 7700 00FA 8600 00FA 9600 00FA CB00"
	$"00FC B2FF B200 0000 C300 01FA 6600 01FA"
	$"9900 01FA CC00 01FA FF00 01FA 6600 01FA"
	$"FF00 01FA 6600 01FA FF00 01FA 6600 01FA"
	$"A500 01FA 5F00 01FA 7700 01FA 8600 01FA"
	$"9600 01FA CB00 01FA B201 0100 FAFF 0000"
	$"FAFF 0000 FAFF 0000 FA66 0000 FAFF 0000"
	$"FAFF 0000 FA66 0000 FA66 0000 FAFF F800"
	$"FA5F 0000 FA77 0000 FA86 0000 FA96 0000"
	$"FACB 0000 FBB2 02B2 0000 FACC 0000 FAFF"
	$"0000 FAFF 0000 FA66 0000 FA66 0000 FA66"
	$"0000 FAFF 0000 FAFF 0000 FAFF 0000 FA21"
	$"0000 FA5F 0000 FA77 0000 FA86 0000 FA96"
	$"0000 FACB 0000 FCB2 FFB2 0000 00C3 0001"
	$"FA66 0001 FA99 0001 FACC 0001 FAFF 0001"
	$"FA66 0001 FAFF 0001 FA66 0001 FAFF 0001"
	$"FA66 0001 FAA5 0001 FA5F 0001 FA77 0001"
	$"FA86 0001 FA96 0001 FACB 0001 FAB2 0101"
	$"00FA FF00 00FA FF00 00FA FF00 00FA 6600"
	$"00FA FF00 00FA FF00 00FA 6600 00FA 6600"
	$"00FA FFF8 00FA 5F00 00FA 7700 00FA 8600"
	$"00FA 9600 00FA CB00 00FB B202 B200 00FA"
	$"CC00 00FA FF00 00FA FF00 00FA 6600 00FA"
	$"6600 00FA 6600 00FA FF00 00FA FF00 00FA"
	$"FF00 00FA 2100 00FA 5F00 00FA 7700 00FA"
	$"8600 00FA 9600 00FA CB00 00FC B2FF B200"
	$"0000 C300 01FA 6600 01FA 9900 01FA CC00"
	$"01FA FF00 01FA 6600 01FA FF00 01FA 6600"
	$"01FA FF00 01FA 6600 01FA A500 01FA 5F00"
	$"01FA 7700 01FA 8600 01FA 9600 01FA CB00"
	$"01FA B201 0100 FAFF 0000 FAFF 0000 FAFF"
	$"0000 FA66 0000 FAFF 0000 FAFF 0000 FA66"
	$"0000 FA66 0000 FAFF F800 FA5F 0000 FA77"
	$"0000 FA86 0000 FA96 0000 FACB 0000 FBB2"
	$"02B2 0000 FACC 0000 FAFF 0000 FAFF 0000"
	$"FA66 0000 FA66 0000 FA66 0000 FAFF 0000"
	$"FAFF 0000 FAFF 0000 FA21 0000 FA5F 0000"
	$"FA77 0000 FA86 0000 FA96 0000 FACB 0000"
	$"FCB2 FFB2 0000 00C3 0001 FA66 0001 FA99"
	$"0001 FACC 0001 FAFF 0001 FA66 0001 FAFF"
	$"0001 FA66 0001 FAFF 0001 FA66 0001 FAA5"
	$"0001 FA5F 0001 FA77 0001 FA86 0001 FA96"
	$"0001 FACB 0001 FAB2 0101 00FA FF00 00FA"
	$"FF00 00FA FF00 00FA 6600 00FA FF00 00FA"
	$"FF00 00FA 6600 00FA 6600 00FA FFF8 00FA"
	$"5F00 00FA 7700 00FA 8600 00FA 9600 00FA"
	$"CB00 00FB B202 B200 00FA CC00 00FA FF00"
	$"00FA FF00 00FA 6600 00FA 6600 00FA 6600"
	$"00FA FF00 00FA FF00 00FA FF00 00FA 2100"
	$"00FA 5F00 00FA 7700 00FA 8600 00FA 9600"
	$"00FA CB00 00FC B2FF B200 0000 C300 01FA"
	$"6600 01FA 9900 01FA CC00 01FA FF00 01FA"
	$"6600 01FA FF00 01FA 6600 01FA FF00 01FA"
	$"6600 01FA A500 01FA 5F00 01FA 7700 01FA"
	$"8600 01FA 9600 01FA CB00 01FA B201 0100"
	$"FAFF 0000 FAFF 0000 FAFF 0000 FA66 0000"
	$"FAFF 0000 FAFF 0000 FA66 0000 FA66 0000"
	$"FAFF F800 FA5F 0000 FA77 0000 FA86 0000"
	$"FA96 0000 FACB 0000 FBB2 02B2 0000 FACC"
	$"0000 FAFF 0000 FAFF 0000 FA66 0000 FA66"
	$"0000 FA66 0000 FAFF 0000 FAFF 0000 FAFF"
	$"0000 FA21 0000 FA5F 0000 FA77 0000 FA86"
	$"0000 FA96 0000 FACB 0000 FCB2 FFB2 0000"
	$"000A 8101 0001 8200 8100 FE00 00AF 0001"
	$"FAD7 0001 FADD 0001 FAE3 0001 FAEA 0001"
	$"FAF1 0001 FAF8 0001 FAFE 0001 FAA0 0001"
	$"FA80 0001 FAFF 0001 FA00 0001 FAFF 0001"
	$"FA00 0001 FAFF 0001 FA00 0001 FAFF 0101"
	$"00FA D700 00FA DD00 00FA E300 00FA EA00"
	$"00FA F100 00FA F800 00FA FE00 00FA A000"
	$"00FA 80F8 00FA FF00 00FA FFF0 00FA FF00"
	$"00FB FF02 FF00 00FA D700 00FA DD00 00FA"
	$"E300 00FA EA00 00FA F100 00FA F800 00FA"
	$"FE00 00FA A400 00FA 80E8 00FA FF00 00FA"
	$"FF00 00FA FF00 00FC FFFF FF00 0000 AF00"
	$"01FA D700 01FA DD00 01FA E300 01FA EA00"
	$"01FA F100 01FA F800 01FA FE00 01FA A000"
	$"01FA 8000 01FA FF00 01FA 0000 01FA FF00"
	$"01FA 0000 01FA FF00 01FA 0000 01FA FF01"
	$"0100 FAD7 0000 FADD 0000 FAE3 0000 FAEA"
	$"0000 FAF1 0000 FAF8 0000 FAFE 0000 FAA0"
	$"0000 FA80 F800 FAFF 0000 FAFF F000 FAFF"
	$"0000 FBFF 02FF 0000 FAD7 0000 FADD 0000"
	$"FAE3 0000 FAEA 0000 FAF1 0000 FAF8 0000"
	$"FAFE 0000 FAA4 0000 FA80 E800 FAFF 0000"
	$"FAFF 0000 FAFF 0000 FCFF FFFF 0000 00AF"
	$"0001 FAD7 0001 FADD 0001 FAE3 0001 FAEA"
	$"0001 FAF1 0001 FAF8 0001 FAFE 0001 FAA0"
	$"0001 FA80 0001 FAFF 0001 FA00 0001 FAFF"
	$"0001 FA00 0001 FAFF 0001 FA00 0001 FAFF"
	$"0101 00FA D700 00FA DD00 00FA E300 00FA"
	$"EA00 00FA F100 00FA F800 00FA FE00 00FA"
	$"A000 00FA 80F8 00FA FF00 00FA FFF0 00FA"
	$"FF00 00FB FF02 FF00 00FA D700 00FA DD00"
	$"00FA E300 00FA EA00 00FA F100 00FA F800"
	$"00FA FE00 00FA A400 00FA 80E8 00FA FF00"
	$"00FA FF00 00FA FF00 00FC FFFF FF00 0000"
	$"AF00 01FA D700 01FA DD00 01FA E300 01FA"
	$"EA00 01FA F100 01FA F800 01FA FE00 01FA"
	$"A000 01FA 8000 01FA FF00 01FA 0000 01FA"
	$"FF00 01FA 0000 01FA FF00 01FA 0000 01FA"
	$"FF01 0100 FAD7 0000 FADD 0000 FAE3 0000"
	$"FAEA 0000 FAF1 0000 FAF8 0000 FAFE 0000"
	$"FAA0 0000 FA80 F800 FAFF 0000 FAFF F000"
	$"FAFF 0000 FBFF 02FF 0000 FAD7 0000 FADD"
	$"0000 FAE3 0000 FAEA 0000 FAF1 0000 FAF8"
	$"0000 FAFE 0000 FAA4 0000 FA80 E800 FAFF"
	$"0000 FAFF 0000 FAFF 0000 FCFF FFFF 0000"
	$"00AF 0001 FAD7 0001 FADD 0001 FAE3 0001"
	$"FAEA 0001 FAF1 0001 FAF8 0001 FAFE 0001"
	$"FAA0 0001 FA80 0001 FAFF 0001 FA00 0001"
	$"FAFF 0001 FA00 0001 FAFF 0001 FA00 0001"
	$"FAFF 0101 00FA D700 00FA DD00 00FA E300"
	$"00FA EA00 00FA F100 00FA F800 00FA FE00"
	$"00FA A000 00FA 80F8 00FA FF00 00FA FFF0"
	$"00FA FF00 00FB FF02 FF00 00FA D700 00FA"
	$"DD00 00FA E300 00FA EA00 00FA F100 00FA"
	$"F800 00FA FE00 00FA A400 00FA 80E8 00FA"
	$"FF00 00FA FF00 00FA FF00 00FC FFFF FF00"
	$"0000 AF00 01FA D700 01FA DD00 01FA E300"
	$"01FA EA00 01FA F100 01FA F800 01FA FE00"
	$"01FA A000 01FA 8000 01FA FF00 01FA 0000"
	$"01FA FF00 01FA 0000 01FA FF00 01FA 0000"
	$"01FA FF01 0100 FAD7 0000 FADD 0000 FAE3"
	$"0000 FAEA 0000 FAF1 0000 FAF8 0000 FAFE"
	$"0000 FAA0 0000 FA80 F800 FAFF 0000 FAFF"
	$"F000 FAFF 0000 FBFF 02FF 0000 FAD7 0000"
	$"FADD 0000 FAE3 0000 FAEA 0000 FAF1 0000"
	$"FAF8 0000 FAFE 0000 FAA4 0000 FA80 E800"
	$"FAFF 0000 FAFF 0000 FAFF 0000 FCFF FFFF"
	$"0000 00AF 0001 FAD7 0001 FADD 0001 FAE3"
	$"0001 FAEA 0001 FAF1 0001 FAF8 0001 FAFE"
	$"0001 FAA0 0001 FA80 0001 FAFF 0001 FA00"
	$"0001 FAFF 0001 FA00 0001 FAFF 0001 FA00"
	$"0001 FAFF 0101 00FA D700 00FA DD00 00FA"
	$"E300 00FA EA00 00FA F100 00FA F800 00FA"
	$"FE00 00FA A000 00FA 80F8 00FA FF00 00FA"
	$"FFF0 00FA FF00 00FB FF02 FF00 00FA D700"
	$"00FA DD00 00FA E300 00FA EA00 00FA F100"
	$"00FA F800 00FA FE00 00FA A400 00FA 80E8"
	$"00FA FF00 00FA FF00 00FA FF00 00FC FFFF"
	$"FF00 0000 0A81 0100 0182 0081 00FE 0000"
	$"00FF"
};

data 'PROC' (128, "Find_icon 3.1.1 PPC") {
	$"4E56 FFF0 41EE FFF0 7001 A090 4A40 6640"            /* NVˇAÓˇp.†êJ@f@ */
	$"0C68 0700 0004 6D38 303C A89F A746 2F08"            /* .h....m80<®üßF/. */
	$"303C AAFE A746 B1D7 663E 41FA FFD4 30FC"            /* 0<™˛ßF±◊f>A˙ˇ‘0¸ */
	$"6000 43FA 0044 2029 0014 5580 3080 303C"            /* `.C˙.D )..UÄ0Ä0< */
	$"A198 A346 B1D7 4E5E 67B6 7001 A198 60B0"            /* °ò£F±◊N^g∂p.°ò`∞ */
	$"4E5E 41FA FFAC 30FC 6000 43FA 001C 2029"            /* N^A˙ˇ¨0¸`.C˙.. ) */
	$"0014 5580 3080 6098 4E5E 43FA FF94 41FA"            /* ..UÄ0Ä`òN^C˙ˇîA˙ */
	$"0008 7034 A02E 6088 AAFE 0700 0000 0000"            /* ..p4†.`à™˛...... */
	$"0000 0001 0000 3FE0 0000 0005 0000 00AC"            /* ......?‡.......¨ */
	$"0000 0000 0000 0000 0000 3FE0 0001 0007"            /* ..........?‡.... */
	$"0000 00AC 0000 0000 0000 0000 4A6F 7921"            /* ...¨........Joy! */
	$"7065 6666 7077 7063 0000 0001 B5C3 3C87"            /* peffpwpc....µ√<á */
	$"0000 0000 0000 0000 0000 0000 0003 0002"            /* ................ */
	$"0000 0000 FFFF FFFF 0000 0000 0000 2D8C"            /* ....ˇˇˇˇ......-å */
	$"0000 2D8C 0000 2D8C 0000 0490 0004 0400"            /* ..-å..-å...ê.... */
	$"FFFF FFFF 0000 0000 0000 0504 0000 0504"            /* ˇˇˇˇ............ */
	$"0000 0504 0000 3220 0101 0400 FFFF FFFF"            /* ......2 ....ˇˇˇˇ */
	$"0000 0000 0000 0000 0000 0000 0000 040C"            /* ................ */
	$"0000 0080 0404 0400 0000 0000 0000 0001"            /* ...Ä............ */
	$"0000 0104 FFFF FFFF 0000 0000 FFFF FFFF"            /* ....ˇˇˇˇ....ˇˇˇˇ */
	$"0000 0000 0000 0002 0000 0031 0000 0001"            /* ...........1.... */
	$"0000 0138 0000 0140 0000 0404 0000 0001"            /* ...8...@........ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 002D 0000 0000 0000 0000 0000 000D"            /* ...-............ */
	$"0000 0000 0000 0000 0000 0004 0000 002D"            /* ...............- */
	$"4000 0000 0200 001D 0200 0036 0200 0045"            /* @..........6...E */
	$"0200 0050 0200 005B 0200 0069 0200 0076"            /* ...P...[...i...v */
	$"0200 0083 0200 0091 0200 009D 0200 00A6"            /* ...É...ë...ù...¶ */
	$"0200 00B4 0200 00C1 0200 00CB 0200 00D6"            /* ...¥...¡...À...÷ */
	$"0200 00DF 0200 00F0 0200 00FC 0200 0109"            /* ...ﬂ......¸.... */
	$"0200 011A 0200 012F 0200 013D 0200 014D"            /* ......./...=...M */
	$"0200 0157 0200 0164 0200 0172 0200 0182"            /* ...W...d...r...Ç */
	$"0200 0192 0200 019D 0200 01A5 0200 01B5"            /* ...í...ù...•...µ */
	$"0200 01BF 0200 01CA 0200 01D4 0200 01E1"            /* ...ø... ...‘...· */
	$"0200 01E7 0200 01F6 0200 0205 0200 0214"            /* ...Á...ˆ........ */
	$"0200 0221 0200 0231 0200 023E 0200 024E"            /* ...!...1...>...N */
	$"0200 0256 0200 0269 8200 0275 8200 0284"            /* ...V...iÇ..uÇ..Ñ */
	$"8200 029A 8200 02AE 0001 0000 0000 0004"            /* Ç..öÇ..Æ........ */
	$"0000 0000 4A30 420C 8003 4604 496E 7465"            /* ....J0B.Ä.F.Inte */
	$"7266 6163 654C 6962 0049 636F 6E53 6572"            /* rfaceLib.IconSer */
	$"7669 6365 734C 6962 0044 6973 706F 7365"            /* vicesLib.Dispose */
	$"526F 7574 696E 6544 6573 6372 6970 746F"            /* RoutineDescripto */
	$"7200 4164 6449 636F 6E54 6F53 7569 7465"            /* r.AddIconToSuite */
	$"0053 6574 5265 734C 6F61 6400 4669 6E64"            /* .SetResLoad.Find */
	$"466F 6C64 6572 0044 6973 706F 7365 4861"            /* Folder.DisposeHa */
	$"6E64 6C65 004C 6F61 6452 6573 6F75 7263"            /* ndle.LoadResourc */
	$"6500 484F 7065 6E52 6573 4669 6C65 0053"            /* e.HOpenResFile.S */
	$"6574 5375 6974 654C 6162 656C 0050 4244"            /* etSuiteLabel.PBD */
	$"5447 6574 5061 7468 0052 6573 4572 726F"            /* TGetPath.ResErro */
	$"7200 5042 436F 6E74 726F 6C53 796E 6300"            /* r.PBControlSync. */
	$"4765 7449 6E64 5374 7269 6E67 004E 6577"            /* GetIndString.New */
	$"4861 6E64 6C65 0055 7365 5265 7346 696C"            /* Handle.UseResFil */
	$"6500 4D65 6D45 7272 6F72 0050 4247 6574"            /* e.MemError.PBGet */
	$"4361 7449 6E66 6F53 796E 6300 4571 7561"            /* CatInfoSync.Equa */
	$"6C53 7472 696E 6700 4E65 7749 636F 6E53"            /* lString.NewIconS */
	$"7569 7465 0044 6973 706F 7365 4963 6F6E"            /* uite.DisposeIcon */
	$"5375 6974 6500 4E65 7752 6F75 7469 6E65"            /* Suite.NewRoutine */
	$"4465 7363 7269 7074 6F72 0046 6F72 4561"            /* Descriptor.ForEa */
	$"6368 4963 6F6E 446F 004C 4D47 6574 4669"            /* chIconDo.LMGetFi */
	$"6E64 6572 4E61 6D65 0050 7472 546F 4861"            /* nderName.PtrToHa */
	$"6E64 0047 6574 3152 6573 6F75 7263 6500"            /* nd.Get1Resource. */
	$"426C 6F63 6B4D 6F76 6544 6174 6100 5042"            /* BlockMoveData.PB */
	$"4454 4765 7449 636F 6E53 796E 6300 5042"            /* DTGetIconSync.PB */
	$"4847 6574 5649 6E66 6F53 796E 6300 4375"            /* HGetVInfoSync.Cu */
	$"7252 6573 4669 6C65 0047 6573 7461 6C74"            /* rResFile.Gestalt */
	$"0050 4248 4765 7446 496E 666F 5379 6E63"            /* .PBHGetFInfoSync */
	$"0048 5365 7453 7461 7465 0048 616E 6454"            /* .HSetState.HandT */
	$"6F48 616E 6400 4847 6574 5374 6174 6500"            /* oHand.HGetState. */
	$"4765 7444 4374 6C45 6E74 7279 0048 4C6F"            /* GetDCtlEntry.HLo */
	$"636B 0046 5370 4F70 656E 5265 7346 696C"            /* ck.FSpOpenResFil */
	$"6500 5042 4454 4F70 656E 496E 666F 726D"            /* e.PBDTOpenInform */
	$"0050 4247 6574 5649 6E66 6F53 796E 6300"            /* .PBGetVInfoSync. */
	$"4653 4D61 6B65 4653 5370 6563 0043 6F75"            /* FSMakeFSSpec.Cou */
	$"6E74 3152 6573 6F75 7263 6573 0043 6C6F"            /* nt1Resources.Clo */
	$"7365 5265 7346 696C 6500 4765 7431 496E"            /* seResFile.Get1In */
	$"6452 6573 6F75 7263 6500 4855 6E6C 6F63"            /* dResource.HUnloc */
	$"6B00 5042 4847 6574 566F 6C50 6172 6D73"            /* k.PBHGetVolParms */
	$"5379 6E63 0047 6574 5265 736F 7572 6365"            /* Sync.GetResource */
	$"0052 656C 6561 7365 4963 6F6E 5265 6600"            /* .ReleaseIconRef. */
	$"4963 6F6E 4661 6D69 6C79 546F 4963 6F6E"            /* IconFamilyToIcon */
	$"5375 6974 6500 4963 6F6E 5265 6654 6F49"            /* Suite.IconRefToI */
	$"636F 6E46 616D 696C 7900 4765 7449 636F"            /* conFamily.GetIco */
	$"6E52 6566 4672 6F6D 4669 6C65 0000 0000"            /* nRefFromFile.... */
	$"0000 0000 0000 0000 0000 0000 7C08 02A6"            /* ............|..¶ */
	$"BF61 FFEC 9001 0008 9421 FEC0 7C7B 1B79"            /* øaˇÏê...î!˛¿|{.y */
	$"3B84 0000 3BA5 0000 3BC6 0000 3BE0 0000"            /* ;Ñ..;•..;∆..;‡.. */
	$"3800 0000 9006 0000 4182 0020 A87B 0000"            /* 8...ê...AÇ. ®{.. */
	$"4800 1341 6000 0000 5460 063F 4182 000C"            /* H..A`...T`.?AÇ.. */
	$"3BE0 FFCB 4800 028C 281C 0000 4082 0058"            /* ;‡ˇÀH..å(...@Ç.X */
	$"387B 0006 3881 0050 38A0 0020 4800 28AD"            /* 8{..8Å.P8†. H.(≠ */
	$"8041 0014 A81B 0000 B001 00CE 801B 0002"            /* ÄA..®...∞..ŒÄ... */
	$"9001 00E8 3801 0050 9001 00CA 3800 0000"            /* ê..Ë8..Pê.. 8... */
	$"B001 00D4 3861 00B8 4800 2899 8041 0014"            /* ∞..‘8a.∏H.(ôÄA.. */
	$"3BE3 0000 7FE0 0735 4082 0238 3B81 00B8"            /* ;„...‡.5@Ç.8;Å.∏ */
	$"4800 0030 807C 0012 3881 0076 88A3 0000"            /* H..0Ä|..8Å.và£.. */
	$"38A5 0001 4800 2855 8041 0014 801C 0064"            /* 8•..H.(UÄA..Ä..d */
	$"9001 0072 A81C 0016 B001 0070 3B61 0070"            /* ê..r®...∞..p;a.p */
	$"3C60 6963 3863 6F6E 3881 004C 4800 285D"            /* <`ic8con8Å.LH.(] */
	$"8041 0014 7C60 0735 4082 00E4 8001 004C"            /* ÄA..|`.5@Ç.‰Ä..L */
	$"5400 077B 4182 00D8 387D 0000 3881 0040"            /* T..{AÇ.ÿ8}..8Å.@ */
	$"38A1 003C 4800 16AD 6000 0000 387B 0000"            /* 8°.<H..≠`...8{.. */
	$"3881 0048 38A1 0044 4800 2839 8041 0014"            /* 8Å.H8°.DH.(9ÄA.. */
	$"3BE3 0000 7FE0 0735 4082 00A4 8061 0048"            /* ;„...‡.5@Ç.§Äa.H */
	$"8081 0040 8001 003C 7C84 0378 38A1 0038"            /* ÄÅ.@Ä..<|Ñ.x8°.8 */
	$"4800 2829 8041 0014 3BE3 0000 7FE0 0735"            /* H.()ÄA..;„...‡.5 */
	$"4082 0070 8061 0038 8081 0040 7FC5 F378"            /* @Ç.pÄa.8ÄÅ.@.≈Ûx */
	$"4800 2821 8041 0014 3BE3 0000 7FE0 0735"            /* H.(!ÄA..;„...‡.5 */
	$"4082 0044 807E 0000 4800 01E9 5460 063F"            /* @Ç.DÄ~..H..ÈT`.? */
	$"4182 0034 807E 0000 3880 0001 4800 2855"            /* AÇ.4Ä~..8Ä..H.(U */
	$"8041 0014 3800 0000 901E 0000 8061 0038"            /* ÄA..8...ê...Äa.8 */
	$"8081 003C 7FC5 F378 4800 27D9 8041 0014"            /* ÄÅ.<.≈ÛxH.'ŸÄA.. */
	$"7C7F 1B78 8061 0038 4800 2841 8041 0014"            /* |..xÄa.8H.(AÄA.. */
	$"8061 0048 4800 284D 8041 0014 801E 0000"            /* Äa.HH.(MÄA..Ä... */
	$"2800 0000 4082 00D8 881C 001E 5400 06F7"            /* (...@Ç.ÿà...T..˜ */
	$"4082 0050 A01C 0028 5400 056B 4182 001C"            /* @Ç.P†..(T..kAÇ.. */
	$"387B 0000 389D 0000 38BE 0000 4800 052D"            /* 8{..8ù..8æ..H..- */
	$"6000 0000 7C7F 1B78 801E 0000 2800 0000"            /* `...|..xÄ...(... */
	$"4082 009C 387C 0000 389D 0000 38BE 0000"            /* @Ç.ú8|..8ù..8æ.. */
	$"4800 0269 6000 0000 7C7F 1B78 4800 0080"            /* H..i`...|..xH..Ä */
	$"A01C 0028 5400 056B 4182 0024 A87B 0000"            /* †..(T..kAÇ.$®{.. */
	$"809C 0030 38BD 0000 38DE 0000 4800 0935"            /* Äú.08Ω..8ﬁ..H..5 */
	$"6000 0000 7C60 0735 4182 0054 801C 0030"            /* `...|`.5AÇ.TÄ..0 */
	$"2C00 0002 4082 0030 A87B 0000 4800 1AAD"            /* ,...@Ç.0®{..H..≠ */
	$"6000 0000 5460 063F 4182 001C A87B 0000"            /* `...T`.?AÇ..®{.. */
	$"7FC4 F378 4800 0F31 6000 0000 7C7F 1B78"            /* .ƒÛxH..1`...|..x */
	$"4800 001C 387C 0000 389D 0000 38BE 0000"            /* H...8|..8ù..8æ.. */
	$"4800 0661 6000 0000 7C7F 1B78 807E 0000"            /* H..a`...|..xÄ~.. */
	$"2803 0000 4182 003C A01C 0028 5400 FF7E"            /* (...AÇ.<†..(T.ˇ~ */
	$"7C04 0734 4800 2AAD 8041 0014 4800 0024"            /* |..4H.*≠ÄA..H..$ */
	$"801B 0002 2C00 0001 4082 0018 A87B 0000"            /* Ä...,...@Ç..®{.. */
	$"7FC4 F378 4800 0ED1 6000 0000 7C7F 1B78"            /* .ƒÛxH..—`...|..x */
	$"7FE3 FB78 8001 0148 3821 0140 7C08 03A6"            /* .„˚xÄ..H8!.@|..¶ */
	$"BB61 FFEC 4E80 0020 0000 0000 0000 2041"            /* ªaˇÏNÄ. ...... A */
	$"8005 0000 0000 030C 000A 2E46 696E 645F"            /* Ä..........Find_ */
	$"6963 6F6E 8004 0000 2800 0000 4182 000C"            /* iconÄ...(...AÇ.. */
	$"3800 0001 9805 0000 3860 0000 4E80 0020"            /* 8...ò...8`..NÄ.  */
	$"0000 0000 0000 2040 0000 0000 0000 001C"            /* ...... @........ */
	$"000E 2E54 6573 745F 6F6E 655F 6963 6F6E"            /* ...Test_one_icon */
	$"7C08 02A6 BFC1 FFF8 9001 0008 9421 FFB0"            /* |..¶ø¡ˇ¯ê...î!ˇ∞ */
	$"3BC3 0000 3800 0000 9801 0038 8062 00C4"            /* ;√..8...ò..8Äb.ƒ */
	$"3880 0FE0 38A0 0001 4800 2611 8041 0014"            /* 8Ä.‡8†..H.&.ÄA.. */
	$"3BE3 0000 387E 0000 3880 FFFF 38BF 0000"            /* ;„..8~..8Äˇˇ8ø.. */
	$"38C1 0038 4800 260D 8041 0014 7FE3 FB78"            /* 8¡.8H.&.ÄA...„˚x */
	$"4800 2619 8041 0014 8801 0038 7C00 0034"            /* H.&.ÄA..à..8|..4 */
	$"5403 DE3E 8001 0058 3821 0050 7C08 03A6"            /* T.ﬁ>Ä..X8!.P|..¶ */
	$"BBC1 FFF8 4E80 0020 0000 0000 0000 2041"            /* ª¡ˇ¯NÄ. ...... A */
	$"8002 0000 0000 0078 000D 2E49 7353 7569"            /* Ä......x...IsSui */
	$"7465 456D 7074 7900 7C08 02A6 93E1 FFFC"            /* teEmpty.|..¶ì·ˇ¸ */
	$"9001 0008 9421 FF70 3801 006C 9001 0058"            /* ê...î!ˇp8..lê..X */
	$"3800 0014 9001 005C B061 004E 3BE0 0000"            /* 8...ê..\∞a.N;‡.. */
	$"93E1 004A 3861 0038 4800 2751 8041 0014"            /* ì·.J8a.8H.'QÄA.. */
	$"3880 0001 7C60 0735 4082 0014 8001 0076"            /* 8Ä..|`.5@Ç..Ä..v */
	$"2C00 0000 4182 0008 7FE4 FB78 5483 063E"            /* ,...AÇ...‰˚xTÉ.> */
	$"8001 0098 3821 0090 7C08 03A6 83E1 FFFC"            /* Ä..ò8!.ê|..¶É·ˇ¸ */
	$"4E80 0020 0000 0000 0000 2041 8001 0000"            /* NÄ. ...... AÄ... */
	$"0000 006C 0010 2E49 735F 6C6F 6361 6C5F"            /* ...l...Is_local_ */
	$"766F 6C75 6D65 0000 7C08 02A6 BF01 FFE0"            /* volume..|..¶ø.ˇ‡ */
	$"9001 0008 9421 FF60 3B03 0000 3B84 0000"            /* ê...î!ˇ`;...;Ñ.. */
	$"3BA5 0000 83E3 0020 83C3 0024 387F 0000"            /* ;•..É„. É√.$8... */
	$"389E 0000 38BC 0000 4800 14A9 6000 0000"            /* 8û..8º..H..©`... */
	$"907D 0000 801D 0000 2800 0000 4182 000C"            /* ê}..Ä...(...AÇ.. */
	$"3860 0000 4800 0218 387F 0000 3881 007E"            /* 8`..H...8...8Å.~ */
	$"4800 0751 6000 0000 7C7B 1B78 4800 253D"            /* H..Q`...|{.xH.%= */
	$"8041 0014 7C7A 1B78 8801 007E 2800 0001"            /* ÄA..|z.xà..~(... */
	$"4082 00A8 3860 8000 3C80 6D61 3884 6373"            /* @Ç.®8`Ä.<Äma8Ñcs */
	$"38A0 0000 38C1 007C 38E1 0078 4800 2615"            /* 8†..8¡.|8·.xH.&. */
	$"8041 0014 3860 0000 4800 2519 8041 0014"            /* ÄA..8`..H.%.ÄA.. */
	$"4800 2619 8041 0014 7C65 1B78 A861 007C"            /* H.&.ÄA..|e.x®a.| */
	$"8081 0078 38C0 0001 4800 2619 8041 0014"            /* ÄÅ.x8¿..H.&.ÄA.. */
	$"3B03 0000 3860 0001 4800 24E9 8041 0014"            /* ;...8`..H.$ÈÄA.. */
	$"7F00 0734 2C00 FFFF 4082 0014 4800 2505"            /* ...4,.ˇˇ@Ç..H.%. */
	$"8041 0014 7C79 1B78 4800 013C 387D 0000"            /* ÄA..|y.xH..<8}.. */
	$"389B 0000 38BC 0000 38C0 0001 4800 07FD"            /* 8õ..8º..8¿..H..˝ */
	$"6000 0000 3B23 0000 3878 0000 4800 254D"            /* `...;#..8x..H.%M */
	$"8041 0014 4800 0110 3C1F 9E9C 2800 7270"            /* ÄA..H...<.ûú(.rp */
	$"4082 000C 3C60 4150 3BE3 504C AB18 0016"            /* @Ç..<`AP;„PL´... */
	$"3878 0000 389C 0000 38BE 0000 38DF 0000"            /* 8x..8ú..8æ..8ﬂ.. */
	$"38FD 0000 4800 1059 6000 0000 3B23 0000"            /* 8˝..H..Y`...;#.. */
	$"7F20 0735 4182 0078 3800 0000 9001 004A"            /* . .5AÇ.x8...ê..J */
	$"3800 0001 B001 0054 4800 0050 A861 004E"            /* 8...∞..TH..P®a.N */
	$"7C03 C000 4182 0038 4BFF FDF1 5460 063F"            /* |.¿.AÇ.8Kˇ˝ÒT`.? */
	$"4182 002C A861 004E 389C 0000 38BE 0000"            /* AÇ.,®a.N8ú..8æ.. */
	$"38DF 0000 38FD 0000 4800 1005 6000 0000"            /* 8ﬂ..8˝..H...`... */
	$"3B23 0000 7F20 0735 4182 0024 A861 0054"            /* ;#... .5AÇ.$®a.T */
	$"3803 0001 B001 0054 3861 0038 4800 2665"            /* 8...∞..T8a.8H.&e */
	$"8041 0014 7C60 0735 4182 FFA4 7F20 0735"            /* ÄA..|`.5AÇˇ§. .5 */
	$"4182 0054 3860 0000 4800 2499 8041 0014"            /* AÇ.T8`..H.$ôÄA.. */
	$"387D 0000 389B 0000 38BC 0000 38C0 0001"            /* 8}..8õ..8º..8¿.. */
	$"4800 0709 6000 0000 7C79 1B78 801D 0000"            /* H...`...|y.xÄ... */
	$"2800 0000 4082 0020 387D 0000 3880 F060"            /* (...@Ç. 8}..8Ä` */
	$"38BC 0000 38C0 0001 4800 06E1 6000 0000"            /* 8º..8¿..H..·`... */
	$"7C79 1B78 7F43 D378 4800 2449 8041 0014"            /* |y.x.C”xH.$IÄA.. */
	$"7F20 0735 4082 0024 80DD 0000 2806 0000"            /* . .5@Ç.$Ä›..(... */
	$"4182 0018 387F 0000 389E 0000 38BC 0000"            /* AÇ..8...8û..8º.. */
	$"4800 1379 6000 0000 7F23 CB78 8001 00A8"            /* H..y`....#ÀxÄ..® */
	$"3821 00A0 7C08 03A6 BB01 FFE0 4E80 0020"            /* 8!.†|..¶ª.ˇ‡NÄ.  */
	$"0000 0000 0000 2041 8008 0000 0000 0278"            /* ...... AÄ......x */
	$"0015 2E47 6574 5F6E 6F72 6D61 6C5F 6669"            /* ...Get_normal_fi */
	$"6C65 5F69 636F 6E00 7C08 02A6 BF61 FFEC"            /* le_icon.|..¶øaˇÏ */
	$"9001 0008 9421 FFB0 3BA3 0000 3B64 0000"            /* ê...î!ˇ∞;£..;d.. */
	$"3B85 0000 4800 22E5 8041 0014 3BE3 0000"            /* ;Ö..H."ÂÄA..;„.. */
	$"3860 0000 4800 22ED 8041 0014 387D 0000"            /* 8`..H."ÌÄA..8}.. */
	$"3880 0001 4800 22F5 8041 0014 3BC3 0000"            /* 8Ä..H."ıÄA..;√.. */
	$"3860 0001 4800 22CD 8041 0014 7FC0 0734"            /* 8`..H."ÕÄA...¿.4 */
	$"2C00 FFFF 4082 0014 4800 22E9 8041 0014"            /* ,.ˇˇ@Ç..H."ÈÄA.. */
	$"7C7D 1B78 4800 0060 387C 0000 3880 BFB9"            /* |}.xH..`8|..8Äøπ */
	$"38BB 0000 38C0 0001 4800 05E1 6000 0000"            /* 8ª..8¿..H..·`... */
	$"3BA3 0000 7FA0 0734 2C00 FC18 4082 0020"            /* ;£...†.4,.¸.@Ç.  */
	$"387C 0000 3880 BF90 38BB 0000 38C0 0001"            /* 8|..8Äøê8ª..8¿.. */
	$"4800 05B9 6000 0000 7C7D 1B78 7FC3 F378"            /* H..π`...|}.x.√Ûx */
	$"4800 2309 8041 0014 7FE3 FB78 4800 2315"            /* H.#.ÄA...„˚xH.#. */
	$"8041 0014 7FA3 EB78 8001 0058 3821 0050"            /* ÄA...£ÎxÄ..X8!.P */
	$"7C08 03A6 BB61 FFEC 4E80 0020 0000 0000"            /* |..¶ªaˇÏNÄ. .... */
	$"0000 2041 8005 0000 0000 00E4 0015 2E47"            /* .. AÄ......‰...G */
	$"6574 5F63 7573 746F 6D5F 6669 6C65 5F69"            /* et_custom_file_i */
	$"636F 6E00 7C08 02A6 BF61 FFEC 9001 0008"            /* con.|..¶øaˇÏê... */
	$"9421 FFA0 3B63 0000 3B84 0000 3BA5 0000"            /* î!ˇ†;c..;Ñ..;•.. */
	$"3BC0 0000 387C 0000 7F7F 0734 389F 0000"            /* ;¿..8|.....48ü.. */
	$"38A0 0000 4800 10FD 6000 0000 907D 0000"            /* 8†..H..˝`...ê}.. */
	$"801D 0000 2C00 0000 4082 0050 387B 0000"            /* Ä...,...@Ç.P8{.. */
	$"389C 0000 38A0 0000 38C1 0038 38FD 0000"            /* 8ú..8†..8¡.88˝.. */
	$"4800 22A1 8041 0014 3BC3 0000 7FC0 0735"            /* H."°ÄA..;√...¿.5 */
	$"4182 0010 3800 0000 901D 0000 4800 001C"            /* AÇ..8...ê...H... */
	$"387C 0000 389F 0000 38A0 0000 80DD 0000"            /* 8|..8ü..8†..Ä›.. */
	$"4800 1199 6000 0000 7FC3 F378 8001 0068"            /* H..ô`....√ÛxÄ..h */
	$"3821 0060 7C08 03A6 BB61 FFEC 4E80 0020"            /* 8!.`|..¶ªaˇÏNÄ.  */
	$"0000 0000 0000 2041 8005 0000 0000 00AC"            /* ...... AÄ......¨ */
	$"000D 2E4D 7946 696E 6446 6F6C 6465 7200"            /* ...MyFindFolder. */
	$"7C08 02A6 BF01 FFE0 9001 0008 9421 FF90"            /* |..¶ø.ˇ‡ê...î!ˇê */
	$"3B03 0000 3B64 0000 3B85 0000 3B22 014C"            /* ;...;d..;Ö..;".L */
	$"3B42 0124 83C3 0030 ABA3 0016 3BE0 F061"            /* ;B.$É√.0´£..;‡a */
	$"387D 0000 3C80 6D61 3884 6373 38A1 0040"            /* 8}..<Äma8Ñcs8°.@ */
	$"4BFF FEF5 7C60 0735 4082 0018 8001 0040"            /* Kˇ˛ı|`.5@Ç..Ä..@ */
	$"7C00 F000 4082 000C 3BE0 F071 4800 0110"            /* |..@Ç..;‡qH... */
	$"8078 0064 2C03 0002 4082 005C 3B00 0000"            /* Äx.d,...@Ç.\;... */
	$"4800 0044 387D 0000 7F00 0734 5419 1838"            /* H..D8}.....4T..8 */
	$"7C9A C82E 38A1 003C 4BFF FEAD 7C60 0735"            /* |ö».8°.<Kˇ˛≠|`.5 */
	$"4082 0020 8001 003C 7C00 F000 4082 0014"            /* @Ç. Ä..<|..@Ç.. */
	$"7C7A CA14 8003 0004 7C1F 0734 4800 00C0"            /* |z .Ä...|..4H..¿ */
	$"3B18 0001 7F00 0734 2C00 0005 4180 FFB8"            /* ;......4,...AÄˇ∏ */
	$"4800 00AC 8001 0040 7C00 1800 4082 005C"            /* H..¨Ä..@|...@Ç.\ */
	$"3B00 0000 4800 0044 387D 0000 7F00 0734"            /* ;...H..D8}.....4 */
	$"541A 1838 7C99 D02E 38A1 003C 4BFF FE49"            /* T..8|ô–.8°.<Kˇ˛I */
	$"7C60 0735 4082 0020 8001 003C 7C00 F000"            /* |`.5@Ç. Ä..<|.. */
	$"4082 0014 7C79 D214 8003 0004 7C1F 0734"            /* @Ç..|y“.Ä...|..4 */
	$"4800 005C 3B18 0001 7F00 0734 2C00 001A"            /* H..\;......4,... */
	$"4180 FFB8 4800 0048 2C03 0001 4082 000C"            /* AÄˇ∏H..H,...@Ç.. */
	$"3BE0 F07C 4800 0038 8878 001E 7C63 0774"            /* ;‡|H..8àx..|c.t */
	$"5460 0739 4182 000C 3BE0 F077 4800 0020"            /* T`.9AÇ..;‡wH..  */
	$"5460 06B5 4182 000C 3BE0 F076 4800 0010"            /* T`.µAÇ..;‡vH... */
	$"5460 077B 4182 0008 3BE0 F074 7FE3 0734"            /* T`.{AÇ..;‡t.„.4 */
	$"3C80 6630 3884 6C64 38BB 0000 4800 0EE5"            /* <Äf08Ñld8ª..H..Â */
	$"6000 0000 907C 0000 801C 0000 2800 0000"            /* `...ê|..Ä...(... */
	$"4182 000C 3B00 0000 4800 00A4 4800 1F8D"            /* AÇ..;...H..§H..ç */
	$"8041 0014 3B23 0000 3860 0000 4800 2055"            /* ÄA..;#..8`..H. U */
	$"8041 0014 387C 0000 389F 0000 38BB 0000"            /* ÄA..8|..8ü..8ª.. */
	$"38C0 0002 4800 02C5 6000 0000 3B03 0000"            /* 8¿..H..≈`...;... */
	$"7F00 0735 4182 0030 7FE0 0734 2C00 F061"            /* ...5AÇ.0.‡.4,.a */
	$"4182 0024 3BE0 F061 387C 0000 3880 F061"            /* AÇ.$;‡a8|..8Äa */
	$"38BB 0000 38C0 0002 4800 0291 6000 0000"            /* 8ª..8¿..H..ë`... */
	$"7C78 1B78 7F23 CB78 4800 1FF9 8041 0014"            /* |x.x.#ÀxH..˘ÄA.. */
	$"7F00 0735 4082 0028 80DC 0000 2806 0000"            /* ...5@Ç.(Ä‹..(... */
	$"4182 001C 7FE3 0734 3C80 6630 3884 6C64"            /* AÇ...„.4<Äf08Ñld */
	$"38BB 0000 4800 0F25 6000 0000 7F03 C378"            /* 8ª..H..%`.....√x */
	$"8001 0078 3821 0070 7C08 03A6 BB01 FFE0"            /* Ä..x8!.p|..¶ª.ˇ‡ */
	$"4E80 0020 0000 0000 0000 2041 8008 0000"            /* NÄ. ...... AÄ... */
	$"0000 0254 0017 2E47 6574 5F6E 6F72 6D61"            /* ...T...Get_norma */
	$"6C5F 666F 6C64 6572 5F69 636F 6E00 0000"            /* l_folder_icon... */
	$"7C08 02A6 BF61 FFEC 9001 0008 9421 FF60"            /* |..¶øaˇÏê...î!ˇ` */
	$"3B63 0000 3B84 0000 3BA5 0000 3BC6 0000"            /* ;c..;Ñ..;•..;∆.. */
	$"3BE2 021C 881F 0000 2800 0000 4082 0010"            /* ;‚..à...(...@Ç.. */
	$"7FE3 FB78 4800 04A9 6000 0000 387B 0000"            /* .„˚xH..©`...8{.. */
	$"389C 0000 38BF 0000 38C1 0038 4800 2115"            /* 8ú..8ø..8¡.8H.!. */
	$"8041 0014 7C60 0735 4082 0018 3861 0038"            /* ÄA..|`.5@Ç..8a.8 */
	$"389D 0000 38BE 0000 4BFF FB41 6000 0000"            /* 8ù..8æ..Kˇ˚A`... */
	$"8001 00A8 3821 00A0 7C08 03A6 BB61 FFEC"            /* Ä..®8!.†|..¶ªaˇÏ */
	$"4E80 0020 0000 0000 0000 2041 8005 0000"            /* NÄ. ...... AÄ... */
	$"0000 0084 0017 2E47 6574 5F63 7573 746F"            /* ...Ñ...Get_custo */
	$"6D5F 666F 6C64 6572 5F69 636F 6E00 0000"            /* m_folder_icon... */
	$"7C08 02A6 BF41 FFE8 9001 0008 9421 FFA0"            /* |..¶øAˇËê...î!ˇ† */
	$"3B83 0000 3BA4 0000 3BE2 023C 3B42 02D4"            /* ;É..;§..;‚.<;B.‘ */
	$"3B62 030C 3BC0 F060 3800 0002 9804 0000"            /* ;b..;¿`8...ò... */
	$"3C60 6170 3863 7072 3881 0038 4800 1CCD"            /* <`ap8cpr8Å.8H..Õ */
	$"8041 0014 7C60 0735 4082 004C 8001 0038"            /* ÄA..|`.5@Ç.LÄ..8 */
	$"5400 07FF 4182 0040 3880 000A 4800 002C"            /* T..ˇAÇ.@8Ä..H.., */
	$"7C80 0734 5403 1838 7C1B 182E 7C1C 0040"            /* |Ä.4T..8|...|..@ */
	$"4082 0014 7C7B 1A14 8003 0004 7C1E 0734"            /* @Ç..|{..Ä...|..4 */
	$"4800 0054 3884 FFFF 7C80 0735 4080 FFD4"            /* H..T8Ñˇˇ|Ä.5@Äˇ‘ */
	$"4800 0044 3880 0006 4800 0034 7C80 0734"            /* H..D8Ä..H..4|Ä.4 */
	$"5403 1838 7C1A 182E 7C1C 0040 4082 001C"            /* T..8|...|..@@Ç.. */
	$"7C7A 1A14 8003 0004 7C1E 0734 3800 0001"            /* |z..Ä...|..48... */
	$"981D 0000 4800 0010 3884 FFFF 7C80 0735"            /* ò...H...8Ñˇˇ|Ä.5 */
	$"4080 FFCC 7FC0 0734 2C00 F060 4082 003C"            /* @ÄˇÃ.¿.4,.`@Ç.< */
	$"3880 0012 4800 002C 7C80 0734 5403 1838"            /* 8Ä..H..,|Ä.4T..8 */
	$"7C1F 182E 7C1C 0040 4082 0014 7C7F 1A14"            /* |...|..@@Ç..|... */
	$"8003 0004 7C1E 0734 4800 0010 3884 FFFF"            /* Ä...|..4H...8Ñˇˇ */
	$"7C80 0735 4080 FFD4 7FC3 F378 8001 0068"            /* |Ä.5@Äˇ‘.√ÛxÄ..h */
	$"3821 0060 7C08 03A6 BB41 FFE8 4E80 0020"            /* 8!.`|..¶ªAˇËNÄ.  */
	$"0000 0000 0000 2041 8006 0000 0000 0130"            /* ...... AÄ......0 */
	$"0015 2E46 696E 645F 6765 6E65 7269 635F"            /* ...Find_generic_ */
	$"6963 6F6E 5F69 6400 7C08 02A6 BF81 FFF0"            /* icon_id.|..¶øÅˇ */
	$"9001 0008 9421 FFA0 3BE3 0000 3B84 0000"            /* ê...î!ˇ†;„..;Ñ.. */
	$"3BA6 0000 3865 0000 3881 003C 38A1 0038"            /* ;¶..8e..8Å.<8°.8 */
	$"4800 0A01 6000 0000 7FE3 FB78 4800 1CCD"            /* H...`....„˚xH..Õ */
	$"8041 0014 3BC3 0000 7FC0 0735 4082 00D8"            /* ÄA..;√...¿.5@Ç.ÿ */
	$"B381 0040 3800 0001 9801 0042 9801 0043"            /* ≥Å.@8...ò..Bò..C */
	$"9BA1 0044 8062 00E0 3880 0FE0 38A0 0001"            /* õ°.DÄb.‡8Ä.‡8†.. */
	$"4800 1BA9 8041 0014 7C7D 1B78 807F 0000"            /* H..©ÄA..|}.xÄ... */
	$"8081 003C 38BD 0000 38C1 0040 4800 1BA5"            /* ÄÅ.<8Ω..8¡.@H..• */
	$"8041 0014 3BC3 0000 7FC0 0735 4082 0040"            /* ÄA..;√...¿.5@Ç.@ */
	$"8081 0038 2804 0000 4182 0034 8801 0042"            /* ÄÅ.8(...AÇ.4à..B */
	$"2800 0000 4182 0028 8801 0043 2800 0000"            /* (...AÇ.(à..C(... */
	$"4182 001C 807F 0000 38BD 0000 38C1 0040"            /* AÇ..Ä...8Ω..8¡.@ */
	$"4800 1B61 8041 0014 7C7E 1B78 7FA3 EB78"            /* H..aÄA..|~.x.£Îx */
	$"4800 1B69 8041 0014 7FC0 0735 4082 0038"            /* H..iÄA...¿.5@Ç.8 */
	$"8801 0042 2800 0000 4182 002C 8801 0043"            /* à..B(...AÇ.,à..C */
	$"2800 0000 4182 0020 3BC0 FC18 807F 0000"            /* (...AÇ. ;¿¸.Ä... */
	$"3880 0000 4800 1B4D 8041 0014 3800 0000"            /* 8Ä..H..MÄA..8... */
	$"901F 0000 7FC3 F378 8001 0068 3821 0060"            /* ê....√ÛxÄ..h8!.` */
	$"7C08 03A6 BB81 FFF0 4E80 0020 0000 0000"            /* |..¶ªÅˇNÄ. .... */
	$"0000 2041 8004 0000 0000 0134 0010 2E46"            /* .. AÄ......4...F */
	$"495F 4765 7449 636F 6E53 7569 7465 0000"            /* I_GetIconSuite.. */
	$"7C08 02A6 BFA1 FFF4 9001 0008 9421 FFB0"            /* |..¶ø°ˇÙê...î!ˇ∞ */
	$"3BA3 0000 3BC4 0000 3BE5 0000 3860 0001"            /* ;£..;ƒ..;Â..8`.. */
	$"3880 0000 38A3 0000 3C1D 969D 2800 6C38"            /* 8Ä..8£..<.ñù(.l8 */
	$"4182 0010 2800 6C34 4182 0008 7C85 2378"            /* AÇ..(.l4AÇ..|Ö#x */
	$"2C05 0000 4182 0014 881F 0002 2800 0000"            /* ,...AÇ..à...(... */
	$"4182 0008 3880 0001 2C04 0000 4082 0048"            /* AÇ..8Ä..,...@Ç.H */
	$"3880 0000 38A0 0001 3C1D 969D 2800 7338"            /* 8Ä..8†..<.ñù(.s8 */
	$"4182 0010 2800 7334 4182 0008 7C85 2378"            /* AÇ..(.s4AÇ..|Ö#x */
	$"2C05 0000 4182 0014 881F 0003 2800 0000"            /* ,...AÇ..à...(... */
	$"4182 0008 3880 0001 2C04 0000 4082 0008"            /* AÇ..8Ä..,...@Ç.. */
	$"3860 0000 5460 063F 4082 009C 881F 0004"            /* 8`..T`.?@Ç.úà... */
	$"2800 0001 4082 001C 7FA3 EB78 A89F 0000"            /* (...@Ç...£Îx®ü.. */
	$"4800 1B01 8041 0014 907E 0000 4800 0018"            /* H...ÄA..ê~..H... */
	$"7FA3 EB78 A89F 0000 4800 1B01 8041 0014"            /* .£Îx®ü..H...ÄA.. */
	$"907E 0000 801E 0000 2800 0000 4182 0020"            /* ê~..Ä...(...AÇ.  */
	$"7FC3 F378 4800 1AFD 8041 0014 7C60 0735"            /* .√ÛxH..˝ÄA..|`.5 */
	$"4182 000C 3800 0000 901E 0000 801E 0000"            /* AÇ..8...ê...Ä... */
	$"2800 0000 4182 0030 3C1D B6BD 2800 4E23"            /* (...AÇ.0<.∂Ω(.N# */
	$"4082 0010 3800 0000 981F 0002 4800 0018"            /* @Ç..8...ò...H... */
	$"3C1D 969D 2800 7323 4082 000C 3800 0000"            /* <.ñù(.s#@Ç..8... */
	$"981F 0003 3860 0000 8001 0058 3821 0050"            /* ò...8`..Ä..X8!.P */
	$"7C08 03A6 BBA1 FFF4 4E80 0020 0000 0000"            /* |..¶ª°ˇÙNÄ. .... */
	$"0000 2041 8003 0000 0000 015C 000B 2E47"            /* .. AÄ......\...G */
	$"6574 5F31 5F69 636F 6E00 0000 7C08 02A6"            /* et_1_icon...|..¶ */
	$"BFA1 FFF4 9001 0008 9421 FEB0 3BA3 0000"            /* ø°ˇÙê...î!˛∞;£.. */
	$"3800 0000 9801 0038 4800 19B1 8041 0014"            /* 8...ò..8H..±ÄA.. */
	$"3BE3 0000 3860 8000 3C80 6D61 3884 6373"            /* ;„..8`Ä.<Äma8Ñcs */
	$"38A0 0000 38C1 013C 38E1 0138 4800 1A95"            /* 8†..8¡.<8·.8H..ï */
	$"8041 0014 3860 0000 4800 1999 8041 0014"            /* ÄA..8`..H..ôÄA.. */
	$"4800 1A99 8041 0014 7C65 1B78 A861 013C"            /* H..ôÄA..|e.x®a.< */
	$"8081 0138 38C0 0001 4800 1A99 8041 0014"            /* ÄÅ.88¿..H..ôÄA.. */
	$"3BC3 0000 3860 0001 4800 1969 8041 0014"            /* ;√..8`..H..iÄA.. */
	$"7FC0 0734 2C00 FFFF 4182 0050 3861 0038"            /* .¿.4,.ˇˇAÇ.P8a.8 */
	$"3880 2BF2 38A0 0005 4800 1BD1 8041 0014"            /* 8Ä+Ú8†..H..—ÄA.. */
	$"8801 0038 2800 0000 4082 0018 3861 0038"            /* à..8(...@Ç..8a.8 */
	$"3880 1194 38A0 0005 4800 1BB1 8041 0014"            /* 8Ä.î8†..H..±ÄA.. */
	$"7FC3 F378 4800 19C5 8041 0014 7FE3 FB78"            /* .√ÛxH..≈ÄA...„˚x */
	$"4800 19D1 8041 0014 88A1 0038 2805 0020"            /* H..—ÄA..à°.8(..  */
	$"4080 0024 2805 0000 4182 001C 3861 0038"            /* @Ä.$(...AÇ..8a.8 */
	$"389D 0000 38A5 0001 4800 17B1 8041 0014"            /* 8ù..8•..H..±ÄA.. */
	$"4800 0018 3862 0364 389D 0000 38A0 0006"            /* H...8b.d8ù..8†.. */
	$"4800 1799 8041 0014 8001 0158 3821 0150"            /* H..ôÄA..Ä..X8!.P */
	$"7C08 03A6 BBA1 FFF4 4E80 0020 0000 0000"            /* |..¶ª°ˇÙNÄ. .... */
	$"0000 2041 8003 0000 0000 0130 0013 2E47"            /* .. AÄ......0...G */
	$"6574 5F69 636F 6E5F 6669 6C65 5F6E 616D"            /* et_icon_file_nam */
	$"6500 0000 7C08 02A6 BFA1 FFF4 9001 0008"            /* e...|..¶ø°ˇÙê... */
	$"9421 FDE0 3BE4 0000 3BC0 0000 93C4 0000"            /* î!˝‡;‰..;¿..ìƒ.. */
	$"93C1 019E B061 01A2 B3C1 01A8 3861 018C"            /* ì¡.û∞a.¢≥¡.®8a.å */
	$"4800 1711 8041 0014 3BA3 0000 7FA0 0735"            /* H...ÄA..;£...†.5 */
	$"4082 0144 A861 01D0 3881 0038 4800 15D9"            /* @Ç.D®a.–8Å.8H..Ÿ */
	$"6000 0000 3BA3 0000 7FA0 0735 4082 0128"            /* `...;£...†.5@Ç.( */
	$"3861 0038 3882 036A 38A0 0001 38C0 0000"            /* 8a.88Ç.j8†..8¿.. */
	$"4800 1AF1 8041 0014 5460 063F 4182 0048"            /* H..ÒÄA..T`.?AÇ.H */
	$"4800 17F9 8041 0014 3BC3 0000 3860 0000"            /* H..˘ÄA..;√..8`.. */
	$"4800 18C1 8041 0014 387F 0000 3880 F062"            /* H..¡ÄA..8...8Äb */
	$"38A0 FFFF 38C0 0001 4BFF FB31 6000 0000"            /* 8†ˇˇ8¿..Kˇ˚1`... */
	$"3BA3 0000 387E 0000 4800 1899 8041 0014"            /* ;£..8~..H..ôÄA.. */
	$"4800 00C4 A801 01D0 B001 0154 A801 01CE"            /* H..ƒ®..–∞..T®..Œ */
	$"B001 0152 93C1 0158 3800 0016 B001 0156"            /* ∞..Rì¡.X8...∞..V */
	$"3861 013C 4800 1A95 8041 0014 3BA3 0000"            /* 8a.<H..ïÄA..;£.. */
	$"7FA0 0735 4082 0010 8001 0158 2C00 0000"            /* .†.5@Ç..Ä..X,... */
	$"4181 001C 3800 0015 B001 0156 3861 013C"            /* AÅ..8...∞..V8a.< */
	$"4800 1A69 8041 0014 7C7D 1B78 7FA0 0735"            /* H..iÄA..|}.x.†.5 */
	$"4082 0064 8001 0158 2C00 0000 4081 0058"            /* @Ç.dÄ..X,...@Å.X */
	$"7FE3 FB78 4800 17A5 8041 0014 3BA3 0000"            /* .„˚xH..•ÄA..;£.. */
	$"7FA0 0735 4082 0040 8061 0158 3881 0138"            /* .†.5@Ç.@Äa.X8Å.8 */
	$"38A0 0100 4800 1A3D 8041 0014 3BA3 0000"            /* 8†..H..=ÄA..;£.. */
	$"7FA0 0735 4082 0020 8061 0138 809F 0000"            /* .†.5@Ç. Äa.8Äü.. */
	$"3CA0 4943 38A5 4E23 4800 1A31 8041 0014"            /* <†IC8•N#H..1ÄA.. */
	$"7C7D 1B78 7FA3 EB78 8001 0228 3821 0220"            /* |}.x.£ÎxÄ..(8!.  */
	$"7C08 03A6 BBA1 FFF4 4E80 0020 0000 0000"            /* |..¶ª°ˇÙNÄ. .... */
	$"0000 2041 8003 0000 0000 0198 0010 2E47"            /* .. AÄ......ò...G */
	$"6574 5F76 6F6C 756D 655F 6963 6F6E 0000"            /* et_volume_icon.. */
	$"7C08 02A6 93E1 FFFC 9001 0008 9421 FF40"            /* |..¶ì·ˇ¸ê...î!ˇ@ */
	$"3BE0 0000 93E1 004A B061 004E B3E1 0054"            /* ;‡..ì·.J∞a.N≥·.T */
	$"3861 0038 4800 155D 8041 0014 7C60 0735"            /* 8a.8H..]ÄA..|`.5 */
	$"4082 0014 A801 007C 2C00 0000 4081 0008"            /* @Ç..®..|,...@Å.. */
	$"3BE0 0001 57E3 063E 8001 00C8 3821 00C0"            /* ;‡..W„.>Ä..»8!.¿ */
	$"7C08 03A6 83E1 FFFC 4E80 0020 0000 0000"            /* |..¶É·ˇ¸NÄ. .... */
	$"0000 2041 8001 0000 0000 005C 000F 2E49"            /* .. AÄ......\...I */
	$"735F 766F 6C5F 656A 6563 7465 6400 0000"            /* s_vol_ejected... */
	$"3C80 6963 3804 7323 7C03 0000 4182 0074"            /* <Äic8.s#|...AÇ.t */
	$"4080 0038 3804 6C34 7C03 0000 4182 0054"            /* @Ä.88.l4|...AÇ.T */
	$"4080 0018 3C80 4943 3804 4E23 7C03 0000"            /* @Ä..<ÄIC8.N#|... */
	$"4182 0038 4800 0064 3804 6C38 7C03 0000"            /* AÇ.8H..d8.l8|... */
	$"4182 0038 4800 0054 3804 7338 7C03 0000"            /* AÇ.8H..T8.s8|... */
	$"4182 0040 4080 0044 3804 7334 7C03 0000"            /* AÇ.@@Ä.D8.s4|... */
	$"4182 0028 4800 0034 3860 0001 4E80 0020"            /* AÇ.(H..48`..NÄ.  */
	$"3860 0002 4E80 0020 3860 0003 4E80 0020"            /* 8`..NÄ. 8`..NÄ.  */
	$"3860 0004 4E80 0020 3860 0005 4E80 0020"            /* 8`..NÄ. 8`..NÄ.  */
	$"3860 0006 4E80 0020 3860 0000 4E80 0020"            /* 8`..NÄ. 8`..NÄ.  */
	$"0000 0000 0000 2040 0000 0000 0000 00A0"            /* ...... @.......† */
	$"0010 2E52 6573 4963 6F6E 546F 4454 4963"            /* ...ResIconToDTIc */
	$"6F6E 0000 7C08 02A6 BF61 FFEC 9001 0008"            /* on..|..¶øaˇÏê... */
	$"9421 FFB0 3B83 0000 3BA4 0000 3BC5 0000"            /* î!ˇ∞;É..;§..;≈.. */
	$"3BE0 0000 3860 0001 3880 0000 38A3 0000"            /* ;‡..8`..8Ä..8£.. */
	$"3C1C 969D 2800 6C38 4182 0010 2800 6C34"            /* <.ñù(.l8AÇ..(.l4 */
	$"4182 0008 7C85 2378 2C05 0000 4182 0014"            /* AÇ..|Ö#x,...AÇ.. */
	$"881E 000A 2800 0000 4182 0008 3880 0001"            /* à...(...AÇ..8Ä.. */
	$"2C04 0000 4082 0048 3880 0000 38A0 0001"            /* ,...@Ç.H8Ä..8†.. */
	$"3C1C 969D 2800 7338 4182 0010 2800 7334"            /* <.ñù(.s8AÇ..(.s4 */
	$"4182 0008 7C85 2378 2C05 0000 4182 0014"            /* AÇ..|Ö#x,...AÇ.. */
	$"881E 000B 2800 0000 4182 0008 3880 0001"            /* à...(...AÇ..8Ä.. */
	$"2C04 0000 4082 0008 3860 0000 547B 063E"            /* ,...@Ç..8`..T{.> */
	$"387C 0000 4BFF FE8D 38A3 0000 7CA0 0734"            /* 8|..Kˇ˛ç8£..|†.4 */
	$"7C00 00D0 7C00 0034 5400 D97E 7F7B 0378"            /* |..–|..4T.Ÿ~.{.x */
	$"5760 063F 4082 0070 3860 0000 A89E 0008"            /* W`.?@Ç.p8`..®û.. */
	$"80DE 0000 80FE 0004 7FA8 EB78 4800 0F65"            /* Äﬁ..Ä˛...®ÎxH..e */
	$"6000 0000 3BE3 0000 7FE0 0735 4082 0030"            /* `...;„...‡.5@Ç.0 */
	$"3C1C B6BD 2800 4E23 4082 0010 3800 0000"            /* <.∂Ω(.N#@Ç..8... */
	$"981E 000A 4800 0018 3C1C 969D 2800 7323"            /* ò...H...<.ñù(.s# */
	$"4082 000C 3800 0000 981E 000B 7FE0 0734"            /* @Ç..8...ò....‡.4 */
	$"2C00 EC6C 4182 000C 2C00 FFCE 4082 0008"            /* ,.ÏlAÇ..,.ˇŒ@Ç.. */
	$"3BE0 0000 7FE3 FB78 8001 0058 3821 0050"            /* ;‡...„˚xÄ..X8!.P */
	$"7C08 03A6 BB61 FFEC 4E80 0020 0000 0000"            /* |..¶ªaˇÏNÄ. .... */
	$"0000 2041 8005 0000 0000 0158 000D 2E41"            /* .. AÄ......X...A */
	$"6464 4F6E 6544 5449 636F 6E00 7C08 02A6"            /* ddOneDTIcon.|..¶ */
	$"BF41 FFE8 9001 0008 9421 FF90 3B43 0000"            /* øAˇËê...î!ˇê;C.. */
	$"3B65 0000 3B86 0000 3BE7 0000 3864 0000"            /* ;e..;Ü..;Á..8d.. */
	$"3881 003C 38A1 0038 4800 0159 6000 0000"            /* 8Å.<8°.8H..Y`... */
	$"8001 003C 5400 040E 9001 003C 8001 0038"            /* Ä..<T...ê..<Ä..8 */
	$"5400 040E 9001 0038 7FE3 FB78 4800 140D"            /* T...ê..8.„˚xH... */
	$"8041 0014 3BC3 0000 7FC0 0735 4082 00E8"            /* ÄA..;√...¿.5@Ç.Ë */
	$"8062 00EC 3880 0FE0 38A0 0001 4800 12FD"            /* Äb.Ï8Ä.‡8†..H..˝ */
	$"8041 0014 7C7D 1B79 4082 000C 3BC0 FF94"            /* ÄA..|}.y@Ç..;¿ˇî */
	$"4800 0088 3800 0001 9801 004A 9801 004B"            /* H..à8...ò..Jò..K */
	$"9361 0040 9381 0044 B341 0048 807F 0000"            /* ìa.@ìÅ.D≥A.HÄ... */
	$"8081 003C 38BD 0000 38C1 0040 4800 12D5"            /* ÄÅ.<8Ω..8¡.@H..’ */
	$"8041 0014 3BC3 0000 7FC0 0735 4082 0040"            /* ÄA..;√...¿.5@Ç.@ */
	$"8081 0038 2804 0000 4182 0034 8801 004A"            /* ÄÅ.8(...AÇ.4à..J */
	$"2800 0000 4182 0028 8801 004B 2800 0000"            /* (...AÇ.(à..K(... */
	$"4182 001C 807F 0000 38BD 0000 38C1 0040"            /* AÇ..Ä...8Ω..8¡.@ */
	$"4800 1291 8041 0014 7C7E 1B78 7FA3 EB78"            /* H..ëÄA..|~.x.£Îx */
	$"4800 1299 8041 0014 7FC0 0735 4082 0038"            /* H..ôÄA...¿.5@Ç.8 */
	$"8801 004A 2800 0000 4182 002C 8801 004B"            /* à..J(...AÇ.,à..K */
	$"2800 0000 4182 0020 3BC0 FC18 807F 0000"            /* (...AÇ. ;¿¸.Ä... */
	$"3880 0000 4800 127D 8041 0014 3800 0000"            /* 8Ä..H..}ÄA..8... */
	$"901F 0000 7FC3 F378 8001 0078 3821 0070"            /* ê....√ÛxÄ..x8!.p */
	$"7C08 03A6 BB41 FFE8 4E80 0020 0000 0000"            /* |..¶ªAˇËNÄ. .... */
	$"0000 2041 8006 0000 0000 0160 000F 2E44"            /* .. AÄ......`...D */
	$"5447 6574 4963 6F6E 5375 6974 6500 0000"            /* TGetIconSuite... */
	$"3C03 8000 2800 FF00 4082 001C 3C60 0001"            /* <.Ä.(.ˇ.@Ç..<`.. */
	$"3803 FF00 9004 0000 3800 00FF 9005 0000"            /* 8.ˇ.ê...8..ˇê... */
	$"4E80 0020 2800 00FF 4082 001C 3800 00FF"            /* NÄ. (..ˇ@Ç..8..ˇ */
	$"9004 0000 3C60 0001 3803 FF00 9005 0000"            /* ê...<`..8.ˇ.ê... */
	$"4E80 0020 2800 0400 4082 0018 3800 0500"            /* NÄ. (...@Ç..8... */
	$"9004 0000 3800 00FF 9005 0000 4E80 0020"            /* ê...8..ˇê...NÄ.  */
	$"9064 0000 3800 0000 9005 0000 4E80 0020"            /* êd..8...ê...NÄ.  */
	$"0000 0000 0000 2040 0000 0000 0000 0070"            /* ...... @.......p */
	$"0013 2E45 7870 616E 644D 6574 6153 656C"            /* ...ExpandMetaSel */
	$"6563 746F 7200 0000 38E0 0000 38A0 0000"            /* ector...8‡..8†.. */
	$"3882 0370 4800 0034 7CE3 0734 1C03 0014"            /* 8Ç.pH..4|„.4.... */
	$"7CC4 0214 90A6 0000 90A6 0004 90A6 0008"            /* |ƒ..ê¶..ê¶..ê¶.. */
	$"90A6 000C 3803 FFFF B006 0010 3803 0001"            /* ê¶..8.ˇˇ∞...8... */
	$"B006 0012 38E7 0001 7CE0 0734 2C00 0014"            /* ∞...8Á..|‡.4,... */
	$"4180 FFC8 3800 0013 B002 00F8 4E80 0020"            /* AÄˇ»8...∞..¯NÄ.  */
	$"0000 0000 0000 2040 0000 0000 0000 0058"            /* ...... @.......X */
	$"000C 2E46 4949 6E69 7443 6163 6865 0000"            /* ...FIInitCache.. */
	$"38C2 0370 7C65 0734 A802 00FA 7C05 0000"            /* 8¬.p|e.4®..˙|... */
	$"4D82 0020 1C05 0014 38E6 0012 7D07 0214"            /* MÇ. ....8Ê..}... */
	$"A888 0000 3926 0010 7CC9 0214 A806 0000"            /* ®à..9&..|…..®... */
	$"1C00 0014 7C87 032E A802 00F8 7C05 0000"            /* ....|á..®..¯|... */
	$"4082 0010 A806 0000 B002 00F8 4800 0014"            /* @Ç..®...∞..¯H... */
	$"A886 0000 A808 0000 1C00 0014 7C89 032E"            /* ®Ü..®.......|â.. */
	$"A802 00FA B008 0000 A802 00FA 1C00 0014"            /* ®..˙∞...®..˙.... */
	$"7C69 032E B062 00FA 4E80 0020 0000 0000"            /* |i..∞b.˙NÄ. .... */
	$"0000 2040 0000 0000 0000 007C 0010 2E46"            /* .. @.......|...F */
	$"494D 616B 6543 656C 6C46 6972 7374 0000"            /* IMakeCellFirst.. */
	$"7C08 02A6 BF61 FFEC 9001 0008 9421 FFA0"            /* |..¶øaˇÏê...î!ˇ† */
	$"3B63 0000 3B84 0000 3BA5 0000 3BE2 0370"            /* ;c..;Ñ..;•..;‚.p */
	$"3800 0000 9001 0038 A862 00F8 A802 00FA"            /* 8...ê..8®b.¯®..˙ */
	$"7C03 0000 4082 0008 4BFF FEB1 ABC2 00FA"            /* |...@Ç..Kˇ˛±´¬.˙ */
	$"A802 00F8 7FC3 0734 1C63 0014 7C9F 1A14"            /* ®..¯.√.4.c..|ü.. */
	$"8064 0000 7C1B 1840 4082 0028 8064 0004"            /* Äd..|..@@Ç.(Äd.. */
	$"7C1C 1840 4082 001C 8064 0008 7C1D 1840"            /* |..@@Ç..Äd..|..@ */
	$"4082 0010 8004 000C 9001 0038 4800 0018"            /* @Ç..Ä...ê..8H... */
	$"7FC3 0734 7C03 0000 4182 000C ABC4 0012"            /* .√.4|...AÇ..´ƒ.. */
	$"4BFF FFB4 8001 0038 2800 0000 4182 0020"            /* Kˇˇ¥Ä..8(...AÇ.  */
	$"281D 0000 4182 0010 3861 0038 4800 0271"            /* (...AÇ..8a.8H..q */
	$"6000 0000 7FC3 F378 4BFF FEA9 8061 0038"            /* `....√ÛxKˇ˛©Äa.8 */
	$"8001 0068 3821 0060 7C08 03A6 BB61 FFEC"            /* Ä..h8!.`|..¶ªaˇÏ */
	$"4E80 0020 0000 0000 0000 2041 8005 0000"            /* NÄ. ...... AÄ... */
	$"0000 00D4 0010 2E46 495F 6361 6368 655F"            /* ...‘...FI_cache_ */
	$"7365 6172 6368 0000 7C08 02A6 BF61 FFEC"            /* search..|..¶øaˇÏ */
	$"9001 0008 9421 FFB0 3B83 0000 3BA4 0000"            /* ê...î!ˇ∞;É..;§.. */
	$"3BC5 0000 90C1 0074 3BE2 0370 A862 00F8"            /* ;≈..ê¡.t;‚.p®b.¯ */
	$"A802 00FA 7C03 0000 4082 0008 4BFF FDBD"            /* ®..˙|...@Ç..Kˇ˝Ω */
	$"281E 0000 4182 0014 3861 0074 4800 01E1"            /* (...AÇ..8a.tH..· */
	$"6000 0000 4800 0008 3860 0000 7C60 0735"            /* `...H...8`..|`.5 */
	$"4082 007C 3B7F 000C A802 00F8 1C00 0014"            /* @Ç.|;...®..¯.... */
	$"7C7B 002E 2803 0000 4182 0020 7C9F 0214"            /* |{..(...AÇ. |ü.. */
	$"8004 0008 2800 0000 4182 0010 3880 0001"            /* Ä...(...AÇ..8Ä.. */
	$"4800 0F01 8041 0014 8061 0074 A802 00F8"            /* H...ÄA..Äa.t®..¯ */
	$"1C00 0014 7C7B 012E A802 00F8 1C00 0014"            /* ....|{..®..¯.... */
	$"7F9F 012E A802 00F8 1C00 0014 7C7F 0214"            /* .ü..®..¯....|... */
	$"93A3 0004 A802 00F8 1C00 0014 7C7F 0214"            /* ì£..®..¯....|... */
	$"93C3 0008 A862 00F8 4BFF FD99 8001 0058"            /* ì√..®b.¯Kˇ˝ôÄ..X */
	$"3821 0050 7C08 03A6 BB61 FFEC 4E80 0020"            /* 8!.P|..¶ªaˇÏNÄ.  */
	$"0000 0000 0000 2041 8005 0000 0000 00E8"            /* ...... AÄ......Ë */
	$"0012 2E46 495F 7374 6F72 655F 696E 5F63"            /* ...FI_store_in_c */
	$"6163 6865 7C08 02A6 93E1 FFFC 9001 0008"            /* ache|..¶ì·ˇ¸ê... */
	$"9421 FFC0 7C9F 2378 8064 0000 2803 0000"            /* î!ˇ¿|ü#xÄd..(... */
	$"4182 0034 8003 0000 2800 0000 4082 000C"            /* AÇ.4Ä...(...@Ç.. */
	$"4800 0F89 8041 0014 7FE3 FB78 4800 0F35"            /* H..âÄA...„˚xH..5 */
	$"8041 0014 7C60 0735 4182 000C 3800 0000"            /* ÄA..|`.5AÇ..8... */
	$"901F 0000 3860 0000 8001 0048 3821 0040"            /* ê...8`..Ä..H8!.@ */
	$"7C08 03A6 83E1 FFFC 4E80 0020 0000 0000"            /* |..¶É·ˇ¸NÄ. .... */
	$"0000 2041 8001 0000 0000 0068 000E 2E43"            /* .. AÄ......h...C */
	$"6F70 795F 6F6E 655F 6963 6F6E 7C08 02A6"            /* opy_one_icon|..¶ */
	$"BFC1 FFF8 9001 0008 9421 FFC0 7C7E 1B78"            /* ø¡ˇ¯ê...î!ˇ¿|~.x */
	$"8062 00F4 3880 0FE0 38A0 0001 4800 0D8D"            /* Äb.Ù8Ä.‡8†..H..ç */
	$"8041 0014 3BE3 0000 387E 0000 3880 FFFF"            /* ÄA..;„..8~..8Äˇˇ */
	$"38BF 0000 38C0 0000 4800 0D89 8041 0014"            /* 8ø..8¿..H..âÄA.. */
	$"3BC3 0000 387F 0000 4800 0D91 8041 0014"            /* ;√..8...H..ëÄA.. */
	$"7FC3 F378 8001 0048 3821 0040 7C08 03A6"            /* .√ÛxÄ..H8!.@|..¶ */
	$"BBC1 FFF8 4E80 0020 0000 0000 0000 2041"            /* ª¡ˇ¯NÄ. ...... A */
	$"8002 0000 0000 006C 0012 2E46 495F 636F"            /* Ä......l...FI_co */
	$"7079 5F65 6163 685F 6963 6F6E 7C08 02A6"            /* py_each_icon|..¶ */
	$"BFC1 FFF8 9001 0008 9421 FFC0 7C7E 1B78"            /* ø¡ˇ¯ê...î!ˇ¿|~.x */
	$"4800 0E41 8041 0014 3BE3 0000 7FE0 0735"            /* H..AÄA..;„...‡.5 */
	$"4082 0034 807E 0000 4BFF FF45 3BE3 0000"            /* @Ç.4Ä~..KˇˇE;„.. */
	$"7FE0 0735 4182 0028 807E 0000 3880 0001"            /* .‡.5AÇ.(Ä~..8Ä.. */
	$"4800 0D21 8041 0014 3800 0000 901E 0000"            /* H..!ÄA..8...ê... */
	$"4800 000C 3800 0000 901E 0000 7FE3 FB78"            /* H...8...ê....„˚x */
	$"8001 0048 3821 0040 7C08 03A6 BBC1 FFF8"            /* Ä..H8!.@|..¶ª¡ˇ¯ */
	$"4E80 0020 0000 0000 0000 2041 8002 0000"            /* NÄ. ...... AÄ... */
	$"0000 0078 000F 2E46 495F 636C 6F6E 655F"            /* ...x...FI_clone_ */
	$"7375 6974 6500 0000 7C08 02A6 9001 0008"            /* suite...|..¶ê... */
	$"9421 FF70 3801 003C 9001 0070 3800 0014"            /* î!ˇp8..<ê..p8... */
	$"9001 0074 B061 0066 3800 0000 9001 0062"            /* ê..t∞a.f8...ê..b */
	$"3861 0050 4800 0E35 8041 0014 8001 0046"            /* 8a.PH..5ÄA..Ä..F */
	$"7C00 00D0 7C00 0034 5403 DE3E 8001 0098"            /* |..–|..4T.ﬁ>Ä..ò */
	$"3821 0090 7C08 03A6 4E80 0020 0000 0000"            /* 8!.ê|..¶NÄ. .... */
	$"0000 2041 8000 0000 0000 0054 0010 2E49"            /* .. AÄ......T...I */
	$"735F 6C6F 6361 6C5F 766F 6C75 6D65 0000"            /* s_local_volume.. */
	$"7C08 02A6 BFA1 FFF4 9001 0008 9421 FF30"            /* |..¶ø°ˇÙê...î!ˇ0 */
	$"9081 004A B061 004E 3800 0000 9801 0052"            /* êÅ.J∞a.N8...ò..R */
	$"3BC0 0001 3BA0 0000 3BE0 0002 93E1 0068"            /* ;¿..;†..;‡..ì·.h */
	$"B3C1 0054 3861 0038 4800 0E59 8041 0014"            /* ≥¡.T8a.8H..YÄA.. */
	$"7C65 0735 4082 0028 8081 0058 3C04 B9B2"            /* |e.5@Ç.(ÄÅ.X<.π≤ */
	$"2800 4452 4082 0018 8081 005C 3C04 BAAE"            /* (.DR@Ç..ÄÅ.\<.∫Æ */
	$"2800 494B 4082 0008 3BA0 0001 2C05 0000"            /* (.IK@Ç..;†..,... */
	$"3BDE 0001 4082 000C 57A0 063F 4182 FFB0"            /* ;ﬁ..@Ç..W†.?AÇˇ∞ */
	$"8001 00D8 3821 00D0 7C08 03A6 BBA1 FFF4"            /* Ä..ÿ8!.–|..¶ª°ˇÙ */
	$"4E80 0020 0000 0000 0000 2041 8003 0000"            /* NÄ. ...... AÄ... */
	$"0000 0094 0013 2E47 6574 4465 736B 746F"            /* ...î...GetDeskto */
	$"7046 696C 654E 616D 6500 0000 7C08 02A6"            /* pFileName...|..¶ */
	$"BF81 FFF0 9001 0008 9421 FF30 3B83 0000"            /* øÅˇê...î!ˇ0;É.. */
	$"3BA4 0000 3BC5 0000 3BE6 0000 3800 0014"            /* ;§..;≈..;Ê..8... */
	$"9001 00A0 38A1 00A4 38C1 00A0 4800 09FD"            /* ê..†8°.§8¡.†H..˝ */
	$"6000 0000 7C60 0735 4082 006C 8001 00A6"            /* `...|`.5@Ç.lÄ..¶ */
	$"5400 04E7 4182 005C 9381 004A B3A1 004E"            /* T..ÁAÇ.\ìÅ.J≥°.N */
	$"3861 0038 4800 0CED 8041 0014 8001 0054"            /* 8a.8H..ÌÄA..Ä..T */
	$"5400 07FE 7C00 00D0 7C00 0034 5400 DE3E"            /* T..˛|..–|..4T.ﬁ> */
	$"981F 0000 7C60 0734 2C00 FFCE 4082 0018"            /* ò...|`.4,.ˇŒ@Ç.. */
	$"3861 0038 4800 0CD5 8041 0014 3800 0000"            /* 8a.8H..’ÄA..8... */
	$"981F 0000 A801 0050 B01E 0000 4800 0008"            /* ò...®..P∞...H... */
	$"3860 FFCE 8001 00D8 3821 00D0 7C08 03A6"            /* 8`ˇŒÄ..ÿ8!.–|..¶ */
	$"BB81 FFF0 4E80 0020 0000 0000 0000 2041"            /* ªÅˇNÄ. ...... A */
	$"8004 0000 0000 00BC 0007 2E44 544F 7065"            /* Ä......º...DTOpe */
	$"6E00 0000 7C08 02A6 BF41 FFE8 9001 0008"            /* n...|..¶øAˇËê... */
	$"9421 FFB0 3B43 0000 3B64 0000 3BA0 EC6C"            /* î!ˇ∞;C..;d..;†Ïl */
	$"3FC0 424E 387E 444C 4800 0CF1 8041 0014"            /* ?¿BN8~DLH..ÒÄA.. */
	$"3B80 0001 3800 0000 901B 0000 7C7F 0734"            /* ;Ä..8...ê...|..4 */
	$"4800 0050 387E 444C 389C 0000 4800 0CE5"            /* H..P8~DL8ú..H..Â */
	$"8041 0014 2803 0000 4182 0034 8083 0000"            /* ÄA..(...AÇ.4ÄÉ.. */
	$"8004 0000 7C00 D040 4082 0024 A804 0006"            /* Ä...|.–@@Ç.$®... */
	$"2C00 0000 4180 0018 A804 000C 2C00 0000"            /* ,...AÄ..®...,... */
	$"4180 000C 907B 0000 3BA0 0000 3B9C 0001"            /* AÄ..ê{..;†..;ú.. */
	$"7F80 0734 7C00 F800 4181 0010 801B 0000"            /* .Ä.4|.¯.AÅ..Ä... */
	$"2800 0000 4182 FFA0 7FA3 EB78 8001 0058"            /* (...AÇˇ†.£ÎxÄ..X */
	$"3821 0050 7C08 03A6 BB41 FFE8 4E80 0020"            /* 8!.P|..¶ªAˇËNÄ.  */
	$"0000 0000 0000 2041 8006 0000 0000 00BC"            /* ...... AÄ......º */
	$"0017 2E46 696E 6442 756E 646C 6547 6976"            /* ...FindBundleGiv */
	$"656E 4372 6561 746F 7200 0000 3900 EC6C"            /* enCreator...9.Ïl */
	$"80C4 0000 3946 0008 3920 0000 3800 0000"            /* Äƒ..9F..9 ..8... */
	$"9005 0000 4800 0040 800A 0000 7C00 1840"            /* ê...H..@Ä...|..@ */
	$"4082 001C A80A 0004 2C00 0000 4180 0010"            /* @Ç..®...,...AÄ.. */
	$"9145 0000 3900 0000 4800 001C A8CA 0004"            /* ëE..9...H...® .. */
	$"3806 0001 5400 103A 7D40 5214 394A 0006"            /* 8...T..:}@R.9J.. */
	$"3929 0001 7D27 0734 80C4 0000 A8C6 0006"            /* 9)..}'.4Äƒ..®∆.. */
	$"3806 0001 7C07 0000 4080 0010 8005 0000"            /* 8...|...@Ä..Ä... */
	$"2800 0000 4182 FFA4 7D03 4378 4E80 0020"            /* (...AÇˇ§}.CxNÄ.  */
	$"0000 0000 0000 2040 0000 0000 0000 0084"            /* ...... @.......Ñ */
	$"0011 2E46 696E 6454 7970 6549 6E42 756E"            /* ...FindTypeInBun */
	$"646C 6500 7C08 02A6 BF21 FFE4 9001 0008"            /* dle.|..¶ø!ˇ‰ê... */
	$"9421 FFA0 3B23 0000 3B44 0000 3B65 0000"            /* î!ˇ†;#..;D..;e.. */
	$"3BC0 EC6C 3BA0 0000 3B99 0006 3800 0000"            /* ;¿Ïl;†..;ô..8... */
	$"B005 0000 3FE0 4652 4800 0040 387F 4546"            /* ∞...?‡FRH..@8.EF */
	$"A89C 0002 4800 09AD 8041 0014 2803 0000"            /* ®ú..H..≠ÄA..(... */
	$"4182 0020 8063 0000 8003 0000 7C00 D040"            /* AÇ. Äc..Ä...|.–@ */
	$"4082 0010 A803 0004 B01B 0000 3BC0 0000"            /* @Ç..®...∞...;¿.. */
	$"3B9C 0004 3BBD 0001 7FA3 0734 A819 0004"            /* ;ú..;Ω...£.4®... */
	$"7C03 0000 4181 0010 A81B 0000 2C00 0000"            /* |...AÅ..®...,... */
	$"4182 FFAC 7FC3 F378 8001 0068 3821 0060"            /* AÇˇ¨.√ÛxÄ..h8!.` */
	$"7C08 03A6 BB21 FFE4 4E80 0020 0000 0000"            /* |..¶ª!ˇ‰NÄ. .... */
	$"0000 2041 8007 0000 0000 00A8 0013 2E47"            /* .. AÄ......®...G */
	$"6574 4C6F 6361 6C49 4446 726F 6D46 5245"            /* etLocalIDFromFRE */
	$"4600 0000 38E0 EC6C 3900 0000 3923 0006"            /* F...8‡Ïl9...9#.. */
	$"3800 0000 B005 0000 7C86 0734 4800 0024"            /* 8...∞...|Ü.4H..$ */
	$"A809 0000 7C00 3000 4082 0010 A809 0002"            /* ®...|.0.@Ç..®... */
	$"B005 0000 38E0 0000 3929 0004 3908 0001"            /* ∞...8‡..9)..9... */
	$"7D04 0734 A803 0004 7C04 0000 4181 0010"            /* }..4®...|...AÅ.. */
	$"A805 0000 2C00 0000 4182 FFC8 7CE3 3B78"            /* ®...,...AÇˇ»|„;x */
	$"4E80 0020 0000 0000 0000 2040 0000 0000"            /* NÄ. ...... @.... */
	$"0000 0060 0019 2E47 6574 4963 6F6E 5273"            /* ...`...GetIconRs */
	$"7263 4944 4672 6F6D 4C6F 6361 6C49 4400"            /* rcIDFromLocalID. */
	$"7C60 0734 2C00 0004 4182 0054 4080 001C"            /* |`.4,...AÇ.T@Ä.. */
	$"2C00 0002 4182 0030 4080 0038 2C00 0001"            /* ,...AÇ.0@Ä.8,... */
	$"4080 0018 4800 005C 2C00 0006 4182 0048"            /* @Ä..H..\,...AÇ.H */
	$"4080 0050 4800 0034 3C60 4943 3863 4E23"            /* @Ä.PH..4<`IC8cN# */
	$"4E80 0020 3C60 6963 3863 6C34 4E80 0020"            /* NÄ. <`ic8cl4NÄ.  */
	$"3C60 6963 3863 6C38 4E80 0020 3C60 6963"            /* <`ic8cl8NÄ. <`ic */
	$"3863 7323 4E80 0020 3C60 6963 3863 7334"            /* 8cs#NÄ. <`ic8cs4 */
	$"4E80 0020 3C60 6963 3863 7338 4E80 0020"            /* NÄ. <`ic8cs8NÄ.  */
	$"3860 0000 4E80 0020 0000 0000 0000 2040"            /* 8`..NÄ. ...... @ */
	$"0000 0000 0000 0088 0010 2E44 5449 636F"            /* .......à...DTIco */
	$"6E54 6F52 6573 4963 6F6E 0000 7C08 02A6"            /* nToResIcon..|..¶ */
	$"BF21 FFE4 9001 0008 9421 FE90 3BC5 0000"            /* ø!ˇ‰ê...î!˛ê;≈.. */
	$"3B46 0000 3B27 0000 3BE8 0000 3800 0000"            /* ;F..;'..;Ë..8... */
	$"9001 0044 9008 0000 38A1 0148 4800 0485"            /* ê..Dê...8°.HH..Ö */
	$"6000 0000 3BA3 0000 7FA0 0735 4082 01C0"            /* `...;£...†.5@Ç.¿ */
	$"A861 0148 3881 0048 4BFF FA89 3BA3 0000"            /* ®a.H8Å.HKˇ˙â;£.. */
	$"7FA0 0735 4082 0194 4800 0711 8041 0014"            /* .†.5@Ç.îH...ÄA.. */
	$"3B83 0000 3860 0000 4800 0719 8041 0014"            /* ;É..8`..H...ÄA.. */
	$"A861 0148 3880 0002 38A1 0048 38C0 0001"            /* ®a.H8Ä..8°.H8¿.. */
	$"4800 0821 8041 0014 3B63 0000 3860 0001"            /* H..!ÄA..;c..8`.. */
	$"4800 06F1 8041 0014 7F60 0734 2C00 FFFF"            /* H..ÒÄA...`.4,.ˇˇ */
	$"4182 013C 387A 0000 3881 0044 4BFF FBB9"            /* AÇ.<8z..8Å.DKˇ˚π */
	$"3BA3 0000 7FA0 0735 4082 0108 8061 0044"            /* ;£...†.5@Ç..Äa.D */
	$"4800 08E9 8041 0014 7C7A 1B78 8061 0044"            /* H..ÈÄA..|z.xÄa.D */
	$"4800 0849 8041 0014 3C60 4652 3863 4546"            /* H..IÄA..<`FR8cEF */
	$"8081 0044 38A1 0040 4BFF FC65 3BA3 0000"            /* ÄÅ.D8°.@Kˇ¸e;£.. */
	$"7FA0 0735 4082 00BC 8061 0040 3899 0000"            /* .†.5@Ç.ºÄa.@8ô.. */
	$"38A1 003E 4BFF FCF1 3BA3 0000 7FA0 0735"            /* 8°.>Kˇ¸Ò;£...†.5 */
	$"4082 00A0 3C60 4943 3863 4E23 8081 0044"            /* @Ç.†<`IC8cN#ÄÅ.D */
	$"38A1 0040 4BFF FC29 3BA3 0000 7FA0 0735"            /* 8°.@Kˇ¸);£...†.5 */
	$"4082 0080 8061 0040 A881 003E 38A1 003C"            /* @Ç.ÄÄa.@®Å.>8°.< */
	$"4BFF FD85 3BA3 0000 7FA0 0735 4082 0064"            /* Kˇ˝Ö;£...†.5@Ç.d */
	$"7FC3 F378 4BFF FDFD 2803 0000 4182 0054"            /* .√ÛxKˇ˝˝(...AÇ.T */
	$"A881 003C 4800 067D 8041 0014 9061 0038"            /* ®Å.<H..}ÄA..êa.8 */
	$"8001 0038 2800 0000 4182 0034 3861 0038"            /* Ä..8(...AÇ.48a.8 */
	$"4800 0691 8041 0014 4800 0839 8041 0014"            /* H..ëÄA..H..9ÄA.. */
	$"7C60 0735 4082 0010 8001 0038 901F 0000"            /* |`.5@Ç..Ä..8ê... */
	$"4800 0010 3BA0 EC6C 4800 0008 3BA0 EC6C"            /* H...;†ÏlH...;†Ïl */
	$"8061 0044 7F44 D378 4800 0821 8041 0014"            /* Äa.D.D”xH..!ÄA.. */
	$"7F83 E378 4800 067D 8041 0014 7F63 DB78"            /* .É„xH..}ÄA...c€x */
	$"4800 0659 8041 0014 4800 0010 4800 05D5"            /* H..YÄA..H...H..’ */
	$"8041 0014 7C7D 1B78 7FA0 0735 4182 0010"            /* ÄA..|}.x.†.5AÇ.. */
	$"2C00 FF94 4182 0008 3BA0 EC6C 7FA3 EB78"            /* ,.ˇîAÇ..;†Ïl.£Îx */
	$"8001 0178 3821 0170 7C08 03A6 BB21 FFE4"            /* Ä..x8!.p|..¶ª!ˇ‰ */
	$"4E80 0020 0000 0000 0000 2041 8007 0000"            /* NÄ. ...... AÄ... */
	$"0000 0218 0017 2E47 6574 4963 6F6E 4672"            /* .......GetIconFr */
	$"6F6D 4465 736B 746F 7046 696C 6500 0000"            /* omDesktopFile... */
	$"7C08 02A6 BF41 FFE8 9001 0008 9421 FF40"            /* |..¶øAˇËê...î!ˇ@ */
	$"3BE3 0000 3BC4 0000 3B45 0000 3B66 0000"            /* ;„..;ƒ..;E..;f.. */
	$"3B87 0000 3BA8 0000 3800 0000 9008 0000"            /* ;á..;®..8...ê... */
	$"38A1 003A 38C1 0038 4BFF F915 7C60 0735"            /* 8°.:8¡.8Kˇ˘.|`.5 */
	$"4082 012C 8801 0038 2800 0000 4082 0118"            /* @Ç.,à..8(...@Ç.. */
	$"7F40 0734 2C00 0004 4182 0048 4080 001C"            /* .@.4,...AÇ.H@Ä.. */
	$"2C00 0002 4182 002C 4080 0030 2C00 0001"            /* ,...AÇ.,@Ä.0,... */
	$"4080 0018 4800 0044 2C00 0006 4182 0034"            /* @Ä..H..D,...AÇ.4 */
	$"4080 0038 4800 0024 3BC0 0100 4800 0034"            /* @Ä.8H..$;¿..H..4 */
	$"3BC0 0200 4800 002C 3BC0 0400 4800 0024"            /* ;¿..H..,;¿..H..$ */
	$"3BC0 0040 4800 001C 3BC0 0080 4800 0014"            /* ;¿.@H...;¿.ÄH... */
	$"3BC0 0100 4800 000C 3B40 0000 3BC0 0000"            /* ;¿..H...;@..;¿.. */
	$"2C1E 0000 4182 0098 7FC3 F378 4800 05F5"            /* ,...AÇ.ò.√ÛxH..ı */
	$"8041 0014 907D 0000 807D 0000 2803 0000"            /* ÄA..ê}..Ä}..(... */
	$"4182 0074 4800 05F5 8041 0014 A801 003A"            /* AÇ.tH..ıÄA..®..: */
	$"B001 0054 3BE0 0000 93E1 0058 807D 0000"            /* ∞..T;‡..ì·.XÄ}.. */
	$"8003 0000 9001 005C 93C1 0060 7F40 0774"            /* Ä...ê..\ì¡.`.@.t */
	$"9801 0069 9361 0070 9381 0074 3861 003C"            /* ò..iìa.pìÅ.t8a.< */
	$"4800 05D1 8041 0014 7C7E 1B78 807D 0000"            /* H..—ÄA..|~.xÄ}.. */
	$"4800 05D9 8041 0014 7FC0 0735 4182 0050"            /* H..ŸÄA...¿.5AÇ.P */
	$"807D 0000 4800 03B5 8041 0014 93FD 0000"            /* Ä}..H..µÄA..ì˝.. */
	$"4800 003C 3BC0 FF94 4800 0034 3BC0 FFCE"            /* H..<;¿ˇîH..4;¿ˇŒ */
	$"4800 002C 3BC0 EC6C 4800 0024 387F 0000"            /* H..,;¿ÏlH..$8... */
	$"389E 0000 38BA 0000 38DB 0000 38FC 0000"            /* 8û..8∫..8€..8¸.. */
	$"391D 0000 4BFF FC39 7C7E 1B78 7FC3 F378"            /* 9...Kˇ¸9|~.x.√Ûx */
	$"8001 00C8 3821 00C0 7C08 03A6 BB41 FFE8"            /* Ä..»8!.¿|..¶ªAˇË */
	$"4E80 0020 0000 0000 0000 2041 8006 0000"            /* NÄ. ...... AÄ... */
	$"0000 01A4 000A 2E44 5447 6574 4963 6F6E"            /* ...§...DTGetIcon */
	$"7C08 02A6 93E1 FFFC 9001 0008 9421 FEC0"            /* |..¶ì·ˇ¸ê...î!˛¿ */
	$"7CBF 2B79 4182 005C B09F 0016 2803 0000"            /* |ø+yAÇ.\∞ü..(... */
	$"4082 0014 3800 0000 901F 0012 B01F 001C"            /* @Ç..8...ê...∞... */
	$"4800 0028 3881 0038 88A3 0000 38A5 0001"            /* H..(8Å.8à£..8•.. */
	$"4800 0209 8041 0014 3801 0038 901F 0012"            /* H...ÄA..8..8ê... */
	$"3800 FFFF B01F 001C 7FE3 FB78 4800 01D5"            /* 8.ˇˇ∞....„˚xH..’ */
	$"8041 0014 3800 0000 901F 0012 4800 0008"            /* ÄA..8...ê...H... */
	$"3860 FFCE 8001 0148 3821 0140 7C08 03A6"            /* 8`ˇŒÄ..H8!.@|..¶ */
	$"83E1 FFFC 4E80 0020 0000 0000 0000 2041"            /* É·ˇ¸NÄ. ...... A */
	$"8001 0000 0000 0088 0014 2E47 6574 566F"            /* Ä......à...GetVo */
	$"6C75 6D65 496E 666F 4E6F 4E61 6D65 0000"            /* lumeInfoNoName.. */
	$"7C08 02A6 93E1 FFFC 9001 0008 9421 FF40"            /* |..¶ì·ˇ¸ê...î!ˇ@ */
	$"3BE5 0000 38A1 0038 4BFF FF39 7C60 0735"            /* ;Â..8°.8Kˇˇ9|`.5 */
	$"4082 000C A801 004E B01F 0000 8001 00C8"            /* @Ç..®..N∞...Ä..» */
	$"3821 00C0 7C08 03A6 83E1 FFFC 4E80 0020"            /* 8!.¿|..¶É·ˇ¸NÄ.  */
	$"0000 0000 0000 2041 8001 0000 0000 0040"            /* ...... AÄ......@ */
	$"0011 2E44 6574 6572 6D69 6E65 5652 6566"            /* ...DetermineVRef */
	$"4E75 6D00 7C08 02A6 93E1 FFFC 9001 0008"            /* Num.|..¶ì·ˇ¸ê... */
	$"9421 FFC0 7C9F 2378 4800 0511 8041 0014"            /* î!ˇ¿|ü#xH...ÄA.. */
	$"2803 0000 4182 0044 8063 0000 A803 0004"            /* (...AÇ.DÄc..®... */
	$"5400 0673 4182 0010 8063 0000 80A3 0000"            /* T..sAÇ..Äc..Ä£.. */
	$"4800 0008 80A3 0000 3865 0012 389F 0000"            /* H...Ä£..8e..8ü.. */
	$"88A5 0012 38A5 0001 4800 00E1 8041 0014"            /* à•..8•..H..·ÄA.. */
	$"3860 0000 4800 0010 3800 0000 981F 0000"            /* 8`..H...8...ò... */
	$"3860 FFEB 8001 0048 3821 0040 7C08 03A6"            /* 8`ˇÎÄ..H8!.@|..¶ */
	$"83E1 FFFC 4E80 0020 0000 0000 0000 2041"            /* É·ˇ¸NÄ. ...... A */
	$"8001 0000 0000 0084 000E 2E47 6574 4472"            /* Ä......Ñ...GetDr */
	$"6976 6572 4E61 6D65 7C08 02A6 93E1 FFFC"            /* iverName|..¶ì·ˇ¸ */
	$"9001 0008 9421 FF40 7CDF 3378 9061 004A"            /* ê...î!ˇ@|ﬂ3xêa.J */
	$"B081 004E 90A1 0058 8006 0000 9001 005C"            /* ∞Å.Nê°.XÄ...ê..\ */
	$"3861 0038 4800 02D5 8041 0014 7C60 0735"            /* 8a.8H..’ÄA..|`.5 */
	$"4082 000C 8001 0060 901F 0000 8001 00C8"            /* @Ç..Ä..`ê...Ä..» */
	$"3821 00C0 7C08 03A6 83E1 FFFC 4E80 0020"            /* 8!.¿|..¶É·ˇ¸NÄ.  */
	$"0000 0000 0000 2041 8001 0000 0000 0058"            /* ...... AÄ......X */
	$"000D 2E48 4765 7456 6F6C 5061 726D 7300"            /* ...HGetVolParms. */
	$"8182 0068 9041 0014 800C 0000 804C 0004"            /* ÅÇ.hêA..Ä...ÄL.. */
	$"7C09 03A6 4E80 0420 8182 0060 9041 0014"            /* |..¶NÄ. ÅÇ.`êA.. */
	$"800C 0000 804C 0004 7C09 03A6 4E80 0420"            /* Ä...ÄL..|..¶NÄ.  */
	$"8182 003C 9041 0014 800C 0000 804C 0004"            /* ÅÇ.<êA..Ä...ÄL.. */
	$"7C09 03A6 4E80 0420 8182 0070 9041 0014"            /* |..¶NÄ. ÅÇ.pêA.. */
	$"800C 0000 804C 0004 7C09 03A6 4E80 0420"            /* Ä...ÄL..|..¶NÄ.  */
	$"8182 00C0 9041 0014 800C 0000 804C 0004"            /* ÅÇ.¿êA..Ä...ÄL.. */
	$"7C09 03A6 4E80 0420 8182 00BC 9041 0014"            /* |..¶NÄ. ÅÇ.ºêA.. */
	$"800C 0000 804C 0004 7C09 03A6 4E80 0420"            /* Ä...ÄL..|..¶NÄ.  */
	$"8182 00B8 9041 0014 800C 0000 804C 0004"            /* ÅÇ.∏êA..Ä...ÄL.. */
	$"7C09 03A6 4E80 0420 8182 004C 9041 0014"            /* |..¶NÄ. ÅÇ.LêA.. */
	$"800C 0000 804C 0004 7C09 03A6 4E80 0420"            /* Ä...ÄL..|..¶NÄ.  */
	$"8182 0050 9041 0014 800C 0000 804C 0004"            /* ÅÇ.PêA..Ä...ÄL.. */
	$"7C09 03A6 4E80 0420 8182 0000 9041 0014"            /* |..¶NÄ. ÅÇ..êA.. */
	$"800C 0000 804C 0004 7C09 03A6 4E80 0420"            /* Ä...ÄL..|..¶NÄ.  */
	$"8182 0048 9041 0014 800C 0000 804C 0004"            /* ÅÇ.HêA..Ä...ÄL.. */
	$"7C09 03A6 4E80 0420 8182 0010 9041 0014"            /* |..¶NÄ. ÅÇ..êA.. */
	$"800C 0000 804C 0004 7C09 03A6 4E80 0420"            /* Ä...ÄL..|..¶NÄ.  */
	$"8182 00B4 9041 0014 800C 0000 804C 0004"            /* ÅÇ.¥êA..Ä...ÄL.. */
	$"7C09 03A6 4E80 0420 8182 006C 9041 0014"            /* |..¶NÄ. ÅÇ.lêA.. */
	$"800C 0000 804C 0004 7C09 03A6 4E80 0420"            /* Ä...ÄL..|..¶NÄ.  */
	$"8182 0008 9041 0014 800C 0000 804C 0004"            /* ÅÇ..êA..Ä...ÄL.. */
	$"7C09 03A6 4E80 0420 8182 008C 9041 0014"            /* |..¶NÄ. ÅÇ.åêA.. */
	$"800C 0000 804C 0004 7C09 03A6 4E80 0420"            /* Ä...ÄL..|..¶NÄ.  */
	$"8182 0024 9041 0014 800C 0000 804C 0004"            /* ÅÇ.$êA..Ä...ÄL.. */
	$"7C09 03A6 4E80 0420 8182 0044 9041 0014"            /* |..¶NÄ. ÅÇ.DêA.. */
	$"800C 0000 804C 0004 7C09 03A6 4E80 0420"            /* Ä...ÄL..|..¶NÄ.  */
	$"8182 005C 9041 0014 800C 0000 804C 0004"            /* ÅÇ.\êA..Ä...ÄL.. */
	$"7C09 03A6 4E80 0420 8182 00B0 9041 0014"            /* |..¶NÄ. ÅÇ.∞êA.. */
	$"800C 0000 804C 0004 7C09 03A6 4E80 0420"            /* Ä...ÄL..|..¶NÄ.  */
	$"8182 007C 9041 0014 800C 0000 804C 0004"            /* ÅÇ.|êA..Ä...ÄL.. */
	$"7C09 03A6 4E80 0420 8182 00A0 9041 0014"            /* |..¶NÄ. ÅÇ.†êA.. */
	$"800C 0000 804C 0004 7C09 03A6 4E80 0420"            /* Ä...ÄL..|..¶NÄ.  */
	$"8182 0034 9041 0014 800C 0000 804C 0004"            /* ÅÇ.4êA..Ä...ÄL.. */
	$"7C09 03A6 4E80 0420 8182 0014 9041 0014"            /* |..¶NÄ. ÅÇ..êA.. */
	$"800C 0000 804C 0004 7C09 03A6 4E80 0420"            /* Ä...ÄL..|..¶NÄ.  */
	$"8182 000C 9041 0014 800C 0000 804C 0004"            /* ÅÇ..êA..Ä...ÄL.. */
	$"7C09 03A6 4E80 0420 8182 0054 9041 0014"            /* |..¶NÄ. ÅÇ.TêA.. */
	$"800C 0000 804C 0004 7C09 03A6 4E80 0420"            /* Ä...ÄL..|..¶NÄ.  */
	$"8182 0018 9041 0014 800C 0000 804C 0004"            /* ÅÇ..êA..Ä...ÄL.. */
	$"7C09 03A6 4E80 0420 8182 00AC 9041 0014"            /* |..¶NÄ. ÅÇ.¨êA.. */
	$"800C 0000 804C 0004 7C09 03A6 4E80 0420"            /* Ä...ÄL..|..¶NÄ.  */
	$"8182 0090 9041 0014 800C 0000 804C 0004"            /* ÅÇ.êêA..Ä...ÄL.. */
	$"7C09 03A6 4E80 0420 8182 0020 9041 0014"            /* |..¶NÄ. ÅÇ. êA.. */
	$"800C 0000 804C 0004 7C09 03A6 4E80 0420"            /* Ä...ÄL..|..¶NÄ.  */
	$"8182 0030 9041 0014 800C 0000 804C 0004"            /* ÅÇ.0êA..Ä...ÄL.. */
	$"7C09 03A6 4E80 0420 8182 0088 9041 0014"            /* |..¶NÄ. ÅÇ.àêA.. */
	$"800C 0000 804C 0004 7C09 03A6 4E80 0420"            /* Ä...ÄL..|..¶NÄ.  */
	$"8182 0064 9041 0014 800C 0000 804C 0004"            /* ÅÇ.dêA..Ä...ÄL.. */
	$"7C09 03A6 4E80 0420 8182 00A8 9041 0014"            /* |..¶NÄ. ÅÇ.®êA.. */
	$"800C 0000 804C 0004 7C09 03A6 4E80 0420"            /* Ä...ÄL..|..¶NÄ.  */
	$"8182 0074 9041 0014 800C 0000 804C 0004"            /* ÅÇ.têA..Ä...ÄL.. */
	$"7C09 03A6 4E80 0420 8182 009C 9041 0014"            /* |..¶NÄ. ÅÇ.úêA.. */
	$"800C 0000 804C 0004 7C09 03A6 4E80 0420"            /* Ä...ÄL..|..¶NÄ.  */
	$"8182 00A4 9041 0014 800C 0000 804C 0004"            /* ÅÇ.§êA..Ä...ÄL.. */
	$"7C09 03A6 4E80 0420 8182 0080 9041 0014"            /* |..¶NÄ. ÅÇ.ÄêA.. */
	$"800C 0000 804C 0004 7C09 03A6 4E80 0420"            /* Ä...ÄL..|..¶NÄ.  */
	$"8182 0038 9041 0014 800C 0000 804C 0004"            /* ÅÇ.8êA..Ä...ÄL.. */
	$"7C09 03A6 4E80 0420 8182 0078 9041 0014"            /* |..¶NÄ. ÅÇ.xêA.. */
	$"800C 0000 804C 0004 7C09 03A6 4E80 0420"            /* Ä...ÄL..|..¶NÄ.  */
	$"8182 0094 9041 0014 800C 0000 804C 0004"            /* ÅÇ.îêA..Ä...ÄL.. */
	$"7C09 03A6 4E80 0420 8182 002C 9041 0014"            /* |..¶NÄ. ÅÇ.,êA.. */
	$"800C 0000 804C 0004 7C09 03A6 4E80 0420"            /* Ä...ÄL..|..¶NÄ.  */
	$"8182 0098 9041 0014 800C 0000 804C 0004"            /* ÅÇ.òêA..Ä...ÄL.. */
	$"7C09 03A6 4E80 0420 8182 0084 9041 0014"            /* |..¶NÄ. ÅÇ.ÑêA.. */
	$"800C 0000 804C 0004 7C09 03A6 4E80 0420"            /* Ä...ÄL..|..¶NÄ.  */
	$"8182 0040 9041 0014 800C 0000 804C 0004"            /* ÅÇ.@êA..Ä...ÄL.. */
	$"7C09 03A6 4E80 0420 8182 0028 9041 0014"            /* |..¶NÄ. ÅÇ.(êA.. */
	$"800C 0000 804C 0004 7C09 03A6 4E80 0420"            /* Ä...ÄL..|..¶NÄ.  */
	$"8182 0058 9041 0014 800C 0000 804C 0004"            /* ÅÇ.XêA..Ä...ÄL.. */
	$"7C09 03A6 4E80 0420 8182 0004 9041 0014"            /* |..¶NÄ. ÅÇ..êA.. */
	$"800C 0000 804C 0004 7C09 03A6 4E80 0420"            /* Ä...ÄL..|..¶NÄ.  */
	$"8182 001C 9041 0014 800C 0000 804C 0004"            /* ÅÇ..êA..Ä...ÄL.. */
	$"7C09 03A6 4E80 0420 0000 0000 0000 0000"            /* |..¶NÄ. ........ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 00FC 0000 014C 0000 0124 0000 021C"            /* ...¸...L...$.... */
	$"0000 023C 0000 02D4 0000 030C 0000 010C"            /* ...<...‘........ */
	$"0000 0364 0000 036A 0000 0114 0000 0370"            /* ...d...j.......p */
	$"0000 011C 0000 0000 0000 0328 0000 0000"            /* ...........(.... */
	$"0000 0000 0000 0000 0000 0EE4 0000 0000"            /* ...........‰.... */
	$"0000 14B8 0000 0000 0000 1B68 0000 0000"            /* ...∏.......h.... */
	$"6465 736B FFFF F068 7472 7368 FFFF F067"            /* deskˇˇhtrshˇˇg */
	$"6173 74C4 FFFF F096 7574 69C4 FFFF F097"            /* astƒˇˇñutiƒˇˇó */
	$"6D6F 72C4 FFFF F085 6578 746E FFFF F07B"            /* morƒˇˇÖextnˇˇ{ */
	$"6374 726C FFFF F078 666F 6E74 FFFF F080"            /* ctrlˇˇxfontˇˇÄ */
	$"7072 6566 FFFF F07A 616D 6E75 FFFF F072"            /* prefˇˇzamnuˇˇr */
	$"7072 6E74 FFFF F079 7374 7274 FFFF F073"            /* prntˇˇystrtˇˇs */
	$"7368 6466 FFFF F073 7364 6576 FFFF F086"            /* shdfˇˇssdevˇˇÜ */
	$"C473 6372 FFFF F089 C46E 6574 FFFF F08A"            /* ƒscrˇˇâƒnetˇˇä */
	$"C470 7264 FFFF F08E 7070 6466 FFFF F08F"            /* ƒprdˇˇéppdfˇˇè */
	$"6374 7244 FFFF F091 6578 7444 FFFF F092"            /* ctrDˇˇëextDˇˇí */
	$"7374 7244 FFFF F093 636D 6E75 FFFF F09A"            /* strDˇˇìcmnuˇˇö */
	$"7368 6444 FFFF F094 6173 7570 FFFF F098"            /* shdDˇˇîasupˇˇò */
	$"6D61 6344 FFFF F095 636D 6E75 FFFF F09A"            /* macDˇˇïcmnuˇˇö */
	$"C476 6F63 FFFF F090 C474 6578 FFFF F08D"            /* ƒvocˇˇêƒtexˇˇç */
	$"C46C 6962 FFFF F08C C468 6C70 FFFF F088"            /* ƒlibˇˇåƒhlpˇˇà */
	$"C473 6E64 FFFF F087 0000 0000 0000 0000"            /* ƒsndˇˇá........ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 6664 7270 FFFF F061"            /* ........fdrpˇˇa */
	$"7472 7368 FFFF F067 6661 7379 FFFF F071"            /* trshˇˇgfasyˇˇq */
	$"494E 4954 FFFF BFE1 4150 504C FFFF F064"            /* INITˇˇø·APPLˇˇd */
	$"6466 696C FFFF F069 7072 6566 FFFF F07D"            /* dfilˇˇiprefˇˇ} */
	$"6661 616D FFFF F072 6661 6374 FFFF F078"            /* faamˇˇrfactˇˇx */
	$"6661 6578 FFFF F07B 6661 7066 FFFF F07A"            /* faexˇˇ{fapfˇˇz */
	$"6661 7374 FFFF F073 6164 7270 FFFF F064"            /* fastˇˇsadrpˇˇd */
	$"6661 6574 FFFF F074 6661 6472 FFFF F075"            /* faetˇˇtfadrˇˇu */
	$"6661 7368 FFFF F076 6661 6D6E FFFF F077"            /* fashˇˇvfamnˇˇw */
	$"7468 6E67 FFFF BFE1 7368 6C62 FFFF F081"            /* thngˇˇø·shlbˇˇÅ */
	$"6966 696C 0000 30D4 6666 696C 0000 38A4"            /* ifil..0‘ffil..8§ */
	$"7366 696C 0000 36B0 7466 696C 0000 38A5"            /* sfil..6∞tfil..8• */
	$"4646 494C 0000 3C8C 4446 494C 0000 3D86"            /* FFIL..<åDFIL..=Ü */
	$"6B66 696C 0000 399E 6966 696C FFFF F11F"            /* kfil..9ûifilˇˇÒ. */
	$"6666 696C FFFF F121 7366 696C FFFF F11E"            /* ffilˇˇÒ!sfilˇˇÒ. */
	$"7466 696C FFFF F120 4646 494C FFFF F124"            /* tfilˇˇÒ FFILˇˇÒ$ */
	$"4446 494C FFFF F123 6B66 696C FFFF F122"            /* DFILˇˇÒ#kfilˇˇÒ" */
	$"636C 7073 FFFF F125 636C 7070 FFFF F127"            /* clpsˇˇÒ%clppˇˇÒ' */
	$"636C 7074 FFFF F126 636C 7075 FFFF F128"            /* clptˇˇÒ&clpuˇˇÒ( */
	$"0549 636F 6E0D 052E 536F 6E79 0000 0000"            /* .Icon...Sony.... */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
};

data 'Pref' (129, "Default Preferences") {
	$"0000 0011 0E4E 6F74 2072 6567 6973 7465"            /* .....Not registe */
	$"7265 6420 2020 2020 2020 2020 20EB 000D"            /* red          Î.. */
	$"02EC 000D 02EC 000E 02ED 000E 02ED 000F"            /* .Ï...Ï...Ì...Ì.. */
	$"02EE 000F 02EE 0010 02EF 0010 02EF 0011"            /* .Ó...Ó...Ô...Ô.. */
	$"02F0 0011 02F0 0012 02F3 001A 02F3 001C"            /* .......Û...Û.. */
	$"02F4 001C 02F4 00F4 02F5 00F4 02F5 0111"            /* .Ù...Ù.Ù.ı.Ù.ı.. */
	$"02F6 0111 02F6 026B 02F8 0011 02F8 0012"            /* .ˆ...ˆ.k.¯...¯.. */
	$"02F9 0010 02F9 0011 02FA 000F 02FA 0010"            /* .˘...˘...˙...˙.. */
	$"02FB 000E 02FB 000F 02FB 03FF 02FB 0400"            /* .˚...˚...˚.ˇ.˚.. */
	$"02FC 000D 02FC 000E 02FD 000C 02FD 000D"            /* .¸...¸...˝...˝.. */
	$"02FD 03FE 02FD 03FF 02FE 000B 02FE 000C"            /* .˝.˛.˝.ˇ.˛...˛.. */
	$"02FE 03FD 02FE 03FE 02FF 000A 02FF 000B"            /* .˛.˝.˛.˛.ˇ...ˇ.. */
	$"02FF 03FB 02FF 03FD 0300 000A 0300 026B"            /* .ˇ.˚.ˇ.˝.......k */
	$"0300 03A1 0300 03FB 00DD DDDD 00DD DDDD"            /* ...°...˚.›››.››› */
	$"00DD DDDD 00DD DDDD 00DD DDDD 00DD DDDD"            /* .›››.›››.›››.››› */
	$"00DD DDDD 00DD DDDD 00DD DDDD 00DD DDDD"            /* .›››.›››.›››.››› */
	$"00DD DDDD 004E 4F50 00DD DDDD 00DD DDDD"            /* .›››.NOP.›››.››› */
	$"00DD DDDD 00DD DDDD 00DD DDDD 00DD DDDD"            /* .›››.›››.›››.››› */
	$"0DB1 1CD0 0000 0000 001E 80F0 0DCF B6A0"            /* .±.–......Ä.œ∂† */
	$"00DD DDDD 00DD DDDD 00DD DDDD 0DB1 10D0"            /* .›››.›››.›››.±.– */
	$"00DD DDDD 00DD DDDD 00DD DDDD 00DD DDDD"            /* .›››.›››.›››.››› */
	$"00DD DDDD 00DD DDDD 00DD DDDD 00DD DDDD"            /* .›››.›››.›››.››› */
	$"00DD DDDD 00DD DDDD 00DD DDDD 00DD DDDD"            /* .›››.›››.›››.››› */
	$"00DD DDDD 00DD DDDD 00DD DDDD 00DD DDDD"            /* .›››.›››.›››.››› */
	$"00DD DDDD 00DD DDDD 00DD DDDD 00DD DDDD"            /* .›››.›››.›››.››› */
	$"0DB1 1CD0 0000 0000 001E 8080 0DCF B6A0"            /* .±.–......ÄÄ.œ∂† */
	$"0DB1 1CD0 0000 0000 001E 8070 0DCF B6A0"            /* .±.–......Äp.œ∂† */
	$"00DD DDDD 00DD DDDD 00DD DDDD 0DB1 10D0"            /* .›››.›››.›››.±.– */
	$"0DB1 1CD0 0000 0000 001E 8050 0DCF B6A0"            /* .±.–......ÄP.œ∂† */
	$"0DB1 1CD0 0000 0000 001E 8040 0DCF B6A0"            /* .±.–......Ä@.œ∂† */
	$"0DB1 1CD0 0000 0000 001E 8030 0DB1 10D0"            /* .±.–......Ä0.±.– */
	$"0DB1 1CD0 0000 0000 001E 8020 0DCF B6A0"            /* .±.–......Ä .œ∂† */
	$"0DB1 1CD0 0041 4E32 3734 3537 38CF B6A0"            /* .±.–.AN274578œ∂† */
	$"0DB1 1CD0 0000 0000 001E 8000 0DCF B6A0"            /* .±.–......Ä..œ∂† */
	$"00DD DDDD 00DD DDDD 00DD DDDD 0DB1 10D0"            /* .›››.›››.›››.±.– */
	$"00DD DDDD 00DD DDDD 00DD DDDD 00DD DDDD"            /* .›››.›››.›››.››› */
	$"00DD DDDD 00DD DDDD 00DD DDDD 00DD DDDD"            /* .›››.›››.›››.››› */
	$"0DB1 1CD0 0000 0000 001E 7FC0 0DCF B6A0"            /* .±.–.......¿.œ∂† */
	$"00DD DDDD 00DD DDDD 00DD DDDD 0DB1 10D0"            /* .›››.›››.›››.±.– */
	$"00DD DDDD 00DD DDDD 00DD DDDD 00DD DDDD"            /* .›››.›››.›››.››› */
	$"00DD DDDD 00DD DDDD 00DD DDDD 00DD DDDD"            /* .›››.›››.›››.››› */
	$"00DD DDDD 00DD DDDD 00DD DDDD 00DD DDDD"            /* .›››.›››.›››.››› */
	$"00DD DDDD 00DD DDDD 00DD DDDD 00DD DDDD"            /* .›››.›››.›››.››› */
	$"00DD DDDD 00DD DDDD 00DD DDDD 00DD DDDD"            /* .›››.›››.›››.››› */
	$"00DD DDDD 0000 0000 0000 0004 00DD DDDD"            /* .›››.........››› */
	$"0DB1 1CD0 AB00 0006 0000 0160 0004 5C4C"            /* .±.–´......`..\L */
	$"0000 0000 00DD DDDD 0000 014E 0000 0000"            /* .....›››...N.... */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0184 0000 0007 0000 0000"            /* .......Ñ........ */
	$"0000 0001 FFFF FFFF FFFF 0000 0000 FFFF"            /* ....ˇˇˇˇˇˇ....ˇˇ */
	$"FFFF 0000 0000 FFFF 0000 0000 FFFF FFFF"            /* ˇˇ....ˇˇ....ˇˇˇˇ */
	$"0000 0000 FFFF FFFF 0000 FFFF FFFF FFFF"            /* ....ˇˇˇˇ..ˇˇˇˇˇˇ */
	$"FFFF E6E6 E6E6 E6E6 D9D9 D9D9 D9D9 CCCC"            /* ˇˇÊÊÊÊÊÊŸŸŸŸŸŸÃÃ */
	$"CCCC CCCC BFBF BFBF BFBF B3B3 B3B3 B3B3"            /* ÃÃÃÃøøøøøø≥≥≥≥≥≥ */
	$"A6A6 A6A6 A6A6 9999 9999 9999 8C8C 8C8C"            /* ¶¶¶¶¶¶ôôôôôôåååå */
	$"8C8C 8080 8080 8080 DBDB 0000 2A2A FCFC"            /* ååÄÄÄÄÄÄ€€..**¸¸ */
	$"F5F5 0000 0000 9191 5050 0000 A5A5 E6E6"            /* ıı....ëëPP..••ÊÊ */
	$"2C2C 0000 6868 DFDF 0000 7171 7373 7373"            /* ,,..hhﬂﬂ..qqssss */
	$"7373 6666 6666 6666 5959 5959 5959 4D4D"            /* ssffffffYYYYYYMM */
	$"4D4D 4D4D 4040 4040 4040 3333 3333 3333"            /* MMMM@@@@@@333333 */
	$"2626 2626 2626 0D0D 0D0D 0D0D 0D0D 0D0D"            /* &&&&&&.......... */
	$"0D0D 0000 0000 0000 F3F3 8B8B 6565 F7F7"            /* ........ÛÛããee˜˜ */
	$"A6A6 6E6E FCFC C3C3 7878 FFFF F7F7 8C8C"            /* ¶¶nn¸¸√√xxˇˇ˜˜åå */
	$"BDBD DCDC 8C8C 9898 CDCD 8C8C 7575 C0C0"            /* ΩΩ‹‹ååòòÕÕååuu¿¿ */
	$"8B8B 7676 C2C2 BEBE 7474 C4C4 F0F0 7E7E"            /* ããvv¬¬æættƒƒ~~ */
	$"9898 CCCC 8181 8181 B9B9 8383 6C6C A8A8"            /* òòÃÃÅÅÅÅππÉÉll®® */
	$"9E9E 7373 AAAA BBBB 7B7B ACAC F4F4 8B8B"            /* ûûss™™ªª{{¨¨ÙÙãã */
	$"AFAF F4F4 8B8B 8A8A E9E9 5555 3A3A F0F0"            /* ØØÙÙããääÈÈUU:: */
	$"8181 4040 F6F6 A9A9 4646 FFFF F6F6 5353"            /* ÅÅ@@ˆˆ©©FFˇˇˆˆSS */
	$"9B9B CECE 5A5A 6565 BABA 5C5C 2020 A8A8"            /* õõŒŒZZee∫∫\\  ®® */
	$"5E5E 2525 ABAB A5A5 1E1E ADAD EBEB 4646"            /* ^^%%´´••..≠≠ÎÎFF */
	$"7575 B8B8 5050 5959 A0A0 5555 3B3B 8888"            /* uu∏∏PPYY††UU;;àà */
	$"7B7B 4040 8989 A0A0 4646 8A8A EBEB 5151"            /* {{@@ââ††FFääÎÎQQ */
	$"8D8D EBEB 5353 6464 DBDB 0000 2A2A E5E5"            /* ççÎÎSSdd€€..**ÂÂ */
	$"4F4F 1818 EFEF 8A8A 0909 FCFC F5F5 0000"            /* OO..ÔÔää..¸¸ıı.. */
	$"6C6C BDBD 1919 0000 A4A4 2D2D 0000 9191"            /* llΩΩ....§§--..ëë */
	$"5050 0000 9595 8C8C 0000 A5A5 E6E6 0000"            /* PP..ïïåå..••ÊÊ.. */
	$"5858 A3A3 1F1F 3030 8383 2C2C 0000 6868"            /* XX££..00ÉÉ,,..hh */
	$"5353 0000 6868 8080 0000 6969 DFDF 0000"            /* SS..hhÄÄ..iiﬂﬂ.. */
	$"7171 DEDE 0000 4C4C 8686 0000 1A1A 8C8C"            /* qqﬁﬁ..LLÜÜ....åå */
	$"3030 0F0F 9292 5454 0404 9A9A 9696 0000"            /* 00..ííTT..ööññ.. */
	$"4242 7474 0F0F 0000 6464 1B1B 0000 5959"            /* BBtt....dd....YY */
	$"3131 0000 5B5B 5656 0000 6565 8C8C 0000"            /* 11..[[VV..eeåå.. */
	$"3636 6464 1313 1D1D 5050 1B1B 0000 3F3F"            /* 66dd....PP....?? */
	$"3333 0000 4040 4E4E 0000 4040 8888 0000"            /* 33..@@NN..@@àà.. */
	$"4545 8787 0000 2F2F 5B5B 0000 1111 5F5F"            /* EEáá..//[[....__ */
	$"2121 0A0A 6363 3939 0202 6868 6565 0000"            /* !!..cc99..hhee.. */
	$"2D2D 4E4E 0A0A 0000 4444 1313 0000 3C3C"            /* --NN....DD....<< */
	$"2121 0000 3D3D 3A3A 0000 4444 5F5F 0000"            /* !!..==::..DD__.. */
	$"2424 4343 0D0D 1414 3636 1212 0000 2B2B"            /* $$CC....66....++ */
	$"2222 0000 2B2B 3535 0000 2C2C 5C5C 0000"            /* ""..++55..,,\\.. */
	$"2F2F 5C5C 0000 1F1F C1C1 AAAA 8B8B 8E8E"            /* //\\....¡¡™™ããéé */
	$"7878 6161 6363 5151 4343 4141 3434 2E2E"            /* xxaaccQQCCAA44.. */
	$"2727 1F1F 1F1F BEBE 9393 5B5B 9B9B 7070"            /* ''....ææìì[[õõpp */
	$"3E3E 7C7C 5353 2929 6161 3C3C 1A1A 4A4A"            /* >>||SS))aa<<..JJ */
	$"2929 1111 0101 0000 0000 0101 0000 0000"            /* )).............. */
	$"0101 0000 0000 0101 0000 0000 0101 0000"            /* ................ */
	$"0000 0101 0000 0000"                                /* ........ */
};

resource 'SIZE' (-1) {
	reserved,
	acceptSuspendResumeEvents,
	reserved,
	canBackground,
	multiFinderAware,
	backgroundAndForeground,
	dontGetFrontClicks,
	ignoreChildDiedEvents,
	is32BitCompatible,
	isHighLevelEventAware,
	onlyLocalHLEvents,
	notStationeryAware,
	dontUseTextEditServices,
	notDisplayManagerAware,
	reserved,
	reserved,
	4194304,
	2097152
};

resource 'STR#' (128, "Default Names", purgeable) {
	{	/* array StringArray: 34 elements */
		/* [1] */
		"Iconographer",
		/* [2] */
		"Iconographer Preferences",
		/* [3] */
		"OK",
		/* [4] */
		"Save",
		/* [5] */
		"Cancel",
		/* [6] */
		"Don’t Save",
		/* [7] */
		"Register",
		/* [8] */
		"Not Yet",
		/* [9] */
		":Register",
		/* [10] */
		"http://order.kagi.com/?QEJ",
		/* [11] */
		"Register Online",
		/* [12] */
		"Launch Register App",
		/* [13] */
		"Not Registered",
		/* [14] */
		"mailto:mihai@mscape.com",
		/* [15] */
		"http://www.mscape.com/products/iconograp"
		"her.html",
		/* [16] */
		"Show Colors",
		/* [17] */
		"Hide Colors",
		/* [18] */
		"Show Members",
		/* [19] */
		"Hide Members",
		/* [20] */
		"Show Preview",
		/* [21] */
		"Hide Preview",
		/* [22] */
		"Show Tools",
		/* [23] */
		"Hide Tools",
		/* [24] */
		"Iconographer Help",
		/* [25] */
		"Email Author",
		/* [26] */
		"Iconographer Homepage",
		/* [27] */
		":Iconographer Support:Help:toc.html",
		/* [28] */
		"Revert",
		/* [29] */
		"Show Pixel Grid",
		/* [30] */
		"Hide Pixel Grid",
		/* [31] */
		"Add Member",
		/* [32] */
		"Insert Icon",
		/* [33] */
		"Open Help",
		/* [34] */
		"Continue"
	}
};

resource 'STR#' (129, "Standard Errors", purgeable) {
	{	/* array StringArray: 17 elements */
		/* [1] */
		"The file you selected is already open in"
		" another program.",
		/* [2] */
		"This development copy of <app name> expi"
		"red on October 1, 2000. Please download "
		"a newer version.",
		/* [3] */
		"A needed resource is missing. <app name>"
		" could be corrupted, please reinstall th"
		"e program.",
		/* [4] */
		"<app name> requires System 7.5.3 or abov"
		"e.",
		/* [5] */
		"AppleEvents could not be initialized, <a"
		"pp name> cannot continue.",
		/* [6] */
		"There was an error while initializing th"
		"e Appearance Mangler, <app name> cannot "
		"continue.",
		/* [7] */
		"There was error while initializing the m"
		"enu bar. <app name>’s resource fork is m"
		"ost likely corrupted, please reinstall.",
		/* [8] */
		"Cannot launch this URL. Internet Config "
		"must be installed.",
		/* [9] */
		"A new editor could not be created. Most "
		"likely you are low on memory. Either clo"
		"se some of the open editors, or give <ap"
		"p name> more memory.",
		/* [10] */
		"<app name> is low on memory. The drawing"
		" states of this editor will be disposed "
		"in order to make more room.",
		/* [11] */
		"<app name> has run out of memory. This e"
		"ditor must be closed in order to make mo"
		"re room.",
		/* [12] */
		"The “Register” application could not be "
		"found. Please reinstall <app name>.",
		/* [13] */
		"The registration code that you have type"
		"d is incorrect. Please enter it EXACTLY "
		"as it is shown in the email that you hav"
		"e received.",
		/* [14] */
		"Thank you for registering <app name>.",
		/* [15] */
		"<app name> requires the Appearance Manag"
		"er to be installed. Please install Mac O"
		"S 8.0 and higher, or get the Appearance "
		"Manager SDK from Apple.",
		/* [16] */
		"Cannot launch this URL. Internet Config "
		"must be installed.\n\nIf you wish to regis"
		"ter you must visit http://order.kagi.com"
		"/?QEJ with your web browser.",
		/* [17] */
		"The file “<file name>” could not be open"
		"ed because an error (Type <error type>) "
		"occurred. "
	}
};

resource 'STR#' (130, "Prompts", purgeable) {
	{	/* array StringArray: 13 elements */
		/* [1] */
		"Do you want to save changes to the <app "
		"name> document “<file name>” before clos"
		"ing it?",
		/* [2] */
		"Select the file or folder whose icon you"
		" want to edit.",
		/* [3] */
		"Select a name and location for the icon "
		"to be saved in.",
		/* [4] */
		"Select the file or folder whose icon you"
		" want to replace.",
		/* [5] */
		"Save Into File",
		/* [6] */
		"Open Icon",
		/* [7] */
		"You have used <app name> to create <no o"
		"f icons> icons. If you continue to use i"
		"t, please pay the $15 shareware fee. Thi"
		"s can be done online, or by using the en"
		"closed Register application.",
		/* [8] */
		"Select the Windows icon (.ico file) you "
		"want to edit.",
		/* [9] */
		"Select the Mac OS X Server icon (.tiff f"
		"ile) you want to edit.",
		/* [10] */
		"An icon with the ID <ID> already exists "
		"in the file “<file name>.” Do you wish t"
		"o replace it?",
		/* [11] */
		"Do you want to revert to the previously "
		"saved version of the <app name> document"
		" “<file name>”?",
		/* [12] */
		"<app name> can be registered online or t"
		"hrough mail with various payment methods"
		". Please select the way in which you wou"
		"ld like to order your <app name> registr"
		"ation code.",
		/* [13] */
		"Welcome to <app name> 2.0. If this is yo"
		"ur first time using it, and you would li"
		"ke to get more information on its operat"
		"ion, extensive documentation is availabl"
		"e. Would you like to open the documentat"
		"ion or get started right away?"
	}
};

resource 'STR#' (150, "App Balloon Help", purgeable) {
	{	/* array StringArray: 1 elements */
		/* [1] */
		"Iconographer\n\nUse this application to ed"
		"it the icons of files and folders. Drag "
		"an item onto the application in order to"
		" edit its icon."
	}
};

resource 'STR#' (151, "Apple Menu Balloon Help", purgeable) {
	{	/* array StringArray: 4 elements */
		/* [1] */
		"Displays information about this version "
		"of Iconographer.",
		/* [2] */
		"Displays information about this version "
		"of Iconographer.\n\nNot available because "
		"the about box cannot be shown at this ti"
		"me.",
		/* [3] */
		"Allows you to register Iconographer, thu"
		"s removing the shareware reminder.",
		/* [4] */
		"Allows you to register Iconographer, thu"
		"s removing the shareware reminder.\n\nNot "
		"available because the registration dialo"
		"g cannot be shown at this time."
	}
};

resource 'STR#' (152, "File Balloon Help", purgeable) {
	{	/* array StringArray: 18 elements */
		/* [1] */
		"File Menu\n\nUse this menu to perform oper"
		"ations with files and folders.",
		/* [2] */
		"File Menu\n\nUse this menu to perform oper"
		"ations with files and folders.\n\nNot avai"
		"lable because file operations cannot be "
		"performed at the moment.",
		/* [3] */
		"Creates a new editor window with an empt"
		"y icon.",
		/* [4] */
		"Creates a new editor window with an empt"
		"y icon.\n\nNot available because no more e"
		"ditors can be created.",
		/* [5] */
		"Opens an item’s icon into a new editor w"
		"indow. Different icon formats (Mac OS, W"
		"indows, Mac OS X Server) can be chosen.",
		/* [6] */
		"Opens an item’s icon into a new editor w"
		"indow. Different icon formats (Mac OS, W"
		"indows, Mac OS X Server) can be chosen.\n"
		"\nNot available because no more icons can"
		" be opened.",
		/* [7] */
		"Closes the front-most icon.",
		/* [8] */
		"Closes the front-most icon.\n\nNot availab"
		"le because no icons are opened.",
		/* [9] */
		"Saves the front-most icon.",
		/* [10] */
		"Saves the front-most icon.\n\nNot availabl"
		"e because there are no open icons, or be"
		"cause the front-most icon doesn’t need t"
		"o be saved.",
		/* [11] */
		"Saves the front-most icon in a different"
		" file.",
		/* [12] */
		"Saves the front-most icon in a different"
		" file.\n\nNot available because there are "
		"no open icons.",
		/* [13] */
		"Inserts the front-most icon into a diffe"
		"rent file (without replacing the file’s "
		"contents).",
		/* [14] */
		"Inserts the front-most icon into a diffe"
		"rent file (without replacing the file’s "
		"contents).\n\nNot available because there "
		"are no open icons.",
		/* [15] */
		"Restore the front-most icon to the last "
		"saved version.",
		/* [16] */
		"Restore the front-most icon to the last "
		"saved version.\n\nNot available because th"
		"ere are no open icons or because the fro"
		"nt-most icon has not been saved yet.",
		/* [17] */
		"Exits Iconographer, first asking if any "
		"unsaved changes should be saved.",
		/* [18] */
		"Exits Iconographer, first asking if any "
		"unsaved changes should be saved.\n\nNot av"
		"ailable because Iconographer cannot be e"
		"xited at this time."
	}
};

resource 'STR#' (153, "Edit Balloon Help", purgeable) {
	{	/* array StringArray: 22 elements */
		/* [1] */
		"Edit Menu\n\nUse this menu to undo and red"
		"o actions, to cut and paste or to set th"
		"e Iconographer preferences.",
		/* [2] */
		"Edit Menu\n\nUse this menu to undo and red"
		"o actions, to cut and paste or to set th"
		"e Iconographer preferences.\n\nNot availab"
		"le because the front-most window does no"
		"t support these operations.",
		/* [3] */
		"Reverses the effects of the previous act"
		"ion.",
		/* [4] */
		"Reverses the effects of the previous act"
		"ion.\n\nNot available because all of the a"
		"ctions have been undone, or because the "
		"last action cannot be undone.",
		/* [5] */
		"Reapplies the effects of the action that"
		" was just un-done.",
		/* [6] */
		"Reapplies the effects of the action that"
		" was just un-done.\n\nNot available becaus"
		"e no action was undone.",
		/* [7] */
		"Deletes the current selection and places"
		" its contents in the clipboard.",
		/* [8] */
		"Deletes the current selection and places"
		" its contents in the clipboard.\n\nNot ava"
		"ilable because there is no selection or "
		"there are no open editors.",
		/* [9] */
		"Places the contents of the current selec"
		"tion in the clipboard.",
		/* [10] */
		"Places the contents of the current selec"
		"tion in the clipboard.\n\nNot available be"
		"cause there is no selection or there are"
		" no open editors.",
		/* [11] */
		"Inserts the contents of the clipboard in"
		"to the current editor.",
		/* [12] */
		"Inserts the contents of the clipboard in"
		"to the current editor.\n\nNot available be"
		"cause the clipboard is does not contain "
		"any image data, or because there are no "
		"open editors.",
		/* [13] */
		"Deletes the contents of the current sele"
		"ction.",
		/* [14] */
		"Deletes the contents of the current sele"
		"ction.\n\nNot available because there is n"
		"o selection or there are no open editors"
		".",
		/* [15] */
		"Performs various selection operations.",
		/* [16] */
		"Performs various selection operations.\n\n"
		"Not available because there are no open "
		"icons.",
		/* [17] */
		"Performs various transformations on imag"
		"es.",
		/* [18] */
		"Performs various transformations on imag"
		"es.\n\nNot available because there are no "
		"open icons.",
		/* [19] */
		"Makes color adjustements to the icon.",
		/* [20] */
		"Makes color adjustements to the icon.\n\nN"
		"ot available because there are no open i"
		"cons.",
		/* [21] */
		"Opens a dialog box which allows you to c"
		"ustomize various aspects of Iconographer"
		"’s operation.",
		/* [22] */
		"Opens a dialog box which allows you to c"
		"ustomize various aspects of Iconographer"
		"’s operation.\n\nNot available because the"
		" preferences cannot be edited at this mo"
		"ment."
	}
};

resource 'STR#' (154, "Select Balloon Help", purgeable) {
	{	/* array StringArray: 8 elements */
		/* [1] */
		"Selects the entire icon.",
		/* [2] */
		"Selects the entire icon.\n\nNot available "
		"because a selection cannot be made at th"
		"is time.",
		/* [3] */
		"Selects colors similar to the ones found"
		" in the current selection.",
		/* [4] */
		"Selects colors similar to the ones found"
		" in the current selection.\n\nNot availabl"
		"e because there is no selection availabl"
		"e.",
		/* [5] */
		"Removes the current selection.",
		/* [6] */
		"Removes the current selection.\n\nNot avai"
		"lable because there is no selection avai"
		"lable.",
		/* [7] */
		"Selects what is not currently selected a"
		"nd vice-versa.",
		/* [8] */
		"Selects what is not currently selected a"
		"nd vice-versa.\n\nNot available because th"
		"ere is no selection available."
	}
};

resource 'STR#' (155, "Transform Balloon Help", purgeable) {
	{	/* array StringArray: 5 elements */
		/* [1] */
		"Rotates the current selection (or the en"
		"tire image if a selection is not availab"
		"le) 90 degrees in a clockwise direction.",
		/* [2] */
		"Rotates the current selection (or the en"
		"tire image if a selection is not availab"
		"le) 90 degrees in a counter-clockwise di"
		"rection.",
		/* [3] */
		"Mirrors the current selection (or the en"
		"tire image if a selection is not availab"
		"le) across the vertical axis.",
		/* [4] */
		"Mirrors the current selection (or the en"
		"tire image if a selection is not availab"
		"le) across the horizontal axis.",
		/* [5] */
		"Inverts (makes “negative”) the current s"
		"election (or the entire image if a selec"
		"tion is not available)."
	}
};

resource 'STR#' (156, "Paste Balloon Help", purgeable) {
	{	/* array StringArray: 6 elements */
		/* [1] */
		"Pastes the clipboard contents into a flo"
		"ated selection.",
		/* [2] */
		"Separates the clipboard contents as an i"
		"con and as mask, which will be merged wi"
		"th the current icon and mask contents.",
		/* [3] */
		"Pastes the clipboard contents scaled to "
		"the dimensions of the current selection.",
		/* [4] */
		"Pastes the clipboard contents scaled to "
		"the dimensions of the current selection."
		"\n\nNot available because no selection has"
		" been made.",
		/* [5] */
		"Pastes an entire icon family into the cu"
		"rrent open icon.",
		/* [6] */
		"Pastes an entire icon family into the cu"
		"rrent open icon.\n\nNot available because "
		"the clipboard does not contain an icon f"
		"amily."
	}
};

resource 'STR#' (157, "Copy Balloon Help", purgeable) {
	{	/* array StringArray: 6 elements */
		/* [1] */
		"Places the contents of the current selec"
		"tion in the clipboard.",
		/* [2] */
		"Places the contents of the current selec"
		"tion in the clipboard.\n\nNot available be"
		"cause there is no selection or there are"
		" no open editors.",
		/* [3] */
		"Places the contents of the current icon "
		"and mask into the clipboard.",
		/* [4] */
		"Places the contents of the current icon "
		"and mask into the clipboard.\n\nNot availa"
		"bles because there are no open icons.",
		/* [5] */
		"Places all of the depths and sizes of th"
		"e open icon into the clipboard.",
		/* [6] */
		"Places all of the depths and sizes of th"
		"e open icon into the clipboard.\n\nNot ava"
		"ilable because there are no open icons."
	}
};

resource 'STR#' (158, "Icon Balloon Help", purgeable) {
	{	/* array StringArray: 15 elements */
		/* [1] */
		"Icon Menu\n\nThis menu can be used to modi"
		"fy certain attributes of the front-most "
		"icon.",
		/* [2] */
		"Icon Menu\n\nThis menu can be used to modi"
		"fy certain attributes of the front-most "
		"icon.\n\nNot available because there are n"
		"o open editors.",
		/* [3] */
		"This command increases the magnification"
		" level of the front-most icon.",
		/* [4] */
		"This command increases the magnification"
		" level of the front-most icon.\n\nNot avai"
		"lable because the icon is at maximum mag"
		"nification, or because there are no open"
		" icons.",
		/* [5] */
		"This command decreases the magnification"
		" level of the front-most icon.",
		/* [6] */
		"This command decreases the magnification"
		" level of the front-most icon.\n\nNot avai"
		"lable because the icon is at minimum mag"
		"nification, or because there are no open"
		" icons.",
		/* [7] */
		"This command allows you to change the co"
		"lor palette used for the current icon.\n\n"
		"Not available because the current depth "
		"does not support different color depths,"
		" or because there are no open icons.",
		/* [8] */
		"Displays a dialog which allows you to in"
		"sert a new icon into the current file.",
		/* [9] */
		"Displays a dialog which allows you to in"
		"sert a new icon into the current file.\n\n"
		"Not available because no file is open (t"
		"he front-most window must be an icon bro"
		"wser).",
		/* [10] */
		"Displays a dialog which allows you to ch"
		"ange the ID, name and flags of the curre"
		"nt icon.",
		/* [11] */
		"Displays a dialog which allows you to ch"
		"ange the ID, name and flags of the curre"
		"nt icon.\n\nNot available because there ar"
		"e no open icons.",
		/* [12] */
		"Toggles the visibily of the pixel grid ("
		"thin white lines which separate one magn"
		"ified pixel from another).",
		/* [13] */
		"Toggles the visibily of the pixel grid ("
		"thin white lines which separate one magn"
		"ified pixel from another).\n\nNot availabl"
		"e because no icons are open.",
		/* [14] */
		"Opens the current icon into the external"
		" that has been selected in the preferenc"
		"es dialog.",
		/* [15] */
		"Opens the current icon into the external"
		" that has been selected in the preferenc"
		"es dialog.\n\nNot available because there "
		"are no icons open."
	}
};

resource 'STR#' (159, "Colors Balloon Help", purgeable) {
	{	/* array StringArray: 2 elements */
		/* [1] */
		"The standard colors used by the Macintos"
		"h. When the display is set to 16 colors,"
		" only these shades will be visible.",
		/* [2] */
		"The standard colors used by Windows. Whe"
		"n a PC display is set to 16 colors, only"
		" these shades will be visible."
	}
};

resource 'STR#' (160, "About Balloon Help", purgeable) {
	{	/* array StringArray: 3 elements */
		/* [1] */
		"Click here to e-mail the author (require"
		"s Internet Config).",
		/* [2] */
		"Click here to visit the Mscape Software "
		"homepage (requires Internet Config).",
		/* [3] */
		"If you’ve paid, thank your very much. If"
		" you haven’t, perhaps you should conside"
		"r it."
	}
};

resource 'STR#' (161, "Registration Balloon Help", purgeable) {
	{	/* array StringArray: 6 elements */
		/* [1] */
		"Click here to verify your registration c"
		"ode. If it is valid then Iconographer wi"
		"ll be registered.",
		/* [2] */
		"This button will abort the registration.",
		/* [3] */
		"Click here to open up the Register appli"
		"cation. You can then fill out the form, "
		"send it to Kagi and pay for Iconographer"
		", thus removing the shareware messsages.",
		/* [4] */
		"Your name should be entered here. Please"
		" make sure to type it in exactly as it a"
		"ppears in the registration e-mail, since"
		" the serial number is based on it.",
		/* [5] */
		"Optionally, your company name can be ent"
		"ered here.",
		/* [6] */
		"The registration number you received goe"
		"s here. "
	}
};

resource 'STR#' (162, "Windows Balloon Help", purgeable) {
	{	/* array StringArray: 6 elements */
		/* [1] */
		"Windows Menu\n\nThis menu can be used to s"
		"how and hide the palettes used by Iconog"
		"rapher, and to move among the icons open"
		".",
		/* [2] */
		"Windows Menu\n\nThis menu can be used to s"
		"how and hide the palettes used by Iconog"
		"rapher, and to move among the icons open"
		".\n\nNot available because windows cannot "
		"be manipulated at the moment.",
		/* [3] */
		"Toggles the visibility of the tools pale"
		"tte, a floating window which contains al"
		"l of the drawing tools that can be used "
		"to manipulate icons.",
		/* [4] */
		"Toggles the visibility of the members pa"
		"lette, a floating window which contains "
		"all of the members (parts at various siz"
		"es and depths) of the front-most icon.",
		/* [5] */
		"Toggles the visibility of the preview pa"
		"lette, a floating window which displays "
		"the front-most icon at various sizes aga"
		"inst varied backgrounds.",
		/* [6] */
		"Toggles the visibility of the colors pal"
		"ette, a floating window which contains v"
		"arious devices used to select colors."
	}
};

resource 'STR#' (200, "Basic Strings", purgeable) {
	{	/* array StringArray: 19 elements */
		/* [1] */
		"Untitled",
		/* [2] */
		"An icon with the ID <ID> already exists "
		"in this file. If you continue, the old i"
		"con will be overwritten when the current"
		" one is saved.",
		/* [3] */
		"Overwrite",
		/* [4] */
		"Cancel",
		/* [5] */
		"The <size> 8-bit and 1-bit masks do not "
		"seem to match. This can cause problems w"
		"hen viewing the icon in the Finder. Shou"
		"ld the <size> 1-bit mask be regenerated?",
		/* [6] */
		"Regenerate Mask",
		/* [7] */
		"Yes",
		/* [8] */
		"No",
		/* [9] */
		"The <size> size does not have a mask. Wi"
		"thout one the icon will not be displayed"
		" properly. Do you wish one to be created"
		" for you?",
		/* [10] */
		"Generate Mask",
		/* [11] */
		"Insert Icon…",
		/* [12] */
		"The file <file name> already has informa"
		"tion in its data fork. Saving an icon in"
		"to it will overwrite it. Do you wish to "
		"continue or to select another file to sa"
		"ve into?",
		/* [13] */
		"Choose Another File",
		/* [14] */
		"Click to choose a shortcut",
		/* [15] */
		"Click to choose an external editor",
		/* [16] */
		"Iconographer Support",
		/* [17] */
		"The folder “Iconographer Support” could "
		"not be found. It has been recreated, but"
		" certain features such as the help will "
		"not be available until Iconographer is r"
		"einstalled.",
		/* [18] */
		"An external edtor has not been selected."
		" Please choose one in the preferences di"
		"alog.",
		/* [19] */
		"Open Preferences"
	}
};

resource 'STR#' (201, "Labels", purgeable) {
	{	/* array StringArray: 8 elements */
		/* [1] */
		"Icon",
		/* [2] */
		"Mask",
		/* [3] */
		"Preview",
		/* [4] */
		"Pick a foreground color:",
		/* [5] */
		"Pick a background color:",
		/* [6] */
		" bytes",
		/* [7] */
		"Name: “<name>” ID: <ID>",
		/* [8] */
		"ID: <ID>"
	}
};

resource 'STR#' (203, "Editor Balloon Help", purgeable) {
	{	/* array StringArray: 2 elements */
		/* [1] */
		"This main editing area.\n\nThe current ico"
		"n is displayed at a magnified size here.",
		/* [2] */
		"The magnification level is displayed her"
		"e.\n\nTo change it, you either use the Zoo"
		"m In and Zoom Out commands from the View"
		" menu, or the pop-up menu that apears wh"
		"en you click"
	}
};

resource 'STR#' (204, "Icon Info Balloon Help", purgeable) {
	{	/* array StringArray: 13 elements */
		/* [1] */
		"Sets the selected attributes and closes "
		"this dialog.",
		/* [2] */
		"Closes this dialog without making any ch"
		"anges.",
		/* [3] */
		"Each icon within a file must have an uni"
		"que ID.",
		/* [4] */
		"This is the size of the final icon resou"
		"rce.",
		/* [5] */
		"Names are optional, but they can help yo"
		"u identify icon resources quickly.",
		/* [6] */
		"If an icon is purgeable, it will be unlo"
		"aded from memory is space is short.",
		/* [7] */
		"If an icon is preloaded, it will be load"
		"ed automatically once a file is opened.",
		/* [8] */
		"If an icon is locked, then it cannot be "
		"moved while loaded in memory.",
		/* [9] */
		"If an icon is protected, then it cannot "
		"be modified.",
		/* [10] */
		"If an icon is part of the system heap, t"
		"hen it will be placed in the area of mem"
		"ory that is used by the system.",
		/* [11] */
		"This pop-up menu can be used to select c"
		"ommonly used icon IDs.",
		/* [12] */
		"This pop-up menu can be used to select v"
		"arious icon formats. Note that some of t"
		"hem do not support all options (e.g. Win"
		"dows does not allow 8-bit masks).",
		/* [13] */
		"These checkboxes are used to select the "
		"possible members that the icon can have."
		" Only the checked members will appear in"
		" the members palette. Some checkboxes ma"
		"ybe be disabled if the current format do"
		"es not support them."
	}
};

resource 'STR#' (250, "Colors Palette: Balloon Help", purgeable) {
	{	/* array StringArray: 4 elements */
		/* [1] */
		"The current foreground and background co"
		"lors are displayed here. The color with "
		"the focus around it is the one being cur"
		"rently modified. Click on the other to s"
		"elect that for modification",
		/* [2] */
		"These tabs can be used to toggle among t"
		"he various color pickers that are availa"
		"ble: Red/Green/Blue sliders, Hue/Saturat"
		"ion/Value sliders, the System palette an"
		"d a set of slots for your Favorite color"
		"s.",
		/* [3] */
		"The current position of the cursor (in r"
		"elation to the drawing) is displayed her"
		"e.",
		/* [4] */
		"The colors in the drawing underneath the"
		" cursor are displayed here."
	}
};

resource 'STR#' (260, "Colors Palette: RGB Picker: Balloon Help", purgeable) {
	{	/* array StringArray: 6 elements */
		/* [1] */
		"Red slider: controls the intensity of th"
		"e color red in the current mixture.",
		/* [2] */
		"Red preview: displays the effects of set"
		"ting the red slider at various points al"
		"ong the track.",
		/* [3] */
		"Green slider: controls the intensity of "
		"the color green in the current mixture.",
		/* [4] */
		"Green preview: displays the effects of s"
		"etting the green slider at various point"
		"s along the track.",
		/* [5] */
		"Blue slider: controls the intensity of t"
		"he color blue in the current mixture.",
		/* [6] */
		"Blue preview: displays the effects of se"
		"tting the blue slider at various points "
		"along the track."
	}
};

resource 'STR#' (270, "Colors Palette: HSV Picker: Balloon Help", purgeable) {
	{	/* array StringArray: 6 elements */
		/* [1] */
		"Hue slider: controls the current hue of "
		"the color. The hue is the overall tint a"
		"nd color.\n\nIf disabled, you must first i"
		"ncrease the value and then the saturatio"
		"n in order to be able to have colors.",
		/* [2] */
		"Hue preview: displays the effects of set"
		"ting the hue slider at various points al"
		"ong the track.",
		/* [3] */
		"Saturation slider: controls the saturati"
		"on of the color. Saturation is the “puri"
		"ty” of the color, at its lowest it yield"
		"s a gray, at its maximum the current hue"
		" at maximum.\n\nIf disabled, you must firs"
		"t increase the value.",
		/* [4] */
		"Saturation preview: displays the effects"
		" of setting the saturation slider at var"
		"ious points along the track.",
		/* [5] */
		"Value slider: controls the intensity of "
		"the current hue in the current color. Th"
		"e value is the intensity in a color.",
		/* [6] */
		"Value preview: displays the effects of s"
		"etting the value slider at various point"
		"s along the track."
	}
};

resource 'STR#' (280, "Colors Palette: System Picker: Balloon Help", purgeable) {
	{	/* array StringArray: 1 elements */
		/* [1] */
		"The system palette depth is displayed he"
		"re. Click on a square to set its content"
		"s as your foreground/background color."
	}
};

resource 'STR#' (290, "Colors Palette: Favorites Picker: Baloon Help", purgeable) {
	{	/* array StringArray: 1 elements */
		/* [1] */
		"You can store your favorite colors here."
		" Simply click on an empty square to fill"
		" it with the current color. Clicking on "
		"it in the future will “pick-up” that col"
		"or. You can command-click to remove a co"
		"lor."
	}
};

resource 'STR#' (300, "Icon Browser: Strings", purgeable) {
	{	/* array StringArray: 12 elements */
		/* [1] */
		"Loading Icon: <ID>",
		/* [2] */
		"Loading Icon: <ID> “<name>”",
		/* [3] */
		"<B>ID:</B> ",
		/* [4] */
		"<B>Name:</B> ",
		/* [5] */
		"<B>Type:</B> ",
		/* [6] */
		"New",
		/* [7] */
		"Old",
		/* [8] */
		"<B>Members:</B> ",
		/* [9] */
		"Icon Types: <types>",
		/* [10] */
		"<number>/<total> icons",
		/* [11] */
		"Are you sure you want to delete the icon"
		" ID: <icon ID> from the file “<file name"
		">”?",
		/* [12] */
		"<name> (Icon Browser)"
	}
};

resource 'STR#' (400, "Members Palette Balloon Help", purgeable) {
	{	/* array StringArray: 2 elements */
		/* [1] */
		"Icon Info\n\nClick this button to set an i"
		"con’s attributes (ID, name, members, and"
		" flags).",
		/* [2] */
		"Add Member\n\nClick here to create an addi"
		"tional member (icon part) with a specifi"
		"c size and depth."
	}
};

resource 'STR#' (401, "Members Palette Names", purgeable) {
	{	/* array StringArray: 2 elements */
		/* [1] */
		"Info",
		/* [2] */
		"Add Member"
	}
};

resource 'STR#' (500, "Tool Palette Balloon Help", purgeable) {
	{	/* array StringArray: 3 elements */
		/* [1] */
		"Preview Size\n\nThe slider and text field "
		"can be used to change the size of the pr"
		"eview. Possible selections include anyth"
		"ing between 128 and 64 (the icon will be"
		" scaled smoothly), 48, 32, 16 and 12.",
		/* [2] */
		"Preview Area\n\nThe current icon member an"
		"d mask are displayed here at the selecte"
		"d size.",
		/* [3] */
		"Preview Settings\n\nThis menu can be used "
		"to select the state of the preview icon "
		"(normal or selected) and the background "
		"(desktop, list view, white or black)."
	}
};

resource 'STR#' (600, "Tool Balloon Help", purgeable) {
	{	/* array StringArray: 23 elements */
		/* [1] */
		"Rectangular Marquee Tool (M)",
		/* [2] */
		"Move Tool (V)",
		/* [3] */
		"Lasso Tool (L)",
		/* [4] */
		"Magic Wand Tool (W)",
		/* [5] */
		"Pencil Tool (N)",
		/* [6] */
		"Eye Dropper Tool (I)",
		/* [7] */
		"Paint Bucket Tool (K)",
		/* [8] */
		"Eraser Tool (E)",
		/* [9] */
		"Rectangle Tool (R)",
		/* [10] */
		"Oval Tool (O)",
		/* [11] */
		"Line Tool (Y)",
		/* [12] */
		"Polygon Tool (P)",
		/* [13] */
		"Gradient Tool (G)",
		/* [14] */
		"Text Tool (T)",
		/* [15] */
		"Pan Tool (H)",
		/* [16] */
		"Zoom Tool (Z)",
		/* [17] */
		"Line Thickness\n\nClick to select the thic"
		"kness of the lines drawn.",
		/* [18] */
		"Aliasing\n\nClick to select between aliase"
		"d (jagged) and anti-aliased (smooth) lin"
		"es.",
		/* [19] */
		"Fill\n\nClick to toggle between unfilled a"
		"nd filled shapes.",
		/* [20] */
		"Pattern\n\nThe current color pattern is di"
		"splayed here. Click on the swatch to cha"
		"nge it.",
		/* [21] */
		"Color Swatch\n\nThe current foreground and"
		" background colors are displayed here. C"
		"lick on the color swatches to change the"
		"m.",
		/* [22] */
		"Swap Colors (X)",
		/* [23] */
		"Default Colors (D)"
	}
};

resource 'STR#' (3000, "Key Names", purgeable) {
	{	/* array StringArray: 128 elements */
		/* [1] */
		"A",
		/* [2] */
		"S",
		/* [3] */
		"D",
		/* [4] */
		"F",
		/* [5] */
		"H",
		/* [6] */
		"G",
		/* [7] */
		"Z",
		/* [8] */
		"X",
		/* [9] */
		"C",
		/* [10] */
		"V",
		/* [11] */
		"0x0A",
		/* [12] */
		"B",
		/* [13] */
		"Q",
		/* [14] */
		"W",
		/* [15] */
		"E",
		/* [16] */
		"R",
		/* [17] */
		"Y",
		/* [18] */
		"T",
		/* [19] */
		"1",
		/* [20] */
		"2",
		/* [21] */
		"3",
		/* [22] */
		"4",
		/* [23] */
		"6",
		/* [24] */
		"5",
		/* [25] */
		"=",
		/* [26] */
		"9",
		/* [27] */
		"7",
		/* [28] */
		"-",
		/* [29] */
		"8",
		/* [30] */
		"0",
		/* [31] */
		"]",
		/* [32] */
		"O",
		/* [33] */
		"U",
		/* [34] */
		"[",
		/* [35] */
		"I",
		/* [36] */
		"P",
		/* [37] */
		"Return",
		/* [38] */
		"L",
		/* [39] */
		"J",
		/* [40] */
		"'",
		/* [41] */
		"K",
		/* [42] */
		";",
		/* [43] */
		"\\",
		/* [44] */
		",",
		/* [45] */
		"/",
		/* [46] */
		"N",
		/* [47] */
		"M",
		/* [48] */
		".",
		/* [49] */
		"Tab",
		/* [50] */
		"Space",
		/* [51] */
		"`",
		/* [52] */
		"Delete",
		/* [53] */
		"0x34",
		/* [54] */
		"Escape",
		/* [55] */
		"0x35",
		/* [56] */
		"Command",
		/* [57] */
		"Shift",
		/* [58] */
		"Caps Lock",
		/* [59] */
		"Option",
		/* [60] */
		"Control",
		/* [61] */
		"0x3C",
		/* [62] */
		"0x3D",
		/* [63] */
		"0x3E",
		/* [64] */
		"0x3F",
		/* [65] */
		"0x40",
		/* [66] */
		"Keypad .",
		/* [67] */
		"0x42",
		/* [68] */
		"Keypad *",
		/* [69] */
		"0x44",
		/* [70] */
		"Keypad +",
		/* [71] */
		"0x46",
		/* [72] */
		"Clear",
		/* [73] */
		"0x48",
		/* [74] */
		"0x49",
		/* [75] */
		"0x4A",
		/* [76] */
		"Keypad /",
		/* [77] */
		"Enter",
		/* [78] */
		"0x4D",
		/* [79] */
		"Keypad -",
		/* [80] */
		"0x4F",
		/* [81] */
		"0x50",
		/* [82] */
		"Keypad =",
		/* [83] */
		"Keypad 0",
		/* [84] */
		"Keypad 1",
		/* [85] */
		"Keypad 2",
		/* [86] */
		"Keypad 3",
		/* [87] */
		"Keypad 4",
		/* [88] */
		"Keypad 5",
		/* [89] */
		"Keypad 6",
		/* [90] */
		"Keypad 7",
		/* [91] */
		"0x5A",
		/* [92] */
		"Keypad 8",
		/* [93] */
		"Keypad 9",
		/* [94] */
		"0x5D",
		/* [95] */
		"0x5E",
		/* [96] */
		"0x5F",
		/* [97] */
		"F5",
		/* [98] */
		"F6",
		/* [99] */
		"F7",
		/* [100] */
		"F3",
		/* [101] */
		"F8",
		/* [102] */
		"F9",
		/* [103] */
		"0x66",
		/* [104] */
		"F11",
		/* [105] */
		"0x68",
		/* [106] */
		"F13",
		/* [107] */
		"0x6A",
		/* [108] */
		"F14",
		/* [109] */
		"0x6C",
		/* [110] */
		"F10",
		/* [111] */
		"0x6E",
		/* [112] */
		"F12",
		/* [113] */
		"0x70",
		/* [114] */
		"F15",
		/* [115] */
		"Help",
		/* [116] */
		"Home",
		/* [117] */
		"Page Up",
		/* [118] */
		"Forw. Del.",
		/* [119] */
		"F4",
		/* [120] */
		"End",
		/* [121] */
		"F2",
		/* [122] */
		"Page Down",
		/* [123] */
		"F1",
		/* [124] */
		"Left Arrow",
		/* [125] */
		"Right Arrow",
		/* [126] */
		"Down Arrow",
		/* [127] */
		"Up Arrow",
		/* [128] */
		"Power"
	}
};

resource 'STR#' (3001, "Select Object Strings") {
	{	/* array StringArray: 2 elements */
		/* [1] */
		"Select \"<file name>\"",
		/* [2] */
		"Select Desktop"
	}
};

resource 'STR#' (4000, "Format Names", purgeable) {
	{	/* array StringArray: 1 elements */
		/* [1] */
		"All Formats"
	}
};

resource 'STR#' (4001, "Icon Part Names", purgeable) {
	{	/* array StringArray: 24 elements */
		/* [1] */
		"Thumbnail 32-bit Icon",
		/* [2] */
		"Thumbnail 8-bit Mask",
		/* [3] */
		"Huge 32-bit Icon",
		/* [4] */
		"Huge 8-bit Icon",
		/* [5] */
		"Huge 4-bit Icon",
		/* [6] */
		"Huge 1-bit Icon",
		/* [7] */
		"Huge 8-bit Mask",
		/* [8] */
		"Huge 1-bit Mask",
		/* [9] */
		"Large 32-bit Icon",
		/* [10] */
		"Large 8-bit Icon",
		/* [11] */
		"Large 4-bit Icon",
		/* [12] */
		"Large 1-bit Icon",
		/* [13] */
		"Large 8-bit Mask",
		/* [14] */
		"Large 1-bit Mask",
		/* [15] */
		"Small 32-bit Icon",
		/* [16] */
		"Small 8-bit Icon",
		/* [17] */
		"Small 4-bit Icon",
		/* [18] */
		"Small 1-bit Icon",
		/* [19] */
		"Small 8-bit Mask",
		/* [20] */
		"Small 1-bit Mask",
		/* [21] */
		"Mini 8-bit Icon",
		/* [22] */
		"Mini 4-bit Icon",
		/* [23] */
		"Mini 1-bit Icon",
		/* [24] */
		"Mini 1-bit Mask"
	}
};

resource 'STR#' (4002, "Misc. Icon Strings", purgeable) {
	{	/* array StringArray: 2 elements */
		/* [1] */
		"<I>None</I>",
		/* [2] */
		"<I>Item’s Finder Icon</I>"
	}
};

resource 'STR#' (5000, "MHTMLHelp Strings", purgeable) {
	{	/* array StringArray: 2 elements */
		/* [1] */
		"Helper Preferences",
		/* [2] */
		"Select a web browser to open the help fi"
		"le with."
	}
};

resource 'WIND' (200, purgeable) {
	{50, 10, 258, 204},
	1031,
	invisible,
	goAway,
	0x0,
	"",
	noAutoCenter
};

resource 'WIND' (250, "Colors Palette", purgeable) {
	{244, 408, 404, 728},
	1057,
	invisible,
	goAway,
	0x0,
	"Colors",
	noAutoCenter
};

resource 'WIND' (300, purgeable) {
	{229, 200, 485, 540},
	1025,
	invisible,
	goAway,
	0x0,
	"<name> (Icon Browser)",
	staggerMainScreen
};

resource 'WIND' (400, "Members Palette", purgeable) {
	{226, 867, 760, 1017},
	1059,
	invisible,
	goAway,
	0x0,
	"Icon Members",
	noAutoCenter
};

resource 'WIND' (500, "Preview Palette", purgeable) {
	{39, 867, 229, 1017},
	1057,
	invisible,
	goAway,
	0x0,
	"Preview",
	noAutoCenter
};

resource 'WIND' (600, "Tool Palette", purgeable) {
	{40, 10, 293, 61},
	1057,
	invisible,
	goAway,
	0x0,
	"Tools",
	noAutoCenter
};

resource 'cctb' (200) {
	{	/* array ColorSpec: 4 elements */
		/* [1] */
		cFrameColor, 0, 0, 0,
		/* [2] */
		cBodyColor, 65535, 65535, 65535,
		/* [3] */
		cTextColor, 0, 0, 0,
		/* [4] */
		cElevatorColor, 65535, 65535, 65535
	}
};

resource 'cctb' (201) {
	{	/* array ColorSpec: 4 elements */
		/* [1] */
		cFrameColor, 0, 0, 0,
		/* [2] */
		cBodyColor, 65535, 65535, 65535,
		/* [3] */
		cTextColor, 0, 0, 0,
		/* [4] */
		cElevatorColor, 65535, 65535, 65535
	}
};

resource 'cctb' (202) {
	{	/* array ColorSpec: 4 elements */
		/* [1] */
		cFrameColor, 0, 0, 0,
		/* [2] */
		cBodyColor, 65535, 65535, 65535,
		/* [3] */
		cTextColor, 0, 0, 0,
		/* [4] */
		cElevatorColor, 65535, 65535, 65535
	}
};

resource 'cctb' (203) {
	{	/* array ColorSpec: 4 elements */
		/* [1] */
		cFrameColor, 0, 0, 0,
		/* [2] */
		cBodyColor, 65535, 65535, 65535,
		/* [3] */
		cTextColor, 0, 0, 0,
		/* [4] */
		cElevatorColor, 65535, 65535, 65535
	}
};

resource 'cctb' (250) {
	{	/* array ColorSpec: 4 elements */
		/* [1] */
		cFrameColor, 0, 0, 0,
		/* [2] */
		cBodyColor, 65535, 65535, 65535,
		/* [3] */
		cTextColor, 0, 0, 0,
		/* [4] */
		cElevatorColor, 65535, 65535, 65535
	}
};

resource 'cctb' (260) {
	{	/* array ColorSpec: 4 elements */
		/* [1] */
		cFrameColor, 0, 0, 0,
		/* [2] */
		cBodyColor, 65535, 65535, 65535,
		/* [3] */
		cTextColor, 0, 0, 0,
		/* [4] */
		cElevatorColor, 65535, 65535, 65535
	}
};

resource 'cctb' (270) {
	{	/* array ColorSpec: 4 elements */
		/* [1] */
		cFrameColor, 0, 0, 0,
		/* [2] */
		cBodyColor, 65535, 65535, 65535,
		/* [3] */
		cTextColor, 0, 0, 0,
		/* [4] */
		cElevatorColor, 65535, 65535, 65535
	}
};

resource 'cctb' (280) {
	{	/* array ColorSpec: 4 elements */
		/* [1] */
		cFrameColor, 0, 0, 0,
		/* [2] */
		cBodyColor, 65535, 65535, 65535,
		/* [3] */
		cTextColor, 0, 0, 0,
		/* [4] */
		cElevatorColor, 65535, 65535, 65535
	}
};

resource 'cctb' (290) {
	{	/* array ColorSpec: 4 elements */
		/* [1] */
		cFrameColor, 0, 0, 0,
		/* [2] */
		cBodyColor, 65535, 65535, 65535,
		/* [3] */
		cTextColor, 0, 0, 0,
		/* [4] */
		cElevatorColor, 65535, 65535, 65535
	}
};

resource 'cctb' (300) {
	{	/* array ColorSpec: 4 elements */
		/* [1] */
		cFrameColor, 0, 0, 0,
		/* [2] */
		cBodyColor, 65535, 65535, 65535,
		/* [3] */
		cTextColor, 0, 0, 0,
		/* [4] */
		cElevatorColor, 65535, 65535, 65535
	}
};

resource 'cctb' (301) {
	{	/* array ColorSpec: 4 elements */
		/* [1] */
		cFrameColor, 0, 0, 0,
		/* [2] */
		cBodyColor, 65535, 65535, 65535,
		/* [3] */
		cTextColor, 0, 0, 0,
		/* [4] */
		cElevatorColor, 65535, 65535, 65535
	}
};

resource 'cctb' (400) {
	{	/* array ColorSpec: 4 elements */
		/* [1] */
		cFrameColor, 0, 0, 0,
		/* [2] */
		cBodyColor, 65535, 65535, 65535,
		/* [3] */
		cTextColor, 0, 0, 0,
		/* [4] */
		cElevatorColor, 65535, 65535, 65535
	}
};

resource 'cctb' (401) {
	{	/* array ColorSpec: 4 elements */
		/* [1] */
		cFrameColor, 0, 0, 0,
		/* [2] */
		cBodyColor, 65535, 65535, 65535,
		/* [3] */
		cTextColor, 0, 0, 0,
		/* [4] */
		cElevatorColor, 65535, 65535, 65535
	}
};

resource 'cctb' (402) {
	{	/* array ColorSpec: 4 elements */
		/* [1] */
		cFrameColor, 0, 0, 0,
		/* [2] */
		cBodyColor, 65535, 65535, 65535,
		/* [3] */
		cTextColor, 0, 0, 0,
		/* [4] */
		cElevatorColor, 65535, 65535, 65535
	}
};

resource 'cctb' (403) {
	{	/* array ColorSpec: 4 elements */
		/* [1] */
		cFrameColor, 0, 0, 0,
		/* [2] */
		cBodyColor, 65535, 65535, 65535,
		/* [3] */
		cTextColor, 0, 0, 0,
		/* [4] */
		cElevatorColor, 65535, 65535, 65535
	}
};

resource 'cctb' (404) {
	{	/* array ColorSpec: 4 elements */
		/* [1] */
		cFrameColor, 0, 0, 0,
		/* [2] */
		cBodyColor, 65535, 65535, 65535,
		/* [3] */
		cTextColor, 0, 0, 0,
		/* [4] */
		cElevatorColor, 65535, 65535, 65535
	}
};

resource 'cctb' (405) {
	{	/* array ColorSpec: 4 elements */
		/* [1] */
		cFrameColor, 0, 0, 0,
		/* [2] */
		cBodyColor, 65535, 65535, 65535,
		/* [3] */
		cTextColor, 0, 0, 0,
		/* [4] */
		cElevatorColor, 65535, 65535, 65535
	}
};

resource 'cctb' (502) {
	{	/* array ColorSpec: 4 elements */
		/* [1] */
		cFrameColor, 0, 0, 0,
		/* [2] */
		cBodyColor, 65535, 65535, 65535,
		/* [3] */
		cTextColor, 0, 0, 0,
		/* [4] */
		cElevatorColor, 65535, 65535, 65535
	}
};

resource 'cctb' (504) {
	{	/* array ColorSpec: 4 elements */
		/* [1] */
		cFrameColor, 0, 0, 0,
		/* [2] */
		cBodyColor, 65535, 65535, 65535,
		/* [3] */
		cTextColor, 0, 0, 0,
		/* [4] */
		cElevatorColor, 65535, 65535, 65535
	}
};

resource 'cctb' (600) {
	{	/* array ColorSpec: 4 elements */
		/* [1] */
		cFrameColor, 0, 0, 0,
		/* [2] */
		cBodyColor, 65535, 65535, 65535,
		/* [3] */
		cTextColor, 0, 0, 0,
		/* [4] */
		cElevatorColor, 65535, 65535, 65535
	}
};

resource 'cctb' (601) {
	{	/* array ColorSpec: 4 elements */
		/* [1] */
		cFrameColor, 0, 0, 0,
		/* [2] */
		cBodyColor, 65535, 65535, 65535,
		/* [3] */
		cTextColor, 0, 0, 0,
		/* [4] */
		cElevatorColor, 65535, 65535, 65535
	}
};

resource 'cctb' (602) {
	{	/* array ColorSpec: 4 elements */
		/* [1] */
		cFrameColor, 0, 0, 0,
		/* [2] */
		cBodyColor, 65535, 65535, 65535,
		/* [3] */
		cTextColor, 0, 0, 0,
		/* [4] */
		cElevatorColor, 65535, 65535, 65535
	}
};

resource 'cctb' (603) {
	{	/* array ColorSpec: 4 elements */
		/* [1] */
		cFrameColor, 0, 0, 0,
		/* [2] */
		cBodyColor, 65535, 65535, 65535,
		/* [3] */
		cTextColor, 0, 0, 0,
		/* [4] */
		cElevatorColor, 65535, 65535, 65535
	}
};

resource 'cctb' (604) {
	{	/* array ColorSpec: 4 elements */
		/* [1] */
		cFrameColor, 0, 0, 0,
		/* [2] */
		cBodyColor, 65535, 65535, 65535,
		/* [3] */
		cTextColor, 0, 0, 0,
		/* [4] */
		cElevatorColor, 65535, 65535, 65535
	}
};

resource 'cctb' (605) {
	{	/* array ColorSpec: 4 elements */
		/* [1] */
		cFrameColor, 0, 0, 0,
		/* [2] */
		cBodyColor, 65535, 65535, 65535,
		/* [3] */
		cTextColor, 0, 0, 0,
		/* [4] */
		cElevatorColor, 65535, 65535, 65535
	}
};

resource 'cctb' (606) {
	{	/* array ColorSpec: 4 elements */
		/* [1] */
		cFrameColor, 0, 0, 0,
		/* [2] */
		cBodyColor, 65535, 65535, 65535,
		/* [3] */
		cTextColor, 0, 0, 0,
		/* [4] */
		cElevatorColor, 65535, 65535, 65535
	}
};

resource 'cctb' (607) {
	{	/* array ColorSpec: 4 elements */
		/* [1] */
		cFrameColor, 0, 0, 0,
		/* [2] */
		cBodyColor, 65535, 65535, 65535,
		/* [3] */
		cTextColor, 0, 0, 0,
		/* [4] */
		cElevatorColor, 65535, 65535, 65535
	}
};

resource 'cctb' (608) {
	{	/* array ColorSpec: 4 elements */
		/* [1] */
		cFrameColor, 0, 0, 0,
		/* [2] */
		cBodyColor, 65535, 65535, 65535,
		/* [3] */
		cTextColor, 0, 0, 0,
		/* [4] */
		cElevatorColor, 65535, 65535, 65535
	}
};

resource 'cctb' (609) {
	{	/* array ColorSpec: 4 elements */
		/* [1] */
		cFrameColor, 0, 0, 0,
		/* [2] */
		cBodyColor, 65535, 65535, 65535,
		/* [3] */
		cTextColor, 0, 0, 0,
		/* [4] */
		cElevatorColor, 65535, 65535, 65535
	}
};

resource 'cctb' (610) {
	{	/* array ColorSpec: 4 elements */
		/* [1] */
		cFrameColor, 0, 0, 0,
		/* [2] */
		cBodyColor, 65535, 65535, 65535,
		/* [3] */
		cTextColor, 0, 0, 0,
		/* [4] */
		cElevatorColor, 65535, 65535, 65535
	}
};

resource 'cctb' (611) {
	{	/* array ColorSpec: 4 elements */
		/* [1] */
		cFrameColor, 0, 0, 0,
		/* [2] */
		cBodyColor, 65535, 65535, 65535,
		/* [3] */
		cTextColor, 0, 0, 0,
		/* [4] */
		cElevatorColor, 65535, 65535, 65535
	}
};

resource 'cctb' (612) {
	{	/* array ColorSpec: 4 elements */
		/* [1] */
		cFrameColor, 0, 0, 0,
		/* [2] */
		cBodyColor, 65535, 65535, 65535,
		/* [3] */
		cTextColor, 0, 0, 0,
		/* [4] */
		cElevatorColor, 65535, 65535, 65535
	}
};

resource 'cctb' (613) {
	{	/* array ColorSpec: 4 elements */
		/* [1] */
		cFrameColor, 0, 0, 0,
		/* [2] */
		cBodyColor, 65535, 65535, 65535,
		/* [3] */
		cTextColor, 0, 0, 0,
		/* [4] */
		cElevatorColor, 65535, 65535, 65535
	}
};

resource 'cctb' (614) {
	{	/* array ColorSpec: 4 elements */
		/* [1] */
		cFrameColor, 0, 0, 0,
		/* [2] */
		cBodyColor, 65535, 65535, 65535,
		/* [3] */
		cTextColor, 0, 0, 0,
		/* [4] */
		cElevatorColor, 65535, 65535, 65535
	}
};

resource 'cctb' (615) {
	{	/* array ColorSpec: 4 elements */
		/* [1] */
		cFrameColor, 0, 0, 0,
		/* [2] */
		cBodyColor, 65535, 65535, 65535,
		/* [3] */
		cTextColor, 0, 0, 0,
		/* [4] */
		cElevatorColor, 65535, 65535, 65535
	}
};

resource 'cctb' (1001) {
	{	/* array ColorSpec: 4 elements */
		/* [1] */
		cFrameColor, 0, 0, 0,
		/* [2] */
		cBodyColor, 65535, 65535, 65535,
		/* [3] */
		cTextColor, 0, 0, 0,
		/* [4] */
		cElevatorColor, 65535, 65535, 65535
	}
};

resource 'cctb' (1002) {
	{	/* array ColorSpec: 4 elements */
		/* [1] */
		cFrameColor, 0, 0, 0,
		/* [2] */
		cBodyColor, 65535, 65535, 65535,
		/* [3] */
		cTextColor, 0, 0, 0,
		/* [4] */
		cElevatorColor, 65535, 65535, 65535
	}
};

resource 'cctb' (1003) {
	{	/* array ColorSpec: 4 elements */
		/* [1] */
		cFrameColor, 0, 0, 0,
		/* [2] */
		cBodyColor, 65535, 65535, 65535,
		/* [3] */
		cTextColor, 0, 0, 0,
		/* [4] */
		cElevatorColor, 65535, 65535, 65535
	}
};

resource 'cctb' (1006) {
	{	/* array ColorSpec: 4 elements */
		/* [1] */
		cFrameColor, 0, 0, 0,
		/* [2] */
		cBodyColor, 65535, 65535, 65535,
		/* [3] */
		cTextColor, 0, 0, 0,
		/* [4] */
		cElevatorColor, 65535, 65535, 65535
	}
};

resource 'cctb' (1008) {
	{	/* array ColorSpec: 4 elements */
		/* [1] */
		cFrameColor, 0, 0, 0,
		/* [2] */
		cBodyColor, 65535, 65535, 65535,
		/* [3] */
		cTextColor, 0, 0, 0,
		/* [4] */
		cElevatorColor, 65535, 65535, 65535
	}
};

resource 'cctb' (1009) {
	{	/* array ColorSpec: 4 elements */
		/* [1] */
		cFrameColor, 0, 0, 0,
		/* [2] */
		cBodyColor, 65535, 65535, 65535,
		/* [3] */
		cTextColor, 0, 0, 0,
		/* [4] */
		cElevatorColor, 65535, 65535, 65535
	}
};

resource 'cctb' (1011) {
	{	/* array ColorSpec: 4 elements */
		/* [1] */
		cFrameColor, 0, 0, 0,
		/* [2] */
		cBodyColor, 65535, 65535, 65535,
		/* [3] */
		cTextColor, 0, 0, 0,
		/* [4] */
		cElevatorColor, 65535, 65535, 65535
	}
};

resource 'cctb' (1012) {
	{	/* array ColorSpec: 4 elements */
		/* [1] */
		cFrameColor, 0, 0, 0,
		/* [2] */
		cBodyColor, 65535, 65535, 65535,
		/* [3] */
		cTextColor, 0, 0, 0,
		/* [4] */
		cElevatorColor, 65535, 65535, 65535
	}
};

resource 'cctb' (1013) {
	{	/* array ColorSpec: 4 elements */
		/* [1] */
		cFrameColor, 0, 0, 0,
		/* [2] */
		cBodyColor, 65535, 65535, 65535,
		/* [3] */
		cTextColor, 0, 0, 0,
		/* [4] */
		cElevatorColor, 65535, 65535, 65535
	}
};

resource 'cctb' (1019) {
	{	/* array ColorSpec: 4 elements */
		/* [1] */
		cFrameColor, 0, 0, 0,
		/* [2] */
		cBodyColor, 65535, 65535, 65535,
		/* [3] */
		cTextColor, 0, 0, 0,
		/* [4] */
		cElevatorColor, 65535, 65535, 65535
	}
};

resource 'cctb' (1410) {
	{	/* array ColorSpec: 4 elements */
		/* [1] */
		cFrameColor, 0, 0, 0,
		/* [2] */
		cBodyColor, 65535, 65535, 65535,
		/* [3] */
		cTextColor, 0, 0, 0,
		/* [4] */
		cElevatorColor, 65535, 65535, 65535
	}
};

resource 'cctb' (2000) {
	{	/* array ColorSpec: 4 elements */
		/* [1] */
		cFrameColor, 0, 0, 0,
		/* [2] */
		cBodyColor, 65535, 65535, 65535,
		/* [3] */
		cTextColor, 0, 0, 0,
		/* [4] */
		cElevatorColor, 65535, 65535, 65535
	}
};

resource 'cctb' (2001) {
	{	/* array ColorSpec: 4 elements */
		/* [1] */
		cFrameColor, 0, 0, 0,
		/* [2] */
		cBodyColor, 65535, 65535, 65535,
		/* [3] */
		cTextColor, 0, 0, 0,
		/* [4] */
		cElevatorColor, 65535, 65535, 65535
	}
};

resource 'cfrg' (0) {
	{	/* array memberArray: 1 elements */
		/* [1] */
		kPowerPCCFragArch,
		kIsCompleteCFrag,
		kNoVersionNum,
		kNoVersionNum,
		131072,
		kNoAppSubFolder,
		kApplicationCFrag,
		kDataForkCFragLocator,
		kZeroOffset,
		kSegIDZero,
		"iconmangler"
	}
};

data 'cicn' (257) {
	$"0000 0000 8002 0000 0000 0008 0010 0000"            /* ....Ä........... */
	$"0000 0000 0000 0048 0000 0048 0000 0000"            /* .......H...H.... */
	$"0001 0001 0001 0000 0000 0000 0082 0000"            /* .............Ç.. */
	$"0000 0000 0000 0002 0000 0000 0008 0010"            /* ................ */
	$"0000 0000 0002 0000 0000 0008 0010 0000"            /* ................ */
	$"0000 0000 0000 0000 FFFF 0000 0000 0000"            /* ........ˇˇ...... */
	$"0000 0000 0000 0000 FFFF 0000 0000 0000"            /* ........ˇˇ...... */
	$"0000 0001 B9A9 0000 0001 0000 FFFF FFFF"            /* ....π©......ˇˇˇˇ */
	$"FFFF 0001 0000 0000 0000 0000 0000 0000"            /* ˇˇ.............. */
	$"FFFF 0000 0000 0000 0000"                           /* ˇˇ........ */
};

data 'cicn' (258) {
	$"0000 0000 8002 0000 0000 0008 0010 0000"            /* ....Ä........... */
	$"0000 0000 0000 0048 0000 0048 0000 0000"            /* .......H...H.... */
	$"0001 0001 0001 0000 0000 0000 0082 0000"            /* .............Ç.. */
	$"0000 0000 0000 0002 0000 0000 0008 0010"            /* ................ */
	$"0000 0000 0002 0000 0000 0008 0010 0000"            /* ................ */
	$"0000 0000 0000 FFFF FFFF 0000 0000 0000"            /* ......ˇˇˇˇ...... */
	$"0000 0000 0000 FFFF FFFF 0000 0000 0000"            /* ......ˇˇˇˇ...... */
	$"0000 0000 1049 0000 0001 0000 FFFF FFFF"            /* .....I......ˇˇˇˇ */
	$"FFFF 0001 0000 0000 0000 0000 0000 FFFF"            /* ˇˇ............ˇˇ */
	$"FFFF 0000 0000 0000 0000"                           /* ˇˇ........ */
};

data 'cicn' (259) {
	$"0000 0000 8002 0000 0000 0008 0010 0000"            /* ....Ä........... */
	$"0000 0000 0000 0048 0000 0048 0000 0000"            /* .......H...H.... */
	$"0001 0001 0001 0000 0000 0000 0082 0000"            /* .............Ç.. */
	$"0000 0000 0000 0002 0000 0000 0008 0010"            /* ................ */
	$"0000 0000 0002 0000 0000 0008 0010 0000"            /* ................ */
	$"0000 0000 0000 FFFF FFFF FFFF 0000 0000"            /* ......ˇˇˇˇˇˇ.... */
	$"0000 0000 0000 FFFF FFFF FFFF 0000 0000"            /* ......ˇˇˇˇˇˇ.... */
	$"0000 0001 BC17 0000 0001 0000 FFFF FFFF"            /* ....º.......ˇˇˇˇ */
	$"FFFF 0001 0000 0000 0000 0000 0000 FFFF"            /* ˇˇ............ˇˇ */
	$"FFFF FFFF 0000 0000 0000"                           /* ˇˇˇˇ...... */
};

data 'cicn' (260) {
	$"0000 0000 8002 0000 0000 0008 0010 0000"            /* ....Ä........... */
	$"0000 0000 0000 0048 0000 0048 0000 0000"            /* .......H...H.... */
	$"0001 0001 0001 0000 0000 0000 0082 0000"            /* .............Ç.. */
	$"0000 0000 0000 0002 0000 0000 0008 0010"            /* ................ */
	$"0000 0000 0002 0000 0000 0008 0010 0000"            /* ................ */
	$"0000 0000 0000 FFFF FFFF FFFF FFFF 0000"            /* ......ˇˇˇˇˇˇˇˇ.. */
	$"0000 0000 0000 FFFF FFFF FFFF FFFF 0000"            /* ......ˇˇˇˇˇˇˇˇ.. */
	$"0000 0001 BC8A 0000 0001 0000 FFFF FFFF"            /* ....ºä......ˇˇˇˇ */
	$"FFFF 0001 0000 0000 0000 0000 0000 FFFF"            /* ˇˇ............ˇˇ */
	$"FFFF FFFF FFFF 0000 0000"                           /* ˇˇˇˇˇˇ.... */
};

data 'cicn' (261) {
	$"0000 0000 8002 0000 0000 0008 0010 0000"            /* ....Ä........... */
	$"0000 0000 0000 0048 0000 0048 0000 0000"            /* .......H...H.... */
	$"0001 0001 0001 0000 0000 0000 0082 0000"            /* .............Ç.. */
	$"0000 0000 0000 0002 0000 0000 0008 0010"            /* ................ */
	$"0000 0000 0002 0000 0000 0008 0010 0000"            /* ................ */
	$"0000 0000 FFFF FFFF FFFF FFFF FFFF 0000"            /* ....ˇˇˇˇˇˇˇˇˇˇ.. */
	$"0000 0000 FFFF FFFF FFFF FFFF FFFF 0000"            /* ....ˇˇˇˇˇˇˇˇˇˇ.. */
	$"0000 0001 BCFF 0000 0001 0000 FFFF FFFF"            /* ....ºˇ......ˇˇˇˇ */
	$"FFFF 0001 0000 0000 0000 0000 FFFF FFFF"            /* ˇˇ..........ˇˇˇˇ */
	$"FFFF FFFF FFFF 0000 0000"                           /* ˇˇˇˇˇˇ.... */
};

data 'cicn' (262) {
	$"0000 0000 8002 0000 0000 0008 0010 0000"            /* ....Ä........... */
	$"0000 0000 0000 0048 0000 0048 0000 0000"            /* .......H...H.... */
	$"0001 0001 0001 0000 0000 0000 0082 0000"            /* .............Ç.. */
	$"0000 0000 0000 0002 0000 0000 0008 0010"            /* ................ */
	$"0000 0000 0002 0000 0000 0008 0010 0000"            /* ................ */
	$"0000 0000 FFFF FFFF FFFF FFFF FFFF FFFF"            /* ....ˇˇˇˇˇˇˇˇˇˇˇˇ */
	$"0000 0000 FFFF FFFF FFFF FFFF FFFF FFFF"            /* ....ˇˇˇˇˇˇˇˇˇˇˇˇ */
	$"0000 0001 BD50 0000 0001 0000 FFFF FFFF"            /* ....ΩP......ˇˇˇˇ */
	$"FFFF 0001 0000 0000 0000 0000 FFFF FFFF"            /* ˇˇ..........ˇˇˇˇ */
	$"FFFF FFFF FFFF FFFF 0000"                           /* ˇˇˇˇˇˇˇˇ.. */
};

data 'cicn' (263) {
	$"0000 0000 8002 0000 0000 0008 0010 0000"            /* ....Ä........... */
	$"0000 0000 0000 0048 0000 0048 0000 0000"            /* .......H...H.... */
	$"0001 0001 0001 0000 0000 0000 0082 0000"            /* .............Ç.. */
	$"0000 0000 0000 0002 0000 0000 0008 0010"            /* ................ */
	$"0000 0000 0002 0000 0000 0008 0010 0000"            /* ................ */
	$"0000 FFFF FFFF FFFF FFFF FFFF FFFF FFFF"            /* ..ˇˇˇˇˇˇˇˇˇˇˇˇˇˇ */
	$"0000 FFFF FFFF FFFF FFFF FFFF FFFF FFFF"            /* ..ˇˇˇˇˇˇˇˇˇˇˇˇˇˇ */
	$"0000 0001 BDAA 0000 0001 0000 FFFF FFFF"            /* ....Ω™......ˇˇˇˇ */
	$"FFFF 0001 0000 0000 0000 FFFF FFFF FFFF"            /* ˇˇ........ˇˇˇˇˇˇ */
	$"FFFF FFFF FFFF FFFF 0000"                           /* ˇˇˇˇˇˇˇˇ.. */
};

data 'cicn' (264) {
	$"0000 0000 8002 0000 0000 0008 0010 0000"            /* ....Ä........... */
	$"0000 0000 0000 0048 0000 0048 0000 0000"            /* .......H...H.... */
	$"0001 0001 0001 0000 0000 0000 0082 0000"            /* .............Ç.. */
	$"0000 0000 0000 0002 0000 0000 0008 0010"            /* ................ */
	$"0000 0000 0002 0000 0000 0008 0010 0000"            /* ................ */
	$"0000 FFFF FFFF FFFF FFFF FFFF FFFF FFFF"            /* ..ˇˇˇˇˇˇˇˇˇˇˇˇˇˇ */
	$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"            /* ˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇ */
	$"FFFF 0001 BDFB 0000 0000 0001 0000 0000"            /* ˇˇ..Ω˚.......... */
	$"0000 FFFF FFFF FFFF FFFF FFFF FFFF FFFF"            /* ..ˇˇˇˇˇˇˇˇˇˇˇˇˇˇ */
	$"FFFF"                                               /* ˇˇ */
};

data 'cicn' (600, "Pencil") {
	$"0000 0000 8004 0000 0000 0016 001A 0000"            /* ....Ä........... */
	$"0000 0000 0000 0048 0000 0048 0000 0000"            /* .......H...H.... */
	$"0001 0001 0001 0000 0000 0000 015A 0000"            /* .............Z.. */
	$"0000 0000 0000 0004 0000 0000 0016 001A"            /* ................ */
	$"0000 0000 0004 0000 0000 0016 001A 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0007"            /* ................ */
	$"8000 0007 C000 000F C000 000F 8000 001F"            /* Ä...¿...¿...Ä... */
	$"8000 001F 0000 003F 0000 003E 0000 007E"            /* Ä......?...>...~ */
	$"0000 007C 0000 007C 0000 0078 0000 0070"            /* ...|...|...x...p */
	$"0000 0060 0000 0040 0000 0000 0000 0000"            /* ...`...@........ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0007 8000 0004 4000 0008"            /* ........Ä...@... */
	$"4000 000C 8000 0013 8000 0011 0000 0021"            /* @...Ä...Ä......! */
	$"0000 0022 0000 0042 0000 0044 0000 0064"            /* ..."...B...D...d */
	$"0000 0078 0000 0070 0000 0060 0000 0040"            /* ...x...p...`...@ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0001 B5F4 0000 0001 0000 FFFF FFFF"            /* ....µÙ......ˇˇˇˇ */
	$"FFFF 0001 0000 0000 0000 0000 0000 0000"            /* ˇˇ.............. */
	$"0000 0000 0000 0007 8000 0004 4000 0008"            /* ........Ä...@... */
	$"4000 000C 8000 0013 8000 0011 0000 0021"            /* @...Ä...Ä......! */
	$"0000 0022 0000 0042 0000 0044 0000 0064"            /* ..."...B...D...d */
	$"0000 0078 0000 0070 0000 0060 0000 0040"            /* ...x...p...`...@ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000"                                               /* .. */
};

data 'cicn' (601, "Eyedropper") {
	$"0000 0000 8004 0000 0000 0016 001A 0000"            /* ....Ä........... */
	$"0000 0000 0000 0048 0000 0048 0000 0000"            /* .......H...H.... */
	$"0001 0001 0001 0000 0000 0000 015A 0000"            /* .............Z.. */
	$"0000 0000 0000 0004 0000 0000 0016 001A"            /* ................ */
	$"0000 0000 0004 0000 0000 0016 001A 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"7000 0000 F800 0000 F800 0007 F800 0003"            /* p...¯...¯...¯... */
	$"F000 0007 C000 000F C000 001F 4000 003E"            /* ...¿...¿...@..> */
	$"0000 007C 0000 00F8 0000 01F0 0000 03E0"            /* ...|...¯......‡ */
	$"0000 03C0 0000 0780 0000 0200 0000 0000"            /* ...¿...Ä........ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 7000 0000 F800 0000"            /* ........p...¯... */
	$"F800 0007 F800 0003 F000 0005 C000 0008"            /* ¯...¯......¿... */
	$"C000 0011 4000 0022 0000 0044 0000 0088"            /* ¿...@.."...D...à */
	$"0000 0110 0000 0220 0000 0240 0000 0580"            /* ....... ...@...Ä */
	$"0000 0200 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 33AC 0000 0001 0000 FFFF FFFF"            /* ....3¨......ˇˇˇˇ */
	$"FFFF 0001 0000 0000 0000 0000 0000 0000"            /* ˇˇ.............. */
	$"0000 0000 0000 0000 7000 0000 F800 0000"            /* ........p...¯... */
	$"F800 0007 F800 0003 F000 0005 C000 0008"            /* ¯...¯......¿... */
	$"C000 0011 4000 0022 0000 0044 0000 0088"            /* ¿...@.."...D...à */
	$"0000 0110 0000 0220 0000 0240 0000 0580"            /* ....... ...@...Ä */
	$"0000 0200 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000"                                               /* .. */
};

data 'cicn' (602, "Paint bucket") {
	$"0000 0000 8004 0000 0000 0016 001A 0000"            /* ....Ä........... */
	$"0000 0000 0000 0048 0000 0048 0000 0000"            /* .......H...H.... */
	$"0001 0001 0001 0000 0000 0000 015A 0000"            /* .............Z.. */
	$"0000 0000 0000 0004 0000 0000 0016 001A"            /* ................ */
	$"0000 0000 0004 0000 0000 0016 001A 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0038"            /* ...............8 */
	$"0000 0044 0000 004C 0000 005E 0000 007F"            /* ...D...L...^.... */
	$"8000 007F E000 00FF F000 01FF F800 03FF"            /* Ä...‡..ˇ..ˇ¯..ˇ */
	$"F800 07FF F800 07FF B800 03FF 3800 01FE"            /* ¯..ˇ¯..ˇ∏..ˇ8..˛ */
	$"3800 00FC 3000 0078 2000 0030 0000 0000"            /* 8..¸0..x ..0.... */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0038 0000 0044 0000 004C"            /* .......8...D...L */
	$"0000 0056 0000 0065 8000 0044 E000 0084"            /* ...V...eÄ..D‡..Ñ */
	$"7000 010A 3800 0204 3800 0400 7800 0400"            /* p...8...8...x... */
	$"B800 0201 3800 0102 3800 0084 3000 0048"            /* ∏...8...8..Ñ0..H */
	$"2000 0030 0000 0000 0000 0000 0000 0000"            /*  ..0............ */
	$"0000 0000 3434 0000 0001 0000 FFFF FFFF"            /* ....44......ˇˇˇˇ */
	$"FFFF 0001 0000 0000 0000 0000 0000 0000"            /* ˇˇ.............. */
	$"0000 0000 0000 0038 0000 0044 0000 004C"            /* .......8...D...L */
	$"0000 0056 0000 0065 8000 0044 E000 0084"            /* ...V...eÄ..D‡..Ñ */
	$"7000 010A 3800 0204 3800 0400 7800 0400"            /* p...8...8...x... */
	$"B800 0201 3800 0102 3800 0084 3000 0048"            /* ∏...8...8..Ñ0..H */
	$"2000 0030 0000 0000 0000 0000 0000 0000"            /*  ..0............ */
	$"0000"                                               /* .. */
};

data 'cicn' (603, "Eraser") {
	$"0000 0000 8004 0000 0000 0016 001A 0000"            /* ....Ä........... */
	$"0000 0000 0000 0048 0000 0048 0000 0000"            /* .......H...H.... */
	$"0001 0001 0001 0000 0000 0000 015A 0000"            /* .............Z.. */
	$"0000 0000 0000 0004 0000 0000 0016 001A"            /* ................ */
	$"0000 0000 0004 0000 0000 0016 001A 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0007 F800 000F"            /* ............¯... */
	$"F800 001F F800 003F F800 007F F000 00FF"            /* ¯...¯..?¯.....ˇ */
	$"E000 01FF C000 03FF 8000 03FF 0000 03FE"            /* ‡..ˇ¿..ˇÄ..ˇ...˛ */
	$"0000 03FC 0000 0000 0000 0000 0000 0000"            /* ...¸............ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0007 F800 0008 1800 0010 2800 0020"            /* ....¯.......(..  */
	$"4800 0040 9000 0081 2000 0102 4000 03FC"            /* H..@ê..Å ...@..¸ */
	$"8000 0205 0000 0206 0000 03FC 0000 0000"            /* Ä..........¸.... */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0002 A809 0000 0001 0000 FFFF FFFF"            /* ....®.......ˇˇˇˇ */
	$"FFFF 0001 0000 0000 0000 0000 0000 0000"            /* ˇˇ.............. */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0007 F800 0008 1800 0010 2800 0020"            /* ....¯.......(..  */
	$"4800 0040 9000 0081 2000 0102 4000 03FC"            /* H..@ê..Å ...@..¸ */
	$"8000 0205 0000 0206 0000 03FC 0000 0000"            /* Ä..........¸.... */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000"                                               /* .. */
};

data 'cicn' (604, "Rectangular Marquee") {
	$"0000 0000 8004 0000 0000 0016 001A 0000"            /* ....Ä........... */
	$"0000 0000 0000 0048 0000 0048 0000 0000"            /* .......H...H.... */
	$"0001 0001 0001 0000 0000 0000 015A 0000"            /* .............Z.. */
	$"0000 0000 0000 0004 0000 0000 0016 001A"            /* ................ */
	$"0000 0000 0004 0000 0000 0016 001A 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 073E 7000 0400 1000 0400 1000 0000"            /* ...>p........... */
	$"1000 0000 0000 0400 0000 0400 1000 0400"            /* ................ */
	$"1000 0000 1000 0000 0000 0400 0000 0400"            /* ................ */
	$"1000 0400 1000 073E 7000 0000 0000 0000"            /* .......>p....... */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 073E 7000 0400"            /* ...........>p... */
	$"1000 0400 1000 0000 1000 0000 0000 0400"            /* ................ */
	$"0000 0400 1000 0400 1000 0000 1000 0000"            /* ................ */
	$"0000 0400 0000 0400 1000 0400 1000 073E"            /* ...............> */
	$"7000 0000 0000 0000 0000 0000 0000 0000"            /* p............... */
	$"0000 0000 84AA 0000 0001 0000 FFFF FFFF"            /* ....Ñ™......ˇˇˇˇ */
	$"FFFF 0001 0000 0000 0000 0000 0000 0000"            /* ˇˇ.............. */
	$"0000 0000 0000 0000 0000 073E 7000 0400"            /* ...........>p... */
	$"1000 0400 1000 0000 1000 0000 0000 0400"            /* ................ */
	$"0000 0400 1000 0400 1000 0000 1000 0000"            /* ................ */
	$"0000 0400 0000 0400 1000 0400 1000 073E"            /* ...............> */
	$"7000 0000 0000 0000 0000 0000 0000 0000"            /* p............... */
	$"0000"                                               /* .. */
};

data 'cicn' (605, "Move") {
	$"0000 0000 8004 0000 0000 0016 001A 0000"            /* ....Ä........... */
	$"0000 0000 0000 0048 0000 0048 0000 0000"            /* .......H...H.... */
	$"0001 0001 0001 0000 0000 0000 015A 0000"            /* .............Z.. */
	$"0000 0000 0000 0004 0000 0000 0016 001A"            /* ................ */
	$"0000 0000 0004 0000 0000 0016 001A 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0200 0000 0300 0000 0380 0000 03C0"            /* ...........Ä...¿ */
	$"0000 03E0 0000 03F0 8000 03F9 C000 0380"            /* ...‡...Ä..˘¿..Ä */
	$"8000 0304 9000 020F F800 0004 9000 0000"            /* Ä...ê...¯...ê... */
	$"8000 0001 C000 0000 8000 0000 0000 0000"            /* Ä...¿...Ä....... */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0200 0000 0300"            /* ................ */
	$"0000 0380 0000 03C0 0000 03E0 0000 03F0"            /* ...Ä...¿...‡... */
	$"8000 03F9 C000 0380 8000 0304 9000 020F"            /* Ä..˘¿..ÄÄ...ê... */
	$"F800 0004 9000 0000 8000 0001 C000 0000"            /* ¯...ê...Ä...¿... */
	$"8000 0000 0000 0000 0000 0000 0000 0000"            /* Ä............... */
	$"0000 0001 2AC2 0000 0001 0000 FFFF FFFF"            /* ....*¬......ˇˇˇˇ */
	$"FFFF 0001 0000 0000 0000 0000 0000 0000"            /* ˇˇ.............. */
	$"0000 0000 0000 0000 0000 0200 0000 0300"            /* ................ */
	$"0000 0380 0000 03C0 0000 03E0 0000 03F0"            /* ...Ä...¿...‡... */
	$"8000 03F9 C000 0380 8000 0304 9000 020F"            /* Ä..˘¿..ÄÄ...ê... */
	$"F800 0004 9000 0000 8000 0001 C000 0000"            /* ¯...ê...Ä...¿... */
	$"8000 0000 0000 0000 0000 0000 0000 0000"            /* Ä............... */
	$"0000"                                               /* .. */
};

data 'cicn' (606, "Lasso") {
	$"0000 0000 8004 0000 0000 0016 001A 0000"            /* ....Ä........... */
	$"0000 0000 0000 0048 0000 0048 0000 0000"            /* .......H...H.... */
	$"0001 0001 0001 0000 0000 0000 015A 0000"            /* .............Z.. */
	$"0000 0000 0000 0004 0000 0000 0016 001A"            /* ................ */
	$"0000 0000 0004 0000 0000 0016 001A 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 001F C000 00E0 3000 0100 0800 0200"            /* ....¿..‡0....... */
	$"0800 0400 0800 0400 3000 0401 C000 038E"            /* ........0...¿..é */
	$"0000 0670 0000 0540 0000 0380 0000 0080"            /* ...p...@...Ä...Ä */
	$"0000 0080 0000 0100 0000 0000 0000 0000"            /* ...Ä............ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 001F C000 00E0"            /* ............¿..‡ */
	$"3000 0100 0800 0200 0800 0400 0800 0400"            /* 0............... */
	$"3000 0401 C000 038E 0000 0670 0000 0540"            /* 0...¿..é...p...@ */
	$"0000 0380 0000 0080 0000 0080 0000 0100"            /* ...Ä...Ä...Ä.... */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0003 60B7 0000 0001 0000 FFFF FFFF"            /* ....`∑......ˇˇˇˇ */
	$"FFFF 0001 0000 0000 0000 0000 0000 0000"            /* ˇˇ.............. */
	$"0000 0000 0000 0000 0000 001F C000 00E0"            /* ............¿..‡ */
	$"3000 0100 0800 0200 0800 0400 0800 0400"            /* 0............... */
	$"3000 0401 C000 038E 0000 0670 0000 0540"            /* 0...¿..é...p...@ */
	$"0000 0380 0000 0080 0000 0080 0000 0100"            /* ...Ä...Ä...Ä.... */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000"                                               /* .. */
};

data 'cicn' (607, "Magic Wand") {
	$"0000 0000 8004 0000 0000 0016 001A 0000"            /* ....Ä........... */
	$"0000 0000 0000 0048 0000 0048 0000 0000"            /* .......H...H.... */
	$"0001 0001 0001 0000 0000 0000 015A 0000"            /* .............Z.. */
	$"0000 0000 0000 0004 0000 0000 0016 001A"            /* ................ */
	$"0000 0000 0004 0000 0000 0016 001A 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0040 0000 0110 0000 00A0 0000 0248"            /* ...@.......†...H */
	$"0000 00A0 0000 0110 0000 0044 0000 000E"            /* ...†.......D.... */
	$"0000 0007 0000 0003 8000 0001 C000 0000"            /* ........Ä...¿... */
	$"E000 0000 7000 0000 2000 0000 0000 0000"            /* ‡...p... ....... */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0040 0000 0110"            /* ...........@.... */
	$"0000 00A0 0000 0248 0000 00A0 0000 0110"            /* ...†...H...†.... */
	$"0000 0044 0000 000A 0000 0005 0000 0003"            /* ...D............ */
	$"8000 0001 C000 0000 E000 0000 7000 0000"            /* Ä...¿...‡...p... */
	$"2000 0000 0000 0000 0000 0000 0000 0000"            /*  ............... */
	$"0000 0003 68BB 0000 0001 0000 FFFF FFFF"            /* ....hª......ˇˇˇˇ */
	$"FFFF 0001 0000 0000 0000 0000 0000 0000"            /* ˇˇ.............. */
	$"0000 0000 0000 0000 0000 0040 0000 0110"            /* ...........@.... */
	$"0000 00A0 0000 0248 0000 00A0 0000 0110"            /* ...†...H...†.... */
	$"0000 0044 0000 000A 0000 0005 0000 0003"            /* ...D............ */
	$"8000 0001 C000 0000 E000 0000 7000 0000"            /* Ä...¿...‡...p... */
	$"2000 0000 0000 0000 0000 0000 0000 0000"            /*  ............... */
	$"0000"                                               /* .. */
};

data 'cicn' (608, "Line") {
	$"0000 0000 8004 0000 0000 0016 001A 0000"            /* ....Ä........... */
	$"0000 0000 0000 0048 0000 0048 0000 0000"            /* .......H...H.... */
	$"0001 0001 0001 0000 0000 0000 015A 0000"            /* .............Z.. */
	$"0000 0000 0000 0004 0000 0000 0016 001A"            /* ................ */
	$"0000 0000 0004 0000 0000 0016 001A 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0180 0000 00C0"            /* ...........Ä...¿ */
	$"0000 0060 0000 0030 0000 0018 0000 000C"            /* ...`...0........ */
	$"0000 0006 0000 0003 0000 0001 8000 0000"            /* ............Ä... */
	$"C000 0000 6000 0000 3000 0000 0000 0000"            /* ¿...`...0....... */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0180 0000 00C0 0000 0060 0000 0030"            /* ...Ä...¿...`...0 */
	$"0000 0018 0000 000C 0000 0006 0000 0003"            /* ................ */
	$"0000 0001 8000 0000 C000 0000 6000 0000"            /* ....Ä...¿...`... */
	$"3000 0000 0000 0000 0000 0000 0000 0000"            /* 0............... */
	$"0000 0000 17D0 0000 0001 0000 FFFF FFFF"            /* .....–......ˇˇˇˇ */
	$"FFFF 0001 0000 0000 0000 0000 0000 0000"            /* ˇˇ.............. */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0180 0000 00C0 0000 0060 0000 0030"            /* ...Ä...¿...`...0 */
	$"0000 0018 0000 000C 0000 0006 0000 0003"            /* ................ */
	$"0000 0001 8000 0000 C000 0000 6000 0000"            /* ....Ä...¿...`... */
	$"3000 0000 0000 0000 0000 0000 0000 0000"            /* 0............... */
	$"0000"                                               /* .. */
};

data 'cicn' (609, "Rectangle") {
	$"0000 0000 8004 0000 0000 0016 001A 0000"            /* ....Ä........... */
	$"0000 0000 0000 0048 0000 0048 0000 0000"            /* .......H...H.... */
	$"0001 0001 0001 0000 0000 0000 015A 0000"            /* .............Z.. */
	$"0000 0000 0000 0004 0000 0000 0016 001A"            /* ................ */
	$"0000 0000 0004 0000 0000 0016 001A 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 03FF F000 0200 1000 0200"            /* .......ˇ....... */
	$"1000 0200 1000 0200 1000 0200 1000 0200"            /* ................ */
	$"1000 0200 1000 0200 1000 0200 1000 0200"            /* ................ */
	$"1000 03FF F000 0000 0000 0000 0000 0000"            /* ...ˇ........... */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 03FF"            /* ...............ˇ */
	$"F000 0200 1000 0200 1000 0200 1000 0200"            /* ............... */
	$"1000 0200 1000 0200 1000 0200 1000 0200"            /* ................ */
	$"1000 0200 1000 0200 1000 03FF F000 0000"            /* ...........ˇ... */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 FB47 0000 0001 0000 FFFF FFFF"            /* ....˚G......ˇˇˇˇ */
	$"FFFF 0001 0000 0000 0000 0000 0000 0000"            /* ˇˇ.............. */
	$"0000 0000 0000 0000 0000 0000 0000 03FF"            /* ...............ˇ */
	$"F000 0200 1000 0200 1000 0200 1000 0200"            /* ............... */
	$"1000 0200 1000 0200 1000 0200 1000 0200"            /* ................ */
	$"1000 0200 1000 0200 1000 03FF F000 0000"            /* ...........ˇ... */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000"                                               /* .. */
};

data 'cicn' (610, "Oval") {
	$"0000 0000 8004 0000 0000 0016 001A 0000"            /* ....Ä........... */
	$"0000 0000 0000 0048 0000 0048 0000 0000"            /* .......H...H.... */
	$"0001 0001 0001 0000 0000 0000 015A 0000"            /* .............Z.. */
	$"0000 0000 0000 0004 0000 0000 0016 001A"            /* ................ */
	$"0000 0000 0004 0000 0000 0016 001A 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 003F 0000 00C0 C000 0100"            /* .......?...¿¿... */
	$"2000 0100 2000 0200 1000 0200 1000 0200"            /*  ... ........... */
	$"1000 0200 1000 0100 2000 0100 2000 00C0"            /* ........ ... ..¿ */
	$"C000 003F 0000 0000 0000 0000 0000 0000"            /* ¿..?............ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 003F"            /* ...............? */
	$"0000 00C0 C000 0100 2000 0100 2000 0200"            /* ...¿¿... ... ... */
	$"1000 0200 1000 0200 1000 0200 1000 0100"            /* ................ */
	$"2000 0100 2000 00C0 C000 003F 0000 0000"            /*  ... ..¿¿..?.... */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0001 07C2 0000 0001 0000 FFFF FFFF"            /* .....¬......ˇˇˇˇ */
	$"FFFF 0001 0000 0000 0000 0000 0000 0000"            /* ˇˇ.............. */
	$"0000 0000 0000 0000 0000 0000 0000 003F"            /* ...............? */
	$"0000 00C0 C000 0100 2000 0100 2000 0200"            /* ...¿¿... ... ... */
	$"1000 0200 1000 0200 1000 0200 1000 0100"            /* ................ */
	$"2000 0100 2000 00C0 C000 003F 0000 0000"            /*  ... ..¿¿..?.... */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000"                                               /* .. */
};

data 'cicn' (611, "Polygon") {
	$"0000 0000 8004 0000 0000 0016 001A 0000"            /* ....Ä........... */
	$"0000 0000 0000 0048 0000 0048 0000 0000"            /* .......H...H.... */
	$"0001 0001 0001 0000 0000 0000 015A 0000"            /* .............Z.. */
	$"0000 0000 0000 0004 0000 0000 0016 001A"            /* ................ */
	$"0000 0000 0004 0000 0000 0016 001A 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 001F FC00 0020 0800 0040"            /* ........¸.. ...@ */
	$"1000 0080 2000 0100 4000 0200 8000 0401"            /* ...Ä ...@...Ä... */
	$"0000 0400 8000 0400 4000 0400 2000 0400"            /* ....Ä...@... ... */
	$"1000 07FF F800 0000 0000 0000 0000 0000"            /* ...ˇ¯........... */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 001F"            /* ................ */
	$"FC00 0020 0800 0040 1000 0080 2000 0100"            /* ¸.. ...@...Ä ... */
	$"4000 0200 8000 0401 0000 0400 8000 0400"            /* @...Ä.......Ä... */
	$"4000 0400 2000 0400 1000 07FF F800 0000"            /* @... ......ˇ¯... */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0001 872B 0000 0001 0000 FFFF FFFF"            /* ....á+......ˇˇˇˇ */
	$"FFFF 0001 0000 0000 0000 0000 0000 0000"            /* ˇˇ.............. */
	$"0000 0000 0000 0000 0000 0000 0000 001F"            /* ................ */
	$"FC00 0020 0800 0040 1000 0080 2000 0100"            /* ¸.. ...@...Ä ... */
	$"4000 0200 8000 0401 0000 0400 8000 0400"            /* @...Ä.......Ä... */
	$"4000 0400 2000 0400 1000 07FF F800 0000"            /* @... ......ˇ¯... */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000"                                               /* .. */
};

data 'cicn' (612, "Gradient") {
	$"0000 0000 8008 0000 0000 0016 001A 0000"            /* ....Ä........... */
	$"0000 0000 0000 0048 0000 0048 0000 0000"            /* .......H...H.... */
	$"0002 0001 0002 0000 0000 0000 01B2 0000"            /* .............≤.. */
	$"0000 0000 0000 0004 0000 0000 0016 001A"            /* ................ */
	$"0000 0000 0004 0000 0000 0016 001A 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 07FF F800 07FF F800 07FF"            /* .......ˇ¯..ˇ¯..ˇ */
	$"F800 07FF F800 07FF F800 07FF F800 07FF"            /* ¯..ˇ¯..ˇ¯..ˇ¯..ˇ */
	$"F800 07FF F800 07FF F800 07FF F800 07FF"            /* ¯..ˇ¯..ˇ¯..ˇ¯..ˇ */
	$"F800 07FF F800 0000 0000 0000 0000 0000"            /* ¯..ˇ¯........... */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 07FF"            /* ...............ˇ */
	$"F800 040B F800 0407 F800 040B F800 0407"            /* ¯...¯...¯...¯... */
	$"F800 040B F800 0407 F800 040B F800 0407"            /* ¯...¯...¯...¯... */
	$"F800 040B F800 0407 F800 07FF F800 0000"            /* ¯...¯...¯..ˇ¯... */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 CBD8 0000 0003 0000 FFFF FFFF"            /* ....Àÿ......ˇˇˇˇ */
	$"FFFF 0001 8000 8000 8000 0002 4000 4000"            /* ˇˇ..Ä.Ä.Ä...@.@. */
	$"4000 0003 0000 0000 0000 0000 0000 0000"            /* @............... */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 003F FFFF FFC0 0000 0030 119B BFC0"            /* ...?ˇˇˇ¿...0.õø¿ */
	$"0000 0030 056A FFC0 0000 0030 119B BFC0"            /* ...0.jˇ¿...0.õø¿ */
	$"0000 0030 056A FFC0 0000 0030 119B BFC0"            /* ...0.jˇ¿...0.õø¿ */
	$"0000 0030 056A FFC0 0000 0030 119B BFC0"            /* ...0.jˇ¿...0.õø¿ */
	$"0000 0030 056A FFC0 0000 0030 119B BFC0"            /* ...0.jˇ¿...0.õø¿ */
	$"0000 0030 056A FFC0 0000 003F FFFF FFC0"            /* ...0.jˇ¿...?ˇˇˇ¿ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000"                           /* .......... */
};

data 'cicn' (613, "Text") {
	$"0000 0000 8004 0000 0000 0016 001A 0000"            /* ....Ä........... */
	$"0000 0000 0000 0048 0000 0048 0000 0000"            /* .......H...H.... */
	$"0001 0001 0001 0000 0000 0000 015A 0000"            /* .............Z.. */
	$"0000 0000 0000 0004 0000 0000 0016 001A"            /* ................ */
	$"0000 0000 0004 0000 0000 0016 001A 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 01FF E000 018C 6000 010C 2000 010C"            /* ...ˇ‡..å`... ... */
	$"2000 000C 0000 000C 0000 000C 0000 000C"            /*  ............... */
	$"0000 000C 0000 000C 0000 000C 0000 000C"            /* ................ */
	$"0000 003F 0000 0000 0000 0000 0000 0000"            /* ...?............ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 01FF E000 018C"            /* ...........ˇ‡..å */
	$"6000 010C 2000 010C 2000 000C 0000 000C"            /* `... ... ....... */
	$"0000 000C 0000 000C 0000 000C 0000 000C"            /* ................ */
	$"0000 000C 0000 000C 0000 003F 0000 0000"            /* ...........?.... */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 1B8E 0000 0001 0000 FFFF FFFF"            /* .....é......ˇˇˇˇ */
	$"FFFF 0001 0000 0000 0000 0000 0000 0000"            /* ˇˇ.............. */
	$"0000 0000 0000 0000 0000 01FF E000 018C"            /* ...........ˇ‡..å */
	$"6000 010C 2000 010C 2000 000C 0000 000C"            /* `... ... ....... */
	$"0000 000C 0000 000C 0000 000C 0000 000C"            /* ................ */
	$"0000 000C 0000 000C 0000 003F 0000 0000"            /* ...........?.... */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000"                                               /* .. */
};

data 'cicn' (614, "Pan") {
	$"0000 0000 8004 0000 0000 0016 001A 0000"            /* ....Ä........... */
	$"0000 0000 0000 0048 0000 0048 0000 0000"            /* .......H...H.... */
	$"0001 0001 0001 0000 0000 0000 015A 0000"            /* .............Z.. */
	$"0000 0000 0000 0004 0000 0000 0016 001A"            /* ................ */
	$"0000 0000 0004 0000 0000 0016 001A 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 000C"            /* ................ */
	$"0000 00DF 8000 01FF C000 01FF D000 00FF"            /* ...ﬂÄ..ˇ¿..ˇ–..ˇ */
	$"F800 00FF F800 037F F800 07FF F800 07FF"            /* ¯..ˇ¯...¯..ˇ¯..ˇ */
	$"F000 03FF F000 01FF F000 01FF E000 00FF"            /* ..ˇ..ˇ..ˇ‡..ˇ */
	$"E000 007F C000 003F C000 003F C000 0000"            /* ‡...¿..?¿..?¿... */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 000C 0000 00D3 8000 0132"            /* ...........”Ä..2 */
	$"4000 0132 5000 0092 6800 0092 4800 0340"            /* @..2P..íh..íH..@ */
	$"4800 04C0 0800 0440 1000 0200 1000 0100"            /* H..¿...@........ */
	$"1000 0100 2000 0080 2000 0040 4000 0020"            /* .... ..Ä ..@@..  */
	$"4000 0020 4000 0000 0000 0000 0000 0000"            /* @.. @........... */
	$"0000 0000 3A1C 0000 0001 0000 FFFF FFFF"            /* ....:.......ˇˇˇˇ */
	$"FFFF 0001 0000 0000 0000 0000 0000 0000"            /* ˇˇ.............. */
	$"0000 0000 0000 000C 0000 00D3 8000 0132"            /* ...........”Ä..2 */
	$"4000 0132 5000 0092 6800 0092 4800 0340"            /* @..2P..íh..íH..@ */
	$"4800 04C0 0800 0440 1000 0200 1000 0100"            /* H..¿...@........ */
	$"1000 0100 2000 0080 2000 0040 4000 0020"            /* .... ..Ä ..@@..  */
	$"4000 0020 4000 0000 0000 0000 0000 0000"            /* @.. @........... */
	$"0000"                                               /* .. */
};

data 'cicn' (615, "Zoom") {
	$"0000 0000 8004 0000 0000 0016 001A 0000"            /* ....Ä........... */
	$"0000 0000 0000 0048 0000 0048 0000 0000"            /* .......H...H.... */
	$"0001 0001 0001 0000 0000 0000 015A 0000"            /* .............Z.. */
	$"0000 0000 0000 0004 0000 0000 0016 001A"            /* ................ */
	$"0000 0000 0004 0000 0000 0016 001A 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0078 0000 01FE 0000 01FE 0000 03FF"            /* ...x...˛...˛...ˇ */
	$"0000 03FF 0000 03FF 0000 03FF 0000 01FE"            /* ...ˇ...ˇ...ˇ...˛ */
	$"0000 01FF 0000 007B 8000 0001 C000 0000"            /* ...ˇ...{Ä...¿... */
	$"E000 0000 7000 0000 3800 0000 1000 0000"            /* ‡...p...8....... */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0078 0000 0186"            /* ...........x...Ü */
	$"0000 0102 0000 0201 0000 0201 0000 0205"            /* ................ */
	$"0000 0205 0000 011A 0000 0187 0000 007B"            /* ...........á...{ */
	$"8000 0001 C000 0000 E000 0000 7000 0000"            /* Ä...¿...‡...p... */
	$"3800 0000 1000 0000 0000 0000 0000 0000"            /* 8............... */
	$"0000 0000 4496 0000 0001 0000 FFFF FFFF"            /* ....Dñ......ˇˇˇˇ */
	$"FFFF 0001 0000 0000 0000 0000 0000 0000"            /* ˇˇ.............. */
	$"0000 0000 0000 0000 0000 0078 0000 0186"            /* ...........x...Ü */
	$"0000 0102 0000 0201 0000 0201 0000 0205"            /* ................ */
	$"0000 0205 0000 011A 0000 0187 0000 007B"            /* ...........á...{ */
	$"8000 0001 C000 0000 E000 0000 7000 0000"            /* Ä...¿...‡...p... */
	$"3800 0000 1000 0000 0000 0000 0000 0000"            /* 8............... */
	$"0000"                                               /* .. */
};

data 'cicn' (636, "Lasso Polygonal") {
	$"0000 0000 8004 0000 0000 0016 001A 0000"            /* ....Ä........... */
	$"0000 0000 0000 0048 0000 0048 0000 0000"            /* .......H...H.... */
	$"0001 0001 0001 0000 0000 0000 015A 0000"            /* .............Z.. */
	$"0000 0000 0000 0004 0000 0000 0016 001A"            /* ................ */
	$"0000 0000 0004 0000 0000 0016 001A 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0800 0300 1800 02C0 2800 0230"            /* ...........¿(..0 */
	$"4800 010C 8800 0103 0800 0080 0800 0080"            /* H...à......Ä...Ä */
	$"0800 0040 1800 0070 6000 00C9 8000 00AE"            /* ...@...p`..…Ä..Æ */
	$"0000 0078 0000 0010 0000 0010 0000 0020"            /* ...x...........  */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0800 0300"            /* ................ */
	$"1800 02C0 2800 0230 4800 010C 8800 0103"            /* ...¿(..0H...à... */
	$"0800 0080 0800 0080 0800 0040 1800 0070"            /* ...Ä...Ä...@...p */
	$"6000 00C9 8000 00AE 0000 0078 0000 0010"            /* `..…Ä..Æ...x.... */
	$"0000 0010 0000 0020 0000 0000 0000 0000"            /* ....... ........ */
	$"0000 0001 07B3 0000 0001 0000 FFFF FFFF"            /* .....≥......ˇˇˇˇ */
	$"FFFF 0001 0000 0000 0000 0000 0000 0000"            /* ˇˇ.............. */
	$"0000 0000 0000 0000 0000 0000 0800 0300"            /* ................ */
	$"1800 02C0 2800 0230 4800 010C 8800 0103"            /* ...¿(..0H...à... */
	$"0800 0080 0800 0080 0800 0040 1800 0070"            /* ...Ä...Ä...@...p */
	$"6000 00C9 8000 00AE 0000 0078 0000 0010"            /* `..…Ä..Æ...x.... */
	$"0000 0010 0000 0020 0000 0000 0000 0000"            /* ....... ........ */
	$"0000"                                               /* .. */
};

data 'cicn' (639, "Rectangle (Filled)") {
	$"0000 0000 8004 0000 0000 0016 001A 0000"            /* ....Ä........... */
	$"0000 0000 0000 0048 0000 0048 0000 0000"            /* .......H...H.... */
	$"0001 0001 0001 0000 0000 0000 015A 0000"            /* .............Z.. */
	$"0000 0000 0000 0004 0000 0000 0016 001A"            /* ................ */
	$"0000 0000 0004 0000 0000 0016 001A 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 03FF F000 02AA B000 0355"            /* .......ˇ..™∞..U */
	$"5000 02AA B000 0355 5000 02AA B000 0355"            /* P..™∞..UP..™∞..U */
	$"5000 02AA B000 0355 5000 02AA B000 0355"            /* P..™∞..UP..™∞..U */
	$"5000 03FF F000 0000 0000 0000 0000 0000"            /* P..ˇ........... */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 03FF"            /* ...............ˇ */
	$"F000 02AA B000 0355 5000 02AA B000 0355"            /* ..™∞..UP..™∞..U */
	$"5000 02AA B000 0355 5000 02AA B000 0355"            /* P..™∞..UP..™∞..U */
	$"5000 02AA B000 0355 5000 03FF F000 0000"            /* P..™∞..UP..ˇ... */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 4E65 0000 0001 0000 FFFF FFFF"            /* ....Ne......ˇˇˇˇ */
	$"FFFF 0001 0000 0000 0000 0000 0000 0000"            /* ˇˇ.............. */
	$"0000 0000 0000 0000 0000 0000 0000 03FF"            /* ...............ˇ */
	$"F000 02AA B000 0355 5000 02AA B000 0355"            /* ..™∞..UP..™∞..U */
	$"5000 02AA B000 0355 5000 02AA B000 0355"            /* P..™∞..UP..™∞..U */
	$"5000 02AA B000 0355 5000 03FF F000 0000"            /* P..™∞..UP..ˇ... */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000"                                               /* .. */
};

data 'cicn' (640, "Oval (Filled)") {
	$"0000 0000 8004 0000 0000 0016 001A 0000"            /* ....Ä........... */
	$"0000 0000 0000 0048 0000 0048 0000 0000"            /* .......H...H.... */
	$"0001 0001 0001 0000 0000 0000 015A 0000"            /* .............Z.. */
	$"0000 0000 0000 0004 0000 0000 0016 001A"            /* ................ */
	$"0000 0000 0004 0000 0000 0016 001A 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 003F 0000 00EA C000 0155"            /* .......?...Í¿..U */
	$"6000 01AA A000 0355 5000 02AA B000 0355"            /* `..™†..UP..™∞..U */
	$"5000 02AA B000 0155 6000 01AA A000 00D5"            /* P..™∞..U`..™†..’ */
	$"C000 003F 0000 0000 0000 0000 0000 0000"            /* ¿..?............ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 003F"            /* ...............? */
	$"0000 00EA C000 0155 6000 01AA A000 0355"            /* ...Í¿..U`..™†..U */
	$"5000 02AA B000 0355 5000 02AA B000 0155"            /* P..™∞..UP..™∞..U */
	$"6000 01AA A000 00D5 C000 003F 0000 0000"            /* `..™†..’¿..?.... */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 5043 0000 0001 0000 FFFF FFFF"            /* ....PC......ˇˇˇˇ */
	$"FFFF 0001 0000 0000 0000 0000 0000 0000"            /* ˇˇ.............. */
	$"0000 0000 0000 0000 0000 0000 0000 003F"            /* ...............? */
	$"0000 00EA C000 0155 6000 01AA A000 0355"            /* ...Í¿..U`..™†..U */
	$"5000 02AA B000 0355 5000 02AA B000 0155"            /* P..™∞..UP..™∞..U */
	$"6000 01AA A000 00D5 C000 003F 0000 0000"            /* `..™†..’¿..?.... */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000"                                               /* .. */
};

data 'cicn' (641, "Polygon (Filled)") {
	$"0000 0000 8004 0000 0000 0016 001A 0000"            /* ....Ä........... */
	$"0000 0000 0000 0048 0000 0048 0000 0000"            /* .......H...H.... */
	$"0001 0001 0001 0000 0000 0000 015A 0000"            /* .............Z.. */
	$"0000 0000 0000 0004 0000 0000 0016 001A"            /* ................ */
	$"0000 0000 0004 0000 0000 0016 001A 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 001F FC00 002A A800 0055"            /* ........¸..*®..U */
	$"5000 00AA A000 0155 4000 02AA 8000 0555"            /* P..™†..U@..™Ä..U */
	$"0000 06AA 8000 0555 4000 06AA A000 0555"            /* ...™Ä..U@..™†..U */
	$"5000 07FF F800 0000 0000 0000 0000 0000"            /* P..ˇ¯........... */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 001F"            /* ................ */
	$"FC00 002A A800 0055 5000 00AA A000 0155"            /* ¸..*®..UP..™†..U */
	$"4000 02AA 8000 0555 0000 06AA 8000 0555"            /* @..™Ä..U...™Ä..U */
	$"4000 06AA A000 0555 5000 07FF F800 0000"            /* @..™†..UP..ˇ¯... */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0001 865A 0000 0001 0000 FFFF FFFF"            /* ....ÜZ......ˇˇˇˇ */
	$"FFFF 0001 0000 0000 0000 0000 0000 0000"            /* ˇˇ.............. */
	$"0000 0000 0000 0000 0000 0000 0000 001F"            /* ................ */
	$"FC00 002A A800 0055 5000 00AA A000 0155"            /* ¸..*®..UP..™†..U */
	$"4000 02AA 8000 0555 0000 06AA 8000 0555"            /* @..™Ä..U...™Ä..U */
	$"4000 06AA A000 0555 5000 07FF F800 0000"            /* @..™†..UP..ˇ¯... */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000"                                               /* .. */
};

data 'cicn' (642, "Gradient (Radial)") {
	$"0000 0000 800E 0000 0000 0016 001A 0000"            /* ....Ä........... */
	$"0000 0000 0000 0048 0000 0048 0000 0000"            /* .......H...H.... */
	$"0004 0001 0004 0000 0000 0000 0236 0000"            /* .............6.. */
	$"0000 0000 0000 0004 0000 0000 0016 001A"            /* ................ */
	$"0000 0000 0004 0000 0000 0016 001A 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 07FF F800 07FF F800 07FF"            /* .......ˇ¯..ˇ¯..ˇ */
	$"F800 07FF F800 07FF F800 07FF F800 07FF"            /* ¯..ˇ¯..ˇ¯..ˇ¯..ˇ */
	$"F800 07FF F800 07FF F800 07FF F800 07FF"            /* ¯..ˇ¯..ˇ¯..ˇ¯..ˇ */
	$"F800 07FF F800 0000 0000 0000 0000 0000"            /* ¯..ˇ¯........... */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 07FF"            /* ...............ˇ */
	$"F800 07FF F800 07F6 F800 07A9 B800 07D6"            /* ¯..ˇ¯..ˆ¯..©∏..÷ */
	$"F800 07D1 F800 0763 7800 07D4 F800 07EB"            /* ¯..—¯..cx..‘¯..Î */
	$"B800 07BD F800 07EF F800 07FF F800 0000"            /* ∏..Ω¯..Ô¯..ˇ¯... */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0002 5E81 0000 0004 0000 FFFF FFFF"            /* ....^Å......ˇˇˇˇ */
	$"FFFF 000C C000 C000 C000 000D 8000 8000"            /* ˇˇ..¿.¿.¿...Ä.Ä. */
	$"8000 000E 4000 4000 4000 000F 0000 0000"            /* Ä...@.@.@....... */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0FFF FFFF FFFF"            /* ...........ˇˇˇˇˇ */
	$"FFFF F000 0000 0000 0FFF FFEF EFEE FFFF"            /* ˇˇ......ˇˇÔÔÓˇˇ */
	$"F000 0000 0000 0FFF FEEE EEEE EFFF F000"            /* ......ˇ˛ÓÓÓÔˇ. */
	$"0000 0000 0FFF EEED EDDE EEFF F000 0000"            /* .....ˇÓÌÌﬁÓˇ... */
	$"0000 0FFF EEDD DDDD EFFF F000 0000 0000"            /* ...ˇÓ›››Ôˇ..... */
	$"0FFF FEDD C0DE EEFF F000 0000 0000 0FFF"            /* .ˇ˛›¿ﬁÓˇ......ˇ */
	$"EEED 0CDD EFFF F000 0000 0000 0FFF FEDD"            /* ÓÌ.›Ôˇ......ˇ˛› */
	$"DDDD EEFF F000 0000 0000 0FFF EEED DEDE"            /* ››Óˇ......ˇÓÌﬁﬁ */
	$"EEFF F000 0000 0000 0FFF FEEE EEEE EFFF"            /* Óˇ......ˇ˛ÓÓÓÔˇ */
	$"F000 0000 0000 0FFF FFEE FEFE FFFF F000"            /* ......ˇˇÓ˛˛ˇˇ. */
	$"0000 0000 0FFF FFFF FFFF FFFF F000 0000"            /* .....ˇˇˇˇˇˇˇ... */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000"                                     /* ...... */
};

resource 'cicn' (650, "Swap Colors") {
	2,
	{0, 0, 10, 10},
	1,
	$"2000 6000 FC00 6200 2100 0100 0100 07C0"
	$"0380 0100",
	$"2000 6000 FC00 6200 2100 0100 0100 07C0"
	$"0380 0100",
	{	/* array ColorSpec: 2 elements */
		/* [1] */
		65535, 65535, 65535,
		/* [2] */
		0, 0, 0
	},
	$"2000 6000 FC00 6200 2100 0100 0100 07C0"
	$"0380 0100"
};

resource 'cicn' (651, "Reset Colors") {
	2,
	{0, 0, 10, 10},
	1,
	$"FE00 FE00 FFC0 FFC0 FFC0 FFC0 FFC0 3FC0"
	$"3FC0 3FC0",
	$"FE00 FE00 FFC0 FE40 FE40 FE40 FE40 2040"
	$"2040 3FC0",
	{	/* array ColorSpec: 2 elements */
		/* [1] */
		65535, 65535, 65535,
		/* [2] */
		0, 0, 0
	},
	$"FE00 FE00 FFC0 FE40 FE40 FE40 FE40 2040"
	$"2040 3FC0"
};

data 'clut' (4000, "Windows 4-bit Colors") {
	$"0000 0000 0000 000F 0000 0000 0000 0000"            /* ................ */
	$"0001 0000 0000 7B7B 0002 0000 7B7B 0000"            /* ......{{....{{.. */
	$"0003 0000 7B7B 7B7B 0004 7B7B 0000 0000"            /* ....{{{{..{{.... */
	$"0005 7B7B 0000 7B7B 0006 7B7B 7B7B 0000"            /* ..{{..{{..{{{{.. */
	$"0007 BDBD BDBD BDBD 0008 7B7B 7B7B 7B7B"            /* ..ΩΩΩΩΩΩ..{{{{{{ */
	$"0009 0000 0000 FFFF 000A 0000 FFFF 0000"            /* ......ˇˇ....ˇˇ.. */
	$"000B 0000 FFFF FFFF 000C FFFF 0000 0000"            /* ....ˇˇˇˇ..ˇˇ.... */
	$"000D FFFF 0000 FFFF 000E FFFF FFFF 0000"            /* ..ˇˇ..ˇˇ..ˇˇˇˇ.. */
	$"000F FFFF FFFF FFFF"                                /* ..ˇˇˇˇˇˇ */
};

data 'clut' (4001, "Windows 8-bit Colors") {
	$"0000 0008 8000 00FF 0000 FF00 7C00 8000"            /* ....Ä..ˇ..ˇ.|.Ä. */
	$"0000 FF00 0000 3300 0000 A500 0000 2100"            /* ..ˇ...3...•...!. */
	$"0000 CC00 0000 3300 0000 FF00 3300 6600"            /* ..Ã...3...ˇ.3.f. */
	$"0000 9900 0000 3300 0000 CC00 3300 6600"            /* ..ô...3...Ã.3.f. */
	$"0000 FF00 6600 9900 0000 FF00 0000 6600"            /* ..ˇ.f.ô...ˇ...f. */
	$"0000 CC00 0000 6600 0000 6600 0000 3300"            /* ..Ã...f...f...3. */
	$"0000 FF00 3300 9900 0000 9900 3300 6600"            /* ..ˇ.3.ô...ô.3.f. */
	$"0000 CC00 6600 9900 0000 FF00 9900 CC00"            /* ..Ã.f.ô...ˇ.ô.Ã. */
	$"0000 FF00 0000 9900 0000 9900 0000 6600"            /* ..ˇ...ô...ô...f. */
	$"0000 CC00 3300 9900 0000 FF00 6600 CC00"            /* ..Ã.3.ô...ˇ.f.Ã. */
	$"0000 D600 0000 9300 0000 CC00 0000 9900"            /* ..÷...ì...Ã...ô. */
	$"0000 FF00 3300 CC00 0000 FF00 0000 CC00"            /* ..ˇ.3.Ã...ˇ...Ã. */
	$"0000 FF00 0000 FF00 0000 CC00 0000 CC00"            /* ..ˇ...ˇ...Ã...Ã. */
	$"0000 9900 0000 9900 0000 8000 0000 8000"            /* ..ô...ô...Ä...Ä. */
	$"0000 6600 0000 6600 0000 3300 0000 3300"            /* ..f...f...3...3. */
	$"0000 FF00 3300 FF00 0000 CC00 3300 CC00"            /* ..ˇ.3.ˇ...Ã.3.Ã. */
	$"0000 9900 3300 9900 0000 FF00 6600 FF00"            /* ..ô.3.ô...ˇ.f.ˇ. */
	$"0000 CC00 6600 CC00 0000 6600 3300 6600"            /* ..Ã.f.Ã...f.3.f. */
	$"0000 FF00 9900 FF00 0000 9900 6600 9900"            /* ..ˇ.ô.ˇ...ô.f.ô. */
	$"0000 CC00 9900 CC00 0000 FF00 CC00 FF00"            /* ..Ã.ô.Ã...ˇ.Ã.ˇ. */
	$"0000 CC00 0000 FF00 0000 9900 0000 CC00"            /* ..Ã...ˇ...ô...Ã. */
	$"0000 CC00 3300 FF00 0000 6600 0000 9900"            /* ..Ã.3.ˇ...f...ô. */
	$"0000 9900 3300 CC00 0000 CC00 6600 FF00"            /* ..ô.3.Ã...Ã.f.ˇ. */
	$"0000 9900 0000 FF00 0000 8000 0000 FF00"            /* ..ô...ˇ...Ä...ˇ. */
	$"0000 6600 0000 CC00 0000 3300 0000 6600"            /* ..f...Ã...3...f. */
	$"0000 9900 3300 FF00 0000 6600 3300 9900"            /* ..ô.3.ˇ...f.3.ô. */
	$"0000 9900 6600 CC00 0000 CC00 9900 FF00"            /* ..ô.f.Ã...Ã.ô.ˇ. */
	$"0000 6600 0000 FF00 0000 3300 0000 9900"            /* ..f...ˇ...3...ô. */
	$"0000 6600 3300 CC00 0000 9900 6600 FF00"            /* ..f.3.Ã...ô.f.ˇ. */
	$"0000 3300 0000 CC00 0000 6600 3300 FF00"            /* ..3...Ã...f.3.ˇ. */
	$"0000 0000 0000 FF00 0000 0000 0000 CC00"            /* ......ˇ.......Ã. */
	$"0000 0000 0000 9900 0000 0000 0000 8000"            /* ......ô.......Ä. */
	$"0000 0000 0000 6600 0000 0000 0000 3300"            /* ......f.......3. */
	$"0000 3300 3300 FF00 0000 3300 3300 CC00"            /* ..3.3.ˇ...3.3.Ã. */
	$"0000 3300 3300 9900 0000 6600 6600 FF00"            /* ..3.3.ô...f.f.ˇ. */
	$"0000 6600 6600 CC00 0000 3300 3300 6600"            /* ..f.f.Ã...3.3.f. */
	$"0000 9900 9900 FF00 0000 6600 6600 9900"            /* ..ô.ô.ˇ...f.f.ô. */
	$"0000 9900 9900 CC00 0000 CC00 CC00 FF00"            /* ..ô.ô.Ã...Ã.Ã.ˇ. */
	$"0000 A000 A000 A400 0000 0000 3300 CC00"            /* ..†.†.§.....3.Ã. */
	$"0000 3300 6600 FF00 0000 0000 3300 9900"            /* ..3.f.ˇ.....3.ô. */
	$"0000 3300 6600 CC00 0000 6600 9900 FF00"            /* ..3.f.Ã...f.ô.ˇ. */
	$"0000 0000 6600 FF00 0000 0000 6600 CC00"            /* ....f.ˇ.....f.Ã. */
	$"0000 0000 3300 6600 0000 3300 9900 FF00"            /* ....3.f...3.ô.ˇ. */
	$"0000 3300 6600 9900 0000 6600 9900 CC00"            /* ..3.f.ô...f.ô.Ã. */
	$"0000 9900 CC00 FF00 0000 A600 CA00 F000"            /* ..ô.Ã.ˇ...¶. .. */
	$"0000 0000 9900 FF00 0000 CC00 EC00 FF00"            /* ....ô.ˇ...Ã.Ï.ˇ. */
	$"0000 0000 6600 9900 0000 3300 9900 CC00"            /* ....f.ô...3.ô.Ã. */
	$"0000 6600 CC00 FF00 0000 0000 9900 CC00"            /* ..f.Ã.ˇ.....ô.Ã. */
	$"0000 3300 CC00 FF00 0000 0000 CC00 FF00"            /* ..3.Ã.ˇ.....Ã.ˇ. */
	$"0000 0000 FF00 FF00 0000 0000 CC00 CC00"            /* ....ˇ.ˇ.....Ã.Ã. */
	$"0000 0000 9900 9900 0000 0000 8000 8000"            /* ....ô.ô.....Ä.Ä. */
	$"0000 0000 6600 6600 0000 0000 3300 3300"            /* ....f.f.....3.3. */
	$"0000 3300 FF00 FF00 0000 3300 CC00 CC00"            /* ..3.ˇ.ˇ...3.Ã.Ã. */
	$"0000 3300 9900 9900 0000 6600 FF00 FF00"            /* ..3.ô.ô...f.ˇ.ˇ. */
	$"0000 6600 CC00 CC00 0000 3300 6600 6600"            /* ..f.Ã.Ã...3.f.f. */
	$"0000 9900 FF00 FF00 0000 6600 9900 9900"            /* ..ô.ˇ.ˇ...f.ô.ô. */
	$"0000 9900 CC00 CC00 0000 CC00 FF00 FF00"            /* ..ô.Ã.Ã...Ã.ˇ.ˇ. */
	$"0000 0000 FF00 CC00 0000 0000 CC00 9900"            /* ....ˇ.Ã.....Ã.ô. */
	$"0000 3300 FF00 CC00 0000 0000 9900 6600"            /* ..3.ˇ.Ã.....ô.f. */
	$"0000 3300 CC00 9900 0000 6600 FF00 CC00"            /* ..3.Ã.ô...f.ˇ.Ã. */
	$"0000 0000 FF00 9900 0000 0000 CC00 6600"            /* ....ˇ.ô.....Ã.f. */
	$"0000 0000 6600 3300 0000 3300 FF00 9900"            /* ....f.3...3.ˇ.ô. */
	$"0000 3300 9900 6600 0000 6600 CC00 9900"            /* ..3.ô.f...f.Ã.ô. */
	$"0000 9900 FF00 CC00 0000 0000 FF00 6600"            /* ..ô.ˇ.Ã.....ˇ.f. */
	$"0000 0000 9900 3300 0000 3300 CC00 6600"            /* ....ô.3...3.Ã.f. */
	$"0000 6600 FF00 9900 0000 0000 CC00 3300"            /* ..f.ˇ.ô.....Ã.3. */
	$"0000 3300 FF00 6600 0000 0000 FF00 0000"            /* ..3.ˇ.f.....ˇ... */
	$"0000 0000 CC00 0000 0000 0000 9900 0000"            /* ....Ã.......ô... */
	$"0000 0000 8000 0000 0000 0000 6600 0000"            /* ....Ä.......f... */
	$"0000 0000 3300 0000 0000 3300 FF00 3300"            /* ....3.....3.ˇ.3. */
	$"0000 3300 CC00 3300 0000 3300 9900 3300"            /* ..3.Ã.3...3.ô.3. */
	$"0000 6600 FF00 6600 0000 6600 CC00 6600"            /* ..f.ˇ.f...f.Ã.f. */
	$"0000 3300 6600 3300 0000 9900 FF00 9900"            /* ..3.f.3...ô.ˇ.ô. */
	$"0000 6600 9900 6600 0000 9900 CC00 9900"            /* ..f.ô.f...ô.Ã.ô. */
	$"0000 CC00 FF00 CC00 0000 3300 CC00 0000"            /* ..Ã.ˇ.Ã...3.Ã... */
	$"0000 6600 FF00 3300 0000 3300 9900 0000"            /* ..f.ˇ.3...3.ô... */
	$"0000 6600 CC00 3300 0000 9900 FF00 6600"            /* ..f.Ã.3...ô.ˇ.f. */
	$"0000 6600 FF00 0000 0000 6600 CC00 0000"            /* ..f.ˇ.....f.Ã... */
	$"0000 3300 6600 0000 0000 9900 FF00 3300"            /* ..3.f.....ô.ˇ.3. */
	$"0000 6600 9900 3300 0000 9900 CC00 6600"            /* ..f.ô.3...ô.Ã.f. */
	$"0000 CC00 FF00 9900 0000 9900 FF00 0000"            /* ..Ã.ˇ.ô...ô.ˇ... */
	$"0000 6600 9900 0000 0000 9900 CC00 3300"            /* ..f.ô.....ô.Ã.3. */
	$"0000 CC00 FF00 6600 0000 9900 CC00 0000"            /* ..Ã.ˇ.f...ô.Ã... */
	$"0000 CC00 FF00 3300 0000 CC00 FF00 0000"            /* ..Ã.ˇ.3...Ã.ˇ... */
	$"0000 FF00 FF00 0000 0000 CC00 CC00 0000"            /* ..ˇ.ˇ.....Ã.Ã... */
	$"0000 9900 9900 0000 0000 8000 8000 0000"            /* ..ô.ô.....Ä.Ä... */
	$"0000 6600 6600 0000 0000 3300 3300 0000"            /* ..f.f.....3.3... */
	$"0000 FF00 FF00 3300 0000 CC00 CC00 3300"            /* ..ˇ.ˇ.3...Ã.Ã.3. */
	$"0000 9900 9900 3300 0000 FF00 FF00 6600"            /* ..ô.ô.3...ˇ.ˇ.f. */
	$"0000 CC00 CC00 6600 0000 6600 6600 3300"            /* ..Ã.Ã.f...f.f.3. */
	$"0000 FF00 FF00 9900 0000 9900 9900 6600"            /* ..ˇ.ˇ.ô...ô.ô.f. */
	$"0000 CC00 CC00 9900 0000 FF00 FF00 CC00"            /* ..Ã.Ã.ô...ˇ.ˇ.Ã. */
	$"0000 E700 E700 D600 0000 AD00 A900 9000"            /* ..Á.Á.÷...≠.©.ê. */
	$"0000 FF00 CC00 0000 0000 CC00 9900 0000"            /* ..ˇ.Ã.....Ã.ô... */
	$"0000 FF00 CC00 3300 0000 9900 6600 0000"            /* ..ˇ.Ã.3...ô.f... */
	$"0000 CC00 9900 3300 0000 FF00 CC00 6600"            /* ..Ã.ô.3...ˇ.Ã.f. */
	$"0000 FF00 9900 0000 0000 CC00 6600 0000"            /* ..ˇ.ô.....Ã.f... */
	$"0000 6600 3300 0000 0000 FF00 9900 3300"            /* ..f.3.....ˇ.ô.3. */
	$"0000 9900 6600 3300 0000 CC00 9900 6600"            /* ..ô.f.3...Ã.ô.f. */
	$"0000 FF00 CC00 9900 0000 FF00 6600 0000"            /* ..ˇ.Ã.ô...ˇ.f... */
	$"0000 EF00 D600 C600 0000 9900 3300 0000"            /* ..Ô.÷.∆...ô.3... */
	$"0000 CC00 6600 3300 0000 FF00 9900 6600"            /* ..Ã.f.3...ˇ.ô.f. */
	$"0000 CC00 3300 0000 0000 FF00 6600 3300"            /* ..Ã.3.....ˇ.f.3. */
	$"0000 FF00 3300 0000 0000 FF00 0000 0000"            /* ..ˇ.3.....ˇ..... */
	$"0000 CC00 0000 0000 0000 9900 0000 0000"            /* ..Ã.......ô..... */
	$"0000 8000 0000 0000 0000 6600 0000 0000"            /* ..Ä.......f..... */
	$"0000 3300 0000 0000 0000 FF00 3300 3300"            /* ..3.......ˇ.3.3. */
	$"0000 CC00 3300 3300 0000 FF00 5000 5000"            /* ..Ã.3.3...ˇ.P.P. */
	$"0000 9900 3300 3300 0000 FF00 6600 6600"            /* ..ô.3.3...ˇ.f.f. */
	$"0000 CC00 6600 6600 0000 6600 3300 3300"            /* ..Ã.f.f...f.3.3. */
	$"0000 FF00 9900 9900 0000 9900 6600 6600"            /* ..ˇ.ô.ô...ô.f.f. */
	$"0000 CC00 9900 9900 0000 FF00 CC00 CC00"            /* ..Ã.ô.ô...ˇ.Ã.Ã. */
	$"0000 FF00 FF00 FF00 0000 FE00 FE00 FE00"            /* ..ˇ.ˇ.ˇ...˛.˛.˛. */
	$"0000 F800 F800 F800 0000 F100 F100 F100"            /* ..¯.¯.¯...Ò.Ò.Ò. */
	$"0000 EA00 EA00 EA00 0000 E300 E300 E300"            /* ..Í.Í.Í...„.„.„. */
	$"0000 DD00 DD00 DD00 0000 D700 D700 D700"            /* ..›.›.›...◊.◊.◊. */
	$"0000 CC00 CC00 CC00 0000 CB00 CB00 CB00"            /* ..Ã.Ã.Ã...À.À.À. */
	$"0000 C000 C000 C000 0000 B200 B200 B200"            /* ..¿.¿.¿...≤.≤.≤. */
	$"0000 9900 9900 9900 0000 9600 9600 9600"            /* ..ô.ô.ô...ñ.ñ.ñ. */
	$"0000 8600 8600 8600 0000 8000 8000 8000"            /* ..Ü.Ü.Ü...Ä.Ä.Ä. */
	$"0000 7F00 7F00 7F00 0000 7700 7700 7700"            /* ..........w.w.w. */
	$"0000 6600 6600 6600 0000 5F00 5F00 5F00"            /* ..f.f.f..._._._. */
	$"0000 5500 5500 5500 0000 4D00 4D00 4D00"            /* ..U.U.U...M.M.M. */
	$"0000 4200 4200 4200 0000 3900 3900 3900"            /* ..B.B.B...9.9.9. */
	$"0000 3300 3300 3300 0000 2900 2900 2900"            /* ..3.3.3...).).). */
	$"0000 2200 2200 2200 0000 1C00 1C00 1C00"            /* .."."."......... */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000"                                /* ........ */
};

data 'crsr' (290) {
	$"8001 0000 0060 0000 0092 0000 0000 0000"            /* Ä....`...í...... */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 000C 001E 703F FC3F 7F7E"            /* ..........p?¸?.~ */
	$"1FFC 07E0 1FFC 7F7E FC3F 703F 001E 000C"            /* .¸.‡.¸.~¸?p?.... */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 8002 0000 0000 0010 0010 0000"            /* ....Ä........... */
	$"0000 0000 0000 0048 0000 0048 0000 0000"            /* .......H...H.... */
	$"0001 0001 0001 0000 0000 0000 00B2 0000"            /* .............≤.. */
	$"0000 0000 0000 000C 0012 7012 1C3C 0760"            /* ..........p..<.` */
	$"01C0 0760 1C3C 7012 0012 000C 0000 0000"            /* .¿.`.<p......... */
	$"0000 0000 49A9 0000 0001 0000 FFFF FFFF"            /* ....I©......ˇˇˇˇ */
	$"FFFF 0001 0000 0000 0000"                           /* ˇˇ........ */
};

data 'crsr' (600, "Pen") {
	$"8001 0000 0060 0000 0092 0000 0000 0000"            /* Ä....`...í...... */
	$"0000 0000 00F0 0088 0108 0190 0270 0220"            /* ......à...ê.p.  */
	$"0420 0440 0840 0880 0C80 0F00 0E00 0C00"            /* . .@.@.Ä.Ä...... */
	$"0800 0000 00F0 00F8 01F8 01F0 03F0 03E0"            /* ......¯.¯...‡ */
	$"07E0 07C0 0FC0 0F80 0F80 0F00 0E00 0C00"            /* .‡.¿.¿.Ä.Ä...... */
	$"0800 0000 000E 0004 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 8002 0000 0000 0010 0010 0000"            /* ....Ä........... */
	$"0000 0000 0000 0048 0000 0048 0000 0000"            /* .......H...H.... */
	$"0001 0001 0001 0000 0000 0000 00B2 0000"            /* .............≤.. */
	$"0000 00F0 0088 0108 0190 0270 0220 0420"            /* ....à...ê.p. .  */
	$"0440 0840 0880 0C80 0F00 0E00 0C00 0800"            /* .@.@.Ä.Ä........ */
	$"0000 0000 2ED5 0000 0001 0000 FFFF FFFF"            /* .....’......ˇˇˇˇ */
	$"FFFF 0001 0000 0000 0000"                           /* ˇˇ........ */
};

data 'crsr' (601, "Eye Dropper") {
	$"8001 0000 0060 0000 0092 0000 0000 0000"            /* Ä....`...í...... */
	$"0000 0000 000E 001F 001F 00FF 007E 00B8"            /* ...........ˇ.~.∏ */
	$"0118 0228 0440 0880 1100 2200 4400 4800"            /* ...(.@.Ä..".D.H. */
	$"B000 4000 000E 001F 001F 00FF 007E 00F8"            /* ∞.@........ˇ.~.¯ */
	$"01F8 03E8 07C0 0F80 1F00 3E00 7C00 7800"            /* .¯.Ë.¿.Ä..>.|.x. */
	$"F000 4000 000E 0001 0000 0000 0000 0000"            /* .@............. */
	$"0000 0000 8002 0000 0000 0010 0010 0000"            /* ....Ä........... */
	$"0000 0000 0000 0048 0000 0048 0000 0000"            /* .......H...H.... */
	$"0001 0001 0001 0000 0000 0000 00B2 0000"            /* .............≤.. */
	$"0000 000E 001F 001F 00FF 007E 00B8 0118"            /* .........ˇ.~.∏.. */
	$"0228 0440 0880 1100 2200 4400 4800 B000"            /* .(.@.Ä..".D.H.∞. */
	$"4000 0000 31F3 0000 0001 0000 FFFF FFFF"            /* @...1Û......ˇˇˇˇ */
	$"FFFF 0001 0000 0000 0000"                           /* ˇˇ........ */
};

data 'crsr' (602, "Bucket") {
	$"8001 0000 0060 0000 0092 0000 0000 0000"            /* Ä....`...í...... */
	$"0000 0000 0700 0880 0980 0AC0 0CB0 089C"            /* .......Ä.Ä.¿.∞.ú */
	$"108E 2147 4087 800F 8017 4027 2047 1086"            /* .é!G@áÄ.Ä.@' G.Ü */
	$"0904 0600 0700 0880 0980 0BC0 0FE0 0FF0"            /* .......Ä.Ä.¿.‡. */
	$"1FF8 3FFC 7FFC FFF8 FFF0 7FE0 3FC0 1F80"            /* .¯?¸.¸ˇ¯ˇ.‡?¿.Ä */
	$"0F00 0600 000E 000D 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 8002 0000 0000 0010 0010 0000"            /* ....Ä........... */
	$"0000 0000 0000 0048 0000 0048 0000 0000"            /* .......H...H.... */
	$"0001 0001 0001 0000 0000 0000 00B2 0000"            /* .............≤.. */
	$"0000 0700 0880 0980 0AC0 0CB0 089C 108E"            /* .....Ä.Ä.¿.∞.ú.é */
	$"2147 4087 800F 8017 4027 2047 1086 0904"            /* !G@áÄ.Ä.@' G.Ü.. */
	$"0600 0000 34DA 0000 0001 0000 FFFF FFFF"            /* ....4⁄......ˇˇˇˇ */
	$"FFFF 0001 0000 0000 0000"                           /* ˇˇ........ */
};

data 'crsr' (603, "Eraser") {
	$"8001 0000 0060 0000 0092 0000 0000 0000"            /* Ä....`...í...... */
	$"0000 0000 0000 0000 01FE 0206 040A 0812"            /* .........˛...... */
	$"1024 2048 4090 FF20 8140 8180 FF00 0000"            /* .$ H@êˇ Å@ÅÄˇ... */
	$"0000 0000 0000 0000 01FE 03FE 07FE 0FFE"            /* .........˛.˛.˛.˛ */
	$"1FFC 3FF8 7FF0 FFE0 FFC0 FF80 FF00 0000"            /* .¸?¯.ˇ‡ˇ¿ˇÄˇ... */
	$"0000 0000 000C 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 8002 0000 0000 0010 0010 0000"            /* ....Ä........... */
	$"0000 0000 0000 0048 0000 0048 0000 0000"            /* .......H...H.... */
	$"0001 0001 0001 0000 0000 0000 00B2 0000"            /* .............≤.. */
	$"0000 0000 0000 01FE 0206 040A 0812 1024"            /* .......˛.......$ */
	$"2048 4090 FF20 8140 8180 FF00 0000 0000"            /*  H@êˇ Å@ÅÄˇ..... */
	$"0000 0000 394A 0000 0001 0000 FFFF FFFF"            /* ....9J......ˇˇˇˇ */
	$"FFFF 0001 0000 0000 0000"                           /* ˇˇ........ */
};

data 'crsr' (604, "Marquee") {
	$"8001 0000 0060 0000 0092 0000 0000 0000"            /* Ä....`...í...... */
	$"0000 0000 0100 0100 0100 0100 0100 0100"            /* ................ */
	$"0100 FFFE 0100 0100 0100 0100 0100 0100"            /* ..ˇ˛............ */
	$"0100 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0007 0007 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 8002 0000 0000 0010 0010 0000"            /* ....Ä........... */
	$"0000 0000 0000 0048 0000 0048 0000 0000"            /* .......H...H.... */
	$"0001 0001 0001 0000 0000 0000 00B2 0000"            /* .............≤.. */
	$"0000 0100 0100 0100 0100 0100 0100 0100"            /* ................ */
	$"FFFE 0100 0100 0100 0100 0100 0100 0100"            /* ˇ˛.............. */
	$"0000 0000 9C5B 0000 0001 0000 FFFF FFFF"            /* ....ú[......ˇˇˇˇ */
	$"FFFF 0001 0000 0000 0000"                           /* ˇˇ........ */
};

data 'crsr' (605, "Move") {
	$"8001 0000 0060 0000 0092 0000 0000 0000"            /* Ä....`...í...... */
	$"0000 0000 0000 4000 6000 7000 7800 7C00"            /* ......@.`.p.x.|. */
	$"7E20 7F70 7020 6124 43FE 0124 0020 0070"            /* ~ .pp a$C˛.$. .p */
	$"0020 0000 4000 E000 F000 F800 FC00 FE20"            /* . ..@.‡..¯.¸.˛  */
	$"FF70 FFF8 FF74 F3FE E7FF 43FE 0174 00F8"            /* ˇpˇ¯ˇtÛ˛ÁˇC˛.t.¯ */
	$"0070 0020 0001 0001 0000 0000 0000 0000"            /* .p. ............ */
	$"0000 0000 8002 0000 0000 0010 0010 0000"            /* ....Ä........... */
	$"0000 0000 0000 0048 0000 0048 0000 0000"            /* .......H...H.... */
	$"0001 0001 0001 0000 0000 0000 00B2 0000"            /* .............≤.. */
	$"0000 0000 4000 6000 7000 7800 7C00 7E20"            /* ....@.`.p.x.|.~  */
	$"7F70 7020 6124 43FE 0124 0020 0070 0020"            /* .pp a$C˛.$. .p.  */
	$"0000 0001 33F8 0000 0001 0000 FFFF FFFF"            /* ....3¯......ˇˇˇˇ */
	$"FFFF 0001 0000 0000 0000"                           /* ˇˇ........ */
};

data 'crsr' (606, "Lasso") {
	$"8001 0000 0060 0000 0092 0000 0000 0000"            /* Ä....`...í...... */
	$"0000 0000 03F8 1C06 2001 4001 8001 8006"            /* .....¯.. .@.Ä.Ä. */
	$"8038 71C0 CE00 A800 7000 1000 1000 2000"            /* Ä8q¿Œ.®.p..... . */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 000D 0002 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 8002 0000 0000 0010 0010 0000"            /* ....Ä........... */
	$"0000 0000 0000 0048 0000 0048 0000 0000"            /* .......H...H.... */
	$"0001 0001 0001 0000 0000 0000 00B2 0000"            /* .............≤.. */
	$"0000 03F8 1C06 2001 4001 8001 8006 8038"            /* ...¯.. .@.Ä.Ä.Ä8 */
	$"71C0 CE00 A800 7000 1000 1000 2000 0000"            /* q¿Œ.®.p..... ... */
	$"0000 0003 61D7 0000 0001 0000 FFFF FFFF"            /* ....a◊......ˇˇˇˇ */
	$"FFFF 0001 0000 0000 0000"                           /* ˇˇ........ */
};

data 'crsr' (607, "Magic Wand") {
	$"8001 0000 0060 0000 0092 0000 0000 0000"            /* Ä....`...í...... */
	$"0000 0000 1000 4400 2800 9200 2800 4400"            /* ......D.(.í.(.D. */
	$"1100 0280 0140 00E0 0070 0038 001C 0008"            /* ...Ä.@.‡.p.8.... */
	$"0000 0000 1000 5400 3800 FE00 3800 5400"            /* ......T.8.˛.8.T. */
	$"1100 0380 01C0 00E0 0070 0038 001C 0008"            /* ...Ä.¿.‡.p.8.... */
	$"0000 0000 0003 0003 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 8002 0000 0000 0010 0010 0000"            /* ....Ä........... */
	$"0000 0000 0000 0048 0000 0048 0000 0000"            /* .......H...H.... */
	$"0001 0001 0001 0000 0000 0000 00B2 0000"            /* .............≤.. */
	$"0000 1000 4400 2800 9200 2800 4400 1100"            /* ....D.(.í.(.D... */
	$"0280 0140 00E0 0070 0038 001C 0008 0000"            /* .Ä.@.‡.p.8...... */
	$"0000 0003 6933 0000 0001 0000 FFFF FFFF"            /* ....i3......ˇˇˇˇ */
	$"FFFF 0001 0000 0000 0000"                           /* ˇˇ........ */
};

data 'crsr' (614, "Pan") {
	$"8001 0000 0060 0000 0092 0000 0000 0000"            /* Ä....`...í...... */
	$"0000 0000 0180 1A70 2648 264A 124D 1249"            /* .....Ä.p&H&J.M.I */
	$"6809 9801 8802 4002 2002 2004 1004 0808"            /* h.ò.à.@. . ..... */
	$"0408 0408 0180 1BF0 3FF8 3FFA 1FFF 1FFF"            /* .....Ä.?¯?˙.ˇ.ˇ */
	$"6FFF FFFF FFFE 7FFE 3FFE 3FFC 1FFC 0FF8"            /* oˇˇˇˇ˛.˛?˛?¸.¸.¯ */
	$"07F8 07F8 0008 0007 0000 0000 0000 0000"            /* .¯.¯............ */
	$"0000 0000 8002 0000 0000 0010 0010 0000"            /* ....Ä........... */
	$"0000 0000 0000 0048 0000 0048 0000 0000"            /* .......H...H.... */
	$"0001 0001 0001 0000 0000 0000 00B2 0000"            /* .............≤.. */
	$"0000 0180 1A70 2648 264A 124D 1249 6809"            /* ...Ä.p&H&J.M.Ih. */
	$"9801 8802 4002 2002 2004 1004 0808 0408"            /* ò.à.@. . ....... */
	$"0408 0003 1F1B 0000 0001 0000 FFFF FFFF"            /* ............ˇˇˇˇ */
	$"FFFF 0001 0000 0000 0000"                           /* ˇˇ........ */
};

data 'crsr' (615, "Zoom") {
	$"8001 0000 0060 0000 0092 0000 0000 0000"            /* Ä....`...í...... */
	$"0000 0000 0F00 30C0 4020 4620 8610 9F90"            /* ......0¿@ F Ü.üê */
	$"9F90 8610 4620 4020 30F0 0F38 001C 000E"            /* üêÜ.F @ 0.8.... */
	$"0007 0002 0F00 3FC0 7FE0 7FE0 FFF0 FFF0"            /* ......?¿.‡.‡ˇˇ */
	$"FFF0 FFF0 7FE0 7FE0 3FF0 0F38 001C 000E"            /* ˇˇ.‡.‡?.8.... */
	$"0007 0002 0006 0006 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 8002 0000 0000 0010 0010 0000"            /* ....Ä........... */
	$"0000 0000 0000 0048 0000 0048 0000 0000"            /* .......H...H.... */
	$"0001 0001 0001 0000 0000 0000 00B2 0000"            /* .............≤.. */
	$"0000 0F00 30C0 4020 4620 8610 9F90 9F90"            /* ....0¿@ F Ü.üêüê */
	$"8610 4620 4020 30F0 0F38 001C 000E 0007"            /* Ü.F @ 0.8...... */
	$"0002 0000 7E7A 0000 0001 0000 FFFF FFFF"            /* ....~z......ˇˇˇˇ */
	$"FFFF 0001 0000 0000 0000"                           /* ˇˇ........ */
};

data 'crsr' (636, "Lasso Polygonal") {
	$"8001 0000 0060 0000 0092 0000 0000 0000"            /* Ä....`...í...... */
	$"0000 0000 0002 C006 B00A 8C12 4322 40C2"            /* ......¿.∞.å.C"@¬ */
	$"2002 2002 1006 1C18 3260 2B80 1E00 0400"            /*  . .....2`+Ä.... */
	$"0400 0800 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 000F 0004 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 8002 0000 0000 0010 0010 0000"            /* ....Ä........... */
	$"0000 0000 0000 0048 0000 0048 0000 0000"            /* .......H...H.... */
	$"0001 0001 0001 0000 0000 0000 00B2 0000"            /* .............≤.. */
	$"0000 0002 C006 B00A 8C12 4322 40C2 2002"            /* ....¿.∞.å.C"@¬ . */
	$"2002 1006 1C18 3260 2B80 1E00 0400 0400"            /*  .....2`+Ä...... */
	$"0800 0001 0911 0000 0001 0000 FFFF FFFF"            /* ............ˇˇˇˇ */
	$"FFFF 0001 0000 0000 0000"                           /* ˇˇ........ */
};

data 'crsr' (640, "Marquee Additive") {
	$"8001 0000 0060 0000 0092 0000 0000 0000"            /* Ä....`...í...... */
	$"0000 0000 0100 0100 0100 0100 0100 0100"            /* ................ */
	$"0100 FFFE 0100 0100 0100 0104 0104 011F"            /* ..ˇ˛............ */
	$"0104 0004 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0007 0007 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 8002 0000 0000 0010 0010 0000"            /* ....Ä........... */
	$"0000 0000 0000 0048 0000 0048 0000 0000"            /* .......H...H.... */
	$"0001 0001 0001 0000 0000 0000 00B2 0000"            /* .............≤.. */
	$"0000 0100 0100 0100 0100 0100 0100 0100"            /* ................ */
	$"FFFE 0100 0100 0100 0104 0104 011F 0104"            /* ˇ˛.............. */
	$"0004 0003 E85F 0000 0001 0000 FFFF FFFF"            /* ....Ë_......ˇˇˇˇ */
	$"FFFF 0001 0000 0000 0000"                           /* ˇˇ........ */
};

data 'crsr' (641, "Marquee Subtractive") {
	$"8001 0000 0060 0000 0092 0000 0000 0000"            /* Ä....`...í...... */
	$"0000 0000 0100 0100 0100 0100 0100 0100"            /* ................ */
	$"0100 FFFE 0100 0100 0100 0100 0100 011F"            /* ..ˇ˛............ */
	$"0100 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0007 0007 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 8002 0000 0000 0010 0010 0000"            /* ....Ä........... */
	$"0000 0000 0000 0048 0000 0048 0000 0000"            /* .......H...H.... */
	$"0001 0001 0001 0000 0000 0000 00B2 0000"            /* .............≤.. */
	$"0000 0100 0100 0100 0100 0100 0100 0100"            /* ................ */
	$"FFFE 0100 0100 0100 0100 0100 011F 0100"            /* ˇ˛.............. */
	$"0000 0003 E7B4 0000 0001 0000 FFFF FFFF"            /* ....Á¥......ˇˇˇˇ */
	$"FFFF 0001 0000 0000 0000"                           /* ˇˇ........ */
};

data 'crsr' (642, "Lasso Additive") {
	$"8001 0000 0060 0000 0092 0000 0000 0000"            /* Ä....`...í...... */
	$"0000 0000 03F8 1C06 2001 4001 8001 8006"            /* .....¯.. .@.Ä.Ä. */
	$"8038 71C0 CE00 A800 7008 1008 103E 2008"            /* Ä8q¿Œ.®.p....> . */
	$"0008 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 000D 0002 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 8002 0000 0000 0010 0010 0000"            /* ....Ä........... */
	$"0000 0000 0000 0048 0000 0048 0000 0000"            /* .......H...H.... */
	$"0001 0001 0001 0000 0000 0000 00B2 0000"            /* .............≤.. */
	$"0000 03F8 1C06 2001 4001 8001 8006 8038"            /* ...¯.. .@.Ä.Ä.Ä8 */
	$"71C0 CE00 A800 7008 1008 103E 2008 0008"            /* q¿Œ.®.p....> ... */
	$"0000 0003 E3FF 0000 0001 0000 FFFF FFFF"            /* ....„ˇ......ˇˇˇˇ */
	$"FFFF 0001 0000 0000 0000"                           /* ˇˇ........ */
};

data 'crsr' (643, "Lasso Subtractive") {
	$"8001 0000 0060 0000 0092 0000 0000 0000"            /* Ä....`...í...... */
	$"0000 0000 03F8 1C06 2001 4001 8001 8006"            /* .....¯.. .@.Ä.Ä. */
	$"8038 71C0 CE00 A800 7000 1000 103E 2000"            /* Ä8q¿Œ.®.p....> . */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 000D 0002 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 8002 0000 0000 0010 0010 0000"            /* ....Ä........... */
	$"0000 0000 0000 0048 0000 0048 0000 0000"            /* .......H...H.... */
	$"0001 0001 0001 0000 0000 0000 00B2 0000"            /* .............≤.. */
	$"0000 03F8 1C06 2001 4001 8001 8006 8038"            /* ...¯.. .@.Ä.Ä.Ä8 */
	$"71C0 CE00 A800 7000 1000 103E 2000 0000"            /* q¿Œ.®.p....> ... */
	$"0000 0003 E6AB 0000 0001 0000 FFFF FFFF"            /* ....Ê´......ˇˇˇˇ */
	$"FFFF 0001 0000 0000 0000"                           /* ˇˇ........ */
};

data 'crsr' (644, "Magic Wand Additive") {
	$"8001 0000 0060 0000 0092 0000 0000 0000"            /* Ä....`...í...... */
	$"0000 0000 1000 4400 2800 9200 2800 4400"            /* ......D.(.í.(.D. */
	$"1100 0280 0140 00E0 1070 1038 7C1C 1008"            /* ...Ä.@.‡.p.8|... */
	$"1000 0000 1000 5400 3800 FE00 3800 5400"            /* ......T.8.˛.8.T. */
	$"1100 0380 01C0 00E0 0070 0038 001C 0008"            /* ...Ä.¿.‡.p.8.... */
	$"0000 0000 0003 0003 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 8002 0000 0000 0010 0010 0000"            /* ....Ä........... */
	$"0000 0000 0000 0048 0000 0048 0000 0000"            /* .......H...H.... */
	$"0001 0001 0001 0000 0000 0000 00B2 0000"            /* .............≤.. */
	$"0000 1000 4400 2800 9200 2800 4400 1100"            /* ....D.(.í.(.D... */
	$"0280 0140 00E0 1070 1038 7C1C 1008 1000"            /* .Ä.@.‡.p.8|..... */
	$"0000 0003 8CD8 0000 0001 0000 FFFF FFFF"            /* ....åÿ......ˇˇˇˇ */
	$"FFFF 0001 0000 0000 0000"                           /* ˇˇ........ */
};

data 'crsr' (645, "Magic Wand Subtractive") {
	$"8001 0000 0060 0000 0092 0000 0000 0000"            /* Ä....`...í...... */
	$"0000 0000 1000 4400 2800 9200 2800 4400"            /* ......D.(.í.(.D. */
	$"1100 0280 0140 00E0 0070 0038 7C1C 0008"            /* ...Ä.@.‡.p.8|... */
	$"0000 0000 1000 5400 3800 FE00 3800 5400"            /* ......T.8.˛.8.T. */
	$"1100 0380 01C0 00E0 0070 0038 001C 0008"            /* ...Ä.¿.‡.p.8.... */
	$"0000 0000 0003 0003 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 8002 0000 0000 0010 0010 0000"            /* ....Ä........... */
	$"0000 0000 0000 0048 0000 0048 0000 0000"            /* .......H...H.... */
	$"0001 0001 0001 0000 0000 0000 00B2 0000"            /* .............≤.. */
	$"0000 1000 4400 2800 9200 2800 4400 1100"            /* ....D.(.í.(.D... */
	$"0280 0140 00E0 0070 0038 7C1C 0008 0000"            /* .Ä.@.‡.p.8|..... */
	$"0000 0003 E72E 0000 0001 0000 FFFF FFFF"            /* ....Á.......ˇˇˇˇ */
	$"FFFF 0001 0000 0000 0000"                           /* ˇˇ........ */
};

data 'crsr' (646, "Move Selection Outline") {
	$"8001 0000 0060 0000 0092 0000 0000 0000"            /* Ä....`...í...... */
	$"0000 0000 0000 4000 6000 5000 4800 4400"            /* ......@.`.P.H.D. */
	$"4200 4F00 5000 636C 4204 0000 0204 036C"            /* B.O.P.clB......l */
	$"0000 0000 C000 E000 F000 F800 FC00 FE00"            /* ....¿.‡..¯.¸.˛. */
	$"FF00 FF80 FFFE F7FE E7FE C7FE 07FE 07FE"            /* ˇ.ˇÄˇ˛˜˛Á˛«˛.˛.˛ */
	$"07FE 0000 0001 0001 0000 0000 0000 0000"            /* .˛.............. */
	$"0000 0000 8002 0000 0000 0010 0010 0000"            /* ....Ä........... */
	$"0000 0000 0000 0048 0000 0048 0000 0000"            /* .......H...H.... */
	$"0001 0001 0001 0000 0000 0000 00B2 0000"            /* .............≤.. */
	$"0000 0000 4000 6000 5000 4800 4400 4200"            /* ....@.`.P.H.D.B. */
	$"4F00 5000 636C 4204 0000 0204 036C 0000"            /* O.P.clB......l.. */
	$"0000 0000 C646 0000 0001 0000 FFFF FFFF"            /* ....∆F......ˇˇˇˇ */
	$"FFFF 0001 0000 0000 0000"                           /* ˇˇ........ */
};

data 'crsr' (647, "Move Selection Contents") {
	$"8001 0000 0060 0000 0092 0000 0000 0000"            /* Ä....`...í...... */
	$"0000 0000 0000 4000 6000 7000 7800 7C00"            /* ......@.`.p.x.|. */
	$"7E00 7F00 7000 6000 4000 0000 0000 0000"            /* ~...p.`.@....... */
	$"0000 0000 C000 E000 F000 F800 FC00 FE00"            /* ....¿.‡..¯.¸.˛. */
	$"FF00 FF80 FF80 F000 E000 C000 0000 0000"            /* ˇ.ˇÄˇÄ.‡.¿..... */
	$"0000 0000 0001 0001 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 8002 0000 0000 0010 0010 0000"            /* ....Ä........... */
	$"0000 0000 0000 0048 0000 0048 0000 0000"            /* .......H...H.... */
	$"0001 0001 0001 0000 0000 0000 00B2 0000"            /* .............≤.. */
	$"0000 0000 4000 6000 7000 7800 7C00 7E00"            /* ....@.`.p.x.|.~. */
	$"7F00 7000 6000 4000 0000 0000 0000 0000"            /* ..p.`.@......... */
	$"0000 0000 D58C 0000 0001 0000 FFFF FFFF"            /* ....’å......ˇˇˇˇ */
	$"FFFF 0001 0000 0000 0000"                           /* ˇˇ........ */
};

data 'crsr' (648, "Move Float Selection") {
	$"8001 0000 0060 0000 0092 0000 0000 0000"            /* Ä....`...í...... */
	$"0000 0000 0000 4000 6000 7000 7800 7C00"            /* ......@.`.p.x.|. */
	$"7E00 7F00 700C 6712 41DC 0070 01DC 0712"            /* ~...p.g.A‹.p.‹.. */
	$"000C 0000 C000 E000 F000 F800 FC00 FE00"            /* ....¿.‡..¯.¸.˛. */
	$"FF00 FF8C FF9E FFFF EFFE E1FC 0FFE 0FFF"            /* ˇ.ˇåˇûˇˇÔ˛·¸.˛.ˇ */
	$"0F1E 000C 0001 0001 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 8002 0000 0000 0010 0010 0000"            /* ....Ä........... */
	$"0000 0000 0000 0048 0000 0048 0000 0000"            /* .......H...H.... */
	$"0001 0001 0001 0000 0000 0000 00B2 0000"            /* .............≤.. */
	$"0000 0000 4000 6000 7000 7800 7C00 7E00"            /* ....@.`.p.x.|.~. */
	$"7F00 700C 6712 41DC 0070 01DC 0712 000C"            /* ..p.g.A‹.p.‹.... */
	$"0000 0000 F9D2 0000 0001 0000 FFFF FFFF"            /* ....˘“......ˇˇˇˇ */
	$"FFFF 0001 0000 0000 0000"                           /* ˇˇ........ */
};

data 'crsr' (649, "Lasso Polygonal Additive") {
	$"8001 0000 0060 0000 0092 0000 0000 0000"            /* Ä....`...í...... */
	$"0000 0000 0002 C006 B00A 8C12 4322 40C2"            /* ......¿.∞.å.C"@¬ */
	$"2002 2002 1006 1C18 3260 2B84 1E04 041F"            /*  . .....2`+Ñ.... */
	$"0404 0804 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 000F 0004 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 8002 0000 0000 0010 0010 0000"            /* ....Ä........... */
	$"0000 0000 0000 0048 0000 0048 0000 0000"            /* .......H...H.... */
	$"0001 0001 0001 0000 0000 0000 00B2 0000"            /* .............≤.. */
	$"0000 0002 C006 B00A 8C12 4322 40C2 2002"            /* ....¿.∞.å.C"@¬ . */
	$"2002 1006 1C18 3260 2B84 1E04 041F 0404"            /*  .....2`+Ñ...... */
	$"0804 0001 0FC3 0000 0001 0000 FFFF FFFF"            /* .....√......ˇˇˇˇ */
	$"FFFF 0001 0000 0000 0000"                           /* ˇˇ........ */
};

data 'crsr' (650, "Lasso Polygonal Subtractive") {
	$"8001 0000 0060 0000 0092 0000 0000 0000"            /* Ä....`...í...... */
	$"0000 0000 0002 C006 B00A 8C12 4322 40C2"            /* ......¿.∞.å.C"@¬ */
	$"2002 2002 1006 1C18 3260 2B80 1E00 041F"            /*  . .....2`+Ä.... */
	$"0400 0800 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 000F 0004 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 8002 0000 0000 0010 0010 0000"            /* ....Ä........... */
	$"0000 0000 0000 0048 0000 0048 0000 0000"            /* .......H...H.... */
	$"0001 0001 0001 0000 0000 0000 00B2 0000"            /* .............≤.. */
	$"0000 0002 C006 B00A 8C12 4322 40C2 2002"            /* ....¿.∞.å.C"@¬ . */
	$"2002 1006 1C18 3260 2B80 1E00 041F 0400"            /*  .....2`+Ä...... */
	$"0800 0001 1FB5 0000 0001 0000 FFFF FFFF"            /* .....µ......ˇˇˇˇ */
	$"FFFF 0001 0000 0000 0000"                           /* ˇˇ........ */
};

data 'crsr' (651, "Zoom") {
	$"8001 0000 0060 0000 0092 0000 0000 0000"            /* Ä....`...í...... */
	$"0000 0000 0F00 30C0 4020 4020 8010 9F90"            /* ......0¿@ @ Ä.üê */
	$"9F90 8010 4020 4020 30F0 0F38 001C 000E"            /* üêÄ.@ @ 0.8.... */
	$"0007 0002 0F00 3FC0 7FE0 7FE0 FFF0 FFF0"            /* ......?¿.‡.‡ˇˇ */
	$"FFF0 FFF0 7FE0 7FE0 3FF0 0F38 001C 000E"            /* ˇˇ.‡.‡?.8.... */
	$"0007 0002 0006 0006 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 8002 0000 0000 0010 0010 0000"            /* ....Ä........... */
	$"0000 0000 0000 0048 0000 0048 0000 0000"            /* .......H...H.... */
	$"0001 0001 0001 0000 0000 0000 00B2 0000"            /* .............≤.. */
	$"0000 0F00 30C0 4020 4020 8010 9F90 9F90"            /* ....0¿@ @ Ä.üêüê */
	$"8010 4020 4020 30F0 0F38 001C 000E 0007"            /* Ä.@ @ 0.8...... */
	$"0002 0000 8034 0000 0001 0000 FFFF FFFF"            /* ....Ä4......ˇˇˇˇ */
	$"FFFF 0001 0000 0000 0000"                           /* ˇˇ........ */
};

data 'crsr' (652, "Zoom") {
	$"8001 0000 0060 0000 0092 0000 0000 0000"            /* Ä....`...í...... */
	$"0000 0000 0F00 30C0 4020 4020 8010 8010"            /* ......0¿@ @ Ä.Ä. */
	$"8010 8010 4020 4020 30F0 0F38 001C 000E"            /* Ä.Ä.@ @ 0.8.... */
	$"0007 0002 0F00 3FC0 7FE0 7FE0 FFF0 FFF0"            /* ......?¿.‡.‡ˇˇ */
	$"FFF0 FFF0 7FE0 7FE0 3FF0 0F38 001C 000E"            /* ˇˇ.‡.‡?.8.... */
	$"0007 0002 0006 0006 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 8002 0000 0000 0010 0010 0000"            /* ....Ä........... */
	$"0000 0000 0000 0048 0000 0048 0000 0000"            /* .......H...H.... */
	$"0001 0001 0001 0000 0000 0000 00B2 0000"            /* .............≤.. */
	$"0000 0F00 30C0 4020 4020 8010 8010 8010"            /* ....0¿@ @ Ä.Ä.Ä. */
	$"8010 4020 4020 30F0 0F38 001C 000E 0007"            /* Ä.@ @ 0.8...... */
	$"0002 0000 8138 0000 0001 0000 FFFF FFFF"            /* ....Å8......ˇˇˇˇ */
	$"FFFF 0001 0000 0000 0000"                           /* ˇˇ........ */
};

resource 'dctb' (128) {
	{	/* array ColorSpec: 5 elements */
		/* [1] */
		wContentColor, 65535, 65535, 65535,
		/* [2] */
		wFrameColor, 0, 0, 0,
		/* [3] */
		wTextColor, 0, 0, 0,
		/* [4] */
		wHiliteColor, 0, 0, 0,
		/* [5] */
		wTitleBarColor, 65535, 65535, 65535
	}
};

resource 'dctb' (129) {
	{	/* array ColorSpec: 5 elements */
		/* [1] */
		wContentColor, 65535, 65535, 65535,
		/* [2] */
		wFrameColor, 0, 0, 0,
		/* [3] */
		wTextColor, 0, 0, 0,
		/* [4] */
		wHiliteColor, 0, 0, 0,
		/* [5] */
		wTitleBarColor, 65535, 65535, 65535
	}
};

resource 'dctb' (250) {
	{	/* array ColorSpec: 5 elements */
		/* [1] */
		wContentColor, 65535, 65535, 65535,
		/* [2] */
		wFrameColor, 0, 0, 0,
		/* [3] */
		wTextColor, 0, 0, 0,
		/* [4] */
		wHiliteColor, 0, 0, 0,
		/* [5] */
		wTitleBarColor, 65535, 65535, 65535
	}
};

resource 'dctb' (260) {
	{	/* array ColorSpec: 5 elements */
		/* [1] */
		wContentColor, 65535, 65535, 65535,
		/* [2] */
		wFrameColor, 0, 0, 0,
		/* [3] */
		wTextColor, 0, 0, 0,
		/* [4] */
		wHiliteColor, 0, 0, 0,
		/* [5] */
		wTitleBarColor, 65535, 65535, 65535
	}
};

resource 'dctb' (270) {
	{	/* array ColorSpec: 5 elements */
		/* [1] */
		wContentColor, 65535, 65535, 65535,
		/* [2] */
		wFrameColor, 0, 0, 0,
		/* [3] */
		wTextColor, 0, 0, 0,
		/* [4] */
		wHiliteColor, 0, 0, 0,
		/* [5] */
		wTitleBarColor, 65535, 65535, 65535
	}
};

resource 'dctb' (280) {
	{	/* array ColorSpec: 5 elements */
		/* [1] */
		wContentColor, 65535, 65535, 65535,
		/* [2] */
		wFrameColor, 0, 0, 0,
		/* [3] */
		wTextColor, 0, 0, 0,
		/* [4] */
		wHiliteColor, 0, 0, 0,
		/* [5] */
		wTitleBarColor, 65535, 65535, 65535
	}
};

resource 'dctb' (290) {
	{	/* array ColorSpec: 5 elements */
		/* [1] */
		wContentColor, 65535, 65535, 65535,
		/* [2] */
		wFrameColor, 0, 0, 0,
		/* [3] */
		wTextColor, 0, 0, 0,
		/* [4] */
		wHiliteColor, 0, 0, 0,
		/* [5] */
		wTitleBarColor, 65535, 65535, 65535
	}
};

resource 'dctb' (300) {
	{	/* array ColorSpec: 5 elements */
		/* [1] */
		wContentColor, 65535, 65535, 65535,
		/* [2] */
		wFrameColor, 0, 0, 0,
		/* [3] */
		wTextColor, 0, 0, 0,
		/* [4] */
		wHiliteColor, 0, 0, 0,
		/* [5] */
		wTitleBarColor, 65535, 65535, 65535
	}
};

resource 'dctb' (301) {
	{	/* array ColorSpec: 5 elements */
		/* [1] */
		wContentColor, 65535, 65535, 65535,
		/* [2] */
		wFrameColor, 0, 0, 0,
		/* [3] */
		wTextColor, 0, 0, 0,
		/* [4] */
		wHiliteColor, 0, 0, 0,
		/* [5] */
		wTitleBarColor, 65535, 65535, 65535
	}
};

resource 'dctb' (1000) {
	{	/* array ColorSpec: 5 elements */
		/* [1] */
		wContentColor, 65535, 65535, 65535,
		/* [2] */
		wFrameColor, 0, 0, 0,
		/* [3] */
		wTextColor, 0, 0, 0,
		/* [4] */
		wHiliteColor, 0, 0, 0,
		/* [5] */
		wTitleBarColor, 65535, 65535, 65535
	}
};

resource 'dctb' (1001) {
	{	/* array ColorSpec: 5 elements */
		/* [1] */
		wContentColor, 65535, 65535, 65535,
		/* [2] */
		wFrameColor, 0, 0, 0,
		/* [3] */
		wTextColor, 0, 0, 0,
		/* [4] */
		wHiliteColor, 0, 0, 0,
		/* [5] */
		wTitleBarColor, 65535, 65535, 65535
	}
};

resource 'dctb' (1002) {
	{	/* array ColorSpec: 5 elements */
		/* [1] */
		wContentColor, 65535, 65535, 65535,
		/* [2] */
		wFrameColor, 0, 0, 0,
		/* [3] */
		wTextColor, 0, 0, 0,
		/* [4] */
		wHiliteColor, 0, 0, 0,
		/* [5] */
		wTitleBarColor, 65535, 65535, 65535
	}
};

resource 'dctb' (1003) {
	{	/* array ColorSpec: 5 elements */
		/* [1] */
		wContentColor, 65535, 65535, 65535,
		/* [2] */
		wFrameColor, 0, 0, 0,
		/* [3] */
		wTextColor, 0, 0, 0,
		/* [4] */
		wHiliteColor, 0, 0, 0,
		/* [5] */
		wTitleBarColor, 65535, 65535, 65535
	}
};

resource 'dctb' (1010) {
	{	/* array ColorSpec: 5 elements */
		/* [1] */
		wContentColor, 65535, 65535, 65535,
		/* [2] */
		wFrameColor, 0, 0, 0,
		/* [3] */
		wTextColor, 0, 0, 0,
		/* [4] */
		wHiliteColor, 0, 0, 0,
		/* [5] */
		wTitleBarColor, 65535, 65535, 65535
	}
};

resource 'dctb' (1011) {
	{	/* array ColorSpec: 5 elements */
		/* [1] */
		wContentColor, 65535, 65535, 65535,
		/* [2] */
		wFrameColor, 0, 0, 0,
		/* [3] */
		wTextColor, 0, 0, 0,
		/* [4] */
		wHiliteColor, 0, 0, 0,
		/* [5] */
		wTitleBarColor, 65535, 65535, 65535
	}
};

resource 'dctb' (1012) {
	{	/* array ColorSpec: 5 elements */
		/* [1] */
		wContentColor, 65535, 65535, 65535,
		/* [2] */
		wFrameColor, 0, 0, 0,
		/* [3] */
		wTextColor, 0, 0, 0,
		/* [4] */
		wHiliteColor, 0, 0, 0,
		/* [5] */
		wTitleBarColor, 65535, 65535, 65535
	}
};

resource 'dctb' (1410) {
	{	/* array ColorSpec: 5 elements */
		/* [1] */
		wContentColor, 65535, 65535, 65535,
		/* [2] */
		wFrameColor, 0, 0, 0,
		/* [3] */
		wTextColor, 0, 0, 0,
		/* [4] */
		wHiliteColor, 0, 0, 0,
		/* [5] */
		wTitleBarColor, 65535, 65535, 65535
	}
};

resource 'dctb' (2000) {
	{	/* array ColorSpec: 5 elements */
		/* [1] */
		wContentColor, 65535, 65535, 65535,
		/* [2] */
		wFrameColor, 0, 0, 0,
		/* [3] */
		wTextColor, 0, 0, 0,
		/* [4] */
		wHiliteColor, 0, 0, 0,
		/* [5] */
		wTitleBarColor, 65535, 65535, 65535
	}
};

resource 'dctb' (3001) {
	{	/* array ColorSpec: 5 elements */
		/* [1] */
		wContentColor, 65535, 65535, 65535,
		/* [2] */
		wFrameColor, 0, 0, 0,
		/* [3] */
		wTextColor, 0, 0, 0,
		/* [4] */
		wHiliteColor, 0, 0, 0,
		/* [5] */
		wTitleBarColor, 65535, 65535, 65535
	}
};

resource 'dctb' (3002, purgeable) {
	{	/* array ColorSpec: 5 elements */
		/* [1] */
		wContentColor, 65535, 65535, 65535,
		/* [2] */
		wFrameColor, 0, 0, 0,
		/* [3] */
		wTextColor, 0, 0, 0,
		/* [4] */
		wHiliteColor, 0, 0, 0,
		/* [5] */
		wTitleBarColor, 65535, 65535, 65535
	}
};

resource 'dctb' (4000) {
	{	/* array ColorSpec: 5 elements */
		/* [1] */
		wContentColor, 65535, 65535, 65535,
		/* [2] */
		wFrameColor, 0, 0, 0,
		/* [3] */
		wTextColor, 0, 0, 0,
		/* [4] */
		wHiliteColor, 0, 0, 0,
		/* [5] */
		wTitleBarColor, 65535, 65535, 65535
	}
};

resource 'dctb' (4001) {
	{	/* array ColorSpec: 5 elements */
		/* [1] */
		wContentColor, 65535, 65535, 65535,
		/* [2] */
		wFrameColor, 0, 0, 0,
		/* [3] */
		wTextColor, 0, 0, 0,
		/* [4] */
		wHiliteColor, 0, 0, 0,
		/* [5] */
		wTitleBarColor, 65535, 65535, 65535
	}
};

resource 'dctb' (9999) {
	{	/* array ColorSpec: 5 elements */
		/* [1] */
		wContentColor, 65535, 65535, 65535,
		/* [2] */
		wFrameColor, 0, 0, 0,
		/* [3] */
		wTextColor, 0, 0, 0,
		/* [4] */
		wHiliteColor, 0, 0, 0,
		/* [5] */
		wTitleBarColor, 65535, 65535, 65535
	}
};

resource 'dlgx' (-6043) {
	versionZero {
		9
	}
};

resource 'dlgx' (-6042) {
	versionZero {
		9
	}
};

resource 'dlgx' (128) {
	versionZero {
		15
	}
};

resource 'dlgx' (129) {
	versionZero {
		15
	}
};

resource 'dlgx' (250) {
	versionZero {
		11
	}
};

resource 'dlgx' (300) {
	versionZero {
		15
	}
};

resource 'dlgx' (1000) {
	versionZero {
		15
	}
};

resource 'dlgx' (1001) {
	versionZero {
		15
	}
};

resource 'dlgx' (1002) {
	versionZero {
		15
	}
};

resource 'dlgx' (1003) {
	versionZero {
		15
	}
};

resource 'dlgx' (1010) {
	versionZero {
		15
	}
};

resource 'dlgx' (1410) {
	versionZero {
		15
	}
};

resource 'dlgx' (3001) {
	versionZero {
		9
	}
};

resource 'dlgx' (3002) {
	versionZero {
		9
	}
};

resource 'dlgx' (4000) {
	versionZero {
		15
	}
};

resource 'dlgx' (4001) {
	versionZero {
		15
	}
};

resource 'dlgx' (9999) {
	versionZero {
		15
	}
};

data 'hfdr' (-5696, purgeable) {
	$"0002 0000 0000 0000 0000 0001 0008 0003"            /* ................ */
	$"0096 0001"                                          /* .ñ.. */
};

data 'hmnu' (128, "Apple", purgeable) {
	$"0002 0000 0000 0000 0000 0003 0004 0100"            /* ................ */
	$"0004 0100 0014 0003 0097 0001 0097 0002"            /* .........ó...ó.. */
	$"0000 0000 0000 0000 0014 0003 0097 0003"            /* .............ó.. */
	$"0097 0004 0000 0000 0000 0000"                      /* .ó.......... */
};

data 'hmnu' (129, "File", purgeable) {
	$"0002 0000 0000 0000 0000 000C 0004 0100"            /* ................ */
	$"0014 0003 0098 0001 0098 0002 0000 0000"            /* .....ò...ò...... */
	$"0098 0002 0014 0003 0098 0003 0098 0004"            /* .ò.......ò...ò.. */
	$"0000 0000 0000 0000 0014 0003 0098 0005"            /* .............ò.. */
	$"0098 0006 0000 0000 0000 0000 0004 0100"            /* .ò.............. */
	$"0014 0003 0098 0007 0098 0008 0000 0000"            /* .....ò...ò...... */
	$"0000 0000 0004 0100 0014 0003 0098 0009"            /* .............ò.. */
	$"0098 000A 0000 0000 0000 0000 0014 0003"            /* .ò.............. */
	$"0098 000B 0098 000C 0000 0000 0000 0000"            /* .ò...ò.......... */
	$"0014 0003 0098 000D 0098 000E 0000 0000"            /* .....ò...ò...... */
	$"0000 0000 0014 0003 0098 000F 0098 0010"            /* .........ò...ò.. */
	$"0000 0000 0000 0000 0004 0100 0014 0003"            /* ................ */
	$"0098 0011 0098 0012 0000 0000 0000 0000"            /* .ò...ò.......... */
};

data 'hmnu' (131, "Edit", purgeable) {
	$"0002 0000 0000 0000 0000 000D 0004 0100"            /* ................ */
	$"0014 0003 0099 0001 0099 0002 0000 0000"            /* .....ô...ô...... */
	$"0099 0002 0014 0003 0099 0003 0099 0004"            /* .ô.......ô...ô.. */
	$"0000 0000 0000 0000 0014 0003 0099 0005"            /* .............ô.. */
	$"0099 0006 0000 0000 0000 0000 0004 0100"            /* .ô.............. */
	$"0014 0003 0099 0007 0099 0008 0000 0000"            /* .....ô...ô...... */
	$"0000 0000 0014 0003 0099 0009 0099 000A"            /* .........ô...ô.. */
	$"0000 0000 0000 0000 0014 0003 0099 000B"            /* .............ô.. */
	$"0099 000C 0000 0000 0000 0000 0014 0003"            /* .ô.............. */
	$"0099 000D 0099 000E 0000 0000 0000 0000"            /* .ô...ô.......... */
	$"0014 0003 0099 000F 0099 0010 0000 0000"            /* .....ô...ô...... */
	$"0000 0000 0014 0003 0099 0011 0099 0012"            /* .........ô...ô.. */
	$"0000 0000 0000 0000 0014 0003 0099 0013"            /* .............ô.. */
	$"0099 0014 0000 0000 0000 0000 0004 0100"            /* .ô.............. */
	$"0014 0003 0099 0015 0099 0016 0000 0000"            /* .....ô...ô...... */
	$"0000 0000"                                          /* .... */
};

data 'hmnu' (132, "Select", purgeable) {
	$"0002 0000 0000 0000 0000 0005 0004 0100"            /* ................ */
	$"0004 0100 0014 0003 009A 0001 009A 0002"            /* .........ö...ö.. */
	$"0000 0000 0000 0000 0014 0003 009A 0003"            /* .............ö.. */
	$"009A 0004 0000 0000 0000 0000 0014 0003"            /* .ö.............. */
	$"009A 0005 009A 0006 0000 0000 0000 0000"            /* .ö...ö.......... */
	$"0014 0003 009A 0007 009A 0008 0000 0000"            /* .....ö...ö...... */
	$"0000 0000"                                          /* .... */
};

data 'hmnu' (133, "Transform", purgeable) {
	$"0002 0000 0000 0000 0000 0008 0004 0100"            /* ................ */
	$"0004 0100 0014 0003 009B 0001 0000 0000"            /* .........õ...... */
	$"0000 0000 0000 0000 0014 0003 009B 0002"            /* .............õ.. */
	$"0000 0000 0000 0000 0000 0000 0004 0100"            /* ................ */
	$"0014 0003 009B 0003 0000 0000 0000 0000"            /* .....õ.......... */
	$"0000 0000 0014 0003 009B 0004 0000 0000"            /* .........õ...... */
	$"0000 0000 0000 0000 0004 0100 0014 0003"            /* ................ */
	$"009B 0005 0000 0000 0000 0000 0000 0000"            /* .õ.............. */
};

data 'hmnu' (134, "Paste", purgeable) {
	$"0002 0000 0000 0000 0000 0005 0004 0100"            /* ................ */
	$"0004 0100 0014 0003 009C 0001 0000 0000"            /* .........ú...... */
	$"0000 0000 0000 0000 0014 0003 009C 0002"            /* .............ú.. */
	$"0000 0000 0000 0000 0000 0000 0014 0003"            /* ................ */
	$"009C 0003 009C 0004 0000 0000 0000 0000"            /* .ú...ú.......... */
	$"0014 0003 009C 0005 009C 0006 0000 0000"            /* .....ú...ú...... */
	$"0000 0000"                                          /* .... */
};

data 'hmnu' (135, "Copy", purgeable) {
	$"0002 0000 0000 0000 0000 0004 0004 0100"            /* ................ */
	$"0004 0100 0014 0003 009D 0001 009D 0002"            /* .........ù...ù.. */
	$"0000 0000 0000 0000 0014 0003 009D 0003"            /* .............ù.. */
	$"009D 0004 0000 0000 0000 0000 0014 0003"            /* .ù.............. */
	$"009D 0005 009D 0006 0000 0000 0000 0000"            /* .ù...ù.......... */
};

data 'hmnu' (136, "Icon", purgeable) {
	$"0002 0000 0000 0000 0000 000B 0004 0100"            /* ................ */
	$"0014 0003 009E 0001 009E 0002 0000 0000"            /* .....û...û...... */
	$"009E 0002 0014 0003 009E 0003 009E 0004"            /* .û.......û...û.. */
	$"0000 0000 0000 0000 0014 0003 009E 0005"            /* .............û.. */
	$"009E 0006 0000 0000 0000 0000 0004 0100"            /* .û.............. */
	$"0014 0003 0000 0000 009E 0007 0000 0000"            /* .........û...... */
	$"0000 0000 0004 0100 0014 0003 009E 0008"            /* .............û.. */
	$"009E 0009 0000 0000 0000 0000 0014 0003"            /* .û.............. */
	$"009E 000A 009E 000B 0000 0000 0000 0000"            /* .û...û.......... */
	$"0014 0003 009E 000C 009E 000D 0000 0000"            /* .....û...û...... */
	$"0000 0000 0004 0100 0014 0003 009E 000E"            /* .............û.. */
	$"009E 000F 0000 0000 0000 0000"                      /* .û.......... */
};

data 'hmnu' (137, "Colors", purgeable) {
	$"0002 0000 0000 0000 0000 0003 0004 0100"            /* ................ */
	$"0004 0100 0014 0003 009F 0001 0000 0000"            /* .........ü...... */
	$"009F 0001 0000 0000 0014 0003 009F 0002"            /* .ü...........ü.. */
	$"0000 0000 009F 0002 0000 0000"                      /* .....ü...... */
};

data 'hmnu' (138, "Windows", purgeable) {
	$"0002 0000 0000 0000 0000 0005 0004 0100"            /* ................ */
	$"0014 0003 00A2 0001 00A2 0002 0000 0000"            /* .....¢...¢...... */
	$"0000 0000 0014 0003 00A2 0003 0000 0000"            /* .........¢...... */
	$"0000 0000 0000 0000 0014 0003 00A2 0004"            /* .............¢.. */
	$"0000 0000 0000 0000 0000 0000 0014 0003"            /* ................ */
	$"00A2 0005 0000 0000 0000 0000 0000 0000"            /* .¢.............. */
	$"0014 0003 00A2 0006 0000 0000 0000 0000"            /* .....¢.......... */
	$"0000 0000"                                          /* .... */
};

data 'hrct' (128, "About", purgeable) {
	$"0002 0000 0000 0000 0000 0003 0014 0003"            /* ................ */
	$"0000 0000 002C 002C 003E 009A 00A0 0001"            /* .....,.,.>.ö.†.. */
	$"0014 0003 0000 0000 003C 0041 004E 00A1"            /* .........<.A.N.° */
	$"00A0 0002 0014 0003 0000 0000 00B0 0002"            /* .†...........∞.. */
	$"00D8 006E 00A0 0003"                                /* .ÿ.n.†.. */
};

data 'hrct' (129, "Register", purgeable) {
	$"0002 0000 0000 0000 0000 0006 0014 0003"            /* ................ */
	$"0000 0000 0066 010E 007A 0152 00A1 0001"            /* .....f...z.R.°.. */
	$"0014 0003 0000 0000 0066 00BE 0079 00FE"            /* .........f.æ.y.˛ */
	$"00A1 0002 0014 0003 0000 0000 0066 0007"            /* .°...........f.. */
	$"007A 009E 00A1 0003 0014 0003 0000 0000"            /* .z.û.°.......... */
	$"000C 0088 001C 0150 00A1 0004 0014 0003"            /* ...à...P.°...... */
	$"0000 0000 0028 0088 0038 0150 00A1 0005"            /* .....(.à.8.P.°.. */
	$"0014 0003 0000 0000 0044 0088 0054 0150"            /* .........D.à.T.P */
	$"00A1 0006"                                          /* .°.. */
};

data 'hrct' (500, "Tool Palette Help", purgeable) {
	$"0002 0000 0000 0000 0000 0003 0014 0003"            /* ................ */
	$"0000 0000 0006 0007 0017 0090 01F4 0001"            /* ...........ê.Ù.. */
	$"0014 0003 0000 0000 0020 0006 00AA 0090"            /* ......... ...™.ê */
	$"01F4 0002 0014 0003 0000 0000 00AF 0000"            /* .Ù...........Ø.. */
	$"00BE 0096 01F4 0003"                                /* .æ.ñ.Ù.. */
};

data 'hrct' (600, purgeable) {
	$"0002 0000 0000 0000 0000 0018 0014 0003"            /* ................ */
	$"0000 0000 0000 0000 0014 0019 0258 0001"            /* .............X.. */
	$"0014 0003 0000 0000 0000 001A 0014 0032"            /* ...............2 */
	$"0258 0002 0014 0003 0000 0000 0015 0000"            /* .X.............. */
	$"0029 0019 0258 0003 0014 0003 0000 0000"            /* .)...X.......... */
	$"0015 001A 0029 0032 0258 0004 0014 0003"            /* .....).2.X...... */
	$"0000 0000 002A 0000 003E 0019 0258 0005"            /* .....*...>...X.. */
	$"0014 0003 0000 0000 002A 001A 003E 0032"            /* .........*...>.2 */
	$"0258 0006 0014 0003 0000 0000 003F 0000"            /* .X...........?.. */
	$"0053 0019 0258 0007 0014 0003 0000 0000"            /* .S...X.......... */
	$"003F 001A 0053 0032 0258 0008 0014 0003"            /* .?...S.2.X...... */
	$"0000 0000 0054 0000 0068 0019 0258 0009"            /* .....T...h...X.. */
	$"0014 0003 0000 0000 0054 001A 0068 0032"            /* .........T...h.2 */
	$"0258 000A 0014 0003 0000 0000 0069 0000"            /* .X...........i.. */
	$"007D 0019 0258 000B 0014 0003 0000 0000"            /* .}...X.......... */
	$"0069 001A 007D 0032 0258 000C 0014 0003"            /* .i...}.2.X...... */
	$"0000 0000 007E 0000 0092 0019 0258 000D"            /* .....~...í...X.. */
	$"0014 0003 0000 0000 007E 001A 0092 0032"            /* .........~...í.2 */
	$"0258 000E 0014 0003 0000 0000 0093 0000"            /* .X...........ì.. */
	$"00A7 0019 0258 000F 0014 0003 0000 0000"            /* .ß...X.......... */
	$"0093 001A 00A7 0032 0258 0010 0014 0003"            /* .ì...ß.2.X...... */
	$"0000 0000 00A8 0000 00B8 0010 0258 0011"            /* .....®...∏...X.. */
	$"0014 0003 0000 0000 00A8 0011 00B8 0021"            /* .........®...∏.! */
	$"0258 0012 0014 0003 0000 0000 00A8 0022"            /* .X...........®." */
	$"00B8 0032 0258 0013 0014 0003 0000 0000"            /* .∏.2.X.......... */
	$"00BD 0005 00CE 002D 0258 0014 0014 0003"            /* .Ω...Œ.-.X...... */
	$"0000 0000 00E0 0013 00FA 002D 0258 0015"            /* .....‡...˙.-.X.. */
	$"0014 0003 0000 0000 00D2 0005 00EC 001F"            /* .........“...Ï.. */
	$"0258 0015 0014 0003 0000 0000 00D3 0023"            /* .X...........”.# */
	$"00DC 002C 0258 0016 0014 0003 0000 0000"            /* .‹.,.X.......... */
	$"00F0 0006 00F9 000F 0258 0017"                      /* ....˘...X.. */
};

data 'hrct' (1001, "Icon Info", purgeable) {
	$"0002 0000 0000 0000 0000 000D 0014 0003"            /* ................ */
	$"0000 0000 013E 0132 0152 0176 00CC 0001"            /* .....>.2.R.v.Ã.. */
	$"0014 0003 0000 0000 013E 00E4 0152 0124"            /* .........>.‰.R.$ */
	$"00CC 0002 0014 0003 0000 0000 000D 0040"            /* .Ã.............@ */
	$"001D 007C 00CC 0003 0014 0003 0000 0000"            /* ...|.Ã.......... */
	$"000D 00A5 001D 0178 00CC 0004 0014 0003"            /* ...•...x.Ã...... */
	$"0000 0000 0046 0040 0056 0177 00CC 0005"            /* .....F.@.V.w.Ã.. */
	$"0014 0003 0000 0000 0108 000E 0118 007C"            /* ...............| */
	$"00CC 0006 0014 0003 0000 0000 011A 000E"            /* .Ã.............. */
	$"012A 007C 00CC 0007 0014 0003 0000 0000"            /* .*.|.Ã.......... */
	$"0108 0108 0118 0176 00CC 0008 0014 0003"            /* .......v.Ã...... */
	$"0000 0000 0108 0086 0118 00F4 00CC 0009"            /* .......Ü...Ù.Ã.. */
	$"0014 0003 0000 0000 011A 0086 012A 00F4"            /* ...........Ü.*.Ù */
	$"00CC 000A 0014 0003 0000 0000 000B 0082"            /* .Ã.............Ç */
	$"001F 0098 00CC 000B 0014 0003 0000 0000"            /* ...ò.Ã.......... */
	$"0028 000A 003C 017A 00CC 000C 0014 0003"            /* .(...<.z.Ã...... */
	$"0000 0000 0063 0009 00F1 017D 00CC 000D"            /* .....c...Ò.}.Ã.. */
};

data 'hwin' (128, "About", purgeable) {
	$"0002 0000 0000 0001 0080 6872 6374 0005"            /* .........Ährct.. */
	$"0541 626F 7574"                                     /* .About */
};

data 'hwin' (129, "Register", purgeable) {
	$"0002 0000 0000 0001 0081 6872 6374 0008"            /* .........Åhrct.. */
	$"0852 6567 6973 7465 7200"                           /* .Register. */
};

data 'hwin' (500, purgeable) {
	$"0002 0000 0000 0001 01F4 6872 6374 0007"            /* .........Ùhrct.. */
	$"0750 7265 7669 6577"                                /* .Preview */
};

data 'hwin' (600, purgeable) {
	$"0002 0000 0000 0001 0258 6872 6374 0005"            /* .........Xhrct.. */
	$"0554 6F6F 6C73"                                     /* .Tools */
};

data 'hwin' (1001, "Icon Info", purgeable) {
	$"0002 0000 0000 0001 03E9 6872 6374 0009"            /* .........Èhrct.. */
	$"0949 636F 6E20 496E 666F"                           /* .Icon Info */
};

data 'hwin' (1002, "Insert Icon", purgeable) {
	$"0002 0000 0000 0001 03E9 6872 6374 000B"            /* .........Èhrct.. */
	$"0B49 6E73 6572 7420 4963 6F6E"                      /* .Insert Icon */
};

resource 'icl4' (-16455) {
	$"0000 0000 0000 0000 0000 0000 0000 0000"
	$"0000 0000 0000 0000 0000 0000 00BB B000"
	$"0000 0000 0000 0000 FF00 0000 0B11 B000"
	$"0000 0000 0000 00FF FF00 0000 B1CE 0000"
	$"0000 0000 0000 FFFF 0FF0 000B 1CE0 0000"
	$"0000 0000 00FF FF00 CFFC CCB1 BE00 0000"
	$"0000 0000 FFFF 00CC CCCC CB1B E000 0000"
	$"0000 00FF FF00 0CCC CCBB B1DE AD00 0000"
	$"0000 FFFF 0000 0CCC DBEB 1DEA BDC0 0000"
	$"00FF FF00 0000 CCCD BEB1 DEAE BDCC 0000"
	$"FFFF 0000 000C DCDB EB1D EFEB BBCC C000"
	$"FF00 0000 0CDD CBBE BCDE FFBB DDCC CCFF"
	$"0FF0 000C DDDC DBEB DDCC DDCC CCCC CCFF"
	$"0FF0 000D CCCD DEEC CBBB CCCC CCCC CDFF"
	$"00FF 0000 CDDD CBDB EAAE EBBD CCDD BBFF"
	$"00FF 0000 DDCC BAAE EEEA AEEE EBBB BBFF"
	$"000F F000 CCCB 03FD CCCC CCDA EAEE EEFF"
	$"000F F000 CCDC 3FDC CCCC CCDF FEEE EEFF"
	$"0000 FF0C CCB3 FDCC CCCC CCCD FF0E EEFF"
	$"0000 FF0C CAAA DCCC CCDB 333D FF00 0000"
	$"0000 0FF0 CBBB CCCC C333 4CCC DFF0 0000"
	$"0000 0FF0 CBBB CCCB 33BC CCCC DFF0 0000"
	$"0000 00FF 0BBB 4B33 3BCC CCCC DDFF 0000"
	$"0000 00FF 0CBB BB3B CCCC CCDD FFFF CCCC"
	$"0000 000F F0CB BBCC CCCC DDFF FFDD DDCC"
	$"0000 000F F0CC CCCC CCDD FFFF DDDD DCCC"
	$"0000 0000 FF0C CCCC DDFF FFDD DDDD CC00"
	$"0000 0000 FF0C CCDD FFFF DDDD DDCC C000"
	$"0000 0000 0FF0 CDFF FFDD DDDD CCC0 0000"
	$"0000 0000 0FFC FFFF DDDD CCCC 0000 0000"
	$"0000 0000 00FF FFDD CCCC CC00 0000 0000"
	$"0000 0000 00FF ECCC CC"
};

resource 'icl4' (128) {
	$"0000 0000 0000 0000 0000 0000 0000 0000"
	$"0000 0000 0000 0000 0000 0000 00BB B000"
	$"0000 0000 0000 0000 FF00 0000 0B11 B000"
	$"0000 0000 0000 00FF FF00 0000 B1CE 0000"
	$"0000 0000 0000 FFFF 0FF0 000B 1CE0 0000"
	$"0000 0000 00FF FF00 CFFC CCB1 BE00 0000"
	$"0000 0000 FFFF 00CC CCCC CB1B E000 0000"
	$"0000 00FF FF00 0CCC CCBB B1DE AD00 0000"
	$"0000 FFFF 0000 0CCC DBEB 1DEA BDC0 0000"
	$"00FF FF00 0000 CCCD BEB1 DEAE BDCC 0000"
	$"FFFF 0000 000C DCDB EB1D EFEB BBCC C000"
	$"FF00 0000 0CDD CBBE BCDE FFBB DDCC CCFF"
	$"0FF0 000C DDDC DBEB DDCC DDCC CCCC CCFF"
	$"0FF0 000D CCCD DEEC CBBB CCCC CCCC CDFF"
	$"00FF 0000 CDDD CBDB EAAE EBBD CCDD BBFF"
	$"00FF 0000 DDCC BAAE EEEA AEEE EBBB BBFF"
	$"000F F000 CCCB 03FD CCCC CCDA EAEE EEFF"
	$"000F F000 CCDC 3FDC CCCC CCDF FEEE EEFF"
	$"0000 FF0C CCB3 FDCC CCCC CCCD FF0E EEFF"
	$"0000 FF0C CAAA DCCC CCDB 333D FF00 0000"
	$"0000 0FF0 CBBB CCCC C333 4CCC DFF0 0000"
	$"0000 0FF0 CBBB CCCB 33BC CCCC DFF0 0000"
	$"0000 00FF 0BBB 4B33 3BCC CCCC DDFF 0000"
	$"0000 00FF 0CBB BB3B CCCC CCDD FFFF CCCC"
	$"0000 000F F0CB BBCC CCCC DDFF FFDD DDCC"
	$"0000 000F F0CC CCCC CCDD FFFF DDDD DCCC"
	$"0000 0000 FF0C CCCC DDFF FFDD DDDD CC00"
	$"0000 0000 FF0C CCDD FFFF DDDD DDCC C000"
	$"0000 0000 0FF0 CDFF FFDD DDDD CCC0 0000"
	$"0000 0000 0FFC FFFF DDDD CCCC 0000 0000"
	$"0000 0000 00FF FFDD CCCC CC00 0000 0000"
	$"0000 0000 00FF ECCC CC"
};

resource 'icl4' (129, "Mac OS Icon") {
	$"0000 00DD EEEE EEEE EEEE EEEE E000 0000"
	$"0000 00E0 0000 0000 0000 0000 EE00 0000"
	$"0000 00E0 0000 0000 0000 0000 ECE0 0000"
	$"0000 00E0 0000 0000 0000 0000 E0CD 0000"
	$"0AAA AAAA AAAA AAAA AAAA CC00 E00C E000"
	$"0AA0 AA00 AA00 AA0A A0AA CC00 E00C CE00"
	$"0AA0 A0AA A0AA 0A00 A0AA DCC0 EEEE EEA0"
	$"0AA0 A0AA A0AA 0A0A 00AA DCC0 CDDD DDA0"
	$"0AA0 A0AA A0AA 0A0A 00AA DCC0 0CCC CDA0"
	$"0AA0 AA00 AA00 AA0A A0AA DCC0 0000 0DA0"
	$"0AAA AAAA AAAA AAAA AAAA DCC0 0000 0DA0"
	$"0000 00AD DDDD DDDD DDDD CC00 0000 0DA0"
	$"0000 00EC CCCC CCCC CCCC CC00 0000 0DA0"
	$"0000 00E0 0000 0000 00CE D000 0000 0CA0"
	$"0000 00E0 000C CCCC CCFE CCCC C000 0CA0"
	$"0000 00E0 000E D55D 5FED DDDD E000 0CF0"
	$"0000 00E0 000E 7DD5 CFC0 CC0C D000 0CF0"
	$"0000 00E0 0005 DDE5 DFCC DE0C E000 0CF0"
	$"0000 00E0 000E DDDD FDCC CCCC D000 0CF0"
	$"0000 00E0 000E DDD7 FDCC CCCC E000 0CF0"
	$"0000 00E0 0005 DDDD AFFE CC0C D000 0CF0"
	$"0000 00E0 000E DD5D 77DE 0CDC E000 0CF0"
	$"0000 00E0 0005 C5E5 55EF DEEC D000 0CF0"
	$"0000 00E0 000E DDC5 E5EA DC00 E000 0CF0"
	$"0000 00E0 000E 5DED 5DEF CDDD E000 0CF0"
	$"0000 00E0 000C CCCC CCCE ECCC C000 0CF0"
	$"0000 00E0 0000 0000 000C ED00 0000 0CF0"
	$"0000 00E0 0000 0000 0000 0000 0000 0CF0"
	$"0000 00E0 0000 0000 0000 0000 0000 0CF0"
	$"0000 00E0 0000 0000 0000 0000 0000 0CF0"
	$"0000 00E0 CCCC CCCC CCCC CCCC CCCC CCF0"
	$"0000 00EE AAAA AAFA FFFF FFFF FFFF FFF0"
};

resource 'icl4' (130, "Windows Icon") {
	$"0000 00DD EEEE EEEE EEEE EEEE E000 0000"
	$"0000 00E0 0000 0000 0000 0000 EE00 0000"
	$"0000 00E0 0000 0000 0000 0000 ECE0 0000"
	$"0000 00E0 0000 0000 0000 0000 E0CD 0000"
	$"0AAA AAAA AAAA AAAA ACC0 0000 E00C E000"
	$"0A0A AA0A 0A0A AA0A ACC0 0000 E00C CE00"
	$"0A0A AA0A 0A00 AA0A ADCC 0000 EEEE EEA0"
	$"0A0A 0A0A 0A0A 0A0A ADCC 0000 CDDD DDA0"
	$"0A0A 0A0A 0A0A A00A ADCC 0000 0CCC CDA0"
	$"0AA0 A0AA 0A0A AA0A ADCC 0000 0000 0DA0"
	$"0AAA AAAA AAAA AAAA ADCC 0000 0000 CDA0"
	$"0000 00AD DDDD DDDD DCC0 0000 0000 0DA0"
	$"0000 00EC CCCC CDDC CCC0 0000 0000 0DA0"
	$"0000 00E0 0000 CDDD DC00 0000 0000 0CA0"
	$"0000 00E0 0000 CCCD EEDD DCCC 0000 CCA0"
	$"0000 00E0 0000 CCCC CBAA FFFF DC00 CCF0"
	$"0000 00E0 0000 DCCC CDFB 2BF9 FECC 0CF0"
	$"0000 00E0 000C DDDC CDA2 2EED EFCC 0CF0"
	$"0000 00E0 00DC CCDD BAAB BF8D FE00 0CF0"
	$"0000 00E0 00DC CCCD DAE9 FFEE FD00 0CF0"
	$"0000 00E0 00CD CCCC EAD5 92BF AC00 0CF0"
	$"0000 00E0 0000 DDCD A57E A11F D000 0CF0"
	$"0000 00E0 0000 0DEA AAEF A12F C000 0CF0"
	$"0000 00E0 0000 000C DEAF ABAE 0000 0CF0"
	$"0000 00E0 0000 0000 00CD EFFC 0000 0CF0"
	$"0000 00E0 0000 0000 0000 CCC0 0000 CCF0"
	$"0000 00E0 0000 0000 0000 0000 0000 CCF0"
	$"0000 00E0 0000 0000 0000 0000 0000 CCF0"
	$"0000 00E0 0000 0000 0000 0000 0000 0CF0"
	$"0000 00E0 0000 0000 0000 0000 0000 0CF0"
	$"0000 00E0 CCCC CCCC CCCC CCCC CCCC CCF0"
	$"0000 00EE AAAA AAAA FFFF FFFF FFFF FFF0"
};

resource 'icl4' (131, "Mac OS X Icon") {
	$"0000 00DD EEEE EEEE EEEE EEEE E000 0000"
	$"0000 00E0 0000 0000 0000 0000 EE00 0000"
	$"0000 00E0 0000 0000 0000 0000 ECE0 0000"
	$"0000 00E0 0000 0000 0000 0000 E0CD 0000"
	$"0AAA AAAA AAAA AAAA AACC 0000 E00C E000"
	$"0AA0 00A0 A000 A000 AACC 0000 E00C CE00"
	$"0AAA 0AA0 A0AA A0AA AADC C000 EEEE EEA0"
	$"0AAA 0AA0 A00A A00A AADC C000 CDDD DDA0"
	$"0AAA 0AA0 A0AA A0AA AADC C000 0CCC CDA0"
	$"0AAA 0AA0 A0AA A0AA AADC C000 0000 0DA0"
	$"0AAA AAAA AAAA AAAA AADC C000 0000 0DA0"
	$"0000 00AD DDDD DDDD DDCC 0000 0000 0DA0"
	$"0000 00EC CCCC CCCC CCCC 0000 0000 0DA0"
	$"0000 00E0 000C CCCC CCCC CCCC C000 0CA0"
	$"0000 00E0 00C0 CCCC CCCC CCCC CE00 0CA0"
	$"0000 00E0 00CC DDDD DDDD DDDD DE00 0CF0"
	$"0000 00E0 00CC DCCC CCDC CCCD DE00 0CF0"
	$"0000 00E0 00CC DD7C CEDD CDEE DE00 0CF0"
	$"0000 00E0 00CC 7DDC CCDC C5DD DE00 0CF0"
	$"0000 00E0 00CC DDDD CCCC EEDD DE00 0CF0"
	$"0000 00E0 00CC DDDD CCCD EDDD DE00 0CF0"
	$"0000 00E0 00CC DDDD DCCC DDDD DE00 0CF0"
	$"0000 00E0 00CC DDDD CCCC DDDD DE00 0CF0"
	$"0000 00E0 00CC DDDC C5DC CDDD DE00 0CF0"
	$"0000 00E0 00CC DDCC DEDC CCDD DE00 0CF0"
	$"0000 00E0 00CC DCCC CDDC CCCC DE00 0CF0"
	$"0000 00E0 00CC 7DE5 EDDD E5EE DE00 0CF0"
	$"0000 00E0 00CD DDDD DDDD DDDD DE00 0CF0"
	$"0000 00E0 000E EEEE EEEE EEEE E000 0CF0"
	$"0000 00E0 0000 0000 0000 0000 0000 0CF0"
	$"0000 00E0 CCCC CCCC CCCC CCCC CCCC CCF0"
	$"0000 00EE AAAA AAFA FFFF FFFF FFFF FFF0"
};

resource 'icl8' (-16455) {
	$"0000 0000 0000 0000 0000 0000 0000 0000"
	$"0000 0000 0000 0000 0000 0000 0000 0000"
	$"0000 0000 0000 0000 0000 0000 0000 0000"
	$"0000 0000 0000 0000 0000 5E5E 5E00 0000"
	$"0000 0000 0000 0000 0000 0000 0000 0000"
	$"FFFF 0000 0000 0000 005E 0303 5E00 0000"
	$"0000 0000 0000 0000 0000 0000 0000 FFFF"
	$"FFFF 0000 0000 0000 5E03 2D88 0000 0000"
	$"0000 0000 0000 0000 0000 0000 FFFF FFFF"
	$"00FF FF00 0000 005E 032D 8800 0000 0000"
	$"0000 0000 0000 0000 0000 FFFF FFFF 0000"
	$"F8FF FF08 0832 5E03 3488 0000 0000 0000"
	$"0000 0000 0000 0000 FFFF FFFF 0000 F6F6"
	$"F632 0808 325E 0334 8800 0000 0000 0000"
	$"0000 0000 0000 FFFF FFFF 0000 F5F6 F62B"
	$"0832 395E 5803 3388 DE33 0000 0000 0000"
	$"0000 0000 FFFF FFFF 0000 F5F5 F5F6 2B08"
	$"3339 885E 0333 88DE 5E33 3200 0000 0000"
	$"0000 FFFF FFFF 0000 F5F5 F5F5 F62B 0833"
	$"5E88 5E09 3388 DE88 5E33 3232 0000 0000"
	$"FFFF FFFF 0000 F5F5 F5F5 F5F6 562C 3339"
	$"885E 0933 88E0 8864 5E39 3232 3200 0000"
	$"FFFF 0000 00F5 F5F5 F5F6 5681 0839 6488"
	$"822D 3388 FFDF 645E 3333 3232 3232 DFDF"
	$"00FF FF00 00F5 F5F6 5681 56F6 3364 8839"
	$"3333 3232 3357 3208 080E 3232 3232 DFDF"
	$"00FF FF00 F5F5 F556 F8F6 F656 8188 8808"
	$"325D 3939 3208 0808 0808 3232 3233 DFDF"
	$"0000 FFFF 00F5 F5F5 F656 8156 2B58 3364"
	$"88DE 8988 885E 5E33 3232 3333 395D DFDF"
	$"0000 FFFF 00F5 F5F5 F956 F6F7 64DD AD88"
	$"8888 88DE AD88 8888 885E 5E5E 5E5E DFDF"
	$"0000 00FF FF00 F5F5 F6F6 2B64 006B E056"
	$"2B2B 2BF7 F7F8 81AD 88AD 8888 8888 DFDF"
	$"0000 00FF FF00 F5F5 F6F6 FA07 40FF F92B"
	$"2B2B F7F7 F7F7 F9FF FF88 8888 8888 DFDF"
	$"0000 0000 FFFF 00F6 F632 6440 FFF9 2B2B"
	$"2B2B F7F7 F8F7 F8F9 FFFF 0088 8888 DFDF"
	$"0000 0000 FFFF 00F6 2BDE 8FDE F92B 2B2B"
	$"F732 3839 4040 40F9 FFFF 0000 0000 0000"
	$"0000 0000 00FF FF00 2B39 3939 F72B 2BF7"
	$"3240 4040 3FF8 F8F8 F9FF FF00 0000 0000"
	$"0000 0000 00FF FF00 F739 3939 31F7 3239"
	$"4040 39F8 F7F8 F8F8 F9FF FF00 0000 0000"
	$"0000 0000 0000 FFFF F539 3939 3F39 4040"
	$"4039 F7F7 F7F8 F8F8 F9F9 FFFF 0000 0000"
	$"0000 0000 0000 FFFF F532 3939 3939 4039"
	$"F8F7 F7F7 F8F8 F9F9 FFFF FFFF F8F8 F8F6"
	$"0000 0000 0000 00FF FFF5 3239 3939 32F7"
	$"F7F7 F7F7 F9F9 FFFF FFFF FAFA FAFA F8F6"
	$"0000 0000 0000 00FF FF00 2B2B 2B2B F7F7"
	$"F7F7 F9F9 FFFF FEFF FAFA FAFA FAF8 F8F6"
	$"0000 0000 0000 0000 FFFF 002B 2BF7 F7F7"
	$"F9F9 FFFF FEFF FAFA FAFA FAFA F8F8 0000"
	$"0000 0000 0000 0000 FFFF 002B 2BF7 F9F9"
	$"FFFF FEFF FAFA FAFA FAFA F8F8 F600 0000"
	$"0000 0000 0000 0000 00FF FFF5 F7F9 FFFF"
	$"FEFF FAFA FAFA FAFA F8F8 F600 0000 0000"
	$"0000 0000 0000 0000 00FF FFF7 FFFF FEFF"
	$"FAFA FAFA F8F8 F8F8 0000 0000 0000 0000"
	$"0000 0000 0000 0000 0000 FFFF FEFF FAFA"
	$"F8F8 F8F8 F8F6 0000 0000 0000 0000 0000"
	$"0000 0000 0000 0000 0000 FFFF FBF8 F8F8"
	$"F6F6"
};

resource 'icl8' (128) {
	$"0000 0000 0000 0000 0000 0000 0000 0000"
	$"0000 0000 0000 0000 0000 0000 0000 0000"
	$"0000 0000 0000 0000 0000 0000 0000 0000"
	$"0000 0000 0000 0000 0000 5E5E 5E00 0000"
	$"0000 0000 0000 0000 0000 0000 0000 0000"
	$"FFFF 0000 0000 0000 005E 0303 5E00 0000"
	$"0000 0000 0000 0000 0000 0000 0000 FFFF"
	$"FFFF 0000 0000 0000 5E03 2D88 0000 0000"
	$"0000 0000 0000 0000 0000 0000 FFFF FFFF"
	$"00FF FF00 0000 005E 032D 8800 0000 0000"
	$"0000 0000 0000 0000 0000 FFFF FFFF 0000"
	$"F8FF FF08 0832 5E03 3488 0000 0000 0000"
	$"0000 0000 0000 0000 FFFF FFFF 0000 F6F6"
	$"F632 0808 325E 0334 8800 0000 0000 0000"
	$"0000 0000 0000 FFFF FFFF 0000 F5F6 F62B"
	$"0832 395E 5803 3388 DE33 0000 0000 0000"
	$"0000 0000 FFFF FFFF 0000 F5F5 F5F6 2B08"
	$"3339 885E 0333 88DE 5E33 3200 0000 0000"
	$"0000 FFFF FFFF 0000 F5F5 F5F5 F62B 0833"
	$"5E88 5E09 3388 DE88 5E33 3232 0000 0000"
	$"FFFF FFFF 0000 F5F5 F5F5 F5F6 562C 3339"
	$"885E 0933 88E0 8864 5E39 3232 3200 0000"
	$"FFFF 0000 00F5 F5F5 F5F6 5681 0839 6488"
	$"822D 3388 FFDF 645E 3333 3232 3232 DFDF"
	$"00FF FF00 00F5 F5F6 5681 56F6 3364 8839"
	$"3333 3232 3357 3208 080E 3232 3232 DFDF"
	$"00FF FF00 F5F5 F556 F8F6 F656 8188 8808"
	$"325D 3939 3208 0808 0808 3232 3233 DFDF"
	$"0000 FFFF 00F5 F5F5 F656 8156 2B58 3364"
	$"88DE 8988 885E 5E33 3232 3333 395D DFDF"
	$"0000 FFFF 00F5 F5F5 F956 F6F7 64DD AD88"
	$"8888 88DE AD88 8888 885E 5E5E 5E5E DFDF"
	$"0000 00FF FF00 F5F5 F6F6 2B64 006B E056"
	$"2B2B 2BF7 F7F8 81AD 88AD 8888 8888 DFDF"
	$"0000 00FF FF00 F5F5 F6F6 FA07 40FF F92B"
	$"2B2B F7F7 F7F7 F9FF FF88 8888 8888 DFDF"
	$"0000 0000 FFFF 00F6 F632 6440 FFF9 2B2B"
	$"2B2B F7F7 F8F7 F8F9 FFFF 0088 8888 DFDF"
	$"0000 0000 FFFF 00F6 2BDE 8FDE F92B 2B2B"
	$"F732 3839 4040 40F9 FFFF 0000 0000 0000"
	$"0000 0000 00FF FF00 2B39 3939 F72B 2BF7"
	$"3240 4040 3FF8 F8F8 F9FF FF00 0000 0000"
	$"0000 0000 00FF FF00 F739 3939 31F7 3239"
	$"4040 39F8 F7F8 F8F8 F9FF FF00 0000 0000"
	$"0000 0000 0000 FFFF F539 3939 3F39 4040"
	$"4039 F7F7 F7F8 F8F8 F9F9 FFFF 0000 0000"
	$"0000 0000 0000 FFFF F532 3939 3939 4039"
	$"F8F7 F7F7 F8F8 F9F9 FFFF FFFF F8F8 F8F6"
	$"0000 0000 0000 00FF FFF5 3239 3939 32F7"
	$"F7F7 F7F7 F9F9 FFFF FFFF FAFA FAFA F8F6"
	$"0000 0000 0000 00FF FF00 2B2B 2B2B F7F7"
	$"F7F7 F9F9 FFFF FEFF FAFA FAFA FAF8 F8F6"
	$"0000 0000 0000 0000 FFFF 002B 2BF7 F7F7"
	$"F9F9 FFFF FEFF FAFA FAFA FAFA F8F8 0000"
	$"0000 0000 0000 0000 FFFF 002B 2BF7 F9F9"
	$"FFFF FEFF FAFA FAFA FAFA F8F8 F600 0000"
	$"0000 0000 0000 0000 00FF FFF5 F7F9 FFFF"
	$"FEFF FAFA FAFA FAFA F8F8 F600 0000 0000"
	$"0000 0000 0000 0000 00FF FFF7 FFFF FEFF"
	$"FAFA FAFA F8F8 F8F8 0000 0000 0000 0000"
	$"0000 0000 0000 0000 0000 FFFF FEFF FAFA"
	$"F8F8 F8F8 F8F6 0000 0000 0000 0000 0000"
	$"0000 0000 0000 0000 0000 FFFF FBF8 F8F8"
	$"F6F6"
};

resource 'icl8' (129, "Mac OS Icon") {
	$"0000 0000 0000 8181 FBFB FBFB FBFB FCFC"
	$"FCFC FCFC FCFC ACAC AC00 0000 0000 0000"
	$"0000 0000 0000 FB00 0000 0000 0000 0000"
	$"0000 0000 0000 00F5 FCFB 0000 0000 0000"
	$"0000 0000 0000 FB00 F5F5 F5F5 F5F5 F5F5"
	$"F5F5 F5F5 F5F5 F5F5 FC2B FB00 0000 0000"
	$"0000 0000 0000 FB00 F5F5 F5F5 F5F5 F5F5"
	$"F5F5 F5F5 F5F5 F5F5 FC00 F781 0000 0000"
	$"00DD DDDD DDDD DDDD DDDD DDDD DDDD DDDD"
	$"DDDD DDDD 2BF6 F5F5 FB00 F5F7 FB00 0000"
	$"00DD DD00 DDDD 0000 DDDD 0000 DDDD 00DD"
	$"DD00 DDDD F82B F5F5 FB00 00F6 F8FB 0000"
	$"00DD DD00 DD00 DDDD DD00 DDDD 00DD 0000"
	$"DD00 DDDD F9F7 F6F5 FBFC FCFC ACAC FD00"
	$"00DD DD00 DD00 DDDD DD00 DDDD 00DD 00DD"
	$"0000 DDDD FAF7 F6F5 F6F9 F9FA FA81 FD00"
	$"00DD DD00 DD00 DDDD DD00 DDDD 00DD 00DD"
	$"0000 DDDD FAF7 F6F5 F5F7 F7F8 F856 FD00"
	$"00DD DD00 DDDD 0000 DDDD 0000 DDDD 00DD"
	$"DD00 DDDD FAF7 F6F5 F5F5 F5F5 F556 FD00"
	$"00DD DDDD DDDD DDDD DDDD DDDD DDDD DDDD"
	$"DDDD DDDD F9F7 F6F5 F5F5 F5F5 F556 FD00"
	$"0000 0000 0000 FDF9 F9F9 F9F9 F9F9 F9F9"
	$"F9F9 FAF9 F82B F5F5 F5F5 F5F5 F556 FD00"
	$"0000 0000 0000 ACF7 F7F7 F7F7 F7F7 F7F7"
	$"F7F7 F7F7 2BF6 F5F5 F5F5 F5F5 F556 FD00"
	$"0000 0000 0000 FCF5 F5F5 F5F5 F5F5 F5F5"
	$"F5F5 2BAB F9F5 F5F5 F5F5 F5F5 F5F8 FD00"
	$"0000 0000 0000 FC00 F5F5 F52B F72B F7F7"
	$"2BF7 D6FC F72B F7F7 2BF5 F5F5 F5F8 FD00"
	$"0000 0000 0000 FC00 F5F5 F5AB 80AA AA80"
	$"AAF1 AC7F F97F 807F ABF5 F5F5 F5F8 FE00"
	$"0000 0000 0000 FC00 F5F5 F5AB 7E7F 7FAA"
	$"54FE 54F5 54F8 F52A 80F5 F5F5 F5F8 FE00"
	$"0000 0000 0000 FC00 F5F5 00AA 7F7F ABAA"
	$"80FF 2A2A 81AB F52A ABF5 F5F5 F5F8 FE00"
	$"0000 0000 0000 FC00 F5F5 F5AB 7F7F 7F7F"
	$"D680 2A2A 2AF7 2A2A 80F5 F5F5 F5F8 FE00"
	$"0000 0000 0000 FC00 F5F5 F5FB 7F7F 7F7E"
	$"FE7F 2A2A 2A2A 2A2A ABF5 F5F5 F5F8 FE00"
	$"0000 0000 0000 FC00 F5F5 F5AA 7F7F 7F7F"
	$"FDFE F4AC 2A2A F52A 80F5 F5F5 F5F8 FE00"
	$"0000 0000 0000 FC00 F5F5 00AB 7F80 AA7F"
	$"7E7E 7FAC 002A 802A ABF5 F5F5 F5F8 FE00"
	$"0000 0000 0000 AC00 F5F5 F5AA 55AA ACAA"
	$"AAAA ABFE F9AB FBF7 80F5 F5F5 F5F8 FE00"
	$"0000 0000 0000 AC00 F5F5 00AB 7F7F 54A9"
	$"ABAA ABFD 8055 F5F5 ABF5 F5F5 F5F8 F400"
	$"0000 0000 0000 AC00 F5F5 F5AB AA80 AB80"
	$"AA80 ABFE 5580 8080 AB00 F5F5 F5F7 FF00"
	$"0000 0000 0000 AC00 F5F5 F52B 2BF7 2BF7"
	$"F6F7 F8AB ACF7 2AF7 2BF5 F5F5 F5F7 FF00"
	$"0000 0000 0000 AC00 F5F5 F5F5 F5F5 F5F5"
	$"F5F5 F555 FC56 F5F5 F5F5 F5F5 F5F7 FF00"
	$"0000 0000 0000 AC00 F5F5 F5F5 F5F5 F5F5"
	$"F5F5 F500 F5F5 F5F5 F5F5 F5F5 F5F7 FF00"
	$"0000 0000 0000 AC00 F5F5 F5F5 F5F5 F5F5"
	$"F5F5 F5F5 F5F5 F5F5 F5F5 F5F5 F5F7 FF00"
	$"0000 0000 0000 AC00 F5F5 F5F5 F5F5 F5F5"
	$"F5F5 F5F5 F5F5 F5F5 F5F5 F5F5 F5F7 FF00"
	$"0000 0000 0000 ACF5 F6F6 F6F6 F6F6 2B2B"
	$"2B2B 2B2B 2B2B 2B2B 2B2B F7F7 F7F7 FF00"
	$"0000 0000 0000 ACAC FDFD FDFD FDFD FEFD"
	$"FEF4 FEFE F4FE FEF4 FFFF FFFF FFFF FF"
};

resource 'icl8' (130, "Windows Icon") {
	$"0000 0000 0000 8181 FBFB FBFB FBFB FCFC"
	$"FCFC FCFC FCFC ACAC AC00 0000 0000 0000"
	$"0000 0000 0000 FB00 0000 0000 0000 0000"
	$"0000 0000 0000 00F5 FCFB 0000 0000 0000"
	$"0000 0000 0000 FB00 F5F5 F5F5 F5F5 F5F5"
	$"F5F5 F5F5 F5F5 F5F5 FC2B FB00 0000 0000"
	$"0000 0000 0000 FB00 F5F5 F5F5 F5F5 F5F5"
	$"F5F5 F5F5 F5F5 F5F5 FC00 F781 0000 0000"
	$"00DD DDDD DDDD DDDD DDDD DDDD DDDD DDDD"
	$"DD2B F6F5 F5F5 F5F5 FB00 F5F7 FB00 0000"
	$"00DD 00DD DDDD 00DD 00DD 00DD DDDD 00DD"
	$"DDF8 2BF5 F5F5 F5F5 FB00 00F6 F8FB 0000"
	$"00DD 00DD DDDD 00DD 00DD 0000 DDDD 00DD"
	$"DDF9 F7F6 F5F5 F5F5 FBFC FCFC ACAC FD00"
	$"00DD 00DD 00DD 00DD 00DD 00DD 00DD 00DD"
	$"DDFA F7F6 F5F5 F5F5 F6F9 F9FA FA81 FD00"
	$"00DD 00DD 00DD 00DD 00DD 00DD DD00 00DD"
	$"DDFA F7F6 F5F5 F5F5 F5F7 F7F8 F856 FD00"
	$"00DD DD00 DD00 DDDD 00DD 00DD DDDD 00DD"
	$"DDFA F7F6 F5F5 F5F5 F5F5 F5F5 F556 FD00"
	$"00DD DDDD DDDD DDDD DDDD DDDD DDDD DDDD"
	$"DDF9 F7F6 F5F5 F5F5 F5F5 F5F5 F656 FD00"
	$"0000 0000 0000 FDF9 F9F9 F9FA FAFA FAFA"
	$"F9F8 2BF5 F5F5 F5F5 F5F5 F5F5 F556 FD00"
	$"0000 0000 0000 ACF7 F7F7 F7F7 F7F9 56F7"
	$"F72B F6F5 F5F5 F5F5 F5F5 F5F5 F556 FD00"
	$"0000 0000 0000 FCF5 F5F5 F5F5 F6F9 F9FA"
	$"562B F5F5 F5F5 F5F5 F5F5 F5F5 F5F8 FD00"
	$"0000 0000 0000 FC00 F5F5 F5F5 F732 2B56"
	$"A5AB 8180 F9F7 F7F6 F5F5 F5F5 F6F8 FD00"
	$"0000 0000 0000 FC00 F5F5 F5F5 5531 320E"
	$"325D FDFD DFDF FFB2 7AF6 F5F5 F6F8 FE00"
	$"0000 0000 0000 FC00 F5F5 F5F5 562C 072C"
	$"0833 FF39 105E D1A7 FFFC F6F6 F5F8 FE00"
	$"0000 0000 0000 FC00 F5F5 F555 565C 5632"
	$"0E81 FD10 1688 A651 A6FF F6F6 F5F8 FE00"
	$"0000 0000 0000 FC00 F5F5 FA55 4F55 8081"
	$"82FD FD64 5FFF 7675 D1FC F5F5 F5F8 FE00"
	$"0000 0000 0000 FC00 F5F5 5655 4F2B 5579"
	$"81FD ABD0 F3FF A6A6 FF56 F5F5 F5F8 FE00"
	$"0000 0000 0000 FC00 F5F5 F656 4F55 4F55"
	$"ABFD 79A3 D035 5FFF FDF6 F5F5 F5F8 FE00"
	$"0000 0000 0000 FC00 F5F5 F5F5 8056 557A"
	$"FDA4 9DAB AD0B 0BFF 80F5 F5F5 F5F8 FE00"
	$"0000 0000 0000 AC00 F5F5 F5F5 F556 ABFD"
	$"FDFD CFF3 8305 35F3 F7F5 F5F5 F5F8 FE00"
	$"0000 0000 0000 AC00 F5F5 F5F5 F5F5 F5F8"
	$"80FC FDFF AD5F ADAC F5F5 F5F5 F5F8 F400"
	$"0000 0000 0000 AC00 F5F5 F5F5 F5F5 F5F5"
	$"F5F5 F656 ABF3 FFF8 F5F5 F5F5 F5F7 FF00"
	$"0000 0000 0000 AC00 F5F5 F5F5 F5F5 F5F5"
	$"F5F5 F5F5 F6F7 F8F5 F5F5 F5F5 F6F7 FF00"
	$"0000 0000 0000 AC00 F5F5 F5F5 F5F5 F5F5"
	$"F5F5 F5F5 F5F5 F5F5 F5F5 F5F5 F6F7 FF00"
	$"0000 0000 0000 AC00 F5F5 F5F5 F5F5 F5F5"
	$"F5F5 F5F5 F5F5 F5F5 F5F5 F5F5 F6F7 FF00"
	$"0000 0000 0000 AC00 F5F5 F5F5 F5F5 F5F5"
	$"F5F5 F5F5 F5F5 F5F5 F5F5 F5F5 F5F7 FF00"
	$"0000 0000 0000 AC00 F5F5 F5F5 F5F5 F5F5"
	$"F5F5 F5F5 F5F5 F5F5 F5F5 F5F5 F5F7 FF00"
	$"0000 0000 0000 ACF5 F6F6 F6F6 F6F6 2B2B"
	$"2B2B 2B2B 2B2B 2B2B 2B2B F7F7 F7F7 FF00"
	$"0000 0000 0000 ACAC FDFD FDFD FDFD FDFD"
	$"FEFE FEFE FEFE FEFE FFFF FFFF FFFF FF"
};

resource 'icl8' (131, "Mac OS X Icon") {
	$"0000 0000 0000 8181 FBFB FBFB FBFB FCFC"
	$"FCFC FCFC FCFC ACAC AC00 0000 0000 0000"
	$"0000 0000 0000 FB00 0000 0000 0000 0000"
	$"0000 0000 0000 00F5 FCFB 0000 0000 0000"
	$"0000 0000 0000 FB00 F5F5 F5F5 F5F5 F5F5"
	$"F5F5 F5F5 F5F5 F5F5 FC2B FB00 0000 0000"
	$"0000 0000 0000 FB00 F5F5 F5F5 F5F5 F5F5"
	$"F5F5 F5F5 F5F5 F5F5 FC00 F781 0000 0000"
	$"00DD DDDD DDDD DDDD DDDD DDDD DDDD DDDD"
	$"DDDD 2BF6 F5F5 F5F5 FB00 F5F7 FB00 0000"
	$"00DD DD00 0000 DD00 DD00 0000 DD00 0000"
	$"DDDD F82B F5F5 F5F5 FB00 00F6 F8FB 0000"
	$"00DD DDDD 00DD DD00 DD00 DDDD DD00 DDDD"
	$"DDDD F9F7 F6F5 F5F5 FBFC FCFC ACAC FD00"
	$"00DD DDDD 00DD DD00 DD00 00DD DD00 00DD"
	$"DDDD FAF7 F6F5 F5F5 F6F9 F9FA FA81 FD00"
	$"00DD DDDD 00DD DD00 DD00 DDDD DD00 DDDD"
	$"DDDD FAF7 F6F5 F5F5 F5F7 F7F8 F856 FD00"
	$"00DD DDDD 00DD DD00 DD00 DDDD DD00 DDDD"
	$"DDDD FAF7 F6F5 F5F5 F5F5 F5F5 F556 FD00"
	$"00DD DDDD DDDD DDDD DDDD DDDD DDDD DDDD"
	$"DDDD F9F7 F6F5 F5F5 F5F5 F5F5 F556 FD00"
	$"0000 0000 0000 FDF9 F9F9 F9F9 F9F9 F9F9"
	$"FAF9 F82B F5F5 F5F5 F5F5 F5F5 F556 FD00"
	$"0000 0000 0000 ACF7 F7F7 F7F7 F7F7 F7F7"
	$"F7F7 2BF6 F5F5 F5F5 F5F5 F5F5 F556 FD00"
	$"0000 0000 0000 FCF5 F5F5 F554 5454 5454"
	$"5454 5454 5454 5454 54F5 F5F5 F5F8 FD00"
	$"0000 0000 0000 FC00 F5F5 5400 F8F6 F8F6"
	$"F8F6 F8F6 F8F6 F8F6 F7AB F5F5 F5F8 FD00"
	$"0000 0000 0000 FC00 F5F5 54F8 7F7F 7F7F"
	$"7F7F 7F7F 7F7F 7F7F 7FAB F5F5 F5F8 FE00"
	$"0000 0000 0000 FC00 F5F5 54F6 7FF6 F6F6"
	$"F6F7 7FF7 F6F6 F67F 7FAB F5F5 F5F8 FE00"
	$"0000 0000 0000 FC00 F5F5 54F8 7F7F 78F6"
	$"F6AB 7F7F F67F ABAB 7FAB F5F5 F5F8 FE00"
	$"0000 0000 0000 FC00 F5F5 54F6 787F 7FF6"
	$"F6F7 7FF6 F6AA 7F7F 7FAB F5F5 F5F8 FE00"
	$"0000 0000 0000 FC00 F5F5 54F8 7F7F 7F7F"
	$"F6F6 F7F6 ABAB 7F7F 7FAB F5F5 F5F8 FE00"
	$"0000 0000 0000 FC00 F5F5 54F6 7F7F 7F7F"
	$"2BF6 F67F AB7F 7F7F 7FAB F5F5 F5F8 FE00"
	$"0000 0000 0000 FC00 F5F5 54F8 7F7F 7F7F"
	$"7FF6 F6F7 7F7F 7F7F 7FAB F5F5 F5F8 FE00"
	$"0000 0000 0000 AC00 F5F5 54F6 7F7F 7F7F"
	$"F6F6 F6F6 7F7F 7F7F 7FAB F5F5 F5F8 FE00"
	$"0000 0000 0000 AC00 F5F5 54F8 7F7F 7FF7"
	$"F6AA 7FF6 F67F 7F7F 7FAB F5F5 F5F8 F400"
	$"0000 0000 0000 AC00 F5F5 54F6 7F7F F7F6"
	$"7FAB 7F2B F6F6 7F7F 7FAB F5F5 F5F7 FF00"
	$"0000 0000 0000 AC00 F5F5 54F8 7FF6 F6F6"
	$"F77F 7FF6 F6F6 F6F7 7FAB F5F5 F5F7 FF00"
	$"0000 0000 0000 AC00 F5F5 54F6 787F ABAA"
	$"AB7F 7F7F ABAA ABAB 7FAB F5F5 F5F7 FF00"
	$"0000 0000 0000 AC00 F5F5 547F 7F7F 7F7F"
	$"7F7F 7F7F 7F7F 7F7F 7FAB F5F5 F5F7 FF00"
	$"0000 0000 0000 AC00 F5F5 F5AB ABAB ABAB"
	$"ABAB ABAB ABAB ABAB ABF5 F5F5 F5F7 FF00"
	$"0000 0000 0000 AC00 F5F5 F5F5 F5F5 F5F5"
	$"F5F5 F5F5 F5F5 F5F5 F5F5 F5F5 F5F7 FF00"
	$"0000 0000 0000 ACF5 F6F6 F6F6 F6F6 2B2B"
	$"2B2B 2B2B 2B2B 2B2B 2B2B F7F7 F7F7 FF00"
	$"0000 0000 0000 ACAC FDFD FDFD FDFD FEFD"
	$"FEF4 FEFE F4FE FEF4 FFFF FFFF FFFF FF"
};

resource 'icns' (-16455) {
	{	/* array elementArray: 17 elements */
		/* [1] */
		'ICN#',
		$"0000 0000 0000 0030 0000 C050 0003 C0B0"
		$"000F 6170 003C 62E0 00F0 35C0 03C0 3B80"
		$"0F00 57E0 3C00 AF90 F001 5FC8 C01E BF07"
		$"6067 0003 619E 5003 3067 FA0F 30AF FF57"
		$"1836 01FF 182C 01FF 0C38 00DF 0C78 1EC0"
		$"0678 F860 067F E060 033F 80B0 031E 02F0"
		$"0180 0BF8 0180 2FFC 00C0 BFFE 00C2 FFFE"
		$"006B FFFE 006F FFFC 003F FFF8 003F FFE0"
		$"0000 0000 0000 0030 0000 C070 0003 C0F0"
		$"000F E1F0 003F FFE0 00FF FFC0 03FF FFC0"
		$"0FFF FFE0 3FFF FFF0 FFFF FFF8 FFFF FFFF"
		$"7FFF FFFF 7FFF FFFF 3FFF FFFF 3FFF FFFF"
		$"1FFF FFFF 1FFF FFFF 0FFF FFDF 0FFF FFC0"
		$"07FF FFE0 07FF FFE0 03FF FFF0 03FF FFF0"
		$"01FF FFF8 01FF FFFC 00FF FFFE 00FF FFFE"
		$"007F FFFE 007F FFFC 003F FFF8 003F FFE0",
		/* [2] */
		'icl4',
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 00BB 0000"
		$"0000 0000 0000 0000 FF00 0000 0B1D 0000"
		$"0000 0000 0000 00FF FF00 0000 D1DE 0000"
		$"0000 0000 0000 FFFF 0FF0 000B 1DBA 0000"
		$"0000 0000 00FF FF00 CFFC CCB1 DEA0 0000"
		$"0000 0000 FFFF 00CC CCC2 CB1C AB00 0000"
		$"0000 00FF FF00 0C0C CC2D B1DA AD00 0000"
		$"0000 FFFF 00C0 C0CC 2BEB 1CBA 4C20 0000"
		$"00FF FF00 0C0C 0CC2 BBD2 CAAA D2CD 0000"
		$"FFFF 000C 00CC DC2D BB1C AFE3 BDC2 C000"
		$"FF00 00C0 0CDD C2BB E2DB FF3D BC2C CDAF"
		$"0FF0 0C0C DDCC DBE4 DC2C DDCD CCC2 CCFF"
		$"0FF0 C00D C0CD DA3C C2DD 2CCC 1CD0 2DFF"
		$"00FF 00C0 CDDD CDB2 EE3E BB3C C2CB C2FF"
		$"00FF 0C00 DCCC 3AEE EAEA 5AEA AD3B BEFF"
		$"000F F0C0 CC03 03FC CCCC CCDA EAEE BEFF"
		$"000F F00C C0DC 3FDC CCCC CCDF F5AE 3EFF"
		$"0000 FF00 CC3B FDCC CCCC DCCD FF0A EEFF"
		$"0000 FF00 CAAA DCCC CC4B 423D FF00 0000"
		$"0000 0FF0 C4D4 C0CC D224 BCCC DFF0 0000"
		$"0000 0FF0 CB42 CCC4 24DC CDCD DFF0 0000"
		$"0000 00FF 02D4 2B2B 4BCC CCDC DDFF 0000"
		$"0000 00FF 0C42 D4B4 CCCC DCDD FFFF 0000"
		$"0000 000F F0CD 24CC CCDC DDFF FFFF E000"
		$"0000 000F F0CC CCCC CCDD FFFF FFFF FF00"
		$"0000 0000 FF0C CCCC DBFF FFFF FFFF FFF0"
		$"0000 0000 FF0C CCDD FFFF FFFF FFFF FFF0"
		$"0000 0000 0FF0 DDFF FFFF FFFF FFFF FFF0"
		$"0000 0000 0FFD FFFF FFFF FFFF FFFF FF00"
		$"0000 0000 00FF FFFF FFFF FFFF FFFF F000"
		$"0000 0000 00FF FFFF FFFF FFFF FFF0 0000",
		/* [3] */
		'icl8',
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 5E58 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"FFFF 0000 0000 0000 0058 0339 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 FFFF"
		$"FFFF 0000 0000 0000 5809 5789 0000 0000"
		$"0000 0000 0000 0000 0000 0000 FFFF FFFF"
		$"00FF FF00 0000 0034 0957 8988 0000 0000"
		$"0000 0000 0000 0000 0000 FFFF FFFF F500"
		$"F8FF FF0E 2C32 5E03 3389 8800 0000 0000"
		$"0000 0000 0000 0000 FFFF FFFF 0000 F6F6"
		$"2B32 082C 325E 0333 AD88 0000 0000 0000"
		$"0000 0000 0000 FFFF FFFF 0000 F6F6 F62C"
		$"0E2C 5D64 5E03 3488 DD32 0000 0000 0000"
		$"0000 0000 FFFF FFFF 0000 F6F6 F6F6 2B08"
		$"333A 8858 0933 88AD 5D33 3200 0000 0000"
		$"0000 FFFF FFFF 0000 F5F5 F6F5 F62B 0F32"
		$"6488 5E09 3382 DE88 5E33 3233 0000 0000"
		$"FFFF FFFF 0000 F5F5 F6F5 F62B 562C 3339"
		$"8858 0934 FCE0 8864 5E39 332C 3200 0000"
		$"FFFF 0000 F5F5 F5F6 F5F6 5681 083A 6389"
		$"8809 5D82 E0E0 645D 3933 2C32 0F32 E0DF"
		$"00FF FF00 F5F5 F5F6 5681 56F6 5D64 8833"
		$"335D 3233 3257 3208 2C32 0E2C 322D DFE0"
		$"00FF FF00 F5F5 F5F9 56F6 F6F9 8183 8832"
		$"325D 3439 330E 082C 0E08 3232 3332 E0E0"
		$"0000 FFFF 00F5 F5F5 2B56 8156 2B5D 2E64"
		$"8888 B288 5E88 5D39 2C33 3333 395D E0E0"
		$"0000 FFFF 00F5 F6F5 F956 2BF7 6489 B282"
		$"8888 8889 B288 8988 885E 5D88 5D5E E0E0"
		$"0000 00FF FF00 F6F6 F5F6 2B6A 006A AD56"
		$"2BF7 2BF7 2CF7 81FD 88B2 8988 8888 E0E0"
		$"0000 00FF FF00 F5F6 F6F6 FA08 40EA FA2B"
		$"F72B F7F7 4FF7 F9FF FF88 AC88 88FC E0FE"
		$"0000 0000 FFFF 00F6 F632 6A40 FFF9 2B2B"
		$"F7F7 F7F7 32F8 F7F9 FFFF 0088 8888 E0E0"
		$"0000 0000 FFFF F5F6 F6B2 8988 5D2B 2BF7"
		$"F72C 3939 4040 40F9 FFFF 0000 0000 0000"
		$"0000 0000 00FF FFF5 F715 393F 2B2B 2BF7"
		$"323F 4040 3932 F7F8 FAFF FF00 0000 0000"
		$"0000 0000 00FF FF00 073A 393F 2CF7 3239"
		$"4040 39F8 F755 F8F8 F9FF FF00 0000 0000"
		$"0000 0000 0000 FFFF F53F 1539 3F39 401C"
		$"3F33 F831 50F8 F8F8 FAF9 FFFF 0000 0000"
		$"0000 0000 0000 FFFF 0633 3939 1539 4039"
		$"2C31 F8F7 F8F8 F9F9 FFFF FFFF 0000 0000"
		$"0000 0000 0000 00FF FF00 3939 3A3F 32F7"
		$"F84F 32F8 F9F9 FFFF FFFF FDFD FD00 0000"
		$"0000 0000 0000 00FF FFF5 2B2B 2BF7 2BF7"
		$"F7F7 F9F9 FFFF FEFD FDFD FDFD FDFD 0000"
		$"0000 0000 0000 0000 FFFF 00F7 F72B F7F7"
		$"F9F9 FFFF FEFD FDFD FDFD FDFD FDFD FD00"
		$"0000 0000 0000 0000 FFFF F5F7 2BF7 F9F9"
		$"FFFF FDFD FDFD FDFD FDFD FDFD FDFD FD00"
		$"0000 0000 0000 0000 00FF FFF5 F956 FFFF"
		$"FEFD FDFD FDFD FDFD FDFD FDFD FDFD FD00"
		$"0000 0000 0000 0000 00FF FF56 FFFF FDFD"
		$"FDFD FDFD FDFD FDFD FDFD FDFD FDFD 0000"
		$"0000 0000 0000 0000 0000 FFFF FEFD FDFD"
		$"FDFD FDFD FDFD FDFD FDFD FDFD FD00 0000"
		$"0000 0000 0000 0000 0000 FFFD FDFD FDFD"
		$"FDFD FDFD FDFD FDFD FDFD FD00 0000 0000",
		/* [4] */
		'il32',
		$"B7FF 01A1 9F91 FF01 0000 84FF 02A1 FEB1"
		$"8FFF 8100 83FF 03A1 FEB1 628D FF81 0002"
		$"F500 0081 FF04 BCFE B162 648B FF81 000C"
		$"F6F6 A700 00EA EAB8 9FFE B062 648A FF81"
		$"000D F7F7 DDDA D6BB E9EB B89F FEC3 6264"
		$"89FF 8100 0FF9 F8E1 DEDB DCE5 DEBA 8FA2"
		$"FEC6 6245 D087 FF81 0012 FAF9 E7E3 E0DD"
		$"DDE5 D4B3 679A FEC8 6245 A5C9 D384 FF81"
		$"0015 FBFA EBE8 E5E1 DFD5 E2D4 A469 9EF2"
		$"C962 4579 9BC2 D2D0 81FF 8100 18FC FBEE"
		$"ECE9 E6E3 D294 DED2 B36A A0F3 C75C 1B5D"
		$"899C B5CD D5D3 80FF 7F00 00FC FCF1 EFED"
		$"EAE8 D798 6BE5 C29C 657A DEB3 6A0D 2082"
		$"ADBD C3D1 D5D7 D020 20FF 0000 FBF0 EEEC"
		$"DA9A 6D9F D3B8 8170 B9C5 C1CE C7B2 AFDA"
		$"E7EA E1D9 D8D9 D420 20FF 0000 FBEF EDEA"
		$"91A0 D7D0 9368 5C75 EBD4 9FB3 C4DE E7EC"
		$"EBE3 E4DD D6CE C620 20FF FF00 00FA ECE9"
		$"E6D4 966A 9ACD A2C7 886F 4D61 6F7F 9094"
		$"C1DB CCC1 C0B7 AB20 200F FFFF 0000 FAEB"
		$"E7E4 8D9C D1B3 9755 465C 8064 0C4A 4E5A"
		$"5B55 6C8F 8B8C 9588 2020 80FF 1C00 00F9"
		$"E5E3 E0DC C89D FF9B 1CA4 C6C3 C0BC B9B0"
		$"7A41 5A4B 535E 6860 2020 80FF 1C00 00F9"
		$"E4E1 DEDB 83F2 D802 82C8 C5C1 BEBB B7B4"
		$"8900 0055 5859 5A5E 2020 81FF 1B00 00F7"
		$"DFDC C8A5 D902 82CA C6C3 C0BC BAB8 B4B1"
		$"8600 00FF 6361 5E20 2081 FF15 0000 F7DD"
		$"DA46 6E49 97CB C8C4 C2C2 C7CE D3D6 CE85"
		$"0000 88FF 1500 00F6 D9D7 D6D5 CDC9 C5C3"
		$"C7D1 D2D5 CEB2 ADAB 8300 0087 FF15 0000"
		$"F5D6 D7D5 D5CD C9C8 CFD2 D2CE B6B1 AEAC"
		$"A982 0000 88FF 1500 00F2 D7D5 D4D4 D1D3"
		$"D5D4 C9B6 B2B0 ADAB A981 8100 0087 FF11"
		$"0000 F2D3 D4D3 D2D1 D5D1 BEB7 B4B1 AEAC"
		$"8382 8100 88FF 1200 00F1 D1D4 D2D2 C4BC"
		$"B8B5 B2B0 8684 0000 010B 8023 87FF 0F00"
		$"00F1 CAC7 C4C0 BDBA B7B4 8986 0000 1284"
		$"2387 FF0C 0000 F0C5 C3BF BBB8 8C8A 0000"
		$"1E87 2386 FF0A 0000 F0C3 C1BD 908D 0000"
		$"1F89 2387 FF07 0000 EE93 9100 001E 8B23"
		$"87FF 0500 0094 0000 1D8C 2389 FF02 0000"
		$"198D 238A FF00 008D 2382 FFB7 FF01 8281"
		$"91FF 0100 0084 FF02 82E4 898F FF81 0083"
		$"FF03 82E4 8944 8DFF 8100 02F5 0000 81FF"
		$"049E E489 442B 8BFF 8100 0CF6 F5A7 0000"
		$"B4B7 9B79 E494 442B 8AFF 8100 0DF8 F7DD"
		$"D9D6 A9B6 B59B 7DE4 9744 2B89 FF81 000F"
		$"F9F8 E1DE DBCC B3A0 6E51 80E4 9A44 199B"
		$"87FF 8100 12FA F9E6 E3E0 DCCD B397 682E"
		$"76E4 9D44 1963 96A1 84FF 8100 15FB FAEB"
		$"E8E5 E1DF C4B0 9953 307E CF9C 4619 3459"
		$"8BA6 9C81 FF81 0018 FBFB EEEC E9E6 E3D2"
		$"94B3 9167 2E7E D09A 440E 2A3C 557B A0A8"
		$"A280 FF7F 0000 FCFC F2F0 EDEA E7D7 986B"
		$"B376 4B2D 51B5 864F 040E 3461 818A 9FA8"
		$"A7A1 0E0E FF00 00FB F0EE EBDA 9A6D 9ED3"
		$"842D 3A7D 8683 9998 8C85 A0B3 B9AE A9AA"
		$"AAA5 0E0E FF00 00FB F0ED EA92 A1D7 D093"
		$"6844 38B3 A962 6F7D 9DB2 BEBC B5B7 AFA5"
		$"9B95 0E0E FFFF 0000 FAEB E8E6 D496 6A9A"
		$"CC83 9A44 3D1E 2934 4455 5C8E AC9A 8B89"
		$"7D75 0E0E 0FFF FF00 00FA EAE7 E48D 9CD1"
		$"B328 1633 4480 3B0C 1F22 2F30 2E42 5C55"
		$"5860 550E 0E80 FF1C 0000 F9E5 E2DF DCC7"
		$"29FF 1C15 9DC6 C3C0 BDB9 AD6C 2331 202B"
		$"333C 370E 0E80 FF1C 0000 F9E4 E1DD DA75"
		$"B626 0282 C8C4 C2BE BBB8 B489 0000 2A2F"
		$"3031 3B0E 0E81 FF1B 0000 F7E0 DBA5 2629"
		$"0281 C9C6 C2C0 BBB3 AFB0 AE86 0000 FF38"
		$"393B 0E0E 81FF 1500 00F7 DECF 1C18 1D81"
		$"CAC8 C3BC A47E 533C 2E47 8500 0088 FF15"
		$"0000 F3C0 5469 50BA C9C6 B98E 4B40 324C"
		$"A6AC AB82 0000 87FF 1500 00F3 BD53 6951"
		$"AFBF A361 4746 50AE B1AE ACAA 8200 0088"
		$"FF15 0000 E550 675C 4E60 4B3A 396F B2B1"
		$"B0AD AAA8 8181 0000 87FF 1100 00EF 885C"
		$"665C 5D38 50A4 B6B4 B1AE AC83 8281 0088"
		$"FF12 0000 EE82 5658 50A0 BAB7 B5B2 B086"
		$"8400 0001 0B80 2387 FF0F 0000 F1CA C7C4"
		$"C1BE BAB7 B389 8600 0012 8423 87FF 0C00"
		$"00F0 C6C2 BFBC B98D 8A00 001E 8723 86FF"
		$"0A00 00F0 C3C0 BD8F 8D00 001F 8923 87FF"
		$"0700 00EE 9490 0000 1E8B 2387 FF05 0000"
		$"9500 001D 8C23 89FF 0200 0019 8D23 8AFF"
		$"0000 8D23 82FF B7FF 013E 3C91 FF01 0000"
		$"84FF 023E 674D 8FFF 8100 83FF 033E 674D"
		$"238D FF81 0002 F500 0081 FF04 4A67 4D23"
		$"278B FF81 000C F6F5 A700 0094 9593 3167"
		$"4523 278A FF81 000D F8F7 DCD9 D79E 9995"
		$"9337 674F 2327 89FF 8100 0FF9 F8E1 DFDB"
		$"BF91 8657 4739 6752 231A 7A87 FF81 0012"
		$"FAF9 E6E3 E0DD C191 7C51 2A32 6753 231A"
		$"4B78 8384 FF81 0015 FBFA EBE7 E5E1 DFB9"
		$"8B7D 412C 3763 5324 1A2C 446D 8A80 81FF"
		$"8100 18FB FBEE ECE9 E6E3 D294 9378 5427"
		$"3761 5122 1124 323F 6084 8D86 80FF 7F00"
		$"00FC FCF2 EFED EAE8 D697 6B91 5B3C 2730"
		$"5956 2A0A 0C2C 4F65 6C85 8D89 880C 0CFF"
		$"0000 FBF1 EEEC DA9A 6D9E D36F 202F 6A76"
		$"7683 8378 748C 9A9D 918E 8E8C 880C 0CFF"
		$"0000 FBEF EDEA 92A0 D7D0 9268 2230 9694"
		$"5354 5F80 95A2 9E9A 9D94 8881 7A0C 0CFF"
		$"FF00 00FA ECE9 E6D5 966A 9ACD 4651 3538"
		$"191F 2A36 444A 7591 8173 7268 600C 0C0F"
		$"FFFF 0000 FAEB E7E4 8D9C D1B3 2716 1D22"
		$"802E 0118 1D80 2807 384D 4748 4F47 0C0C"
		$"80FF 1C00 00F9 E6E2 DFDC C82C FF1F 0A91"
		$"C6C3 BFBC B9AC 6A1F 2B1B 262B 3330 0C0C"
		$"80FF 1C00 00F9 E4E1 DEDB 76B8 2B02 82C8"
		$"C5C1 BEBB B7B5 8900 002A 292A 2B35 0C0C"
		$"81FF 1B00 00F7 DFDB A52A 2E02 81C9 C6C3"
		$"BFBA B3AF B0AE 8600 00FF 2A2C 350C 0C81"
		$"FF15 0000 F7DD CE1D 1A1E 81CA C8C3 BCA5"
		$"8056 4032 4A85 0000 88FF 1500 00F3 C057"
		$"6C54 BBC9 C6B8 904F 4536 50A7 ADAA 8300"
		$"0087 FF15 0000 F3BF 566C 55B0 BEA5 644B"
		$"4954 AEB1 AEAC AA82 0000 88FF 1500 00E6"
		$"546B 5F52 634F 3E3D 71B2 B2AF ADAA A981"
		$"8100 0087 FF11 0000 EF89 5F69 6060 3D54"
		$"A6B6 B4B1 AEAC 8382 8100 88FF 1200 00EE"
		$"8559 5C54 A1BA B7B5 B2AF 8683 0000 010B"
		$"8023 87FF 0F00 00F1 CAC7 C4C1 BDBA B7B4"
		$"8986 0000 1284 2387 FF0C 0000 F0C6 C2BF"
		$"BCB8 8C8A 0000 1E87 2386 FF0A 0000 F0C4"
		$"C0BD 8F8D 0000 1F89 2387 FF07 0000 EE93"
		$"9100 001E 8B23 87FF 0500 0094 0000 1D8C"
		$"2389 FF02 0000 198D 238A FF00 008D 2382"
		$"FF",
		/* [5] */
		'l8mk',
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 6263 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"2517 0000 0000 0000 00AD E5CE 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 259E"
		$"FF9E 0000 0000 0000 D7FF FFBF 0000 0000"
		$"0000 0000 0000 0000 0000 0000 259E FFFF"
		$"FFFF 2500 0000 00F2 FFFF E77F 0000 0000"
		$"0000 0000 0000 0000 0000 259E FFFF FFFF"
		$"FFFF 9E55 FFFF D9FF FFFF 8A00 0000 0000"
		$"0000 0000 0000 0000 259E FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFB7 0000 0000 0000"
		$"0000 0000 0000 259E FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFAD 0000 0000 0000"
		$"0000 0000 259E FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFF9 B400 0000 0000"
		$"0000 259E FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF F4B4 0000 0000"
		$"179E FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFF8 C900 0000"
		$"25FA FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"009E FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"0025 FAFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"0000 9EFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"0000 25FF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"0000 009E FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"0000 0025 FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF 9E12 56B6 FFFF FFFF"
		$"0000 0000 9EFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FF25 0012 56FF FFFF"
		$"0000 0000 25FF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FF9E 0000 0000 0000"
		$"0000 0000 009E FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF 2500 0000 0000"
		$"0000 0000 0025 FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF 9E00 0000 0000"
		$"0000 0000 0000 9EFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FA25 0000 0000"
		$"0000 0000 0000 25FF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF 9E17 0000 0000"
		$"0000 0000 0000 009E FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF A32D 0402 0100 0000"
		$"0000 0000 0000 0025 FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF CC74 4029 170D 0502 0000"
		$"0000 0000 0000 0000 9EFF FFFF FFFF FFFF"
		$"FFFF FFFF F6DF C7AC 8B68 4629 1305 0100"
		$"0000 0000 0000 0000 25FF FFFF FFFF FFFF"
		$"FFFF FCF7 F1EB DFCD B392 6B43 1F0A 0200"
		$"0000 0000 0000 0000 009E FFFF FFFF FFFF"
		$"F9EF E5DC D0C4 B5A4 8E74 5534 1707 0100"
		$"0000 0000 0000 0000 0025 FFFF FFFF F1D8"
		$"C4B8 A997 8573 5F4F 4032 2314 0802 0000"
		$"0000 0000 0000 0000 0000 9EFD E3B6 9A85"
		$"7361 5041 3529 1F16 100B 0804 0200 0000"
		$"0000 0000 0000 0000 0000 1786 6250 4335"
		$"291F 1610 0B08 0502 0201 0100 0000 0000",
		/* [6] */
		'ich#',
		$"0000 0000 0000 0000 0001 D800 0000 003A"
		$"0800 0000 0740 0C00 0001 E800 0400 001E"
		$"0000 0400 03A0 0000 0400 7400 0000 0200"
		$"0000 0128 0600 C000 0A52 0200 C000 2529"
		$"0100 C000 4852 0102 C002 A528 01BE E001"
		$"1240 01F7 5008 4520 00EF 6000 0880 00FF"
		$"60B0 0600 00DF 7148 1454 00AE 6240 4289"
		$"00DE 6090 0052 013C 6028 0109 017C 2000"
		$"0002 82F8 4010 8009 02F8 6010 0012 02D0"
		$"4008 0008 0DB0 4010 8014 0310 4004 0048"
		$"1D90 7C80 0090 2B08 702A 8040 1608 1815"
		$"0150 3E08 30AA 8020 5804 1144 0040 360C"
		$"2090 0210 9806 200D 0000 9006 6002 8021"
		$"2482 6000 9102 5012 4002 0481 2202 4001"
		$"0108 4017 C006 0082 82FF C008 2000 BFFE"
		$"8002 0115 7FE0 E000 00B2 FE00 FE02 5C31"
		$"E000 FFC0 8F77 C000 1F3C 1FFF C000 01FF"
		$"F8FF 8000 01FF F83F 8000 0000 0000 0000"
		$"0000 0000 0000 0000 0001 F800 0000 003F"
		$"F800 0000 07FF FC00 0001 FFFF FC00 001F"
		$"FFFF FC00 03FF FFFF FC00 7FFF FFFF FE00"
		$"7FFF FFFF FE00 FFFF FFFF FE00 FFFF FFFF"
		$"FF00 FFFF FFFF FF02 FFFF FFFF FFBE FFFF"
		$"FFFF FFFF 7FFF FFFF FFFF 7FFF FFFF FFFF"
		$"7FFF FFFF FFFF 7FFF FFFF FFFE 7FFF FFFF"
		$"FFFE 7FFF FFFF FFFC 7FFF FFFF FFFC 3FFF"
		$"FFFF FFF8 7FFF FFFF FFF8 7FFF FFFF FFF0"
		$"7FFF FFFF FFF0 7FFF FFFF FFF0 7FFF FFFF"
		$"FFF0 7FFF FFFF FFF8 7FFF FFFF FFF8 1FFF"
		$"FFFF FFF8 3FFF FFFF FFFC 1FFF FFFF FFFC"
		$"3FFF FFFF FFFE 3FFF FFFF FFFE 7FFF FFFF"
		$"FFFE 7FFF FFFF FFFE 7FFF FFFF FFFE 7FFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFE"
		$"FFFF FFFF FFE0 FFFF FFFF FE00 FFFF FFFF"
		$"E000 FFFF FFFF C000 1FFF FFFF C000 01FF"
		$"F8FF 8000 01FF F83F 8000 0000 0000 0000",
		/* [7] */
		'ich4',
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 000F AEED F000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 00FF EDDC"
		$"C00C E000 0000 0000 0000 0000 0000 0000"
		$"0000 0FEE DDCC 0000 0000 DF00 0000 0000"
		$"0000 0000 0000 000F FAEE DCC0 0000 0000"
		$"0000 DF00 0000 0000 0000 0000 000F FEDC"
		$"CC00 0000 0000 0000 0000 0A00 0000 0000"
		$"0000 00FE EDDC 0000 0000 0000 0000 0000"
		$"0000 0E00 0000 0000 0FEE DDCC 0000 0000"
		$"0000 000C 00C0 0C00 0000 0DF0 0000 0000"
		$"0D00 0000 0000 0000 0000 C0CC DCC2 CCC0"
		$"0000 0CF0 0000 0000 FD00 0000 0000 0000"
		$"0C0D CC42 D42C D42C C000 00E0 0000 0000"
		$"FE00 0000 0000 0000 0CCD 2CC4 C2C4 2C40"
		$"C000 00DF 0000 0000 FAC0 0000 0000 00CC"
		$"DC42 C42C DC2C 42CD 0000 00CF 0000 00F0"
		$"FFC0 0C00 0000 0CCC 22C4 CCCD D202 CCC0"
		$"C000 00CA F0FF AAF0 FFD0 C00C 0C0C CC2C"
		$"4CDC CCDD DC44 CCC0 0000 000E FFFA BAFF"
		$"0FEC 0000 0000 0C0C CCCC C224 CD00 C000"
		$"0000 000C FFFB BFFF 0FEC 0000 00C0 0000"
		$"0C0C 2C4C CCC0 0000 0000 000C FFAD 3FFF"
		$"0FFC 0000 C242 4000 0CCC C2C2 CCCC 0000"
		$"0000 0000 EFBB FFFF 0FFC 00C4 2C42 C000"
		$"0C0D C424 C2CC CCC0 0000 0000 EBDA FFF0"
		$"0FFC 0C2C 42CC 0000 0C00 CCCC 2C42 DCDC"
		$"0000 0000 BB3F FFF0 0FF0 0CC0 042C C000"
		$"0C00 CCC4 02CC 42CD C000 000C B4AF FF00"
		$"0FA0 0000 00C2 4C00 0C00 0000 CCCC C424"
		$"CC00 00CB BBFF FF00 00E0 0000 0000 2C00"
		$"0C00 0000 00CC CCC2 DC00 00C3 B3FF F000"
		$"0FD0 0000 00C4 C000 C000 0000 000C DDDC"
		$"CC00 0CEC 3FAF F000 0FD0 0000 0042 C000"
		$"0C00 0000 00C0 2C2C C000 0BB2 FDEF 0000"
		$"0FC0 0000 00CC CC00 C000 0000 0CC4 C20C"
		$"0000 CA2A ECDF 0000 0FC0 0000 000C D0C0"
		$"CC00 0000 C041 40C0 0000 E2D3 DCCE 0000"
		$"0FC0 0000 000C CCC0 C000 000C 02C4 CCC0"
		$"000D 3B3F C00E 0000 0FEF ECCC CCCC 0000"
		$"C00C 0C0C CC2C CC00 00CB B3FD C00D F000"
		$"0FFF E00C 0CCC DDCD C000 000C C4C2 0000"
		$"00D3 2AAC C00C F000 000F C000 00C2 4224"
		$"2000 000C C42C C000 0C3A 3AEC 0000 E000"
		$"00FF C000 242C 2422 0000 000C CCCC C000"
		$"0DA3 A5CC 0000 DF00 000D 0004 C2C4 2C40"
		$"C000 00CC CC4C C000 CDBA ABC0 0000 CF00"
		$"00FD 00D2 C0C2 4C00 0000 00C0 0CCD C000"
		$"DD0D FC00 0000 CEF0 00FC 0000 0004 C224"
		$"C000 C0CC 0C0C 0C0C B0DD CC0C 00C0 0EF0"
		$"0FF0 0000 000C DC41 4C00 0000 C0C0 C00D"
		$"CCDD CC0C CCCC 0CF0 0FE0 0000 0000 0004"
		$"2C0C C00C 0C0C 000D CDDC 0CC0 CCCC 0CA0"
		$"0FC0 0000 0000 002C 4000 0D24 2000 C0CD"
		$"CBDC 00C0 C000 00E0 0FC0 0000 0000 0C42"
		$"00C0 C402 0000 CCCC DBC0 00CC 00CD DEFF"
		$"FE00 0000 0000 C240 0000 00CC 200C 0CCC"
		$"2CC0 0CCC EFFF FFFF FE00 0000 0000 CCD0"
		$"00C0 0000 C40C CC1C DDCE AEFF FFFF FFF0"
		$"FD00 0000 0000 0DCC 0C00 000C 20CC CCCB"
		$"AFFF FFFF FFF0 0000 FADC C000 0000 00CC"
		$"C0CC 0004 CCDB CDDE FFFF FFF0 0000 0000"
		$"FFFF EEDD 0000 00CD 0DCC EEC0 C0FE 02CF"
		$"FFF0 0000 0000 0000 FFFF FFFF ECCC 000C"
		$"CC0E FFAD CDFE BDEF FF00 0000 0000 0000"
		$"000F FFFF ECDD AEC0 00CE FFFF FFFF FFFF"
		$"FF00 0000 0000 0000 0000 000F FAFF FFFF"
		$"ADDF F000 FFFF FFFF F000 0000 0000 0000"
		$"0000 000F FFFF FFFF FFFF F000 00FF FFFF"
		$"F000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000",
		/* [8] */
		'ich8',
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 00FF"
		$"FDAC 8181 FF00 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 FFFF FC81 F82B"
		$"F6F5 00F5 FD00 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 00FF FDFB FA56 F7F6 F500 0000"
		$"0000 0000 81FF 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 00FF"
		$"FFFD FCFB 56F7 F600 0000 0000 0000 0000"
		$"0000 0000 F8FF 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 00FF FDFC FAF8"
		$"2BF6 F500 0000 0000 0000 0000 0000 0000"
		$"0000 0000 F6FD 0000 0000 0000 0000 0000"
		$"0000 0000 0000 FFAC FBF9 562B F6F5 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 00FC 0000 0000 0000 0000 0000"
		$"00FE ACFC 8156 2BF6 0000 0000 0000 0000"
		$"0000 0000 F500 0106 0107 F507 0106 0100"
		$"0000 0000 00F9 FF00 0000 0000 0000 0000"
		$"0056 F500 0000 0000 0000 0000 0000 0000"
		$"0000 00F5 0707 070E 0D0E 0E0E 0E08 0D01"
		$"0000 0000 002C F400 0000 0000 0000 0000"
		$"FFFB 0000 0000 0000 0000 0000 0000 0000"
		$"00F5 0708 0D0E 0F14 0F15 1532 1515 0E07"
		$"0700 0000 0000 FC00 0000 0000 0000 0000"
		$"FFFC 0000 0000 0000 0000 0000 0000 F5F5"
		$"0707 0715 0E32 150F 380F 1515 1538 1507"
		$"0700 0000 0000 FAFF 0000 0000 0000 0000"
		$"FFFD F600 0000 0000 0000 0000 0000 0107"
		$"0E0E 1539 1515 150E 0E14 0E15 3915 1507"
		$"0700 0000 0000 F7FF 0000 0000 0000 FF00"
		$"FFE0 2B00 F6F5 F5F5 0000 F5F5 0707 0E0E"
		$"1515 150E 0E07 320E 0F15 390E 0F0E 07F6"
		$"0000 0000 0000 F6FE FF00 FFFF 8988 FF00"
		$"FFFF 56F6 F6F5 F6F5 F6F6 01F6 0731 0E32"
		$"1532 0E0E 320E 0E15 3214 0E0F 0DF6 07F5"
		$"0000 0000 0000 00FB FFFF FFAD 5DDD FFFF"
		$"00FF FBF6 0000 0000 0000 F500 F501 2B07"
		$"2B0E F607 0814 1614 150F 0D07 0100 0000"
		$"0000 0000 0000 00F8 FFFF FF5E 3AFF FFFF"
		$"00FF FD2B 0000 0000 0000 0106 00F5 0000"
		$"00F5 F60E 0E15 390E 0E06 01F5 0000 0000"
		$"0000 0000 0000 0007 FDFF DE33 DDFF FFFF"
		$"00FF E02B 0000 0007 0D0F 1515 1500 0000"
		$"002B F60D 0F15 1532 0807 0706 07F5 0000"
		$"0000 0000 0000 00F5 ACE0 3364 DFFF FFFF"
		$"00FF FFF7 0000 0E15 3A15 1540 15F5 0000"
		$"002B F60E 0E39 150F 150E 0E0E 0707 07F5"
		$"0000 0000 0000 0000 8188 33DE FFFF FF00"
		$"00FF FF2B 000E 150E 0E1B 3907 0000 0000"
		$"00F6 F501 0D07 140E 3915 1532 150E 0E07"
		$"0700 0000 0000 00F5 5E5E 64DF FFFF FF00"
		$"00FF FFF6 0007 0700 071B 0F0E 0700 0000"
		$"F5F6 0600 F607 080E 0E0E 0E0F 150E 0E0E"
		$"07F5 0000 0000 00F7 6333 DEE0 FFFF 0000"
		$"00FF ACF5 0000 0000 F507 0E15 390E 0000"
		$"F5F6 F500 0000 F507 070D 2C0D 0E15 3915"
		$"0E07 0000 0000 F564 3464 E0FF FFFF 0000"
		$"0000 FB00 0000 0000 0000 0008 150E 0000"
		$"F5F6 0000 0000 0000 0001 06F5 0E0E 1515"
		$"0E07 F500 0000 5665 39DE E0FF FF00 0000"
		$"00FF 8100 0000 0000 0000 073F 0E00 0000"
		$"F6F6 0000 0000 0000 0000 0107 0E32 0E15"
		$"0EF5 0000 002B 5E33 65FD FEFF FF00 0000"
		$"00FF 5600 0000 0000 0000 0F15 0000 0000"
		$"F6F6 0000 0000 0000 00F5 060E 0E15 0E0E"
		$"07F5 0000 005D 643A B35D FBFF 0000 0000"
		$"00FF F700 0000 0000 0000 0E39 2BF5 F500"
		$"2BF5 0000 0000 0000 0007 0E0E 390E 0E00"
		$"F500 0000 F789 33DB 88F7 56FF 0000 0000"
		$"00FF F600 0000 0000 0000 0607 F8F6 F8F5"
		$"2BF5 0000 0000 0000 0707 320E 150E 0700"
		$"0000 00F5 883A 3ADD FA2B F6FD 0000 0000"
		$"00FE F7F5 00F5 0000 0000 002B 2B2B F600"
		$"F7F6 F500 F500 00F5 070F 1515 0E07 F500"
		$"0000 0032 653A DBB3 F7F6 F5FB 0000 0000"
		$"00FF FEFD FC2B 2B2B 2B2B F6F6 F5F5 F5F5"
		$"2BF5 00F5 F5F5 0007 0715 1433 07F5 0000"
		$"0000 F688 3A40 DDFA 2BF5 00F9 FF00 0000"
		$"00FF FFFF FBF5 F6F6 F62B F72C 3232 3232"
		$"2B00 0000 00F5 F507 0739 0F14 07F5 0000"
		$"00F5 5D65 408F ADF7 F600 002B E000 0000"
		$"0000 00FF 5600 0000 00F5 0E15 4040 4040"
		$"15F5 0000 0000 002B 3215 140E 0700 0000"
		$"00F6 8841 65DD 872B F500 00F5 FB00 0000"
		$"0000 FFFE F500 0007 0E16 3F15 0E15 1C15"
		$"0E00 0000 0000 F52C 0715 080D 0106 0000"
		$"F557 DC41 DBAC F7F6 0000 0000 F9FF 0000"
		$"0000 00FB 0000 070E 4015 0E0E 1615 1507"
		$"F500 0000 0000 F6F6 070E 0E0E 0701 0000"
		$"F681 5E88 B35D 2BF5 0000 0000 F7FF 0000"
		$"0000 FF56 0000 0E15 0EF5 0740 1B0E 0000"
		$"0000 0000 F5F5 2B07 F507 0D2C 0706 00F5"
		$"5657 F5FB FCF7 F600 0000 0000 F6FE FF00"
		$"0000 FFF7 0000 F5F6 0000 0715 3A15 390E"
		$"07F5 00F5 F5F5 2BF6 F5F5 0707 0601 002B"
		$"5DF5 F85D 56F6 F5F5 F5F5 F6F5 0081 FF00"
		$"00FF FFF5 0000 0000 0000 0007 0E15 1516"
		$"1507 00F5 F600 00F5 F6F6 0107 F500 F657"
		$"56F5 F956 F72B F52B F82B 2B2B 00F8 FF00"
		$"00FF FB00 0000 0000 0000 0000 0000 F514"
		$"400E 002B 0000 0007 07F5 F6F6 F500 0756"
		$"F756 FAF8 F6F7 2B00 2BF6 F72B 00F6 FD00"
		$"00FF 5600 0000 0000 0000 0000 00F5 0F15"
		$"0EF5 F5F5 F60E 1515 1506 0000 F6F5 F632"
		$"0882 56F6 00F5 F8F5 2BF6 F500 0001 AC00"
		$"00E0 F600 0000 0000 0000 0000 0008 1B0F"
		$"0600 F600 0E0E 0E39 0700 00F5 2BF6 3108"
		$"33FB 2BF6 00F5 2B00 00F5 2B56 7B87 E0FF"
		$"FFAC 0000 0000 0000 0000 0000 0715 3F07"
		$"00F5 F600 0000 070E 1507 00F6 2B2B 0808"
		$"5C32 F600 F507 F756 82FE E0FF FFFF FFFF"
		$"FF81 0000 0000 0000 0000 0000 F60E 15F5"
		$"00F6 F500 0000 0000 0E0E F52B F62C 082C"
		$"5EF9 F9FB FCD0 E0FF FFFF FFFF FFFF FF00"
		$"FFFA 0000 0000 0000 0000 0000 060E 0E01"
		$"00F6 F500 0000 0032 0E00 2BF8 2C0E 32F9"
		$"FDEA FFFF FFE0 FFFF FFFF FF00 0000 0000"
		$"FFFD FA2B F500 0000 0000 0000 0000 0831"
		$"F5F6 2BF7 F500 F532 3924 81FC 0732 2C88"
		$"FFFF FFFF FFFF FF00 0000 0000 0000 0000"
		$"FFFF FFFF FDFC 81F7 F500 0000 0000 56F8"
		$"F6F8 2BF8 FB81 2BF5 2B2B E081 2C56 5DFE"
		$"FFFF FF00 0000 0000 0000 0000 0000 0000"
		$"FFFF FFFF FFFF FFFF FB2B F6F5 F500 00F6"
		$"F7F8 F581 FFFF FEFA F6F9 EAE0 F95D FCEA"
		$"FFFF 0000 0000 0000 0000 0000 0000 0000"
		$"0000 00FF FFFF FFFF FDF7 F9FB AC81 F8F5"
		$"00F5 F5FF FFFF FFFF FFE0 FFEA FFFF FFFF"
		$"FFFF 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 00FF E0FE E0FF FFFF FFFE"
		$"ACFA FAE0 FF00 0000 FFFF FFFF FFFF FFFF"
		$"FF00 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 00FF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FF00 0000 0000 FFFF FFFF FFFF"
		$"FF00 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000",
		/* [9] */
		'ih32',
		$"CCFF 0500 233D 606E 00A2 FF0A 000D 3F6C"
		$"A5C9 DEF0 FFEC 2A9D FF08 002D 577D 9CBE"
		$"D7F0 FC82 FF02 FC69 0096 FF09 0000 2B44"
		$"5F92 BDDF F5FE 88FF 01B1 0092 FF07 001F"
		$"4B7E B1CC E2F3 8EFF 01E0 248D FF08 0038"
		$"5F83 A3C4 DDF4 FE92 FF01 F94D 88FF 0712"
		$"304C 6B9F C5E4 F888 FF01 FEFE 80FD 06FC"
		$"FDFD FCFD FDFE 82FF 0182 0087 FF02 94EF"
		$"F78C FF80 FD01 FAFA 82F9 03FA FAFD FE81"
		$"FF01 C40E 86FF 0100 698C FF06 FDFC FAF9"
		$"F8F6 F682 F503 F6F7 FAFD 81FF 01F0 4C86"
		$"FF02 0042 F588 FF04 FEFE FDFB FA85 F680"
		$"F502 F6FA FD82 FF01 8300 85FF 0200 24E3"
		$"87FF 13FE FDFC F9F7 F6F3 F5F5 F6F7 F8F7"
		$"F6F5 F4F4 F5FA FD82 FF01 B500 83FF 1100"
		$"FF00 0DC7 F9EA E9EE F3F7 FAFC FDFD FBFA"
		$"F980 F502 F7F9 F980 F707 F6F6 F5F7 F9FB"
		$"FDFE 82FF 29DE 2100 FF00 0058 5A00 FF00"
		$"0098 E4E4 E5E3 E3E4 E5E6 E6E8 E7E9 EDEE"
		$"F3F7 F9F9 F8F6 F7F7 F6F7 F7FA FBFC FE83"
		$"FF01 FA5E 8000 2238 B65C 0000 FF00 5AD7"
		$"FBFF FFFE FCFC F9F4 EDE5 E1DC D7E2 F4FB"
		$"F8F6 F4F5 F5F7 FAFC FDFE 86FF 00AC 8000"
		$"08A3 AE12 0000 FF00 2AD0 83FF 00FE 81FF"
		$"0AFE FBDD E8FA F7F5 F5F8 F9FC 80FE 87FF"
		$"05DB 1C00 4EBB 5380 0003 FF00 09C1 80FF"
		$"06FE F9F6 F4F4 F6FD 80FF 0CD8 E5FA F7F5"
		$"F5F7 F8FB FCFD FDFE 86FF 05F5 3F11 AD96"
		$"2A80 001F FF00 00B9 FFFE F9F3 F2F4 F3F1"
		$"F5FE FFFF FDD7 EBFB F6F4 F5F6 F7F7 F9FA"
		$"FAFC FDFE 84FF 14FC 6B59 DF54 0200 00FF"
		$"FF00 04CB FFF9 F3F8 F8F3 F6FC 81FF 08FB"
		$"D8F1 FEFB F9F7 F7F6 81F5 03F8 F9FB FD82"
		$"FF05 FEF2 84A3 8F2B 8000 0DFF FF00 08DB"
		$"FFFC FBFF FAF3 F5F9 FB80 FF11 F6D8 F5FE"
		$"FCFC FAF9 F8F6 F7F7 F5F7 F7F8 FBFE 81FF"
		$"07FA C49D CB49 0900 0080 FF02 002F EF82"
		$"FF09 FBF8 F6F2 F8FF FFEF DAF9 80FF 0BFD"
		$"FCFB FBFA F9F7 F6F5 F3F8 FC80 FF05 FDE8"
		$"86CD 9524 8000 81FF 0051 85FF 07FA F4FA"
		$"FFFF E8DC FB84 FF07 FEFD F9F8 F7F3 F8FC"
		$"80FF 07F9 AA9E C455 0700 0081 FF01 0069"
		$"84FF 02FC F3F9 80FF 02E0 DFFD 84FF 12FD"
		$"FCF8 F7F7 F5F9 FDFF FFFD D883 D787 4C0F"
		$"0000 81FF 0100 9C84 FF01 F6F5 81FF 01DA"
		$"E384 FF12 FEFC FBF6 F6F7 F8FB FEFF FDF4"
		$"8CAB C849 7B4F 0082 FF01 00B8 84FF 07FB"
		$"E7CD E9EE FDD3 E984 FF12 FDFA F7F4 F8FA"
		$"FDFE FFFF FBC2 7BD1 825B B19F 0882 FF01"
		$"10D1 85FF 06F5 B9DB B4F1 CEEB 83FF 13FE"
		$"FAF7 F6F5 F9FC FEFF FFFD E87C BFC6 5182"
		$"CFD4 2682 FF06 10C3 EDF1 F6FB FE80 FF13"
		$"D6C2 CFDA F5C2 DFF3 F6FB FEFF FEFD F6F5"
		$"F5F7 FCFE 80FF 09F9 BB86 D485 41A9 E2F6"
		$"5082 FF1C 0016 2151 C5CC CCCD D1D9 DBE5"
		$"E2E9 E9CE EFF7 F1EC ECF3 F9FA F5F6 F7FB"
		$"FD80 FF0B FDD9 7FD4 B15F 79CB F0FF 8B00"
		$"81FF 8000 2853 F0E4 DDD7 D0C9 C5C4 C5CA"
		$"CFDF FBFF FFFD F5EF EDF6 F5F6 F7FB FDFF"
		$"FFFE F398 8AE3 7646 A8E0 F9FF C912 83FF"
		$"0100 9880 FF09 FEFA F3EA E4DE D9DC EDFD"
		$"81FF 16F9 E0F1 F4F7 F9FD FEFF FFFA D877"
		$"BAA9 4963 C9EE FEFF F451 82FF 0F00 13E0"
		$"FFFF FDF7 F4F3 F5F5 F3F0 F2F8 FE81 FF12"
		$"EBD7 F3F7 F8FA FCFE FFFE F498 79BF 834D"
		$"A6DF F880 FF01 8900 82FF 0D5B FFFF FBF6"
		$"F2F4 F7F6 F3F4 F6FB FD82 FF12 D8DB F8F9"
		$"F9FA FCFF FFFA D780 9574 3F7B CCEF FD80"
		$"FF01 B700 81FF 0C00 91FF FFF8 F4F8 FDFA"
		$"F0F3 F9FE 82FF 1AF9 EEC8 E8FD FBF9 F9FB"
		$"FEFC F3A8 98E3 6C46 B1E2 FBFF FFFA FFE1"
		$"2300 80FF 3100 BBFF FFFE FDFE FFFC F4F3"
		$"F3F4 F7FB FFFF F8E5 E9CE DEF6 FEFD FCFD"
		$"FEF8 CF88 E6A4 8BA1 D5F5 F2F2 EADB EAFE"
		$"6600 FFFF 000D E383 FF28 FEFC F8F6 F4F3"
		$"F4FB FFEA E9FF FCE9 E4EA F3FB FEFD F096"
		$"A2EA 869B BFC9 EFD1 B1CE C8D4 FFB1 00FF"
		$"FF00 5388 FF24 FDF5 F1F9 FBDA F4FF FFFE"
		$"FAF0 E1E4 F6FA E29E D2A0 7FAD DFB9 CCFF"
		$"C7D5 B8D0 FFE2 21FF FF00 9C87 FF25 FEF7"
		$"F3F8 FEED DFFD F8F6 F4F5 FDFE F2DC ECD6"
		$"CFE1 7A99 D1F5 EBB2 EAC8 EAEC F8FF F13B"
		$"FFFF 0FDE 87FF 25FA F1F6 FEFD E2F4 FBF8"
		$"F7F5 FBFF FFF0 CFD9 D7F7 C676 BCEA FFE9"
		$"CDFC FBEA CEA4 7C55 0F00 0035 F586 FF1E"
		$"FDF5 F2FC FFF0 DFFE FFFF FCF7 F6FA FFDD"
		$"CFDE F4FC AA9D DFFA F7E7 CF99 5B28 0983"
		$"0000 5E87 FF06 FCF5 F5FE FFE1 EB82 FF0E"
		$"F9FC F1CA D0E6 EDD2 7F8A 8767 4427 0F85"
		$"0002 FF00 7987 FF15 FEF9 F8FF FCDF E9FC"
		$"FFFF FCEA F1FC D9B0 D2D9 DB99 2A09 8600"
		$"82FF 0400 2878 C8F1 86FF 11F6 C7F0 DFC5"
		$"C6F0 FFEF D1B1 E965 5DEC D3BF 5984 0086"
		$"FF80 0006 0322 4871 B9F1 FE80 FF12 FDB0"
		$"A7E0 A4D2 AE56 6CC6 EEDE D407 5CE3 B49C"
		$"1480 008A FF85 0016 5ACC DCEA F7FF F8D5"
		$"C2A5 F25F 0000 1D7C CF82 0022 8182 4C80"
		$"008E FF82 000B 31B1 9260 3F5F B6EE F3F8"
		$"EB14 8100 0111 0980 0000 0281 0092 FF03"
		$"0009 200B 8100 051B 3E6D 7A06 0080 FF86"
		$"0093 FF8B 0082 FF84 00BC FFCC FF05 0023"
		$"3D5F 6C00 A2FF 0A00 0D3F 6AA2 C5D9 ECFF"
		$"E92A 9DFF 0900 2D56 7899 BBD4 EDFA FE81"
		$"FF02 FA67 0096 FF09 0000 2540 5D8E B8DB"
		$"F1FC 88FF 01AD 0092 FF08 001F 467B ADC7"
		$"DEEF FE8D FF01 DC24 8DFF 0800 385C 809E"
		$"C1DA F1FC 92FF 01F6 4A88 FF08 1230 4A6A"
		$"9BC1 E0F4 FD86 FF0D FBF7 F2EA E6E3 DFE1"
		$"E1DF E6EB F8FC 81FF 0180 0087 FF02 90EA"
		$"F489 FF10 FEFE FCF0 E3D8 BEB3 AAA0 A6A5"
		$"9FB3 C1E8 F481 FF01 C10E 86FF 0100 678B"
		$"FF10 FCE9 D8AD A298 7F7C 766B 7575 6C78"
		$"84C0 DF81 FF01 ED4A 86FF 0200 40F2 87FF"
		$"13FC F3F0 E0C8 B688 8B88 7B80 7F73 7774"
		$"6570 7BBB DD82 FF01 8100 85FF 0200 24DF"
		$"85FF 15FE FDF6 DBD3 A68C 7A4E 6872 7D91"
		$"9685 8077 616A 74B7 DB82 FF01 B000 83FF"
		$"2200 FF00 0DC3 F8EA E9EE F3F7 FAFA EEE8"
		$"C6A9 A16C 7078 8DA3 AA98 938B 7275 7588"
		$"A8BC E5F2 82FF 2ADA 1C00 FF00 0033 2700"
		$"FF00 0096 E2E4 E5E3 E3E4 E5E4 D6CF A998"
		$"9575 8494 AAAA A388 8986 7C8A 92AC C9D9"
		$"F2F9 82FF 01F8 5B80 0023 1875 1400 00FF"
		$"0058 D6FB FFFF FEFD FEFE F8EF DAD2 C6B8"
		$"B7C1 CEA3 845A 6E78 8EAF C2E3 F5FE 85FF"
		$"00A8 8000 0173 6880 0003 FF00 28CE 82FF"
		$"14F5 E7E6 F4FF FFFE FFD9 D4AE 8A74 6E93"
		$"A8CF E7F3 FBFD 86FF 05D7 1D00 2777 0C80"
		$"0003 FF00 09C0 80FF 06EB AD83 6D5D 7BEA"
		$"80FF 0FD4 D5AB 8771 6F90 A2C0 D5DF E5EF"
		$"F5FD FE83 FF04 F141 006D 4681 0020 FF00"
		$"00B9 FFFB B05B 506A 5B3F 7CEC FFFF FED2"
		$"D9AB 836A 647C 868F A2AA B4D0 E0F5 FA83"
		$"FF04 FC65 329A 0780 000D FFFF 0004 CCFF"
		$"A95E 97A0 5378 C7F9 80FF 12FC D6EA E1C1"
		$"AB8C 857E 6F77 7877 95A7 C6DE F8FE 80FF"
		$"04FE F558 6332 8100 23FF FF00 08DC FFCB"
		$"CCFF B14E 71A0 CCF7 FFFF F6D7 F2F1 DBCC"
		$"AFA3 9886 8987 7989 919E C5EC FC80 FF04"
		$"FCBB 5A84 0880 0080 FF02 002F EF81 FF21"
		$"FBCF 9A76 4DA3 FFFF EFDA F9FF FDFA E6D6"
		$"CAB6 B1A8 8879 705B 99D4 F9FE FFFE E543"
		$"8033 8100 81FF 0051 84FF 1FFE AC58 B4FF"
		$"FFE8 DCFB FFFF FEFB F9F8 F8EC DFAC 9281"
		$"5A97 CFF8 FFFF FD9E 4761 0280 0081 FF01"
		$"0069 84FF 02CF 53A6 80FF 02E0 DFFD 82FF"
		$"14FE FEE9 D6A0 8F85 76AB DBFA FFFE D24F"
		$"9530 2612 0000 81FF 0100 9C83 FF03 FD83"
		$"65F0 80FF 01DA E383 FF13 FEF9 D1B4 797D"
		$"83A8 CDF3 FEFE F963 455D 0271 4F00 82FF"
		$"0100 B883 FF08 FEA2 7EC5 EBEE FDD3 E982"
		$"FF14 FEF9 D6A8 8B67 97B4 E6F2 FEFE FDBF"
		$"377C 1332 B39B 0882 FF01 10D1 84FF 07E6"
		$"B5AC DDB4 F1CE EB82 FF14 F8EC BA95 7F74"
		$"ACCC F4FA FFFD E850 6563 0073 D2D0 2582"
		$"FF06 10C3 EDF1 F6FB FE80 FF20 D5C2 CFDA"
		$"F5C2 DFF3 F6FB FEFF EBD5 8876 6F8C CAEB"
		$"FEFF FFFE A31F 660A 18AA E3F2 4F82 FF2B"
		$"0016 2151 C5CC CBCD D2DB E0EB E9EE EDD2"
		$"EFF6 F1EC ECF5 D7BC 6E7D 89BC E6FB FFFF"
		$"FEDE 4451 3407 6CCE F1FF 8900 81FF 8000"
		$"2853 F0E4 DED8 D0C1 AF9D 99A2 AAC4 F8FF"
		$"FFFD F5F3 CBB5 6980 92CC EEFE FFFE F679"
		$"2157 0F1D AAE0 FAFF C512 83FF 0100 9881"
		$"FF08 E09D 6349 3C37 2E75 EE81 FF16 FEBD"
		$"AC5F 8098 DCF4 FFFF FBDA 3032 1800 53CC"
		$"EEFE FFF1 4E82 FF0F 0013 E0FF FDDD 8E5B"
		$"5570 6F5B 3F58 A0F5 81FF 12EF BBBC 849C"
		$"ACDA F2FF FEF7 851C 2A04 2FA8 DFF8 80FF"
		$"0185 0082 FF0D 5BFF FFD1 894C 668B 825F"
		$"617A BDEB 82FF 12DB C6CE 9CA6 AED2 EEFC"
		$"FBD6 6465 2B00 75CE EEFD 80FF 01B3 0081"
		$"FF0C 0091 FFFF 9A62 9FED BC37 59A8 F382"
		$"FF1A F9EE C9DD E7BC B1AC C1E6 F6F4 9F8B"
		$"E464 3BB1 E2FB FFFF FAFF DD23 0080 FF31"
		$"00BB FFFF E7DE F3FF D06A 565D 6B90 C6F5"
		$"FFF8 E5E9 CEDC F0E6 D4CB DBF0 F5CC 77E4"
		$"9F77 9FD6 F5F2 F2EA DBEB FC63 00FF FF00"
		$"0DE3 83FF 28F6 D19D 7B66 566B C4FF EBE9"
		$"FFFD EEE8 E0DA DCEA F4EF 8F97 EC81 92BF"
		$"C9EF D1B1 CEC8 D4FF AD00 FFFF 0053 87FF"
		$"25FE E475 429C F9DB F5FF F0D8 CFE6 E3E1"
		$"F3F9 E290 C499 7EAE DFB9 CCFF C7D5 B8D0"
		$"FFDD 20FF FF00 9C87 FF25 EA8A 5F99 E9EE"
		$"E2E7 9D85 6D65 D9FF F2DB EECE A3B2 619A"
		$"D2F5 EBB3 EAC8 EAEC F8FF EB39 FFFF 0FDE"
		$"86FF 26F9 B546 87E3 FFE3 F5AA 978F 6DBD"
		$"FFFF F0CF D9BC C493 65BE EBFF E9CD FAF9"
		$"E8CA A078 530F 0000 35F5 86FF 1EDC 704E"
		$"D4FF F0DF FEF8 FFCF 8C7F B6FF DED1 CDCB"
		$"CB85 9BE0 F9F4 E3CA 9558 2606 8300 005E"
		$"87FF 06DA 7B74 E3FF E1EB 81FF 0FF6 91AE"
		$"F2CC D0CC C2AC 7288 8464 4225 0C85 0002"
		$"FF00 7987 FF07 ECAD 8FDE FCDF E9FC 80FF"
		$"0AA9 81FC DAAE BDB0 B381 2409 8600 82FF"
		$"0400 2878 C8F1 85FF 12EE BBB1 EEDF C5C6"
		$"F0FF F490 77ED 6555 CEA8 9E4A 8400 86FF"
		$"8000 0603 2248 71B9 F1FE 80FF 12FB AAA5"
		$"E0A4 D2AD 546A C6E8 D2D3 0759 CF99 8712"
		$"8000 8AFF 8500 1658 CCDB EAF7 FFF8 D5C2"
		$"A5F2 5F00 001D 7DD1 8100 1F79 7747 8000"
		$"8EFF 8200 0B31 AE8F 5D3D 5FB6 EEF3 F8EB"
		$"1481 0001 1109 8000 0002 8100 92FF 0300"
		$"0920 0B81 0005 1B3E 6D7A 0600 80FF 8600"
		$"93FF 8B00 82FF 8400 BCFF CCFF 0500 233D"
		$"5C6A 00A2 FF0A 000D 3B67 9EC1 D5E8 FFE6"
		$"2A9D FF09 002D 5376 96B7 D0EA F7FD 81FF"
		$"02F8 6500 96FF 0900 0024 405A 8BB5 D7EE"
		$"F888 FF01 AA00 92FF 0800 1F43 79A9 C3D9"
		$"ECFB 8DFF 01D7 208D FF08 0033 597E 9BBC"
		$"D6EF FA92 FF01 F24A 88FF 0812 3049 6799"
		$"BDDC F1FA 86FF 0DFB F7F2 E9E5 E2DF E1E1"
		$"DEE5 EAF7 FB81 FF01 7C00 87FF 028D E6F1"
		$"89FF 10FE FEFC F0E2 D7BD B2A9 9FA5 A59F"
		$"B2C0 E7F3 81FF 01BD 0E86 FF01 0064 8BFF"
		$"10FC E8D7 ACA2 987E 7A74 6A74 746A 7783"
		$"C0DF 81FF 01E9 4A86 FF02 003F EE87 FF13"
		$"FCF3 F0E0 C8B5 868A 877A 807E 7176 7364"
		$"6F7A BBDD 81FF 02FC 7E00 85FF 0200 22DB"
		$"85FF 15FE FDF5 DAD2 A58B 784D 6672 7B90"
		$"9585 7F76 5F68 73B8 DB82 FF01 AE00 83FF"
		$"2200 FF00 0DBE F7EA E9EE F3F7 FAFA EEE8"
		$"C6A8 A06A 6F77 8CA3 AA98 938A 7074 7587"
		$"A8BC E4F2 82FF 2AD7 1C00 FF00 001C 1400"
		$"FF00 0092 E1E4 E5E3 E3E4 E5E4 D6CF A898"
		$"9474 8393 A9A8 A287 8884 7A89 91AC C9D9"
		$"F2F9 82FF 01F6 5880 0023 0450 0B00 00FF"
		$"0056 D3FB FFFF FEFD FEFE F8EF DAD2 C6B8"
		$"B6C0 CEA2 8358 6C77 8CAE C1E3 F5FE 85FF"
		$"00A4 8000 0146 4880 0003 FF00 27CD 82FF"
		$"14F5 E6E5 F3FF FFFE FFD9 D3AD 8973 6D92"
		$"A8CE E6F3 FBFD 86FF 05D2 1C00 1457 0280"
		$"0003 FF00 09BF 80FF 06EB AC82 6C5B 7AEA"
		$"80FF 0FD4 D5AB 8670 6D8E A1BF D4DF E5EF"
		$"F5FD FE83 FF04 EE41 0050 3881 0020 FF00"
		$"00B9 FFFB AF59 4E69 5A3E 7AEB FFFF FED2"
		$"D8AA 8269 627A 848E A1AA B4D0 E0F5 FA83"
		$"FF03 FA60 1879 8100 0DFF FF00 04CC FFA8"
		$"5E96 9F52 76C7 F980 FF12 FCD6 EAE1 C0AA"
		$"8A84 7C6D 7678 7694 A6C5 DEF9 FE81 FF03"
		$"F64E 4322 8100 23FF FF00 08DC FFCB CCFF"
		$"B14C 6F9F CCF7 FFFF F6D7 F2F1 DBCB AEA2"
		$"9785 8885 7887 909D C5EC FC80 FF03 FDBA"
		$"4162 8100 80FF 0200 2FEF 81FF 21FB CF99"
		$"754B A2FF FFEF DAF9 FFFD FAE6 D6C9 B6B0"
		$"A786 786F 5A99 D3F9 FEFF FEE5 3460 2181"
		$"0081 FF00 5184 FF1E FEAC 57B3 FFFF E8DC"
		$"FBFF FFFE FBF9 F8F8 ECDF AB91 8159 96CE"
		$"F8FF FFFE 9B27 4281 0081 FF01 0069 84FF"
		$"02CF 52A5 80FF 02E0 DFFD 82FF 14FE FEE9"
		$"D69E 8D84 76AA DBFA FFFF D341 5A16 1B12"
		$"0000 81FF 0100 9C83 FF03 FD82 63F0 80FF"
		$"01DA E383 FF13 FEF9 D1B4 777C 82A8 CDF2"
		$"FEFE FA5A 2837 006B 4E00 82FF 0100 B883"
		$"FF08 FEA1 7DC5 EBEE FDD3 E982 FF09 FEF9"
		$"D5A8 8A65 96B4 E6F2 80FE 07BC 1C4C 002E"
		$"B297 0082 FF01 10D1 84FF 07E5 B4AC DDB4"
		$"F1CE EB82 FF14 F8EC B994 7E73 ABCC F4FA"
		$"FFFE E840 393E 0071 D2CD 2582 FF06 10C3"
		$"EDF1 F6FB FE80 FF20 D5C2 CFDA F5C2 DFF3"
		$"F6FB FEFF EBD5 8675 6E8B CAEB FEFF FFFE"
		$"9F07 3200 18AB E3EF 4C82 FF1D 0016 2151"
		$"C5CC CBCD D2DB E0EB E9EE EDD2 EFF6 F1EC"
		$"ECF5 D7BC 6D7C 88BC E6FB 80FF 0ADB 312D"
		$"1B00 6ACE F1FF 8600 81FF 8000 2853 F0E4"
		$"DED8 D0C1 AE9D 99A1 A9C4 F8FF FFFD F5F3"
		$"CBB5 677F 91CC EEFE FFFE F76C 0631 001B"
		$"AAE0 FAFF C112 83FF 0100 9881 FF08 E09C"
		$"6248 3A35 2C74 EE81 FF16 FEBC AB5E 7F97"
		$"DCF4 FFFF FCD9 1F0F 0700 53CC EEFE FFED"
		$"4C82 FF0F 0013 E0FF FDDC 8D5A 536F 6D59"
		$"3E57 9FF5 81FF 17EF BABC 839B ABDA F2FF"
		$"FEF7 8200 0800 2FA8 DFF8 FFFF FC81 0082"
		$"FF0D 5BFF FFD0 884A 648A 815D 5F79 BDEA"
		$"82FF 12DB C6CE 9BA6 AED2 EEFC FBD4 5050"
		$"1A00 75CE EEFD 80FF 01B0 0081 FF0C 0091"
		$"FFFF 9961 9EED BB36 58A7 F382 FF1A F9EE"
		$"C9DD E7BC B0AC C1E6 F6F5 967D E45D 38B1"
		$"E2FB FFFF FAFF DA23 0080 FF31 00BB FFFF"
		$"E7DE F3FF D068 545B 698F C5F5 FFF8 E5E9"
		$"CEDC F0E5 D3CB DBF0 F5C8 66E1 9F70 9DD6"
		$"F5F2 F2EA DBEB FA61 00FF FF00 0DE3 83FF"
		$"28F6 D19C 7A64 546A C4FF EBE9 FFFD EEE8"
		$"DFD9 DCEA F4F0 858D ED83 93BF C9EF D1B1"
		$"CEC8 D4FF AA00 FFFF 0053 87FF 25FE E373"
		$"409C F9DB F5FF F0D8 CFE6 E3E1 F3F9 E28B"
		$"BB92 7CAE DFB9 CCFF C7D5 B8D0 FFD9 20FF"
		$"FF00 9C87 FF25 EB8A 5E98 E8EE E2E7 9C84"
		$"6C64 D9FF F2DB EFCD 9194 4A97 D2F5 EBB3"
		$"EAC8 EAEB F7FF E538 FFFF 0FDE 86FF 26F9"
		$"B545 87E3 FFE3 F5A9 968E 6CBC FFFF F0D0"
		$"D9AF A87C 5CBE EBFF E8CB F8F6 E4C6 9C74"
		$"500F 0000 35F5 86FF 1EDB 6F4C D3FF F0DF"
		$"FEF8 FFCF 8B7E B6FF DED3 C1AB A772 9BDF"
		$"F6F0 DEC4 9055 2406 8300 005E 87FF 06DA"
		$"7A72 E3FF E1EB 81FF 0FF5 90AD F2CD CFB2"
		$"9E87 5C86 8161 3F23 0C85 0002 FF00 7987"
		$"FF07 ECAC 8EDE FCDF E9FC 80FF 0AA9 80FC"
		$"D9AB B29B 9E70 1D09 8600 82FF 0400 2878"
		$"C8F1 85FF 12EE BBB1 EEDF C5C6 EFFF F48F"
		$"76ED 654C B492 8D43 8400 86FF 8000 0603"
		$"2248 71B9 F1FE 80FF 12FB AAA5 E0A4 D2AC"
		$"526A C6E8 D3D3 0A50 B381 780E 8000 8AFF"
		$"8500 1657 CADA E8F6 FFF8 D5C2 A5F2 5F00"
		$"001D 7DD1 8100 1C6D 6C44 8000 8EFF 8200"
		$"0B2F A88B 5A3C 5FB6 EEF3 F8EB 1481 0001"
		$"1109 8000 0002 8100 92FF 0300 041E 0981"
		$"0005 1B3E 6D7A 0600 80FF 8600 93FF 8B00"
		$"82FF 8400 BCFF",
		/* [10] */
		'h8mk',
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0009"
		$"1D3A 5A58 0A00 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0513 2C59 8EC2"
		$"E2F9 FFE9 3000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0004 1C46 729C BAD5 EEFD FFFF"
		$"FFFF FFFF 7904 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0001"
		$"0C23 3F5D 7FAB D8F7 FFFF FFFF FFFF FFFF"
		$"FFFF FFFF C016 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0007 1836 659B"
		$"C8E9 FAFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF F038 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0824 507C A2C0 DCF2 FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FF63 0000 0000 0000 0000 0000"
		$"000E 2A49 668B B7DF FCFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FF95 0900 0000 0000 0000 0000"
		$"007A F8FD FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFD0 2400 0000 0000 0000 0000"
		$"0387 FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFB 5D00 0000 0000 0000 0000"
		$"066F FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF 9704 0000 0000 0000 0000"
		$"0453 F7FF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF C516 0000 0000 0000 0100"
		$"0237 E3FF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF E836 0100 0108 878A 0700"
		$"0121 BFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FF6F 0301 0175 FFB8 1003"
		$"0013 93FF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFB9 1201 29E4 FF6C 1405"
		$"000C 6CFA FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFEC 3513 B6FF D944 1803"
		$"0009 51ED FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF 5D5A FFFF A830 1001"
		$"0006 42E0 FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF A6CD FFE9 601F 0700"
		$"0003 3DE2 FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF F6FD FFAA 3612 0200"
		$"0003 3DEC FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FC70 2408 0000"
		$"0002 4BF7 FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF CC42 1602 0000"
		$"0000 67FF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFA 812B 0B00 0000"
		$"0002 80FF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFF6 711D 0300 0000"
		$"000A A1FF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF 9413 0000 0000"
		$"0013 BFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF CB1D 0000 0000"
		$"001F D7FF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF F23C 0000 0000"
		$"001F CFFD FCFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FF66 0000 0000"
		$"000A 2D54 9FFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FF9B 0B00 0000"
		$"0002 030D 80FF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFD5 2900 0000"
		$"0000 000B A1FF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF 6100 0000"
		$"0000 0128 E2FF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF 9C06 0000"
		$"0000 0062 FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF C718 0000"
		$"0000 039C FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF EB39 0100"
		$"0000 15C2 FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FF77 0300"
		$"0002 27E2 FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFBE 1500"
		$"0002 56FD FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFF0 3600"
		$"0007 9EFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFD 5100"
		$"0020 DEFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFA EDD7 BF92 3104"
		$"0143 F9FF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFC F0D5 B08B 6F54 3C24 0F03"
		$"036F FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFF3 D6B7 9C80 664D 382A 1F13 0B06 0200"
		$"058D FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFA FDFF FFFF"
		$"C889 5E43 3124 1911 0905 0200 0000 0000"
		$"0D45 A1DD FCFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF CBBE FFFF FFD3"
		$"6734 170B 0603 0100 0000 0000 0000 0000"
		$"0914 2340 6082 A4D6 FFFF FFFF FFFF FFFF"
		$"FFFF FFF5 D5CD F2FF FFEA 628D FFFF F37A"
		$"340F 0200 0000 0000 0000 0000 0000 0000"
		$"0206 0C12 1A22 2E54 C2FF FFFF FFFF FFFF"
		$"FFFF FFB1 6051 68A4 DA97 2452 D3E3 A13E"
		$"1D04 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0001 0307 0E20 80F9 F1DB C8C8 E1FA"
		$"FFFF F356 1B0B 0813 2B1C 112B 525E 4523"
		$"0D01 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 000B 366E 6C5C 534E 5365"
		$"7E9C 962A 0800 0000 0101 0714 2428 1D0D"
		$"0400 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0002 0C17 1813 1010 141A"
		$"2024 1D11 0300 0000 0000 0105 090A 0603"
		$"0100 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000",
		/* [11] */
		'ics#',
		$"0006 0188 07CC 1C78 70FC C5FB DB01 43EB"
		$"621F 240F 34CC 130C 183E 0AFF 0FFF 07FE"
		$"0006 018E 07DC 1FF8 7FFC FFFF FFFF 7FFF"
		$"7FFF 3FFF 3FFC 1FFC 1FFE 0FFF 0FFF 07FE",
		/* [12] */
		'ics4',
		$"0000 0000 0000 0BB0 0000 000A A000 C1C0"
		$"0000 0AAA CE0B 1C00 000A AA0C CBC2 E000"
		$"0AAA 0C0C 2C2E CC00 AA0C 0CCB BBAB C2CC"
		$"AA0C CCBB CCCC CC2E 0A00 CC4B AB3C 2BCA"
		$"0AA0 CCBC CCCE EEBA 00A0 C3CC C4CC ABAA"
		$"00AA CBCC 2CCC AA00 000A C243 CCCC AA00"
		$"000A ACCC CCAA AEA0 0000 A0CC AAEA EAEA"
		$"0000 AAAE AEAE AEAE 0000 0AEA EAEA EEA0",
		/* [13] */
		'ics8',
		$"0000 0000 0000 0000 0000 0000 0034 3300"
		$"0000 0000 0000 00FF FF00 0000 342D 5D00"
		$"0000 0000 00FF FFFF 8181 072D 575D 0000"
		$"0000 00FF FFFF F5F6 2C33 3334 8800 0000"
		$"00FF FFFF 00F6 F60E 5D5E 33FD 3332 0000"
		$"FFFF 00F5 F6F8 325E 5E33 AD64 5D0E 2C59"
		$"FFFF F52B F8F7 825D 335D 3208 0832 33E0"
		$"00FF F5F5 F856 5D64 8888 8882 5D5E 5DFF"
		$"00FF FFF6 F632 647B 2BF7 F788 FD88 88FF"
		$"0000 FFF5 F8DB FA2B F732 39F9 FF88 E9FF"
		$"0000 FFFF 3239 F732 3939 32F8 FFFF 0000"
		$"0000 00FF 0E39 1540 38F8 F856 FFFF 0000"
		$"0000 00FF FF32 32F7 2C56 FFFE FDFD FD00"
		$"0000 0000 FFF6 F7F8 F4FE FDFD FDFD FDFD"
		$"0000 0000 FFFF FFFD FDFD FDFD FDFD FDFD"
		$"0000 0000 00FE FDFD FDFD FDFD FDFD FD00",
		/* [14] */
		'is32',
		$"8AFF 01BB BC85 FF01 0000 80FF 02BB D48F"
		$"83FF 8000 0567 7BE9 D0BF 8F82 FF80 0006"
		$"ECDC D6C8 BEBB 7081 FF80 0069 F2E4 DDDF"
		$"A5A5 BD5A B3DE FFFF 0000 F6ED E4AF C7A2"
		$"99B6 2A86 B5D2 DF90 0000 EFD1 A0B6 80A3"
		$"BFC4 CAE6 E5D9 D120 FF00 F3E7 A5A3 977D"
		$"6260 6E82 A9A6 A020 FF00 00E4 DEB7 9E83"
		$"C4BE B552 3F59 6020 FFFF 00EB B18E 7AC7"
		$"C2C3 C6A3 0059 2020 FFFF 0000 D8D6 CBC8"
		$"D0CB B8AC 0000 82FF 0A00 E4D5 D2D4 C5B4"
		$"AE97 0000 82FF 0800 00CE CABE B79D 0013"
		$"8023 82FF 0500 DAC0 A500 1A83 2381 FF80"
		$"0086 2382 FF00 0F86 2300 FF8A FF01 979C"
		$"85FF 0100 0080 FF02 97B5 6F83 FF80 0005"
		$"676D D4B8 9D72 82FF 8000 06EC D8B5 8BA0"
		$"9745 81FF 8000 69F2 E4D8 B361 7D99 2B78"
		$"B9FF FF00 00F7 EDE4 AF9D 5C6D 9019 3F77"
		$"A4BB 8700 00EF D1A0 B558 6986 8899 B4B5"
		$"AAA0 0EFF 00F3 E7A5 A364 5635 2E3B 5279"
		$"716A 0EFF 0000 E4DD 8751 80C4 BEB5 471F"
		$"3038 0EFF FF00 EB9B 2174 C7B9 9073 8100"
		$"300E 0EFF FF00 008A 5DBD A15A 5C95 AC00"
		$"0082 FF0A 00AB 625A 4481 B2AE 9600 0082"
		$"FF08 0000 9B8C B5B6 9D00 1380 2382 FF05"
		$"00DB C0A5 001A 8323 81FF 8000 8623 82FF"
		$"000F 8623 00FF 8AFF 014B 4C85 FF01 0000"
		$"80FF 024B 5760 83FF 8000 0567 65CA 764C"
		$"5F82 FF80 0006 ECD4 A373 5B4B 3581 FF80"
		$"0069 F2E4 D697 4F3E 4D21 5EA4 FFFF 0000"
		$"F6ED E4AE 854C 3A4D 1335 5C89 A683 0000"
		$"EFD1 A0B5 4758 756F 819A 9A8E 840C FF00"
		$"F3E7 A5A3 5432 2C24 3044 665D 580C FF00"
		$"00E4 DE89 537A C4BE B545 1D2A 310C FFFF"
		$"00EB 9B24 74C7 B991 7581 002A 0C0C FFFF"
		$"0000 8C61 BDA2 5D60 96AC 0000 82FF 0A00"
		$"AD65 5E48 83B3 AE97 0000 82FF 0800 009C"
		$"8EB5 B69D 0013 8023 82FF 0500 DBC0 A500"
		$"1A83 2381 FF80 0086 2382 FF00 0F86 2300"
		$"FF",
		/* [15] */
		's8mk',
		$"0000 0000 0000 0000 0000 0000 009E FF00"
		$"0000 0000 0000 009E FF00 0000 9EFF FF00"
		$"0000 0000 009E FFFF FF9E 00FF FFFF 0000"
		$"0000 009E FFFF FFFF FFFF FFFF FF00 0000"
		$"009E FFFF FFFF FFFF FFFF FFFF FFFF 0000"
		$"FAFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"9EFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"00FF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"009E FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"0000 FFFF FFFF FFFF FFFF FFFF FF6B 9EFF"
		$"0000 9EFF FFFF FFFF FFFF FFFF FF9E 0000"
		$"0000 00FF FFFF FFFF FFFF FFFF FFFA 0000"
		$"0000 009E FFFF FFFF FFFF FFFF A317 0500"
		$"0000 0000 FFFF FFFF FFFF F6DF B36B 1F02"
		$"0000 0000 9EFF FFFF F9E5 D0B5 8E55 1701"
		$"0000 0000 00FD E39A 7350 351F 1008 0200",
		/* [16] */
		'it32',
		$"0000 0000 FFFF D2FF 8600 EFFF 8D00 E8FF"
		$"8C00 0112 4B82 00E2 FF8C 0007 0D44 6C8C"
		$"A5B7 BC8B 8100 DDFF 8C00 0D0D 446A 8AA0"
		$"AFBF CBD8 E1E7 E3A9 0B81 00D7 FF8C 0012"
		$"0D44 6A8A A0AF BFCB D7E0 E6EA EEEF F1F3"
		$"EABB 3981 00D2 FF8C 0017 194F 7288 9EAF"
		$"BFCB D7E0 E6EA EEEF F1F3 F5F7 FAFD F7EE"
		$"CD62 8200 CCFF 8C00 1519 4F75 8EA3 B2C0"
		$"CCD7 E0E6 EAEE EFF1 F3F5 F7FA FDFE FE80"
		$"FF03 FCF0 DD87 8200 C7FF 8C00 1519 4F72"
		$"88A3 B2C0 CDD8 E2E8 EBEE F0F1 F3F5 F7FA"
		$"FDFE FE85 FF04 FEF3 E7A6 1981 00C2 FF8C"
		$"0015 194F 758E A3B2 C0CC D7E2 E8EB EEF0"
		$"F1F3 F5F8 FAFD FEFE 8AFF 04FE F6EC BF43"
		$"8100 BDFF 8C00 1519 4F75 8EA3 B2C0 CDD8"
		$"E2E8 EBEE F0F1 F3F5 F8FB FDFE FE90 FF03"
		$"FAEF D773 8200 B7FF 8C00 1519 4F75 8EA3"
		$"B2C0 CDD8 E2E8 EBEE F0F1 F3F5 F8FA FDFE"
		$"FE95 FF04 FDF2 E498 0B81 00B2 FF8C 0015"
		$"194F 758E A3B2 C0CD D8E2 E8EB EEF0 F1F3"
		$"F5F8 FBFD FEFE 9AFF 04FE F5EB B836 8100"
		$"ADFF 8C00 152A 577F 90A3 B2C0 CDD8 E2E8"
		$"EBEE F0F1 F3F5 F8FB FDFE FEA0 FF03 F8EE"
		$"CE63 8200 A7FF 8C00 152A 577A 93A5 B6C3"
		$"D0DA E2E8 EBEE F0F1 F3F5 F8FB FDFE FEA5"
		$"FF03 FCF1 DF8A 8200 A2FF 8C00 152A 577A"
		$"93A5 B6C3 D0DB E3E8 ECEE F0F1 F3F5 F8FB"
		$"FDFE FEAA FF04 FEF3 E8AB 2381 009D FF8C"
		$"0015 2A57 7A93 A5B6 C3D0 DBE3 E8EC EEF0"
		$"F2F4 F6F8 FBFD FEFE 93FF 80FE 00FF 80FE"
		$"00FF 80FE 8FFF 03F7 EEC7 5182 0098 FF8B"
		$"0015 2A57 7A93 A5B6 C3D0 DBE3 E8EC EEF0"
		$"F2F4 F6F8 FBFD FEFE 98FF 80FE 00FF 80FE"
		$"00FF 80FE 8FFF 03FB F0DA 7E82 0096 FF88"
		$"0015 315B 7F97 A5B5 C3D0 DBE3 E8EC EEF0"
		$"F2F4 F6F8 FBFD FEFE 9DFF 80FE 00FF 80FE"
		$"00FF 80FE 8FFF 04FE F2E6 A114 8100 96FF"
		$"8300 1533 5B7F 99A9 B9C7 D2DC E4E8 ECEE"
		$"F0F2 F4F6 F8FB FDFE FEBF FF04 FEF6 EBBD"
		$"3E81 0096 FF16 0015 6788 99AC B9C7 D2DC"
		$"E5E9 ECEE F0F2 F4F6 F8FB FDFE FE97 FF80"
		$"FD00 FF80 FC00 FF80 F900 FF80 F700 FF80"
		$"F700 FF80 F700 FF80 F700 FF80 F900 FF80"
		$"FD88 FF03 F9EE D36D 8200 95FF 1100 6DBC"
		$"D4DD E5E9 ECEE F0F2 F4F6 F9FC FDFE FE9C"
		$"FF80 FD00 FF80 FC00 FF80 F900 FF80 F700"
		$"FF80 F700 FF80 F700 FF80 F700 FF80 F900"
		$"FF80 FD88 FF04 FDF1 E394 0581 0095 FF0C"
		$"0060 CAED F0F2 F4F6 F9FC FDFE FEA1 FF80"
		$"FD00 FF80 FC00 FF80 F900 FF80 F700 FF80"
		$"F700 FF80 F700 FF80 F700 FF80 F900 FF80"
		$"FD88 FF04 FEF4 EAB3 3081 0095 FF07 0028"
		$"B4EA F5FD FEFE D5FF 03F8 EECD 5E82 0094"
		$"FF05 0005 98E6 F3FE A0FF 80FE 00FF 80FB"
		$"00FF 80F6 00FF 80F3 00FF 80F1 00FF 80F0"
		$"00FF 80F0 00FF 80F0 00FF 80F0 00FF 80F0"
		$"00FF 80F9 89FF 03FC F1DE 8782 0094 FF05"
		$"0000 77DB F1FC A0FF 80FE 00FF 80FB 00FF"
		$"80F6 00FF 80F3 00FF 80F1 00FF 80F0 00FF"
		$"80F0 00FF 80F0 00FF 80F0 00FF 80F0 00FF"
		$"80F9 89FF 04FE F3E8 AA20 8100 94FF 0500"
		$"0053 CDEE F9A0 FF80 FE00 FF80 FB00 FF80"
		$"F600 FF80 F300 FF80 F100 FF80 F000 FF80"
		$"F000 FF80 F000 FF80 F000 FF80 F000 FF80"
		$"F98A FF03 F7ED C54B 8200 93FF 0500 002F"
		$"B8EC F7D8 FF03 FBF0 D876 8200 93FF 0600"
		$"0012 A0E8 F4FE 97FF 80FE 00FF 80FA 00FF"
		$"80F6 00FF 80F3 00FF 80EF 00FF 80F1 00FF"
		$"80F3 00FF 80F4 00FF 80F3 00FF 80F1 00FF"
		$"80F0 00FF 80F0 00FF 80F9 8AFF 04FD F2E6"
		$"9D0F 8100 93FF 0600 0003 84E3 F2FE 97FF"
		$"80FE 00FF 80FA 00FF 80F6 00FF 80F3 00FF"
		$"80EF 00FF 80F1 00FF 80F3 00FF 80F4 00FF"
		$"80F3 00FF 80F1 00FF 80F0 00FF 80F0 00FF"
		$"80F9 8AFF 04FE F5EB BA3B 8100 84FF 8700"
		$"82FF 8000 0369 D8F1 FC84 FE90 FF80 FE00"
		$"FF80 FA00 FF80 F600 FF80 F300 FF80 EF00"
		$"FF80 F100 FF80 F300 FF80 F400 FF80 F300"
		$"FF80 F100 FF80 F000 FF80 F000 FF80 F98B"
		$"FF03 F9EE D26C 8200 81FF 8A00 81FF 8000"
		$"0E4B C9ED F7FD FCFB FAFA FBFB FCFC FDFD"
		$"80FE CAFF 04FD F1E2 9105 8100 80FF 8C00"
		$"80FF 8000 062C B4EA F3F9 F6F4 80F2 09F3"
		$"F4F5 F7F8 F9FA FBFB FC82 FD00 FF80 FC00"
		$"FF80 F700 FF80 F200 FF80 EF00 FF80 F000"
		$"FF80 F400 FF80 F600 FF80 F400 FF80 F300"
		$"FF80 F100 FF80 F000 FF80 F400 FF80 F800"
		$"FF80 FD8B FF04 FEF4 E9B0 2A81 0001 FFFF"
		$"8300 0438 8788 816A 8200 80FF 8000 1D12"
		$"9FE4 EDF2 EBE2 E0E2 E2E6 E8E9 EBED EFF0"
		$"F2F3 F5F6 F7F7 F8F9 FBF9 F9FA FD80 F604"
		$"FEF1 F2F2 FF80 EF00 FF80 F000 FF80 F400"
		$"FF80 F600 FF80 F400 FF80 F300 FF80 F100"
		$"FF80 F000 FF80 F400 FF80 F800 FF80 FD8C"
		$"FF03 F7EE CA56 8800 050B 6890 D07E 7383"
		$"0001 FFFF 8000 2D03 84DE E7E8 DAD4 D6D3"
		$"D0CF D3D2 D6DA DDE0 E4E6 E8EA ECED EEF0"
		$"F2F1 F2F3 F7F0 F1F2 FBEE EFEF FDED EEEE"
		$"FEEF F0F0 FF80 F400 FF80 F600 FF80 F400"
		$"FF80 F300 FF80 F100 FF80 F000 FF80 F400"
		$"FF80 F800 FF80 FD8C FF03 FCF0 DC83 8800"
		$"0551 6BE5 E064 6283 0001 FFFF 8100 2B62"
		$"CDE0 DDD2 F2FA F1F3 F2E4 E4E0 D6D0 D1D1"
		$"CED4 D6D9 DCDF E2E3 E5E8 E9EC EEEF F1F2"
		$"F3F4 F5F6 F8F9 FAFB FDFE FEB0 FF04 FEF3"
		$"E7A6 1C86 0006 2F58 9CFF 8D4C 4383 0001"
		$"FFFF 8100 0543 BBD9 D3CE F981 FF22 FCFD"
		$"FEF9 FDF9 EEEE E8E1 D9D8 D2D2 D3D0 D1D0"
		$"D9D1 D3D6 E2D8 DBDC EBE4 E6E9 F5F1 F4F6"
		$"FE80 F900 FF80 F300 FF80 F000 FF80 F100"
		$"FF80 F400 FF80 F800 FF80 FC00 FF80 FE90"
		$"FF04 FEF6 ECC1 4785 0007 1259 70E6 D355"
		$"4B1B 8300 01FF FF81 0005 24A5 D2CC CFF6"
		$"87FF 20FE FFFF FEFF FEF9 F4F0 EAE2 E6DA"
		$"D3D3 CFD2 CCCD CCD4 D3D5 DBEB EBF0 F4FD"
		$"F8F9 F9FF 80F3 00FF 80F0 00FF 80F1 00FF"
		$"80F4 00FF 80F8 00FF 80FC 00FF 80FE 91FF"
		$"03FA F0D7 7585 0006 3B5B C6FC 9549 4684"
		$"0001 FFFF 8100 050F 8ECB C7D4 F793 FF14"
		$"FDF9 F8F0 EFF1 E7E4 DFD4 D0D2 D7E0 EAF1"
		$"FCF8 F9F9 FF80 F300 FF80 F000 FF80 F100"
		$"FF80 F400 FF80 F800 FF80 FC00 FF80 FE91"
		$"FF04 FDF2 E497 0B83 0007 1E46 83FA CD4D"
		$"562C 8400 01FF FF82 0004 74C3 C5DD FC9A"
		$"FF0A FDFD F9FA FAE0 D6EB F4FB FEAF FF04"
		$"FEF5 EBB7 3583 0006 464B D3FE 8145 4185"
		$"0001 FFFF 8200 0356 B5C2 E18F FF81 FE89"
		$"FF09 FEE0 D1E3 EFF9 F5F6 F6FF 80F0 00FF"
		$"80F1 00FF 80F5 00FF 80FB 00FF 80FE 00FF"
		$"80FE 96FF 03F8 EECE 6082 0007 4D4C 74FF"
		$"BC70 3721 8500 01FF FF82 0003 3AA7 C2E9"
		$"89FF 80FE 80FC 81FB 01FC FE87 FF09 FAD5"
		$"CEDF EDF9 F5F6 F6FF 80F0 00FF 80F1 00FF"
		$"80F5 00FF 80FB 00FF 80FE 00FF 80FE 96FF"
		$"04FC F1DF 8C05 8000 0828 6663 E3E3 7F69"
		$"3009 8400 80FF 8200 0320 95C2 ED88 FF04"
		$"FDFC FBFA F783 F602 F7FA FE86 FF09 FDCE"
		$"CBDD ECF9 F5F6 F6FF 80F0 00FF 80F1 00FF"
		$"80F5 00FF 80FB 00FF 80FE 00FF 80FE 96FF"
		$"04FE F4E8 AA1F 8000 074F 4F97 FFA7 5E67"
		$"5185 0080 FF82 0003 0A7A C1EE 87FF 07FD"
		$"FAF8 F5F4 F3F1 F181 F203 F1F6 FBFE 85FF"
		$"06FA CECB E0EF F9FE B1FF 0EF6 ECC5 4B00"
		$"002E 5D70 EFEB 776A 5312 8500 80FF 8200"
		$"0302 6EC7 F284 FF04 FEFC FAF9 F582 F201"
		$"F3F2 80F1 03EF F4FA FE85 FF09 F0C9 CCE0"
		$"EFFA F6F7 F7FF 80F0 00FF 80F1 00FF 80F3"
		$"00FF 80F5 00FF 80F7 00FF 80F9 00FF 80FC"
		$"00FF 80FE 8EFF 0EFE FBEC D370 0000 4F59"
		$"BCFF A869 4E33 8600 80FF 8300 0247 CDF7"
		$"82FF 14FE FCFA F7F4 F4F1 F1F3 F3F4 F5F5"
		$"F4F2 F1F2 F1F6 FBFE 85FF 09EF C6CF E2F1"
		$"FBF6 F7F7 FF80 F000 FF80 F100 FF80 F300"
		$"FF80 F500 FF80 F700 FF80 F900 FF80 FC00"
		$"FF80 FE8E FF0E FEFB EDD9 8B0C 3B4B 79FF"
		$"ED8C 583D 1585 0082 FF82 0002 3CD1 FC80"
		$"FF15 FEFE FBF8 F5F2 F1F1 F2F5 F6F6 F5F4"
		$"F3F2 F1F2 F5F6 FAFE 86FF 05EA C6D2 E4F2"
		$"FB80 F700 FF80 F000 FF80 F100 FF80 F300"
		$"FF80 F500 FF80 F700 FF80 F900 FF80 FC00"
		$"FF80 FE8D FF0E FEFD F9EC DAA3 3248 4EC5"
		$"F9A3 7046 3B86 0082 FF81 0002 066E DF81"
		$"FF14 FDFA F7F4 F2F1 F2F3 F7F8 F7F4 F3F3"
		$"F2F3 F4F7 FAFB FE87 FF05 E1C6 D6E8 F4FC"
		$"B0FF 0EFE FBF7 ECD8 B352 4C85 FFCB 7C77"
		$"5723 8500 83FF 8200 016B E280 FF13 FEFB"
		$"F7F3 F2F2 F5F9 FAFA F9F4 F2F1 F2F4 F7FA"
		$"FBFE 89FF 05D9 C5D8 EAF6 FD80 FC00 FF80"
		$"F700 FF80 F400 FF80 F200 FF80 F000 FF80"
		$"F000 FF80 F100 FF80 F400 FF80 F900 FF80"
		$"FE88 FF0F FEFD F9F4 E9D4 9E60 65D7 FC86"
		$"7663 3707 8500 83FF 8200 018A E580 FF10"
		$"FEFA F5F2 F4F6 FAFD FDFA F6F2 F1F3 F5F9"
		$"FC80 FE89 FF05 D9C7 DBEC F7FD 80FC 00FF"
		$"80F7 00FF 80F4 00FF 80F2 00FF 80F0 00FF"
		$"80F0 00FF 80F1 00FF 80F4 00FF 80F9 00FF"
		$"80FE 87FF 0FFE FEFB F6EF E3CD 765F A1FC"
		$"CA68 705C 2F86 0083 FF81 0002 03A5 ED81"
		$"FF13 FCF8 F6F8 FAFD FFFF FAF5 F1F1 F2F5"
		$"F8FA FCFC FDFE 87FF 06F9 D0C9 DEED F8FE"
		$"80FC 00FF 80F7 00FF 80F4 00FF 80F2 00FF"
		$"80F0 00FF 80F0 00FF 80F1 00FF 80F4 00FF"
		$"80F9 00FF 80FE 87FF 0FFE FCF8 F2E9 DB8A"
		$"6180 E9FA 8967 4645 0485 0085 FF81 0001"
		$"B7F4 81FF 03FE FCFB FC81 FF0D FBF7 F3F2"
		$"F2F4 F4F5 F6F7 F9FA FCFE 85FF 06F4 CBCC"
		$"E0EF F9FE ADFF 0FFE FDFA F4EC E1C2 5669"
		$"C0FF C875 5634 1586 0085 FF81 0001 BBF7"
		$"83FF 00FE 82FF 0EFE FAF8 F5F4 F3F2 F1F1"
		$"F2F3 F5F8 FBFE 84FF 06F2 CBCF E2F1 FAFE"
		$"81FF 80FE 00FF 80FC 00FF 80F9 00FF 80F8"
		$"00FF 80F6 00FF 80F3 00FF 80F1 00FF 80F2"
		$"00FF 80FA 85FF 10FE FEFB F7F0 E6D8 8455"
		$"93FF EB95 723E 3206 8500 85FF 8100 0246"
		$"CAFC 8AFF 0EFE FCFA F8F6 F5F4 F3F2 F1F2"
		$"F4F7 FBFE 83FF 05EA C5D2 E5F2 FB82 FF80"
		$"FE00 FF80 FC00 FF80 F900 FF80 F800 FF80"
		$"F600 FF80 F300 FF80 F100 FF80 F200 FF80"
		$"FA85 FF10 FEFC F9F3 EADD AE60 6FC7 FFBA"
		$"7274 4323 0285 0085 FF81 0001 66D7 8DFF"
		$"01FE FC81 FA06 F7F4 F2F1 F3F9 FD83 FF05"
		$"E1C8 D5E7 F4FC 82FF 80FE 00FF 80FC 00FF"
		$"80F9 00FF 80F8 00FF 80F6 00FF 80F3 00FF"
		$"80F1 00FF 80F2 00FF 80FA 84FF 10FE FEFB"
		$"F6EE E3CF 9872 97F3 F485 7D5A 2910 8500"
		$"86FF 8100 027E D7FE 8EFF 81FE 06FA F6F4"
		$"F1F3 F9FD 83FF 05E4 CBD7 E9F5 FCAC FF0F"
		$"FEFC F8F2 E8DA 9975 88DE FFC2 806F 4F3A"
		$"8600 86FF 8100 029B E3FE 91FF 07FD FAF5"
		$"F3F2 F5FA FE82 FF06 FDDA C6D9 EAF6 FD92"
		$"FF80 FD00 FF80 F600 FF80 F200 FF80 F100"
		$"FF80 FA83 FF10 FEFD FAF4 ECE0 C156 6BA9"
		$"FFE8 8969 5552 1C85 0087 FF81 0001 ADED"
		$"91FF 07FC FAF6 F3F3 F6FA FD83 FF06 F9D1"
		$"C7DC ECF7 FD92 FF80 FD00 FF80 F600 FF80"
		$"F200 FF80 F100 FF80 FA83 FF0F FEFB F7F0"
		$"E6D8 7A57 7FEB FDB0 8266 493C 8600 87FF"
		$"8100 02AD EBFE 8FFF 07FE FAF6 F2F2 F6FA"
		$"FD84 FF06 F8D0 CADE EEF8 FE92 FF80 FD00"
		$"FF80 F600 FF80 F200 FF80 F100 FF80 FA82"
		$"FF11 FEFD F9F3 EADE B23F 55A6 FFE6 7473"
		$"5B33 4309 8500 87FF 8100 01BC F38F FF07"
		$"FEFB F7F2 F1F3 FAFC 85FF 06F3 CBCD E0EF"
		$"F9FE A9FF 12FE FEFB F6EE E3D3 7951 87E1"
		$"FF9D 695E 454E 6D22 8400 87FF 8100 0251"
		$"C5FB 8FFF 07FD F8F3 F1F3 F7FC FE85 FF06"
		$"F0C6 CEE2 F0FA FE8E FF80 FE00 FF80 F900"
		$"FF80 F300 FF80 F200 FF80 F700 FF80 FD81"
		$"FF12 FEFC F8F2 E8DB 9A6F 77C3 FCDA 796D"
		$"5B57 6D86 4584 0087 FF81 0002 67C3 F78E"
		$"FF07 FEFB F6F1 F2F5 FAFD 86FF 06F1 C8D1"
		$"E4F2 FBFE 8EFF 80FE 00FF 80F9 00FF 80F3"
		$"00FF 80F2 00FF 80F7 00FF 80FD 80FF 14FE"
		$"FDFA F4EC E1C8 6581 ABFF FFA0 725D 4152"
		$"8399 6B0B 8200 88FF 8100 0288 D1FB 8EFF"
		$"07FE FAF4 F1F3 F8FC FE86 FF06 E7C5 D3E6"
		$"F3FB FE8E FF80 FE00 FF80 F900 FF80 F300"
		$"FF80 F200 FF80 F700 FF80 FD80 FF14 FEFB"
		$"F7F0 E6D6 7D67 7FCD FFD2 896F 5339 6B99"
		$"A78D 2782 0088 FF81 0002 93D8 FC8E FF06"
		$"FEFA F4F1 F4F9 FD86 FF06 FCE3 C9D6 E7F4"
		$"FCA8 FF15 FEFC F9F3 EADD A03F 6499 FCF8"
		$"A18B 6841 3B8F A5B1 A952 8200 88FF 8100"
		$"0290 DAFC 8EFF 07FE FBF6 F3F6 E9DC DF85"
		$"FF06 FCDD C7D8 E9F5 FC8F FF80 FA00 FF80"
		$"F300 FF80 F000 FF80 F700 FF80 FD82 FF17"
		$"FEFE FBF6 EEE3 CF77 6268 CBFF C384 8256"
		$"355E 9DB1 BCC0 7D08 8100 88FF 8100 02A8"
		$"E6FE 8FFF 0BFD FAF6 F6B9 9C96 96F7 E7BE"
		$"CE80 FF06 FAD2 C8DA EBF6 FD8F FF80 FA00"
		$"FF80 F300 FF80 F000 FF80 F700 FF80 FD82"
		$"FF17 FEFC F8F2 E8DA 8F5C 699C F8F3 887F"
		$"6C42 4F8C A7BB C7CD A228 8100 88FF 8000"
		$"0229 AFEE 90FF 15FE FCF9 F8F8 FBF6 7FE7"
		$"CEBE AE96 FFFF FBD2 C8DB ECF7 FD8F FF80"
		$"FA00 FF80 F300 FF80 F000 FF80 F700 FF80"
		$"FD81 FF18 FEFD FAF4 ECE0 C55C 6D86 E2FF"
		$"C185 7858 546A 9BB2 C6D2 D7C0 5682 0087"
		$"FF80 0002 44AD ED91 FF06 FEFB FAFA AC7F"
		$"B680 FF0A F77F FFFF F9CD C8DB ECF7 FDA6"
		$"FF18 FEFB F7F0 E6D6 9060 76C2 FFE8 9982"
		$"6744 5085 A7BC CFDC DED4 8282 0086 FF81"
		$"0002 6BC2 F492 FF17 FEFC FDFD BEA6 FFFF"
		$"F7AE 96FF FFF3 C5C5 DAEA F4FB FDFD FEFE"
		$"87FF 80FC 00FF 80F4 00FF 80F0 00FF 80F4"
		$"00FF 80FC 84FF 1AFE FDF9 F4EB DEB5 636E"
		$"8AEC FFB9 8B75 5837 639B B0C5 D7E5 E5E2"
		$"A81F 8100 86FF 8100 0662 C8F6 FFFC FDFE"
		$"8FFF 17DE C5FF C69E FFE7 969E F7FF FFF3"
		$"C1BF D4E4 EEF5 F7F9 FBFC FD80 FE83 FF80"
		$"FC00 FF80 F400 FF80 F000 FF80 F400 FF80"
		$"FC84 FF1A FEFB F7EF E4D3 9779 73BC FFDA"
		$"9A93 6C3C 398A A6BB CEDF EBEC E8C3 4A82"
		$"0085 FF82 000B B7CF DDD6 E1EC EDF4 F9F4"
		$"F9FC 89FF 1BE7 A67F 8ED7 D77F B6F7 FFFF"
		$"FEEA C0BC CDD9 E5EC EFF2 F4F6 F8FA FBFC"
		$"FD80 FE01 FFFF 80FC 00FF 80F4 00FF 80F0"
		$"00FF 80F4 00FF 80FC 83FF 1BFE FCF9 F2E9"
		$"DCA9 6B84 9DEF FCAA 8D91 6F32 4F9B B0C5"
		$"D6E5 F0F3 EDD7 7682 0086 FF81 0013 3C5E"
		$"7F7B 8EA5 91B0 C7CA D4DC E2EA EEEC F4F7"
		$"FCFE 86FF 1CDF BE9E 8E9E FFFE DFC5 D0DB"
		$"E1E2 E4E5 E7EA EDF0 F2F4 F7F8 FAFB FCFD"
		$"FEFE 94FF 1DFE FEFB F5ED E2D2 736D 8CC8"
		$"FFD6 8B8B 8055 3482 A5BA CEDE EBF4 F8F1"
		$"E59D 0F81 0086 FF87 0018 0A82 B2B8 B9B8"
		$"B7BE BDBF C8CD D0DF E2E6 EDF2 F8F9 FFFE"
		$"FEFF FE82 FF18 DEC7 D8E9 F5FB F7F0 E8E4"
		$"E3E6 E7EA EDF0 F3F6 F8FA FCF7 F8F8 FF80"
		$"F000 FF80 F200 FF80 F900 FF80 FE82 FF1D"
		$"FEFC F8F1 E7D9 8C6D 86A9 F5F8 AE8C 8076"
		$"4260 98AF C4D6 E5F0 F7FB F4EB BA3B 8100"
		$"86FF 8800 22AD CBCA C8C5 C2C0 BEBB BAB6"
		$"B4B9 B6BC C0C5 C7D0 D7DB E4ED E9F4 FBF7"
		$"FBFD DBCB DDEC F7FD 80FF 0FFC F6EE E7E4"
		$"E4E5 E9ED F1F4 F8F4 F6F8 FE80 F000 FF80"
		$"F200 FF80 F900 FF80 FE81 FF1E FEFD FAF4"
		$"EBDF BB58 6C86 DBFF CD93 846C 5348 7DA4"
		$"BACD DDEB F4FA FDF8 EED2 6C82 0085 FF87"
		$"0023 35CF E1DF DDDA D8D6 D4D1 CECC C9C6"
		$"C3C0 BCB9 B6B8 B7B9 BBBE BDC4 C9CA D5DC"
		$"D1D1 E2EF F8FD 84FF 0BFB F4EC E6E5 E7EC"
		$"F3F1 F4F7 FE80 F000 FF80 F200 FF80 F900"
		$"FF80 FE80 FF20 FEFE FBF7 F0E5 D490 5881"
		$"A4FF F296 8E71 5929 5499 AEC3 D5E4 F0F7"
		$"FBFE FDF1 E291 0581 0086 FF86 0023 91E2"
		$"F0EE EDEB E9E8 E6E4 E2E0 DEDB D9D6 D2CF"
		$"CCC9 C3C0 BCB9 B6B3 B4B7 BCC2 CAD7 E6F1"
		$"FAFE 88FF 07F9 F1E5 ECF3 F8FC FE8F FF20"
		$"FEFC F9F3 EADD 966F 748F D4FF B691 8465"
		$"391C 6CA2 B8CC DDEA F4FA FDFE FEF4 E9B0"
		$"2A81 0088 FF84 0023 C3F1 F9F8 F8F7 F5F4"
		$"F3F2 F1EF EDEC EAE8 E4E2 DFDC D9D6 D2CF"
		$"CDCA C7C7 C9CD D7E1 EDF5 FCFE 89FF 06FE"
		$"E5E5 E7EE F3FD 80F0 00FF 80F4 00FF 80FC"
		$"84FF 20FE FBF6 EEE3 CD5E 6480 9BF4 E297"
		$"8771 5726 2293 ADC1 D4E4 EFF7 FBFE FFFF"
		$"F7EE CA56 8200 89FF 8100 2304 E0FC FEFE"
		$"FDFD FCFC FBFB FAF9 F7F6 F2F1 EBEA E6E4"
		$"E1DF DCDA D8D7 D5D4 D5D7 DCE2 F0F5 FD8A"
		$"FF06 F9E0 DEE4 ECF2 FD80 F000 FF80 F400"
		$"FF80 FC83 FF21 FEFC F9F2 E9DB A15D 7489"
		$"C9FD BA88 8068 4433 67A1 B7CA DCE9 F3F9"
		$"FDFE FFFF FCF0 DC83 8200 88FF 8200 0175"
		$"EA84 FF81 FE16 FDFC F9F8 F3F3 EFEE EBE9"
		$"E8E7 E6E4 E3E2 E2E4 E6E9 F5F7 FE8A FF06"
		$"F2D8 D9E1 EAF1 FD80 F000 FF80 F400 FF80"
		$"FC83 FF1A FEFB F6ED E2D2 7266 80A7 E4CB"
		$"AA8E 7C56 2F4C 96AB C1D3 E2EE F7FB FE80"
		$"FF04 FEF3 E7A6 1C81 0088 FF82 0001 B9F1"
		$"84FF 07FE FEFA FAF7 F7F4 F481 F100 F380"
		$"F20A F0EF ECEC EBEB ECEE F8F9 FE8A FF06"
		$"EACD D7E5 F0F8 FD8D FF1B FEFD F9F2 E9DA"
		$"AC4E 6F8B BED8 AF9F 846B 3E24 7CA1 B6CA"
		$"DBE9 F2F9 FDFE 80FF 04FE F6EC C147 8100"
		$"88FF 8200 01D3 F884 FF13 FEFE FAFA F7F7"
		$"F4F4 F1F1 F2F2 F4F4 F5F5 F4F3 F1F1 81F0"
		$"01F9 FA8A FF07 FEE3 C4D6 E1EC F4FD 80F3"
		$"00FF 80F6 00FF 80FB 82FF 1AFE FBF7 EEE2"
		$"D376 4474 90CA B39C A57C 5228 5697 ACC1"
		$"D3E2 EDF6 FBFE 82FF 03FA F0D7 7582 0086"
		$"FF82 0001 25E4 81FF 07FE FEFC FCF8 F8F3"
		$"F381 F111 F5F5 F7F7 F5F5 F4F4 F2F2 F1F1"
		$"F5F5 F9F9 FDFD 8AFF 07F7 D7C6 D8E2 EDF4"
		$"FE80 F300 FF80 F600 FF80 FB81 FF1B FEFD"
		$"F9F3 E9DB B74F 4E83 ADC4 A39F 926C 3121"
		$"8AA2 B7CA DBE9 F2F9 FDFE 82FF 04FD F2E4"
		$"970B 8100 86FF 8200 019C EC81 FF07 FEFE"
		$"FCFC F8F8 F3F3 81F1 11F5 F5F7 F7F5 F5F4"
		$"F4F2 F2F1 F1F5 F5F9 F9FD FD8A FF07 F0CB"
		$"C9DB E4EF F5FE 80F3 00FF 80F6 00FF 80FB"
		$"81FF 1AFE FBF7 EFE3 D394 7D4B 5E92 9984"
		$"827A 5A22 5F9A AEC2 D4E3 EEF6 FBFE 83FF"
		$"04FE F5EB B735 8100 86FF 8200 01C4 F381"
		$"FF03 FCFC F7F7 81F2 13F6 F6F9 F9FA FAF4"
		$"F4F1 F1F2 F2F5 F5F9 F9FC FCFE FE8C FF07"
		$"E9C1 CEDF ECF6 FCFE 8BFF 1BFE FDF9 F3EA"
		$"DDBB 6D9C AB72 5364 675E 5A30 3F8B A6BA"
		$"CCDD E9F3 F9FD FE84 FF03 F8EE CE63 8200"
		$"85FF 8200 01DB FB81 FF03 FCFC F7F7 81F2"
		$"13F6 F6F9 F9FA FAF4 F4F1 F1F2 F2F5 F5F9"
		$"F9FC FCFE FE88 FF80 FE08 FCE1 C0D3 E3ED"
		$"F6FB FF80 F800 FF80 F600 FF80 FA1D FFFE"
		$"FEFD FBF7 EFE4 D493 6289 E9FA B25D 2B26"
		$"1C10 649D B2C5 D6E5 F0F7 FBFE 85FF 03FC"
		$"F1E0 8D82 0084 FF82 0001 3FE7 82FF 07FB"
		$"FBF4 F4F5 F5F8 F881 FD09 F7F7 F1F1 F2F2"
		$"F6F6 FBFB 81FE 87FF 0EFE FEFD FCFB FCF3"
		$"D2C5 D8E6 F0F7 FBFF 80F8 00FF 80F6 00FF"
		$"80FA 1DFF FEFD FCF9 F3EA DDBB 7663 A4FC"
		$"FFF6 944F 2E0E 3A93 A9BD CFDF EBF4 FAFD"
		$"FE85 FF04 FEF4 E9AD 2681 0084 FF82 0001"
		$"ABEE 82FF 07FB FBF4 F4F5 F5F8 F881 FD09"
		$"F7F7 F1F1 F2F2 F6F6 FBFB 81FE 86FF 0FFE"
		$"FDFB F7F0 EFF2 E5C2 C9DA E9F2 F9FC FF80"
		$"F800 FF80 F600 FF80 FA1C FFFE FDFA F7EF"
		$"E4D4 8369 8CBB FBFF BA6A 8CAC 4F7F A0B5"
		$"C8D9 E6F1 F8FC FE87 FF03 F7EE C955 8100"
		$"84FF 8200 01CC F582 FF01 FEFE 81FB 17FE"
		$"FEFF FFFE FEF8 F8F1 F1F2 F2F4 F4F6 F6F8"
		$"F8FA FAFC FCFE FE82 FF0E FEFB F5EB DCD9"
		$"DCD0 B5C7 DAE9 F4FB FD8A FF1B FEFD F9F3"
		$"E9DC AD65 72A5 E3DE E48E 639F C975 98AC"
		$"C1D3 E2ED F5FB FEFE 87FF 03FC F0DB 7F81"
		$"0084 FF82 0001 E0FC 82FF 01FE FE81 FB17"
		$"FEFE FFFF FEFE F8F8 F1F1 F2F2 F4F4 F6F6"
		$"F8F8 FAFA FCFC FEFE 82FF 13FD F7EE DADC"
		$"EDDE CCBC C2D3 E4F0 F8FC FEFC FDFD FF80"
		$"FA00 FF80 FC1B FFFD FAF6 EEE3 D088 697F"
		$"D5FF F4A1 818C ACA6 90A4 B9CC DCE9 F2F9"
		$"FCFE 82FF 0ADF 969E A6FF FFFE F3E6 A013"
		$"8000 83FF 8200 0169 E88F FF07 FCFC F8F8"
		$"F5F5 F3F3 81F1 1EF2 F2F5 F5FA FAFE FEFF"
		$"FFFE FBF2 E4D2 E8FF F7EF E6CF CBD5 E3EE"
		$"F5F9 FAFC FCFF 80FA 00FF 80FC 2BFE FCF8"
		$"F2E9 DCB0 7A63 A9FD FFE5 7A67 87A3 939D"
		$"B1C5 D6E4 EFF7 FBFE FFDF DFFF FFE7 7FDF"
		$"F78E C6FF FEF6 EBBD 4380 0083 FF82 0001"
		$"B5F0 8FFF 07FC FCF8 F8F5 F5F3 F381 F122"
		$"F2F2 F5F5 FAFA FEFE FFFF FDF8 ECDA D3F5"
		$"FFFF FEFD F4E6 D7D3 D8E6 EEF3 F7FA FEF9"
		$"FAFA FF80 FC2B FEFA F6EE E4D1 8370 95E1"
		$"FFF7 9A60 8EB4 9496 AABE CFDF EBF4 F9FD"
		$"CD86 7F7F A6FF D786 EFFF 96CE FFFF FAEF"
		$"D570 8000 83FF 8200 01D2 F791 FF19 FEFE"
		$"FCFC FAFA F9F9 F7F7 F4F4 F2F2 F3F3 FAFA"
		$"FFFE FCF3 E4D0 E1FD 83FF 0CF9 EBDB D6D9"
		$"E6EE F4F8 FBFD FEFE 80FF 2EFE FAF4 EBDE"
		$"B75E 71B5 FDFF D96F 6991 9991 A3B7 CADA"
		$"E6AB EFFB FEAE C6FF E77F DFF7 967F 8E7F"
		$"C6FF FFFD F2E4 970B 0000 83FF 8100 0215"
		$"E2FD 91FF 18FE FEFC FCFA FAF9 F9F7 F7F4"
		$"F4F2 F2F3 F3FA FAFF FEF9 EEDA D0F1 85FF"
		$"28FD F8ED DFD7 D6E0 EBF1 F6F9 FCFD FDFE"
		$"FDF9 F2E6 D8BA 7889 DDFF EEAE 8E78 838B"
		$"9DB0 C3D4 E2B8 7AD3 FDFE 80FF 11F7 7FDF"
		$"FFD7 96DF C686 CEFF FEF5 EBB6 3300 0082"
		$"FF82 0001 83EA 9AFF 10FD FDF7 F7F3 F3F2"
		$"F2FA FAFF FDF6 E7D4 DEFB 86FF 0BFE FEFC"
		$"F0E1 D7D4 DBE6 EEF5 F880 FB17 F7EE E2D2"
		$"BC7A 9CFF FFCD 717F 8688 98AB BDCF DFCD"
		$"8F92 ACFE 81FF 11BE 8EFF FF9E B6FF FF9E"
		$"BEFF FFF8 EECD 5E00 0082 FF82 0001 BFF2"
		$"9AFF 10FD FDF7 F7F3 F3F2 F2FA FAFE FBF1"
		$"DFCC EBFE 81FF 2BFE FDFB FAFA F9F9 FAFD"
		$"FDF5 E7DD D5D7 E1ED F5F8 F9F3 EBDD CBBA"
		$"9FC3 EFFF 9B66 8585 93A6 B9CB D9E7 F0F7"
		$"C38D FE80 FF12 F786 D7FF FFBE 86CE BE8E"
		$"E7FF FFFC F1DE 8600 0082 FF82 0001 D8F9"
		$"98FF 09FE FEFA FAF4 F4F3 F3F8 F880 FD04"
		$"F7EA D3D3 F681 FF2C FDF9 F7F5 F3F3 F4F4"
		$"F3F9 FEFF FEF8 EBE1 D6DA E9F4 F6F0 E6D8"
		$"C2B7 B8E9 D8F5 C196 978F A0B4 C6D6 E4EC"
		$"F5FA ED7F EF80 FF11 A69E FFD7 C8F4 BE9A"
		$"A4EC FEFE FFFD F1E0 9006 8100 00FF 8200"
		$"023A E2FE 98FF 10FE FEFA FAF4 F4F3 F3F8"
		$"F8FD FCFB F1E0 CDE8 80FF 04FD F9F7 F3F3"
		$"80F5 04F3 F2F1 F7FE 81FF 29FA F5D8 DDED"
		$"F1EC E1D0 CDB1 CBF8 F3EA 9D65 8B99 AEC1"
		$"D1E0 EBF4 F8FC FE8E CEFF FFDF 7F96 7F8B"
		$"B0F8 FBFC FE80 FD05 FCF8 F4EA B229 8100"
		$"00FF 8200 0195 EC99 FF1F FAFA F4F4 F1F1"
		$"F8F8 FDFD FFFD F7EA D3D5 F6FF FDFA F6F3"
		$"F2F5 F6F7 F5F5 F3F5 F6FC 83FF 31F8 D4D6"
		$"E7EB E7DA CDED C8F4 DBDD CB6F 478E A5BA"
		$"CCDC E9F2 F8FA FDFD AD95 B5E6 E6A5 C4E2"
		$"FBFC FDFE FDFC F6F3 F2EF EDE9 E4B6 3C81"
		$"0000 FF82 0001 C5F4 99FF 1EFA FAF4 F4F1"
		$"F1F8 F8FD FDFE FBF2 E0CE E9FE FDF9 F5F3"
		$"F5F8 F9F7 F4F4 F5F7 FAFD 83FF 1FFC E2C5"
		$"D5E3 E6E1 CFDC DCD4 FCD0 D2AF 6776 9DB1"
		$"C5D6 E4EF F7FB FDFE A57F 95BD F581 FD0E"
		$"FCF9 F7F5 F2EF EBE5 DDD0 BCA6 9267 1381"
		$"0000 FF82 0001 DBFB 97FF 1FFC FCF5 F5F1"
		$"F1F5 F5FC FCFF FFFE F8EC D5CF F2FF FDF5"
		$"F4F7 FCFD F9F4 F3F5 FAFE FE84 FF30 F5CF"
		$"C2D5 E2E1 D5C8 F3D5 F3F3 F2DF 7F6A 92A8"
		$"BCCF DFEB F4FA FDFE FFE7 F7FF FEFD FCF8"
		$"F6F3 F1EF EDE6 DFD2 AA90 6F4F 341A 0883"
		$"0000 FF81 0001 58E5 98FF 20FC FCF5 F5F1"
		$"F1F5 F5FC FCFF FEFC F4E5 CEE1 FAFF FDF9"
		$"F9FD FFFF F9F3 F3F6 F9FB FCFD 82FF 18FE"
		$"EBC3 C6D9 DFD8 CDC7 F5EA FBFD F4C0 6F7B"
		$"9DB2 C6D8 E6F1 F8FC 80FE 10FD FAF7 F4F2"
		$"EFED E9E2 D7C6 AF95 7454 1F0A 8800 00FF"
		$"8100 01A5 ED98 FF11 FAFA F1F1 F3F3 FAFA"
		$"FEFE FFFE F9EE DBD0 F0FE 80FF 00FE 80FF"
		$"09FC F8F5 F5F3 F4F5 F7FA FE80 FF29 F8D9"
		$"BFCD DAD7 D1E2 D9F4 FCFF F4DE 9C6B 8DA7"
		$"BCCF DFEC F4F9 FAF7 F5F3 F0EF ECE5 DECF"
		$"BAA0 8260 4022 0F02 8B00 00FF 8100 01CC"
		$"F598 FF07 FAFA F1F1 F3F3 FAFA 80FE 05FC"
		$"F5E6 D2DE FB86 FF30 FDFB F8F8 F6F4 F4F5"
		$"FAFF FFFD ECC9 C2D4 D7D1 DBEC F7FF FEF7"
		$"E7C7 7E6B 9BB0 C4D4 E1E9 EDEF EEED E8E2"
		$"D7C6 AE91 7251 3117 068F 0001 FFFF 8100"
		$"01DF FC98 FF0F F9F9 F1F1 F5F5 FCFC FFFF"
		$"FEFA F0DC D0ED 89FF 80FD 27F9 F5F3 F9FE"
		$"FFF3 D1BC C9D3 D4CE E8F6 FEFF E4D9 E8B7"
		$"5479 9FB3 C4D1 DAE2 E1DC CBB8 9E80 6040"
		$"220C 0293 0001 FFFF 8000 0176 E899 FF0F"
		$"F9F9 F1F1 F5F5 FCFC FFFF FDF7 E9D3 D4F5"
		$"8BFF 23FD F8F5 F5FB FFFE EAC3 C0CD D5D0"
		$"D2FB F1FF E4CF D9E3 8C59 8BA2 B1BD BEB7"
		$"A48C 6D4D 2D15 0497 0080 FF80 0001 B8F0"
		$"99FF 0FFA FAF4 F4F7 F7FB FBFF FEFB F3E1"
		$"CEE7 FD8A FF1F FEF8 F4F5 FAFE FFF9 DBBD"
		$"C6D3 D4CC DEE5 E6E2 CFDD E2B2 626C 7F7E"
		$"7769 5138 1E0A 9A00 82FF 8000 01D2 F799"
		$"FF0E FAFA F4F4 F7F7 FBFB FFFE FAEF DBD7"
		$"F68A FF1C FEF9 F4F3 F9FE FFFE F0C6 BECB"
		$"CFC8 D5F0 C5D7 C4E1 E7D1 7E5E 3A2A 1A0B"
		$"0395 008B FF80 0001 E2FE 99FF 10FD FDF9"
		$"F9F7 F7FA FAFE FDF9 EDD9 D7EB F6FD 87FF"
		$"19DF B5D6 F3F7 FDFF FFFD E0B8 BDC5 C4BB"
		$"E2D7 CACD E1E8 DFA9 7234 0199 008B FF80"
		$"0002 E5F1 F898 FF12 FDFD F9F9 F7F7 FAFA"
		$"FEFD F9EF DDCC C9D0 DEF3 F985 FF18 F784"
		$"E5F4 F2EE FFFE F5CA AAAA A193 CEF9 C6CA"
		$"D9E4 CEC8 8971 0D99 008C FF80 0006 7FB2"
		$"CFE6 ECF3 FB96 FF13 FDFD FAFA FCF4 CDF5"
		$"FAF3 E6D6 C6BB BAC5 D9F4 F9FE 82FF 17D7"
		$"ABF5 C68C 9EB6 FBE3 9B5E 4840 8EE5 F2BC"
		$"D4EA C8C2 B587 5295 0091 FF83 0007 0E75"
		$"B0D6 E7ED F6FC 92FF 30FD FDFA FAD4 847F"
		$"F5FC E8D2 D8DA CEC3 B8B1 BFD4 F1F9 FEFF"
		$"FFC6 9EDD F18A 9BCD FEF1 AE39 0100 7DED"
		$"FDD6 BED8 D2AB C39F 7817 9100 95FF 8700"
		$"072D 86BD DAE8 F0F7 FE90 FF1F F6A5 8DA5"
		$"9EFE E684 B180 B7E4 DAC9 A18E A7C0 CDEA"
		$"F5FD D79E C6DD AAF2 7FFC DB76 8000 0AA1"
		$"E9F6 CDCB DB97 A3C5 8560 8D00 9AFF 8B00"
		$"0648 9CC5 E0EB F2F9 8DFF 2D8D ADF6 A5BE"
		$"FFBE 95FD DC8A F3ED D8A2 8A80 807C 95B1"
		$"DFF8 FEFF EF8D B59E F9BB 5604 0000 C4E8"
		$"E3D0 CBB4 85BC B076 2A89 009E FF8F 0006"
		$"63A0 C8E6 EDF4 FB88 FF20 F7A6 7F96 86C6"
		$"FFDF 7FAE A59D FCF9 DE62 402A 170F 0C2E"
		$"9EC4 E5F6 FDEE DFF7 ED9F 2A80 0009 59D3"
		$"D6B7 B48F A0B7 AA4C 8600 A2FF 9200 0728"
		$"9CC3 D9E8 EEF6 FD87 FF0C C686 9EDF 7FCE"
		$"9E86 F7FE FBD0 0183 000A 125B 96B5 D9EB"
		$"F7FF DD7A 0380 0009 308E CA92 A585 B6B5"
		$"7E09 8600 A2FF 9200 0B15 759E A1AA BACB"
		$"DFE9 F0F7 FE83 FF0B BEA6 FFCE 9EFF FF8E"
		$"DFFF F4A9 8500 0805 2150 87AE D6E3 B62F"
		$"8200 075A B385 A294 9F8D 0286 00A4 FF91"
		$"000E 0A72 ACB0 B1AA A39E A6B9 CEE3 EBF2"
		$"FA80 FF0B EFEF FFE7 86BE C686 EFFF ED74"
		$"8800 0417 4086 AB82 8400 0327 276A 4C89"
		$"00A7 FF8E 0012 0266 B8C0 BAB3 ACA2 9787"
		$"735D 7197 C7E6 EDF5 FC80 FF07 EFBE BEDF"
		$"FFFE E222 8A00 021F 5033 9300 ACFF 8B00"
		$"1555 B7C3 B19E 8167 492F 180A 0100 0013"
		$"63A8 D3E8 EFF7 FD81 FF01 FAD2 A400 B0FF"
		$"8700 072E 7C72 4F2F 1405 0187 0009 308A"
		$"BCDC EAF1 F8FE F2B5 A300 B5FF 8300 0203"
		$"0B02 9000 055C A3CD E2EB 7B84 0081 FF98"
		$"00B6 FF9C 0001 8A23 8300 85FF 9400 B7FF"
		$"A300 8AFF 8F00 B9FF A200 8BFF 8D00 BBFF"
		$"A100 8CFF 8B00 FFFF FFFF A5FF FFFF D2FF"
		$"8600 EFFF 8D00 E8FF 8C00 0112 4B82 00E2"
		$"FF8C 0007 0D44 6C8A A3B3 B788 8100 DDFF"
		$"8C00 0D0D 446A 889B ABBB C7D3 DCE3 DEA5"
		$"0B81 00D7 FF8C 0012 0D44 6A88 9BAB BBC7"
		$"D2DB E2E5 E9EB EDEF E5B8 3581 00D2 FF8C"
		$"0017 194F 6F86 9BAB BBC7 D2DB E2E5 E9EB"
		$"EDEF F2F5 FAFC F5E9 C960 8200 CCFF 8C00"
		$"1519 4F70 8AA0 AEBC C8D2 DBE2 E5E9 EBED"
		$"EFF2 F5FA FCFE FE80 FF03 FBEC D884 8200"
		$"C7FF 8C00 1519 4F6F 86A0 AEBC C8D4 DDE3"
		$"E6E9 EBED EFF2 F5FA FCFE FE85 FF04 FEEF"
		$"E3A3 1981 00C2 FF8C 0015 194F 708A A0AE"
		$"BCC8 D2DD E3E6 E9EB EDF0 F2F5 FAFC FEFE"
		$"8AFF 04FE F3E8 BB43 8100 BDFF 8C00 1519"
		$"4F70 8AA0 AEBC C8D4 DDE3 E6E9 EBED F0F2"
		$"F5FA FDFE FE90 FF03 F9EA D271 8200 B7FF"
		$"8C00 1519 4F70 8AA0 AEBC C8D4 DDE3 E6E9"
		$"EBED F0F2 F5FA FDFE FE95 FF04 FDEE DF94"
		$"0B81 00B2 FF8C 0015 194F 708A A0AE BCC8"
		$"D4DD E3E6 E9EB EDF0 F2F5 FAFD FEFE 9AFF"
		$"04FE F2E6 B435 8100 ADFF 8C00 152A 557A"
		$"8DA0 AEBC C8D4 DDE3 E6E9 EBED F0F2 F5FA"
		$"FDFE FEA0 FF03 F8E9 CA60 8200 A7FF 8C00"
		$"152A 5078 90A2 B1BE CCD6 DDE3 E6E9 EBED"
		$"F0F2 F5FA FDFE FEA5 FF03 FCED DA86 8200"
		$"A2FF 8C00 152A 5078 90A2 B1BE CCD7 DEE3"
		$"E7E9 ECED F0F2 F5FA FDFE FEAA FF04 FEF0"
		$"E3A8 2381 009D FF8C 0015 2A50 7890 A2B1"
		$"BECC D7DE E3E7 E9EC EEF0 F3F6 FBFD FEFE"
		$"87FF 80FD 00FF 80FB 00FF 80F9 00FF 80F8"
		$"00FF 80F8 00FF 80F8 00FF 80FA 00FF 80FE"
		$"87FF 03F4 E9C3 5082 0098 FF8B 0015 2A50"
		$"7890 A2B1 BECC D7DE E3E7 E9EC EEF0 F3F6"
		$"FBFD FEFE 8CFF 80FD 00FF 80FB 00FF 80F9"
		$"00FF 80F8 00FF 80F8 00FF 80F8 00FF 80FA"
		$"00FF 80FE 87FF 03FB ECD6 7B82 0096 FF88"
		$"0015 3159 7F94 A2B0 BECC D7DE E3E7 E9EC"
		$"EEF0 F3F6 FBFD FEFE 91FF 80FD 00FF 80FB"
		$"00FF 80F9 00FF 80F8 00FF 80F8 00FF 80F8"
		$"00FF 80FA 00FF 80FE 87FF 04FE EFE2 9F14"
		$"8100 96FF 8300 1533 597F 96A5 B4C3 CED8"
		$"DFE3 E7E9 ECEE F0F3 F6FB FDFE FEBF FF04"
		$"FEF3 E6B9 3E81 0096 FF16 0015 6486 96A7"
		$"B4C3 CED8 E0E4 E8E9 ECEE F0F3 F6FB FDFE"
		$"FE8F FF80 FE00 FF80 FB00 FF80 EA00 FF80"
		$"CF00 FF80 AC00 FF80 9000 FF80 8A00 FF80"
		$"8900 FF80 8B00 FF80 A600 FF80 E600 FF80"
		$"FE84 FF03 F9EA CE6B 8200 95FF 1100 6DB9"
		$"CFD8 E0E4 E8E9 ECEE F1F4 F8FB FDFE FE94"
		$"FF80 FE00 FF80 FB00 FF80 EA00 FF80 CF00"
		$"FF80 AC00 FF80 9000 FF80 8A00 FF80 8900"
		$"FF80 8B00 FF80 A600 FF80 E600 FF80 FE84"
		$"FF04 FDED DE91 0581 0095 FF0C 0060 C6E8"
		$"ECEE F1F4 F8FB FDFE FE99 FF80 FE00 FF80"
		$"FB00 FF80 EA00 FF80 CF00 FF80 AC00 FF80"
		$"9000 FF80 8A00 FF80 8900 FF80 8B00 FF80"
		$"A600 FF80 E600 FF80 FE84 FF04 FEF1 E5AF"
		$"3081 0095 FF07 0028 B1E5 F2FD FEFE D5FF"
		$"03F6 E9C9 5C82 0094 FF05 0005 95E1 EFFE"
		$"98FF 80FE 00FF 80FC 00FF 80F1 00FF 80C2"
		$"00FF 807A 00FF 805D 00FF 8040 00FF 802C"
		$"00FF 8029 00FF 8028 00FF 8027 00FF 8030"
		$"00FF 80AD 00FF 80FB 85FF 03FC ECD9 8482"
		$"0094 FF05 0000 75D7 EDFC 98FF 80FE 00FF"
		$"80FC 00FF 80F1 00FF 80C2 00FF 807A 00FF"
		$"805D 00FF 8040 00FF 802C 00FF 8029 00FF"
		$"8028 00FF 8027 00FF 8030 00FF 80AD 00FF"
		$"80FB 85FF 04FE F0E3 A720 8100 94FF 0500"
		$"0051 C9EA F998 FF80 FE00 FF80 FC00 FF80"
		$"F100 FF80 C200 FF80 7A00 FF80 5D00 FF80"
		$"4000 FF80 2C00 FF80 2900 FF80 2800 FF80"
		$"2700 FF80 3000 FF80 AD00 FF80 FB86 FF03"
		$"F4E8 C14A 8200 93FF 0500 002F B4E8 F4D8"
		$"FF03 FAEB D474 8200 93FF 0600 0012 9BE3"
		$"F1FE 93FF 80FC 00FF 80ED 00FF 80B9 00FF"
		$"8087 00FF 8053 00FF 801F 00FF 8038 00FF"
		$"8053 00FF 8066 00FF 8058 00FF 8040 00FF"
		$"802D 00FF 8030 00FF 80AD 00FF 80FB 86FF"
		$"04FD EEE1 990F 8100 93FF 0600 0003 83DE"
		$"EFFE 93FF 80FC 00FF 80ED 00FF 80B9 00FF"
		$"8087 00FF 8053 00FF 801F 00FF 8038 00FF"
		$"8053 00FF 8066 00FF 8058 00FF 8040 00FF"
		$"802D 00FF 8030 00FF 80AD 00FF 80FB 86FF"
		$"04FE F2E6 B63A 8100 84FF 8700 82FF 8000"
		$"0366 D4EC FC84 FE8C FF80 FC00 FF80 ED00"
		$"FF80 B900 FF80 8700 FF80 5300 FF80 1F00"
		$"FF80 3800 FF80 5300 FF80 6600 FF80 5800"
		$"FF80 4000 FF80 2D00 FF80 3000 FF80 AD00"
		$"FF80 FB87 FF03 F8EA CE6A 8200 81FF 8A00"
		$"81FF 8000 0E48 C3E9 F7FD FCFB FAFA FBFB"
		$"FCFC FDFD 80FE CAFF 04FD EDDD 8E05 8100"
		$"80FF 8C00 80FF 8000 062C AFE6 F0F9 F6F4"
		$"80F2 0BF3 F4F5 F7F8 F9FA FBFB FCFD FD80"
		$"F700 FF80 D700 FF80 9600 FF80 4400 FF80"
		$"1F00 FF80 3200 FF80 6B00 FF80 8300 FF80"
		$"6B00 FF80 5200 FF80 3700 FF80 3100 FF80"
		$"6500 FF80 9E00 FF80 E500 FF80 FE87 FF04"
		$"FEF1 E4AD 2A81 0001 FFFF 8300 041B 5145"
		$"372E 8200 80FF 8000 1D12 9CDF EAF2 EBE2"
		$"E0E2 E2E6 E8E9 EBED EFF0 F2F3 F5F6 F7F1"
		$"F2F3 FBD4 D4D5 FD80 9500 FE80 4400 FF80"
		$"1F00 FF80 3200 FF80 6B00 FF80 8300 FF80"
		$"6B00 FF80 5200 FF80 3700 FF80 3100 FF80"
		$"6500 FF80 9E00 FF80 E500 FF80 FE88 FF03"
		$"F5E9 C555 8900 0431 589D 312E 8300 01FF"
		$"FF80 0021 0382 D9E3 E8DA D4D6 D3D0 CFD3"
		$"D2D6 DADD E0E4 E6E8 EAEC E7E8 EAF2 CECF"
		$"CFF7 9292 93FB 8043 00FD 801F 00FE 8032"
		$"00FF 806B 00FF 8083 00FF 806B 00FF 8052"
		$"00FF 8037 00FF 8031 00FF 8065 00FF 809E"
		$"00FF 80E5 00FF 80FE 88FF 03FB ECD8 8088"
		$"0005 2A31 B7A3 090F 8300 01FF FF81 002B"
		$"60C9 DCDC D2F2 FAF1 F3F2 E4E4 E0D6 D0D1"
		$"D1CE D4D6 D9DC DFE2 E3E5 E8E9 ECEE EFF1"
		$"F2F3 F4F5 F6F8 F9FA FBFD FEFE B0FF 04FE"
		$"EFE3 A31C 8600 0615 1665 E734 0002 8300"
		$"01FF FF81 0005 3FB8 D4D2 CEF9 81FF 22FC"
		$"FDFE F9FD F9EE EEE8 E1D9 D7CE CCD3 A490"
		$"95D9 4958 47E2 4339 3AEB 6C6D 6EF5 9FA1"
		$"A3FE 80B1 00FF 805D 00FF 802C 00FF 803D"
		$"00FF 8069 00FF 8099 00FF 80D4 00FF 80F4"
		$"00FF 80FE 8CFF 04FE F4E8 BE44 8500 0406"
		$"231C BAA0 8600 01FF FF81 0005 24A3 CECA"
		$"CFF6 87FF 20FE FFFF FEFF FEF9 F4F0 EAE2"
		$"E5DA BEB8 A1D2 9979 72D4 7F7C 77EB 9C9F"
		$"A1FD B0B1 B1FF 805D 00FF 802C 00FF 803D"
		$"00FF 8069 00FF 8099 00FF 80D4 00FF 80F4"
		$"00FF 80FE 8DFF 03FA EBD2 7285 0006 201A"
		$"82DF 2B00 0184 0001 FFFF 8100 050C 8CC6"
		$"C5D4 F793 FF14 FDF9 F8F0 EFF1 E7DD DFC1"
		$"BFBF D79E 9B9F FCB0 B1B1 FF80 5D00 FF80"
		$"2C00 FF80 3D00 FF80 6900 FF80 9900 FF80"
		$"D400 FF80 F400 FF80 FE8D FF04 FDEE DF93"
		$"0B83 0006 1321 3BD7 7F02 0285 0001 FFFF"
		$"8200 0471 BDC3 DDFC 9AFF 0AFD FDF9 FAFA"
		$"E0D6 EBF4 FBFE AFFF 04FE F2E6 B334 8300"
		$"0625 1CA0 DB1F 0803 8500 01FF FF82 0003"
		$"55B2 C0E1 89FF 04FD FBFE FBFA 82F9 00FB"
		$"88FF 09FE E0C7 D1DC F981 8282 FF80 2E00"
		$"FF80 3800 FF80 7600 FF80 C100 FF80 EB00"
		$"FF80 F700 FF80 FC92 FF03 F8E9 CA5E 8200"
		$"0725 1C44 F262 120A 0185 0001 FFFF 8200"
		$"0338 A3C0 E988 FF05 FDF9 F3EB DED5 80CF"
		$"04CE D2DA ECFC 86FF 09FA D5C2 CEDA F981"
		$"8282 FF80 2E00 FF80 3800 FF80 7600 FF80"
		$"C100 FF80 EB00 FF80 F700 FF80 FC92 FF04"
		$"FCED DA8A 0580 0007 0C34 1EBD C811 0E0C"
		$"8500 80FF 8200 031C 91C1 ED85 FF11 FEFD"
		$"F9ED DBC9 B29A 8A81 8080 7F84 91BC EAFC"
		$"85FF 09FD CEBD CCD9 F981 8282 FF80 2E00"
		$"FF80 3800 FF80 7600 FF80 C100 FF80 EB00"
		$"FF80 F700 FF80 FC92 FF04 FEF0 E3A6 1F80"
		$"0007 0905 58F5 5000 0608 8500 80FF 8200"
		$"030A 77C0 EE86 FF08 F8E1 B993 836D 5749"
		$"4380 4504 4647 82CD F585 FF06 FACE CBE0"
		$"EFF9 FEB1 FF0C F4E7 BF49 0000 0C16 15CA"
		$"B803 0887 0080 FF82 0003 026E C6F2 83FF"
		$"13FB EDDD C2A0 6C49 4C4D 5154 534C 4439"
		$"2F27 67C1 F285 FF09 F0C9 BED0 DEFA 8788"
		$"88FF 8031 00FF 8034 00FF 8053 00FF 8073"
		$"00FF 808B 00FF 80A5 00FF 80D0 00FF 80F4"
		$"00FF 80FE 8AFF 0DFE FAE8 CF6E 0000 1E18"
		$"71ED 430F 0887 0080 FF83 0002 44CC F780"
		$"FF16 FEFC F4DC B894 755E 4038 4C5F 6D77"
		$"7263 554A 4646 81CD F585 FF09 EFC6 C1D2"
		$"E0FB 8788 88FF 8031 00FF 8034 00FF 8053"
		$"00FF 8073 00FF 808B 00FF 80A5 00FF 80D0"
		$"00FF 80F4 00FF 80FE 8AFF 0DFE FBE9 D68A"
		$"0C14 1235 E699 170E 0186 0082 FF82 0002"
		$"3CD1 FC80 FF16 FAEE D1A3 7047 373B 5371"
		$"8687 796C 5947 3E4C 6E88 BBE9 FB85 FF05"
		$"EAC6 C3D4 E1FB 8088 00FF 8031 00FF 8034"
		$"00FF 8053 00FF 8073 00FF 808B 00FF 80A5"
		$"00FF 80D0 00FF 80F4 00FF 80FE 89FF 0EFE"
		$"FDF9 E9D6 9F24 1E17 92E8 2800 0A06 8600"
		$"82FF 8100 0206 6EDF 80FF 17FC E6BF 9064"
		$"473F 4F67 90A5 9172 5954 5259 6487 B2CF"
		$"ECFC FE85 FF05 E1C6 D6E8 F4FC B0FF 0EFE"
		$"FBF7 EBD3 AE26 193C F391 0712 1903 8500"
		$"83FF 8200 196B E2FF FFFE F5CB 8C5C 4C54"
		$"759F BAC7 AE73 473D 4D6C 91AC D0ED FA88"
		$"FF05 D9C5 D4E5 F1FD 80D7 00FF 8095 00FF"
		$"8064 00FF 8043 00FF 8033 00FF 8030 00FF"
		$"803B 00FF 8065 00FF 80AC 00FF 80ED 00FF"
		$"80FE 84FF 0EFE FDF9 F4E9 D088 1E1F 9EDC"
		$"240F 0402 8600 83FF 8200 1A8A E5FF FFFC"
		$"EEBA 6E54 6783 B3DD E9C4 8351 3C50 72A2"
		$"CEE7 F7FD FFFD 87FF 05D9 C7D7 E7F2 FD80"
		$"D700 FF80 9500 FF80 6400 FF80 4300 FF80"
		$"3300 FF80 3000 FF80 3B00 FF80 6500 FF80"
		$"AC00 FF80 ED00 FF80 FE83 FF0E FEFE FBF6"
		$"EFE3 C940 1441 EC82 0310 0187 0083 FF81"
		$"001C 03A5 EDFF FFFD F2CD 978C A5C3 E7FC"
		$"FBC3 723F 324E 6F97 BACC D8E2 EFFA FD85"
		$"FF06 F9CF C9DA E8F3 FE80 D700 FF80 9500"
		$"FF80 6400 FF80 4300 FF80 3300 FF80 3000"
		$"FF80 3B00 FF80 6500 FF80 AC00 FF80 ED00"
		$"FF80 FE83 FF0D FEFC F8F2 E9DB 7314 1CB6"
		$"D524 190E 8700 85FF 8100 1CB7 F4FF FFFE"
		$"FCEF DBD6 E2F2 FFFF F9CC 8C5A 444D 5968"
		$"757F 8CA1 BCDC F2FB 84FF 06F4 CBCC E0EF"
		$"F9FE ADFF 0EFE FDFA F4EC E1B9 220D 5AFC"
		$"6E0E 1705 8700 85FF 8100 01BB F780 FF18"
		$"FEFB F8F7 FAFC FEFE FDE9 C397 745F 5248"
		$"4546 4C5E 79A3 D0EE FE83 FF06 F2CB CFE2"
		$"F1FA FE80 FC00 FF80 F300 FF80 D300 FF80"
		$"B000 FF80 9600 FF80 8200 FF80 5B00 FF80"
		$"3800 FF80 4800 FF80 C000 FF80 FC81 FF0E"
		$"FEFE FBF7 F0E6 D85B 1123 CDB7 1A11 0F87"
		$"0085 FF81 0002 46CA FC88 FF10 FEFB EED9"
		$"BB9E 8570 625C 544F 5164 91CC F483 FF06"
		$"EAC5 D2E5 F2FB FF80 FC00 FF80 F300 FF80"
		$"D300 FF80 B000 FF80 9600 FF80 8200 FF80"
		$"5B00 FF80 3800 FF80 4800 FF80 C000 FF80"
		$"FC81 FF0E FEFC F9F3 EADD 8F25 1463 F349"
		$"0719 1387 0085 FF81 0001 66D7 8AFF 0FFE"
		$"FFFF F2DF CDBE B1A7 8C6A 4E3D 5EAC E883"
		$"FF06 E1C8 D5E7 F4FC FF80 FC00 FF80 F300"
		$"FF80 D300 FF80 B000 FF80 9600 FF80 8200"
		$"FF80 5B00 FF80 3800 FF80 4800 FF80 C000"
		$"FF80 FC80 FF0E FEFE FBF6 EEE3 C741 1723"
		$"C2AB 0C17 0887 0086 FF81 0002 7ED7 FE8B"
		$"FF0D FEFC F9F5 F4EE E4BA 835E 3C50 A2E5"
		$"83FF 05E4 CBD7 E9F5 FCAC FF0D FEFC F8F2"
		$"E8DA 7D1B 0A7F E33D 0B0C 8800 86FF 8100"
		$"029B E3FE 91FF 07E3 AB73 5753 7ABD EF82"
		$"FF06 FDDA C6D9 EAF6 FD82 FF80 FE00 FF80"
		$"FD00 FF80 FB00 FF80 FA00 FF80 DD00 FF80"
		$"8600 FF80 4600 FF80 3600 FF80 B300 FF80"
		$"FB11 FFFF FEFD FAF4 ECE0 C02A 1634 DF94"
		$"0B0D 0B07 8600 87FF 8100 01AD ED90 FF09"
		$"FCE0 B075 5559 83BD E6FC 82FF 06F9 D1C7"
		$"DCEC F7FD 82FF 80FE 00FF 80FD 00FF 80FB"
		$"00FF 80FA 00FF 80DD 00FF 8086 00FF 8046"
		$"00FF 8036 00FF 80B3 00FF 80FB 11FF FFFE"
		$"FBF7 F0E6 D87A 2622 9DE9 3B13 160F 1B86"
		$"0087 FF81 0002 ADEB FE8F FF08 ECB8 7C49"
		$"4878 B9EB F983 FF06 F8D0 CADE EEF8 FE82"
		$"FF80 FE00 FF80 FD00 FF80 FB00 FF80 FA00"
		$"FF80 DD00 FF80 8600 FF80 4600 FF80 3600"
		$"FF80 B300 FF80 FB12 FFFE FDF9 F3EA DEAD"
		$"4120 4CDF 950D 1219 0838 0985 0087 FF81"
		$"0001 BCF3 8EFF 08FE F6C7 8453 4164 A8E3"
		$"85FF 06F3 CBCD E0EF F9FE A9FF 12FE FEFB"
		$"F6EE E3D1 4418 22A3 DF31 0C0E 1325 6920"
		$"8400 87FF 8100 0251 C5FB 8EFF 08F9 DE99"
		$"5944 5B96 D4F9 85FF 06F0 C6CE E2F0 FAFE"
		$"8EFF 80F0 00FF 80A5 00FF 8052 00FF 8048"
		$"00FF 8093 00FF 80E5 00FF 81FE 11FC F8F2"
		$"E8DB 7815 0756 DD76 0F1B 1930 5884 4384"
		$"0087 FF81 0002 67C3 F78E FF08 F3C5 7641"
		$"4B7A BDEB FE85 FF06 F1C8 D1E4 F2FB FE8E"
		$"FF80 F000 FF80 A500 FF80 5200 FF80 4800"
		$"FF80 9300 FF80 E517 FFFE FEFD FDFA F4EC"
		$"E1C1 2315 11B4 C518 1015 0D35 7D97 690B"
		$"8200 88FF 8100 0288 D1FB 8EFF 07F1 BA66"
		$"3754 96DA F986 FF06 E7C5 D3E6 F3FB FE8E"
		$"FF80 F000 FF80 A500 FF80 5200 FF80 4800"
		$"FF80 9300 FF80 E517 FFFE FEFD FBF7 F0E6"
		$"D557 1F16 58DF 5B0C 1810 095C 98A3 8B26"
		$"8200 88FF 8100 0293 D8FC 8EFF 07F1 BD6E"
		$"4465 A7E4 FA85 FF06 FCE3 C9D6 E7F4 FCA8"
		$"FF15 FEFC F9F3 EADD 931A 1E2D B5AC 2217"
		$"1206 158D A5AE A650 8200 88FF 8100 0290"
		$"DAFC 8EFF 07F3 C582 5E79 A1C3 D985 FF06"
		$"FCDD C7D8 E9F5 FC8B FF80 F900 FF80 B300"
		$"FF80 5000 FF80 3000 FF80 8B00 FF80 E800"
		$"FF80 FD18 FFFE FEFB F6EE E3CD 4828 1A76"
		$"DC4F 1216 0900 4D9D B1B9 BC7C 0881 0088"
		$"FF81 0002 A8E6 FE8E FF0C F8DB A883 8679"
		$"808D 95F7 E7BE CE80 FF06 FAD2 C8DA EBF6"
		$"FD8B FF80 F900 FF80 B300 FF80 5000 FF80"
		$"3000 FF80 8B00 FF80 E800 FF80 FD18 FFFE"
		$"FCF8 F2E8 DA7E 2316 2FCC 950F 1A11 0311"
		$"89A7 BBC5 C99E 2881 0088 FF80 0002 29AF"
		$"EE8F FF16 FDF2 D1AC 98A3 C7E5 7EE7 CEBE"
		$"AE96 FFFF FBD2 C8DB ECF7 FD8B FF80 F900"
		$"FF80 B300 FF80 5000 FF80 3000 FF80 8B00"
		$"FF80 E800 FF80 FD18 FEFD FAF4 ECE0 BF2E"
		$"1E12 89D6 4914 1A0A 1B48 9BB2 C6D0 D2BD"
		$"5682 0087 FF80 0002 44AD ED90 FF07 FCEC"
		$"D0B6 BC94 78B6 80FF 0AF7 7FFF FFF9 CDC8"
		$"DBEC F7FD A6FF 18FE FBF7 F0E6 D477 2016"
		$"42BD 7111 1912 0727 7DA7 BCCF DCD9 D07E"
		$"8200 86FF 8100 026B C2F4 91FF 18FC F0DF"
		$"E0EF BEA6 FFFF F7AE 96FF FFF3 C5C5 DAEA"
		$"F4FB FDFD FEFE 83FF 80FE 00FF 80D3 00FF"
		$"8064 00FF 8033 00FF 806B 00FF 80D4 00FF"
		$"80FC 80FF 1AFE FDF9 F4EB DE98 3120 2081"
		$"C434 0916 1004 479B B0C5 D7E5 E2DD A51F"
		$"8100 86FF 8100 0662 C8F6 FFFC FDFE 8DFF"
		$"19FE FDDB C2FF C69E FFE7 969E F7FF FFF3"
		$"C1BF D4E4 EEF5 F7F9 FBFC FD80 FE01 FFFF"
		$"80FE 00FF 80D3 00FF 8064 00FF 8033 00FF"
		$"806B 00FF 80D4 00FF 80FC 80FF 1AFE FBF7"
		$"EFE4 D24C 1C10 4DBB 6D13 0B12 050A 85A6"
		$"BBCE DFEB E9E3 C04A 8200 85FF 8200 0BB7"
		$"CFDD D6E1 ECED F4F9 F4F9 FC89 FF20 E7A6"
		$"7F8E D7D7 7FB6 F7FF FFFE EAC0 BCCD D9E5"
		$"ECEF F2F4 F6F8 FAFB FCFD FEFD FDFE FF80"
		$"D300 FF80 6400 FF80 3300 FF80 6B00 FF80"
		$"D400 FF80 FC1D FFFF FEFC F9F2 E9DC 9615"
		$"1324 94A1 2B0B 0E1B 0443 9BB0 C5D6 E5F0"
		$"F2E8 D374 8200 86FF 8100 133C 5E7F 7B8E"
		$"A591 B0C7 CAD4 DCE2 EAEE ECF4 F7FC FE86"
		$"FF1C DFBE 9E8E 9EFF FEDF C5D0 DBE1 E2E4"
		$"E5E7 EAED F0F2 F4F7 F8FA FBFC FDFE FE94"
		$"FF1D FEFE FBF5 EDE2 D23D 130A 4FAC 560F"
		$"1610 1403 7CA5 BACE DEEB F4F8 EDE0 990F"
		$"8100 86FF 8700 180A 82B2 B8B9 B8B7 BEBD"
		$"BFC8 CDD0 DFE2 E6ED F2F8 F9FF FEFE FFFE"
		$"82FF 14DE C7D8 E9F5 FBF7 F0E8 E4E3 E6E7"
		$"EAED F0F3 F2F4 F6FC 80A4 00FF 8030 00FF"
		$"8047 00FF 80AE 00FF 80F7 82FF 1DFE FCF8"
		$"F1E7 D981 211A 168D 8710 1012 170E 3D96"
		$"AFC4 D6E5 F0F7 FBF1 E6B6 3A81 0086 FF88"
		$"0022 ADCB CAC8 C5C2 C0BE BBBA B6B4 B9B6"
		$"BCC0 C5C7 D0D7 DAE4 EDE8 F4FB F7FB FDDB"
		$"C8DC EBF7 FD80 FF0F FCF6 EEE7 E4E4 E5E9"
		$"E9ED F0F8 A2A3 A4FE 8030 00FF 8047 00FF"
		$"80AE 00FF 80F7 81FF 1EFE FDFA F4EB DFB4"
		$"371A 1047 9A41 0512 0B08 1E71 A4BA CDDD"
		$"EBF4 FAFD F7EA CE6A 8200 85FF 8700 2335"
		$"CFE1 DFDD DAD8 D6D4 D1CE CCC9 C6C3 C0BC"
		$"B9B5 B7B4 B7BA BDBC C4C8 C9D5 DCD0 CDE1"
		$"EEF8 FD84 FF0B FBF4 ECE6 E4E5 E9F3 A0A2"
		$"A4FE 8030 00FF 8047 00FF 80AE 00FF 80F7"
		$"80FF 20FE FEFB F7F0 E5D3 691C 1E21 7372"
		$"1412 1309 0237 99AE C3D5 E4F0 F7FB FEFD"
		$"EDDD 8E05 8100 86FF 8600 2391 E2F0 EEED"
		$"EBE9 E8E6 E4E2 E0DD DAD6 D3C4 C1AB A98C"
		$"8A75 736D 6C75 7D8A 95A1 96D3 DDF9 FD88"
		$"FF07 F9F1 E5EC F3F8 FCFE 8FFF 20FE FCF9"
		$"F3EA DD74 2517 1752 8332 1B1E 1904 0060"
		$"A2B8 CCDD EAF4 FAFD FEFE F1E4 AD2A 8100"
		$"88FF 8400 23C3 F1F9 F8F8 F7F5 F4F3 F2F1"
		$"EFEC EBE6 E4D5 D3BC B99C 9A83 817B 7A78"
		$"787A 7C96 9ED9 E1FB FD89 FF06 FEE5 E595"
		$"9A9D FD80 3000 FF80 5F00 FF80 D000 FF80"
		$"FD80 FF20 FEFB F6EE E3C9 2413 161B 7548"
		$"1218 1413 0112 92AD C1D4 E4EF F7FB FEFF"
		$"FFF5 E9C5 5582 0089 FF81 0024 04E0 FCFE"
		$"FEFD FDFC FCFA FAF7 F6EB EAC1 C081 8067"
		$"664D 4C3B 3B38 3736 3635 363E 40AE B1F9"
		$"FB89 FF06 F9DF DE93 989C FD80 3000 FF80"
		$"5F00 FF80 D000 FF80 FD23 FFFF FEFC F9F2"
		$"E9DB 8710 1C18 4A71 1709 1610 0404 59A1"
		$"B7CA DCE9 F3F9 FDFE FFFF FBEC D880 8200"
		$"88FF 8200 0175 EA84 FF1B FDFD FBFB F1F0"
		$"C6C6 8585 6B6A 5150 3E3E 3B3B 3939 3839"
		$"4142 B1B3 FAFB 89FF 06F2 D6D9 9197 9CFD"
		$"8030 00FF 805F 00FF 80D0 00FF 80FD 1CFF"
		$"FFFE FBF6 EDE2 D254 191C 295E 3A09 1116"
		$"0800 2F95 ABC1 D3E2 EEF7 FBFE 80FF 04FE"
		$"EFE3 A31C 8100 88FF 8200 01B9 F182 FF1D"
		$"FCFC EFEF C0C0 9393 6464 3535 4C4C 6463"
		$"7474 6666 5151 4040 4343 B4B4 FAFB 89FF"
		$"06EA CDD7 E5F0 F8FD 8DFF 1BFE FDF9 F2E9"
		$"DAA1 2621 253C 511F 0511 0D04 0B76 A1B6"
		$"CADB E9F2 F9FD FE80 FF04 FEF4 E8BE 4481"
		$"0088 FF82 0001 D3F8 82FF 1DFC FCEF EFC0"
		$"C093 9364 6435 354C 4C64 6475 7568 6853"
		$"5342 4244 44B4 B5FB FB88 FF07 FEE3 C1D6"
		$"A1A9 AFFD 805C 00FF 807C 00FF 80CC 00FF"
		$"80FA 1BFF FEFB F7EE E2D3 5715 2329 462F"
		$"1214 1202 0046 97AC C1D3 E2ED F6FB FE82"
		$"FF03 FAEB D272 8200 86FF 8200 0125 E481"
		$"FF1F F9F9 DBDB A0A0 5656 3535 4646 7A7A"
		$"8F8F 7A7A 6363 4B4B 4545 7474 A8A8 E8E8"
		$"FEFE 88FF 07F7 D6C3 D8A2 AAAF FE80 5C00"
		$"FF80 7C00 FF80 CC00 FF80 FA1B FEFD F9F3"
		$"E9DB AE1A 1328 3A34 1912 0609 021E 89A2"
		$"B7CA DBE9 F2F9 FDFE 82FF 04FD EEDF 930B"
		$"8100 86FF 8200 019C EC81 FF1F F9F9 DBDB"
		$"A0A0 5656 3535 4646 7A7A 8F8F 7A7A 6363"
		$"4B4B 4545 7474 A8A8 E8E8 FEFE 88FF 07F0"
		$"CAC6 DBA4 ABAF FE80 5C00 FF80 7C00 FF80"
		$"CC00 FF80 FA1A FEFB F7EF E3D3 8055 1D1B"
		$"3D2E 1B15 0A0F 025E 9AAE C2D4 E3EE F6FB"
		$"FE83 FF04 FEF2 E6B3 3481 0086 FF82 0023"
		$"C4F3 FFFF FEFE DFDF 8989 5454 5252 8282"
		$"ADAD B9B9 6D6D 4141 5050 7878 A3A3 D8D8"
		$"F5F5 FEFE 8AFF 07E9 C1CE DFEC F6FC FE8B"
		$"FF1B FEFD F9F3 EADD B547 7790 4C23 2929"
		$"1A0D 021F 89A6 BACC DDE9 F3F9 FDFE 84FF"
		$"03F8 E9CA 6082 0085 FF82 0023 DBFB FFFF"
		$"FEFE DFDF 8989 5454 5252 8282 ADAD B9B9"
		$"6D6D 4141 5050 7878 A3A3 D8D8 F5F5 FEFE"
		$"86FF 80FE 08FC E1BF D2E3 D3DB DFFF 809F"
		$"00FF 8087 00FF 80B4 1DFF F2F2 F1FB F7EF"
		$"E4D4 8A50 78E3 F6B0 6027 1708 015A 9DB2"
		$"C5D6 E5F0 F7FB FE85 FF03 FCED DB8B 8200"
		$"84FF 8200 013F E780 FF1D FCFC CCCC 6666"
		$"7070 9F9F E1E1 EBEB 8E8E 4242 4C4C 8383"
		$"C7C7 EDED F8F8 FCFC 85FF 0EFE FEFD FCFB"
		$"FCF3 D2C4 D7E6 D6DC DFFF 809F 00FF 8087"
		$"00FF 80B4 1DFF F2F1 F0F9 F3EA DDB8 6053"
		$"99FB FFF7 9447 1B00 2A93 A9BD CFDF EBF4"
		$"FAFD FE85 FF04 FEF0 E4A9 2381 0084 FF82"
		$"0001 ABEE 80FF 1DFC FCCC CC66 6670 709F"
		$"9FE1 E1EB EB8E 8E42 424C 4C83 83C7 C7ED"
		$"EDF8 F8FC FC84 FF0F FEFD FBF7 F0EF F2E5"
		$"C2C8 D9E9 D7DD E0FF 809F 00FF 8087 00FF"
		$"80B4 1CFF F2F1 EEF7 EFE4 D376 527E B4FC"
		$"FFB6 617B 9339 7DA0 B5C8 D9E6 F1F8 FCFE"
		$"87FF 03F5 E9C4 5481 0084 FF82 0001 CCF5"
		$"80FF 21FE FEEF EFC9 C9D0 D0EE EEFC FCEE"
		$"EE94 9445 4548 4864 6481 8196 96AE AED5"
		$"D5F5 F5FE FE80 FF0E FEFB F5EB DCD9 DCD0"
		$"B5C7 DAE9 F4FB FD8A FF1B FEFD F9F3 E9DC"
		$"A34A 619C E0E5 E283 4E85 AC70 98AC C1D3"
		$"E2ED F5FB FEFE 87FF 03FB ECD7 7C81 0084"
		$"FF82 0001 E0FC 80FF 21FE FEEF EFC9 C9D0"
		$"D0EE EEFC FCEE EE94 9445 4548 4864 6481"
		$"8196 96AE AED5 D5F5 F5FE FE80 FF13 FDF7"
		$"EEDA DCED DECC BCC2 D3E4 ECF4 F8FE DDDE"
		$"DEFF 80B7 00FF 80D4 1BFF F5F2 EEEE E2CE"
		$"7552 70D0 FFF6 9D75 7893 9390 A4B9 CCDC"
		$"E9F2 F9FC FE82 FF0A DF96 9EA6 FFFF FEEF"
		$"E29D 1380 0083 FF82 0001 69E8 83FF 05FD"
		$"FDFC FCFD FD81 FE15 FAFA DBDB 9F9F 7373"
		$"5555 4747 4444 4E4E 7474 B4B4 EFEF 80FE"
		$"13FB F2E4 D2E8 FFF7 EFE6 CFCB D5E0 EAF1"
		$"F9DB DDDD FF80 B700 FF80 D42B FEF4 F0EA"
		$"E9DB A965 529D FBFF EA76 5B72 8D8D 9DB1"
		$"C5D6 E4EF F7FB FEFF DFDF FFFF E77F DFF7"
		$"8EC6 FFFE F3E6 B943 8000 83FF 8200 01B5"
		$"F083 FF05 FDFD FCFC FDFD 81FE 30FA FADB"
		$"DB9F 9F73 7355 5547 4744 444E 4E74 74B4"
		$"B4EF EFFE FEFD F8EC DAD3 F5FF FFFE FDF4"
		$"E6D7 D1D6 E2EE D5D9 DBFE B6B7 B7FF 80D4"
		$"2BFE F2EE E7E4 D074 6089 DCFF F8A7 5D80"
		$"9A89 96AA BECF DFEB F4F9 FDCD 867F 7FA6"
		$"FFD7 86EF FF96 CEFF FFF9 EAD0 6E80 0083"
		$"FF82 0001 D2F7 8FFF 1BFC FCF4 F4D7 D7B8"
		$"B8A0 A08E 8E6B 6B4C 4C5A 5AC6 C6FC FBFC"
		$"F3E4 D0E1 FD83 FF0C F9EB DBD6 D9E6 EEF4"
		$"F8FB FDFE FE80 FF2E FEFA F4EB DEB4 4C63"
		$"A8F6 FFDB 7967 858C 90A3 B7CA DAE6 ABEF"
		$"FBFE AEC6 FFE7 7FDF F796 7F8E 7FC6 FFFF"
		$"FDEE DF94 0B00 0083 FF81 0002 15E2 FD8F"
		$"FF1A FCFC F4F4 D7D7 B8B8 A0A0 8E8E 6B6B"
		$"4C4C 5A5A C6C6 FCFB F9EE DAD0 F185 FF28"
		$"FDF8 EDDF D6D4 DDEB E6EA EDFC F7F7 F8FD"
		$"F7F0 E4D8 B869 7CD5 FEEC AE94 777E 8A9D"
		$"B0C3 D4E2 B87A D3FD FE80 FF11 F77F DFFF"
		$"D796 DFC6 86CE FFFE F2E6 B230 0000 82FF"
		$"8200 0183 EA92 FF18 FEFE FDFD FBFB FAFA"
		$"E0E0 9292 5858 4A4A BABA FBF9 F6E7 D4DE"
		$"FB81 FF03 FEFC FEFB 81FA 23F0 E0D7 D4D4"
		$"DCE3 F5F2 F5F5 FBF5 ECE0 D2BB 7092 FFFF"
		$"C96D 7C85 8798 ABBD CFDF CD8F 92AC FE81"
		$"FF11 BE8E FFFF 9EB6 FFFF 9EBE FFFF F6E9"
		$"C95C 0000 82FF 8200 01BF F292 FF18 FEFE"
		$"FDFD FBFB FAFA E0E0 9292 5858 4A4A BABA"
		$"FAF7 F1DF CCEB FE81 FF2B F7E6 D0BB B4B4"
		$"B5C1 E6FC F5E7 DBD0 D1E1 E7EF F2F9 F1E9"
		$"DBCB AC88 AADD F28B 5C83 8493 A6B9 CBD9"
		$"E7F0 F7C3 8DFE 80FF 12F7 86D7 FFFF BE86"
		$"CEBE 8EE7 FFFF FCEC D983 0000 82FF 8200"
		$"01D8 F998 FF11 F1F1 AEAE 6363 5A5A 9E9E"
		$"E8E8 FCF6 EAD3 D3F6 80FF 2DFE E4B1 9177"
		$"625D 5D5C 5DA9 F3FF FEF8 EBE1 D6DA E9F4"
		$"F6F0 E6D8 BC98 8FC3 B4D5 AA8A 978E A0B4"
		$"C6D6 E4EC F5FA ED7F EF80 FF11 A69E FFD7"
		$"C8F4 BE9A A4EC FEFE FFFC EDDB 8C06 8100"
		$"00FF 8200 023A E2FE 98FF 20F1 F1AE AE63"
		$"635A 5A9E 9EE8 E7FA F0E0 CDE8 FFFF F9DD"
		$"B98C 5657 6974 705F 4E43 97EF 81FF 29FA"
		$"F5D8 DDEC F1EC E1D0 B984 96C6 BBB1 794E"
		$"8A99 AEC1 D1E0 EBF4 F8FC FE8E CEFF FFDF"
		$"7F96 7F8B B0F8 FBFC FE80 FD05 FBF6 F1E5"
		$"AE29 8100 00FF 8200 0195 EC97 FF22 FAFA"
		$"BABA 6161 4444 9696 EAEA FDFB F7EA D3D5"
		$"F6FE EEC1 8054 516D 8D8D 7F69 586B 8DCE"
		$"FA82 FF31 F8D4 D5E6 EBE7 DAC2 CB97 C8AD"
		$"AB99 5130 8DA5 BACC DCE9 F2F8 FAFD FDAD"
		$"95B5 E6E6 A5C4 E2FB FCFC FEFD FBF3 F0EE"
		$"EBE8 E3DE B23C 8100 00FF 8200 01C5 F497"
		$"FF21 FAFA BABA 6161 4444 9696 EAEA FCF9"
		$"F2E0 CEE9 FEEB AD71 596E 98BA 9768 6071"
		$"8CBD E6FC 82FF 1FFC E2C5 D4E2 E6E1 CBC1"
		$"B1A6 C698 A180 4C6B 9DB1 C5D6 E4EF F7FB"
		$"FDFE A57F 95BD F581 FD0E FCF9 F5F1 EFEB"
		$"E6E0 D7CB B6A1 8D63 1381 0000 FF82 0001"
		$"DBFB 95FF 23FE FED7 D773 7347 477A 7AD8"
		$"D8FC FCFE F8EC D5CF F2FD D479 688E CDE9"
		$"B465 5279 B7E5 FCFF FE82 FF30 F5CF C2D5"
		$"E2E1 D4B8 C9A3 BEB8 BCAE 534D 90A8 BCCF"
		$"DFEB F4FA FDFE FFE7 F7FF FEFD FBF6 F3F0"
		$"EDEA E8E0 D9CD A58C 6A4C 321A 0883 0000"
		$"FF81 0001 58E5 96FF 24FE FED7 D773 7347"
		$"477A 7AD8 D8FC FBFC F4E5 CEE1 FAFD E5B3"
		$"B9DE FDFA A655 5379 A4BE CEE3 F9FE 80FF"
		$"18FE EBC3 C6D9 DFD8 C2AB C4B8 D8CE C195"
		$"4862 9DB2 C6D8 E6F1 F8FC 80FE 10FD FAF4"
		$"F1EE EBE8 E3DC D1C0 A991 7051 1F0A 8800"
		$"00FF 8100 01A5 ED96 FF24 FBFB AEAE 4444"
		$"5959 B6B6 F8F8 FFFE F9EE DBD0 F0FE FFFC"
		$"F5F7 FEFF FBD1 9370 645E 616F 91C9 F180"
		$"FF29 F8D9 BFCD DAD7 CEC5 B6C2 D4E2 C3AD"
		$"7550 87A7 BCCF DFEC F4F9 FAF5 F2F0 ECEA"
		$"E7E0 D8CA B59C 7E5E 3D22 0D02 8B00 00FF"
		$"8100 01CC F596 FF12 FBFB AEAE 4444 5959"
		$"B6B6 F8F8 FEFC F5E6 D2DE FB84 FF32 FEFC"
		$"EAC8 A58C 7D6D 5F72 BDF9 FFFD ECC9 C2D4"
		$"D7D1 C7C7 CFDA D3C2 AE9B 5C5F 9AB0 C4D4"
		$"E1E7 EAEB EAE8 E2DC D1C0 A88C 6E4E 2F15"
		$"068F 0001 FFFF 8100 01DF FC96 FF11 FAFA"
		$"A9A9 4444 6F6F D5D5 FDFD FEFA F0DC D0ED"
		$"88FF 2BFA F1E9 DDA8 6C4F 9BF4 FFF3 D1BC"
		$"C9D3 D4CC D9D3 DED8 B4AD BE9A 3D70 9EB1"
		$"C1CD D7DD DCD6 C5B2 997C 5D3D 220C 0293"
		$"0001 FFFF 8000 0176 E897 FF09 FAFA A9A9"
		$"4444 6F6F D5D5 80FD 04F7 E9D3 D4F5 8BFF"
		$"23E1 9769 79C2 FAFE EAC3 C0CD D5D0 C9E9"
		$"CDDD B3A4 B2C1 784B 889E ADB7 BAB1 A089"
		$"694A 2B15 0497 0080 FF80 0001 B8F0 97FF"
		$"11FB FBBA BA6C 6C89 89D1 D1FA F9FB F3E1"
		$"CEE7 FD8A FF1F E89B 5D75 C5F5 FFF9 DBBD"
		$"C6D2 D4C6 D0C5 C0BB 9CB5 C297 5967 7B7B"
		$"7267 4E37 1B0A 9A00 82FF 8000 01D2 F797"
		$"FF10 FBFB BABA 6C6C 8989 D1D1 FAF9 FAEF"
		$"DBD7 F68A FF1C F4AD 6161 B0F7 FFFE F0C6"
		$"BECB CEC4 BCDD 9CAF 9BB4 C3B4 674A 3728"
		$"1A0B 0395 008B FF80 0001 E2FE 97FF 12FE"
		$"FEE4 E4A8 A893 93BB BBF3 F2F9 EDD9 D7EB"
		$"F6FD 87FF 19DE 9665 5796 E4FF FFFD E0B7"
		$"B9C1 C0A7 C5B5 9BA2 B7BE BF8F 5B28 0199"
		$"008B FF80 0002 E5F1 F896 FF14 FEFE E4E4"
		$"A8A8 9393 BBBB F3F2 F9EF DDCC C9D0 DEF3"
		$"F985 FF18 F565 5763 BAEA FFFE F5C9 A6A5"
		$"9C8B ADDA 9792 A8BA AAA9 6E60 0C99 008C"
		$"FF80 0006 7FB2 CFE6 ECF3 FB94 FF15 FBFB"
		$"E1E1 BEBE D8D1 C8EE FAF3 E6D6 C6BB BAC5"
		$"D9F4 F9FE 82FF 17D5 8871 6371 9BB6 FBE2"
		$"985A 463B 76CE D791 A3BF A3A1 9A71 4695"
		$"0091 FF83 0007 0E75 B0D6 E7ED F6FC 90FF"
		$"32FB FBE1 E1BE BEB6 727B EEFC E8D2 D8DA"
		$"CEC3 B8B1 BFD4 F1F9 FEFF FFC6 9DC5 9D51"
		$"74C0 FEF1 AE37 0100 70D4 E6B5 98AB AB89"
		$"A387 6513 9100 95FF 8700 072D 86BD DAE8"
		$"F0F7 FE8E FF21 FBFB EB9E 8BA2 9DFC E684"
		$"B180 B7E4 DAC9 A18C A6BF CDEA F5FD D79E"
		$"C2BE 79BB 77FC DB76 8000 0A9E E4DF AFAB"
		$"B475 84A7 6E4F 8D00 9AFF 8B00 0648 9CC5"
		$"E0EB F2F9 8BFF 2FFB FB87 A6F1 A2BD FDBE"
		$"95FD DC8A F3ED D8A0 867D 7D7A 94B1 DFF8"
		$"FEFF E980 A79C F9BB 5604 0000 C3E3 CEBB"
		$"B595 6CA5 9A60 2189 009E FF8F 0006 63A0"
		$"C8E6 EDF4 FB88 FF20 F7A6 7F96 86C6 FFDF"
		$"7FAE A59D FCF9 DE60 3C28 150F 0C2E 9EC4"
		$"E5F6 FCED DDF7 ED9F 2A80 0009 56CC C6A7"
		$"A277 8BA5 9A3F 8600 A2FF 9200 0728 9AC2"
		$"D9E8 EEF6 FD87 FF0C C686 9EDF 7FCE 9E86"
		$"F7FE FBD0 0183 000A 125B 96B5 D9EB F7FF"
		$"DD7A 0380 0009 2B89 C286 9774 A7A9 7706"
		$"8600 A2FF 9200 0B13 719B 9FAA BACB DFE9"
		$"F0F7 FE83 FF0B BEA6 FFCE 9EFF FF8E DFFF"
		$"F4A9 8500 0805 2150 87AE D6E3 B62F 8200"
		$"0755 A978 9A86 9083 0286 00A4 FF91 000E"
		$"0A6F A8AE B1A9 A29B A4B8 CDE3 EBF2 FA80"
		$"FF0B EFEF FFE7 86BE C686 EFFF ED74 8800"
		$"0417 4086 AB82 8400 0325 2365 4689 00A7"
		$"FF8E 0012 0263 B4BD B6B0 A89F 9483 7059"
		$"7097 C7E6 EDF5 FC80 FF07 EFBE BEDF FFFE"
		$"E222 8A00 021F 5033 9300 ACFF 8B00 1552"
		$"B2BE AD98 7E64 462D 1807 0100 0013 63A8"
		$"D3E8 EFF7 FD81 FF01 FAD2 A400 B0FF 8700"
		$"072A 786F 4C2F 1405 0187 0009 308A BCDC"
		$"EAF1 F8FE F2B5 A300 B5FF 8300 0203 0B02"
		$"9000 055C A3CD E2EB 7B84 0081 FF98 00B6"
		$"FF9C 0001 8A23 8300 85FF 9400 B7FF A300"
		$"8AFF 8F00 B9FF A200 8BFF 8D00 BBFF A100"
		$"8CFF 8B00 FFFF FFFF A5FF FFFF D2FF 8600"
		$"EFFF 8D00 E8FF 8C00 0112 4B82 00E2 FF8C"
		$"0007 0D44 6786 9FAE B484 8100 DDFF 8C00"
		$"0D0D 4464 8499 A8B7 C3CE D7DE D9A1 0B81"
		$"00D7 FF8C 0012 0D44 6484 99A8 B7C3 CED6"
		$"DDE0 E4E6 E9EC E0B5 3481 00D2 FF8C 0017"
		$"194A 6D82 97A8 B7C3 CED6 DDE0 E4E6 E9EC"
		$"EFF3 F8FB F4E4 C55F 8200 CCFF 8C00 1519"
		$"4A70 879C ABB8 C4CE D6DD E0E4 E6E9 ECEF"
		$"F3F8 FBFE FE80 FF03 FAE8 D481 8200 C7FF"
		$"8C00 1519 4A6D 829C ABB8 C5CF D8DF E1E4"
		$"E7E9 ECEF F3F8 FBFE FE85 FF04 FEEC DE9F"
		$"1981 00C2 FF8C 0015 194A 7087 9CAB B8C4"
		$"CED8 DFE1 E4E7 E9EC F0F4 F8FB FEFE 8AFF"
		$"04FE F1E3 B73F 8100 BDFF 8C00 1519 4A70"
		$"879C ABB8 C5CF D8DF E1E4 E7E9 ECF0 F4F9"
		$"FCFE FE90 FF03 F8E5 CE6D 8200 B7FF 8C00"
		$"1519 4A70 879C ABB8 C5CF D8DF E1E4 E7E9"
		$"ECF0 F4F8 FCFE FE95 FF04 FCEA DA92 0B81"
		$"00B2 FF8C 0015 194A 7087 9CAB B8C5 CFD8"
		$"DFE1 E4E7 E9EC F0F4 F9FC FEFE 9AFF 04FE"
		$"EFE1 B035 8100 ADFF 8C00 152A 5576 8A9C"
		$"ABB8 C5CF D8DF E1E4 E7E9 ECF0 F4F9 FCFE"
		$"FEA0 FF03 F6E5 C55E 8200 A7FF 8C00 152A"
		$"5074 8D9D ADBB C7D1 D8DF E1E4 E7E9 ECF0"
		$"F4F9 FCFE FEA5 FF03 FBE8 D684 8200 A2FF"
		$"8C00 152A 5074 8D9D ADBB C7D2 D9DF E3E4"
		$"E7E9 ECF0 F4F9 FCFE FEAA FF04 FEED DFA4"
		$"2381 009D FF8C 0015 2A50 748D 9DAD BBC7"
		$"D2D9 DFE3 E4E7 EAED F0F6 F9FC FEFE 87FF"
		$"80FD 00FF 80FB 00FF 80F9 00FF 80F8 00FF"
		$"80F8 00FF 80F8 00FF 80FA 00FF 80FE 87FF"
		$"03F2 E4BE 4E82 0098 FF8B 0015 2A50 748D"
		$"9DAD BBC7 D2D9 DFE3 E4E7 EAED F0F6 F9FC"
		$"FEFE 8CFF 80FD 00FF 80FB 00FF 80F9 00FF"
		$"80F8 00FF 80F8 00FF 80F8 00FF 80FA 00FF"
		$"80FE 87FF 03F9 E7D1 7982 0096 FF88 0015"
		$"3159 7B92 9FAC BBC7 D2D9 DFE3 E4E7 EAED"
		$"F0F6 F9FC FEFE 91FF 80FD 00FF 80FB 00FF"
		$"80F9 00FF 80F8 00FF 80F8 00FF 80F8 00FF"
		$"80FA 00FF 80FE 87FF 04FD EBDD 9B14 8100"
		$"96FF 8300 1533 597B 91A1 B1BE C9D3 DADF"
		$"E3E4 E7EA EDF0 F6F9 FCFE FEBF FF04 FEF0"
		$"E2B5 3C81 0096 FF16 0015 6483 91A3 B1BE"
		$"C9D3 DBDF E3E5 E8EA EDF0 F6F9 FCFE FE8F"
		$"FF80 FE00 FF80 FB00 FF80 EA00 FF80 CE00"
		$"FF80 AB00 FF80 8F00 FF80 8900 FF80 8800"
		$"FF80 8A00 FF80 A500 FF80 E500 FF80 FE84"
		$"FF03 F7E5 CA68 8200 95FF 1100 67B5 CBD4"
		$"DBDF E3E5 E8EA EEF1 F7FA FDFE FE94 FF80"
		$"FE00 FF80 FB00 FF80 EA00 FF80 CE00 FF80"
		$"AB00 FF80 8F00 FF80 8900 FF80 8800 FF80"
		$"8A00 FF80 A500 FF80 E500 FF80 FE84 FF04"
		$"FCE9 D98E 0581 0095 FF0C 005B C2E3 E8EA"
		$"EEF1 F7FA FDFE FE99 FF80 FE00 FF80 FB00"
		$"FF80 EA00 FF80 CE00 FF80 AB00 FF80 8F00"
		$"FF80 8900 FF80 8800 FF80 8A00 FF80 A500"
		$"FF80 E500 FF80 FE84 FF04 FEEE E0AC 2D81"
		$"0095 FF07 0028 ADE0 EFFD FEFE D5FF 03F5"
		$"E4C5 5A82 0094 FF05 0005 91DC ECFE 98FF"
		$"80FE 00FF 80FC 00FF 80F1 00FF 80C1 00FF"
		$"8079 00FF 805C 00FF 803F 00FF 802A 00FF"
		$"8027 00FF 8026 00FF 8025 00FF 802E 00FF"
		$"80AD 00FF 80FB 85FF 03FB E8D5 8282 0094"
		$"FF05 0000 71D2 E8FB 98FF 80FE 00FF 80FC"
		$"00FF 80F1 00FF 80C1 00FF 8079 00FF 805C"
		$"00FF 803F 00FF 802A 00FF 8027 00FF 8026"
		$"00FF 8025 00FF 802E 00FF 80AD 00FF 80FB"
		$"85FF 04FE ECDF A420 8100 94FF 0500 004F"
		$"C5E5 F898 FF80 FE00 FF80 FC00 FF80 F100"
		$"FF80 C100 FF80 7900 FF80 5C00 FF80 3F00"
		$"FF80 2A00 FF80 2700 FF80 2600 FF80 2500"
		$"FF80 2E00 FF80 AD00 FF80 FB86 FF03 F2E3"
		$"BD4A 8200 93FF 0500 002D AFE3 F2D8 FF03"
		$"F9E7 CF71 8200 93FF 0600 0012 99DF EEFE"
		$"93FF 80FC 00FF 80EC 00FF 80B8 00FF 8086"
		$"00FF 8051 00FF 801D 00FF 8037 00FF 8051"
		$"00FF 8065 00FF 8057 00FF 803F 00FF 802B"
		$"00FF 802E 00FF 80AD 00FF 80FB 86FF 04FD"
		$"EADC 960F 8100 93FF 0600 0003 80D9 EBFD"
		$"93FF 80FC 00FF 80EC 00FF 80B8 00FF 8086"
		$"00FF 8051 00FF 801D 00FF 8037 00FF 8051"
		$"00FF 8065 00FF 8057 00FF 803F 00FF 802B"
		$"00FF 802E 00FF 80AD 00FF 80FB 86FF 04FE"
		$"F0E1 B23A 8100 84FF 8700 82FF 8000 0364"
		$"CFE8 FB84 FE8C FF80 FC00 FF80 EC00 FF80"
		$"B800 FF80 8600 FF80 5100 FF80 1D00 FF80"
		$"3700 FF80 5100 FF80 6500 FF80 5700 FF80"
		$"3F00 FF80 2B00 FF80 2E00 FF80 AD00 FF80"
		$"FB87 FF03 F7E5 C968 8200 81FF 8A00 81FF"
		$"8000 0E46 C0E4 F5FD FCFB FAFA FBFB FCFC"
		$"FDFD 80FE CAFF 04FC E9D8 8A05 8100 80FF"
		$"8C00 80FF 8000 062A ACE1 EEF9 F6F4 80F2"
		$"0BF3 F4F5 F7F8 F9FA FBFB FCFD FD80 F700"
		$"FF80 D700 FF80 9500 FF80 4200 FF80 1D00"
		$"FF80 3000 FF80 6900 FF80 8200 FF80 6A00"
		$"FF80 5000 FF80 3500 FF80 3000 FF80 6400"
		$"FF80 9E00 FF80 E400 FF80 FE87 FF04 FEEE"
		$"DFA9 2681 0001 FFFF 8300 0409 3128 1815"
		$"8200 80FF 8000 1D12 98DB E7F2 EBE2 E0E2"
		$"E2E6 E8E9 EBED EFF0 F2F3 F5F6 F7F1 F2F3"
		$"FBD4 D4D5 FD80 9400 FE80 4200 FF80 1D00"
		$"FF80 3000 FF80 6900 FF80 8200 FF80 6A00"
		$"FF80 5000 FF80 3500 FF80 3000 FF80 6400"
		$"FF80 9E00 FF80 E400 FF80 FE88 FF03 F4E4"
		$"C154 8900 040F 347F 1411 8300 01FF FF80"
		$"0021 037F D4DF E8DA D4D6 D3D0 CFD3 D2D6"
		$"DADD E0E4 E6E8 EAEC E7E8 EAF2 CECF CFF7"
		$"9191 92FB 8041 00FD 801D 00FE 8030 00FF"
		$"8069 00FF 8082 00FF 806A 00FF 8050 00FF"
		$"8035 00FF 8030 00FF 8064 00FF 809E 00FF"
		$"80E4 00FF 80FE 88FF 03FA E8D3 7C88 0003"
		$"0C0D 8E79 8500 01FF FF81 002B 5CC6 D9DC"
		$"D2F2 FAF1 F3F2 E4E4 E0D6 D0D1 D1CE D4D6"
		$"D9DC DFE2 E3E5 E8E9 ECEE EFF1 F2F3 F4F5"
		$"F6F8 F9FA FBFD FEFE B0FF 04FE ECDE 9F1C"
		$"8600 0404 003E C219 8500 01FF FF81 0005"
		$"3DB4 D0D1 CEF9 81FF 22FC FDFE F9FD F9EE"
		$"EEE8 E1D9 D7CE CCD3 A48F 94D9 4858 46E2"
		$"4137 38EB 6B6C 6DF5 9FA0 A2FE 80B0 00FF"
		$"805C 00FF 802A 00FF 803B 00FF 8067 00FF"
		$"8098 00FF 80D4 00FF 80F4 00FF 80FE 8CFF"
		$"04FE F1E3 BA44 8600 0305 0096 8086 0001"
		$"FFFF 8100 0522 A0CA C7CF F687 FF20 FEFF"
		$"FFFE FFFE F9F4 F0EA E2E5 DABE B7A1 D298"
		$"7871 D47E 7B77 EB9B 9EA0 FDAF B0B0 FF80"
		$"5C00 FF80 2A00 FF80 3B00 FF80 6700 FF80"
		$"9800 FF80 D400 FF80 F400 FF80 FE8D FF03"
		$"F8E7 CE6F 8500 0409 0046 AA16 8600 01FF"
		$"FF81 0005 0C88 C3C3 D4F7 93FF 14FD F9F8"
		$"F0EF F1E7 DDDF C1BF BFD7 9D9A 9FFC AFB0"
		$"B0FF 805C 00FF 802A 00FF 803B 00FF 8067"
		$"00FF 8098 00FF 80D4 00FF 80F4 00FF 80FE"
		$"8DFF 04FC EADA 910B 8300 0407 0419 9F4C"
		$"8700 01FF FF82 0004 6EB9 C0DD FC9A FF0A"
		$"FDFD F9FA FAE0 D6EB F4FB FEAF FF04 FEEF"
		$"E1AF 3483 0004 0E00 75AA 0487 0001 FFFF"
		$"8200 0353 AEBE E189 FF04 FDFB FEFB FA82"
		$"F900 FB88 FF09 FEE0 C7D1 DCF9 8081 81FF"
		$"802C 00FF 8037 00FF 8075 00FF 80C0 00FF"
		$"80EB 00FF 80F7 00FF 80FC 92FF 03F6 E5C5"
		$"5E82 0005 1901 1CCA 4602 8700 01FF FF82"
		$"0003 36A0 BEE9 88FF 0DFD F9F3 EADD D5CF"
		$"CECE CDD1 DAEB FC86 FF09 FAD5 C2CE DAF9"
		$"8081 81FF 802C 00FF 8037 00FF 8075 00FF"
		$"80C0 00FF 80EB 00FF 80F7 00FF 80FC 92FF"
		$"04FB E8D5 8605 8000 0604 2202 98AF 0602"
		$"8600 80FF 8200 031C 90BF ED85 FF11 FEFD"
		$"F9ED DAC8 B199 8980 7F7F 7D83 90BB E9FC"
		$"85FF 09FD CEBD CCD9 F980 8181 FF80 2C00"
		$"FF80 3700 FF80 7500 FF80 C000 FF80 EB00"
		$"FF80 F700 FF80 FC92 FF04 FEED DEA2 1F82"
		$"0002 31DE 3888 0080 FF82 0003 0A75 BEEE"
		$"86FF 08F8 E0B8 9382 6C56 4842 8043 0444"
		$"4581 CDF5 85FF 06FA CECB E0EF F9FE B1FF"
		$"03F2 E2BC 4981 0004 0AA8 9500 0187 0080"
		$"FF82 0003 026B C6F2 83FF 13FA EDDC C29F"
		$"6A47 4B4C 5053 514B 4237 2D25 66C1 F285"
		$"FF09 F0C9 BED0 DEFA 8687 87FF 8030 00FF"
		$"8032 00FF 8051 00FF 8072 00FF 808A 00FF"
		$"80A5 00FF 80D0 00FF 80F4 00FF 80FE 8AFF"
		$"04FE F9E3 CB6A 8100 024C C51D 8900 80FF"
		$"8300 0244 CCF7 80FF 16FE FCF3 DAB7 9273"
		$"5C3E 364C 5E6B 7671 6255 4844 4480 CCF5"
		$"85FF 09EF C6C1 D2E0 FB86 8787 FF80 3000"
		$"FF80 3200 FF80 5100 FF80 7200 FF80 8A00"
		$"FF80 A500 FF80 D000 FF80 F400 FF80 FE8A"
		$"FF0A FEFB E5D2 8709 0000 13C3 7189 0082"
		$"FF82 0002 3CD1 FC80 FF16 FAEE D1A2 7045"
		$"3539 5170 8586 786B 5745 3D4C 6C87 BAE8"
		$"FB85 FF05 EAC6 C3D4 E1FB 8087 00FF 8030"
		$"00FF 8032 00FF 8051 00FF 8072 00FF 808A"
		$"00FF 80A5 00FF 80D0 00FF 80F4 00FF 80FE"
		$"89FF 0BFE FDF9 E7D2 9D1F 0100 64CA 1189"
		$"0082 FF81 0002 066C DF80 FF17 FCE6 BF8F"
		$"6345 3C4D 668F A390 7157 5150 5763 87B2"
		$"CFEB FBFE 85FF 05E1 C6D6 E8F4 FCB0 FF0D"
		$"FEFB F7EA CFAB 1500 0AC5 6600 0208 8600"
		$"83FF 8200 196B E2FF FFFE F5CB 8B5B 4C52"
		$"739E B9C6 AD72 463A 4C6A 8FAB D0ED FA88"
		$"FF05 D9C5 D4E5 F1FD 80D7 00FF 8094 00FF"
		$"8062 00FF 8041 00FF 8031 00FF 802E 00FF"
		$"8039 00FF 8064 00FF 80AB 00FF 80ED 00FF"
		$"80FE 84FF 0DFE FDF9 F4E8 CD82 0F06 72C1"
		$"0702 0187 0083 FF82 001A 8AE5 FFFF FCEE"
		$"B96D 5367 82B3 DDE9 C483 4F3B 4F71 A1CD"
		$"E6F8 FDFF FD87 FF05 D9C7 D7E7 F2FD 80D7"
		$"00FF 8094 00FF 8062 00FF 8041 00FF 8031"
		$"00FF 802E 00FF 8039 00FF 8064 00FF 80AB"
		$"00FF 80ED 00FF 80FE 83FF 0DFE FEFB F6EF"
		$"E3C6 3104 29D3 5D00 0288 0083 FF81 001C"
		$"03A5 EDFF FFFD F2CC 978B A5C3 E7FC FBC2"
		$"713E 314C 6E95 B9CC D9E2 F0FA FD85 FF06"
		$"F9CF C9DA E8F3 FE80 D700 FF80 9400 FF80"
		$"6200 FF80 4100 FF80 3100 FF80 2E00 FF80"
		$"3900 FF80 6400 FF80 AB00 FF80 ED00 FF80"
		$"FE83 FF0B FEFC F8F2 E9DB 6F04 0194 AD07"
		$"8900 85FF 8100 1CB7 F4FF FFFE FCEF DCD6"
		$"E2F2 FFFF F9CC 8C59 434C 5767 757E 8CA1"
		$"BCDC F2FB 84FF 06F4 CBCC E0EF F9FE ADFF"
		$"0BFE FDFA F4EC E1B6 1400 37D5 3F8A 0085"
		$"FF81 0001 BBF7 80FF 18FE FBF8 F7FA FCFE"
		$"FEFD E9C3 9773 5E50 4643 444A 5D79 A3CF"
		$"EEFE 83FF 06F2 CBCF E2F1 FAFE 80FC 00FF"
		$"80F3 00FF 80D3 00FF 80AF 00FF 8096 00FF"
		$"8081 00FF 8059 00FF 8036 00FF 8047 00FF"
		$"80BF 00FF 80FC 81FF 0EFE FEFB F7F0 E6D8"
		$"4D00 05A1 8804 0001 8700 85FF 8100 0246"
		$"CAFC 88FF 10FE FBEE D9BB 9D84 6F61 5B51"
		$"4D50 6391 CCF4 83FF 06EA C5D2 E5F2 FBFF"
		$"80FC 00FF 80F3 00FF 80D3 00FF 80AF 00FF"
		$"8096 00FF 8081 00FF 8059 00FF 8036 00FF"
		$"8047 00FF 80BF 00FF 80FC 81FF 0EFE FCF9"
		$"F3EA DD87 0E00 43CA 2D00 0306 8700 85FF"
		$"8100 0166 D78A FF0F FEFF FFF3 DFCD BDB1"
		$"A68B 684C 3C5D ABE8 83FF 06E1 C8D5 E7F4"
		$"FCFF 80FC 00FF 80F3 00FF 80D3 00FF 80AF"
		$"00FF 8096 00FF 8081 00FF 8059 00FF 8036"
		$"00FF 8047 00FF 80BF 00FF 80FC 80FF 0BFE"
		$"FEFB F6EE E3C5 2F04 0DA0 898A 0086 FF81"
		$"0002 7ED7 FE8B FF0D FEFC F9F4 F4EE E3B9"
		$"825D 3A4E A1E4 83FF 05E4 CBD7 E9F5 FCAC"
		$"FF0B FEFC F8F2 E8DA 7204 0064 C725 8A00"
		$"86FF 8100 029B E3FE 91FF 07E3 AA72 5651"
		$"78BC EE82 FF06 FDDA C6D9 EAF6 FD82 FF80"
		$"FE00 FF80 FD00 FF80 FB00 FF80 FA00 FF80"
		$"DC00 FF80 8500 FF80 4400 FF80 3400 FF80"
		$"B200 FF80 FB11 FFFF FEFD FAF4 ECE0 C013"
		$"0114 B36C 0000 0102 8600 87FF 8100 01AD"
		$"ED90 FF09 FCE0 B074 5358 82BD E5FC 82FF"
		$"06F9 D1C7 DCEC F7FD 82FF 80FE 00FF 80FD"
		$"00FF 80FB 00FF 80FA 00FF 80DC 00FF 8085"
		$"00FF 8044 00FF 8034 00FF 80B2 00FF 80FB"
		$"11FF FFFE FBF7 F0E6 D87A 0800 65B2 1600"
		$"0302 0E86 0087 FF81 0002 ADEB FE8F FF08"
		$"EBB7 7B48 4676 B8EB F983 FF06 F8D0 CADE"
		$"EEF8 FE82 FF80 FE00 FF80 FD00 FF80 FB00"
		$"FF80 FA00 FF80 DC00 FF80 8500 FF80 4400"
		$"FF80 3400 FF80 B200 FF80 FB12 FFFE FDF9"
		$"F3EA DEAB 4103 1497 5800 0002 0032 0985"
		$"0087 FF81 0001 BCF3 8EFF 08FE F6C5 8352"
		$"3F62 A7E3 85FF 06F3 CBCD E0EF F9FE A9FF"
		$"0CFE FEFB F6EE E3D0 3A0B 016B 9812 8000"
		$"021D 6720 8400 87FF 8100 0251 C5FB 8EFF"
		$"08F9 DE98 5742 5995 D4F9 85FF 06F0 C6CE"
		$"E2F0 FAFE 8EFF 80F0 00FF 80A5 00FF 8050"
		$"00FF 8047 00FF 8092 00FF 80E4 00FF 81FE"
		$"11FC F8F2 E8DB 710B 0033 A43B 0000 051D"
		$"5180 4384 0087 FF81 0002 67C3 F78E FF08"
		$"F3C5 753F 4879 BBEB FE85 FF06 F1C8 D1E4"
		$"F2FB FE8E FF80 F000 FF80 A500 FF80 5000"
		$"FF80 4700 FF80 9200 FF80 E417 FFFE FEFD"
		$"FDFA F4EC E1BF 1407 0087 8901 0000 0426"
		$"7894 6708 8200 88FF 8100 0288 D1FB 8EFF"
		$"07F1 BA65 3552 95DA F986 FF06 E7C5 D3E6"
		$"F3FB FE8E FF80 F000 FF80 A500 FF80 5000"
		$"FF80 4700 FF80 9200 FF80 E40E FFFE FEFD"
		$"FBF7 F0E6 D54A 0501 36AB 2B80 0005 0454"
		$"96A0 8726 8200 88FF 8100 0293 D8FC 8EFF"
		$"07F1 BC6D 4263 A6E5 FA85 FF06 FCE3 C9D6"
		$"E7F4 FCA8 FF0C FEFC F9F3 EADD 8B07 0206"
		$"836C 0680 0005 118C A4AB A24C 8200 88FF"
		$"8100 0290 DAFC 8EFF 07F3 C581 5D77 A0C4"
		$"D985 FF06 FCDD C7D8 E9F5 FC8B FF80 F900"
		$"FF80 B200 FF80 4F00 FF80 2E00 FF80 8A00"
		$"FF80 E800 FF80 FD0D FFFE FEFB F6EE E3CC"
		$"340C 0042 9E1D 8100 064D 9DB0 B6B7 7908"
		$"8100 88FF 8100 02A8 E6FE 8EFF 0CF8 DBA7"
		$"8184 7980 8D95 F7E7 BECE 80FF 06FA D2C8"
		$"DAEB F6FD 8BFF 80F9 00FF 80B2 00FF 804F"
		$"00FF 802E 00FF 808A 00FF 80E8 00FF 80FD"
		$"0CFF FEFC F8F2 E8DA 7107 0008 985D 8100"
		$"070D 88A7 BBC2 C59C 2881 0088 FF80 0002"
		$"29AF EE8F FF16 FDF2 D0AA 97A3 C7E5 7EE7"
		$"CEBE AE96 FFFF FBD2 C8DB ECF7 FD8B FF80"
		$"F900 FF80 B200 FF80 4F00 FF80 2E00 FF80"
		$"8A00 FF80 E800 FF80 FD18 FEFD FAF4 ECE0"
		$"BC13 0200 59A1 2200 0004 0E44 9BB2 C6D0"
		$"CEB9 5482 0087 FF80 0002 44AD ED90 FF07"
		$"FCEB CFB4 BB94 78B6 80FF 0AF7 7FFF FFF9"
		$"CDC8 DBEC F7FD A6FF 0BFE FBF7 F0E6 D36A"
		$"0100 1A87 4080 0009 0112 79A7 BCCF DCD6"
		$"CC7C 8200 86FF 8100 026B C2F4 91FF 18FB"
		$"F0DE E0EF BEA6 FFFF F7AE 96FF FFF3 C5C5"
		$"DAEA F4FB FDFD FEFE 83FF 80FE 00FF 80D3"
		$"00FF 8062 00FF 8031 00FF 806A 00FF 80D4"
		$"00FF 80FC 80FF 0CFE FDF9 F4EB DE92 1802"
		$"004B 8510 8100 0941 9BB0 C5D7 E5DE D9A1"
		$"1F81 0086 FF81 0006 62C8 F6FF FCFD FE8D"
		$"FF19 FEFD DBC2 FFC6 9EFF E796 9EF7 FFFF"
		$"F3C1 BFD4 E4EE F5F7 F9FB FCFD 80FE 01FF"
		$"FF80 FE00 FF80 D300 FF80 6200 FF80 3100"
		$"FF80 6A00 FF80 D400 FF80 FC80 FF0B FEFB"
		$"F7EF E4D2 3E09 0118 7532 8100 0A09 85A6"
		$"BBCE DFEB E8DF BC47 8200 85FF 8200 0BB7"
		$"CFDD D6E1 ECED F4F9 F4F9 FC89 FF20 E7A6"
		$"7F8E D7D7 7FB6 F7FF FFFE EAC0 BCCD D9E5"
		$"ECEF F2F4 F6F8 FAFB FCFD FEFD FDFE FF80"
		$"D300 FF80 6200 FF80 3100 FF80 6A00 FF80"
		$"D400 FF80 FC1D FFFF FEFC F9F2 E9DC 9003"
		$"0506 5F5E 0000 0103 0043 9BB0 C5D6 E5F0"
		$"F1E4 CE71 8200 86FF 8100 133C 5E7F 7B8E"
		$"A591 B0C7 CAD4 DCE2 EAEE ECF4 F7FC FE86"
		$"FF1C DFBE 9E8E 9EFF FEDF C5D0 DBE1 E2E4"
		$"E5E7 EAED F0F2 F4F7 F8FA FBFC FDFE FE94"
		$"FF1D FEFE FBF5 EDE2 D227 0300 2679 2100"
		$"0001 0503 7CA5 BACE DEEB F4F8 E9DB 960F"
		$"8100 86FF 8700 180A 82B2 B8B9 B8B7 BEBD"
		$"BFC8 CDD0 DFE2 E6ED F2F8 F9FF FEFE FFFE"
		$"82FF 14DE C7D8 E9F5 FBF7 F0E8 E4E3 E6E7"
		$"EAED F0F3 F2F4 F6FC 80A4 00FF 802E 00FF"
		$"8045 00FF 80AD 00FF 80F7 82FF 0BFE FCF8"
		$"F1E7 D96A 0201 0062 5982 000C 3C96 AFC4"
		$"D6E5 F0F7 FBEF E1B2 3A81 0086 FF88 0022"
		$"ADCB CAC8 C5C2 C0BE BBBA B6B4 B9B6 BCC0"
		$"C5C7 D0D7 DAE4 EDE8 F4FB F7FB FDDB C8DC"
		$"EBF7 FD80 FF0F FCF6 EEE7 E4E4 E5E9 E9ED"
		$"F0F8 A2A3 A4FE 802E 00FF 8045 00FF 80AD"
		$"00FF 80F7 81FF 0CFE FDFA F4EB DFAD 1401"
		$"0021 6C1D 8100 0D07 6BA4 BACD DDEB F4FA"
		$"FDF6 E5C9 6882 0085 FF87 0023 35CF E1DF"
		$"DDDA D8D6 D4D1 CECC C9C6 C3C0 BCB9 B5B7"
		$"B4B7 BABD BCC4 C8C9 D5DC D0CD E1EE F8FD"
		$"84FF 0BFB F4EC E6E4 E5E9 F3A0 A2A4 FE80"
		$"2E00 FF80 4500 FF80 AD00 FF80 F780 FF0C"
		$"FEFE FBF7 F0E5 D253 0000 0448 4582 000E"
		$"2E99 AEC3 D5E4 F0F7 FBFE FCE9 D88A 0581"
		$"0086 FF86 0023 91E2 F0EE EDEB E9E8 E6E4"
		$"E2E0 DDDA D6D3 C4C1 AAA8 8C8A 7573 6D6C"
		$"757D 8994 A095 D3DD F9FD 88FF 07F9 F1E5"
		$"ECF3 F8FC FE8F FF0C FEFC F9F3 EADD 5E04"
		$"0000 2359 1082 000E 60A2 B8CC DDEA F4FA"
		$"FDFE FEEE DFA9 2681 0088 FF84 0023 C3F1"
		$"F9F8 F8F7 F5F4 F3F2 F1EF ECEB E6E4 D5D3"
		$"BBB9 9B99 8281 7B7A 7777 797B 959D D9E1"
		$"FBFD 89FF 06FE E5E5 9499 9CFD 802E 00FF"
		$"805E 00FF 80D0 00FF 80FD 80FF 0BFE FBF6"
		$"EEE3 C81B 0000 0548 2482 000F 0F92 ADC1"
		$"D4E4 EFF7 FBFE FFFF F4E4 C154 8200 89FF"
		$"8100 2404 E0FC FEFE FDFD FCFC FAFA F7F6"
		$"EBEA C0BF 807F 6665 4C4C 3A39 3635 3434"
		$"3334 3C3E AEB1 F9FB 89FF 06F9 DFDE 9298"
		$"9BFD 802E 00FF 805E 00FF 80D0 00FF 80FD"
		$"0EFF FFFE FCF9 F2E9 DB80 0400 0020 4503"
		$"8200 0F56 A1B7 CADC E9F3 F9FD FEFF FFFA"
		$"E8D3 7C82 0088 FF82 0001 75EA 84FF 1BFD"
		$"FDFB FBF1 F0C5 C584 846A 6950 4F3D 3C39"
		$"3938 3736 373F 40B1 B3FA FB89 FF06 F2D6"
		$"D990 969B FD80 2E00 FF80 5E00 FF80 D000"
		$"FF80 FD0D FFFF FEFB F6ED E2D1 3F00 0004"
		$"3417 8200 092C 95AB C1D3 E2EE F7FB FE80"
		$"FF04 FEEC DE9F 1C81 0088 FF82 0001 B9F1"
		$"82FF 1DFC FCEE EEBF BF92 9262 6233 334B"
		$"4B62 6173 7365 6550 503E 3E41 41B4 B4FA"
		$"FB89 FF06 EACD D7E5 F0F8 FD8D FF0C FEFD"
		$"F9F2 E9DA 9C0B 0000 1129 0481 000A 0B76"
		$"A1B6 CADB E9F2 F9FD FE80 FF04 FEF1 E3BA"
		$"4481 0088 FF82 0001 D3F8 82FF 1DFC FCEE"
		$"EEBF BF92 9262 6233 334B 4B62 6274 7467"
		$"6752 5240 4042 42B4 B5FB FB88 FF07 FEE3"
		$"C1D6 A1A9 AFFD 805A 00FF 807B 00FF 80CC"
		$"00FF 80FA 0CFF FEFB F7EE E2D3 4F00 0001"
		$"1A0C 8200 0946 97AC C1D3 E2ED F6FB FE82"
		$"FF03 F8E7 CE6F 8200 86FF 8200 0125 E481"
		$"FF1F F9F9 DBDB 9F9F 5555 3333 4444 7878"
		$"8E8E 7979 6161 4949 4444 7373 A8A8 E7E7"
		$"FEFE 88FF 07F7 D6C3 D8A2 AAAF FE80 5A00"
		$"FF80 7B00 FF80 CC00 FF80 FA0B FEFD F9F3"
		$"E9DB AD15 0004 100C 8000 0C01 001E 89A2"
		$"B7CA DBE9 F2F9 FDFE 82FF 04FC EADA 910B"
		$"8100 86FF 8200 019C EC81 FF1F F9F9 DBDB"
		$"9F9F 5555 3333 4444 7878 8E8E 7979 6161"
		$"4949 4444 7373 A8A8 E7E7 FEFE 88FF 07F0"
		$"CAC6 DBA4 ABAF FE80 5A00 FF80 7B00 FF80"
		$"CC00 FF80 FA1A FEFB F7EF E3D3 6C3C 0F00"
		$"1A11 0804 0002 025E 9AAE C2D4 E3EE F6FB"
		$"FE83 FF04 FEEF E1AF 3481 0086 FF82 0023"
		$"C4F3 FFFF FEFE DFDF 8888 5353 5050 8181"
		$"ACAC B8B8 6C6C 3F3F 4E4E 7676 A2A2 D8D8"
		$"F5F5 FEFE 8AFF 07E9 C1CE DFEC F6FC FE8B"
		$"FF1B FEFD F9F3 EADD B128 5977 3511 1513"
		$"0501 001F 89A6 BACC DDE9 F3F9 FDFE 84FF"
		$"03F6 E5C5 5E82 0085 FF82 0023 DBFB FFFF"
		$"FEFE DFDF 8888 5353 5050 8181 ACAC B8B8"
		$"6C6C 3F3F 4E4E 7676 A2A2 D8D8 F5F5 FEFE"
		$"86FF 80FE 08FC E1BF D2E3 D3DB DFFF 809E"
		$"00FF 8086 00FF 80B4 1DFF F2F2 F1FB F7EF"
		$"E4D4 823D 6AE0 F4AD 601E 0A01 015A 9DB2"
		$"C5D6 E5F0 F7FB FE85 FF03 FBE8 D688 8200"
		$"84FF 8200 013F E780 FF1D FCFC CCCC 6565"
		$"6F6F 9E9E E1E1 EBEB 8D8D 4141 4B4B 8383"
		$"C6C6 EDED F8F8 FCFC 85FF 0EFE FEFD FCFB"
		$"FCF3 D2C4 D7E6 D6DC DFFF 809E 00FF 8086"
		$"00FF 80B4 1DFF F2F1 F0F9 F3EA DDB5 4A42"
		$"8EFB FFF6 923B 1200 2893 A9BD CFDF EBF4"
		$"FAFD FE85 FF04 FEED DFA4 2281 0084 FF82"
		$"0001 ABEE 80FF 1DFC FCCC CC65 656F 6F9E"
		$"9EE1 E1EB EB8D 8D41 414B 4B83 83C6 C6ED"
		$"EDF8 F8FC FC84 FF0F FEFD FBF7 F0EF F2E5"
		$"C2C8 D9E9 D7DD E0FF 809E 00FF 8086 00FF"
		$"80B4 1CFF F2F1 EEF7 EFE4 D368 3B70 ACFE"
		$"FFB1 5E6D 8134 7CA0 B5C8 D9E6 F1F8 FCFE"
		$"87FF 03F3 E4C0 5181 0084 FF82 0001 CCF5"
		$"80FF 21FE FEEF EFC9 C9D0 D0EE EEFC FCEE"
		$"EE93 9344 4446 4662 6280 8095 95AE AED5"
		$"D5F5 F5FE FE80 FF0E FEFB F5EB DCD9 DCD0"
		$"B5C7 DAE9 F4FB FD8A FF1B FEFD F9F3 E9DC"
		$"972B 5193 DFEA DF7D 4875 976E 98AC C1D3"
		$"E2ED F5FB FEFE 87FF 03FA E7D2 7981 0084"
		$"FF82 0001 E0FC 80FF 21FE FEEF EFC9 C9D0"
		$"D0EE EEFC FCEE EE93 9344 4446 4662 6280"
		$"8095 95AE AED5 D5F5 F5FE FE80 FF13 FDF7"
		$"EEDA DCED DECC BCC2 D3E4 ECF4 F8FE DCDD"
		$"DDFF 80B6 00FF 80D4 1BFF F5F2 EEEE E2CE"
		$"6037 64CB FFF7 9D72 7484 888F A4B9 CCDC"
		$"E9F2 F9FC FE82 FF0A DF96 9EA6 FFFF FEEB"
		$"DD9A 1380 0083 FF82 0001 69E8 83FF 05FD"
		$"FDFC FCFD FD81 FE15 FAFA DBDB 9E9E 7171"
		$"5454 4545 4242 4C4C 7373 B3B3 EFEF 80FE"
		$"13FB F2E4 D2E8 FFF7 EFE6 CFCB D5E0 EAF1"
		$"F9DA DCDC FF80 B600 FF80 D42B FEF4 F0EA"
		$"E9DB A24E 3E94 F9FF EB77 5B71 818A 9DB1"
		$"C5D6 E4EF F7FB FEFF DFDF FFFF E77F DFF7"
		$"8EC6 FFFE F0E2 B53F 8000 83FF 8200 01B5"
		$"F083 FF05 FDFD FCFC FDFD 81FE 30FA FADB"
		$"DB9E 9E71 7154 5445 4542 424C 4C73 73B3"
		$"B3EF EFFE FEFD F8EC DAD3 F5FF FFFE FDF4"
		$"E6D7 D1D6 E2EE D4D8 DAFE B5B6 B6FF 80D4"
		$"2BFE F2EE E7E4 CF62 4D7C DCFF F9AA 5F83"
		$"9F8A 96AA BECF DFEB F4F9 FDCD 867F 7FA6"
		$"FFD7 86EF FF96 CEFF FFF8 E5CC 6B80 0083"
		$"FF82 0001 D2F7 8FFF 1BFC FCF4 F4D7 D7B7"
		$"B7A0 A08D 8D69 694A 4A59 59C5 C5FC FBFC"
		$"F3E4 D0E1 FD83 FF0C F9EB DBD6 D9E6 EEF4"
		$"F8FB FDFE FE80 FF2E FEFA F4EB DEB0 3653"
		$"9DF5 FFDA 7B68 878E 90A3 B7CA DAE6 ABEF"
		$"FBFE AEC6 FFE7 7FDF F796 7F8E 7FC6 FFFF"
		$"FCEA DA91 0B00 0083 FF81 0002 15E2 FD8F"
		$"FF1A FCFC F4F4 D7D7 B7B7 A0A0 8D8D 6969"
		$"4A4A 5959 C5C5 FCFB F9EE DAD0 F185 FF28"
		$"FDF8 EDDF D6D4 DDEB E6EA EDFC F7F7 F8FD"
		$"F7F0 E4D8 B65C 6FCE FDEB AC96 777F 8A9D"
		$"B0C3 D4E2 B87A D3FD FE80 FF11 F77F DFFF"
		$"D796 DFC6 86CE FFFE EEE1 AE2F 0000 82FF"
		$"8200 0183 EA92 FF18 FEFE FDFD FBFB FAFA"
		$"DFDF 9191 5656 4848 BABA FBF9 F6E7 D4DE"
		$"FB81 FF03 FEFD FEFB 81FA 23F0 E0D7 D4D4"
		$"DCE3 F5F2 F5F5 FBF5 ECE0 D2BB 6D91 FFFF"
		$"CA6D 7D85 8798 ABBD CFDF CD8F 92AC FE81"
		$"FF11 BE8E FFFF 9EB6 FFFF 9EBE FFFF F6E5"
		$"C55A 0000 82FF 8200 01BF F292 FF18 FEFE"
		$"FDFD FBFB FAFA DFDF 9191 5656 4848 BABA"
		$"FAF7 F1DF CCEB FE81 FF03 F7E5 CFBB 80B3"
		$"24C0 E5FC F5E7 DBD0 D1E1 E7EF F2F9 F1E9"
		$"DBCB A87C 9CCF E57F 527A 8093 A6B9 CBD9"
		$"E7F0 F7C3 8DFE 80FF 12F7 86D7 FFFF BE86"
		$"CEBE 8EE7 FFFF FBE8 D581 0000 82FF 8200"
		$"01D8 F998 FF11 F1F1 AEAE 6161 5959 9D9D"
		$"E7E7 FCF6 EAD3 D3F6 80FF 2DFE E3B1 9176"
		$"615B 5C59 5CA9 F3FF FEF8 EBE1 D6DA E9F4"
		$"F6F0 E6D8 BA8F 7DAB 9CBD 9578 908C A0B4"
		$"C6D6 E4EC F5FA ED7F EF80 FF11 A69E FFD7"
		$"C8F4 BE9A A4EC FEFE FFFB E8D6 8906 8100"
		$"00FF 8200 023A E2FE 98FF 20F1 F1AE AE61"
		$"6159 599D 9DE7 E6FA F0E0 CDE8 FFFF F8DD"
		$"B88A 5556 6873 6E5E 4D41 96F0 81FF 29FA"
		$"F5D8 DDEC F1EC E1CF B276 80A9 9887 5739"
		$"8799 AEC1 D1E0 EBF4 F8FC FE8E CEFF FFDF"
		$"7F96 7F8B B0F8 FBFC FE80 FD05 FAF6 EDDF"
		$"AA25 8100 00FF 8200 0195 EC97 FF22 FAFA"
		$"BABA 6060 4242 9595 EAEA FDFB F7EA D3D5"
		$"F6FE EEC1 7E52 506C 8C8C 7E68 5769 8CCD"
		$"F982 FF31 F8D4 D5E6 EBE7 DAC0 BD85 AD92"
		$"8F7B 3B1B 8CA5 BACC DCE9 F2F8 FAFD FDAD"
		$"95B5 E6E6 A5C4 E2FB FCFC FDFD FAF0 ECE9"
		$"E6E3 DED8 AC39 8100 00FF 8200 01C5 F497"
		$"FF21 FAFA BABA 6060 4242 9595 EAEA FCF9"
		$"F2E0 CEE9 FEEB AC70 576C 96B9 9666 5E70"
		$"8BBD E6FB 82FF 1FFC E2C5 D4E2 E6E1 C9B8"
		$"A090 A97F 8A6A 3D62 9DB1 C5D6 E4EF F7FB"
		$"FDFE A57F 95BD F581 FD0E FBF8 F2EE EAE6"
		$"E0DA D1C5 B19C 8860 1381 0000 FF82 0001"
		$"DBFB 95FF 23FE FED7 D771 7145 4579 79D8"
		$"D8FC FCFE F8EC D5CF F2FD D479 678D CDE9"
		$"B464 5179 B6E4 FDFF FE82 FF30 F5CF C2D5"
		$"E2E1 D3AD B78D A69C A69C 4640 90A8 BCCF"
		$"DFEB F4FA FDFE FFE7 F7FF FEFD FAF6 F0EB"
		$"E8E5 E2DB D3C6 A086 6649 3017 0883 0000"
		$"FF81 0001 58E5 96FF 24FE FED7 D771 7145"
		$"4579 79D8 D8FC FBFC F4E5 CEE1 FAFD E5B3"
		$"B8DF FDFA A554 5179 A3BE CFE4 F9FE 80FF"
		$"18FE EBC3 C6D9 DFD8 BB99 A89C BCAE A982"
		$"3A59 9DB2 C6D8 E6F1 F8FC 80FE 10FB F8F1"
		$"EDEA E6E3 DED6 CBBA A48C 6C4E 1D0A 8800"
		$"00FF 8100 01A5 ED96 FF24 FBFB AEAE 4242"
		$"5757 B5B5 F8F8 FFFE F9EE DBD0 F0FE FFFC"
		$"F6F7 FEFF FBD1 936F 615D 5F6E 91C8 F180"
		$"FF29 F8D9 BFCD DAD7 CDB1 A0A0 B3C1 A095"
		$"6346 85A7 BCCF DFEC F4F8 F8F4 EFEB E7E5"
		$"E1DA D2C3 AF96 7A59 3B20 0D02 8B00 00FF"
		$"8100 01CC F596 FF12 FBFB AEAE 4242 5757"
		$"B5B5 F8F8 FEFC F5E6 D2DE FB84 FF32 FEFC"
		$"EAC8 A58B 7D6B 5D71 BDF9 FFFD ECC9 C2D4"
		$"D7D1 BAAD B5B3 AD9E 8C83 4C5C 9AB0 C4D4"
		$"DFE4 E6E6 E4E3 DCD6 CBBA A387 6A4B 2E15"
		$"048F 0001 FFFF 8100 01DF FC96 FF11 FAFA"
		$"A8A8 4242 6E6E D5D5 FDFD FEFA F0DC D0ED"
		$"88FF 2BFB F1E9 DDA7 6A4D 9AF3 FFF3 D1BC"
		$"C9D3 D4C9 C5B9 C0B3 908A 997D 2366 9DAE"
		$"BEC9 D1D7 D7D0 BFAC 9477 593B 200C 0293"
		$"0001 FFFF 8000 0176 E897 FF09 FAFA A8A8"
		$"4242 6E6E D5D5 80FD 04F7 E9D3 D4F5 8BFF"
		$"23E2 9568 77C1 F9FE EAC3 C0CD D5CF BEC8"
		$"B1BD 9081 909D 5A34 829A A8B2 B4AC 9B84"
		$"6549 2913 0497 0080 FF80 0001 B8F0 97FF"
		$"11FB FBBA BA6A 6A88 88D1 D1FA F9FB F3E1"
		$"CEE7 FD8A FF1F E79A 5C73 C5F5 FFF9 DBBD"
		$"C6D2 D4C2 BF9E 9B98 7C93 9F72 3958 7776"
		$"6F62 4D34 1B08 9A00 82FF 8000 01D2 F797"
		$"FF10 FBFB BABA 6A6A 8888 D1D1 FAF9 FAEF"
		$"DBD7 F68A FF1C F4AB 6060 AFF7 FFFE F0C6"
		$"BDCA CBC1 AECA 8095 809C AA9B 5037 3328"
		$"170B 0395 008B FF80 0001 E2FE 97FF 12FE"
		$"FEE4 E4A8 A892 92BB BBF3 F2F9 EDD9 D7EB"
		$"F6FD 87FF 19DE 9763 5595 E4FF FFFD E0B5"
		$"B5BC BA9F B6A5 868E A5AC AD7F 501F 0199"
		$"008B FF80 0002 E5F1 F896 FF14 FEFE E4E4"
		$"A8A8 9292 BBBB F3F2 F9EF DDCC C9D0 DEF3"
		$"F985 FF18 F565 5661 B9E9 FFFE F5C8 A3A1"
		$"9783 99CE 8B88 9FB0 9EA1 6A60 0A99 008C"
		$"FF80 0006 7FB2 CFE6 ECF3 FB94 FF15 FBFB"
		$"E0E0 BDBD D8D1 C8EE FAF3 E6D6 C6BB BAC5"
		$"D9F4 F9FE 82FF 17D5 8870 6271 9BB6 FBE2"
		$"9756 4436 67B7 C37B 90AD 9290 8D63 4095"
		$"0091 FF83 0007 0E75 B0D6 E7ED F6FC 90FF"
		$"32FB FBE0 E0BD BDB6 727B EEFC E8D2 D8DA"
		$"CEC3 B8B1 BFD4 F1F9 FEFF FFC6 9DC5 9C50"
		$"74C0 FEF1 AE37 0100 60B8 C99A 7E91 9474"
		$"9078 5810 9100 95FF 8700 072D 86BD DAE8"
		$"F0F7 FE8E FF21 FBFB EB9E 8BA2 9DFC E684"
		$"B180 B7E4 DAC9 A089 A4BE CCEA F5FD D79E"
		$"C2BD 79BB 77FC DB76 8000 0A8F CDBD 8D89"
		$"9458 6A92 5E45 8D00 9AFF 8B00 0648 9CC5"
		$"E0EB F2F9 8BFF 2FFB FB87 A6F1 A2BD FDBE"
		$"95FD DC8A F3ED D89E 8379 7A78 93B1 DFF8"
		$"FEFF E980 A79C F9BB 5604 0000 B6D4 B2A1"
		$"9C7D 5591 8C53 1C89 009E FF8F 0006 63A0"
		$"C8E6 EDF4 FB88 FF20 F7A6 7F96 86C6 FFDF"
		$"7FAE A59D FCF9 DE5D 3A26 130C 0C2E 9EC4"
		$"E5F6 FCEE DDF7 ED9F 2A80 0009 4FBB B193"
		$"8D64 7B97 9036 8600 A2FF 9200 0728 98C1"
		$"D9E8 EEF6 FD87 FF0C C686 9EDF 7FCE 9E86"
		$"F7FE FBD0 0183 000A 125B 96B5 D9EB F7FF"
		$"DD7A 0380 0009 287D B178 8965 9C9F 7206"
		$"8600 A2FF 9200 0B13 6F97 9DAA BACB DFE9"
		$"F0F7 FE83 FF0B BEA6 FFCE 9EFF FF8E DFFF"
		$"F4A9 8500 0805 2150 87AE D6E3 B62F 8200"
		$"074F 9968 927E 847A 0286 00A4 FF91 000E"
		$"0A6C A4AB AFA8 9F99 A1B6 CCE3 EBF2 FA80"
		$"FF0B EFEF FFE7 86BE C686 EFFF ED74 8800"
		$"0417 4086 AB82 8400 0322 1F60 4289 00A7"
		$"FF8E 0012 0261 AFB9 B3AC A39A 8F7E 6D57"
		$"6F96 C7E6 EDF5 FC80 FF07 EFBE BEDF FFFE"
		$"E222 8A00 021F 5033 9300 ACFF 8B00 154F"
		$"ADB7 A793 7961 442B 1807 0100 0013 63A8"
		$"D3E8 EFF7 FD81 FF01 FAD2 A400 B0FF 8700"
		$"072A 746A 492C 1205 0187 0009 308A BCDC"
		$"EAF1 F8FE F2B5 A300 B5FF 8300 0203 0B02"
		$"9000 055C A3CD E2EB 7B84 0081 FF98 00B6"
		$"FF9C 0001 8A23 8300 85FF 9400 B7FF A300"
		$"8AFF 8F00 B9FF A200 8BFF 8D00 BBFF A100"
		$"8CFF 8B00 FFFF FFFF A5FF",
		/* [17] */
		't8mk',
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0001 0101 0101 0101 0101"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0101 0101 0202 0303 0505 0503 0302"
		$"0101 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0001 0101"
		$"0102 0203 0305 0506 0809 0B0B 0E11 0905"
		$"0301 0100 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0101 0101 0202 0303"
		$"0505 0608 0A0B 0D13 1E2F 4764 848D 350B"
		$"0603 0100 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0001 0101 0202 0303 0305 0506 080A"
		$"0B0D 131E 3048 698A A9C6 DCEB F5ED 7A16"
		$"0B05 0201 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0101"
		$"0101 0203 0303 0506 0608 0A0B 0E13 1E30"
		$"4869 8AA9 C6DD ECF6 FBFD FFFF FFFB AF2C"
		$"1209 0301 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0001 0101 0202 0303"
		$"0305 0606 080A 0B0E 1420 3149 6A8A A9C6"
		$"DDEC F6FB FDFF FFFF FFFF FFFF FFFF D750"
		$"1A0D 0602 0100 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0101 0102 0203 0303 0506 0608"
		$"0A0B 0E14 2034 4F6F 92B0 C9DD ECF6 FBFD"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF EF7E"
		$"2413 0803 0100 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0001"
		$"0101 0202 0303 0305 0606 080A 0B0E 1420"
		$"3149 6F92 B0CC E0EE F7FC FDFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FAAA"
		$"3317 0B05 0200 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0101 0102 0203"
		$"0303 0506 0608 0A0B 0E14 2034 4F6F 92B0"
		$"C9DD EEF7 FCFD FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FDD0"
		$"4C1D 0E06 0200 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0001 0101 0202 0303 0305 0606"
		$"080A 0B0E 1420 344F 6F92 B0CC E0EE F7FC"
		$"FDFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFE9"
		$"7324 1308 0301 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0101 0102 0203 0303 0506 0608 0A0B 0E14"
		$"2034 4F6F 92B0 CCE0 EEF7 FCFD FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFF7"
		$"9C2D 160A 0501 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0001 0101 0202"
		$"0303 0305 0606 080A 0D0E 1420 344F 6F92"
		$"B0CC E0EE F7FC FDFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFC"
		$"C442 1C0D 0502 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0101 0102 0203 0303 0506"
		$"0608 0A0D 0E18 2338 516F 92B0 CCE0 EEF7"
		$"FCFD FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"E164 2210 0803 0100 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0001 0101 0202 0303 0305 0606 080A 0D0E"
		$"1826 3855 7797 B7CF E2EE F7FC FDFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"F38C 2815 0903 0100 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0101 0102"
		$"0203 0303 0506 0608 0A0D 0E18 2638 5577"
		$"97B7 CFE3 F1F9 FCFD FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FBB5 3919 0D05 0200 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0001 0101 0202 0303 0505"
		$"0606 080A 0D0E 1826 3855 7797 B7CF E3F1"
		$"F9FC FDFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFD7 551F 1006 0201 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0001 0102 0203 0305 0506 0809 0B0D"
		$"0E18 2638 5577 97B7 CFE3 F1F9 FCFD FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFEE 7D25 1308 0301 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0001 0203 0305 0608 090B 0D0F 1A27 3E59"
		$"7898 B7CF E3F1 F9FC FDFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFF9 A733 170B 0501 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0003 0506 090B 0F19 273E 5A7D 9DBB D4E7"
		$"F2F9 FCFD FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFD CB49 1D0E 0602 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0005 0C20 3A5A 7B9D BBD4 E7F3 FAFC FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF E56B 2412 0803 0100 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"000A 2A9A D2E6 F3FA FCFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF F699 2E16 0A03 0100 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0010 35C6 FDFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FCC0 3F1A 0D05 0200 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0016 32B3 FBFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFDF 5E21 1006 0301 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"001C 339F F7FF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFF1 8827 1509 0301 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"001D 358B F1FF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFB B337 190B 0502 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"001D 3577 E6FF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFD D451 1F0E 0602 0100 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"001C 3261 D5FD FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF EC76 2513 0803 0100 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0018 2E51 C2FC FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF F8A4 3017 0B05 0100 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0015 2948 A9F8 FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FDC8 451C 0E05 0200 0000 0000"
		$"0000 0101 0101 0101 0101 0101 0000 0000"
		$"0012 253F 91F0 FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFE5 6A22 1108 0301 0000 0000"
		$"0101 0203 0404 0404 0403 0201 0100 0000"
		$"0010 203A 77E5 FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFF5 932B 160A 0301 0000 0001"
		$"0204 0506 0809 0909 0806 0503 0101 0000"
		$"000D 1C34 62D5 FDFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFC BA3C 1A0D 0502 0000 0102"
		$"0406 090C 1B97 F9CD 3C0B 0805 0301 0000"
		$"000B 172E 51C0 FCFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF DB5B 2010 0603 0101 0104"
		$"060B 0F17 95FF FFFF 8F10 0C08 0402 0100"
		$"0009 1529 47A8 F7FF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF F184 2715 0903 0101 0306"
		$"0B11 177D FFFF FFFF 9317 110B 0602 0100"
		$"0008 1225 408C F0FF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FAAD 3618 0B05 0302 0509"
		$"1019 3BDF FFFF FFF7 661E 160E 0803 0100"
		$"0006 1020 3B75 E3FF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FDD1 4E1D 0E07 0304 080E"
		$"1729 B4FF FFFF FFD8 4125 1A11 0904 0100"
		$"0005 0D1C 3461 D3FD FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFE9 7325 1309 0607 0C14"
		$"206F FFFF FFFF FFB8 3729 1D12 0904 0100"
		$"0005 0B17 2F52 BFFB FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFF7 9D2D 180C 0A0B 121C"
		$"42DC FFFF FFFF F672 3B2C 1E12 0904 0100"
		$"0003 0915 2A49 A9F8 FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFC C543 1D11 0D10 1826"
		$"AAFF FFFF FFFF CA4D 3C2C 1D12 0804 0100"
		$"0003 0812 2644 93F2 FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF E264 2517 1317 2166"
		$"F3FF FFFF FFFF 814D 3C2A 1B10 0803 0100"
		$"0002 060E 213F 7EE7 FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF F48E 2C1D 191E 3FE5"
		$"FFFF FFFF FFE2 674A 3727 190E 0602 0000"
		$"0002 050D 1D3A 6DDA FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FBBA 4026 2329 87FF"
		$"FFFF FFFF FCB2 5745 3222 140B 0501 0000"
		$"0001 050B 1A37 5FC6 FDFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFDA 5E30 2D53 F2FF"
		$"FFFF FFFF E56E 503D 2C1C 1008 0401 0000"
		$"0001 030A 1933 57B9 FCFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFEF 863D 38C0 FFFF"
		$"FFFF FFFF B85C 4936 2517 0D06 0201 0000"
		$"0001 0309 1730 53A0 FCFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFF9 AF50 89F8 FFFF"
		$"FFFF FFF1 8554 412E 1F12 0904 0100 0000"
		$"0000 0207 142D 5094 FDFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFD D379 EFFF FFFF"
		$"FFFF FFC2 5F4D 3927 190E 0603 0100 0000"
		$"0000 0206 1429 4EA4 FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF EBCD FFFF FFFF"
		$"FFFF FF8F 5844 3020 140B 0401 0000 0000"
		$"0000 0105 1328 49A2 FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FAFB FFFF FFFF"
		$"FFFF D86B 4F3B 291A 0F07 0301 0000 0000"
		$"0000 0105 1128 47B1 FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FDFF FFFF FFFF"
		$"FFFC A15B 4633 2215 0B05 0101 0000 0000"
		$"0000 0106 1226 47C5 FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFDF 6A52 3E2B 1C10 0804 0100 0000 0000"
		$"0000 0005 1226 43DD FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFA7 5D49 3524 160C 0602 0100 0000 0000"
		$"0000 0005 1227 43E1 FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"F972 5540 2D1D 1209 0401 0000 0000 0000"
		$"0000 0106 1226 5AEF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"B965 4C37 2617 0D06 0201 0000 0000 0000"
		$"0000 0107 1327 69FD FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFF1"
		$"8A5A 4330 1F12 0A04 0100 0000 0000 0000"
		$"0000 0107 1527 79F9 FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFD1"
		$"6C51 3C27 190E 0703 0100 0000 0000 0000"
		$"0000 0208 1629 99FA FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF F798"
		$"634A 3221 140B 0401 0000 0000 0000 0000"
		$"0000 030A 172B B8FF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF EB7D"
		$"5E42 2C1B 0F07 0301 0000 0000 0000 0000"
		$"0000 030B 192D B3FA FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF E280"
		$"583D 2616 0B05 0101 0000 0000 0000 0000"
		$"0000 040C 1B2F CEFD FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF E88C"
		$"5538 2012 0904 0100 0000 0000 0000 0000"
		$"0001 050E 1C48 E3FF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF F4A1"
		$"5233 1D0F 0702 0100 0000 0000 0000 0000"
		$"0001 050F 1E56 D9FF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FBBC"
		$"5631 1B0D 0501 0000 0000 0000 0000 0000"
		$"0001 0611 2070 E9FF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FDD6"
		$"6231 1A0C 0401 0000 0000 0000 0000 0000"
		$"0002 0712 2280 EEFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFEB"
		$"7B33 1A0C 0401 0000 0000 0000 0000 0000"
		$"0002 0814 247F F2FF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFF7"
		$"A239 1B0C 0401 0000 0000 0000 0000 0000"
		$"0003 0915 28A3 FBFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFC"
		$"C446 1E0E 0502 0000 0000 0000 0000 0000"
		$"0003 0B17 31AE FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"E161 2411 0603 0100 0000 0000 0000 0000"
		$"0004 0C19 3CAD FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"F289 2816 0903 0100 0000 0000 0000 0000"
		$"0104 0C19 4CCB FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FBB4 3819 0B05 0200 0000 0000 0000 0000"
		$"0104 0C18 46D6 FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FDD5 521F 0E06 0201 0000 0000 0000 0000"
		$"0104 0A15 24B3 EBFF F0F6 FBFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFEB 7625 1308 0301 0000 0000 0000 0000"
		$"0003 0811 1D3B 5984 90AD D2CB EFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFF8 A430 170B 0501 0000 0000 0000 0000"
		$"0002 060C 141F 2934 414F 637F DDFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFD C845 1C0E 0502 0000 0000 0000 0000"
		$"0001 0407 0D13 1A23 2D3B 516C F2FF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF E56A 2211 0803 0100 0000 0000 0000"
		$"0001 0204 070A 0F15 1F2E 4372 FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF F593 2B16 0A03 0100 0000 0000 0000"
		$"0000 0102 0304 070B 1724 3A99 FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FCBA 3C1A 0D05 0200 0000 0000 0000"
		$"0000 0000 0101 0308 1120 34C6 FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFDB 5B20 1006 0301 0000 0000 0000"
		$"0000 0000 0000 0207 1120 35F4 FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFF1 8427 1509 0301 0000 0000 0000"
		$"0000 0000 0001 0309 1423 5DFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFA AD36 180B 0502 0000 0000 0000"
		$"0000 0000 0001 050B 1727 9BFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFD D14E 1D0E 0602 0000 0000 0000"
		$"0000 0000 0002 060E 192A CEFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF E973 2513 0803 0100 0000 0000"
		$"0000 0000 0103 0811 1D36 FCFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF F79D 2D17 0A05 0100 0000 0000"
		$"0000 0000 0104 0A14 216F FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FCC5 431C 0D05 0200 0000 0000"
		$"0000 0000 0105 0C17 25AB FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFC FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFE2 6422 1108 0301 0000 0000"
		$"0000 0000 0207 0F1A 2AE1 FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFF4 8E28 1509 0301 0000 0000"
		$"0000 0001 0308 111E 3CFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFB B83B 1A0D 0502 0000 0000"
		$"0000 0001 040A 1422 7DFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF DA57 1F10 0603 0000 0000"
		$"0000 0001 050D 1826 B9FF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF EF80 2713 0803 0000 0000"
		$"0000 0002 070F 1B2B ECFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF F9A8 3417 0B05 0000 0000"
		$"0000 0103 0912 1F4B FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FDCE 4C1D 0E06 0000 0000"
		$"0000 0104 0B15 238B FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFE8 6F24 1208 0000 0000"
		$"0000 0206 0D19 27C7 FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFF6 9B2D 160A 0000 0000"
		$"0000 0207 101C 30F3 FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFC C140 1C0D 0000 0000"
		$"0001 0309 1320 5BFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF DF5E 2210 0000 0000"
		$"0001 050C 1624 9DFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF F189 2816 0000 0000"
		$"0002 060E 1A29 D6FF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF F491 2A15 0903 0100"
		$"0103 0811 1D39 F8FF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FBB8 3717 0B05 0100"
		$"0104 0A14 216A FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFD F9C4 431A 0D05 0200"
		$"0105 0C17 25AC FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FDFC F8F1 E5D2 B379 351A 0D05 0200"
		$"0207 0F1A 2AE3 FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFC"
		$"F9F3 DFCE BAA6 8E74 5C41 2917 0B05 0200"
		$"0308 111E 42FB FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FDFB F6EE E1D2"
		$"BFAA 8A7C 726B 6255 4532 2113 0803 0100"
		$"040A 1422 77FF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFD FCF9 F2E8 D9C7 B39F 8C81"
		$"756F 645D 564E 463C 3022 160D 0603 0100"
		$"050D 1826 B7FF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFD FBF6 EEE1 D0BD A996 8579 716B 645E"
		$"5851 463F 3832 2B24 1C15 0D06 0302 0000"
		$"070F 1B2B EBFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FDFC F8F1"
		$"E7D7 C5B3 9F8C 7D75 6E67 605A 534D 4641"
		$"3A33 2925 1F1A 1713 0E0A 0603 0201 0000"
		$"0912 1F52 FDFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FDFB F6EE E1D0 BAA7"
		$"9285 7970 6B64 5E58 504A 433C 3631 2B25"
		$"201C 1612 100D 0A08 0605 0302 0100 0000"
		$"0B15 2390 FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFC F6EC DECD B69F 8D7D 746D"
		$"6760 5A53 4D46 3F3A 332D 2722 1D19 1613"
		$"100D 0908 0605 0503 0202 0100 0000 0000"
		$"0D18 26C7 FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FAD7 C2AC 9788 7A6F 665E 5750"
		$"4942 3C35 302B 2520 1C17 1511 0E0B 0A08"
		$"0605 0000 0000 0000 0000 0000 0000 0000"
		$"0E19 28F9 FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FDFF FFFF FFFF"
		$"FFFF FFFF D2A8 9786 7768 5C51 4740 3832"
		$"2D27 221D 1916 1310 0D0B 0806 0605 0303"
		$"0202 0000 0000 0000 0000 0000 0000 0000"
		$"0E19 28FF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FCF7 F0EA FCFF FFFF FFFF"
		$"FFFF FFF0 A58F 7C69 5849 3C33 2A25 1F1A"
		$"1715 110E 0B0A 0806 0505 0303 0202 0101"
		$"0100 0000 0000 0000 0000 0000 0000 0000"
		$"0E18 2560 A0D5 FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FDF0 D5C2 B6D3 FFFF FFFF FFFF"
		$"FFFF FDCB 8674 5F4C 3C2D 221C 1712 100D"
		$"0B08 0606 0503 0302 0201 0101 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0C15 212F 3D49 5889 B9E7 FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF EDB5 948B B1F1 FFFF FFFF FFFF"
		$"FFFF EE8E 6E5A 4534 2519 120C 0908 0605"
		$"0503 0302 0201 0101 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0A11 1A26 313C 454D 5459 6A98 CAEF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFF7 C486 7873 B9F5 FFFF FFFF FFFF"
		$"FFFF DE6F 5945 3222 160D 0906 0303 0202"
		$"0101 0100 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"070C 131B 242C 343B 4146 4C50 555A 74A9"
		$"D5F7 FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFD F9F2 EEE8 EBF0 FBFF FFFF FFFF"
		$"FFFF FFE4 9C69 5E5D CAF7 FFFF FFFF FFFF"
		$"FFF8 905D 4735 2417 0E08 0302 0101 0100"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0508 0C12 181E 2329 2E33 383D 4348 4D53"
		$"5860 8FBF E6FF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFDC C7B5 A6A0 9DAA DDF0 FDFF FFFF"
		$"FFFF FCC6 6C4D 4549 72E5 FFFF FFFF FFFF"
		$"FFB4 6450 3C2A 1C10 0804 0100 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0305 070B 0E12 161A 1E22 262B 3034 3A3F"
		$"464D 5969 7EAA F3FF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF F59B 8D83 7B75 7474 7EA2 C9DB F2FB"
		$"FFFF F292 4538 353D 599D FFFF FFFF FFFF"
		$"CA6F 5744 3120 140B 0501 0100 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0102 0305 0709 0C0F 1114 181B 1F23 272C"
		$"333A 4555 6B8F E2FD FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF D380 6F61 554E 4C4B 4F56 647F A7CA"
		$"EDFC C250 3126 2834 4574 E6EB FFFD E3CC"
		$"6F5D 4A37 2719 0F08 0301 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0001 0102 0304 0507 080A 0D0F 1215 191C"
		$"2128 3240 5775 CFFD FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF A264 5242 362B 2828 2A30 353D 4C63"
		$"8EB2 772E 211C 202D 3E50 6D82 B4A6 756C"
		$"5F4E 3D2C 1E13 0B05 0201 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0101 0102 0304 0507 090B 0D10"
		$"1419 2230 445F B4F8 FFFF FFFD FCF9 F5EE"
		$"E4E2 E7F3 FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFB 684B 3829 1E17 1311 1315 1920 282E"
		$"3946 321E 1615 1B25 3444 535E 6567 635B"
		$"4E3F 3022 160E 0704 0100 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0101 0102 0304 0608"
		$"0A0F 1621 334D 95EE FAF5 EDE2 D6C6 BAAE"
		$"A6A1 9E9D 9FB8 D8F1 FFFF FFFF FFFF FFFF"
		$"FFE2 4C38 2819 110A 0606 0707 0A0D 1317"
		$"1B1B 170F 0D0E 151E 2B38 444D 5253 4F48"
		$"3C30 2419 1009 0502 0100 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0101 0202"
		$"0307 0C16 253C 68B2 BBAD A095 8C89 8583"
		$"827F 7F7C 7C7B 7A7A 8AB1 D6F5 FFFF FFFF"
		$"FFAB 3B29 1C11 0804 0202 0102 0303 0609"
		$"0B0B 0907 0709 0F16 202A 333A 3E3E 3B35"
		$"2C22 1911 0C06 0301 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0103 070D 1A2B 4157 656B 6E6B 6A66 625F"
		$"5D5B 5958 5858 595A 5C5E 6163 85AF D8FB"
		$"FF6D 2F21 150C 0502 0100 0000 0001 0102"
		$"0303 0303 0406 0B10 161D 2529 2C2C 2925"
		$"1E17 110B 0704 0101 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0001 0307 111D 2B3A 454C 4B4A 4543 3E3C"
		$"3A39 3837 3839 3A3E 4144 474D 5050 4E48"
		$"743A 261A 0F08 0301 0000 0000 0000 0000"
		$"0101 0101 0104 060A 0F14 181B 1D1D 1B18"
		$"130E 0A06 0502 0100 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0001 0205 0911 1A25 2A2D 2D2A 2724 2120"
		$"1E1D 1E1E 1F22 2427 2A2E 3237 3A3C 3C38"
		$"3127 1C13 0B06 0200 0000 0000 0000 0000"
		$"0000 0000 0102 0406 080B 0E10 1111 0F0D"
		$"0B08 0604 0301 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0103 0509 0E13 1617 1616 1310 0F0D"
		$"0D0C 0D0F 0F12 1417 191D 2124 2729 2927"
		$"221B 140D 0804 0100 0000 0000 0000 0000"
		$"0000 0000 0001 0103 0406 0708 0808 0806"
		$"0504 0201 0100 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0001 0305 0608 0A0B 0A08 0806 0504"
		$"0405 0505 0608 090B 0D10 1316 181A 1A19"
		$"1612 0D09 0502 0100 0000 0000 0000 0000"
		$"0000 0000 0000 0101 0102 0303 0403 0302"
		$"0101 0101 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
	}
};

resource 'ics#' (-16455) {
	{	/* array: 2 elements */
		/* [1] */
		$"0006 0188 07CC 1C78 70FC C5FB DB01 43EB"
		$"621F 240F 34CC 130C 183E 0AFF 0FFF 07FE",
		/* [2] */
		$"0006 018E 07DC 1FF8 7FFC FFFF FFFF 7FFF"
		$"7FFF 3FFF 3FFC 1FFC 1FFE 0FFF 0FFF 07FE"
	}
};

resource 'ics#' (128) {
	{	/* array: 2 elements */
		/* [1] */
		$"0006 0188 07CC 1C78 70FC C5FB DB01 43EB"
		$"621F 240F 34CC 130C 183E 0AFF 0FFF 07FE",
		/* [2] */
		$"0006 018E 07FC 1FF8 7FFC FFFF FFFF 7FFF"
		$"7FFF 3FFF 3FFC 1FFC 1FFE 0FFF 0FFF 07FE"
	}
};

resource 'ics#' (129, "Mac OS Icon") {
	{	/* array: 2 elements */
		/* [1] */
		$"1FF8 100C FFFA A457 AD47 A455 FFFF 1555"
		$"1001 1003 1001 1003 1001 1003 1555 1FFF",
		/* [2] */
		$"1FF8 1FFC FFFE FFFF FFFF FFFF FFFF 1FFF"
		$"1FFF 1FFF 1FFF 1FFF 1FFF 1FFF 1FFF 1FFF"
	}
};

resource 'ics#' (130, "Windows Icon") {
	{	/* array: 2 elements */
		/* [1] */
		$"1FF8 100C FFFE BA9F AAAD D6AF FFFD 1AAB"
		$"1001 1003 1001 1003 1001 1003 1555 1FFF",
		/* [2] */
		$"1FF8 1FFC FFFE FFFF FFFF FFFF FFFF 1FFF"
		$"1FFF 1FFF 1FFF 1FFF 1FFF 1FFF 1FFF 1FFF"
	}
};

resource 'ics#' (131, "Mac OS X Icon") {
	{	/* array: 2 elements */
		/* [1] */
		$"1FF8 100C FFFE 8A4D DADB DADD FFFB 1557"
		$"1001 1003 1001 1003 1001 1003 1555 1FFF",
		/* [2] */
		$"1FF8 1FFC FFFE FFFF FFFF FFFF FFFF 1FFF"
		$"1FFF 1FFF 1FFF 1FFF 1FFF 1FFF 1FFF 1FFF"
	}
};

resource 'ics4' (-16455) {
	$"0000 0000 0000 0BB0 0000 000F F000 BCB0"
	$"0000 0FFF DDCC BB00 000F FF0C CDDB E000"
	$"0FFF 00CC BBBE BC00 FF00 0CCB BBFB BCCD"
	$"FF0C CCBB DDCC CCCF 0F00 CCBB EEEB BBBF"
	$"0FF0 CCBD CCCE FEEF 00F0 CBDC CCBD FEFF"
	$"00FF CBCC BBCC FF00 000F CBB3 CCCD FF00"
	$"000F FCCC CDFF DDC0 0000 FCCC FFDD DDCC"
	$"0000 FFFF DDDD CCCC 0000 0FDD DCCC CCC0"
};

resource 'ics4' (128) {
	$"0000 0000 0000 0BB0 0000 000F F000 BCB0"
	$"0000 0FFF DDCC BB00 000F FF0C CDDB E000"
	$"0FFF 00CC BBBE BC00 FF00 0CCB BBFB BCCD"
	$"FF0C CCBB DDCC CCCF 0F00 CCBB EEEB BBBF"
	$"0FF0 CCBD CCCE FEEF 00F0 CBDC CCBD FEFF"
	$"00FF CBCC BBCC FF00 000F CBB3 CCCD FF00"
	$"000F FCCC CDFF DDC0 0000 FCCC FFDD DDCC"
	$"0000 FFFF DDDD CCCC 0000 0FDD DCCC CCC0"
};

resource 'ics4' (129, "Mac OS Icon") {
	$"000E EEEE EEEE E000 000E 0000 0000 EE00"
	$"AAAA AAAA AAAA AAE0 A0A0 0A00 0A0A 0ADF"
	$"A0A0 AA0A 0A00 0ADF A0A0 0A00 0A0A 0ADF"
	$"AAAA AAAA AAAA AADF 000E CCDD DDDD DDDF"
	$"000E 0000 0000 00CF 000E 0000 0000 00CF"
	$"000E 0000 0000 00CF 000E 0000 0000 00CF"
	$"000E 0000 0000 00CF 000E 0000 0000 00CF"
	$"000E 0CCC CCCC CCCF 000A AAAA FFFF FFFF"
};

resource 'ics4' (130, "Windows Icon") {
	$"000E EEEE EEEE E000 000E 0000 0000 EE00"
	$"AAAA AAAA AAAA AAE0 A0AA A0A0 A00A AADF"
	$"A0A0 A0A0 A0A0 AADF AA0A 0AA0 A0A0 AADF"
	$"AAAA AAAA AAAA AADF 000E CCDD DDDD DDDF"
	$"000E 0000 0000 00CF 000E 0000 0000 00CF"
	$"000E 0000 0000 00CF 000E 0000 0000 00CF"
	$"000E 0000 0000 00CF 000E 0000 0000 00CF"
	$"000E 0CCC CCCC CCCF 000A AAAA FFFF FFFF"
};

resource 'ics4' (131, "Mac OS X Icon") {
	$"000E EEEE EEEE E000 000E 0000 0000 EE00"
	$"AAAA AAAA AAAA AAE0 A000 A0A0 0A00 AADF"
	$"AA0A A0A0 AA0A AADF AA0A A0A0 AA0A AADF"
	$"AAAA AAAA AAAA AADF 000E CCDD DDDD DDDF"
	$"000E 0000 0000 00CF 000E 0000 0000 00CF"
	$"000E 0000 0000 00CF 000E 0000 0000 00CF"
	$"000E 0000 0000 00CF 000E 0000 0000 00CF"
	$"000E 0CCC CCCC CCCF 000A AAAA FFFF FFFF"
};

resource 'ics8' (-16455) {
	$"0000 0000 0000 0000 0000 0000 0034 3400"
	$"0000 0000 0000 00FF FF00 0000 342D 5D00"
	$"0000 0000 00FF FFFF 8181 072D 345D 0000"
	$"0000 00FF FFFF F5F6 2C33 3334 8800 0000"
	$"00FF FFFF 00F5 F62C 5E5E 3488 392C 0000"
	$"FFFF 00F5 F5F8 325E 5E34 FE64 3932 2CF9"
	$"FFFF F5F6 F8F7 5E5D 3333 3208 0832 32DF"
	$"00FF 00F5 F8F8 5D82 8888 885E 5D5D 5DDF"
	$"00FF FFF5 F632 5DF9 2BF7 F7FC B388 88DF"
	$"0000 FFF5 3264 FA2B F732 39F9 FF88 DFDF"
	$"0000 FFFF 3239 F732 3939 32F8 FFFF 0000"
	$"0000 00FF 0E39 3940 32F7 F856 FFFF 0000"
	$"0000 00FF FF32 32F7 F756 FFFE FAFA F800"
	$"0000 0000 FFF6 2BF8 FFFE FAFA FAFA F8F6"
	$"0000 0000 FFFF FFFF FAFA FAFA F8F8 F6F6"
	$"0000 0000 00FF FAFA FAF8 F8F8 F6F6 F6"
};

resource 'ics8' (128) {
	$"0000 0000 0000 0000 0000 0000 0034 3400"
	$"0000 0000 0000 00FF FF00 0000 342D 5D00"
	$"0000 0000 00FF FFFF 8181 072D 345D 0000"
	$"0000 00FF FFFF F5F6 2C33 3334 8800 0000"
	$"00FF FFFF 00F5 F62C 5E5E 3488 392C 0000"
	$"FFFF 00F5 F5F8 325E 5E34 FE64 3932 2CF9"
	$"FFFF F5F6 F8F7 5E5D 3333 3208 0832 32DF"
	$"00FF 00F5 F8F8 5D82 8888 885E 5D5D 5DDF"
	$"00FF FFF5 F632 5DF9 2BF7 F7FC B388 88DF"
	$"0000 FFF5 3264 FA2B F732 39F9 FF88 DFDF"
	$"0000 FFFF 3239 F732 3939 32F8 FFFF 0000"
	$"0000 00FF 0E39 3940 32F7 F856 FFFF 0000"
	$"0000 00FF FF32 32F7 F756 FFFE FAFA F800"
	$"0000 0000 FFF6 2BF8 FFFE FAFA FAFA F8F6"
	$"0000 0000 FFFF FFFF FAFA FAFA F8F8 F6F6"
	$"0000 0000 00FF FAFA FAF8 F8F8 F6F6 F6"
};

resource 'ics8' (129, "Mac OS Icon") {
	$"0000 00FB FBFB FBFC FCFC FCFC FC00 0000"
	$"0000 00FB F5F5 F5F5 F5F5 F5F5 FCFB 0000"
	$"DDDD DDDD DDDD DDDD DDDD DDDD DDDD FB00"
	$"DD00 DD00 00DD 0000 00DD 00DD 00DD FAFF"
	$"DD00 DD00 DDDD 00DD 00DD 0000 00DD FAFF"
	$"DD00 DD00 00DD 0000 00DD 00DD 00DD F9FF"
	$"DDDD DDDD DDDD DDDD DDDD DDDD DDDD F9FF"
	$"0000 00FC F7F7 F9F9 F9F9 F9F9 F9F9 F9FF"
	$"0000 00FC F5F5 F5F5 F5F5 F5F5 F5F5 F8FE"
	$"0000 00FC F5F5 F5F5 F5F5 F5F5 F5F5 F8FE"
	$"0000 00FC F5F5 F5F5 F5F5 F5F5 F5F5 F8FE"
	$"0000 00AC F5F5 F5F5 F5F5 F5F5 F5F5 F8FE"
	$"0000 00AC F5F5 F5F5 F5F5 F5F5 F5F5 F7FF"
	$"0000 00AC F5F5 F5F5 F5F5 F5F5 F5F5 F7FF"
	$"0000 00AC F5F7 F7F7 F7F7 F7F7 F7F7 F7FF"
	$"0000 00FD FDFD FDFD FEFE FEFE FFFF FFFF"
};

resource 'ics8' (130, "Windows Icon") {
	$"0000 00FB FBFB FBFC FCFC FCFC FC00 0000"
	$"0000 00FB F5F5 F5F5 F5F5 F5F5 FCFB 0000"
	$"DDDD DDDD DDDD DDDD DDDD DDDD DDDD FB00"
	$"DD00 DDDD DD00 DD00 DD00 00DD DDDD FAFF"
	$"DD00 DD00 DD00 DD00 DD00 DD00 DDDD FAFF"
	$"DDDD 00DD 00DD DD00 DD00 DD00 DDDD F9FF"
	$"DDDD DDDD DDDD DDDD DDDD DDDD DDDD F9FF"
	$"0000 00FC F7F7 F9F9 F9F9 F9F9 F9F9 F9FF"
	$"0000 00FC F5F5 F5F5 F5F5 F5F5 F5F5 F8FE"
	$"0000 00FC F5F5 F5F5 F5F5 F5F5 F5F5 F8FE"
	$"0000 00FC F5F5 F5F5 F5F5 F5F5 F5F5 F8FE"
	$"0000 00AC F5F5 F5F5 F5F5 F5F5 F5F5 F8FE"
	$"0000 00AC F5F5 F5F5 F5F5 F5F5 F5F5 F7FF"
	$"0000 00AC F5F5 F5F5 F5F5 F5F5 F5F5 F7FF"
	$"0000 00AC F5F7 F7F7 F7F7 F7F7 F7F7 F7FF"
	$"0000 00FD FDFD FDFD FEFE FEFE FFFF FFFF"
};

resource 'ics8' (131, "Mac OS X Icon") {
	$"0000 00FB FBFB FBFC FCFC FCFC FC00 0000"
	$"0000 00FB F5F5 F5F5 F5F5 F5F5 FCFB 0000"
	$"DDDD DDDD DDDD DDDD DDDD DDDD DDDD FB00"
	$"DD00 0000 DD00 DD00 00DD 0000 DDDD FAFF"
	$"DDDD 00DD DD00 DD00 DDDD 00DD DDDD FAFF"
	$"DDDD 00DD DD00 DD00 DDDD 00DD DDDD F9FF"
	$"DDDD DDDD DDDD DDDD DDDD DDDD DDDD F9FF"
	$"0000 00FC F7F7 F9F9 F9F9 F9F9 F9F9 F9FF"
	$"0000 00FC F5F5 F5F5 F5F5 F5F5 F5F5 F8FE"
	$"0000 00FC F5F5 F5F5 F5F5 F5F5 F5F5 F8FE"
	$"0000 00FC F5F5 F5F5 F5F5 F5F5 F5F5 F8FE"
	$"0000 00AC F5F5 F5F5 F5F5 F5F5 F5F5 F8FE"
	$"0000 00AC F5F5 F5F5 F5F5 F5F5 F5F5 F7FF"
	$"0000 00AC F5F5 F5F5 F5F5 F5F5 F5F5 F7FF"
	$"0000 00AC F5F7 F7F7 F7F7 F7F7 F7F7 F7FF"
	$"0000 00FD FDFD FDFD FEFE FEFE FFFF FFFF"
};

data 'ictb' (128) {
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000"                      /* ............ */
};

data 'ictb' (129) {
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0007 0024 0000 0000 000C 0000 0000 0000"            /* ...$............ */
	$"FFFF FFFF FFFF 0000"                                /* ˇˇˇˇˇˇ.. */
};

data 'ictb' (132) {
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0007 0028 8007 003C 0001 0000 0009 0000"            /* ...(Ä..<........ */
	$"0000 0000 FFFF FFFF FFFF 0000 0050 0000"            /* ....ˇˇˇˇˇˇ...P.. */
	$"0009 0000 0000 0000 FFFF FFFF FFFF 0000"            /* ........ˇˇˇˇˇˇ.. */
	$"0647 656E 6576 61"                                  /* .Geneva */
};

data 'ictb' (250) {
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000"                                /* ........ */
};

data 'ictb' (260) {
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000"                                /* ........ */
};

data 'ictb' (270) {
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000"                                /* ........ */
};

data 'ictb' (280) {
	$"0000 0000"                                          /* .... */
};

data 'ictb' (290) {
	$"0000 0000"                                          /* .... */
};

data 'ictb' (300) {
	$"0000 0000 0000 0000"                                /* ........ */
};

data 'ictb' (301) {
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000"                      /* ............ */
};

data 'ictb' (1000) {
	$"0000 0000 0000 0000 0028 0114 0007 013C"            /* .........(.....< */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0007 0150"            /* ...............P */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0028 0164 0028 018C 0028 01B4"            /* .....(.d.(.å.(.¥ */
	$"0028 01DC 0028 0204 0000 0000 0007 022C"            /* .(.‹.(........., */
	$"0007 0240 0005 0254 0005 0268 0005 027C"            /* ...@...T...h...| */
	$"0005 0290 0007 02A4 0005 02B8 0005 02CC"            /* ...ê...§...∏...Ã */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0007 02E0 0007 02F4"            /* ...........‡...Ù */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0007 0308 0000 0000 000C 0000 0000 0000"            /* ................ */
	$"FFFF FFFF FFFF 0000 0001 0000 0009 0000"            /* ˇˇˇˇˇˇ.......... */
	$"0000 0000 FFFF FFFF FFFF 0000 0001 0000"            /* ....ˇˇˇˇˇˇ...... */
	$"0009 0000 0000 0000 FFFF FFFF FFFF 0000"            /* ........ˇˇˇˇˇˇ.. */
	$"0000 0000 0000 0000 0000 0000 FFFF FFFF"            /* ............ˇˇˇˇ */
	$"FFFF 0000 0000 0000 0000 0003 0000 0000"            /* ˇˇ.............. */
	$"0000 0000 0001 FFFF FFFF FFFF 0002 0000"            /* ......ˇˇˇˇˇˇ.... */
	$"0000 0000 0003 FFFF FFFF FFFF 0000 0000"            /* ......ˇˇˇˇˇˇ.... */
	$"0000 0003 0000 0000 0000 0000 0001 FFFF"            /* ..............ˇˇ */
	$"FFFF FFFF 0002 0000 0000 0000 0003 FFFF"            /* ˇˇˇˇ..........ˇˇ */
	$"FFFF FFFF 0000 0000 0000 0003 0000 0000"            /* ˇˇˇˇ............ */
	$"0000 0000 0001 FFFF FFFF FFFF 0002 0000"            /* ......ˇˇˇˇˇˇ.... */
	$"0000 0000 0003 FFFF FFFF FFFF 0000 0000"            /* ......ˇˇˇˇˇˇ.... */
	$"0000 0003 0000 0000 0000 0000 0001 FFFF"            /* ..............ˇˇ */
	$"FFFF FFFF 0002 0000 0000 0000 0003 FFFF"            /* ˇˇˇˇ..........ˇˇ */
	$"FFFF FFFF 0000 0000 0000 0003 0000 0000"            /* ˇˇˇˇ............ */
	$"0000 0000 0001 FFFF FFFF FFFF 0002 0000"            /* ......ˇˇˇˇˇˇ.... */
	$"0000 0000 0003 FFFF FFFF FFFF 0001 0100"            /* ......ˇˇˇˇˇˇ.... */
	$"0009 0000 0000 0000 FFFF FFFF FFFF 0000"            /* ........ˇˇˇˇˇˇ.. */
	$"0001 0100 0009 0000 0000 0000 FFFF FFFF"            /* ............ˇˇˇˇ */
	$"FFFF 0000 0001 0100 0009 0000 0000 0000"            /* ˇˇ.............. */
	$"FFFF FFFF FFFF 0000 0001 0100 0009 0000"            /* ˇˇˇˇˇˇ.......... */
	$"0000 0000 FFFF FFFF FFFF 0000 0001 0100"            /* ....ˇˇˇˇˇˇ...... */
	$"0009 0000 0000 0000 FFFF FFFF FFFF 0000"            /* ........ˇˇˇˇˇˇ.. */
	$"0001 0100 0009 0000 0000 0000 FFFF FFFF"            /* ............ˇˇˇˇ */
	$"FFFF 0000 0001 0100 0009 0000 0000 0000"            /* ˇˇ.............. */
	$"FFFF FFFF FFFF 0000 0001 0100 0009 0000"            /* ˇˇˇˇˇˇ.......... */
	$"0000 0000 FFFF FFFF FFFF 0000 0001 0100"            /* ....ˇˇˇˇˇˇ...... */
	$"0009 0000 0000 0000 FFFF FFFF FFFF 0000"            /* ........ˇˇˇˇˇˇ.. */
	$"0000 0000 0000 0000 0000 0000 FFFF FFFF"            /* ............ˇˇˇˇ */
	$"FFFF 0000 0000 0000 0000 0000 0000 0000"            /* ˇˇ.............. */
	$"FFFF FFFF FFFF 0000 0000 0000 0000 0000"            /* ˇˇˇˇˇˇ.......... */
	$"0000 0000 FFFF FFFF FFFF 0000"                      /* ....ˇˇˇˇˇˇ.. */
};

data 'ictb' (1001) {
	$"0028 00D8 0028 0100 0005 0128 0005 013C"            /* .(.ÿ.(.....(...< */
	$"0005 0150 0007 0164 0028 0178 0007 01A0"            /* ...P...d.(.x...† */
	$"0028 01B4 0028 01DC 0028 0204 0028 022C"            /* .(.¥.(.‹.(...(., */
	$"0028 0254 0005 027C 0028 0290 0028 02B8"            /* .(.T...|.(.ê.(.∏ */
	$"0028 02E0 0028 0308 0028 0330 0028 0358"            /* .(.‡.(...(.0.(.X */
	$"0028 0380 0028 03A8 0000 0000 0007 03D0"            /* .(.Ä.(.®.......– */
	$"0007 03E4 0005 03F8 0005 040C 0005 0420"            /* ...‰...¯.......  */
	$"0005 0434 0007 0448 0005 045C 0005 0470"            /* ...4...H...\...p */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0003"            /* ................ */
	$"0000 0000 0000 0000 0001 FFFF FFFF FFFF"            /* ..........ˇˇˇˇˇˇ */
	$"0002 0000 0000 0000 0003 FFFF FFFF FFFF"            /* ..........ˇˇˇˇˇˇ */
	$"0000 0000 0000 0003 0000 0000 0000 0000"            /* ................ */
	$"0001 FFFF FFFF FFFF 0002 0000 0000 0000"            /* ..ˇˇˇˇˇˇ........ */
	$"0003 FFFF FFFF FFFF 0000 0000 0000 0000"            /* ..ˇˇˇˇˇˇ........ */
	$"0000 0000 FFFF FFFF FFFF 0000 0000 0000"            /* ....ˇˇˇˇˇˇ...... */
	$"0000 0000 0000 0000 FFFF FFFF FFFF 0000"            /* ........ˇˇˇˇˇˇ.. */
	$"0000 0000 0000 0000 0000 0000 FFFF FFFF"            /* ............ˇˇˇˇ */
	$"FFFF 0000 0001 0000 0009 0000 0000 0000"            /* ˇˇ.............. */
	$"FFFF FFFF FFFF 0000 0000 0000 0000 0003"            /* ˇˇˇˇˇˇ.......... */
	$"0000 0000 0000 0000 0001 FFFF FFFF FFFF"            /* ..........ˇˇˇˇˇˇ */
	$"0002 0000 0000 0000 0003 FFFF FFFF FFFF"            /* ..........ˇˇˇˇˇˇ */
	$"0000 0000 0000 0000 0000 0000 FFFF FFFF"            /* ............ˇˇˇˇ */
	$"FFFF 0000 0000 0000 0000 0003 0000 0000"            /* ˇˇ.............. */
	$"0000 0000 0001 FFFF FFFF FFFF 0002 0000"            /* ......ˇˇˇˇˇˇ.... */
	$"0000 0000 0003 FFFF FFFF FFFF 0000 0000"            /* ......ˇˇˇˇˇˇ.... */
	$"0000 0003 0000 0000 0000 0000 0001 FFFF"            /* ..............ˇˇ */
	$"FFFF FFFF 0002 0000 0000 0000 0003 FFFF"            /* ˇˇˇˇ..........ˇˇ */
	$"FFFF FFFF 0000 0000 0000 0003 0000 0000"            /* ˇˇˇˇ............ */
	$"0000 0000 0001 FFFF FFFF FFFF 0002 0000"            /* ......ˇˇˇˇˇˇ.... */
	$"0000 0000 0003 FFFF FFFF FFFF 0000 0000"            /* ......ˇˇˇˇˇˇ.... */
	$"0000 0003 0000 0000 0000 0000 0001 FFFF"            /* ..............ˇˇ */
	$"FFFF FFFF 0002 0000 0000 0000 0003 FFFF"            /* ˇˇˇˇ..........ˇˇ */
	$"FFFF FFFF 0000 0000 0000 0003 0000 0000"            /* ˇˇˇˇ............ */
	$"0000 0000 0001 FFFF FFFF FFFF 0002 0000"            /* ......ˇˇˇˇˇˇ.... */
	$"0000 0000 0003 FFFF FFFF FFFF 0000 0000"            /* ......ˇˇˇˇˇˇ.... */
	$"0000 0000 0000 0000 FFFF FFFF FFFF 0000"            /* ........ˇˇˇˇˇˇ.. */
	$"0000 0000 0000 0003 0000 0000 0000 0000"            /* ................ */
	$"0001 FFFF FFFF FFFF 0002 0000 0000 0000"            /* ..ˇˇˇˇˇˇ........ */
	$"0003 FFFF FFFF FFFF 0000 0000 0000 0003"            /* ..ˇˇˇˇˇˇ........ */
	$"0000 0000 0000 0000 0001 FFFF FFFF FFFF"            /* ..........ˇˇˇˇˇˇ */
	$"0002 0000 0000 0000 0003 FFFF FFFF FFFF"            /* ..........ˇˇˇˇˇˇ */
	$"0000 0000 0000 0003 0000 0000 0000 0000"            /* ................ */
	$"0001 FFFF FFFF FFFF 0002 0000 0000 0000"            /* ..ˇˇˇˇˇˇ........ */
	$"0003 FFFF FFFF FFFF 0000 0000 0000 0003"            /* ..ˇˇˇˇˇˇ........ */
	$"0000 0000 0000 0000 0001 FFFF FFFF FFFF"            /* ..........ˇˇˇˇˇˇ */
	$"0002 0000 0000 0000 0003 FFFF FFFF FFFF"            /* ..........ˇˇˇˇˇˇ */
	$"0000 0000 0000 0003 0000 0000 0000 0000"            /* ................ */
	$"0001 FFFF FFFF FFFF 0002 0000 0000 0000"            /* ..ˇˇˇˇˇˇ........ */
	$"0003 FFFF FFFF FFFF 0000 0000 0000 0003"            /* ..ˇˇˇˇˇˇ........ */
	$"0000 0000 0000 0000 0001 FFFF FFFF FFFF"            /* ..........ˇˇˇˇˇˇ */
	$"0002 0000 0000 0000 0003 FFFF FFFF FFFF"            /* ..........ˇˇˇˇˇˇ */
	$"0000 0000 0000 0003 0000 0000 0000 0000"            /* ................ */
	$"0001 FFFF FFFF FFFF 0002 0000 0000 0000"            /* ..ˇˇˇˇˇˇ........ */
	$"0003 FFFF FFFF FFFF 0000 0000 0000 0003"            /* ..ˇˇˇˇˇˇ........ */
	$"0000 0000 0000 0000 0001 FFFF FFFF FFFF"            /* ..........ˇˇˇˇˇˇ */
	$"0002 0000 0000 0000 0003 FFFF FFFF FFFF"            /* ..........ˇˇˇˇˇˇ */
	$"0001 0100 0009 0000 0000 0000 FFFF FFFF"            /* ............ˇˇˇˇ */
	$"FFFF 0000 0001 0100 0009 0000 0000 0000"            /* ˇˇ.............. */
	$"FFFF FFFF FFFF 0000 0001 0100 0009 0000"            /* ˇˇˇˇˇˇ.......... */
	$"0000 0000 FFFF FFFF FFFF 0000 0001 0100"            /* ....ˇˇˇˇˇˇ...... */
	$"0009 0000 0000 0000 FFFF FFFF FFFF 0000"            /* ........ˇˇˇˇˇˇ.. */
	$"0001 0100 0009 0000 0000 0000 FFFF FFFF"            /* ............ˇˇˇˇ */
	$"FFFF 0000 0001 0100 0009 0000 0000 0000"            /* ˇˇ.............. */
	$"FFFF FFFF FFFF 0000 0001 0100 0009 0000"            /* ˇˇˇˇˇˇ.......... */
	$"0000 0000 FFFF FFFF FFFF 0000 0001 0100"            /* ....ˇˇˇˇˇˇ...... */
	$"0009 0000 0000 0000 FFFF FFFF FFFF 0000"            /* ........ˇˇˇˇˇˇ.. */
	$"0001 0100 0009 0000 0000 0000 FFFF FFFF"            /* ............ˇˇˇˇ */
	$"FFFF 0000"                                          /* ˇˇ.. */
};

data 'ictb' (1002) {
	$"0000 0000 0000 0000"                                /* ........ */
};

data 'ictb' (1003) {
	$"0000 0000 0000 0000 0007 0014 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"FFFF FFFF FFFF 0000"                                /* ˇˇˇˇˇˇ.. */
};

data 'ictb' (1010) {
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
};

data 'ictb' (1011) {
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000"                      /* ............ */
};

data 'ictb' (1012) {
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000"                      /* ............ */
};

data 'ictb' (1410) {
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000"                                          /* .... */
};

data 'ictb' (2000) {
	$"0000 0000"                                          /* .... */
};

data 'ictb' (3001) {
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
};

data 'ictb' (3002) {
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000"                                          /* .... */
};

data 'ictb' (4000) {
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0007 0020 0000 0000 0000 0000"            /* ....... ........ */
	$"0001 0000 000A 0000 0000 0000 FFFF FFFF"            /* ............ˇˇˇˇ */
	$"FFFF 0000"                                          /* ˇˇ.. */
};

data 'ictb' (9999) {
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
};

resource 'kind' (128) {
	'Mngl',
	0,
	{	/* array kindArray: 3 elements */
		/* [1] */
		'Icon', "Mac OS Icon",
		/* [2] */
		'ICO ', "Windows Icon",
		/* [3] */
		'TIFF', "Mac OS X Server Icon"
	}
};

resource 'mctb' (128) {
	{	/* array MCTBArray: 1 elements */
		/* [1] */
		mctbLast, 0,
		{	/* array: 4 elements */
			/* [1] */
			0, 0, 0,
			/* [2] */
			0, 0, 0,
			/* [3] */
			0, 0, 0,
			/* [4] */
			0, 0, 0
		}
	}
};

resource 'mctb' (129, "File menu") {
	{	/* array MCTBArray: 1 elements */
		/* [1] */
		mctbLast, 0,
		{	/* array: 4 elements */
			/* [1] */
			0, 0, 0,
			/* [2] */
			0, 0, 0,
			/* [3] */
			0, 0, 0,
			/* [4] */
			0, 0, 0
		}
	}
};

resource 'mctb' (131) {
	{	/* array MCTBArray: 1 elements */
		/* [1] */
		mctbLast, 0,
		{	/* array: 4 elements */
			/* [1] */
			0, 0, 0,
			/* [2] */
			0, 0, 0,
			/* [3] */
			0, 0, 0,
			/* [4] */
			0, 0, 0
		}
	}
};

resource 'mctb' (132) {
	{	/* array MCTBArray: 1 elements */
		/* [1] */
		mctbLast, 0,
		{	/* array: 4 elements */
			/* [1] */
			0, 0, 0,
			/* [2] */
			0, 0, 0,
			/* [3] */
			0, 0, 0,
			/* [4] */
			0, 0, 0
		}
	}
};

resource 'mctb' (133) {
	{	/* array MCTBArray: 1 elements */
		/* [1] */
		mctbLast, 0,
		{	/* array: 4 elements */
			/* [1] */
			0, 0, 0,
			/* [2] */
			0, 0, 0,
			/* [3] */
			0, 0, 0,
			/* [4] */
			0, 0, 0
		}
	}
};

resource 'mctb' (134) {
	{	/* array MCTBArray: 1 elements */
		/* [1] */
		mctbLast, 0,
		{	/* array: 4 elements */
			/* [1] */
			0, 0, 0,
			/* [2] */
			0, 0, 0,
			/* [3] */
			0, 0, 0,
			/* [4] */
			0, 0, 0
		}
	}
};

resource 'mctb' (135) {
	{	/* array MCTBArray: 1 elements */
		/* [1] */
		mctbLast, 0,
		{	/* array: 4 elements */
			/* [1] */
			0, 0, 0,
			/* [2] */
			0, 0, 0,
			/* [3] */
			0, 0, 0,
			/* [4] */
			0, 0, 0
		}
	}
};

resource 'mctb' (136, "Icon menu") {
	{	/* array MCTBArray: 1 elements */
		/* [1] */
		mctbLast, 0,
		{	/* array: 4 elements */
			/* [1] */
			0, 0, 0,
			/* [2] */
			0, 0, 0,
			/* [3] */
			0, 0, 0,
			/* [4] */
			0, 0, 0
		}
	}
};

resource 'mctb' (138) {
	{	/* array MCTBArray: 1 elements */
		/* [1] */
		mctbLast, 0,
		{	/* array: 4 elements */
			/* [1] */
			0, 0, 0,
			/* [2] */
			0, 0, 0,
			/* [3] */
			0, 0, 0,
			/* [4] */
			0, 0, 0
		}
	}
};

resource 'mctb' (201) {
	{	/* array MCTBArray: 1 elements */
		/* [1] */
		mctbLast, 0,
		{	/* array: 4 elements */
			/* [1] */
			0, 0, 0,
			/* [2] */
			0, 0, 0,
			/* [3] */
			0, 0, 0,
			/* [4] */
			0, 0, 0
		}
	}
};

resource 'mctb' (202) {
	{	/* array MCTBArray: 1 elements */
		/* [1] */
		mctbLast, 0,
		{	/* array: 4 elements */
			/* [1] */
			0, 0, 0,
			/* [2] */
			0, 0, 0,
			/* [3] */
			0, 0, 0,
			/* [4] */
			0, 0, 0
		}
	}
};

resource 'mctb' (203) {
	{	/* array MCTBArray: 1 elements */
		/* [1] */
		mctbLast, 0,
		{	/* array: 4 elements */
			/* [1] */
			0, 0, 0,
			/* [2] */
			0, 0, 0,
			/* [3] */
			0, 0, 0,
			/* [4] */
			0, 0, 0
		}
	}
};

resource 'mctb' (204) {
	{	/* array MCTBArray: 1 elements */
		/* [1] */
		mctbLast, 0,
		{	/* array: 4 elements */
			/* [1] */
			0, 0, 0,
			/* [2] */
			0, 0, 0,
			/* [3] */
			0, 0, 0,
			/* [4] */
			0, 0, 0
		}
	}
};

resource 'mctb' (205) {
	{	/* array MCTBArray: 1 elements */
		/* [1] */
		mctbLast, 0,
		{	/* array: 4 elements */
			/* [1] */
			0, 0, 0,
			/* [2] */
			0, 0, 0,
			/* [3] */
			0, 0, 0,
			/* [4] */
			0, 0, 0
		}
	}
};

resource 'mctb' (206) {
	{	/* array MCTBArray: 1 elements */
		/* [1] */
		mctbLast, 0,
		{	/* array: 4 elements */
			/* [1] */
			0, 0, 0,
			/* [2] */
			0, 0, 0,
			/* [3] */
			0, 0, 0,
			/* [4] */
			0, 0, 0
		}
	}
};

resource 'mctb' (207) {
	{	/* array MCTBArray: 1 elements */
		/* [1] */
		mctbLast, 0,
		{	/* array: 4 elements */
			/* [1] */
			0, 0, 0,
			/* [2] */
			0, 0, 0,
			/* [3] */
			0, 0, 0,
			/* [4] */
			0, 0, 0
		}
	}
};

resource 'mctb' (208) {
	{	/* array MCTBArray: 1 elements */
		/* [1] */
		mctbLast, 0,
		{	/* array: 4 elements */
			/* [1] */
			0, 0, 0,
			/* [2] */
			0, 0, 0,
			/* [3] */
			0, 0, 0,
			/* [4] */
			0, 0, 0
		}
	}
};

resource 'mctb' (400) {
	{	/* array MCTBArray: 1 elements */
		/* [1] */
		mctbLast, 0,
		{	/* array: 4 elements */
			/* [1] */
			0, 0, 0,
			/* [2] */
			0, 0, 0,
			/* [3] */
			0, 0, 0,
			/* [4] */
			0, 0, 0
		}
	}
};

resource 'mctb' (623) {
	{	/* array MCTBArray: 1 elements */
		/* [1] */
		mctbLast, 0,
		{	/* array: 4 elements */
			/* [1] */
			0, 0, 0,
			/* [2] */
			0, 0, 0,
			/* [3] */
			0, 0, 0,
			/* [4] */
			0, 0, 0
		}
	}
};

resource 'mctb' (1121) {
	{	/* array MCTBArray: 1 elements */
		/* [1] */
		mctbLast, 0,
		{	/* array: 4 elements */
			/* [1] */
			0, 0, 0,
			/* [2] */
			0, 0, 0,
			/* [3] */
			0, 0, 0,
			/* [4] */
			0, 0, 0
		}
	}
};

resource 'mctb' (1411) {
	{	/* array MCTBArray: 1 elements */
		/* [1] */
		mctbLast, 0,
		{	/* array: 4 elements */
			/* [1] */
			0, 0, 0,
			/* [2] */
			0, 0, 0,
			/* [3] */
			0, 0, 0,
			/* [4] */
			0, 0, 0
		}
	}
};

resource 'mctb' (1412) {
	{	/* array MCTBArray: 1 elements */
		/* [1] */
		mctbLast, 0,
		{	/* array: 4 elements */
			/* [1] */
			0, 0, 0,
			/* [2] */
			0, 0, 0,
			/* [3] */
			0, 0, 0,
			/* [4] */
			0, 0, 0
		}
	}
};

resource 'open' (128) {
	'Mngl',
	{	/* array typeArray: 6 elements */
		/* [1] */
		'Icon',
		/* [2] */
		'WIco',
		/* [3] */
		'TIFF',
		/* [4] */
		'****',
		/* [5] */
		'fold',
		/* [6] */
		'disk'
	}
};

resource 'tab#' (251, "Color Palette Tabs") {
	versionZero {
		{	/* array TabInfo: 4 elements */
			/* [1] */
			0,
			"RGB",
			/* [2] */
			0,
			"HSV",
			/* [3] */
			0,
			"System",
			/* [4] */
			0,
			"Favorites"
		}
	}
};

resource 'tab#' (500, "Preview Tabs") {
	versionZero {
		{	/* array TabInfo: 2 elements */
			/* [1] */
			0,
			"Thumbnail",
			/* [2] */
			0,
			"Hints"
		}
	}
};

resource 'tab#' (1007, "Preferences Tabs") {
	versionZero {
		{	/* array TabInfo: 3 elements */
			/* [1] */
			0,
			"General",
			/* [2] */
			0,
			"Defaults",
			/* [3] */
			0,
			"External Editing"
		}
	}
};

resource 'tab#' (1010, "Hue & Saturation Tabs") {
	versionZero {
		{	/* array TabInfo: 2 elements */
			/* [1] */
			0,
			"Hue & Saturation",
			/* [2] */
			0,
			"Brightness & Contrast"
		}
	}
};

resource 'vers' (1) {
	0x2,
	0x1,
	release,
	0x0,
	0,
	"2.0.1",
	"Iconographer 2.0.1\n©1998-2000 Mihai Parp"
	"arita"
};

resource 'vers' (2) {
	0x2,
	0x1,
	release,
	0x0,
	0,
	"2.0.1",
	"http://www.mscape.com/"
};

resource 'wctb' (200) {
	{	/* array ColorSpec: 5 elements */
		/* [1] */
		wContentColor, 65535, 65535, 65535,
		/* [2] */
		wFrameColor, 0, 0, 0,
		/* [3] */
		wTextColor, 0, 0, 0,
		/* [4] */
		wHiliteColor, 0, 0, 0,
		/* [5] */
		wTitleBarColor, 65535, 65535, 65535
	}
};

resource 'wctb' (300) {
	{	/* array ColorSpec: 5 elements */
		/* [1] */
		wContentColor, 65535, 65535, 65535,
		/* [2] */
		wFrameColor, 0, 0, 0,
		/* [3] */
		wTextColor, 0, 0, 0,
		/* [4] */
		wHiliteColor, 0, 0, 0,
		/* [5] */
		wTitleBarColor, 65535, 65535, 65535
	}
};

resource 'wctb' (400) {
	{	/* array ColorSpec: 5 elements */
		/* [1] */
		wContentColor, 65535, 65535, 65535,
		/* [2] */
		wFrameColor, 0, 0, 0,
		/* [3] */
		wTextColor, 0, 0, 0,
		/* [4] */
		wHiliteColor, 0, 0, 0,
		/* [5] */
		wTitleBarColor, 65535, 65535, 65535
	}
};

resource 'wctb' (500) {
	{	/* array ColorSpec: 5 elements */
		/* [1] */
		wContentColor, 65535, 65535, 65535,
		/* [2] */
		wFrameColor, 0, 0, 0,
		/* [3] */
		wTextColor, 0, 0, 0,
		/* [4] */
		wHiliteColor, 0, 0, 0,
		/* [5] */
		wTitleBarColor, 65535, 65535, 65535
	}
};

resource 'wctb' (600) {
	{	/* array ColorSpec: 5 elements */
		/* [1] */
		wContentColor, 65535, 65535, 65535,
		/* [2] */
		wFrameColor, 0, 0, 0,
		/* [3] */
		wTextColor, 0, 0, 0,
		/* [4] */
		wHiliteColor, 0, 0, 0,
		/* [5] */
		wTitleBarColor, 65535, 65535, 65535
	}
};

resource 'xmnu' (129, "File Menu") {
	versionZero {
		{	/* array ItemExtensions: 7 elements */
			/* [1] */
			skipItem {

			}			,
			/* [2] */
			skipItem {

			}			,
			/* [3] */
			skipItem {

			}			,
			/* [4] */
			skipItem {

			}			,
			/* [5] */
			skipItem {

			}			,
			/* [6] */
			skipItem {

			}			,
			/* [7] */
			dataItem {
				1061109567,
				0x1,
				currScript,
				1061109567,
				1061109567,
				noHierID,
				sysFont,
				naturalGlyph
			}
		}
	}
};

resource 'xmnu' (131, "Edit Menu") {
	versionZero {
		{	/* array ItemExtensions: 2 elements */
			/* [1] */
			skipItem {

			}			,
			/* [2] */
			dataItem {
				1061109567,
				0x1,
				currScript,
				1061109567,
				1061109567,
				noHierID,
				sysFont,
				naturalGlyph
			}
		}
	}
};

resource 'xmnu' (132, "Select") {
	versionZero {
		{	/* array ItemExtensions: 4 elements */
			/* [1] */
			skipItem {

			}			,
			/* [2] */
			skipItem {

			}			,
			/* [3] */
			skipItem {

			}			,
			/* [4] */
			dataItem {
				1061109567,
				0x1,
				currScript,
				1061109567,
				1061109567,
				noHierID,
				sysFont,
				naturalGlyph
			}
		}
	}
};

resource 'xmnu' (133, "Transform") {
	versionZero {
		{	/* array ItemExtensions: 7 elements */
			/* [1] */
			skipItem {

			}			,
			/* [2] */
			dataItem {
				1061109567,
				0x1,
				currScript,
				1061109567,
				1061109567,
				noHierID,
				sysFont,
				naturalGlyph
			},
			/* [3] */
			skipItem {

			},
			/* [4] */
			skipItem {

			},
			/* [5] */
			skipItem {

			},
			/* [6] */
			skipItem {

			},
			/* [7] */
			dataItem {
				1061109567,
				0x2,
				currScript,
				1061109567,
				1061109567,
				noHierID,
				sysFont,
				naturalGlyph
			}
		}
	}
};

resource 'xmnu' (134, "Paste Menu") {
	versionZero {
		{	/* array ItemExtensions: 4 elements */
			/* [1] */
			skipItem {

			}			,
			/* [2] */
			dataItem {
				1061109567,
				0x1,
				currScript,
				1061109567,
				1061109567,
				noHierID,
				sysFont,
				naturalGlyph
			},
			/* [3] */
			dataItem {
				1061109567,
				0x2,
				currScript,
				1061109567,
				1061109567,
				noHierID,
				sysFont,
				naturalGlyph
			},
			/* [4] */
			dataItem {
				1061109567,
				0x4,
				currScript,
				1061109567,
				1061109567,
				noHierID,
				sysFont,
				naturalGlyph
			}
		}
	}
};

resource 'xmnu' (135, "Copy Menu") {
	versionZero {
		{	/* array ItemExtensions: 3 elements */
			/* [1] */
			skipItem {

			}			,
			/* [2] */
			dataItem {
				1061109567,
				0x1,
				currScript,
				1061109567,
				1061109567,
				noHierID,
				sysFont,
				naturalGlyph
			},
			/* [3] */
			dataItem {
				1061109567,
				0x4,
				currScript,
				1061109567,
				1061109567,
				noHierID,
				sysFont,
				naturalGlyph
			}
		}
	}
};

