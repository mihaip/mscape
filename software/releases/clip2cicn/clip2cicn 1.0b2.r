/* Resource fork of software/releases/clip2cicn/clip2cicn 1.0b2 */
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
		{120, 20, 169, 266},
		StaticText {
			disabled,
			"by Mihai Parparita\nmihai@mscape.com\nhttp"
			"://cafe.ambrosiasw.com/gui-central/"
		}
	}
};

resource 'DITL' (129, "Insert Cicn") {
	{	/* array DITLarray: 6 elements */
		/* [1] */
		{106, 145, 126, 203},
		Button {
			enabled,
			"Insert"
		},
		/* [2] */
		{106, 75, 126, 133},
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
			132
		},
		/* [5] */
		{72, 150, 88, 200},
		EditText {
			enabled,
			"-14336"
		},
		/* [6] */
		{74, 12, 90, 31},
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
		"About clip2cicn�", noIcon, noKey, noMark, plain,
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
		"Insert Clipboard into cicn�", noIcon, "I", noMark, plain,
		/* [2] */
		"-", noIcon, noKey, noMark, plain,
		/* [3] */
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
	{	/* array: 4 elements */
		/* [1] */
		"Vertical Active -10208", noIcon, noKey, noMark, plain,
		/* [2] */
		"Vertical Pressed -10207", noIcon, noKey, noMark, plain,
		/* [3] */
		"Horizontal Active -10206", noIcon, noKey, noMark, plain,
		/* [4] */
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
	{88, 131, 295, 409},
	dBoxProc,
	invisible,
	noGoAway,
	0x0,
	128,
	"",
	centerMainScreen
};

resource 'DLOG' (129) {
	{54, 42, 190, 258},
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
	0x0,
	beta,
	0x0,
	14,
	"1.0b2",
	"�1998 Mihai Parparita"
};

resource 'vers' (2) {
	0x1,
	0x0,
	beta,
	0x0,
	14,
	"1.0b2",
	"clip2cicn 1.0b2"
};

data 'c2ci' (0, "Owner resource") {
	$"16A9 2031 3939 3820 4D69 6861 6920 5061"            /* .� 1998 Mihai Pa */
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

data 'ictb' (129) {
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000"                                /* ........ */
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
	10328,
	{0, 0, 110, 260},
	$"0011 02FF 0C00 FFFE 0000 0048 0000 0048"
	$"0000 0000 0000 006E 0104 0000 0000 00A1"
	$"01F2 0016 3842 494D 0000 0000 0000 006E"
	$"0104 4772 8970 68AF 626A 0001 000A 0000"
	$"0000 006E 0104 0098 8104 0000 0000 006E"
	$"0104 0000 0000 0000 0000 0048 0000 0048"
	$"0000 0000 0008 0001 0008 0000 0000 0000"
	$"0000 0000 0000 0000 0028 0000 00FF 0000"
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
	$"20A7 00FD 0000 7CFD 0001 17BB DFFF 09FE"
	$"BD8E 7B69 5A4D 433C 38FE 3500 36FE 3734"
	$"3634 3330 2D2A 2622 1E1B 1713 100E 0B0A"
	$"0807 0605 0403 0302 0303 0507 0A0F 1319"
	$"1E22 2528 2827 2521 1D19 1410 0D0A 0705"
	$"0402 0201 01EF 00F8 0001 BF9F FE00 0170"
	$"BFED 00FF EFEB 0001 60BF FA00 088F EFFF"
	$"AF10 0030 BF60 FC00 0540 CFFF FF9F 10DA"
	$"00FD 0000 7DFD 0002 144D F7DF FF22 EC9E"
	$"8673 6253 473E 3733 3130 2F2F 2E2D 2C2A"
	$"2825 221F 1C18 1512 0F0D 0A08 0705 0404"
	$"03FE 02FF 01FF 0218 0305 080B 0E12 1619"
	$"1B1C 1C1B 1917 1410 0D0A 0806 0403 0201"
	$"01ED 00F8 0006 CFFF 1000 00DF AFED 00FF"
	$"8FEC 0002 CFFF FFFB 0009 60FF 9F70 FF9F"
	$"0040 FF80 FD00 0610 EFCF 40AF FF80 DA00"
	$"FD00 0096 FD00 0215 20A7 DEFF 20C9 917E"
	$"6B5B 4D41 3832 2E2B 2927 2624 2220 1E1B"
	$"1916 1311 0E0C 0A08 0605 0403 0202 F901"
	$"0702 0405 080A 0D0F 11FE 130B 1211 0F0D"
	$"0A08 0604 0302 0101 EB00 F800 2B70 FF60"
	$"0030 FF60 0030 BFFF FFAF 1000 30BF 80DF"
	$"EF60 30CF FFFF 6000 BF8F 0000 50DF FFEF"
	$"8000 0030 BF70 BFFF 9FFB 0002 40CF FFFB"
	$"000D CFFF 2000 DFFF 1040 FF8F BFFF BF30"
	$"FD00 0240 FFBF DA00 FD00 0095 FD00 0316"
	$"2144 EDDF FF1D F4A5 8875 6353 453A 322B"
	$"2723 211E 1C1A 1816 1411 0F0D 0B09 0706"
	$"0403 0202 FD01 FB00 FF01 0602 0405 0708"
	$"0A0B FD0C 090A 0908 0605 0302 0201 01EA"
	$"00F8 002C 20FF AF00 80FF 1010 EFDF 1030"
	$"FFCF 0040 FFDF 8FFF BFAF DF10 0020 00FF"
	$"BF00 40FF AF00 70FF 8000 40FF EF80 CFFF"
	$"30FB 0001 BFFF FB00 FFFF FF00 09BF FF40"
	$"40FF EF50 8FFF AFFD 0002 80FF 9FDA 00FD"
	$"0000 8EFD 0003 1520 2E93 DEFF 1AD6 937F"
	$"6C5B 4B3E 332A 241F 1B18 1614 120F 0D0C"
	$"0A08 0705 0403 0202 FE01 F700 FF01 0402"
	$"0304 0506 FC07 0706 0504 0302 0201 01E8"
	$"00F7 002B CFFF 10CF CF00 60FF 8F00 00BF"
	$"FF30 40FF 8000 4030 BFEF 8020 0000 FFBF"
	$"00AF FF50 0010 FFEF 0040 FF80 0080 FF40"
	$"FB00 01BF FFFB 00FF FFFF 0009 BFFF 4040"
	$"FF80 0000 FFFF FE00 0330 EFEF 20DA 00FD"
	$"0000 84FD 0004 141E 2C46 DFDF FF1A FAAF"
	$"8A76 6352 4236 2B23 1C17 1411 0E0C 0A09"
	$"0706 0504 0302 0201 01F3 00FF 01FF 02FF"
	$"03FC 04FF 03FF 02FF 01E6 00F7 0006 70FF"
	$"80FF 7000 80FB FFFF 4001 FF80 FE00 1750"
	$"EFFF FF70 00FF BF00 BFFF 4000 00FF FF00"
	$"40FF 8000 80FF 40FB 0001 BFFF FB00 FFFF"
	$"FF00 0FBF FF40 40FF 8000 00FF FF00 0030"
	$"EFEF 30D9 00FD 0000 79FD 0005 121C 2938"
	$"85FE DFFF 17E0 9681 6D5A 493A 2D23 1B15"
	$"110D 0B09 0706 0404 0302 0201 01F0 00FD"
	$"01FB 02FD 01E4 00F7 0008 20FF EFFF 2000"
	$"80FF 80FC 0002 40FF 80FD 0016 1060 EFEF"
	$"00FF BF00 BFFF 4000 00FF FF00 40FF 8000"
	$"80FF 40FB 0001 BFFF FB00 12DF FF00 00BF"
	$"FF20 40FF 8000 00FF FF00 30EF EF30 D800"
	$"FD00 0079 FD00 0510 1925 3346 CEDF FF12"
	$"FEBD 8C77 6351 4031 251C 150F 0B08 0604"
	$"0303 02FE 01EB 00F9 01E1 00F6 000F CFFF"
	$"DF00 0030 FFDF 1000 0010 0040 FF80 FE00"
	$"1710 0000 CFEF 00FF BF00 60FF 8F00 50FF"
	$"9F00 40FF 8000 80FF 40FB 0001 BFFF FE00"
	$"FFFF 1500 9FFF 6020 FFDF 0040 FF8F 0040"
	$"FFAF 20EF DF50 4040 30DA 00FD 0000 71FD"
	$"0006 0E15 202D 3D74 FADF FF0F EC9B 826E"
	$"5A47 3729 1E16 0F0A 0705 0302 FE01 C100"
	$"F600 028F FF8F FE00 0960 EFEF BFDF AF00"
	$"40FF 80FE 0017 FFBF DFFF 6000 FFBF 0000"
	$"8FFF BFEF CF10 0040 FF80 0080 FF40 FB00"
	$"01BF FFFE 00FF FF0F 0010 CFFF FFEF 3000"
	$"40FF EFBF EFDF 3040 FCFF 00BF DA00 FD00"
	$"0040 FD00 060B 121B 2736 47BA DEFF 0FC8"
	$"8E78 6450 3E2F 2218 100B 0704 0201 01BF"
	$"00EE 00FF 4000 20F9 0003 2040 4010 FA00"
	$"0220 4030 E700 0130 40FB 0001 3040 D100"
	$"FD00 0024 FD00 0709 0E16 212E 3E64 EDDF"
	$"FF0F F4A3 846E 5A47 3627 1C13 0C07 0402"
	$"0101 BF00 8100 FD00 0023 FD00 0707 0B12"
	$"1B27 3546 9FDE FF0E D68F 7964 503D 2E20"
	$"160E 0905 0301 01BF 0081 00FD 0000 24FD"
	$"0008 0509 0E16 202D 3D57 E3DF FF0E FAAD"
	$"846E 5946 3426 1A11 0A06 0302 01BF 0081"
	$"00FD 0000 24FD 0009 0407 0B11 1A25 3344"
	$"8BFE DFFF 0DDD 8E78 624E 3B2B 1E14 0D07"
	$"0402 01BF 0081 00FD 0000 24FD 0009 0305"
	$"080D 151F 2B3A 4ECE DFFF 0DF0 9C81 6B55"
	$"4230 2217 0E09 0502 01BF 0081 00FD 0000"
	$"25FD 000A 0203 060A 1019 2431 4275 FAE0"
	$"FF0D EBA0 8871 5B47 3526 1910 0A05 0301"
	$"BF00 8100 FD00 0025 FD00 0A01 0204 080D"
	$"141D 2938 49BA E0FF 0DD7 A28C 7660 4B38"
	$"281B 120B 0603 01BF 0081 00FD 0000 28FD"
	$"000B 0102 0306 0A0F 1722 2F3F 62EE E2FF"
	$"0FEC BBA4 8E78 624D 3A2A 1C12 0B06 0301"
	$"01C0 0081 00FD 0000 29FC 000A 0102 0407"
	$"0C12 1B27 3647 9FE4 FF11 FBE6 C9B5 A18C"
	$"7761 4C3A 2A1D 130B 0603 0101 C000 8100"
	$"FD00 002C FC00 FF01 0903 0509 0E16 202D"
	$"3D57 E2E7 FF13 FEF2 DFCE BFAF 9C87 725D"
	$"4938 281C 120B 0603 0101 C000 8100 FD00"
	$"002C FB00 0A01 0204 070B 111A 2533 448C"
	$"E8FF 14F8 EADA D0C4 B6A5 937F 6B57 4434"
	$"251A 110A 0603 0101 C000 8100 FD00 002D"
	$"FA00 0A01 0205 080D 151F 2B3A 4DCF EBFF"
	$"15FB EFE1 D8CF C4B7 A898 8674 614F 3E2E"
	$"2217 0F09 0503 01BF 0081 00FD 0000 30FA"
	$"000B 0102 0306 0A10 1924 3142 76F9 EEFF"
	$"17FD F3E5 DCD4 CBC0 B4A7 9989 7867 5545"
	$"3628 1D14 0D08 0402 01BF 0081 00FD 0000"
	$"31F9 000A 0102 0408 0D14 1D29 3849 B7F0"
	$"FF19 FEF7 E9DE D7CE C5BB AFA3 9586 7768"
	$"5849 3A2D 2118 100B 0604 0201 BF00 8100"
	$"FD00 0033 F900 0B01 0203 060A 0F17 222F"
	$"3F61 EFF2 FF1A FAED E0D9 D1C8 BEB4 A89C"
	$"8F81 7365 5749 3C2F 241B 130D 0805 0301"
	$"01BF 0081 00FD 0000 33F8 000A 0102 0407"
	$"0C12 1B27 3647 A1F4 FF1B FCF1 E3DB D3CB"
	$"C1B7 ACA0 9487 7A6D 6053 463A 2F25 1C14"
	$"0E0A 0604 0201 BE00 8100 FD00 0036 F800"
	$"FF01 0903 0509 0E16 202D 3C55 DFF7 FF1D"
	$"FDF4 E6DC D5CD C4BA AFA4 988B 7F72 6559"
	$"4D42 372D 241C 150F 0A07 0403 0101 BE00"
	$"8100 FD00 0037 F700 0B01 0204 070B 111A"
	$"2533 4488 FEFA FF1E FEF4 E5DB D5CE C6BC"
	$"B2A7 9B8F 8276 695D 5246 3C32 2921 1A14"
	$"0F0A 0705 0302 01BD 0081 00FD 0000 36F6"
	$"000A 0102 0508 0D15 1E2B 394B CCFB FF1E"
	$"F5E1 D3D1 CCC6 BEB4 AA9E 9286 796D 6155"
	$"4A3F 362D 251E 1712 0D0A 0704 0302 01BC"
	$"0081 00FD 0000 38F6 002E 0102 0306 0A10"
	$"1823 3040 69D7 FDFF FFF4 D7C3 C2C3 C0BB"
	$"B4AB A195 897D 7164 584D 4239 3027 201A"
	$"1410 0C09 0604 0302 01BB 0081 00FD 0000"
	$"36F5 002C 0102 0408 0C13 1C28 3645 649B"
	$"BFC1 A8A4 ACB0 B0AD A8A0 968B 8074 685C"
	$"5045 3B32 2A22 1C16 110D 0A07 0504 0201"
	$"01BA 0081 00FD 0000 35F5 00FF 0129 0305"
	$"090F 1620 2C3A 495A 6A79 8691 989B 9C98"
	$"938A 8176 6A5F 5348 3E35 2C24 1D18 130E"
	$"0B08 0604 0302 0101 B900 8100 FD00 0032"
	$"F400 2801 0204 070B 1119 232F 3D4B 5967"
	$"737C 8386 8582 7C74 6B60 564B 4137 2E26"
	$"1F19 1410 0C09 0705 0302 0101 B700 8100"
	$"FD00 0031 F400 FF01 2503 0508 0D13 1C26"
	$"313D 4955 6068 6D70 6F6C 665F 564C 4339"
	$"3128 211B 1511 0D0A 0705 0403 0201 01B6"
	$"0081 00FD 0000 2EF3 0024 0102 0306 090F"
	$"151D 2630 3A44 4D54 585A 5956 514A 433A"
	$"322A 231C 1712 0E0B 0806 0403 0201 01B4"
	$"0081 00FD 0000 2BF2 001F 0102 0407 0B10"
	$"161D 252D 353C 4145 4645 423E 3832 2B24"
	$"1E18 130F 0B09 0604 0302 FE01 B300 8100"
	$"FD00 002A F200 FF01 1E03 0507 0B10 151B"
	$"2127 2C30 3334 3331 2D28 231E 1914 100C"
	$"0907 0503 0202 0101 B100 8100 FD00 0027"
	$"F100 1D01 0203 0507 0B0F 1317 1C20 2324"
	$"2524 221F 1C18 1410 0D0A 0705 0403 0201"
	$"01AF 0081 00FD 0000 24F0 001A 0102 0305"
	$"070A 0D10 1315 1719 1918 1715 1210 0D0A"
	$"0806 0403 0201 01AD 0081 00FD 0000 21EF"
	$"0009 0102 0304 0608 0A0C 0E0F FE10 080E"
	$"0D0B 0908 0604 0302 FE01 AC00 8100 FD00"
	$"001F EE00 1501 0202 0405 0607 0809 090A"
	$"0909 0806 0504 0302 0201 01AA 0081 00FD"
	$"0000 19ED 00FF 01FF 0201 0304 FB05 0604"
	$"0303 0202 0101 A800 8100 FD00 0012 EC00"
	$"FE01 FE02 FD03 FE02 FE01 A600 8100 FD00"
	$"000A E900 F701 A300 8100 FD00 0006 8100"
	$"8100 FD00 0006 8100 8100 FD00 0006 8100"
	$"8100 FD00 0006 8100 8100 FD00 0006 8100"
	$"8100 FD00 0006 8100 8100 FD00 00FF"
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
	$"0000 0001 9DCE 598F 2F3C 434F 4445 4267"            /* ....��Y�/<CODEBg */
	$"A9A0 2017 6700 00F2 2040 2050 2E18 2C10"            /* �� .g..� @ P..,. */
	$"A9A3 7000 204D 91C6 6002 10C0 B1CD 6DFA"            /* ��p. M��`..���m� */
	$"41ED 0028 43F5 7800 6002 10C0 B1C9 6DFA"            /* A�.(C�x.`..���m� */
	$"598F 2F3C 4441 5441 4267 A9A0 2057 2008"            /* Y�/<DATABg�� W . */
	$"6700 00B6 2F0D 2050 4868 0004 4EBA 00B0"            /* g..�/. PHh..N�.� */
	$"508F 43FA FF9C 2B49 FAEE 224D 4EBA 0218"            /* P�C���+I��"MN�.. */
	$"226D FAEE 4EBA 0210 A9A3 4EBA 0296 422D"            /* "m��N�..��N�.�B- */
	$"FAF3 303C A89F A746 2F08 303C A198 A346"            /* ��0<���F/.0<���F */
	$"B1DF 670A 1B7C 0001 FAF3 7001 A198 303C"            /* ��g..|..��p.��0< */
	$"A9F0 A746 2B48 FAEA 303C A9F1 A746 2B48"            /* ��F+H��0<��F+H */
	$"FAE6 303C A9F4 A746 2B48 FAE2 303C A9F0"            /* ��0<���F+H��0<�� */
	$"41FA 0268 A647 303C A9F1 41FA 0324 A647"            /* A�.h�G0<��A�.$�G */
	$"303C A9F4 41FA 002E A647 4EB9 0000 0488"            /* 0<��A�..�GN�...� */
	$"4EB9 0000 04D2 487A 0022 4A2D FFFF 6702"            /* N�...�Hz."J-��g. */
	$"4267 4267 4EB9 0000 04D4 5C8F 42A7 4EB9"            /* BgBgN�...�\�B�N� */
	$"0000 189C 4EBA 0384 A9F4 0000 0000 48E7"            /* ...�N�.���....H� */
	$"1C30 594F 266F 001C 7800 6000 00E4 1E9B"            /* .0YO&o..x.`..�.� */
	$"1F5B 0001 1F5B 0002 1F5B 0003 246F 0020"            /* .[...[...[..$o.  */
	$"D5D7 161B 4883 3003 0240 0080 670E 0243"            /* ��..H�0..@.�g..C */
	$"007F 14DB 5343 4A43 6CF8 60E6 3003 0240"            /* ...�SCJCl�`�0..@ */
	$"0040 670E 3003 0240 003F 5240 48C0 D5C0"            /* .@g.0..@.?R@H��� */
	$"60D0 3003 0240 0020 670A 0243 001F 5243"            /* `�0..@. g..C..RC */
	$"1A1B 600E 3003 0240 0010 6710 0243 000F"            /* ..`.0..@..g..C.. */
	$"7AFF 14C5 5343 4A43 6CF8 60A6 3003 0C40"            /* z�.�SCJCl�`�0..@ */
	$"0004 6264 D040 303B 0006 4EFB 0002 0060"            /* ..bd�@0;..N�...` */
	$"000A 001C 002C 0042 588A 14FC FFFF 14FC"            /* .....,.BX�.���.� */
	$"FFFF 14DB 14DB 6000 FF7A 588A 14FC FFFF"            /* ��.�.�`.�zX�.��� */
	$"14DB 14DB 14DB 6000 FF6A 14FC FFA9 14FC"            /* .�.�.�`.�j.���.� */
	$"FFF0 548A 14DB 14DB 528A 14DB 6000 FF54"            /* ��T�.�.�R�.�`.�T */
	$"14FC FFA9 14FC FFF0 528A 14DB 14DB 14DB"            /* .���.���R�.�.�.� */
	$"528A 14DB 6000 FF3C 3F3C 000F A9C9 5244"            /* R�.�`.�<?<..��RD */
	$"0C44 0003 6D00 FF18 204B 584F 4CDF 0C38"            /* .D..m.�. KXOL�.8 */
	$"4E75 2F05 594F 226F 000C 1E99 1F59 0001"            /* Nu/.YO"o...�.Y.. */
	$"1F59 0002 1F59 0003 2A17 7400 604C 1219"            /* .Y...Y..*.t.`L.. */
	$"1001 0240 0080 670C D201 1001 4880 48C0"            /* ...@.�g.�...H�H� */
	$"D480 6028 1E81 1F59 0001 1001 0240 0040"            /* Ԁ`(.�.Y.....@.@ */
	$"670C 3017 E548 E240 48C0 D480 600E 1F59"            /* g.0.�H�@H�Ԁ`..Y */
	$"0002 1F59 0003 2417 E58A E282 206F 0010"            /* ...Y..$.�� o.. */
	$"202F 0014 D1B0 2800 5385 4A85 6EB0 2049"            /*  /..Ѱ(.S�J�n� I */
	$"584F 2A1F 4E75 2F0A 2449 2F0D 2F0A 2F08"            /* XO*.Nu/.$I/././. */
	$"4EBA FF80 2F2D FAEE 2F0A 2F08 4EBA FF74"            /* N���/-��/./.N��t */
	$"2F0A 2F0A 2F08 4EBA FF6A 4FEF 0024 245F"            /* /././.N��jO�.$$_ */
	$"4E75 2F0A 2449 2F0D 4497 2F0A 2F08 4EBA"            /* Nu/.$I/.D�/./.N� */
	$"FF52 2F2D FAEE 4497 2F0A 2F08 4EBA FF44"            /* �R/-��D�/./.N��D */
	$"2F0A 4497 2F0A 2F08 4EBA FF38 4FEF 0024"            /* /.D�/./.N��8O�.$ */
	$"245F 4E75 BBFA 0028 6602 4E75 48E7 0084"            /* $_Nu��.(f.NuH�.� */
	$"2A7A 001C 206D FAEA 4A6F 000C 6604 206D"            /* *z.. m��Jo..f. m */
	$"FAE6 2F48 000A 4CDF 2100 544F 4E75 0000"            /* ��/H..L�!.TONu.. */
	$"0000 41FA FFFA 208D 4E75 43F9 0000 0040"            /* ..A��� �NuC�...@ */
	$"C0FC 0010 2388 08F0 4E75 3F3C 0001 4EBA"            /* ��..#�.�Nu?<..N� */
	$"FFB4 544F 48E7 E0E0 55AF 0018 246F 0018"            /* ��TOH���U�..$o.. */
	$"202D FAF4 670A 2040 3F2A 0006 4E90 548F"            /*  -��g. @?*..N�T� */
	$"50F8 0A5E 598F 2F3C 434F 4445 3F2A 0006"            /* P�.^Y�/<CODE?*.. */
	$"A9A0 2017 6616 202D FB00 6604 700F A9C9"            /* �� .f. -�.f.p.�� */
	$"2040 3F2A 0006 4E90 548F 60DA 4A38 0BB2"            /*  @?*..N�T�`�J8.� */
	$"6704 2040 A064 2057 A029 205F 2050 2008"            /* g. @�d W�) _ P . */
	$"A055 2040 2F08 302A 0006 4EBA FF7E 2248"            /* �U @/.0*..N��~"H */
	$"D1E8 0008 4EBA FEE0 205F 224D D3E8 0004"            /* ��..N��� _"M��.. */
	$"3028 0002 2208 600C 337C 4EF9 0000 D3A9"            /* 0(..".`.3|N�..ө */
	$"0002 5089 51C8 FFF2 4A2D FAF3 6704 7001"            /* ..P�Q���J-��g.p. */
	$"A198 202D FAF8 670A 2040 3F2A 0006 4E90"            /* �� -��g. @?*..N� */
	$"548F 4CDF 0707 4A38 012D 6702 A9FF 4E75"            /* T�L�..J8.-g.��Nu */
	$"3F3C 0000 4EBA FEEE 544F 2F0A 246F 0008"            /* ?<..N���TO/.$o.. */
	$"0C6A 4EF9 0000 667A 0C6A 0002 0006 6D72"            /* .jN�..fz.j....mr */
	$"91C8 302A 0006 4EBA FF02 598F 2F3C 434F"            /* ��0*..N��.Y�/<CO */
	$"4445 3F2A 0006 A9A0 2017 6604 588F 6052"            /* DE?*..�� .f.X�`R */
	$"2040 2050 2248 D1E8 0008 4EBA FE76 2057"            /*  @ P"H��..N��v W */
	$"2050 224D D3E8 0004 3028 0002 2208 600C"            /*  P"M��..0(..".`. */
	$"337C A9F0 0000 93A9 0002 5089 51C8 FFF2"            /* 3|��..��..P�Q��� */
	$"2057 A02A 205F A049 4A2D FAF3 6704 7001"            /*  W�* _�IJ-��g.p. */
	$"A198 202D FAFC 670A 2040 3F2A 0006 4E90"            /* �� -��g. @?*..N� */
	$"548F 245F 2E9F 4E75 4E75 2A78 0904 303C"            /* T�$_.�NuNu*x..0< */
	$"A9F4 206D FAE2 A647 303C A9F0 206D FAEA"            /* �� m��G0<�� m�� */
	$"A647 303C A9F1 206D FAE6 A647 4E75 2F0A"            /* �G0<�� m��GNu/. */
	$"6014 2B52 FB04 3F3C FFFF 2F2A 0008 206A"            /* `.+R�.?<��/*.. j */
	$"0004 4E90 5C4F 246D FB04 200A 66E4 245F"            /* ..N�\O$m�. .f�$_ */
	$"4E75 4E75 4E56 0000 4EBA 0016 4EBA 037A"            /* NuNuNV..N�..N�.z */
	$"4EBA 11BA 4E5E 4E75 846D 6169 6E00 0000"            /* N�.�N^Nu�main... */
	$"4E56 FFF2 4EBA 114A 41EE FFF2 2038 020C"            /* NV��N�.JA��� 8.. */
	$"A9C6 0C6E 0007 FFF4 6D22 0C6E 0007 FFF6"            /* ��.n..��m".n..�� */
	$"6D1A 0C6E 07CE FFF2 6D12 486D FEAE 486D"            /* m..n.���m.Hm��Hm */
	$"FE7E 4EBA 11A2 4EBA 1174 504F 4EBA 0050"            /* �~N�.�N�.tPON�.P */
	$"4EBA 0284 486D FBD8 486D FBDC 203C 0008"            /* N�.�Hm��Hm�� <.. */
	$"0005 AB1D 422D FBD7 4E5E 4E75 8E49 6E69"            /* ..�.B-��N^Nu�Ini */
	$"7469 616C 697A 655F 5F46 7600 0000 4E56"            /* tialize__Fv...NV */
	$"0000 4E5E 4E75 9447 6574 4375 7272 656E"            /* ..N^Nu�GetCurren */
	$"7453 6368 656D 655F 5F46 7600 0000 4E56"            /* tScheme__Fv...NV */
	$"0000 2F0A 594F 3F3C 0080 A9C0 205F 2448"            /* ../.YO?<.��� _$H */
	$"2F0A A93C 594F 3F3C 0080 A949 205F 2448"            /* /.�<YO?<.��I _$H */
	$"2F0A 2F3C 4452 5652 A94D A937 245F 4E5E"            /* /./<DRVR�M�7$_N^ */
	$"4E75 8F49 6E69 744D 656E 7542 6172 5F5F"            /* Nu�InitMenuBar__ */
	$"4676 0000 4E56 FFF8 554F 2F2E 0008 2F3C"            /* Fv..NV��UO/.../< */
	$"6D69 7373 2F3C 2A2A 2A2A 486E FFFC 42A7"            /* miss/<****Hn��B� */
	$"42A7 486E FFF8 303C 0E15 A816 301F 0C40"            /* B�Hn��0<..�.0..@ */
	$"F95B 6604 7000 6004 303C F94D 4E5E 4E75"            /* �[f.p.`.0<�MN^Nu */
	$"9F4D 7947 6F74 5265 7175 6972 6564 5061"            /* �MyGotRequiredPa */
	$"7261 6D73 5F5F 4650 4336 4145 4465 7363"            /* rams__FPC6AEDesc */
	$"0000 4E56 0000 2F2E 0010 4EBA FF98 3F40"            /* ..NV../...N���?@ */
	$"0018 4E5E 205F 4FEF 000C 4ED0 8944 4F4F"            /* ..N^ _O�..NЉDOO */
	$"5045 4E41 5050 0000 4E56 FF9E 48E7 1830"            /* PENAPP..NV��H�.0 */
	$"266E 0010 554F 2F0B 2F3C 2D2D 2D2D 2F3C"            /* &n..UO/./<----/< */
	$"6C69 7374 486E FFB2 303C 0812 A816 301F"            /* listHn��0<..�.0. */
	$"3800 554F 486E FFB2 486E FFAE 303C 0407"            /* 8.UOHn��Hn��0<.. */
	$"A816 301F 3800 7601 6000 00AE 554F 486E"            /* �.0.8.v.`..�UOHn */
	$"FFB2 3043 2F08 2F3C 6673 7320 486E FFA6"            /* ��0C/./<fss Hn�� */
	$"486E FFA2 486E FFBA 4878 0046 486E FFAA"            /* Hn��Hn��Hx.FHn�� */
	$"303C 100A A816 301F 3800 4A44 6678 7000"            /* 0<..�.0.8.JDfxp. */
	$"A122 2448 594F 2F0A 2F3C 5049 4354 486E"            /* �"$HYO/./<PICTHn */
	$"FF9E A9FD 201F 4A80 6C10 486D FEFA 486D"            /* ���� .J�l.Hm��Hm */
	$"FEF9 4EBA 0FE2 504F 603E 4EBA FE72 302E"            /* ��N�.�PO`>N��r0. */
	$"FFBA B06D FC26 661A 202E FFBC B0AD FC28"            /* ���m�&f. .�����( */
	$"6610 486D FF5E 486D FF36 4EBA 0FBA 504F"            /* f.Hm�^Hm�6N�.�PO */
	$"6016 41EE FFBA 43ED FBE0 7010 22D8 51C8"            /* `.A���C���p."�Q� */
	$"FFFC 32D8 4EBA 075E 2F0B 4EBA FE98 3F40"            /* ��2�N�.^/.N���?@ */
	$"008A 584F 6018 5243 3043 B1EE FFAE 6F00"            /* .�XO`.RC0C����o. */
	$"FF4C 2F0B 4EBA FE7E 3F40 008A 584F 4CDF"            /* �L/.N��~?@.�XOL� */
	$"0C18 4E5E 205F 4FEF 000C 4ED0 8944 4F4F"            /* ..N^ _O�..NЉDOO */
	$"5045 4E44 4F43 0000 4E56 0000 3F7C F954"            /* PENDOC..NV..?|�T */
	$"0014 4E5E 205F 4FEF 000C 4ED0 8A44 4F50"            /* ..N^ _O�..NЊDOP */
	$"5249 4E54 444F 4300 0000 4E56 0000 1B7C"            /* RINTDOC...NV...| */
	$"0001 FBD7 2F2E 0010 4EBA FE2A 3F40 0018"            /* ..��/...N��*?@.. */
	$"4E5E 205F 4FEF 000C 4ED0 8944 4F51 5549"            /* N^ _O�..NЉDOQUI */
	$"5441 5050 0000 4E56 0000 2F03 554F 2F3C"            /* TAPP..NV../.UO/< */
	$"6165 7674 2F3C 6F61 7070 487A FE56 42A7"            /* aevt/<oappHz�VB� */
	$"4227 303C 091F A816 301F 3600 554F 2F3C"            /* B'0<..�.0.6.UO/< */
	$"6165 7674 2F3C 6F64 6F63 487A FE5C 42A7"            /* aevt/<odocHz�\B� */
	$"4227 303C 091F A816 301F 3600 554F 2F3C"            /* B'0<..�.0.6.UO/< */
	$"6165 7674 2F3C 7064 6F63 487A FF5C 42A7"            /* aevt/<pdocHz�\B� */
	$"4227 303C 091F A816 301F 3600 554F 2F3C"            /* B'0<..�.0.6.UO/< */
	$"6165 7674 2F3C 7175 6974 487A FF5E 42A7"            /* aevt/<quitHz�^B� */
	$"4227 303C 091F A816 301F 3600 261F 4E5E"            /* B'0<..�.0.6.&.N^ */
	$"4E75 9241 7070 6C65 4576 656E 7449 6E69"            /* Nu�AppleEventIni */
	$"745F 5F46 7600 0000 4E56 FFF0 6020 554F"            /* t__Fv...NV��` UO */
	$"3F3C FFFF 486E FFF0 4878 003C 42A7 A860"            /* ?<��Hn��Hx.<B��` */
	$"101F 670A 486E FFF0 4EBA 001E 584F 4A2D"            /* ..g.Hn��N�..XOJ- */
	$"FBD7 67DA 4E5E 4E75 8D45 7665 6E74 4C6F"            /* ��g�N^Nu�EventLo */
	$"6F70 5F5F 4676 0000 4E56 0000 2F0A 246E"            /* op__Fv..NV../.$n */
	$"0008 3012 5340 6726 5340 6718 5340 6728"            /* ..0.S@g&S@g.S@g( */
	$"5540 6724 5340 672A 5540 673C 0440 000F"            /* U@g$S@g*U@g<.@.. */
	$"672A 6034 2F0A 4EBA 0052 584F 602A 2F0A"            /* g*`4/.N�.RXO`*.. */
	$"4EBA 0072 584F 6020 2F0A 4EBA 00F8 584F"            /* N�.rXO` /.N�.�XO */
	$"6016 2F0A 4EBA 014E 584F 600C 554F 2F0A"            /* `./.N�.NXO`.UO/. */
	$"303C 021B A816 301F 245F 4E5E 4E75 9844"            /* 0<..�.0.$_N^Nu�D */
	$"6F45 7665 6E74 5F5F 4650 3131 4576 656E"            /* oEvent__FP11Even */
	$"7452 6563 6F72 6400 0000 4E56 0000 4E5E"            /* tRecord...NV..N^ */
	$"4E75 9E48 616E 646C 654D 6F75 7365 5570"            /* Nu�HandleMouseUp */
	$"5F5F 4650 3131 4576 656E 7452 6563 6F72"            /* __FP11EventRecor */
	$"6400 0000 4E56 FFFC 48E7 1030 246E 0008"            /* d...NV��H�.0$n.. */
	$"554F 2F2A 000A 486E FFFC A92C 301F 3600"            /* UO/*..Hn���,0.6. */
	$"3003 5340 670A 5340 671C 5540 6722 6038"            /* 0.S@g.S@g.U@g"`8 */
	$"594F 2F2A 000A A93D 201F 2600 2F03 4EBA"            /* YO/*..�= .&./.N� */
	$"00FA 584F 6022 2F0A 2F2E FFFC A9B3 6018"            /* .�XO`"/./.����`. */
	$"594F AA2A 205F 2648 2F2E FFFC 2F2A 000A"            /* YO�* _&H/.��/*.. */
	$"2053 4868 0022 A925 4CDF 0C08 4E5E 4E75"            /*  SHh."�%L�..N^Nu */
	$"8020 4861 6E64 6C65 4D6F 7573 6544 6F77"            /* � HandleMouseDow */
	$"6E5F 5F46 5031 3145 7665 6E74 5265 636F"            /* n__FP11EventReco */
	$"7264 0000 4E56 FFFE 206E 0008 2028 0002"            /* rd..NV�� n.. (.. */
	$"0280 0000 00FF 1D40 FFFF 206E 0008 3028"            /* .�...�.@�� n..0( */
	$"000E 0240 0100 6716 594F 102E FFFF 4880"            /* ...@..g.YO..��H� */
	$"3F00 A93E 201F 2F00 4EBA 0070 584F 4E5E"            /* ?.�> ./.N�.pXON^ */
	$"4E75 9E48 616E 646C 654B 6579 446F 776E"            /* Nu�HandleKeyDown */
	$"5F5F 4650 3131 4576 656E 7452 6563 6F72"            /* __FP11EventRecor */
	$"6400 0000 4E56 0000 2F0A 206E 0008 2468"            /* d...NV../. n..$h */
	$"0002 594F 2F0A A917 201F 6608 2F0A A922"            /* ..YO/.�. .f./.�" */
	$"2F0A A923 245F 4E5E 4E75 9D48 616E 646C"            /* /.�#$_N^Nu�Handl */
	$"6555 7064 6174 655F 5F46 5031 3145 7665"            /* eUpdate__FP11Eve */
	$"6E74 5265 636F 7264 0000 4E56 0000 48E7"            /* ntRecord..NV..H� */
	$"1C00 282E 0008 4A84 673A 2A04 7210 E2A5"            /* ..(...J�g:*.r.� */
	$"3604 3005 0440 0080 670A 5340 6710 5340"            /* 6.0..@.�g.S@g.S@ */
	$"6716 601C 3F03 4EBA 0038 544F 6012 3F03"            /* g.`.?.N�.8TO`.?. */
	$"4EBA 02EC 544F 6008 3F03 4EBA 0B14 544F"            /* N�.�TO`.?.N�..TO */
	$"4267 A938 4CDF 0038 4E5E 4E75 9144 6F4D"            /* Bg�8L�.8N^Nu�DoM */
	$"656E 7543 6F6D 6D61 6E64 5F5F 466C 0000"            /* enuCommand__Fl.. */
	$"4E56 FEFC 2F03 362E 0008 3003 5340 6702"            /* NV��/.6...0.S@g. */
	$"6006 4EBA 0048 6026 594F 3F3C 0080 A949"            /* `.N�.H`&YO?<.��I */
	$"205F 2D48 FEFC 2F2E FEFC 3F03 486E FF00"            /*  _-H��/.��?.Hn�. */
	$"A946 554F 486E FF00 A9B6 301F 3600 261F"            /* �FUOHn�.��0.6.&. */
	$"4E5E 4E75 9548 616E 646C 6541 7070 6C65"            /* N^Nu�HandleApple */
	$"4368 6F69 6365 5F5F 4669 0000 4E56 FFDC"            /* Choice__Fi..NV�� */
	$"48E7 1038 594F 3F3C 0080 42A7 4878 FFFF"            /* H�.8YO?<.�B�Hx�� */
	$"A97C 205F 2448 2F0A A873 554F 2F0A 3F3C"            /* �| _$H/.�sUO/.?< */
	$"0001 303C 0304 AA68 301F 2F0A A915 2F0A"            /* ..0<..�h0./.�./. */
	$"3F3C 0002 486E FFDC 486E FFDE 486E FFF6"            /* ?<..Hn��Hn��Hn�� */
	$"A98D 2D6E FFF6 FFE2 2D6E FFFA FFE6 486E"            /* ��-n����-n����Hn */
	$"FFF6 302E FFF8 4440 3F00 302E FFF6 4440"            /* ��0.��D@?.0.��D@ */
	$"3F00 A8A8 554F 486E FFEE 3F3C 0020 486E"            /* ?.��UOHn��?<. Hn */
	$"FFF6 42A7 42A7 42A7 203C 0016 0000 AB1D"            /* ��B�B�B� <....�. */
	$"301F 594F 2F2E FFEE 203C 0004 0017 AB1D"            /* 0.YO/.�� <....�. */
	$"205F 2608 554F 2F03 203C 0004 0001 AB1D"            /*  _&.UO/. <....�. */
	$"101F 554F 486E FFF2 3F3C 0020 486E FFF6"            /* ..UOHn��?<. Hn�� */
	$"42A7 42A7 42A7 203C 0016 0000 AB1D 301F"            /* B�B�B� <....�.0. */
	$"2F2E FFF2 42A7 203C 0008 0006 AB1D 594F"            /* /.��B� <....�.YO */
	$"3F3C 0080 A9BC 205F 2F08 486E FFF6 A8F6"            /* ?<.��� _/.Hn���� */
	$"594F 2F2E FFF2 203C 0004 0017 AB1D 205F"            /* YO/.�� <....�. _ */
	$"2648 554F 2F0B 203C 0004 0001 AB1D 101F"            /* &HUO/. <....�... */
	$"554F 486E FFEA 3F3C 0020 486E FFF6 42A7"            /* UOHn��?<. Hn��B� */
	$"42A7 42A7 203C 0016 0000 AB1D 301F 2F2E"            /* B�B� <....�.0./. */
	$"FFEA 42A7 203C 0008 0006 AB1D 594F 3F3C"            /* ��B� <....�.YO?< */
	$"0081 A9BC 205F 2F08 486E FFF6 A8F6 594F"            /* .��� _/.Hn����YO */
	$"2F2E FFEA 203C 0004 0017 AB1D 205F 2848"            /* /.�� <....�. _(H */
	$"554F 2F0C 203C 0004 0001 AB1D 101F 2F2E"            /* UO/. <....�.../. */
	$"FFF2 42A7 203C 0008 0006 AB1D 486A 0002"            /* ��B� <....�.Hj.. */
	$"206E FFEE 4868 0002 486E FFE2 486E FFF6"            /*  n��Hh..Hn��Hn�� */
	$"4267 42A7 A8EC 206E FFF2 4868 0002 206E"            /* BgB��� n��Hh.. n */
	$"FFEA 4868 0002 206E FFEE 4868 0002 486E"            /* ��Hh.. n��Hh..Hn */
	$"FFF6 486E FFF6 486E FFF6 4267 42A7 AA51"            /* ��Hn��Hn��BgB��Q */
	$"206E FFEE 4868 0002 486A 0002 486E FFF6"            /*  n��Hh..Hj..Hn�� */
	$"486E FFE2 3F3C 0040 42A7 A8EC 2F0B 203C"            /* Hn��?<.@B���/. < */
	$"0004 0002 AB1D 2F0C 203C 0004 0002 AB1D"            /* ....�./. <....�. */
	$"2F03 203C 0004 0002 AB1D 2F2E FFF2 203C"            /* /. <....�./.�� < */
	$"0004 0004 AB1D 2F2E FFEA 203C 0004 0004"            /* ....�./.�� <.... */
	$"AB1D 2F2E FFEE 203C 0004 0004 AB1D 2F0A"            /* �./.�� <....�./. */
	$"A873 7600 6014 42A7 486E FFFE A991 302E"            /* �sv.`.B�Hn����0. */
	$"FFFE 5340 6702 6002 7601 4A03 67E8 2F0A"            /* ��S@g.`.v.J.g�/. */
	$"A983 2F2D FBD8 2F2D FBDC 203C 0008 0006"            /* ��/-��/-�� <.... */
	$"AB1D 4CDF 1C08 4E5E 4E75 9053 686F 7741"            /* �.L�..N^Nu�ShowA */
	$"626F 7574 426F 785F 5F46 7600 0000 4E56"            /* boutBox__Fv...NV */
	$"0000 302E 0008 5340 6706 5540 6708 600C"            /* ..0...S@g.U@g.`. */
	$"4EBA 0026 6006 1B7C 0001 FBD7 4E5E 4E75"            /* N�.&`..|..��N^Nu */
	$"9448 616E 646C 6546 696C 6543 686F 6963"            /* �HandleFileChoic */
	$"655F 5F46 6900 0000 4E56 FF90 7000 A122"            /* e__Fi...NV��p.�" */
	$"2D48 FF90 594F 2F2E FF90 2F3C 5049 4354"            /* -H��YO/.��/<PICT */
	$"486E FF94 A9FD 201F 4A80 6C10 486D FEFA"            /* Hn���� .J�l.Hm�� */
	$"486D FEF9 4EBA 08C0 504F 6062 4EBA F750"            /* Hm��N�.�PO`bN��P */
	$"2D7C 436F 6C72 FF98 42A7 3F3C 0001 486E"            /* -|Colr��B�?<..Hn */
	$"FF98 486E FFA8 3F3C 0006 A9EA 302E FFAE"            /* ��Hn��?<..��0.�� */
	$"B06D FC26 661A 202E FFB0 B0AD FC28 6610"            /* �m�&f. .�����(f. */
	$"486D FF5E 486D FF36 4EBA 087C 504F 601E"            /* Hm�^Hm�6N�.|PO`. */
	$"4A2E FFA8 6718 41EE FFA8 5C88 43ED FBE0"            /* J.��g.A���\�C��� */
	$"7010 22D8 51C8 FFFC 32D8 4EBA 0018 4E5E"            /* p."�Q���2�N�..N^ */
	$"4E75 8E49 6E73 6572 7443 6963 6E5F 5F46"            /* Nu�InsertCicn__F */
	$"7600 0000 4E56 FDE4 48E7 1C20 2D6D FFB6"            /* v...NV��H�. -m�� */
	$"FDE4 2D6D FFBA FDE8 383C 0084 594F 3F3C"            /* ��-m����8<.�YO?< */
	$"0081 42A7 4878 FFFF A97C 205F 2448 2F0A"            /* .�B�Hx���| _$H/. */
	$"A873 554F 2F0A 3F3C 0001 303C 0304 AA68"            /* �sUO/.?<..0<..�h */
	$"301F 554F 2F0A 3F3C 0002 303C 0305 AA68"            /* 0.UO/.?<..0<..�h */
	$"301F 2F0A 4878 0005 3F3C 7FFF A97E 2F0A"            /* 0./.Hx..?<.��~/. */
	$"A915 7A00 6000 0268 42A7 486E FDF0 A991"            /* �.z.`..hB�Hn�� */
	$"302E FDF0 5340 6712 5340 675C 5340 675E"            /* 0.��S@g.S@g\S@g^ */
	$"5340 6700 0196 6000 0246 2F0A 3F3C 0005"            /* S@g..�`..F/.?<.. */
	$"486E FEF2 486E FEFC 486E FEF4 A98D 2F2E"            /* Hn��Hn��Hn����/. */
	$"FEFC 486E FF00 A990 486E FF00 486E FDEC"            /* ��Hn�.��Hn�.Hn�� */
	$"4EBA 0944 7A01 2F0A A983 2F2D FBD8 2F2D"            /* N�.Dz./.��/-��/- */
	$"FBDC 203C 0008 0006 AB1D 3F2E FDEE 4EBA"            /* �� <....�.?.��N� */
	$"0230 544F 6000 0212 7A01 6000 01F2 2F0A"            /* .0TO`...z.`..�/. */
	$"3F3C 0003 486E FEF2 486E FEFC 486E FEF4"            /* ?<..Hn��Hn��Hn�� */
	$"A98D 554F 2F2E FEFC A960 301F 3600 2F0A"            /* ��UO/.���`0.6./. */
	$"3F3C 0004 486E FEF2 486E FEFC 486E FEF4"            /* ?<..Hn��Hn��Hn�� */
	$"A98D 2F2E FEFC A955 594F 2F0A 486E FDE4"            /* ��/.���UYO/.Hn�� */
	$"486D FFBE 1F3C 0001 4267 3003 0640 0083"            /* Hm��.<..Bg0..@.� */
	$"3F00 2F3C 03F1 0032 42A7 A954 205F 2D48"            /* ?./<.�.2B��T _-H */
	$"FEFC 3803 0644 0083 206E FEFC 2050 2068"            /* ��8..D.� n�� P h */
	$"001C 2050 3144 0004 594F 3F04 A9BF 205F"            /* .. P1D..YO?.�� _ */
	$"226E FEFC 2251 2269 001C 2251 2288 4AAE"            /* "n��"Q"i.."Q"�J� */
	$"FEFC 6606 3F3C 0014 A9C8 2F2E FEFC A96D"            /* ��f.?<..��/.���m */
	$"594F 3F04 A9BF 205F 2F08 3F3C 0001 486E"            /* YO?.�� _/.?<..Hn */
	$"FDF2 A946 486E FDF2 486E FF00 4EBA 0718"            /* ��FHn��Hn�.N�.. */
	$"7600 162E FF00 504F 6002 5343 4A43 6F14"            /* v...�.PO`.SCJCo. */
	$"41EE FF00 7000 1030 3000 0C40 0020 67EA"            /* A��.p..00..@. g� */
	$"6002 5343 4A43 6F10 41EE FF00 7000 1030"            /* `.SCJCo.A��.p..0 */
	$"3000 0C40 0020 66EA 7000 102E FF00 9043"            /* 0..@. f�p...�.�C */
	$"41EE FF00 1180 3000 2F0A 3F3C 0005 486E"            /* A��..�0./.?<..Hn */
	$"FEF2 486E FEFC 486E FEF4 A98D 2F2E FEFC"            /* ��Hn��Hn����/.�� */
	$"41EE FF00 4870 3000 A98F 2F0A 4878 0005"            /* A��.Hp0.��/.Hx.. */
	$"3F3C 7FFF A97E 6000 00B6 2F0A 3F3C 0004"            /* ?<.��~`..�/.?<.. */
	$"486E FEF2 486E FEFC 486E FEF4 A98D 554F"            /* Hn��Hn��Hn����UO */
	$"2F2E FEFC A960 301F 3600 594F 3F04 A9BF"            /* /.���`0.6.YO?.�� */
	$"205F 2F08 3F03 486E FDF2 A946 486E FDF2"            /*  _/.?.Hn��FHn�� */
	$"486E FF00 4EBA 0660 7600 162E FF00 504F"            /* Hn�.N�.`v...�.PO */
	$"6002 5343 4A43 6F14 41EE FF00 7000 1030"            /* `.SCJCo.A��.p..0 */
	$"3000 0C40 0020 67EA 6002 5343 4A43 6F10"            /* 0..@. g�`.SCJCo. */
	$"41EE FF00 7000 1030 3000 0C40 0020 66EA"            /* A��.p..00..@. f� */
	$"7000 102E FF00 9043 41EE FF00 1180 3000"            /* p...�.�CA��..�0. */
	$"2F0A 3F3C 0005 486E FEF2 486E FEFC 486E"            /* /.?<..Hn��Hn��Hn */
	$"FEF4 A98D 2F2E FEFC 41EE FF00 4870 3000"            /* ����/.��A��.Hp0. */
	$"A98F 2F0A 4878 0005 3F3C 7FFF A97E 4A05"            /* ��/.Hx..?<.��~J. */
	$"6700 FD96 2F0A A983 2F2D FBD8 2F2D FBDC"            /* g.��/.��/-��/-�� */
	$"203C 0008 0006 AB1D 4CDF 0438 4E5E 4E75"            /*  <....�.L�.8N^Nu */
	$"8D47 6574 6369 636E 4944 5F5F 4676 0000"            /* �GetcicnID__Fv.. */
	$"4E56 FF16 48E7 1F38 7000 A122 2848 594F"            /* NV�.H�.8p.�"(HYO */
	$"2F0C 2F3C 5049 4354 486E FF16 A9FD 201F"            /* /./<PICTHn�.�� . */
	$"4A80 6C16 3F05 A998 486D FEFA 486D FEF9"            /* J�l.?.��Hm��Hm�� */
	$"4EBA 0514 504F 6000 0400 554F 2F0C 486E"            /* N�..PO`...UO/.Hn */
	$"FF98 2F3C 0100 0001 4878 0001 303C 0800"            /* ��/<....Hx..0<.. */
	$"A831 301F 282E FFA2 204C A029 2044 A029"            /* �10.(.�� L�) D�) */
	$"200C 6704 4A84 6612 486D FFC4 486D FEF9"            /*  .g.J�f.Hm��Hm�� */
	$"4EBA 04D4 4EBA 04A6 504F 554F 486E FF2C"            /* N�.�N�.�POUOHn�, */
	$"3F3C 0008 486E FFB0 2F04 42A7 42A7 203C"            /* ?<..Hn��/.B�B� < */
	$"0016 0000 AB1D 301F 2F2E FF2C 42A7 203C"            /* ....�.0./.�,B� < */
	$"0008 0006 AB1D 4878 001E A863 2079 FFFF"            /* ....�.Hx..�c y�� */
	$"FBD2 4868 0010 A8A3 2F0C 486E FFB0 A8F6"            /* ��Hh..��/.Hn���� */
	$"594F 2F2E FF2C 203C 0004 0017 AB1D 205F"            /* YO/.�, <....�. _ */
	$"2648 554F 2F0B 203C 0004 0001 AB1D 101F"            /* &HUO/. <....�... */
	$"554F 486E FF22 3F3C 0001 486E FFB0 42A7"            /* UOHn�"?<..Hn��B� */
	$"42A7 42A7 203C 0016 0000 AB1D 301F 2F2E"            /* B�B� <....�.0./. */
	$"FF22 42A7 203C 0008 0006 AB1D 2079 FFFF"            /* �"B� <....�. y�� */
	$"FBD2 4868 0010 A8A3 2F0C 486E FFB0 A8F6"            /* ��Hh..��/.Hn���� */
	$"594F 2F2E FF22 203C 0004 0017 AB1D 205F"            /* YO/.�" <....�. _ */
	$"2C08 554F 2F06 203C 0004 0001 AB1D 101F"            /* ,.UO/. <....�... */
	$"554F 486E FF1E 3F3C 0001 486E FFB0 42A7"            /* UOHn�.?<..Hn��B� */
	$"42A7 42A7 203C 0016 0000 AB1D 301F 2F2E"            /* B�B� <....�.0./. */
	$"FF1E 42A7 203C 0008 0006 AB1D 2079 FFFF"            /* �.B� <....�. y�� */
	$"FBD2 4868 0010 A8A3 594F 2F2E FF1E 203C"            /* ��Hh..��YO/.�. < */
	$"0004 0017 AB1D 205F 2E08 554F 2F07 203C"            /* ....�. _..UO/. < */
	$"0004 0001 AB1D 101F 486E FFB0 4EBA 0454"            /* ....�...Hn��N�.T */
	$"2448 3D7C FFFF FF2A 3D7C FFFF FF28 3D7C"            /* $H=|���*=|���(=| */
	$"FFFF FF26 2F13 486A 0002 486E FFB0 486E"            /* ���&/.Hj..Hn��Hn */
	$"FFB0 486E FF26 42A7 42A7 AA4F 486A 0002"            /* ��Hn�&B�B��OHj.. */
	$"2047 2F10 486E FFB0 486E FFB0 3F3C 0004"            /*  G/.Hn��Hn��?<.. */
	$"42A7 A8EC 2F0A 4EBA 04D0 2F2D FBD8 2F2D"            /* B���/.N�.�/-��/- */
	$"FBDC 203C 0008 0006 AB1D 2053 2253 3029"            /* �� <....�. S"S0) */
	$"000A 9068 0006 2053 3228 0004 0241 7FFF"            /* ..�h.. S2(...A.� */
	$"C3C0 5541 48C1 2D41 FF1A 2F0B 486E FF30"            /* ��UAH�-A�./.Hn�0 */
	$"2F3C 0100 0001 4878 0001 303C 0801 A831"            /* /<....Hx..0<..�1 */
	$"301F 7054 A322 2448 2052 42A8 0040 2046"            /* 0.pT�"$H RB�.@ F */
	$"2050 3028 0004 0240 7FFF 2052 3140 0044"            /*  P0(...@.� R1@.D */
	$"2052 216E FF48 0046 216E FF4C 004A 2052"            /*  R!n�H.F!n�L.J R */
	$"2252 3629 004A 9668 0046 2052 C7E8 0044"            /* "R6).J�h.F R��.D */
	$"48C3 2052 42A8 0032 2052 2252 3368 0044"            /* H� RB�.2 R"R3h.D */
	$"0036 2052 216E FF48 0038 216E FF4C 003C"            /* .6 R!n�H.8!n�L.< */
	$"2052 4290 2053 2252 3368 0004 0004 2053"            /*  RB� S"R3h.... S */
	$"2252 2368 0006 0006 2368 000A 000A 2052"            /* "R#h....#h.... R */
	$"4268 000E 2052 4268 0010 2052 42A8 0012"            /* Bh.. RBh.. RB�.. */
	$"2052 216E FF3E 0016 2052 216E FF42 001A"            /*  R!n�>.. R!n�B.. */
	$"2052 316E FF46 0020 2052 42A8 0026 2052"            /*  R1n�F.  RB�.& R */
	$"42A8 002E 2052 4268 001E 2052 317C 0001"            /* B�.. RBh.. R1|.. */
	$"0022 2052 316E FF46 0024 2052 2144 002A"            /* ." R1n�F.$ R!D.* */
	$"2052 214B 004E 2052 2068 002A 2050 3268"            /*  R!K.N R h.* P2h */
	$"0006 2A09 E78D 7210 DA81 2003 D080 7254"            /* ..*.�r.ځ .ЀrT */
	$"D081 D085 D0AE FF1A 204A A024 2003 E088"            /* ЁЅЮ�. J�$ .�� */
	$"E088 E088 EE88 D083 E280 D080 2052 43F0"            /* �����Ѓ�Ѐ RC� */
	$"0852 2046 2050 2050 2003 A02E 2047 2050"            /* .R F P P .�. G P */
	$"2050 2252 43E9 0052 2003 A02E 2003 D080"            /*  P"RC�.R .�. .Ѐ */
	$"2052 43F0 0852 2052 2068 002A 2050 2005"            /*  RC�.R R h.* P . */
	$"A02E 2005 E088 E088 E088 EE88 D085 E280"            /* �. .�������Ѕ� */
	$"D083 D080 2052 43F0 0852 2053 2050 202E"            /* ЃЀ RC�.R S P . */
	$"FF1A A02E A994 301F 3A00 486D FBE0 1F3C"            /* �.�.��0.:.Hm��.< */
	$"0003 700D AA52 301F 3600 3F03 A998 594F"            /* ..p.�R0.6.?.��YO */
	$"2F3C 6369 636E 3F2E 0008 A9A0 205F 2C08"            /* /<cicn?...�� _,. */
	$"4A86 544F 6722 2F06 A9AD 3F03 A999 3F03"            /* J�TOg"/.��?.��?. */
	$"A99A 554F 486D FBE0 1F3C 0003 700D AA52"            /* ��UOHm��.<..p.�R */
	$"301F 3600 3F03 A998 2F0A A992 2F0A 2F3C"            /* 0.6.?.��/.��/./< */
	$"6369 636E 3F2E 0008 486D FFE8 A9AB 2F0A"            /* cicn?...Hm�詫/. */
	$"3F3C 0060 A9A7 2F0A A9AA 2F0A A9B0 3F03"            /* ?<.`��/.��/.��?. */
	$"A999 3F03 A99A 3F05 A998 2F0B 203C 0004"            /* ��?.��?.��/. <.. */
	$"0002 AB1D 2F2E FF2C 203C 0004 0004 AB1D"            /* ..�./.�, <....�. */
	$"204C A02A 2044 A02A 4CDF 1CF8 4E5E 4E75"            /*  L�* D�*L�.�N^Nu */
	$"8D63 6C69 7032 6369 636E 5F5F 4673 0000"            /* �clip2cicn__Fs.. */
	$"4E56 0000 3F3C 0006 A9C8 4E5E 4E75 9448"            /* NV..?<..��N^Nu�H */
	$"616E 646C 6545 6469 7443 686F 6963 655F"            /* andleEditChoice_ */
	$"5F46 6900 0000 4E56 0000 206E 0008 226E"            /* _Fi...NV.. n.."n */
	$"000C 7200 6002 5241 4A30 1000 6706 0C41"            /* ..r.`.RAJ0..g..A */
	$"00FF 6DF2 3401 600C 3001 5340 13B0 0000"            /* .�m�4.`.0.S@.�.. */
	$"1000 5341 4A41 6EF0 1282 2049 4E5E 4E75"            /* ..SAJAn�.� IN^Nu */
	$"8D43 3250 6173 5F5F 4650 6350 5563 0000"            /* �C2Pas__FPcPUc.. */
	$"4E56 0000 4879 FFFF FBD2 A86E A8FE 2F3C"            /* NV..Hy���Ҩn��/< */
	$"0000 FFFF 201F A032 A912 A930 A9CC 42A7"            /* ..�� .�2�.�0��B� */
	$"A97B A850 4878 0021 A862 4878 001E A863"            /* �{�PHx.!�bHx..�c */
	$"A063 A036 A036 A036 A036 A036 41F9 FFFF"            /* �c�6�6�6�6�6A��� */
	$"FB54 20B8 020C 4E5E 4E75 8F49 6E69 7454"            /* �T �..N^Nu�InitT */
	$"6F6F 6C42 6F78 5F5F 4676 0000 4E56 0000"            /* oolBox__Fv..NV.. */
	$"2F3C 0000 FFFF 201F A032 A9F4 4E5E 4E75"            /* /<..�� .�2��N^Nu */
	$"9345 7869 7441 7070 6C69 6361 7469 6F6E"            /* �ExitApplication */
	$"5F5F 4676 0000 4E56 FDF8 486E FDFC 486E"            /* __Fv..NV��Hn��Hn */
	$"FDF8 203C 0008 0005 AB1D 486E FF00 2F2E"            /* �� <....�.Hn�./. */
	$"0008 4EBA FF12 486E FE00 2F2E 000C 4EBA"            /* ..N��.Hn�./...N� */
	$"FF06 486E FF00 486E FE00 42A7 42A7 A98B"            /* �.Hn�.Hn�.B�B��� */
	$"3F3C 0BB8 42A7 A987 301F 2F2E FDFC 2F2E"            /* ?<.�B���0./.��/. */
	$"FDF8 203C 0008 0006 AB1D 4E5E 4E75 9544"            /* �� <....�.N^Nu�D */
	$"6973 706C 6179 416C 6572 745F 5F46 5043"            /* isplayAlert__FPC */
	$"6350 4363 0000 4E56 0000 226E 0008 206E"            /* cPCc..NV.."n.. n */
	$"000C 7000 7200 1210 6008 13B0 0000 0000"            /* ..p.r...`..�.... */
	$"5240 B041 6FF4 4E5E 4E75 9443 6F70 7953"            /* R@�Ao�N^Nu�CopyS */
	$"7472 696E 675F 5F46 5055 6350 4355 6300"            /* tring__FPUcPCUc. */
	$"0000 4E56 FFF4 2F0A 246E 0008 486E FFF4"            /* ..NV��/.$n..Hn�� */
	$"A874 2D52 FFF8 2D6A 0004 FFFC 486E FFF8"            /* �t-R��-j..��Hn�� */
	$"302A 0002 4440 3F00 3012 4440 3F00 A8A8"            /* 0*..D@?.0.D@?.�� */
	$"706C A31E 2448 200A 6766 2F0A A86F 256E"            /* pl�.$H .gf/.�o%n */
	$"FFF8 0008 256E FFFC 000C 700F D06E FFFE"            /* ��..%n��..p.�n�� */
	$"E840 D040 3540 0006 302A 0006 C1EE FFFC"            /* �@�@5@..0*..���� */
	$"A31E 2548 0002 4AAA 0002 672A 256E FFF8"            /* �.%H..J�..g*%n�� */
	$"0010 256E FFFC 0014 486E FFF8 A87B 2F2A"            /* ..%n��..Hn���{/* */
	$"0018 486E FFF8 A8DF 4878 001E A863 486E"            /* ..Hn����Hx..�cHn */
	$"FFF8 A8A3 600A 2F0A A87D 204A A01F 95CA"            /* ����`./.�} J�.�� */
	$"2F2E FFF4 A873 204A 245F 4E5E 4E75 9743"            /* /.���s J$_N^Nu�C */
	$"7265 6174 6547 7261 6650 6F72 745F 5F46"            /* reateGrafPort__F */
	$"5034 5265 6374 0000 4E56 0000 2F0A 246E"            /* P4Rect..NV../.$n */
	$"0008 2F0A A87D 206A 0002 A01F 204A A01F"            /* ../.�} j..�. J�. */
	$"245F 4E5E 4E75 9C44 6973 706F 7365 4772"            /* $_N^Nu�DisposeGr */
	$"6166 506F 7274 5F5F 4650 3847 7261 6650"            /* afPort__FP8GrafP */
	$"6F72 7400 0000 206F 0008 3F3C 0001 A9EE"            /* ort... o..?<..�� */
	$"206F 0004 2080 4EFA 000E 206F 0004 202F"            /*  o.. �N�.. o.. / */
	$"0008 4267 A9EE 205F 504F 4ED0 4A6D FC6C"            /* ..Bg�� _PON�Jm�l */
	$"6646 4267 4EB9 0000 1942 544F 6014 53AD"            /* fFBgN�...BTO`.S� */
	$"FC6E 202D FC6E E588 41ED FD7E 2070 0800"            /* �n -�n�A��~ p.. */
	$"4E90 4AAD FC6E 6EE6 4267 4EB9 0000 1944"            /* N�J��nn�BgN�...D */
	$"4EB9 0000 04AE 4AAD FC76 544F 670A 206D"            /* N�...�J��vTOg. m */
	$"FC76 4E90 42AD FC76 3F2F 0004 4EB9 0000"            /* �vN�B��v?/..N�.. */
	$"18F6 544F 4E75 4267 4EB9 0000 1942 544F"            /* .�TONuBgN�...BTO */
	$"6014 53AD FC72 202D FC72 E588 41ED FC7E"            /* `.S��r -�r�A��~ */
	$"2070 0800 4E90 4AAD FC72 6EE6 4267 4EB9"            /*  p..N�J��rn�BgN� */
	$"0000 1944 4EB9 0000 1940 4AAD FC7A 544F"            /* ...DN�...@J��zTO */
	$"670A 206D FC7A 4E90 42AD FC7A A9F4 4E75"            /* g. m�zN�B��z��Nu */
	$"4E75 4E75 4E75"                                     /* NuNuNu */
};

data 'CODE' (0, purgeable, protected) {
	$"0000 0170 0000 0520 0000 0008 0000 0020"            /* ...p... .......  */
	$"0000 3F3C 0001 A9F0"                                /* ..?<..�� */
};

data 'DATA' (0, purgeable, protected) {
	$"0000 027F FFFF FE7E AA54 6869 7320 6265"            /* ....���~�This be */
	$"7461 206F 6620 636C 6970 3263 6963 6E20"            /* ta of clip2cicn  */
	$"6578 7069 7265 6420 6F6E 204A 756C 7920"            /* expired on July  */
	$"312C 2031 2039 9038 2E00 506C 6561 7365"            /* 1, 1 9�8..Please */
	$"2067 6F20 746F 2068 2074 8170 3A20 2FB4"            /*  go to h t�p: /� */
	$"6361 6665 2E61 6D62 726F 7369 6173 772E"            /* cafe.ambrosiasw. */
	$"636F 6D2F 6775 692D 6365 6E74 7261 6C2F"            /* com/gui-central/ */
	$"2074 6F20 6765 7420 6120 6E65 7720 7665"            /*  to get a new ve */
	$"7273 696F 6E42 B954 6865 2063 6C69 7062"            /* rsionB�The clipb */
	$"6F61 7264 2069 7320 6569 7468 6572 2065"            /* oard is either e */
	$"6D70 7479 206F 7220 646F 6573 6E27 7420"            /* mpty or doesn't  */
	$"636F 6E74 6169 6E20 6120 7069 6374 7572"            /* contain a pictur */
	$"6541 C754 6865 2073 6368 656D 6520 796F"            /* eA�The scheme yo */
	$"7520 6368 6F73 6520 6973 2074 6865 2061"            /* u chose is the a */
	$"6374 6976 6520 6F6E 652E 0045 6469 7469"            /* ctive one..Editi */
	$"6E67 2074 6865 2061 6374 6976 6520 7363"            /* ng the active sc */
	$"6865 6D65 2063 616E 2063 6F20 72B4 7570"            /* heme can co r�up */
	$"7420 6974 2C20 706C 6561 7365 2073 7769"            /* t it, please swi */
	$"7463 6820 746F 2061 6E6F 7468 6572 2073"            /* tch to another s */
	$"6368 656D 6520 616E 6420 7472 7920 6167"            /* cheme and try ag */
	$"6169 6E41 AE28 000A 003C 00CD 0563 6963"            /* ainA�(...<.�.cic */
	$"6E3A 4361 6E27 7420 6C6F 6164 2074 6865"            /* n:Can't load the */
	$"2070 6963 7475 7265 206F 7220 7468 6520"            /*  picture or the  */
	$"636C 7574 4196 1663 7265 6174 6564 2077"            /* clutA�.created w */
	$"6974 6820 636C 6970 3263 6963 6E40 0000"            /* ith clip2cicn@.. */
	$"0000 2800 0000 0028 4181 8208 4210 8180"            /* ..(....(A��.B.�� */
	$"EA42 8227 821C 4282 0181 0447 8119 4642"            /* �B�'�.B�.�.G�.FB */
	$"8060 4181 0108 5982 04D4 8044 8404 F080"            /* �`A�..Y�.ԀD�.�� */
	$"000E 4281 055E 4583 057E 8020 4384 05C4"            /* ..B�.^E�.~� C�.� */
	$"8000 0842 8206 2280 4484 0648 8063 6242"            /* �..B�."�D�.H�cbB */
	$"8107 6845 8207 8A80 4483 07B6 8001 4384"            /* �.hE�.��D�.��.C� */
	$"0858 8000 1042 8308 9880 2043 8109 1A45"            /* .X�..B�.�� C�..E */
	$"8409 4480 6104 4284 09D4 8000 0242 830A"            /* �.D�a.B�.Ԁ..B�. */
	$"3480 2043 830A 7A80 0743 810A E042 803A"            /* 4� C�.z�.C�.�B�: */
	$"4184 0B3C 80E1 2442 820D 9E80 4484 0DD8"            /* A�.<��$B�.��D�.� */
	$"8000 7042 810E 8442 8034 4181 1180 4280"            /* �.pB�.�B�4A�.�B� */
	$"2E41 8215 D080 4481 15F6 4582 1640 8044"            /* .A�.ЀD�.�E�.@�D */
	$"8216 9C80 4481 16C6 4280 2841 8117 3645"            /* �.��D�.�B�(A�.6E */
	$"8417 7280 200C 4283 1838 8020 4381 1876"            /* �.r� .B�.8� C�.v */
	$"4300 0000 0000 0000 0001 A000 0000 0000"            /* C.........�..... */
	$"0000 0641 8E47 E9D0 D042 28E4 0000 000B"            /* ...A�G���B(�.... */
	$"406E 838A 854B D393 838E 8693 8300 0000"            /* @n���Kӓ�����... */
	$"00"                                                 /* . */
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
		"clip2cicn (PPC)"
	}
};

