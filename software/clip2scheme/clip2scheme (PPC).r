/* Resource fork of software/clip2scheme/clip2scheme (PPC) */
resource 'DITL' (3000, "Basic Alert") {
	{	/* array DITLarray: 2 elements */
		/* [1] */
		{66, 318, 86, 376},
		Button {
			enabled,
			"OK"
		},
		/* [2] */
		{8, 58, 60, 376},
		StaticText {
			disabled,
			"^0 ^1."
		}
	}
};

resource 'DITL' (128, "About Box") {
	{	/* array DITLarray: 3 elements */
		/* [1] */
		{175, 254, 195, 312},
		Button {
			enabled,
			"OK"
		},
		/* [2] */
		{10, 10, 117, 315},
		UserItem {
			disabled
		},
		/* [3] */
		{120, 20, 169, 315},
		StaticText {
			disabled,
			"by Mihai Parparita\nmihai@mscape.com\nhttp"
			"://cafe.ambrosiasw.com/gui-central/"
		}
	}
};

resource 'DITL' (129, "Insert cicn") {
	{	/* array DITLarray: 10 elements */
		/* [1] */
		{126, 402, 146, 460},
		Button {
			enabled,
			"Insert"
		},
		/* [2] */
		{126, 332, 146, 390},
		Button {
			enabled,
			"Cancel"
		},
		/* [3] */
		{30, 250, 50, 460},
		Control {
			enabled,
			128
		},
		/* [4] */
		{60, 250, 80, 460},
		Control {
			enabled,
			132
		},
		/* [5] */
		{92, 407, 108, 457},
		EditText {
			enabled,
			"-14336"
		},
		/* [6] */
		{94, 252, 110, 271},
		StaticText {
			disabled,
			"ID:"
		},
		/* [7] */
		{30, 10, 140, 120},
		UserItem {
			disabled
		},
		/* [8] */
		{30, 130, 140, 240},
		UserItem {
			disabled
		},
		/* [9] */
		{10, 10, 26, 122},
		StaticText {
			disabled,
			"Clipboard:"
		},
		/* [10] */
		{10, 130, 27, 243},
		StaticText {
			disabled,
			"current cicn:"
		}
	}
};

resource 'DITL' (130, "Insert ppat") {
	{	/* array DITLarray: 10 elements */
		/* [1] */
		{110, 317, 130, 375},
		Button {
			enabled,
			"Insert"
		},
		/* [2] */
		{110, 247, 130, 305},
		Button {
			enabled,
			"Cancel"
		},
		/* [3] */
		{30, 163, 50, 373},
		Control {
			enabled,
			200
		},
		/* [4] */
		{162, 13, 194, 45},
		UserItem {
			disabled
		},
		/* [5] */
		{60, 320, 76, 370},
		EditText {
			enabled,
			"-10080"
		},
		/* [6] */
		{62, 167, 78, 186},
		StaticText {
			disabled,
			"ID:"
		},
		/* [7] */
		{30, 10, 94, 74},
		UserItem {
			disabled
		},
		/* [8] */
		{30, 92, 94, 156},
		UserItem {
			disabled
		},
		/* [9] */
		{10, 10, 26, 122},
		StaticText {
			disabled,
			"Clipboard:"
		},
		/* [10] */
		{10, 92, 27, 130},
		StaticText {
			disabled,
			"ppat:"
		}
	}
};

