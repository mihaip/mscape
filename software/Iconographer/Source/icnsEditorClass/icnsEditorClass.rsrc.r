/* Resource fork of software/Iconographer/Source/icnsEditorClass/icnsEditorClass.rsrc */
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

data 'Mcmd' (202) {
	$"0000"                                               /* .. */
};

data 'Mcmd' (203) {
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

resource 'STR#' (200, "Basic Strings", purgeable) {
	{	/* array StringArray: 15 elements */
		/* [1] */
		"Untitled",
		/* [2] */
		"The <size> 8-bit and 1-bit masks do not "
		"seem to match. This can cause problems w"
		"hen viewing the icon in the Finder. Shou"
		"ld the <size> 1-bit mask be regenerated?",
		/* [3] */
		"Regenerate Mask",
		/* [4] */
		"Yes",
		/* [5] */
		"No",
		/* [6] */
		"The <size> size does not have a mask. Wi"
		"thout one the icon will not be displayed"
		" properly. Do you wish one to be created"
		" for you?",
		/* [7] */
		"Generate Mask",
		/* [8] */
		"The file <file name> already has informa"
		"tion in its data fork. Saving an icon in"
		"to it will overwrite it. Do you wish to "
		"continue or to select another file to sa"
		"ve into?",
		/* [9] */
		"Choose Another File",
		/* [10] */
		"Click to choose a shortcut",
		/* [11] */
		"Click to choose an external editor",
		/* [12] */
		"Iconographer Support",
		/* [13] */
		"The folder “Iconographer Support” could "
		"not be found. It has been recreated, but"
		" certain features such as the help will "
		"not be available until Iconographer is r"
		"einstalled.",
		/* [14] */
		"An external edtor has not been selected."
		" Please choose one in the preferences di"
		"alog.",
		/* [15] */
		"Open Preferences"
	}
};

resource 'STR#' (201, "Labels", purgeable) {
	{	/* array StringArray: 7 elements */
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
		"Name: “<name>” ID: <ID>",
		/* [7] */
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

resource 'WIND' (200, purgeable) {
	{50, 10, 258, 204},
	1031,
	invisible,
	goAway,
	0x0,
	"",
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

resource 'dlgx' (1000) {
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

resource 'dlgx' (9999) {
	versionZero {
		15
	}
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

data 'ictb' (9999) {
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
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

