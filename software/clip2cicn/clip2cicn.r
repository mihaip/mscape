/* Resource fork of software/clip2cicn/clip2cicn */
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
	{	/* array DITLarray: 1 elements */
		/* [1] */
		{0, 0, 276, 337},
		Picture {
			enabled,
			128
		}
	}
};

resource 'DITL' (129, "Insert Cicn") {
	{	/* array DITLarray: 6 elements */
		/* [1] */
		{105, 144, 125, 204},
		Button {
			enabled,
			"Insert"
		},
		/* [2] */
		{106, 61, 126, 119},
		Button {
			enabled,
			"Cancel"
		},
		/* [3] */
		{10, 10, 30, 205},
		Control {
			enabled,
			128
		},
		/* [4] */
		{40, 10, 60, 205},
		Control {
			enabled,
			129
		},
		/* [5] */
		{70, 150, 86, 200},
		EditText {
			enabled,
			"-14336"
		},
		/* [6] */
		{72, 12, 88, 31},
		StaticText {
			disabled,
			"ID:"
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

resource 'MENU' (129) {
	129,
	textMenuProc,
	0x7FFFFFFD,
	enabled,
	"File",
	{	/* array: 3 elements */
		/* [1] */
		"Insert clipboard into cicn…", noIcon, "I", noMark, plain,
		/* [2] */
		"-", noIcon, noKey, noMark, plain,
		/* [3] */
		"Quit", noIcon, "Q", noMark, plain
	}
};

resource 'MENU' (130) {
	130,
	textMenuProc,
	0x7FFFFE00,
	disabled,
	"Edit",
	{	/* array: 9 elements */
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
		"Select All", noIcon, "A", noMark, plain,
		/* [8] */
		"-", noIcon, noKey, noMark, plain,
		/* [9] */
		"Preferences…", noIcon, noKey, noMark, plain
	}
};

resource 'MENU' (131) {
	131,
	textMenuProc,
	allEnabled,
	enabled,
	"cicn types",
	{	/* array: 30 elements */
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
	{	/* array: 2 elements */
		/* [1] */
		"Inactive -14324", noIcon, noKey, noMark, plain,
		/* [2] */
		"Active -14323", noIcon, noKey, noMark, plain
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
	{	/* array: 1 elements */
		/* [1] */
		"Active -12320", noIcon, noKey, noMark, plain
	}
};

resource 'MENU' (141) {
	141,
	textMenuProc,
	allEnabled,
	enabled,
	"Menubar",
	{	/* array: 7 elements */
		/* [1] */
		"Menubar Background -12240", noIcon, noKey, noMark, plain,
		/* [2] */
		"Menubar Item -12239", noIcon, noKey, noMark, plain,
		/* [3] */
		"Selected Menubar Item -12238", noIcon, noKey, noMark, plain,
		/* [4] */
		"Pull Down Menu Backgound -12237", noIcon, noKey, noMark, plain,
		/* [5] */
		"Selected Pull Down Menu Item -12236", noIcon, noKey, noMark, plain,
		/* [6] */
		"Menu Divider -12235", noIcon, noKey, noMark, plain,
		/* [7] */
		"Solo Menu Background -12234", noIcon, noKey, noMark, plain
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
	allEnabled,
	enabled,
	"Progress Bar",
	{	/* array: 2 elements */
		/* [1] */
		"Empty -10224", noIcon, noKey, noMark, plain,
		/* [2] */
		"Filled -10223", noIcon, noKey, noMark, plain
	}
};

resource 'MENU' (144) {
	144,
	textMenuProc,
	allEnabled,
	enabled,
	"Scroll Thumbs",
	{	/* array: 5 elements */
		/* [1] */
		"\0x00", noIcon, noKey, noMark, plain,
		/* [2] */
		"Vertical Active -10208", noIcon, noKey, noMark, plain,
		/* [3] */
		"Vertical Pressed -10207", noIcon, noKey, noMark, plain,
		/* [4] */
		"Horizontal Active -10206", noIcon, noKey, noMark, plain,
		/* [5] */
		"Horizontal Pressed -10205", noIcon, noKey, noMark, plain
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
		"Opening frame one -10107", noIcon, noKey, noMark, plain,
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
		"Closing frame one -10101\0x00", noIcon, noKey, noMark, plain,
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
	{	/* array: 2 elements */
		/* [1] */
		"Inactive -9792", noIcon, noKey, noMark, plain,
		/* [2] */
		"Active -9791", noIcon, noKey, noMark, plain
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

resource 'MENU' (155) {
	155,
	textMenuProc,
	allEnabled,
	enabled,
	"Checkboxes",
	{	/* array: 12 elements */
		/* [1] */
		"Empty Inactive -9504", noIcon, noKey, noMark, plain,
		/* [2] */
		"Empty Active -9503", noIcon, noKey, noMark, plain,
		/* [3] */
		"Empty Pressed -9502", noIcon, noKey, noMark, plain,
		/* [4] */
		"Checked Inactive -9501", noIcon, noKey, noMark, plain,
		/* [5] */
		"Checked Active -9500", noIcon, noKey, noMark, plain,
		/* [6] */
		"Checked Pressed -9499", noIcon, noKey, noMark, plain,
		/* [7] */
		"Mixed Inactive -9498", noIcon, noKey, noMark, plain,
		/* [8] */
		"Mixed Active -9497", noIcon, noKey, noMark, plain,
		/* [9] */
		"Mixed Pressed -9496", noIcon, noKey, noMark, plain,
		/* [10] */
		"Traditional Inactive -9495", noIcon, noKey, noMark, plain,
		/* [11] */
		"Traditional Active -9494", noIcon, noKey, noMark, plain,
		/* [12] */
		"Traditional Pressed -9493", noIcon, noKey, noMark, plain
	}
};

resource 'MENU' (156) {
	156,
	textMenuProc,
	allEnabled,
	enabled,
	"Radio Buttons",
	{	/* array: 9 elements */
		/* [1] */
		"Off Inactive -9492", noIcon, noKey, noMark, plain,
		/* [2] */
		"Off Active -9491", noIcon, noKey, noMark, plain,
		/* [3] */
		"Off Pressed -9490", noIcon, noKey, noMark, plain,
		/* [4] */
		"On Inactive -9489", noIcon, noKey, noMark, plain,
		/* [5] */
		"Off Active -9488", noIcon, noKey, noMark, plain,
		/* [6] */
		"Off Pressed -9487", noIcon, noKey, noMark, plain,
		/* [7] */
		"Mixed Inactive -9486", noIcon, noKey, noMark, plain,
		/* [8] */
		"Mixed Active -9485", noIcon, noKey, noMark, plain,
		/* [9] */
		"Mixed Pressed -9484", noIcon, noKey, noMark, plain
	}
};

resource 'MENU' (157) {
	157,
	textMenuProc,
	allEnabled,
	enabled,
	"Horizontal Scrollbar",
	{	/* array: 4 elements */
		/* [1] */
		"Inactive -8288", noIcon, noKey, noMark, plain,
		/* [2] */
		"Nothing To Scroll -8287", noIcon, noKey, noMark, plain,
		/* [3] */
		"Active -8286", noIcon, noKey, noMark, plain,
		/* [4] */
		"Pressed -8285", noIcon, noKey, noMark, plain
	}
};

resource 'MENU' (158) {
	158,
	textMenuProc,
	allEnabled,
	enabled,
	"Vertical Scrollbar",
	{	/* array: 4 elements */
		/* [1] */
		"Inactive -8280", noIcon, noKey, noMark, plain,
		/* [2] */
		"Nothing To Scroll -8279", noIcon, noKey, noMark, plain,
		/* [3] */
		"Active -8278", noIcon, noKey, noMark, plain,
		/* [4] */
		"Pressed -8277", noIcon, noKey, noMark, plain
	}
};

resource 'MENU' (159) {
	159,
	textMenuProc,
	allEnabled,
	enabled,
	"Ghost Thumbs",
	{	/* array: 2 elements */
		/* [1] */
		"Vertical -8272", noIcon, noKey, noMark, plain,
		/* [2] */
		"Horizontal -8271", noIcon, noKey, noMark, plain
	}
};

resource 'MENU' (160) {
	160,
	textMenuProc,
	allEnabled,
	enabled,
	"Popup Menu",
	{	/* array: 15 elements */
		/* [1] */
		"Button Inactive -8208", noIcon, noKey, noMark, plain,
		/* [2] */
		"Button Active -8207", noIcon, noKey, noMark, plain,
		/* [3] */
		"Button Pressed -8206", noIcon, noKey, noMark, plain,
		/* [4] */
		"Arrow Inactive -8205", noIcon, noKey, noMark, plain,
		/* [5] */
		"Arrow Active -8204", noIcon, noKey, noMark, plain,
		/* [6] */
		"Arrow Pressed -8203", noIcon, noKey, noMark, plain,
		/* [7] */
		"Arrow Only Inactive -8202", noIcon, noKey, noMark, plain,
		/* [8] */
		"Arrow Only Active -8201", noIcon, noKey, noMark, plain,
		/* [9] */
		"Arrow Only Pressed -8200", noIcon, noKey, noMark, plain,
		/* [10] */
		"Large Glyph Inactive -8199", noIcon, noKey, noMark, plain,
		/* [11] */
		"Large Glyph Active -8198", noIcon, noKey, noMark, plain,
		/* [12] */
		"Large Glyph Pressed -8197", noIcon, noKey, noMark, plain,
		/* [13] */
		"Small Glyph Inactive -8196", noIcon, noKey, noMark, plain,
		/* [14] */
		"Small Glyph Active -8195", noIcon, noKey, noMark, plain,
		/* [15] */
		"Small Glyph Pressed -8194", noIcon, noKey, noMark, plain
	}
};

resource 'MENU' (161) {
	161,
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

resource 'CNTL' (129) {
	{20, 5, 40, 200},
	0,
	visible,
	50,
	132,
	1008,
	0,
	"cicn:"
};

resource 'DLOG' (128) {
	{88, 131, 364, 468},
	dBoxProc,
	invisible,
	noGoAway,
	0x0,
	128,
	"",
	centerMainScreen
};

resource 'DLOG' (129) {
	{54, 42, 193, 259},
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
	$"0000 0000 00FC F0CC FDF0 0000 0000 0000"
	$"0000 0000 0FC0 CFCF DDCF 0000 0000 0000"
	$"0000 0000 FCCC CCFD DCCC F000 0000 0000"
	$"0000 000F CCCC CCCC CCCC 0F00 0000 0000"
	$"0000 00FC CCCC CCCC CC00 CCF0 0000 0000"
	$"0000 0FFF FCCC CCCC 00CC CCCF 0000 0000"
	$"0000 FF0C 0FCC CC00 CCCC CCCC F000 0000"
	$"000F FFCF CFFF 00CC CCCC CCCC FF00 0000"
	$"00FD DC0C 0CAD FCCC CCCC CCCF 1FF0 0000"
	$"0FFC AAAA AAAC FECC CCCC CCCF 1FDF 0000"
	$"FCFD CDF0 FDCD FECC CCCC CCF1 11F0 F000"
	$"0FFC DF00 0FDC FECC 3CCC CCF1 11FE CF00"
	$"00FD F000 FDCD FE33 33CC 0F11 F11F CCF0"
	$"00FC DF0F DCDC FE33 3330 0F11 F11F ECCF"
	$"00FD CDFD CDCD FE33 33DD F111 F111 FCF0"
	$"00FC DCDC DCDC FE0D 3DEC F111 F111 FF00"
	$"00FD CDCD CDCD FD00 CECF 1111 1111 1F00"
	$"00FC DCDC DCDC FDCC CCCF 1111 F111 1F00"
	$"00FD CDCD CDCD FECC CCF1 1111 1111 11F0"
	$"00FC DCDC DCDC FECC CCFF FFFF FFFF FFF0"
	$"000F FFFF FFFF EECC CCCE BBBB F000 0000"
	$"0000 0000 000F ECCC CCCC CCDF 0000 0000"
	$"0000 0000 0000 FCCC CCCC 0DF0 0000 0000"
	$"0000 0000 0000 0FCC CC00 DF00 0000 0000"
	$"0000 0000 0000 00FC 00CD F000 0000 0000"
	$"0000 0000 0000 000F CCBF 0000 0000 0000"
	$"0000 0000 0000 0000 FBF0 0000 0000 0000"
	$"0000 0000 0000 0000 0F"
};

resource 'icl4' (129) {
	$"0FFF FFFF FFFF FFFF FFFF 0000 0000 0000"
	$"0FCC CCCC CCCC CCCC 00CF F000 0000 0000"
	$"0FCC CCCC CCCC CC00 CCCF CF00 0000 0000"
	$"0FCC CCCC CCCC 00CC CCCF 0CF0 0000 0000"
	$"0FCC CCCC CC00 CCCC CCCF 00CF 0000 0000"
	$"0FCC CCCC 00CC CCCC CCCF 0CCC F000 0000"
	$"0FCC CC00 CCCC CCCC CCCF FFFF FF00 0000"
	$"0FCC 00CC CCCF FFCC CC00 CCCC DF00 0000"
	$"0F00 CCCC CCCC FEEC 0FCC CCCC CF00 0000"
	$"0FCC CCCF CCCF FFF0 CFFC CCCC CF00 0000"
	$"0FCC CCFF EFF0 000F FCEE CCCC CF00 0000"
	$"0FCC CCCE F00C CDC0 CFCC CCCC CF00 0000"
	$"0FCC CCCC F0CC CDCC DFEC CCCC CF00 0000"
	$"0FCC CC0F 0CCC CDCC CDFC CCCC CF00 0000"
	$"0FCC 00CF 0CCC CDCC CDFE CC00 CF00 0000"
	$"0F00 CCCF 0DDD DDCC CDFE 0000 CF00 0000"
	$"0FCC CCCF 0CCC CCCC CDFD 00CC CF00 0000"
	$"0FCC CCCC F0CC CCCC DFDD CCCC CF00 0000"
	$"0FCC CCCC FCDC CCCD DFEC CCCC CF00 0000"
	$"0FCC CCCC CFFD DDDF FEEC CCCC CF00 0000"
	$"0FCC CCCC CCDF FFFE EECC CCCC CF00 0000"
	$"0FCC CCCC 0000 EEEE CCCC CCCC CF00 0000"
	$"0FCC CC00 00CC CCCC CCCC CCCC CF00 0000"
	$"0FCC 0000 CCCC CCCC CCCC CCCC CF00 0000"
	$"0F00 00CC CCCC CCCC CCCC CC00 CF00 0000"
	$"0FFF FFFF FFFF FFFF FFFF FFFF FF00 0000"
	$"0FFF F00F F00F F000 F000 FFFF FFE0 0000"
	$"0FFF F0F0 F0F0 F0FF F0FF FFFF FFEE E000"
	$"0FFF F00F F00F F00F F00F FFFF FFEE EEE0"
	$"0FFF F0FF F0F0 F0FF F0FF FFFF FFEE EEE0"
	$"0FFF F0FF F0F0 F000 F0FF FFFF FFEE E000"
	$"0FFF FFFF FFFF FFFF FFFF FFFF FFE0"
};

resource 'icl8' (128) {
	$"0000 0000 0000 0000 0000 0000 0000 0000"
	$"0000 0000 0000 0000 0000 0000 0000 0000"
	$"0000 0000 0000 0000 0000 0000 0000 0000"
	$"0000 0000 0000 0000 0000 0000 0000 0000"
	$"0000 0000 0000 0000 0000 00FF FFFF FFFF"
	$"FFFF 0000 0000 0000 0000 0000 0000 0000"
	$"0000 0000 0000 0000 0000 FF07 FF02 0808"
	$"FFF9 FF00 0000 0000 0000 0000 0000 0000"
	$"0000 0000 0000 0000 00FF 0702 08FF 08FF"
	$"F9F9 0EFF 0000 0000 0000 0000 0000 0000"
	$"0000 0000 0000 0000 FF07 0808 0808 FFF9"
	$"F90E 0D0D FF00 0000 0000 0000 0000 0000"
	$"0000 0000 0000 00FF 0708 0808 0E0E 0E0E"
	$"0D0D 0D0D 0CFF 0000 0000 0000 0000 0000"
	$"0000 0000 0000 FF07 0808 0E0E 0E0E 0D0D"
	$"0D0D 0C0C 3030 FF00 0000 0000 0000 0000"
	$"0000 0000 00FF FFFF FF0E 0E0E 0D0D 0D0D"
	$"0C0C 3030 3030 54FF 0000 0000 0000 0000"
	$"0000 0000 FFFF 00F6 00FF 0D0D 0D0D 0C0C"
	$"3030 3030 5454 5454 FF00 0000 0000 0000"
	$"0000 00FF FFFF F6FF F6FF FFFF 0C0C 3030"
	$"3030 5454 5454 5454 FFFF 0000 0000 0000"
	$"0000 FF33 FAF6 00F6 00F6 FD33 FF30 3030"
	$"5454 5454 5454 54FF 0BFF FF00 0000 0000"
	$"00FF FFF7 FDFD FDFD FDFD FDF7 FF87 5454"
	$"5454 5454 5454 4EFF 0BFF FAFF 0000 0000"
	$"FF07 FF33 F733 FF00 FF33 F733 FFFB 5454"
	$"5454 5454 4E4E FF0B 0B0B FF48 FF00 0000"
	$"00FF FFF7 33FF 0000 00FF 33F7 FFFB 5454"
	$"2354 4E4E 4E4E FF0B 0B0B FFA5 4AFF 0000"
	$"0000 FF33 FF00 0000 FF33 F733 FFFB 2323"
	$"2323 4E4E 48FF 0B0B FF0B 0BFF 4A4A FF00"
	$"0000 FFF7 33FF 00FF 33F7 33F7 FFFB 2323"
	$"2323 2348 48FF 0B0B FF0B 0BFF FB4A 4AFF"
	$"0000 FF33 F733 FF33 F733 F733 FFA5 2323"
	$"2323 FAFA FF0B 0B0B FF0B 0B0B FF4A FF00"
	$"0000 FFF7 33F7 33F7 33F7 33F7 FFA5 48FA"
	$"23FA A549 FF0B 0B0B FF0B 0B0B FFFF 0000"
	$"0000 FF33 F733 F733 F733 F733 FFFA 4848"
	$"49A5 4AFF 0B0B 0B0B 0B0B 0B0B 0BFF 0000"
	$"0000 FFF7 33F7 33F7 33F7 33F7 FFFA 4949"
	$"4A4A 4AFF 0B0B 0B0B FF0B 0B0B 0BFF 0000"
	$"0000 FF33 F733 F733 F733 F733 FFA5 4A4A"
	$"4A4A FF0B 0B0B 0B0B 0B0B 0B0B 0B0B FF00"
	$"0000 FFF7 33F7 33F7 33F7 33F7 FFFB 4A4A"
	$"4A4A FFFF FFFF FFFF FFFF FFFF FFFF FF00"
	$"0000 00FF FFFF FFFF FFFF FFFF FBFB 4A4A"
	$"4A4A 4AFB 8282 8282 FF00 0000 0000 0000"
	$"0000 0000 0000 0000 0000 00FF FB4A 4A4A"
	$"4A4A 2626 2626 33FF 0000 0000 0000 0000"
	$"0000 0000 0000 0000 0000 0000 FF4A 4A4A"
	$"2626 2626 0233 FF00 0000 0000 0000 0000"
	$"0000 0000 0000 0000 0000 0000 00FF 2626"
	$"2626 0202 33FF 0000 0000 0000 0000 0000"
	$"0000 0000 0000 0000 0000 0000 0000 FF26"
	$"0202 0833 FF00 0000 0000 0000 0000 0000"
	$"0000 0000 0000 0000 0000 0000 0000 00FF"
	$"0808 39FF 0000 0000 0000 0000 0000 0000"
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

resource 'ICN#' (129) {
	{	/* array: 2 elements */
		/* [1] */
		$"7FFF F000 4000 1800 4000 1400 4000 1200"
		$"4000 1100 4000 1080 4000 1FC0 401C 0040"
		$"400E 4040 411E 6040 43E1 B040 4184 4040"
		$"4084 E040 4104 6040 4104 7040 417C 7040"
		$"4100 7040 4080 F040 40A1 E040 407F E040"
		$"403F C040 400F 0040 4000 0040 4000 0040"
		$"4000 0040 7FFF FFC0 7998 8FE0 7AAB BFF8"
		$"7999 9FFE 7BAB BFFE 7BA8 BFF8 7FFF FFE0",
		/* [2] */
		$"7FFF F000 7FFF F800 7FFF FC00 7FFF FE00"
		$"7FFF FF00 7FFF FF80 7FFF FFC0 7FFF FFC0"
		$"7FFF FFC0 7FFF FFC0 7FFF FFC0 7FFF FFC0"
		$"7FFF FFC0 7FFF FFC0 7FFF FFC0 7FFF FFC0"
		$"7FFF FFC0 7FFF FFC0 7FFF FFC0 7FFF FFC0"
		$"7FFF FFC0 7FFF FFC0 7FFF FFC0 7FFF FFC0"
		$"7FFF FFC0 7FFF FFC0 7FFF FFE0 7FFF FFF8"
		$"7FFF FFFE 7FFF FFFE 7FFF FFF8 7FFF FFE0"
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

resource 'ics#' (129) {
	{	/* array: 2 elements */
		/* [1] */
		$"FFE0 8070 8ED8 A4F8 EF08 9088 9188 9188"
		$"9788 8F08 8008 8008 FFF8 FFFE FFFF FFFE",
		/* [2] */
		$"FFE0 FFF0 FFF8 FFF8 FFF8 FFF8 FFF8 FFF8"
		$"FFF8 FFF8 FFF8 FFF8 FFF8 FFFE FFFF FFFE"
	}
};

resource 'ics4' (128) {
	$"00FF F000 0000 0000 0F00 0F03 3300 0000"
	$"F0AA A0F0 0030 0000 FDDF 0FF0 0030 0000"
	$"FDF0 FDF0 0333 0000 FDDF DDF0 0030 0000"
	$"FDDD DDF0 000F 0000 FDDD DDF0 000F 0000"
	$"0FFF FF00 00F1 F000 0000 0000 00F1 F000"
	$"0000 0000 0F1F 1F00 0000 0000 0F1F 1F00"
	$"0000 0000 F111 11F0 0000 0000 F11F 11F0"
	$"0000 000F 1111 111F 0000 000F FFFF FFFF"
};

resource 'ics4' (129) {
	$"FFFF FFFF FFF0 0000 FCCC CC0C CFFF 0000"
	$"FCCC FFFC FFCF F000 FCFC CFCC FFFF F000"
	$"FFFC FFFF CCCC F000 FCCF 000C FCCC F000"
	$"FCCF 0CCD FCCC F000 F0CF 0CCD FC0C F000"
	$"FCCF CDDD F0CC F000 FCCC FFFF CCCC F000"
	$"FCCC 00CC CCCC F000 FC00 CCCC CCCC F000"
	$"FFFF FFFF FFFF F000 FFFF FFFF FFFF FEE0"
	$"FFFF FFFF FFFF FEEE FFFF FFFF FFFF FEE0"
};

resource 'ics8' (128) {
	$"0000 FFFF FF00 0000 0000 0000 0000 0000"
	$"00FF 0000 00FF 0023 2323 0000 0000 0000"
	$"FF00 FDFD FD00 FF00 0000 2300 0000 0000"
	$"FF33 33FF 00FF FF00 0000 2300 0000 0000"
	$"FF33 FF00 FF33 FF00 0023 2323 0000 0000"
	$"FF33 33FF 3333 FF00 0000 2300 0000 0000"
	$"FF33 3333 3333 FF00 0000 00FF 0000 0000"
	$"FF33 3333 3333 FF00 0000 00FF 0000 0000"
	$"00FF FFFF FFFF 0000 0000 FF0B FF00 0000"
	$"0000 0000 0000 0000 0000 FF0B FF00 0000"
	$"0000 0000 0000 0000 00FF 0BFF 0BFF 0000"
	$"0000 0000 0000 0000 00FF 0BFF 0BFF 0000"
	$"0000 0000 0000 0000 FF0B 0B0B 0B0B FF00"
	$"0000 0000 0000 0000 FF0B 0BF4 0B0B FF00"
	$"0000 0000 0000 00FF 0B0B 0B0B 0B0B 0BFF"
	$"0000 0000 0000 00FF FFFF FFFF F4FF FFFF"
};

resource 'ics8' (129) {
	$"FFFF FFFF FFFF FFFF FFFF FF00 0000 0000"
	$"FF4A 4A4A 2626 0208 08FF FFFF 0000 0000"
	$"FF4A 2626 FFFF FF0E FFFF 07FF FF00 0000"
	$"FF26 FF08 08FF 0E0D FFFF FFFF FF00 0000"
	$"FFFF FF0E FFFF FFFF 3030 552A FF00 0000"
	$"FF0E 0EFF 0000 00F6 FF54 5455 FF00 0000"
	$"FF0D 0DFF 00F6 F681 FF54 4E2B FF00 0000"
	$"FF0C 30FF 00F6 F681 FF4E 484E FF00 0000"
	$"FF30 54FF F681 8181 FF48 4926 FF00 0000"
	$"FF54 5454 FFFF FFFF 494A 4A50 FF00 0000"
	$"FF54 4E4E 4848 494A 4A4A 4A4F FF00 0000"
	$"FF4E 4848 494A 4A4A 4A4A 2626 FF00 0000"
	$"FFFF FFFF FFFF FFFF FFFF FFFF FF00 0000"
	$"FFFF FFFF FFFF FFFF FFFF FFFF FFFC FC00"
	$"FFFF FFFF FFFF FFFF FFFF FFFF FFFC FCFC"
	$"FFFF FFFF FFFF FFFF FFFF FFFF FFFC FC"
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
	0x0,
	development,
	0x0,
	14,
	"clip2cicn 1.0b1",
	"clip2cicn by Mihai Parparita"
};

resource 'wctb' (128) {
	{	/* array ColorSpec: 0 elements */
	}
};

resource 'WIND' (128, "Bench Window") {
	{50, 30, 200, 230},
	zoomDocProc,
	invisible,
	goAway,
	0x0,
	"Testing...",
	staggerParentWindowScreen
};

data 'c2ci' (0, "Owner resource") {
	$"16A9 2031 3939 3820 4D69 6861 6920 5061"            /* .© 1998 Mihai Pa */
	$"7270 6172 6974 61"                                  /* rparita */
};

resource 'PICT' (128) {
	20804,
	{0, 0, 276, 337},
	$"0011 02FF 0C00 FFFE 0000 0048 0000 0048"
	$"0000 0000 0000 0114 0151 0000 0000 00A1"
	$"01F2 0016 3842 494D 0000 0000 0000 0114"
	$"0151 4772 8970 68AF 626A 0001 000A 0000"
	$"0000 0114 0151 0098 8154 0000 0000 0114"
	$"0151 0000 0000 0000 0000 0048 0000 0048"
	$"0000 0000 0008 0001 0008 0000 0000 0000"
	$"0000 0000 0000 0046 FD61 0000 003F 0000"
	$"FFFF FFFF FFFF 0001 0808 0808 0808 0002"
	$"1010 1010 1010 0003 1818 1818 1818 0004"
	$"2121 2121 2121 0005 2929 2929 2929 0006"
	$"3131 3131 3131 0007 3939 3939 3939 0008"
	$"4242 4242 4242 0009 4A4A 4A4A 4A4A 000A"
	$"5252 5252 5252 000B 5A5A 5A5A 5A5A 000C"
	$"6363 6363 6363 000D 6B6B 6B6B 6B6B 000E"
	$"7373 7373 7373 000F 7B7B 7B7B 7B7B 0010"
	$"8484 8484 8484 0011 8C8C 8C8C 8C8C 0012"
	$"9494 9494 9494 0013 9C9C 9C9C 9C9C 0014"
	$"A5A5 A5A5 A5A5 0015 ADAD ADAD ADAD 0016"
	$"B5B5 B5B5 B5B5 0017 BDBD BDBD BDBD 0018"
	$"C6C6 C6C6 C6C6 0019 CECE CECE CECE 001A"
	$"DEDE DEDE DEDE 001B E7E7 E7E7 E7E7 001C"
	$"EFEF EFEF EFEF 001D F7F7 F7F7 F7F7 001E"
	$"DEDE D6D6 D6D6 001F BDBD B5B5 B5B5 0020"
	$"A5A5 9C9C 9C9C 0021 8C8C 8484 8484 0022"
	$"6B6B 6363 6363 0023 5A5A 5252 5252 0024"
	$"E7E7 DEDE D6D6 0025 C6C6 BDBD B5B5 0026"
	$"6363 5252 4242 0027 B5B5 ADAD A5A5 0028"
	$"D6D6 C6C6 B5B5 0029 EFEF E7E7 DEDE 002A"
	$"ADAD 9C9C 8484 002B DEDE CECE B5B5 002C"
	$"F7F7 DEDE B5B5 002D 4242 3939 2929 002E"
	$"E7E7 D6D6 B5B5 002F FFFF E7E7 B5B5 0030"
	$"CECE C6C6 B5B5 0031 EFEF DEDE B5B5 0032"
	$"BDBD ADAD 8484 0033 A5A5 9C9C 8484 0034"
	$"DEDE CECE 9C9C 0035 CECE CECE C6C6 0036"
	$"BDBD BDBD B5B5 0037 8484 8484 7B7B 0038"
	$"C6C6 C6C6 B5B5 0039 4A4A 4A4A 4242 003A"
	$"E7E7 EFEF E7E7 003B EFEF F7F7 F7F7 003C"
	$"DEDE E7E7 E7E7 003D BDBD BDBD C6C6 003E"
	$"FFFF F7F7 FFFF 003F 0000 0000 0000 0000"
	$"0000 0114 0151 0000 0000 0114 0151 0000"
	$"0006 8100 8100 AD00 0006 8100 8100 AD00"
	$"0006 8100 8100 AD00 0006 8100 8100 AD00"
	$"000B BC00 0113 1AC8 0081 00AD 0000 0DBE"
	$"0003 1504 3F0F C800 8100 AD00 000F C000"
	$"0113 06FE 3F00 0FC8 0081 00AD 0000 10C4"
	$"0002 190F 08FB 3F00 0FC8 0081 00AD 0000"
	$"16C5 0000 0EF8 3F00 0FC8 00E5 0000 1CFE"
	$"1700 19A2 00AD 0000 1CC5 0002 0E08 08FA"
	$"3F00 0FC8 00E8 0002 150C 02FB 3F02 0611"
	$"1AA6 00AD 0000 23C2 0001 1902 FC3F 000F"
	$"F200 0117 1AD9 00EA 0001 1504 F53F 010C"
	$"1ACA 0001 1A17 E100 AD00 0028 C100 0011"
	$"FC3F 000F F400 041C 063F 3F0C DA00 EC00"
	$"011C 0CF2 3F01 0215 CC00 0413 3F3F 0219"
	$"E300 AD00 0033 C100 001A FC3F 000F F400"
	$"0008 FD3F 0011 DB00 ED00 011C 06FE 3F07"
	$"040E 1517 1713 0C02 FA3F 0013 CE00 0017"
	$"FD3F 0104 1CE4 00AD 0000 2EC0 00FC 3F00"
	$"0FF5 0000 19FC 3F00 02DB 00EE 0005 1C06"
	$"3F3F 0617 FA00 011C 0FFA 3F00 13CF 0000"
	$"0AFC 3F00 11E4 00AD 0000 2BC0 00FC 3F00"
	$"0FF5 0000 0FFB 3F00 19DC 00EF 0004 1C06"
	$"3F3F 0CF6 0001 1902 FB3F 0017 D000 FB3F"
	$"000A E400 AD00 002A C000 FC3F 000F F500"
	$"000F FB3F 0017 DC00 EF00 030C 3F3F 0CF4"
	$"0000 17FB 3F01 041C D100 FB3F 0008 E400"
	$"AD00 002B C000 FC3F 000F F500 0011 FB3F"
	$"001A DC00 F000 0317 3F3F 0CF2 0000 0EFB"
	$"3F00 0FD1 0000 02FC 3F00 0CE4 00AD 0000"
	$"2CC0 00FC 3F00 0FF5 0000 1AFC 3F00 04DB"
	$"00F0 0002 043F 06F1 0001 1C02 FC3F 0102"
	$"1CD2 0000 0CFC 3F00 13E4 00AD 0000 2CC0"
	$"00FC 3F00 0FF4 0000 0EFD 3F00 15DB 00F1"
	$"0003 133F 3F19 F000 000E FB3F 0013 D200"
	$"011A 02FE 3F00 06E3 00AD 0000 29C0 00FC"
	$"3F00 0FF3 0003 0E3F 0413 DA00 F100 0206"
	$"3F0C EF00 0019 FB3F 000A D100 0419 043F"
	$"0A1C E300 AD00 001B C000 FC3F 000F C800"
	$"F200 031A 3F3F 1AEE 0000 02FC 3F00 02AE"
	$"00AD 0000 18C0 00FC 3F00 0FC8 00F2 0002"
	$"173F 0EED 0000 08FB 3FAE 00AD 0000 19C0"
	$"00FC 3F00 0FC8 00F1 0001 111C ED00 000C"
	$"FB3F 0017 AF00 AD00 0014 C000 FC3F 000F"
	$"C800 DB00 000F FB3F 0017 AF00 AD00 0014"
	$"C000 FC3F 000F C800 DB00 000F FB3F 0017"
	$"AF00 AD00 0014 C000 FC3F 000F C800 DB00"
	$"000F FB3F 0017 AF00 AD00 0014 C000 FC3F"
	$"000F C800 DB00 000C FB3F 001C AF00 AD00"
	$"006A DA00 0319 0F08 04FD 3F03 0608 0F15"
	$"F300 FC3F 000F F100 021C 0C0C F000 0113"
	$"0EF9 000A 1A11 0802 3F3F 0208 0F1A 00DB"
	$"0000 06FB 3FEC 0003 1C13 0C08 FD3F 0402"
	$"080C 111A F000 0217 021A EB00 0315 0E08"
	$"02FE 3F04 3F08 0A0F 19F0 0001 1306 F900"
	$"0215 0C06 FE3F 0206 0C15 D600 006E DC00"
	$"0113 04FE 3FFE 08FB 3F01 0411 F500 FC3F"
	$"000F F200 031C 063F 08F1 0002 133F 08FB"
	$"0001 1A0C F73F 0008 0019 DC00 FB3F 0008"
	$"EE00 011A 0CFE 3F03 0408 0804 FB3F 010A"
	$"1AF3 0003 133F 3F17 EE00 091C 0F02 3F3F"
	$"0208 0806 3FFC 3F01 0617 F300 0213 3F3F"
	$"FB00 0115 04F8 3F01 0417 D800 007B DE00"
	$"0517 043F 3F08 15FD 0002 1C13 02FC 3F01"
	$"081C F700 FC3F 000F F300 041A 063F 3F08"
	$"F200 0313 3F3F 08FC 0001 1102 F53F 013F"
	$"11DE 0000 15FB 3F00 0FF0 0006 1C0E 3F3F"
	$"020F 1AFD 0001 190A FC3F 0102 13F5 0000"
	$"11FE 3F00 17EF 0005 1102 3F3F 0C19 FD00"
	$"001A 000F FB3F 000E F500 0013 FE3F FD00"
	$"011C 0CF4 3F00 0ED9 0000 89DF 0000 0EFE"
	$"3F00 11F9 0001 1C06 FC3F 000E F700 FC3F"
	$"000F F400 0115 02FE 3F00 08F3 0000 11FE"
	$"3F00 08FD 0004 0C3F 3F02 08FE 0F01 0802"
	$"FC3F FF3F 000C DF00 000C FB3F 0019 F100"
	$"0519 043F 3F06 1AF9 0000 13FC 3F01 021A"
	$"F800 011C 0AFD 3F00 17F1 0005 1C08 3F3F"
	$"0217 FA00 0200 1902 FC3F 0015 F700 0011"
	$"FD3F FE00 011C 06FE 3F03 0608 0806 F93F"
	$"000C DA00 008C E100 051C 083F 3F02 19F7"
	$"0001 1C04 FC3F 001C F800 FC3F 000F F600"
	$"011C 0EFC 3F00 08F5 0001 1C0C FD3F 0708"
	$"0000 1C06 3F04 13FA 0001 1304 FE3F FE3F"
	$"000C E000 0002 FC3F 0004 F100 0413 023F"
	$"3F0C F600 0011 FC3F 000E F900 0117 04FC"
	$"3F00 17F2 0005 1904 3F3F 061C F900 FF00"
	$"0019 FC3F 0006 F900 011C 0AFC 3FFF 0005"
	$"1C06 3F04 131C FD00 021C 1304 FB3F 0013"
	$"DB00 0089 E200 011C 06FE 3F00 13F5 0000"
	$"19FC 3F00 17F8 00FC 3F00 0FF8 0002 1C0F"
	$"02FB 3F00 08F6 0001 1304 FC3F 0608 001C"
	$"063F 0C1C F800 031C 0C3F 3FFD 3F00 13E2"
	$"0000 15FB 3F00 13F2 0000 13FE 3F01 061C"
	$"F500 000A FD3F 0008 FB00 0117 08FA 3F00"
	$"17F3 0005 1902 3F3F 0219 F800 FE00 0011"
	$"FC3F FB00 021C 0F02 FB3F FF00 0308 3F0C"
	$"1CF9 0001 1C0A FC3F 0102 1CDC 0000 7FE2"
	$"0000 0CFE 3F00 0EF3 0000 0FFD 3F00 17F8"
	$"00FC 3F00 0FF9 0001 1A02 F93F 0008 F800"
	$"011C 06FA 3F04 0800 0C3F 13F4 0001 0C3F"
	$"FD3F 0102 1AE3 0000 08FC 3F01 021C F300"
	$"0519 023F 3F02 1AF4 0001 1C02 FE3F 0008"
	$"FC00 000E F83F 0017 F400 011C 06FE 3F00"
	$"15F7 00FD 0000 08FD 3FFB 0000 06F9 3F03"
	$"000F 3F0C F500 0006 FC3F 000C DC00 007C"
	$"E300 000F FE3F 0102 1CF3 0001 1C02 FE3F"
	$"0017 F800 FC3F 000F F900 011A 02F9 3F00"
	$"08F8 0001 1A02 FA3F 0302 0A3F 0EF2 0000"
	$"0AFC 3F00 08E4 0000 1AFB 3F00 11F3 0001"
	$"1C02 FE3F 000F F200 000F FE3F 0008 FC00"
	$"000E F83F 0017 F400 0008 FE3F 0008 F600"
	$"FD00 0017 FD3F FB00 010C 08FA 3F03 113F"
	$"041C F500 0019 FB3F 001C DD00 0075 E400"
	$"0017 FD3F 0013 F100 000F FE3F 001A F800"
	$"FC3F 000F F600 011A 06FC 3F00 08F5 0000"
	$"13FA 3F00 08F1 0000 1C00 02FC 3F00 15E5"
	$"0000 0CFC 3F00 06F2 0000 08FE 3F00 04F1"
	$"0004 1C02 3F3F 0CF9 0000 11FB 3F00 17F5"
	$"0000 0FFD 3F00 1AF6 00FC 0003 083F 3F04"
	$"F900 011C 06FA 3F00 13F3 0000 0AFC 3F00"
	$"13DD 0000 70E4 0000 04FE 3F01 021C F100"
	$"031C 023F 3FF7 00FC 3F00 0FF5 0000 15FC"
	$"3F00 08F4 0000 0AFB 3F00 17F0 0000 13FC"
	$"3F00 08E6 0000 1AFB 3F00 17F3 0000 13FD"
	$"3F00 0FF0 0003 0F3F 3F0F F800 0006 FC3F"
	$"0017 F600 001A FD3F 0008 F500 FC00 0317"
	$"3F3F 08F8 0000 15FB 3F00 04F2 0000 13FC"
	$"3F00 0ADD 0000 6CE5 0000 13FD 3F00 0EEF"
	$"0002 0F3F 06F7 00FC 3F00 0FF4 00FC 3F00"
	$"08F4 0000 0FFC 3F00 08EF 0001 0004 FC3F"
	$"0019 E700 000C FC3F 000E F200 0004 FD3F"
	$"001C F000 031C 023F 15F8 0000 0FFC 3F00"
	$"17F6 0000 0CFD 3F00 15F5 00FB 0002 083F"
	$"0EF8 0000 17FB 3F00 0EF2 0000 1CFC 3F00"
	$"04DD 0000 68E5 0000 04FD 3F00 19EF 0002"
	$"1C0C 15F7 00FC 3F00 0FF4 00FC 3F00 08F4"
	$"0000 0FFC 3F00 11EF 0001 0011 FC3F 000C"
	$"E800 001A FC3F 0006 F200 0013 FD3F 000A"
	$"EE00 0115 0AF7 0000 0FFC 3F00 17F7 0000"
	$"1AFD 3F00 02F4 00FB 0002 190A 1AF8 0000"
	$"17FB 3F00 19F1 0000 06FC 3FDD 0000 58E6"
	$"0000 13FD 3F00 02E1 00FC 3F00 0FF4 00FC"
	$"3F00 08F4 0000 0FFC 3F00 17EF 0001 001C"
	$"FC3F 0002 E800 000C FD3F 0102 1AF2 0000"
	$"04FD 3F00 11E2 0000 0FFC 3F00 17F7 0000"
	$"0CFD 3F00 0AF4 00EF 0000 17FB 3FF0 0000"
	$"0AFC 3F00 17DE 0000 59E6 0000 08FD 3F00"
	$"0AE1 00FC 3F00 0FF4 00FC 3F00 08F4 0000"
	$"0FFC 3FEE 00FF 0000 08FC 3F00 19EA 0000"
	$"1AFC 3F00 15F2 0000 17FC 3F00 19E2 0000"
	$"0FFC 3F00 17F8 0001 1C02 FD3F 0011 F400"
	$"EF00 0017 FC3F 0008 F000 000F FC3F 0017"
	$"DE00 0058 E700 001C FC3F 0011 E100 FC3F"
	$"000F F400 FC3F 0008 F400 000F FC3F EE00"
	$"FF00 000F FC3F 0011 EA00 0008 FD3F 0011"
	$"F100 000E FD3F 0002 E100 000F FC3F 0017"
	$"F800 0015 FC3F 0019 F400 EF00 0017 FC3F"
	$"000C F000 000F FC3F 0017 DE00 0056 E700"
	$"0013 FC3F 0017 E100 FC3F 000F F400 FC3F"
	$"0008 F400 000F FC3F EE00 FF00 0017 FC3F"
	$"000A EB00 0017 FD3F 000C F000 0004 FD3F"
	$"0008 E100 000F FC3F 0017 F800 000C FC3F"
	$"F300 EF00 0017 FC3F 000F F000 0017 FC3F"
	$"0017 DE00 0056 E700 000C FC3F 001A E100"
	$"FC3F 000F F400 FC3F 0008 F400 000F FC3F"
	$"EE00 FE00 FC3F 0006 EB00 0004 FE3F 000A"
	$"F000 001A FC3F 000C E100 000F FC3F 0017"
	$"F800 0004 FD3F 0004 F300 EF00 0017 FC3F"
	$"000F F000 0017 FC3F 0017 DE00 0053 E700"
	$"0008 FC3F E000 FC3F 000F F400 FC3F 0008"
	$"F400 000F FC3F EE00 FE00 0004 FC3F EC00"
	$"000F FE3F 0106 1CF0 0000 17FC 3F00 0FE1"
	$"0000 0FFC 3F00 17F8 00FC 3F00 08F3 00EF"
	$"0000 17FC 3F00 17F0 0000 17FC 3F00 17DE"
	$"0000 55E7 00FC 3F00 02E0 00FC 3F00 0FF4"
	$"00FC 3F00 08F4 0000 0FFC 3FEE 00FE 0000"
	$"08FC 3FED 0005 1A02 3F3F 041C EF00 000F"
	$"FC3F 0011 E100 000F FC3F 0017 F900 0017"
	$"FC3F 000A F300 EF00 0017 FC3F 0017 F000"
	$"0017 FC3F 0017 DE00 0056 E700 FC3F 0008"
	$"E000 FC3F 000F F400 FC3F 0008 F400 000F"
	$"FC3F EE00 FE00 0008 FC3F 0017 EE00 040A"
	$"3F3F 0219 EE00 000F FC3F 0017 E100 000F"
	$"FC3F 0017 F900 0017 FC3F 000F F300 EF00"
	$"0017 FC3F 0017 F000 0017 FC3F 0017 DE00"
	$"0058 E800 0017 FC3F 0008 E000 FC3F 000F"
	$"F400 FC3F 0008 F400 000F FC3F EE00 FE00"
	$"000F FC3F 0017 EF00 0015 FE3F 0019 ED00"
	$"0008 FC3F 0017 E100 000F FC3F 0017 F900"
	$"000F FC3F 000F F300 EF00 0017 FC3F 0017"
	$"F000 0017 FC3F 0017 DE00 0058 E800 0017"
	$"FC3F 0008 E000 FC3F 000F F400 FC3F 0008"
	$"F400 000F FC3F EE00 FE00 000F FC3F 0017"
	$"F000 041C 043F 3F13 EC00 0008 FC3F 0017"
	$"E100 000F FC3F 0017 F900 000F FC3F 000F"
	$"F300 EF00 0017 FC3F 0017 F000 0017 FC3F"
	$"0017 DE00 0057 E800 0017 FC3F 0008 E000"
	$"FC3F 000F F400 FC3F 0008 F400 000F FC3F"
	$"EE00 FE00 000F FC3F 0017 F000 030E 3F3F"
	$"0FEB 0000 08FC 3F00 17E1 0000 0FFC 3F00"
	$"17F9 0000 0FFC 3F00 0FF3 00EF 0000 17FC"
	$"3F00 17F0 0000 17FC 3F00 17DE 0000 57E8"
	$"0000 17FC 3F00 08E0 00FC 3F00 0FF4 00FC"
	$"3F00 08F4 0000 0FFC 3FEE 00FE 0000 0FFC"
	$"3F00 17F1 0003 173F 3F0C EA00 0008 FC3F"
	$"0017 E100 000F FC3F 0017 F900 000F FC3F"
	$"000F F300 EF00 0017 FC3F 0017 F000 0017"
	$"FC3F 0017 DE00 0058 E800 0017 FC3F 0008"
	$"E000 FC3F 000F F400 FC3F 0008 F400 000F"
	$"FC3F EE00 FE00 000F FC3F 0017 F200 041C"
	$"043F 061C EA00 0008 FC3F 0017 E100 000F"
	$"FC3F 0017 F900 000F FC3F 000F F300 EF00"
	$"0017 FC3F 0017 F000 0017 FC3F 0017 DE00"
	$"0057 E800 0019 FC3F 0004 E000 FC3F 000F"
	$"F400 FC3F 0008 F400 000F FC3F EE00 FE00"
	$"000F FC3F 001A F200 030E 3F02 1AE9 0000"
	$"0AFC 3F00 13E1 0000 0FFC 3F00 17F9 0000"
	$"11FC 3F00 0CF3 00EF 0000 17FC 3F00 17F0"
	$"0000 17FC 3F00 17DE 0000 51E7 00FB 3FE0"
	$"00FC 3F00 0FF4 00FC 3F00 08F4 0000 0FFC"
	$"3FEE 00FE 0000 0EFC 3FF2 0003 173F 3F17"
	$"E800 000F FC3F 000F E100 000F FC3F 0017"
	$"F900 0017 FC3F 0008 F300 EF00 0017 FC3F"
	$"0017 F000 0017 FC3F 0017 DE00 0055 E700"
	$"FB3F 001C E100 FC3F 000F F400 FC3F 0008"
	$"F400 000F FC3F EE00 FE00 0008 FD3F 0002"
	$"F300 031C 043F 0FE7 0000 0FFC 3F00 0EE1"
	$"0000 0FFC 3F00 17F9 0000 17FC 3F00 06F3"
	$"00EF 0000 17FC 3F00 17F0 0000 17FC 3F00"
	$"17DE 0000 52E7 0000 08FC 3F00 17E1 00FC"
	$"3F00 0FF4 00FC 3F00 08F4 0000 0FFC 3FEE"
	$"00FE 0000 08FD 3F00 08F3 0002 0A3F 08E6"
	$"0000 17FC 3F00 08E1 0000 0FFC 3F00 17F8"
	$"00FB 3FF3 00EF 0000 17FC 3F00 17F0 0000"
	$"17FC 3F00 17DE 0000 5BE7 0000 0CFC 3F00"
	$"11E1 00FC 3F00 0FF4 00FC 3F00 08F4 0000"
	$"0FFC 3FEE 00FE 00FC 3F00 0EF4 0003 153F"
	$"021C F000 021C 021A FA00 001A FC3F 0002"
	$"E100 000F FC3F 0017 F800 0004 FC3F 0019"
	$"F400 EF00 0017 FC3F 0017 F000 0017 FC3F"
	$"0017 DE00 005D E700 0013 FC3F 000C E100"
	$"FC3F 000F F400 FC3F 0008 F400 000F FC3F"
	$"EE00 FF00 001A FC3F 0013 F500 031C 023F"
	$"17EF 0002 133F 17F9 0000 04FC 3F00 1AE2"
	$"0000 0FFC 3F00 17F8 0000 0CFC 3F00 13F4"
	$"00EF 0000 17FC 3F00 17F0 0000 17FC 3F00"
	$"17DE 0000 5CE7 0000 1AFC 3F00 04E1 00FC"
	$"3F00 0FF4 00FC 3F00 08F4 0000 0FFC 3FEE"
	$"00FF 0000 15FC 3F00 1AF5 0002 0A3F 0EEE"
	$"0002 0C3F 17F9 0000 0CFC 3F00 13E2 0000"
	$"0FFC 3F00 17F8 0000 13FC 3F00 0CF4 00EF"
	$"0000 17FC 3F00 17F0 0000 17FC 3F00 17DE"
	$"0000 5DE6 0000 06FC 3F00 19E2 00FC 3F00"
	$"0FF4 00FC 3F00 08F4 0000 0FFC 3FEE 00FF"
	$"0000 0EFD 3F00 06F5 0003 153F 041C EE00"
	$"0206 3F17 F900 0015 FC3F 000A E200 000F"
	$"FC3F 0017 F800 001C FC3F 0002 F400 EF00"
	$"0017 FC3F 0017 F000 0017 FC3F 0017 DE00"
	$"005E E600 0011 FC3F 000E E200 FC3F 000F"
	$"F400 FC3F 0008 F400 000F FC3F EE00 FF00"
	$"0004 FD3F 0011 F600 031C 023F 15EE 0003"
	$"1A3F 3F17 F800 0002 FC3F 001C E300 000F"
	$"FC3F 0017 F700 000A FC3F 0015 F500 EF00"
	$"0017 FC3F 0017 F000 0017 FC3F 0017 DE00"
	$"005D E600 001A FC3F 0102 1CE3 00FC 3F00"
	$"0FF4 00FC 3F00 08F4 0000 0FFC 3FEE 0001"
	$"0019 FC3F 001C F600 020E 3F08 ED00 030F"
	$"3F3F 17F8 0000 0CFC 3F00 0FE3 0000 0FFC"
	$"3F00 17F7 0000 13FC 3F00 08F5 00EF 0000"
	$"17FC 3F00 17F0 0000 17FC 3F00 17DE 0000"
	$"5FE5 0000 0CFC 3F00 0FE3 00FC 3F00 0FF4"
	$"00FC 3F00 08F4 0000 0FFC 3FEE 0001 000C"
	$"FD3F 000C F600 0317 3F3F 19EE 0000 11FE"
	$"3F00 17F8 0000 1AFC 3F01 021C E400 000F"
	$"FC3F 0017 F600 0004 FC3F 0017 F600 EF00"
	$"0017 FC3F 0017 F000 0017 FC3F 0017 DE00"
	$"005E E500 001A FC3F 0102 1AE4 00FC 3F00"
	$"0FF4 00FC 3F00 08F4 0000 0FFC 3FEE 0001"
	$"1C02 FD3F 001A F700 041C 043F 3F06 EF08"
	$"FC3F 0017 F700 000C FC3F 000E E400 000F"
	$"FC3F 0017 F600 0013 FC3F 0006 F600 EF00"
	$"0017 FC3F 0017 F000 0017 FC3F 0017 DE00"
	$"0067 E400 000F FC3F 0008 EF00 011C 15F8"
	$"00FC 3F00 0FF4 00FC 3F00 08F4 0000 0FFC"
	$"3F00 17EF 0000 0EFD 3F00 0FF6 0000 0FE6"
	$"3F00 17F7 0001 1C02 FC3F 0017 EF00 0115"
	$"1CF9 0000 0FFC 3F00 17F5 0000 08FC 3F00"
	$"0FF7 00F9 00FF 19F9 0000 17FC 3F00 17F0"
	$"0000 17FC 3F00 17DE 0000 6CE3 0000 06FC"
	$"3F00 0FF1 0002 1904 04F8 00FC 3F00 0FF4"
	$"00FC 3F00 08F4 0000 0FFC 3F00 0EF0 0000"
	$"19FD 3F00 06F6 0000 1AE5 3F00 17F6 0000"
	$"15FC 3F01 021C F100 020E 3F13 F900 000F"
	$"FC3F 0017 F500 011A 02FC 3F00 17F8 00FA"
	$"0002 1302 0CF9 0000 17FC 3F00 17F0 0000"
	$"17FC 3F00 17DE 0000 77E3 0001 1902 FC3F"
	$"0011 F300 0319 023F 0FF9 0000 19FC 3F00"
	$"0CF5 0000 19FC 3F00 02F4 0000 0FFC 3F01"
	$"021C F200 011C 06FE 3F01 0219 F600 0008"
	$"E53F 0017 F500 000C FC3F 0106 1AF3 0003"
	$"0C3F 021C F900 000A FC3F 0011 F400 0013"
	$"FC3F 0102 17F9 00FB 0003 133F 3F17 F900"
	$"0013 FC3F 0013 F000 0013 FC3F 0013 DE00"
	$"007B E200 0015 FB3F 010C 1CF6 0003 0F3F"
	$"3F06 F800 000A FC3F 0102 1AF6 0000 0EFB"
	$"3F00 13F5 0000 0FFB 3F01 061C F400 021C"
	$"063F FE3F 0015 F600 0017 E43F 0017 F400"
	$"0006 FC3F 0102 17F6 0004 1906 3F3F 15F9"
	$"0001 1A02 FC3F 0106 1CF4 0000 0EFB 3F00"
	$"11FA 00FD 0004 1C0A 3F3F 0EF8 0000 06FC"
	$"3F00 06F0 0000 08FC 3F00 06DE 0000 8EE1"
	$"0000 13FB 3F02 020F 1CFB 0006 1C13 043F"
	$"3F06 1CFA 0001 150A FA3F 0204 131C FA00"
	$"0117 0AF9 3F01 0F19 F700 000F FA3F 0106"
	$"1CF6 0003 1C06 3F3F FF3F 0013 F500 000A"
	$"E43F 0017 F400 011C 06FB 3F01 0817 FA00"
	$"0119 0CFE 3F00 13FA 0002 1A13 02FA 3F02"
	$"0615 1CF5 0000 0CFB 3F01 0413 FC00 FF00"
	$"051A 0F02 3F3F 0CF9 0001 1508 FA3F 0108"
	$"15F4 0001 1508 FA3F 0108 15E0 0000 89E0"
	$"0001 1902 FA3F 0506 0C0F 0F0E 08FD 3F00"
	$"0EFB 0001 1906 F43F 0504 1900 001C 08F3"
	$"3F00 0EF9 0000 0FFC 3F04 0C3F 3F02 13F9"
	$"0002 1C11 02FE 3F01 0219 F500 001C E33F"
	$"0019 F200 000C FA3F 0102 08FE 0F01 0A04"
	$"FE3F 0104 19FB 0001 1302 F43F 0104 19F6"
	$"0000 13F9 3F03 080E 0F0F 010C 06FE 3F01"
	$"0213 FB00 011C 0AF4 3F01 081C FA00 011C"
	$"0AF4 3F01 081C E300 00A0 DF00 011C 0CF3"
	$"3F01 0417 FA00 0011 FE3F 0204 080C FD0F"
	$"010A 08FE 3F03 1100 0019 FD3F 0108 0CFD"
	$"0F05 0A08 063F 3F02 F900 000F FC3F 0700"
	$"1706 3F3F 020C 11FE 1702 110C 02FD 3F00"
	$"0C00 1CF4 0001 1902 E53F 0002 F000 0115"
	$"04F3 3F01 0E1C FA00 000A FE3F 0104 08FD"
	$"0F06 0E08 0802 3F3F 11F5 0001 1908 F73F"
	$"FD3F 0108 1AFA 0000 19FE 3F02 0408 0CFD"
	$"0FFF 08FE 3F00 19FA 0000 19FD 3F01 080E"
	$"FD0F FF08 FE3F 0019 E300 0040 DD00 0119"
	$"0CF7 3F01 0613 CC00 000F FC3F FE00 0115"
	$"0AF7 3F03 020C 1A00 DB00 0619 1717 130F"
	$"0F1A EF00 021C 1304 F83F 0202 0C1A D900"
	$"0115 08F9 3FFF 3F01 0A17 B100 003D DB00"
	$"031C 150F 0AFE 0802 0E11 1ACA 0000 0FFC"
	$"3FFC 0003 1C15 0F0A FE08 020C 0F17 FD00"
	$"BF00 0219 110E FE08 020A 0F15 D400 021A"
	$"130F FD08 000F 0113 1CAF 0000 0C9A 0000"
	$"0FFC 3FEE 0081 00AD 0000 0C9A 0000 0FFC"
	$"3FEE 0081 00AD 0000 0C9A 0000 0FFC 3FEE"
	$"0081 00AD 0000 0C9A 0000 0FFC 3FEE 0081"
	$"00AD 0000 0C9A 0000 0FFC 3FEE 0081 00AD"
	$"0000 0C9A 0000 0FFC 3FEE 0081 00AD 0000"
	$"0C9A 0000 0FFC 3FEE 0081 00AD 0000 109A"
	$"0000 0FFC 3FEE 00EF 0000 1394 00AD 0000"
	$"20D0 0003 1D1A 1917 FD16 0317 191A 1DD7"
	$"0000 0FFC 3FEE 00F1 0002 1908 3F94 00AD"
	$"0000 1DD2 0002 1D1A 17F7 1602 171A 1DD9"
	$"0000 0FFC 3FEE 00F0 0001 153F 9400 AD00"
	$"001B D300 011C 19F3 1601 191C DA00 000F"
	$"FC3F EE00 F000 0117 3F94 00AD 0000 1BD4"
	$"0001 1C18 F116 0118 1CDB 0000 0FFC 3FEE"
	$"00F0 0001 173F 9400 AD00 002C D500 011C"
	$"18FC 1607 1719 1A1C 1C1A 1917 FC16 0118"
	$"1CDC 0000 0FFC 3FEE 00F0 0001 173F 9400"
	$"F900 021B 161C B800 0042 D600 011D 19FD"
	$"1602 171E 1CFE 0005 1D1C 1B1B 1E17 FD16"
	$"0119 1DDD 0000 0FFC 3FEE 00F0 0012 173F"
	$"0017 0A08 0F1C 001A 1317 1317 0019 1317"
	$"11A5 00FA 0003 1B17 1617 B800 0045 D600"
	$"001A FD16 0418 1B1D 0000 FE1D FF1C 031B"
	$"1C1A 18FD 1600 1ADD 0000 0CFC 3F00 1AEF"
	$"00F0 000C 173F 130E 1713 0406 1C00 173F"
	$"0EFE 0002 1704 1CA5 00FA 0000 17FE 1600"
	$"1CB9 0000 47D7 0001 1D17 FE16 0317 1B00"
	$"00FB 1DFF 1C03 1B1C 1A17 FE16 0117 1DDF"
	$"0001 1C04 FC3F 000F EF00 F000 0217 3F11"
	$"FE00 061A 020C 0000 040A FE00 0115 13A4"
	$"00FB 0001 1B17 FE16 0017 B900 0044 D700"
	$"001A FD16 021E 0000 FE1D FD1C FF1D FF1C"
	$"011B 19FD 1600 1AE0 0001 1A08 FA3F 010C"
	$"1AF1 00F0 0001 173F FC00 050C 0200 000E"
	$"02FE 0001 0E1C A400 FB00 0018 FC16 001C"
	$"BA00 0047 D700 0019 FE16 0517 1C00 1D1C"
	$"1CFC 1B00 1CFE 1D02 1B1A 17FE 1600 19E3"
	$"0002 1C0C 06F6 3F02 0408 11F4 00F0 0001"
	$"173F FC00 0913 3F19 0019 3F17 0000 0EA3"
	$"00FC 0000 1BFB 1600 18BA 0000 48D7 0000"
	$"17FE 1606 191D 1D1C 1B1E 18FD 1606 181A"
	$"1D00 1C1B 18FE 1600 17E3 0000 11FC 3FFB"
	$"08FC 3F00 19F5 00F0 0001 173F FC00 0917"
	$"3F17 0000 040E 0019 15A3 00FC 0000 17FA"
	$"1600 1CBB 0000 3FD7 00FD 1604 1A00 1D1B"
	$"19F9 1604 1E00 1D1B 1EFD 16E2 00FF 1700"
	$"1AF7 0002 1A17 19F4 00F0 0001 173F FC00"
	$"0817 3F17 0000 0E06 000F A200 FD00 001B"
	$"F916 0018 BB00 0038 D700 FD16 111C 001D"
	$"1E16 1619 1B1D 1D1B 1916 161B 1D1C 1EFD"
	$"16C5 00F0 0001 173F FC00 0113 3FFE 0003"
	$"173F 1A0F A200 FD00 0017 F816 001C BC00"
	$"003C D800 001D FD16 051D 001C 1816 19FB"
	$"0005 1916 1900 1C1A FD16 001D C600 F000"
	$"0117 3FFC 0001 0C0A FD00 0202 0A15 A200"
	$"FE00 001B FC16 0036 FD16 0018 BC00 003E"
	$"D800 001B FD16 051D 001C 1616 1BFB 0005"
	$"1B16 1700 1C1A FD16 001B C600 F000 0217"
	$"3F19 FE00 0219 0219 FD00 010C 04A1 00FE"
	$"0000 17FD 1601 3831 FC16 001C BD00 0040"
	$"D800 001E FE16 0617 0000 1C16 161D FB00"
	$"061D 1617 001D 1B17 FE16 001E C600 F000"
	$"0713 0C06 1317 1106 19FC 0001 150E A100"
	$"FF00 001A FC16 022C 2F25 FD16 0018 BD00"
	$"0045 F000 031C 1A19 17E9 1606 191D 001C"
	$"1616 1DFB 0006 1D16 1700 1D1B 17E9 1603"
	$"1719 1A1C DE00 F000 051A 0000 1A17 19FA"
	$"0001 1715 A100 FF00 0017 FD16 0330 2F2F"
	$"31FC 1600 1CBE 0000 39F2 0002 1D1E 17E6"
	$"1606 1A1D 1D1C 1616 1BFB 0006 1B16 1700"
	$"1D1B 18E6 1602 171E 1DE0 00E3 0000 11A0"
	$"0001 001A FC16 002C FE2F 0025 FD16 0018"
	$"BE00 0038 F300 011C 19E5 1607 171C 001D"
	$"1C18 1619 FB00 0619 1619 001D 1B1E E416"
	$"0119 1CE1 00E3 0000 0FA0 0001 0017 FD16"
	$"0030 FD2F 0031 FC16 001C BF00 003D F400"
	$"011C 19E4 1615 1E1D 0000 1D1E 1616 191B"
	$"1D1D 1B19 1616 3C00 1D1B 1A19 E416 0119"
	$"1CE2 00E5 0002 190E 13A0 0000 1AFC 1600"
	$"2CFC 2F00 25FD 1600 18BF 0000 50F5 0001"
	$"1D19 FE16 0236 351E F129 0224 3536 FD16"
	$"0718 1C1D 0000 1D1D 1EF9 1607 1E00 001D"
	$"1B1A 1A18 FD16 0236 3524 F129 021E 3536"
	$"FE16 0119 1DE3 00E5 0002 083F 1AA0 00FC"
	$"1600 30FB 2F00 31FC 1600 1BC0 0000 54F5"
	$"0000 1EFE 1601 171E F229 0324 1E35 17FC"
	$"160A 181B 1D1D 001D 1D00 001B 19FD 1701"
	$"191B FE00 051D 1C1B 1B1A 3DFC 1603 1735"
	$"1E24 F229 011E 17FE 1600 1EE3 00E5 00FF"
	$"1AA0 0000 1EFC 1600 2CFA 2F00 25FD 1600"
	$"18C0 0000 47F6 0005 1C17 1616 361E F629"
	$"0219 1817 F716 0718 1B1D 1D00 001D 1DF4"
	$"00FF 1D04 1C1B 1B1E 17F8 1602 1718 19F5"
	$"2905 1E36 1616 171C E400 8200 0016 FD16"
	$"0028 F92F 0031 FC16 001B C100 0044 F600"
	$"001A FE16 0035 F729 011E 38F5 1603 181B"
	$"1D1D FD00 FE1D F600 FE1D 041C 1B1A 1E18"
	$"F616 0138 1EF6 2900 35FE 1600 1AE4 0083"
	$"0001 1E16 FD16 002C F82F 0038 FD16 0018"
	$"C100 0043 F600 0019 FE16 001E F829 011E"
	$"17F6 1604 171E 1C1D 1DFC 00EF 1D05 1C1B"
	$"1B1A 1917 F716 0117 1EF7 2900 1EFE 1600"
	$"19E4 0084 0002 1D16 16FE 1600 28F7 2F00"
	$"31FC 1600 1BC2 0000 41F6 0000 17FE 16F8"
	$"2901 1E17 F816 0417 191A 1C1D FD00 EA1D"
	$"FF1C FF1B 031E 1918 17F9 1601 171E F729"
	$"FE16 0017 E400 8400 021E 1616 FE16 002C"
	$"F62F 0038 FD16 0018 C200 003D F600 FD16"
	$"F829 0038 FC16 0219 1A1C FC1D 023E 0000"
	$"E51D FF1C FD1B FF1A 0119 18FC 1600 38F7"
	$"29FD 16E4 0085 0000 1DFE 16FF 1600 28F5"
	$"2F00 31FC 1600 1BC3 0000 3BF6 00FD 16F9"
	$"2900 19FD 1601 181B F800 E21D FF1C FD1B"
	$"FE1A 0119 17FD 1600 19F8 29FD 16F1 0001"
	$"171A F600 8500 0019 FE16 FF16 F32F 0038"
	$"FD16 0017 C300 003E F600 FD16 F929 0018"
	$"FD16 001B F700 E11D FE1C 011B 3AFE 1B01"
	$"1A19 FD16 0018 F829 FD16 F300 031A 0C3F"
	$"17F6 0086 0000 1DFD 1601 1628 F32F 0031"
	$"FC16 001B C400 005E F600 FD16 F929 0017"
	$"FE16 0019 F900 DD1D FB1C FF1B 011A 18FE"
	$"1600 17F9 2904 0A02 3F12 16FC 000C 0C3F"
	$"040A 0000 060E 0000 1C3F 17F6 00FB 0002"
	$"1502 1AFB 0001 0F0C FE08 0206 0A19 D400"
	$"0215 021A CD00 0019 FD16 0016 F12F 0038"
	$"FD16 0017 C400 0058 F600 FD16 F929 FD16"
	$"001A FB00 D61D FF1C 021B 1A19 FD16 F829"
	$"030F 3F09 16FC 0002 023F 17FE 0001 020A"
	$"FE00 013F 17F6 00FB 0002 113F 19FA 0007"
	$"173F 0E00 000E 0219 D500 0211 3F19 CE00"
	$"001D FC16 002B F12F 002C FC16 001B C500"
	$"0059 F600 FD16 F929 FD16 001C FC00 D51D"
	$"FF1C 021B 1A1A FD16 F829 0310 0202 16FD"
	$"0003 1504 3F17 FE00 011A 1CFE 0001 3F17"
	$"F600 FA00 0019 F900 0217 3F0F FE00 0104"
	$"0AD4 0000 19FD 0000 17D2 0000 19FD 1600"
	$"1FEF 2F00 30FD 1600 17C5 0000 53F6 00FD"
	$"16F9 29FD 1600 1AFD 00E2 1DF8 1C00 3BFE"
	$"1DFE 1CFF 1B00 1EFD 16F8 2903 0B0F 3F12"
	$"FD00 030C 0E3F 17F9 0001 3F17 F600 F100"
	$"0217 3F0F FE00 010E 3FD0 0001 1908 D300"
	$"001D FC16 002B EF2F 002C FC16 001B C600"
	$"00A1 F600 FD16 F929 0017 FE16 0019 FE00"
	$"FD1D FD1C FE1D DC1C FF1B 0018 FE16 0017"
	$"F829 030B 1601 0BFD 0003 0C0F 3F17 FE00"
	$"011C 15FE 0005 3F17 1A0C 080F FC00 011C"
	$"1102 0F0C 0FFD 0000 13F9 0002 173F 0FFE"
	$"0001 0F3F FE00 0413 0F0E 0C1C FE00 0D0C"
	$"1715 0402 1500 1919 1C0E 080C 19FD 0004"
	$"1C11 0F0C 0FFE 0017 1C06 000F 0204 1A00"
	$"1300 0019 0204 0F0F 1A00 001A 0F0F 0A15"
	$"DD00 0019 FD16 0136 2FEE 2F00 30FD 1600"
	$"17C6 0000 A2F6 00FD 16F9 2900 18FD 1602"
	$"1B00 00FE 1DD5 1CFF 1B00 1EFD 1600 18F8"
	$"2903 0B16 0704 FE00 0915 130F 3F17 0000"
	$"1906 0FFE 0006 3F11 0C17 1302 0EFE 0002"
	$"1504 1907 001A 3F1A 0000 0F3F F900 0217"
	$"3F0F FE00 3E0C 0400 1906 1300 0004 1300"
	$"000E 3F11 110F 3F11 1502 110C 1515 0602"
	$"1900 0015 0419 001A 3F1A 001C 083F 1315"
	$"0A3F 190F 3F00 001A 0C06 1717 1C00 0F06"
	$"1C00 1304 DE00 001D FC16 012B 2FEE 2F00"
	$"2CFC 1600 1BC7 0000 A8F6 00FD 16F9 2900"
	$"19FD 1604 181B 3E1D 1DFB 1C00 1BDC 1CFF"
	$"1B01 1E18 FD16 0019 F829 100B 160E 3F1A"
	$"0000 0E1C 0F3F 1700 0019 040F FE00 013F"
	$"0AFE 0007 133F 1A00 1A02 1300 FF00 053F"
	$"1700 1C0F 3FF9 000A 173F 0F00 001C 020F"
	$"0006 0CFE 0001 080F FE00 083F 0C00 001C"
	$"0015 3F0A FE00 061C 0604 001A 0213 FE00"
	$"0C3F 1700 0017 3F13 0000 1C1C 0F3F FE00"
	$"010F 08FE 0006 153F 1A00 0017 3FDE 0000"
	$"18FD 1602 362F 2FED 2F00 30FD 1600 17C7"
	$"0000 A4F6 00FD 16F8 2900 38FC 1601 191A"
	$"FB1B FE1A EC1B FE1A 003C F61B 011E 18FC"
	$"1600 38F7 290B 0B16 153F 1100 000E 0015"
	$"3F17 FE00 0108 0FFE 0001 3F11 FE00 071C"
	$"3F17 001A 1100 00FF 0005 3F17 0000 173F"
	$"F900 0A17 3F04 1515 0606 1C00 0F1C FE00"
	$"0108 0FFE 0001 3F13 FC00 013F 17FD 0004"
	$"133F 191A 11FD 0006 3F17 0000 173F 1AFD"
	$"0001 173F FE00 010F 08FE 0001 1715 FE00"
	$"0117 3FDF 0000 1CFC 1602 2E2F 2FED 2F00"
	$"2CFC 1600 1AC8 0000 83F6 00FD 16F8 2901"
	$"1E17 C716 0017 F729 0B0B 1616 0706 0019"
	$"1300 173F 13FE 0001 080F FE00 013F 17FD"
	$"0001 3F17 FC00 0700 173F 1700 0017 3FF9"
	$"0006 173F 0F19 0F11 1CFB 0002 1A04 0FFE"
	$"0001 3F17 FC00 013F 17FD 0002 1A3F 11FC"
	$"0006 173F 1700 0017 3FFC 0001 173F FE00"
	$"010F 08F9 0001 0F3F DF00 0018 FD16 0036"
	$"FE2F EC2F 0030 FD16 0017 C800 0087 F600"
	$"FD16 F729 011E 17C7 1600 17F8 290B 0B16"
	$"160E 3F1A 0E1C 0017 3F0F FE00 0108 0FFE"
	$"0001 3F17 FD00 013F 17FD 0000 1C07 131A"
	$"3F17 0000 173F F900 0217 3F0F F800 0313"
	$"1908 0FFE 0001 3F17 FC00 083F 151A 1A1B"
	$"0000 3F0F FE00 081C 131A 3F17 0000 173F"
	$"FC00 0117 3FFE 0001 0F08 FB00 0319 1515"
	$"3FE0 0000 1CFC 1600 2EFE 2FEC 2F00 2CFC"
	$"1600 1AC9 0000 8EF6 00FD 16F6 2901 1E38"
	$"CC16 0018 FD16 0017 F929 0B0B 1616 153F"
	$"110E 0000 173F 0FFE 0001 080F FE00 013F"
	$"17FD 0001 3F17 FE00 FF13 FF00 053F 1700"
	$"0017 3FF9 0002 173F 0FFA 0005 190F 1C00"
	$"080F FE00 013F 17FC 0001 3F12 FE16 FF00"
	$"0D3F 0F00 0013 1300 003F 1700 0017 3FFC"
	$"0001 173F FE00 010F 08FC 0004 0F17 0017"
	$"3FE0 0000 18FD 1600 25FD 2FEB 2F00 30FD"
	$"1600 17C9 0000 96F6 00FD 16F4 2902 1918"
	$"17D2 1604 1719 1B00 1BFD 1600 17FA 2900"
	$"0BFE 1607 0A02 1300 0017 3F0F FE00 0108"
	$"0FFE 0001 3F17 FD00 063F 1700 0013 0C00"
	$"FF00 053F 1700 0017 3FF9 0002 173F 0FFB"
	$"0001 1906 FE00 0108 0FFE 0001 3F17 FC00"
	$"013F 12FE 16FF 1A04 3F17 0013 0CFE 0005"
	$"3F17 0000 173F FC00 0117 3FFE 0001 0F08"
	$"FD00 050C 1300 0017 3FE1 0000 1CFC 1600"
	$"2EFD 2FEB 2F00 2CFC 1600 1ACA 0000 95F6"
	$"00FD 16F0 2900 24FC 1600 1CD5 0000 1BFD"
	$"1600 17FB 2900 07FE 1607 133F 1C00 0017"
	$"3F0F FE00 0108 0FFE 0001 3F17 FD00 063F"
	$"1700 1A3F 1700 0700 1A3F 1700 0017 3FF9"
	$"0002 173F 0FFB 0001 040F FE00 0104 0FFE"
	$"0001 3F17 FC00 013F 12FE 160F 1713 0200"
	$"1A3F 1700 001A 3F17 0000 173F FC00 0117"
	$"3FFE 0001 0F08 FE00 0113 3FFE 0001 133F"
	$"E100 0018 FD16 0025 FC2F EA2F 0030 FD16"
	$"0017 CA00 0098 F600 FD16 F129 0024 FC16"
	$"001C D300 001B FD16 0017 FD29 011E 04FE"
	$"1601 1A0A FE00 0215 3F0E FE00 0108 0FFE"
	$"0001 3F17 FD00 063F 1700 173F 1100 071C"
	$"0A3F 1317 0017 3FF9 0002 153F 0EFB 000B"
	$"3F0A 0000 0E02 0C1A 1A00 3F17 FC00 013F"
	$"0FFE 160F 1403 1300 173F 1100 1C0A 3F13"
	$"1700 173F FC00 0117 3FFE 000D 1304 001C"
	$"170F 3F19 0019 063F 1A17 E400 001B FC16"
	$"002E FC2F EA2F 002C FC16 001A CB00 009E"
	$"F600 FD16 F229 0024 FC16 001C D100 001B"
	$"FD16 0E17 2929 1103 0204 0E16 0019 0000"
	$"0A06 FE08 1319 0E06 0813 1A0A 080A 1700"
	$"1A0A 080A 171C 063F 0809 0E1C 0A3F 1317"
	$"0808 0C1A FC00 FC08 0019 FD00 0C0C 3F06"
	$"0C19 113F 0C1A 0C08 0A0F FD00 2C3F 070B"
	$"100D 050E 0000 1C06 3F08 0E1C 0A3F 1317"
	$"0A08 0C13 0000 1708 080C 1A00 1C02 0608"
	$"1C19 0202 0A0F 0002 0219 E400 0018 FD16"
	$"0025 FB2F E92F 0030 FD16 0017 CB00 0060"
	$"F600 FD16 F329 0024 FC16 001C CF00 001B"
	$"FD16 0017 FE29 FD16 E600 0117 1AFE 0000"
	$"1AEB 00FF 19FE 0000 1AF7 0007 3F12 1410"
	$"1016 161B FE00 0117 1AFE 0000 1AF2 0001"
	$"1C17 FE00 061C 171C 0000 1C1C E400 001B"
	$"FC16 0031 FB2F E92F 002C FC16 001A CC00"
	$"0035 F600 FD16 F429 0024 FC16 001C CD00"
	$"001B FD16 0217 2929 FD16 E400 D700 013F"
	$"12FB 16C0 0000 17FD 1600 25FA 2FE8 2F00"
	$"30FD 1600 17CC 0000 38F6 00FD 16F5 2900"
	$"24FC 1600 1CCC 0000 17FE 1603 171E 2929"
	$"FD16 E400 D700 013F 12FB 1600 1EC2 0000"
	$"1BFC 1600 31FA 2FE8 2F00 2CFC 1600 1ACD"
	$"0000 36F6 00FD 16F6 2900 24FC 1600 1CCC"
	$"0000 17FE 1601 361E FE29 FD16 E400 D700"
	$"013F 12FA 1600 1CC3 0000 17FD 1600 38F9"
	$"2FE7 2F00 28FC 16CD 0000 51F6 00FD 16F7"
	$"2900 24FC 1600 1CCC 0000 17FD 1600 1EFD"
	$"29FD 16EE 0000 1DFD 1C00 1DFD 00FC 1C03"
	$"1D00 001D FA1C 0000 EA1C 041A 103F 0912"
	$"FA16 C400 001B FC16 0031 F92F F92F FF31"
	$"002C F22F 002C FC16 001A CE00 0057 F600"
	$"FD16 F829 0024 FC16 001C CC00 0017 FD16"
	$"001E FC29 FD16 EE00 001A FD16 001A FE00"
	$"001C FC16 031A 0000 1AFA 1600 1CEA 1604"
	$"1412 1614 12FA 1600 18C5 0000 17FD 1600"
	$"38F8 2FFC 2F01 2E25 FC16 0130 2CF4 2F00"
	$"28FC 16CE 0000 4FF6 00FD 16F9 2900 24FC"
	$"1600 1CCC 0000 17FD 1600 1EFB 29FD 16EE"
	$"0000 1AFD 1600 1AFE 0000 1CFC 1603 1A00"
	$"001A FA16 001C DD16 0019 C700 001A FC16"
	$"002C F82F FD2F 0030 F816 002C F52F 002C"
	$"FC16 001A CF00 004B F600 FD16 FA29 0024"
	$"FC16 001C CC00 0017 FD16 001E FA29 FD16"
	$"EE00 001A FD16 001A FE00 001C FC16 031A"
	$"0000 1AFA 1600 1CDC 1600 1BC8 0000 17FD"
	$"1600 30F7 2FFE 2F00 2BF6 16F4 2F00 28FC"
	$"16CF 0000 4DF6 00FD 16FB 2900 24FC 1600"
	$"1CCC 0000 17FD 1600 1EF9 29FD 16EE 0000"
	$"1AFD 1600 1AFE 0000 1CFC 1603 1A00 001A"
	$"FA16 001C DB16 001B CA00 001A FC16 002C"
	$"F72F FE2F F516 002B F52F 002C FC16 001E"
	$"D000 004D F600 FD16 FC29 0024 FC16 001C"
	$"CC00 0017 FD16 001E F829 FD16 EE00 001A"
	$"FD16 001A FE00 001C FC16 031A 0000 1AFA"
	$"1600 1CDA 1600 1BCB 0000 17FD 1600 30F6"
	$"2FFF 2F00 2EF5 1600 36F4 2F00 28FC 16D0"
	$"0000 4DF6 00FD 16FD 2900 24FC 1600 1CCC"
	$"0000 17FD 1600 1EF7 29FD 16EE 0000 1AFD"
	$"1600 1AFE 0000 1CFC 1603 1A00 001A FA16"
	$"001C D916 001B CD00 001A FC16 002C F62F"
	$"FF2F 002B F416 F42F 002C FC16 001E D100"
	$"0054 F600 FD16 FE29 0024 FC16 001C CC00"
	$"0017 FD16 001E FA29 0327 3529 29FD 16EE"
	$"0000 1AFE 1605 120B 0F0E 0F0E 080B 090C"
	$"1416 1A00 001A FA16 001C D816 001E CE00"
	$"FC16 0030 F52F FF2F 0030 F416 0031 F42F"
	$"0028 FC16 D100 005B F600 FD16 FF29 0124"
	$"17FD 1600 1CCC 0000 17FD 1600 1EFB 2905"
	$"3523 3F27 2929 FD16 EE00 051A 1612 070B"
	$"19FE 0000 1CFF 1606 140C 0C1A 0000 1AFA"
	$"1600 1CD7 1600 19D0 0000 1EFC 1600 2CF5"
	$"2FFF 2F00 25F4 1600 31F4 2F00 2CFC 1600"
	$"1ED2 0000 5EF6 00FD 1602 2924 17FD 1600"
	$"18CC 0000 17FD 1600 1EFD 2908 0522 2929"
	$"1E3F 2729 29FD 16F6 0002 1502 1AFC 0005"
	$"1A0C 0714 161A FE00 001C FD16 0412 0B00"
	$"001A FA16 001C D616 0117 1DD2 00FC 1600"
	$"28F4 2FFF 2F00 2BF4 1600 2CF3 2F00 28FC"
	$"16D2 0000 5CF6 00FD 16FE 2900 17FD 1600"
	$"19CE 0000 17FD 1600 1EFC 2901 0139 FE29"
	$"033F 2729 29FD 16F6 0002 113F 19FC 0001"
	$"0A08 FE16 001A FE00 001C FC16 0315 1100"
	$"1AFA 1600 1CD4 1600 1AD4 0000 1EFC 1600"
	$"2CF4 2FFF 2F00 2BF4 16F1 2FFC 1600 1ED3"
	$"0000 5BF6 00FD 16FD 29FC 1600 19D0 0000"
	$"17FD 1600 1EFB 2901 351E FE29 033F 2729"
	$"29FD 16F5 0000 19FC 0001 1306 FD16 001A"
	$"FE00 001C FC16 031A 111C 1AFA 1600 1CD3"
	$"1601 181D D700 001D FC16 0028 F32F FF2F"
	$"002B F416 F12F 0028 FC16 001D D400 0057"
	$"F600 FD16 FC29 0017 FD16 0019 D200 0017"
	$"FD16 001E F529 033F 2729 29FD 16F0 0002"
	$"1A02 17FD 16FF 1A02 0E0F 0D08 1413 0B12"
	$"161A 1A13 1AFA 1600 1CD1 1600 19D8 0000"
	$"1EFC 1600 2CF3 2FFF 2F00 31F5 1600 25F0"
	$"2FFC 1600 1ED4 0000 BEF6 00FD 16FB 2900"
	$"17FD 1600 19D6 000B 1C15 1609 050B 151E"
	$"2523 0711 FD29 011E 20FE 2907 3F27 350A"
	$"050B 1616 FE00 041C 110F 0C0F FD00 0013"
	$"FD00 FF0C 001A FD16 0410 0219 001A 1608"
	$"0C3F 1416 1A00 0F1A 1616 140F 1409 050E"
	$"1416 1208 050D FD16 0414 0B0B 050B FD16"
	$"0410 0B0B 070F FE16 0413 0B0B 070F FD16"
	$"050D 160F 0705 0CFC 1605 140C 0A0B 111C"
	$"F800 0413 0F0E 0C19 FE00 001A FD0E 001A"
	$"FD00 0B1C 151C 0E08 0F1C 0019 0B05 0DFE"
	$"1600 28F2 2FFF 2F00 2CF5 1600 30F0 2F00"
	$"28FC 1600 1DD5 0000 C7F6 00FD 16FA 2900"
	$"17FD 1600 19D8 0012 1905 0A08 0F0F 010A"
	$"2523 2737 3F11 2929 2505 0EFE 2914 3F37"
	$"2327 0E01 0916 0000 1504 1900 1A3F 1A00"
	$"000F 3FFD 0002 0215 1AFE 1605 0D3F 1700"
	$"001C 1F0D 0104 1616 1A00 0F1A 1612 0409"
	$"080F 0F01 0812 0810 0C3F 0D16 1614 0214"
	$"1612 01FE 1618 0908 1616 0D3F 1216 0B04"
	$"1416 0D02 1616 1407 0509 0C10 0B3F 08FE"
	$"1607 1202 1016 160E 051B FB00 221C 0813"
	$"0000 0C02 0000 1904 1900 0019 0419 0000"
	$"1906 0E0C 1515 020C 190C 130C 3F0D 1616"
	$"F12F FE2F F516 002B EF2F FC16 001E D500"
	$"00C8 F600 FD16 F929 0017 FD16 0019 D900"
	$"0819 0302 1416 1621 3F22 FE29 0622 0529"
	$"2925 030E FE29 0B3F 3929 2916 0E3F 1300"
	$"1A02 13FE 0005 3F17 001C 0F3F FE00 0817"
	$"3F00 1A16 1613 010A FE00 001C 1210 3F09"
	$"1616 1A00 0F1A 1612 0202 1416 1612 3F09"
	$"FE16 0509 0416 160C 05FE 1604 0916 160F"
	$"02FD 160E 0810 0F3F 1316 1610 3F16 1613"
	$"073F 12FE 1606 0D3F 0D16 1602 0DFD 1601"
	$"040F FB00 010E 0CFD 0004 0400 1C04 13FD"
	$"0013 1102 1C00 1904 041C 0000 133F 0E1D"
	$"1616 0904 1628 F12F FE2F 0025 F616 002E"
	$"EF2F 002B FC16 001D D600 00C0 F600 FD16"
	$"F829 0017 FD16 0019 DA00 0817 0508 1616"
	$"1E1E 3F37 FE29 0120 3FFE 2901 070E FE29"
	$"0A3F 3729 2916 153F 1000 1A11 FD00 053F"
	$"1700 0017 3FFE 0008 0F06 001A 1616 083F"
	$"15FE 0000 1C0C 0C3F 1016 161A 000E 1A16"
	$"1605 08FE 1602 1A3F 0CFE 1606 0F3F 1616"
	$"0B3F 12FC 1601 020B FD16 0314 1610 0FFE"
	$"1601 103F FE16 010B 05FC 1604 0207 160D"
	$"3FFD 1602 1203 07FC 0002 1A3F 17FD 0003"
	$"1C00 133F FC00 061C 3F11 0000 080C FE00"
	$"081C 3F11 1916 160F 3F16 F02F FE2F 0030"
	$"F616 0031 EE2F FC16 001E D600 00B5 F600"
	$"FD16 F729 0017 FD16 0019 DC00 0917 1605"
	$"0B16 1E29 293F 27FE 2901 273F FE29 0107"
	$"0EFE 2907 3F27 2929 1616 3F10 FB00 0617"
	$"3F17 0000 173F FE00 080F 0800 1A16 1602"
	$"021A FE00 001C 0108 01FE 16FF 1A05 131A"
	$"1616 050B FE16 021C 3F10 FE16 0D10 3F16"
	$"1613 013F 0914 1616 133F 10F6 1601 0B3F"
	$"FE16 010B 05FC 1604 0801 1608 01FE 0B03"
	$"0D0F 0F15 FC00 0113 3FFA 0001 0A08 FB00"
	$"0506 0A00 0008 0FFD 0000 3FFD 1602 103F"
	$"2BF0 2FFE 2F00 2BF6 16ED 2F00 2BFC 1600"
	$"1DD7 0000 B2F6 00FD 16F6 2900 17FD 1600"
	$"19DE 0005 1716 1605 0B1E FE29 013F 27FE"
	$"2901 273F FE29 0107 0EFE 2907 3F27 2929"
	$"1616 3F10 FD00 081C 131A 3F17 0000 173F"
	$"FE00 080F 0800 1A16 163F 081A FE00 001A"
	$"0101 07FE 1607 1A11 1C1A 1616 050B FE16"
	$"021C 3F10 FE16 0110 3FFE 1608 1205 3F01"
	$"0F16 103F 10F8 1603 120F 0F3F FE16 010B"
	$"05FC 1606 0B3F 1605 0516 19F7 0001 0F3F"
	$"FA00 FF08 FB00 FF08 FF00 0108 0FFD 0001"
	$"3F13 FE16 0110 3FEF 2FFE 2F00 31F6 16EC"
	$"2FFC 1600 1ED7 0000 B5F6 00FD 16F5 2900"
	$"17FD 1600 19E0 0000 17FE 1601 050D FD29"
	$"013F 27FE 2901 273F FE29 0107 0EFE 2907"
	$"3F27 2929 1616 3F10 FE00 FF13 FF00 053F"
	$"1700 0017 3FFE 0008 1506 001A 1616 010B"
	$"1AFE 0000 0E01 3F0D FE16 0717 1100 1A16"
	$"1605 0BFE 1602 1C3F 10FE 1601 103F FC16"
	$"0610 043F 1310 3F10 F916 040B 1016 103F"
	$"FE16 010B 05FC 1605 0B3F 1605 041D F600"
	$"010F 3FFA 00FF 08FB 00FF 08FF 0001 080F"
	$"FD00 013F 10FE 1601 103F EF2F FE2F 002C"
	$"F716 0025 EC2F 002B FC16 001D D800 00B8"
	$"F600 FD16 F429 0017 FD16 0019 E200 0017"
	$"FD16 0106 0EFD 2901 3F27 FE29 0127 3FFE"
	$"2901 070E FE29 0B3F 2729 2916 163F 1000"
	$"0013 0CFE 0005 3F17 0000 173F FE00 0C1A"
	$"3F1C 1A16 1608 081A 0000 1909 0C3F 1016"
	$"1614 0A00 001A 1616 050B FE16 021C 3F10"
	$"FE16 0410 3F16 1613 FE16 0514 010B 143F"
	$"0BFA 1605 080D 1616 103F FE16 010B 05FC"
	$"1605 0805 160B 3F1C F600 0215 3F17 FB00"
	$"010E 02FB 0005 040E 0000 080F FD00 013F"
	$"10FE 1601 213F EF2F FD2F F716 0030 EB2F"
	$"001F FD16 0019 D800 00C3 F600 FD16 F329"
	$"0017 FD16 0019 E400 0017 FD16 021E 070E"
	$"FD29 013F 27FE 2901 273F FE29 0107 0EFE"
	$"2914 3F27 2929 1616 3F10 001A 3F17 0000"
	$"1A3F 1700 0017 3FFD 000B 0813 1A16 1613"
	$"0214 0013 0E1C 0C04 0C16 0F09 1900 001A"
	$"1616 050B FE16 021C 3F10 FE16 0410 3F16"
	$"1607 FD16 0405 0C16 0702 FB16 010D 3FFE"
	$"1601 0D3F FE16 010B 05FC 1605 020D 1D17"
	$"3F0F FC00 031A 0000 19FE 0001 020C FB00"
	$"0219 3F17 FD00 061A 3F19 0000 080F FE00"
	$"021D 3F10 FE16 0133 3FEF 2FFD 2F00 36F8"
	$"1600 2BEB 2F00 2BFC 1600 1DD9 0000 CDF6"
	$"00FD 16F2 2900 17FD 1600 19E6 0000 17FD"
	$"1603 1E29 070E FD29 013F 27FE 2901 273F"
	$"FE29 0107 0EFE 2914 3F27 2929 1616 3F10"
	$"0017 3F11 001C 0A3F 1317 0017 3FFD 0002"
	$"1704 1AFE 1605 140F 0F19 001C 0C14 0C0B"
	$"1216 1A00 001A 1616 050B FE16 021C 3F10"
	$"FE16 1F10 3F16 1605 1016 1614 0113 1612"
	$"0108 1416 1610 100B 3F12 1612 043F 1310"
	$"160B 02FD 1607 0C04 1C00 000C 3F11 FE00"
	$"0A11 0F00 193F 1100 0013 3F11 FE00 0411"
	$"1C00 0C08 FD00 FF0C FE00 0108 0FFE 0007"
	$"183F 1016 1636 323F EF2F FD2F 0025 F816"
	$"0031 EA2F 0036 FD16 0019 D900 00D0 F600"
	$"FD16 F129 0017 FD16 0019 E800 0017 FD16"
	$"2E1E 2922 0707 1129 3523 0739 2729 2707"
	$"0723 3522 0507 1135 3907 3927 2913 0705"
	$"0717 1C06 3F08 0E1C 0A3F 1317 0808 0C1A"
	$"FE00 010F 0AFD 1600 1AFE 0000 1CFC 161A"
	$"1A00 001A 1609 0505 0D16 130B 0507 1016"
	$"1005 0508 130B 040F 0F07 0DFE 1618 1202"
	$"0105 020B 1612 0101 070B 1601 0112 160B"
	$"0208 0F10 0906 1CFD 000A 0E3F 0408 0611"
	$"0000 193F 11FE 0005 1302 0408 0415 FE00"
	$"050E 0815 170C 0FFE 000F 0E08 0813 0019"
	$"0805 0710 162A 2D2D 2634 F12F FD2F 0028"
	$"F816 002C EA2F 002B FC16 001D DA00 0086"
	$"F600 FD16 F029 0017 FD16 0019 EA00 0017"
	$"FD16 001E E529 FD16 FE00 0117 1AFE 0000"
	$"1AF7 0005 0A08 1416 161A FE00 001C FD16"
	$"0414 0F00 001A FA16 001C F716 0214 1010"
	$"FA16 0212 1014 FE16 0E14 1014 1616 1414"
	$"1616 0B05 1612 1018 FA00 021C 1719 FC00"
	$"0019 FB00 FF17 FB00 021C 1717 F700 0018"
	$"FD16 0036 EC2F FD2F 002B F816 E82F 0036"
	$"FD16 0019 DA00 0057 F600 FD16 EF29 0017"
	$"FD16 0019 EC00 0017 FD16 001E E429 FD16"
	$"EE00 051A 0F04 0F16 1AFE 0000 1CFF 1606"
	$"140D 0919 0000 1AFA 1600 1CDE 1604 0B05"
	$"1616 1BD6 0000 1CFC 1600 2EEC 2FFD 2F00"
	$"31F9 1600 36E8 2F00 2BFC 1600 1DDB 0000"
	$"56F6 00FD 16EE 2900 17FD 1600 19EE 0000"
	$"17FD 1600 1EE3 29FD 16EE 0009 1A16 140D"
	$"080B 1317 1716 080B 090B 1316 1A00 001A"
	$"FA16 001C DE16 030B 0516 1BD5 0000 18FD"
	$"1600 25EB 2FFD 2F00 2CF9 1600 25E7 2F00"
	$"36FD 1600 19DB 0000 4FF6 00FD 16ED 2900"
	$"17FD 1600 19F0 0000 17FD 1600 1EE2 29FD"
	$"16EE 0000 1AFD 1604 1A19 1717 16FC 1603"
	$"1A00 001A FA16 001C DE16 020B 051E D500"
	$"001C FC16 002E EB2F FC2F F916 0028 E72F"
	$"002B FC16 001D DC00 0053 F600 FD16 EC29"
	$"0017 FD16 0019 F200 0017 FD16 001E E129"
	$"FD16 EE00 001A FD16 001A FE00 001C FC16"
	$"031A 0000 1AFA 1600 1CDF 1604 1204 0115"
	$"1CD6 0000 18FD 1600 25EA 2FFC 2F00 25FA"
	$"1600 2BE6 2F00 36FD 1600 19DC 0000 53F6"
	$"00FD 16EB 2900 17FD 1600 19F4 0000 17FD"
	$"1600 1EE0 29FD 16EE 0000 1AFD 1600 1AFE"
	$"0000 1CFC 1603 1A00 001A FA16 001C DF16"
	$"0412 1600 191C D700 001B FC16 0031 EA2F"
	$"FC2F 0025 FA16 0031 E62F 002B FC16 001D"
	$"DD00 0051 F600 FD16 EA29 0017 FD16 0019"
	$"F600 0017 FD16 001E DF29 FD16 EE00 001D"
	$"FD1C 001D FD00 FC1C 031D 0000 1DFA 1C00"
	$"00E7 1C00 18F9 1600 1DD4 0000 18FD 1600"
	$"25E9 2FFC 2F00 2BFA 1600 2CE5 2F00 36FD"
	$"1600 19DD 0000 3CF6 00FD 16E9 2900 17FD"
	$"1600 19F8 0000 17FD 1600 1EDE 29FD 16E4"
	$"00D6 0000 18FA 1600 1BD4 0000 1BFC 1600"
	$"31E9 2FFC 2F00 2BFA 16E4 2F00 2EFC 1600"
	$"1DDE 0000 3EF6 00FD 16E8 2900 17FD 1600"
	$"19FA 0000 17FD 1600 1EDD 29FD 16E4 00D6"
	$"0000 18FB 1600 19D3 0000 17FD 1600 25E8"
	$"2FFC 2F00 31FB 1600 25E3 2F00 36FD 1600"
	$"19DE 0000 3CF6 00FD 16E7 2900 17FD 1600"
	$"19FC 0000 17FD 1600 1EDC 29FD 16E4 00D6"
	$"0000 18FB 1600 1DD4 0000 1BFC 1600 31E8"
	$"2FFB 2FFB 1600 25E3 2F00 2EFC 1600 1DDF"
	$"0000 3CF6 00FD 16E6 2900 17FD 1600 19FE"
	$"0000 17FD 1600 1EDB 29FD 16E4 00D6 0000"
	$"18FC 1600 1AD3 0000 17FD 1600 38E7 2FFB"
	$"2FFB 1600 2BE2 2F00 36FD 1600 19DF 0000"
	$"3CF6 00FD 16E5 2900 17FD 1602 191D 17FD"
	$"1600 1EDA 29FD 16E4 00D6 0000 18FD 1600"
	$"17D3 0000 1AFC 1600 31E7 2FFB 2F00 25FC"
	$"1600 2BE2 2F00 2EFC 1600 1DE0 0000 36F6"
	$"00FD 16E4 2900 17F8 1600 1ED9 29FD 16E4"
	$"00D6 0000 18FD 1600 1BD3 0000 17FD 1600"
	$"30E6 2FFB 2F00 30FC 1600 31E1 2F00 36FD"
	$"1600 18E0 0000 32F6 00FD 16E3 2900 17FA"
	$"1600 1ED8 29FD 16E4 00D6 0000 18FD 16D3"
	$"0000 1AFC 1600 2CE6 2FFB 2F00 2BFC 16E0"
	$"2F00 2EFC 1600 1DE1 0000 34F6 00FD 16E2"
	$"2900 17FC 1600 1ED7 29FD 16E4 00D6 0000"
	$"18FE 1600 1AD3 0000 17FD 1600 30E5 2FFB"
	$"2F00 2EFC 16DF 2F00 36FD 1600 18E1 0000"
	$"36F6 00FD 16E1 2904 1716 1617 1ED6 29FD"
	$"16E4 00D6 0000 18FE 1600 1DD4 0000 1AFC"
	$"1600 2CE5 2FFB 2F00 31FD 1600 25DF 2F00"
	$"2EFC 1600 1CE2 0000 2FF6 00FD 16E0 29FF"
	$"1700 1ED5 29FD 16E4 00D6 0003 1B1A 1A1B"
	$"D300 FC16 0030 E42F FA2F FD16 0030 DE2F"
	$"0025 FD16 0018 E200 0028 F600 FD16 DF29"
	$"001E D429 FD16 E400 A500 001A FC16 002C"
	$"E42F FA2F FD16 002B DE2F 002E FC16 001C"
	$"E300 0024 F600 FD16 B129 FD16 E400 A500"
	$"FC16 0030 E32F FA2F 0025 FE16 002E DD2F"
	$"0025 FD16 0018 E300 0026 F600 FD16 B129"
	$"FD16 E400 A600 001E FC16 002C E32F FA2F"
	$"0030 FE16 0031 DD2F 002E FC16 001C E400"
	$"0022 F600 FD16 B129 FD16 E400 A600 FC16"
	$"0028 E22F FA2F 002E FE16 DB2F 0025 FD16"
	$"0018 E400 0024 F600 FD16 B129 FD16 E400"
	$"A700 001E FC16 002C E22F F92F 0228 252E"
	$"DB2F 002E FC16 001C E500 001E F600 FD16"
	$"B129 FD16 E400 A800 001D FC16 0028 E12F"
	$"CF2F 0025 FD16 0018 E500 001E F600 FD16"
	$"B129 FD16 E400 A800 001E FC16 002C E12F"
	$"CF2F 0031 FC16 001C E600 001E F600 FD16"
	$"B129 FD16 E400 A900 001D FC16 0028 E02F"
	$"CE2F 0025 FD16 0018 E600 0025 F600 FD16"
	$"B129 FD16 E400 A900 0019 FC16 DF2F FB2F"
	$"052C 2B25 2530 2EDA 2F00 31FC 1600 1CE7"
	$"0000 26F6 00FD 16B1 29FD 16E4 00AA 0000"
	$"1DFC 1600 28DF 2FFC 2F00 2EFB 1600 25DA"
	$"2F00 25FD 1600 18E7 0000 24F6 00FD 16B1"
	$"29FD 16E4 00AA 0000 19FC 16DE 2FFD 2F00"
	$"2EF9 1600 25DB 2F00 31FC 1600 1CE8 0000"
	$"26F6 00FD 16B1 29FD 16E4 00AB 0000 1DFC"
	$"1600 2BDE 2FFE 2F00 2CF7 1600 30DB 2F00"
	$"25FD 1600 18E8 0000 24F6 00FD 16B1 29FD"
	$"16E4 00AB 0000 19FD 1600 1FDD 2FFE 2F00"
	$"28F6 16DB 2F00 31FC 1600 1BE9 0000 26F6"
	$"00FD 16B1 29FD 16E4 00AC 0000 1DFC 1600"
	$"2BDD 2FFE 2F00 36F6 1600 2EDB 2F00 25FD"
	$"1600 18E9 0000 24F6 00FD 16B1 29FD 16E4"
	$"00AC 0000 19FD 1600 36DC 2FFE 2FF5 1600"
	$"2BDB 2F00 31FC 1600 1BEA 0000 24F6 00FD"
	$"16B1 29FD 16E4 00AD 0000 1DFC 1600 2BDC"
	$"2FFE 2FF5 1600 2BDA 2F00 38FD 1600 18EA"
	$"0000 26F6 00FD 16B1 29FD 16E4 00AD 0000"
	$"18FD 1600 36DB 2FFE 2F00 36F6 1600 2EDA"
	$"2F00 31FC 1600 1BEB 0000 26F6 00FD 16B1"
	$"29FD 16E4 00AE 0000 1CFC 1600 2EDB 2FFE"
	$"2F00 30F6 1600 2CD9 2F00 38FD 1600 18EB"
	$"0000 26F6 00FD 16B1 29FD 16E4 00AE 0000"
	$"18FD 1600 36DA 2FFE 2F00 2CF7 1600 30D8"
	$"2F00 31FC 1600 1BEC 0000 26F6 00FD 16B1"
	$"29FD 16E4 00AF 0000 1CFC 1600 2EDA 2FFD"
	$"2F00 2BF9 1600 36D6 2F00 38FD 1600 17EC"
	$"0000 27F6 00FD 16B1 29FD 16E4 00AF 0000"
	$"18FD 1600 25D9 2FFC 2F00 2BFB 1601 252C"
	$"D62F 0031 FC16 001B ED00 0027 F600 FD16"
	$"B129 FD16 E400 B000 001C FC16 002E D92F"
	$"FB2F 052C 2B25 2530 2ED3 2F00 38FD 1600"
	$"17ED 0000 28F6 00FD 16B1 29FD 16E8 0003"
	$"171A 0000 E700 011C 15CC 0000 18FD 1600"
	$"25D8 2FC7 2F00 2CFC 1600 1BEE 0000 2BF6"
	$"00FD 16B1 29FD 16EA 0005 1A0C 3F17 0000"
	$"E800 0215 0408 CD00 001B FC16 0031 D82F"
	$"C62F 0030 FD16 0017 EE00 0029 F600 FD16"
	$"B129 FD16 E900 041C 3F17 0000 E700 010E"
	$"08CD 0000 18FD 1600 25D7 2FC6 2F00 2CFC"
	$"1600 1BEF 0000 28F6 00FD 16B1 29FD 16E8"
	$"0003 3F17 0000 E700 010F 08CE 0000 1BFC"
	$"1600 31D7 2FC5 2F00 30FD 1600 17EF 0000"
	$"31F6 00FD 16B1 29FD 16EE 0000 17FC 0003"
	$"3F17 0000 E700 010F 08EC 0001 1C19 E500"
	$"0017 FD16 0025 D62F C52F 002C FC16 001B"
	$"F000 0032 F600 FD16 B129 FD16 EF00 011C"
	$"04FC 0003 3F17 0000 E700 010F 08EC 0001"
	$"0A17 E600 001B FC16 0031 D62F C42F 0030"
	$"FD16 0017 F000 0063 F600 FD16 B129 FD16"
	$"F000 0B1C 063F 0F0F 1700 003F 171A 0C01"
	$"080F FC00 041C 110F 0C0F FD00 0513 0017"
	$"0A08 15FD 000F 0F08 0000 1715 1715 1900"
	$"0011 0F0A 0C1C FB00 040C 3F0C 0F13 FE00"
	$"0517 0C0F 0C11 1CF1 0000 17FD 1600 38D5"
	$"2FC4 2F00 2CFC 1600 1BF1 0000 6CF6 0000"
	$"17FE 16B1 29FE 1600 17F0 000B 1C11 3F17"
	$"171A 0000 3F11 0C17 0213 020E FE00 1015"
	$"0419 001A 3F1A 0000 0F3F 130F 170F 3F15"
	$"FE00 010F 08FE 000A 0E06 1A00 0008 1700"
	$"1C06 17FB 000E 173F 1117 1900 0013 061C"
	$"0000 1306 1CF3 0000 1AFC 1600 31D5 2FC3"
	$"2F00 30FD 1600 17F1 0000 6BF6 0000 19FE"
	$"1600 1EB3 2900 1EFE 1600 19EF 0001 173F"
	$"FC00 033F 0A00 0007 0013 3F1A 001A 0213"
	$"FE00 063F 1700 1C0F 3F11 FE00 010C 04FE"
	$"000A 0F08 0000 1306 1C00 0019 3FFE 0001"
	$"1517 FA00 013F 17FE 0002 193F 1AFD 0001"
	$"0A08 F300 0017 FD16 0030 D42F C32F 002C"
	$"FC16 001A F200 0066 F600 001A FE16 0035"
	$"B329 0035 FE16 001A EF00 0117 3FFC 0003"
	$"3F11 0000 0600 1C3F 1700 1A11 FD00 063F"
	$"1700 0017 3F19 FE00 0115 3FFE 0005 0F08"
	$"0019 0C1C FE00 0217 3F11 F600 013F 17FE"
	$"0001 0C08 FC00 0215 3F19 F500 001A FC16"
	$"002C D42F C22F 0030 FD16 0017 F200 0065"
	$"F600 051C 1716 1636 1EB5 2905 1E36 1616"
	$"171C EF00 0117 3FFC 0003 3F17 0000 FF00"
	$"013F 17FB 0006 173F 1700 0017 3FFD 0001"
	$"173F FE00 040F 0819 021C FC00 0306 3F08"
	$"1AF8 0001 3F17 FE00 0102 0FFC 0002 1C3F"
	$"11F5 0000 17FD 1600 30D3 2FC2 2F00 2CFC"
	$"1600 1AF3 0000 67F5 0000 1EFE 1601 171E"
	$"B729 011E 17FE 1600 1EEE 0001 173F FC00"
	$"033F 1700 00FF 0001 3F17 FD00 081C 131A"
	$"3F17 0000 173F FD00 0117 3FFE 0004 0F04"
	$"0C02 0AFC 0004 1C0C 3F3F 0FF9 0001 3F17"
	$"FE00 013F 0FFB 0001 3F0F F600 001A FC16"
	$"002C D32F C12F 0030 FD16 0017 F300 006A"
	$"F500 011D 19FE 1602 3635 1EBB 2902 1E35"
	$"36FE 1601 191D EE00 0117 3FFC 0003 3F17"
	$"0000 FF00 013F 17FE 00FF 13FF 0005 3F17"
	$"0000 173F FD00 0117 3FFE 0005 0F06 0011"
	$"3F15 FB00 031A 0A3F 13FA 0001 3F17 FE00"
	$"013F 0FFB 0001 3F0F F600 FC16 0030 D22F"
	$"C12F 002C FC16 001A F400 0062 F400 011C"
	$"19B1 1601 191C ED00 0117 3FFC 0003 3F17"
	$"0000 FF00 053F 1700 0013 0CFE 0005 3F17"
	$"0000 173F FD00 0117 3FFE 0009 0F08 0000"
	$"0802 1C00 001A FD00 FF08 FA00 013F 17FE"
	$"0001 060A FC00 021A 3F15 F700 001A FC16"
	$"0030 D228 C028 0036 FD16 0017 F400 005C"
	$"F300 011C 19B3 1601 191C EC00 0117 3FFC"
	$"0003 3F17 0000 FF00 0E3F 1700 1A3F 1700"
	$"001A 3F17 0000 173F FD00 0117 3FFE 000A"
	$"0F08 0000 1A02 0E00 000F 19FE 0001 0F0A"
	$"FA00 013F 17FE 0002 1102 1CFD 0001 1302"
	$"F600 0017 CC16 BA16 001A F500 0061 F200"
	$"021D 1E17 B716 0217 1E1D EB00 0A1A 3F1A"
	$"0015 0000 3F17 0000 FF00 0E3F 1700 173F"
	$"1100 1C0A 3F13 1700 173F FD00 0117 3FFE"
	$"0001 0F08 FE00 050F 3F17 000F 0FFE 0001"
	$"0813 FA00 0704 1300 1500 1C06 0FFE 0002"
	$"1C06 13F7 0000 1ACB 16BA 1600 17F5 0000"
	$"61F0 0003 1C1A 1917 BD16 0317 191A 1CE8"
	$"0009 0804 0619 1A0A 080A 1700 281A 0A08"
	$"0A17 1C06 3F08 0E1C 0A3F 1317 0A08 0C1A"
	$"0017 0808 0C1A 1308 080E 001C 0A3F 0215"
	$"1504 1317 0C0E F900 0C0F 0206 1300 001C"
	$"080C 1715 0A15 F600 0017 CB16 B916 0017"
	$"F600 002B 8A00 0117 1CFA 00FA 0001 171A"
	$"FE00 001A E900 FF17 001C F700 0119 1AFC"
	$"0002 1A17 19F4 00CA 16B9 1600 1BF6 0000"
	$"0A81 00B8 00CA 1BB8 1BF6 0000 0681 0081"
	$"00AD 0000 0681 0081 00AD 0000 0681 0081"
	$"00AD 0000 0681 0081 00AD 0000 0681 0081"
	$"00AD 0000 0681 0081 00AD 0000 0681 0081"
	$"00AD 0000 0681 0081 00AD 0000 0681 0081"
	$"00AD 0000 108F 0001 171A F500 E200 011C"
	$"15A2 00AD 0000 1391 0003 1C0C 3F17 F500"
	$"E300 0215 0408 A200 AD00 0032 A400 030C"
	$"043F 19FB 000C 0C3F 040A 0000 060E 0000"
	$"1C3F 17F5 00F8 0007 0F0A 0804 0808 060F"
	$"F300 010E 08F8 0001 0E06 AD00 AD00 0031"
	$"A300 0215 3F0E FB00 0202 3F17 FE00 0102"
	$"0AFE 0001 3F17 F500 F700 0717 3F0E 0000"
	$"1902 0CF4 0001 0F08 F800 010A 02AD 00AD"
	$"0000 3BA3 0002 1704 04FC 0003 1504 3F17"
	$"FE00 011A 1CFE 0001 3F17 F500 F700 0217"
	$"3F0F FE00 020E 3F1A F500 010F 08F8 0001"
	$"1C1A E900 0017 FC00 0017 CC00 AD00 0034"
	$"A300 030F 153F 19FD 0003 0C0E 3F17 F900"
	$"013F 17F5 00F7 0002 173F 0FFE 0002 173F"
	$"17F5 0001 0F08 DF00 0119 08FD 0001 1C04"
	$"CC00 AD00 0076 A300 030F 0002 0FFD 0003"
	$"0C0F 3F17 FE00 011C 15FE 0007 3F17 0000"
	$"1117 1713 FE00 0217 0E0F 010E 17F9 0002"
	$"173F 0FFE 0002 173F 19FE 0005 170C 0F0C"
	$"111C FE00 060F 0800 1308 0813 FC00 0013"
	$"FE00 061C 151C 0F08 0C1C FC00 1217 0E0F"
	$"0E17 0000 1902 040F 0F1A 1C06 3F0F 0F17"
	$"FE00 0417 0E0F 0E17 D700 AD00 007C A300"
	$"030F 000A 06FE 0009 1513 0F3F 1700 0019"
	$"060F FE00 063F 1700 001C 3F11 FE00 FF0C"
	$"011C 0002 1C06 13FA 0002 173F 0FFE 0001"
	$"0C04 FE00 2013 061C 0000 1306 1C00 000F"
	$"080E 1117 0F02 0C00 001C 0A08 0000 1906"
	$"0E0C 1515 0606 FD00 FF0C 1A1C 001C 0613"
	$"001A 0C06 1717 1C1C 113F 1717 1A00 000C"
	$"0C1C 001C 0613 D800 AD00 0077 A300 100F"
	$"0013 3F1A 0000 0E1C 0F3F 1700 0019 040F"
	$"FE00 053F 1700 1C06 13FE 0001 1304 FE00"
	$"0200 1502 FA00 0C17 3F0F 001A 0F04 1900"
	$"0019 3F1A FD00 060A 0800 000F 3F19 FE00"
	$"1515 3F13 001A 0A08 0000 1904 041C 0000"
	$"1A3F 1300 0013 04FD 0005 1502 0000 0F08"
	$"FD00 0117 3FFD 0001 1304 FD00 0115 02D8"
	$"00AD 0000 75A3 000B 0F00 1C3F 1100 000E"
	$"0015 3F17 FE00 0108 0FFE 0004 3F17 000E"
	$"15FD 0001 040F FE00 031C 0F3F 17FB 0005"
	$"173F 0406 3F0C FD00 010C 08FC 0005 153F"
	$"1900 0F08 FC00 0504 0A00 000F 08FE 0001"
	$"080A FD00 0506 0F00 0004 0FFE 0006 1C0F"
	$"3F17 000F 08FD 0001 173F FD00 0104 0FFE"
	$"0003 1C0F 3F17 D900 AD00 0070 A300 0B0F"
	$"0000 0A06 0019 1300 173F 13FE 0001 080F"
	$"FE00 033F 170C 0EFD 0002 1A3F 0AFE 0FFE"
	$"0F00 1CFB 0006 173F 0F00 0C3F 1AFE 0001"
	$"020F FC00 051C 3F11 000F 08FC 0005 0C02"
	$"0000 0F08 FE00 0108 0FFD 0005 080F 001A"
	$"3F0A FB0F 031C 000F 08FD 0001 173F FE00"
	$"021A 3F0A FB0F 001C D900 AD00 0066 A300"
	$"0B0F 0000 133F 1A0E 1C00 173F 0FFE 0001"
	$"080F FE00 043F 080A 3F19 FE00 0217 3F17"
	$"FE00 F700 0617 3F0F 001C 3F0C FE00 013F"
	$"0FFB 0004 3F0F 000F 08FC 0005 0F3F 0000"
	$"0F08 FE00 0108 0FFD 0005 080F 0017 3F17"
	$"F900 010F 08FD 0001 173F FE00 0217 3F17"
	$"D200 AD00 0066 A300 0B0F 0000 1C3F 110E"
	$"0000 173F 0FFE 0001 080F FE00 043F 151C"
	$"0406 FE00 0217 3F15 FE00 F700 0B17 3F0F"
	$"0000 0C02 1C00 003F 0FFB 0004 3F0F 000F"
	$"08FC 0005 0F3F 0000 0F08 FE00 0108 0FFD"
	$"0005 080F 0017 3F15 F900 010F 08FD 0001"
	$"173F FE00 0217 3F15 D200 AD00 0067 A300"
	$"000F FE00 070A 0213 0000 173F 0FFE 0001"
	$"080F FE00 0A3F 1700 173F 0F00 001C 3F0E"
	$"FE00 F700 0B17 3F0F 0000 173F 1100 0006"
	$"0AFC 0005 1A3F 1500 0F08 FC00 050C 0800"
	$"000F 08FE 0001 080F FD00 0508 0F00 1C3F"
	$"0EF9 0001 0F08 FD00 0117 3FFE 0002 1C3F"
	$"0ED2 00AD 0000 75A3 0000 0AFE 0007 133F"
	$"1C00 0017 3F0F FE00 0108 0FFE 000D 3F17"
	$"0000 0E02 1A00 0008 021C 0000 FF00 FF1C"
	$"FB00 0217 3F0F FE00 0606 0400 0011 021C"
	$"FD00 0513 0200 000F 08FC 0005 0411 0000"
	$"0F08 FE00 0108 0FFD 0006 080F 0000 0802"
	$"1CFD 00FF 1C02 000F 08FD 0001 173F FD00"
	$"0208 021C FD00 FF1C D900 AD00 007F A400"
	$"011C 06FE 0001 1A0A FE00 0215 3F0E FE00"
	$"0108 0FFE 000D 3F17 0000 1C02 0800 0019"
	$"0206 1A00 0300 1A08 1CFB 0002 153F 0EFE"
	$"0006 133F 1700 1C06 0FFE 0007 1C06 1300"
	$"000F 041C FE00 0611 061C 0000 0F08 FE00"
	$"0108 0FFD 0022 080F 0000 1902 061A 0000"
	$"1A08 1C00 1304 001C 1700 1A3F 1A00 1500"
	$"1902 061A 0000 1A08 1CD9 00AD 0000 7FA5"
	$"000B 1304 0406 1300 0019 0000 0A06 FE08"
	$"1419 0E06 0813 1A0C 080A 1700 1502 3F0A"
	$"1C00 1904 3F08 FF08 001A FB00 FE08 0106"
	$"0AFE 000A 0208 1100 1C08 0C17 150A 15FE"
	$"001D 0C0E 0815 170E 081C 0000 1306 080E"
	$"000E 0808 1300 000E 0608 1300 0019 043F"
	$"FE08 121A 0000 1C02 0608 1C00 0008 0406"
	$"1900 0019 043F FE08 001A D800 AD00 0030"
	$"8300 0119 1700 1CEB 0002 1A17 19FC 0005"
	$"1A00 0019 171A EA00 0219 171C FC00 011C"
	$"17FC 0001 171C FC00 0219 171C D600 AD00"
	$"0006 8100 8100 AD00 0006 8100 8100 AD00"
	$"0006 8100 8100 AD00 0006 8100 8100 AD00"
	$"0006 8100 8100 AD00 0006 8100 8100 AD00"
	$"0006 8100 8100 AD00 0006 8100 8100 AD00"
	$"0006 8100 8100 AD00 0006 8100 8100 AD00"
	$"0015 8300 011C 15ED 0003 1C11 0F1A C600"
	$"011C 15D6 00AD 0000 1884 0002 1504 08EE"
	$"0004 1A0A 1502 08C7 0002 1504 08D6 00AD"
	$"0000 2083 0001 0E08 EE00 040A 1500 1911"
	$"F700 0613 0600 001A 3F1C D700 010E 08D6"
	$"00AD 0000 1C83 0001 0F08 EE00 013F 1CF4"
	$"0005 0A11 0000 110A D600 010F 08D6 00AD"
	$"0000 219F 0000 17E6 0001 0F08 EF00 0119"
	$"3FF4 0006 1A3F 1A00 0004 13D6 0001 0F08"
	$"D600 AD00 0022 A000 011C 04E6 0001 0F08"
	$"EF00 0117 3FF4 0006 1108 0000 1902 1CD6"
	$"0001 0F08 D600 AD00 008D B400 061C 1500"
	$"1108 0A15 FC00 0C1A 0E0F 0E13 0000 1C06"
	$"3F0F 0F17 FE00 0417 0E0F 0E17 FE00 0E19"
	$"0A1C 0C3F 0800 001A 0E0E 0F11 0E08 F800"
	$"0413 0C0F 0C13 FE00 051C 0C3F 0F0F 17F7"
	$"0005 0613 0000 0E0C FC00 FE19 080C 0813"
	$"0000 150A 0A17 FD00 041C 110F 0C0F FC00"
	$"0413 0F0E 0C19 FE00 061A 0E0E 0F11 0E08"
	$"FD00 0F1A 0E0F 0E13 001C 1317 1517 0019"
	$"1317 11EA 00AD 0000 93B5 0008 1906 0E0C"
	$"1317 0A3F 13FE 0027 1306 1A00 000C 0C00"
	$"1C11 3F17 171A 0000 0C0C 1C00 1C06 1300"
	$"1904 080F 1506 0200 1904 1700 001A 0408"
	$"F900 FF0C FE00 FF0C FF00 051C 113F 1717"
	$"1AFB 0000 04F6 3F2B 0E00 1502 110C 1711"
	$"3F13 130F 170C 3F1A 0000 1504 1900 1A3F"
	$"1A00 001C 0813 0000 0C02 0000 1904 1700"
	$"001A 0408 FE00 0A13 061A 0000 0C0C 0017"
	$"3F0E FE00 0219 041C EA00 AD00 008E B500"
	$"0319 0404 1CFE 0006 0C3F 1A00 1A3F 1AFE"
	$"0005 1C3F 1900 173F FD00 0113 04FD 000C"
	$"1502 0000 0F3F 1A00 001C 1C04 13FD 0001"
	$"0F08 FA00 0111 04FD 0006 1C04 0F00 0017"
	$"3FF5 0005 0F0C 0000 1502 FC00 0215 3F0A"
	$"FE00 020C 0411 FE00 0506 0E00 1A02 13FE"
	$"0005 3F17 0000 0E0C FD00 0404 001C 0413"
	$"FD00 060F 0800 001A 3F1A FE00 051C 3F19"
	$"0004 0AFE 0001 1513 E900 AD00 0085 B400"
	$"0108 0FFD 0005 1A3F 1100 0C08 FD00 0515"
	$"3F0F 0017 3FFD 0001 040F FE00 061C 0F3F"
	$"1700 0F04 FD00 0113 3FFC 0001 0F08 FA00"
	$"0104 0FFC 0005 0E02 0000 173F F500 0504"
	$"1500 000C 0EFB 0001 3F13 FE00 0215 3F19"
	$"FE00 040E 0800 1A11 FD00 053F 1700 1A3F"
	$"17FD 0003 1C00 133F FC00 050F 0800 000C"
	$"08FD 0005 153F 0F00 0E02 FE00 010C 1CE9"
	$"00AD 0000 79B4 0001 080F FC00 0404 0A00"
	$"0406 FB0F 0319 0017 3FFE 0002 1A3F 0AFB"
	$"0F03 1C00 0F08 FD00 010C 08FC 0001 0F08"
	$"FB00 0219 3F17 FC00 0515 3F19 0017 3FF6"
	$"0001 1702 FE00 0102 19FB 0001 3F17 FE00"
	$"0117 3FFD 0001 0F08 FB00 0517 3F17 0013"
	$"3FFA 0001 0C08 FC00 050F 0800 0004 06FB"
	$"0F07 1900 193F 1900 000E E800 AD00 0070"
	$"B400 0108 0FFC 00FF 0802 003F 0FF9 0001"
	$"173F FE00 0217 3F17 F900 010F 08FD 00FF"
	$"08FC 0001 0F08 FB00 0217 3F17 FC00 0517"
	$"3F17 0017 3FFA 0000 1CF5 3F00 13FE 0001"
	$"3F17 FE00 0117 3FFD 0001 0F08 FD00 071C"
	$"131A 3F17 000F 3FFA 00FF 08FC 0005 0F08"
	$"0000 3F0F F800 0402 0E00 1515 E800 AD00"
	$"0071 B400 0108 0FFC 00FF 0802 003F 0EF9"
	$"0001 173F FE00 0217 3F15 F900 010F 08FD"
	$"00FF 08FC 0001 0F08 FB00 0217 3F17 FC00"
	$"0517 3F17 0017 3FF6 0005 0219 0000 0A11"
	$"FA00 013F 17FE 0001 173F FD00 010F 08FE"
	$"00FF 13FF 0004 3F17 000F 3FFA 00FF 08FC"
	$"0005 0F08 0000 3F0E F800 030C 0600 0EE7"
	$"00AD 0000 75B4 0001 080F FC00 0404 0F00"
	$"0606 F900 0117 3FFE 0002 1C3F 0EF9 0001"
	$"0F08 FD00 010E 3FFC 0001 0F08 FB00 021C"
	$"3F11 FC00 0513 3F1C 0017 3FF7 0006 1504"
	$"0000 1A3F 1AFA 0001 3F17 FE00 0117 3FFD"
	$"0005 0F08 0000 130C FE00 053F 1700 153F"
	$"17FB 0001 0E3F FC00 050F 0800 0006 06F8"
	$"0003 153F 1A0F E700 AD00 0080 B400 0108"
	$"0FFD 0006 1A3F 1900 0F3F 17FC 0003 1A00"
	$"173F FD00 0208 021C FD00 FF1C 0200 0F08"
	$"FD00 0215 3F13 FD00 010C 08FA 0001 0A08"
	$"FC00 050C 0A00 0017 3FF7 0005 0A0E 0000"
	$"1108 F900 013F 17FE 0001 173F FD00 0E0F"
	$"0800 1A3F 1700 001A 3F17 0000 020C FB00"
	$"0215 3F13 FD00 060C 0800 000F 3F17 FC00"
	$"001A FE00 0202 0819 E700 AD00 008E B400"
	$"0108 0CFD 001F 0A0C 0000 1C06 0217 0000"
	$"1C0C 1700 1A3F 1A00 1500 1902 061A 0000"
	$"1A08 1C00 0F08 FC00 0706 0219 0000 130A"
	$"0600 11FB 0002 1902 17FE 0006 1904 1900"
	$"0017 3FF8 0006 1C3F 1A00 0006 13F9 0001"
	$"3F17 FE00 0117 3FFD 000F 0F08 0017 3F11"
	$"001C 0A3F 1317 0013 3F11 FE00 1511 1C00"
	$"0602 1900 0013 0A06 1100 1C06 0217 0000"
	$"1C0C 17FE 0001 0C04 E600 AD00 0093 B400"
	$"FF08 040C 1715 0A0E FD00 061C 083F 0608"
	$"0617 FE00 0808 0406 1900 0019 043F FE08"
	$"061A 0013 0808 0E17 FE00 071C 063F 0808"
	$"1717 0600 17FA 000D 1906 0F17 130A 1900"
	$"0017 0808 0E13 FA00 0613 0600 001A 3F1C"
	$"FB00 341A 0C08 0A17 0017 0A08 0C1A 0013"
	$"0608 0E1C 063F 080E 1C0A 3F13 0000 1302"
	$"0408 0415 0000 1C06 3F08 0817 1706 1700"
	$"001C 083F 0608 0617 FD00 0113 11E6 00AD"
	$"0000 47B4 0005 080F 0017 171C FA00 021A"
	$"171A FB00 0117 1CFC 0002 1917 1CF4 0001"
	$"1917 FD00 F700 0219 171A D200 0117 1AFE"
	$"0000 1AFC 00FF 17FB 0001 1917 F800 021A"
	$"171A FA00 001C E600 AD00 000B B400 0108"
	$"0FD0 0081 00AD 0000 0BB4 0001 080F D000"
	$"8100 AD00 000B B400 0108 0FD0 0081 00AD"
	$"0000 0DB5 0003 1502 0617 D100 8100 AD00"
	$"000D B500 0317 0000 17D1 0081 00AD 0000"
	$"0681 0081 00AD 0000 0681 0081 00AD 0000"
	$"0681 0081 00AD 0000 0681 0081 00AD 0000"
	$"0681 0081 00AD 0000 00FF"
};

resource 'cfrg' (0) {
	{	/* array memberArray: 1 elements */
		/* [1] */
		kPowerPCCFragArch,
		kIsCompleteCFrag,
		kNoVersionNum,
		kNoVersionNum,
		65536,
		kNoAppSubFolder,
		kApplicationCFrag,
		kDataForkCFragLocator,
		kZeroOffset,
		kSegIDZero,
		"clip2cicn"
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

