/* Resource fork of software/Iconographer/Source/icnsEditorClass/icnsEditorClass.Carbon.rsrc */
resource 'CNTL' (1000, "Zoom Level Arrows", purgeable) {
	{55, 271, 79, 284},
	0,
	visible,
	100,
	0,
	96,
	0,
	""
};

resource 'CNTL' (1003, "Startup Options Group Box", purgeable) {
	{160, 28, 162, 490},
	0,
	visible,
	120,
	0,
	144,
	0,
	""
};

resource 'CNTL' (1004, "Default Format", purgeable) {
	{95, 214, 115, 452},
	0,
	visible,
	0,
	4000,
	401,
	0,
	""
};

resource 'CNTL' (1007, "Preferences Tabs", purgeable) {
	{9, 20, 342, 500},
	1007,
	visible,
	100,
	0,
	128,
	0,
	""
};

resource 'CNTL' (1008, "Default Members Group Box", purgeable) {
	{138, 35, 304, 487},
	0,
	visible,
	100,
	0,
	160,
	0,
	"Default Members"
};

resource 'CNTL' (1009, "Defalt Members Divider", purgeable) {
	{149, 149, 152, 490},
	0,
	visible,
	100,
	0,
	144,
	0,
	""
};

resource 'CNTL' (1010, "Adjust Tabs", purgeable) {
	{12, 18, 173, 410},
	1010,
	visible,
	100,
	0,
	128,
	0,
	""
};

resource 'CNTL' (1011, "Hue Slider", purgeable) {
	{58, 118, 89, 338},
	5,
	visible,
	180,
	-180,
	51,
	0,
	"Hue:"
};

resource 'CNTL' (1012, "Saturation Slider", purgeable) {
	{96, 118, 127, 338},
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
	{58, 118, 89, 338},
	5,
	visible,
	100,
	-100,
	51,
	0,
	"Brightness:"
};

resource 'CNTL' (1015, "Contrast Slider", purgeable) {
	{96, 118, 127, 338},
	5,
	visible,
	100,
	-100,
	51,
	0,
	"Contrast:"
};

resource 'CNTL' (1016, "External Format", purgeable) {
	{125, 212, 145, 450},
	0,
	visible,
	0,
	1016,
	401,
	0,
	""
};

resource 'CNTL' (1017, "External Editor App", purgeable) {
	{57, 214, 78, 450},
	0,
	visible,
	100,
	0,
	33,
	0,
	""
};

resource 'CNTL' (1018, "External Editor Shortcut", purgeable) {
	{89, 213, 110, 450},
	0,
	visible,
	100,
	0,
	33,
	0,
	""
};

resource 'CNTL' (1019, "Members Palette Box", purgeable) {
	{248, 28, 249, 490},
	0,
	visible,
	100,
	0,
	144,
	0,
	""
};

resource 'CNTL' (1020, "Members Palette Display Slider", purgeable) {
	{303, 265, 323, 405},
	64,
	visible,
	64,
	16,
	57,
	0,
	""
};

resource 'DITL' (1000, "Preferences", purgeable) {
	{	/* array DITLarray: 3 elements */
		/* [1] */
		{360, 427, 380, 495},
		Button {
			enabled,
			"OK"
		},
		/* [2] */
		{360, 347, 380, 411},
		Button {
			enabled,
			"Cancel"
		},
		/* [3] */
		{9, 20, 342, 500},
		Control {
			enabled,
			1007
		}
	}
};

resource 'DITL' (1010, "Adjust", purgeable) {
	{	/* array DITLarray: 4 elements */
		/* [1] */
		{190, 342, 210, 410},
		Button {
			enabled,
			"OK"
		},
		/* [2] */
		{190, 262, 210, 326},
		Button {
			enabled,
			"Cancel"
		},
		/* [3] */
		{190, 18, 212, 178},
		CheckBox {
			enabled,
			"Real-time preview"
		},
		/* [4] */
		{12, 18, 173, 410},
		Control {
			enabled,
			1010
		}
	}
};

