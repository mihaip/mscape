/* Resource fork of software/Iconographer/Source/icnsEditorClass/icnsEditorClass.Classic.rsrc */
resource 'CNTL' (1000, "Zoom Level Arrows", purgeable) {
	{41, 367, 65, 380},
	0,
	visible,
	100,
	0,
	96,
	0,
	""
};

resource 'CNTL' (1003, "Startup Options Group Box", purgeable) {
	{232, 8, 322, 380},
	0,
	visible,
	120,
	0,
	160,
	0,
	"Other Option"
};

resource 'CNTL' (1004, "Default Format", purgeable) {
	{75, 9, 95, 377},
	0,
	visible,
	-1,
	4000,
	401,
	0,
	"Default icon format:"
};

resource 'CNTL' (1005, "Settings Group Box", purgeable) {
	{40, 8, 148, 380},
	0,
	visible,
	120,
	0,
	160,
	0,
	"Settings"
};

resource 'CNTL' (1007, "Preferences Tabs", purgeable) {
	{9, 0, 329, 388},
	1007,
	visible,
	100,
	0,
	128,
	0,
	""
};

resource 'CNTL' (1008, "Default Members Group Box", purgeable) {
	{100, 8, 242, 380},
	0,
	visible,
	100,
	0,
	160,
	0,
	"Default Members"
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
	{96, 7, 116, 379},
	0,
	visible,
	172,
	1016,
	401,
	0,
	"Export format:"
};

resource 'CNTL' (1017, "External Editor App", purgeable) {
	{42, 179, 63, 379},
	0,
	visible,
	100,
	0,
	32,
	0,
	""
};

resource 'CNTL' (1018, "External Editor Shortcut", purgeable) {
	{69, 179, 90, 379},
	0,
	visible,
	100,
	0,
	32,
	0,
	""
};

resource 'CNTL' (1019, "Members Palette Box", purgeable) {
	{152, 8, 228, 380},
	0,
	visible,
	100,
	0,
	160,
	0,
	"Membes Palette Display"
};

resource 'CNTL' (1020, "Members Palette Display Slider", purgeable) {
	{207, 91, 223, 331},
	64,
	visible,
	64,
	16,
	57,
	0,
	""
};

resource 'CNTL' (1021, "Stroke Location Box", purgeable) {
	{43, 12, 116, 192},
	0,
	visible,
	100,
	0,
	160,
	0,
	"Location"
};

resource 'CNTL' (1022, "Startup Options Popup", purgeable) {
	{252, 12, 268, 372},
	0,
	visible,
	120,
	1022,
	401,
	0,
	"At startup:"
};

resource 'CNTL' (1023, "Scaling Popup", purgeable) {
	{275, 12, 291, 372},
	0,
	visible,
	120,
	1023,
	401,
	0,
	"Scaling:"
};

resource 'CNTL' (1024, "Import Popup", purgeable) {
	{94, 416, 111, 568},
	0,
	visible,
	0,
	1024,
	401,
	0,
	""
};

