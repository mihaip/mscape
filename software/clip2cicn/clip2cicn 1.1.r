/* Resource fork of software/clip2cicn/clip2cicn 1.1 */
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
		{175, 210, 195, 268},
		Button {
			enabled,
			"OK"
		},
		/* [2] */
		{10, 10, 120, 270},
		UserItem {
			disabled
		},
		/* [3] */
		{120, 20, 169, 289},
		StaticText {
			disabled,
			"by Mihai Parparita\nmihai@mscape.com\nhttp"
			"://cafe.ambrosiasw.com/gui-central/"
		}
	}
};

resource 'DITL' (129, "Insert Cicn") {
	{	/* array DITLarray: 10 elements */
		/* [1] */
		{126, 385, 146, 443},
		Button {
			enabled,
			"Insert"
		},
		/* [2] */
		{126, 315, 146, 373},
		Button {
			enabled,
			"Cancel"
		},
		/* [3] */
		{30, 250, 50, 445},
		Control {
			enabled,
			128
		},
		/* [4] */
		{60, 250, 80, 445},
		Control {
			enabled,
			132
		},
		/* [5] */
		{92, 390, 108, 440},
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
		"About clip2cicn…", noIcon, noKey, noMark, plain,
		/* [2] */
		"-", noIcon, noKey, noMark, plain
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

resource 'MENU' (131) {
	131,
	textMenuProc,
	allEnabled,
	enabled,
	"cicn types",
	{	/* array: 32 elements */
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
		"Horizontal Slider", noIcon, noKey, noMark, plain,
		/* [31] */
		"Vertical Slider", noIcon, noKey, noMark, plain,
		/* [32] */
		"Alert Icons", noIcon, noKey, noMark, plain
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
	0x7FFFFEDF,
	enabled,
	"Tabs",
	{	/* array: 14 elements */
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
		"-", noIcon, noKey, noMark, plain,
		/* [7] */
		"Background Inactive -9978", noIcon, noKey, noMark, plain,
		/* [8] */
		"Background Active -9977", noIcon, noKey, noMark, plain,
		/* [9] */
		"-", noIcon, noKey, noMark, plain,
		/* [10] */
		"Small Off Inactive -9976", noIcon, noKey, noMark, plain,
		/* [11] */
		"Small Off Active -9975", noIcon, noKey, noMark, plain,
		/* [12] */
		"Small Pressed -9974", noIcon, noKey, noMark, plain,
		/* [13] */
		"Small On Inactive -9973", noIcon, noKey, noMark, plain,
		/* [14] */
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
	0x7FFFFFFB,
	enabled,
	"Dialog & Alert Colors",
	{	/* array: 5 elements */
		/* [1] */
		"Dialog Active -9776", noIcon, noKey, noMark, plain,
		/* [2] */
		"Dialog Inactive -9775", noIcon, noKey, noMark, plain,
		/* [3] */
		"-", noIcon, noKey, noMark, plain,
		/* [4] */
		"Alert Active -9774", noIcon, noKey, noMark, plain,
		/* [5] */
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

resource 'MENU' (161) {
	161,
	textMenuProc,
	0x7FFFDFBF,
	enabled,
	"Horizontal Slider",
	{	/* array: 18 elements */
		/* [1] */
		"Down-Facing Track Inactive -10144", noIcon, noKey, noMark, plain,
		/* [2] */
		"Down-Facing Track Active -10143", noIcon, noKey, noMark, plain,
		/* [3] */
		"Down-Facing Track Pressed -10142", noIcon, noKey, noMark, plain,
		/* [4] */
		"Down-Facing Thumbs -10141", noIcon, noKey, noMark, plain,
		/* [5] */
		"Down-Facing Tick Mark Inactive -10140", noIcon, noKey, noMark, plain,
		/* [6] */
		"Down-Facing Tick Mark Active -10139", noIcon, noKey, noMark, plain,
		/* [7] */
		"-", noIcon, noKey, noMark, plain,
		/* [8] */
		"Up-Facing Track Inactive -10138", noIcon, noKey, noMark, plain,
		/* [9] */
		"Up-Facing Track Active -10137", noIcon, noKey, noMark, plain,
		/* [10] */
		"Up-Facing Track Pressed -10136", noIcon, noKey, noMark, plain,
		/* [11] */
		"Up-Facing Slider Thumbs -10135", noIcon, noKey, noMark, plain,
		/* [12] */
		"Up-Facing Tick Mark Inactive -10134", noIcon, noKey, noMark, plain,
		/* [13] */
		"Up-Facing Tick Mark Active -10133", noIcon, noKey, noMark, plain,
		/* [14] */
		"-", noIcon, noKey, noMark, plain,
		/* [15] */
		"Non-Directional Track Inactive -10132", noIcon, noKey, noMark, plain,
		/* [16] */
		"Non-Directional Track Active -10131", noIcon, noKey, noMark, plain,
		/* [17] */
		"Non-Directional Track Pressed -10130", noIcon, noKey, noMark, plain,
		/* [18] */
		"Non-Directional Thumbs -10129", noIcon, noKey, noMark, plain
	}
};

resource 'MENU' (163) {
	163,
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

resource 'MENU' (162) {
	162,
	textMenuProc,
	0x7FFFFFBF,
	enabled,
	"Vertical Slider",
	{	/* array: 18 elements */
		/* [1] */
		"Right-Facing Track Inactive -10128", noIcon, noKey, noMark, plain,
		/* [2] */
		"Right-Facing Track Active -10127", noIcon, noKey, noMark, plain,
		/* [3] */
		"Right-Facing Track Pressed -10126", noIcon, noKey, noMark, plain,
		/* [4] */
		"Right-Facing Thumbs -10125", noIcon, noKey, noMark, plain,
		/* [5] */
		"Right-Facing Tick Mark Inactive -10124", noIcon, noKey, noMark, plain,
		/* [6] */
		"Right-Facing Tick Mark Active -10123", noIcon, noKey, noMark, plain,
		/* [7] */
		"-", noIcon, noKey, noMark, plain,
		/* [8] */
		"Left-Facing Track Inactive -10122", noIcon, noKey, noMark, plain,
		/* [9] */
		"Left-Facing Track Active -10121", noIcon, noKey, noMark, plain,
		/* [10] */
		"Left-Facing Track Pressed -10120", noIcon, noKey, noMark, plain,
		/* [11] */
		"Left-Facing Thumbs -10119", noIcon, noKey, noMark, plain,
		/* [12] */
		"Left Facing Tick Mark Inactive -10118", noIcon, noKey, noMark, plain,
		/* [13] */
		"Left Facing Tick Mark Active -10117", noIcon, noKey, noMark, plain,
		/* [14] */
		"-", noIcon, noKey, noMark, plain,
		/* [15] */
		"Non-Directional Track Inactive -10116", noIcon, noKey, noMark, plain,
		/* [16] */
		"Non-Directional Track Active -10115", noIcon, noKey, noMark, plain,
		/* [17] */
		"Non-Directional Track Pressed -10114", noIcon, noKey, noMark, plain,
		/* [18] */
		"Non-Directional Thumbs -10113", noIcon, noKey, noMark, plain
	}
};

resource 'MENU' (129) {
	129,
	textMenuProc,
	0x7FFFFFFD,
	enabled,
	"File",
	{	/* array: 3 elements */
		/* [1] */
		"Insert Clipboard into cicn…", noIcon, "I", noMark, plain,
		/* [2] */
		"-", noIcon, noKey, noMark, plain,
		/* [3] */
		"Quit", noIcon, "Q", noMark, plain
	}
};

resource 'BNDL' (128) {
	'c2ci',
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
	{20, 5, 40, 200},
	0,
	visible,
	50,
	131,
	1008,
	0,
	"Type:"
};

resource 'CNTL' (132, "Document Window") {
	{40, 10, 60, 205},
	0,
	visible,
	50,
	132,
	1008,
	0,
	"cicn:"
};

resource 'DLOG' (128) {
	{88, 131, 293, 427},
	dBoxProc,
	invisible,
	noGoAway,
	0x0,
	128,
	"",
	centerMainScreen
};

resource 'DLOG' (129) {
	{54, 42, 210, 495},
	dBoxProc,
	visible,
	goAway,
	0x0,
	129,
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
	$"0000 00FC 1CCC CCCC CC00 CCF0 0000 0000"
	$"0000 0FFF FCCC CCCC 00CC CCCF 0000 0000"
	$"0000 FF0C 0FCC CC00 CCCC 7C7C F000 0000"
	$"000F FFCF CFFF 00CC CCC7 C7C7 FF00 0000"
	$"00FD DC0C 0CAD FCCC 7C7C 7C7F CFF0 0000"
	$"0FFC AAAA AAAC FEC7 C7C7 C7CF 1FDF 0000"
	$"FCFD CDF0 FDCD FD7C 7C7C CCF1 C1FC F000"
	$"0FFC DF00 0FDC FDC7 37CC CCFC 1CF5 CF00"
	$"00FD F000 FDCD FD33 33CC 0FC1 F1CF CCF0"
	$"00FC DF0F DCDC FD33 3330 CF1C FC1F DCCF"
	$"00FD CDFD CDCD F533 33DD F1C1 F1C1 FCF0"
	$"00FC DCDC DCDC F5CD 3D5C FC1C FC1C FF00"
	$"00FD CDCD CDCD FD0C C5CF C1C1 C1C1 CF00"
	$"00FC DCDC DCDC FDCC CCCF 1C1C FC1C 1F00"
	$"00FD CDCD CDCD F5CC CCF1 C1C1 C1C1 C1F0"
	$"00FC DCDC DCDC FDCC CCFF FFFF FFFF FFF0"
	$"000F FFFF FFFF DDCC CCCD BBBB F000 0000"
	$"0000 0000 000F DCCC CCCC CCBF 0000 0000"
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
	$"0000 0000 0000 FF07 0907 0E0E 0E0E 0D0D"
	$"0D0D 0C0C 3030 FF00 0000 0000 0000 0000"
	$"0000 0000 00FF FFFF FF0E 0E0E 0D0D 0D0D"
	$"0C0C 3030 3030 30FF 0000 0000 0000 0000"
	$"0000 0000 FFFF 00F6 00FF 0D0D 0D0D 0C0C"
	$"3030 3030 7830 7830 FF00 0000 0000 0000"
	$"0000 00FF FFFF F6FF F6FF FFFF 0C0C 3030"
	$"3030 3078 3078 3078 FFFF 0000 0000 0000"
	$"0000 FF33 FAF6 00F6 00F6 FD33 FF30 3030"
	$"7830 7830 7830 78FF 08FF FF00 0000 0000"
	$"00FF FFF7 FDFD FDFD FDFD FDF7 FF87 3078"
	$"3078 3078 3078 4EFF 05FF 81FF 0000 0000"
	$"FF07 FF33 F733 FF00 FF33 F733 FF81 7830"
	$"7830 7830 4E4E FF05 0805 FF49 FF00 0000"
	$"00FF FFF7 33FF 0000 00FF 33F7 FF81 3078"
	$"D878 4E4E 4E4E FF08 0508 FFA4 4AFF 0000"
	$"0000 FF33 FF00 0000 FF33 F733 FF81 D8D8"
	$"D8D8 4E4E 6CFF 0805 FF05 08FF 4A4A FF00"
	$"0000 FFF7 33FF 00FF 33F7 33F7 FF81 D8D8"
	$"D8D8 D86C 49FF 0508 FF08 05FF 814A 4AFF"
	$"0000 FF33 F733 FF33 F733 F733 FFA4 D8D8"
	$"D8D8 8181 FF05 0805 FF05 0805 FF4A FF00"
	$"0000 FFF7 33F7 33F7 33F7 33F7 FFA4 4981"
	$"D881 A449 FF08 0508 FF08 0508 FFFF 0000"
	$"0000 FF33 F733 F733 F733 F733 FF81 6C49"
	$"49A4 4AFF 0805 0805 0805 0805 08FF 0000"
	$"0000 FFF7 33F7 33F7 33F7 33F7 FF81 4949"
	$"4A4A 4AFF 0508 0508 FF08 0508 05FF 0000"
	$"0000 FF33 F733 F733 F733 F733 FFA4 4A4A"
	$"4A4A FF05 0805 0805 0805 0805 0805 FF00"
	$"0000 FFF7 33F7 33F7 33F7 33F7 FF81 4A4A"
	$"4A4A FFFF FFFF FFFF FFFF FFFF FFFF FF00"
	$"0000 00FF FFFF FFFF FFFF FFFF 8181 4A4A"
	$"4A4A 4A81 8282 8282 FF00 0000 0000 0000"
	$"0000 0000 0000 0000 0000 00FF 814A 4A4A"
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
		$"0045 1000 0082 0800 0100 0400 0200 0200"
		$"0780 0100 0C40 0080 1D70 00C0 2828 0160"
		$"6FEC 0170 A28C 0228 644C 8234 288F C492"
		$"250F E499 220F F88A 200D E88C 200C 5004"
		$"200C 1084 200C 2002 200C 3FFE 1FFC 1F80"
		$"0018 0100 0008 0200 0004 0400 0002 0800"
		$"0001 1000 0000 A000 0000 40",
		/* [2] */
		$"0000 0000 0000 0000 001F C000 003F E000"
		$"007F F000 00FF F800 01FF FC00 03FF FE00"
		$"07FF FF00 0FFF FF80 1FFF FFC0 3FFF FFE0"
		$"7FFF FFF0 FFFF FFF8 7FFF FFFC 3FFF FFFE"
		$"3FFF FFFF 3FFF FFFE 3FFF FFFC 3FFF FFFC"
		$"3FFF FFFC 3FFF FFFE 3FFF FFFE 1FFF FF80"
		$"001F FF00 000F FE00 0007 FC00 0003 F800"
		$"0001 F000 0000 E000 0000 40"
	}
};

resource 'ics#' (128) {
	{	/* array: 2 elements */
		/* [1] */
		$"3800 45C0 BA20 9620 AA70 9220 8210 8210"
		$"7C28 0028 0054 0054 0082 0092 0101 01FF",
		/* [2] */
		$"3800 7DC0 FE20 FE20 FE70 FE20 FE10 FE10"
		$"7C38 0038 007C 007C 00FE 00FE 01FF 01FF"
	}
};

resource 'ics4' (128) {
	$"00FF F000 0000 0000 0F00 0F03 3300 0000"
	$"F0AA A0F0 0030 0000 FDDF 0FF0 0030 0000"
	$"FDF0 FDF0 0333 0000 FDDF DDF0 0030 0000"
	$"FDDD DDF0 000F 0000 FDDD DDF0 000F 0000"
	$"0FFF FF00 00F1 F000 0000 0000 00FC F000"
	$"0000 0000 0FCF CF00 0000 0000 0F1F 1F00"
	$"0000 0000 F1C1 C1F0 0000 0000 FC1F 1CF0"
	$"0000 000F C1C1 C1CF 0000 000F FFFF FFFF"
};

resource 'ics8' (128) {
	$"0000 FFFF FF00 0000 0000 0000 0000 0000"
	$"00FF 0000 00FF 00D8 D8D8 0000 0000 0000"
	$"FF00 FDFD FD00 FF00 0000 D800 0000 0000"
	$"FF33 33FF 00FF FF00 0000 D800 0000 0000"
	$"FF33 FF00 FF33 FF00 00D8 D8D8 0000 0000"
	$"FF33 33FF 3333 FF00 0000 D800 0000 0000"
	$"FF33 3333 3333 FF00 0000 00FF 0000 0000"
	$"FF33 3333 3333 FF00 0000 00FF 0000 0000"
	$"00FF FFFF FFFF 0000 0000 FF05 FF00 0000"
	$"0000 0000 0000 0000 0000 FF08 FF00 0000"
	$"0000 0000 0000 0000 00FF 08FF 08FF 0000"
	$"0000 0000 0000 0000 00FF 05FF 05FF 0000"
	$"0000 0000 0000 0000 FF05 0805 0805 FF00"
	$"0000 0000 0000 0000 FF08 05F4 0508 FF00"
	$"0000 0000 0000 00FF 0805 0805 0805 08FF"
	$"0000 0000 0000 00FF FFFF FFFF F4FF FFFF"
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
	release,
	0x0,
	14,
	"1.1",
	"©1998 Mihai Parparita"
};

resource 'vers' (2) {
	0x1,
	0x10,
	release,
	0x0,
	14,
	"1.1",
	"clip2cicn 1.1"
};

data 'c2ci' (0, "Owner resource") {
	$"16A9 2031 3939 3820 4D69 6861 6920 5061"            /* .© 1998 Mihai Pa */
	$"7270 6172 6974 61"                                  /* rparita */
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

resource 'PICT' (128) {
	3998,
	{0, 0, 110, 260},
	$"0011 02FF 0C00 FFFE 0000 0048 0000 0048"
	$"0000 0000 0000 006E 0104 0000 0000 00A1"
	$"01F2 0016 3842 494D 0000 0000 0000 006E"
	$"0104 4772 8970 68AF 626A 0001 000A 0000"
	$"0000 006E 0104 0098 8104 0000 0000 006E"
	$"0104 0000 0000 0000 0000 0048 0000 0048"
	$"0000 0000 0008 0001 0008 0000 0000 0000"
	$"0000 0000 0000 0046 ACF2 0000 00A0 0000"
	$"FFFF FFFF FFFF 0001 FFFF BDBD 0000 0002"
	$"FFFF B5B5 0000 0003 FFFF ADAD 0000 0004"
	$"F7F7 FFFF F7F7 0005 F7F7 F7F7 F7F7 0006"
	$"F7F7 B5B5 0000 0007 F7F7 ADAD 0000 0008"
	$"EFEF EFEF EFEF 0009 EFEF ADAD 0000 000A"
	$"EFEF A5A5 0000 000B E7E7 E7E7 E7E7 000C"
	$"E7E7 A5A5 0000 000D E7E7 9C9C 0000 000E"
	$"DEDE DEDE DEDE 000F DEDE C6C6 A5A5 0010"
	$"DEDE BDBD A5A5 0011 DEDE BDBD 9C9C 0012"
	$"DEDE 9C9C 0000 0013 D6D6 DEDE DEDE 0014"
	$"D6D6 D6D6 DEDE 0015 D6D6 D6D6 D6D6 0016"
	$"D6D6 D6D6 CECE 0017 D6D6 BDBD 9C9C 0018"
	$"D6D6 B5B5 9C9C 0019 D6D6 9C9C 0000 001A"
	$"D6D6 9494 0000 001B CECE CECE D6D6 001C"
	$"CECE CECE CECE 001D CECE B5B5 9C9C 001E"
	$"CECE B5B5 9494 001F CECE ADAD 9494 0020"
	$"CECE 9494 0000 0021 CECE 8C8C 0000 0022"
	$"C6C6 C6C6 C6C6 0023 C6C6 ADAD 9494 0024"
	$"C6C6 ADAD 8C8C 0025 C6C6 A5A5 8C8C 0026"
	$"C6C6 8C8C 0000 0027 C6C6 8484 0000 0028"
	$"BDBD BDBD BDBD 0029 BDBD A5A5 8C8C 002A"
	$"BDBD A5A5 8484 002B BDBD 8C8C 0000 002C"
	$"BDBD 8484 0000 002D B5B5 BDBD BDBD 002E"
	$"B5B5 B5B5 B5B5 002F B5B5 9C9C 8484 0030"
	$"B5B5 8484 0000 0031 B5B5 7B7B 0000 0032"
	$"ADAD ADAD ADAD 0033 ADAD ADAD A5A5 0034"
	$"ADAD 9C9C 8484 0035 ADAD 9494 8484 0036"
	$"ADAD 9494 7B7B 0037 ADAD 7B7B 0000 0038"
	$"ADAD 7373 0000 0039 A5A5 A5A5 A5A5 003A"
	$"A5A5 9494 7B7B 003B A5A5 8C8C 7B7B 003C"
	$"A5A5 8C8C 7373 003D A5A5 7373 0000 003E"
	$"9C9C 9C9C 9C9C 003F 9C9C 8C8C 7373 0040"
	$"9C9C 8484 7373 0041 9C9C 7373 0000 0042"
	$"9C9C 6B6B 0000 0043 9494 9494 9494 0044"
	$"9494 8484 7373 0045 9494 8484 6B6B 0046"
	$"9494 7B7B 6B6B 0047 9494 6B6B 0000 0048"
	$"9494 6363 0000 0049 8C8C 8C8C 8C8C 004A"
	$"8C8C 7B7B 6B6B 004B 8C8C 7373 6363 004C"
	$"8C8C 6363 0000 004D 8C8C 5A5A 0000 004E"
	$"8484 8484 8484 004F 8484 7373 6363 0050"
	$"8484 7373 5A5A 0051 8484 6B6B 5A5A 0052"
	$"8484 5A5A 0000 0053 7B7B 7B7B 7B7B 0054"
	$"7B7B 6B6B 5A5A 0055 7B7B 6363 5252 0056"
	$"7B7B 5A5A 0000 0057 7B7B 5252 0000 0058"
	$"7373 7373 7373 0059 7373 6B6B 6B6B 005A"
	$"7373 6363 5252 005B 7373 5252 0000 005C"
	$"6B6B 6B6B 6B6B 005D 6B6B 6363 6363 005E"
	$"6B6B 5A5A 5252 005F 6B6B 5A5A 4A4A 0060"
	$"6B6B 4A4A 0000 0061 6363 6363 6363 0062"
	$"6363 5252 4A4A 0063 6363 5252 4242 0064"
	$"6363 4242 0000 0065 5A5A 5A5A 5A5A 0066"
	$"5A5A 5252 4242 0067 5A5A 4A4A 4242 0068"
	$"5A5A 4A4A 3939 0069 5A5A 4242 0000 006A"
	$"5A5A 3939 0000 006B 5252 5A5A 5A5A 006C"
	$"5252 5252 5252 006D 5252 4A4A 3939 006E"
	$"5252 4242 3939 006F 5252 3939 0000 0070"
	$"4A4A 4A4A 4A4A 0071 4A4A 4242 3939 0072"
	$"4A4A 4242 3131 0073 4A4A 3939 3131 0074"
	$"4A4A 3131 0000 0075 4242 4242 4A4A 0076"
	$"4242 4242 4242 0077 4242 3939 3131 0078"
	$"4242 3939 2929 0079 4242 3131 2929 007A"
	$"4242 2929 0000 007B 3939 3939 4242 007C"
	$"3939 3939 3939 007D 3939 3131 2929 007E"
	$"3939 2929 2121 007F 3939 2929 0000 0080"
	$"3939 2121 0000 0081 3131 3131 3131 0082"
	$"3131 2929 2929 0083 3131 2929 2121 0084"
	$"3131 2121 0000 0085 2929 2929 2929 0086"
	$"2929 2929 2121 0087 2929 2121 2121 0088"
	$"2929 2121 1818 0089 2929 1818 0000 008A"
	$"2121 2121 2121 008B 2121 2121 1818 008C"
	$"2121 1818 1818 008D 2121 1818 1010 008E"
	$"2121 1818 0000 008F 2121 1010 0000 0090"
	$"1818 1818 2121 0091 1818 1818 1818 0092"
	$"1818 1818 1010 0093 1818 1010 1010 0094"
	$"1818 1010 0808 0095 1818 1010 0000 0096"
	$"1010 1010 1010 0097 1010 1010 0808 0098"
	$"1010 1010 0000 0099 1010 0808 0808 009A"
	$"1010 0808 0000 009B 0808 1010 1010 009C"
	$"0808 0808 0808 009D 0808 0808 0000 009E"
	$"0808 0000 0000 009F 0000 0000 0808 00A0"
	$"0000 0000 0000 0000 0000 006E 0104 0000"
	$"0000 006E 0104 0000 0006 81A0 81A0 FDA0"
	$"0006 81A0 81A0 FDA0 0006 81A0 81A0 FDA0"
	$"0006 81A0 81A0 FDA0 0006 81A0 81A0 FDA0"
	$"0006 81A0 81A0 FDA0 0006 81A0 81A0 FDA0"
	$"0006 81A0 81A0 FDA0 000C ACA0 027F 3D8E"
	$"D9A0 81A0 FDA0 000D ACA0 0384 010C 64DA"
	$"A081 A0FD A000 0FAC A005 890A 0102 3889"
	$"DCA0 81A0 FDA0 0011 ACA0 078F 0A02 0301"
	$"0C60 9EDE A081 A0FD A000 12AC A008 9A0D"
	$"0203 0302 0231 84DF A081 A0FD A000 13AC"
	$"A002 9A12 02FD 0303 010C 5B9E E1A0 81A0"
	$"FDA0 0013 ACA0 029E 1A02 FC03 0302 0137"
	$"89E2 A081 A0FD A000 11AB A001 2102 FA03"
	$"0201 0A60 E3A0 81A0 FDA0 0012 ABA0 0127"
	$"02F9 0303 0201 3184 E5A0 81A0 FDA0 0019"
	$"ABA0 0130 02FE 0303 0201 0201 FE03 0301"
	$"0A5B 9DE7 A081 A0FD A000 1AAB A009 3702"
	$"0303 020A 5264 3702 FE03 0302 012C 84E8"
	$"A081 A0FD A000 1AAB A00A 3D01 0302 097A"
	$"A0A0 9E3D 01FD 0302 010C 64E9 A081 A0FD"
	$"A000 1BAB A004 4701 0302 26FD A002 7F09"
	$"02FD 03FF 0201 4195 EBA0 81A0 FDA0 001B"
	$"ABA0 054C 0103 021A 9AFD A001 3001 FB03"
	$"0302 0C60 9EED A081 A0FD A000 1BAB A005"
	$"5201 0303 0264 FDA0 0164 01FA 0303 0201"
	$"2C80 EEA0 81A0 FDA0 001D ABA0 065B 0103"
	$"0302 0C80 FEA0 029A 1202 F903 0301 0956"
	$"9DF0 A081 A0FD A000 1DAB A001 6001 FE03"
	$"0201 219A FEA0 0148 01F8 0303 0201 308E"
	$"F1A0 81A0 FDA0 001C ABA0 0164 02FD 0301"
	$"013D FEA0 027A 0202 F703 0201 0C69 F2A0"
	$"81A0 FDA0 001C ABA0 016F 02FC 0301 0157"
	$"FEA0 0127 02F6 03FF 0201 3784 F4A0 81A0"
	$"FDA0 001C ABA0 0174 02FC 0306 0207 6FA0"
	$"A060 01F4 0303 0107 4D9A F6A0 81A0 FDA0"
	$"001C ABA0 017A 02FB 0306 0212 89A0 8F12"
	$"02F4 0303 0201 1A6F F7A0 81A0 FDA0 001B"
	$"ABA0 0184 07FA 0305 012C 9AA0 4201 F203"
	$"0301 0242 8FF9 A081 A0FD A000 1CAB A002"
	$"8907 02FA 0305 0148 A07F 0202 F203 0302"
	$"011A 6FFA A081 A0FD A000 1CAB A002 8F09"
	$"02FA 03FF 0203 64A0 2702 F003 0302 063D"
	$"8FFC A081 A0FD A000 1DAB A002 950A 02F9"
	$"0306 0209 6421 0102 02F2 0303 0201 2C8E"
	$"FCA0 81A0 FDA0 001E ABA0 029A 0C02 F803"
	$"0602 0126 573D 0602 F503 0402 0119 649E"
	$"FBA0 81A0 FDA0 001E ABA0 029A 1202 F803"
	$"0602 1A95 A0A0 6002 F703 0402 0109 4C8F"
	$"F9A0 81A0 FDA0 001E ABA0 029D 1A02 F803"
	$"0101 48FE A002 9D12 02F9 03FF 0201 377F"
	$"F7A0 81A0 FDA0 001E AAA0 0120 02F8 0301"
	$"0231 FEA0 029D 1202 FB03 0402 0120 6A9E"
	$"F6A0 81A0 FDA0 001D AAA0 0126 02F8 0306"
	$"0206 649E 9D5B 02FC 0304 0201 0C56 98F4"
	$"A081 A0FD A000 1BAA A001 2C02 F703 FF02"
	$"032B 2606 02FD 0303 0107 4289 F2A0 81A0"
	$"FDA0 0016 AAA0 0137 02F6 03FD 02FE 03FF"
	$"0201 2C74 F0A0 81A0 FDA0 0013 AAA0 013D"
	$"01F1 0304 0201 1960 9DEF A081 A0FD A000"
	$"13AA A001 4201 F303 0402 010A 4C95 EDA0"
	$"81A0 FDA0 0012 AAA0 014C 01F4 0303 0102"
	$"3884 EBA0 81A0 FDA0 0012 AAA0 0152 01F6"
	$"0303 0201 216A E9A0 81A0 FDA0 001C E8A0"
	$"059C A08C 5A51 86C9 A001 5701 F803 0402"
	$"0112 579A E8A0 81A0 FDA0 0023 F3A0 038A"
	$"6158 70FA A006 965A 2918 172F 93CA A001"
	$"6001 F903 0301 0742 89E6 A081 A0FD A000"
	$"27F4 A005 9115 081C 154E FDA0 089D 6E45"
	$"2F23 1E24 1854 CAA0 0164 02FB 03FF 0201"
	$"2C7A E4A0 81A0 FDA0 002A F4A0 0649 0553"
	$"7C70 2E61 FEA0 0977 6E93 A08B 4B1D 1F23"
	$"87CB A001 6A02 FD03 0402 011A 699E E3A0"
	$"81A0 FDA0 0029 F4A0 132E 3E7C 152E 6C22"
	$"6C91 A0A0 9C81 7696 9C3A 1E18 46CB A008"
	$"7402 0303 0201 0C57 9AE1 A081 A0FD A000"
	$"28F4 A014 494E 5C00 0070 281C 3953 5343"
	$"2D28 53A0 6611 1E1E 78CC A006 7A02 0301"
	$"023D 89DF A081 A0FD A000 26F4 A007 811C"
	$"763E 4970 0B0B FE0E FE15 072E 968D 3F24"
	$"1034 9DCD A004 7F02 0126 74DD A081 A0FD"
	$"A000 27F5 A007 9CA0 282E 6C58 0E08 FE0E"
	$"0B14 1B15 1C58 A096 9C92 6D40 66CD A003"
	$"8412 5B9D DCA0 81A0 FDA0 0024 F3A0 153E"
	$"0008 080B 150E 0E15 1C1C 3976 A081 1528"
	$"539C 7729 96CE A001 9A8E DAA0 81A0 FDA0"
	$"0022 F6A0 069D 9CA0 2E05 0E15 FE0E 0715"
	$"1C2E 5D9C A05C 0BFE 0003 8A5F 0F5A A5A0"
	$"81A0 FDA0 0023 F7A0 107D 5E9D 810B 0B13"
	$"0E0E 1515 2253 91A0 701C FD00 0522 9C3F"
	$"1823 88A6 A081 A0FD A000 23F9 A010 9D5F"
	$"5497 9128 080E 0E15 151C 3E81 A085 33FB"
	$"0005 5394 2523 184A A6A0 81A0 FDA0 0024"
	$"FAA0 1088 4040 A081 1C04 0E0E 1516 326C"
	$"A096 4E08 FA00 0676 7718 2423 1E7D A7A0"
	$"81A0 FDA0 0025 FBA0 0F6D 2318 7296 1500"
	$"0B15 1528 5996 A065 0EF9 0008 0B9B 541D"
	$"2424 1E3B 9CA8 A081 A0FD A000 23FB A00D"
	$"3B1D 1F83 8A05 050B 1C49 8AA0 7C28 F700"
	$"032E A035 1FFE 2401 1862 A8A0 81A0 FDA0"
	$"0023 FBA0 0C54 1818 5AA0 4E0B 2870 A091"
	$"4305 F600 035C 8D23 23FE 2402 1E2A 93A9"
	$"A081 A0FD A000 1FFB A00A 8B29 1D24 7DA0"
	$"919C A0A0 28F4 0002 816E 18FC 2401 1854"
	$"A9A0 81A0 FDA0 0020 FAA0 095F 181E 295A"
	$"7D67 7791 08F5 0003 0E9C 4F1E FC24 021F"
	$"2383 AAA0 81A0 FDA0 001F FBA0 099C 9736"
	$"1E1F 1E1F 177D 75F4 0003 39A0 2F23 FB24"
	$"011D 46AA A081 A0FD A000 1EF9 A007 711E"
	$"2324 1F2F 9E49 F400 0361 881F 23FB 2402"
	$"231E 78AB A081 A0FD A000 1EF9 A007 9D45"
	$"1824 1E45 A015 F500 0305 8A63 1DF9 2402"
	$"1E3B 9CAC A081 A0FD A000 1CF8 A006 7D1F"
	$"2318 6D8A 05F5 0003 1C9C 451D F824 0118"
	$"66AC A081 A0FD A000 1BF7 A004 5018 1F8B"
	$"61F4 0003 4399 2923 F824 021E 2F93 ADA0"
	$"81A0 FDA0 0019 F7A0 048C 292F 9D43 F400"
	$"026C 8318 F624 0118 54AD A081 A0FD A000"
	$"1EF6 A007 5E40 A08A 6B3E 1C05 F900 0305"
	$"915F 1DF6 2402 1F24 86AE A081 A0FD A000"
	$"20F6 A00A 9740 4568 8B9D 9F81 6132 15FC"
	$"0003 22A0 3C1E F524 011D 45AE A081 A0FD"
	$"A000 22F5 A012 7110 1724 3655 7394 A096"
	$"7B53 2E0B 004E 9329 23F5 2402 231E 71AF"
	$"A081 A0FD A000 20F4 A010 4618 231E 1818"
	$"293F 5F7E 99A0 906C 8A73 18F3 2402 1E36"
	$"9CB0 A081 A0FD A000 1FF4 A002 8223 23FE"
	$"240A 231E 181E 2F4A 678C 9C54 18F2 2401"
	$"1863 B0A0 81A0 FDA0 001C F3A0 0154 18FB"
	$"2407 231F 1E18 2336 2923 F224 021F 2A92"
	$"B1A0 81A0 FDA0 0017 F3A0 0292 2F1E F824"
	$"0223 1E23 F024 0118 62B1 A081 A0FD A000"
	$"11F2 A001 6218 E524 0223 1167 B1A0 81A0"
	$"FDA0 0013 F2A0 0297 361E E724 031E 1D51"
	$"9CB1 A081 A0FD A000 13F1 A002 711D 23EA"
	$"2403 1F18 3B79 AFA0 81A0 FDA0 0014 F1A0"
	$"029D 4418 EC24 0423 1829 629C AEA0 81A0"
	$"FDA0 0014 F0A0 027D 2323 EF24 0423 1D1E"
	$"4F8C ACA0 81A0 FDA0 0012 EFA0 0154 18F0"
	$"2403 1E18 3F7D AAA0 81A0 FDA0 0013 EFA0"
	$"028C 291E F324 031F 182F 67A8 A081 A0FD"
	$"A000 13EE A001 5F18 F524 0423 1823 5A93"
	$"A7A0 81A0 FDA0 0014 EFA0 039C 9636 1EF7"
	$"24FF 1E01 4687 A5A0 81A0 FDA0 0013 EDA0"
	$"0271 1E23 FA24 031F 1836 77A3 A081 A0FD"
	$"A000 14ED A002 9E46 18FC 2404 2318 2962"
	$"9CA2 A081 A0FD A000 13EC A009 8324 1F24"
	$"2423 1D1F 4F92 A0A0 81A0 FDA0 0010 EBA0"
	$"0654 1123 1E1D 4082 9EA0 81A0 FDA0 000E"
	$"EBA0 0492 3B1E 2F6D 9CA0 81A0 FDA0 000E"
	$"EAA0 0499 8697 A09C 9DA0 81A0 FDA0 000A"
	$"EAA0 FF9C 9AA0 81A0 FDA0 0006 81A0 81A0"
	$"FDA0 0006 81A0 81A0 FDA0 0006 81A0 81A0"
	$"FDA0 0006 81A0 81A0 FDA0 0006 81A0 81A0"
	$"FDA0 0006 81A0 81A0 FDA0 0006 81A0 81A0"
	$"FDA0 0006 81A0 81A0 FDA0 0006 81A0 81A0"
	$"FDA0 0006 81A0 81A0 FDA0 0006 81A0 81A0"
	$"FDA0 0006 81A0 81A0 FDA0 0006 81A0 81A0"
	$"FDA0 0006 81A0 81A0 FDA0 0006 81A0 81A0"
	$"FDA0 0006 81A0 81A0 FDA0 0006 81A0 81A0"
	$"FDA0 0006 81A0 81A0 FDA0 0006 81A0 81A0"
	$"FDA0 00FF"
};

resource 'PICT' (129, "mask") {
	10162,
	{0, 0, 110, 260},
	$"0011 02FF 0C00 FFFE 0000 0048 0000 0048"
	$"0000 0000 0000 006E 0104 0000 0000 00A1"
	$"01F2 0016 3842 494D 0000 0000 0000 006E"
	$"0104 4772 8970 68AF 626A 0001 000A 0000"
	$"0000 006E 0104 0098 8104 0000 0000 006E"
	$"0104 0000 0000 0000 0000 0048 0000 0048"
	$"0000 0000 0008 0001 0008 0000 0000 0000"
	$"0000 0000 0000 0045 1CB7 0000 00FF 0000"
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
	$"2F2F 2F2F 2F2F 00D1 2E2E 2E2E 2E2E 00D2"
	$"2D2D 2D2D 2D2D 00D3 2C2C 2C2C 2C2C 00D4"
	$"2B2B 2B2B 2B2B 00D5 2A2A 2A2A 2A2A 00D6"
	$"2929 2929 2929 00D7 2828 2828 2828 00D8"
	$"2727 2727 2727 00D9 2626 2626 2626 00DA"
	$"2525 2525 2525 00DB 2424 2424 2424 00DC"
	$"2323 2323 2323 00DD 2222 2222 2222 00DE"
	$"2121 2121 2121 00DF 2020 2020 2020 00E0"
	$"1F1F 1F1F 1F1F 00E1 1E1E 1E1E 1E1E 00E2"
	$"1D1D 1D1D 1D1D 00E3 1C1C 1C1C 1C1C 00E4"
	$"1B1B 1B1B 1B1B 00E5 1A1A 1A1A 1A1A 00E6"
	$"1919 1919 1919 00E7 1818 1818 1818 00E8"
	$"1717 1717 1717 00E9 1616 1616 1616 00EA"
	$"1515 1515 1515 00EB 1414 1414 1414 00EC"
	$"1313 1313 1313 00ED 1212 1212 1212 00EE"
	$"1111 1111 1111 00EF 1010 1010 1010 00F0"
	$"0F0F 0F0F 0F0F 00F1 0E0E 0E0E 0E0E 00F2"
	$"0D0D 0D0D 0D0D 00F3 0C0C 0C0C 0C0C 00F4"
	$"0B0B 0B0B 0B0B 00F5 0A0A 0A0A 0A0A 00F6"
	$"0909 0909 0909 00F7 0808 0808 0808 00F8"
	$"0707 0707 0707 00F9 0606 0606 0606 00FA"
	$"0505 0505 0505 00FB 0404 0404 0404 00FC"
	$"0303 0303 0303 00FD 0202 0202 0202 00FE"
	$"0101 0101 0101 00FF 0000 0000 0000 0000"
	$"0000 006E 0104 0000 0000 006E 0104 0000"
	$"0006 8100 8100 FD00 0006 8100 8100 FD00"
	$"0006 8100 8100 FD00 0006 8100 8100 FD00"
	$"001E B100 FF01 0602 092B 0A08 090A FE0B"
	$"080A 0907 0605 0302 0101 E600 8100 FD00"
	$"0021 B200 FF01 0702 042E DF8D 1F0E 10FE"
	$"110A 100E 0C0A 0806 0403 0201 01E8 0081"
	$"00FD 0000 22B2 0018 0102 0305 2CF4 FFC1"
	$"4B17 191A 1918 1613 100D 0A08 0504 0202"
	$"01E9 0081 00FD 0000 24B2 001A 0102 0407"
	$"28E6 FFFF EF8F 2F24 2423 201C 1814 100C"
	$"0907 0503 0201 01EB 0081 00FD 0000 26B3"
	$"00FF 0104 0305 0922 E1FD FF12 CE66 3130"
	$"2C28 231D 1813 0E0B 0806 0403 0201 01ED"
	$"0081 00FD 0000 26B3 0006 0102 0407 0B1F"
	$"DAFC FF12 F7A6 503B 3630 2922 1C16 110D"
	$"0907 0503 0201 01EE 0081 00FD 0000 26B3"
	$"0006 0102 0408 0D1D D6FA FF12 DA7D 473F"
	$"372F 2720 1913 0F0B 0806 0403 0201 01F0"
	$"0081 00FD 0000 26B3 0006 0102 0509 0E1C"
	$"CCF9 FF12 F5B2 6248 3E35 2C23 1C16 110D"
	$"0A07 0503 0201 01F1 0081 00FD 0000 26B3"
	$"0006 0103 050A 101B C6F7 FF12 DE8B 5045"
	$"3A31 2820 1914 0F0B 0806 0403 0201 01F3"
	$"0081 00FD 0000 27B4 00FF 0105 0306 0A11"
	$"1AC0 F6FF 12FA BA66 4B40 362C 241D 1611"
	$"0D0A 0705 0302 0101 F400 8100 FD00 0027"
	$"B400 FF01 0503 060B 121C B9F4 FF12 E192"
	$"5246 3B31 2820 1914 0F0B 0806 0403 0201"
	$"01F6 0081 00FD 0000 27B4 00FF 0105 0306"
	$"0B13 1DAF F3FF 12FC C06C 4C41 362D 241D"
	$"1611 0D0A 0705 0302 0101 F700 8100 FD00"
	$"0027 B400 FF01 0503 060B 131E A6F1 FF12"
	$"E495 5546 3B31 2820 1A14 0F0B 0806 0403"
	$"0201 01F9 0081 00FD 0000 26B3 0006 0103"
	$"060B 131E 9EF0 FF12 FAC2 6D4D 4136 2D24"
	$"1D17 110D 0A07 0503 0201 01FA 0081 00FD"
	$"0000 26B3 0006 0103 060B 131E 97EE FF12"
	$"E596 5347 3C32 2921 1A14 0F0B 0806 0403"
	$"0201 01FC 0081 00FD 0000 26B3 0006 0103"
	$"060B 131E 8DED FF12 FDC5 6D4D 4137 2D24"
	$"1D17 110D 0A07 0503 0201 01FD 0081 00FD"
	$"0000 26B3 0006 0103 060B 121D 83EB FF14"
	$"E697 5647 3C32 2921 1A14 0F0B 0806 0403"
	$"0201 0100 0081 00FD 0000 25B3 0006 0103"
	$"050A 121D 79EA FF13 FDC8 744D 4237 2D25"
	$"1D17 120D 0A07 0503 0201 0100 8100 FD00"
	$"0025 B300 0601 0205 0A12 1C70 E8FF 11EB"
	$"9C58 473C 3229 211A 140F 0C08 0604 0302"
	$"0100 0182 00FD 0000 25B3 0007 0102 050A"
	$"111C 65FD E8FF 10FC C976 4E42 372E 251D"
	$"1712 0D0A 0705 0302 FF01 8300 FD00 0026"
	$"B300 0701 0205 0A11 1B5C FDE6 FF0E EA9D"
	$"5648 3D32 2921 1A15 100C 0906 0403 0302"
	$"0101 8500 FD00 0026 B300 0701 0205 0910"
	$"1A54 F8E5 FF0D FECD 764E 4238 2E25 1E17"
	$"120E 0A07 0405 0302 0101 8600 FD00 0029"
	$"BE00 FF01 F800 0701 0205 0910 1A4C F5E3"
	$"FF0B F1A4 5948 3D33 2A21 1B15 100C 0508"
	$"0604 0302 0187 00FD 0000 28C2 00F7 01FC"
	$"0007 0102 0509 1019 45F1 E1FF 09D0 7C4E"
	$"4338 2E25 1E17 1106 0D09 0604 0302 0188"
	$"00FD 0000 2DC4 00FE 01FE 02FF 03FD 02FB"
	$"0106 0205 090F 193D EAE0 FF08 F1A6 5D48"
	$"3D32 2920 1907 130E 0A07 0403 0201 8900"
	$"FD00 003F C500 FF01 0402 0303 0404 FE05"
	$"FF04 FF03 FC02 0603 0509 0F19 37E3 DEFF"
	$"06D0 7D4D 4136 2B22 081A 140E 0A07 0402"
	$"0101 E900 0310 7070 10CB 0002 4080 40DF"
	$"00FD 0000 57C6 0007 0102 1803 0506 0707"
	$"FD08 FF07 0C06 0504 0403 0304 0609 0F18"
	$"34DC DDFF 05EE A556 4437 2C08 221A 130D"
	$"0906 0302 01F2 0000 8FFE BF00 60FD 0003"
	$"CFFF FFCF EA00 0810 70BF EFFF FFDF 9F40"
	$"EC00 0050 FEFF 0050 E000 FD00 0055 C700"
	$"1201 0203 668B 1009 0B0C 0D0E 0E0D 0D0C"
	$"0A09 0807 FE06 0507 0A10 192E D4DB FF03"
	$"D481 4437 082B 2118 110C 0805 0301 F200"
	$"00BF FEFF 0080 FE00 0040 FDFF 0040 EC00"
	$"0160 EFF9 FF00 8FED 0000 BFFE FF00 BFE0"
	$"00FD 0000 54C8 000A 0102 0304 20D3 B83E"
	$"1012 14FE 150E 1413 110F 0E0C 0A09 090A"
	$"0C11 192B CEDA FF02 CB50 4108 3428 1E15"
	$"0F0A 0603 02F2 0000 BFFE FF00 80FE 0000"
	$"20FD FF00 20ED 0000 50F6 FF00 70EE 0000"
	$"9FFE FF00 9FE0 00FD 0000 5FC9 001D 0102"
	$"0304 0709 5DFF E69A 4C1D 1F20 201F 1D1B"
	$"1816 1311 0F0D 0D0F 131A 28C7 DDFF 05FC"
	$"E2AF 6F5A 4A08 3B2E 2219 110B 0704 02F2"
	$"0000 BFFE FF00 80FD 0003 60EF EF60 EC00"
	$"00DF FEFF 03AF 4040 80FD FF01 EF10 EF00"
	$"0410 BFFF BF10 E000 FD00 0073 CA00 1E01"
	$"0203 0407 0A0E 12A9 FFFF F6BE 8F5A 4233"
	$"2A28 2421 211D 1613 1212 151C 26BF DEFF"
	$"06EF C69A 8674 6251 0841 3226 1B13 0C08"
	$"0502 FC00 0010 FE40 0010 FC00 00BF FEFF"
	$"0080 EE00 0210 4040 FB00 0050 FEFF 00DF"
	$"FD00 0080 FDFF 0050 F800 FE40 0020 EE00"
	$"0020 FE40 F400 0310 4040 10FE 00FD 0000"
	$"9CCC 00FF 0108 0203 0507 0A0E 1338 B7FC"
	$"FF10 F8E0 CEBD B1AA B49E 2D1F 1B18 1719"
	$"1E27 B7E0 FF08 FAE2 C1AC 9C8B 7866 550D"
	$"4435 281D 140D 0805 0300 0010 80DF FCFF"
	$"01CF 50FE 0000 BFFE FF00 80FE 0000 30FD"
	$"BFFD 00FD BF02 0030 BFFD FF01 8F10 FE00"
	$"0020 FE40 0020 FD00 0020 FDFF 0080 FB00"
	$"0160 CFFC FF01 DF80 FE00 008F FEBF 0060"
	$"FB00 0220 9FEF FCFF 04AF 3000 0030 FEBF"
	$"038F 0040 BFFD FF02 8F00 00FD 0000 80CD"
	$"00FF 0108 0203 0507 0B0F 2285 E7F4 FF09"
	$"8731 2A24 1F1C 1D20 28AF E2FF 0AFE F2DB"
	$"C8BB AC9C 8A78 6655 0B44 3528 1D14 0D08"
	$"0503 0030 DFF9 FF00 BFFE 0000 BFFE FF00"
	$"80FE 0000 40FD FFFD 00FD FF01 60EF FBFF"
	$"00CF F400 FDFF 0080 FD00 0110 BFF8 FFFE"
	$"0000 BFFE FF00 80FC 0001 60EF F9FF 0380"
	$"0000 40FE FF01 EF60 FAFF 0180 00FD 0000"
	$"99E5 00F9 01F3 00FF 01FF 0206 0406 080B"
	$"105F CFF3 FF0A C649 3F36 2E27 2221 2329"
	$"A6E3 FF0B F9E9 D8CE C2B5 A696 8674 6352"
	$"0A41 3326 1C13 0D08 0502 20EF FEFF 06EF"
	$"8040 4060 9FBF FE00 00BF FEFF 0080 FE00"
	$"0040 FDFF FD00 FDFF 03EF FFCF BFFC FF00"
	$"80F6 0000 20FD FF00 50FD 0000 CFFD FF05"
	$"9F40 4050 8FEF FE00 00BF FEFF 0080 FD00"
	$"0050 FDFF 09DF 6040 4070 BF80 0000 40FD"
	$"FF00 EFFA FF01 EF00 FD00 00A2 F100 F301"
	$"FC02 FD01 F700 FF01 0802 0304 0609 0E47"
	$"B1FD F3FF 0BF9 8158 4E43 382F 2925 262B"
	$"9DE5 FF0D FCF0 E1D7 CEC4 B8AB 9C8C 7C6C"
	$"5B4B 093C 2F23 1911 0C07 0402 BFFE FF01"
	$"EF20 FC00 0010 FE00 00BF FEFF 0080 FE00"
	$"0040 FDFF FD00 FDFF 05EF 5000 0030 EFFE"
	$"FF00 DFF6 0000 80FE FF00 EFFD 0000 80FD"
	$"FF00 50FC 0000 10FE 0000 BFFE FF00 80FE"
	$"0001 10EF FEFF 01BF 10FC 0003 1000 0040"
	$"FDFF 04DF 5000 109F FDFF 0030 FD00 009C"
	$"F400 FD01 F802 FD03 FD04 FE03 FF02 FF01"
	$"FA00 FF01 0702 0305 070A 1A30 E8F1 FF0B"
	$"D375 695C 4F42 372E 2928 2C92 E7FF 0FFE"
	$"F5E7 DCD4 CBC1 B6A9 9C8E 7F6F 6051 4208"
	$"3529 1F16 0F0A 0604 32FD FF00 60F7 0000"
	$"BFFE FF00 80FE 0000 40FD FFFD 00FD FF00"
	$"60FD 0000 8FFD FF00 10F8 0001 20EF FEFF"
	$"0080 FD00 00EF FEFF 009F F700 00BF FEFF"
	$"0080 FE00 0070 FDFF 0020 F800 0040 FDFF"
	$"0010 FE00 0010 FDFF 0040 FD00 00A4 F500"
	$"FF01 FF02 FF03 FF04 FA05 FF06 FB07 0706"
	$"0504 0302 0201 01FE 00FF 0109 0203 0406"
	$"0817 74D4 569C F2FF 0CFE B085 7869 5A4B"
	$"3E33 2C2A 2D8A E8FF 10F8 EBDE D7CF C6BC"
	$"B1A5 988A 7C6E 6052 4538 082C 2219 120C"
	$"0805 0380 FDFF F600 00BF FEFF 0080 FE00"
	$"0040 FDFF FD00 FDFF 0040 FD00 0050 FDFF"
	$"0040 F900 0110 CFFE FF01 CF10 FE00 0040"
	$"FDFF 0040 F700 00BF FEFF 0080 FE00 00BF"
	$"FEFF 00BF F700 0040 FDFF FC00 FDFF 0040"
	$"FD00 00AC F700 FF01 FF02 0503 0506 0708"
	$"08FB 09FF 0A00 0BFE 0C09 0D0C 0B0A 0907"
	$"0604 0302 FC01 0B02 0304 0609 17B9 FFFF"
	$"C147 E5F3 FF0C F0A5 9485 7463 5243 372F"
	$"2B2D 84EA FF12 FAEE E1D9 D2C9 BFB5 AA9E"
	$"9184 776A 5D50 4338 2D08 231B 140E 0A06"
	$"0402 BFFE FF00 CFF6 0000 BFFE FF00 80FE"
	$"0000 40FD FFFD 00FD FF00 40FD 0000 40FD"
	$"FF00 40F9 0000 AFFE FF01 EF30 FD00 0080"
	$"FDFF 0010 F700 00BF FEFF 0080 FE00 FDFF"
	$"008F F700 0040 FDFF FC00 FDFF 0040 FD00"
	$"00AF F800 FF01 0802 0304 0608 0A0B 0D0E"
	$"FC0F FF10 0316 3432 17FE 1408 1311 0E0C"
	$"0907 0504 03FD 020B 0405 073D 6416 A6FF"
	$"FFFE 7889 F3FF 0CE3 AD9F 8E7C 6957 4639"
	$"302C 2D78 ECFF 14FD F3E4 DCD4 CBC2 B8AD"
	$"A296 897C 7063 574B 4035 2B23 081B 140F"
	$"0B07 0503 01BF FEFF 00BF F600 00BF FEFF"
	$"0080 FE00 0040 FDFF FD00 FDFF 0040 FD00"
	$"0040 FDFF 0040 FA00 009F FEFF 01EF 30FC"
	$"0000 80FD FFF6 0000 BFFE FF00 80FE 00FD"
	$"FF00 80F7 0000 40FD FFFC 00FD FF00 40FD"
	$"0000 B8F9 00FF 010A 0203 0507 0E46 553B"
	$"1B16 17FE 18FF 1910 55B7 E9E5 B256 1F1E"
	$"1C19 1612 0E0B 0806 04FE 030D 0405 0850"
	$"F4F4 4338 E4FF FFDC 63DB F4FF 0DD8 B6A6"
	$"9481 6D59 4839 302B 2D71 FEEF FF16 FEF6"
	$"E9DE D6CE C5BB B0A5 998D 8074 675B 5045"
	$"3A31 2820 1908 130F 0A07 0503 0201 BFFE"
	$"FF00 BFF6 0000 BFFE FF00 80FE 0000 40FD"
	$"FFFD 00FD FF00 40FD 0000 40FD FF00 40FC"
	$"0001 10CF FEFF 01EF 30FB 0000 80FD FFF6"
	$"0000 BFFE FF00 80FE 00FD FF00 80F7 0000"
	$"40FD FFFC 00FD FF00 40FD 0000 BAF9 0012"
	$"0102 0305 0848 C3F5 FCEB B94C 2324 2525"
	$"45A4 F5FD FF0B E850 2B29 2520 1B15 100C"
	$"0907 FE05 080F 0D0B 40EA FFB4 258A FEFF"
	$"02A7 91FE F6FF 0EFE D2BA AA97 826D 5947"
	$"382E 2A2B 6CFD F0FF 17F9 EDDF D8D0 C8BE"
	$"B3A8 9C90 8478 6B5F 5348 3E34 2C24 1D17"
	$"1208 0D0A 0705 0302 0101 BFFE FF00 BFF6"
	$"0000 BFFE FF00 80FE 0000 40FD FFFD 00FD"
	$"FF00 40FD 0000 40FD FF00 40FD 0001 10CF"
	$"FEFF 01DF 30FA 0000 80FD FFF6 0000 BFFE"
	$"FF00 80FE 00FD FF00 80F7 0000 40FD FFFC"
	$"00FD FF00 40FD 0000 BAFA 00FF 0104 0305"
	$"0754 F5FC FF05 D74A 3342 8FE3 FAFF 1CBC"
	$"3D38 322C 251E 1711 0D0A 0807 17BB 7E0F"
	$"1389 FFFA 6C3F D7FF FFF1 8AD3 F6FF 0EFB"
	$"CFBA A996 816B 5745 362C 282A 61F9 F2FF"
	$"19FC F1E3 DBD3 CAC1 B6AB A094 877B 6F63"
	$"574C 4137 2E26 1F19 140F 0C08 0806 0403"
	$"0201 0100 80FD FFF6 0000 BFFE FF00 80FE"
	$"0000 40FD FFFD 00FD FF00 40FD 0000 60FD"
	$"FF00 20FE 0001 20CF FEFF 01BF 10F9 0000"
	$"40FD FF00 40F7 0000 BFFE FF00 80FE 0000"
	$"BFFE FF00 BFF7 0000 40FD FFFC 00FD FF00"
	$"40FD 0000 BCFA 0005 0102 0407 14D4 FAFF"
	$"02BC 83D1 F8FF 1DFA 7F49 423A 3128 1F18"
	$"120E 0B0A 18C3 F031 1835 D4FF CE45 86FC"
	$"FFFF CAA3 FAF9 FF10 FEFF F8C9 B7A5 917C"
	$"6753 4133 2A26 2856 F4F4 FF1B FEF5 E7DD"
	$"D5CD C3B9 AEA3 978B 7E72 665A 4F44 3A31"
	$"2921 1B15 110D 0A07 0405 0402 0101 FE00"
	$"0050 FDFF 0050 F700 00BF FEFF 0080 FE00"
	$"0040 FDFF FD00 FDFF 0040 FD00 008F FEFF"
	$"00EF FE00 0130 EFFE FF00 80F7 0000 10FD"
	$"FF00 8FF7 0000 BFFE FF00 80FE 0000 8FFD"
	$"FF00 10F8 0000 40FD FFFC 00FD FF00 40FD"
	$"0000 CDFB 00FF 0104 0305 0947 FAF9 FF00"
	$"FDF6 FF1C D962 544A 3F34 2920 1974 460E"
	$"0F4C F9A5 1E25 79FD FE96 56CD FFFF FBAD"
	$"D2FB FF12 FDED E7FF F6C1 AF9E 8A76 614D"
	$"3D2F 2623 254F F2F6 FF1D FEF8 EADE D7CF"
	$"C6BC B2A6 9B8E 8276 695D 5247 3D33 2B23"
	$"1D17 120E 0B08 0604 0303 0201 01FC 0000"
	$"DFFE FF01 EF40 FD00 0130 70FE 0000 BFFE"
	$"FF00 80FE 0000 40FD FFFD 00FD FF00 60FE"
	$"0001 10EF FEFF 089F 0000 20EF FFFF DF40"
	$"F500 009F FDFF 0070 FD00 0120 80FE 0000"
	$"BFFE FF00 80FE 0000 20FD FF01 CF20 FD00"
	$"FF50 FF00 0040 FDFF FC00 FDFF 0040 FD00"
	$"00C5 FB00 0501 0204 070B 60EB FF1C AA66"
	$"5A4E 4034 2920 B1CC 1813 169D FD56 2C3B"
	$"C4FF E76E 88F6 FFFF E3B0 F5FD FF13 F1DC"
	$"D2CF EEF6 B8A5 9481 6D59 4737 2B23 2023"
	$"48EF F7FF 1EF9 ECE0 D9D1 C9BF B5AA 9E92"
	$"8579 6D61 554A 3F36 2D25 1E18 130F 0B09"
	$"0604 0302 FF01 FA00 0040 FCFF 05CF BFBF"
	$"FFFF BFFE 0000 BFFE FF00 80FE 0000 40FD"
	$"FFFD 00FD FF04 EF8F 4060 DFFE FF04 EF20"
	$"0000 40F4 FF00 BFFE 0001 10EF FDFF 05DF"
	$"BFBF EFFF FFFE 0000 BFFE FF00 80FD 0000"
	$"80FC FFFF BF06 CFFF FF80 0000 40FD FFFC"
	$"00FD FF00 40FD 0000 B2FC 00FF 0105 0305"
	$"090F 4BFB ECFF 17EE 856C 5D4E 4033 2840"
	$"F06C 181A 3FEC C634 3A75 F7FF B76F C7FE"
	$"FF19 C3CE FFFF F4DB C9C8 C6C2 CCF2 B097"
	$"8775 6350 4031 2620 1E21 40EB F9FF 20FA"
	$"EDDE D8D2 CBC2 B8AD A195 897D 7064 584D"
	$"4238 2F27 201A 1510 0C09 0705 0302 0201"
	$"0001 F800 0140 EFF9 FF00 BFFE 0000 BFFE"
	$"FF00 80FE 0000 40FD FFFD 00F5 FF00 60FE"
	$"0000 40F4 FF00 BFFD 0001 20CF F8FF FE00"
	$"00BF FEFF 0080 FC00 0070 F8FF 0380 0000"
	$"40FD FFFC 00FD FF00 40FD 0000 C0FC 0007"
	$"0102 0407 0C12 1FBD EBFF 33C8 7D6D 5D4C"
	$"3E31 2892 E22B 1F23 8BFF 7A40 4ABB FFF4"
	$"8E8C F0FF FFF0 B9E6 DCBE BBBB BAB7 B2AC"
	$"D1AB 8879 6857 4738 2B22 1C1B 1F37 E3FB"
	$"FF22 FCE9 D7D1 CFCA C3BA B0A5 998C 8074"
	$"675B 5045 3B32 2922 1C16 110D 0A08 0504"
	$"0302 0101 00F6 0002 1080 DFFC FF01 AF50"
	$"FE00 00BF FEFF 0080 FE00 0040 FDFF FD00"
	$"FDFF 019F DFFD FF01 AF30 FD00 0040 F4FF"
	$"00BF FB00 0160 CFFC FF01 CF70 FE00 00BF"
	$"FEFF 0080 FB00 0220 9FEF FDFF 05EF 9F30"
	$"0000 40FD FFFC 00FD FF00 40FD 0000 8CFD"
	$"0008 0102 0306 0A0F 1721 8FEB FF17 F8A2"
	$"7D6B 5949 3B30 36E5 9524 283D D6E2 4F4D"
	$"75EE FFD1 7DBB FEFF 18BF ACAB ADAD ACAA"
	$"A5A0 9896 8877 695A 4C3D 3025 1D19 181D"
	$"2FDD FDFF 21FD E7CA BEC3 C4C0 BAB2 A79C"
	$"9084 776B 5F53 483E 342C 241D 1712 0E0B"
	$"0806 0403 0201 01FE 00F3 0000 10FE 40EA"
	$"00FD FF05 4000 3040 4010 E300 FE40 0010"
	$"EE00 0320 4040 30ED 00FD 0000 72FD 0008"
	$"0203 0508 0D14 2D86 E4EA FF32 DD8C 7967"
	$"5546 3930 7BF2 482C 317B FF9F 5058 AEFF"
	$"FBA2 88E5 E8B4 9B9D 9E9F 9D9B 9792 8C84"
	$"7B71 6559 4C40 3328 1F19 1516 1B29 D6FE"
	$"FF1E E9BA A3AA B2B5 B4AF A89E 9387 7B6E"
	$"6256 4B41 372E 261F 1914 0F0C 0907 0503"
	$"02FE 01FD 00D8 00FD FF00 40AF 00FD 0000"
	$"6FFD 0006 0305 080C 145F CAE8 FF55 FDB5"
	$"8774 6151 4338 36CE B430 3440 C9F4 6658"
	$"70E3 FFE3 8796 918C 8F90 908E 8C88 837D"
	$"776F 675D 5449 3F34 2A21 1A15 1213 1824"
	$"CDFF F1B6 8685 929D A2A4 A29C 9389 7E72"
	$"665A 4E44 3A30 2821 1B15 110D 0A07 0504"
	$"0202 0101 FB00 D800 FDFF 0040 AF00 FD00"
	$"006B FD00 0504 070B 41AE F9E6 FF52 EA9A"
	$"816E 5C4D 4138 63F6 6637 3C6E F9BC 575E"
	$"9EF2 C17D 7B7E 8081 817F 7D79 746F 6862"
	$"5A53 4B43 3A32 2921 1A14 110F 1116 1EBA"
	$"E475 596A 7985 8D91 918E 877E 7469 5D52"
	$"473C 332B 231C 1712 0E0A 0806 0403 0201"
	$"01F9 00D8 00FD FF00 40AF 00FD 0000 66FD"
	$"0003 0611 88EB E3FF 4FC8 8E7A 6857 4A3F"
	$"39B9 D33C 3C41 AFFE 7F5A 677F 696D 7072"
	$"7373 716E 6A66 605A 544E 4741 3A33 2C26"
	$"1F19 1410 0D0D 0F13 1B4D 4641 505F 6B75"
	$"7C7F 7E79 7269 5F54 4A3F 362D 251E 1813"
	$"0F0B 0906 0403 0201 01F7 00D8 00FD BF00"
	$"30AF 00FD 0000 5DFD 0001 0988 E1FF 4EF4"
	$"A486 7362 5347 3F57 F086 3C40 5EEB B754"
	$"595D 6063 6465 6563 615D 5853 4E48 423C"
	$"3630 2B26 211C 1713 0F0C 0A0A 0C11 1821"
	$"2C39 4652 5D65 6A6B 6965 5E55 4B42 382F"
	$"2720 1A15 100C 0907 0503 0202 0101 F600"
	$"8100 FD00 005A FD00 011F E4E0 FF4B D592"
	$"7F6D 5C4F 453E 9BE8 4C3E 426F 614E 5154"
	$"5657 5857 5654 504C 4742 3C37 312C 2723"
	$"1F1B 1713 100D 0A09 0808 0A0E 141C 2631"
	$"3C46 4E54 5858 5651 4A42 3A31 2922 1C16"
	$"110D 0A08 0504 0302 0101 F400 8100 FD00"
	$"0058 FD00 0144 F9E0 FF28 FAB0 8B78 6657"
	$"4B42 47E6 A23B 3E41 4446 494A 4B4C 4B4A"
	$"4744 413C 3833 2D28 241F 1B18 1512 0F0D"
	$"0B09 07FE 061D 080C 1118 1F28 3139 4044"
	$"4646 433F 3932 2B24 1D17 120E 0B08 0604"
	$"0302 0101 F200 8100 FD00 0059 FD00 013C"
	$"F4DF FF26 E197 8370 6052 473F 7276 3839"
	$"3B3D 3F40 4140 403E 3C3A 3633 2E2A 2521"
	$"1D19 1512 100D 0B09 0807 05FE 041A 0506"
	$"090E 1319 2027 2D32 3536 3533 2F2A 241E"
	$"1914 0F0C 0907 0503 02FE 01F1 00DD 00FF"
	$"20A7 00FD 0000 6CFD 0001 17BB DFFF 09FE"
	$"BD8E 7B69 5A4D 433C 38FE 3500 36FE 3734"
	$"3634 3330 2D2A 2622 1E1B 1713 100E 0B0A"
	$"0807 0605 0403 0302 0303 0507 0A0F 1319"
	$"1E22 2528 2827 2521 1D19 1410 0D0A 0705"
	$"0402 0201 01EF 00F8 0001 BF9F FE00 0170"
	$"BFED 00FF EFEB 0001 65BA F900 0165 BAC9"
	$"00FD 0000 6CFD 0002 144D F7DF FF22 EC9E"
	$"8673 6253 473E 3733 3130 2F2F 2E2D 2C2A"
	$"2825 221F 1C18 1512 0F0D 0A08 0705 0404"
	$"03FE 02FF 01FF 0218 0305 080B 0E12 1619"
	$"1B1C 1C1B 1917 1410 0D0A 0806 0403 0201"
	$"01ED 00F8 0006 CFFF 1000 00DF AFED 00FF"
	$"8FEC 0002 CEFF FFFA 0002 CEFF FFC9 00FD"
	$"0000 85FD 0002 1520 A7DE FF20 C991 7E6B"
	$"5B4D 4138 322E 2B29 2726 2422 201E 1B19"
	$"1613 110E 0C0A 0806 0504 0302 02F9 0107"
	$"0204 0508 0A0D 0F11 FE13 0B12 110F 0D0A"
	$"0806 0403 0201 01EB 00F8 002B 70FF 6000"
	$"30FF 6000 30BF FFFF AF10 0030 BF80 DFEF"
	$"6030 CFFF FF60 00BF 8F00 0050 DFFF EF80"
	$"0000 30BF 70BF FF9F FB00 0244 CEFF FA00"
	$"0244 CEFF C900 FD00 0083 FD00 0316 2144"
	$"EDDF FF1D F4A5 8875 6353 453A 322B 2723"
	$"211E 1C1A 1816 1411 0F0D 0B09 0706 0403"
	$"0202 FD01 FB00 FF01 0602 0405 0708 0A0B"
	$"FD0C 090A 0908 0605 0302 0201 01EA 00F8"
	$"002C 20FF AF00 80FF 1010 EFDF 1030 FFCF"
	$"0040 FFDF 8FFF BFAF DF10 0020 00FF BF00"
	$"40FF AF00 70FF 8000 40FF EF80 CFFF 30FB"
	$"0001 BAFF F900 01BA FFC9 00FD 0000 7BFD"
	$"0003 1520 2E93 DEFF 1AD6 937F 6C5B 4B3E"
	$"332A 241F 1B18 1614 120F 0D0C 0A08 0705"
	$"0403 0202 FE01 F700 FF01 0402 0304 0506"
	$"FC07 0706 0504 0302 0201 01E8 00F7 002B"
	$"CFFF 10CF CF00 60FF 8F00 00BF FF30 40FF"
	$"8000 4030 BFEF 8020 0000 FFBF 00AF FF50"
	$"0010 FFEF 0040 FF80 0080 FF40 FB00 01BA"
	$"FFF9 0001 BAFF C900 FD00 0072 FD00 0414"
	$"1E2C 46DF DFFF 1AFA AF8A 7663 5242 362B"
	$"231C 1714 110E 0C0A 0907 0605 0403 0202"
	$"0101 F300 FF01 FF02 FF03 FC04 FF03 FF02"
	$"FF01 E600 F700 0670 FF80 FF70 0080 FBFF"
	$"FF40 01FF 80FE 0017 50EF FFFF 7000 FFBF"
	$"00BF FF40 0000 FFFF 0040 FF80 0080 FF40"
	$"FB00 01BA FFF9 0001 BAFF C900 FD00 0068"
	$"FD00 0512 1C29 3885 FEDF FF17 E096 816D"
	$"5A49 3A2D 231B 1511 0D0B 0907 0604 0403"
	$"0202 0101 F000 FD01 FB02 FD01 E400 F700"
	$"0820 FFEF FF20 0080 FF80 FC00 0240 FF80"
	$"FD00 1610 60EF EF00 FFBF 00BF FF40 0000"
	$"FFFF 0040 FF80 0080 FF40 FB00 01BA FFF9"
	$"0001 BAFF C900 FD00 0067 FD00 0510 1925"
	$"3346 CEDF FF12 FEBD 8C77 6351 4031 251C"
	$"150F 0B08 0604 0303 02FE 01EB 00F9 01E1"
	$"00F6 000F CFFF DF00 0030 FFDF 1000 0010"
	$"0040 FF80 FE00 1710 0000 CFEF 00FF BF00"
	$"60FF 8F00 50FF 9F00 40FF 8000 80FF 40FB"
	$"0001 BAFF FE00 FFFF FE00 01BA FFC9 00FD"
	$"0000 61FD 0006 0E15 202D 3D74 FADF FF0F"
	$"EC9B 826E 5A47 3729 1E16 0F0A 0705 0302"
	$"FE01 C100 F600 028F FF8F FE00 0960 EFEF"
	$"BFDF AF00 40FF 80FE 0017 FFBF DFFF 6000"
	$"FFBF 0000 8FFF BFEF CF10 0040 FF80 0080"
	$"FF40 FB00 01BA FFFE 00FF FFFE 0001 BAFF"
	$"C900 FD00 0036 FD00 060B 121B 2736 47BA"
	$"DEFF 0FC8 8E78 6450 3E2F 2218 100B 0704"
	$"0201 01BF 00EE 00FF 4000 20F9 0003 2040"
	$"4010 FA00 0220 4030 AD00 FD00 0024 FD00"
	$"0709 0E16 212E 3E64 EDDF FF0F F4A3 846E"
	$"5A47 3627 1C13 0C07 0402 0101 BF00 8100"
	$"FD00 0023 FD00 0707 0B12 1B27 3546 9FDE"
	$"FF0E D68F 7964 503D 2E20 160E 0905 0301"
	$"01BF 0081 00FD 0000 24FD 0008 0509 0E16"
	$"202D 3D57 E3DF FF0E FAAD 846E 5946 3426"
	$"1A11 0A06 0302 01BF 0081 00FD 0000 24FD"
	$"0009 0407 0B11 1A25 3344 8BFE DFFF 0DDD"
	$"8E78 624E 3B2B 1E14 0D07 0402 01BF 0081"
	$"00FD 0000 24FD 0009 0305 080D 151F 2B3A"
	$"4ECE DFFF 0DF0 9C81 6B55 4230 2217 0E09"
	$"0502 01BF 0081 00FD 0000 25FD 000A 0203"
	$"060A 1019 2431 4275 FAE0 FF0D EBA0 8871"
	$"5B47 3526 1910 0A05 0301 BF00 8100 FD00"
	$"0025 FD00 0A01 0204 080D 141D 2938 49BA"
	$"E0FF 0DD7 A28C 7660 4B38 281B 120B 0603"
	$"01BF 0081 00FD 0000 28FD 000B 0102 0306"
	$"0A0F 1722 2F3F 62EE E2FF 0FEC BBA4 8E78"
	$"624D 3A2A 1C12 0B06 0301 01C0 0081 00FD"
	$"0000 29FC 000A 0102 0407 0C12 1B27 3647"
	$"9FE4 FF11 FBE6 C9B5 A18C 7761 4C3A 2A1D"
	$"130B 0603 0101 C000 8100 FD00 002C FC00"
	$"FF01 0903 0509 0E16 202D 3D57 E2E7 FF13"
	$"FEF2 DFCE BFAF 9C87 725D 4938 281C 120B"
	$"0603 0101 C000 8100 FD00 002C FB00 0A01"
	$"0204 070B 111A 2533 448C E8FF 14F8 EADA"
	$"D0C4 B6A5 937F 6B57 4434 251A 110A 0603"
	$"0101 C000 8100 FD00 002D FA00 0A01 0205"
	$"080D 151F 2B3A 4DCF EBFF 15FB EFE1 D8CF"
	$"C4B7 A898 8674 614F 3E2E 2217 0F09 0503"
	$"01BF 0081 00FD 0000 30FA 000B 0102 0306"
	$"0A10 1924 3142 76F9 EEFF 17FD F3E5 DCD4"
	$"CBC0 B4A7 9989 7867 5545 3628 1D14 0D08"
	$"0402 01BF 0081 00FD 0000 31F9 000A 0102"
	$"0408 0D14 1D29 3849 B7F0 FF19 FEF7 E9DE"
	$"D7CE C5BB AFA3 9586 7768 5849 3A2D 2118"
	$"100B 0604 0201 BF00 8100 FD00 0033 F900"
	$"0B01 0203 060A 0F17 222F 3F61 EFF2 FF1A"
	$"FAED E0D9 D1C8 BEB4 A89C 8F81 7365 5749"
	$"3C2F 241B 130D 0805 0301 01BF 0081 00FD"
	$"0000 33F8 000A 0102 0407 0C12 1B27 3647"
	$"A1F4 FF1B FCF1 E3DB D3CB C1B7 ACA0 9487"
	$"7A6D 6053 463A 2F25 1C14 0E0A 0604 0201"
	$"BE00 8100 FD00 0036 F800 FF01 0903 0509"
	$"0E16 202D 3C55 DFF7 FF1D FDF4 E6DC D5CD"
	$"C4BA AFA4 988B 7F72 6559 4D42 372D 241C"
	$"150F 0A07 0403 0101 BE00 8100 FD00 0037"
	$"F700 0B01 0204 070B 111A 2533 4488 FEFA"
	$"FF1E FEF4 E5DB D5CE C6BC B2A7 9B8F 8276"
	$"695D 5246 3C32 2921 1A14 0F0A 0705 0302"
	$"01BD 0081 00FD 0000 36F6 000A 0102 0508"
	$"0D15 1E2B 394B CCFB FF1E F5E1 D3D1 CCC6"
	$"BEB4 AA9E 9286 796D 6155 4A3F 362D 251E"
	$"1712 0D0A 0704 0302 01BC 0081 00FD 0000"
	$"38F6 002E 0102 0306 0A10 1823 3040 69D7"
	$"FDFF FFF4 D7C3 C2C3 C0BB B4AB A195 897D"
	$"7164 584D 4239 3027 201A 1410 0C09 0604"
	$"0302 01BB 0081 00FD 0000 36F5 002C 0102"
	$"0408 0C13 1C28 3645 649B BFC1 A8A4 ACB0"
	$"B0AD A8A0 968B 8074 685C 5045 3B32 2A22"
	$"1C16 110D 0A07 0504 0201 01BA 0081 00FD"
	$"0000 35F5 00FF 0129 0305 090F 1620 2C3A"
	$"495A 6A79 8691 989B 9C98 938A 8176 6A5F"
	$"5348 3E35 2C24 1D18 130E 0B08 0604 0302"
	$"0101 B900 8100 FD00 0032 F400 2801 0204"
	$"070B 1119 232F 3D4B 5967 737C 8386 8582"
	$"7C74 6B60 564B 4137 2E26 1F19 1410 0C09"
	$"0705 0302 0101 B700 8100 FD00 0031 F400"
	$"FF01 2503 0508 0D13 1C26 313D 4955 6068"
	$"6D70 6F6C 665F 564C 4339 3128 211B 1511"
	$"0D0A 0705 0403 0201 01B6 0081 00FD 0000"
	$"2EF3 0024 0102 0306 090F 151D 2630 3A44"
	$"4D54 585A 5956 514A 433A 322A 231C 1712"
	$"0E0B 0806 0403 0201 01B4 0081 00FD 0000"
	$"2BF2 001F 0102 0407 0B10 161D 252D 353C"
	$"4145 4645 423E 3832 2B24 1E18 130F 0B09"
	$"0604 0302 FE01 B300 8100 FD00 002A F200"
	$"FF01 1E03 0507 0B10 151B 2127 2C30 3334"
	$"3331 2D28 231E 1914 100C 0907 0503 0202"
	$"0101 B100 8100 FD00 0027 F100 1D01 0203"
	$"0507 0B0F 1317 1C20 2324 2524 221F 1C18"
	$"1410 0D0A 0705 0403 0201 01AF 0081 00FD"
	$"0000 24F0 001A 0102 0305 070A 0D10 1315"
	$"1719 1918 1715 1210 0D0A 0806 0403 0201"
	$"01AD 0081 00FD 0000 21EF 0009 0102 0304"
	$"0608 0A0C 0E0F FE10 080E 0D0B 0908 0604"
	$"0302 FE01 AC00 8100 FD00 001F EE00 1501"
	$"0202 0405 0607 0809 090A 0909 0806 0504"
	$"0302 0201 01AA 0081 00FD 0000 19ED 00FF"
	$"01FF 0201 0304 FB05 0604 0303 0202 0101"
	$"A800 8100 FD00 0012 EC00 FE01 FE02 FD03"
	$"FE02 FE01 A600 8100 FD00 000A E900 F701"
	$"A300 8100 FD00 0006 8100 8100 FD00 0006"
	$"8100 8100 FD00 0006 8100 8100 FD00 0006"
	$"8100 8100 FD00 0006 8100 8100 FD00 0006"
	$"8100 8100 FD00 00FF"
};

resource 'STR ' (128, "Change to \"0\" to remove expiration") {
	"1"
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

data 'CODE' (1, "First Segment", locked, protected, preload) {
	$"0000 0001 9DCE 598F 2F3C 434F 4445 4267"            /* ....ùŒYè/<CODEBg */
	$"A9A0 2017 6700 00F2 2040 2050 2E18 2C10"            /* ©† .g..Ú @ P..,. */
	$"A9A3 7000 204D 91C6 6002 10C0 B1CD 6DFA"            /* ©£p. Më∆`..¿±Õm˙ */
	$"41ED 0028 43F5 7800 6002 10C0 B1C9 6DFA"            /* AÌ.(Cıx.`..¿±…m˙ */
	$"598F 2F3C 4441 5441 4267 A9A0 2057 2008"            /* Yè/<DATABg©† W . */
	$"6700 00B6 2F0D 2050 4868 0004 4EBA 00B0"            /* g..∂/. PHh..N∫.∞ */
	$"508F 43FA FF9C 2B49 F950 224D 4EBA 0218"            /* PèC˙ˇú+I˘P"MN∫.. */
	$"226D F950 4EBA 0210 A9A3 4EBA 0296 422D"            /* "m˘PN∫..©£N∫.ñB- */
	$"F955 303C A89F A746 2F08 303C A198 A346"            /* ˘U0<®üßF/.0<°ò£F */
	$"B1DF 670A 1B7C 0001 F955 7001 A198 303C"            /* ±ﬂg..|..˘Up.°ò0< */
	$"A9F0 A746 2B48 F94C 303C A9F1 A746 2B48"            /* ©ßF+H˘L0<©ÒßF+H */
	$"F948 303C A9F4 A746 2B48 F944 303C A9F0"            /* ˘H0<©ÙßF+H˘D0<© */
	$"41FA 0268 A647 303C A9F1 41FA 0324 A647"            /* A˙.h¶G0<©ÒA˙.$¶G */
	$"303C A9F4 41FA 002E A647 4EB9 0000 0488"            /* 0<©ÙA˙..¶GNπ...à */
	$"4EB9 0000 0504 487A 0022 4A2D FFFF 6702"            /* Nπ....Hz."J-ˇˇg. */
	$"4267 4267 4EB9 0000 0506 5C8F 42A7 4EB9"            /* BgBgNπ....\èBßNπ */
	$"0000 34A0 4EBA 0384 A9F4 0000 0000 48E7"            /* ..4†N∫.Ñ©Ù....HÁ */
	$"1C30 594F 266F 001C 7800 6000 00E4 1E9B"            /* .0YO&o..x.`..‰.õ */
	$"1F5B 0001 1F5B 0002 1F5B 0003 246F 0020"            /* .[...[...[..$o.  */
	$"D5D7 161B 4883 3003 0240 0080 670E 0243"            /* ’◊..HÉ0..@.Äg..C */
	$"007F 14DB 5343 4A43 6CF8 60E6 3003 0240"            /* ...€SCJCl¯`Ê0..@ */
	$"0040 670E 3003 0240 003F 5240 48C0 D5C0"            /* .@g.0..@.?R@H¿’¿ */
	$"60D0 3003 0240 0020 670A 0243 001F 5243"            /* `–0..@. g..C..RC */
	$"1A1B 600E 3003 0240 0010 6710 0243 000F"            /* ..`.0..@..g..C.. */
	$"7AFF 14C5 5343 4A43 6CF8 60A6 3003 0C40"            /* zˇ.≈SCJCl¯`¶0..@ */
	$"0004 6264 D040 303B 0006 4EFB 0002 0060"            /* ..bd–@0;..N˚...` */
	$"000A 001C 002C 0042 588A 14FC FFFF 14FC"            /* .....,.BXä.¸ˇˇ.¸ */
	$"FFFF 14DB 14DB 6000 FF7A 588A 14FC FFFF"            /* ˇˇ.€.€`.ˇzXä.¸ˇˇ */
	$"14DB 14DB 14DB 6000 FF6A 14FC FFA9 14FC"            /* .€.€.€`.ˇj.¸ˇ©.¸ */
	$"FFF0 548A 14DB 14DB 528A 14DB 6000 FF54"            /* ˇTä.€.€Rä.€`.ˇT */
	$"14FC FFA9 14FC FFF0 528A 14DB 14DB 14DB"            /* .¸ˇ©.¸ˇRä.€.€.€ */
	$"528A 14DB 6000 FF3C 3F3C 000F A9C9 5244"            /* Rä.€`.ˇ<?<..©…RD */
	$"0C44 0003 6D00 FF18 204B 584F 4CDF 0C38"            /* .D..m.ˇ. KXOLﬂ.8 */
	$"4E75 2F05 594F 226F 000C 1E99 1F59 0001"            /* Nu/.YO"o...ô.Y.. */
	$"1F59 0002 1F59 0003 2A17 7400 604C 1219"            /* .Y...Y..*.t.`L.. */
	$"1001 0240 0080 670C D201 1001 4880 48C0"            /* ...@.Äg.“...HÄH¿ */
	$"D480 6028 1E81 1F59 0001 1001 0240 0040"            /* ‘Ä`(.Å.Y.....@.@ */
	$"670C 3017 E548 E240 48C0 D480 600E 1F59"            /* g.0.ÂH‚@H¿‘Ä`..Y */
	$"0002 1F59 0003 2417 E58A E282 206F 0010"            /* ...Y..$.Âä‚Ç o.. */
	$"202F 0014 D1B0 2800 5385 4A85 6EB0 2049"            /*  /..—∞(.SÖJÖn∞ I */
	$"584F 2A1F 4E75 2F0A 2449 2F0D 2F0A 2F08"            /* XO*.Nu/.$I/././. */
	$"4EBA FF80 2F2D F950 2F0A 2F08 4EBA FF74"            /* N∫ˇÄ/-˘P/./.N∫ˇt */
	$"2F0A 2F0A 2F08 4EBA FF6A 4FEF 0024 245F"            /* /././.N∫ˇjOÔ.$$_ */
	$"4E75 2F0A 2449 2F0D 4497 2F0A 2F08 4EBA"            /* Nu/.$I/.Dó/./.N∫ */
	$"FF52 2F2D F950 4497 2F0A 2F08 4EBA FF44"            /* ˇR/-˘PDó/./.N∫ˇD */
	$"2F0A 4497 2F0A 2F08 4EBA FF38 4FEF 0024"            /* /.Dó/./.N∫ˇ8OÔ.$ */
	$"245F 4E75 BBFA 0028 6602 4E75 48E7 0084"            /* $_Nuª˙.(f.NuHÁ.Ñ */
	$"2A7A 001C 206D F94C 4A6F 000C 6604 206D"            /* *z.. m˘LJo..f. m */
	$"F948 2F48 000A 4CDF 2100 544F 4E75 0000"            /* ˘H/H..Lﬂ!.TONu.. */
	$"0000 41FA FFFA 208D 4E75 43F9 0000 0060"            /* ..A˙ˇ˙ çNuC˘...` */
	$"C0FC 0010 2388 08F0 4E75 3F3C 0001 4EBA"            /* ¿¸..#à.Nu?<..N∫ */
	$"FFB4 544F 48E7 E0E0 55AF 0018 246F 0018"            /* ˇ¥TOHÁ‡‡UØ..$o.. */
	$"202D F956 670A 2040 3F2A 0006 4E90 548F"            /*  -˘Vg. @?*..NêTè */
	$"50F8 0A5E 598F 2F3C 434F 4445 3F2A 0006"            /* P¯.^Yè/<CODE?*.. */
	$"A9A0 2017 6616 202D F962 6604 700F A9C9"            /* ©† .f. -˘bf.p.©… */
	$"2040 3F2A 0006 4E90 548F 60DA 4A38 0BB2"            /*  @?*..NêTè`⁄J8.≤ */
	$"6704 2040 A064 2057 A029 205F 2050 2008"            /* g. @†d W†) _ P . */
	$"A055 2040 2F08 302A 0006 4EBA FF7E 2248"            /* †U @/.0*..N∫ˇ~"H */
	$"D1E8 0008 4EBA FEE0 205F 224D D3E8 0004"            /* —Ë..N∫˛‡ _"M”Ë.. */
	$"3028 0002 2208 600C 337C 4EF9 0000 D3A9"            /* 0(..".`.3|N˘..”© */
	$"0002 5089 51C8 FFF2 4A2D F955 6704 7001"            /* ..PâQ»ˇÚJ-˘Ug.p. */
	$"A198 202D F95A 670A 2040 3F2A 0006 4E90"            /* °ò -˘Zg. @?*..Nê */
	$"548F 4CDF 0707 4A38 012D 6702 A9FF 4E75"            /* TèLﬂ..J8.-g.©ˇNu */
	$"3F3C 0000 4EBA FEEE 544F 2F0A 246F 0008"            /* ?<..N∫˛ÓTO/.$o.. */
	$"0C6A 4EF9 0000 667A 0C6A 0002 0006 6D72"            /* .jN˘..fz.j....mr */
	$"91C8 302A 0006 4EBA FF02 598F 2F3C 434F"            /* ë»0*..N∫ˇ.Yè/<CO */
	$"4445 3F2A 0006 A9A0 2017 6604 588F 6052"            /* DE?*..©† .f.Xè`R */
	$"2040 2050 2248 D1E8 0008 4EBA FE76 2057"            /*  @ P"H—Ë..N∫˛v W */
	$"2050 224D D3E8 0004 3028 0002 2208 600C"            /*  P"M”Ë..0(..".`. */
	$"337C A9F0 0000 93A9 0002 5089 51C8 FFF2"            /* 3|©..ì©..PâQ»ˇÚ */
	$"2057 A02A 205F A049 4A2D F955 6704 7001"            /*  W†* _†IJ-˘Ug.p. */
	$"A198 202D F95E 670A 2040 3F2A 0006 4E90"            /* °ò -˘^g. @?*..Nê */
	$"548F 245F 2E9F 4E75 4E75 2A78 0904 303C"            /* Tè$_.üNuNu*x..0< */
	$"A9F4 206D F944 A647 303C A9F0 206D F94C"            /* ©Ù m˘D¶G0<© m˘L */
	$"A647 303C A9F1 206D F948 A647 4E75 2F0A"            /* ¶G0<©Ò m˘H¶GNu/. */
	$"6014 2B52 F966 3F3C FFFF 2F2A 0008 206A"            /* `.+R˘f?<ˇˇ/*.. j */
	$"0004 4E90 5C4F 246D F966 200A 66E4 245F"            /* ..Nê\O$m˘f .f‰$_ */
	$"4E75 48E7 3000 7402 4EFB 2200 600A 4C01"            /* NuHÁ0.t.N˚".`.L. */
	$"0000 4CDF 000C 4E75 2400 4842 C4C1 2601"            /* ..Lﬂ..Nu$.HBƒ¡&. */
	$"4843 C6C0 D443 4842 4242 C0C1 D082 4CDF"            /* HC∆¿‘CHBBB¿¡–ÇLﬂ */
	$"000C 4E75 4E75 4E56 0000 4EBA 0016 4EBA"            /* ..NuNuNV..N∫..N∫ */
	$"0354 4EBA 1BCA 4E5E 4E75 846D 6169 6E00"            /* .TN∫. N^NuÑmain. */
	$"0000 4E56 0000 4EBA 1B5A 4EBA 0064 4EBA"            /* ..NV..N∫.ZN∫.dN∫ */
	$"0292 486D FA3A 486D FA3E 203C 0008 0005"            /* .íHm˙:Hm˙> <.... */
	$"AB1D 422D FA39 554F 4EBA 370C 101F 56C0"            /* ´.B-˙9UON∫7...V¿ */
	$"4400 1B40 FA43 554F A994 301F 3B40 FA8A"            /* D..@˙CUO©î0.;@˙ä */
	$"4E5E 4E75 8E49 6E69 7469 616C 697A 655F"            /* N^NuéInitialize_ */
	$"5F46 7600 0000 4E75 9447 6574 4375 7272"            /* _Fv...NuîGetCurr */
	$"656E 7453 6368 656D 655F 5F46 7600 0000"            /* entScheme__Fv... */
	$"4E56 0000 2F0A 594F 3F3C 0080 A9C0 205F"            /* NV../.YO?<.Ä©¿ _ */
	$"2448 2F0A A93C 594F 3F3C 0080 A949 205F"            /* $H/.©<YO?<.Ä©I _ */
	$"2448 2F0A 2F3C 4452 5652 A94D A937 245F"            /* $H/./<DRVR©M©7$_ */
	$"4E5E 4E75 8F49 6E69 744D 656E 7542 6172"            /* N^NuèInitMenuBar */
	$"5F5F 4676 0000 4E56 FFF8 554F 2F2E 0008"            /* __Fv..NVˇ¯UO/... */
	$"2F3C 6D69 7373 2F3C 2A2A 2A2A 486E FFFC"            /* /<miss/<****Hnˇ¸ */
	$"42A7 42A7 486E FFF8 303C 0E15 A816 301F"            /* BßBßHnˇ¯0<..®.0. */
	$"0C40 F95B 6604 7000 6004 303C F94D 4E5E"            /* .@˘[f.p.`.0<˘MN^ */
	$"4E75 9F4D 7947 6F74 5265 7175 6972 6564"            /* NuüMyGotRequired */
	$"5061 7261 6D73 5F5F 4650 4336 4145 4465"            /* Params__FPC6AEDe */
	$"7363 0000 4E56 0000 2F2E 0010 4EBA FF98"            /* sc..NV../...N∫ˇò */
	$"3F40 0018 4E5E 205F 4FEF 000C 4ED0 8944"            /* ?@..N^ _OÔ..N–âD */
	$"4F4F 5045 4E41 5050 0000 4E56 FF9E 48E7"            /* OOPENAPP..NVˇûHÁ */
	$"1830 266E 0010 554F 2F0B 2F3C 2D2D 2D2D"            /* .0&n..UO/./<---- */
	$"2F3C 6C69 7374 486E FFB2 303C 0812 A816"            /* /<listHnˇ≤0<..®. */
	$"301F 3800 554F 486E FFB2 486E FFAE 303C"            /* 0.8.UOHnˇ≤HnˇÆ0< */
	$"0407 A816 301F 3800 7601 6000 00AE 554F"            /* ..®.0.8.v.`..ÆUO */
	$"486E FFB2 3043 2F08 2F3C 6673 7320 486E"            /* Hnˇ≤0C/./<fss Hn */
	$"FFA6 486E FFA2 486E FFBA 4878 0046 486E"            /* ˇ¶Hnˇ¢Hnˇ∫Hx.FHn */
	$"FFAA 303C 100A A816 301F 3800 4A44 6678"            /* ˇ™0<..®.0.8.JDfx */
	$"7000 A122 2448 594F 2F0A 2F3C 5049 4354"            /* p.°"$HYO/./<PICT */
	$"486E FF9E A9FD 201F 4A80 6C10 486D FCFE"            /* Hnˇû©˝ .JÄl.Hm¸˛ */
	$"486D FCFD 4EBA 1A12 504F 603E 4EBA FE78"            /* Hm¸˝N∫..PO`>N∫˛x */
	$"302E FFBA B06D FA8C 661A 202E FFBC B0AD"            /* 0.ˇ∫∞m˙åf. .ˇº∞≠ */
	$"FA8E 6610 486D FD62 486D FD3A 4EBA 19EA"            /* ˙éf.Hm˝bHm˝:N∫.Í */
	$"504F 6016 41EE FFBA 43ED FA44 7010 22D8"            /* PO`.AÓˇ∫CÌ˙Dp."ÿ */
	$"51C8 FFFC 32D8 4EBA 09D4 2F0B 4EBA FE98"            /* Q»ˇ¸2ÿN∫.‘/.N∫˛ò */
	$"3F40 008A 584F 6018 5243 3043 B1EE FFAE"            /* ?@.äXO`.RC0C±ÓˇÆ */
	$"6F00 FF4C 2F0B 4EBA FE7E 3F40 008A 584F"            /* o.ˇL/.N∫˛~?@.äXO */
	$"4CDF 0C18 4E5E 205F 4FEF 000C 4ED0 8944"            /* Lﬂ..N^ _OÔ..N–âD */
	$"4F4F 5045 4E44 4F43 0000 3F7C F954 0010"            /* OOPENDOC..?|˘T.. */
	$"205F 4FEF 000C 4ED0 8A44 4F50 5249 4E54"            /*  _OÔ..N–äDOPRINT */
	$"444F 4300 0000 4E56 0000 1B7C 0001 FA39"            /* DOC...NV...|..˙9 */
	$"2F2E 0010 4EBA FE30 3F40 0018 4E5E 205F"            /* /...N∫˛0?@..N^ _ */
	$"4FEF 000C 4ED0 8944 4F51 5549 5441 5050"            /* OÔ..N–âDOQUITAPP */
	$"0000 4E56 0000 2F03 554F 2F3C 6165 7674"            /* ..NV../.UO/<aevt */
	$"2F3C 6F61 7070 487A FE5C 42A7 4227 303C"            /* /<oappHz˛\BßB'0< */
	$"091F A816 301F 3600 554F 2F3C 6165 7674"            /* ..®.0.6.UO/<aevt */
	$"2F3C 6F64 6F63 487A FE62 42A7 4227 303C"            /* /<odocHz˛bBßB'0< */
	$"091F A816 301F 3600 554F 2F3C 6165 7674"            /* ..®.0.6.UO/<aevt */
	$"2F3C 7064 6F63 487A FF62 42A7 4227 303C"            /* /<pdocHzˇbBßB'0< */
	$"091F A816 301F 3600 554F 2F3C 6165 7674"            /* ..®.0.6.UO/<aevt */
	$"2F3C 7175 6974 487A FF5E 42A7 4227 303C"            /* /<quitHzˇ^BßB'0< */
	$"091F A816 301F 3600 261F 4E5E 4E75 9241"            /* ..®.0.6.&.N^NuíA */
	$"7070 6C65 4576 656E 7449 6E69 745F 5F46"            /* ppleEventInit__F */
	$"7600 0000 4E56 FFF0 6020 554F 3F3C FFFF"            /* v...NVˇ` UO?<ˇˇ */
	$"486E FFF0 4878 003C 42A7 A860 101F 670A"            /* HnˇHx.<Bß®`..g. */
	$"486E FFF0 4EBA 001E 584F 4A2D FA39 67DA"            /* HnˇN∫..XOJ-˙9g⁄ */
	$"4E5E 4E75 8D45 7665 6E74 4C6F 6F70 5F5F"            /* N^NuçEventLoop__ */
	$"4676 0000 4E56 0000 2F0A 246E 0008 3012"            /* Fv..NV../.$n..0. */
	$"5340 6726 5340 6718 5340 6728 5540 6724"            /* S@g&S@g.S@g(U@g$ */
	$"5340 672A 5540 673C 0440 000F 672A 6034"            /* S@g*U@g<.@..g*`4 */
	$"2F0A 4EBA 0052 584F 602A 2F0A 4EBA 006C"            /* /.N∫.RXO`*..N∫.l */
	$"584F 6020 2F0A 4EBA 00F2 584F 6016 2F0A"            /* XO` /.N∫.ÚXO`./. */
	$"4EBA 0148 584F 600C 554F 2F0A 303C 021B"            /* N∫.HXO`.UO/.0<.. */
	$"A816 301F 245F 4E5E 4E75 9844 6F45 7665"            /* ®.0.$_N^NuòDoEve */
	$"6E74 5F5F 4650 3131 4576 656E 7452 6563"            /* nt__FP11EventRec */
	$"6F72 6400 0000 4E75 9E48 616E 646C 654D"            /* ord...NuûHandleM */
	$"6F75 7365 5570 5F5F 4650 3131 4576 656E"            /* ouseUp__FP11Even */
	$"7452 6563 6F72 6400 0000 4E56 FFFC 48E7"            /* tRecord...NVˇ¸HÁ */
	$"1030 246E 0008 554F 2F2A 000A 486E FFFC"            /* .0$n..UO/*..Hnˇ¸ */
	$"A92C 301F 3600 3003 5340 670A 5340 671C"            /* ©,0.6.0.S@g.S@g. */
	$"5540 6722 6038 594F 2F2A 000A A93D 201F"            /* U@g"`8YO/*..©= . */
	$"2600 2F03 4EBA 00FA 584F 6022 2F0A 2F2E"            /* &./.N∫.˙XO`"/./. */
	$"FFFC A9B3 6018 594F AA2A 205F 2648 2F2E"            /* ˇ¸©≥`.YO™* _&H/. */
	$"FFFC 2F2A 000A 2053 4868 0022 A925 4CDF"            /* ˇ¸/*.. SHh."©%Lﬂ */
	$"0C08 4E5E 4E75 8020 4861 6E64 6C65 4D6F"            /* ..N^NuÄ HandleMo */
	$"7573 6544 6F77 6E5F 5F46 5031 3145 7665"            /* useDown__FP11Eve */
	$"6E74 5265 636F 7264 0000 4E56 FFFE 206E"            /* ntRecord..NVˇ˛ n */
	$"0008 2028 0002 0280 0000 00FF 1D40 FFFF"            /* .. (...Ä...ˇ.@ˇˇ */
	$"206E 0008 3028 000E 0240 0100 6716 594F"            /*  n..0(...@..g.YO */
	$"102E FFFF 4880 3F00 A93E 201F 2F00 4EBA"            /* ..ˇˇHÄ?.©> ./.N∫ */
	$"0070 584F 4E5E 4E75 9E48 616E 646C 654B"            /* .pXON^NuûHandleK */
	$"6579 446F 776E 5F5F 4650 3131 4576 656E"            /* eyDown__FP11Even */
	$"7452 6563 6F72 6400 0000 4E56 0000 2F0A"            /* tRecord...NV../. */
	$"206E 0008 2468 0002 594F 2F0A A917 201F"            /*  n..$h..YO/.©. . */
	$"6608 2F0A A922 2F0A A923 245F 4E5E 4E75"            /* f./.©"/.©#$_N^Nu */
	$"9D48 616E 646C 6555 7064 6174 655F 5F46"            /* ùHandleUpdate__F */
	$"5031 3145 7665 6E74 5265 636F 7264 0000"            /* P11EventRecord.. */
	$"4E56 0000 48E7 1C00 282E 0008 4A84 673A"            /* NV..HÁ..(...JÑg: */
	$"2A04 7210 E2A5 3604 3005 0440 0080 670A"            /* *.r.‚•6.0..@.Äg. */
	$"5340 6710 5340 6716 601C 3F03 4EBA 0038"            /* S@g.S@g.`.?.N∫.8 */
	$"544F 6012 3F03 4EBA 02EC 544F 6008 3F03"            /* TO`.?.N∫.ÏTO`.?. */
	$"4EBA 1556 544F 4267 A938 4CDF 0038 4E5E"            /* N∫.VTOBg©8Lﬂ.8N^ */
	$"4E75 9144 6F4D 656E 7543 6F6D 6D61 6E64"            /* NuëDoMenuCommand */
	$"5F5F 466C 0000 4E56 FEFC 2F03 362E 0008"            /* __Fl..NV˛¸/.6... */
	$"3003 5340 6702 6006 4EBA 0048 6026 594F"            /* 0.S@g.`.N∫.H`&YO */
	$"3F3C 0080 A949 205F 2D48 FEFC 2F2E FEFC"            /* ?<.Ä©I _-H˛¸/.˛¸ */
	$"3F03 486E FF00 A946 554F 486E FF00 A9B6"            /* ?.Hnˇ.©FUOHnˇ.©∂ */
	$"301F 3600 261F 4E5E 4E75 9548 616E 646C"            /* 0.6.&.N^NuïHandl */
	$"6541 7070 6C65 4368 6F69 6365 5F5F 4669"            /* eAppleChoice__Fi */
	$"0000 4E56 FFDC 48E7 1038 594F 3F3C 0080"            /* ..NVˇ‹HÁ.8YO?<.Ä */
	$"42A7 4878 FFFF A97C 205F 2448 2F0A A873"            /* BßHxˇˇ©| _$H/.®s */
	$"554F 2F0A 3F3C 0001 303C 0304 AA68 301F"            /* UO/.?<..0<..™h0. */
	$"2F0A A915 2F0A 3F3C 0002 486E FFDC 486E"            /* /.©./.?<..Hnˇ‹Hn */
	$"FFDE 486E FFF6 A98D 2D6E FFF6 FFE2 2D6E"            /* ˇﬁHnˇˆ©ç-nˇˆˇ‚-n */
	$"FFFA FFE6 486E FFF6 302E FFF8 4440 3F00"            /* ˇ˙ˇÊHnˇˆ0.ˇ¯D@?. */
	$"302E FFF6 4440 3F00 A8A8 554F 486E FFEE"            /* 0.ˇˆD@?.®®UOHnˇÓ */
	$"3F3C 0020 486E FFF6 42A7 42A7 42A7 203C"            /* ?<. HnˇˆBßBßBß < */
	$"0016 0000 AB1D 301F 594F 2F2E FFEE 203C"            /* ....´.0.YO/.ˇÓ < */
	$"0004 0017 AB1D 205F 2608 554F 2F03 203C"            /* ....´. _&.UO/. < */
	$"0004 0001 AB1D 101F 554F 486E FFF2 3F3C"            /* ....´...UOHnˇÚ?< */
	$"0020 486E FFF6 42A7 42A7 42A7 203C 0016"            /* . HnˇˆBßBßBß <.. */
	$"0000 AB1D 301F 2F2E FFF2 42A7 203C 0008"            /* ..´.0./.ˇÚBß <.. */
	$"0006 AB1D 594F 3F3C 0080 A9BC 205F 2F08"            /* ..´.YO?<.Ä©º _/. */
	$"486E FFF6 A8F6 594F 2F2E FFF2 203C 0004"            /* Hnˇˆ®ˆYO/.ˇÚ <.. */
	$"0017 AB1D 205F 2648 554F 2F0B 203C 0004"            /* ..´. _&HUO/. <.. */
	$"0001 AB1D 101F 554F 486E FFEA 3F3C 0020"            /* ..´...UOHnˇÍ?<.  */
	$"486E FFF6 42A7 42A7 42A7 203C 0016 0000"            /* HnˇˆBßBßBß <.... */
	$"AB1D 301F 2F2E FFEA 42A7 203C 0008 0006"            /* ´.0./.ˇÍBß <.... */
	$"AB1D 594F 3F3C 0081 A9BC 205F 2F08 486E"            /* ´.YO?<.Å©º _/.Hn */
	$"FFF6 A8F6 594F 2F2E FFEA 203C 0004 0017"            /* ˇˆ®ˆYO/.ˇÍ <.... */
	$"AB1D 205F 2848 554F 2F0C 203C 0004 0001"            /* ´. _(HUO/. <.... */
	$"AB1D 101F 2F2E FFF2 42A7 203C 0008 0006"            /* ´.../.ˇÚBß <.... */
	$"AB1D 486A 0002 206E FFEE 4868 0002 486E"            /* ´.Hj.. nˇÓHh..Hn */
	$"FFE2 486E FFF6 4267 42A7 A8EC 206E FFF2"            /* ˇ‚HnˇˆBgBß®Ï nˇÚ */
	$"4868 0002 206E FFEA 4868 0002 206E FFEE"            /* Hh.. nˇÍHh.. nˇÓ */
	$"4868 0002 486E FFF6 486E FFF6 486E FFF6"            /* Hh..HnˇˆHnˇˆHnˇˆ */
	$"4267 42A7 AA51 206E FFEE 4868 0002 486A"            /* BgBß™Q nˇÓHh..Hj */
	$"0002 486E FFF6 486E FFE2 3F3C 0040 42A7"            /* ..HnˇˆHnˇ‚?<.@Bß */
	$"A8EC 2F0B 203C 0004 0002 AB1D 2F0C 203C"            /* ®Ï/. <....´./. < */
	$"0004 0002 AB1D 2F03 203C 0004 0002 AB1D"            /* ....´./. <....´. */
	$"2F2E FFF2 203C 0004 0004 AB1D 2F2E FFEA"            /* /.ˇÚ <....´./.ˇÍ */
	$"203C 0004 0004 AB1D 2F2E FFEE 203C 0004"            /*  <....´./.ˇÓ <.. */
	$"0004 AB1D 2F0A A873 7600 6014 42A7 486E"            /* ..´./.®sv.`.BßHn */
	$"FFFE A991 302E FFFE 5340 6702 6002 7601"            /* ˇ˛©ë0.ˇ˛S@g.`.v. */
	$"4A03 67E8 2F0A A983 2F2D FA3A 2F2D FA3E"            /* J.gË/.©É/-˙:/-˙> */
	$"203C 0008 0006 AB1D 4CDF 1C08 4E5E 4E75"            /*  <....´.Lﬂ..N^Nu */
	$"9053 686F 7741 626F 7574 426F 785F 5F46"            /* êShowAboutBox__F */
	$"7600 0000 4E56 0000 2F03 362E 0008 3003"            /* v...NV../.6...0. */
	$"5340 6706 5540 6720 6024 4A2D FA43 6708"            /* S@g.U@g `$J-˙Cg. */
	$"4EBA 003A 2600 6006 4EBA 0142 2600 4A83"            /* N∫.:&.`.N∫.B&.JÉ */
	$"660C 4EBA 0338 6006 1B7C 0001 FA39 261F"            /* f.N∫.8`..|..˙9&. */
	$"4E5E 4E75 9448 616E 646C 6546 696C 6543"            /* N^NuîHandleFileC */
	$"686F 6963 655F 5F46 6900 0000 4E56 F6F0"            /* hoice__Fi...NVˆ */
	$"2F0A 3F2D FA8A A998 7000 A122 2448 594F"            /* /.?-˙ä©òp.°"$HYO */
	$"2F0A 2F3C 5049 4354 486E F6F4 A9FD 201F"            /* /./<PICTHnˆÙ©˝ . */
	$"4A80 6C14 486D FCFE 486D FCFD 4EBA 12DA"            /* JÄl.Hm¸˛Hm¸˝N∫.⁄ */
	$"70CE 504F 6000 00BC 204A A023 45FA 188E"            /* pŒPO`..º J†#E˙.é */
	$"554F 486E F700 4EBA 2AAE 301F 04AE 0000"            /* UOHn˜.N∫*Æ0..Æ.. */
	$"0080 F702 486D FDBA 486E F70A 4EBA 1376"            /* .Ä˜.Hm˝∫Hn˜.N∫.v */
	$"2F3C 436F 6C72 3F3C 0001 2F3C 4163 6964"            /* /<Colr?<../<Acid */
	$"4EBA 17D6 2D48 F6F0 42A7 486E FF00 486E"            /* N∫.÷-HˆBßHnˇ.Hn */
	$"F700 2F0A 42A7 42A7 2F2E F6F0 42A7 4EBA"            /* ˜./.BßBß/.ˆBßN∫ */
	$"2B16 301F 4A2E FF02 4FEF 0010 6746 554F"            /* +.0.J.ˇ.OÔ..gFUO */
	$"486E FF06 4878 0001 2F3C 6673 7320 42A7"            /* Hnˇ.Hx../<fss Bß */
	$"486E F6F8 303C 0A0B A816 301F 486D FA44"            /* Hnˆ¯0<..®.0.Hm˙D */
	$"486E F6F8 4EBA 18E4 486E FF00 4EBA 2B90"            /* Hnˆ¯N∫.‰Hnˇ.N∫+ê */
	$"301F 486E F6F8 303C 0204 A816 301F 7000"            /* 0.Hnˆ¯0<..®.0.p. */
	$"584F 600E 554F 486E FF00 4EBA 2B72 301F"            /* XO`.UOHnˇ.N∫+r0. */
	$"70CE 245F 4E5E 4E75 9047 6574 5363 6865"            /* pŒ$_N^NuêGetSche */
	$"6D65 4E61 765F 5F46 7600 0000 4E56 FF90"            /* meNav__Fv...NVˇê */
	$"7000 A122 2D48 FF90 594F 2F2E FF90 2F3C"            /* p.°"-HˇêYO/.ˇê/< */
	$"5049 4354 486E FF94 A9FD 201F 4A80 6C12"            /* PICTHnˇî©˝ .JÄl. */
	$"486D FCFE 486D FCFD 4EBA 11CE 70CE 504F"            /* Hm¸˛Hm¸˝N∫.ŒpŒPO */
	$"6040 4EBA F632 2D7C 436F 6C72 FF98 42A7"            /* `@N∫ˆ2-|ColrˇòBß */
	$"3F3C 0001 486E FF98 486E FFA8 3F3C 0006"            /* ?<..HnˇòHnˇ®?<.. */
	$"A9EA 4A2E FFA8 6718 41EE FFA8 5C88 43ED"            /* ©ÍJ.ˇ®g.AÓˇ®\àCÌ */
	$"FA44 7010 22D8 51C8 FFFC 32D8 7000 6002"            /* ˙Dp."ÿQ»ˇ¸2ÿp.`. */
	$"70CE 4E5E 4E75 9047 6574 5363 6865 6D65"            /* pŒN^NuêGetScheme */
	$"4F6C 645F 5F46 7600 0000 4E56 FFE2 2F0A"            /* Old__Fv...NVˇ‚/. */
	$"2D6D FDC4 FFFA 3D6D FDC8 FFFE 2D6D FDCA"            /* -m˝ƒˇ˙=m˝»ˇ˛-m˝  */
	$"FFF4 3D6D FDCE FFF8 2D6D FDD0 FFEE 3D6D"            /* ˇÙ=m˝Œˇ¯-m˝–ˇÓ=m */
	$"FDD4 FFF2 2D6D FDD6 FFE8 3D6D FDDA FFEC"            /* ˝‘ˇÚ-m˝÷ˇË=m˝⁄ˇÏ */
	$"486E FFE2 AA19 594F 3F3C C800 AA18 205F"            /* Hnˇ‚™.YO?<».™. _ */
	$"2448 200A 6738 2052 2D68 000A FFFA 3D68"            /* $H .g8 R-h..ˇ˙=h */
	$"000E FFFE 2052 2D68 001A FFF4 3D68 001E"            /* ..ˇ˛ R-h..ˇÙ=h.. */
	$"FFF8 2052 2D68 0022 FFEE 3D68 0026 FFF2"            /* ˇ¯ R-h."ˇÓ=h.&ˇÚ */
	$"2052 2D68 002A FFE8 3D68 002E FFEC 4878"            /*  R-h.*ˇË=h..ˇÏHx */
	$"001E A862 486E 0008 A8A2 486E FFFA AA14"            /* ..®bHn..®¢Hnˇ˙™. */
	$"302E 000A 5340 3F00 3F2E 000C A893 302E"            /* 0...S@?.?...®ì0. */
	$"000A 5340 3F00 302E 0008 5340 3F00 A891"            /* ..S@?.0...S@?.®ë */
	$"3F2E 000E 302E 0008 5340 3F00 A891 486E"            /* ?...0...S@?.®ëHn */
	$"FFF4 AA14 3F2E 000E 3F2E 000C A891 302E"            /* ˇÙ™.?...?...®ë0. */
	$"000A 5340 3F00 3F2E 000C A891 486E FFEE"            /* ..S@?.?...®ëHnˇÓ */
	$"AA14 302E 000A 5540 3F00 302E 000C 5240"            /* ™.0...U@?.0...R@ */
	$"3F00 A893 302E 000E 5240 3F00 302E 000C"            /* ?.®ì0...R@?.0... */
	$"5240 3F00 A891 302E 000E 5240 3F00 3F2E"            /* R@?.®ë0...R@?.?. */
	$"0008 A891 486E FFE8 AA14 302E 000A 5540"            /* ..®ëHnˇË™.0...U@ */
	$"3F00 3F2E 000C A893 302E 000A 5540 3F00"            /* ?.?...®ì0...U@?. */
	$"302E 0008 5540 3F00 A891 3F2E 000E 302E"            /* 0...U@?.®ë?...0. */
	$"0008 5540 3F00 A891 486E FFE2 AA14 245F"            /* ..U@?.®ëHnˇ‚™.$_ */
	$"4E5E 4E75 9544 7261 7749 6D61 6765 5765"            /* N^NuïDrawImageWe */
	$"6C6C 5F5F 4634 5265 6374 0000 4E56 FAC0"            /* ll__F4Rect..NV˙¿ */
	$"48E7 1F30 7E01 3A3C 0084 41ED FDDC 43EE"            /* HÁ.0~.:<.ÑAÌ˝‹CÓ */
	$"FF00 703F 22D8 51C8 FFFC 554F 486D FA44"            /* ˇ.p?"ÿQ»ˇ¸UOHm˙D */
	$"1F3C 0003 700D AA52 301F 3C00 0C46 FFFF"            /* .<..p.™R0.<..Fˇˇ */
	$"6642 554F A9AF 301F 0C40 FFCF 6612 486D"            /* fBUO©Ø0..@ˇœf.Hm */
	$"FF2A 486D FEDC 4EBA 0FB0 504F 6000 07D6"            /* ˇ*Hm˛‹N∫.∞PO`..÷ */
	$"554F A9AF 301F 48C0 2F00 486E FAC4 4EBA"            /* UO©Ø0.H¿/.Hn˙ƒN∫ */
	$"2300 486E FAC4 486D FF48 4EBA 0FFC 504F"            /* #.Hn˙ƒHmˇHN∫.¸PO */
	$"6000 07B2 3F06 A99A 3F2D FA8A A998 594F"            /* `..≤?.©ö?-˙ä©òYO */
	$"3F3C 0081 42A7 4878 FFFF A97C 205F 2448"            /* ?<.ÅBßHxˇˇ©| _$H */
	$"2F0A A873 554F 2F0A 3F3C 0001 303C 0304"            /* /.®sUO/.?<..0<.. */
	$"AA68 301F 554F 2F0A 3F3C 0002 303C 0305"            /* ™h0.UO/.?<..0<.. */
	$"AA68 301F 2F0A 4878 0005 3F3C 7FFF A97E"            /* ™h0./.Hx..?<.ˇ©~ */
	$"2F0A 3F3C 0004 486E FCEA 486E FDFC 486E"            /* /.?<..Hn¸ÍHn˝¸Hn */
	$"FBCC A98D 2F0A 3F3C 0007 486E FCEA 486E"            /* ˚Ã©ç/.?<..Hn¸ÍHn */
	$"FDFC 486E FBC4 A98D 2F0A 3F3C 0008 486E"            /* ˝¸Hn˚ƒ©ç/.?<..Hn */
	$"FCEA 486E FDFC 486E FCEC A98D 2F2E FBC8"            /* ¸ÍHn˝¸Hn¸Ï©ç/.˚» */
	$"2F2E FBC4 4EBA FD84 2F2E FCF0 2F2E FCEC"            /* /.˚ƒN∫˝Ñ/.¸/.¸Ï */
	$"4EBA FD78 7000 A122 2648 2F0B 2F3C 5049"            /* N∫˝xp.°"&H/./<PI */
	$"4354 486E FAC0 A9FD 201F 2053 2D68 0002"            /* CTHn˙¿©˝ . S-h.. */
	$"FCF4 2D68 0006 FCF8 486E FCF4 302E FCF6"            /* ¸Ù-h..¸¯Hn¸Ù0.¸ˆ */
	$"4440 3F00 302E FCF4 4440 3F00 A8A8 486E"            /* D@?.0.¸ÙD@?.®®Hn */
	$"FCF4 2F2E FBC8 2F2E FBC4 4EBA 0F9E 2F0B"            /* ¸Ù/.˚»/.˚ƒN∫.û/. */
	$"486E FCF4 A8F6 2F0A 3F3C 0005 486E FCEA"            /* Hn¸Ù®ˆ/.?<..Hn¸Í */
	$"486E FDFC 486E FCE2 A98D 2F2E FDFC 486E"            /* Hn˝¸Hn¸‚©ç/.˝¸Hn */
	$"FE00 A990 486E FE00 486E FCDE 4EBA 21BE"            /* ˛.©êHn˛.Hn¸ﬁN∫!æ */
	$"486D FA44 1F3C 0003 700D AA52 301F 3C00"            /* Hm˙D.<..p.™R0.<. */
	$"3F06 A998 3F2E FCE0 AA1E 205F 2648 486E"            /* ?.©ò?.¸‡™. _&HHn */
	$"FCD8 AA19 4878 001E A862 486E FCEC A8A2"            /* ¸ÿ™.Hx..®bHn¸Ï®¢ */
	$"486E FCD8 AA14 200B 4FEF 0012 6746 2053"            /* Hn¸ÿ™. .OÔ..gF S */
	$"2D68 0006 FCF4 2D68 000A FCF8 486E FCF4"            /* -h..¸Ù-h..¸¯Hn¸Ù */
	$"302E FCF6 4440 3F00 302E FCF4 4440 3F00"            /* 0.¸ˆD@?.0.¸ÙD@?. */
	$"A8A8 486E FCF4 2F2E FCF0 2F2E FCEC 4EBA"            /* ®®Hn¸Ù/.¸/.¸ÏN∫ */
	$"0EFA 486E FCF4 2F0B AA1F 2F0B AA25 4FEF"            /* .˙Hn¸Ù/.™./.™%OÔ */
	$"000C 6040 554F 486D FF8C A88C 301F 322E"            /* ..`@UOHmˇå®å0.2. */
	$"FCF2 926E FCEE 9240 3001 E048 EE48 D041"            /* ¸Úín¸Óí@0.‡HÓH–A */
	$"E240 D06E FCEE 3F00 302E FCF0 E048 EE48"            /* ‚@–n¸Ó?.0.¸‡HÓH */
	$"D06E FCF0 E240 0640 0010 3F00 A893 486D"            /* –n¸‚@.@..?.®ìHm */
	$"FF9C A884 3F06 A99A 3F2D FA8A A998 2F0A"            /* ˇú®Ñ?.©ö?-˙ä©ò/. */
	$"A915 422E FBD7 6000 0596 42A7 486E FBD4"            /* ©.B.˚◊`..ñBßHn˚‘ */
	$"A991 302E FBD4 5340 6712 5340 676A 5340"            /* ©ë0.˚‘S@g.S@gjS@ */
	$"6770 5340 6700 0336 6000 0574 2F0A 3F3C"            /* gpS@g..6`..t/.?< */
	$"0005 486E FCEA 486E FDFC 486E FCE2 A98D"            /* ..Hn¸ÍHn˝¸Hn¸‚©ç */
	$"2F2E FDFC 486E FE00 A990 486E FE00 486E"            /* /.˝¸Hn˛.©êHn˛.Hn */
	$"FCDE 4EBA 2098 1D7C 0001 FBD7 2F0A A983"            /* ¸ﬁN∫ ò.|..˚◊/.©É */
	$"3F2D FA8A A998 2F2D FA3A 2F2D FA3E 203C"            /* ?-˙ä©ò/-˙:/-˙> < */
	$"0008 0006 AB1D 486E FF00 3F2E FCE0 4EBA"            /* ....´.Hnˇ.?.¸‡N∫ */
	$"055C 5C4F 6000 053E 1D7C 0001 FBD7 6000"            /* .\\O`..>.|..˚◊`. */
	$"050E 2F0A 3F3C 0003 486E FCEA 486E FDFC"            /* ../.?<..Hn¸ÍHn˝¸ */
	$"486E FCE2 A98D 554F 2F2E FDFC A960 301F"            /* Hn¸‚©çUO/.˝¸©`0. */
	$"3E00 2F0A 3F3C 0004 486E FCEA 486E FDFC"            /* >./.?<..Hn¸ÍHn˝¸ */
	$"486E FCE2 A98D 2F2E FDFC A955 594F 2F0A"            /* Hn¸‚©ç/.˝¸©UYO/. */
	$"486E FBCC 486D FFAA 1F3C 0001 4267 3007"            /* Hn˚ÃHmˇ™.<..Bg0. */
	$"0640 0083 3F00 2F3C 03F1 0032 42A7 A954"            /* .@.É?./<.Ò.2Bß©T */
	$"205F 2D48 FDFC 3A07 0645 0083 206E FDFC"            /*  _-H˝¸:..E.É n˝¸ */
	$"2050 2068 001C 2050 3145 0004 594F 3F05"            /*  P h.. P1E..YO?. */
	$"A9BF 205F 226E FDFC 2251 2269 001C 2251"            /* ©ø _"n˝¸"Q"i.."Q */
	$"2288 4AAE FDFC 6606 3F3C 0014 A9C8 2F2E"            /* "àJÆ˝¸f.?<..©»/. */
	$"FDFC A96D 7801 594F 3F05 A9BF 205F 2F08"            /* ˝¸©mx.YO?.©ø _/. */
	$"3F04 486E FBD8 A946 486E FBD8 486E FE00"            /* ?.Hn˚ÿ©FHn˚ÿHn˛. */
	$"4EBA 0D12 7600 162E FE00 504F 6002 5343"            /* N∫..v...˛.PO`.SC */
	$"4A43 6F14 41EE FE00 7000 1030 3000 0C40"            /* JCo.AÓ˛.p..00..@ */
	$"0020 67EA 6002 5343 4A43 6F10 41EE FE00"            /* . gÍ`.SCJCo.AÓ˛. */
	$"7000 1030 3000 0C40 0020 66EA 7000 102E"            /* p..00..@. fÍp... */
	$"FE00 9043 41EE FE00 1180 3000 2F0A 3F3C"            /* ˛.êCAÓ˛..Ä0./.?< */
	$"0005 486E FCEA 486E FDFC 486E FCE2 A98D"            /* ..Hn¸ÍHn˝¸Hn¸‚©ç */
	$"2F2E FDFC 41EE FE00 4870 3000 A98F 2F0A"            /* /.˝¸AÓ˛.Hp0.©è/. */
	$"4878 0005 3F3C 7FFF A97E 2F0A 3F3C 0005"            /* Hx..?<.ˇ©~/.?<.. */
	$"486E FCEA 486E FDFC 486E FCE2 A98D 2F2E"            /* Hn¸ÍHn˝¸Hn¸‚©ç/. */
	$"FDFC 486E FE00 A990 486E FE00 486E FCDE"            /* ˝¸Hn˛.©êHn˛.Hn¸ﬁ */
	$"4EBA 1EFA 554F 486D FA44 1F3C 0003 700D"            /* N∫.˙UOHm˙D.<..p. */
	$"AA52 301F 3C00 3F06 A998 594F 3F2E FCE0"            /* ™R0.<.?.©òYO?.¸‡ */
	$"AA1E 205F 2648 486E FCD8 AA19 4878 001E"            /* ™. _&HHn¸ÿ™.Hx.. */
	$"A862 486E FCEC A8A2 486E FCD8 AA14 200B"            /* ®bHn¸Ï®¢Hn¸ÿ™. . */
	$"6746 2053 2D68 0006 FCF4 2D68 000A FCF8"            /* gF S-h..¸Ù-h..¸¯ */
	$"486E FCF4 302E FCF6 4440 3F00 302E FCF4"            /* Hn¸Ù0.¸ˆD@?.0.¸Ù */
	$"4440 3F00 A8A8 486E FCF4 2F2E FCF0 2F2E"            /* D@?.®®Hn¸Ù/.¸/. */
	$"FCEC 4EBA 0C36 486E FCF4 2F0B AA1F 2F0B"            /* ¸ÏN∫.6Hn¸Ù/.™./. */
	$"AA25 4FEF 000C 6040 554F 486D FF8C A88C"            /* ™%OÔ..`@UOHmˇå®å */
	$"301F 322E FCF2 926E FCEE 9240 3001 E048"            /* 0.2.¸Úín¸Óí@0.‡H */
	$"EE48 D041 E240 D06E FCEE 3F00 302E FCF0"            /* ÓH–A‚@–n¸Ó?.0.¸ */
	$"E048 EE48 D06E FCF0 E240 0640 0010 3F00"            /* ‡HÓH–n¸‚@.@..?. */
	$"A893 486D FF9C A884 3F06 A99A 3F2D FA8A"            /* ®ìHmˇú®Ñ?.©ö?-˙ä */
	$"A998 486D FFB1 486E FF00 4EBA 0B98 594F"            /* ©òHmˇ±Hnˇ.N∫.òYO */
	$"3F3C 0083 A9BF 205F 2F08 3F07 486E FF00"            /* ?<.É©ø _/.?.Hnˇ. */
	$"A946 594F 3F05 A9BF 205F 2F08 3F04 486E"            /* ©FYO?.©ø _/.?.Hn */
	$"FCFC A946 7000 102E FF00 5240 41EE FF00"            /* ¸¸©Fp...ˇ.R@AÓˇ. */
	$"11BC 0020 0000 7800 182E FF00 504F 6020"            /* .º. ..x...ˇ.PO`  */
	$"7000 102E FF00 3204 9240 5241 41EE FCFC"            /* p...ˇ.2.í@RAAÓ¸¸ */
	$"3004 5440 43EE FF00 13B0 1000 0000 5244"            /* 0.T@CÓˇ..∞....RD */
	$"7000 102E FF00 D043 B840 6DD4 7000 102E"            /* p...ˇ.–C∏@m‘p... */
	$"FF00 D043 5240 41EE FF00 11BC 00A5 0000"            /* ˇ.–CR@AÓˇ..º.•.. */
	$"3003 5240 D12E FF00 6000 0244 2F0A 3F3C"            /* 0.R@—.ˇ.`..D/.?< */
	$"0004 486E FCEA 486E FDFC 486E FCE2 A98D"            /* ..Hn¸ÍHn˝¸Hn¸‚©ç */
	$"554F 2F2E FDFC A960 301F 3800 594F 3F05"            /* UO/.˝¸©`0.8.YO?. */
	$"A9BF 205F 2F08 3F04 486E FBD8 A946 486E"            /* ©ø _/.?.Hn˚ÿ©FHn */
	$"FBD8 486E FE00 4EBA 0ACC 7600 162E FE00"            /* ˚ÿHn˛.N∫.Ãv...˛. */
	$"504F 6002 5343 4A43 6F14 41EE FE00 7000"            /* PO`.SCJCo.AÓ˛.p. */
	$"1030 3000 0C40 0020 67EA 6002 5343 4A43"            /* .00..@. gÍ`.SCJC */
	$"6F10 41EE FE00 7000 1030 3000 0C40 0020"            /* o.AÓ˛.p..00..@.  */
	$"66EA 7000 102E FE00 9043 41EE FE00 1180"            /* fÍp...˛.êCAÓ˛..Ä */
	$"3000 2F0A 3F3C 0005 486E FCEA 486E FDFC"            /* 0./.?<..Hn¸ÍHn˝¸ */
	$"486E FCE2 A98D 2F2E FDFC 41EE FE00 4870"            /* Hn¸‚©ç/.˝¸AÓ˛.Hp */
	$"3000 A98F 2F0A 4878 0005 3F3C 7FFF A97E"            /* 0.©è/.Hx..?<.ˇ©~ */
	$"2F0A 3F3C 0005 486E FCEA 486E FDFC 486E"            /* /.?<..Hn¸ÍHn˝¸Hn */
	$"FCE2 A98D 2F2E FDFC 486E FE00 A990 486E"            /* ¸‚©ç/.˝¸Hn˛.©êHn */
	$"FE00 486E FCDE 4EBA 1CB4 554F 486D FA44"            /* ˛.Hn¸ﬁN∫.¥UOHm˙D */
	$"1F3C 0003 700D AA52 301F 3C00 3F06 A998"            /* .<..p.™R0.<.?.©ò */
	$"594F 3F2E FCE0 AA1E 205F 2648 486E FCD8"            /* YO?.¸‡™. _&HHn¸ÿ */
	$"AA19 4878 001E A862 486E FCEC A8A2 486E"            /* ™.Hx..®bHn¸Ï®¢Hn */
	$"FCD8 AA14 200B 6746 2053 2D68 0006 FCF4"            /* ¸ÿ™. .gF S-h..¸Ù */
	$"2D68 000A FCF8 486E FCF4 302E FCF6 4440"            /* -h..¸¯Hn¸Ù0.¸ˆD@ */
	$"3F00 302E FCF4 4440 3F00 A8A8 486E FCF4"            /* ?.0.¸ÙD@?.®®Hn¸Ù */
	$"2F2E FCF0 2F2E FCEC 4EBA 09F0 486E FCF4"            /* /.¸/.¸ÏN∫.Hn¸Ù */
	$"2F0B AA1F 2F0B AA25 4FEF 000C 6040 554F"            /* /.™./.™%OÔ..`@UO */
	$"486D FF8C A88C 301F 322E FCF2 926E FCEE"            /* Hmˇå®å0.2.¸Úín¸Ó */
	$"9240 3001 E048 EE48 D041 E240 D06E FCEE"            /* í@0.‡HÓH–A‚@–n¸Ó */
	$"3F00 302E FCF0 E048 EE48 D06E FCF0 E240"            /* ?.0.¸‡HÓH–n¸‚@ */
	$"0640 0010 3F00 A893 486D FF9C A884 3F06"            /* .@..?.®ìHmˇú®Ñ?. */
	$"A99A 3F2D FA8A A998 486D FFB1 486E FF00"            /* ©ö?-˙ä©òHmˇ±Hnˇ. */
	$"4EBA 0952 594F 3F3C 0083 A9BF 205F 2F08"            /* N∫.RYO?<.É©ø _/. */
	$"3F07 486E FF00 A946 594F 3F05 A9BF 205F"            /* ?.Hnˇ.©FYO?.©ø _ */
	$"2F08 3F04 486E FCFC A946 7000 102E FF00"            /* /.?.Hn¸¸©Fp...ˇ. */
	$"5240 41EE FF00 11BC 0020 0000 7800 182E"            /* R@AÓˇ..º. ..x... */
	$"FF00 504F 6020 7000 102E FF00 3204 9240"            /* ˇ.PO` p...ˇ.2.í@ */
	$"5241 41EE FCFC 3004 5440 43EE FF00 13B0"            /* RAAÓ¸¸0.T@CÓˇ..∞ */
	$"1000 0000 5244 7000 102E FF00 D043 B840"            /* ....RDp...ˇ.–C∏@ */
	$"6DD4 7000 102E FF00 D043 5240 41EE FF00"            /* m‘p...ˇ.–CR@AÓˇ. */
	$"11BC 00A5 0000 3003 5240 D12E FF00 4A2E"            /* .º.•..0.R@—.ˇ.J. */
	$"FBD7 6700 FA66 3F06 A99A 3F2D FA8A A998"            /* ˚◊g.˙f?.©ö?-˙ä©ò */
	$"2F0A A983 2F2D FA3A 2F2D FA3E 203C 0008"            /* /.©É/-˙:/-˙> <.. */
	$"0006 AB1D 4CDF 0CF8 4E5E 4E75 8D47 6574"            /* ..´.Lﬂ.¯N^NuçGet */
	$"6369 636E 4944 5F5F 4676 0000 4E56 FF0E"            /* cicnID__Fv..NVˇ. */
	$"48E7 1F38 7800 7A00 7600 7000 A122 2C08"            /* HÁ.8x.z.v.p.°",. */
	$"594F 2F06 2F3C 5049 4354 486E FF0E A9FD"            /* YO/./<PICTHnˇ.©˝ */
	$"201F 4A80 6C12 486D FCFE 486D FCFD 4EBA"            /*  .JÄl.Hm¸˛Hm¸˝N∫ */
	$"0788 504F 6000 0676 554F 2F06 486E FF98"            /* .àPO`..vUO/.Hnˇò */
	$"2F3C 0100 0001 4878 0001 303C 0800 A831"            /* /<....Hx..0<..®1 */
	$"301F 266E FFA2 6036 3043 2008 E788 2053"            /* 0.&nˇ¢`60C .Áà S */
	$"4A70 080A 6626 3043 2008 E788 2053 4A70"            /* Jp..f&0C .Áà SJp */
	$"080C 6618 3043 2008 E788 2053 4A70 080E"            /* ..f.0C .Áà SJp.. */
	$"660A 4A04 6704 7A01 6002 7801 5243 4A05"            /* f.J.g.z.`.x.RCJ. */
	$"67C6 3003 5540 2053 3140 0006 2F0B 203C"            /* g∆0.U@ S1@../. < */
	$"0004 0007 AB1D 3003 5340 3F00 4EBA 0CE4"            /* ....´.0.S@?.N∫.‰ */
	$"3E00 2046 A029 204B A029 4A86 544F 6704"            /* >. F†) K†)JÜTOg. */
	$"200B 6612 486D FFB2 486D FCFD 4EBA 06EA"            /*  .f.Hmˇ≤Hm¸˝N∫.Í */
	$"4EBA 06BC 504F 554F 486E FF24 3F07 486E"            /* N∫.ºPOUOHnˇ$?.Hn */
	$"FFB0 2F0B 42A7 42A7 203C 0016 0000 AB1D"            /* ˇ∞/.BßBß <....´. */
	$"301F 2F2E FF24 42A7 203C 0008 0006 AB1D"            /* 0./.ˇ$Bß <....´. */
	$"486E FF12 AA1A 4878 001E A863 2079 FFFF"            /* Hnˇ.™.Hx..®c yˇˇ */
	$"FA34 4868 0010 A8A3 594F 2F2E FF24 203C"            /* ˙4Hh..®£YO/.ˇ$ < */
	$"0004 0017 AB1D 205F 2848 554F 2F0C 203C"            /* ....´. _(HUO/. < */
	$"0004 0001 AB1D 101F 2F06 486E FFB0 A8F6"            /* ....´.../.Hnˇ∞®ˆ */
	$"302E FFB6 906E FFB2 3D40 FF18 302E FF18"            /* 0.ˇ∂ênˇ≤=@ˇ.0.ˇ. */
	$"C1C7 0640 001F 0240 FFE1 E640 3D40 FF1A"            /* ¡«.@...@ˇ·Ê@=@ˇ. */
	$"3F2E FF1A 2F0C 4EBA 0C6A 486E FF20 3F3C"            /* ?.ˇ./.N∫.jHnˇ ?< */
	$"0001 486E FFB0 42A7 42A7 42A7 203C 0016"            /* ..Hnˇ∞BßBßBß <.. */
	$"0000 AB1D 301F 2F2E FF20 42A7 203C 0008"            /* ..´.0./.ˇ Bß <.. */
	$"0006 AB1D 2079 FFFF FA34 4868 0010 A8A3"            /* ..´. yˇˇ˙4Hh..®£ */
	$"2F2E FF20 203C 0004 0017 AB1D 205F 2A08"            /* /.ˇ  <....´. _*. */
	$"554F 2F05 203C 0004 0001 AB1D 101F 554F"            /* UO/. <....´...UO */
	$"486E FF28 3F07 486E FFB0 2F0B 42A7 42A7"            /* Hnˇ(?.Hnˇ∞/.BßBß */
	$"203C 0016 0000 AB1D 301F 2F2E FF28 42A7"            /*  <....´.0./.ˇ(Bß */
	$"203C 0008 0006 AB1D 2079 FFFF FA34 4868"            /*  <....´. yˇˇ˙4Hh */
	$"0010 A8A3 2F06 486E FFB0 A8F6 594F 2F2E"            /* ..®£/.Hnˇ∞®ˆYO/. */
	$"FF28 203C 0004 0017 AB1D 205F 2448 554F"            /* ˇ( <....´. _$HUO */
	$"2F0A 203C 0004 0001 AB1D 101F 554F 486E"            /* /. <....´...UOHn */
	$"FF94 3F3C 0001 486E FFB0 42A7 42A7 42A7"            /* ˇî?<..Hnˇ∞BßBßBß */
	$"203C 0016 0000 AB1D 301F 2F2E FF94 42A7"            /*  <....´.0./.ˇîBß */
	$"203C 0008 0006 AB1D 2079 FFFF FA34 4868"            /*  <....´. yˇˇ˙4Hh */
	$"0010 A8A3 594F 2F2E FF94 203C 0004 0017"            /* ..®£YO/.ˇî <.... */
	$"AB1D 205F 2808 554F 2F04 203C 0004 0001"            /* ´. _(.UO/. <.... */
	$"AB1D 101F 7600 607A 3043 2008 E788 2052"            /* ´...v.`z0C .Áà R */
	$"2068 002A 2250 0C71 FFFF 080A 6762 3043"            /*  h.*"P.qˇˇ..gb0C */
	$"2008 E788 2052 2068 002A 2250 0C71 FFFF"            /*  .Áà R h.*"P.qˇˇ */
	$"080C 674C 3043 2008 E788 2052 2068 002A"            /* ..gL0C .Áà R h.* */
	$"2250 0C71 FFFF 080E 6736 3043 2008 E788"            /* "P.qˇˇ..g60C .Áà */
	$"2052 2068 002A 2250 4271 080A 3043 2008"            /*  R h.*"PBq..0C . */
	$"E788 2052 2068 002A 2250 4271 080C 3043"            /* Áà R h.*"PBq..0C */
	$"2008 E788 2052 2068 002A 2250 4271 080E"            /*  .Áà R h.*"PBq.. */
	$"5243 2052 2068 002A 2050 3028 0006 5240"            /* RC R h.* P0(..R@ */
	$"B640 6D00 FF74 2052 2F28 002A 203C 0004"            /* ∂@m.ˇt R/(.* <.. */
	$"0007 AB1D 594F 486E FF28 3F07 486E FFB0"            /* ..´.YOHnˇ(?.Hnˇ∞ */
	$"2052 2F28 002A 42A7 42A7 203C 0016 0003"            /*  R/(.*BßBß <.... */
	$"AB1D 201F 2F12 2044 2F10 486E FFB0 486E"            /* ´. ./. D/.Hnˇ∞Hn */
	$"FFB0 4267 42A7 A8EC 2044 2050 2F10 2045"            /* ˇ∞BgBß®Ï D P/. E */
	$"2050 2F10 2044 2050 3028 0004 0240 3FFF"            /*  P/. D P0(...@?ˇ */
	$"3F00 2045 2050 3028 0004 0240 3FFF 3F00"            /* ?. E P0(...@?ˇ?. */
	$"2045 2050 2245 2251 3029 000A 9068 0006"            /*  E P"E"Q0)..êh.. */
	$"3F00 2045 2050 3028 0004 0240 3FFF 3200"            /* ?. E P0(...@?ˇ2. */
	$"E049 EE49 D240 E241 3F01 A838 2F04 203C"            /* ‡IÓI“@‚A?.®8/. < */
	$"0004 0002 AB1D 2F2E FF94 203C 0004 0004"            /* ....´./.ˇî <.... */
	$"AB1D 2F0A 203C 0004 0002 AB1D 2F2E FF28"            /* ´./. <....´./.ˇ( */
	$"203C 0004 0004 AB1D 7E1F DE6E FF18 0247"            /*  <....´.~.ﬁnˇ..G */
	$"FFE1 E647 3F07 2F05 4EBA 09F8 486E FF94"            /* ˇ·ÊG?./.N∫.¯Hnˇî */
	$"3F3C 0001 486E FFB0 42A7 42A7 42A7 203C"            /* ?<..Hnˇ∞BßBßBß < */
	$"0016 0000 AB1D 301F 2F2E FF94 42A7 203C"            /* ....´.0./.ˇîBß < */
	$"0008 0006 AB1D 2079 FFFF FA34 4868 0010"            /* ....´. yˇˇ˙4Hh.. */
	$"A8A3 2F06 486E FFB0 A8F6 2F2E FF94 203C"            /* ®£/.Hnˇ∞®ˆ/.ˇî < */
	$"0004 0017 AB1D 205F 2808 554F 2F04 203C"            /* ....´. _(.UO/. < */
	$"0004 0001 AB1D 101F 2F2D FA3A 2F2D FA3E"            /* ....´.../-˙:/-˙> */
	$"203C 0008 0006 AB1D 3F07 2F04 4EBA 0984"            /*  <....´.?./.N∫.Ñ */
	$"2054 2254 3029 000A 9068 0006 C1EE FF1A"            /*  T"T0)..êh..¡Óˇ. */
	$"5540 48C0 2D40 FF1C 2F0C 486E FF2C 2F3C"            /* U@H¿-@ˇ./.Hnˇ,/< */
	$"0100 0001 4878 0001 303C 0801 A831 301F"            /* ....Hx..0<..®10. */
	$"7054 A322 2448 2052 42A8 0040 2052 3147"            /* pT£"$H RB®.@ R1G */
	$"0044 2052 216E FF44 0046 216E FF48 004A"            /* .D R!nˇD.F!nˇH.J */
	$"2052 2252 3629 004A 9668 0046 C7C7 48C3"            /*  R"R6).Jñh.F««H√ */
	$"2052 42A8 0032 2052 3147 0036 2052 216E"            /*  RB®.2 R1G.6 R!n */
	$"FF44 0038 216E FF48 003C 2052 4290 2054"            /* ˇD.8!nˇH.< RBê T */
	$"2252 3368 0004 0004 2054 2252 2368 0006"            /* "R3h.... T"R#h.. */
	$"0006 2368 000A 000A 2052 4268 000E 2052"            /* ..#h.... RBh.. R */
	$"4268 0010 2052 42A8 0012 2052 216E FF3A"            /* Bh.. RB®.. R!nˇ: */
	$"0016 2052 216E FF3E 001A 2052 316E FF42"            /* .. R!nˇ>.. R1nˇB */
	$"0020 2052 42A8 0026 2052 42A8 002E 2052"            /* .  RB®.& RB®.. R */
	$"4268 001E 2052 317C 0001 0022 2052 316E"            /* Bh.. R1|..." R1n */
	$"FF42 0024 2052 214B 002A 2052 214C 004E"            /* ˇB.$ R!K.* R!L.N */
	$"2052 2068 002A 2050 3268 0006 2E09 E78F"            /*  R h.* P2h....Áè */
	$"7210 DE81 2003 D080 7254 D081 D087 D0AE"            /* r.ﬁÅ .–ÄrT–Å–á–Æ */
	$"FF1C 204A A024 2045 2050 2050 2252 43E9"            /* ˇ. J†$ E P P"RCÈ */
	$"0052 2003 A02E 2003 E088 E088 E088 EE88"            /* .R .†. .‡à‡à‡àÓà */
	$"D083 E280 D080 2052 43F0 0852 2044 2050"            /* –É‚Ä–Ä RC.R D P */
	$"2050 2003 A02E 2003 D080 2052 43F0 0852"            /*  P .†. .–Ä RC.R */
	$"2053 2007 A02E 2007 E088 E088 E088 EE88"            /*  S .†. .‡à‡à‡àÓà */
	$"D087 E280 D083 D080 2052 43F0 0852 2054"            /* –á‚Ä–É–Ä RC.R T */
	$"2050 202E FF1C A02E 486D FA44 1F3C 0003"            /*  P .ˇ.†.Hm˙D.<.. */
	$"700D AA52 301F 3600 3F03 A998 594F 2F3C"            /* p.™R0.6.?.©òYO/< */
	$"6369 636E 3F2E 0008 A81F 205F 2E08 4A87"            /* cicn?...®. _..Já */
	$"544F 6728 2F07 A9AD 3F03 A999 3F03 A99A"            /* TOg(/.©≠?.©ô?.©ö */
	$"3F2D FA8A A998 554F 486D FA44 1F3C 0003"            /* ?-˙ä©òUOHm˙D.<.. */
	$"700D AA52 301F 3600 3F03 A998 2F0A A992"            /* p.™R0.6.?.©ò/.©í */
	$"2F0A 2F3C 6369 636E 3F2E 0008 2F2E 000A"            /* /./<cicn?.../... */
	$"A9AB 2F0A 3F3C 0060 A9A7 2F0A A9AA 2F0A"            /* ©´/.?<.`©ß/.©™/. */
	$"A9B0 3F03 A999 3F03 A99A 3F2D FA8A A998"            /* ©∞?.©ô?.©ö?-˙ä©ò */
	$"2F0C 203C 0004 0002 AB1D 2F04 203C 0004"            /* /. <....´./. <.. */
	$"0002 AB1D 2F05 203C 0004 0002 AB1D 2F2E"            /* ..´./. <....´./. */
	$"FF24 203C 0004 0004 AB1D 2F2E FF94 203C"            /* ˇ$ <....´./.ˇî < */
	$"0004 0004 AB1D 2F2E FF20 203C 0004 0004"            /* ....´./.ˇ  <.... */
	$"AB1D 204B A02A 204B A023 2046 A02A 2046"            /* ´. K†* K†# F†* F */
	$"A023 204A A023 486E FF12 AA15 4CDF 1CF8"            /* †# J†#Hnˇ.™.Lﬂ.¯ */
	$"4E5E 4E75 9063 6C69 7032 6369 636E 5F5F"            /* N^Nuêclip2cicn__ */
	$"4673 5055 6300 0000 4E56 0000 3F3C 0006"            /* FsPUc...NV..?<.. */
	$"A9C8 4E5E 4E75 9448 616E 646C 6545 6469"            /* ©»N^NuîHandleEdi */
	$"7443 686F 6963 655F 5F46 6900 0000 206F"            /* tChoice__Fi... o */
	$"0004 226F 0008 7200 6002 5241 4A30 1000"            /* .."o..r.`.RAJ0.. */
	$"6706 0C41 00FF 6DF2 3401 600C 3001 5340"            /* g..A.ˇmÚ4.`.0.S@ */
	$"13B0 0000 1000 5341 4A41 6EF0 1282 2049"            /* .∞....SAJAn.Ç I */
	$"4E75 8D43 3250 6173 5F5F 4650 6350 5563"            /* NuçC2Pas__FPcPUc */
	$"0000 4E56 0000 4879 FFFF FA34 A86E A8FE"            /* ..NV..Hyˇˇ˙4®n®˛ */
	$"2F3C 0000 FFFF 201F A032 A912 A930 A9CC"            /* /<..ˇˇ .†2©.©0©Ã */
	$"42A7 A97B A850 4878 0021 A862 4878 001E"            /* Bß©{®PHx.!®bHx.. */
	$"A863 A063 A036 A036 A036 A036 A036 41F9"            /* ®c†c†6†6†6†6†6A˘ */
	$"FFFF F9B6 20B8 020C 4E5E 4E75 8F49 6E69"            /* ˇˇ˘∂ ∏..N^NuèIni */
	$"7454 6F6F 6C42 6F78 5F5F 4676 0000 4E56"            /* tToolBox__Fv..NV */
	$"0000 2F3C 0000 FFFF 201F A032 A9F4 4E5E"            /* ../<..ˇˇ .†2©ÙN^ */
	$"4E75 9345 7869 7441 7070 6C69 6361 7469"            /* NuìExitApplicati */
	$"6F6E 5F5F 4676 0000 4E56 FDF8 486E FDFC"            /* on__Fv..NV˝¯Hn˝¸ */
	$"486E FDF8 203C 0008 0005 AB1D 486E FF00"            /* Hn˝¯ <....´.Hnˇ. */
	$"2F2E 0008 4EBA FF18 486E FE00 2F2E 000C"            /* /...N∫ˇ.Hn˛./... */
	$"4EBA FF0C 486E FF00 486E FE00 42A7 42A7"            /* N∫ˇ.Hnˇ.Hn˛.BßBß */
	$"A98B 3F3C 0BB8 42A7 A987 301F 2F2E FDFC"            /* ©ã?<.∏Bß©á0./.˝¸ */
	$"2F2E FDF8 203C 0008 0006 AB1D 4E5E 4E75"            /* /.˝¯ <....´.N^Nu */
	$"9544 6973 706C 6179 416C 6572 745F 5F46"            /* ïDisplayAlert__F */
	$"5043 6350 4363 0000 4E56 FFF8 486E FFFC"            /* PCcPCc..NVˇ¯Hnˇ¸ */
	$"486E FFF8 203C 0008 0005 AB1D 2F2E 0008"            /* Hnˇ¯ <....´./... */
	$"2F2E 000C 42A7 42A7 A98B 554F 3F3C 0BB8"            /* /...BßBß©ãUO?<.∏ */
	$"42A7 A987 301F 2F2E FFFC 2F2E FFF8 203C"            /* Bß©á0./.ˇ¸/.ˇ¯ < */
	$"0008 0006 AB1D 4E5E 4E75 9644 6973 706C"            /* ....´.N^NuñDispl */
	$"6179 5041 6C65 7274 5F5F 4650 5563 5055"            /* ayPAlert__FPUcPU */
	$"6300 0000 226F 0004 206F 0008 7000 7200"            /* c..."o.. o..p.r. */
	$"1210 6008 13B0 0000 0000 5240 B041 6FF4"            /* ..`..∞....R@∞AoÙ */
	$"4E75 9443 6F70 7953 7472 696E 675F 5F46"            /* NuîCopyString__F */
	$"5055 6350 4355 6300 0000 4E56 FFDA 2F0A"            /* PUcPCUc...NVˇ⁄/. */
	$"246E 0010 302E 000C 906E 0008 322A 0004"            /* $n..0...ên..2*.. */
	$"9252 B240 6C62 302E 000E 906E 000A 322A"            /* íR≤@lb0...ên..2* */
	$"0006 926A 0002 B240 6C4E 2F0A 3F2E 000A"            /* ..íj..≤@lN/.?... */
	$"3F2E 0008 A8A8 2F0A 302A 0006 906A 0002"            /* ?...®®/.0*..êj.. */
	$"322E 000E 926E 000A 9240 3001 E048 EE48"            /* 2...ín..í@0.‡HÓH */
	$"D041 E240 3F00 302A 0004 9052 322E 000C"            /* –A‚@?.0*..êR2... */
	$"926E 0008 9240 3001 E048 EE48 D041 E240"            /* ín..í@0.‡HÓH–A‚@ */
	$"3F00 A8A8 6000 033E 302A 0006 906A 0002"            /* ?.®®`..>0*..êj.. */
	$"322A 0004 9252 B240 6F00 0198 302A 0004"            /* 2*..íR≤@o..ò0*.. */
	$"9052 3D40 FFDA 486E FFDA 486E FFDA 3F3C"            /* êR=@ˇ⁄Hnˇ⁄Hnˇ⁄?< */
	$"200E A9EB 486E FFDA 486E FFDA 3F3C 1010"            /*  .©ÎHnˇ⁄Hnˇ⁄?<.. */
	$"A9EB 302E 000C 906E 0008 3D40 FFE4 486E"            /* ©Î0...ên..=@ˇ‰Hn */
	$"FFE4 486E FFE4 3F3C 200E A9EB 486E FFE4"            /* ˇ‰Hnˇ‰?< .©ÎHnˇ‰ */
	$"486E FFE4 3F3C 1010 A9EB 486E FFE4 486E"            /* Hnˇ‰?<..©ÎHnˇ‰Hn */
	$"FFEE 3F3C 100E A9EB 486E FFDA 486E FFEE"            /* ˇÓ?<..©ÎHnˇ⁄HnˇÓ */
	$"3F3C 1006 A9EB 486E FFEE 486E FFF8 3F3C"            /* ?<..©ÎHnˇÓHnˇ¯?< */
	$"1010 A9EB 2D6E FFF8 FFFC 4852 486E FFEE"            /* ..©Î-nˇ¯ˇ¸HRHnˇÓ */
	$"3F3C 200E A9EB 486E FFFC 486E FFEE 3F3C"            /* ?< .©ÎHnˇ¸HnˇÓ?< */
	$"1004 A9EB 486E FFEE 3F3C 0016 A9EB 486E"            /* ..©ÎHnˇÓ?<..©ÎHn */
	$"FFEE 486E FFEE 3F3C 2810 A9EB 34AE FFF0"            /* ˇÓHnˇÓ?<(.©Î4Æˇ */
	$"486A 0002 486E FFEE 3F3C 200E A9EB 486E"            /* Hj..HnˇÓ?< .©ÎHn */
	$"FFFC 486E FFEE 3F3C 1004 A9EB 486E FFEE"            /* ˇ¸HnˇÓ?<..©ÎHnˇÓ */
	$"3F3C 0016 A9EB 486E FFEE 486E FFEE 3F3C"            /* ?<..©ÎHnˇÓHnˇÓ?< */
	$"2810 A9EB 356E FFF0 0002 486A 0004 486E"            /* (.©Î5nˇ..Hj..Hn */
	$"FFEE 3F3C 200E A9EB 486E FFFC 486E FFEE"            /* ˇÓ?< .©ÎHnˇ¸HnˇÓ */
	$"3F3C 1004 A9EB 486E FFEE 3F3C 0016 A9EB"            /* ?<..©ÎHnˇÓ?<..©Î */
	$"486E FFEE 486E FFEE 3F3C 2810 A9EB 356E"            /* HnˇÓHnˇÓ?<(.©Î5n */
	$"FFF0 0004 486A 0006 486E FFEE 3F3C 200E"            /* ˇ..Hj..HnˇÓ?< . */
	$"A9EB 486E FFFC 486E FFEE 3F3C 1004 A9EB"            /* ©ÎHnˇ¸HnˇÓ?<..©Î */
	$"486E FFEE 3F3C 0016 A9EB 486E FFEE 486E"            /* HnˇÓ?<..©ÎHnˇÓHn */
	$"FFEE 3F3C 2810 A9EB 356E FFF0 0006 2F0A"            /* ˇÓ?<(.©Î5nˇ../. */
	$"3F2E 000A 3F2E 0008 A8A8 2F0A 302A 0006"            /* ?...?...®®/.0*.. */
	$"906A 0002 322E 000E 926E 000A 9240 3001"            /* êj..2...ín..í@0. */
	$"E048 EE48 D041 E240 3F00 4267 A8A8 6000"            /* ‡HÓH–A‚@?.Bg®®`. */
	$"0194 302A 0006 906A 0002 3D40 FFEE 486E"            /* .î0*..êj..=@ˇÓHn */
	$"FFEE 486E FFEE 3F3C 200E A9EB 486E FFEE"            /* ˇÓHnˇÓ?< .©ÎHnˇÓ */
	$"486E FFEE 3F3C 1010 A9EB 302E 000E 906E"            /* HnˇÓ?<..©Î0...ên */
	$"000A 3D40 FFE4 486E FFE4 486E FFE4 3F3C"            /* ..=@ˇ‰Hnˇ‰Hnˇ‰?< */
	$"200E A9EB 486E FFE4 486E FFE4 3F3C 1010"            /*  .©ÎHnˇ‰Hnˇ‰?<.. */
	$"A9EB 486E FFE4 486E FFDA 3F3C 100E A9EB"            /* ©ÎHnˇ‰Hnˇ⁄?<..©Î */
	$"486E FFEE 486E FFDA 3F3C 1006 A9EB 486E"            /* HnˇÓHnˇ⁄?<..©ÎHn */
	$"FFDA 486E FFF8 3F3C 1010 A9EB 2D6E FFF8"            /* ˇ⁄Hnˇ¯?<..©Î-nˇ¯ */
	$"FFFC 4852 486E FFEE 3F3C 200E A9EB 486E"            /* ˇ¸HRHnˇÓ?< .©ÎHn */
	$"FFFC 486E FFEE 3F3C 1004 A9EB 486E FFEE"            /* ˇ¸HnˇÓ?<..©ÎHnˇÓ */
	$"3F3C 0016 A9EB 486E FFEE 486E FFEE 3F3C"            /* ?<..©ÎHnˇÓHnˇÓ?< */
	$"2810 A9EB 34AE FFF0 486A 0002 486E FFEE"            /* (.©Î4ÆˇHj..HnˇÓ */
	$"3F3C 200E A9EB 486E FFFC 486E FFEE 3F3C"            /* ?< .©ÎHnˇ¸HnˇÓ?< */
	$"1004 A9EB 486E FFEE 3F3C 0016 A9EB 486E"            /* ..©ÎHnˇÓ?<..©ÎHn */
	$"FFEE 486E FFEE 3F3C 2810 A9EB 356E FFF0"            /* ˇÓHnˇÓ?<(.©Î5nˇ */
	$"0002 486A 0004 486E FFEE 3F3C 200E A9EB"            /* ..Hj..HnˇÓ?< .©Î */
	$"486E FFFC 486E FFEE 3F3C 1004 A9EB 486E"            /* Hnˇ¸HnˇÓ?<..©ÎHn */
	$"FFEE 3F3C 0016 A9EB 486E FFEE 486E FFEE"            /* ˇÓ?<..©ÎHnˇÓHnˇÓ */
	$"3F3C 2810 A9EB 356E FFF0 0004 486A 0006"            /* ?<(.©Î5nˇ..Hj.. */
	$"486E FFEE 3F3C 200E A9EB 486E FFFC 486E"            /* HnˇÓ?< .©ÎHnˇ¸Hn */
	$"FFEE 3F3C 1004 A9EB 486E FFEE 3F3C 0016"            /* ˇÓ?<..©ÎHnˇÓ?<.. */
	$"A9EB 486E FFEE 486E FFEE 3F3C 2810 A9EB"            /* ©ÎHnˇÓHnˇÓ?<(.©Î */
	$"356E FFF0 0006 2F0A 3F2E 000A 3F2E 0008"            /* 5nˇ../.?...?... */
	$"A8A8 2F0A 4267 302A 0004 9052 322E 000C"            /* ®®/.Bg0*..êR2... */
	$"926E 0008 9240 3001 E048 EE48 D041 E240"            /* ín..í@0.‡HÓH–A‚@ */
	$"3F00 A8A8 245F 4E5E 4E75 9C4D 616B 6554"            /* ?.®®$_N^NuúMakeT */
	$"6172 6765 7452 6563 745F 5F46 3452 6563"            /* argetRect__F4Rec */
	$"7450 3452 6563 7400 0000 4E56 FF54 703C"            /* tP4Rect...NVˇTp< */
	$"2D40 FFC4 41EE FF9C 2D48 FFC8 41EE FF56"            /* -@ˇƒAÓˇú-Hˇ»AÓˇV */
	$"2D48 FFFC 554F 486E FFBC 3F3C 0037 A88F"            /* -Hˇ¸UOHnˇº?<.7®è */
	$"301F 3D40 FF54 554F 486E FFBC 486E FFC4"            /* 0.=@ˇTUOHnˇºHnˇƒ */
	$"3F3C 003A A88F 301F 202E FFD8 4E5E 4E75"            /* ?<.:®è0. .ˇÿN^Nu */
	$"9447 6574 4170 706C 5369 676E 6174 7572"            /* îGetApplSignatur */
	$"655F 5F46 7600 0000 4E56 0000 48E7 1830"            /* e__Fv...NV..HÁ.0 */
	$"262E 0008 47EE 000C 548B 302E 000C 5340"            /* &...GÓ..Tã0...S@ */
	$"48C0 E588 720C D081 A322 2448 200A 673C"            /* H¿Âàr.–Å£"$H .g< */
	$"4A83 6606 4EBA FF74 6002 2003 2052 2080"            /* JÉf.N∫ˇt`. . R Ä */
	$"2052 4268 0004 2052 316E 000C 0006 7600"            /*  RBh.. R1n....v. */
	$"6014 588B 282B FFFC 3043 2008 E588 2052"            /* `.Xã(+ˇ¸0C .Âà R */
	$"2184 0808 5243 B66E 000C 6DE6 204A 4CDF"            /* !Ñ..RC∂n..mÊ JLﬂ */
	$"0C18 4E5E 4E75 934D 616B 6554 7970 654C"            /* ..N^NuìMakeTypeL */
	$"6973 745F 5F46 556C 6965 0000 4E75 9144"            /* ist__FUlie..NuëD */
	$"756D 6D79 4675 6E63 7469 6F6E 5F5F 4676"            /* ummyFunction__Fv */
	$"0000 302F 0004 0C40 0002 6E04 7001 4E75"            /* ..0/...@..n.p.Nu */
	$"0C40 0004 6E04 7002 4E75 0C40 0010 6E04"            /* .@..n.p.Nu.@..n. */
	$"7004 4E75 0C40 0100 6E04 7008 4E75 7008"            /* p.Nu.@..n.p.Nup. */
	$"4E75 8C47 6574 4465 7074 685F 5F46 6900"            /* NuåGetDepth__Fi. */
	$"0000 4E56 0000 48E7 1C20 246E 0008 382E"            /* ..NV..HÁ. $n..8. */
	$"000C 2052 3A28 0004 0245 3FFF 2052 3628"            /* .. R:(...E?ˇ R6( */
	$"0004 0243 C000 3004 D043 2052 3140 0004"            /* ...C¿.0.–C R1@.. */
	$"7600 6024 3003 C1C4 2052 2250 4871 0000"            /* v.`$0.¡ƒ R"PHq.. */
	$"3044 2F08 3003 C1C5 2052 2250 41F1 0000"            /* 0D/.0.¡≈ R"PAÒ.. */
	$"201F 225F A02E 5243 2052 2252 3029 000A"            /*  ."_†.RC R"R0).. */
	$"9068 0006 B640 6DCC 4CDF 0438 4E5E 4E75"            /* êh..∂@mÃLﬂ.8N^Nu */
	$"9743 726F 7050 6978 4D61 705F 5F46 5050"            /* óCropPixMap__FPP */
	$"3650 6978 4D61 7069 0000 4E56 FFF6 48E7"            /* 6PixMapi..NVˇˆHÁ */
	$"0030 266E 0008 2D6D FFD6 FFF8 2D6D FFDA"            /* .0&n..-mˇ÷ˇ¯-mˇ⁄ */
	$"FFFC 0C93 6673 7320 6606 246B 0004 6036"            /* ˇ¸.ìfss f.$k..`6 */
	$"554F 2F0B 2F3C 6673 7320 486E FFF8 303C"            /* UO/./<fss Hnˇ¯0< */
	$"0603 A816 301F 6606 246E FFFC 6018 42A7"            /* ..®.0.f.$nˇ¸`.Bß */
	$"486E FFF6 3D7C D8EF FFF6 486D FFDE 4EBA"            /* Hnˇˆ=|ÿÔˇˆHmˇﬁN∫ */
	$"0B58 4FEF 000C 2052 226E 000C 7010 22D8"            /* .XOÔ.. R"n..p."ÿ */
	$"51C8 FFFC 32D8 4AAE FFFC 670E 554F 486E"            /* Q»ˇ¸2ÿJÆˇ¸g.UOHn */
	$"FFF8 303C 0204 A816 301F 4CDF 0C00 4E5E"            /* ˇ¯0<..®.0.Lﬂ..N^ */
	$"4E75 8026 4765 7446 5353 7065 6346 726F"            /* NuÄ&GetFSSpecFro */
	$"6D41 4544 6573 635F 5F46 5236 4145 4465"            /* mAEDesc__FR6AEDe */
	$"7363 5236 4653 5370 6563 0000 206F 0004"            /* scR6FSSpec.. o.. */
	$"226F 0008 7400 1418 2002 0280 0000 0080"            /* "o..t... ..Ä...Ä */
	$"6734 7040 C082 671E 703F C480 7000 1018"            /* g4p@¿Çg.p?ƒÄp... */
	$"2202 E189 8280 2401 7000 1018 2202 E189"            /* ".·âÇÄ$.p...".·â */
	$"8280 2401 6004 703F C480 7000 1018 2202"            /* ÇÄ$.`.p?ƒÄp...". */
	$"E189 8280 2401 2282 4E75 4E56 FFFC 48E7"            /* ·âÇÄ$."ÇNuNVˇ¸HÁ */
	$"1F38 286E 0008 266E 000C 4293 42AB 000C"            /* .8(n..&n..BìB´.. */
	$"200C A055 2840 45F9 0000 0060 6000 010E"            /*  .†U(@E˘...``... */
	$"4A92 6700 0104 B9D2 6500 00FE 2052 D1EA"            /* Jíg...π“e..˛ R—Í */
	$"0004 B9C8 6200 00F2 4AAA 000C 6F00 00F6"            /* ..π»b..ÚJ™..o..ˆ */
	$"204C 91D2 2808 262A 000C E68B 200D D0AA"            /*  Lë“(.&*..Êã .–™ */
	$"0008 2840 2A00 7C00 2E03 5587 2A07 6034"            /* ..(@*.|...Uá*.`4 */
	$"2606 D685 E28B 2003 E788 B8B4 0800 6520"            /* &.÷Ö‚ã .Áà∏¥..e  */
	$"2003 E788 204C 5088 B8B0 0800 640C 2003"            /*  .Áà LPà∏∞..d. . */
	$"E788 204C D1C0 2A08 6010 2C03 5286 6004"            /* Áà L—¿*.`.,.RÜ`. */
	$"2A03 5385 BC85 63C8 7A00 2845 200C 6706"            /* *.SÖºÖc»z.(E .g. */
	$"4AAC 0004 6604 6000 008C 2052 D1D4 2748"            /* J¨..f.`..å R—‘'H */
	$"0008 9894 202C 0004 0280 8000 0000 6708"            /* ..òî ,...ÄÄ...g. */
	$"204C 5888 2688 6008 200D D0AC 0004 2680"            /*  LXà&à`. .–¨..&Ä */
	$"2453 548A 486B 0004 2F0A 4EB9 0000 285C"            /* $STäHk../.Nπ..(\ */
	$"2448 7A00 7600 504F 486E FFFC 2F0A 4EB9"            /* $Hz.v.POHnˇ¸/.Nπ */
	$"0000 285C 2448 4AAE FFFC 504F 6716 DAAE"            /* ..(\$HJÆˇ¸POg.⁄Æ */
	$"FFFC BA84 620E 7600 161A E18B 7000 101A"            /* ˇ¸∫Ñb.v...·ãp... */
	$"8640 60D4 4A43 670E 7000 3003 D080 2053"            /* Ü@`‘JCg.p.0.–Ä S */
	$"D1C0 2748 000C 600C 7010 D5C0 4AAA 0004"            /* —¿'H..`.p.’¿J™.. */
	$"6600 FEEE 4CDF 1CF8 4E5E 4E75 226F 0004"            /* f.˛ÓLﬂ.¯N^Nu"o.. */
	$"4AA9 000C 6604 7000 4E75 2069 000C 3010"            /* J©..f.p.Nu i..0. */
	$"0280 0000 00FF 4E75 4E56 0000 48E7 1030"            /* .Ä...ˇNuNV..HÁ.0 */
	$"246E 0008 4AAA 000C 6710 206A 000C 3610"            /* $n..J™..g. j..6. */
	$"3003 0280 0000 8000 6730 206A 0010 2668"            /* 0..Ä..Ä.g0 j..&h */
	$"0004 2F0A 2F0B 4EB9 0000 28AA 4A92 504F"            /* .././.Nπ..(™JíPO */
	$"6606 4EB9 0000 339E 206A 0010 2550 0010"            /* f.Nπ..3û j..%P.. */
	$"4AAA 000C 6600 00BE 60BA 7000 3003 0C80"            /* J™..f..æ`∫p.0..Ä */
	$"0000 0013 6200 00A8 D040 303B 0006 4EFB"            /* ....b..®–@0;..N˚ */
	$"0002 009C 0028 0030 009C 0038 0040 0048"            /* ...ú.(.0.ú.8.@.H */
	$"0050 0058 0060 0068 0070 0050 009C 009C"            /* .P.X.`.h.p.P.ú.ú */
	$"009C 0078 0080 009C 0086 700A D1AA 000C"            /* .ú.x.Ä.ú.Üp.—™.. */
	$"6072 700E D1AA 000C 606A 700A D1AA 000C"            /* `rp.—™..`jp.—™.. */
	$"6062 7012 D1AA 000C 605A 7012 D1AA 000C"            /* `bp.—™..`Zp.—™.. */
	$"6052 700E D1AA 000C 604A 7012 D1AA 000C"            /* `Rp.—™..`Jp.—™.. */
	$"6042 7016 D1AA 000C 603A 700A D1AA 000C"            /* `Bp.—™..`:p.—™.. */
	$"6032 700E D1AA 000C 602A 700E D1AA 000C"            /* `2p.—™..`*p.—™.. */
	$"6022 5CAA 000C 601C 206A 000C 7000 3028"            /* `"\™..`. j..p.0( */
	$"0002 E588 720C D081 D1AA 000C 6006 4EB9"            /* ..Âàr.–Å—™..`.Nπ */
	$"0000 339E 206A 000C 3010 0280 0000 00FF"            /* ..3û j..0..Ä...ˇ */
	$"4CDF 0C08 4E5E 4E75 206F 0004 302F 0008"            /* Lﬂ..N^Nu o..0/.. */
	$"C0FC 0006 4EFB 0002 F210 4800 4E75 F210"            /* ¿¸..N˚..Ú.H.NuÚ. */
	$"4880 4E75 F210 4900 4E75 F210 4980 4E75"            /* HÄNuÚ.I.NuÚ.IÄNu */
	$"F210 4A00 4E75 F210 4A80 4E75 F210 4B00"            /* Ú.J.NuÚ.JÄNuÚ.K. */
	$"4E75 F210 4B80 4E75 4E56 0000 48E7 1C38"            /* NuÚ.KÄNuNV..HÁ.8 */
	$"286E 0008 262E 000C 266C 0038 2043 2050"            /* (n..&...&l.8 C P */
	$"3A10 6700 00AC 2043 244B 95E8 0004 3005"            /* :.g..¨ C$KïË..0. */
	$"0280 0000 03E0 6730 383C 0200 7606 6022"            /* .Ä...‡g08<..v.`" */
	$"7000 3004 7200 3205 C280 6712 598A 3043"            /* p.0.r.2.¬Äg.Yä0C */
	$"2008 E588 204C 41E8 0020 2192 0800 5343"            /*  .Âà LAË. !í..SC */
	$"E24C 0C43 0002 6CD8 3005 721F C081 6728"            /* ‚L.C..lÿ0.r.¿Åg( */
	$"7810 7607 601C 7000 3004 7200 3205 C280"            /* x.v.`.p.0.r.2.¬Ä */
	$"670C 598A 3043 2008 E588 2992 0800 5343"            /* g.Yä0C .Âà)í..SC */
	$"E24C 0C43 0003 6CDE 3005 0280 0000 3C00"            /* ‚L.C..lﬁ0..Ä..<. */
	$"672E 383C 2000 7607 6020 7000 3004 7200"            /* g.8< .v.` p.0.r. */
	$"3205 C280 6710 518A 598A 3F03 2F0A 4EB9"            /* 2.¬Äg.QäYä?./.Nπ */
	$"0000 2B28 5C4F 5343 E24C 0C43 0004 6CDA"            /* ..+(\OSC‚L.C..l⁄ */
	$"2953 0038 588B 204B 5888 2948 003C 2053"            /* )S.8Xã KXà)H.< S */
	$"4CDF 1C38 4E5E 4E75 48E7 1830 266F 0014"            /* Lﬂ.8N^NuHÁ.0&o.. */
	$"262F 0018 382F 001C 2003 0280 FFFF FF00"            /* &/..8/.. ..Äˇˇˇ. */
	$"0C80 8000 0000 6646 0283 0000 00FF 7007"            /* .ÄÄ...fF.É...ˇp. */
	$"B680 6E0A 2003 E588 244B D5C0 600E 2003"            /* ∂Än. .Âà$K’¿`. . */
	$"5180 E588 244B D5C0 45EA 0020 3004 48C0"            /* QÄÂà$K’¿EÍ. 0.H¿ */
	$"5580 670E 5580 6712 102A 0003 4880 48C0"            /* UÄg.UÄg..*..HÄH¿ */
	$"602E 306A 0002 2008 6026 2012 6022 246B"            /* `.0j.. .`& .`"$k */
	$"0038 D5C3 3004 48C0 5580 670C 5580 670E"            /* .8’√0.H¿UÄg.UÄg. */
	$"1012 4880 48C0 6008 3052 2008 6002 2012"            /* ..HÄH¿`.0R .`. . */
	$"4CDF 0C18 4E75 4E56 0000 48E7 1F38 266E"            /* Lﬂ..NuNV..HÁ.8&n */
	$"0008 246E 000C 4AAA 000C 6626 2F0A 2F0B"            /* ..$n..J™..f&/./. */
	$"4EB9 0000 2B68 2848 2F0A 2F0C 4EB9 0000"            /* Nπ..+h(H/./.Nπ.. */
	$"28AA 4A92 4FEF 0010 66DC 4EB9 0000 339E"            /* (™JíOÔ..f‹Nπ..3û */
	$"60D4 206A 000C 3A10 3005 0280 0000 00FF"            /* `‘ j..:.0..Ä...ˇ */
	$"0C80 0000 0013 6200 036A D040 303B 0006"            /* .Ä....b..j–@0;.. */
	$"4EFB 0002 035E 0028 004E 035E 008C 00BC"            /* N˚...^.(.N.^.å.º */
	$"0102 01B4 01EC 023A 0292 02BE 017E 035E"            /* ...¥.Ï.:.í.æ.~.^ */
	$"035E 035E 0300 0312 035E 033E 286A 000C"            /* .^.^.....^.>(j.. */
	$"3F3C FFFF 206B 0038 202C 0002 4870 0800"            /* ?<ˇˇ k.8 ,..Hp.. */
	$"206C 0006 4E90 700A D1AA 000C 5C4F 6000"            /*  l..Nêp.—™..\O`. */
	$"0318 286A 000C 3F3C 0001 2F2C 0006 2F0B"            /* ..(j..?<../,../. */
	$"4EB9 0000 2C48 4A80 4FEF 000A 6718 3F3C"            /* Nπ..,HJÄOÔ..g.?< */
	$"FFFF 206B 0038 202C 0002 4870 0800 206C"            /* ˇˇ k.8 ,..Hp.. l */
	$"000A 4E90 5C4F 700E D1AA 000C 6000 02DA"            /* ..Nê\Op.—™..`..⁄ */
	$"286A 000C 3F3C FFFF 3F3C 0004 2F2C 0002"            /* (j..?<ˇˇ?<../,.. */
	$"2F0B 4EB9 0000 2C48 4FEF 000A 2F00 206C"            /* /.Nπ..,HOÔ../. l */
	$"0006 4E90 700A D1AA 000C 5C4F 6000 02AA"            /* ..Nêp.—™..\O`..™ */
	$"286A 000C 206B 0038 D1EC 0002 2608 2E2C"            /* (j.. k.8—Ï..&.., */
	$"0006 282C 000A 2C2C 000E 2006 2204 4EB9"            /* ..(,..,,.. .".Nπ */
	$"0000 04D2 D680 6010 9686 3F3C FFFF 2F03"            /* ...“÷Ä`.ñÜ?<ˇˇ/. */
	$"2047 4E90 5384 5C4F 4A84 6EEC 7012 D1AA"            /*  GNêSÑ\OJÑnÏp.—™ */
	$"000C 6000 0264 286A 000C 3F3C 0004 2F2C"            /* ..`..d(j..?<../, */
	$"0002 2F0B 4EB9 0000 2C48 2600 3F3C 0004"            /* ../.Nπ..,H&.?<.. */
	$"2F2C 0006 2F0B 4EB9 0000 2C48 2800 3F3C"            /* /,../.Nπ..,H(.?< */
	$"0004 2F2C 000A 2F0B 4EB9 0000 2C48 2E00"            /* ../,../.Nπ..,H.. */
	$"3F3C 0004 2F2C 000E 2F0B 4EB9 0000 2C48"            /* ?<../,../.Nπ..,H */
	$"2C00 2006 2204 4EB9 0000 04D2 D680 4FEF"            /* ,. .".Nπ...“÷ÄOÔ */
	$"0028 6010 9686 3F3C FFFF 2F03 2047 4E90"            /* .(`.ñÜ?<ˇˇ/. GNê */
	$"5384 5C4F 4A84 6EEC 7012 D1AA 000C 6000"            /* SÑ\OJÑnÏp.—™..`. */
	$"01E8 286A 000C 4267 3F3C 0004 2F2C 0002"            /* .Ë(j..Bg?<../,.. */
	$"2F0B 4EB9 0000 2C48 2040 202C 000A 4FEF"            /* /.Nπ..,H @ ,..OÔ */
	$"000A 4870 0800 206C 0006 4E90 700E D1AA"            /* ..Hp.. l..Nêp.—™ */
	$"000C 5C4F 6000 01B2 286A 000C 3F3C FFFF"            /* ..\O`..≤(j..?<ˇˇ */
	$"3F3C 0004 2F2C 0002 2F0B 4EB9 0000 2C48"            /* ?<../,../.Nπ..,H */
	$"2040 202C 000A 4FEF 000A 4870 0800 206C"            /*  @ ,..OÔ..Hp.. l */
	$"0006 4E90 700E D1AA 000C 5C4F 6000 017A"            /* ..Nêp.—™..\O`..z */
	$"286A 000C 3F3C 0002 2F2C 0006 2F0B 4EB9"            /* (j..?<../,../.Nπ */
	$"0000 2C48 4A80 4FEF 000A 6728 4267 3F3C"            /* ..,HJÄOÔ..g(Bg?< */
	$"0004 2F2C 0002 2F0B 4EB9 0000 2C48 2040"            /* ../,../.Nπ..,H @ */
	$"202C 000E 4FEF 000A 4870 0800 206C 000A"            /*  ,..OÔ..Hp.. l.. */
	$"4E90 5C4F 7012 D1AA 000C 6000 012C 286A"            /* Nê\Op.—™..`..,(j */
	$"000C 3F3C 0004 2F2C 0002 2F0B 4EB9 0000"            /* ..?<../,../.Nπ.. */
	$"2C48 2040 D1EC 000A 2608 2E2C 0006 282C"            /* ,H @—Ï..&..,..(, */
	$"000E 2C2C 0012 2006 2204 4EB9 0000 04D2"            /* ..,,.. .".Nπ...“ */
	$"D680 4FEF 000A 6010 9686 3F3C FFFF 2F03"            /* ÷ÄOÔ..`.ñÜ?<ˇˇ/. */
	$"2047 4E90 5384 5C4F 4A84 6EEC 7016 D1AA"            /*  GNêSÑ\OJÑnÏp.—™ */
	$"000C 6000 00D4 286A 000C 3F3C 0004 2F2C"            /* ..`..‘(j..?<../, */
	$"0002 2F0B 4EB9 0000 2C48 4FEF 000A 2F00"            /* ../.Nπ..,HOÔ../. */
	$"206C 0006 4E90 700A D1AA 000C 584F 6000"            /*  l..Nêp.—™..XO`. */
	$"00A8 286A 000C 3F3C 0001 2F2C 000A 2F0B"            /* .®(j..?<../,../. */
	$"4EB9 0000 2C48 4A80 4FEF 000A 671E 3F3C"            /* Nπ..,HJÄOÔ..g.?< */
	$"0004 2F2C 0002 2F0B 4EB9 0000 2C48 4FEF"            /* ../,../.Nπ..,HOÔ */
	$"000A 2F00 206C 0006 4E90 584F 700E D1AA"            /* ../. l..NêXOp.—™ */
	$"000C 6064 206E 0010 B1EA 000C 676E 700E"            /* ..`d n..±Í..gnp. */
	$"D1AA 000C 6052 206A 000C 286B 0038 D9E8"            /* —™..`R j..(k.8ŸË */
	$"0002 B9EB 0050 6714 4AAC 0008 670E 3F3C"            /* ..πÎ.Pg.J¨..g.?< */
	$"FFFF 2F14 206C 0008 4E90 5C4F 5CAA 000C"            /* ˇˇ/. l..Nê\O\™.. */
	$"6026 206E 0010 B1EA 000C 6730 206A 000C"            /* `& n..±Í..g0 j.. */
	$"7000 3028 0002 E588 720C D081 D1AA 000C"            /* p.0(..Âàr.–Å—™.. */
	$"6006 4EB9 0000 339E 3005 0280 0000 8000"            /* `.Nπ..3û0..Ä..Ä. */
	$"6700 FC44 42AA 000C 6000 FC3C 4CDF 1CF8"            /* g.¸DB™..`.¸<Lﬂ.¯ */
	$"4E5E 4E75 4E56 FFFC 48E7 1030 266E 0008"            /* N^NuNVˇ¸HÁ.0&n.. */
	$"246E 000C 7600 6022 486E FFFC 2003 E588"            /* $n..v.`"Hnˇ¸ .Âà */
	$"2F32 080C 2F0B 4EB9 0000 33AC 4A00 4FEF"            /* /2../.Nπ..3¨J.OÔ */
	$"000C 6704 7001 600E 5283 7000 302A 0002"            /* ..g.p.`.RÉp.0*.. */
	$"B680 6DD4 7000 4CDF 0C08 4E5E 4E75 206F"            /* ∂Äm‘p.Lﬂ..N^Nu o */
	$"0004 226F 0008 4CE8 00F8 000C 4CE8 7C00"            /* .."o..LË.¯..LË|. */
	$"0028 4ED1 4E56 0000 48E7 1038 246E 0008"            /* .(N—NV..HÁ.8$n.. */
	$"262E 000C 286E 0010 2F0C 2F03 2F0A 4EB9"            /* &...(n../././.Nπ */
	$"0000 2CD6 266A 0038 D7EC 0008 26AA 0048"            /* ..,÷&j.8◊Ï..&™.H */
	$"276A 0044 0004 276A 004C 0008 274C 0014"            /* 'j.D..'j.L..'L.. */
	$"2043 2268 0008 202C 0004 4871 0800 2F0A"            /*  C"h.. ,..Hq../. */
	$"4EB9 0000 30FE 4FEF 0014 4CDF 1C08 4E5E"            /* Nπ..0˛OÔ..Lﬂ..N^ */
	$"4E75 4E56 FFD8 48E7 1038 246E 0008 486E"            /* NuNVˇÿHÁ.8$n..Hn */
	$"FFDC 2F2A 0040 4EB9 0000 28AA 4AAE FFDC"            /* ˇ‹/*.@Nπ..(™JÆˇ‹ */
	$"504F 6606 4EB9 0000 339E 4AAA 0044 6600"            /* POf.Nπ..3ûJ™.Df. */
	$"0088 41EE FFDC 43EE FFEC 22D8 22D8 22D8"            /* .àAÓˇ‹CÓˇÏ"ÿ"ÿ"ÿ */
	$"22D8 2D6A 0038 FFFC 486E FFEC 4EB9 0000"            /* "ÿ-j.8ˇ¸HnˇÏNπ.. */
	$"29EC 3600 584F 7000 3003 0C80 0000 0013"            /* )Ï6.XOp.0..Ä.... */
	$"621C 5740 6D20 6716 0440 000A 6D18 5740"            /* b.W@m g..@..m.W@ */
	$"6D0C 6712 5340 671E 5340 6702 6008 4EB9"            /* m.g.S@g.S@g.`.Nπ */
	$"0000 339E 6010 486E FFEC 4EB9 0000 2A08"            /* ..3û`.HnˇÏNπ..*. */
	$"3600 584F 60C0 206E FFF8 266E FFFC D7E8"            /* 6.XO`¿ nˇ¯&nˇ¸◊Ë */
	$"0002 256B 0004 0044 2553 0048 256B 0008"            /* ..%k...D%S.H%k.. */
	$"004C 254B 0050 6004 42AA 0050 41EE FFDC"            /* .L%K.P`.B™.PAÓˇ‹ */
	$"43EE FFEC 22D8 22D8 22D8 22D8 2D6A 0038"            /* CÓˇÏ"ÿ"ÿ"ÿ"ÿ-j.8 */
	$"FFFC 486E FFEC 4EB9 0000 29EC 3600 584F"            /* ˇ¸HnˇÏNπ..)Ï6.XO */
	$"7000 3003 0C80 0000 0013 6266 5740 6D6A"            /* p.0..Ä....bfW@mj */
	$"6760 0440 000A 6D62 5740 6D56 670A 5340"            /* g`.@..mbW@mVg.S@ */
	$"6758 5340 674C 6020 486E FFD8 206E FFF8"            /* gXS@gL` Hnˇÿ nˇ¯ */
	$"2F28 0002 2F2A 0044 4EB9 0000 33AC 4A00"            /* /(../*.DNπ..3¨J. */
	$"4FEF 000C 6734 6044 2F2E FFF8 2F2A 0044"            /* OÔ..g4`D/.ˇ¯/*.D */
	$"4EB9 0000 30B4 4A80 504F 661E 2F2E FFF8"            /* Nπ..0¥JÄPOf./.ˇ¯ */
	$"486E FFDC 2F0A 4EB9 0000 3114 4FEF 000C"            /* Hnˇ‹/.Nπ..1.OÔ.. */
	$"6008 4EB9 0000 339E 6012 486E FFEC 4EB9"            /* `.Nπ..3û`.HnˇÏNπ */
	$"0000 2A08 3600 584F 6000 FF76 286E FFF8"            /* ..*.6.XO`.ˇv(nˇ¯ */
	$"2F0C 486E FFDC 2F0A 4EB9 0000 2CD6 266A"            /* /.Hnˇ‹/.Nπ..,÷&j */
	$"0038 D7EC 000A 26AA 0048 276A 0044 0004"            /* .8◊Ï..&™.H'j.D.. */
	$"276A 004C 0008 206A 0044 0C10 002A 4FEF"            /* 'j.L.. j.D...*OÔ */
	$"000C 661A 204B 5088 5088 2748 000C 206A"            /* ..f. KPàPà'H.. j */
	$"0048 2010 D0AE FFD8 2740 0010 600C 206A"            /* .H .–Æˇÿ'@..`. j */
	$"0048 D1EE FFD8 2748 000C 206E FFE4 202C"            /* .H—Óˇÿ'H.. nˇ‰ , */
	$"0006 4870 0800 2F0A 4EB9 0000 30FE 504F"            /* ..Hp../.Nπ..0˛PO */
	$"4CDF 1C08 4E5E 4E75 9EFC 0054 48EF 00FF"            /* Lﬂ..N^Nuû¸.THÔ.ˇ */
	$"0000 48EF FF00 0020 06AF 0000 0064 003C"            /* ..HÔˇ.. .Ø...d.< */
	$"2F6F 0054 0040 2F6F 0058 0044 2F6F 005C"            /* /o.T.@/o.X.D/o.\ */
	$"0048 2F6F 0060 004C 2F0F 4EB9 0000 3172"            /* .H/o.`.L/.Nπ..1r */
	$"4E56 0000 4EB9 0000 3482 4E5E 4E75 4E56"            /* NV..Nπ..4ÇN^NuNV */
	$"0000 206D FFFA 4E90 4E5E 4E75 48E7 1838"            /* .. mˇ˙NêN^NuHÁ.8 */
	$"282F 0018 262F 001C 286F 0020 4294 2643"            /* (/..&/..(o. Bî&C */
	$"4A83 6604 7001 607A 2444 1012 4880 48C0"            /* JÉf.p.`z$D..HÄH¿ */
	$"0480 0000 0021 6708 5180 5380 6702 605A"            /* .Ä...!g.QÄSÄg.`Z */
	$"B50B 665C 1012 B01B 662E 0C1A 0021 66F4"            /* µ.f\..∞.f....!fÙ */
	$"7600 6018 2003 720A 4EB9 0000 04D2 121A"            /* v.`. .r.Nπ...“.. */
	$"4881 48C1 D280 70D0 D280 2601 0C12 0021"            /* HÅH¡“Äp–“Ä&....! */
	$"66E2 2883 7001 602A 0C1A 0021 66FA 0C1A"            /* f‚(Ép.`*...!f˙.. */
	$"0021 66FA 4A12 6718 2643 528B 60B6 4A12"            /* .!f˙J.g.&CRã`∂J. */
	$"6604 7001 600C 528A 528B 1012 B013 67EE"            /* f.p.`.RäRã..∞.gÓ */
	$"7000 4CDF 1C18 4E75 225F 121F 301F 4A01"            /* p.Lﬂ..Nu"_..0.J. */
	$"6704 A746 6002 A346 2E88 4ED1 206F 0008"            /* g.ßF`.£F.àN— o.. */
	$"3F3C 0001 A9EE 206F 0004 2080 4EFA 000E"            /* ?<..©Ó o.. ÄN˙.. */
	$"206F 0004 202F 0008 4267 A9EE 205F 504F"            /*  o.. /..Bg©Ó _PO */
	$"4ED0 3F3C 0001 4EB9 0000 3544 3B7C 0001"            /* N–?<..Nπ..5D;|.. */
	$"FAD2 3F3C 0001 4EB9 0000 34A0 584F 4E75"            /* ˙“?<..Nπ..4†XONu */
	$"4A6D FAD2 6646 4267 4EB9 0000 35C0 544F"            /* Jm˙“fFBgNπ..5¿TO */
	$"6014 53AD FAD4 202D FAD4 E588 41ED FBE4"            /* `.S≠˙‘ -˙‘ÂàAÌ˚‰ */
	$"2070 0800 4E90 4AAD FAD4 6EE6 4267 4EB9"            /*  p..NêJ≠˙‘nÊBgNπ */
	$"0000 35C2 4EB9 0000 04AE 4AAD FADC 544F"            /* ..5¬Nπ...ÆJ≠˙‹TO */
	$"670A 206D FADC 4E90 42AD FADC 3F2F 0004"            /* g. m˙‹NêB≠˙‹?/.. */
	$"4EB9 0000 34FA 544F 4E75 4267 4EB9 0000"            /* Nπ..4˙TONuBgNπ.. */
	$"35C0 544F 6014 53AD FAD8 202D FAD8 E588"            /* 5¿TO`.S≠˙ÿ -˙ÿÂà */
	$"41ED FAE4 2070 0800 4E90 4AAD FAD8 6EE6"            /* AÌ˙‰ p..NêJ≠˙ÿnÊ */
	$"4267 4EB9 0000 35C2 4EB9 0000 35BE 4AAD"            /* BgNπ..5¬Nπ..5æJ≠ */
	$"FAE0 544F 670A 206D FAE0 4E90 42AD FAE0"            /* ˙‡TOg. m˙‡NêB≠˙‡ */
	$"A9F4 4E75 48E7 1030 362F 0010 0C43 0001"            /* ©ÙNuHÁ.06/...C.. */
	$"6D06 0C43 0006 6F04 70FF 605C 3F3C 0004"            /* m..C..o.pˇ`\?<.. */
	$"4EB9 0000 35C0 3003 5340 48C0 E588 41ED"            /* Nπ..5¿0.S@H¿ÂàAÌ */
	$"FCE4 D1C0 2648 2450 7001 B5C0 544F 6702"            /* ¸‰—¿&H$Pp.µ¿TOg. */
	$"4293 3F3C 0004 4EB9 0000 35C2 7001 B5C0"            /* Bì?<..Nπ..5¬p.µ¿ */
	$"544F 670A 200A 660A 0C43 0001 6604 7000"            /* TOg. .f..C..f.p. */
	$"6016 200A 660A 4267 4EB9 0000 34A0 544F"            /* `. .f.BgNπ..4†TO */
	$"3F03 4E92 7000 544F 4CDF 0C08 4E75 4E75"            /* ?.Níp.TOLﬂ..NuNu */
	$"4E75 4E75 4E56 FF00 48E7 1838 266E 0008"            /* NuNuNVˇ.HÁ.8&n.. */
	$"286E 000C 262E 0010 7094 3800 7000 244B"            /* (n..&...pî8.p.$K */
	$"2540 0008 7000 2540 0004 2483 486E FF00"            /* %@..p.%@..$ÉHnˇ. */
	$"2F0B 4EB9 0000 3856 504F 204B 5048 2F08"            /* /.Nπ..8VPO KPH/. */
	$"204B 2F10 2F0C 486E FF00 2F08 4EB9 0000"            /*  K/./.Hnˇ./.Nπ.. */
	$"3730 4FEF 0014 3800 200B 4CDF 1C18 4E5E"            /* 70OÔ..8. .Lﬂ..N^ */
	$"4E75 9A5F 5F63 745F 5F31 3253 796D 626F"            /* Nuö__ct__12Symbo */
	$"6C4C 6F6F 6B75 7044 5055 6355 6C00 0000"            /* lLookupDPUcUl... */
	$"4E56 0000 48E7 0030 266E 0008 204B 4AA8"            /* NV..HÁ.0&n.. KJ® */
	$"0008 671A 554F 244B 584A 2F0A 3F3C 0004"            /* ..g.UO$KXJ/.?<.. */
	$"AA5A 544F 204B 2F28 0008 7001 AA59 4CDF"            /* ™ZTO K/(..p.™YLﬂ */
	$"0C00 4E5E 4E75 965F 5F64 745F 5F31 3253"            /* ..N^Nuñ__dt__12S */
	$"796D 626F 6C4C 6F6F 6B75 7044 7600 0000"            /* ymbolLookupDv... */
	$"4E56 FFFC 48E7 1030 246E 0008 266E 000C"            /* NVˇ¸HÁ.0$n..&n.. */
	$"7000 2D40 FFFC 4240 3600 204B 20BC 3F3F"            /* p.-@ˇ¸B@6. K º?? */
	$"3F3F 202E FFFC 6610 203C 7379 7361 43EE"            /* ?? .ˇ¸f. <sysaCÓ */
	$"FFFC A1AD 2288 3600 3003 662C 0CAE 0000"            /* ˇ¸°≠"à6.0.f,.Æ.. */
	$"0001 FFFC 660A 204B 20BC 6D36 386B 6018"            /* ..ˇ¸f. K ºm68k`. */
	$"0CAE 0000 0002 FFFC 660A 204B 20BC 7077"            /* .Æ....ˇ¸f. K ºpw */
	$"7063 6004 363C EA52 3003 4CDF 0C08 4E5E"            /* pc`.6<ÍR0.Lﬂ..N^ */
	$"4E75 8029 4765 7453 7973 7465 6D41 7263"            /* NuÄ)GetSystemArc */
	$"6869 7465 6374 7572 655F 5F31 3253 796D"            /* hitecture__12Sym */
	$"626F 6C4C 6F6F 6B75 7044 5055 6C00 0000"            /* bolLookupDPUl... */
	$"4E56 FEF4 48E7 1C38 266E 0008 286E 000C"            /* NV˛ÙHÁ.8&n..(n.. */
	$"282E 0014 263C 3F3F 3F3F 2D43 FEF4 4240"            /* (...&<????-C˛ÙB@ */
	$"3A00 0C83 3F3F 3F3F 6620 7000 244B 2540"            /* :..É????f p.$K%@ */
	$"0004 486E FEF4 2F0A 4EB9 0000 3690 504F"            /* ..Hn˛Ù/.Nπ..6êPO */
	$"3A00 4A40 6704 4EFA 00A6 0CAE 6D36 386B"            /* :.J@g.N˙.¶.Æm68k */
	$"FEF4 6608 1D7C 0010 FFFD 6016 0CAE 7077"            /* ˛Ùf..|..ˇ˝`..Æpw */
	$"7063 FEF4 6608 1D7C 0001 FFFD 6004 3A3C"            /* pc˛Ùf..|..ˇ˝`.:< */
	$"EA52 204B 4AA8 0004 662A 554F 2F0C 2F2E"            /* ÍR KJ®..f*UO/./. */
	$"FEF4 7001 2F00 204B 5848 2F08 486E FFF8"            /* ˛Ùp./. KXH/.Hnˇ¯ */
	$"486E FEF8 3F3C 0001 AA5A 301F 3A00 4A40"            /* Hn˛¯?<..™Z0.:.J@ */
	$"6702 604A 206E 0018 4A90 6640 554F 204B"            /* g.`J n..Jêf@UO K */
	$"2F28 0004 2F2E 0010 2F2E 0018 486E FFFC"            /* /(../.../...Hnˇ¸ */
	$"3F3C 0005 AA5A 301F 3A00 4A40 6708 7000"            /* ?<..™Z0.:.J@g.p. */
	$"2D40 0018 6016 594F 246E 0018 2F12 2F04"            /* -@..`.YO$n.././. */
	$"1F2E FFFD 7000 AA59 201F 2480 3005 4CDF"            /* ..ˇ˝p.™Y .$Ä0.Lﬂ */
	$"1C38 4E5E 4E75 802B 436F 6E6E 6563 7454"            /* .8N^NuÄ+ConnectT */
	$"6F4C 6962 7261 7279 5F5F 3132 5379 6D62"            /* oLibrary__12Symb */
	$"6F6C 4C6F 6F6B 7570 4450 5563 5431 556C"            /* olLookupDPUcT1Ul */
	$"5050 6300 0000 4E56 FFF8 48E7 0038 246E"            /* PPc...NVˇ¯HÁ.8$n */
	$"0008 266E 000C 486E FFF8 2F0A 4EB9 0000"            /* ..&n..Hnˇ¯/.Nπ.. */
	$"3690 504F 0CAE 6D36 386B FFF8 6614 41FA"            /* 6êPO.Æm68kˇ¯f.A˙ */
	$"0056 2848 224B 1210 7000 1001 5280 A22E"            /* .V(H"K..p...RÄ¢. */
	$"6014 41FA 0052 2D48 FFFC 224B 1210 7000"            /* `.A˙.R-Hˇ¸"K..p. */
	$"1001 5280 A22E 4CDF 1C00 4E5E 4E75 8023"            /* ..RÄ¢.Lﬂ..N^NuÄ# */
	$"4765 7446 7261 676D 656E 744E 616D 655F"            /* GetFragmentName_ */
	$"5F31 3253 796D 626F 6C4C 6F6F 6B75 7044"            /* _12SymbolLookupD */
	$"5055 6300 0020 0D4E 6176 6967 6174 696F"            /* PUc.. .Navigatio */
	$"6E4C 6962 0000 0D4E 6176 6967 6174 696F"            /* nLib...Navigatio */
	$"6E4C 6962 0000 4E56 FFF0 48E7 1838 246E"            /* nLib..NVˇHÁ.8$n */
	$"0008 7094 3600 2F3C 0000 00E0 487A 007C"            /* ..pî6./<...‡Hz.| */
	$"486E FFF0 4EB9 0000 35C4 4FEF 000C 41EE"            /* HnˇNπ..5ƒOÔ..AÓ */
	$"FFF0 2648 2848 2028 0008 4480 9180 4480"            /* ˇ&H(H (..DÄëÄDÄ */
	$"4A00 6716 41EE FFF0 2D48 FFFC 554F 2F0A"            /* J.g.AÓˇ-Hˇ¸UO/. */
	$"2068 0008 4E90 301F 3600 3003 3800 486E"            /*  h..Nê0.6.0.8.Hn */
	$"FFF0 4EB9 0000 3640 584F 3004 3D40 000C"            /* ˇNπ..6@XO0.=@.. */
	$"4CDF 1C18 4E5E 205F 584F 4ED0 9A4E 4156"            /* Lﬂ..N^ _XON–öNAV */
	$"4745 5444 4546 4155 4C54 4449 414C 4F47"            /* GETDEFAULTDIALOG */
	$"4F50 5449 4F4E 5300 001C 1A4E 6176 4765"            /* OPTIONS....NavGe */
	$"7444 6566 6175 6C74 4469 616C 6F67 4F70"            /* tDefaultDialogOp */
	$"7469 6F6E 7300 4E56 FFE8 48E7 1C38 262E"            /* tions.NVˇËHÁ.8&. */
	$"0008 246E 000C 266E 0010 286E 0014 7094"            /* ..$n..&n..(n..pî */
	$"3800 2F3C 003F FFE0 487A 0088 486E FFE8"            /* 8./<.?ˇ‡Hz.àHnˇË */
	$"4EB9 0000 35C4 4FEF 000C 41EE FFE8 2D48"            /* Nπ..5ƒOÔ..AÓˇË-H */
	$"FFF4 2D48 FFF8 2028 0008 4480 9180 4480"            /* ˇÙ-Hˇ¯ (..DÄëÄDÄ */
	$"4A00 672C 41EE FFE8 2D48 FFFC 554F 2F2E"            /* J.g,AÓˇË-Hˇ¸UO/. */
	$"0024 2F2E 0020 2F2E 001C 2F2E 0018 2F0C"            /* .$/.. /.../.../. */
	$"2F0B 2F0A 2F03 2068 0008 4E90 301F 3800"            /* /././. h..Nê0.8. */
	$"3004 3A00 486E FFE8 4EB9 0000 3640 584F"            /* 0.:.HnˇËNπ..6@XO */
	$"3005 3D40 0028 4CDF 1C38 4E5E 205F 4FEF"            /* 0.=@.(Lﬂ.8N^ _OÔ */
	$"0020 4ED0 8A4E 4156 4745 5446 494C 4500"            /* . N–äNAVGETFILE. */
	$"000C 0A4E 6176 4765 7446 696C 6500 4E56"            /* ...NavGetFile.NV */
	$"FFF0 48E7 1838 246E 0008 7094 3600 2F3C"            /* ˇHÁ.8$n..pî6./< */
	$"0000 00E0 487A 0070 486E FFF0 4EB9 0000"            /* ...‡Hz.pHnˇNπ.. */
	$"35C4 4FEF 000C 41EE FFF0 2648 2848 2028"            /* 5ƒOÔ..AÓˇ&H(H ( */
	$"0008 4480 9180 4480 4A00 6716 41EE FFF0"            /* ..DÄëÄDÄJ.g.AÓˇ */
	$"2D48 FFFC 554F 2F0A 2068 0008 4E90 301F"            /* -Hˇ¸UO/. h..Nê0. */
	$"3600 3003 3800 486E FFF0 4EB9 0000 3640"            /* 6.0.8.HnˇNπ..6@ */
	$"584F 3004 3D40 000C 4CDF 1C18 4E5E 205F"            /* XO0.=@..Lﬂ..N^ _ */
	$"584F 4ED0 8F4E 4156 4449 5350 4F53 4552"            /* XON–èNAVDISPOSER */
	$"4550 4C59 0012 0F4E 6176 4469 7370 6F73"            /* EPLY...NavDispos */
	$"6552 6570 6C79 0000 4E56 FFEC 48E7 1038"            /* eReply..NVˇÏHÁ.8 */
	$"7094 3600 422E FFEC 7010 2F00 487A 0072"            /* pî6.B.ˇÏp./.Hz.r */
	$"486E FFF0 4EB9 0000 35C4 4FEF 000C 41EE"            /* HnˇNπ..5ƒOÔ..AÓ */
	$"FFF0 2448 2648 2028 0008 4480 9180 4480"            /* ˇ$H&H (..DÄëÄDÄ */
	$"4A00 6714 41EE FFF0 2848 554F 2068 0008"            /* J.g.AÓˇ(HUO h.. */
	$"4E90 101F 1D40 FFEC 102E FFEC 1D40 FFFC"            /* Nê...@ˇÏ..ˇÏ.@ˇ¸ */
	$"486E FFF0 4EB9 0000 3640 584F 102E FFFC"            /* HnˇNπ..6@XO..ˇ¸ */
	$"1D40 0008 4CDF 1C08 4E5E 4E75 914E 4156"            /* .@..Lﬂ..N^NuëNAV */
	$"5345 5256 4943 4553 4341 4E52 554E 0014"            /* SERVICESCANRUN.. */
	$"114E 6176 5365 7276 6963 6573 4361 6E52"            /* .NavServicesCanR */
	$"756E 0000 4E56 FFFC 48E7 1020 362E 0008"            /* un..NVˇ¸HÁ. 6... */
	$"3003 48C0 0280 0000 0800 6704 7001 6002"            /* 0.H¿.Ä....g.p.`. */
	$"4200 1D40 FFFC 7201 B001 6650 3003 0240"            /* B..@ˇ¸r.∞.fP0..@ */
	$"07FF 3600 594F 3F3C A86E 7201 1F01 4EB9"            /* .ˇ6.YO?<®nr...Nπ */
	$"0000 3448 205F 2448 594F 3F3C AA6E 7001"            /* ..4H _$HYO?<™np. */
	$"1F00 4EB9 0000 3448 225F 204A B1C9 6608"            /* ..Nπ..4H"_ J±…f. */
	$"203C 0000 0200 6006 203C 0000 0400 3203"            /*  <....`. <....2. */
	$"3401 48C2 B082 6E04 4200 6032 594F 3F03"            /* 4.H¬∞Çn.B.`2YO?. */
	$"1F2E FFFC 4EB9 0000 3448 205F 2448 594F"            /* ..ˇ¸Nπ..4H _$HYO */
	$"3F3C A89F 7001 1F00 4EB9 0000 3448 225F"            /* ?<®üp...Nπ..4H"_ */
	$"204A B1C9 6604 7000 6002 7001 2000 4CDF"            /*  J±…f.p.`.p. .Lﬂ */
	$"0408 4E5E 4E75 8D54 7261 7041 7661 696C"            /* ..N^NuçTrapAvail */
	$"6162 6C65 0000 4E56 FFFC 422E FFFC 3F3C"            /* able..NVˇ¸B.ˇ¸?< */
	$"AA5A 4EB9 0000 3B94 544F 4A00 670E 554F"            /* ™ZNπ..;îTOJ.g.UO */
	$"4EB9 0000 3AF8 101F 1D40 FFFC 102E FFFC"            /* Nπ..:¯...@ˇ¸..ˇ¸ */
	$"1D40 0008 4E5E 4E75 944E 4156 5345 5256"            /* .@..N^NuîNAVSERV */
	$"4943 4553 4156 4149 4C41 424C 4500 0000"            /* ICESAVAILABLE... */
};

data 'CODE' (0, purgeable, protected) {
	$"0000 0240 0000 06C0 0000 0008 0000 0020"            /* ...@...¿.......  */
	$"0000 3F3C 0001 A9F0"                                /* ..?<..© */
};

data 'DATA' (0, purgeable, protected) {
	$"0000 03AD FFFF FCFD 40B9 5468 6520 636C"            /* ...≠ˇˇ¸˝@πThe cl */
	$"6970 626F 6172 6420 6973 2065 6974 6865"            /* ipboard is eithe */
	$"7220 656D 7074 7920 6F72 2064 6F65 736E"            /* r empty or doesn */
	$"2774 2063 6F6E 7461 696E 2061 2070 6963"            /* 't contain a pic */
	$"7475 7265 41C7 5468 6520 7363 6865 6D65"            /* tureA«The scheme */
	$"2079 6F75 2063 686F 7365 2069 7320 7468"            /*  you chose is th */
	$"6520 6163 7469 7665 206F 6E65 2E00 4564"            /* e active one..Ed */
	$"6974 696E 6720 7468 6520 6163 7469 7665"            /* iting the active */
	$"2073 6368 656D 6520 6361 6E20 636F 2072"            /*  scheme can co r */
	$"BF75 7074 2069 742C 2070 6C65 6173 6520"            /* øupt it, please  */
	$"7377 6974 6368 2074 6F20 616E 6F74 6865"            /* switch to anothe */
	$"7220 7363 6865 6D65 2061 6E64 2074 7279"            /* r scheme and try */
	$"2061 6761 696E 0009 636C 6970 3263 6963"            /*  again..clip2cic */
	$"6E47 01FF FF11 2499 9919 446F 6375 6D65"            /* nG.ˇˇ.$ôô.Docume */
	$"6E74 2057 696E 646F 7720 496E 6163 7469"            /* nt Window Inacti */
	$"7665 A57F 7F7F 65A7 596F 7520 6361 6E27"            /* ve•...eßYou can' */
	$"7420 6564 6974 2074 6869 7320 7363 6865"            /* t edit this sche */
	$"6D65 2073 696E 6365 2069 7427 7320 6375"            /* me since it's cu */
	$"2072 9665 6E74 6C79 206F 7065 6E20 696E"            /*  rñently open in */
	$"2061 6E6F 7468 6572 2061 2070 886C 6963"            /*  another a pàlic */
	$"6174 696F 6E2E 41AA 506C 6561 7365 2063"            /* ation.A™Please c */
	$"6C6F 7365 2069 7420 616E 6420 7472 7920"            /* lose it and try  */
	$"6167 6169 6E00 4253 6F6D 6574 6869 6E67"            /* again.BSomething */
	$"2068 6120 7092 656E 6564 2074 6861 7420"            /*  ha píened that  */
	$"7761 736E 2774 2073 7520 7089 6F73 6564"            /* wasn't su pâosed */
	$"2074 6F20 6861 2070 8465 6E2E 2045 2072"            /*  to ha pÑen. E r */
	$"916F 7220 6F66 2074 7970 653A 2000 0E4E"            /* ëor of type: ..N */
	$"6F74 2020 619C 7661 696C 6162 6C65 000D"            /* ot  aúvailable.. */
	$"4E6F 7420 6176 6169 6C61 626C 6505 6369"            /* Not available.ci */
	$"636E 3A41 A143 616E 2774 206C 6F61 6420"            /* cn:A°Can't load  */
	$"7468 6520 7069 6374 7572 6520 6F72 2074"            /* the picture or t */
	$"6865 2063 6C75 7441 816E 7520 6C43 9832"            /* he clutAÅnu lCò2 */
	$"3540 656E 756D 2431 3937 4D61 6348 6561"            /* 5@enum$197MacHea */
	$"6465 7273 5F70 6368 205F 4281 3390 4100"            /* ders_pch _BÅ3êA. */
	$"0000 0028 0000 0000 2840 84E1 0020 0004"            /* ...(....(@Ñ·. .. */
	$"4187 8012 00FF 0020 0004 4181 8012 4181"            /* AáÄ..ˇ. ..AÅÄ.AÅ */
	$"80AC 4381 8208 4210 8180 F242 827F 8540"            /* Ä¨CÅÇ.B.ÅÄÚBÇ.Ö@ */
	$"4282 2089 1042 8201 8104 4781 3CA0 4280"            /* BÇ â.BÇ.Å.GÅ<†BÄ */
	$"8041 8101 B859 8205 0680 4482 0522 8044"            /* ÄAÅ.∏YÇ..ÄDÇ."ÄD */
	$"8105 7645 8305 9080 2043 8405 D680 0008"            /* Å.vEÉ.êÄ CÑ.÷Ä.. */
	$"4282 0634 8044 8406 5A80 6362 4281 077A"            /* BÇ.4ÄDÑ.ZÄcbBÅ.z */
	$"4582 0796 8044 8307 C280 0143 8408 6480"            /* EÇ.ñÄDÉ.¬Ä.CÑ.dÄ */
	$"0010 4283 08A4 8020 4381 0926 4584 094A"            /* ..BÉ.§Ä CÅ.&EÑ.J */
	$"8061 0442 8409 DA80 0002 4283 0A3A 8020"            /* Äa.BÑ.⁄Ä..BÉ.:Ä  */
	$"4380 0A20 8080 0743 810A E642 805A 4184"            /* CÄ. ÄÄ.CÅ.ÊBÄZAÑ */
	$"0B42 80E1 2442 830D A480 0143 810D FC42"            /* .BÄ·$BÉ.§Ä.CÅ.¸B */
	$"8054 4184 0F0C 8000 7042 840F 9A80 201E"            /* ÄTAÑ..Ä.pBÑ.öÄ . */
	$"4281 110C 4280 4E41 8119 4C42 8048 4182"            /* BÅ..BÄNAÅ.LBÄHAÇ */
	$"2018 8044 8120 3E45 8220 8280 4482 20DE"            /*  .ÄDÅ >EÇ ÇÄDÇ ﬁ */
	$"8044 8121 0842 8042 4184 2178 8000 0842"            /* ÄDÅ!.BÄBAÑ!xÄ..B */
	$"8121 D445 8422 0A80 2026 4281 25EA 4280"            /* Å!‘EÑ".Ä &BÅ%ÍBÄ */
	$"3C41 8326 4880 6343 8126 CC45 8327 2280"            /* <AÉ&HÄcCÅ&ÃEÉ'"Ä */
	$"2743 8427 AA80 600A 4281 285C 4584 28AA"            /* 'CÑ'™Ä`.BÅ(\EÑ(™ */
	$"80FF 0442 8129 EC45 832A 0880 6143 812B"            /* Äˇ.BÅ)ÏEÉ*.ÄaCÅ+ */
	$"2845 832B 6880 E743 812C 4845 812C D642"            /* (EÉ+hÄÁCÅ,HEÅ,÷B */
	$"8032 4184 30B4 8061 0442 8130 FE45 8131"            /* Ä2AÑ0¥Äa.BÅ0˛EÅ1 */
	$"1442 8028 4184 3172 80E1 2842 8133 5845"            /* .BÄ(AÑ1rÄ·(BÅ3XE */
	$"8233 9080 4482 339E 8044 8133 AC43 0000"            /* Ç3êÄDÇ3ûÄDÅ3¨C.. */
	$"0000 0000 0000 02FD B300 0000 0000 0000"            /* .......˝≥....... */
	$"0941 8E4D 1E7F 21D0 D67F BC43 31E4 4420"            /* .AéM..!–÷.ºC1‰D  */
	$"0000 0050 406E 838A 8554 50F6 4056 406C"            /* ...P@nÉäÖTPˆ@V@l */
	$"7F9A 40EE 4069 8641 CB7E 3C41 87F4 EAD4"            /* .ö@Ó@iÜAÀ~<AáÙÍ‘ */
	$"E6F3 E6E4 DCF7 F7F7 C7DF 4105 7F76 C441"            /* ÊÛÊ‰‹˜˜˜«ﬂA..vƒA */
	$"64AC 9993 409E 7F96 D340 597F BB40 897F"            /* d¨ôì@û.ñ”@Y.ª@â. */
	$"9640 478C 8B99 B0A1 85B2 4047 8889 9383"            /* ñ@Gåãô∞°Ö≤@GàâìÉ */
	$"8E86 9383 9C93 91A5 8D40 AE40 8240 549F"            /* éÜìÉúìë•ç@Æ@Ç@Tü */
	$"BFAC AA9F ADA0 BD8A 998A 9D87 0000 0000"            /* ø¨™ü≠†Ωäôäùá.... */
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
		"clip2cicn (PPC)"
	}
};