resource 'DITL' (1011, "Adjust: Hue & Saturation Pane", purgeable) {
	{	/* array DITLarray: 7 elements */
		/* [1] */
		{58, 118, 89, 338},
		Control {
			enabled,
			1011
		},
		/* [2] */
		{96, 118, 127, 338},
		Control {
			enabled,
			1012
		},
		/* [3] */
		{61, 351, 77, 387},
		EditText {
			enabled,
			"0"
		},
		/* [4] */
		{98, 351, 114, 387},
		EditText {
			enabled,
			"0"
		},
		/* [5] */
		{133, 41, 155, 201},
		CheckBox {
			enabled,
			"Colorize"
		},
		/* [6] */
		{58, 40, 74, 115},
		StaticText {
			disabled,
			"Hue:"
		},
		/* [7] */
		{96, 40, 112, 115},
		StaticText {
			disabled,
			"Saturation:"
		}
	}
};

resource 'DITL' (1012, "Adjust: Brightness & Saturation Pane", purgeable) {
	{	/* array DITLarray: 6 elements */
		/* [1] */
		{58, 118, 89, 338},
		Control {
			enabled,
			1014
		},
		/* [2] */
		{96, 118, 127, 338},
		Control {
			enabled,
			1015
		},
		/* [3] */
		{61, 351, 77, 387},
		EditText {
			enabled,
			"0"
		},
		/* [4] */
		{98, 351, 114, 387},
		EditText {
			enabled,
			"0"
		},
		/* [5] */
		{58, 40, 74, 115},
		StaticText {
			disabled,
			"Brightness:"
		},
		/* [6] */
		{96, 40, 112, 115},
		StaticText {
			disabled,
			"Contrast:"
		}
	}
};

resource 'DITL' (1020, purgeable) {
	{	/* array DITLarray: 5 elements */
		/* [1] */
		{60, 240, 80, 310},
		Button {
			enabled,
			"OK"
		},
		/* [2] */
		{60, 146, 80, 216},
		Button {
			enabled,
			"Cancel"
		},
		/* [3] */
		{20, 20, 38, 229},
		StaticText {
			disabled,
			"Expand or contract selection by:"
		},
		/* [4] */
		{21, 233, 37, 261},
		EditText {
			enabled,
			""
		},
		/* [5] */
		{20, 272, 40, 310},
		StaticText {
			disabled,
			"pixels"
		}
	}
};

resource 'DITL' (1100, purgeable) {
	{	/* array DITLarray: 17 elements */
		/* [1] */
		{56, 210, 78, 490},
		CheckBox {
			enabled,
			"Show only loaded members"
		},
		/* [2] */
		{77, 210, 99, 490},
		CheckBox {
			enabled,
			"Verify masks when saving"
		},
		/* [3] */
		{98, 210, 120, 490},
		CheckBox {
			enabled,
			"Dither at lower depths"
		},
		/* [4] */
		{160, 28, 162, 490},
		Control {
			enabled,
			1003
		},
		/* [5] */
		{173, 210, 195, 375},
		RadioButton {
			enabled,
			"Create a new icon"
		},
		/* [6] */
		{194, 210, 216, 375},
		RadioButton {
			enabled,
			"Open an existing icon"
		},
		/* [7] */
		{215, 210, 237, 375},
		RadioButton {
			enabled,
			"Do nothing"
		},
		/* [8] */
		{248, 28, 249, 490},
		Control {
			enabled,
			1019
		},
		/* [9] */
		{261, 210, 283, 369},
		RadioButton {
			enabled,
			"Full size"
		},
		/* [10] */
		{282, 210, 304, 369},
		RadioButton {
			enabled,
			"Scaled"
		},
		/* [11] */
		{303, 230, 319, 263},
		StaticText {
			disabled,
			"Size:"
		},
		/* [12] */
		{303, 265, 323, 405},
		Control {
			enabled,
			1020
		},
		/* [13] */
		{305, 414, 321, 434},
		EditText {
			enabled,
			"64"
		},
		/* [14] */
		{127, 210, 147, 388},
		Button {
			enabled,
			"Reset Palette Locations"
		},
		/* [15] */
		{264, 28, 280, 206},
		StaticText {
			disabled,
			"Display members palette:"
		},
		/* [16] */
		{176, 28, 192, 206},
		StaticText {
			disabled,
			"At startup:"
		},
		/* [17] */
		{59, 28, 75, 206},
		StaticText {
			disabled,
			"Settings:"
		}
	}
};