resource 'DITL' (1000, "Preferences", purgeable) {
	{	/* array DITLarray: 3 elements */
		/* [1] */
		{341, 306, 361, 374},
		Button {
			enabled,
			"OK"
		},
		/* [2] */
		{341, 226, 361, 290},
		Button {
			enabled,
			"Cancel"
		},
		/* [3] */
		{9, 0, 329, 388},
		Control {
			enabled,
			1007
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

resource 'DITL' (1020, purgeable) {
	{	/* array DITLarray: 5 elements */
		/* [1] */
		{44, 232, 64, 302},
		Button {
			enabled,
			"OK"
		},
		/* [2] */
		{44, 138, 64, 208},
		Button {
			enabled,
			"Cancel"
		},
		/* [3] */
		{12, 12, 30, 221},
		StaticText {
			disabled,
			"Expand or contract selection by:"
		},
		/* [4] */
		{13, 225, 29, 253},
		EditText {
			enabled,
			""
		},
		/* [5] */
		{12, 264, 32, 302},
		StaticText {
			disabled,
			"pixels"
		}
	}
};

resource 'DITL' (1021, purgeable) {
	{	/* array DITLarray: 9 elements */
		/* [1] */
		{126, 120, 146, 190},
		Button {
			enabled,
			"OK"
		},
		/* [2] */
		{126, 26, 146, 96},
		Button {
			enabled,
			"Cancel"
		},
		/* [3] */
		{12, 12, 28, 112},
		StaticText {
			disabled,
			"Stroke width:"
		},
		/* [4] */
		{13, 120, 29, 145},
		EditText {
			enabled,
			""
		},
		/* [5] */
		{12, 154, 28, 192},
		StaticText {
			disabled,
			"pixels"
		},
		/* [6] */
		{43, 12, 116, 192},
		Control {
			disabled,
			1021
		},
		/* [7] */
		{61, 18, 77, 118},
		RadioButton {
			enabled,
			"Inside"
		},
		/* [8] */
		{76, 18, 92, 118},
		RadioButton {
			enabled,
			"Center"
		},
		/* [9] */
		{91, 18, 107, 118},
		RadioButton {
			enabled,
			"Outside"
		}
	}
};

resource 'DITL' (1023, purgeable) {
	{	/* array DITLarray: 5 elements */
		/* [1] */
		{101, 498, 121, 568},
		Button {
			enabled,
			"Import"
		},
		/* [2] */
		{101, 410, 121, 480},
		Button {
			enabled,
			"Cancel"
		},
		/* [3] */
		{20, 20, 72, 568},
		StaticText {
			disabled,
			"Iconographer has attempted to match up t"
			"he files you selected to the icon member"
			"s in the following way. If you�d like di"
			"fferent files to be mapped to different "
			"members, please select them from the pop"
			"up menu."
		},
		/* [4] */
		{76, 27, 90, 87},
		StaticText {
			disabled,
			"Icons"
		},
		/* [5] */
		{76, 303, 90, 363},
		StaticText {
			disabled,
			"Masks"
		}
	}
};

resource 'DITL' (1024, purgeable) {
	{	/* array DITLarray: 2 elements */
		/* [1] */
		{1, 20, 17, 136},
		StaticText {
			disabled,
			"Static text"
		},
		/* [2] */
		{0, 140, 17, 292},
		Control {
			enabled,
			1024
		}
	}
};

resource 'DITL' (1100, purgeable) {
	{	/* array DITLarray: 18 elements */
		/* [1] */
		{56, 16, 72, 321},
		CheckBox {
			enabled,
			"Show only loaded members"
		},
		/* [2] */
		{73, 16, 89, 321},
		CheckBox {
			enabled,
			"Check masks when saving"
		},
		/* [3] */
		{90, 16, 106, 321},
		CheckBox {
			enabled,
			"Dither at lower depths"
		},
		/* [4] */
		{232, 8, 322, 380},
		Control {
			enabled,
			1003
		},
		/* [5] */
		{124, 16, 140, 321},
		CheckBox {
			enabled,
			"Automatically resize windows"
		},
		/* [6] */
		{252, 12, 268, 372},
		Control {
			enabled,
			1022
		},
		/* [7] */
		{275, 12, 291, 372},
		Control {
			enabled,
			1023
		},
		/* [8] */
		{152, 8, 228, 380},
		Control {
			enabled,
			1019
		},
		/* [9] */
		{169, 16, 185, 136},
		RadioButton {
			enabled,
			"Full size"
		},
		/* [10] */
		{188, 16, 204, 136},
		RadioButton {
			enabled,
			"Scaled"
		},
		/* [11] */
		{206, 56, 222, 89},
		StaticText {
			disabled,
			"Size:"
		},
		/* [12] */
		{207, 91, 223, 331},
		Control {
			enabled,
			1020
		},
		/* [13] */
		{210, 339, 220, 364},
		EditText {
			enabled,
			"64"
		},
		/* [14] */
		{297, 105, 317, 283},
		Button {
			enabled,
			"Reset Palette Locations"
		},
		/* [15] */
		{40, 8, 148, 380},
		Control {
			enabled,
			1005
		},
		/* [16] */
		{304, 316, 318, 328},
		UserItem {
			enabled
		},
		/* [17] */
		{304, 316, 318, 328},
		UserItem {
			enabled
		},
		/* [18] */
		{107, 16, 123, 321},
		CheckBox {
			enabled,
			"Save extra information with icons"
		}
	}
};

resource 'DITL' (1101, purgeable) {
	{	/* array DITLarray: 51 elements */
		/* [1] */
		{45, 9, 63, 308},
		StaticText {
			disabled,
			"Default zoom level:"
		},
		/* [2] */
		{45, 322, 63, 364},
		StaticText {
			disabled,
			"1000%"
		},
		/* [3] */
		{41, 367, 65, 380},
		Control {
			enabled,
			1000
		},
		/* [4] */
		{75, 9, 95, 377},
		Control {
			enabled,
			1004
		},
		/* [5] */
		{48, 260, 56, 268},
		UserItem {
			enabled
		},
		/* [6] */
		{48, 260, 56, 268},
		UserItem {
			enabled
		},
		/* [7] */
		{48, 260, 56, 268},
		UserItem {
			enabled
		},
		/* [8] */
		{48, 260, 56, 268},
		UserItem {
			enabled
		},
		/* [9] */
		{48, 260, 56, 268},
		UserItem {
			enabled
		},
		/* [10] */
		{48, 260, 56, 268},
		UserItem {
			enabled
		},
		/* [11] */
		{48, 260, 56, 268},
		UserItem {
			enabled
		},
		/* [12] */
		{48, 260, 56, 268},
		UserItem {
			enabled
		},
		/* [13] */
		{48, 260, 56, 268},
		UserItem {
			enabled
		},
		/* [14] */
		{100, 8, 242, 380},
		Control {
			enabled,
			1008
		},
		/* [15] */
		{221, 12, 237, 152},
		Control {
			enabled,
			1104
		},
		/* [16] */
		{122, 12, 138, 152},
		Control {
			enabled,
			1100
		},
		/* [17] */
		{166, 12, 182, 152},
		Control {
			enabled,
			1101
		},
		/* [18] */
		{185, 12, 201, 152},
		Control {
			enabled,
			1102
		},
		/* [19] */
		{203, 12, 219, 152},
		Control {
			enabled,
			1103
		},
		/* [20] */
		{160, 14, 163, 372},
		Control {
			enabled,
			1105
		},
		/* [21] */
		{143, 14, 157, 52},
		StaticText {
			disabled,
			"Hints"
		},
		/* [22] */
		{143, 111, 155, 140},
		StaticText {
			disabled,
			"Icon:"
		},
		/* [23] */
		{143, 147, 155, 178},
		StaticText {
			disabled,
			"32-bit"
		},
		/* [24] */
		{143, 179, 155, 210},
		StaticText {
			disabled,
			"8-bit"
		},
		/* [25] */
		{143, 211, 155, 242},
		StaticText {
			disabled,
			"4-bit"
		},
		/* [26] */
		{143, 243, 155, 274},
		StaticText {
			disabled,
			"1-bit"
		},
		/* [27] */
		{143, 280, 155, 315},
		StaticText {
			disabled,
			"Mask:"
		},
		/* [28] */
		{143, 314, 155, 345},
		StaticText {
			disabled,
			"8-bit"
		},
		/* [29] */
		{143, 346, 155, 377},
		StaticText {
			disabled,
			"1-bit"
		},
		/* [30] */
		{166, 153, 182, 170},
		CheckBox {
			enabled,
			""
		},
		/* [31] */
		{185, 153, 201, 170},
		CheckBox {
			enabled,
			""
		},
		/* [32] */
		{203, 153, 219, 170},
		CheckBox {
			enabled,
			""
		},
		/* [33] */
		{166, 181, 182, 198},
		CheckBox {
			enabled,
			""
		},
		/* [34] */
		{185, 181, 201, 198},
		CheckBox {
			enabled,
			""
		},
		/* [35] */
		{203, 181, 219, 198},
		CheckBox {
			enabled,
			""
		},
		/* [36] */
		{221, 181, 237, 198},
		CheckBox {
			enabled,
			""
		},
		/* [37] */
		{166, 213, 182, 230},
		CheckBox {
			enabled,
			""
		},
		/* [38] */
		{185, 213, 201, 230},
		CheckBox {
			enabled,
			""
		},
		/* [39] */
		{203, 213, 219, 230},
		CheckBox {
			enabled,
			""
		},
		/* [40] */
		{221, 213, 237, 230},
		CheckBox {
			enabled,
			""
		},
		/* [41] */
		{166, 245, 182, 262},
		CheckBox {
			disabled,
			""
		},
		/* [42] */
		{185, 245, 201, 262},
		CheckBox {
			disabled,
			""
		},
		/* [43] */
		{203, 245, 219, 262},
		CheckBox {
			disabled,
			""
		},
		/* [44] */
		{221, 245, 237, 262},
		CheckBox {
			disabled,
			""
		},
		/* [45] */
		{166, 317, 182, 334},
		CheckBox {
			enabled,
			""
		},
		/* [46] */
		{185, 317, 201, 334},
		CheckBox {
			enabled,
			""
		},
		/* [47] */
		{203, 317, 219, 334},
		CheckBox {
			enabled,
			""
		},
		/* [48] */
		{166, 349, 182, 366},
		CheckBox {
			disabled,
			""
		},
		/* [49] */
		{185, 349, 201, 366},
		CheckBox {
			disabled,
			""
		},
		/* [50] */
		{203, 349, 219, 366},
		CheckBox {
			disabled,
			""
		},
		/* [51] */
		{221, 349, 237, 366},
		CheckBox {
			disabled,
			""
		}
	}
};

resource 'DITL' (1102, purgeable) {
	{	/* array DITLarray: 7 elements */
		/* [1] */
		{45, 10, 62, 119},
		StaticText {
			disabled,
			"External editor: "
		},
		/* [2] */
		{42, 179, 63, 379},
		Control {
			enabled,
			1017
		},
		/* [3] */
		{72, 10, 89, 149},
		StaticText {
			disabled,
			"Editor key shortcut:"
		},
		/* [4] */
		{69, 179, 90, 379},
		Control {
			enabled,
			1018
		},
		/* [5] */
		{96, 7, 116, 379},
		Control {
			enabled,
			1016
		},
		/* [6] */
		{120, 9, 136, 169},
		CheckBox {
			enabled,
			"Export icon and mask"
		},
		/* [7] */
		{152, 148, 162, 156},
		UserItem {
			enabled
		}
	}
};

data 'DLGX' (1000) {
	$"0647 656E 6576 6100 0000 0000 0000 0000"            /* .Geneva......... */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0009 0000 0000 0000 0004 0004 0000 0000"            /* ................ */
	$"0003 0000 0000 0000 0000 0000 0000 0001"            /* ................ */
	$"0000 0000 0000 0000 0000 0005 0000 0000"            /* ................ */
	$"0000 0000 0000"                                     /* ...... */
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

data 'DLGX' (1020) {
	$"054F 7361 6B61 0000 0000 0000 0000 0000"            /* .Osaka.......... */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"000C 0000 0000 0000 0004 0004 0000 0000"            /* ................ */
	$"0005 0000 0000 0000 0000 0000 0000 0001"            /* ................ */
	$"0000 0000 0000 0000 0000 0006 0000 0000"            /* ................ */
	$"0000 0000 0000 0007 0000 0000 0000 0000"            /* ................ */
	$"0000 0006 0000 0000 0000 0000 0000"                 /* .............. */
};

data 'DLGX' (1021) {
	$"054F 7361 6B61 0000 0000 0000 0000 0000"            /* .Osaka.......... */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"000C 0000 0000 0000 0004 0004 0000 0000"            /* ................ */
	$"0009 0000 0000 0000 0000 0000 0000 0001"            /* ................ */
	$"0000 0000 0000 0000 0000 0006 0000 0000"            /* ................ */
	$"0000 0000 0000 0007 0000 0000 0000 0000"            /* ................ */
	$"0000 0006 0000 0000 0000 0000 0000 0005"            /* ................ */
	$"0000 0000 0000 0000 0000 0004 0000 0001"            /* ................ */
	$"0000 0000 0000 0004 0000 0001 0000 0000"            /* ................ */
	$"0000 0004 0000 0001 0000 0000 0000"                 /* .............. */
};

data 'DLGX' (1023) {
	$"0843 6861 7263 6F61 6C00 0000 0000 0000"            /* .Charcoal....... */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"000C 0000 0000 0000 0004 0004 0000 0000"            /* ................ */
	$"0005 0000 0000 0000 0000 0000 0000 0001"            /* ................ */
	$"0000 0000 0000 0000 0000 0006 0000 0000"            /* ................ */
	$"0000 0000 0000 0006 0000 0000 0000 0000"            /* ................ */
	$"0000 0006 0000 0000 0000 0000 0000"                 /* .............. */
};

data 'DLGX' (1024) {
	$"0843 6861 7263 6F61 6C00 0000 0000 0000"            /* .Charcoal....... */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"000C 0000 0000 0000 0004 0004 0000 0000"            /* ................ */
	$"0002 0006 0000 0000 0000 0000 0000 0005"            /* ................ */
	$"0000 0000 0000 0000 0000"                           /* .......... */
};

data 'DLGX' (1100) {
	$"0654 6563 686E 6F00 0000 0000 0000 0000"            /* .Techno......... */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"000C 0000 0000 0000 0004 0004 0000 0000"            /* ................ */
	$"0012 0003 0000 0000 0000 0000 0000 0003"            /* ................ */
	$"0000 0000 0000 0000 0000 0003 0000 0000"            /* ................ */
	$"0000 0000 0000 0005 0000 0000 0000 0000"            /* ................ */
	$"0000 0003 0000 0000 0000 0000 0000 0005"            /* ................ */
	$"0000 0000 0000 0000 0000 0005 0000 0000"            /* ................ */
	$"0000 0000 0000 0005 0000 0000 0000 0000"            /* ................ */
	$"0000 0004 0000 0001 0000 0000 0000 0004"            /* ................ */
	$"0000 0001 0000 0000 0000 0006 0000 0000"            /* ................ */
	$"0000 0000 0000 0005 0000 0000 0000 0000"            /* ................ */
	$"0000 0007 0000 0000 0000 0000 0000 0002"            /* ................ */
	$"0000 0000 0000 0000 0000 0005 0000 0000"            /* ................ */
	$"0000 0000 0000 000A 0000 0000 0000 0000"            /* ................ */
	$"0000 000A 0000 0000 0000 0000 0000 0003"            /* ................ */
	$"0000 0000 0000 0000 0000"                           /* .......... */
};

data 'DLGX' (1101) {
	$"0654 6563 686E 6F00 0000 0000 0000 0000"            /* .Techno......... */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"000C 0000 0000 0000 0004 0004 0000 0000"            /* ................ */
	$"0033 0006 0000 0000 0000 0000 0000 0006"            /* .3.............. */
	$"0000 0000 0000 0000 0000 0005 0000 0000"            /* ................ */
	$"0000 0000 0000 0005 0000 0000 0000 0000"            /* ................ */
	$"0000 000A 0000 0000 0000 0000 0000 000A"            /* ................ */
	$"0000 0000 0000 0000 0000 000A 0000 0000"            /* ................ */
	$"0000 0000 0000 000A 0000 0000 0000 0000"            /* ................ */
	$"0000 000A 0000 0000 0000 0000 0000 000A"            /* ................ */
	$"0000 0000 0000 0000 0000 000A 0000 0000"            /* ................ */
	$"0000 0000 0000 000A 0000 0000 0000 0000"            /* ................ */
	$"0000 000A 0000 0000 0000 0000 0000 0005"            /* ................ */
	$"0000 0000 0000 0000 0000 0005 0000 0000"            /* ................ */
	$"0000 0000 0000 0005 0000 0000 0000 0000"            /* ................ */
	$"0000 0005 0000 0000 0000 0000 0000 0005"            /* ................ */
	$"0000 0000 0000 0000 0000 0005 0000 0000"            /* ................ */
	$"0000 0000 0000 0005 0000 0000 0000 0000"            /* ................ */
	$"0000 0006 0000 0000 0000 0000 0000 0006"            /* ................ */
	$"0000 0000 0000 0000 0000 0006 0000 0000"            /* ................ */
	$"0000 0000 0000 0006 0000 0000 0000 0000"            /* ................ */
	$"0000 0006 0000 0000 0000 0000 0000 0006"            /* ................ */
	$"0000 0000 0000 0000 0000 0006 0000 0000"            /* ................ */
	$"0000 0000 0000 0006 0000 0000 0000 0000"            /* ................ */
	$"0000 0006 0000 0000 0000 0000 0000 0003"            /* ................ */
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
	$"0000 0000 0000 0000 0000 0003 0000 0000"            /* ................ */
	$"0000 0000 0000"                                     /* ...... */
};

data 'DLGX' (1102) {
	$"0654 6563 686E 6F00 0000 0000 0000 0000"            /* .Techno......... */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"000C 0000 0000 0000 0004 0004 0000 0000"            /* ................ */
	$"0007 0006 0000 0000 0000 0000 0000 0005"            /* ................ */
	$"0000 0000 0000 0000 0000 0006 0000 0000"            /* ................ */
	$"0000 0000 0000 0005 0000 0000 0000 0000"            /* ................ */
	$"0000 0005 0000 0000 0000 0000 0000 0003"            /* ................ */
	$"0000 0000 0000 0000 0000 000A 0000 0000"            /* ................ */
	$"0000 0000 0000"                                     /* ...... */
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

data 'DLGX' (9999) {
	$"0654 6563 686E 6F00 0000 0000 0000 0000"            /* .Techno......... */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"000C 0000 0000 0000 0004 0004 0000 0000"            /* ................ */
	$"0004 0005 0000 0000 0000 0000 0000 0005"            /* ................ */
	$"8000 0000 0000 0000 0000 0005 0000 0000"            /* �............... */
	$"0000 0000 0000 0005 0000 0000 0000 0000"            /* ................ */
	$"0000"                                               /* .. */
};

resource 'DLOG' (1000, "Preferences", purgeable) {
	{264, 331, 636, 719},
	1043,
	invisible,
	goAway,
	0x0,
	1000,
	"Preferences",
	centerMainScreen
};

resource 'DLOG' (1010, "Adjust", purgeable) {
	{259, 337, 443, 704},
	1043,
	invisible,
	noGoAway,
	0x0,
	1010,
	"Adjust�",
	centerParentWindowScreen
};

resource 'DLOG' (1011, "Adjust: Hue and Saturation", purgeable) {
	{341, 144, 561, 519},
	1024,
	visible,
	goAway,
	0x0,
	1011,
	"DITL 1011 �Adjust: Pane 1� from icnsEdit"
	"orClass.rsrc",
	noAutoCenter
};

resource 'DLOG' (1012, "Adjust: Brightness and Contrast", purgeable) {
	{337, 600, 549, 1015},
	1024,
	visible,
	goAway,
	0x0,
	1012,
	"",
	noAutoCenter
};

resource 'DLOG' (1020, "Expand/Contract", purgeable) {
	{397, 528, 473, 842},
	1043,
	invisible,
	noGoAway,
	0x0,
	1020,
	"Expand/Contract Selection",
	noAutoCenter
};

resource 'DLOG' (1021, "Stroke", purgeable) {
	{300, 200, 460, 408},
	1043,
	invisible,
	noGoAway,
	0x0,
	1021,
	"Stroke Selection",
	noAutoCenter
};

resource 'DLOG' (1023, "Import Members Match-up", purgeable) {
	{299, 243, 440, 831},
	1043,
	invisible,
	goAway,
	0x0,
	1023,
	"Import Entire Icon",
	noAutoCenter
};

resource 'DLOG' (1024, "Import Matchup Single Popup", purgeable) {
	{566, 969, 638, 1361},
	dBoxProc,
	visible,
	goAway,
	0x0,
	1024,
	"",
	noAutoCenter
};

resource 'DLOG' (1100, "Preferences: General Pane", purgeable) {
	{521, 954, 937, 1346},
	dBoxProc,
	visible,
	goAway,
	0x0,
	1100,
	"",
	noAutoCenter
};

resource 'DLOG' (1101, "Preferences: Defaults", purgeable) {
	{300, 200, 597, 588},
	dBoxProc,
	visible,
	goAway,
	0x0,
	1101,
	"",
	noAutoCenter
};

resource 'DLOG' (1102, "Preferences: External Editing", purgeable) {
	{319, 213, 616, 601},
	dBoxProc,
	visible,
	goAway,
	0x0,
	1102,
	"",
	noAutoCenter
};

resource 'MENU' (1022, "Startup Options") {
	1022,
	textMenuProc,
	allEnabled,
	enabled,
	"Untitled",
	{	/* array: 3 elements */
		/* [1] */
		"Create a New Icon", noIcon, noKey, noMark, plain,
		/* [2] */
		"Open an Existing Icon", noIcon, noKey, noMark, plain,
		/* [3] */
		"Do Nothing", noIcon, noKey, noMark, plain
	}
};

resource 'MENU' (1023, "Scaling") {
	1023,
	textMenuProc,
	allEnabled,
	enabled,
	"Untitled",
	{	/* array: 2 elements */
		/* [1] */
		"Blocky", noIcon, noKey, noMark, plain,
		/* [2] */
		"Smooth", noIcon, noKey, noMark, plain
	}
};

resource 'MENU' (1024, "Importing Menu") {
	1024,
	textMenuProc,
	0x7FFFFFFE,
	enabled,
	"Untitled",
	{	/* array: 2 elements */
		/* [1] */
		"-", noIcon, noKey, noMark, plain,
		/* [2] */
		"No File", noIcon, noKey, noMark, 2
	}
};

resource 'cctb' (1024) {
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

resource 'dctb' (1020) {
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

resource 'dctb' (1021) {
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

resource 'dctb' (1023) {
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

resource 'dctb' (1024) {
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

resource 'dctb' (1100) {
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

resource 'dctb' (1101) {
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

resource 'dctb' (1102) {
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

resource 'dlgx' (1021) {
	versionZero {
		15
	}
};

resource 'dlgx' (1023) {
	versionZero {
		15
	}
};

resource 'dlgx' (1100) {
	versionZero {
		15
	}
};

data 'ictb' (1000) {
	$"0000 0000 0000 0000 0000 0000"                      /* ............ */
};

data 'ictb' (1002) {
	$"0000 0000 0000 0000"                                /* ........ */
};

data 'ictb' (1003) {
	$"0000 0000 0000 0000 0007 0014 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"FFFF FFFF FFFF 0000"                                /* ������.. */
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

data 'ictb' (1020) {
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000"                                          /* .... */
};

data 'ictb' (1021) {
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000"                                          /* .... */
};

data 'ictb' (1023) {
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000"                                          /* .... */
};

data 'ictb' (1024) {
	$"0000 0000 0000 0000"                                /* ........ */
};

data 'ictb' (1100) {
	$"0028 0048 0000 0000 0000 0000 0000 0000"            /* .(.H............ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0007 0070 0000 0000"            /* ...........p.... */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 000C 0000"            /* ................ */
	$"0000 0000 FFFF FFFF FFFF 0000 0001 0000"            /* ....������...... */
	$"0009 0000 0000 0000 FFFF FFFF FFFF 0000"            /* ........������.. */
	$"0000 0000 0000 0000 0000 0000 FFFF FFFF"            /* ............���� */
	$"FFFF 0000"                                          /* ��.. */
};

data 'ictb' (1101) {
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0028 00CC 0028 00F4"            /* .........(.�.(.� */
	$"0028 011C 0028 0144 0028 016C 0000 0000"            /* .(...(.D.(.l.... */
	$"0007 0194 0007 01A8 0005 01BC 0005 01D0"            /* ...�...�...�...� */
	$"0005 01E4 0005 01F8 0007 020C 0005 0220"            /* ...�...�.......  */
	$"0005 0234 0000 0000 0000 0000 0000 0000"            /* ...4............ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0003 0000 0000 0000 0000 0001 FFFF"            /* ..............�� */
	$"FFFF FFFF 0002 0000 0000 0000 0003 FFFF"            /* ����..........�� */
	$"FFFF FFFF 0000 0000 0000 0003 0000 0000"            /* ����............ */
	$"0000 0000 0001 FFFF FFFF FFFF 0002 0000"            /* ......������.... */
	$"0000 0000 0003 FFFF FFFF FFFF 0000 0000"            /* ......������.... */
	$"0000 0003 0000 0000 0000 0000 0001 FFFF"            /* ..............�� */
	$"FFFF FFFF 0002 0000 0000 0000 0003 FFFF"            /* ����..........�� */
	$"FFFF FFFF 0000 0000 0000 0003 0000 0000"            /* ����............ */
	$"0000 0000 0001 FFFF FFFF FFFF 0002 0000"            /* ......������.... */
	$"0000 0000 0003 FFFF FFFF FFFF 0000 0000"            /* ......������.... */
	$"0000 0003 0000 0000 0000 0000 0001 FFFF"            /* ..............�� */
	$"FFFF FFFF 0002 0000 0000 0000 0003 FFFF"            /* ����..........�� */
	$"FFFF FFFF 0001 0100 0009 0000 0000 0000"            /* ����............ */
	$"FFFF FFFF FFFF 0000 0001 0100 0009 0000"            /* ������.......... */
	$"0000 0000 FFFF FFFF FFFF 0000 0001 0100"            /* ....������...... */
	$"0009 0000 0000 0000 FFFF FFFF FFFF 0000"            /* ........������.. */
	$"0001 0100 0009 0000 0000 0000 FFFF FFFF"            /* ............���� */
	$"FFFF 0000 0001 0100 0009 0000 0000 0000"            /* ��.............. */
	$"FFFF FFFF FFFF 0000 0001 0100 0009 0000"            /* ������.......... */
	$"0000 0000 FFFF FFFF FFFF 0000 0001 0100"            /* ....������...... */
	$"0009 0000 0000 0000 FFFF FFFF FFFF 0000"            /* ........������.. */
	$"0001 0100 0009 0000 0000 0000 FFFF FFFF"            /* ............���� */
	$"FFFF 0000 0001 0100 0009 0000 0000 0000"            /* ��.............. */
	$"FFFF FFFF FFFF 0000"                                /* ������.. */
};

data 'ictb' (1102) {
	$"0007 001C 0000 0000 0007 0030 0000 0000"            /* ...........0.... */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 FFFF FFFF FFFF 0000"            /* ........������.. */
	$"0000 0000 0000 0000 0000 0000 FFFF FFFF"            /* ............���� */
	$"FFFF 0000"                                          /* ��.. */
};

data 'ictb' (1410) {
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000"                                          /* .... */
};

data 'ictb' (9999) {
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
};

resource 'mctb' (1023) {
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

resource 'mctb' (1024) {
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