resource 'ALRT' (3000) {
	{40, 40, 138, 421},
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

resource 'MENU' (128) {
	128,
	textMenuProc,
	0x7FFFFFFD,
	enabled,
	apple,
	{	/* array: 2 elements */
		/* [1] */
		"About clip2scheme…", noIcon, noKey, noMark, plain,
		/* [2] */
		"-", noIcon, noKey, noMark, plain
	}
};

resource 'MENU' (129) {
	129,
	textMenuProc,
	0x7FFFFFFB,
	enabled,
	"File",
	{	/* array: 4 elements */
		/* [1] */
		"Insert Clipboard Into cicn…", noIcon, "1", noMark, plain,
		/* [2] */
		"Insert Clipboard Into ppat…", noIcon, "2", noMark, plain,
		/* [3] */
		"-", noIcon, noKey, noMark, plain,
		/* [4] */
		"Quit", noIcon, "Q", noMark, plain
	}
};

resource 'MENU' (130) {
	130,
	textMenuProc,
	0x7FFFFF80,
	disabled,
	"Edit",
	{	/* array: 7 elements */
		/* [1] */
		"Undo", noIcon, "Z", noMark, plain,
		/* [2] */
		"-", noIcon, noKey, noMark, plain,
		/* [3] */
		"Cut", noIcon, "X", noMark, plain,
		/* [4] */
		"Copy", noIcon, "C", noMark, plain,
		/* [5] */
		"Paste", noIcon, "V", noMark, plain,
		/* [6] */
		"Clear", noIcon, noKey, noMark, plain,
		/* [7] */
		"Select All", noIcon, "A", noMark, plain
	}
};

resource 'MENU' (132) {
	132,
	textMenuProc,
	allEnabled,
	enabled,
	"Document Window",
	{	/* array: 8 elements */
		/* [1] */
		"Inactive -14336", noIcon, noKey, noMark, plain,
		/* [2] */
		"Active -14335", noIcon, noKey, noMark, plain,
		/* [3] */
		"Grow Box Inactive -14334", noIcon, noKey, noMark, plain,
		/* [4] */
		"Grow Box Active  -14333", noIcon, noKey, noMark, plain,
		/* [5] */
		"Collapsed Inactive -14332", noIcon, noKey, noMark, plain,
		/* [6] */
		"Collapsed Active -14331", noIcon, noKey, noMark, plain,
		/* [7] */
		"Pressed Widgets -14330", noIcon, noKey, noMark, plain,
		/* [8] */
		"Alernate Zoom Boxes -14329", noIcon, noKey, noMark, plain
	}
};

resource 'MENU' (133) {
	133,
	textMenuProc,
	allEnabled,
	enabled,
	"Dialog",
	{	/* array: 2 elements */
		/* [1] */
		"Inactive -14328", noIcon, noKey, noMark, plain,
		/* [2] */
		"Active -14327", noIcon, noKey, noMark, plain
	}
};

resource 'MENU' (134) {
	134,
	textMenuProc,
	allEnabled,
	enabled,
	"Alert",
	{	/* array: 2 elements */
		/* [1] */
		"Inactive -14326", noIcon, noKey, noMark, plain,
		/* [2] */
		"Active -14325", noIcon, noKey, noMark, plain
	}
};

resource 'MENU' (136) {
	136,
	textMenuProc,
	allEnabled,
	enabled,
	"Movable Alert",
	{	/* array: 2 elements */
		/* [1] */
		"Inactive -14322", noIcon, noKey, noMark, plain,
		/* [2] */
		"Active -14321", noIcon, noKey, noMark, plain
	}
};

resource 'MENU' (137) {
	137,
	textMenuProc,
	allEnabled,
	enabled,
	"Titled Utility Window",
	{	/* array: 7 elements */
		/* [1] */
		"Inactive -14304", noIcon, noKey, noMark, plain,
		/* [2] */
		"Active -14303", noIcon, noKey, noMark, plain,
		/* [3] */
		"Grow Box Inactive -14302", noIcon, noKey, noMark, plain,
		/* [4] */
		"Grow Box Active -14301", noIcon, noKey, noMark, plain,
		/* [5] */
		"Collapsed Inactive -14300", noIcon, noKey, noMark, plain,
		/* [6] */
		"Collapsed Active -14299", noIcon, noKey, noMark, plain,
		/* [7] */
		"Pressed Widgets -14298", noIcon, noKey, noMark, plain
	}
};

resource 'MENU' (138) {
	138,
	textMenuProc,
	allEnabled,
	enabled,
	"Side Utility Window",
	{	/* array: 5 elements */
		/* [1] */
		"Inactive -14296", noIcon, noKey, noMark, plain,
		/* [2] */
		"Active -14295", noIcon, noKey, noMark, plain,
		/* [3] */
		"Collapsed Inactive -14292", noIcon, noKey, noMark, plain,
		/* [4] */
		"Collapsed Active -14291", noIcon, noKey, noMark, plain,
		/* [5] */
		"Pressed Widgets -14290", noIcon, noKey, noMark, plain
	}
};

resource 'MENU' (139) {
	139,
	textMenuProc,
	allEnabled,
	enabled,
	"Titleless Utility Window",
	{	/* array: 4 elements */
		/* [1] */
		"Inactive -14288", noIcon, noKey, noMark, plain,
		/* [2] */
		"Active -14287", noIcon, noKey, noMark, plain,
		/* [3] */
		"Collapsed Inactive -14284", noIcon, noKey, noMark, plain,
		/* [4] */
		"Collapsed Active -14283", noIcon, noKey, noMark, plain
	}
};

resource 'MENU' (140) {
	140,
	textMenuProc,
	allEnabled,
	enabled,
	"Popup Window",
	{	/* array: 2 elements */
		/* [1] */
		"Inactive -12321", noIcon, noKey, noMark, plain,
		/* [2] */
		"Active -12320", noIcon, noKey, noMark, plain
	}
};

resource 'MENU' (142) {
	142,
	textMenuProc,
	allEnabled,
	enabled,
	"Push Button",
	{	/* array: 5 elements */
		/* [1] */
		"Inactive -10240", noIcon, noKey, noMark, plain,
		/* [2] */
		"Active -10239", noIcon, noKey, noMark, plain,
		/* [3] */
		"Pressed -10238", noIcon, noKey, noMark, plain,
		/* [4] */
		"Ring Inactive -10232", noIcon, noKey, noMark, plain,
		/* [5] */
		"Ring Active -10231", noIcon, noKey, noMark, plain
	}
};

resource 'MENU' (145) {
	145,
	textMenuProc,
	allEnabled,
	enabled,
	"Small Bevel Button",
	{	/* array: 6 elements */
		/* [1] */
		"Off Inactive -10176", noIcon, noKey, noMark, plain,
		/* [2] */
		"Off Active -10175", noIcon, noKey, noMark, plain,
		/* [3] */
		"Off Pressed -10174", noIcon, noKey, noMark, plain,
		/* [4] */
		"On Inactive -10173", noIcon, noKey, noMark, plain,
		/* [5] */
		"On Active -10172", noIcon, noKey, noMark, plain,
		/* [6] */
		"On Pressed -10171", noIcon, noKey, noMark, plain
	}
};

resource 'MENU' (146) {
	146,
	textMenuProc,
	allEnabled,
	enabled,
	"Normal Bevel Button",
	{	/* array: 6 elements */
		/* [1] */
		"Off Inactive -10167", noIcon, noKey, noMark, plain,
		/* [2] */
		"Off Active -10166", noIcon, noKey, noMark, plain,
		/* [3] */
		"Off Pressed -10165", noIcon, noKey, noMark, plain,
		/* [4] */
		"On Inactive -10164", noIcon, noKey, noMark, plain,
		/* [5] */
		"On Active -10163", noIcon, noKey, noMark, plain,
		/* [6] */
		"On Pressed -10162", noIcon, noKey, noMark, plain
	}
};

resource 'MENU' (147) {
	147,
	textMenuProc,
	allEnabled,
	enabled,
	"Large Bevel Button",
	{	/* array: 6 elements */
		/* [1] */
		"Off Inactive -10158", noIcon, noKey, noMark, plain,
		/* [2] */
		"Off Active -10157", noIcon, noKey, noMark, plain,
		/* [3] */
		"Off Pressed -10156", noIcon, noKey, noMark, plain,
		/* [4] */
		"On Inactive -10155", noIcon, noKey, noMark, plain,
		/* [5] */
		"On Active -10154", noIcon, noKey, noMark, plain,
		/* [6] */
		"On Pressed -10153", noIcon, noKey, noMark, plain
	}
};

resource 'MENU' (148) {
	148,
	textMenuProc,
	allEnabled,
	enabled,
	"Disclosure Triangle",
	{	/* array: 12 elements */
		/* [1] */
		"Closed Inactive -10112", noIcon, noKey, noMark, plain,
		/* [2] */
		"Closed Active -10111", noIcon, noKey, noMark, plain,
		/* [3] */
		"Closed Pressed -10110", noIcon, noKey, noMark, plain,
		/* [4] */
		"Opening frame one -10109", noIcon, noKey, noMark, plain,
		/* [5] */
		"Opening frame two -10108", noIcon, noKey, noMark, plain,
		/* [6] */
		"Opening frame three -10107", noIcon, noKey, noMark, plain,
		/* [7] */
		"Open Inactive -10104", noIcon, noKey, noMark, plain,
		/* [8] */
		"Open Active -10103", noIcon, noKey, noMark, plain,
		/* [9] */
		"Open Pressed -10102", noIcon, noKey, noMark, plain,
		/* [10] */
		"Closing frame one -10101", noIcon, noKey, noMark, plain,
		/* [11] */
		"Closing frame two -10100", noIcon, noKey, noMark, plain,
		/* [12] */
		"Closing frame three -10099", noIcon, noKey, noMark, plain
	}
};

resource 'MENU' (149) {
	149,
	textMenuProc,
	allEnabled,
	enabled,
	"Little Arrows",
	{	/* array: 4 elements */
		/* [1] */
		"Inactive -10048", noIcon, noKey, noMark, plain,
		/* [2] */
		"Active -10047", noIcon, noKey, noMark, plain,
		/* [3] */
		"Up Pressed -10046", noIcon, noKey, noMark, plain,
		/* [4] */
		"Down Pressed -10045", noIcon, noKey, noMark, plain
	}
};

resource 'MENU' (150) {
	150,
	textMenuProc,
	allEnabled,
	enabled,
	"Tabs",
	{	/* array: 12 elements */
		/* [1] */
		"Large Off Inactive -9984", noIcon, noKey, noMark, plain,
		/* [2] */
		"Large Off Active -9983", noIcon, noKey, noMark, plain,
		/* [3] */
		"Large Pressed -9982", noIcon, noKey, noMark, plain,
		/* [4] */
		"Large On Inactive -9981", noIcon, noKey, noMark, plain,
		/* [5] */
		"Large  On Active -9980", noIcon, noKey, noMark, plain,
		/* [6] */
		"Background Inactive -9978", noIcon, noKey, noMark, plain,
		/* [7] */
		"Background Active -9977", noIcon, noKey, noMark, plain,
		/* [8] */
		"Small Off Inactive -9976", noIcon, noKey, noMark, plain,
		/* [9] */
		"Small Off Active -9975 ", noIcon, noKey, noMark, plain,
		/* [10] */
		"Small Pressed -9974", noIcon, noKey, noMark, plain,
		/* [11] */
		"Small On Inactive -9973", noIcon, noKey, noMark, plain,
		/* [12] */
		"Small On Active -9972", noIcon, noKey, noMark, plain
	}
};

resource 'MENU' (151) {
	151,
	textMenuProc,
	allEnabled,
	enabled,
	"Placard",
	{	/* array: 3 elements */
		/* [1] */
		"Inactive -9792", noIcon, noKey, noMark, plain,
		/* [2] */
		"Active -9791", noIcon, noKey, noMark, plain,
		/* [3] */
		"Pressed -9790", noIcon, noKey, noMark, plain
	}
};

resource 'MENU' (152) {
	152,
	textMenuProc,
	allEnabled,
	enabled,
	"Dialog & Alert Colors",
	{	/* array: 4 elements */
		/* [1] */
		"Dialog Active -9776", noIcon, noKey, noMark, plain,
		/* [2] */
		"Dialog Inactive -9775", noIcon, noKey, noMark, plain,
		/* [3] */
		"Alert Active -9774", noIcon, noKey, noMark, plain,
		/* [4] */
		"Alert Inactive -9773", noIcon, noKey, noMark, plain
	}
};

resource 'MENU' (153) {
	153,
	textMenuProc,
	allEnabled,
	enabled,
	"Finder Header",
	{	/* array: 2 elements */
		/* [1] */
		"Inactive -9568", noIcon, noKey, noMark, plain,
		/* [2] */
		"Active -9567", noIcon, noKey, noMark, plain
	}
};

resource 'MENU' (154) {
	154,
	textMenuProc,
	allEnabled,
	enabled,
	"Icon Colors",
	{	/* array: 4 elements */
		/* [1] */
		"Background -9551", noIcon, noKey, noMark, plain,
		/* [2] */
		"List Non-Sort -9550", noIcon, noKey, noMark, plain,
		/* [3] */
		"List Sort -9549", noIcon, noKey, noMark, plain,
		/* [4] */
		"List Divider -9548", noIcon, noKey, noMark, plain
	}
};

resource 'MENU' (159) {
	159,
	textMenuProc,
	allEnabled,
	enabled,
	"Ghost Thumbs",
	{	/* array: 4 elements */
		/* [1] */
		"Vertical -8272", noIcon, noKey, noMark, plain,
		/* [2] */
		"Horizontal -8271", noIcon, noKey, noMark, plain,
		/* [3] */
		"Small Vertical -8254", noIcon, noKey, noMark, plain,
		/* [4] */
		"Small Horizontal -8253", noIcon, noKey, noMark, plain
	}
};

resource 'MENU' (135) {
	135,
	textMenuProc,
	allEnabled,
	enabled,
	"Movable Dialog",
	{	/* array: 4 elements */
		/* [1] */
		"Inactive -14324", noIcon, noKey, noMark, plain,
		/* [2] */
		"Active -14323", noIcon, noKey, noMark, plain,
		/* [3] */
		"Grow Box Inactive -14310", noIcon, noKey, noMark, plain,
		/* [4] */
		"Grow Box Active -14309", noIcon, noKey, noMark, plain
	}
};

resource 'MENU' (131) {
	131,
	textMenuProc,
	allEnabled,
	enabled,
	"cicn types",
	{	/* array: 31 elements */
		/* [1] */
		"Document Window", noIcon, noKey, noMark, plain,
		/* [2] */
		"Dialog", noIcon, noKey, noMark, plain,
		/* [3] */
		"Alert", noIcon, noKey, noMark, plain,
		/* [4] */
		"Movable Dialog", noIcon, noKey, noMark, plain,
		/* [5] */
		"Movable Alert", noIcon, noKey, noMark, plain,
		/* [6] */
		"Titled Utility  Window", noIcon, noKey, noMark, plain,
		/* [7] */
		"Side Utility Window", noIcon, noKey, noMark, plain,
		/* [8] */
		"Titleless Utility Window", noIcon, noKey, noMark, plain,
		/* [9] */
		"Popup Window", noIcon, noKey, noMark, plain,
		/* [10] */
		"Menubar", noIcon, noKey, noMark, plain,
		/* [11] */
		"Push Button", noIcon, noKey, noMark, plain,
		/* [12] */
		"Progress Bar", noIcon, noKey, noMark, plain,
		/* [13] */
		"Scroll Thumbs", noIcon, noKey, noMark, plain,
		/* [14] */
		"Small Bevel Button", noIcon, noKey, noMark, plain,
		/* [15] */
		"Normal Bevel Button", noIcon, noKey, noMark, plain,
		/* [16] */
		"Large Bevel Button", noIcon, noKey, noMark, plain,
		/* [17] */
		"Disclosure Triangle", noIcon, noKey, noMark, plain,
		/* [18] */
		"Little Arrows", noIcon, noKey, noMark, plain,
		/* [19] */
		"Tabs", noIcon, noKey, noMark, plain,
		/* [20] */
		"Placard", noIcon, noKey, noMark, plain,
		/* [21] */
		"Dialog & Alert Colors", noIcon, noKey, noMark, plain,
		/* [22] */
		"Finder Header", noIcon, noKey, noMark, plain,
		/* [23] */
		"Icon Colors", noIcon, noKey, noMark, plain,
		/* [24] */
		"Checkboxes", noIcon, noKey, noMark, plain,
		/* [25] */
		"Radio Buttons", noIcon, noKey, noMark, plain,
		/* [26] */
		"Horizontal Scrollbar", noIcon, noKey, noMark, plain,
		/* [27] */
		"Vertical Scrollbar", noIcon, noKey, noMark, plain,
		/* [28] */
		"Ghost Thumbs", noIcon, noKey, noMark, plain,
		/* [29] */
		"Pop-up Menu", noIcon, noKey, noMark, plain,
		/* [30] */
		"Sliders", noIcon, noKey, noMark, plain,
		/* [31] */
		"Alert Icons", noIcon, noKey, noMark, plain
	}
};

resource 'MENU' (162) {
	162,
	textMenuProc,
	allEnabled,
	enabled,
	"Alert Icons",
	{	/* array: 3 elements */
		/* [1] */
		"Stop 0", noIcon, noKey, noMark, plain,
		/* [2] */
		"Note 1", noIcon, noKey, noMark, plain,
		/* [3] */
		"Warning 2", noIcon, noKey, noMark, plain
	}
};

resource 'MENU' (161) {
	161,
	textMenuProc,
	0x7DFBDFBF,
	enabled,
	"Sliders",
	{	/* array: 37 elements */
		/* [1] */
		"Horizontal Down-Facing Track Inactive -1"
		"0144", noIcon, noKey, noMark, plain,
		/* [2] */
		"Horizontal Down-Facing Track Active -101"
		"43", noIcon, noKey, noMark, plain,
		/* [3] */
		"Horizontal Down-Facing Track Pressed -10"
		"142", noIcon, noKey, noMark, plain,
		/* [4] */
		"Horizontal Down-Facing Thumbs -10141", noIcon, noKey, noMark, plain,
		/* [5] */
		"Horizontal Down-Facing Tick Mark Inactiv"
		"e -10140", noIcon, noKey, noMark, plain,
		/* [6] */
		"Horizontal Down-Facing Tick Mark Active "
		"-10139", noIcon, noKey, noMark, plain,
		/* [7] */
		"-", noIcon, noKey, noMark, plain,
		/* [8] */
		"Horizontal Up-Facing Track Inactive -101"
		"38", noIcon, noKey, noMark, plain,
		/* [9] */
		"Horizontal Up-Facing Track Active -10137", noIcon, noKey, noMark, plain,
		/* [10] */
		"Horizontal Up-Facing Track Pressed -1013"
		"6", noIcon, noKey, noMark, plain,
		/* [11] */
		"Horizontal Up-Facing Slider Thumbs -1013"
		"5", noIcon, noKey, noMark, plain,
		/* [12] */
		"Horizontal Up-Facing Tick Mark Inactive "
		"-10134", noIcon, noKey, noMark, plain,
		/* [13] */
		"Horizontal Up-Facing Tick Mark Active -1"
		"0133", noIcon, noKey, noMark, plain,
		/* [14] */
		"-", noIcon, noKey, noMark, plain,
		/* [15] */
		"Horizontal Non-Directional Track Inactiv"
		"e -10132", noIcon, noKey, noMark, plain,
		/* [16] */
		"Horizontal Non-Directional Track Active "
		"-10131", noIcon, noKey, noMark, plain,
		/* [17] */
		"Horizontal Non-Directional Track Pressed"
		" -10130", noIcon, noKey, noMark, plain,
		/* [18] */
		"Horizontal Non-Directional Thumbs -10129", noIcon, noKey, noMark, plain,
		/* [19] */
		"-", noIcon, noKey, noMark, plain,
		/* [20] */
		"Vertical Right-Facing Track Inactive -10"
		"128", noIcon, noKey, noMark, plain,
		/* [21] */
		"Vertical Right-Facing Track Active -1012"
		"7", noIcon, noKey, noMark, plain,
		/* [22] */
		"Vertical Right-Facing Track Pressed -101"
		"26", noIcon, noKey, noMark, plain,
		/* [23] */
		"Vertical Right-Facing Thumbs -10125", noIcon, noKey, noMark, plain,
		/* [24] */
		"Vertical Right-Facing Tick Mark Inactive"
		" -10124", noIcon, noKey, noMark, plain,
		/* [25] */
		"Vertical Right-Facing Tick Mark Active -"
		"10123", noIcon, noKey, noMark, plain,
		/* [26] */
		"-", noIcon, noKey, noMark, plain,
		/* [27] */
		"Vertical Left-Facing Track Inactive -101"
		"22", noIcon, noKey, noMark, plain,
		/* [28] */
		"Vertical Left-Facing Track Active -10121", noIcon, noKey, noMark, plain,
		/* [29] */
		"Vertical Left-Facing Track Pressed -1012"
		"0", noIcon, noKey, noMark, plain,
		/* [30] */
		"Vertical Left-Facing Thumbs -10119", noIcon, noKey, noMark, plain,
		/* [31] */
		"Vertical Left Facing Tick Mark Inactive "
		"-10118", noIcon, noKey, noMark, plain,
		/* [32] */
		"Vertical Left Facing Tick Mark Active -1"
		"0117", noIcon, noKey, noMark, plain,
		/* [33] */
		"-", noIcon, noKey, noMark, plain,
		/* [34] */
		"Vertical Non-Directional Track Inactive "
		"-10116", noIcon, noKey, noMark, plain,
		/* [35] */
		"Vertical Non-Directional Track Active -1"
		"0115", noIcon, noKey, noMark, plain,
		/* [36] */
		"Vertical Non-Directional Track Pressed -"
		"10114", noIcon, noKey, noMark, plain,
		/* [37] */
		"Vertical Non-Directional Thumbs -10113", noIcon, noKey, noMark, plain
	}
};

resource 'MENU' (155) {
	155,
	textMenuProc,
	0x7FFFF777,
	enabled,
	"Checkboxes",
	{	/* array: 15 elements */
		/* [1] */
		"Empty Inactive -9504", noIcon, noKey, noMark, plain,
		/* [2] */
		"Empty Active -9503", noIcon, noKey, noMark, plain,
		/* [3] */
		"Empty Pressed -9502", noIcon, noKey, noMark, plain,
		/* [4] */
		"-", noIcon, noKey, noMark, plain,
		/* [5] */
		"Checked Inactive -9501", noIcon, noKey, noMark, plain,
		/* [6] */
		"Checked Active -9500", noIcon, noKey, noMark, plain,
		/* [7] */
		"Checked Pressed -9499", noIcon, noKey, noMark, plain,
		/* [8] */
		"-", noIcon, noKey, noMark, plain,
		/* [9] */
		"Mixed Inactive -9498", noIcon, noKey, noMark, plain,
		/* [10] */
		"Mixed Active -9497", noIcon, noKey, noMark, plain,
		/* [11] */
		"Mixed Pressed -9496", noIcon, noKey, noMark, plain,
		/* [12] */
		"-", noIcon, noKey, noMark, plain,
		/* [13] */
		"Traditional Inactive -9495", noIcon, noKey, noMark, plain,
		/* [14] */
		"Traditional Active -9494", noIcon, noKey, noMark, plain,
		/* [15] */
		"Traditional Pressed -9493", noIcon, noKey, noMark, plain
	}
};

resource 'MENU' (141) {
	141,
	textMenuProc,
	0x7FFFFF77,
	enabled,
	"Menubar",
	{	/* array: 11 elements */
		/* [1] */
		"Menubar Background -12240", noIcon, noKey, noMark, plain,
		/* [2] */
		"Menubar Item -12239", noIcon, noKey, noMark, plain,
		/* [3] */
		"Selected Menubar Item -12238", noIcon, noKey, noMark, plain,
		/* [4] */
		"-", noIcon, noKey, noMark, plain,
		/* [5] */
		"Pull Down Menu Backgound -12237", noIcon, noKey, noMark, plain,
		/* [6] */
		"Selected Pull Down Menu Item -12236", noIcon, noKey, noMark, plain,
		/* [7] */
		"Menu Divider -12235", noIcon, noKey, noMark, plain,
		/* [8] */
		"-", noIcon, noKey, noMark, plain,
		/* [9] */
		"Solo Menu Background -12234", noIcon, noKey, noMark, plain,
		/* [10] */
		"Selected Solo Menu Item -12233", noIcon, noKey, noMark, plain,
		/* [11] */
		"Solo Menu Divider -12231", noIcon, noKey, noMark, plain
	}
};

resource 'MENU' (143) {
	143,
	textMenuProc,
	0x7FFFFFF7,
	enabled,
	"Progress Bar",
	{	/* array: 7 elements */
		/* [1] */
		"Frame Active -10080", noIcon, noKey, noMark, plain,
		/* [2] */
		"Fill Active -10079", noIcon, noKey, noMark, plain,
		/* [3] */
		"Track Active -10078", noIcon, noKey, noMark, plain,
		/* [4] */
		"-", noIcon, noKey, noMark, plain,
		/* [5] */
		"Frame Inactive -10077", noIcon, noKey, noMark, plain,
		/* [6] */
		"Fill Inactive -10076", noIcon, noKey, noMark, plain,
		/* [7] */
		"Track Inactive -10075", noIcon, noKey, noMark, plain
	}
};

resource 'MENU' (144) {
	144,
	textMenuProc,
	0x7FFFFEDB,
	enabled,
	"Scroll Thumbs",
	{	/* array: 11 elements */
		/* [1] */
		"Vertical Active -10208", noIcon, noKey, noMark, plain,
		/* [2] */
		"Vertical Pressed -10207", noIcon, noKey, noMark, plain,
		/* [3] */
		"-", noIcon, noKey, noMark, plain,
		/* [4] */
		"Horizontal Active -10206", noIcon, noKey, noMark, plain,
		/* [5] */
		"Horizontal Pressed -10205", noIcon, noKey, noMark, plain,
		/* [6] */
		"-", noIcon, noKey, noMark, plain,
		/* [7] */
		"Small Vertical Active -8252", noIcon, noKey, noMark, plain,
		/* [8] */
		"Small Vertical Pressed -8251", noIcon, noKey, noMark, plain,
		/* [9] */
		"-", noIcon, noKey, noMark, plain,
		/* [10] */
		"Small Horizontal Active -8250", noIcon, noKey, noMark, plain,
		/* [11] */
		"Small Horizontal Pressed -8249", noIcon, noKey, noMark, plain
	}
};

resource 'MENU' (156) {
	156,
	textMenuProc,
	0x7FFFFF77,
	enabled,
	"Radio Buttons",
	{	/* array: 11 elements */
		/* [1] */
		"Off Inactive -9492", noIcon, noKey, noMark, plain,
		/* [2] */
		"Off Active -9491", noIcon, noKey, noMark, plain,
		/* [3] */
		"Off Pressed -9490", noIcon, noKey, noMark, plain,
		/* [4] */
		"-", noIcon, noKey, noMark, plain,
		/* [5] */
		"On Inactive -9489", noIcon, noKey, noMark, plain,
		/* [6] */
		"On Active -9488", noIcon, noKey, noMark, plain,
		/* [7] */
		"On Pressed -9487", noIcon, noKey, noMark, plain,
		/* [8] */
		"-", noIcon, noKey, noMark, plain,
		/* [9] */
		"Mixed Inactive -9486", noIcon, noKey, noMark, plain,
		/* [10] */
		"Mixed Active -9485", noIcon, noKey, noMark, plain,
		/* [11] */
		"Mixed Pressed -9484", noIcon, noKey, noMark, plain
	}
};

resource 'MENU' (157) {
	157,
	textMenuProc,
	0x7FFFBDEF,
	enabled,
	"Horizontal Scrollbar",
	{	/* array: 19 elements */
		/* [1] */
		"Inactive -8288", noIcon, noKey, noMark, plain,
		/* [2] */
		"Empty -8287", noIcon, noKey, noMark, plain,
		/* [3] */
		"Active -8286", noIcon, noKey, noMark, plain,
		/* [4] */
		"Pressed -8285", noIcon, noKey, noMark, plain,
		/* [5] */
		"-", noIcon, noKey, noMark, plain,
		/* [6] */
		"Double Inactive -8284", noIcon, noKey, noMark, plain,
		/* [7] */
		"Double Empty -8283", noIcon, noKey, noMark, plain,
		/* [8] */
		"Double Active -8282", noIcon, noKey, noMark, plain,
		/* [9] */
		"Double Pressed -8281", noIcon, noKey, noMark, plain,
		/* [10] */
		"-", noIcon, noKey, noMark, plain,
		/* [11] */
		"Small Inactive -8270", noIcon, noKey, noMark, plain,
		/* [12] */
		"Small Empty -8269", noIcon, noKey, noMark, plain,
		/* [13] */
		"Small Active -8268", noIcon, noKey, noMark, plain,
		/* [14] */
		"Small Pressed -8267", noIcon, noKey, noMark, plain,
		/* [15] */
		"-", noIcon, noKey, noMark, plain,
		/* [16] */
		"Small Double Inactive -8266", noIcon, noKey, noMark, plain,
		/* [17] */
		"Small Double Empty -8265", noIcon, noKey, noMark, plain,
		/* [18] */
		"Small Double Active -8264", noIcon, noKey, noMark, plain,
		/* [19] */
		"Small Double Pressed -8263", noIcon, noKey, noMark, plain
	}
};

resource 'MENU' (158) {
	158,
	textMenuProc,
	0x7FFFBDEF,
	enabled,
	"Vertical Scrollbar",
	{	/* array: 19 elements */
		/* [1] */
		"Inactive -8280", noIcon, noKey, noMark, plain,
		/* [2] */
		"Empty -8279", noIcon, noKey, noMark, plain,
		/* [3] */
		"Active -8278", noIcon, noKey, noMark, plain,
		/* [4] */
		"Pressed -8277", noIcon, noKey, noMark, plain,
		/* [5] */
		"-", noIcon, noKey, noMark, plain,
		/* [6] */
		"Double Inactive -8276", noIcon, noKey, noMark, plain,
		/* [7] */
		"Double Empty -8275", noIcon, noKey, noMark, plain,
		/* [8] */
		"Double Active -8274", noIcon, noKey, noMark, plain,
		/* [9] */
		"Double Pressed -8273", noIcon, noKey, noMark, plain,
		/* [10] */
		"-", noIcon, noKey, noMark, plain,
		/* [11] */
		"Small Inactive -8262", noIcon, noKey, noMark, plain,
		/* [12] */
		"Small Empty -8261", noIcon, noKey, noMark, plain,
		/* [13] */
		"Small Active -8260", noIcon, noKey, noMark, plain,
		/* [14] */
		"Small Pressed -8259", noIcon, noKey, noMark, plain,
		/* [15] */
		"-", noIcon, noKey, noMark, plain,
		/* [16] */
		"Small Double Inactive -8258", noIcon, noKey, noMark, plain,
		/* [17] */
		"Small Double Empty -8257", noIcon, noKey, noMark, plain,
		/* [18] */
		"Small Double Active -8256", noIcon, noKey, noMark, plain,
		/* [19] */
		"Small Double Pressed -8255", noIcon, noKey, noMark, plain
	}
};

resource 'MENU' (160) {
	160,
	textMenuProc,
	0x7FFF7777,
	enabled,
	"Popup Menu",
	{	/* array: 19 elements */
		/* [1] */
		"Button Inactive -8208", noIcon, noKey, noMark, plain,
		/* [2] */
		"Button Active -8207", noIcon, noKey, noMark, plain,
		/* [3] */
		"Button Pressed -8206", noIcon, noKey, noMark, plain,
		/* [4] */
		"-", noIcon, noKey, noMark, plain,
		/* [5] */
		"Arrow Inactive -8205", noIcon, noKey, noMark, plain,
		/* [6] */
		"Arrow Active -8204", noIcon, noKey, noMark, plain,
		/* [7] */
		"Arrow Pressed -8203", noIcon, noKey, noMark, plain,
		/* [8] */
		"-", noIcon, noKey, noMark, plain,
		/* [9] */
		"Arrow Only Inactive -8202", noIcon, noKey, noMark, plain,
		/* [10] */
		"Arrow Only Active -8201", noIcon, noKey, noMark, plain,
		/* [11] */
		"Arrow Only Pressed -8200", noIcon, noKey, noMark, plain,
		/* [12] */
		"-", noIcon, noKey, noMark, plain,
		/* [13] */
		"Large Glyph Inactive -8199", noIcon, noKey, noMark, plain,
		/* [14] */
		"Large Glyph Active -8198", noIcon, noKey, noMark, plain,
		/* [15] */
		"Large Glyph Pressed -8197", noIcon, noKey, noMark, plain,
		/* [16] */
		"-", noIcon, noKey, noMark, plain,
		/* [17] */
		"Small Glyph Inactive -8196", noIcon, noKey, noMark, plain,
		/* [18] */
		"Small Glyph Active -8195", noIcon, noKey, noMark, plain,
		/* [19] */
		"Small Glyph Pressed -8194", noIcon, noKey, noMark, plain
	}
};

resource 'MENU' (200) {
	163,
	textMenuProc,
	0x7FFDFEFF,
	enabled,
	"ppat types",
	{	/* array: 20 elements */
		/* [1] */
		"Indeterminate Active #1 -10080", noIcon, noKey, noMark, plain,
		/* [2] */
		"Indeterminate Active #2 -10079", noIcon, noKey, noMark, plain,
		/* [3] */
		"Indeterminate Active #3 -10078", noIcon, noKey, noMark, plain,
		/* [4] */
		"Indeterminate Active #4 -10077", noIcon, noKey, noMark, plain,
		/* [5] */
		"Indeterminate Active #5 -10076", noIcon, noKey, noMark, plain,
		/* [6] */
		"Indeterminate Active #6 -10075", noIcon, noKey, noMark, plain,
		/* [7] */
		"Indeterminate Active #7 -10074", noIcon, noKey, noMark, plain,
		/* [8] */
		"Indeterminate Active #8 -10073", noIcon, noKey, noMark, plain,
		/* [9] */
		"-", noIcon, noKey, noMark, plain,
		/* [10] */
		"Indeterminate Inactive #1 -10072", noIcon, noKey, noMark, plain,
		/* [11] */
		"\0x00Indeterminate Inactive #2 -10071", noIcon, noKey, noMark, plain,
		/* [12] */
		"\0x00Indeterminate Inactive #3 -10070", noIcon, noKey, noMark, plain,
		/* [13] */
		"\0x00Indeterminate Inactive #4 -10069", noIcon, noKey, noMark, plain,
		/* [14] */
		"\0x00Indeterminate Inactive #5 -10068", noIcon, noKey, noMark, plain,
		/* [15] */
		"\0x00Indeterminate Inactive #6 -10067", noIcon, noKey, noMark, plain,
		/* [16] */
		"\0x00Indeterminate Inactive #7 -10066", noIcon, noKey, noMark, plain,
		/* [17] */
		"\0x00Indeterminate Inactive #8 -10065", noIcon, noKey, noMark, plain,
		/* [18] */
		"-", noIcon, noKey, noMark, plain,
		/* [19] */
		"Desktop 17", noIcon, noKey, noMark, plain,
		/* [20] */
		"Utility 42", noIcon, noKey, noMark, plain
	}
};

resource 'BNDL' (128) {
	'c2sc',
	0,
	{	/* array TypeArray: 2 elements */
		/* [1] */
		'FREF',
		{	/* array IDArray: 3 elements */
			/* [1] */
			0, 128,
			/* [2] */
			1, 129,
			/* [3] */
			2, 130
		},
		/* [2] */
		'ICN#',
		{	/* array IDArray: 3 elements */
			/* [1] */
			0, 128,
			/* [2] */
			1, 0,
			/* [3] */
			2, 0
		}
	}
};

resource 'CNTL' (128) {
	{30, 250, 50, 460},
	0,
	visible,
	50,
	131,
	1008,
	0,
	"Type:"
};

resource 'CNTL' (132, "Document Window") {
	{60, 250, 80, 460},
	0,
	visible,
	50,
	132,
	1009,
	0,
	"cicn:"
};

resource 'CNTL' (200, "ppat list") {
	{0, 0, 20, 210},
	0,
	visible,
	50,
	200,
	1009,
	0,
	"ppat: "
};

resource 'DLOG' (128) {
	{88, 131, 295, 460},
	dBoxProc,
	invisible,
	noGoAway,
	0x0,
	128,
	"",
	centerMainScreen
};

resource 'DLOG' (129) {
	{54, 42, 210, 517},
	dBoxProc,
	visible,
	goAway,
	0x0,
	129,
	"",
	alertPositionMainScreen
};

resource 'DLOG' (130) {
	{40, 40, 181, 429},
	dBoxProc,
	visible,
	goAway,
	0x0,
	130,
	"",
	alertPositionMainScreen
};

resource 'FREF' (128) {
	'APPL',
	0,
	""
};

resource 'FREF' (129) {
	'Colr',
	1,
	""
};

resource 'FREF' (130) {
	'****',
	2,
	""
};

resource 'icl4' (128) {
	$"0000 0000 0000 0000 0000 0000 0000 0000"
	$"0000 0000 0000 0000 0000 0000 0000 0000"
	$"0000 0000 000F FFFF FF00 0000 0000 0000"
	$"0000 0000 00FC F01C FDF0 0000 0000 0000"
	$"0000 0000 0FC0 CFCF DDCF 0000 0000 0000"
	$"0000 0000 FC1C 1CFD DCCC F000 0000 0000"
	$"0000 000F C1C1 CCCC CCCC 0F00 0000 0000"
	$"0000 FFFC 1CCC CCCC CC00 FFFF FFFF 0000"
	$"000F 0C0F CCCC CCCC 00CC F000 000F F000"
	$"0FFF CFCF FFCC CC00 CCCC F0CC CCCF CF00"
	$"FDDC 0C0C ADFC 00CC CCCC F0CC CCCF CCF0"
	$"FCAA AAAA ACFD CCCC CFFF FFFF FFCF FFFF"
	$"FDCD F0FD CDFD CCCC CF00 0000 CFCC CCCF"
	$"FCDF 000F DCFD C3CC CF0C CCCC DFCC CCCF"
	$"FDF0 00FD CDFD 333C CF0C DDDC DFCC CCCF"
	$"FCDF 0FDC DCFD 3333 CF0C DCCC DFCC CCCF"
	$"FDCD FDCD CDFD 333D DF0C DCCC DFCC CCCF"
	$"FCDC DCDC DCFD C3DD 0F0C CCCC DFCC CCCF"
	$"FDCD CDCD CDFD CCD0 0FCD DDDD DFCC CCCF"
	$"FCDC DCDC DCFD 0000 CFFF FFFF FFCC CCCF"
	$"FDCD CDCD CDFD 00CC CCDD F0CC CCCC CCCF"
	$"FCDC DCDC DCFD CCCC CCCC FCCC CCCC CCCF"
	$"0FFF FFFF FFDD CCCC CCCC FFFF FFFF FFFF"
	$"0000 0000 00FC CCCC CCCC CDDD F000 0000"
	$"0000 0000 000F CCCC CCCC CCBF 0000 0000"
	$"0000 0000 0000 FCCC CCCC 0BF0 0000 0000"
	$"0000 0000 0000 0FCC CC00 BF00 0000 0000"
	$"0000 0000 0000 00FC 001B F000 0000 0000"
	$"0000 0000 0000 000F 11BF 0000 0000 0000"
	$"0000 0000 0000 0000 FBF0 0000 0000 0000"
	$"0000 0000 0000 0000 0F"
};

resource 'icl8' (128) {
	$"0000 0000 0000 0000 0000 0000 0000 0000"
	$"0000 0000 0000 0000 0000 0000 0000 0000"
	$"0000 0000 0000 0000 0000 0000 0000 0000"
	$"0000 0000 0000 0000 0000 0000 0000 0000"
	$"0000 0000 0000 0000 0000 00FF FFFF FFFF"
	$"FFFF 0000 0000 0000 0000 0000 0000 0000"
	$"0000 0000 0000 0000 0000 FF07 FF02 0907"
	$"FF56 FF00 0000 0000 0000 0000 0000 0000"
	$"0000 0000 0000 0000 00FF 0702 07FF 07FF"
	$"5656 0EFF 0000 0000 0000 0000 0000 0000"
	$"0000 0000 0000 0000 FF07 0907 0907 FF56"
	$"560E 0D0D FF00 0000 0000 0000 0000 0000"
	$"0000 0000 0000 00FF 0709 0709 0E0E 0E0E"
	$"0D0D 0D0D 0CFF 0000 0000 0000 0000 0000"
	$"0000 0000 FFFF FF07 0907 0E0E 0E0E 0D0D"
	$"0D0D 0C0C FFFF FFFF FFFF FFFF 0000 0000"
	$"0000 00FF 00F6 00FF 0E0E 0E0E 0D0D 0D0D"
	$"0C0C 3030 FF00 0000 0000 00FF FF00 0000"
	$"00FF FFFF F6FF F6FF FFFF 0D0D 0D0D 0C0C"
	$"3030 3030 FF00 F6F6 F6F6 F6FF F8FF 0000"
	$"FF33 FAF6 00F6 00F6 FD33 FF0D 0C0C 3030"
	$"3030 3030 FF00 F6F6 F6F6 F6FF F8F8 FF00"
	$"FFF7 FDFD FDFD FDFD FDF7 FF5B 3030 3030"
	$"30FF FFFF FFFF FFFF FFFF F6FF FFFF FFFF"
	$"FF33 F733 FF00 FF33 F733 FF5B 3030 3030"
	$"30FF 0000 0000 0000 2BFF F6F6 F8F8 F8FF"
	$"FFF7 33FF 0000 00FF 33F7 FF5B 30D8 3030"
	$"30FF 002B 2B2B 2B2B 56FF F6F6 F6F6 F8FF"
	$"FF33 FF00 0000 FF33 F733 FF5B D8D8 D830"
	$"30FF 002B FAFA FA2B 56FF F6F6 F6F6 F8FF"
	$"FFF7 33FF 00FF 33F7 33F7 FF5B D8D8 D8D8"
	$"2AFF 002B FAF8 F82B 56FF F6F6 F6F6 F8FF"
	$"FF33 F733 FF33 F733 F733 FF5B D8D8 D856"
	$"56FF 002B FAF8 F82B 56FF F6F6 F6F6 F8FF"
	$"FFF7 33F7 33F7 33F7 33F7 FF5B 2AD8 5656"
	$"24FF 002B 2B2B 2B2B 56FF F6F6 F6F6 F8FF"
	$"FF33 F733 F733 F733 F733 FF56 2A2A 5624"
	$"24FF 2B56 5656 5656 56FF F6F6 F6F6 F8FF"
	$"FFF7 33F7 33F7 33F7 33F7 FF56 2424 2424"
	$"25FF FFFF FFFF FFFF FFFF F6F6 F6F6 F8FF"
	$"FF33 F733 F733 F733 F733 FF56 2424 2525"
	$"4A4A 7B7B FF00 F6F6 F6F6 F6F6 F6F6 F8FF"
	$"FFF7 33F7 33F7 33F7 33F7 FF56 2525 4A4A"
	$"4A4A 4A4A FFF6 F8F8 F8F8 F8F8 F8F8 F8FF"
	$"00FF FFFF FFFF FFFF FFFF 7A7A 4A4A 4A4A"
	$"4A4A 4A4A FFFF FFFF FFFF FFFF FFFF FFFF"
	$"0000 0000 0000 0000 0000 FF4A 4A4A 4A4A"
	$"4A4A 4A4A 2657 5757 FF00 0000 0000 0000"
	$"0000 0000 0000 0000 0000 00FF 4A4A 4A4A"
	$"4A4A 2626 2626 34FF 0000 0000 0000 0000"
	$"0000 0000 0000 0000 0000 0000 FF4A 4A4A"
	$"2626 2626 0234 FF00 0000 0000 0000 0000"
	$"0000 0000 0000 0000 0000 0000 00FF 2626"
	$"2626 0202 34FF 0000 0000 0000 0000 0000"
	$"0000 0000 0000 0000 0000 0000 0000 FF26"
	$"0202 0934 FF00 0000 0000 0000 0000 0000"
	$"0000 0000 0000 0000 0000 0000 0000 00FF"
	$"0909 39FF 0000 0000 0000 0000 0000 0000"
	$"0000 0000 0000 0000 0000 0000 0000 0000"
	$"FF39 FF00 0000 0000 0000 0000 0000 0000"
	$"0000 0000 0000 0000 0000 0000 0000 0000"
	$"00FF"
};

resource 'ICN#' (128) {
	{	/* array: 2 elements */
		/* [1] */
		$"0000 0000 0000 0000 001F C000 0028 A000"
		$"0045 1000 0082 0800 0100 0400 0E00 0FF0"
		$"1100 0818 75C0 0814 A0A0 0812 BFA0 7FDF"
		$"8A20 4041 9124 4041 A22E 4E41 942F 4841"
		$"882E 4841 8024 4041 8020 4041 8020 7FC1"
		$"8020 0801 8020 0801 7FC0 0FFF 0020 0080"
		$"0010 0100 0008 0200 0004 0400 0002 0800"
		$"0001 1000 0000 A000 0000 40",
		/* [2] */
		$"0000 0000 0000 0000 001F C000 003F E000"
		$"007F F000 00FF F800 01FF FC00 0FFF FFF0"
		$"1FFF FFF8 7FFF FFFC FFFF FFFE FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF 7FFF FFFF 003F FF80"
		$"001F FF00 000F FE00 0007 FC00 0003 F800"
		$"0001 F000 0000 E000 0000 40"
	}
};

resource 'ics#' (128) {
	{	/* array: 2 elements */
		/* [1] */
		$"3800 44E0 BA10 9610 AA38 9210 8200 823C"
		$"7C22 0079 0049 0049 0079 0021 003F",
		/* [2] */
		$"3800 7CE0 FE10 FE10 FE38 FE10 FE00 FE3C"
		$"7C3E 007F 007F 007F 007F 003F 003F"
	}
};

resource 'ics4' (128) {
	$"00FF F000 0000 0000 0F00 0F00 3330 0000"
	$"F0AA A0F0 0003 0000 FDDF 0FF0 0003 0000"
	$"FDF0 FDF0 0033 3000 FDDF DDF0 0003 0000"
	$"FDDD DDF0 0000 0000 FDDD DDF0 00FF FF00"
	$"0FFF FF00 00F0 0CF0 0000 0000 0FFF FCCF"
	$"0000 0000 0F0C FCDF 0000 0000 0FCD FCDF"
	$"0000 0000 0FFF FCDF 0000 0000 00FC DDDF"
	$"0000 0000 00FF FFFF"
};

resource 'ics8' (128) {
	$"0000 FFFF FF00 0000 0000 0000 0000 0000"
	$"00FF 0000 00FF 0000 D8D8 D800 0000 0000"
	$"FF00 FDFD FD00 FF00 0000 00D8 0000 0000"
	$"FF33 33FF 00FF FF00 0000 00D8 0000 0000"
	$"FF33 FF00 FF33 FF00 0000 D8D8 D800 0000"
	$"FF33 33FF 3333 FF00 0000 00D8 0000 0000"
	$"FF33 3333 3333 FF00 0000 0000 0000 0000"
	$"FF33 3333 3333 FF00 0000 FFFF FFFF 0000"
	$"00FF FFFF FFFF 0000 0000 FF00 00F8 FF00"
	$"0000 0000 0000 0000 00FF FFFF FFF8 F8FF"
	$"0000 0000 0000 0000 00FF 00F8 FFF8 56FF"
	$"0000 0000 0000 0000 00FF F856 FFF8 56FF"
	$"0000 0000 0000 0000 00FF FFFF FFF8 56FF"
	$"0000 0000 0000 0000 0000 FFF8 5656 56FF"
	$"0000 0000 0000 0000 0000 FFFF FFFF FFFF"
};

resource 'MBAR' (128) {
	{	/* array MenuArray: 3 elements */
		/* [1] */
		128,
		/* [2] */
		129,
		/* [3] */
		130
	}
};

resource 'vers' (1) {
	0x1,
	0x10,
	beta,
	0x0,
	14,
	"1.1b1",
	"©1998 Mihai Parparita"
};

resource 'vers' (2) {
	0x1,
	0x10,
	beta,
	0x0,
	14,
	"1.1",
	"clip2scheme 1.1b1"
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

resource 'dlgx' (129) {
	versionZero {
		9
	}
};

resource 'dlgx' (128) {
	versionZero {
		9
	}
};

resource 'dlgx' (130) {
	versionZero {
		9
	}
};

resource 'PICT' (128) {
	5706,
	{0, 0, 107, 305},
	$"0011 02FF 0C00 FFFE 0000 0048 0000 0048"
	$"0000 0000 0000 006B 0131 0000 0000 00A1"
	$"01F2 0016 3842 494D 0000 0000 0000 006B"
	$"0131 4772 8970 68AF 626A 0001 000A 0000"
	$"0000 006B 0131 0098 8134 0000 0000 006B"
	$"0131 0000 0000 0000 0000 0048 0000 0048"
	$"0000 0000 0008 0001 0008 0000 0000 0000"
	$"0000 0000 0000 0044 A875 0000 00FF 0000"
	$"FFFF FFFF FFFF 0001 6767 6666 6767 0002"
	$"E6E6 E5E5 E6E6 0003 E0E0 DFDF E0E0 0004"
	$"D6D6 D5D5 D6D6 0005 C7C7 C6C6 C7C7 0006"
	$"C4C4 C3C3 C4C4 0007 A3A3 A2A2 A3A3 0008"
	$"2828 2727 2929 0009 1D1D 1D1D 1F1F 000A"
	$"3333 3333 3535 000B 2D2D 2D2D 2E2E 000C"
	$"3535 3535 3636 000D 4747 4747 4848 000E"
	$"7676 7676 7777 000F 5757 5757 5858 0010"
	$"DDDD DDDD DEDE 0011 DBDB DBDB DCDC 0012"
	$"D9D9 D9D9 DADA 0013 D7D7 D7D7 D8D8 0014"
	$"CFCF CFCF D0D0 0015 BBBB BBBB BCBC 0016"
	$"8F8F 8F8F 9090 0017 0B0B 0D0D 1111 0018"
	$"4343 4444 4646 0019 5959 5A5A 5C5C 001A"
	$"5757 5858 5A5A 001B 0E0E 1111 1616 001C"
	$"1B1B 1C1C 1D1D 001D 3131 3232 3333 001E"
	$"3535 3636 3737 001F 4545 4646 4747 0020"
	$"6A6A 6B6B 6C6C 0021 A1A1 A2A2 A3A3 0022"
	$"2F2F 3030 3030 0023 4646 4747 4747 0024"
	$"E3E3 E4E4 E4E4 0025 DFDF E0E0 E0E0 0026"
	$"D3D3 D4D4 D4D4 0027 C9C9 CACA CACA 0028"
	$"C5C5 C6C6 C6C6 0029 B9B9 BABA BABA 002A"
	$"9595 9696 9696 002B 1111 1414 1313 002C"
	$"F8F8 F9F9 F8F8 002D E5E5 E6E6 E5E5 002E"
	$"D3D3 D4D4 D3D3 002F 9C9C 9D9D 9C9C 0030"
	$"D8D8 D9D9 D7D7 0031 0303 0303 0202 0032"
	$"0909 0909 0808 0033 2424 2424 2323 0034"
	$"DEDE DEDE DDDD 0035 DADA DADA D9D9 0036"
	$"C2C2 C2C2 C1C1 0037 B5B5 B5B5 B4B4 0038"
	$"A1A1 A1A1 A0A0 0039 9A9A 9A9A 9999 003A"
	$"1C1C 1A1A 1414 003B 1111 0F0F 0A0A 003C"
	$"3232 2F2F 2828 003D 4242 3E3E 3535 003E"
	$"5656 5151 4646 003F 0B0B 0A0A 0808 0040"
	$"5C5C 5656 4A4A 0041 3F3F 3B3B 3333 0042"
	$"CDCD C0C0 A7A7 0043 CCCC BFBF A6A6 0044"
	$"CBCB BEBE A5A5 0045 B8B8 ADAD 9696 0046"
	$"AEAE A3A3 8E8E 0047 ABAB A0A0 8B8B 0048"
	$"D3D3 C6C6 ADAD 0049 D0D0 C3C3 AAAA 004A"
	$"CFCF C2C2 A9A9 004B C5C5 B9B9 A1A1 004C"
	$"C0C0 B4B4 9D9D 004D AFAF A4A4 8F8F 004E"
	$"9A9A 9191 7E7E 004F 6363 5D5D 5151 0050"
	$"2121 1F1F 1B1B 0051 CACA BEBE A6A6 0052"
	$"C3C3 B7B7 A0A0 0053 3838 3434 2D2D 0054"
	$"7171 6969 5B5B 0055 D5D5 C7C7 ADAD 0056"
	$"D3D3 C5C5 ABAB 0057 D0D0 C2C2 A9A9 0058"
	$"CCCC BEBE A5A5 0059 8585 7C7C 6C6C 005A"
	$"4A4A 4545 3C3C 005B C9C9 BCBC A4A4 005C"
	$"C7C7 BABA A2A2 005D C6C6 B9B9 A1A1 005E"
	$"C4C4 B7B7 A0A0 005F C3C3 B6B6 9F9F 0060"
	$"A7A7 9C9C 8888 0061 8C8C 8383 7272 0062"
	$"DADA CCCC B2B2 0063 D6D6 C8C8 AFAF 0064"
	$"CDCD C0C0 A8A8 0065 CACA BDBD A5A5 0066"
	$"BDBD B1B1 9B9B 0067 B6B6 AAAA 9595 0068"
	$"A4A4 9999 8686 0069 9E9E 9494 8181 006A"
	$"C0C0 B4B4 9E9E 006B 2424 2121 1C1C 006C"
	$"7878 6F6F 6060 006D 5F5F 5858 4C4C 006E"
	$"7D7D 7474 6565 006F 2929 2626 2121 0070"
	$"D0D0 C1C1 A9A9 0071 C8C8 BABA A2A2 0072"
	$"C9C9 BBBB A4A4 0073 C7C7 B9B9 A2A2 0074"
	$"C2C2 B4B4 9E9E 0075 BCBC AFAF 9999 0076"
	$"CFCF C1C1 A9A9 0077 C0C0 B3B3 9D9D 0078"
	$"B2B2 A6A6 9292 0079 A0A0 9595 8383 007A"
	$"7373 6B6B 5E5E 007B 6969 6262 5656 007C"
	$"2C2C 2929 2424 007D CFCF C1C1 AAAA 007E"
	$"9292 8888 7878 007F 1717 1313 0D0D 0080"
	$"D0D0 C1C1 AAAA 0081 5353 4D4D 4444 0082"
	$"4646 4040 3838 0083 0303 0202 0101 0084"
	$"0505 0404 0303 0085 0E0E 0C0C 0A0A 0086"
	$"0707 0606 0505 0087 0D0D 0909 0707 0088"
	$"1818 1414 1313 0089 4D4D 4C4C 4C4C 008A"
	$"6C6C 6B6B 6B6B 008B D6D6 D5D5 D5D5 008C"
	$"D2D2 D1D1 D1D1 008D C0C0 BFBF BFBF 008E"
	$"8282 8181 8181 008F FDFD FDFD FDFD 0090"
	$"FAFA FAFA FAFA 0091 F6F6 F6F6 F6F6 0092"
	$"F3F3 F3F3 F3F3 0093 F1F1 F1F1 F1F1 0094"
	$"F0F0 F0F0 F0F0 0095 EFEF EFEF EFEF 0096"
	$"EEEE EEEE EEEE 0097 ECEC ECEC ECEC 0098"
	$"EAEA EAEA EAEA 0099 E8E8 E8E8 E8E8 009A"
	$"E6E6 E6E6 E6E6 009B E5E5 E5E5 E5E5 009C"
	$"E3E3 E3E3 E3E3 009D E0E0 E0E0 E0E0 009E"
	$"DEDE DEDE DEDE 009F DDDD DDDD DDDD 00A0"
	$"DCDC DCDC DCDC 00A1 DBDB DBDB DBDB 00A2"
	$"D9D9 D9D9 D9D9 00A3 D7D7 D7D7 D7D7 00A4"
	$"D6D6 D6D6 D6D6 00A5 D4D4 D4D4 D4D4 00A6"
	$"D2D2 D2D2 D2D2 00A7 D1D1 D1D1 D1D1 00A8"
	$"CECE CECE CECE 00A9 CCCC CCCC CCCC 00AA"
	$"CBCB CBCB CBCB 00AB C9C9 C9C9 C9C9 00AC"
	$"C4C4 C4C4 C4C4 00AD C3C3 C3C3 C3C3 00AE"
	$"C1C1 C1C1 C1C1 00AF C0C0 C0C0 C0C0 00B0"
	$"BFBF BFBF BFBF 00B1 BEBE BEBE BEBE 00B2"
	$"BDBD BDBD BDBD 00B3 BCBC BCBC BCBC 00B4"
	$"BBBB BBBB BBBB 00B5 B9B9 B9B9 B9B9 00B6"
	$"B7B7 B7B7 B7B7 00B7 B6B6 B6B6 B6B6 00B8"
	$"B3B3 B3B3 B3B3 00B9 B1B1 B1B1 B1B1 00BA"
	$"B0B0 B0B0 B0B0 00BB AFAF AFAF AFAF 00BC"
	$"ADAD ADAD ADAD 00BD AAAA AAAA AAAA 00BE"
	$"A9A9 A9A9 A9A9 00BF A6A6 A6A6 A6A6 00C0"
	$"A4A4 A4A4 A4A4 00C1 9F9F 9F9F 9F9F 00C2"
	$"9E9E 9E9E 9E9E 00C3 9A9A 9A9A 9A9A 00C4"
	$"9999 9999 9999 00C5 9797 9797 9797 00C6"
	$"9595 9595 9595 00C7 9393 9393 9393 00C8"
	$"9090 9090 9090 00C9 8F8F 8F8F 8F8F 00CA"
	$"8D8D 8D8D 8D8D 00CB 8A8A 8A8A 8A8A 00CC"
	$"8888 8888 8888 00CD 8787 8787 8787 00CE"
	$"8484 8484 8484 00CF 8282 8282 8282 00D0"
	$"8080 8080 8080 00D1 7D7D 7D7D 7D7D 00D2"
	$"7A7A 7A7A 7A7A 00D3 7878 7878 7878 00D4"
	$"7474 7474 7474 00D5 7171 7171 7171 00D6"
	$"6F6F 6F6F 6F6F 00D7 6969 6969 6969 00D8"
	$"6868 6868 6868 00D9 6565 6565 6565 00DA"
	$"6262 6262 6262 00DB 6060 6060 6060 00DC"
	$"5E5E 5E5E 5E5E 00DD 5C5C 5C5C 5C5C 00DE"
	$"5959 5959 5959 00DF 5555 5555 5555 00E0"
	$"5252 5252 5252 00E1 4F4F 4F4F 4F4F 00E2"
	$"4A4A 4A4A 4A4A 00E3 4444 4444 4444 00E4"
	$"4343 4343 4343 00E5 4141 4141 4141 00E6"
	$"3D3D 3D3D 3D3D 00E7 3B3B 3B3B 3B3B 00E8"
	$"3636 3636 3636 00E9 3535 3535 3535 00EA"
	$"3333 3333 3333 00EB 3131 3131 3131 00EC"
	$"2A2A 2A2A 2A2A 00ED 2828 2828 2828 00EE"
	$"2626 2626 2626 00EF 2121 2121 2121 00F0"
	$"2020 2020 2020 00F1 1F1F 1F1F 1F1F 00F2"
	$"1C1C 1C1C 1C1C 00F3 1B1B 1B1B 1B1B 00F4"
	$"1A1A 1A1A 1A1A 00F5 1616 1616 1616 00F6"
	$"1313 1313 1313 00F7 1010 1010 1010 00F8"
	$"0E0E 0E0E 0E0E 00F9 0D0D 0D0D 0D0D 00FA"
	$"0A0A 0A0A 0A0A 00FB 0707 0707 0707 00FC"
	$"0606 0606 0606 00FD 0505 0505 0505 00FE"
	$"0404 0404 0404 00FF 0000 0000 0000 0000"
	$"0000 006B 0131 0000 0000 006B 0131 0000"
	$"0008 81FF 81FF D0FF FE00 0008 81FF 81FF"
	$"D0FF FE00 0008 81FF 81FF D0FF FE00 0013"
	$"A2FF 07EE 38F4 FADB EDFA 31E8 FF81 FFD0"
	$"FFFE 0000 18A4 FF0C F7D2 9700 07FF DAAC"
	$"C5D6 E3EF F9EB FF81 FFD0 FFFE 0000 1DA5"
	$"FF11 DFA4 0098 A19A EBF9 B6AC B6B9 2FCB"
	$"D5E4 F631 EFFF 81FF D0FF FE00 001F A7FF"
	$"13E8 B400 959D A09F 35B4 FFE1 9D27 05AE"
	$"B4B6 ACC7 33EF FF81 FFD0 FFFE 0000 23A9"
	$"FF05 F1C6 9091 9CA0 FE9F 0EA0 9ADF FF07"
	$"3514 A8A4 B4DD 32FF 33F1 F1FF 81FF D0FF"
	$"FE00 0024 ABFF 0532 D69A 0099 A0FC 9F0F"
	$"A035 A7FD EB96 0335 8EF2 FFF5 0FD9 DEF9"
	$"F2FF 81FF D0FF FE00 0022 ACFF 0489 1400"
	$"979E F99F 0EA0 9CD0 FFC3 B6E8 FFFC E2DA"
	$"D3C7 C3DF F2FF 81FF D0FF FE00 0023 AEFF"
	$"0522 B800 949D A0F7 9F0E 359D F2F8 FFFF"
	$"E7DA D4CA 07B5 28BF EFF3 FF81 FFD0 FFFE"
	$"0000 23B0 FF05 F4C8 9190 24A0 F59F 0EA0"
	$"A138 FF1F CE0E CDC3 B8AC 1413 A80E F3FF"
	$"81FF D0FF FE00 0023 B2FF 0531 D99D 0099"
	$"A0F2 9F0E A199 2EB8 0707 B9AE A8A4 359F"
	$"9E29 E7F4 FF81 FFD0 FFFE 0000 22B3 FF04"
	$"E405 0097 03EF 9F0E A2A5 AAAC 28AA A535"
	$"A09F 9F9E A3C7 32F5 FF81 FFD0 FFFE 0000"
	$"21B5 FF05 ECBD 0092 9CA0 ED9F 0535 13A4"
	$"A335 A1FD 9F03 9E9F 8D89 F5FF 81FF D0FF"
	$"FE00 001A B5FF 03AC 8F9B A0EA 9FFE A0FA"
	$"9F03 9EA0 BFF5 F6FF 81FF D0FF FE00 0018"
	$"B5FF 031F 939A A0F1 9F00 A0EF 9F01 278A"
	$"F6FF 81FF D0FF FE00 001E B4FF 02B9 959E"
	$"F59F 05A0 A1A3 A3A2 A0F1 9F03 9E9F BBEE"
	$"F7FF 81FF D0FF FE00 001F B4FF 03EC 9399"
	$"A1F7 9F07 359F B0A5 ABA8 A3A0 F09F 01A6"
	$"CFF7 FF81 FFD0 FFFE 0000 23B3 FF02 CC95"
	$"9DF9 9F0A A1A2 A8D2 F4CA BCB7 ABA3 A0F2"
	$"9F03 9E9F B4E5 F8FF 81FF D0FF FE00 0026"
	$"B3FF 03F7 9D97 A0FC 9F0C A013 A0C6 0BFF"
	$"FEF5 C8C3 B714 35F1 9F03 9EA2 C6FA F9FF"
	$"81FF D0FF FE00 0026 B2FF 15D8 9124 A09F"
	$"9FA0 3503 BDE3 FFFF B4E2 FFE6 D1C2 AE8B"
	$"A1F0 9F01 28DE F9FF 81FF D0FF FE00 0027"
	$"B1FF 14AC 97A0 9FA1 A1B0 DAFA FF8E 0094"
	$"C5FA FDDB CDBB A935 F19F 039E 11BF F4FA"
	$"FF81 FFD0 FFFE 0000 26B1 FF15 E692 9BA3"
	$"2E8E F2FF E400 9135 AAB4 DCFF EED4 C5B4"
	$"2EA1 F09F 0127 D6FA FF81 FFD0 FFFE 0000"
	$"28B0 FF15 BF96 C3EA FFF9 9B00 9DA9 A9A8"
	$"AAC0 F4FF E0D0 BE05 A2A0 F29F FF9E 01B7"
	$"22FB FF81 FFD0 FFFE 0000 28B0 FF15 F2DF"
	$"FFFF BC00 9914 A9A8 AB2E AAB0 D5FF F5D6"
	$"C8B7 A7A1 F19F 039E 8BCD FDFC FF81 FFD0"
	$"FFFE 0000 27AE FF14 D600 948B A9A8 2737"
	$"BF95 AAA9 B9EB FFE3 D207 ADA4 A0F2 9F03"
	$"9E9F 15E4 FCFF 81FF D0FF FE00 0029 B0FF"
	$"161D 002C A0A9 A9AA B0C4 CDB5 92A2 A828"
	$"CCFD FA01 CA37 A835 F19F 039E 352F F8FD"
	$"FF81 FFD0 FFFE 0000 29B1 FF18 A400 9CA8"
	$"A9A9 2807 CBC6 BCBD A192 A8A9 B70D FFEB"
	$"0EC3 B1A5 A1F0 9F01 05DC FDFF 81FF D0FF"
	$"FE00 0032 BAFF 00F8 FBFF 1B2F 0098 14A9"
	$"A8AB BCCA C9BF BDBD BF29 969D A9AB 2FF7"
	$"31DC CEBC 2735 A0F2 9F03 9E10 BEF2 FEFF"
	$"81FF D0FF FE00 002E B5FF 0BDD 0092 A3A9"
	$"A827 B5C7 CA38 BCFD BD0D BF14 9114 A9B4"
	$"DBFF F0D5 C529 A6A1 F19F 0234 14D3 FEFF"
	$"81FF D0FF FE00 002E B6FF 0A92 8F9F A9A9"
	$"AAAE 2FCB C3BC FBBD 0DBE B799 98AA A9BE"
	$"EFFF E1D0 BF28 13F1 9F05 9E9F B7E9 FFFF"
	$"81FF D0FF FE00 002A B6FF 07D9 00A7 AA05"
	$"BECC C7F7 BD0D BF05 922E A9AE D231 F6D6"
	$"C837 1435 F19F 049E 8BCB FEFF 81FF D0FF"
	$"FE00 002A B6FF 0731 9D24 A9AB 2FCA BBF7"
	$"BD0E BEBB 9D95 A9A9 BAE9 FFE7 D338 36A4"
	$"A1F1 9F03 9E36 89FF 81FF D0FF FE00 002A"
	$"B5FF 07E7 00A6 A829 C8C1 BCF7 BD0E BF36"
	$"92A1 A928 C931 32D9 CBB9 A8A2 A0F2 9F03"
	$"9E12 C1F6 81FF D0FF FE00 0025 B4FF 05B5"
	$"96A8 A8C0 CAF5 BD0D BEA3 92A8 A8B5 E0FF"
	$"220E C3B2 A5A1 F09F 0105 DA81 FFD0 FFFE"
	$"0000 2BB4 FF07 F300 A3A8 AFC7 C3BC F7BD"
	$"0EBE B598 9CA9 272F F6FF 0FCE BD27 A2A0"
	$"F29F 029D A0BE 0033 82FF D0FF FE00 002C"
	$"B3FF 06CB 2C14 A8BC CABE F7BD 0EBE BF24"
	$"2C14 A9B2 01FF F2D5 C629 A6A1 F49F 049E"
	$"11A9 070F 00F7 82FF D0FF FE00 002D B3FF"
	$"07FD 959F A9AC C4C6 BCF9 BD10 BFAF 9790"
	$"9DA9 A8A8 BDEC FF89 CEBD 2713 A0F5 9F04"
	$"8BB8 D7F2 FF81 FFD0 FFFE 0000 31B2 FF06"
	$"DC00 A714 37CA C0FB BD12 BFB6 9D8F 99A7"
	$"27A8 28BD CAF2 FFF3 D0BF 28A3 A0F8 9F07"
	$"03A2 15D1 0BFE FFFF 81FF D0FF FE00 0033"
	$"B1FF 0613 9BA8 2738 C9BC FEBD 14BE BB2E"
	$"9094 A527 A9AA 37C3 E4FF 31EF DECE BCAB"
	$"A3A0 FA9F 0503 A1AD C6E3 FAFD FF81 FFD0"
	$"FFFE 0000 32B1 FF1D 2200 A5A8 29C8 2FBC"
	$"BDBE 0592 2CA2 AAA9 A8B3 C1DB FFFF F50D"
	$"D6CD 07B2 A735 FB9F 059E A014 BEDE F6FB"
	$"FF81 FFD0 FFFE 0000 30B0 FF1C BB92 A8A8"
	$"BECA BEB2 988F 9DA8 AAA8 3607 D1F6 FFF9"
	$"E7D8 D1C7 BCAE A7A2 A0FC 9F04 9EA3 37D6"
	$"F0F9 FF81 FFD0 FFFE 0000 30B0 FF1B F78F"
	$"A4A9 AEC6 AD8F 98A6 27A8 ABBC C80B FFFB"
	$"0BDD 0EC9 BFB3 27A5 35A0 FD9F 0503 35B1"
	$"CE0A FCF8 FF81 FFD0 FFFE 0000 2EAF FF19"
	$"D18F A714 BD94 A427 A9A8 B62F E2FF FFF1"
	$"E1D5 CC07 B728 A613 A1A0 FE9F 059E A105"
	$"C3E2 F9F6 FF81 FFD0 FFFE 0000 2CAF FF17"
	$"FD94 03A9 14A9 A9A8 B138 D731 FFF6 E4D6"
	$"CFC4 BAAD 14A3 35A0 FE9F 059E A08C BCDC"
	$"F5F4 FF81 FFD0 FFFE 0000 28AE FF14 8900"
	$"A7AA A8AD BFCE F3FF FFE9 8AD3 C7BD B0A8"
	$"8BA2 A0FD 9F04 9E30 B6D5 EEF2 FF81 FFD0"
	$"FFFE 0000 25AD FF05 AA98 ABB9 C6E8 FDFF"
	$"07E8 2FBC B5AB 2EA2 A1FD 9F05 0335 AFCB"
	$"E732 F1FF 81FF D0FF FE00 0021 ADFF 03EE"
	$"00C4 E0FA FF05 38A6 1413 A1A0 FE9F 059E"
	$"A127 38E1 F7EF FF81 FFD0 FFFE 0000 1BAC"
	$"FF01 D7FC F9FF 03E8 989B A1FC 9F03 2EBA"
	$"D9F4 EDFF 81FF D0FF FE00 0016 A1FF 0AC0"
	$"9303 9F9F 0313 290E EC31 ECFF 81FF D0FF"
	$"FE00 0014 A1FF 08F2 9798 9FA1 36CA E5FA"
	$"EAFF 81FF D0FF FE00 0018 E6FF 0353 597E"
	$"3DBF FF05 D193 A7BF DFF6 E8FF 81FF D0FF"
	$"FE00 0021 F3FF 04E6 D0C7 D8FA FBFF 066B"
	$"6E5F 4948 457C C0FF 03F9 1301 09E6 FF81"
	$"FFD0 FFFE 0000 23F4 FF06 2235 968B A0C4"
	$"31FE FF08 7F4F 6967 5D43 5E57 59BF FF01"
	$"F1FE E5FF 81FF D0FF FE00 001F F4FF 13C4"
	$"91CB E0DA 360E FFFF 8381 6D6B 863C 7E64"
	$"715D 41A2 FF81 FFD0 FFFE 0000 20F4 FF14"
	$"B1BC 89A2 B1D7 1401 EC84 FF17 0D0F 1C7F"
	$"4744 764E 86A3 FF81 FFD0 FFFE 0000 20F4"
	$"FF14 C0C4 D000 00DC ACA5 BBC8 CB38 ADAB"
	$"C9FE 7B55 6543 3EA3 FF81 FFD0 FFFE 0000"
	$"21F4 FF15 E08B DFBC C3DC 9897 0325 9D35"
	$"35A2 8DEF 7C68 5F63 677F A4FF 81FF D0FF"
	$"FE00 0020 F3FF 0505 B2D7 CD9D 96FE 9D0B"
	$"9E13 A2A5 CEFF 0988 6F4F 6854 A4FF 81FF"
	$"D0FF FE00 0021 F3FF 15BC 0093 9298 9E03"
	$"03A2 8B8B 370F FFE2 A206 CA1B 814C 6FA5"
	$"FF81 FFD0 FFFE 0000 24F6 FF18 3B7F FD36"
	$"9224 9E03 9D03 358B AFD2 F8FB D199 0000"
	$"9022 6C62 59A5 FF81 FFD0 FFFE 0000 25F7"
	$"FF10 816E 8723 979A 9E9D 0312 13A9 C808"
	$"FFDD A6FD 0005 AA85 6870 4B3D A6FF 81FF"
	$"D0FF FE00 0026 F9FF 107C 6161 3AEE AC94"
	$"039D A0A2 A6BF 1FFF E637 FB00 0616 6B74"
	$"4B76 4E84 A7FF 81FF D0FF FE00 0027 FBFF"
	$"113F 7B77 6083 1F26 2C24 03A1 3029 D9FF"
	$"F2C6 94FA 0006 1A81 495F 5D58 3EA7 FF81"
	$"FFD0 FFFE 0000 27FB FF0F 6E48 4840 1CA1"
	$"8F2D 9F10 288E F2FF D503 F900 0899 F361"
	$"645E 5F43 473A A8FF 81FF D0FF FE00 0026"
	$"FCFF 0E86 4664 7282 2292 2C02 8B39 0CFF"
	$"8905 F700 03B2 8678 5BFE 5E01 767A A8FF"
	$"81FF D0FF FE00 0026 FCFF 0D31 6149 4A6E"
	$"FF2A 98AD DBFB 08C0 2CF6 0009 D17C 4B4B"
	$"5E5E 5F65 756F A9FF 81FF D0FF FE00 0022"
	$"FBFF 0A53 7564 5E82 FF0B 17FF FF28 F500"
	$"0390 E46D 76FC 5E01 4959 A9FF 81FF D0FF"
	$"FE00 0023 FAFF 096C 7644 666E 5A7B 81EC"
	$"92F5 0003 03F6 7E42 FD5E 0352 714B 3DAA"
	$"FF81 FFD0 FFFE 0000 22FA FF08 5078 4371"
	$"4365 565A 19F4 0003 3784 4573 FC5E 0352"
	$"644E 84AB FF81 FFD0 FFFE 0000 20F9 FF07"
	$"4F42 4B5E 7145 86C2 F400 030E 5372 4BFB"
	$"5E02 5D43 3EAB FF81 FFD0 FFFE 0000 21F9"
	$"FF07 8569 765F 434E 3113 F500 032C 0A54"
	$"64FA 5E03 5F42 463A ACFF 81FF D0FF FE00"
	$"001E F8FF 065A 715C 644F 1E91 F500 0304"
	$"2B69 64F8 5E01 577A ACFF 81FF D0FF FE00"
	$"001F F8FF 0584 6149 5B3C D4F4 0003 217F"
	$"665C F95E 035F 6575 6FAD FF81 FFD0 FFFE"
	$"0000 1BF7 FF04 5377 6732 C0F4 0002 D83D"
	$"4AF6 5E01 4959 ADFF 81FF D0FF FE00 0022"
	$"F6FF 076E 79FF 0A20 BDA4 91F9 0004 92EC"
	$"6C64 52F8 5E03 5F71 5E41 AEFF 81FF D0FF"
	$"FE00 0025 F6FF 0B6B 6869 4F3C 87FB 180E"
	$"B735 8FFD 0003 A9FC 6051 F65E 035F 644E"
	$"FDAF FF81 FFD0 FFFE 0000 24F5 FF12 4F63"
	$"565E 4659 3E6B 86F1 E0CB 369A 00C7 6B77"
	$"5DF5 5E02 4B43 40AF FF81 FFD0 FFFE 0000"
	$"24F5 FF11 3F69 764B 4376 4977 686C 827F"
	$"310B D81D 3E64 F45E 035F 424D 7FB0 FF81"
	$"FFD0 FFFE 0000 21F4 FF10 5A5D 5C5F 525E"
	$"5C42 7665 454E 7B3C 3B61 64F2 5E01 4A54"
	$"B0FF 81FF D0FF FE00 0021 F4FF 0331 6149"
	$"5FFC 5E07 4B65 4249 4B4D 664B F35E 035F"
	$"6575 3CB1 FF81 FFD0 FFFE 0000 1EF3 FF03"
	$"3C75 655F FC5E FF52 035E 5C44 5DF1 5E02"
	$"5249 7AB1 FF81 FFD0 FFFE 0000 14F2 FF01"
	$"7A49 E65E 0352 5D55 7BB1 FF81 FFD0 FFFE"
	$"0000 16F2 FF03 504D 425F E85E 0343 767E"
	$"7FB1 FF81 FFD0 FFFE 0000 15F1 FF02 6D64"
	$"4BEA 5E03 7149 463E AFFF 81FF D0FF FE00"
	$"0018 F1FF 0385 7976 52EE 5E05 525D 496A"
	$"7A7F AEFF 81FF D0FF FE00 0016 F0FF 025A"
	$"4B5C EF5E 044B 6465 7E3C ACFF 81FF D0FF"
	$"FE00 0016 F0FF 0331 5949 5FF1 5E03 6576"
	$"685A AAFF 81FF D0FF FE00 0018 EFFF 033C"
	$"7544 5FF5 5E05 5271 4967 7BFD A9FF 81FF"
	$"D0FF FE00 0016 EEFF 016C 80F6 5E05 524B"
	$"765D 596B A7FF 81FF D0FF FE00 0016 EEFF"
	$"0350 4642 5FF8 5EFF 4301 4E53 A5FF 81FF"
	$"D0FF FE00 0015 EDFF 0240 434B FA5E 035B"
	$"4946 3EA3 FF81 FFD0 FFFE 0000 18ED FF03"
	$"874E 7D52 FE5E 0552 7349 6654 85A2 FF81"
	$"FFD0 FFFE 0000 15EC FF09 825E 715E 5E4B"
	$"645B 616F A0FF 81FF D0FF FE00 0013 ECFF"
	$"0731 5955 7344 6468 829E FF81 FFD0 FFFE"
	$"0000 11EB FF05 7C47 6567 4FFD 9DFF 81FF"
	$"D0FF FE00 000E EAFF 023A 4150 9BFF 81FF"
	$"D0FF FE00 0008 81FF 81FF D0FF FE00 0008"
	$"81FF 81FF D0FF FE00 0008 81FF 81FF D0FF"
	$"FE00 0008 81FF 81FF D0FF FE00 0008 81FF"
	$"81FF D0FF FE00 0008 81FF 81FF D0FF FE00"
	$"0008 81FF 81FF D0FF FE00 0008 81FF 81FF"
	$"D0FF FE00 0008 81FF 81FF D0FF FE00 00FF"
};

resource 'PICT' (129, "mask") {
	9410,
	{0, 0, 107, 305},
	$"0011 02FF 0C00 FFFE 0000 0048 0000 0048"
	$"0000 0000 0000 006B 0131 0000 0000 00A1"
	$"01F2 0016 3842 494D 0000 0000 0000 006B"
	$"0131 4772 8970 68AF 626A 0001 000A 0000"
	$"0000 006B 0131 0098 8134 0000 0000 006B"
	$"0131 0000 0000 0000 0000 0048 0000 0048"
	$"0000 0000 0008 0001 0008 0000 0000 0000"
	$"0000 0000 0000 0046 3BD7 0000 00FE 0000"
	$"FFFF FFFF FFFF 0001 FEFE FEFE FEFE 0002"
	$"FDFD FDFD FDFD 0003 FCFC FCFC FCFC 0004"
	$"FBFB FBFB FBFB 0005 FAFA FAFA FAFA 0006"
	$"F9F9 F9F9 F9F9 0007 F8F8 F8F8 F8F8 0008"
	$"F7F7 F7F7 F7F7 0009 F6F6 F6F6 F6F6 000A"
	$"F5F5 F5F5 F5F5 000B F4F4 F4F4 F4F4 000C"
	$"F3F3 F3F3 F3F3 000D F2F2 F2F2 F2F2 000E"
	$"F1F1 F1F1 F1F1 000F F0F0 F0F0 F0F0 0010"
	$"EFEF EFEF EFEF 0011 EEEE EEEE EEEE 0012"
	$"EDED EDED EDED 0013 ECEC ECEC ECEC 0014"
	$"EBEB EBEB EBEB 0015 EAEA EAEA EAEA 0016"
	$"E9E9 E9E9 E9E9 0017 E8E8 E8E8 E8E8 0018"
	$"E7E7 E7E7 E7E7 0019 E6E6 E6E6 E6E6 001A"
	$"E5E5 E5E5 E5E5 001B E4E4 E4E4 E4E4 001C"
	$"E3E3 E3E3 E3E3 001D E2E2 E2E2 E2E2 001E"
	$"E1E1 E1E1 E1E1 001F E0E0 E0E0 E0E0 0020"
	$"DFDF DFDF DFDF 0021 DEDE DEDE DEDE 0022"
	$"DDDD DDDD DDDD 0023 DCDC DCDC DCDC 0024"
	$"DBDB DBDB DBDB 0025 DADA DADA DADA 0026"
	$"D9D9 D9D9 D9D9 0027 D8D8 D8D8 D8D8 0028"
	$"D7D7 D7D7 D7D7 0029 D6D6 D6D6 D6D6 002A"
	$"D5D5 D5D5 D5D5 002B D4D4 D4D4 D4D4 002C"
	$"D3D3 D3D3 D3D3 002D D2D2 D2D2 D2D2 002E"
	$"D1D1 D1D1 D1D1 002F D0D0 D0D0 D0D0 0030"
	$"CFCF CFCF CFCF 0031 CECE CECE CECE 0032"
	$"CDCD CDCD CDCD 0033 CCCC CCCC CCCC 0034"
	$"CBCB CBCB CBCB 0035 CACA CACA CACA 0036"
	$"C9C9 C9C9 C9C9 0037 C8C8 C8C8 C8C8 0038"
	$"C7C7 C7C7 C7C7 0039 C6C6 C6C6 C6C6 003A"
	$"C5C5 C5C5 C5C5 003B C4C4 C4C4 C4C4 003C"
	$"C3C3 C3C3 C3C3 003D C2C2 C2C2 C2C2 003E"
	$"C1C1 C1C1 C1C1 003F C0C0 C0C0 C0C0 0040"
	$"BFBF BFBF BFBF 0041 BEBE BEBE BEBE 0042"
	$"BDBD BDBD BDBD 0043 BCBC BCBC BCBC 0044"
	$"BBBB BBBB BBBB 0045 BABA BABA BABA 0046"
	$"B9B9 B9B9 B9B9 0047 B8B8 B8B8 B8B8 0048"
	$"B7B7 B7B7 B7B7 0049 B6B6 B6B6 B6B6 004A"
	$"B5B5 B5B5 B5B5 004B B4B4 B4B4 B4B4 004C"
	$"B3B3 B3B3 B3B3 004D B2B2 B2B2 B2B2 004E"
	$"B1B1 B1B1 B1B1 004F B0B0 B0B0 B0B0 0050"
	$"AFAF AFAF AFAF 0051 AEAE AEAE AEAE 0052"
	$"ADAD ADAD ADAD 0053 ACAC ACAC ACAC 0054"
	$"ABAB ABAB ABAB 0055 AAAA AAAA AAAA 0056"
	$"A9A9 A9A9 A9A9 0057 A8A8 A8A8 A8A8 0058"
	$"A7A7 A7A7 A7A7 0059 A6A6 A6A6 A6A6 005A"
	$"A5A5 A5A5 A5A5 005B A4A4 A4A4 A4A4 005C"
	$"A3A3 A3A3 A3A3 005D A2A2 A2A2 A2A2 005E"
	$"A1A1 A1A1 A1A1 005F A0A0 A0A0 A0A0 0060"
	$"9F9F 9F9F 9F9F 0061 9E9E 9E9E 9E9E 0062"
	$"9D9D 9D9D 9D9D 0063 9C9C 9C9C 9C9C 0064"
	$"9B9B 9B9B 9B9B 0065 9A9A 9A9A 9A9A 0066"
	$"9999 9999 9999 0067 9898 9898 9898 0068"
	$"9797 9797 9797 0069 9696 9696 9696 006A"
	$"9595 9595 9595 006B 9494 9494 9494 006C"
	$"9393 9393 9393 006D 9292 9292 9292 006E"
	$"9191 9191 9191 006F 9090 9090 9090 0070"
	$"8F8F 8F8F 8F8F 0071 8E8E 8E8E 8E8E 0072"
	$"8D8D 8D8D 8D8D 0073 8C8C 8C8C 8C8C 0074"
	$"8B8B 8B8B 8B8B 0075 8A8A 8A8A 8A8A 0076"
	$"8989 8989 8989 0077 8888 8888 8888 0078"
	$"8787 8787 8787 0079 8686 8686 8686 007A"
	$"8585 8585 8585 007B 8484 8484 8484 007C"
	$"8383 8383 8383 007D 8282 8282 8282 007E"
	$"8181 8181 8181 007F 8080 8080 8080 0080"
	$"7F7F 7F7F 7F7F 0081 7E7E 7E7E 7E7E 0082"
	$"7D7D 7D7D 7D7D 0083 7C7C 7C7C 7C7C 0084"
	$"7B7B 7B7B 7B7B 0085 7A7A 7A7A 7A7A 0086"
	$"7979 7979 7979 0087 7878 7878 7878 0088"
	$"7777 7777 7777 0089 7676 7676 7676 008A"
	$"7575 7575 7575 008B 7474 7474 7474 008C"
	$"7373 7373 7373 008D 7272 7272 7272 008E"
	$"7171 7171 7171 008F 7070 7070 7070 0090"
	$"6F6F 6F6F 6F6F 0091 6E6E 6E6E 6E6E 0092"
	$"6D6D 6D6D 6D6D 0093 6C6C 6C6C 6C6C 0094"
	$"6B6B 6B6B 6B6B 0095 6A6A 6A6A 6A6A 0096"
	$"6969 6969 6969 0097 6868 6868 6868 0098"
	$"6767 6767 6767 0099 6666 6666 6666 009A"
	$"6565 6565 6565 009B 6464 6464 6464 009C"
	$"6363 6363 6363 009D 6262 6262 6262 009E"
	$"6161 6161 6161 009F 6060 6060 6060 00A0"
	$"5F5F 5F5F 5F5F 00A1 5E5E 5E5E 5E5E 00A2"
	$"5D5D 5D5D 5D5D 00A3 5C5C 5C5C 5C5C 00A4"
	$"5B5B 5B5B 5B5B 00A5 5A5A 5A5A 5A5A 00A6"
	$"5959 5959 5959 00A7 5858 5858 5858 00A8"
	$"5757 5757 5757 00A9 5656 5656 5656 00AA"
	$"5555 5555 5555 00AB 5454 5454 5454 00AC"
	$"5353 5353 5353 00AD 5252 5252 5252 00AE"
	$"5151 5151 5151 00AF 5050 5050 5050 00B0"
	$"4F4F 4F4F 4F4F 00B1 4E4E 4E4E 4E4E 00B2"
	$"4D4D 4D4D 4D4D 00B3 4C4C 4C4C 4C4C 00B4"
	$"4B4B 4B4B 4B4B 00B5 4A4A 4A4A 4A4A 00B6"
	$"4949 4949 4949 00B7 4848 4848 4848 00B8"
	$"4747 4747 4747 00B9 4646 4646 4646 00BA"
	$"4545 4545 4545 00BB 4444 4444 4444 00BC"
	$"4343 4343 4343 00BD 4242 4242 4242 00BE"
	$"4141 4141 4141 00BF 4040 4040 4040 00C0"
	$"3F3F 3F3F 3F3F 00C1 3E3E 3E3E 3E3E 00C2"
	$"3D3D 3D3D 3D3D 00C3 3C3C 3C3C 3C3C 00C4"
	$"3B3B 3B3B 3B3B 00C5 3A3A 3A3A 3A3A 00C6"
	$"3939 3939 3939 00C7 3838 3838 3838 00C8"
	$"3737 3737 3737 00C9 3636 3636 3636 00CA"
	$"3535 3535 3535 00CB 3434 3434 3434 00CC"
	$"3333 3333 3333 00CD 3232 3232 3232 00CE"
	$"3131 3131 3131 00CF 3030 3030 3030 00D0"
	$"2F2F 2F2F 2F2F 00D1 2D2D 2D2D 2D2D 00D2"
	$"2C2C 2C2C 2C2C 00D3 2B2B 2B2B 2B2B 00D4"
	$"2A2A 2A2A 2A2A 00D5 2929 2929 2929 00D6"
	$"2828 2828 2828 00D7 2727 2727 2727 00D8"
	$"2626 2626 2626 00D9 2525 2525 2525 00DA"
	$"2424 2424 2424 00DB 2323 2323 2323 00DC"
	$"2222 2222 2222 00DD 2121 2121 2121 00DE"
	$"2020 2020 2020 00DF 1F1F 1F1F 1F1F 00E0"
	$"1E1E 1E1E 1E1E 00E1 1D1D 1D1D 1D1D 00E2"
	$"1C1C 1C1C 1C1C 00E3 1B1B 1B1B 1B1B 00E4"
	$"1A1A 1A1A 1A1A 00E5 1919 1919 1919 00E6"
	$"1818 1818 1818 00E7 1717 1717 1717 00E8"
	$"1616 1616 1616 00E9 1515 1515 1515 00EA"
	$"1414 1414 1414 00EB 1313 1313 1313 00EC"
	$"1212 1212 1212 00ED 1111 1111 1111 00EE"
	$"1010 1010 1010 00EF 0F0F 0F0F 0F0F 00F0"
	$"0E0E 0E0E 0E0E 00F1 0D0D 0D0D 0D0D 00F2"
	$"0C0C 0C0C 0C0C 00F3 0B0B 0B0B 0B0B 00F4"
	$"0A0A 0A0A 0A0A 00F5 0909 0909 0909 00F6"
	$"0808 0808 0808 00F7 0707 0707 0707 00F8"
	$"0606 0606 0606 00F9 0505 0505 0505 00FA"
	$"0404 0404 0404 00FB 0303 0303 0303 00FC"
	$"0202 0202 0202 00FD 0101 0101 0101 00FE"
	$"0000 0000 0000 0000 0000 006B 0131 0000"
	$"0000 006B 0131 0000 001B A400 FF01 0B02"
	$"0305 0607 0809 0807 0605 03FE 02FF 01F1"
	$"0081 00CD 0000 21A6 00FF 0106 0204 0659"
	$"AF59 1FFE 120B 100E 0B09 0706 0503 0202"
	$"0101 F400 8100 CD00 0024 A700 0501 0203"
	$"061C F2FE FE11 FCCE 9459 2F1F 1814 110E"
	$"0B09 0706 0402 0201 F600 8100 CD00 0026"
	$"A900 0501 0203 0508 C0FD FE00 FDFD FE0F"
	$"E8C3 9961 3720 1713 100D 0A07 0503 0201"
	$"F800 8100 CD00 0026 AB00 FF01 0302 0407"
	$"85F9 FE02 FDFE FDFE FE0D F8E7 C183 4222"
	$"1914 0F0B 0704 0201 F900 8100 CD00 0021"
	$"AC00 0401 0204 0649 F2FE 0FFD FEFC FEFD"
	$"F2CF 5923 1C15 0E09 0502 01FA 0081 00CD"
	$"0000 1FAE 0005 0102 0306 16E4 EDFE 0CFA"
	$"FEFD D038 2D22 1910 0A05 0201 FB00 8100"
	$"CD00 001B B000 0501 0202 0508 B0E7 FE08"
	$"9242 3426 1A10 0904 02FB 0081 00CD 0000"
	$"1CB2 00FF 0103 0204 0774 E5FE 09EC 6248"
	$"3626 190E 0703 01FC 0081 00CD 0000 1CB3"
	$"0004 0102 0406 3AE3 FE0A FDB8 5E49 3523"
	$"150B 0602 01FD 0081 00CD 0000 1CB5 0005"
	$"0102 0306 09D6 E1FE 09F9 835B 442F 1E11"
	$"0904 01FD 0081 00CD 0000 1BB6 0004 0102"
	$"0507 9FDE FE09 D66E 553D 2818 0D06 0201"
	$"FE00 8100 CD00 001A B700 0302 0306 62DC"
	$"FE09 FC9E 654B 3421 120A 0402 FE00 8100"
	$"CD00 001A B800 0301 0327 F8DA FE0B E875"
	$"5A41 2B1A 0E06 0201 0000 8100 CD00 0018"
	$"B900 0201 02B0 D7FE 0AB6 6A4F 3723 150A"
	$"0502 0000 8100 CD00 0019 B900 0302 0691"
	$"F8D8 FE0A F181 5E45 2E1D 1008 0301 0081"
	$"00CD 0000 18B9 0003 0205 28D5 D7FE 09C9"
	$"6E53 3B26 160C 0602 0181 00CD 0000 1ABA"
	$"0005 0102 060D 80F6 D8FE 09FA 9262 4932"
	$"1F12 0904 0181 00CD 0000 1BBA 0005 0102"
	$"060E 26C8 D7FE 08DB 7258 3F2A 190D 0602"
	$"0001 8200 CD00 001B BA00 0601 0206 0E1A"
	$"6FEF D7FE 07A7 674D 3522 130A 0400 0282"
	$"00CD 0000 1CB9 0006 0205 0C17 29BC FDD8"
	$"FE07 EB7A 5C42 2C1B 0E07 0103 0183 00CD"
	$"0000 1DB9 0006 0204 0A13 225C E6D8 FE07"
	$"FDBA 6B51 3924 160B 0205 0201 8400 CD00"
	$"001D B900 0701 0207 0E1B 2DA6 FAD8 FE06"
	$"F784 6046 2F1E 1002 0803 0184 00CD 0000"
	$"1DB9 0007 0102 050A 1423 4DDE D7FE 05D0"
	$"6F55 3C27 1703 0C06 0201 8500 CD00 001D"
	$"B800 0701 0207 0E1A 2C8C F4D8 FE05 FA96"
	$"644A 3220 0312 0904 0185 00CD 0000 1CB7"
	$"0006 0205 0A14 233F C8D7 FE04 E073 5940"
	$"2A04 1A0E 0602 0186 00CD 0000 1BB7 0006"
	$"0103 0911 1D38 BFD6 FE03 AC68 4E36 0422"
	$"140A 0402 8600 CD00 001C B800 0601 0205"
	$"080F 63D9 D5FE 03ED 7A5D 4305 2D1C 0F07"
	$"0301 8700 CD00 001A B800 0402 0306 3CBD"
	$"D2FE 02C2 6C52 063A 2516 0B05 0201 8800"
	$"CD00 001B BA00 050E 0103 2195 F8D1 FE02"
	$"F78B 6106 4730 1E11 0803 0188 00CD 0000"
	$"19BA 0003 0102 6EE4 CEFE 01D2 7007 563D"
	$"2818 0D06 0201 8900 CD00 0018 BA00 0202"
	$"04EF CDFE 01FD 9E07 654B 3421 1209 0401"
	$"8900 CD00 0019 BB00 0301 0206 49CC FE00"
	$"E408 765A 412B 1A0E 0602 018A 00CD 0000"
	$"1ABB 0004 0102 060E C2CD FE00 FD08 AF69"
	$"4F36 2314 0A05 028A 00CD 0000 1ABB 0005"
	$"0102 070F 36FC CDFE 09F1 7E5E 442E 1C0F"
	$"0703 018B 00CD 0000 1ABB 0005 0102 070F"
	$"1DA9 CDFE 09FE C76C 5239 2515 0B05 028B"
	$"00CD 0000 1BBA 0005 0206 0E1A 2FF7 CEFE"
	$"0AFE F88B 5E45 2E1B 0E06 0201 8C00 CD00"
	$"0021 C300 FE01 0002 FC01 0502 050B 1627"
	$"85CE FEFF FE08 C969 4E36 2112 0903 018C"
	$"00CD 0000 23C4 0002 1702 02FD 03FD 0205"
	$"0409 1220 35E4 CFFE 0AFE B589 6F54 3A25"
	$"150A 0402 8C00 CD00 0029 C500 0401 6589"
	$"0E06 FE08 0906 0504 0304 070E 1929 65D0"
	$"FE00 D90A AE9E 886F 553C 2616 0B05 028C"
	$"00CD 0000 2DC6 0013 0102 1ED1 B83D 0E0F"
	$"0F0E 0C0A 0706 080C 1421 33CA D3FE 02EB"
	$"BAB2 0AA5 9580 6950 3924 150A 0402 8C00"
	$"CD00 002F C600 1301 0205 5AFE E59A 4B1B"
	$"1A17 1310 0E0C 0E13 1D2B 51D5 FE04 F9C1"
	$"B6AE A30A 9685 715B 4631 1F12 0904 018C"
	$"00CD 0000 43C6 0014 0204 070E A8FE FEF5"
	$"BF8E 5638 261A 1616 1822 2B38 A8D7 FE05"
	$"CFB9 B2A8 9D8F 0A81 6F5D 4A37 2619 0E07"
	$"0301 F500 FD44 0010 FE00 FD44 0010 BF00"
	$"FD44 0010 EC00 CD00 0050 C700 0501 0206"
	$"0B32 B6FC FE0B F7DE CCB9 AAA4 B09D 3436"
	$"48F1 DAFE 07E1 BAB4 ABA0 9486 780A 6857"
	$"4637 281B 110A 0502 01F5 00FD FE00 44FE"
	$"00FD FE00 44EA 0002 5575 AAFE BA01 7530"
	$"DE00 FDFE 0044 EC00 CD00 0049 C900 FF01"
	$"0402 0618 80E5 F4FE 0484 3439 428D DCFE"
	$"09F0 BCB6 AEA3 988A 7C6D 5E09 4E3F 3225"
	$"1A12 0A06 0201 F400 FDFE 0044 FE00 FDFE"
	$"0044 EC00 0065 F8FE 01BA 10E0 00FD FE00"
	$"44EC 00CD 0000 4ACA 0005 0102 0307 58CC"
	$"F3FE 06C4 4741 3F42 4BE1 DFFE 0BFD C5B7"
	$"B0A6 9B8E 8071 6252 4408 362A 2016 0F0A"
	$"0603 02F3 00FD FE00 44FE 00FD FE00 44EC"
	$"0000 75F7 FE00 CEE0 00FD FE00 44EC 00CD"
	$"0000 4CCC 0006 0102 0206 3FAE FCF3 FE07"
	$"F882 5A4F 4743 466E E0FE 0CD3 BAB2 A99E"
	$"9284 7666 5648 3A2E 0722 1A12 0C08 0502"
	$"01F2 00FD FE00 44E4 0000 75FE FEFF BA00"
	$"DDFC FE00 65E1 00FD FE00 44EC 00CD 0000"
	$"B4CD 0005 0102 0314 28E6 F1FE 08D4 7A6B"
	$"5C4E 4440 46C4 F9FE 02FA E2F7 EEFE 0EE5"
	$"BBB4 ACA2 9688 7A6A 5B4C 3E31 261C 0614"
	$"0E09 0603 0201 FC00 0155 75FE BA02 8965"
	$"10FE 00FD FE00 44FE 00FD 4400 10FD 00FD"
	$"4406 1000 6599 BAAA 65FB 0003 75DD 6510"
	$"FE00 0075 FDFE 00AA FC00 0155 75FE BA02"
	$"AA75 55F9 0001 5575 FEBA 0289 6510 FE00"
	$"FDFE 0644 0065 99BA AA65 F800 0155 89FE"
	$"BA00 7500 44FB 00FD 4406 1000 5599 BAAA"
	$"65FD 0004 65AA BA99 44F9 0001 5589 FEBA"
	$"0175 44F7 0000 BCEF 00FE 01FA 00FF 01FD"
	$"02FF 01F3 0007 0102 0212 6FD1 5099 F2FE"
	$"0AFD B58A 7965 5242 3A3A 4EFC FBFE 04E6"
	$"C6BA DBFC F1FE 10F4 BDB6 AEA4 998C 7E6E"
	$"5F50 4234 281E 160F 040A 0604 0201 FC00"
	$"0144 DDFA FE03 ED30 0000 FDFE 0044 FE00"
	$"FDFE 0044 FD00 FDFE 0165 BAFC FE01 CE10"
	$"FD00 0020 FA00 00CE FEFE 00BA FE00 0130"
	$"DDF9 FE00 EDFC 0001 44DD FAFE 03ED 3000"
	$"00FD FE01 75BA FCFE 00CE FB00 0130 DDFB"
	$"FE02 FEBA 10FD 00FD FE01 65BA FCFE 0399"
	$"0030 DDFC FE00 99FC 0001 30DD FAFE 01BA"
	$"10F9 0000 A7F3 00FF 01FA 02FE 01FE 0208"
	$"0304 0505 0403 0202 01F6 0009 0102 0312"
	$"B7FE FEBF 44E3 F3FE 0AF0 A894 7F68 513E"
	$"3230 389B FDFE 06EB C5B2 AFAB B0EC F2FE"
	$"11C9 B8B0 A79C 8F81 7263 5445 372B 2118"
	$"110B 0703 0502 0101 FC00 0055 F7FE 0244"
	$"0000 FDFE 0044 FE00 FDFE 0044 FD00 F5FE"
	$"0099 F500 00BA FEFE 04AA 0000 30ED F7FE"
	$"FD00 0055 F7FE 0244 0000 F5FE 0075 FD00"
	$"0055 F9FE FFFE 00CE FD00 F5FE 00BA F9FE"
	$"0044 FE00 0055 F7FE 00CE F900 00EE F400"
	$"0301 0203 04FC 0600 04FE 030C 040B 2B2A"
	$"0E0C 0C0A 0806 0402 01F9 00FF 0109 0238"
	$"6010 A4FE FEFD 788B F3FE 16E1 AA97 8066"
	$"4D37 2A26 2B3D F0FE EDB9 9CA2 A29D 9792"
	$"BDF8 F5FE 13D7 BAB2 AA9F 9285 7667 5849"
	$"3B2E 231A 120D 0805 0301 0201 FB00 0110"
	$"EDFE FE09 ED75 4444 89ED FE44 0000 FDFE"
	$"0044 FE00 FDFE 0044 FD00 FCFE 03AA 7589"
	$"EDFD FE00 20F7 0000 10FD FE03 7500 00BA"
	$"FEFE 07AA 3000 0030 75DD FEFE 0001 10ED"
	$"FEFE 09ED 7544 4489 EDFE 4400 00FC FE02"
	$"EDBA DDFD FE00 CEFE 0001 10ED FEFE 0475"
	$"1000 44ED FEFE 0065 FE00 FCFE 02ED BADD"
	$"FBFE 02DD BAED FDFE 0489 0000 10ED FEFE"
	$"0475 1000 44ED FEFE 0065 FA00 00F1 F500"
	$"FF02 1909 4151 3616 0E0E 0D0A 0908 0849"
	$"B2E7 E2AF 5117 1512 0D09 0502 01FB 000D"
	$"0102 024D F2F3 3F35 E3FE FEDC 6ADC F4FE"
	$"16D1 AA95 7C60 4630 221C 202C 77AE 767C"
	$"888D 8C86 7E79 7BD7 F7FE 15E8 BBB5 ACA2"
	$"9689 7A6B 5C4D 3F32 261D 150E 0906 0302"
	$"01F9 0000 75FE FE01 ED30 FD00 0420 CE44"
	$"0000 FDFE 0044 FE00 FDFE 0044 FD00 FDFE"
	$"0055 FE00 0030 FDFE 0075 F700 0075 FEFE"
	$"03ED 1000 00FD FE00 55FB 0000 65FE 0000"
	$"75FE FE01 ED30 FD00 0420 CE44 0000 FDFE"
	$"0075 FE00 00AA FDFE FE00 0075 FEFE 0089"
	$"FD00 0075 FEFE 00AA FE00 FDFE 0075 FE00"
	$"00AA FDFE 0444 0000 10DD FEFE 03BA 0000"
	$"75FE FE00 89FD 0000 75FE FE00 AAFA 0000"
	$"EAF6 000F 0203 44C2 F4FB EAB8 481B 1916"
	$"1234 9CF3 FDFE 09E7 4D25 1F18 100A 0602"
	$"01FE 00FF 0108 0B09 063D E8FE B326 8BFE"
	$"FE02 AD99 FDF6 FE18 FDC3 A68F 7558 3E28"
	$"1A14 1620 3042 5666 7074 726B 635F 5D8E"
	$"F1FA FE17 F7BF B6AE A59A 8D7E 6F60 5142"
	$"352A 1F16 100A 0604 0201 0100 F900 00BA"
	$"FEFE 0089 F700 FDFE 0044 FE00 FDFE 0044"
	$"FD00 FDFE 0044 FD00 00AA FEFE 0099 F800"
	$"0065 FDFE 0075 FE00 00ED FEFE 04ED AA75"
	$"4410 FB00 00BA FEFE 0089 F700 FDFE 0044"
	$"FE00 0065 FDFE FE00 00BA FEFE 0075 FD44"
	$"0075 FEFE 00ED FE00 FDFE 0044 FE00 0044"
	$"FDFE FD00 0075 FEFE 03BA 0000 BAFE FE00"
	$"75FD 4400 75FE FE00 EDFA 0000 CCF7 0003"
	$"0102 50F3 FCFE 05D6 472A 3585 DFFA FE08"
	$"BD3C 3126 1B12 0A05 02FE 0110 0211 B97C"
	$"0A0F 88FE F96F 45D8 FEFE F194 D5F6 FE19"
	$"F8BB 9F88 6C50 3622 140E 0F16 2232 414E"
	$"5659 5651 4843 434A BDFC FCFE 15CA B6B0"
	$"A79D 9082 7364 5546 392C 2219 120C 0705"
	$"0201 01FE 00F9 00FD FE00 44F7 00FD FE00"
	$"44FE 00FD FE00 44FD 00FD FE00 44FD 0000"
	$"75FE FE00 BAF9 0001 44ED FEFE 0099 FD00"
	$"0099 F9FE 01CE 65FD 00FD FE00 44F7 00FD"
	$"FE00 44FE 0000 44FD FEFE 00F7 FEFD FEFE"
	$"00FD FE00 44FE 0000 44FD FEFD 0000 75FE"
	$"FE02 BA00 00F3 FEFA 0000 CBF8 0003 0102"
	$"0FD2 FAFE 02BE 81CF F8FE 08F9 8246 3829"
	$"1B10 0904 FE02 1103 14C2 EF2F 1635 D4FE"
	$"CF4F 8EFB FEFE CDA5 F9F9 FE1B FDFE F3B0"
	$"977F 6448 2F1C 0F0A 0A0E 1722 2E38 3E3F"
	$"3D36 302D 2E35 62E3 FEFE 15CE ABAB A79E"
	$"9386 7768 594A 3C2F 241B 130D 0906 0302"
	$"01FC 00F9 00FD FE00 44F7 00FD FE00 44FE"
	$"00FD FE00 44FD 00FD FE00 44FD 0000 75FE"
	$"FE00 BAFA 0000 65FD FE00 99FC 0001 10CE"
	$"F8FE 0099 FE00 FDFE 0044 F700 FDFE 0044"
	$"FE00 0044 FDFE FE00 F7FE FDFE FE00 FDFE"
	$"0044 FE00 0044 FDFE FD00 0075 FEFE 02BA"
	$"0000 F3FE FA00 00D0 F800 0301 0341 F9F9"
	$"FE00 FCF6 FE1C DA64 4B39 2618 0E07 056B"
	$"3D06 0A4A F7A4 1F27 7CFC FD9C 61D0 FEFE"
	$"FAAC CEFB FE34 FBE0 D7FE F0A5 8E76 5B41"
	$"2A18 0C06 0609 0E16 1E24 2829 2622 1E1B"
	$"1D24 32A0 FED5 8592 9999 9288 7A6C 5D4E"
	$"3F32 271D 150E 0A06 0402 01FA 00F9 00FD"
	$"FE00 55F7 00FD FE00 44FE 00FD FE00 44FD"
	$"00FD FE00 44FD 0000 89FE FE00 AAFB 0000"
	$"75FD FE00 99F9 0001 65BA F9FE 0244 0000"
	$"FDFE 0055 F700 FDFE 0044 FE00 0044 FDFE"
	$"FE00 FDFE 0099 FC75 FD75 FE00 FDFE 0044"
	$"FE00 0044 FDFE FD00 0075 FEFE 02BA 0000"
	$"FDFE 0099 F875 FA00 00CF F800 0202 055B"
	$"EBFE 1CAC 5F4A 3422 150B 07AB C90F 0E14"
	$"9DFC 5830 41C7 FEE7 768D F6FE FEE0 A5F2"
	$"FDFE 34E8 C8B6 B2E4 F099 816A 523A 2514"
	$"0A05 0305 080D 1216 1718 1612 100E 1118"
	$"2442 575E 707C 8281 7A6E 6052 4336 2A1F"
	$"1710 0A07 0402 0101 F900 F900 00BA FEFE"
	$"0099 F700 FDFE 0044 FE00 FDFE 0044 FD00"
	$"FDFE 0044 FD00 00CE FEFE 0075 FD00 0110"
	$"AAFD FE00 75F5 0002 3065 99FD FE03 7500"
	$"00BA FEFE 0099 F700 FDFE 0044 FE00 0044"
	$"FDFE FE00 00BA FEFE 0075 FC00 FA00 FDFE"
	$"0044 FE00 0044 FDFE FD00 0075 FEFE 03BA"
	$"0000 BAFE FE00 75F1 0000 EDF8 0003 0206"
	$"45FA ECFE 17ED 7F5B 432E 1D11 0A2D EE66"
	$"131A 40EB C839 4079 F7FE B971 C7FE FE38"
	$"B7C2 FEFE EFC9 ADAA A6A1 B3EB 9171 5D47"
	$"3220 1208 0302 0204 0609 0B0C 0C0A 0907"
	$"070A 0F19 2738 4A59 6368 665E 5346 392D"
	$"2219 120C 0805 0202 01F7 00F9 0000 75FD"
	$"FE00 44FD 0004 30CE 4400 00FD FE00 44FE"
	$"00FD FE00 44FD 00FD FE00 44FE 0000 65FD"
	$"FE00 20FE 0001 30DD FDFE 0075 FB44 0320"
	$"00DD 65FB 0000 BAFE FE03 7500 0075 FDFE"
	$"0044 FD00 0430 CE44 0000 FDFE 0044 FE00"
	$"0044 FDFE FE00 0075 FEFE 01ED 44FD 0003"
	$"0010 75BA FE00 FDFE 0044 FE00 0044 FDFE"
	$"FD00 0075 FEFE 03BA 0000 75FE FE01 ED44"
	$"FC00 0210 75BA FA00 00E9 F900 0401 0207"
	$"15BB EBFE 33C4 6C52 3A26 180F 0D89 DF26"
	$"1F26 8EFE 7D43 4DBB FEF3 8A86 EDFE FEEC"
	$"A7DD CFA5 9E9C 9892 8A83 BD8A 5E4E 3C2A"
	$"1B0F 0702 0101 0202 04FE 0519 0403 0203"
	$"0509 111B 2936 424A 4D4A 443A 2F25 1B13"
	$"0E09 0603 0201 F500 F900 0110 DDFD FE08"
	$"AA75 75BA FEFE 4400 00FD FE00 44FE 00FD"
	$"FE00 44FD 00FD FE03 BA75 75BA FDFE 00BA"
	$"FD00 F4FE 0975 00FE FEDD 8955 4444 89FD"
	$"FE04 2000 0010 DDFD FE08 AA75 75BA FEFE"
	$"4400 00FD FE00 44FE 0000 44FD FEFE 0001"
	$"10DD FDFE 03CE 8975 7503 BAFE FEBA FE00"
	$"FDFE 0044 FE00 0044 FDFE FD00 0075 FEFE"
	$"04BA 0000 10DD FDFE 07CE 8975 75BA FEFE"
	$"BAFA 0000 BFF9 0004 0204 0A14 8AEB FE17"
	$"F694 6249 3221 1611 22E3 9224 2B42 D6E1"
	$"514C 71EC FECE 72B3 FEFE 17B0 938F 8E8C"
	$"8781 7A71 686A 5B4B 3E31 2216 0C06 0201"
	$"0001 01FC 02FE 0113 0206 0A12 1B25 2D33"
	$"3532 2D25 1D16 0F0A 0604 0201 F300 F800"
	$"0130 EDF8 FE02 4400 00FD FE00 44FE 00FD"
	$"FE00 44FD 00F6 FE01 ED10 FD00 F4FE 0175"
	$"00F6 FE00 65FD 0001 30ED F8FE 0244 0000"
	$"FDFE 0044 FE00 0044 FDFE FD00 0130 DDFA"
	$"FEFE FE00 BAFE 00FD FE00 44FE 0000 44FD"
	$"FEFD 0000 75FE FE00 BAFE 0001 30DD F7FE"
	$"00BA FA00 00C5 FA00 0501 0306 1F7D E2EA"
	$"FE2D D573 573E 2A1D 1615 70F1 452E 357D"
	$"FE9F 4B52 A9FE F999 7BE0 E3A6 8482 807C"
	$"7670 685E 564E 463F 372F 251B 120A 0502"
	$"F500 1201 0206 0A11 161C 2021 1E1A 1510"
	$"0B07 0402 0101 F200 F700 0110 99FA FE03"
	$"CE20 0000 FDFE 0044 FE00 FDFE 0044 FD00"
	$"FDFE 00DD FCFE 01BA 20FC 00F4 FE03 7500"
	$"99ED FAFE 01DD 55FB 0001 1099 FAFE 03CE"
	$"2000 00FD FE00 44FE 0000 44FD FEFC 0002"
	$"1089 EDFC FEFF FE01 DD75 FE00 FDFE 0044"
	$"FE00 0044 FDFE FD00 0075 FEFE 00BA FD00"
	$"0210 89ED FAFE 01DD 75FA 0000 8CFC 0005"
	$"0102 0309 56C7 E8FE 2DFB A266 4D36 251B"
	$"181F CBB2 2F36 41C8 F261 4E65 DFFE DF78"
	$"8880 7776 736E 6860 574E 453C 352F 2B26"
	$"211A 130D 0703 02F4 000F 0203 0609 0D10"
	$"1212 110E 0A07 0502 0201 F000 F500 0110"
	$"44FE 7501 6520 EC00 FDFE 0144 20FE 7500"
	$"30E9 0001 3065 FE75 0165 30F7 0001 1044"
	$"FE75 0165 20E8 0000 44FD 7501 5520 DF00"
	$"0044 FD75 0155 20F8 0000 55FD 0005 0102"
	$"043A AAF8 E6FE 2CE3 7C5B 432F 221B 1B54"
	$"F562 353A 6CF7 B94B 5095 EFBA 6E69 6A69"
	$"6661 5A52 493F 362E 2621 1E1A 1815 120D"
	$"0905 0201 F300 FF02 0A04 0607 0809 0706"
	$"0503 0201 EE00 D900 FDFE 0044 AE00 CD00"
	$"004D FD00 0302 0B85 E9E3 FE2A B76A 513A"
	$"2A1F 1C1E B3D0 3638 3DAC FD76 4C59 7258"
	$"5A5C 5B59 544D 463D 332B 231C 1612 100F"
	$"0E0C 0A08 0603 02F1 0002 0102 02FE 03FE"
	$"0200 01EC 00D9 00FD FE00 44AE 00CD 0000"
	$"44FE 0002 0103 85E1 FE12 F086 5F47 3225"
	$"1E1D 42EE 7F35 3A58 E9B3 4649 4BFE 4E14"
	$"4A46 413A 322A 221A 140F 0B09 0807 0706"
	$"0604 0202 01EF 00FB 01EA 00D9 00FD FE00"
	$"44AE 00CD 0000 3DFF 0003 0102 1BE2 E0FE"
	$"20C7 6E55 3E2C 211D 1E90 E543 363A 6856"
	$"4041 4241 403E 3A35 2E28 211A 140F 0A07"
	$"0504 FD03 FF02 FF01 D100 D900 FDBA 0030"
	$"AE00 CD00 0032 FF00 0301 033F F7E0 FE1F"
	$"F795 634A 3626 1E1D 2BE2 9C32 3637 3838"
	$"3736 3432 2E2A 241F 1914 0F0A 0705 0302"
	$"FA01 CF00 8100 CD00 0033 FF00 0302 0437"
	$"F3DF FE1E D573 5841 2E22 1D1E 606A 2C2F"
	$"3131 2F2E 2A27 2420 1B17 120E 0A08 0503"
	$"0201 01C8 00DC 00FF 20A8 00CD 0000 50FF"
	$"0003 0205 10BA DFFE 1CFC A667 4E38 281F"
	$"1C1E 2126 2829 2826 231F 1C18 1411 0D0A"
	$"0705 0302 0101 C600 F800 0789 BA10 0000"
	$"44BA 30ED 00FF EDEA 0001 65BA F900 0165"
	$"BAFE 0001 BA89 F900 0165 BADA 00CD 0000"
	$"50FF 0004 0206 0E49 F6DF FE19 E47D 5C44"
	$"3023 1C1A 1C1E 2020 1F1D 1A16 120E 0B09"
	$"0605 0302 0101 C400 F800 0689 FE55 0000"
	$"99ED EC00 FF89 EB00 02CE FEFE FA00 02CE"
	$"FEFE FE00 01FE BAFA 0002 CEFE FEDA 00CD"
	$"0000 74FF 0004 0206 0E1A A7DE FE16 B76A"
	$"523A 2A1E 1917 1718 1816 1411 0E0A 0806"
	$"0403 0201 01C2 00F8 0006 30FE 9900 00ED"
	$"99FE 0013 75ED FEDD 6500 BA89 BAFE 8900"
	$"30CE FEFE 6500 BA89 FE00 0C75 EDFE DD55"
	$"0000 BA89 89FE CE10 FB00 0244 CEFE FA00"
	$"0244 CEFE FE00 05FE BA89 FEDD 55FE 0002"
	$"44CE FEDA 00CD 0000 6FFF 0005 0205 0C18"
	$"40EC DFFE 14EF 8760 4732 2219 1412 1110"
	$"0F0D 0A08 0604 0202 0101 C000 F700 2CDD"
	$"ED00 44FE 5500 0075 FE75 00AA FE55 FEED"
	$"89ED FE00 AADD 1000 2000 FEBA 0000 75FE"
	$"7500 AAFE 4400 FEFE 89AA FE75 FA00 01BA"
	$"FEF9 0001 BAFE FE00 FFFE 0375 65FE EDFD"
	$"0001 BAFE DA00 CD00 006C FF00 0502 040A"
	$"1525 91DE FE10 C76E 553D 2A1C 130E 0C0A"
	$"0907 0604 0202 01BD 00F7 002C 89FE 5589"
	$"FE10 0000 DDFE 1000 44FE AAFE BA00 3044"
	$"00BA ED75 2000 00FE BA00 00ED FE10 0055"
	$"FEAA 00FE BA00 44FE 75FA 0001 BAFE F900"
	$"01BA FEFE 0006 FEBA 0000 BAFE 44FE 0001"
	$"BAFE DA00 CD00 0066 FF00 0601 0308 111E"
	$"3CDD DFFE 0EF7 9463 4A33 2216 0E0A 0605"
	$"0402 0201 BB00 F700 0430 FE99 DDAA FE00"
	$"FBFE 02BA FEBA FD00 1755 EDFE FE75 00FE"
	$"BA00 00FE FE00 0044 FEBA 00FE BA00 44FE"
	$"75FA 0001 BAFE F900 01BA FEFE 0006 FEBA"
	$"0000 BAFE 44FE 0001 BAFE DA00 CD00 0064"
	$"FF00 0701 0206 0C18 287C FDDF FE0C D573"
	$"583F 2A1A 1009 0503 0201 01BA 00F6 0003"
	$"DDED FE65 FE00 FFFE FC00 01FE BAFC 0016"
	$"1065 EDED 00FE BA00 00FE FE00 0044 FEBA"
	$"00FE BA00 44FE 75FA 0001 BAFE F900 01BA"
	$"FEFE 0006 FEBA 0000 BAFE 44FE 0001 BAFE"
	$"DA00 CD00 0068 FE00 0601 0309 121F 34C9"
	$"DFFE 0AFC A767 4D36 2214 0B06 0201 B800"
	$"F600 0389 FEFE 20FE 0002 AAFE 75FE 0002"
	$"10FE BAFD 0017 1000 00CE ED00 FEBA 0000"
	$"99FE 5500 89FE 6500 FEBA 0044 FE75 FA00"
	$"01BA FEFE 00FF FEFE 0001 BAFE FE00 05FE"
	$"CE00 10ED EDFD 0001 BAFE DA00 CD00 0067"
	$"FE00 0701 0206 0C17 2765 F9DF FE09 E47B"
	$"5B42 2C1B 0F07 0301 B800 F600 0255 FECE"
	$"FD00 0810 BAFE CEBA FE30 FEBA FD00 17FE"
	$"BADD FE65 00FE BA00 0010 BAED BAFE 9900"
	$"00FE BA00 44FE 75FA 0001 BAFE FE00 FFFE"
	$"FE00 01BA FEFE 0005 FEED CEDD ED65 FD00"
	$"01BA FEDA 00CD 0000 36FD 0006 0103 0811"
	$"1E30 B1DE FE09 B66A 5038 2415 0B05 0201"
	$"B900 ED00 0220 4444 F900 0320 4444 10F9"
	$"0002 3044 20E0 0002 2044 10D3 00CD 0000"
	$"1EFD 0007 0102 050B 1625 4FEA DFFE 09EF"
	$"885F 462F 1D10 0803 01B9 0081 00CD 0000"
	$"1DFC 0006 0103 070F 1B2D 91DE FE09 C96E"
	$"543B 2616 0B06 0201 BA00 8100 CD00 001D"
	$"FB00 0602 040A 1322 3FDE DFFE 09F7 9562"
	$"4831 1E11 0803 01BA 0081 00CD 0000 1DFB"
	$"0007 0102 060E 192A 7AFD DFFE 08D3 7256"
	$"3D27 160B 0502 BA00 8100 CD00 001D FA00"
	$"0601 0409 121F 34C7 DFFE 09EB 8562 472F"
	$"1D0F 0602 01BB 0081 00CD 0000 1EFA 0007"
	$"0102 060C 1727 61F9 E0FE 09E4 896D 5137"
	$"2212 0903 01BB 0081 00CD 0000 1DF9 0006"
	$"0103 0810 1E30 B0E0 FE09 CD8E 7356 3C26"
	$"150A 0401 BB00 8100 CD00 001F F900 0701"
	$"0205 0B16 254C EAE2 FE0A E4A9 8E74 583E"
	$"2616 0A04 01BB 0081 00CD 0000 20F8 0006"
	$"0103 070F 1B2D 92E4 FE0C F5D6 B29E 896F"
	$"553A 2515 0A04 01BB 0081 00CD 0000 22F7"
	$"0006 0204 0A13 223F DDE7 FE0E FAE1 C4B1"
	$"A492 7E65 4C35 2112 0903 01BB 0081 00CD"
	$"0000 24F7 0006 0102 060E 192A 7BE9 FE10"
	$"FDEB CCB6 ADA2 9382 6D56 402B 1B0E 0702"
	$"01BB 0081 00CD 0000 24F6 0006 0104 0912"
	$"1F34 C8EB FE10 F2D4 BBB0 A69B 8E7E 6C58"
	$"4532 2114 0A05 02BA 0081 00CD 0000 27F6"
	$"0007 0102 060C 1727 63F7 EEFE 12F8 DDC1"
	$"B2AA 9F93 8576 6654 4332 2417 0E07 0301"
	$"BA00 8100 CD00 0027 F500 0601 0308 101E"
	$"30AD F0FE 13FC E5C8 B5AC A296 8A7B 6B5C"
	$"4C3D 2F22 170E 0804 02B9 0081 00CD 0000"
	$"29F5 0007 0102 050B 1625 4CEC F2FE 14ED"
	$"D0B7 AFA5 9A8D 7F70 6152 4235 291E 150E"
	$"0804 0201 B900 8100 CD00 0029 F400 0601"
	$"0307 0F1B 2D94 F4FE 15F4 D7BD B2A8 9E91"
	$"8374 6556 473A 2D22 1911 0B07 0402 01B8"
	$"0081 00CD 0000 2AF3 0006 0204 0A13 223E"
	$"DAF7 FE16 F9E1 C2B4 ABA1 9486 7869 5A4B"
	$"3D30 251B 130E 0906 0302 01B7 0081 00CD"
	$"0000 2BF3 0007 0102 060E 192A 77FD FAFE"
	$"16FD E8CB B6AE A498 8B7D 6E5E 4F41 3428"
	$"1E16 0F0A 0604 0201 B500 8100 CD00 002A"
	$"F200 0601 0409 121F 32C6 FBFE 16F0 D2B8"
	$"AFA6 9B8F 8172 6253 4537 2B21 1811 0B07"
	$"0502 0101 B400 8100 CD00 002B F200 2101"
	$"0206 0C16 2655 D1FC FEFE F2D2 B6AE A79E"
	$"9285 7667 5849 3B2E 231A 120D 0806 0302"
	$"01B2 0081 00CD 0000 28F1 001E 0103 0810"
	$"1D2E 5191 BBBD A29B 9E9A 9287 7A6B 5C4D"
	$"3F32 261D 140E 0906 0302 01B0 0081 00CD"
	$"0000 26F0 001C 0205 0A14 2233 475C 6E7C"
	$"8486 8279 6D5F 5142 352A 1F16 100A 0604"
	$"0201 01AF 0081 00CD 0000 24F0 001A 0102"
	$"060D 1725 3646 5662 696A 665E 5246 392D"
	$"2219 120C 0805 0201 01AD 0081 00CD 0000"
	$"21EF 0017 0103 080F 1926 323E 484E 4E4A"
	$"4339 2E24 1B13 0E09 0603 0201 AB00 8100"
	$"CD00 001E EE00 1402 0409 1018 212A 3135"
	$"3532 2B24 1D15 0F0A 0604 0201 A900 8100"
	$"CD00 001D EE00 1301 0205 090E 1319 1E20"
	$"201E 1A15 0F0B 0704 0201 01A8 0081 00CD"
	$"0000 1AED 0010 0102 0407 0A0E 1011 110F"
	$"0D0A 0705 0302 01A6 0081 00CD 0000 17EC"
	$"000D 0102 0204 0607 0808 0706 0403 0201"
	$"A400 8100 CD00 000E EA00 0001 F902 FF01"
	$"A300 8100 CD00 00FF"
};

data 'c2sc' (0, "Owner resource") {
	$"16A9 2031 3939 3820 4D69 6861 6920 5061"            /* .© 1998 Mihai Pa */
	$"7270 6172 6974 61"                                  /* rparita */
};

resource 'cfrg' (0) {
	{	/* array memberArray: 1 elements */
		/* [1] */
		kPowerPCCFragArch,
		kIsCompleteCFrag,
		kNoVersionNum,
		kNoVersionNum,
		98304,
		kNoAppSubFolder,
		kApplicationCFrag,
		kDataForkCFragLocator,
		kZeroOffset,
		kSegIDZero,
		"clip2scheme (PPC)"
	}
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
	1048576,
	1048576
};