resource 'DITL' (1101, purgeable) {
	{	/* array DITLarray: 51 elements */
		/* [1] */
		{59, 28, 75, 206},
		StaticText {
			disabled,
			"Initial zoom level:"
		},
		/* [2] */
		{59, 216, 75, 264},
		EditText {
			disabled,
			"1000%"
		},
		/* [3] */
		{55, 271, 79, 284},
		Control {
			enabled,
			1000
		},
		/* [4] */
		{95, 214, 115, 452},
		Control {
			enabled,
			1004
		},
		/* [5] */
		{97, 28, 113, 206},
		StaticText {
			enabled,
			"Default icon format:"
		},
		/* [6] */
		{280, 0, 295, 19},
		UserItem {
			enabled
		},
		/* [7] */
		{284, 4, 292, 12},
		UserItem {
			enabled
		},
		/* [8] */
		{284, 4, 292, 12},
		UserItem {
			enabled
		},
		/* [9] */
		{284, 4, 292, 12},
		UserItem {
			enabled
		},
		/* [10] */
		{284, 4, 292, 12},
		UserItem {
			enabled
		},
		/* [11] */
		{284, 4, 292, 12},
		UserItem {
			enabled
		},
		/* [12] */
		{284, 4, 292, 12},
		UserItem {
			enabled
		},
		/* [13] */
		{284, 4, 292, 12},
		UserItem {
			enabled
		},
		/* [14] */
		{138, 35, 304, 487},
		Control {
			enabled,
			1008
		},
		/* [15] */
		{272, 50, 294, 125},
		Control {
			enabled,
			1104
		},
		/* [16] */
		{160, 50, 182, 150},
		Control {
			enabled,
			1100
		},
		/* [17] */
		{209, 50, 231, 125},
		Control {
			enabled,
			1101
		},
		/* [18] */
		{230, 50, 252, 125},
		Control {
			enabled,
			1102
		},
		/* [19] */
		{251, 50, 273, 125},
		Control {
			enabled,
			1103
		},
		/* [20] */
		{203, 45, 206, 478},
		Control {
			enabled,
			1105
		},
		/* [21] */
		{186, 50, 202, 88},
		StaticText {
			disabled,
			"Hints"
		},
		/* [22] */
		{186, 125, 202, 160},
		StaticText {
			disabled,
			"Icon:"
		},
		/* [23] */
		{186, 161, 202, 207},
		StaticText {
			disabled,
			"32-bit"
		},
		/* [24] */
		{186, 206, 202, 252},
		StaticText {
			disabled,
			"8-bit"
		},
		/* [25] */
		{186, 251, 202, 297},
		StaticText {
			disabled,
			"4-bit"
		},
		/* [26] */
		{186, 296, 202, 342},
		StaticText {
			disabled,
			"1-bit"
		},
		/* [27] */
		{186, 348, 202, 388},
		StaticText {
			disabled,
			"Mask:"
		},
		/* [28] */
		{186, 388, 202, 434},
		StaticText {
			disabled,
			"8-bit"
		},
		/* [29] */
		{186, 433, 202, 479},
		StaticText {
			disabled,
			"1-bit"
		},
		/* [30] */
		{209, 176, 231, 193},
		CheckBox {
			enabled,
			""
		},
		/* [31] */
		{230, 176, 252, 193},
		CheckBox {
			enabled,
			""
		},
		/* [32] */
		{251, 176, 273, 193},
		CheckBox {
			enabled,
			""
		},
		/* [33] */
		{209, 221, 231, 238},
		CheckBox {
			enabled,
			""
		},
		/* [34] */
		{230, 221, 252, 238},
		CheckBox {
			enabled,
			""
		},
		/* [35] */
		{251, 221, 273, 238},
		CheckBox {
			enabled,
			""
		},
		/* [36] */
		{272, 221, 294, 238},
		CheckBox {
			enabled,
			""
		},
		/* [37] */
		{209, 266, 231, 283},
		CheckBox {
			enabled,
			""
		},
		/* [38] */
		{230, 266, 252, 283},
		CheckBox {
			enabled,
			""
		},
		/* [39] */
		{251, 266, 273, 283},
		CheckBox {
			enabled,
			""
		},
		/* [40] */
		{272, 266, 294, 283},
		CheckBox {
			enabled,
			""
		},
		/* [41] */
		{209, 311, 231, 328},
		CheckBox {
			disabled,
			""
		},
		/* [42] */
		{230, 311, 252, 328},
		CheckBox {
			disabled,
			""
		},
		/* [43] */
		{251, 311, 273, 328},
		CheckBox {
			disabled,
			""
		},
		/* [44] */
		{272, 311, 294, 328},
		CheckBox {
			disabled,
			""
		},
		/* [45] */
		{209, 403, 231, 420},
		CheckBox {
			enabled,
			""
		},
		/* [46] */
		{230, 403, 252, 420},
		CheckBox {
			enabled,
			""
		},
		/* [47] */
		{251, 403, 273, 420},
		CheckBox {
			enabled,
			""
		},
		/* [48] */
		{209, 448, 231, 465},
		CheckBox {
			disabled,
			""
		},
		/* [49] */
		{230, 448, 252, 465},
		CheckBox {
			disabled,
			""
		},
		/* [50] */
		{251, 448, 273, 465},
		CheckBox {
			disabled,
			""
		},
		/* [51] */
		{272, 448, 294, 465},
		CheckBox {
			disabled,
			""
		}
	}
};

resource 'DITL' (1102, purgeable) {
	{	/* array DITLarray: 7 elements */
		/* [1] */
		{59, 28, 75, 206},
		StaticText {
			disabled,
			"External editor: "
		},
		/* [2] */
		{57, 214, 78, 450},
		Control {
			enabled,
			1017
		},
		/* [3] */
		{91, 28, 107, 206},
		StaticText {
			disabled,
			"Editor key shortcut:"
		},
		/* [4] */
		{89, 213, 110, 450},
		Control {
			enabled,
			1018
		},
		/* [5] */
		{125, 212, 145, 450},
		Control {
			enabled,
			1016
		},
		/* [6] */
		{156, 225, 172, 385},
		CheckBox {
			enabled,
			"Export icon and mask"
		},
		/* [7] */
		{127, 28, 143, 206},
		StaticText {
			disabled,
			"Export format:"
		}
	}
};

resource 'DLOG' (1000, "Preferences", purgeable) {
	{450, 676, 850, 1196},
	1043,
	invisible,
	goAway,
	0x0,
	1000,
	"Preferences",
	centerMainScreen
};

resource 'DLOG' (1010, "Adjust", purgeable) {
	{200, 300, 430, 728},
	1043,
	invisible,
	noGoAway,
	0x0,
	1010,
	"Adjust…",
	centerParentWindowScreen
};

resource 'DLOG' (1011, "Adjust: Hue and Saturation", purgeable) {
	{619, 168, 839, 600},
	1024,
	visible,
	goAway,
	0x0,
	1011,
	"DITL 1011 “Adjust: Pane 1” from icnsEdit"
	"orClass.rsrc",
	noAutoCenter
};

resource 'DLOG' (1012, "Adjust: Brightness and Contrast", purgeable) {
	{540, 833, 752, 1248},
	1024,
	visible,
	goAway,
	0x0,
	1012,
	"",
	noAutoCenter
};

resource 'DLOG' (1020, "Expand/Contract", purgeable) {
	{300, 200, 400, 530},
	1043,
	invisible,
	noGoAway,
	0x0,
	1020,
	"Expand/Contract Selection",
	noAutoCenter
};

resource 'DLOG' (1100, "Preferences: General Pane", purgeable) {
	{545, 286, 937, 804},
	dBoxProc,
	visible,
	goAway,
	0x0,
	1100,
	"",
	noAutoCenter
};

resource 'DLOG' (1101, "Preferences: Defaults", purgeable) {
	{300, 200, 752, 980},
	dBoxProc,
	visible,
	goAway,
	0x0,
	1101,
	"",
	noAutoCenter
};

resource 'DLOG' (1102, "Preferences: External Editing", purgeable) {
	{398, 881, 706, 1405},
	dBoxProc,
	visible,
	goAway,
	0x0,
	1102,
	"",
	noAutoCenter
};

resource 'dlgx' (1000) {
	versionZero {
		15
	}
};

resource 'dlgx' (1010) {
	versionZero {
		15
	}
};

resource 'dlgx' (1020) {
	versionZero {
		15
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

