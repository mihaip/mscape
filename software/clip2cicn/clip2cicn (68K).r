/* Resource fork of software/clip2cicn/clip2cicn (68K) */
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

resource 'DITL' (128) {
	{	/* array DITLarray: 5 elements */
		/* [1] */
		{181, 212, 201, 270},
		Button {
			enabled,
			"OK"
		},
		/* [2] */
		{10, 10, 120, 270},
		UserItem {
			enabled
		},
		/* [3] */
		{125, 10, 143, 270},
		StaticText {
			disabled,
			"by Mihai Parparita"
		},
		/* [4] */
		{159, 10, 177, 270},
		StaticText {
			enabled,
			"http://www.mscape.com/"
		},
		/* [5] */
		{142, 10, 160, 270},
		StaticText {
			enabled,
			"mihai@mscape.com"
		}
	}
};

resource 'DITL' (129, "Insert Cicn") {
	{	/* array DITLarray: 11 elements */
		/* [1] */
		{240, 182, 260, 240},
		Button {
			enabled,
			"Insert"
		},
		/* [2] */
		{240, 10, 260, 68},
		Button {
			enabled,
			"Close"
		},
		/* [3] */
		{149, 10, 169, 240},
		Control {
			enabled,
			128
		},
		/* [4] */
		{179, 10, 199, 240},
		Control {
			enabled,
			132
		},
		/* [5] */
		{211, 186, 227, 236},
		EditText {
			enabled,
			"-14336"
		},
		/* [6] */
		{213, 11, 229, 30},
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
		},
		/* [11] */
		{240, 113, 260, 171},
		Button {
			enabled,
			"Extract"
		}
	}
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

resource 'MENU' (132) {
	132,
	textMenuProc,
	0x7FFFFEDB,
	enabled,
	"Document Window",
	{	/* array: 11 elements */
		/* [1] */
		"Inactive -14336", noIcon, noKey, noMark, plain,
		/* [2] */
		"Active -14335", noIcon, noKey, noMark, plain,
		/* [3] */
		"-", noIcon, noKey, noMark, plain,
		/* [4] */
		"Grow Box Inactive -14334", noIcon, noKey, noMark, plain,
		/* [5] */
		"Grow Box Active  -14333", noIcon, noKey, noMark, plain,
		/* [6] */
		"-", noIcon, noKey, noMark, plain,
		/* [7] */
		"Collapsed Inactive -14332", noIcon, noKey, noMark, plain,
		/* [8] */
		"Collapsed Active -14331", noIcon, noKey, noMark, plain,
		/* [9] */
		"-", noIcon, noKey, noMark, plain,
		/* [10] */
		"Pressed Widgets -14330", noIcon, noKey, noMark, plain,
		/* [11] */
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
	0x7FFFFFFB,
	enabled,
	"Movable Dialog",
	{	/* array: 5 elements */
		/* [1] */
		"Inactive -14324", noIcon, noKey, noMark, plain,
		/* [2] */
		"Active -14323", noIcon, noKey, noMark, plain,
		/* [3] */
		"-", noIcon, noKey, noMark, plain,
		/* [4] */
		"Grow Box Inactive -14310", noIcon, noKey, noMark, plain,
		/* [5] */
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
	0x7FFFF6DB,
	enabled,
	"Titled Utility Window",
	{	/* array: 14 elements */
		/* [1] */
		"Inactive -14304", noIcon, noKey, noMark, plain,
		/* [2] */
		"Active -14303", noIcon, noKey, noMark, plain,
		/* [3] */
		"-", noIcon, noKey, noMark, plain,
		/* [4] */
		"Grow Box Inactive -14302", noIcon, noKey, noMark, plain,
		/* [5] */
		"Grow Box Active -14301", noIcon, noKey, noMark, plain,
		/* [6] */
		"-", noIcon, noKey, noMark, plain,
		/* [7] */
		"Small Grow Box Inactive -14286", noIcon, noKey, noMark, plain,
		/* [8] */
		"Small Grow Box Active -14285", noIcon, noKey, noMark, plain,
		/* [9] */
		"-", noIcon, noKey, noMark, plain,
		/* [10] */
		"Collapsed Inactive -14300", noIcon, noKey, noMark, plain,
		/* [11] */
		"Collapsed Active -14299", noIcon, noKey, noMark, plain,
		/* [12] */
		"-", noIcon, noKey, noMark, plain,
		/* [13] */
		"Pressed Widgets -14298", noIcon, noKey, noMark, plain,
		/* [14] */
		"Alternate Zoomboxes -14297", noIcon, noKey, noMark, plain
	}
};

resource 'MENU' (138) {
	138,
	textMenuProc,
	0x7FFFFFDB,
	enabled,
	"Side Utility Window",
	{	/* array: 8 elements */
		/* [1] */
		"Inactive -14296", noIcon, noKey, noMark, plain,
		/* [2] */
		"Active -14295", noIcon, noKey, noMark, plain,
		/* [3] */
		"-", noIcon, noKey, noMark, plain,
		/* [4] */
		"Collapsed Inactive -14292", noIcon, noKey, noMark, plain,
		/* [5] */
		"Collapsed Active -14291", noIcon, noKey, noMark, plain,
		/* [6] */
		"-", noIcon, noKey, noMark, plain,
		/* [7] */
		"Pressed Widgets -14290", noIcon, noKey, noMark, plain,
		/* [8] */
		"Alternate Zoomboxes -14289", noIcon, noKey, noMark, plain
	}
};

resource 'MENU' (139) {
	139,
	textMenuProc,
	0x7FFFFFDB,
	enabled,
	"Titleless Utility Window",
	{	/* array: 8 elements */
		/* [1] */
		"Inactive -14288", noIcon, noKey, noMark, plain,
		/* [2] */
		"Active -14287", noIcon, noKey, noMark, plain,
		/* [3] */
		"-", noIcon, noKey, noMark, plain,
		/* [4] */
		"Collapsed Inactive -14284", noIcon, noKey, noMark, plain,
		/* [5] */
		"Collapsed Active -14283", noIcon, noKey, noMark, plain,
		/* [6] */
		"-", noIcon, noKey, noMark, plain,
		/* [7] */
		"Grow Box Inactive -14278", noIcon, noKey, noMark, plain,
		/* [8] */
		"Grow Box Active -14277", noIcon, noKey, noMark, plain
	}
};

resource 'MENU' (142) {
	142,
	textMenuProc,
	0x7FFFFFF7,
	enabled,
	"Push Button",
	{	/* array: 6 elements */
		/* [1] */
		"Inactive -10240", noIcon, noKey, noMark, plain,
		/* [2] */
		"Active -10239", noIcon, noKey, noMark, plain,
		/* [3] */
		"Pressed -10238", noIcon, noKey, noMark, plain,
		/* [4] */
		"-", noIcon, noKey, noMark, plain,
		/* [5] */
		"Ring Active -10231", noIcon, noKey, noMark, plain,
		/* [6] */
		"Ring Inactive -10232", noIcon, noKey, noMark, plain
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
	0x7FFFFFF7,
	enabled,
	"Small Bevel Button",
	{	/* array: 7 elements */
		/* [1] */
		"Off Inactive -10176", noIcon, noKey, noMark, plain,
		/* [2] */
		"Off Active -10175", noIcon, noKey, noMark, plain,
		/* [3] */
		"Off Pressed -10174", noIcon, noKey, noMark, plain,
		/* [4] */
		"-", noIcon, noKey, noMark, plain,
		/* [5] */
		"On Inactive -10173", noIcon, noKey, noMark, plain,
		/* [6] */
		"On Active -10172", noIcon, noKey, noMark, plain,
		/* [7] */
		"On Pressed -10171", noIcon, noKey, noMark, plain
	}
};

resource 'MENU' (146) {
	146,
	textMenuProc,
	0x7FFFFFF7,
	enabled,
	"Normal Bevel Button",
	{	/* array: 7 elements */
		/* [1] */
		"Off Inactive -10167", noIcon, noKey, noMark, plain,
		/* [2] */
		"Off Active -10166", noIcon, noKey, noMark, plain,
		/* [3] */
		"Off Pressed -10165", noIcon, noKey, noMark, plain,
		/* [4] */
		"-", noIcon, noKey, noMark, plain,
		/* [5] */
		"On Inactive -10164", noIcon, noKey, noMark, plain,
		/* [6] */
		"On Active -10163", noIcon, noKey, noMark, plain,
		/* [7] */
		"On Pressed -10162", noIcon, noKey, noMark, plain
	}
};

resource 'MENU' (147) {
	147,
	textMenuProc,
	0x7FFFFFF7,
	enabled,
	"Large Bevel Button",
	{	/* array: 7 elements */
		/* [1] */
		"Off Inactive -10158", noIcon, noKey, noMark, plain,
		/* [2] */
		"Off Active -10157", noIcon, noKey, noMark, plain,
		/* [3] */
		"Off Pressed -10156", noIcon, noKey, noMark, plain,
		/* [4] */
		"-", noIcon, noKey, noMark, plain,
		/* [5] */
		"On Inactive -10155", noIcon, noKey, noMark, plain,
		/* [6] */
		"On Active -10154", noIcon, noKey, noMark, plain,
		/* [7] */
		"On Pressed -10153", noIcon, noKey, noMark, plain
	}
};

resource 'MENU' (148) {
	148,
	textMenuProc,
	0x7FFFF777,
	enabled,
	"Disclosure Triangle",
	{	/* array: 15 elements */
		/* [1] */
		"Closed Inactive -10112", noIcon, noKey, noMark, plain,
		/* [2] */
		"Closed Active -10111", noIcon, noKey, noMark, plain,
		/* [3] */
		"Closed Pressed -10110", noIcon, noKey, noMark, plain,
		/* [4] */
		"-", noIcon, noKey, noMark, plain,
		/* [5] */
		"Opening frame one -10109", noIcon, noKey, noMark, plain,
		/* [6] */
		"Opening frame two -10108", noIcon, noKey, noMark, plain,
		/* [7] */
		"Opening frame three -10107", noIcon, noKey, noMark, plain,
		/* [8] */
		"-", noIcon, noKey, noMark, plain,
		/* [9] */
		"Open Inactive -10104", noIcon, noKey, noMark, plain,
		/* [10] */
		"Open Active -10103", noIcon, noKey, noMark, plain,
		/* [11] */
		"Open Pressed -10102", noIcon, noKey, noMark, plain,
		/* [12] */
		"-", noIcon, noKey, noMark, plain,
		/* [13] */
		"Closing frame one -10101", noIcon, noKey, noMark, plain,
		/* [14] */
		"Closing frame two -10100", noIcon, noKey, noMark, plain,
		/* [15] */
		"Closing frame three -10099", noIcon, noKey, noMark, plain
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
		"Open Scheme…", noIcon, "O", noMark, plain,
		/* [2] */
		"-", noIcon, noKey, noMark, plain,
		/* [3] */
		"Quit", noIcon, "Q", noMark, plain
	}
};

resource 'MENU' (141) {
	141,
	textMenuProc,
	0x7FFFF777,
	enabled,
	"Menubar",
	{	/* array: 15 elements */
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
		"Solo Menu Divider -12231", noIcon, noKey, noMark, plain,
		/* [12] */
		"-", noIcon, noKey, noMark, plain,
		/* [13] */
		"Normal Application Menu Grabber -12231", noIcon, noKey, noMark, plain,
		/* [14] */
		"Pressed Application Menu Grabber -12230", noIcon, noKey, noMark, plain,
		/* [15] */
		"Inactive Application Menu Grabber -12229", noIcon, noKey, noMark, plain
	}
};

resource 'MENU' (131) {
	131,
	textMenuProc,
	allEnabled,
	enabled,
	"cicn types",
	{	/* array: 34 elements */
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
		"Left Facing Disclosure Triangle", noIcon, noKey, noMark, plain,
		/* [19] */
		"Little Arrows", noIcon, noKey, noMark, plain,
		/* [20] */
		"Tabs", noIcon, noKey, noMark, plain,
		/* [21] */
		"Placard", noIcon, noKey, noMark, plain,
		/* [22] */
		"Dialog & Alert Colors", noIcon, noKey, noMark, plain,
		/* [23] */
		"Finder Header", noIcon, noKey, noMark, plain,
		/* [24] */
		"Icon Colors", noIcon, noKey, noMark, plain,
		/* [25] */
		"Checkboxes", noIcon, noKey, noMark, plain,
		/* [26] */
		"Radio Buttons", noIcon, noKey, noMark, plain,
		/* [27] */
		"Horizontal Scrollbar", noIcon, noKey, noMark, plain,
		/* [28] */
		"Vertical Scrollbar", noIcon, noKey, noMark, plain,
		/* [29] */
		"Ghost Thumbs", noIcon, noKey, noMark, plain,
		/* [30] */
		"Pop-up Menu", noIcon, noKey, noMark, plain,
		/* [31] */
		"Horizontal Slider", noIcon, noKey, noMark, plain,
		/* [32] */
		"Vertical Slider", noIcon, noKey, noMark, plain,
		/* [33] */
		"Alert Icons", noIcon, noKey, noMark, plain,
		/* [34] */
		"Other", noIcon, noKey, noMark, plain
	}
};

resource 'MENU' (149) {
	149,
	textMenuProc,
	0x7FFFFF77,
	enabled,
	"Left Facing Disclosure Triangle",
	{	/* array: 11 elements */
		/* [1] */
		"Closed Inactive -10096", noIcon, noKey, noMark, plain,
		/* [2] */
		"Closed Active -10095", noIcon, noKey, noMark, plain,
		/* [3] */
		"Closed Pressed -10094", noIcon, noKey, noMark, plain,
		/* [4] */
		"-", noIcon, noKey, noMark, plain,
		/* [5] */
		"Opening frame one -10093", noIcon, noKey, noMark, plain,
		/* [6] */
		"Opening frame two -10092", noIcon, noKey, noMark, plain,
		/* [7] */
		"Opening frame three -10107", noIcon, noKey, noMark, plain,
		/* [8] */
		"-", noIcon, noKey, noMark, plain,
		/* [9] */
		"Closing frame one -10085", noIcon, noKey, noMark, plain,
		/* [10] */
		"Closing frame two -10084", noIcon, noKey, noMark, plain,
		/* [11] */
		"Closing frame three -10083", noIcon, noKey, noMark, plain
	}
};

resource 'MENU' (150) {
	150,
	textMenuProc,
	0x7FFFFFFB,
	enabled,
	"Little Arrows",
	{	/* array: 5 elements */
		/* [1] */
		"Inactive -10048", noIcon, noKey, noMark, plain,
		/* [2] */
		"Active -10047", noIcon, noKey, noMark, plain,
		/* [3] */
		"-", noIcon, noKey, noMark, plain,
		/* [4] */
		"Up Pressed -10046", noIcon, noKey, noMark, plain,
		/* [5] */
		"Down Pressed -10045", noIcon, noKey, noMark, plain
	}
};

resource 'MENU' (151) {
	151,
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

resource 'MENU' (152) {
	152,
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

resource 'MENU' (153) {
	153,
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

resource 'MENU' (154) {
	154,
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

resource 'MENU' (155) {
	155,
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

resource 'MENU' (156) {
	156,
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

resource 'MENU' (157) {
	157,
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

resource 'MENU' (158) {
	158,
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

resource 'MENU' (159) {
	159,
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
	0x7FFFFFFB,
	enabled,
	"Ghost Thumbs",
	{	/* array: 5 elements */
		/* [1] */
		"Vertical -8272", noIcon, noKey, noMark, plain,
		/* [2] */
		"Horizontal -8271", noIcon, noKey, noMark, plain,
		/* [3] */
		"-", noIcon, noKey, noMark, plain,
		/* [4] */
		"Small Vertical -8254", noIcon, noKey, noMark, plain,
		/* [5] */
		"Small Horizontal -8253", noIcon, noKey, noMark, plain
	}
};

resource 'MENU' (161) {
	161,
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

resource 'MENU' (162) {
	162,
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

resource 'MENU' (164) {
	164,
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

resource 'MENU' (165) {
	165,
	textMenuProc,
	allEnabled,
	enabled,
	"Others",
	{	/* array: 1 elements */
		/* [1] */
		"Other", noIcon, noKey, noMark, 2
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
		"Active -12320", noIcon, noKey, noMark, plain,
		/* [2] */
		"Inactive -12318", noIcon, noKey, noMark, plain
	}
};

resource 'CNTL' (128) {
	{149, 10, 169, 240},
	0,
	visible,
	50,
	131,
	1008,
	0,
	"Type:"
};

resource 'CNTL' (132, "Document Window") {
	{179, 10, 199, 240},
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
	{54, 42, 326, 291},
	1043,
	visible,
	goAway,
	0x0,
	129,
	"Insert cicn",
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

resource 'icl4' (-16455) {
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

resource 'icl8' (-16455) {
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

resource 'ICN#' (-16455) {
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

resource 'ics#' (-16455) {
	{	/* array: 2 elements */
		/* [1] */
		$"3800 45C0 BA20 9620 AA70 9220 8210 8210"
		$"7C28 0028 0054 0054 0082 0092 0101 01FF",
		/* [2] */
		$"3800 7DC0 FE20 FE20 FE70 FE20 FE10 FE10"
		$"7C38 0038 007C 007C 00FE 00FE 01FF 01FF"
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

resource 'ics4' (-16455) {
	$"00FF F000 0000 0000 0F00 0F03 3300 0000"
	$"F0AA A0F0 0030 0000 FDDF 0FF0 0030 0000"
	$"FDF0 FDF0 0333 0000 FDDF DDF0 0030 0000"
	$"FDDD DDF0 000F 0000 FDDD DDF0 000F 0000"
	$"0FFF FF00 00F1 F000 0000 0000 00FC F000"
	$"0000 0000 0FCF CF00 0000 0000 0F1F 1F00"
	$"0000 0000 F1C1 C1F0 0000 0000 FC1F 1CF0"
	$"0000 000F C1C1 C1CF 0000 000F FFFF FFFF"
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

resource 'ics8' (-16455) {
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

resource 'vers' (1) {
	0x1,
	0x30,
	release,
	0x0,
	0,
	"1.3",
	"©1998-9 Mihai Parparita"
};

resource 'vers' (2) {
	0x1,
	0x30,
	release,
	0x0,
	0,
	"1.3",
	"http://www.mscape.com/"
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
		9
	}
};

resource 'dlgx' (129) {
	versionZero {
		13
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
	10240,
	{0, 0, 110, 260},
	$"0011 02FF 0C00 FFFE 0000 0048 0000 0048"
	$"0000 0000 0000 006E 0104 0000 0000 00A1"
	$"01F2 0016 3842 494D 0000 0000 0000 006E"
	$"0104 4772 8970 68AF 626A 0001 000A 0000"
	$"0000 006E 0104 0098 8104 0000 0000 006E"
	$"0104 0000 0000 0000 0000 0048 0000 0048"
	$"0000 0000 0008 0001 0008 0000 0000 0000"
	$"0000 0000 0000 0049 7E56 0000 00FF 0000"
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
	$"0302 0101 F200 8100 FD00 0072 FD00 013C"
	$"F4DF FF26 E197 8370 6052 473F 7276 3839"
	$"3B3D 3F40 4140 403E 3C3A 3633 2E2A 2521"
	$"1D19 1512 100D 0B09 0807 05FE 041A 0506"
	$"090E 1319 2027 2D32 3536 3533 2F2A 241E"
	$"1914 0F0C 0907 0503 02FE 01F1 00F8 0007"
	$"595D 0C00 0011 5D1D EE00 0233 BA33 EB00"
	$"0148 2FFA 0003 4C80 6E21 CB00 FD00 0075"
	$"FD00 0117 BBDF FF09 FEBD 8E7B 695A 4D43"
	$"3C38 FE35 0036 FE37 3436 3433 302D 2A26"
	$"221E 1B17 1310 0E0B 0A08 0706 0504 0303"
	$"0203 0305 070A 0F13 191E 2225 2828 2725"
	$"211D 1914 100D 0A07 0504 0202 0101 EF00"
	$"F800 07BB FF5A 0000 5AFB 15EE 0002 6EFF"
	$"6EED 0003 2FA6 FF80 FB00 059E FFE2 FBF3"
	$"33CC 00FD 0000 93FD 0002 144D F7DF FF22"
	$"EC9E 8673 6253 473E 3733 3130 2F2F 2E2D"
	$"2C2A 2825 221F 1C18 1512 0F0D 0A08 0705"
	$"0404 03FE 02FF 01FF 0218 0305 080B 0E12"
	$"1619 1B1C 1C1B 1917 1410 0D0A 0806 0403"
	$"0201 01ED 00F8 0006 62FF A500 00AE C3FE"
	$"0022 405D 4404 0000 3B2E 1959 2100 1555"
	$"591D 0021 751D 0000 0848 5D40 0400 003B"
	$"2E08 4C4C 04FC 0003 5DCB FF80 FC00 0608"
	$"8059 005E FF99 CC00 FD00 0086 FD00 0215"
	$"20A7 DEFF 20C9 917E 6B5B 4D41 3832 2E2B"
	$"2927 2624 2220 1E1B 1916 1311 0E0C 0A08"
	$"0605 0403 0202 F901 0702 0405 080A 0D0F"
	$"11FE 130B 1211 0F0D 0A08 0604 0302 0101"
	$"EB00 F800 2C1D FFEE 040C F76E 0008 BFFF"
	$"C3F3 CC0C 00FF EAE2 FFEE 25E6 D9C3 AE00"
	$"80FF 5D00 22DD F7BF FBD0 1500 FFEA D9FF"
	$"FF95 FB00 023B FF80 F800 0251 FF8C CC00"
	$"FD00 0086 FD00 0316 2144 EDDF FF1D F4A5"
	$"8875 6353 453A 322B 2723 211E 1C1A 1816"
	$"1411 0F0D 0B09 0706 0403 0202 FD01 FB00"
	$"FF01 0602 0405 0708 0A0B FD0C 090A 0908"
	$"0605 0302 0201 01EA 00F7 002B C3FF 445A"
	$"FF1D 0076 FF7F 003C FF76 00FF EE19 82BA"
	$"72FF 1D00 0400 80FF 5D00 B7FF 5100 6AFF"
	$"9900 FFF3 2E1D FFD9 FB00 023B FF80 FA00"
	$"0448 BAF7 CC15 CC00 FD00 007F FD00 0315"
	$"202E 93DE FF1A D693 7F6C 5B4B 3E33 2A24"
	$"1F1B 1816 1412 0F0D 0C0A 0807 0504 0302"
	$"02FE 01F7 00FF 0104 0203 0405 06FC 0707"
	$"0605 0403 0202 0101 E800 F700 106E FF91"
	$"A5CB 0000 B6FF 9D80 80FF B600 FFDD FE00"
	$"1733 FFF7 AE37 0080 FF5D 00F7 FF08 0026"
	$"FFD4 00FF DD00 00FF DDFB 0002 3BFF 80FA"
	$"0004 2F80 D0FB 61CC 00FD 0000 76FD 0004"
	$"141E 2C46 DFDF FF1A FAAF 8A76 6352 4236"
	$"2B23 1C17 1411 0E0C 0A09 0706 0504 0302"
	$"0201 01F3 00FF 01FF 02FF 03FC 04FF 03FF"
	$"02FF 01E6 00F7 0009 25FF D9F3 7B00 00BA"
	$"FFB7 FEA2 0376 00FF DDFD 0016 55BF FFF3"
	$"1580 FF5D 00FF FF00 0022 FFDD 00FF DD00"
	$"00FF DDFB 0002 3BFF 80F8 0002 2EFF D0CC"
	$"00FD 0000 6DFD 0005 121C 2938 85FE DFFF"
	$"17E0 9681 6D5A 493A 2D23 1B15 110D 0B09"
	$"0706 0404 0302 0201 01F0 00FD 01FB 02FD"
	$"01E4 00F6 0008 D0FF FF25 0000 99FF 66FC"
	$"0001 FFDD FB00 1476 FF3B 80FF 5D00 D0FF"
	$"2900 4CFF B300 FFDD 0000 FFDD FB00 0E3B"
	$"FF80 0000 2F5D 2215 8311 0051 FFCB CC00"
	$"FD00 006B FD00 0510 1925 3346 CEDF FF12"
	$"FEBD 8C77 6351 4031 251C 150F 0B08 0604"
	$"0303 02FE 01EB 00F9 01E1 00F6 0002 7BFF"
	$"D9FE 0009 22EA F395 88BB 3B00 FFDD FE00"
	$"176E 9D84 DDE6 0C80 FF5D 0048 FBD4 84E6"
	$"F333 00FF DD00 00FF DDFB 000E 3BFF 8000"
	$"0080 FF5D 2FEE EABA F7FB 5DCC 00FD 0000"
	$"63FD 0006 0E15 202D 3D74 FADF FF0F EC9B"
	$"826E 5A47 3729 1E16 0F0A 0705 0302 FE01"
	$"C100 F600 021D 804C FD00 0819 77A2 9962"
	$"0C00 806E FE00 172B 91A2 7F1D 0040 802F"
	$"0000 2A87 A27F 2100 0080 6E00 0080 6EFB"
	$"000D 1D80 4000 0040 802F 0019 7BA2 9137"
	$"CB00 FD00 0023 FD00 060B 121B 2736 47BA"
	$"DEFF 0FC8 8E78 6450 3E2F 2218 100B 0704"
	$"0201 01BF 0081 00FD 0000 24FD 0007 090E"
	$"1621 2E3E 64ED DFFF 0FF4 A384 6E5A 4736"
	$"271C 130C 0704 0201 01BF 0081 00FD 0000"
	$"23FD 0007 070B 121B 2735 469F DEFF 0ED6"
	$"8F79 6450 3D2E 2016 0E09 0503 0101 BF00"
	$"8100 FD00 0024 FD00 0805 090E 1620 2D3D"
	$"57E3 DFFF 0EFA AD84 6E59 4634 261A 110A"
	$"0603 0201 BF00 8100 FD00 0024 FD00 0904"
	$"070B 111A 2533 448B FEDF FF0D DD8E 7862"
	$"4E3B 2B1E 140D 0704 0201 BF00 8100 FD00"
	$"0024 FD00 0903 0508 0D15 1F2B 3A4E CEDF"
	$"FF0D F09C 816B 5542 3022 170E 0905 0201"
	$"BF00 8100 FD00 0025 FD00 0A02 0306 0A10"
	$"1924 3142 75FA E0FF 0DEB A088 715B 4735"
	$"2619 100A 0503 01BF 0081 00FD 0000 25FD"
	$"000A 0102 0408 0D14 1D29 3849 BAE0 FF0D"
	$"D7A2 8C76 604B 3828 1B12 0B06 0301 BF00"
	$"8100 FD00 0028 FD00 0B01 0203 060A 0F17"
	$"222F 3F62 EEE2 FF0F ECBB A48E 7862 4D3A"
	$"2A1C 120B 0603 0101 C000 8100 FD00 0029"
	$"FC00 0A01 0204 070C 121B 2736 479F E4FF"
	$"11FB E6C9 B5A1 8C77 614C 3A2A 1D13 0B06"
	$"0301 01C0 0081 00FD 0000 2CFC 00FF 0109"
	$"0305 090E 1620 2D3D 57E2 E7FF 13FE F2DF"
	$"CEBF AF9C 8772 5D49 3828 1C12 0B06 0301"
	$"01C0 0081 00FD 0000 2CFB 000A 0102 0407"
	$"0B11 1A25 3344 8CE8 FF14 F8EA DAD0 C4B6"
	$"A593 7F6B 5744 3425 1A11 0A06 0301 01C0"
	$"0081 00FD 0000 2DFA 000A 0102 0508 0D15"
	$"1F2B 3A4D CFEB FF15 FBEF E1D8 CFC4 B7A8"
	$"9886 7461 4F3E 2E22 170F 0905 0301 BF00"
	$"8100 FD00 0030 FA00 0B01 0203 060A 1019"
	$"2431 4276 F9EE FF17 FDF3 E5DC D4CB C0B4"
	$"A799 8978 6755 4536 281D 140D 0804 0201"
	$"BF00 8100 FD00 0031 F900 0A01 0204 080D"
	$"141D 2938 49B7 F0FF 19FE F7E9 DED7 CEC5"
	$"BBAF A395 8677 6858 493A 2D21 1810 0B06"
	$"0402 01BF 0081 00FD 0000 33F9 000B 0102"
	$"0306 0A0F 1722 2F3F 61EF F2FF 1AFA EDE0"
	$"D9D1 C8BE B4A8 9C8F 8173 6557 493C 2F24"
	$"1B13 0D08 0503 0101 BF00 8100 FD00 0033"
	$"F800 0A01 0204 070C 121B 2736 47A1 F4FF"
	$"1BFC F1E3 DBD3 CBC1 B7AC A094 877A 6D60"
	$"5346 3A2F 251C 140E 0A06 0402 01BE 0081"
	$"00FD 0000 36F8 00FF 0109 0305 090E 1620"
	$"2D3C 55DF F7FF 1DFD F4E6 DCD5 CDC4 BAAF"
	$"A498 8B7F 7265 594D 4237 2D24 1C15 0F0A"
	$"0704 0301 01BE 0081 00FD 0000 37F7 000B"
	$"0102 0407 0B11 1A25 3344 88FE FAFF 1EFE"
	$"F4E5 DBD5 CEC6 BCB2 A79B 8F82 7669 5D52"
	$"463C 3229 211A 140F 0A07 0503 0201 BD00"
	$"8100 FD00 0036 F600 0A01 0205 080D 151E"
	$"2B39 4BCC FBFF 1EF5 E1D3 D1CC C6BE B4AA"
	$"9E92 8679 6D61 554A 3F36 2D25 1E17 120D"
	$"0A07 0403 0201 BC00 8100 FD00 0038 F600"
	$"2E01 0203 060A 1018 2330 4069 D7FD FFFF"
	$"F4D7 C3C2 C3C0 BBB4 ABA1 9589 7D71 6458"
	$"4D42 3930 2720 1A14 100C 0906 0403 0201"
	$"BB00 8100 FD00 0036 F500 2C01 0204 080C"
	$"131C 2836 4564 9BBF C1A8 A4AC B0B0 ADA8"
	$"A096 8B80 7468 5C50 453B 322A 221C 1611"
	$"0D0A 0705 0402 0101 BA00 8100 FD00 0035"
	$"F500 FF01 2903 0509 0F16 202C 3A49 5A6A"
	$"7986 9198 9B9C 9893 8A81 766A 5F53 483E"
	$"352C 241D 1813 0E0B 0806 0403 0201 01B9"
	$"0081 00FD 0000 32F4 0028 0102 0407 0B11"
	$"1923 2F3D 4B59 6773 7C83 8685 827C 746B"
	$"6056 4B41 372E 261F 1914 100C 0907 0503"
	$"0201 01B7 0081 00FD 0000 31F4 00FF 0125"
	$"0305 080D 131C 2631 3D49 5560 686D 706F"
	$"6C66 5F56 4C43 3931 2821 1B15 110D 0A07"
	$"0504 0302 0101 B600 8100 FD00 002E F300"
	$"2401 0203 0609 0F15 1D26 303A 444D 5458"
	$"5A59 5651 4A43 3A32 2A23 1C17 120E 0B08"
	$"0604 0302 0101 B400 8100 FD00 002B F200"
	$"1F01 0204 070B 1016 1D25 2D35 3C41 4546"
	$"4542 3E38 322B 241E 1813 0F0B 0906 0403"
	$"02FE 01B3 0081 00FD 0000 2AF2 00FF 011E"
	$"0305 070B 1015 1B21 272C 3033 3433 312D"
	$"2823 1E19 1410 0C09 0705 0302 0201 01B1"
	$"0081 00FD 0000 27F1 001D 0102 0305 070B"
	$"0F13 171C 2023 2425 2422 1F1C 1814 100D"
	$"0A07 0504 0302 0101 AF00 8100 FD00 0024"
	$"F000 1A01 0203 0507 0A0D 1013 1517 1919"
	$"1817 1512 100D 0A08 0604 0302 0101 AD00"
	$"8100 FD00 0021 EF00 0901 0203 0406 080A"
	$"0C0E 0FFE 1008 0E0D 0B09 0806 0403 02FE"
	$"01AC 0081 00FD 0000 1FEE 0015 0102 0204"
	$"0506 0708 0909 0A09 0908 0605 0403 0202"
	$"0101 AA00 8100 FD00 0019 ED00 FF01 FF02"
	$"0103 04FB 0506 0403 0302 0201 01A8 0081"
	$"00FD 0000 12EC 00FE 01FE 02FD 03FE 02FE"
	$"01A6 0081 00FD 0000 0AE9 00F7 01A3 0081"
	$"00FD 0000 0681 0081 00FD 0000 0681 0081"
	$"00FD 0000 0681 0081 00FD 0000 0681 0081"
	$"00FD 0000 0681 0081 00FD 0000 0681 0081"
	$"00FD 0000 00FF"
};

resource 'mctb' (140) {
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

resource 'mctb' (141, "Menubar menu") {
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

resource 'mctb' (148) {
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

resource 'mctb' (149) {
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

data 'DLGX' (128) {
	$"0743 6869 6361 676F 0000 0000 0000 0000"            /* .Chicago........ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"000C 0000 0000 0000 0004 0004 0000 0000"            /* ................ */
	$"0005 0000 0000 0000 0000 0000 0000 000A"            /* ................ */
	$"0000 0000 0000 0000 0000 0006 0000 0000"            /* ................ */
	$"0000 0000 0000 0006 0000 0000 0000 0000"            /* ................ */
	$"0000 0006 0000 0000 0000 0000 0000"                 /* .............. */
};

data 'DLGX' (129) {
	$"0743 6869 6361 676F 0000 0000 0000 0000"            /* .Chicago........ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"000C 0000 0000 0000 0004 0004 0000 0000"            /* ................ */
	$"000B 0000 0000 0000 0000 0000 0000 0001"            /* ................ */
	$"0000 0000 0000 0000 0000 0005 0000 0000"            /* ................ */
	$"0000 0000 0000 0005 0000 0000 0000 0000"            /* ................ */
	$"0000 0007 0000 0000 0000 0000 0000 0006"            /* ................ */
	$"0000 0000 0000 0000 0000 000A 0000 0000"            /* ................ */
	$"0000 0000 0000 000A 0000 0000 0000 0000"            /* ................ */
	$"0000 0006 0000 0000 0000 0000 0000 0006"            /* ................ */
	$"0000 0000 0000 0000 0000 0002 0000 0000"            /* ................ */
	$"0000 0000 0000"                                     /* ...... */
};

data 'ictb' (128) {
	$"0000 0000 0000 0000 0007 0014 000F 0028"            /* ...............( */
	$"000F 003C 0000 0000 0000 0000 0000 0000"            /* ...<............ */
	$"FFFF FFFF FFFF 0000 0000 0400 0000 0000"            /* ˇˇˇˇˇˇ.......... */
	$"0000 FFFF 0000 0006 0000 0000 0000 0400"            /* ..ˇˇ............ */
	$"0000 0000 0000 FFFF 0000 0006 0000 0000"            /* ......ˇˇ........ */
};

data 'ictb' (129) {
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000"                      /* ............ */
};

data 'Mcmd' (148) {
	$"0000"                                               /* .. */
};

data 'Mcmd' (149) {
	$"0000"                                               /* .. */
};

data 'Mcmd' (140) {
	$"0000"                                               /* .. */
};

data 'CODE' (1, "First Segment", locked, protected, preload) {
	$"0000 0001 9DCE 598F 2F3C 434F 4445 4267"            /* ....ùŒYè/<CODEBg */
	$"A9A0 2017 6700 00F2 2040 2050 2E18 2C10"            /* ©† .g..Ú @ P..,. */
	$"A9A3 7000 204D 91C6 6002 10C0 B1CD 6DFA"            /* ©£p. Më∆`..¿±Õm˙ */
	$"41ED 0028 43F5 7800 6002 10C0 B1C9 6DFA"            /* AÌ.(Cıx.`..¿±…m˙ */
	$"598F 2F3C 4441 5441 4267 A9A0 2057 2008"            /* Yè/<DATABg©† W . */
	$"6700 00B6 2F0D 2050 4868 0004 4EBA 00B0"            /* g..∂/. PHh..N∫.∞ */
	$"508F 43FA FF9C 2B49 F9D4 224D 4EBA 0218"            /* PèC˙ˇú+I˘‘"MN∫.. */
	$"226D F9D4 4EBA 0210 A9A3 4EBA 0296 422D"            /* "m˘‘N∫..©£N∫.ñB- */
	$"F9D9 303C A89F A746 2F08 303C A198 A346"            /* ˘Ÿ0<®üßF/.0<°ò£F */
	$"B1DF 670A 1B7C 0001 F9D9 7001 A198 303C"            /* ±ﬂg..|..˘Ÿp.°ò0< */
	$"A9F0 A746 2B48 F9D0 303C A9F1 A746 2B48"            /* ©ßF+H˘–0<©ÒßF+H */
	$"F9CC 303C A9F4 A746 2B48 F9C8 303C A9F0"            /* ˘Ã0<©ÙßF+H˘»0<© */
	$"41FA 0268 A647 303C A9F1 41FA 0324 A647"            /* A˙.h¶G0<©ÒA˙.$¶G */
	$"303C A9F4 41FA 002E A647 4EB9 0000 0488"            /* 0<©ÙA˙..¶GNπ...à */
	$"4EB9 0000 05E2 487A 0022 4A2D FFFF 6702"            /* Nπ...‚Hz."J-ˇˇg. */
	$"4267 4267 4EB9 0000 05E4 5C8F 42A7 4EB9"            /* BgBgNπ...‰\èBßNπ */
	$"0000 37DC 4EBA 0384 A9F4 0000 0000 48E7"            /* ..7‹N∫.Ñ©Ù....HÁ */
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
	$"4EBA FF80 2F2D F9D4 2F0A 2F08 4EBA FF74"            /* N∫ˇÄ/-˘‘/./.N∫ˇt */
	$"2F0A 2F0A 2F08 4EBA FF6A 4FEF 0024 245F"            /* /././.N∫ˇjOÔ.$$_ */
	$"4E75 2F0A 2449 2F0D 4497 2F0A 2F08 4EBA"            /* Nu/.$I/.Dó/./.N∫ */
	$"FF52 2F2D F9D4 4497 2F0A 2F08 4EBA FF44"            /* ˇR/-˘‘Dó/./.N∫ˇD */
	$"2F0A 4497 2F0A 2F08 4EBA FF38 4FEF 0024"            /* /.Dó/./.N∫ˇ8OÔ.$ */
	$"245F 4E75 BBFA 0028 6602 4E75 48E7 0084"            /* $_Nuª˙.(f.NuHÁ.Ñ */
	$"2A7A 001C 206D F9D0 4A6F 000C 6604 206D"            /* *z.. m˘–Jo..f. m */
	$"F9CC 2F48 000A 4CDF 2100 544F 4E75 0000"            /* ˘Ã/H..Lﬂ!.TONu.. */
	$"0000 41FA FFFA 208D 4E75 43F9 0000 0084"            /* ..A˙ˇ˙ çNuC˘...Ñ */
	$"C0FC 0010 2388 08F0 4E75 3F3C 0001 4EBA"            /* ¿¸..#à.Nu?<..N∫ */
	$"FFB4 544F 48E7 E0E0 55AF 0018 246F 0018"            /* ˇ¥TOHÁ‡‡UØ..$o.. */
	$"202D F9DA 670A 2040 3F2A 0006 4E90 548F"            /*  -˘⁄g. @?*..NêTè */
	$"50F8 0A5E 598F 2F3C 434F 4445 3F2A 0006"            /* P¯.^Yè/<CODE?*.. */
	$"A9A0 2017 6616 202D F9E6 6604 700F A9C9"            /* ©† .f. -˘Êf.p.©… */
	$"2040 3F2A 0006 4E90 548F 60DA 4A38 0BB2"            /*  @?*..NêTè`⁄J8.≤ */
	$"6704 2040 A064 2057 A029 205F 2050 2008"            /* g. @†d W†) _ P . */
	$"A055 2040 2F08 302A 0006 4EBA FF7E 2248"            /* †U @/.0*..N∫ˇ~"H */
	$"D1E8 0008 4EBA FEE0 205F 224D D3E8 0004"            /* —Ë..N∫˛‡ _"M”Ë.. */
	$"3028 0002 2208 600C 337C 4EF9 0000 D3A9"            /* 0(..".`.3|N˘..”© */
	$"0002 5089 51C8 FFF2 4A2D F9D9 6704 7001"            /* ..PâQ»ˇÚJ-˘Ÿg.p. */
	$"A198 202D F9DE 670A 2040 3F2A 0006 4E90"            /* °ò -˘ﬁg. @?*..Nê */
	$"548F 4CDF 0707 4A38 012D 6702 A9FF 4E75"            /* TèLﬂ..J8.-g.©ˇNu */
	$"3F3C 0000 4EBA FEEE 544F 2F0A 246F 0008"            /* ?<..N∫˛ÓTO/.$o.. */
	$"0C6A 4EF9 0000 667A 0C6A 0002 0006 6D72"            /* .jN˘..fz.j....mr */
	$"91C8 302A 0006 4EBA FF02 598F 2F3C 434F"            /* ë»0*..N∫ˇ.Yè/<CO */
	$"4445 3F2A 0006 A9A0 2017 6604 588F 6052"            /* DE?*..©† .f.Xè`R */
	$"2040 2050 2248 D1E8 0008 4EBA FE76 2057"            /*  @ P"H—Ë..N∫˛v W */
	$"2050 224D D3E8 0004 3028 0002 2208 600C"            /*  P"M”Ë..0(..".`. */
	$"337C A9F0 0000 93A9 0002 5089 51C8 FFF2"            /* 3|©..ì©..PâQ»ˇÚ */
	$"2057 A02A 205F A049 4A2D F9D9 6704 7001"            /*  W†* _†IJ-˘Ÿg.p. */
	$"A198 202D F9E2 670A 2040 3F2A 0006 4E90"            /* °ò -˘‚g. @?*..Nê */
	$"548F 245F 2E9F 4E75 4E75 2A78 0904 303C"            /* Tè$_.üNuNu*x..0< */
	$"A9F4 206D F9C8 A647 303C A9F0 206D F9D0"            /* ©Ù m˘»¶G0<© m˘– */
	$"A647 303C A9F1 206D F9CC A647 4E75 2F0A"            /* ¶G0<©Ò m˘Ã¶GNu/. */
	$"6014 2B52 F9EA 3F3C FFFF 2F2A 0008 206A"            /* `.+R˘Í?<ˇˇ/*.. j */
	$"0004 4E90 5C4F 246D F9EA 200A 66E4 245F"            /* ..Nê\O$m˘Í .f‰$_ */
	$"4E75 48E7 3000 7402 4EFB 2200 600A 4C01"            /* NuHÁ0.t.N˚".`.L. */
	$"0000 4CDF 000C 4E75 2400 4842 C4C1 2601"            /* ..Lﬂ..Nu$.HBƒ¡&. */
	$"4843 C6C0 D443 4842 4242 C0C1 D082 4CDF"            /* HC∆¿‘CHBBB¿¡–ÇLﬂ */
	$"000C 4E75 48E7 3000 7402 4EFB 2200 600A"            /* ..NuHÁ0.t.N˚".`. */
	$"4C41 0000 4CDF 000C 4E75 2401 4242 4842"            /* LA..Lﬂ..Nu$.BBHB */
	$"661C 3600 4240 4840 6706 80C1 3400 4842"            /* f.6.B@H@g.Ä¡4.HB */
	$"3003 80C1 3400 2002 4CDF 000C 4E75 3400"            /* 0.Ä¡4. .Lﬂ..Nu4. */
	$"4240 4840 4842 2601 720F D482 D180 B083"            /* B@H@HB&.r.‘Ç—Ä∞É */
	$"6504 9083 5202 51C9 FFF2 2002 4CDF 000C"            /* e.êÉR.Q…ˇÚ .Lﬂ.. */
	$"4E75 48E7 3000 7402 4EFB 2200 600C 4C41"            /* NuHÁ0.t.N˚".`.LA */
	$"0001 2001 4CDF 000C 4E75 2401 4242 4842"            /* .. .Lﬂ..Nu$.BBHB */
	$"661C 3600 4240 4840 6706 80C1 3400 4842"            /* f.6.B@H@g.Ä¡4.HB */
	$"3003 80C1 4240 4840 4CDF 000C 4E75 3400"            /* 0.Ä¡B@H@Lﬂ..Nu4. */
	$"4240 4840 4842 2601 720F D482 D180 B083"            /* B@H@HB&.r.‘Ç—Ä∞É */
	$"6502 9083 51C9 FFF4 4CDF 000C 4E75 205F"            /* e.êÉQ…ˇÙLﬂ..Nu _ */
	$"2248 D2D8 B058 6C02 4ED1 B058 6F02 4ED1"            /* "H“ÿ∞Xl.N—∞Xo.N— */
	$"3218 B058 6604 D0D0 4ED0 5448 51C9 FFF4"            /* 2.∞Xf.––N–THQ…ˇÙ */
	$"4ED1 4E75 4E56 0000 4EB9 0000 0606 4EB9"            /* N—NuNV..Nπ....Nπ */
	$"0000 06AC 4EB9 0000 540A 4E5E 4E75 846D"            /* ...¨Nπ..T.N^NuÑm */
	$"6169 6E00 0000 4E56 0000 4EB9 0000 53B2"            /* ain...NV..Nπ..S≤ */
	$"4EB9 0000 0662 4EB9 0000 626C 486D FABE"            /* Nπ...bNπ..blHm˙æ */
	$"486D FAC2 203C 0008 0005 AB1D 422D FABD"            /* Hm˙¬ <....´.B-˙Ω */
	$"554F 4EB9 0000 531E 101F 56C0 4400 1B40"            /* UONπ..S...V¿D..@ */
	$"FAC7 554F A994 301F 3B40 FB0E 4E5E 4E75"            /* ˙«UO©î0.;@˚.N^Nu */
	$"8E49 6E69 7469 616C 697A 655F 5F46 7600"            /* éInitialize__Fv. */
	$"0000 4E56 0000 2F0B 2F0A 594F 3F3C 0080"            /* ..NV.././.YO?<.Ä */
	$"A9C0 205F 2448 2F0A A93C 594F 3F3C 0080"            /* ©¿ _$H/.©<YO?<.Ä */
	$"A949 205F 2648 2F0B 2F3C 4452 5652 A94D"            /* ©I _&H/./<DRVR©M */
	$"A937 245F 265F 4E5E 4E75 8F49 6E69 744D"            /* ©7$_&_N^NuèInitM */
	$"656E 7542 6172 5F5F 4676 0000 4E56 FFF0"            /* enuBar__Fv..NVˇ */
	$"6022 554F 3F3C FFFF 486E FFF0 4878 003C"            /* `"UO?<ˇˇHnˇHx.< */
	$"42A7 A860 101F 670C 486E FFF0 4EB9 0000"            /* Bß®`..g.HnˇNπ.. */
	$"06EE 584F 4A2D FABD 67D8 4E5E 4E75 8D45"            /* .ÓXOJ-˙ΩgÿN^NuçE */
	$"7665 6E74 4C6F 6F70 5F5F 4676 0000 4E56"            /* ventLoop__Fv..NV */
	$"0000 2F0A 246E 0008 3012 5340 6728 5340"            /* ../.$n..0.S@g(S@ */
	$"6718 5340 672C 5540 6728 5340 6730 5540"            /* g.S@g,U@g(S@g0U@ */
	$"6744 0440 000F 6732 603C 2F0A 4EB9 0000"            /* gD.@..g2`</.Nπ.. */
	$"0778 584F 6030 2F0A 4EB9 0000 07A2 584F"            /* .xXO`0/.Nπ...¢XO */
	$"6024 2F0A 4EB9 0000 0834 584F 6018 2F0A"            /* `$/.Nπ...4XO`./. */
	$"4EB9 0000 0894 584F 600C 554F 2F0A 303C"            /* Nπ...îXO`.UO/.0< */
	$"021B A816 301F 245F 4E5E 4E75 9844 6F45"            /* ..®.0.$_N^NuòDoE */
	$"7665 6E74 5F5F 4650 3131 4576 656E 7452"            /* vent__FP11EventR */
	$"6563 6F72 6400 0000 4E56 0000 4E5E 4E75"            /* ecord...NV..N^Nu */
	$"9E48 616E 646C 654D 6F75 7365 5570 5F5F"            /* ûHandleMouseUp__ */
	$"4650 3131 4576 656E 7452 6563 6F72 6400"            /* FP11EventRecord. */
	$"0000 4E56 FFFC 48E7 1830 246E 0008 554F"            /* ..NVˇ¸HÁ.0$n..UO */
	$"2F2A 000A 486E FFFC A92C 301F 3600 3003"            /* /*..Hnˇ¸©,0.6.0. */
	$"5340 670A 5340 671E 5540 6724 603A 594F"            /* S@g.S@g.U@g$`:YO */
	$"2F2A 000A A93D 201F 2800 2F04 4EB9 0000"            /* /*..©= .(./.Nπ.. */
	$"08DA 584F 6022 2F0A 2F2E FFFC A9B3 6018"            /* .⁄XO`"/./.ˇ¸©≥`. */
	$"594F AA2A 205F 2648 2F2E FFFC 2F2A 000A"            /* YO™* _&H/.ˇ¸/*.. */
	$"2053 4868 0022 A925 4CDF 0C18 4E5E 4E75"            /*  SHh."©%Lﬂ..N^Nu */
	$"8020 4861 6E64 6C65 4D6F 7573 6544 6F77"            /* Ä HandleMouseDow */
	$"6E5F 5F46 5031 3145 7665 6E74 5265 636F"            /* n__FP11EventReco */
	$"7264 0000 4E56 0000 2F0A 2F03 246E 0008"            /* rd..NV.././.$n.. */
	$"262A 0002 0283 0000 00FF 302A 000E 0240"            /* &*...É...ˇ0*...@ */
	$"0100 6716 594F 1003 4880 3F00 A93E 201F"            /* ..g.YO..HÄ?.©> . */
	$"2F00 4EB9 0000 08DA 584F 261F 245F 4E5E"            /* /.Nπ...⁄XO&.$_N^ */
	$"4E75 9E48 616E 646C 654B 6579 446F 776E"            /* NuûHandleKeyDown */
	$"5F5F 4650 3131 4576 656E 7452 6563 6F72"            /* __FP11EventRecor */
	$"6400 0000 4E56 0000 2F0A 206E 0008 2468"            /* d...NV../. n..$h */
	$"0002 594F 2F0A A917 201F 6608 2F0A A922"            /* ..YO/.©. .f./.©" */
	$"2F0A A923 245F 4E5E 4E75 9D48 616E 646C"            /* /.©#$_N^NuùHandl */
	$"6555 7064 6174 655F 5F46 5031 3145 7665"            /* eUpdate__FP11Eve */
	$"6E74 5265 636F 7264 0000 4E56 0000 48E7"            /* ntRecord..NV..HÁ */
	$"1C00 2A2E 0008 6740 2805 4844 48C4 3605"            /* ..*...g@(.HDHƒ6. */
	$"3004 0440 0080 670A 5340 6712 5340 671A"            /* 0..@.Äg.S@g.S@g. */
	$"6022 3F03 4EB9 0000 0944 544F 6016 3F03"            /* `"?.Nπ...DTO`.?. */
	$"4EB9 0000 0CE0 544F 600A 3F03 4EB9 0000"            /* Nπ...‡TO`.?.Nπ.. */
	$"22B8 544F 4267 A938 4CDF 0038 4E5E 4E75"            /* "∏TOBg©8Lﬂ.8N^Nu */
	$"9144 6F4D 656E 7543 6F6D 6D61 6E64 5F5F"            /* ëDoMenuCommand__ */
	$"466C 0000 4E56 FEFE 2F0A 302E 0008 5340"            /* Fl..NV˛˛/.0...S@ */
	$"6702 6008 4EB9 0000 09A0 6026 594F 3F3C"            /* g.`.Nπ...†`&YO?< */
	$"0080 A949 205F 2448 2F0A 3F2E 0008 486E"            /* .Ä©I _$H/.?...Hn */
	$"FF00 A946 554F 486E FF00 A9B6 301F 3D40"            /* ˇ.©FUOHnˇ.©∂0.=@ */
	$"FEFE 245F 4E5E 4E75 9548 616E 646C 6541"            /* ˛˛$_N^NuïHandleA */
	$"7070 6C65 4368 6F69 6365 5F5F 4669 0000"            /* ppleChoice__Fi.. */
	$"4E56 FDDC 48E7 1C38 594F 3F3C 0080 42A7"            /* NV˝‹HÁ.8YO?<.ÄBß */
	$"4878 FFFF A97C 205F 2448 2F0A A873 554F"            /* Hxˇˇ©| _$H/.®sUO */
	$"2F0A 3F3C 0001 303C 0304 AA68 301F 2F0A"            /* /.?<..0<..™h0./. */
	$"A915 2F0A 3F3C 0002 486E FDF2 486E FDF4"            /* ©./.?<..Hn˝ÚHn˝Ù */
	$"486E FDF8 A98D 2D6E FDF8 FDDC 2D6E FDFC"            /* Hn˝¯©ç-n˝¯˝‹-n˝¸ */
	$"FDE0 486E FDF8 302E FDFA 4440 3F00 302E"            /* ˝‡Hn˝¯0.˝˙D@?.0. */
	$"FDF8 4440 3F00 A8A8 554F 486E FDE4 3F3C"            /* ˝¯D@?.®®UOHn˝‰?< */
	$"0020 486E FDF8 42A7 42A7 42A7 203C 0016"            /* . Hn˝¯BßBßBß <.. */
	$"0000 AB1D 301F 594F 2F2E FDE4 203C 0004"            /* ..´.0.YO/.˝‰ <.. */
	$"0017 AB1D 205F 2648 554F 2F0B 203C 0004"            /* ..´. _&HUO/. <.. */
	$"0001 AB1D 101F 554F 486E FDEC 3F3C 0020"            /* ..´...UOHn˝Ï?<.  */
	$"486E FDF8 42A7 42A7 42A7 203C 0016 0000"            /* Hn˝¯BßBßBß <.... */
	$"AB1D 301F 2F2E FDEC 42A7 203C 0008 0006"            /* ´.0./.˝ÏBß <.... */
	$"AB1D 594F 3F3C 0080 A9BC 205F 2F08 486E"            /* ´.YO?<.Ä©º _/.Hn */
	$"FDF8 A8F6 594F 2F2E FDEC 203C 0004 0017"            /* ˝¯®ˆYO/.˝Ï <.... */
	$"AB1D 205F 2848 554F 2F0C 203C 0004 0001"            /* ´. _(HUO/. <.... */
	$"AB1D 101F 554F 486E FDE8 3F3C 0020 486E"            /* ´...UOHn˝Ë?<. Hn */
	$"FDF8 42A7 42A7 42A7 203C 0016 0000 AB1D"            /* ˝¯BßBßBß <....´. */
	$"301F 2F2E FDE8 42A7 203C 0008 0006 AB1D"            /* 0./.˝ËBß <....´. */
	$"594F 3F3C 0081 A9BC 205F 2F08 486E FDF8"            /* YO?<.Å©º _/.Hn˝¯ */
	$"A8F6 594F 2F2E FDE8 203C 0004 0017 AB1D"            /* ®ˆYO/.˝Ë <....´. */
	$"205F 2A08 554F 2F05 203C 0004 0001 AB1D"            /*  _*.UO/. <....´. */
	$"101F 2F2E FDEC 42A7 203C 0008 0006 AB1D"            /* ../.˝ÏBß <....´. */
	$"486A 0002 2F13 486E FDDC 486E FDF8 4267"            /* Hj../.Hn˝‹Hn˝¯Bg */
	$"42A7 A8EC 2F14 2045 2F10 2F13 486E FDF8"            /* Bß®Ï/. E/./.Hn˝¯ */
	$"486E FDF8 486E FDF8 4267 42A7 AA51 2F13"            /* Hn˝¯Hn˝¯BgBß™Q/. */
	$"486A 0002 486E FDF8 486E FDDC 3F3C 0040"            /* Hj..Hn˝¯Hn˝‹?<.@ */
	$"42A7 A8EC 2F0A A873 2F0C 203C 0004 0002"            /* Bß®Ï/.®s/. <.... */
	$"AB1D 2F05 203C 0004 0002 AB1D 2F0B 203C"            /* ´./. <....´./. < */
	$"0004 0002 AB1D 2F2E FDEC 203C 0004 0004"            /* ....´./.˝Ï <.... */
	$"AB1D 2F2E FDE8 203C 0004 0004 AB1D 2F2E"            /* ´./.˝Ë <....´./. */
	$"FDE4 203C 0004 0004 AB1D 7800 6000 010C"            /* ˝‰ <....´.x.`... */
	$"42A7 486E FDF0 A991 302E FDF0 5340 6700"            /* BßHn˝©ë0.˝S@g. */
	$"00D4 5340 6700 00D2 5540 6700 0086 5340"            /* .‘S@g..“U@g..ÜS@ */
	$"6704 6000 00E6 2F0A 3F3C 0005 486E FDF2"            /* g.`..Ê/.?<..Hn˝Ú */
	$"486E FDF4 486E FDF8 A98D 2F2E FDF4 486E"            /* Hn˝ÙHn˝¯©ç/.˝ÙHn */
	$"FF00 A990 486D FD3A 486E FE00 4EB9 0000"            /* ˇ.©êHm˝:Hn˛.Nπ.. */
	$"5594 7601 504F 6014 41EE FF00 3003 5E40"            /* Uîv.PO`.AÓˇ.0.^@ */
	$"43EE FE00 13B0 3000 0000 5243 7000 102E"            /* CÓ˛..∞0...RCp... */
	$"FF00 B640 6FE2 102E FF00 D12E FE00 7801"            /* ˇ.∂@o‚..ˇ.—.˛.x. */
	$"486E FE00 4EB9 0000 5D92 4A80 584F 677A"            /* Hn˛.Nπ..]íJÄXOgz */
	$"486D FD54 486D FD42 4EB9 0000 5434 504F"            /* Hm˝THm˝BNπ..T4PO */
	$"6068 2F0A 3F3C 0004 486E FDF2 486E FDF4"            /* `h/.?<..Hn˝ÚHn˝Ù */
	$"486E FDF8 A98D 2F2E FDF4 486E FE00 A990"            /* Hn˝¯©ç/.˝ÙHn˛.©ê */
	$"7801 486E FE00 4EB9 0000 5D92 4A80 584F"            /* x.Hn˛.Nπ..]íJÄXO */
	$"6738 486D FD54 486D FD42 4EB9 0000 5434"            /* g8Hm˝THm˝BNπ..T4 */
	$"504F 6026 7801 6022 3F3C 003A 4EB9 0000"            /* PO`&x.`"?<.:Nπ.. */
	$"553A 4A00 544F 6712 486D FD78 486D FD77"            /* U:J.TOg.Hm˝xHm˝w */
	$"4EB9 0000 5434 7801 504F 4A04 6700 FEF2"            /* Nπ..T4x.POJ.g.˛Ú */
	$"2F0A A983 2F2D FABE 2F2D FAC2 203C 0008"            /* /.©É/-˙æ/-˙¬ <.. */
	$"0006 AB1D 4CDF 1C38 4E5E 4E75 9053 686F"            /* ..´.Lﬂ.8N^NuêSho */
	$"7741 626F 7574 426F 785F 5F46 7600 0000"            /* wAboutBox__Fv... */
	$"4E56 0000 2F03 302E 0008 5340 6706 5540"            /* NV../.0...S@g.U@ */
	$"6726 602A 4A2D FAC7 670A 4EB9 0000 0D3C"            /* g&`*J-˙«g.Nπ...< */
	$"2600 6008 4EB9 0000 0E28 2600 4A83 660E"            /* &.`.Nπ...(&.JÉf. */
	$"4EB9 0000 0FF2 6006 1B7C 0001 FABD 261F"            /* Nπ...Ú`..|..˙Ω&. */
	$"4E5E 4E75 9448 616E 646C 6546 696C 6543"            /* N^NuîHandleFileC */
	$"686F 6963 655F 5F46 6900 0000 4E56 F6F8"            /* hoice__Fi...NVˆ¯ */
	$"2F0B 2F0A 3F2D FB0E A998 45F9 0000 5BF2"            /* /./.?-˚.©òE˘..[Ú */
	$"554F 486E F700 4EB9 0000 4FBE 301F 04AE"            /* UOHn˜.Nπ..Oæ0..Æ */
	$"0000 0080 F702 486D FD90 486E F70A 4EB9"            /* ...Ä˜.Hm˝êHn˜.Nπ */
	$"0000 5594 2F3C 436F 6C72 3F3C 0001 2F3C"            /* ..Uî/<Colr?<../< */
	$"4163 6964 4EB9 0000 5B6C 2648 42A7 486E"            /* AcidNπ..[l&HBßHn */
	$"FF00 486E F700 2F0A 42A7 42A7 2F0B 42A7"            /* ˇ.Hn˜./.BßBß/.Bß */
	$"4EB9 0000 506E 301F 4A2E FF02 4FEF 0010"            /* Nπ..Pn0.J.ˇ.OÔ.. */
	$"674A 554F 486E FF06 4878 0001 2F3C 6673"            /* gJUOHnˇ.Hx../<fs */
	$"7320 42A7 486E F6F8 303C 0A0B A816 301F"            /* s BßHnˆ¯0<..®.0. */
	$"486D FAC8 486E F6F8 4EB9 0000 5CDC 486E"            /* Hm˙»Hnˆ¯Nπ..\‹Hn */
	$"FF00 4EB9 0000 5126 301F 486E F6F8 303C"            /* ˇ.Nπ..Q&0.Hnˆ¯0< */
	$"0204 A816 301F 7000 584F 6010 554F 486E"            /* ..®.0.p.XO`.UOHn */
	$"FF00 4EB9 0000 5126 301F 70CE 245F 265F"            /* ˇ.Nπ..Q&0.pŒ$_&_ */
	$"4E5E 4E75 9047 6574 5363 6865 6D65 4E61"            /* N^NuêGetSchemeNa */
	$"765F 5F46 7600 0000 4E56 FF98 2D7C 436F"            /* v__Fv...NVˇò-|Co */
	$"6C72 FF98 42A7 3F3C 0001 486E FF98 486E"            /* lrˇòBß?<..HnˇòHn */
	$"FFA8 3F3C 0006 A9EA 4A2E FFA8 6718 41EE"            /* ˇ®?<..©ÍJ.ˇ®g.AÓ */
	$"FFA8 5C88 43ED FAC8 7010 22D8 51C8 FFFC"            /* ˇ®\àCÌ˙»p."ÿQ»ˇ¸ */
	$"32D8 7000 6002 70CE 4E5E 4E75 9047 6574"            /* 2ÿp.`.pŒN^NuêGet */
	$"5363 6865 6D65 4F6C 645F 5F46 7600 0000"            /* SchemeOld__Fv... */
	$"4E56 FFE2 2F0A 2D6D FD9A FFFA 3D6D FD9E"            /* NVˇ‚/.-m˝öˇ˙=m˝û */
	$"FFFE 2D6D FDA0 FFF4 3D6D FDA4 FFF8 2D6D"            /* ˇ˛-m˝†ˇÙ=m˝§ˇ¯-m */
	$"FDA6 FFEE 3D6D FDAA FFF2 2D6D FDAC FFE8"            /* ˝¶ˇÓ=m˝™ˇÚ-m˝¨ˇË */
	$"3D6D FDB0 FFEC 486E FFE2 AA19 594F 3F3C"            /* =m˝∞ˇÏHnˇ‚™.YO?< */
	$"C800 AA18 205F 2448 200A 6738 2052 2D68"            /* ».™. _$H .g8 R-h */
	$"000A FFFA 3D68 000E FFFE 2052 2D68 001A"            /* ..ˇ˙=h..ˇ˛ R-h.. */
	$"FFF4 3D68 001E FFF8 2052 2D68 0022 FFEE"            /* ˇÙ=h..ˇ¯ R-h."ˇÓ */
	$"3D68 0026 FFF2 2052 2D68 002A FFE8 3D68"            /* =h.&ˇÚ R-h.*ˇË=h */
	$"002E FFEC 4878 001E A862 486E 0008 A8A2"            /* ..ˇÏHx..®bHn..®¢ */
	$"486E FFFA AA14 302E 000A 5340 3F00 3F2E"            /* Hnˇ˙™.0...S@?.?. */
	$"000C A893 302E 000A 5340 3F00 302E 0008"            /* ..®ì0...S@?.0... */
	$"5340 3F00 A891 3F2E 000E 302E 0008 5340"            /* S@?.®ë?...0...S@ */
	$"3F00 A891 486E FFF4 AA14 3F2E 000E 3F2E"            /* ?.®ëHnˇÙ™.?...?. */
	$"000C A891 302E 000A 5340 3F00 3F2E 000C"            /* ..®ë0...S@?.?... */
	$"A891 486E FFEE AA14 302E 000A 5540 3F00"            /* ®ëHnˇÓ™.0...U@?. */
	$"302E 000C 5240 3F00 A893 302E 000E 5240"            /* 0...R@?.®ì0...R@ */
	$"3F00 302E 000C 5240 3F00 A891 302E 000E"            /* ?.0...R@?.®ë0... */
	$"5240 3F00 3F2E 0008 A891 486E FFE8 AA14"            /* R@?.?...®ëHnˇË™. */
	$"302E 000A 5540 3F00 3F2E 000C A893 302E"            /* 0...U@?.?...®ì0. */
	$"000A 5540 3F00 302E 0008 5540 3F00 A891"            /* ..U@?.0...U@?.®ë */
	$"3F2E 000E 302E 0008 5540 3F00 A891 486E"            /* ?...0...U@?.®ëHn */
	$"FFE2 AA14 245F 4E5E 4E75 9544 7261 7749"            /* ˇ‚™.$_N^NuïDrawI */
	$"6D61 6765 5765 6C6C 5F5F 4634 5265 6374"            /* mageWell__F4Rect */
	$"0000 4E56 FBD0 48E7 1830 3D7C 0084 FFFA"            /* ..NV˚–HÁ.0=|.Ñˇ˙ */
	$"47F9 0000 17EC 554F 486D FAC8 1F3C 0003"            /* G˘...ÏUOHm˙».<.. */
	$"700D AA52 301F 3800 0C44 FFFF 667A 554F"            /* p.™R0.8..DˇˇfzUO */
	$"A9AF 301F 0440 FFCF 670E 0440 000A 671C"            /* ©Ø0..@ˇœg..@..g. */
	$"0440 0027 6762 6038 486D FDFE 486D FDB2"            /* .@.'gb`8Hm˝˛Hm˝≤ */
	$"4EB9 0000 5434 504F 6000 0538 554F 486D"            /* Nπ..T4PO`..8UOHm */
	$"FAC8 486E FCD0 7007 AA52 301F 486D FAC8"            /* ˙»Hn¸–p.™R0.Hm˙» */
	$"2F2E FCD4 2F2E FCD0 4267 700E AA52 6028"            /* /.¸‘/.¸–Bgp.™R`( */
	$"554F A9AF 301F 48C0 2F00 486E FBD0 4EB9"            /* UO©Ø0.H¿/.Hn˚–Nπ */
	$"0000 376E 486E FBD0 486D FE1C 4EB9 0000"            /* ..7nHn˚–Hm˛.Nπ.. */
	$"54DE 504F 6000 04EC 3F04 A99A 3F2D FB0E"            /* TﬁPO`..Ï?.©ö?-˚. */
	$"A998 594F 3F3C 0081 42A7 4878 FFFF A97C"            /* ©òYO?<.ÅBßHxˇˇ©| */
	$"205F 2448 2F0A 486E FCE0 A919 486D FE60"            /*  _$H/.Hn¸‡©.Hm˛` */
	$"486E FCE0 4EB9 0000 55D0 486D FACE 486E"            /* Hn¸‡Nπ..U–Hm˙ŒHn */
	$"FCE0 4EB9 0000 55D0 2F0A 486E FCE0 A91A"            /* ¸‡Nπ..U–/.Hn¸‡©. */
	$"2F0A 3F3C 0001 303C 0304 AA68 301F 2F0A"            /* /.?<..0<..™h0./. */
	$"3F3C 0002 303C 0305 AA68 301F 2F0A 1F3C"            /* ?<..0<..™h0./..< */
	$"0001 303C 0306 AA68 301F 2F0A 4878 0005"            /* ..0<..™h0./.Hx.. */
	$"3F3C 7FFF A97E 2F0A 3F3C 0004 486E FFF8"            /* ?<.ˇ©~/.?<..Hnˇ¯ */
	$"486E FFFC 486E FDE2 A98D 2F0A A915 2D7C"            /* Hnˇ¸Hn˝‚©ç/.©.-| */
	$"FFFF C800 FEEA 2F2E FEEA 486E FEF0 4EB9"            /* ˇˇ».˛Í/.˛ÍHn˛Nπ */
	$"0000 376E 486E FDEA 486E FEEE 486E FFFA"            /* ..7nHn˝ÍHn˛ÓHnˇ˙ */
	$"486E FEF0 4EB9 0000 159A 2F0A 3F3C 0004"            /* Hn˛Nπ...ö/.?<.. */
	$"486E FFF8 486E FFFC 486E FFF0 A98D 206E"            /* Hnˇ¯Hnˇ¸Hnˇ©ç n */
	$"FFFC 2050 2068 001C 2050 3028 0004 B06E"            /* ˇ¸ P h.. P0(..∞n */
	$"FFFA 4FEF 001A 6756 2F2E FFFC A955 594F"            /* ˇ˙OÔ..gV/.ˇ¸©UYO */
	$"2F0A 486E FDE2 486D FE64 1F3C 0001 4267"            /* /.Hn˝‚Hm˛d.<..Bg */
	$"3F2E FFFA 2F3C 03F1 0032 42A7 A954 205F"            /* ?.ˇ˙/<.Ò.2Bß©T _ */
	$"2D48 FFFC 206E FFFC 2050 2068 001C 2050"            /* -Hˇ¸ nˇ¸ P h.. P */
	$"316E FFFA 0004 594F 3F2E FFFA A9BF 205F"            /* 1nˇ˙..YO?.ˇ˙©ø _ */
	$"226E FFFC 2251 2269 001C 2251 2288 2F0A"            /* "nˇ¸"Q"i.."Q"à/. */
	$"3F3C 0004 486E FFF8 486E FFFC 486E FFF0"            /* ?<..Hnˇ¯Hnˇ¸Hnˇ */
	$"A98D 2F2E FFFC 3F2E FEEE A963 2F0A 3F3C"            /* ©ç/.ˇ¸?.˛Ó©c/.?< */
	$"0003 486E FFF8 486E FFFC 486E FFF0 A98D"            /* ..Hnˇ¯Hnˇ¸Hnˇ©ç */
	$"2F2E FFFC 302E FFFA 0640 FF7D 3F00 A963"            /* /.ˇ¸0.ˇ˙.@ˇ}?.©c */
	$"2F2E FEEA 486E FEF0 4EB9 0000 376E 2F0A"            /* /.˛ÍHn˛Nπ..7n/. */
	$"3F3C 0005 486E FFF8 486E FFFC 486E FFF0"            /* ?<..Hnˇ¯Hnˇ¸Hnˇ */
	$"A98D 2F2E FFFC 486E FEF0 A98F 2F0A 4EB9"            /* ©ç/.ˇ¸Hn˛©è/.Nπ */
	$"0000 1948 7600 584F 6000 031E 2F0B 486E"            /* ...Hv.XO`.../.Hn */
	$"FDE0 A991 302E FDE0 0C40 000B 6200 030A"            /* ˝‡©ë0.˝‡.@..b... */
	$"D040 303B 0006 4EFB 0002 02FE 0120 01D2"            /* –@0;..N˚...˛. .“ */
	$"01D8 02D2 0018 02FE 02FE 02FE 02FE 02FE"            /* .ÿ.“...˛.˛.˛.˛.˛ */
	$"018E 2F0A 3F3C 0005 486E FFF8 486E FFFC"            /* .é/.?<..Hnˇ¯Hnˇ¸ */
	$"486E FFF0 A98D 2F2E FFFC 486E FEF0 A990"            /* Hnˇ©ç/.ˇ¸Hn˛©ê */
	$"486E FDEA 486E FEEE 486E FFFA 486E FEF0"            /* Hn˝ÍHn˛ÓHnˇ˙Hn˛ */
	$"4EB9 0000 159A 2F0A 3F3C 0004 486E FFF8"            /* Nπ...ö/.?<..Hnˇ¯ */
	$"486E FFFC 486E FFF0 A98D 206E FFFC 2050"            /* Hnˇ¸Hnˇ©ç nˇ¸ P */
	$"2068 001C 2050 3028 0004 B06E FFFA 4FEF"            /*  h.. P0(..∞nˇ˙OÔ */
	$"0010 6756 2F2E FFFC A955 594F 2F0A 486E"            /* ..gV/.ˇ¸©UYO/.Hn */
	$"FDE2 486D FE64 1F3C 0001 4267 3F2E FFFA"            /* ˝‚Hm˛d.<..Bg?.ˇ˙ */
	$"2F3C 03F1 0032 42A7 A954 205F 2D48 FFFC"            /* /<.Ò.2Bß©T _-Hˇ¸ */
	$"206E FFFC 2050 2068 001C 2050 316E FFFA"            /*  nˇ¸ P h.. P1nˇ˙ */
	$"0004 594F 3F2E FFFA A9BF 205F 226E FFFC"            /* ..YO?.ˇ˙©ø _"nˇ¸ */
	$"2251 2269 001C 2251 2288 2F0A 3F3C 0004"            /* "Q"i.."Q"à/.?<.. */
	$"486E FFF8 486E FFFC 486E FFF0 A98D 2F2E"            /* Hnˇ¯Hnˇ¸Hnˇ©ç/. */
	$"FFFC 3F2E FEEE A963 2F0A 3F3C 0003 486E"            /* ˇ¸?.˛Ó©c/.?<..Hn */
	$"FFF8 486E FFFC 486E FFF0 A98D 2F2E FFFC"            /* ˇ¯Hnˇ¸Hnˇ©ç/.ˇ¸ */
	$"302E FFFA 0640 FF7D 3F00 A963 2F0A 4EB9"            /* 0.ˇ˙.@ˇ}?.©c/.Nπ */
	$"0000 1948 584F 6000 01E0 2F0A 3F3C 0005"            /* ...HXO`..‡/.?<.. */
	$"486E FFF8 486E FFFC 486E FFF0 A98D 2F2E"            /* Hnˇ¯Hnˇ¸Hnˇ©ç/. */
	$"FFFC 486E FEF0 A990 486E FEF0 486E FEEA"            /* ˇ¸Hn˛©êHn˛Hn˛Í */
	$"4EB9 0000 375A 486E FDEA 486E FEEE 486E"            /* Nπ..7ZHn˝ÍHn˛ÓHn */
	$"FFFA 486E FEF0 4EB9 0000 159A 486D FE6A"            /* ˇ˙Hn˛Nπ...öHm˛j */
	$"486E FDEA 4EB9 0000 55D0 486E FDEA 3F2E"            /* Hn˝ÍNπ..U–Hn˝Í?. */
	$"FEEC 4EB9 0000 1CA6 2F0A 4EB9 0000 1948"            /* ˛ÏNπ...¶/.Nπ...H */
	$"4FEF 0022 6000 0172 2F0A 3F3C 0005 486E"            /* OÔ."`..r/.?<..Hn */
	$"FFF8 486E FFFC 486E FFF0 A98D 2F2E FFFC"            /* ˇ¯Hnˇ¸Hnˇ©ç/.ˇ¸ */
	$"486E FEF0 A990 486E FEF0 486E FEEA 4EB9"            /* Hn˛©êHn˛Hn˛ÍNπ */
	$"0000 375A 3F2E FEEC 4EB9 0000 21C8 2F0A"            /* ..7Z?.˛ÏNπ..!»/. */
	$"4EB9 0000 1948 5C4F 6000 012E 7601 6000"            /* Nπ...H\O`...v.`. */
	$"0128 2F0A 3F3C 0003 486E FFF8 486E FFFC"            /* .(/.?<..Hnˇ¯Hnˇ¸ */
	$"486E FFF0 A98D 554F 2F2E FFFC A960 301F"            /* Hnˇ©çUO/.ˇ¸©`0. */
	$"0640 0083 3D40 FFFA 3D7C 0001 FEEE 2F0A"            /* .@.É=@ˇ˙=|..˛Ó/. */
	$"3F3C 0004 486E FFF8 486E FFFC 486E FFF0"            /* ?<..Hnˇ¯Hnˇ¸Hnˇ */
	$"A98D 206E FFFC 2050 2068 001C 2050 3028"            /* ©ç nˇ¸ P h.. P0( */
	$"0004 B06E FFFA 6756 2F2E FFFC A955 594F"            /* ..∞nˇ˙gV/.ˇ¸©UYO */
	$"2F0A 486E FDE2 486D FE64 1F3C 0001 4267"            /* /.Hn˝‚Hm˛d.<..Bg */
	$"3F2E FFFA 2F3C 03F1 0032 42A7 A954 205F"            /* ?.ˇ˙/<.Ò.2Bß©T _ */
	$"2D48 FFFC 206E FFFC 2050 2068 001C 2050"            /* -Hˇ¸ nˇ¸ P h.. P */
	$"316E FFFA 0004 594F 3F2E FFFA A9BF 205F"            /* 1nˇ˙..YO?.ˇ˙©ø _ */
	$"226E FFFC 2251 2269 001C 2251 2288 2F0A"            /* "nˇ¸"Q"i.."Q"à/. */
	$"3F3C 0004 486E FFF8 486E FFFC 486E FFF0"            /* ?<..Hnˇ¯Hnˇ¸Hnˇ */
	$"A98D 2F2E FFFC 3F2E FEEE A963 2F0A 3F3C"            /* ©ç/.ˇ¸?.˛Ó©c/.?< */
	$"0003 486E FFF8 486E FFFC 486E FFF0 A98D"            /* ..Hnˇ¯Hnˇ¸Hnˇ©ç */
	$"2F2E FFFC 302E FFFA 0640 FF7D 3F00 A963"            /* /.ˇ¸0.ˇ˙.@ˇ}?.©c */
	$"2F0A 4EB9 0000 1948 584F 602C 2F0A 3F3C"            /* /.Nπ...HXO`,/.?< */
	$"0004 486E FFF8 486E FFFC 486E FFF0 A98D"            /* ..Hnˇ¯Hnˇ¸Hnˇ©ç */
	$"554F 2F2E FFFC A960 301F 3D40 FEEE 2F0A"            /* UO/.ˇ¸©`0.=@˛Ó/. */
	$"4EB9 0000 1948 584F 4A03 6700 FCE0 2F0A"            /* Nπ...HXOJ.g.¸‡/. */
	$"A983 4CDF 0C18 4E5E 4E75 8C45 6469 7463"            /* ©ÉLﬂ..N^NuåEditc */
	$"6963 6E5F 5F46 7600 0000 4E56 FF00 48E7"            /* icn__Fv...NVˇ.HÁ */
	$"1F38 2E2E 0008 246E 000C 266E 0010 2C2E"            /* .8....$n..&n..,. */
	$"0014 486D FE6A 2F06 4EB9 0000 5594 34BC"            /* ..Hm˛j/.Nπ..Uî4º */
	$"00A5 594F 2F3C 4D45 4E55 3F12 A81F 205F"            /* .•YO/<MENU?.®. _ */
	$"2F08 A950 301F 3680 2F07 486D FE6C 1F3C"            /* /.©P0.6Ä/.Hm˛l.< */
	$"0001 1F3C 0001 4EB9 0000 371A 101F 584F"            /* ...<..Nπ..7...XO */
	$"6600 009E 7800 6000 0090 3F2D FB0E A998"            /* f..ûx.`..ê?-˚.©ò */
	$"594F 2F3C 4D45 4E55 3004 0640 0084 3F00"            /* YO/<MENU0..@.Ñ?. */
	$"A81F 205F 2848 200C 6610 3004 0640 0084"            /* ®. _(H .f.0..@.Ñ */
	$"3F00 4EB9 0000 54A4 544F 554F 2F0C A950"            /* ?.Nπ..T§TOUO/.©P */
	$"301F 3A00 7601 604A 2F0C 3F03 486E FF00"            /* 0.:.v.`J/.?.Hnˇ. */
	$"A946 486E FF00 4EB9 0000 16B4 2F07 486E"            /* ©FHnˇ.Nπ...¥/.Hn */
	$"FF00 1F3C 0001 1F3C 0001 4EB9 0000 371A"            /* ˇ..<...<..Nπ..7. */
	$"101F 544F 671A 3004 0640 0084 3480 3683"            /* ..TOg.0..@.Ñ4Ä6É */
	$"2F06 3F13 3F12 4EB9 0000 1740 504F 6010"            /* /.?.?.Nπ...@PO`. */
	$"5243 B645 6FB2 5244 0C44 0022 6D00 FF6C"            /* RC∂Eo≤RD.D."m.ˇl */
	$"4CDF 1CF8 4E5E 4E75 9847 6574 6369 636E"            /* Lﬂ.¯N^NuòGetcicn */
	$"4D65 6E75 5F5F 4650 5563 5069 5069 5055"            /* Menu__FPUcPiPiPU */
	$"6300 0000 4E56 FF00 2F03 2F2E 0008 486E"            /* c...NVˇ././...Hn */
	$"FF00 4EB9 0000 5594 7600 162E FF00 504F"            /* ˇ.Nπ..Uîv...ˇ.PO */
	$"6002 5343 4A43 6F14 41EE FF00 7000 1030"            /* `.SCJCo.AÓˇ.p..0 */
	$"3000 0C40 0020 67EA 6002 5343 4A43 6F10"            /* 0..@. gÍ`.SCJCo. */
	$"41EE FF00 7000 1030 3000 0C40 0020 66EA"            /* AÓˇ.p..00..@. fÍ */
	$"7000 102E FF00 9043 41EE FF00 1180 3000"            /* p...ˇ.êCAÓˇ..Ä0. */
	$"41EE FF00 4870 3000 2F2E 0008 4EB9 0000"            /* AÓˇ.Hp0./...Nπ.. */
	$"5594 504F 261F 4E5E 4E75 9347 6574 4944"            /* UîPO&.N^NuìGetID */
	$"4672 6F6D 4D65 6E75 5F5F 4650 5563 0000"            /* FromMenu__FPUc.. */
	$"4E56 FE00 2F03 594F 3F3C 0083 A9BF 205F"            /* NV˛./.YO?<.É©ø _ */
	$"2F08 302E 0008 0640 FF7D 3F00 486E FE00"            /* /.0....@ˇ}?.Hn˛. */
	$"A946 594F 3F2E 0008 A9BF 205F 2F08 3F2E"            /* ©FYO?...©ø _/.?. */
	$"000A 486E FF00 A946 7600 162E FF00 6002"            /* ..Hnˇ.©Fv...ˇ.`. */
	$"5343 4A43 6F10 41EE FF00 7000 1030 3000"            /* SCJCo.AÓˇ.p..00. */
	$"0C40 0020 66EA 3003 5340 1D40 FF00 486D"            /* .@. fÍ0.S@.@ˇ.Hm */
	$"FE6A 486E FE00 4EB9 0000 55D0 486E FF00"            /* ˛jHn˛.Nπ..U–Hnˇ. */
	$"486E FE00 4EB9 0000 55D0 486E FE00 2F2E"            /* Hn˛.Nπ..U–Hn˛./. */
	$"000C 4EB9 0000 5594 4FEF 0018 261F 4E5E"            /* ..Nπ..UîOÔ..&.N^ */
	$"4E75 9747 6574 4E61 6D65 4672 6F6D 4D65"            /* NuóGetNameFromMe */
	$"6E75 5F5F 4669 6950 5563 0000 4E56 FFFC"            /* nu__FiiPUc..NVˇ¸ */
	$"48E7 1830 266E 0010 246E 000C 7800 3012"            /* HÁ.0&n..$n..x.0. */
	$"5740 6766 5540 6762 5340 6720 0440 0009"            /* W@gfU@gbS@g .@.. */
	$"6704 6000 00E2 486E FFFC A874 2F0B A873"            /* g.`..‚Hnˇ¸®t/.®s */
	$"486B 0010 A928 2F2E FFFC A873 B7EA 0002"            /* Hk..©(/.ˇ¸®s∑Í.. */
	$"670C 2F0A 4EBA F05E 584F 6000 00E2 4EB9"            /* g./.N∫^XO`..‚Nπ */
	$"0000 5F68 4A00 6604 2F0B A922 2F0B 4EB9"            /* .._hJ.f./.©"/.Nπ */
	$"0000 1948 4EB9 0000 5F68 4A00 584F 6600"            /* ...HNπ.._hJ.XOf. */
	$"00BE 2F0B A923 6000 00B6 262A 0002 0283"            /* .æ/.©#`..∂&*...É */
	$"0000 00FF 0C03 000D 6758 0C03 0003 6752"            /* ...ˇ....gX....gR */
	$"0C03 0009 674C 0C03 0008 6746 0C03 001B"            /* ....gL....gF.... */
	$"6740 0C03 007F 673A 0C03 001D 6734 0C03"            /* g@....g:....g4.. */
	$"001C 672E 0C03 001E 6728 0C03 001F 6722"            /* ..g.....g(....g" */
	$"0C03 002D 671C 0C03 0030 6D06 0C03 0039"            /* ...-g....0m....9 */
	$"6F10 0C03 002E 6624 302A 000E 0240 0100"            /* o.....f$0*...@.. */
	$"671A 554F 2F0B 2F0A 2F2E 0008 4EB9 0000"            /* g.UO/././...Nπ.. */
	$"34CC 101F 56C0 4400 1800 6032 3F3C 0006"            /* 4Ã..V¿D...`2?<.. */
	$"A9C8 7801 6028 486E FFFC A874 2F0B A873"            /* ©»x.`(Hnˇ¸®t/.®s */
	$"554F 2F0B 2F0A 2F2E 0008 4EB9 0000 34CC"            /* UO/././...Nπ..4Ã */
	$"101F 56C0 4400 1800 2F2E FFFC A873 1F44"            /* ..V¿D.../.ˇ¸®s.D */
	$"0028 4CDF 0C18 4E5E 205F 4FEF 000C 4ED0"            /* .(Lﬂ..N^ _OÔ..N– */
	$"9453 5441 4E44 4152 4444 4941 4C4F 4746"            /* îSTANDARDDIALOGF */
	$"494C 5445 5200 0000 4E56 FEAC 48E7 1C38"            /* ILTER...NV˛¨HÁ.8 */
	$"266E 0008 2F0B 3F3C 0004 486E FFE2 486E"            /* &n../.?<..Hnˇ‚Hn */
	$"FFFC 486E FFDA A98D 206E FFFC 2050 2068"            /* ˇ¸Hnˇ⁄©ç nˇ¸ P h */
	$"001C 2050 3268 0004 2609 554F 2F2E FFFC"            /* .. P2h..&.UO/.ˇ¸ */
	$"A960 301F 48C0 2800 0C83 0000 00A5 663C"            /* ©`0.H¿(..É...•f< */
	$"554F 594F 2F3C 4D45 4E55 3F03 A81F 205F"            /* UOYO/<MENU?.®. _ */
	$"2F08 A950 301F 48C0 B880 6620 2F0B 3F3C"            /* /.©P0.H¿∏Äf /.?< */
	$"0005 486E FFE2 486E FFFC 486E FFDA A98D"            /* ..Hnˇ‚Hnˇ¸Hnˇ⁄©ç */
	$"2F2E FFFC 486E FEDA A990 6046 594F 3F03"            /* /.ˇ¸Hn˛⁄©ê`FYO?. */
	$"A9BF 205F 2F08 3F04 486E FEDA A946 486E"            /* ©ø _/.?.Hn˛⁄©FHn */
	$"FEDA 4EBA FCD0 2F0B 3F3C 0005 486E FFE2"            /* ˛⁄N∫¸–/.?<..Hnˇ‚ */
	$"486E FFFC 486E FFDA A98D 2F2E FFFC 486E"            /* Hnˇ¸Hnˇ⁄©ç/.ˇ¸Hn */
	$"FEDA A98F 2F0B 4878 0005 3F3C 7FFF A97E"            /* ˛⁄©è/.Hx..?<.ˇ©~ */
	$"584F 486E FEDA 486E FED6 4EB9 0000 375A"            /* XOHn˛⁄Hn˛÷Nπ..7Z */
	$"486E FED2 486E FECE 203C 0008 0005 AB1D"            /* Hn˛“Hn˛Œ <....´. */
	$"2F0B A873 486E FEC8 AA19 486E FEC2 AA1A"            /* /.®sHn˛»™.Hn˛¬™. */
	$"486E FEB0 A898 4878 0021 A862 4878 001E"            /* Hn˛∞®òHx.!®bHx.. */
	$"A863 2F0B 3F3C 0008 486E FFE2 486E FFFC"            /* ®c/.?<..Hnˇ‚Hnˇ¸ */
	$"486E FFEC A98D 2F2E FFF0 2F2E FFEC 4EBA"            /* HnˇÏ©ç/.ˇ/.ˇÏN∫ */
	$"F410 486E FFEC A8A3 2F0B 3F3C 0007 486E"            /* Ù.HnˇÏ®£/.?<..Hn */
	$"FFE2 486E FFFC 486E FFE4 A98D 2F2E FFE8"            /* ˇ‚Hnˇ¸Hnˇ‰©ç/.ˇË */
	$"2F2E FFE4 4EBA F3EA 486E FFE4 A8A3 486E"            /* /.ˇ‰N∫ÛÍHnˇ‰®£Hn */
	$"FEB0 A899 486E FEC8 AA14 486E FEC2 AA15"            /* ˛∞®ôHn˛»™.Hn˛¬™. */
	$"7000 A122 2848 2F0B 3F3C 0001 486E FFE2"            /* p.°"(H/.?<..Hnˇ‚ */
	$"486E FFFC 486E FFDA A98D 2F0C 2F3C 5049"            /* Hnˇ¸Hnˇ⁄©ç/./<PI */
	$"4354 486E FEAC A9FD 201F 4FEF 000C 6D4C"            /* CTHn˛¨©˝ .OÔ..mL */
	$"2054 2D68 0002 FFF4 2D68 0006 FFF8 486E"            /*  T-h..ˇÙ-h..ˇ¯Hn */
	$"FFF4 302E FFF6 4440 3F00 302E FFF4 4440"            /* ˇÙ0.ˇˆD@?.0.ˇÙD@ */
	$"3F00 A8A8 486E FFF4 2F2E FFE8 2F2E FFE4"            /* ?.®®HnˇÙ/.ˇË/.ˇ‰ */
	$"4EB9 0000 572E 2F0C 486E FFF4 A8F6 2F2E"            /* Nπ..W./.HnˇÙ®ˆ/. */
	$"FFFC 4267 A95D 4FEF 000C 604A 554F 486D"            /* ˇ¸Bg©]OÔ..`JUOHm */
	$"FE6E A88C 301F 322E FFEA 926E FFE6 9240"            /* ˛n®å0.2.ˇÍínˇÊí@ */
	$"3001 E048 EE48 D041 E240 D06E FFE6 3F00"            /* 0.‡HÓH–A‚@–nˇÊ?. */
	$"302E FFE8 E048 EE48 D06E FFE8 E240 0640"            /* 0.ˇË‡HÓH–nˇË‚@.@ */
	$"0010 3F00 A893 486D FE7E A884 2F2E FFFC"            /* ..?.®ìHm˛~®Ñ/.ˇ¸ */
	$"3F3C 00FF A95D 554F 486D FAC8 1F3C 0003"            /* ?<.ˇ©]UOHm˙».<.. */
	$"700D AA52 301F 3A00 3F05 A998 594F 2F3C"            /* p.™R0.:.?.©òYO/< */
	$"6369 636E 3F2E FED8 A81F 205F 2448 200A"            /* cicn?.˛ÿ®. _$H . */
	$"6710 2F0A A9A3 594F 3F2E FED8 AA1E 205F"            /* g./.©£YO?.˛ÿ™. _ */
	$"2448 2F0B 3F3C 000B 486E FFE2 486E FFFC"            /* $H/.?<..Hnˇ‚Hnˇ¸ */
	$"486E FFDA A98D 200A 6750 2052 2D68 0006"            /* Hnˇ⁄©ç .gP R-h.. */
	$"FFF4 2D68 000A FFF8 486E FFF4 302E FFF6"            /* ˇÙ-h..ˇ¯HnˇÙ0.ˇˆ */
	$"4440 3F00 302E FFF4 4440 3F00 A8A8 486E"            /* D@?.0.ˇÙD@?.®®Hn */
	$"FFF4 2F2E FFF0 2F2E FFEC 4EB9 0000 572E"            /* ˇÙ/.ˇ/.ˇÏNπ..W. */
	$"486E FFF4 2F0A AA1F 2F0A AA25 2F2E FFFC"            /* HnˇÙ/.™./.™%/.ˇ¸ */
	$"4267 A95D 4FEF 000C 604A 554F 486D FE6E"            /* Bg©]OÔ..`JUOHm˛n */
	$"A88C 301F 322E FFF2 926E FFEE 9240 3001"            /* ®å0.2.ˇÚínˇÓí@0. */
	$"E048 EE48 D041 E240 D06E FFEE 3F00 302E"            /* ‡HÓH–A‚@–nˇÓ?.0. */
	$"FFF0 E048 EE48 D06E FFF0 E240 0640 0010"            /* ˇ‡HÓH–nˇ‚@.@.. */
	$"3F00 A893 486D FE7E A884 2F2E FFFC 3F3C"            /* ?.®ìHm˛~®Ñ/.ˇ¸?< */
	$"00FF A95D 3F05 A99A 3F2D FB0E A998 2F2E"            /* .ˇ©]?.©ö?-˚.©ò/. */
	$"FED2 2F2E FECE 203C 0008 0006 AB1D 4CDF"            /* ˛“/.˛Œ <....´.Lﬂ */
	$"1C38 4E5E 4E75 9D52 6564 7261 7745 6469"            /* .8N^NuùRedrawEdi */
	$"7444 6961 6C6F 675F 5F46 5038 4772 6166"            /* tDialog__FP8Graf */
	$"506F 7274 0000 4E56 FEF2 48E7 1F38 7800"            /* Port..NV˛ÚHÁ.8x. */
	$"7A00 7600 7000 A122 2C08 594F 2F06 2F3C"            /* z.v.p.°",.YO/./< */
	$"5049 4354 486E FEF2 A9FD 201F 554F 2F06"            /* PICTHn˛Ú©˝ .UO/. */
	$"486E FF0A 2F3C 0100 0001 4878 0001 303C"            /* Hnˇ./<....Hx..0< */
	$"0800 A831 301F 266E FF14 2D6E FF22 FFF8"            /* ..®10.&nˇ.-nˇ"ˇ¯ */
	$"2D6E FF26 FFFC 6036 3043 2008 E788 2053"            /* -nˇ&ˇ¸`60C .Áà S */
	$"4A70 080A 6626 3043 2008 E788 2053 4A70"            /* Jp..f&0C .Áà SJp */
	$"080C 6618 3043 2008 E788 2053 4A70 080E"            /* ..f.0C .Áà SJp.. */
	$"660A 4A04 6704 7A01 6002 7801 5243 4A05"            /* f.J.g.z.`.x.RCJ. */
	$"6608 2053 B668 0006 6DBE 3003 5540 2053"            /* f. S∂h..mæ0.U@ S */
	$"3140 0006 2F0B 203C 0004 0007 AB1D 3003"            /* 1@../. <....´.0. */
	$"5340 3F00 4EB9 0000 5C0E 3D40 FF00 2046"            /* S@?.Nπ..\.=@ˇ. F */
	$"A029 204B A029 4A86 544F 6704 200B 6616"            /* †) K†)JÜTOg. .f. */
	$"486D FE8C 486D FD77 4EB9 0000 5434 4EB9"            /* Hm˛åHm˝wNπ..T4Nπ */
	$"0000 540A 504F 554F 486E FF7A 3F2E FF00"            /* ..T.POUOHnˇz?.ˇ. */
	$"486E FFF8 2F0B 42A7 42A7 203C 0016 0000"            /* Hnˇ¯/.BßBß <.... */
	$"AB1D 301F 2F2E FF7A 42A7 203C 0008 0006"            /* ´.0./.ˇzBß <.... */
	$"AB1D 486E FEF6 AA1A 4878 001E A863 206D"            /* ´.Hn˛ˆ™.Hx..®c m */
	$"FAB8 4868 0010 A8A3 594F 2F2E FF7A 203C"            /* ˙∏Hh..®£YO/.ˇz < */
	$"0004 0017 AB1D 205F 2848 554F 2F0C 203C"            /* ....´. _(HUO/. < */
	$"0004 0001 AB1D 101F 2F06 486E FFF8 A8F6"            /* ....´.../.Hnˇ¯®ˆ */
	$"302E FFFE 906E FFFA 3D40 FEFC 302E FEFC"            /* 0.ˇ˛ênˇ˙=@˛¸0.˛¸ */
	$"C1EE FF00 0640 001F 0240 FFE1 E640 3D40"            /* ¡Óˇ..@...@ˇ·Ê@=@ */
	$"FEFE 3F2E FEFE 2F0C 4EB9 0000 5C54 486E"            /* ˛˛?.˛˛/.Nπ..\THn */
	$"FF72 3F3C 0001 486E FFF8 42A7 42A7 42A7"            /* ˇr?<..Hnˇ¯BßBßBß */
	$"203C 0016 0000 AB1D 301F 2F2E FF72 42A7"            /*  <....´.0./.ˇrBß */
	$"203C 0008 0006 AB1D 206D FAB8 4868 0010"            /*  <....´. m˙∏Hh.. */
	$"A8A3 2F2E FF72 203C 0004 0017 AB1D 205F"            /* ®£/.ˇr <....´. _ */
	$"2D48 FFF0 554F 2F2E FFF0 203C 0004 0001"            /* -HˇUO/.ˇ <.... */
	$"AB1D 101F 2F2E FFFC 2F2E FFF8 2F2E FFF0"            /* ´.../.ˇ¸/.ˇ¯/.ˇ */
	$"2F0C 4EB9 0000 6056 701F D06E FEFC 0240"            /* /.Nπ..`Vp.–n˛¸.@ */
	$"FFE1 E640 3D40 FFEE 3F2E FFEE 2F2E FFF0"            /* ˇ·Ê@=@ˇÓ?.ˇÓ/.ˇ */
	$"4EB9 0000 5C54 486E FF76 3F3C 0001 486E"            /* Nπ..\THnˇv?<..Hn */
	$"FFF8 42A7 42A7 42A7 203C 0016 0000 AB1D"            /* ˇ¯BßBßBß <....´. */
	$"301F 2F2E FF76 42A7 203C 0008 0006 AB1D"            /* 0./.ˇvBß <....´. */
	$"206D FAB8 4868 0010 A8A3 2F06 486E FFF8"            /*  m˙∏Hh..®£/.Hnˇ¯ */
	$"A8F6 2F2E FF76 203C 0004 0017 AB1D 205F"            /* ®ˆ/.ˇv <....´. _ */
	$"2D48 FFEA 2F2E FFEA 203C 0004 0001 AB1D"            /* -HˇÍ/.ˇÍ <....´. */
	$"101F 2F2D FABE 2F2D FAC2 203C 0008 0006"            /* ../-˙æ/-˙¬ <.... */
	$"AB1D 3F2E FFEE 2F2E FFEA 4EB9 0000 5C54"            /* ´.?.ˇÓ/.ˇÍNπ..\T */
	$"2054 2254 3029 000A 9068 0006 C1EE FEFE"            /*  T"T0)..êh..¡Ó˛˛ */
	$"48C0 2D40 FF06 2F0C 486E FF82 2F3C 0100"            /* H¿-@ˇ./.HnˇÇ/<.. */
	$"0001 4878 0001 303C 0801 A831 301F 7054"            /* ..Hx..0<..®10.pT */
	$"A322 2448 2052 42A8 0040 2052 316E FFEE"            /* £"$H RB®.@ R1nˇÓ */
	$"0044 2052 216E FFF8 0046 216E FFFC 004A"            /* .D R!nˇ¯.F!nˇ¸.J */
	$"2052 2252 3029 004A 9068 0046 C1EE FFEE"            /*  R"R0).Jêh.F¡ÓˇÓ */
	$"48C0 2D40 FFF4 2052 42A8 0032 2052 316E"            /* H¿-@ˇÙ RB®.2 R1n */
	$"FFEE 0036 2052 216E FFF8 0038 216E FFFC"            /* ˇÓ.6 R!nˇ¯.8!nˇ¸ */
	$"003C 2052 4290 2054 2252 3368 0004 0004"            /* .< RBê T"R3h.... */
	$"2054 2252 2368 0006 0006 2368 000A 000A"            /*  T"R#h....#h.... */
	$"2052 4268 000E 2052 4268 0010 2052 42A8"            /*  RBh.. RBh.. RB® */
	$"0012 2052 216E FF90 0016 2052 216E FF94"            /* .. R!nˇê.. R!nˇî */
	$"001A 2052 316E FF98 0020 2052 42A8 0026"            /* .. R1nˇò.  RB®.& */
	$"2052 42A8 002E 2052 4268 001E 2052 317C"            /*  RB®.. RBh.. R1| */
	$"0001 0022 2052 316E FF98 0024 2052 214B"            /* ..." R1nˇò.$ R!K */
	$"002A 2052 214C 004E 2052 2068 002A 2050"            /* .* R!L.N R h.* P */
	$"3268 0006 2009 E788 7210 D081 2D40 FF7E"            /* 2h.. .Áàr.–Å-@ˇ~ */
	$"202E FFF4 D080 7252 D081 D0AE FF7E D0AE"            /*  .ˇÙ–ÄrR–Å–Æˇ~–Æ */
	$"FF06 204A A024 206E FFF0 2050 2050 2252"            /* ˇ. J†$ nˇ P P"R */
	$"43E9 0052 202E FFF4 A02E 202E FFF4 E088"            /* CÈ.R .ˇÙ†. .ˇÙ‡à */
	$"E088 E088 EE88 D0AE FFF4 E280 D080 2052"            /* ‡à‡àÓà–ÆˇÙ‚Ä–Ä R */
	$"43F0 0852 206E FFEA 2050 2050 202E FFF4"            /* C.R nˇÍ P P .ˇÙ */
	$"A02E 202E FFF4 D080 2052 43F0 0852 2053"            /* †. .ˇÙ–Ä RC.R S */
	$"202E FF7E A02E 202E FF7E E088 E088 E088"            /*  .ˇ~†. .ˇ~‡à‡à‡à */
	$"EE88 D0AE FF7E E280 D0AE FFF4 D080 2052"            /* Óà–Æˇ~‚Ä–ÆˇÙ–Ä R */
	$"43F0 0852 2054 2050 202E FF06 A02E 486D"            /* C.R T P .ˇ.†.Hm */
	$"FAC8 1F3C 0003 700D AA52 301F 3E00 3F07"            /* ˙».<..p.™R0.>.?. */
	$"A998 2F3C 6369 636E 3F2E 0008 A81F 205F"            /* ©ò/<cicn?...®. _ */
	$"2D48 FF02 4AAE FF02 4FEF 000C 672A 2F2E"            /* -Hˇ.JÆˇ.OÔ..g*.. */
	$"FF02 A9AD 3F07 A999 3F07 A99A 3F2D FB0E"            /* ˇ.©≠?.©ô?.©ö?-˚. */
	$"A998 554F 486D FAC8 1F3C 0003 700D AA52"            /* ©òUOHm˙».<..p.™R */
	$"301F 3E00 3F07 A998 2F0A A992 2F0A 2F3C"            /* 0.>.?.©ò/.©í/./< */
	$"6369 636E 3F2E 0008 2F2E 000A A9AB 2F0A"            /* cicn?.../...©´/. */
	$"3F3C 0060 A9A7 2F0A A9AA 2F0A A9B0 3F07"            /* ?<.`©ß/.©™/.©∞?. */
	$"A999 3F07 A99A 3F2D FB0E A998 2F0C 203C"            /* ©ô?.©ö?-˚.©ò/. < */
	$"0004 0002 AB1D 2F2E FFEA 203C 0004 0002"            /* ....´./.ˇÍ <.... */
	$"AB1D 2F2E FFF0 203C 0004 0002 AB1D 2F2E"            /* ´./.ˇ <....´./. */
	$"FF7A 203C 0004 0004 AB1D 2F2E FF76 203C"            /* ˇz <....´./.ˇv < */
	$"0004 0004 AB1D 2F2E FF72 203C 0004 0004"            /* ....´./.ˇr <.... */
	$"AB1D 204B A02A 204B A023 2046 A02A 2046"            /* ´. K†* K†# F†* F */
	$"A023 204A A023 486E FEF6 AA15 4CDF 1CF8"            /* †# J†#Hn˛ˆ™.Lﬂ.¯ */
	$"4E5E 4E75 9063 6C69 7032 6369 636E 5F5F"            /* N^Nuêclip2cicn__ */
	$"4673 5055 6300 0000 4E56 FFF0 48E7 1F20"            /* FsPUc...NVˇHÁ.  */
	$"554F 486D FAC8 1F3C 0001 700D AA52 301F"            /* UOHm˙».<..p.™R0. */
	$"3600 3F03 A998 594F 3F2E 0008 AA1E 205F"            /* 6.?.©òYO?...™. _ */
	$"2448 2F0A A992 3F03 A99A 3F2D FB0E A998"            /* $H/.©í?.©ö?-˚.©ò */
	$"2D52 FFFC 206E FFFC 2D68 0006 FFF0 2D68"            /* -Rˇ¸ nˇ¸-h..ˇ-h */
	$"000A FFF4 302E FFF4 906E FFF0 2052 3C28"            /* ..ˇÙ0.ˇÙênˇ R<( */
	$"0044 0246 3FFF CDC0 206E FFFC 2068 002A"            /* .D.F?ˇÕ¿ nˇ¸ h.* */
	$"2050 3268 0006 2E09 E78F 7210 DE81 3006"            /*  P2h....Áèr.ﬁÅ0. */
	$"D040 2052 41E8 0052 D0C0 D0C7 226E FFFC"            /* –@ RAË.R–¿–«"nˇ¸ */
	$"2288 486E FFF8 42A7 486E FFFC 4EB9 0000"            /* "àHnˇ¯BßHnˇ¸Nπ.. */
	$"5E32 A9FC 201F 2F2E FFF8 4EB9 0000 36F8"            /* ^2©¸ ./.ˇ¯Nπ..6¯ */
	$"201F 3A00 3045 2F08 2F3C 5049 4354 206E"            /*  .:.0E/./<PICT n */
	$"FFF8 2F10 A9FE 201F 3800 670A 3F04 4EB9"            /* ˇ¯/.©˛ .8.g.?.Nπ */
	$"0000 54A4 544F 2F2E FFF8 A8F5 2F0A AA25"            /* ..T§TO/.ˇ¯®ı/.™% */
	$"4CDF 04F8 4E5E 4E75 8D63 6963 6E32 636C"            /* Lﬂ.¯N^Nuçcicn2cl */
	$"6970 5F5F 4673 0000 4E56 0000 3F3C 0006"            /* ip__Fs..NV..?<.. */
	$"A9C8 4E5E 4E75 9448 616E 646C 6545 6469"            /* ©»N^NuîHandleEdi */
	$"7443 686F 6963 655F 5F46 6900 0000 2F04"            /* tChoice__Fi.../. */
	$"226F 0008 7400 1419 2002 0280 0000 0080"            /* "o..t... ..Ä...Ä */
	$"6730 7040 C082 671A 703F C480 7000 1019"            /* g0p@¿Çg.p?ƒÄp... */
	$"2802 E18C 8880 7000 1019 2404 E18A 8480"            /* (.·åàÄp...$.·äÑÄ */
	$"6004 703F C480 7000 1019 2202 E189 8280"            /* `.p?ƒÄp...".·âÇÄ */
	$"2401 206F 000C 2082 2049 281F 4E75 9745"            /* $. o.. Ç I(.NuóE */
	$"7836 384B 5F47 6574 4F66 6673 6574 5F5F"            /* x68K_GetOffset__ */
	$"4650 6350 556C 0000 4E56 FFFC 48E7 1F38"            /* FPcPUl..NVˇ¸HÁ.8 */
	$"286E 0008 206E 000C 4290 42A8 000C 200C"            /* (n.. n..BêB®.. . */
	$"A055 2840 45F9 0000 0084 6000 0120 2652"            /* †U(@E˘...Ñ`.. &R */
	$"200B 6700 0114 B9CB 6500 010E 204B D1C3"            /*  .g...πÀe... K—√ */
	$"B9C8 6200 0104 4AAA 000C 6F00 0108 204C"            /* π»b...J™..o... L */
	$"91CB 2808 262A 000C E68B 200D D0AA 0008"            /* ëÀ(.&*..Êã .–™.. */
	$"2640 7C00 2A03 5585 2003 5580 6534 2606"            /* &@|.*.UÖ .UÄe4&. */
	$"D685 E28B 2E03 2007 E788 B8B3 0800 651A"            /* ÷Ö‚ã.. .Áà∏≥..e. */
	$"2003 E788 204B D1C0 2848 B8A8 0008 6404"            /*  .Áà K—¿(H∏®..d. */
	$"264C 6010 2C03 5286 6004 2A03 5385 BC85"            /* &L`.,.RÜ`.*.SÖºÖ */
	$"63CC 97CB 200B 6706 4AAB 0004 6604 6000"            /* cÃóÀ .g.J´..f.`. */
	$"00A4 2052 D1D3 226E 000C 2348 0008 9893"            /* .§ R—”"n..#H..òì */
	$"202B 0004 0280 8000 0000 6708 204B 5888"            /*  +...ÄÄ...g. KXà */
	$"2288 600C 200D D0AB 0004 206E 000C 2080"            /* "à`. .–´.. n.. Ä */
	$"266E 000C 2653 548B 206E 000C 4868 0004"            /* &n..&STã n..Hh.. */
	$"2F0B 4EB9 0000 22DE 2448 7A00 7600 504F"            /* /.Nπ.."ﬁ$Hz.v.PO */
	$"486E FFFC 2F0A 4EB9 0000 22DE 2448 4AAE"            /* Hnˇ¸/.Nπ.."ﬁ$HJÆ */
	$"FFFC 504F 6716 DAAE FFFC BA84 620E 7600"            /* ˇ¸POg.⁄Æˇ¸∫Ñb.v. */
	$"161A E14B 7000 101A 8640 60D4 4A43 6716"            /* ..·Kp...Ü@`‘JCg. */
	$"7000 3003 D080 206E 000C 2050 D1C0 226E"            /* p.0.–Ä n.. P—¿"n */
	$"000C 2348 000C 600C 7010 D5C0 262A 0004"            /* ..#H..`.p.’¿&*.. */
	$"6600 FEDC 4CDF 1CF8 4E5E 4E75 8030 4578"            /* f.˛‹Lﬂ.¯N^NuÄ0Ex */
	$"3638 4B5F 4669 6E64 4578 6365 7074 696F"            /* 68K_FindExceptio */
	$"6E52 6563 6F72 645F 5F46 5063 5031 354D"            /* nRecord__FPcP15M */
	$"5745 7863 6570 7469 6F6E 496E 666F 0000"            /* WExceptionInfo.. */
	$"2F0A 206F 0008 2468 000C B4FC 0000 6604"            /* /. o..$h..¥¸..f. */
	$"7000 6006 3012 0240 00FF 245F 4E75 8028"            /* p.`.0..@.ˇ$_NuÄ( */
	$"4578 3638 4B5F 4375 7272 656E 7441 6374"            /* Ex68K_CurrentAct */
	$"696F 6E5F 5F46 5043 3134 4163 7469 6F6E"            /* ion__FPC14Action */
	$"4974 6572 6174 6F72 0000 4E56 0000 48E7"            /* Iterator..NV..HÁ */
	$"1030 246E 0008 266A 000C 200B 670C 3613"            /* .0$n..&j.. .g.6. */
	$"3003 0280 0000 8000 6732 206A 0010 2668"            /* 0..Ä..Ä.g2 j..&h */
	$"0004 2F0A 2F0B 4EB9 0000 2348 4A92 504F"            /* .././.Nπ..#HJíPO */
	$"6608 303C FFFF 6000 00D4 206A 0010 2550"            /* f.0<ˇˇ`..‘ j..%P */
	$"0010 4AAA 000C 67BE 6000 00B8 7000 3003"            /* ..J™..gæ`..∏p.0. */
	$"0C80 0000 0013 6200 00A4 D040 303B 0006"            /* .Ä....b..§–@0;.. */
	$"4EFB 0002 0098 0028 0030 0098 0038 0040"            /* N˚...ò.(.0.ò.8.@ */
	$"0048 0050 0058 0060 0068 0070 0050 0098"            /* .H.P.X.`.h.p.P.ò */
	$"0098 0098 0078 0080 0098 0086 700A D1AA"            /* .ò.ò.x.Ä.ò.Üp.—™ */
	$"000C 606E 700E D1AA 000C 6066 700A D1AA"            /* ..`np.—™..`fp.—™ */
	$"000C 605E 7012 D1AA 000C 6056 7012 D1AA"            /* ..`^p.—™..`Vp.—™ */
	$"000C 604E 700E D1AA 000C 6046 7012 D1AA"            /* ..`Np.—™..`Fp.—™ */
	$"000C 603E 7016 D1AA 000C 6036 700A D1AA"            /* ..`>p.—™..`6p.—™ */
	$"000C 602E 700E D1AA 000C 6026 700E D1AA"            /* ..`.p.—™..`&p.—™ */
	$"000C 601E 5CAA 000C 6018 7000 302B 0002"            /* ..`.\™..`.p.0+.. */
	$"E588 720C D081 D1AA 000C 6006 303C FFFF"            /* Âàr.–Å—™..`.0<ˇˇ */
	$"600A 206A 000C 3010 0240 00FF 4CDF 0C08"            /* `. j..0..@.ˇLﬂ.. */
	$"4E5E 4E75 8024 4578 3638 4B5F 4E65 7874"            /* N^NuÄ$Ex68K_Next */
	$"4163 7469 6F6E 5F5F 4650 3134 4163 7469"            /* Action__FP14Acti */
	$"6F6E 4974 6572 6174 6F72 0000 206F 0004"            /* onIterator.. o.. */
	$"302F 0008 C0FC 0006 4EFB 0002 F210 4800"            /* 0/..¿¸..N˚..Ú.H. */
	$"4E75 F210 4880 4E75 F210 4900 4E75 F210"            /* NuÚ.HÄNuÚ.I.NuÚ. */
	$"4980 4E75 F210 4A00 4E75 F210 4A80 4E75"            /* IÄNuÚ.J.NuÚ.JÄNu */
	$"F210 4B00 4E75 F210 4B80 4E75 9545 7836"            /* Ú.K.NuÚ.KÄNuïEx6 */
	$"384B 5F4D 6F76 6554 6F46 5078 5F5F 4650"            /* 8K_MoveToFPx__FP */
	$"6373 0000 4E56 0000 48E7 1F38 2E2E 0008"            /* cs..NV..HÁ.8.... */
	$"266E 000C 2047 2868 0038 2053 3610 6700"            /* &n.. G(h.8 S6.g. */
	$"009C 244C 95EB 0004 7000 3003 2C00 0280"            /* .ú$LïÎ..p.0.,..Ä */
	$"0000 03E0 6728 383C 0200 7606 2647 47EB"            /* ...‡g(8<..v.&GGÎ */
	$"0018 2A06 7000 3004 C085 6706 598A 2752"            /* ..*.p.0.¿Ög.Yä'R */
	$"0020 598B 5343 E24C 0C43 0002 6CE6 701F"            /* . YãSC‚L.C..lÊp. */
	$"C086 6724 7610 7807 2647 47EB 001C 2A06"            /* ¿Üg$v.x.&GGÎ..*. */
	$"7000 3003 C085 6704 598A 2692 598B 5344"            /* p.0.¿Ög.Yä&íYãSD */
	$"E24B 0C44 0003 6CE8 2006 0280 0000 3C00"            /* ‚K.D..lË ..Ä..<. */
	$"672A 383C 2000 7607 2A06 7000 3004 C085"            /* g*8< .v.*.p.0.¿Ö */
	$"6710 518A 598A 3F03 2F0A 4EB9 0000 265C"            /* g.QäYä?./.Nπ..&\ */
	$"5C4F 5343 E24C 0C43 0004 6CDE 2047 2154"            /* \OSC‚L.C..lﬁ G!T */
	$"0038 204C 5088 2247 2348 003C 206C 0004"            /* .8 LPà"G#H.< l.. */
	$"4CDF 1CF8 4E5E 4E75 8037 4578 3638 4B5F"            /* Lﬂ.¯N^NuÄ7Ex68K_ */
	$"506F 7053 7461 636B 4672 616D 655F 5F46"            /* PopStackFrame__F */
	$"5031 3254 6872 6F77 436F 6E74 6578 7450"            /* P12ThrowContextP */
	$"3135 4D57 4578 6365 7074 696F 6E49 6E66"            /* 15MWExceptionInf */
	$"6F00 0000 48E7 1030 266F 0010 262F 0014"            /* o...HÁ.0&o..&/.. */
	$"2003 0280 FFFF FF00 0C80 8000 0000 6656"            /*  ..Äˇˇˇ..ÄÄ...fV */
	$"0283 0000 00FF 7007 B680 6E0A 2003 E588"            /* .É...ˇp.∂Än. .Âà */
	$"204B D1C0 600E 2003 5180 E588 204B D1C0"            /*  K—¿`. .QÄÂà K—¿ */
	$"41E8 0020 2448 302F 0018 48C0 5580 6712"            /* AË. $H0/..H¿UÄg. */
	$"5580 671A 102A 0003 4880 48C0 4CDF 0C08"            /* UÄg..*..HÄH¿Lﬂ.. */
	$"4E75 306A 0002 2008 4CDF 0C08 4E75 2012"            /* Nu0j.. .Lﬂ..Nu . */
	$"4CDF 0C08 4E75 246B 0038 D5C3 302F 0018"            /* Lﬂ..Nu$k.8’√0/.. */
	$"48C0 5580 6710 5580 6716 1012 4880 48C0"            /* H¿UÄg.UÄg...HÄH¿ */
	$"4CDF 0C08 4E75 3052 2008 4CDF 0C08 4E75"            /* Lﬂ..Nu0R .Lﬂ..Nu */
	$"2012 4CDF 0C08 4E75 8022 4578 3638 4B5F"            /*  .Lﬂ..NuÄ"Ex68K_ */
	$"4765 7456 616C 7565 5F5F 4650 3132 5468"            /* GetValue__FP12Th */
	$"726F 7743 6F6E 7465 7874 6C73 0000 4E56"            /* rowContextls..NV */
	$"FFEC 48E7 1F38 266E 0008 246E 000C 286A"            /* ˇÏHÁ.8&n..$n..(j */
	$"000C 200C 6626 2F0A 2F0B 4EB9 0000 26B4"            /* .. .f&/./.Nπ..&¥ */
	$"2848 2F0A 2F0C 4EB9 0000 2348 4A92 4FEF"            /* (H/./.Nπ..#HJíOÔ */
	$"0010 66DA 4EB9 0000 3344 60D2 3614 3E03"            /* ..f⁄Nπ..3D`“6.>. */
	$"3003 0280 0000 00FF 0C80 0000 0013 6200"            /* 0..Ä...ˇ.Ä....b. */
	$"03AC D040 303B 0006 4EFB 0002 03A0 0028"            /* .¨–@0;..N˚...†.( */
	$"004E 03A0 008E 00C0 0114 01CE 0208 025A"            /* .N.†.é.¿...Œ...Z */
	$"02CA 02F8 0196 03A0 03A0 03A0 033E 034C"            /* . .¯.ñ.†.†.†.>.L */
	$"03A0 0388 260C 3F3C FFFF 2043 226B 0038"            /* .†.à&.?<ˇˇ C"k.8 */
	$"2028 0002 4871 0800 2068 0006 4E90 700A"            /*  (..Hq.. h..Nêp. */
	$"D1AA 000C 5C4F 6000 035A 260C 3F3C 0001"            /* —™..\O`..Z&.?<.. */
	$"2043 2F28 0006 2F0B 4EB9 0000 27C4 4A80"            /*  C/(../.Nπ..'ƒJÄ */
	$"4FEF 000A 671A 3F3C FFFF 2043 226B 0038"            /* OÔ..g.?<ˇˇ C"k.8 */
	$"2028 0002 4871 0800 2068 000A 4E90 5C4F"            /*  (..Hq.. h..Nê\O */
	$"700E D1AA 000C 6000 031A 260C 3F3C FFFF"            /* p.—™..`...&.?<ˇˇ */
	$"3F3C 0004 2043 2F28 0002 2F0B 4EB9 0000"            /* ?<.. C/(../.Nπ.. */
	$"27C4 4FEF 000A 2F00 2043 2068 0006 4E90"            /* 'ƒOÔ../. C h..Nê */
	$"700A D1AA 000C 5C4F 6000 02E8 2C0C 2046"            /* p.—™..\O`..Ë,. F */
	$"286B 0038 D9E8 0002 2A28 0006 2D68 000A"            /* (k.8ŸË..*(..-h.. */
	$"FFFC 2628 000A 2D68 000E FFF8 2828 000E"            /* ˇ¸&(..-h..ˇ¯((.. */
	$"202E FFF8 222E FFFC 4EB9 0000 04D2 D9C0"            /*  .ˇ¯".ˇ¸Nπ...“Ÿ¿ */
	$"4A83 6F12 99C4 3F3C FFFF 2F0C 2045 4E90"            /* JÉo.ôƒ?<ˇˇ/. ENê */
	$"5383 5C4F 6EEE 7012 D1AA 000C 6000 0294"            /* SÉ\OnÓp.—™..`..î */
	$"2C0C 3F3C 0004 2046 2F28 0002 2F0B 4EB9"            /* ,.?<.. F/(../.Nπ */
	$"0000 27C4 2840 3F3C 0004 2046 2F28 0006"            /* ..'ƒ(@?<.. F/(.. */
	$"2F0B 4EB9 0000 27C4 2600 3F3C 0004 2046"            /* /.Nπ..'ƒ&.?<.. F */
	$"2F28 000A 2F0B 4EB9 0000 27C4 2A00 3F3C"            /* /(../.Nπ..'ƒ*.?< */
	$"0004 2046 2F28 000E 2F0B 4EB9 0000 27C4"            /* .. F/(../.Nπ..'ƒ */
	$"2800 2004 2203 4EB9 0000 04D2 D9C0 4A83"            /* (. .".Nπ...“Ÿ¿JÉ */
	$"4FEF 0028 6F12 99C4 3F3C FFFF 2F0C 2045"            /* OÔ.(o.ôƒ?<ˇˇ/. E */
	$"4E90 5383 5C4F 6EEE 7012 D1AA 000C 6000"            /* NêSÉ\OnÓp.—™..`. */
	$"0212 260C 4267 3F3C 0004 2043 2F28 0002"            /* ..&.Bg?<.. C/(.. */
	$"2F0B 4EB9 0000 27C4 2043 2240 2028 000A"            /* /.Nπ..'ƒ C"@ (.. */
	$"4FEF 000A 4871 0800 2068 0006 4E90 700E"            /* OÔ..Hq.. h..Nêp. */
	$"D1AA 000C 5C4F 6000 01DA 260C 3F3C FFFF"            /* —™..\O`..⁄&.?<ˇˇ */
	$"3F3C 0004 2043 2F28 0002 2F0B 4EB9 0000"            /* ?<.. C/(../.Nπ.. */
	$"27C4 2043 2240 2028 000A 4FEF 000A 4871"            /* 'ƒ C"@ (..OÔ..Hq */
	$"0800 2068 0006 4E90 700E D1AA 000C 5C4F"            /* .. h..Nêp.—™..\O */
	$"6000 01A0 260C 3F3C 0002 2043 2F28 0006"            /* `..†&.?<.. C/(.. */
	$"2F0B 4EB9 0000 27C4 4A80 4FEF 000A 672C"            /* /.Nπ..'ƒJÄOÔ..g, */
	$"4267 3F3C 0004 2043 2F28 0002 2F0B 4EB9"            /* Bg?<.. C/(../.Nπ */
	$"0000 27C4 2043 2240 2028 000E 4FEF 000A"            /* ..'ƒ C"@ (..OÔ.. */
	$"4871 0800 2068 000A 4E90 5C4F 7012 D1AA"            /* Hq.. h..Nê\Op.—™ */
	$"000C 6000 014E 2C0C 2046 2D68 000A FFEC"            /* ..`..N,. F-h..ˇÏ */
	$"3F3C 0004 2F28 0002 2F0B 4EB9 0000 27C4"            /* ?<../(../.Nπ..'ƒ */
	$"2040 D1EE FFEC 2848 2046 2A28 0006 2D68"            /*  @—ÓˇÏ(H F*(..-h */
	$"000E FFF4 2628 000E 2D68 0012 FFF0 2828"            /* ..ˇÙ&(..-h..ˇ(( */
	$"0012 202E FFF0 222E FFF4 4EB9 0000 04D2"            /* .. .ˇ".ˇÙNπ...“ */
	$"D9C0 4A83 4FEF 000A 6F12 99C4 3F3C FFFF"            /* Ÿ¿JÉOÔ..o.ôƒ?<ˇˇ */
	$"2F0C 2045 4E90 5383 5C4F 6EEE 7016 D1AA"            /* /. ENêSÉ\OnÓp.—™ */
	$"000C 6000 00DE 260C 3F3C 0004 2043 2F28"            /* ..`..ﬁ&.?<.. C/( */
	$"0002 2F0B 4EB9 0000 27C4 4FEF 000A 2F00"            /* ../.Nπ..'ƒOÔ../. */
	$"2043 2068 0006 4E90 700A D1AA 000C 584F"            /*  C h..Nêp.—™..XO */
	$"6000 00B0 260C 3F3C 0001 2043 2F28 000A"            /* `..∞&.?<.. C/(.. */
	$"2F0B 4EB9 0000 27C4 4A80 4FEF 000A 6722"            /* /.Nπ..'ƒJÄOÔ..g" */
	$"3F3C 0004 2043 2F28 0002 2F0B 4EB9 0000"            /* ?<.. C/(../.Nπ.. */
	$"27C4 4FEF 000A 2F00 2043 2068 0006 4E90"            /* 'ƒOÔ../. C h..Nê */
	$"584F 700E D1AA 000C 6068 B9EE 0010 6776"            /* XOp.—™..`hπÓ..gv */
	$"700E D1AA 000C 605A 206B 0038 D1EC 0002"            /* p.—™..`Z k.8—Ï.. */
	$"2808 2608 2044 4AA8 0008 6722 2043 2850"            /* (.&. DJ®..g" C(P */
	$"B9EB 0048 6608 2768 0008 004C 6010 3F3C"            /* πÎ.Hf.'h...L`.?< */
	$"FFFF 2F0C 2043 2068 0008 4E90 5C4F 5CAA"            /* ˇˇ/. C h..Nê\O\™ */
	$"000C 601E B9EE 0010 672C 7000 302C 0002"            /* ..`.πÓ..g,p.0,.. */
	$"E588 720C D081 D1AA 000C 6006 4EB9 0000"            /* Âàr.–Å—™..`.Nπ.. */
	$"3344 3007 0280 0000 8000 6700 FC02 42AA"            /* 3D0..Ä..Ä.g.¸.B™ */
	$"000C 6000 FBFA 4CDF 1CF8 4E5E 4E75 8037"            /* ..`.˚˙Lﬂ.¯N^NuÄ7 */
	$"4578 3638 4B5F 556E 7769 6E64 5374 6163"            /* Ex68K_UnwindStac */
	$"6B5F 5F46 5031 3254 6872 6F77 436F 6E74"            /* k__FP12ThrowCont */
	$"6578 7450 3135 4D57 4578 6365 7074 696F"            /* extP15MWExceptio */
	$"6E49 6E66 6F50 7600 0000 4E56 FFFC 48E7"            /* nInfoPv...NVˇ¸HÁ */
	$"1038 286E 0008 266E 000C 7600 2003 E588"            /* .8(n..&n..v. .Âà */
	$"244B D5C0 6020 486E FFFC 2F2A 000C 2F0C"            /* $K’¿` Hnˇ¸/*.... */
	$"4EB9 0000 3366 4A00 4FEF 000C 6704 7001"            /* Nπ..3fJ.OÔ..g.p. */
	$"6010 588A 5283 7000 302B 0002 B680 6DD6"            /* `.XäRÉp.0+..∂Äm÷ */
	$"7000 4CDF 1C08 4E5E 4E75 802F 4578 3638"            /* p.Lﬂ..N^NuÄ/Ex68 */
	$"4B5F 4973 496E 5370 6563 6966 6963 6174"            /* K_IsInSpecificat */
	$"696F 6E5F 5F46 5063 5031 3665 785F 7370"            /* ion__FPcP16ex_sp */
	$"6563 6966 6963 6174 696F 6E00 0000 206F"            /* ecification... o */
	$"0004 226F 0008 4CE8 00F8 000C 4CE8 7C00"            /* .."o..LË.¯..LË|. */
	$"0028 4ED1 8022 4578 3638 4B5F 4C6F 6E67"            /* .(N—Ä"Ex68K_Long */
	$"4A75 6D70 5F5F 4650 3132 5468 726F 7743"            /* Jump__FP12ThrowC */
	$"6F6E 7465 7874 5076 0000 4E56 0000 48E7"            /* ontextPv..NV..HÁ */
	$"1038 266E 0008 262E 000C 286E 0010 2F0C"            /* .8&n..&...(n../. */
	$"2F03 2F0B 4EB9 0000 288E 246B 0038 D5EC"            /* /./.Nπ..(é$k.8’Ï */
	$"0008 24AB 0048 256B 0044 0004 256B 004C"            /* ..$´.H%k.D..%k.L */
	$"0008 254C 0014 2043 2268 0008 202C 0004"            /* ..%L.. C"h.. ,.. */
	$"4871 0800 2F0B 4EB9 0000 2D6E 4FEF 0014"            /* Hq../.Nπ..-nOÔ.. */
	$"4CDF 1C08 4E5E 4E75 804D 4578 3638 4B5F"            /* Lﬂ..N^NuÄMEx68K_ */
	$"4861 6E64 6C65 556E 6578 7065 6374 6564"            /* HandleUnexpected */
	$"5F5F 4650 3132 5468 726F 7743 6F6E 7465"            /* __FP12ThrowConte */
	$"7874 5031 354D 5745 7863 6570 7469 6F6E"            /* xtP15MWException */
	$"496E 666F 5031 3665 785F 7370 6563 6966"            /* InfoP16ex_specif */
	$"6963 6174 696F 6E00 0000 4E56 FFD8 48E7"            /* ication...NVˇÿHÁ */
	$"1838 246E 0008 1839 0000 02F4 13FC 0001"            /* .8$n...9...Ù.¸.. */
	$"0000 02F4 486E FFDC 2F2A 0040 4EB9 0000"            /* ...ÙHnˇ‹/*.@Nπ.. */
	$"2348 4AAE FFDC 504F 6606 4EB9 0000 3344"            /* #HJÆˇ‹POf.Nπ..3D */
	$"4AAA 0044 6600 0092 41EE FFDC 43EE FFEC"            /* J™.Df..íAÓˇ‹CÓˇÏ */
	$"22D8 22D8 22D8 22D8 41EE FFEC 5088 5088"            /* "ÿ"ÿ"ÿ"ÿAÓˇÏPàPà */
	$"2848 20AA 0038 486E FFEC 4EB9 0000 24D0"            /* (H ™.8HnˇÏNπ..$– */
	$"3600 584F 7000 3003 0C80 0000 0013 621C"            /* 6.XOp.0..Ä....b. */
	$"5740 6D26 6716 0440 000A 6D1E 5740 6D0C"            /* W@m&g..@..m.W@m. */
	$"6718 5340 6724 5340 6702 600E 13C4 0000"            /* g.S@g$S@g.`..ƒ.. */
	$"02F4 4EB9 0000 3344 6010 486E FFEC 4EB9"            /* .ÙNπ..3D`.HnˇÏNπ */
	$"0000 251A 3600 584F 60BA 206E FFF8 2654"            /* ..%.6.XO`∫ nˇ¯&T */
	$"D7E8 0002 256B 0004 0044 2553 0048 42AA"            /* ◊Ë..%k...D%S.HB™ */
	$"004C 254B 0050 6004 42AA 0050 41EE FFDC"            /* .L%K.P`.B™.PAÓˇ‹ */
	$"43EE FFEC 22D8 22D8 22D8 22D8 2D6A 0038"            /* CÓˇÏ"ÿ"ÿ"ÿ"ÿ-j.8 */
	$"FFFC 486E FFEC 4EB9 0000 24D0 3600 584F"            /* ˇ¸HnˇÏNπ..$–6.XO */
	$"7000 3003 0C80 0000 0013 626C 5740 6D76"            /* p.0..Ä....blW@mv */
	$"6766 0440 000A 6D6E 5740 6D5C 670A 5340"            /* gf.@..mnW@m\g.S@ */
	$"6764 5340 6752 6020 486E FFD8 206E FFF8"            /* gdS@gR` Hnˇÿ nˇ¯ */
	$"2F28 0002 2F2A 0044 4EB9 0000 3366 4A00"            /* /(../*.DNπ..3fJ. */
	$"4FEF 000C 6652 603E 41EE FFEC 5088 5888"            /* OÔ..fR`>AÓˇÏPàXà */
	$"2648 2F10 2F2A 0044 4EB9 0000 2CEA 4A80"            /* &H/./*.DNπ..,ÍJÄ */
	$"504F 6622 2F13 486E FFDC 2F0A 4EB9 0000"            /* POf"/.Hnˇ‹/.Nπ.. */
	$"2DAA 4FEF 000C 600E 13C4 0000 02F4 4EB9"            /* -™OÔ..`..ƒ...ÙNπ */
	$"0000 3344 6012 486E FFEC 4EB9 0000 251A"            /* ..3D`.HnˇÏNπ..%. */
	$"3600 584F 6000 FF6A 286E FFF8 2F0C 486E"            /* 6.XO`.ˇj(nˇ¯/.Hn */
	$"FFDC 2F0A 4EB9 0000 288E 266A 0038 D7EC"            /* ˇ‹/.Nπ..(é&j.8◊Ï */
	$"000A 26AA 0048 276A 0044 0004 276A 004C"            /* ..&™.H'j.D..'j.L */
	$"0008 206A 0044 0C10 002A 4FEF 000C 661A"            /* .. j.D...*OÔ..f. */
	$"204B 5088 5088 2748 000C 206A 0048 2010"            /*  KPàPà'H.. j.H . */
	$"D0AE FFD8 2740 0010 600C 206A 0048 D1EE"            /* –Æˇÿ'@..`. j.H—Ó */
	$"FFD8 2748 000C 13C4 0000 02F4 206E FFE4"            /* ˇÿ'H...ƒ...Ù nˇ‰ */
	$"202C 0006 4870 0800 2F0A 4EB9 0000 2D6E"            /*  ,..Hp../.Nπ..-n */
	$"504F 4CDF 1C18 4E5E 4E75 8024 4578 3638"            /* POLﬂ..N^NuÄ$Ex68 */
	$"4B5F 5468 726F 7748 616E 646C 6572 5F5F"            /* K_ThrowHandler__ */
	$"4650 3132 5468 726F 7743 6F6E 7465 7874"            /* FP12ThrowContext */
	$"0000 9EFC 0054 48EF 00FF 0000 48EF FF00"            /* ..û¸.THÔ.ˇ..HÔˇ. */
	$"0020 06AF 0000 0064 003C 2F6F 0054 0040"            /* . .Ø...d.</o.T.@ */
	$"2F6F 0058 0044 2F6F 005C 0048 2F6F 0060"            /* /o.X.D/o.\.H/o.` */
	$"004C 2F0F 4EB9 0000 2E5A 875F 5F74 6872"            /* .L/.Nπ...Zá__thr */
	$"6F77 0000 206F 0004 7000 90AF 000C 2140"            /* ow.. o..p.êØ..!@ */
	$"0004 7000 222F 0008 9181 2080 4E75 8A5F"            /* ..p."/..ëÅ ÄNuä_ */
	$"5F72 745F 6E65 6736 3400 0000 206F 0004"            /* _rt_neg64... o.. */
	$"202F 000C 90AF 0014 2140 0004 202F 0008"            /*  /..êØ..!@.. /.. */
	$"222F 0010 9181 2080 4E75 8A5F 5F72 745F"            /* "/..ëÅ ÄNuä__rt_ */
	$"7375 6236 3400 0000 4E56 FFF0 48E7 1F38"            /* sub64...NVˇHÁ.8 */
	$"266E 0008 206E 000C 4A90 660A 2048 4AA8"            /* &n.. n..Jêf. HJ® */
	$"0004 6700 00DE 7600 7800 2C13 246B 0004"            /* ..g..ﬁv.x.,.$k.. */
	$"206E 000C 2D50 FFF4 2D68 0004 FFF0 7E00"            /*  n..-PˇÙ-h..ˇ~. */
	$"7A00 97CB D683 2004 0280 8000 0000 6704"            /* z.óÀ÷É ..ÄÄ...g. */
	$"7001 8680 D884 2006 0280 8000 0000 6704"            /* p.ÜÄÿÑ ..ÄÄ...g. */
	$"7001 8880 DC86 200A 0280 8000 0000 6704"            /* p.àÄ‹Ü ..ÄÄ...g. */
	$"7001 8C80 200A D080 2440 DE87 2005 0280"            /* p.åÄ .–Ä$@ﬁá ..Ä */
	$"8000 0000 6704 7001 8E80 DA85 B6AE FFF4"            /* Ä...g.p.éÄ⁄Ö∂ÆˇÙ */
	$"620C B6AE FFF4 6640 B8AE FFF0 653A 7001"            /* b.∂ÆˇÙf@∏Æˇe:p. */
	$"8A80 2D43 FFF8 41EE FFF8 5888 2848 2084"            /* äÄ-Cˇ¯AÓˇ¯Xà(H Ñ */
	$"206E 000C 2F28 0004 2F28 0000 2F2E FFFC"            /*  n../(../(../.ˇ¸ */
	$"2F2E FFF8 486E FFF8 4EB9 0000 30FC 262E"            /* /.ˇ¯Hnˇ¯Nπ..0¸&. */
	$"FFF8 2814 4FEF 0014 528B 7040 B7C0 6D00"            /* ˇ¯(.OÔ..Rãp@∑¿m. */
	$"FF64 4AAE 0010 670A 206E 0010 2087 2145"            /* ˇdJÆ..g. n.. á!E */
	$"0004 4AAE 0014 670A 206E 0014 2083 2144"            /* ..JÆ..g. n.. É!D */
	$"0004 4CDF 1CF8 4E5E 4E75 8D5F 5F72 745F"            /* ..Lﬂ.¯N^Nuç__rt_ */
	$"6469 766D 6F64 3634 0000 4E56 0000 42A7"            /* divmod64..NV..Bß */
	$"2F2E 0008 486E 0014 486E 000C 4EB9 0000"            /* /...Hn..Hn..Nπ.. */
	$"3128 206E 0008 4E5E 4E75 8B5F 5F72 745F"            /* 1( n..N^Nuã__rt_ */
	$"6469 7675 3634 0000 4E56 0000 2F2E 0008"            /* divu64..NV../... */
	$"42A7 486E 0014 486E 000C 4EB9 0000 3128"            /* BßHn..Hn..Nπ..1( */
	$"206E 0008 4E5E 4E75 8B5F 5F72 745F 6D6F"            /*  n..N^Nuã__rt_mo */
	$"6475 3634 0000 202F 0004 B0AF 000C 6706"            /* du64.. /..∞Ø..g. */
	$"6510 7001 4E75 202F 0008 B0AF 0010 6706"            /* e.p.Nu /..∞Ø..g. */
	$"64F0 70FF 4E75 7000 4E75 8B5F 5F72 745F"            /* dpˇNup.Nuã__rt_ */
	$"636D 7075 3634 0000 242F 0008 202F 0004"            /* cmpu64..$/.. /.. */
	$"222F 000C 94AF 0010 9181 6708 6D04 7001"            /* "/..îØ..ëÅg.m.p. */
	$"4E75 70FF 4E75 8B5F 5F72 745F 636D 7073"            /* NupˇNuã__rt_cmps */
	$"3634 0000 206F 0004 202F 0008 2140 0004"            /* 64.. o.. /..!@.. */
	$"0800 001F 6706 70FF 2080 4E75 7000 2080"            /* ....g.pˇ ÄNup. Ä */
	$"4E75 8C5F 5F72 745F 736C 746F 6936 3400"            /* Nuå__rt_sltoi64. */
	$"0000 4E56 0000 4EB9 0000 37B6 4E5E 4E75"            /* ..NV..Nπ..7∂N^Nu */
	$"9164 7468 616E 646C 6572 5F5F 3373 7464"            /* ëdthandler__3std */
	$"4676 0000 4E56 0000 206D FEE0 4E90 4E5E"            /* Fv..NV.. m˛‡NêN^ */
	$"4E75 9174 6572 6D69 6E61 7465 5F5F 3373"            /* Nuëterminate__3s */
	$"7464 4676 0000 48E7 1C38 262F 001C 286F"            /* tdFv..HÁ.8&/..(o */
	$"0020 2A2F 0024 2045 4290 264C 200C 6608"            /* . *..$ EBê&L .f. */
	$"7001 4CDF 1C38 4E75 2443 0C14 0050 6632"            /* p.Lﬂ.8Nu$C...Pf2 */
	$"528B 0C13 0043 6602 528B 0C13 0056 6602"            /* Rã...Cf.Rã...Vf. */
	$"528B 0C13 0076 6618 2043 1810 0C04 0050"            /* Rã...vf. C.....P */
	$"6706 0C04 002A 6608 7001 4CDF 1C38 4E75"            /* g....*f.p.Lﬂ.8Nu */
	$"264C 2043 1010 4880 48C0 0480 0000 0021"            /* &L C..HÄH¿.Ä...! */
	$"670A 5180 5380 6704 6000 00A8 B50B 6708"            /* g.QÄSÄg.`..®µ.g. */
	$"7000 4CDF 1C38 4E75 1012 B01B 6634 0C1A"            /* p.Lﬂ.8Nu..∞.f4.. */
	$"0021 66F4 7600 6018 2003 720A 4EB9 0000"            /* .!fÙv.`. .r.Nπ.. */
	$"04D2 121A 4881 48C1 D280 70D0 D280 2601"            /* .“..HÅH¡“Äp–“Ä&. */
	$"0C12 0021 66E2 2045 2083 7001 4CDF 1C38"            /* ...!f‚ E Ép.Lﬂ.8 */
	$"4E75 0C1A 0021 66FA 0C1A 0021 66FA 4A12"            /* Nu...!f˙...!f˙J. */
	$"6608 7000 4CDF 1C38 4E75 264C 528B 60A8"            /* f.p.Lﬂ.8Nu&LRã`® */
	$"528A 528B 0C13 0043 660A 0C12 0043 6602"            /* RäRã...Cf....Cf. */
	$"528A 528B 1612 0C03 0043 6608 7000 4CDF"            /* RäRã.....Cf.p.Lﬂ */
	$"1C38 4E75 0C13 0056 660A 0C03 0056 6602"            /* .8Nu...Vf....Vf. */
	$"528A 528B 0C12 0056 6608 7000 4CDF 1C38"            /* RäRã...Vf.p.Lﬂ.8 */
	$"4E75 1612 0C03 0050 6706 0C03 0052 6616"            /* Nu.....Pg....Rf. */
	$"B613 67AC 6010 4A03 6608 7001 4CDF 1C38"            /* ∂.g¨`.J.f.p.Lﬂ.8 */
	$"4E75 528A 528B 1612 B613 67EA 7000 4CDF"            /* NuRäRã..∂.gÍp.Lﬂ */
	$"1C38 4E75 955F 5F74 6872 6F77 5F63 6174"            /* .8Nuï__throw_cat */
	$"6368 5F63 6F6D 7061 7265 0000 5D8F 486F"            /* ch_compare..]èHo */
	$"0002 303C 0203 AA68 4A5F 6604 205F 4ED0"            /* ..0<..™hJ_f. _N– */
	$"205F DEFC 000C 4257 4ED0 4E56 0000 203C"            /*  _ﬁ¸..BWN–NV.. < */
	$"0000 A89F A746 2F08 203C 0000 A0AD A346"            /* ..®üßF/. <..†≠£F */
	$"B1DF 670E 202E 000C A1AD 226E 0008 2288"            /* ±ﬂg. ...°≠"n.."à */
	$"6026 41FA 0036 303C EA51 222E 000C B298"            /* `&A˙.60<ÍQ"...≤ò */
	$"6706 4A98 6712 60F6 43FA 0020 D3D0 4ED1"            /* g.Jòg.`ˆC˙. ”–N— */
	$"226E 0008 2280 4240 3D40 0010 4E5E 205F"            /* "n.."ÄB@=@..N^ _ */
	$"508F 4ED0 303C EA52 60EE 7665 7273 0000"            /* PèN–0<ÍR`Óvers.. */
	$"0060 6D61 6368 0000 0064 7379 7376 0000"            /* .`mach...dsysv.. */
	$"0088 7072 6F63 0000 0092 6670 7520 0000"            /* .àproc...ífpu .. */
	$"009E 7164 2020 0000 00E8 6B62 6420 0000"            /* .ûqd  ...Ëkbd .. */
	$"011A 6174 6C6B 0000 0142 6D6D 7520 0000"            /* ..atlk...Bmmu .. */
	$"0164 7261 6D20 0000 0188 6C72 616D 0000"            /* .dram ...àlram.. */
	$"0188 0000 0000 0000 0000 7001 6082 2278"            /* .à........p.`Ç"x */
	$"02AE 7004 0C69 0075 0008 6712 0C69 0276"            /* .Æp..i.u..g..i.v */
	$"0008 6604 5240 6006 1038 0CB3 5C80 6000"            /* ..f.R@`..8.≥\Ä`. */
	$"FF60 7000 3038 015A 6000 FF56 7000 1038"            /* ˇ`p.08.Z`.ˇVp..8 */
	$"012F 5240 6000 FF4A 0C38 0004 012F 6738"            /* ./R@`.ˇJ.8.../g8 */
	$"0838 0004 0B22 6734 204F F280 0000 F327"            /* .8..."g4 OÚÄ..Û' */
	$"3017 2E48 0C40 1F18 6716 0C40 3F18 6710"            /* 0..H.@..g..@?.g. */
	$"0C40 3F38 670E 0C40 1F38 6708 7000 600E"            /* .@?8g..@.8g.p.`. */
	$"7001 600A 7002 6006 7003 6002 7000 6000"            /* p.`.p.`.p.`.p.`. */
	$"FF00 0C78 3FFF 028E 6E1C 303C A89F A746"            /* ˇ..x?ˇ.én.0<®üßF */
	$"2408 203C 0000 AB03 A746 203C 0000 0100"            /* $. <..´.ßF <.... */
	$"B488 6606 600A 7000 6006 203C 0000 0200"            /* ¥àf.`.p.`. <.... */
	$"6000 FECE 1038 021E 41FA 0016 2248 1218"            /* `.˛Œ.8..A˙.."H.. */
	$"6700 FED2 B200 66F6 91C9 2008 6000 FEB2"            /* g.˛“≤.fˆë… .`.˛≤ */
	$"0313 0B02 0106 0704 0508 0900 7000 4A38"            /* ............p.J8 */
	$"0291 6B16 1238 01FB 0201 000F 0C01 0001"            /* .ëk..8.˚........ */
	$"6608 2078 02DC 1028 0007 6000 FE84 0C38"            /* f. x.‹.(..`.˛Ñ.8 */
	$"0002 012F 6D16 7000 1038 0CB1 0C00 0001"            /* .../m.p..8.±.... */
	$"670C 0C00 0003 6D04 5340 6002 7000 6000"            /* g.....m.S@`.p.`. */
	$"FE60 303C A89F A746 2408 203C 0000 A88F"            /* ˛`0<®üßF$. <..®è */
	$"A746 2038 0108 B488 670A 598F 3F3C 0016"            /* ßF 8..¥àg.Yè?<.. */
	$"A88F 201F 6000 FE3A 225F 205F A025 2E80"            /* ®è .`.˛:"_ _†%.Ä */
	$"6A02 4297 4ED1 225F 121F 301F 4A01 6704"            /* j.BóN—"_..0.J.g. */
	$"A746 6002 A346 2E88 4ED1 206F 000C 226F"            /* ßF`.£F.àN— o.."o */
	$"0008 7000 1018 4840 1019 4A2F 0004 670E"            /* ..p...H@..J/..g. */
	$"4A2F 0006 6704 A43C 6010 A03C 600C 4A2F"            /* J/..g.§<`.†<`.J/ */
	$"0006 6704 A63C 6002 A23C 0A00 0001 1F40"            /* ..g.¶<`.¢<.....@ */
	$"0010 205F 4FEF 000C 4ED0 206F 0008 3F3C"            /* .. _OÔ..N– o..?< */
	$"0001 A9EE 206F 0004 2080 4EFA 000E 206F"            /* ..©Ó o.. ÄN˙.. o */
	$"0004 202F 0008 4267 A9EE 205F 504F 4ED0"            /* .. /..Bg©Ó _PON– */
	$"4FEF FFF6 2EAF 0012 2F6F 0016 0004 3F6F"            /* OÔˇˆ.Ø../o....?o */
	$"001A 0008 2F2F 000E 486F 0004 2F2F 0024"            /* ....//..Ho..//.$ */
	$"3F3C 000B A9EB 4FEF 000A 4E75 876E 756D"            /* ?<..©ÎOÔ..Nuánum */
	$"3264 6563 0000 3F3C 0001 4EB9 0000 4BDC"            /* 2dec..?<..Nπ..K‹ */
	$"3B7C 0001 FB10 3F3C 0001 4EB9 0000 37DC"            /* ;|..˚.?<..Nπ..7‹ */
	$"584F 4E75 8561 626F 7274 0000 4A6D FB10"            /* XONuÖabort..Jm˚. */
	$"6636 4AAD FC12 6F1A 53AD FC12 202D FC12"            /* f6J≠¸.o.S≠¸. -¸. */
	$"E588 41ED FB12 2070 0800 4E90 4AAD FC12"            /* ÂàAÌ˚. p..NêJ≠¸. */
	$"6EE6 4EB9 0000 04AE 4AAD FD1A 670A 206D"            /* nÊNπ...ÆJ≠˝.g. m */
	$"FD1A 4E90 42AD FD1A 3F2F 0004 4EB9 0000"            /* ˝.NêB≠˝.?/..Nπ.. */
	$"382E 544F 4E75 8465 7869 7400 0000 4AAD"            /* 8.TONuÑexit...J≠ */
	$"FD16 6F1A 53AD FD16 202D FD16 E588 41ED"            /* ˝.o.S≠˝. -˝.ÂàAÌ */
	$"FC16 2070 0800 4E90 4AAD FD16 6EE6 4AAD"            /* ¸. p..NêJ≠˝.nÊJ≠ */
	$"FD1E 670A 206D FD1E 4E90 42AD FD1E A9F4"            /* ˝.g. m˝.NêB≠˝.©Ù */
	$"4E75 865F 5F65 7869 7400 0000 226F 0004"            /* NuÜ__exit..."o.. */
	$"206F 0008 242F 000C 7200 4A82 630C 3018"            /*  o..$/..r.JÇc.0. */
	$"12C0 6706 5281 B282 65F4 2001 4E75 8877"            /* .¿g.RÅ≤ÇeÙ .Nuàw */
	$"6373 746F 6D62 7300 0000 222F 000A 342F"            /* cstombs..."/..4/ */
	$"0008 0242 00FF 48C2 226F 0004 5281 5381"            /* ...B.ˇH¬"o..RÅSÅ */
	$"6714 7000 1019 48C0 B082 6606 2049 5388"            /* g.p...H¿∞Çf. ISà */
	$"4E75 5381 66EC 91C8 4E75 866D 656D 6368"            /* NuSÅfÏë»NuÜmemch */
	$"7200 0000 48E7 1F3A 4FEF FFF6 246F 0032"            /* r...HÁ.:OÔˇˆ$o.2 */
	$"1EBC 0001 41D7 5288 2848 4210 41D7 5488"            /* .º..A◊Rà(HB.A◊Tà */
	$"2E08 4210 41D7 5688 2C08 4210 41D7 5888"            /* ..B.A◊Và,.B.A◊Xà */
	$"2808 4210 41D7 5C88 2C48 4250 41D7 5088"            /* (.B.A◊\à,HBPA◊Pà */
	$"2648 4250 528A 1012 4880 3600 0C40 0025"            /* &HBPRä..HÄ6..@.% */
	$"661E 1F43 0005 41D7 226F 003A 22D8 22D8"            /* f..C..A◊"o.:"ÿ"ÿ */
	$"32D8 204A 5288 4FEF 000A 4CDF 5CF8 4E75"            /* 2ÿ JRàOÔ..Lﬂ\¯Nu */
	$"7A01 3003 4EB9 0000 05BE 0044 0020 0030"            /* z.0.Nπ...æ.D. .0 */
	$"0004 0020 001C 0023 0024 002B 000E 002D"            /* ... ...#.$.+...- */
	$"0006 0030 0020 4217 6026 18BC 0001 6020"            /* ...0. B.`&.º..`  */
	$"0C14 0001 671A 18BC 0002 6014 2046 10BC"            /* ....g..º..`. F.º */
	$"0001 600C 4A17 6708 1EBC 0002 6002 7A00"            /* ..`.J.g..º..`.z. */
	$"4A45 6708 528A 1612 4883 60A4 0C43 002A"            /* JEg.Rä..HÉ`§.C.* */
	$"6634 206F 0036 5490 2050 3CA8 FFFE 4A68"            /* f4 o.6Tê P<®ˇ˛Jh */
	$"FFFE 6C08 4217 3016 4440 3C80 528A 1612"            /* ˇ˛l.B.0.D@<ÄRä.. */
	$"4883 6022 70D0 D043 720A C3D6 D240 3C81"            /* HÉ`"p––Cr.√÷“@<Å */
	$"528A 1612 4883 7000 1003 41ED FEE4 0830"            /* Rä..HÉp...AÌ˛‰.0 */
	$"0004 0000 66DE 0C56 01FD 6F20 1F7C 00FF"            /* ....fﬁ.V.˝o .|.ˇ */
	$"0005 41D7 226F 003A 22D8 22D8 32D8 204A"            /* ..A◊"o.:"ÿ"ÿ2ÿ J */
	$"5288 4FEF 000A 4CDF 5CF8 4E75 0C43 002E"            /* RàOÔ..Lﬂ\¯Nu.C.. */
	$"6654 2047 10BC 0001 528A 1012 4880 3600"            /* fT G.º..Rä..HÄ6. */
	$"0C40 002A 6630 206F 0036 5490 2050 36A8"            /* .@.*f0 o.6Tê P6® */
	$"FFFE 4A68 FFFE 6C04 2047 4210 528A 1612"            /* ˇ˛Jhˇ˛l. GB.Rä.. */
	$"4883 6022 70D0 D043 720A C3D3 D240 3681"            /* HÉ`"p––Cr.√”“@6Å */
	$"528A 1612 4883 7000 1003 41ED FEE4 0830"            /* Rä..HÉp...AÌ˛‰.0 */
	$"0004 0000 66DE 7A01 0C43 006C 6728 0C43"            /* ....fﬁz..C.lg(.C */
	$"0068 6708 0C43 004C 6736 603C 2044 10BC"            /* .hg..C.Lg6`< D.º */
	$"0002 0C2A 0068 0001 6630 10BC 0001 528A"            /* ...*.h..f0.º..Rä */
	$"1612 4883 6024 2044 10BC 0003 0C2A 006C"            /* ..HÉ`$ D.º...*.l */
	$"0001 6616 10BC 0004 528A 1612 4883 600A"            /* ..f..º..Rä..HÉ`. */
	$"2044 10BC 0005 6002 7A00 4A45 6706 528A"            /*  D.º..`.z.JEg.Rä */
	$"1612 4883 41D7 5A88 2848 1083 3003 4EB9"            /* ..HÉA◊Zà(H.É0.Nπ */
	$"0000 05BE 012C 0045 0078 000F 0045 009C"            /* ...æ.,.E.x...E.ú */
	$"0046 0068 0047 008C 0058 0032 0063 00CA"            /* .F.h.G.å.X.2.c.  */
	$"0064 002A 0065 0084 0066 0050 0067 0074"            /* .d.*.e.Ñ.f.P.g.t */
	$"0069 001A 006E 00EC 006F 0012 0070 0094"            /* .i...n.Ï.o...p.î */
	$"0073 00C6 0075 0006 0078 0002 2044 0C10"            /* .s.∆.u...x.. D.. */
	$"0005 6608 18BC 00FF 6000 00DA 2047 4A10"            /* ..f..º.ˇ`..⁄ GJ. */
	$"6608 36BC 0001 6000 00CC 0C17 0002 6600"            /* f.6º..`..Ã....f. */
	$"00C4 1EBC 0001 6000 00BC 2044 1610 0C03"            /* .ƒ.º..`..º D.... */
	$"0002 6706 0C03 0004 6608 18BC 00FF 6000"            /* ..g.....f..º.ˇ`. */
	$"00A4 2047 4A10 6600 009C 36BC 0006 6000"            /* .§ GJ.f..ú6º..`. */
	$"0094 4A53 6604 36BC 0001 2044 1610 0C03"            /* .îJSf.6º.. D.... */
	$"0002 670C 0C03 0004 6706 0C03 0001 6606"            /* ..g.....g.....f. */
	$"18BC 00FF 606E 2047 4A10 6668 36BC 0006"            /* .º.ˇ`n GJ.fh6º.. */
	$"6062 18BC 0078 2046 10BC 0001 2044 10BC"            /* `b.º.x F.º.. D.º */
	$"0003 36BC 0008 604C 2044 1610 0C03 0003"            /* ..6º..`L D...... */
	$"6606 10BC 0006 603C 2047 4A10 6604 4A03"            /* f..º..`< GJ.f.J. */
	$"6732 18BC 00FF 602C 2044 1610 0C03 0003"            /* g2.º.ˇ`, D...... */
	$"6606 10BC 0006 601C 4A03 6718 18BC 00FF"            /* f..º..`.J.g..º.ˇ */
	$"6012 2044 0C10 0005 660A 18BC 00FF 6004"            /* `. D....f..º.ˇ`. */
	$"18BC 00FF 41D7 226F 003A 22D8 22D8 32D8"            /* .º.ˇA◊"o.:"ÿ"ÿ2ÿ */
	$"204A 5288 4FEF 000A 4CDF 5CF8 4E75 8C70"            /*  JRàOÔ..Lﬂ\¯Nuåp */
	$"6172 7365 5F66 6F72 6D61 7400 0000 48E7"            /* arse_format...HÁ */
	$"1F38 554F 262F 0026 2A03 4257 246F 002A"            /* .8UO&/.&*.BW$o.* */
	$"4222 7800 4A83 661E 4A6F 0036 6618 4A2F"            /* B"x.JÉf.Jo.6f.J/ */
	$"0031 6708 0C2F 006F 0033 670A 204A 544F"            /* .1g../.o.3g. JTO */
	$"4CDF 1CF8 4E75 41EF 002E 5A88 2648 7000"            /* Lﬂ.¯NuAÔ..Zà&Hp. */
	$"1010 4EB9 0000 05BE 0044 0058 0078 0005"            /* ..Nπ...æ.D.X.x.. */
	$"0058 0034 0064 0012 0069 000E 006F 0018"            /* .X.4.d...i...o.. */
	$"0075 001C 0078 0020 7C0A 4A83 6C1E 4485"            /* .u...x. |.JÉl.DÖ */
	$"3EBC 0001 6016 7C08 422F 002F 600E 7C0A"            /* >º..`.|.B/./`.|. */
	$"422F 002F 6006 7C10 422F 002F 1E13 2005"            /* B/./`.|.B/./.. . */
	$"2206 4EB9 0000 0562 3600 2005 2206 4EB9"            /* ".Nπ...b6. .".Nπ */
	$"0000 0504 2A00 0C43 000A 6C06 0643 0030"            /* ....*..C..l..C.0 */
	$"6010 0C07 0078 6606 0643 0057 6004 0643"            /* `....xf..C.W`..C */
	$"0037 1503 5244 4A85 66C4 7008 BC80 6612"            /* .7..RDJÖfƒp.ºÄf. */
	$"4A2F 0031 670C 0C12 0030 6706 153C 0030"            /* J/.1g....0g..<.0 */
	$"5244 0C2F 0002 002E 6626 41EF 002E 5088"            /* RD./....f&AÔ..Pà */
	$"2848 30AF 0034 4A57 6606 4A2F 002F 6702"            /* (H0Ø.4JWf.J/./g. */
	$"5354 7010 BC80 6608 4A2F 0031 6702 5554"            /* STp.ºÄf.J/.1g.UT */
	$"206F 002A 91CA 3A2F 0036 3245 2009 D088"            /*  o.*ë :/.62E .–à */
	$"0C80 0000 01FD 6F0A 91C8 544F 4CDF 1CF8"            /* .Ä...˝o.ë»TOLﬂ.¯ */
	$"4E75 3605 6006 153C 0030 5244 B843 6DF6"            /* Nu6.`..<.0RD∏Cmˆ */
	$"7010 BC80 660C 4A2F 0031 6706 1513 153C"            /* p.ºÄf.J/.1g....< */
	$"0030 4A57 6706 153C 002D 601A 162F 002F"            /* .0JWg..<.-`.././ */
	$"0C03 0001 6606 153C 002B 600A 0C03 0002"            /* ....f..<.+`..... */
	$"6604 153C 0020 204A 544F 4CDF 1CF8 4E75"            /* f..<.  JTOLﬂ.¯Nu */
	$"886C 6F6E 6732 7374 7200 0000 48E7 1E38"            /* àlong2str...HÁ.8 */
	$"4FEF FFE8 2F6F 0038 0010 2F6F 003C 0014"            /* OÔˇË/o.8../o.<.. */
	$"7C00 246F 0040 4222 7800 42A7 42A7 2F2F"            /* |.$o.@B"x.BßBß// */
	$"0044 2F2F 0044 4EB9 0000 3296 4A40 4FEF"            /* .D//.DNπ..2ñJ@OÔ */
	$"0010 6620 4A6F 004C 661A 4A2F 0047 6708"            /* ..f Jo.Lf.J/.Gg. */
	$"0C2F 006F 0049 670C 204A 4FEF 0018 4CDF"            /* ./.o.Ig. JOÔ..Lﬂ */
	$"1C78 4E75 41EF 0044 5A88 2648 7000 1010"            /* .xNuAÔ.DZà&Hp... */
	$"4EB9 0000 05BE 0094 0058 0078 0005 0058"            /* Nπ...æ.î.X.x...X */
	$"007A 0064 0012 0069 000E 006F 004A 0075"            /* .z.d...i...o.J.u */
	$"0058 0078 0066 42AF 0008 2F7C 0000 000A"            /* .X.x.fBØ../|.... */
	$"000C 42A7 42A7 2F2F 0044 2F2F 0044 4EB9"            /* ..BßBß//.D//.DNπ */
	$"0000 32C8 4A40 4FEF 0010 6C4E 2F2F 0014"            /* ..2»J@OÔ..lN//.. */
	$"2F2F 0014 486F 0018 4EB9 0000 30D4 7C01"            /* //..Ho..Nπ..0‘|. */
	$"4FEF 000C 6034 42AF 0008 2F7C 0000 0008"            /* OÔ..`4BØ../|.... */
	$"000C 422F 0045 6022 42AF 0008 2F7C 0000"            /* ..B/.E`"BØ../|.. */
	$"000A 000C 422F 0045 6010 42AF 0008 2F7C"            /* ....B/.E`.BØ../| */
	$"0000 0010 000C 422F 0045 1A13 2F2F 000C"            /* ......B/.E..//.. */
	$"2F2F 000C 2F2F 001C 2F2F 001C 486F 0010"            /* //..//..//..Ho.. */
	$"4EB9 0000 3268 3628 0006 2F2F 0020 2F2F"            /* Nπ..2h6(..//. // */
	$"0020 2F2F 0030 2F2F 0030 486F 0034 4EB9"            /* . //.0//.0Ho.4Nπ */
	$"0000 323A 0C43 000A 4FEF 0028 6C06 0643"            /* ..2:.C..OÔ.(l..C */
	$"0030 6010 0C05 0078 6606 0643 0057 6004"            /* .0`....xf..C.W`. */
	$"0643 0037 1503 5244 42A7 42A7 2F2F 001C"            /* .C.7..RDBßBß//.. */
	$"2F2F 001C 4EB9 0000 3296 4A40 4FEF 0010"            /* //..Nπ..2ñJ@OÔ.. */
	$"668A 4878 0008 42A7 2F2F 0014 2F2F 0014"            /* fäHx..Bß//..//.. */
	$"4EB9 0000 3296 4A40 4FEF 0010 6612 4A2F"            /* Nπ..2ñJ@OÔ..f.J/ */
	$"0047 670C 0C12 0030 6706 153C 0030 5244"            /* .Gg....0g..<.0RD */
	$"0C2F 0002 0044 663C 41EF 0044 5088 2848"            /* ./...Df<AÔ.DPà(H */
	$"30AF 004A 4A46 6606 4A2F 0045 6702 5354"            /* 0Ø.JJFf.J/.Eg.ST */
	$"4878 0010 42A7 2F2F 0014 2F2F 0014 4EB9"            /* Hx..Bß//..//..Nπ */
	$"0000 3296 4A40 4FEF 0010 6608 4A2F 0047"            /* ..2ñJ@OÔ..f.J/.G */
	$"6702 5554 206F 0040 91CA 3A2F 004C 3245"            /* g.UT o.@ë :/.L2E */
	$"2009 D088 0C80 0000 01FD 6F0C 91C8 4FEF"            /*  .–à.Ä...˝o.ë»OÔ */
	$"0018 4CDF 1C78 4E75 3605 6006 153C 0030"            /* ..Lﬂ.xNu6.`..<.0 */
	$"5244 B843 6DF6 4878 0010 42A7 2F2F 0014"            /* RD∏CmˆHx..Bß//.. */
	$"2F2F 0014 4EB9 0000 3296 4A40 4FEF 0010"            /* //..Nπ..2ñJ@OÔ.. */
	$"660C 4A2F 0047 6706 1513 153C 0030 4A46"            /* f.J/.Gg....<.0JF */
	$"6706 153C 002D 601A 162F 0045 0C03 0001"            /* g..<.-`../.E.... */
	$"6606 153C 002B 600A 0C03 0002 6604 153C"            /* f..<.+`.....f..< */
	$"0020 204A 4FEF 0018 4CDF 1C78 4E75 8C6C"            /* .  JOÔ..Lﬂ.xNuål */
	$"6F6E 676C 6F6E 6732 7374 7200 0000 48E7"            /* onglong2str...HÁ */
	$"1C38 286F 001C 382F 0020 4A44 6C18 4214"            /* .8(o..8/. JDl.B. */
	$"426C 0002 197C 0001 0004 197C 0030 0005"            /* Bl...|.....|.0.. */
	$"4CDF 1C38 4E75 1A2C 0004 7000 1005 B840"            /* Lﬂ.8Nu.,..p...∏@ */
	$"6C00 009E 244C 5A8A D4C4 528A 76D0 D622"            /* l..û$LZä‘ƒRäv–÷" */
	$"0C03 0005 662A 7000 1005 264C 5A8B D6C0"            /* ....f*p...&LZã÷¿ */
	$"538B B7CA 6306 0C13 0030 67F4 B7CA 660A"            /* Sã∑ c....0gÙ∑ f. */
	$"102A FFFF 0240 0001 6002 7001 3A00 600C"            /* .*ˇˇ.@..`.p.:.`. */
	$"0C03 0005 5EC0 4400 4880 3A00 4A44 672C"            /* ....^¿D.HÄ:.JDg, */
	$"1622 4883 0643 FFD0 D645 0C03 0009 5EC0"            /* ."HÉ.Cˇ–÷E....^¿ */
	$"4400 4880 3A00 6604 4A03 6604 5344 6008"            /* D.HÄ:.f.J.f.SD`. */
	$"7030 D003 1480 6004 4A44 66D4 4A45 6716"            /* p0–..Ä`.JDf‘JEg. */
	$"526C 0002 197C 0001 0004 197C 0031 0005"            /* Rl...|.....|.1.. */
	$"4CDF 1C38 4E75 4A44 6700 FF44 1944 0004"            /* Lﬂ.8NuJDg.ˇD.D.. */
	$"4CDF 1C38 4E75 8D72 6F75 6E64 5F64 6563"            /* Lﬂ.8Nuçround_dec */
	$"696D 616C 0000 48E7 1F3A 4FEF FFC6 41EF"            /* imal..HÁ.:OÔˇ∆AÔ */
	$"0070 5088 2848 3610 0C43 01FD 6F0C 91C8"            /* .pPà(H6..C.˝o.ë» */
	$"4FEF 003A 4CDF 5CF8 4E75 422F 000E 3F7C"            /* OÔ.:Lﬂ\¯NuB/..?| */
	$"0020 0010 486F 0014 2F2F 006C 2F2F 006C"            /* . ..Ho..//.l//.l */
	$"3F2F 006E 486F 001C 4EB9 0000 3780 45EF"            /* ?/.nHo..Nπ..7ÄEÔ */
	$"0026 588A 264A 7000 1012 45EF 0026 5A8A"            /* .&Xä&Jp...EÔ.&Zä */
	$"2C0A D4C0 4FEF 0012 6006 5313 526F 0016"            /* ,.‘¿OÔ..`.S.Ro.. */
	$"0C13 0001 6306 0C22 0030 67EE 2046 7000"            /* ....c..".0gÓ Fp. */
	$"1010 0440 0030 6710 0440 0019 6712 5B40"            /* ...@.0g..@..g.[@ */
	$"6700 009C 6000 00B6 426F 0016 6000 00AE"            /* g..ú`..∂Bo..`..Æ */
	$"4297 42AF 0004 426F 0008 4857 486F 0066"            /* BóBØ..Bo..HWHo.f */
	$"3F3C 0008 A9EB 6436 246F 006C 5B8A 7000"            /* ?<..©Îd6$o.l[äp. */
	$"102F 0075 41ED FEE4 1030 0000 0240 0080"            /* ./.uAÌ˛‰.0...@.Ä */
	$"670E 204A 43ED FFE4 2008 10D9 66FC 6042"            /* g. JCÌˇ‰ ..Ÿf¸`B */
	$"204A 43ED FFEA 2008 10D9 66FC 6034 246F"            /*  JCÌˇÍ ..Ÿf¸`4$o */
	$"006C 598A 7000 102F 0075 41ED FEE4 1030"            /* .lYäp../.uAÌ˛‰.0 */
	$"0000 0240 0080 670E 204A 43ED FFF0 2008"            /* ...@.Äg. JCÌˇ . */
	$"10D9 66FC 600C 204A 43ED FFF4 2008 10D9"            /* .Ÿf¸`. JCÌˇÙ ..Ÿ */
	$"66FC 204A 4FEF 003A 4CDF 5CF8 4E75 246F"            /* f¸ JOÔ.:Lﬂ\¯Nu$o */
	$"006C 598A 204A 43ED FFF8 2008 10D9 66FC"            /* .lYä JCÌˇ¯ ..Ÿf¸ */
	$"204A 4FEF 003A 4CDF 5CF8 4E75 7000 1013"            /*  JOÔ.:Lﬂ\¯Nup... */
	$"5340 41EF 0014 5488 2C48 D150 246F 006C"            /* S@AÔ..Tà,H—P$o.l */
	$"4222 41EF 0070 5A88 2A08 7000 1010 4EB9"            /* B"AÔ.pZà*.p...Nπ */
	$"0000 05BE 02CC 0045 0067 0005 0045 0088"            /* ...æ.Ã.E.g...E.à */
	$"0046 0182 0047 000E 0065 007C 0066 0176"            /* .F.Ç.G...e.|.f.v */
	$"0067 0002 7000 1013 B043 6F0E 3F03 486F"            /* .g..p...∞Co.?.Ho */
	$"0016 4EB9 0000 403E 5C4F 3816 0C44 FFFC"            /* ..Nπ..@>\O8..Dˇ¸ */
	$"6D04 B843 6D28 4A2F 0073 6704 5354 6008"            /* m.∏Cm(J/.sg.ST`. */
	$"7000 1013 5340 3880 2045 0C10 0067 6606"            /* p...S@8Ä E...gf. */
	$"10BC 0065 6030 2045 10BC 0045 6028 4A2F"            /* .º.e`0 E.º.E`(J/ */
	$"0073 670A 3004 5240 9154 6000 0118 3004"            /* .sg.0.R@ëT`...0. */
	$"5240 7200 1213 9240 3881 4A41 6C00 0106"            /* R@r...í@8ÅJAl... */
	$"4254 6000 0100 3E14 3007 5240 3F40 000A"            /* BT`...>.0.R@?@.. */
	$"7200 1213 B240 6F10 3F2F 000A 486F 0016"            /* r...≤@o.?/..Ho.. */
	$"4EB9 0000 403E 5C4F 3816 3604 3F7C 002B"            /* Nπ..@>\O8.6.?|.+ */
	$"000C 4A44 6C08 4443 3F7C 002D 000C 7800"            /* ..JDl.DC?|.-..x. */
	$"6018 3043 2008 81FC 000A 4840 0640 0030"            /* `.0C .Å¸..H@.@.0 */
	$"1500 48C3 87FC 000A 5244 4A43 66E4 0C44"            /* ..H√á¸..RDJCf‰.D */
	$"0002 6DDE 152F 000D 2045 1510 206F 006C"            /* ..mﬁ./.. E.. o.l */
	$"91CA 3247 2009 D088 0C80 0000 01FD 6F0C"            /* ë 2G .–à.Ä...˝o. */
	$"91C8 4FEF 003A 4CDF 5CF8 4E75 7000 1013"            /* ë»OÔ.:Lﬂ\¯Nup... */
	$"3800 B06F 000A 6C12 3607 5443 9644 5343"            /* 8.∞o..l.6.TCñDSC */
	$"6708 153C 0030 5343 66F8 1813 7600 1604"            /* g..<.0SCf¯..v... */
	$"7000 1004 2646 D6C0 5343 6706 1523 5343"            /* p...&F÷¿SCg..#SC */
	$"66FA 4A47 6606 4A2F 0073 6704 153C 002E"            /* f˙JGf.J/.sg..<.. */
	$"2046 1510 4A2F 0014 6708 153C 002D 6000"            /*  F..J/..g..<.-`. */
	$"0160 162F 0071 0C03 0001 6608 153C 002B"            /* .`./.q....f..<.+ */
	$"6000 014E 0C03 0002 6600 0146 153C 0020"            /* `..N....f..F.<.  */
	$"6000 013E 7000 1013 3600 9056 5340 3800"            /* `..>p...6.êVS@8. */
	$"4A40 6C02 7800 3E14 B847 6F26 3004 9047"            /* J@l.x.>.∏Go&0.êG */
	$"3203 9240 3F01 486F 0016 4EB9 0000 403E"            /* 2.í@?.Ho..Nπ..@> */
	$"7000 1013 9056 5340 3800 4A40 5C4F 6C02"            /* p...êVS@8.J@\Ol. */
	$"7800 3016 5240 3A00 4A40 6C02 7A00 3005"            /* x.0.R@:.J@l.z.0. */
	$"D044 0C40 01FD 6F0C 91C8 4FEF 003A 4CDF"            /* –D.@.˝o.ë»OÔ.:Lﬂ */
	$"5CF8 4E75 7000 1013 2846 D8C0 7600 3007"            /* \¯Nup...(Fÿ¿v.0. */
	$"9044 3F40 0012 4A40 6F44 3C2F 0012 5146"            /* êD?@..J@oD</..QF */
	$"0C6F 0008 0012 6F00 00C4 153C 0030 153C"            /* .o....o..ƒ.<.0.< */
	$"0030 153C 0030 153C 0030 153C 0030 153C"            /* .0.<.0.<.0.<.0.< */
	$"0030 153C 0030 153C 0030 5043 B646 6DDA"            /* .0.<.0.<.0PC∂Fm⁄ */
	$"6000 009A 153C 0030 5243 B646 6DF6 7600"            /* `..ö.<.0RC∂Fmˆv. */
	$"6004 1524 5243 B644 6C08 7000 1013 B640"            /* `..$RC∂Dl.p...∂@ */
	$"6DF0 B644 6C0A 153C 0030 5243 B644 6DF6"            /* m∂Dl..<.0RC∂Dmˆ */
	$"4A47 6606 4A2F 0073 6704 153C 002E 4A45"            /* JGf.J/.sg..<..JE */
	$"6724 7600 6006 153C 0030 5243 7000 1013"            /* g$v.`..<.0RCp... */
	$"3205 9240 B641 6DEE B645 6C0E 1524 5243"            /* 2.í@∂AmÓ∂El..$RC */
	$"B645 6DF8 6004 153C 0030 4A2F 0014 6706"            /* ∂Em¯`..<.0J/..g. */
	$"153C 002D 601A 162F 0071 0C03 0001 6606"            /* .<.-`../.q....f. */
	$"153C 002B 600A 0C03 0002 6604 153C 0020"            /* .<.+`.....f..<.  */
	$"204A 4FEF 003A 4CDF 5CF8 4E75 3C2F 0012"            /*  JOÔ.:Lﬂ\¯Nu</.. */
	$"6000 FF68 4CDF 5CF8 4E75 8966 6C6F 6174"            /* `.ˇhLﬂ\¯Nuâfloat */
	$"3273 7472 0000 48E7 1F3A 4FEF FDD2 286F"            /* 2str..HÁ.:OÔ˝“(o */
	$"0256 266F 025A 1F7C 0020 0222 2C6F 025E"            /* .V&o.Z.|. .",o.^ */
	$"7C00 41EF 0022 41E8 0200 2E08 41EF 0022"            /* |.AÔ."AË....AÔ." */
	$"41E8 01FF 2F48 0016 6000 050C 3F3C 0025"            /* AË.ˇ/H..`...?<.% */
	$"2F0E 4EB9 0000 4C50 2808 2008 5C4F 6634"            /* /.Nπ..LP(. .\Of4 */
	$"204E 70FF 5280 4A18 66FA 3600 DC43 4A43"            /*  NpˇRÄJ.f˙6.‹CJC */
	$"6700 04EA 3043 2F08 2F0E 2F0B 4E94 2008"            /* g..Í0C/././.Nî . */
	$"4FEF 000C 6600 04D6 70FF 4FEF 022E 4CDF"            /* OÔ..f..÷pˇOÔ..Lﬂ */
	$"5CF8 4E75 2044 91CE 2608 DC43 4A43 671E"            /* \¯Nu DëŒ&.‹CJCg. */
	$"3043 2F08 2F0E 2F0B 4E94 2008 4FEF 000C"            /* 0C/././.Nî .OÔ.. */
	$"660C 70FF 4FEF 022E 4CDF 5CF8 4E75 2444"            /* f.pˇOÔ..Lﬂ\¯Nu$D */
	$"486F 0224 486F 0266 2F0A 4EB9 0000 38D4"            /* Ho.$Ho.f/.Nπ..8‘ */
	$"2C48 7000 102F 0235 4FEF 000C 4EB9 0000"            /* ,Hp../.5OÔ..Nπ.. */
	$"05BE 035E 0025 00FF 0010 0025 0346 0045"            /* .æ.^.%.ˇ...%.F.E */
	$"01AA 0046 01A6 0047 01A2 0058 00E6 0063"            /* .™.F.¶.G.¢.X.Ê.c */
	$"031C 0064 002A 0065 0192 0066 018E 0067"            /* ...d.*.e.í.f.é.g */
	$"018A 0069 001A 006E 02BA 006F 00C6 0073"            /* .ä.i...n.∫.o.∆.s */
	$"0200 0075 00BE 0078 00BA 00FF 0314 162F"            /* ...u.æ.x.∫.ˇ.../ */
	$"0228 0C03 0003 660E 58AF 0262 206F 0262"            /* .(....f.XØ.b o.b */
	$"2A28 FFFC 602A 0C03 0004 6616 50AF 0262"            /* *(ˇ¸`*....f.PØ.b */
	$"206F 0262 2F68 FFF8 001A 2F68 FFFC 001E"            /*  o.b/hˇ¯../hˇ¸.. */
	$"600E 54AF 0262 206F 0262 3268 FFFE 2A09"            /* `.TØ.b o.b2hˇ˛*. */
	$"0C03 0002 6604 3045 2A08 0C03 0001 6604"            /* ....f.0E*.....f. */
	$"4885 48C5 0C03 0004 662A 2F2F 022A 2F2F"            /* HÖH≈....f*./.*./ */
	$"022A 3F2F 022C 2F07 2F2F 002C 2F2F 002C"            /* .*?/.,/.//.,//., */
	$"4EB9 0000 3DBC 2448 2008 4FEF 0016 6700"            /* Nπ..=º$H .OÔ..g. */
	$"0290 6022 2F2F 022A 2F2F 022A 3F2F 022C"            /* .ê`"//.*./.*?/., */
	$"2F07 2F05 4EB9 0000 3C2E 2448 2008 4FEF"            /* /./.Nπ..<.$H .OÔ */
	$"0012 6700 026C 206F 0016 91CA 2808 6000"            /* ..g..l o..ë (.`. */
	$"029C 162F 0228 0C03 0003 660E 58AF 0262"            /* .ú./.(....f.XØ.b */
	$"206F 0262 2A28 FFFC 602A 0C03 0004 6616"            /*  o.b*(ˇ¸`*....f. */
	$"50AF 0262 206F 0262 2F68 FFF8 001A 2F68"            /* PØ.b o.b/hˇ¯../h */
	$"FFFC 001E 600E 54AF 0262 206F 0262 7A00"            /* ˇ¸..`.TØ.b o.bz. */
	$"3A28 FFFE 0C03 0002 6606 7000 3005 2A00"            /* :(ˇ˛....f.p.0.*. */
	$"0C03 0001 6606 7000 1005 2A00 0C03 0004"            /* ....f.p...*..... */
	$"662A 2F2F 022A 2F2F 022A 3F2F 022C 2F07"            /* f*./.*./.*?/.,/. */
	$"2F2F 002C 2F2F 002C 4EB9 0000 3DBC 2448"            /* //.,//.,Nπ..=º$H */
	$"2008 4FEF 0016 6700 01D8 6022 2F2F 022A"            /*  .OÔ..g..ÿ`"//.* */
	$"2F2F 022A 3F2F 022C 2F07 2F05 4EB9 0000"            /* //.*?/.,/./.Nπ.. */
	$"3C2E 2448 2008 4FEF 0012 6700 01B4 206F"            /* <.$H .OÔ..g..¥ o */
	$"0016 91CA 2808 6000 01E4 0C2F 0005 0228"            /* ..ë (.`..‰./...( */
	$"661C 700A D1AF 0262 206F 0262 2EA8 FFF6"            /* f.p.—Ø.b o.b.®ˇˆ */
	$"2F68 FFFA 0004 3F68 FFFE 0008 601A 700A"            /* /hˇ˙..?hˇ˛..`.p. */
	$"D1AF 0262 206F 0262 2EA8 FFF6 2F68 FFFA"            /* —Ø.b o.b.®ˇˆ/hˇ˙ */
	$"0004 3F68 FFFE 0008 2F57 000C 2F6F 0004"            /* ..?hˇ˛../W../o.. */
	$"0010 3F6F 0008 0014 2F2F 022A 2F2F 022A"            /* ..?o....//.*./.* */
	$"3F2F 022C 2F07 2F2F 0020 2F2F 0020 3F2F"            /* ?/.,/.//. //. ?/ */
	$"0022 4EB9 0000 4126 2448 2008 4FEF 0018"            /* ."Nπ..A&$H .OÔ.. */
	$"6700 012E 206F 0016 91CA 2808 6000 015E"            /* g... o..ë (.`..^ */
	$"0C2F 0006 0228 6636 58AF 0262 206F 0262"            /* ./...(f6XØ.b o.b */
	$"2468 FFFC 200A 6604 45ED FFFC 4878 0200"            /* $hˇ¸ .f.EÌˇ¸Hx.. */
	$"2F0A 486F 002A 4EB9 0000 386C 3600 4A40"            /* /.Ho.*Nπ..8l6.J@ */
	$"4FEF 000C 6D00 00EA 45EF 0022 600C 58AF"            /* OÔ..m..ÍEÔ."`.XØ */
	$"0262 206F 0262 2468 FFFC 200A 6604 45ED"            /* .b o.b$hˇ¸ .f.EÌ */
	$"FFFE 4A2F 0227 671C 7800 181A 4A2F 0226"            /* ˇ˛J/.'g.x...J/.& */
	$"6700 00FA 362F 022C B843 6F00 00F0 3803"            /* g..˙6/.,∏Co..8. */
	$"6000 00EA 4A2F 0226 6728 382F 022C 3044"            /* `..ÍJ/.&g(8/.,0D */
	$"2F08 4267 2F0A 4EB9 0000 389A 2608 2008"            /* /.Bg/.Nπ..8ö&. . */
	$"4FEF 000A 6700 00C6 2043 91CA 2808 6000"            /* OÔ..g..∆ Cë (.`. */
	$"00BC 204A 70FF 5280 4A18 66FA 3800 6000"            /* .º JpˇRÄJ.f˙8.`. */
	$"00AC 58AF 0262 206F 0262 2468 FFFC 7000"            /* .¨XØ.b o.b$hˇ¸p. */
	$"102F 0228 6710 5540 6712 5340 6714 5340"            /* ./.(g.U@g.S@g.S@ */
	$"6718 6000 0162 3486 6000 015C 3486 6000"            /* g.`..b4Ü`..\4Ü`. */
	$"0156 3046 2488 6000 014E 3046 2F08 2F0A"            /* .V0F$à`..N0F/./. */
	$"4EB9 0000 32F4 504F 6000 013C 45EF 0022"            /* Nπ..2ÙPO`..<EÔ." */
	$"54AF 0262 206F 0262 1F68 FFFF 0022 7801"            /* TØ.b o.b.hˇˇ."x. */
	$"604A 45EF 0022 1F7C 0025 0022 7801 603C"            /* `JEÔ.".|.%."x.`< */
	$"2044 70FF 5280 4A18 66FA 3600 DC43 4A43"            /*  DpˇRÄJ.f˙6.‹CJC */
	$"671E 3043 2F08 2F04 2F0B 4E94 2008 4FEF"            /* g.0C/././.Nî .OÔ */
	$"000C 660C 70FF 4FEF 022E 4CDF 5CF8 4E75"            /* ..f.pˇOÔ..Lﬂ\¯Nu */
	$"3006 4FEF 022E 4CDF 5CF8 4E75 3604 4A2F"            /* 0.OÔ..Lﬂ\¯Nu6.J/ */
	$"0224 6778 0C2F 0002 0224 6604 7030 6002"            /* .$gx./...$f.p0`. */
	$"7020 1F40 0222 1F52 000B 0C12 002B 6708"            /* p .@.".R.....+g. */
	$"0C2F 002D 000B 664E 0C2F 0030 0222 6646"            /* ./.-..fN./.0."fF */
	$"4878 0001 2F0A 2F0B 4E94 2008 4FEF 000C"            /* Hx.././.Nî .OÔ.. */
	$"660C 70FF 4FEF 022E 4CDF 5CF8 4E75 528A"            /* f.pˇOÔ..Lﬂ\¯NuRä */
	$"5344 6022 4878 0001 486F 0226 2F0B 4E94"            /* SD`"Hx..Ho.&/.Nî */
	$"2008 4FEF 000C 660C 70FF 4FEF 022E 4CDF"            /*  .OÔ..f.pˇOÔ..Lﬂ */
	$"5CF8 4E75 5243 B66F 022A 6DD8 4A44 671E"            /* \¯NuRC∂o.*mÿJDg. */
	$"3044 2F08 2F0A 2F0B 4E94 2008 4FEF 000C"            /* 0D/././.Nî .OÔ.. */
	$"660C 70FF 4FEF 022E 4CDF 5CF8 4E75 4A2F"            /* f.pˇOÔ..Lﬂ\¯NuJ/ */
	$"0224 6630 6028 1F7C 0020 0223 4878 0001"            /* .$f0`(.|. .#Hx.. */
	$"486F 0227 2F0B 4E94 2008 4FEF 000C 660C"            /* Ho.'/.Nî .OÔ..f. */
	$"70FF 4FEF 022E 4CDF 5CF8 4E75 5243 B66F"            /* pˇOÔ..Lﬂ\¯NuRC∂o */
	$"022A 6DD2 DC43 4A16 6600 FAF2 3006 4FEF"            /* .*m“‹CJ.f.˙Ú0.OÔ */
	$"022E 4CDF 5CF8 4E75 8C5F 5F70 666F 726D"            /* ..Lﬂ\¯Nuå__pform */
	$"6174 7465 7200 0000 48E7 1C30 246F 0018"            /* atter...HÁ.0$o.. */
	$"2A2A 0004 282A 0008 2004 D0AF 0020 B085"            /* **..(*.. .–Ø. ∞Ö */
	$"6206 202F 0020 6004 2005 9084 2600 2A03"            /* b. /. `. .êÑ&.*. */
	$"2252 43F1 4800 206F 001C 2005 7220 B081"            /* "RCÒH. o.. .r ∞Å */
	$"6504 A22E 600E 4A80 670A 2209 12D8 5380"            /* e.¢.`.JÄg."..ÿSÄ */
	$"66FA 2241 2649 D7AA 0008 204B 4CDF 0C38"            /* f˙"A&I◊™.. KLﬂ.8 */
	$"4E75 8D5F 5F53 7472 696E 6757 7269 7465"            /* Nuç__StringWrite */
	$"0000 48E7 1C20 4FEF FFF4 246F 0020 2A2F"            /* ..HÁ. OÔˇÙ$o. *. */
	$"0024 2E8A 2F45 0004 42AF 0008 2F2F 002C"            /* .$.ä/E..BØ..//., */
	$"2F2F 002C 486F 0008 4879 0000 4AE8 4EB9"            /* //.,Ho..Hy..JËNπ */
	$"0000 4586 3600 3043 2808 B1C5 4FEF 0010"            /* ..EÜ6.0C(.±≈OÔ.. */
	$"6404 2004 6004 2005 5380 4232 0800 3003"            /* d. .`. .SÄB2..0. */
	$"4FEF 000C 4CDF 0438 4E75 8976 736E 7072"            /* OÔ..Lﬂ.8Nuâvsnpr */
	$"696E 7466 0000 486F 000C 2F2F 000C 4878"            /* intf..Ho..//..Hx */
	$"FFFF 2F2F 0010 4EB9 0000 4B52 4FEF 0010"            /* ˇˇ//..Nπ..KROÔ.. */
	$"4E75 8773 7072 696E 7466 0000 48E7 1038"            /* Nuásprintf..HÁ.8 */
	$"362F 0014 0C43 0001 6D06 0C43 0006 6F08"            /* 6/...C..m..C..o. */
	$"70FF 4CDF 1C08 4E75 3003 5340 48C0 E588"            /* pˇLﬂ..Nu0.S@H¿Âà */
	$"41ED FD22 D1C0 2648 2850 244C 7001 B9C0"            /* AÌ˝"—¿&H(P$Lp.π¿ */
	$"6702 4293 7001 B5C0 670A 200A 660E 0C43"            /* g.Bìp.µ¿g. .f..C */
	$"0001 6608 7000 4CDF 1C08 4E75 200A 660A"            /* ..f.p.Lﬂ..Nu .f. */
	$"4267 4EB9 0000 37DC 544F 3F03 4E92 7000"            /* BgNπ..7‹TO?.Níp. */
	$"544F 4CDF 1C08 4E75 8572 6169 7365 0000"            /* TOLﬂ..NuÖraise.. */
	$"48E7 1820 246F 0010 182F 0015 600E B604"            /* HÁ. $o.../..`.∂. */
	$"660A 204A 5388 4CDF 0418 4E75 161A 66EE"            /* f. JSàLﬂ..Nu..fÓ */
	$"4A04 6704 91C8 6004 204A 5388 4CDF 0418"            /* J.g.ë»`. JSàLﬂ.. */
	$"4E75 8673 7472 6368 7200 0000 4E56 FF00"            /* NuÜstrchr...NVˇ. */
	$"48E7 1838 266E 0008 286E 000C 262E 0010"            /* HÁ.8&n..(n..&... */
	$"7094 3800 7000 244B 2540 0008 7000 2540"            /* pî8.p.$K%@..p.%@ */
	$"0004 2483 486E FF00 2F0B 4EB9 0000 4F1E"            /* ..$ÉHnˇ./.Nπ..O. */
	$"504F 204B 5048 2F08 204B 2F10 2F0C 486E"            /* PO KPH/. K/./.Hn */
	$"FF00 2F08 4EB9 0000 4DF8 4FEF 0014 3800"            /* ˇ./.Nπ..M¯OÔ..8. */
	$"200B 4CDF 1C18 4E5E 4E75 9A5F 5F63 745F"            /*  .Lﬂ..N^Nuö__ct_ */
	$"5F31 3253 796D 626F 6C4C 6F6F 6B75 7044"            /* _12SymbolLookupD */
	$"5055 6355 6C00 0000 4E56 0000 48E7 0030"            /* PUcUl...NV..HÁ.0 */
	$"266E 0008 204B 4AA8 0008 671A 554F 244B"            /* &n.. KJ®..g.UO$K */
	$"584A 2F0A 3F3C 0004 AA5A 544F 204B 2F28"            /* XJ/.?<..™ZTO K/( */
	$"0008 7001 AA59 4CDF 0C00 4E5E 4E75 965F"            /* ..p.™YLﬂ..N^Nuñ_ */
	$"5F64 745F 5F31 3253 796D 626F 6C4C 6F6F"            /* _dt__12SymbolLoo */
	$"6B75 7044 7600 0000 4E56 FFFC 48E7 1030"            /* kupDv...NVˇ¸HÁ.0 */
	$"246E 0008 266E 000C 7000 2D40 FFFC 4240"            /* $n..&n..p.-@ˇ¸B@ */
	$"3600 204B 20BC 3F3F 3F3F 202E FFFC 6610"            /* 6. K º???? .ˇ¸f. */
	$"203C 7379 7361 43EE FFFC A1AD 2288 3600"            /*  <sysaCÓˇ¸°≠"à6. */
	$"3003 662C 0CAE 0000 0001 FFFC 660A 204B"            /* 0.f,.Æ....ˇ¸f. K */
	$"20BC 6D36 386B 6018 0CAE 0000 0002 FFFC"            /*  ºm68k`..Æ....ˇ¸ */
	$"660A 204B 20BC 7077 7063 6004 363C EA52"            /* f. K ºpwpc`.6<ÍR */
	$"3003 4CDF 0C08 4E5E 4E75 8029 4765 7453"            /* 0.Lﬂ..N^NuÄ)GetS */
	$"7973 7465 6D41 7263 6869 7465 6374 7572"            /* ystemArchitectur */
	$"655F 5F31 3253 796D 626F 6C4C 6F6F 6B75"            /* e__12SymbolLooku */
	$"7044 5055 6C00 0000 4E56 FEF4 48E7 1C38"            /* pDPUl...NV˛ÙHÁ.8 */
	$"266E 0008 286E 000C 282E 0014 263C 3F3F"            /* &n..(n..(...&<?? */
	$"3F3F 2D43 FEF4 4240 3A00 0C83 3F3F 3F3F"            /* ??-C˛ÙB@:..É???? */
	$"6620 7000 244B 2540 0004 486E FEF4 2F0A"            /* f p.$K%@..Hn˛Ù/. */
	$"4EB9 0000 4D58 504F 3A00 4A40 6704 4EFA"            /* Nπ..MXPO:.J@g.N˙ */
	$"00A6 0CAE 6D36 386B FEF4 6608 1D7C 0010"            /* .¶.Æm68k˛Ùf..|.. */
	$"FFFD 6016 0CAE 7077 7063 FEF4 6608 1D7C"            /* ˇ˝`..Æpwpc˛Ùf..| */
	$"0001 FFFD 6004 3A3C EA52 204B 4AA8 0004"            /* ..ˇ˝`.:<ÍR KJ®.. */
	$"662A 554F 2F0C 2F2E FEF4 7001 2F00 204B"            /* f*UO/./.˛Ùp./. K */
	$"5848 2F08 486E FFF8 486E FEF8 3F3C 0001"            /* XH/.Hnˇ¯Hn˛¯?<.. */
	$"AA5A 301F 3A00 4A40 6702 604A 206E 0018"            /* ™Z0.:.J@g.`J n.. */
	$"4A90 6640 554F 204B 2F28 0004 2F2E 0010"            /* Jêf@UO K/(../... */
	$"2F2E 0018 486E FFFC 3F3C 0005 AA5A 301F"            /* /...Hnˇ¸?<..™Z0. */
	$"3A00 4A40 6708 7000 2D40 0018 6016 594F"            /* :.J@g.p.-@..`.YO */
	$"246E 0018 2F12 2F04 1F2E FFFD 7000 AA59"            /* $n.././...ˇ˝p.™Y */
	$"201F 2480 3005 4CDF 1C38 4E5E 4E75 802B"            /*  .$Ä0.Lﬂ.8N^NuÄ+ */
	$"436F 6E6E 6563 7454 6F4C 6962 7261 7279"            /* ConnectToLibrary */
	$"5F5F 3132 5379 6D62 6F6C 4C6F 6F6B 7570"            /* __12SymbolLookup */
	$"4450 5563 5431 556C 5050 6300 0000 4E56"            /* DPUcT1UlPPc...NV */
	$"FFF8 48E7 0038 246E 0008 266E 000C 486E"            /* ˇ¯HÁ.8$n..&n..Hn */
	$"FFF8 2F0A 4EB9 0000 4D58 504F 0CAE 6D36"            /* ˇ¯/.Nπ..MXPO.Æm6 */
	$"386B FFF8 6614 41FA 0056 2848 224B 1210"            /* 8kˇ¯f.A˙.V(H"K.. */
	$"7000 1001 5280 A22E 6014 41FA 0052 2D48"            /* p...RÄ¢.`.A˙.R-H */
	$"FFFC 224B 1210 7000 1001 5280 A22E 4CDF"            /* ˇ¸"K..p...RÄ¢.Lﬂ */
	$"1C00 4E5E 4E75 8023 4765 7446 7261 676D"            /* ..N^NuÄ#GetFragm */
	$"656E 744E 616D 655F 5F31 3253 796D 626F"            /* entName__12Symbo */
	$"6C4C 6F6F 6B75 7044 5055 6300 0020 0D4E"            /* lLookupDPUc.. .N */
	$"6176 6967 6174 696F 6E4C 6962 0000 0D4E"            /* avigationLib...N */
	$"6176 6967 6174 696F 6E4C 6962 0000 4E56"            /* avigationLib..NV */
	$"FFF0 48E7 1838 246E 0008 7094 3600 2F3C"            /* ˇHÁ.8$n..pî6./< */
	$"0000 00E0 487A 007C 486E FFF0 4EB9 0000"            /* ...‡Hz.|HnˇNπ.. */
	$"4C8C 4FEF 000C 41EE FFF0 2648 2848 2028"            /* LåOÔ..AÓˇ&H(H ( */
	$"0008 4480 9180 4480 4A00 6716 41EE FFF0"            /* ..DÄëÄDÄJ.g.AÓˇ */
	$"2D48 FFFC 554F 2F0A 2068 0008 4E90 301F"            /* -Hˇ¸UO/. h..Nê0. */
	$"3600 3003 3800 486E FFF0 4EB9 0000 4D08"            /* 6.0.8.HnˇNπ..M. */
	$"584F 3004 3D40 000C 4CDF 1C18 4E5E 205F"            /* XO0.=@..Lﬂ..N^ _ */
	$"584F 4ED0 9A4E 4156 4745 5444 4546 4155"            /* XON–öNAVGETDEFAU */
	$"4C54 4449 414C 4F47 4F50 5449 4F4E 5300"            /* LTDIALOGOPTIONS. */
	$"001C 1A4E 6176 4765 7444 6566 6175 6C74"            /* ...NavGetDefault */
	$"4469 616C 6F67 4F70 7469 6F6E 7300 4E56"            /* DialogOptions.NV */
	$"FFE8 48E7 1C38 262E 0008 246E 000C 266E"            /* ˇËHÁ.8&...$n..&n */
	$"0010 286E 0014 7094 3800 2F3C 003F FFE0"            /* ..(n..pî8./<.?ˇ‡ */
	$"487A 0088 486E FFE8 4EB9 0000 4C8C 4FEF"            /* Hz.àHnˇËNπ..LåOÔ */
	$"000C 41EE FFE8 2D48 FFF4 2D48 FFF8 2028"            /* ..AÓˇË-HˇÙ-Hˇ¯ ( */
	$"0008 4480 9180 4480 4A00 672C 41EE FFE8"            /* ..DÄëÄDÄJ.g,AÓˇË */
	$"2D48 FFFC 554F 2F2E 0024 2F2E 0020 2F2E"            /* -Hˇ¸UO/..$/.. /. */
	$"001C 2F2E 0018 2F0C 2F0B 2F0A 2F03 2068"            /* ../..././././. h */
	$"0008 4E90 301F 3800 3004 3A00 486E FFE8"            /* ..Nê0.8.0.:.HnˇË */
	$"4EB9 0000 4D08 584F 3005 3D40 0028 4CDF"            /* Nπ..M.XO0.=@.(Lﬂ */
	$"1C38 4E5E 205F 4FEF 0020 4ED0 8A4E 4156"            /* .8N^ _OÔ. N–äNAV */
	$"4745 5446 494C 4500 000C 0A4E 6176 4765"            /* GETFILE....NavGe */
	$"7446 696C 6500 4E56 FFF0 48E7 1838 246E"            /* tFile.NVˇHÁ.8$n */
	$"0008 7094 3600 2F3C 0000 00E0 487A 0070"            /* ..pî6./<...‡Hz.p */
	$"486E FFF0 4EB9 0000 4C8C 4FEF 000C 41EE"            /* HnˇNπ..LåOÔ..AÓ */
	$"FFF0 2648 2848 2028 0008 4480 9180 4480"            /* ˇ&H(H (..DÄëÄDÄ */
	$"4A00 6716 41EE FFF0 2D48 FFFC 554F 2F0A"            /* J.g.AÓˇ-Hˇ¸UO/. */
	$"2068 0008 4E90 301F 3600 3003 3800 486E"            /*  h..Nê0.6.0.8.Hn */
	$"FFF0 4EB9 0000 4D08 584F 3004 3D40 000C"            /* ˇNπ..M.XO0.=@.. */
	$"4CDF 1C18 4E5E 205F 584F 4ED0 8F4E 4156"            /* Lﬂ..N^ _XON–èNAV */
	$"4449 5350 4F53 4552 4550 4C59 0012 0F4E"            /* DISPOSEREPLY...N */
	$"6176 4469 7370 6F73 6552 6570 6C79 0000"            /* avDisposeReply.. */
	$"4E56 FFEC 48E7 1038 7094 3600 422E FFEC"            /* NVˇÏHÁ.8pî6.B.ˇÏ */
	$"7010 2F00 487A 0072 486E FFF0 4EB9 0000"            /* p./.Hz.rHnˇNπ.. */
	$"4C8C 4FEF 000C 41EE FFF0 2448 2648 2028"            /* LåOÔ..AÓˇ$H&H ( */
	$"0008 4480 9180 4480 4A00 6714 41EE FFF0"            /* ..DÄëÄDÄJ.g.AÓˇ */
	$"2848 554F 2068 0008 4E90 101F 1D40 FFEC"            /* (HUO h..Nê...@ˇÏ */
	$"102E FFEC 1D40 FFFC 486E FFF0 4EB9 0000"            /* ..ˇÏ.@ˇ¸HnˇNπ.. */
	$"4D08 584F 102E FFFC 1D40 0008 4CDF 1C08"            /* M.XO..ˇ¸.@..Lﬂ.. */
	$"4E5E 4E75 914E 4156 5345 5256 4943 4553"            /* N^NuëNAVSERVICES */
	$"4341 4E52 554E 0014 114E 6176 5365 7276"            /* CANRUN...NavServ */
	$"6963 6573 4361 6E52 756E 0000 4E56 FFFC"            /* icesCanRun..NVˇ¸ */
	$"48E7 1020 362E 0008 3003 48C0 0280 0000"            /* HÁ. 6...0.H¿.Ä.. */
	$"0800 6704 7001 6002 4200 1D40 FFFC 7201"            /* ..g.p.`.B..@ˇ¸r. */
	$"B001 6650 3003 0240 07FF 3600 594F 3F3C"            /* ∞.fP0..@.ˇ6.YO?< */
	$"A86E 7201 1F01 4EB9 0000 3706 205F 2448"            /* ®nr...Nπ..7. _$H */
	$"594F 3F3C AA6E 7001 1F00 4EB9 0000 3706"            /* YO?<™np...Nπ..7. */
	$"225F 204A B1C9 6608 203C 0000 0200 6006"            /* "_ J±…f. <....`. */
	$"203C 0000 0400 3203 3401 48C2 B082 6E04"            /*  <....2.4.H¬∞Çn. */
	$"4200 6032 594F 3F03 1F2E FFFC 4EB9 0000"            /* B.`2YO?...ˇ¸Nπ.. */
	$"3706 205F 2448 594F 3F3C A89F 7001 1F00"            /* 7. _$HYO?<®üp... */
	$"4EB9 0000 3706 225F 204A B1C9 6604 7000"            /* Nπ..7."_ J±…f.p. */
	$"6002 7001 2000 4CDF 0408 4E5E 4E75 8D54"            /* `.p. .Lﬂ..N^NuçT */
	$"7261 7041 7661 696C 6162 6C65 0000 4E56"            /* rapAvailable..NV */
	$"FFFC 422E FFFC 3F3C AA5A 4EB9 0000 525C"            /* ˇ¸B.ˇ¸?<™ZNπ..R\ */
	$"544F 4A00 670E 554F 4EB9 0000 51C0 101F"            /* TOJ.g.UONπ..Q¿.. */
	$"1D40 FFFC 102E FFFC 1D40 0008 4E5E 4E75"            /* .@ˇ¸..ˇ¸.@..N^Nu */
	$"944E 4156 5345 5256 4943 4553 4156 4149"            /* îNAVSERVICESAVAI */
	$"4C41 424C 4500 0000 4E56 0000 206E 0008"            /* LABLE...NV.. n.. */
	$"226E 000C 7200 6002 5241 4A30 1000 6706"            /* "n..r.`.RAJ0..g. */
	$"0C41 00FF 6DF2 3401 600C 3001 5340 13B0"            /* .A.ˇmÚ4.`.0.S@.∞ */
	$"0000 1000 5341 4A41 6EF0 1282 2049 4E5E"            /* ....SAJAn.Ç IN^ */
	$"4E75 8D43 3250 6173 5F5F 4650 6350 5563"            /* NuçC2Pas__FPcPUc */
	$"0000 4E56 0000 486D FAB8 A86E A8FE 2F3C"            /* ..NV..Hm˙∏®n®˛/< */
	$"0000 FFFF 201F A032 A912 A930 A9CC 42A7"            /* ..ˇˇ .†2©.©0©ÃBß */
	$"A97B A850 4878 0021 A862 4878 001E A863"            /* ©{®PHx.!®bHx..®c */
	$"A063 A036 A036 A036 A036 A036 41ED FA3A"            /* †c†6†6†6†6†6AÌ˙: */
	$"20B8 020C 4E5E 4E75 8F49 6E69 7454 6F6F"            /*  ∏..N^NuèInitToo */
	$"6C62 6F78 5F5F 4676 0000 4E56 0000 2F3C"            /* lbox__Fv..NV../< */
	$"0000 FFFF 201F A032 A9F4 4E5E 4E75 9345"            /* ..ˇˇ .†2©ÙN^NuìE */
	$"7869 7441 7070 6C69 6361 7469 6F6E 5F5F"            /* xitApplication__ */
	$"4676 0000 4E56 FDF8 486E FDFC 486E FDF8"            /* Fv..NV˝¯Hn˝¸Hn˝¯ */
	$"203C 0008 0005 AB1D 486E FF00 2F2E 0008"            /*  <....´.Hnˇ./... */
	$"4EBA FF16 486E FE00 2F2E 000C 4EBA FF0A"            /* N∫ˇ.Hn˛./...N∫ˇ. */
	$"486E FF00 486E FE00 42A7 42A7 A98B 3F3C"            /* Hnˇ.Hn˛.BßBß©ã?< */
	$"0BB8 42A7 A987 301F 2F2E FDFC 2F2E FDF8"            /* .∏Bß©á0./.˝¸/.˝¯ */
	$"203C 0008 0006 AB1D 4E5E 4E75 9544 6973"            /*  <....´.N^NuïDis */
	$"706C 6179 416C 6572 745F 5F46 5043 6350"            /* playAlert__FPCcP */
	$"4363 0000 4E56 FF00 3F2E 0008 486D FEB0"            /* Cc..NVˇ.?...Hm˛∞ */
	$"486E FF00 4EB9 0000 4BB6 486D FEB3 486E"            /* Hnˇ.Nπ..K∂Hm˛≥Hn */
	$"FF00 4EBA FF70 4E5E 4E75 9044 6973 706C"            /* ˇ.N∫ˇpN^NuêDispl */
	$"6179 5661 6C75 655F 5F46 6900 0000 4E56"            /* ayValue__Fi...NV */
	$"FFF8 486E FFFC 486E FFF8 203C 0008 0005"            /* ˇ¯Hnˇ¸Hnˇ¯ <.... */
	$"AB1D 2F2E 0008 2F2E 000C 42A7 42A7 A98B"            /* ´./.../...BßBß©ã */
	$"554F 3F3C 0BB8 42A7 A987 301F 2F2E FFFC"            /* UO?<.∏Bß©á0./.ˇ¸ */
	$"2F2E FFF8 203C 0008 0006 AB1D 4E5E 4E75"            /* /.ˇ¯ <....´.N^Nu */
	$"9644 6973 706C 6179 5041 6C65 7274 5F5F"            /* ñDisplayPAlert__ */
	$"4650 5563 5055 6300 0000 4E56 FFF0 48E7"            /* FPUcPUc...NVˇHÁ */
	$"1C00 486E FFF0 A976 302E 0008 E440 E048"            /* ..Hnˇ©v0...‰@‡H */
	$"EA48 D06E 0008 E640 41EE FFF0 7600 1630"            /* ÍH–n..Ê@AÓˇv..0 */
	$"0000 306E 0008 2A08 8BFC 0008 4845 7001"            /* ..0n..*.ã¸..HEp. */
	$"2803 EAA4 C880 1004 4CDF 0038 4E5E 4E75"            /* (.Í§»Ä..Lﬂ.8N^Nu */
	$"9049 734B 6579 5072 6573 7365 645F 5F46"            /* êIsKeyPressed__F */
	$"7300 0000 4E56 0000 226E 0008 206E 000C"            /* s...NV.."n.. n.. */
	$"7000 7200 1210 6008 13B0 0000 0000 5240"            /* p.r...`..∞....R@ */
	$"B041 6FF4 4E5E 4E75 9443 6F70 7953 7472"            /* ∞AoÙN^NuîCopyStr */
	$"696E 675F 5F46 5055 6350 4355 6300 0000"            /* ing__FPUcPCUc... */
	$"4E56 0000 2F04 226E 0008 206E 000C 7800"            /* NV../."n.. n..x. */
	$"1811 5244 7401 600E 3002 5242 3204 5244"            /* ..RDt.`.0.RB2.RD */
	$"13B0 0000 1000 7000 1010 B440 6FEA 0C42"            /* .∞....p...¥@oÍ.B */
	$"00FF 6EE4 1010 D111 281F 4E5E 4E75 9541"            /* .ˇn‰..—.(.N^NuïA */
	$"7070 656E 6453 7472 696E 675F 5F46 5055"            /* ppendString__FPU */
	$"6350 5563 0000 4E56 FFF4 2F0B 2F0A 266E"            /* cPUc..NVˇÙ/./.&n */
	$"0008 486E FFF4 A874 2D53 FFF8 2D6B 0004"            /* ..HnˇÙ®t-Sˇ¯-k.. */
	$"FFFC 486E FFF8 302B 0002 4440 3F00 3013"            /* ˇ¸Hnˇ¯0+..D@?.0. */
	$"4440 3F00 A8A8 706C A31E 2448 200A 6766"            /* D@?.®®pl£.$H .gf */
	$"2F0A A86F 256E FFF8 0008 256E FFFC 000C"            /* /.®o%nˇ¯..%nˇ¸.. */
	$"700F D06E FFFE E840 D040 3540 0006 302A"            /* p.–nˇ˛Ë@–@5@..0* */
	$"0006 C1EE FFFC A31E 2548 0002 4AAA 0002"            /* ..¡Óˇ¸£.%H..J™.. */
	$"672A 256E FFF8 0010 256E FFFC 0014 486E"            /* g*%nˇ¯..%nˇ¸..Hn */
	$"FFF8 A87B 2F2A 0018 486E FFF8 A8DF 4878"            /* ˇ¯®{/*..Hnˇ¯®ﬂHx */
	$"001E A863 486E FFF8 A8A3 600A 2F0A A87D"            /* ..®cHnˇ¯®£`./.®} */
	$"204A A01F 95CA 2F2E FFF4 A873 204A 245F"            /*  J†.ï /.ˇÙ®s J$_ */
	$"265F 4E5E 4E75 9743 7265 6174 6547 7261"            /* &_N^NuóCreateGra */
	$"6650 6F72 745F 5F46 5034 5265 6374 0000"            /* fPort__FP4Rect.. */
	$"4E56 0000 2F0A 246E 0008 2F0A A87D 206A"            /* NV../.$n../.®} j */
	$"0002 A01F 204A A01F 245F 4E5E 4E75 9C44"            /* ..†. J†.$_N^NuúD */
	$"6973 706F 7365 4772 6166 506F 7274 5F5F"            /* isposeGrafPort__ */
	$"4650 3847 7261 6650 6F72 7400 0000 4E56"            /* FP8GrafPort...NV */
	$"FFDA 2F0A 246E 0010 302E 000C 906E 0008"            /* ˇ⁄/.$n..0...ên.. */
	$"322A 0004 9252 B240 6C62 302E 000E 906E"            /* 2*..íR≤@lb0...ên */
	$"000A 322A 0006 926A 0002 B240 6C4E 2F0A"            /* ..2*..íj..≤@lN/. */
	$"3F2E 000A 3F2E 0008 A8A8 2F0A 302A 0006"            /* ?...?...®®/.0*.. */
	$"906A 0002 322E 000E 926E 000A 9240 3001"            /* êj..2...ín..í@0. */
	$"E048 EE48 D041 E240 3F00 302A 0004 9052"            /* ‡HÓH–A‚@?.0*..êR */
	$"322E 000C 926E 0008 9240 3001 E048 EE48"            /* 2...ín..í@0.‡HÓH */
	$"D041 E240 3F00 A8A8 6000 033E 302A 0006"            /* –A‚@?.®®`..>0*.. */
	$"906A 0002 322A 0004 9252 B240 6F00 0198"            /* êj..2*..íR≤@o..ò */
	$"302A 0004 9052 3D40 FFDA 486E FFDA 486E"            /* 0*..êR=@ˇ⁄Hnˇ⁄Hn */
	$"FFDA 3F3C 200E A9EB 486E FFDA 486E FFDA"            /* ˇ⁄?< .©ÎHnˇ⁄Hnˇ⁄ */
	$"3F3C 1010 A9EB 302E 000C 906E 0008 3D40"            /* ?<..©Î0...ên..=@ */
	$"FFE4 486E FFE4 486E FFE4 3F3C 200E A9EB"            /* ˇ‰Hnˇ‰Hnˇ‰?< .©Î */
	$"486E FFE4 486E FFE4 3F3C 1010 A9EB 486E"            /* Hnˇ‰Hnˇ‰?<..©ÎHn */
	$"FFE4 486E FFEE 3F3C 100E A9EB 486E FFDA"            /* ˇ‰HnˇÓ?<..©ÎHnˇ⁄ */
	$"486E FFEE 3F3C 1006 A9EB 486E FFEE 486E"            /* HnˇÓ?<..©ÎHnˇÓHn */
	$"FFF8 3F3C 1010 A9EB 2D6E FFF8 FFFC 4852"            /* ˇ¯?<..©Î-nˇ¯ˇ¸HR */
	$"486E FFEE 3F3C 200E A9EB 486E FFFC 486E"            /* HnˇÓ?< .©ÎHnˇ¸Hn */
	$"FFEE 3F3C 1004 A9EB 486E FFEE 3F3C 0016"            /* ˇÓ?<..©ÎHnˇÓ?<.. */
	$"A9EB 486E FFEE 486E FFEE 3F3C 2810 A9EB"            /* ©ÎHnˇÓHnˇÓ?<(.©Î */
	$"34AE FFF0 486A 0002 486E FFEE 3F3C 200E"            /* 4ÆˇHj..HnˇÓ?< . */
	$"A9EB 486E FFFC 486E FFEE 3F3C 1004 A9EB"            /* ©ÎHnˇ¸HnˇÓ?<..©Î */
	$"486E FFEE 3F3C 0016 A9EB 486E FFEE 486E"            /* HnˇÓ?<..©ÎHnˇÓHn */
	$"FFEE 3F3C 2810 A9EB 356E FFF0 0002 486A"            /* ˇÓ?<(.©Î5nˇ..Hj */
	$"0004 486E FFEE 3F3C 200E A9EB 486E FFFC"            /* ..HnˇÓ?< .©ÎHnˇ¸ */
	$"486E FFEE 3F3C 1004 A9EB 486E FFEE 3F3C"            /* HnˇÓ?<..©ÎHnˇÓ?< */
	$"0016 A9EB 486E FFEE 486E FFEE 3F3C 2810"            /* ..©ÎHnˇÓHnˇÓ?<(. */
	$"A9EB 356E FFF0 0004 486A 0006 486E FFEE"            /* ©Î5nˇ..Hj..HnˇÓ */
	$"3F3C 200E A9EB 486E FFFC 486E FFEE 3F3C"            /* ?< .©ÎHnˇ¸HnˇÓ?< */
	$"1004 A9EB 486E FFEE 3F3C 0016 A9EB 486E"            /* ..©ÎHnˇÓ?<..©ÎHn */
	$"FFEE 486E FFEE 3F3C 2810 A9EB 356E FFF0"            /* ˇÓHnˇÓ?<(.©Î5nˇ */
	$"0006 2F0A 3F2E 000A 3F2E 0008 A8A8 2F0A"            /* ../.?...?...®®/. */
	$"302A 0006 906A 0002 322E 000E 926E 000A"            /* 0*..êj..2...ín.. */
	$"9240 3001 E048 EE48 D041 E240 3F00 4267"            /* í@0.‡HÓH–A‚@?.Bg */
	$"A8A8 6000 0194 302A 0006 906A 0002 3D40"            /* ®®`..î0*..êj..=@ */
	$"FFEE 486E FFEE 486E FFEE 3F3C 200E A9EB"            /* ˇÓHnˇÓHnˇÓ?< .©Î */
	$"486E FFEE 486E FFEE 3F3C 1010 A9EB 302E"            /* HnˇÓHnˇÓ?<..©Î0. */
	$"000E 906E 000A 3D40 FFE4 486E FFE4 486E"            /* ..ên..=@ˇ‰Hnˇ‰Hn */
	$"FFE4 3F3C 200E A9EB 486E FFE4 486E FFE4"            /* ˇ‰?< .©ÎHnˇ‰Hnˇ‰ */
	$"3F3C 1010 A9EB 486E FFE4 486E FFDA 3F3C"            /* ?<..©ÎHnˇ‰Hnˇ⁄?< */
	$"100E A9EB 486E FFEE 486E FFDA 3F3C 1006"            /* ..©ÎHnˇÓHnˇ⁄?<.. */
	$"A9EB 486E FFDA 486E FFF8 3F3C 1010 A9EB"            /* ©ÎHnˇ⁄Hnˇ¯?<..©Î */
	$"2D6E FFF8 FFFC 4852 486E FFEE 3F3C 200E"            /* -nˇ¯ˇ¸HRHnˇÓ?< . */
	$"A9EB 486E FFFC 486E FFEE 3F3C 1004 A9EB"            /* ©ÎHnˇ¸HnˇÓ?<..©Î */
	$"486E FFEE 3F3C 0016 A9EB 486E FFEE 486E"            /* HnˇÓ?<..©ÎHnˇÓHn */
	$"FFEE 3F3C 2810 A9EB 34AE FFF0 486A 0002"            /* ˇÓ?<(.©Î4ÆˇHj.. */
	$"486E FFEE 3F3C 200E A9EB 486E FFFC 486E"            /* HnˇÓ?< .©ÎHnˇ¸Hn */
	$"FFEE 3F3C 1004 A9EB 486E FFEE 3F3C 0016"            /* ˇÓ?<..©ÎHnˇÓ?<.. */
	$"A9EB 486E FFEE 486E FFEE 3F3C 2810 A9EB"            /* ©ÎHnˇÓHnˇÓ?<(.©Î */
	$"356E FFF0 0002 486A 0004 486E FFEE 3F3C"            /* 5nˇ..Hj..HnˇÓ?< */
	$"200E A9EB 486E FFFC 486E FFEE 3F3C 1004"            /*  .©ÎHnˇ¸HnˇÓ?<.. */
	$"A9EB 486E FFEE 3F3C 0016 A9EB 486E FFEE"            /* ©ÎHnˇÓ?<..©ÎHnˇÓ */
	$"486E FFEE 3F3C 2810 A9EB 356E FFF0 0004"            /* HnˇÓ?<(.©Î5nˇ.. */
	$"486A 0006 486E FFEE 3F3C 200E A9EB 486E"            /* Hj..HnˇÓ?< .©ÎHn */
	$"FFFC 486E FFEE 3F3C 1004 A9EB 486E FFEE"            /* ˇ¸HnˇÓ?<..©ÎHnˇÓ */
	$"3F3C 0016 A9EB 486E FFEE 486E FFEE 3F3C"            /* ?<..©ÎHnˇÓHnˇÓ?< */
	$"2810 A9EB 356E FFF0 0006 2F0A 3F2E 000A"            /* (.©Î5nˇ../.?... */
	$"3F2E 0008 A8A8 2F0A 4267 302A 0004 9052"            /* ?...®®/.Bg0*..êR */
	$"322E 000C 926E 0008 9240 3001 E048 EE48"            /* 2...ín..í@0.‡HÓH */
	$"D041 E240 3F00 A8A8 245F 4E5E 4E75 9C4D"            /* –A‚@?.®®$_N^NuúM */
	$"616B 6554 6172 6765 7452 6563 745F 5F46"            /* akeTargetRect__F */
	$"3452 6563 7450 3452 6563 7400 0000 4E56"            /* 4RectP4Rect...NV */
	$"FF54 703C 2D40 FFC4 41EE FF9C 2D48 FFC8"            /* ˇTp<-@ˇƒAÓˇú-Hˇ» */
	$"41EE FF56 2D48 FFFC 554F 486E FFBC 3F3C"            /* AÓˇV-Hˇ¸UOHnˇº?< */
	$"0037 A88F 301F 3D40 FF54 554F 486E FFBC"            /* .7®è0.=@ˇTUOHnˇº */
	$"486E FFC4 3F3C 003A A88F 301F 202E FFD8"            /* Hnˇƒ?<.:®è0. .ˇÿ */
	$"4E5E 4E75 9447 6574 4170 706C 5369 676E"            /* N^NuîGetApplSign */
	$"6174 7572 655F 5F46 7600 0000 4E56 0000"            /* ature__Fv...NV.. */
	$"48E7 1C30 47EE 000C 548B 302E 000C 5340"            /* HÁ.0GÓ..Tã0...S@ */
	$"48C0 E588 720C D081 A322 2448 200A 6742"            /* H¿Âàr.–Å£"$H .gB */
	$"4AAE 0008 6608 4EBA FF76 2A00 6004 2A2E"            /* JÆ..f.N∫ˇv*.`.*. */
	$"0008 2052 2085 2052 4268 0004 2052 316E"            /* .. R Ö RBh.. R1n */
	$"000C 0006 7600 6014 588B 282B FFFC 3043"            /* ....v.`.Xã(+ˇ¸0C */
	$"2008 E588 2052 2184 0808 5243 B66E 000C"            /*  .Âà R!Ñ..RC∂n.. */
	$"6DE6 204A 4CDF 0C38 4E5E 4E75 934D 616B"            /* mÊ JLﬂ.8N^NuìMak */
	$"6554 7970 654C 6973 745F 5F46 556C 6965"            /* eTypeList__FUlie */
	$"0000 4E56 0000 4E5E 4E75 9144 756D 6D79"            /* ..NV..N^NuëDummy */
	$"4675 6E63 7469 6F6E 5F5F 4676 0000 4E56"            /* Function__Fv..NV */
	$"0000 302E 0008 0C40 0002 6E04 7001 6020"            /* ..0....@..n.p.`  */
	$"0C40 0004 6E04 7002 6016 0C40 0010 6E04"            /* .@..n.p.`..@..n. */
	$"7004 600C 0C40 0100 6E04 7008 6002 7008"            /* p.`..@..n.p.`.p. */
	$"4E5E 4E75 8C47 6574 4465 7074 685F 5F46"            /* N^NuåGetDepth__F */
	$"6900 0000 4E56 0000 48E7 1E20 246E 0008"            /* i...NV..HÁ. $n.. */
	$"382E 000C 2052 3A28 0004 0245 3FFF 2052"            /* 8... R:(...E?ˇ R */
	$"3C28 0004 0246 C000 3004 D046 2052 3140"            /* <(...F¿.0.–F R1@ */
	$"0004 7600 6024 3003 C1C4 2052 2250 4871"            /* ..v.`$0.¡ƒ R"PHq */
	$"0000 3044 2F08 3003 C1C5 2052 2250 41F1"            /* ..0D/.0.¡≈ R"PAÒ */
	$"0000 201F 225F A02E 5243 2052 2252 3029"            /* .. ."_†.RC R"R0) */
	$"000A 9068 0006 B640 6DCC 4CDF 0478 4E5E"            /* ..êh..∂@mÃLﬂ.xN^ */
	$"4E75 9743 726F 7050 6978 4D61 705F 5F46"            /* NuóCropPixMap__F */
	$"5050 3650 6978 4D61 7069 0000 4E56 FFF6"            /* PP6PixMapi..NVˇˆ */
	$"48E7 0038 266E 0008 2D6D FEB4 FFF8 2D6D"            /* HÁ.8&n..-m˛¥ˇ¯-m */
	$"FEB8 FFFC 0C93 6673 7320 6606 246B 0004"            /* ˛∏ˇ¸.ìfss f.$k.. */
	$"603A 554F 2F0B 2F3C 6673 7320 486E FFF8"            /* `:UO/./<fss Hnˇ¯ */
	$"303C 0603 A816 301F 6606 246E FFFC 601C"            /* 0<..®.0.f.$nˇ¸`. */
	$"3D7C D8EF FFF6 49EE FFF6 42A7 2F0C 486D"            /* =|ÿÔˇˆIÓˇˆBß/.Hm */
	$"FEBC 4EB9 0000 3092 4FEF 000C 2052 226E"            /* ˛ºNπ..0íOÔ.. R"n */
	$"000C 7010 22D8 51C8 FFFC 32D8 4AAE FFFC"            /* ..p."ÿQ»ˇ¸2ÿJÆˇ¸ */
	$"670E 554F 486E FFF8 303C 0204 A816 301F"            /* g.UOHnˇ¯0<..®.0. */
	$"4CDF 1C00 4E5E 4E75 8026 4765 7446 5353"            /* Lﬂ..N^NuÄ&GetFSS */
	$"7065 6346 726F 6D41 4544 6573 635F 5F46"            /* pecFromAEDesc__F */
	$"5236 4145 4465 7363 5236 4653 5370 6563"            /* R6AEDescR6FSSpec */
	$"0000 4E56 FFF4 2F0A 2F03 246E 0008 594F"            /* ..NVˇÙ/./.$n..YO */
	$"486E FFFC 2F3C 3F3F 3F3F 4EB9 0000 621E"            /* Hnˇ¸/<????Nπ..b. */
	$"201F 2600 665E 594F 2F2E FFFC 4267 42A7"            /*  .&.f^YO/.ˇ¸BgBß */
	$"2F3C 0006 0002 7000 A82A 201F 2600 6636"            /* /<....p.®* .&.f6 */
	$"42AE FFF8 7000 1012 2D40 FFF4 594F 2F2E"            /* BÆˇ¯p...-@ˇÙYO/. */
	$"FFFC 486D FED9 486A 0001 7000 1012 2F00"            /* ˇ¸Hm˛ŸHj..p.../. */
	$"486E FFF8 486E FFF4 2F3C 0014 0011 7000"            /* Hnˇ¯HnˇÙ/<....p. */
	$"A82A 201F 2600 594F 2F2E FFFC 4EB9 0000"            /* ®* .&.YO/.ˇ¸Nπ.. */
	$"6248 201F 2003 261F 245F 4E5E 4E75 904C"            /* bH . .&.$_N^NuêL */
	$"6175 6E63 6855 524C 5F5F 4650 4355 6300"            /* aunchURL__FPCUc. */
	$"0000 4E56 FFBA 48E7 1038 286E 0008 266E"            /* ..NVˇ∫HÁ.8(n..&n */
	$"000C 486E FFDC 486E FFD8 203C 0008 0005"            /* ..Hnˇ‹Hnˇÿ <.... */
	$"AB1D 486E FFD2 AA19 486E FFCC AA1A 486E"            /* ´.Hnˇ“™.HnˇÃ™.Hn */
	$"FFBA A898 4878 0021 A862 4878 001E A863"            /* ˇ∫®òHx.!®bHx..®c */
	$"594F A8D8 205F 2448 2F0A A87A 200B 6610"            /* YO®ÿ _$H/.®z .f. */
	$"2054 2D68 0006 FFE0 2D68 000A FFE4 600E"            /*  T-h..ˇ‡-h..ˇ‰`. */
	$"2053 2D68 0002 FFE0 2D68 0006 FFE4 2D6E"            /*  S-h..ˇ‡-h..ˇ‰-n */
	$"FFE0 FFE8 2D6E FFE4 FFEC 2D7C 0048 0000"            /* ˇ‡ˇË-nˇ‰ˇÏ-|.H.. */
	$"FFF0 2D7C 0048 0000 FFF4 3D7C FFFE FFF8"            /* ˇ-|.H..ˇÙ=|ˇ˛ˇ¯ */
	$"426E FFFA 42AE FFFC 486E FFE0 A87B 594F"            /* Bnˇ˙BÆˇ¸Hnˇ‡®{YO */
	$"486E FFE8 AA20 205F 226E 0010 2288 554F"            /* HnˇË™  _"n.."àUO */
	$"AA40 301F 3600 2F14 206D FAB8 4868 0002"            /* ™@0.6./. m˙∏Hh.. */
	$"486E FFE0 486E FFE0 4267 2F0B A8EC A8F4"            /* Hnˇ‡Hnˇ‡Bg/.®Ï®Ù */
	$"2F2E FFDC 2F2E FFD8 203C 0008 0006 AB1D"            /* /.ˇ‹/.ˇÿ <....´. */
	$"486E FFBA A899 486E FFD2 AA14 486E FFCC"            /* Hnˇ∫®ôHnˇ“™.HnˇÃ */
	$"AA15 2F0A A879 2F0A A8D9 4CDF 1C08 4E5E"            /* ™./.®y/.®ŸLﬂ..N^ */
	$"4E75 8032 5069 784D 6170 546F 5069 6374"            /* NuÄ2PixMapToPict */
	$"7572 655F 5F46 5050 3650 6978 4D61 7050"            /* ure__FPP6PixMapP */
	$"5039 4D61 6352 6567 696F 6E50 5050 3750"            /* P9MacRegionPPP7P */
	$"6963 7475 7265 0000 4E56 FFF0 554F 486E"            /* icture..NVˇUOHn */
	$"FFF8 3F3C 0037 A88F 301F 554F 486E FFF0"            /* ˇ¯?<.7®è0.UOHnˇ */
	$"70FF 2F00 3F3C 0039 A88F 301F 202E FFFC"            /* pˇ/.?<.9®è0. .ˇ¸ */
	$"B0AE FFF4 660E 202E FFF8 B0AE FFF0 6604"            /* ∞ÆˇÙf. .ˇ¯∞Æˇf. */
	$"7001 6002 7000 4E5E 4E75 9249 7346 726F"            /* p.`.p.N^NuíIsFro */
	$"6E74 5072 6F63 6573 735F 5F46 7600 0000"            /* ntProcess__Fv... */
	$"4E56 FFF2 2F0B 2F0A 246E 000C 266E 0008"            /* NVˇÚ/./.$n..&n.. */
	$"486E FFF2 486E FFF6 203C 0008 0005 AB1D"            /* HnˇÚHnˇˆ <....´. */
	$"206E FFF6 2050 2068 001A 3D50 FFFA 206E"            /*  nˇˆ P h..=Pˇ˙ n */
	$"FFF6 2050 2068 001A 3D68 0002 FFFC 206E"            /* ˇˆ P h..=h..ˇ¸ n */
	$"FFF6 2050 2068 001A 3D68 0004 FFFE 3012"            /* ˇˆ P h..=h..ˇ˛0. */
	$"B06E FFFA 6614 302A 0002 B06E FFFC 660A"            /* ∞nˇ˙f.0*..∞nˇ¸f. */
	$"302A 0004 B06E FFFE 6706 36BC 0001 6002"            /* 0*..∞nˇ˛g.6º..`. */
	$"4253 1F7C 0001 0026 245F 265F 4E5E 205F"            /* BS.|...&$_&_N^ _ */
	$"504F 4ED0 8F4D 4153 4B43 4F4C 4F52 5345"            /* PON–èMASKCOLORSE */
	$"4152 4348 0000 4E56 FFD4 48E7 1838 282E"            /* ARCH..NVˇ‘HÁ.8(. */
	$"0008 266E 000C 2D6D FEDA FFF2 3D6D FEDE"            /* ..&n..-m˛⁄ˇÚ=m˛ﬁ */
	$"FFF6 7600 486E FFEC AA19 486E FFE6 AA1A"            /* ˇˆv.HnˇÏ™.HnˇÊ™. */
	$"486E FFD4 A898 4878 0021 A862 4878 001E"            /* Hnˇ‘®òHx.!®bHx.. */
	$"A863 4A84 6704 200B 6604 70CE 607C 2D6E"            /* ®cJÑg. .f.pŒ`|-n */
	$"0010 FFF8 2D6E 0014 FFFC 486E FFF8 302E"            /* ..ˇ¯-n..ˇ¸Hnˇ¯0. */
	$"FFFA 4440 3F00 302E FFF8 4440 3F00 A8A8"            /* ˇ˙D@?.0.ˇ¯D@?.®® */
	$"486E FFF8 4EBA F560 2448 49FA FEF4 2044"            /* Hnˇ¯N∫ı`$HI˙˛Ù D */
	$"2F10 486A 0002 486E 0010 486E FFF8 486E"            /* /.Hj..Hn..Hnˇ¯Hn */
	$"FFF2 2F0C 42A7 AA4F 486A 0002 2F13 486E"            /* ˇÚ/.Bß™OHj../.Hn */
	$"FFF8 2053 4868 0006 4267 42A7 A8EC 486E"            /* ˇ¯ SHh..BgBß®ÏHn */
	$"FFD4 A899 486E FFEC AA14 486E FFE6 AA15"            /* ˇ‘®ôHnˇÏ™.HnˇÊ™. */
	$"2F0A 4EBA F5DC 2003 504F 4CDF 1C18 4E5E"            /* /.N∫ı‹ .POLﬂ..N^ */
	$"4E75 8026 4D61 6B65 3142 6974 4D61 736B"            /* NuÄ&Make1BitMask */
	$"5F5F 4650 5036 5069 784D 6170 5050 3650"            /* __FPP6PixMapPP6P */
	$"6978 4D61 7034 5265 6374 0000 4E56 FFF4"            /* ixMap4Rect..NVˇÙ */
	$"48E7 0308 286E 000C 7000 2880 4267 2F3C"            /* HÁ..(n..p.(ÄBg/< */
	$"6370 6E74 486E FFF4 4EB9 0000 34EA 4A5F"            /* cpntHnˇÙNπ..4ÍJ_ */
	$"6614 42A7 2F3C 5052 4546 2F3C 4943 4170"            /* f.Bß/<PREF/<ICAp */
	$"7021 A82A 289F 4A94 6608 2E3C 8000 8001"            /* p!®*(üJîf..<Ä.Ä. */
	$"6028 42A7 2F14 2F2E 0008 2F3C 0004 0000"            /* `(Bß/./.../<.... */
	$"7000 A82A 2E1F 6712 4267 2F14 7008 A82A"            /* p.®*..g.Bg/.p.®* */
	$"301F 48C0 2C00 7000 2880 2D47 0010 4CDF"            /* 0.H¿,.p.(Ä-G..Lﬂ */
	$"10C0 4E5E 205F 504F 4ED0 8849 4343 5354"            /* .¿N^ _PON–àICCST */
	$"4152 5400 0000 4E56 FFF8 48E7 0300 42A7"            /* ART...NVˇ¯HÁ..Bß */
	$"2F2E 0008 2F3C 0000 0001 7000 A82A 2E1F"            /* /.../<....p.®*.. */
	$"4267 2F2E 0008 7008 A82A 301F 48C0 2C00"            /* Bg/...p.®*0.H¿,. */
	$"4A87 6602 2E06 2D47 000C 4CDF 00C0 4E5E"            /* Jáf...-G..Lﬂ.¿N^ */
	$"2E9F 4E75 8749 4343 5354 4F50 0000 4E56"            /* .üNuáICCSTOP..NV */
	$"0000 42A7 2F2E 000C 2F2E 0008 4EB9 0000"            /* ..Bß/.../...Nπ.. */
	$"614C 2D5F 0010 4E5E 205F 504F 4ED0 8749"            /* aL-_..N^ _PON–áI */
	$"4353 5441 5254 0000 4E56 0000 42A7 2F2E"            /* CSTART..NV..Bß/. */
	$"0008 4EB9 0000 61D6 2D5F 000C 4E5E 2E9F"            /* ..Nπ..a÷-_..N^.ü */
	$"4E75 8649 4353 544F 5000 0000 4E56 0000"            /* NuÜICSTOP...NV.. */
	$"48E7 1838 7600 45F9 0000 6388 47F9 0000"            /* HÁ.8v.E˘..càG˘.. */
	$"63AE 49F9 0000 6476 41F9 0000 6498 2808"            /* cÆI˘..dvA˘..dò(. */
	$"554F 2F3C 6165 7674 2F3C 6F61 7070 2F0A"            /* UO/<aevt/<oapp/. */
	$"42A7 4227 303C 091F A816 301F 3600 661E"            /* BßB'0<..®.0.6.f. */
	$"554F 2F3C 6165 7674 2F3C 6F64 6F63 2F0B"            /* UO/<aevt/<odoc/. */
	$"42A7 4227 303C 091F A816 301F 3600 4A43"            /* BßB'0<..®.0.6.JC */
	$"661E 554F 2F3C 6165 7674 2F3C 7064 6F63"            /* f.UO/<aevt/<pdoc */
	$"2F0C 42A7 4227 303C 091F A816 301F 3600"            /* /.BßB'0<..®.0.6. */
	$"4A43 661E 554F 2F3C 6165 7674 2F3C 7175"            /* JCf.UO/<aevt/<qu */
	$"6974 2F04 42A7 4227 303C 091F A816 301F"            /* it/.BßB'0<..®.0. */
	$"3600 3003 4CDF 1C18 4E5E 4E75 8A41 4549"            /* 6.0.Lﬂ..N^NuäAEI */
	$"6E69 745F 5F46 7600 0000 4E56 FFF8 554F"            /* nit__Fv...NVˇ¯UO */
	$"2F2E 0008 2F3C 6D69 7373 2F3C 2A2A 2A2A"            /* /.../<miss/<**** */
	$"486E FFFC 42A7 42A7 486E FFF8 303C 0E15"            /* Hnˇ¸BßBßHnˇ¯0<.. */
	$"A816 301F 0C40 F95B 6604 7000 6004 303C"            /* ®.0..@˘[f.p.`.0< */
	$"F94D 4E5E 4E75 9F41 4547 6F74 5265 7175"            /* ˘MN^NuüAEGotRequ */
	$"6972 6564 5061 7261 6D73 5F5F 4650 4336"            /* iredParams__FPC6 */
	$"4145 4465 7363 0000 4E56 0000 2F2E 0010"            /* AEDesc..NV../... */
	$"4EBA FF98 3F40 0018 4E5E 205F 4FEF 000C"            /* N∫ˇò?@..N^ _OÔ.. */
	$"4ED0 8941 454F 5045 4E41 5050 0000 4E56"            /* N–âAEOPENAPP..NV */
	$"FFA2 48E7 1820 246E 0010 554F 2F0A 2F3C"            /* ˇ¢HÁ. $n..UO/./< */
	$"2D2D 2D2D 2F3C 6C69 7374 486E FFB2 303C"            /* ----/<listHnˇ≤0< */
	$"0812 A816 301F 3800 554F 486E FFB2 486E"            /* ..®.0.8.UOHnˇ≤Hn */
	$"FFAE 303C 0407 A816 301F 3800 7601 6058"            /* ˇÆ0<..®.0.8.v.`X */
	$"554F 486E FFB2 3043 2F08 2F3C 6673 7320"            /* UOHnˇ≤0C/./<fss  */
	$"486E FFA6 486E FFA2 486E FFBA 4878 0046"            /* Hnˇ¶Hnˇ¢Hnˇ∫Hx.F */
	$"486E FFAA 303C 100A A816 301F 3800 6626"            /* Hnˇ™0<..®.0.8.f& */
	$"41EE FFBA 43ED FAC8 7010 22D8 51C8 FFFC"            /* AÓˇ∫CÌ˙»p."ÿQ»ˇ¸ */
	$"32D8 4EB9 0000 0FF2 2F0A 4EBA FEEE 3F40"            /* 2ÿNπ...Ú/.N∫˛Ó?@ */
	$"0082 584F 6016 5243 3043 B1EE FFAE 6FA0"            /* .ÇXO`.RC0C±ÓˇÆo† */
	$"2F0A 4EBA FED6 3F40 0082 584F 4CDF 0418"            /* /.N∫˛÷?@.ÇXOLﬂ.. */
	$"4E5E 205F 4FEF 000C 4ED0 8941 454F 5045"            /* N^ _OÔ..N–âAEOPE */
	$"4E44 4F43 0000 4E56 0000 3F7C F954 0014"            /* NDOC..NV..?|˘T.. */
	$"4E5E 205F 4FEF 000C 4ED0 8A41 4550 5249"            /* N^ _OÔ..N–äAEPRI */
	$"4E54 444F 4300 0000 4E56 0000 1B7C 0001"            /* NTDOC...NV...|.. */
	$"FABD 2F2E 0010 4EBA FE82 3F40 0018 4E5E"            /* ˙Ω/...N∫˛Ç?@..N^ */
	$"205F 4FEF 000C 4ED0 8941 4551 5549 5441"            /*  _OÔ..N–âAEQUITA */
	$"5050 0000"                                          /* PP.. */
};

data 'CODE' (0, purgeable, protected) {
	$"0000 02F8 0000 0640 0000 0008 0000 0020"            /* ...¯...@.......  */
	$"0000 3F3C 0001 A9F0"                                /* ..?<..© */
};

data 'DATA' (0, purgeable, protected) {
	$"0000 0427 FFFF FD3A B607 6D61 696C 746F"            /* ...'ˇˇ˝:∂.mailto */
	$"3A43 616E 2774 206C 6175 6E63 6820 5552"            /* :Can't launch UR */
	$"4C2E 0049 6E74 6572 6E65 7420 436F 6E66"            /* L..Internet Conf */
	$"6967 206D 7573 7420 6265 2069 6E73 7461"            /* ig must be insta */
	$"206C 8165 6442 9544 6564 6963 6174 6564"            /*  lÅedBïDedicated */
	$"2074 6F20 4361 7465 7269 6E61 2141 8909"            /*  to Caterina!Aâ. */
	$"636C 6970 3263 6963 6E47 01FF FF11 2499"            /* clip2cicnG.ˇˇ.$ô */
	$"A559 6F75 2063 616E 2774 2065 6469 7420"            /* •You can't edit  */
	$"7468 6973 2066 696C 6520 7369 6E63 6520"            /* this file since  */
	$"6974 2773 2063 7520 7296 656E 746C 7920"            /* it's cu rñently  */
	$"6F70 656E 2069 6E20 616E 6F74 6865 7220"            /* open in another  */
	$"6120 7088 6C69 6361 7469 6F6E 2E41 AA50"            /* a pàlication.A™P */
	$"6C65 6173 6520 636C 6F73 6520 6974 2061"            /* lease close it a */
	$"6E64 2074 7279 2061 6761 696E 0042 536F"            /* nd try again.BSo */
	$"6D65 7468 696E 6720 6861 2070 9265 6E65"            /* mething ha píene */
	$"6420 7468 6174 2077 6173 6E27 7420 7375"            /* d that wasn't su */
	$"2070 896F 7365 6420 746F 2068 6120 7084"            /*  pâosed to ha pÑ */
	$"656E 2E20 4520 729F 6F72 206F 6620 7479"            /* en. E rüor of ty */
	$"7065 3A20 0002 3A20 0005 4963 6F6E 3A01"            /* pe: ..: ..Icon:. */
	$"2001 2D0E 4E6F 7420 2061 B876 6169 6C61"            /*  .-.Not  a∏vaila */
	$"626C 6500 0D4E 6F74 2061 7661 696C 6162"            /* ble..Not availab */
	$"6C65 4361 6E27 7420 6C6F 6164 2074 6865"            /* leCan't load the */
	$"2070 6963 7475 7265 206F 7220 7468 6520"            /*  picture or the  */
	$"636C 7574 4181 2564 4181 6E75 206C 4398"            /* clutAÅ%dAÅnu lCò */
	$"3235 4065 6E75 6D24 3139 374D 6163 4865"            /* 25@enum$197MacHe */
	$"6164 6572 735F 7063 6820 5F42 1541 8133"            /* aders_pch _B.AÅ3 */
	$"2227 0123 0230 0180 042D 0828 3025 0824"            /* "'.#.0.Ä.-.(0%.$ */
	$"A032 8024 0824 6032 4022 0880 0125 8037"            /* †2Ä$.$`2@".Ä.%Ä7 */
	$"4025 0880 4024 0820 802C 0820 4028 0880"            /* @%.Ä@$. Ä,. @(.Ä */
	$"0422 8080 4026 0881 4080 2208 2040 2308"            /* ."ÄÄ@&.Å@Ä". @#. */
	$"2980 8008 2280 2808 4083 2D49 4E46 4183"            /* )ÄÄ."Ä(.@É-INFAÉ */
	$"2D69 6E66 418A 494E 4600 696E 6600 4E61"            /* -infAäINF.inf.Na */
	$"4E44 0000 0000 2800 0000 0028 4084 E100"            /* ND....(....(@Ñ·. */
	$"2000 0441 8780 1200 FF14 2200 0441 8180"            /*  ..AáÄ..ˇ."..AÅÄ */
	$"1241 8180 AC43 8081 4481 8208 4210 8181"            /* .AÅÄ¨CÄÅDÅÇ.B.ÅÅ */
	$"0E42 82E7 8154 4281 0182 4381 0181 0281"            /* .BÇÁÅTBÅ.ÇCÅ.Å.Å */
	$"0000 4182 6384 3042 8260 8908 4282 E782"            /* ..AÇcÑ0BÇ`â.BÇÁÇ */
	$"2442 8220 8102 4781 64C4 4280 A441 8102"            /* $BÇ Å.GÅdƒBÄ§AÅ. */
	$"5059 8205 E480 4420 0680 8044 8306 6280"            /* PYÇ.‰ÄD .ÄÄDÉ.bÄ */
	$"6043 8406 AC80 0010 4283 06EE 8020 4381"            /* `CÑ.¨Ä..BÉ.ÓÄ CÅ */
	$"0778 4584 07A2 8063 0442 8308 3480 2143"            /* .xEÑ.¢Äc.BÉ.4Ä!C */
	$"8308 9480 2043 8308 DA80 0743 8109 4442"            /* É.îÄ CÉ.⁄Ä.CÅ.DB */
	$"807E 4181 09A0 4280 7841 830C E080 0143"            /* Ä~AÅ.†BÄxAÉ.‡Ä.C */
	$"810D 3C42 8072 4184 0E28 8000 6842 800E"            /* Å.<BÄrAÑ.(Ä.hBÄ. */
	$"2080 8120 1E42 810F F242 806C 4181 159A"            /*  ÄÅ .BÅ.ÚBÄlAÅ.ö */
	$"4280 6641 8116 B442 8060 4181 1740 4280"            /* BÄfAÅ.¥BÄ`AÅ.@BÄ */
	$"5A41 8417 EC80 6304 4281 1948 4280 5441"            /* ZAÑ.ÏÄc.BÅ.HBÄTA */
	$"811C A642 804E 4184 21C8 803F 1042 8222"            /* Å.¶BÄNAÑ!»Ä?.BÇ" */
	$"B880 4481 22DE 4584 2348 80FF 0442 8124"            /* ∏ÄDÅ"ﬁEÑ#HÄˇ.BÅ$ */
	$"D045 8325 1A80 6143 8126 5C45 8326 B480"            /* –EÉ%.ÄaCÅ&\EÉ&¥Ä */
	$"FF43 8127 C445 8128 8E42 8032 4184 2CEA"            /* ˇCÅ'ƒEÅ(éBÄ2AÑ,Í */
	$"80E1 0442 812D 6E45 812D AA42 8028 4184"            /* Ä·.BÅ-nEÅ-™BÄ(AÑ */
	$"2E5A 80E3 2842 8130 9245 8431 2880 FF10"            /* .ZÄ„(BÅ0íEÑ1(Äˇ. */
	$"4282 323A 8044 8232 6880 4481 3296 4582"            /* BÇ2:ÄDÇ2hÄDÅ2ñEÇ */
	$"3322 8044 8233 4480 4481 3366 4582 53B2"            /* 3"ÄDÇ3DÄDÅ3fEÇS≤ */
	$"8044 8254 0A80 4481 5434 4280 4841 8154"            /* ÄDÇT.ÄDÅT4BÄHAÅT */
	$"A442 8042 4184 54DE 8000 0842 8455 3A80"            /* §BÄBAÑTﬁÄ..BÑU:Ä */
	$"0710 4281 5594 4584 5626 8060 0C42 8356"            /* ..BÅUîEÑV&Ä`.BÉV */
	$"F080 2043 8457 2E80 2026 4281 5B0E 4280"            /* Ä CÑW.Ä &BÅ[.BÄ */
	$"3C41 835B 6C80 6743 815B F245 835C 5480"            /* <AÉ[lÄgCÅ[ÚEÉ\TÄ */
	$"2F43 845C DC80 E00A 4284 5D92 8021 0C42"            /* /CÑ\‹Ä‡.BÑ]íÄ!.B */
	$"845E 3280 E146 4284 5F68 8000 1042 845F"            /* Ñ^2Ä·FBÑ_hÄ..BÑ_ */
	$"C080 600E 4284 6056 80E3 2C42 8161 4C45"            /* ¿Ä`.BÑ`VÄ„,BÅaLE */
	$"8362 6C80 E343 8463 2A80 0008 4282 6388"            /* ÉblÄ„CÑc*Ä..BÇcà */
	$"8044 8463 AE80 235E 4281 6476 4582 6498"            /* ÄDÑcÆÄ#^BÅdvEÇdò */
	$"8044 8164 C443 0000 0000 0000 0000 027F"            /* ÄDÅdƒC.......... */
	$"7040 D200 0000 0000 0000 0741 8E50 2546"            /* p@“........AéP%F */
	$"71C1 7F92 C1FC 0000 00CF 406E 838A 8542"            /* q¡.í¡¸...œ@nÉäÖB */
	$"7583 838B 8383 8E40 4DA8 8686 8640 4E40"            /* uÉÉãÉÉé@M®ÜÜÜ@N@ */
	$"4340 5186 869C 414C BDDF BEED DFAA B785"            /* C@QÜÜúALΩﬂæÌﬂ™∑Ö */
	$"869D 868C 8B8E 9C95 F041 0FA0 40F4 7F8B"            /* ÜùÜåãéúïA.†@Ù.ã */
	$"7FA0 8741 AC7E 77F9 4189 7F75 7F4A 420E"            /* .†áA¨~w˘Aâ.u.JB. */
	$"E97F 7FDD CA7F 6040 F0C9 99A3 40C0 4051"            /* È..› .`@…ô£@¿@Q */
	$"C69E 9298 4053 D340 79F9 8E40 49F5 8840"            /* ∆ûíò@S”@y˘é@Iıà@ */
	$"5EE9 409F 40F0 7F8B 4122 9283 40CE C37F"            /* ^È@ü@.ãA"íÉ@Œ√. */
	$"BCB5 41ED 8792 40DC F640 8A41 0A40 A886"            /* ºµAÌáí@‹ˆ@äA.@®Ü */
	$"41EB 7E1C 41A4 F3E9 CBE2 F2E5 E3DC F6F6"            /* AÎ~.A§ÛÈÀ‚ÚÂ„‹ˆˆ */
	$"F67F BFDE 4121 7F66 C141 9C40 5A99 4043"            /* ˆ.øﬁA!.f¡Aú@Zô@C */
	$"40A9 7F92 CC40 5E7F BA40 907F 9240 4590"            /* @©.íÃ@^.∫@ê.í@Eê */
	$"8A9C B3B5 4092 B297 4056 406B 41DF 889C"            /* äú≥µ@í≤ó@V@kAﬂàú */
	$"8D41 597F 3B41 97A8 8641 8BD5 D9F2 7F61"            /* çAY.;Aó®ÜAã’ŸÚ.a */
	$"9D9F 8DAC 8F41 3D40 9340 DE7F 7BC1 4180"            /* ùüç¨èA=@ì@ﬁ.{¡AÄ */
	$"BC89 40BE 7FA4 406E 7FA4 409F A2B0 B540"            /* ºâ@æ.§@n.§@ü¢∞µ@ */
	$"FC83 A4B6 4044 8D40 AE40 8240 549F BFAC"            /* ¸É§∂@Dç@Æ@Ç@Tüø¨ */
	$"AA9F ADA0 BD8A 998A 9D87 40BE 443F BCB1"            /* ™ü≠†Ωäôäùá@æD?º± */
	$"41AE 4062 9392 8383 8340 D500 0000 00"              /* AÆ@bìíÉÉÉ@’.... */
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
			0, -16455,
			/* [2] */
			1, 0,
			/* [3] */
			2, 0
		}
	}
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

data 'c2ci' (0, "Owner resource") {
	$"18A9 2031 3939 382D 3920 4D69 6861 6920"            /* .© 1998-9 Mihai  */
	$"5061 7270 6172 6974 61"                             /* Parparita */
};

resource 'STR ' (128, "Change to \"0\" to remove expiration") {
	"1"
};

resource 'icns' (-16455, "Item Icon ", $01) {
	{	/* array elementArray: 5 elements */
		/* [1] */
		'ICN#',
		$"003F E000 0068 5000 0095 E800 0129 D400"
		$"0296 AA00 0525 A500 02D2 5180 286E 8440"
		$"1FC9 2160 84AE 4290 0859 09F8 902E 22D4"
		$"2058 854E 90AF EAD5 094A A4CB 268F 7966"
		$"892D A893 004C 52C9 921A 2944 24AC B6BB"
		$"7FFC 1BD0 00EA 4420 0050 0040 0021 1080"
		$"0018 0100 0004 4200 0004 0480 0003 0800"
		$"0001 1000 0000 E000 0000 4000 0000 0000"
		$"007F F000 00FF F800 01FF FC00 03FF FE00"
		$"07FF FF00 0FFF FF80 1FFF FFC0 FFFF FFE0"
		$"FFFF FFF0 FFFF FFF8 FFFF FFFC FFFF FFFE"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"7FFF FFFC 01FF FFFE 00FF FFFE 007F FFFE"
		$"003F FFFC 001F FFF8 000F FFF0 0007 FFE0"
		$"0003 FFC0 0001 FF00 0000 FE00 0000 0000",
		/* [2] */
		'icl8',
		$"0000 0000 0000 0000 0000 ACAC FCAC ACFC"
		$"ACAC FC00 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 00AC AC37 5B37 5B5B"
		$"5BFC ACAC 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 AC37 0CAC 3655 375A"
		$"ACFD AA81 AC00 0000 0000 0000 0000 0000"
		$"0000 0000 0000 00AC 370C 3630 AC36 54AC"
		$"FCAA 807E F9AC 0000 0000 0000 0000 0000"
		$"0000 0000 0000 AC37 3036 3036 54AC FCAB"
		$"AA7F 5454 78F9 AC00 0000 0000 0000 0000"
		$"0000 0000 00FA FAFC 5B36 305A 545A A486"
		$"8054 7854 784E F9AC 0000 0000 0000 0000"
		$"0000 0000 F9F5 FF2B FC7F 5A54 5A79 5A7F"
		$"7854 7872 4E72 4EFA AC00 0000 0000 0000"
		$"0056 F8FB 2BF5 F5F5 F6AD 8181 7F5A 7878"
		$"4E78 4E4E 4872 486C 88AD 0000 0000 0000"
		$"F800 00FE FDFD FDFD FDB2 F92B E079 5478"
		$"4E72 724E 6C48 6C73 3511 FD00 0000 0000"
		$"5600 F5F5 F5FC F500 E07A F82B FEAB 794E"
		$"724E 4E6C 486C 48FB 5F35 5EFE 0000 0000"
		$"F800 F5F6 FCF5 0000 F5E0 F9F8 FEA5 7972"
		$"486C 6C48 6C49 9E5F 89FF 11AC FD00 0000"
		$"5600 F6FC F500 0000 00F5 EAF7 E9AB 734E"
		$"6C48 486D 486D FB0B ADFF 0B5E FCFD 0000"
		$"F8F5 FCF5 0000 0000 F6FF 56F8 E0A5 736C"
		$"D773 6C48 6D81 3511 ADF4 110B AC81 AC00"
		$"5600 F8FC F500 00F5 FFF9 F8F8 EAA5 D8D7"
		$"D8D7 746D 7482 110B ADFF 110B 5FA6 FAAC"
		$"F8F5 F6F8 FCF5 F6FF 56F8 2BF8 E0A5 D8D8"
		$"D8D8 D774 7A35 0B11 ADE0 110B 34AC 75AC"
		$"5600 2BF6 F8FC FFF9 F82B 2B55 EAA5 D8D8"
		$"D8D8 AC9F 820B 110A 6583 0B11 1182 AC00"
		$"F8F5 F62B 2BF8 56F8 2B2B F7F8 E0A5 74A5"
		$"D8CA A67B 5E11 0B11 593B 110B 1111 ACAC"
		$"F8F5 2B2B 2B2B 2B2B 2BF7 2B56 F3A6 746E"
		$"75FB 74A6 110B 110B B3F4 2F11 110B 58FD"
		$"5600 2B2B 2B2B 2BF7 2B2B F757 FEA5 746E"
		$"4A6E 7C5E 0B11 0B0B 3B35 110B 0B11 11F9"
		$"F82B F7F7 F8F8 5656 56F9 56F9 E0A6 754A"
		$"6E6F FC83 895F 8389 5F83 5F83 8983 5E82"
		$"00FF FFFF FFFF FFFE E0FE EAFE FCA6 744B"
		$"4A4B 6E7B 82A6 FB82 A682 FBFD F600 0000"
		$"0000 0000 0000 0000 FDAC A6A5 A675 6F4A"
		$"6F4A 2751 4B2D 5127 2D2C ACF7 F500 0000"
		$"0000 0000 0000 0000 00AC 9F75 6E4B 4A4B"
		$"4A4B 2626 2726 0302 02FC 2BF6 F500 0000"
		$"0000 0000 0000 0000 0000 FB75 4B4A 4B4A"
		$"2627 2627 2603 0202 FCF7 F6F5 F500 0000"
		$"0000 0000 0000 0000 0000 00FC 754B 4A27"
		$"2726 2702 0302 02AC 2BF6 F500 0000 0000"
		$"0000 0000 0000 0000 0000 0000 FB57 2726"
		$"2627 0203 0202 AC2B F6F5 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 00FB 5103"
		$"0202 0302 02AC 2B2A F500 F500 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 FB57"
		$"0303 0202 AC2B 2A01 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 00FB"
		$"5108 02AC 2BF6 F500 F500 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"FC33 AC2B F6F5 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"00FC 2BF6 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000",
		/* [3] */
		'icl4',
		$"0000 0000 0CEE EEAE EEEC 0000 0000 0000"
		$"0000 0000 0EF0 5CDD DEEE C000 0000 0000"
		$"0000 000C EC0F 0505 5A5D E000 0000 0000"
		$"0000 000E 4040 F05D E5D7 DEC0 0000 0000"
		$"0000 0CEC C4C4 CFDF 5D7C DDEC 0000 0000"
		$"0000 CEE5 C5CD DCD6 C7CC 7CDE C000 0000"
		$"000C D0FC 5C5C 5D5C 705C C70D EC00 0000"
		$"0EDE CC00 0FD5 C7CD C60C 7070 AEC0 0000"
		$"D00F EFAF FEDC FD7C 7070 7077 12EC 0000"
		$"E0C0 0E00 FDC0 F5C7 0707 0709 B2BA C000"
		$"D00C E000 0FDC FE70 7070 70DB AF1F EC00"
		$"E0CE 0000 00FD 95C7 0700 70F1 9F2B EEC0"
		$"D0E0 0000 CFDC FD70 377C C8B2 AF12 EEE0"
		$"E0CA 0000 FDCC F933 32CC 7E11 9F21 EBDE"
		$"D0CC F0CF CCCC FD33 3337 B121 AF11 2E8E"
		$"DC0C CEFD DCCC FE33 33F8 D121 AA12 1EE0"
		$"E0C0 CCDC CCCD FD7E 39DE B121 2221 21EF"
		$"D0CC CC0C CCCC F8DD DD8E 1212 FF12 12BE"
		$"E0CC CCCC CCCD F5D7 DCDB 1121 2211 211D"
		$"DCCC CCCD CDCD F88C DD99 2A92 A8AB AA2E"
		$"0FFF FFFF FFFE EDDD DDCB 9BE9 BEBF C000"
		$"0000 0000 FEE9 D8DD DD1D DBCC 1CED CC00"
		$"0000 0000 0E8D 71CD DCDC 101C 09CC C0C0"
		$"0000 0000 00B7 1DDD C1C1 0110 ACCC C000"
		$"0000 0000 00CE DCBC 1010 10CA DCC0 0000"
		$"0000 0000 0000 8DCB 01C1 C0ED C0C0 C000"
		$"0000 0000 0000 091C 10C0 1ECC CC00 0000"
		$"0000 0000 0000 00DD 0101 EDCC C000 0000"
		$"0000 0000 0000 00CE 1C15 CCC0 0000 0000"
		$"0000 0000 0000 0000 5DEC CC00 0000 0000"
		$"0000 0000 0000 000C 0BDC C000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000",
		/* [4] */
		'il32',
		$"86FF 005D 863B 0051 91FF 0D5D 3B3B C1B9"
		$"AFA6 9895 3B37 3B5D FE8E FF0E 5D3B CDEB"
		$"3BBA B1A8 A03B 2D41 6539 5D8D FF10 5D3B"
		$"C9E4 D9CD 3BB6 AD3B 393D 657B 843B 5D8B"
		$"FF12 5D3B C3DD D2C7 BCB1 3B3B 4540 627B"
		$"8080 843B 5D89 FF80 000A 44AF B8B6 AB9E"
		$"8555 4462 7B81 8002 843B 5D87 FF0D 5C00"
		$"EE00 CC44 869C 978D 806F 6F7B 8380 0284"
		$"2F37 83FF 8100 00CC 80EE 07DD 2266 666F"
		$"7B7F 7F85 8002 5C47 3B82 FF02 00FF FF84"
		$"2204 88C6 1162 7B85 8004 6ACB EF27 4381"
		$"FF0F 00FD EEE9 E544 EEEE 1188 AAD1 113D"
		$"6E7F 8380 067C 4CAA BBA1 214E 80FF 0F00"
		$"F9E9 E444 EEFF FFDD 1188 AA11 3169 7F83"
		$"800E 599E 4A05 EA3B 2756 FFFF 00F8 E544"
		$"EE81 FF08 DD11 A911 3069 7F80 7F80 800E"
		$"7D46 F646 02FC A239 315C FF00 F744 EE81"
		$"FF25 DD11 88A9 1130 697F DD73 7B80 804B"
		$"C3FF 4204 F2FB 445D 385D 00F5 AA44 EEFF"
		$"FFDD 1188 AAA9 1130 81DD 1B62 7B75 66FF"
		$"FF42 02EE FF75 4873 3B00 F3D9 AA44 EEDD"
		$"1188 AACA A911 3082 DD1A 6261 D3FF FF42"
		$"08EF FFCF 2D80 3B00 F3D6 D4AA 4411 88AA"
		$"CAC8 A111 3081 DD42 2449 5DFB FFFF 7E7B"
		$"FEFE FF66 3BFF 00F1 D4D2 D0AA 88AA CAC8"
		$"C69B 1130 5B41 DD24 384C 97FF FEFF AAA6"
		$"FEFE FFE6 3E2E 00F1 D2D0 CECD CBC9 C8C7"
		$"C596 1130 656E 5D49 6042 F580 FF1B 3600"
		$"F0FF FEFF 9C29 00F0 D0CE CCCB C9C8 C6C5"
		$"C390 1130 697F 7B73 55AD 81FF 01C4 BE82"
		$"FF21 8500 D0BB B1A9 A39E 9B97 9390 8D11"
		$"3169 7F80 7F36 747B 7A79 7A84 857A 7B78"
		$"7989 6FFF 8300 8211 111F 3D6E 7F81 8886"
		$"684D 494E 5257 5C62 1A29 2986 FF13 4D16"
		$"2430 303D 627B 868F 9AA2 A0A1 A8B2 BCC6"
		$"D030 8155 86FF 114D 3F4E 696E 7E8B 96A1"
		$"ADB9 C3CF DBE7 F2FB 4182 6687 FF0F 6655"
		$"5F86 919C A9B5 C0CB D7E4 EFF8 FF41 8366"
		$"88FF 0D66 5571 A4B0 BCC7 D2DF EAF5 FDFF"
		$"4183 668A FF0B 6655 88C2 CEDA E6F1 FAFF"
		$"FF41 8366 8CFF 0966 559E E1ED F7FE FFFF"
		$"4183 668E FF03 6655 B4FB 80FF 0041 8366"
		$"90FF 0566 55BD FFFF 4183 6692 FF03 6655"
		$"BD41 8266 95FF 0166 5582 66A6 FF86 FF00"
		$"5D86 3B00 5191 FF02 5D3B 3B81 6606 6266"
		$"3B37 3B5D FE8E FF04 5D3B 6B80 3B81 7605"
		$"3B25 3965 395D 8DFF 025D 3B6B 8080 0A3B"
		$"8989 3B31 3862 7D84 3B5D 8BFF 035D 3B6B"
		$"7F81 800A 3B3B 3D3D 6281 909C 843B 5D89"
		$"FF80 0011 446E 7B80 807F 734F 4264 8797"
		$"A4B1 BD84 3B5D 87FF 165C 00EE 00CC 4462"
		$"7A7F 7F7B 6F76 8D9F ACB8 C4D1 DE84 3039"
		$"83FF 8100 00CC 80EE 12DD 2266 666E 808D"
		$"99A7 B3C0 CBD8 E5F1 FA4F 2B3D 82FF 0200"
		$"FFFF 8422 1188 C711 729B AEBB C6D3 E0ED"
		$"F7FF CA8E B423 4381 FF1C 00FC EEE9 E544"
		$"EEEE 1188 AAD1 1150 9DC1 CEDB E8F3 FCFF"
		$"F651 8176 7724 4E80 FF12 00FA E9E5 44EE"
		$"FFFF DD11 88AA 1148 A6D5 E3EF F980 FF0E"
		$"A675 3201 A432 2756 FFFF 00F8 E544 EE81"
		$"FF08 DD11 A911 4FB7 E9F5 FC80 FF0E F853"
		$"B02D 09AA 763A 315C FF00 F644 EE81 FF25"
		$"DD11 88A9 1156 C6F8 00E5 F5FF FF84 8BB0"
		$"2E07 A1B1 4C5D 385D 00F6 AA44 EEFF FFDD"
		$"1188 AAA9 115D 8100 1BC3 F5E5 4CB5 AD2C"
		$"07A1 B95C 7A73 3B00 F4D9 AA44 EEDD 1188"
		$"AACA A911 6082 001A C3B3 9FB1 AE30 05A1"
		$"B489 3ABA 3B00 F4D6 D4AA 4411 88AA CAC8"
		$"A211 6081 007F 4892 77A9 ADB4 5654 B3AF"
		$"B759 3BFF 00F2 D4D2 D0AA 88AA C9C8 C79B"
		$"1160 B581 0048 708D 6BB2 ABB4 786A B0AA"
		$"B0A1 432E 00F1 D1CF CECD CBC9 C8C6 C495"
		$"1160 CADB B992 BD52 A7AE ADAF 2503 A5AE"
		$"ABB8 722A 00F0 D0CE CCCA C9C8 C6C4 C490"
		$"1160 D2FD F5E5 9A7F C4B7 B7BD 7B8D BDB7"
		$"B8BA B281 00D0 BBB1 A9A3 9F9A 9794 918E"
		$"1161 D2FE FFFE 0E56 4E56 5853 4F5E 5A53"
		$"5850 5267 68FF 8300 8211 083E 79DC FEFF"
		$"FEE9 A773 8366 021A 2929 86FF 074D 1647"
		$"6060 79C3 F580 FF02 F9E5 D882 D500 3081"
		$"5586 FF05 4D3F 9CD2 DCF5 82FF 83FE 0041"
		$"8266 87FF 0366 55BC FE88 FF00 4183 6688"
		$"FF02 6655 BD86 FF01 FC41 8366 8AFF 0266"
		$"55BD 83FF 02FE F841 8366 8CFF 0266 55BD"
		$"81FF 02FA F441 8366 8EFF 0766 55BD FFFD"
		$"F4EF 4183 6690 FF05 6655 B8EE EA41 8366"
		$"92FF 0366 55A2 4182 6695 FF01 6655 8266"
		$"A6FF 86FF 005D 863B 0051 91FF 025D 3B3B"
		$"81CC 06C4 CC3B 373B 5DFE 8EFF 045D 3BD6"
		$"FF3B 81DC 053B 4971 6539 5D8D FF02 5D3B"
		$"D680 FF0A 3BEF EF3B 6170 C3F5 833B 5D8B"
		$"FF03 5D3B D5FE 81FF 0A3B 3B7A 79C3 F5FF"
		$"FF83 3B5D 89FF 8000 0A44 DCF5 FFFF FEE5"
		$"9D84 C3F5 81FF 0283 3B5D 87FF 0D5C 00EE"
		$"00CC 44C3 F4FE FEF5 DDDD F583 FF02 8334"
		$"3D83 FF81 0000 CC80 EE07 DD22 6666 DCF5"
		$"FEFE 85FF 0225 073E 82FF 0200 FFFF 8422"
		$"0488 C511 C3F5 85FF 04C7 191A 2543 81FF"
		$"0F00 FCEE EAE5 44EE EE11 88AA D011 79DC"
		$"FE82 FF07 FCED 4408 001B 274E 80FF 0F00"
		$"FAE9 E544 EEFF FFDD 1188 AA11 61D2 FE81"
		$"FF10 F8EF 991E 0200 0F28 2756 FFFF 00F8"
		$"E444 EE81 FF1A DD11 A811 60D2 FEFF FEFB"
		$"F3E9 D845 0E00 0003 213C 315C FF00 F644"
		$"EE81 FF25 DD11 88A8 1160 D2FD 00DD E4E2"
		$"D76F 1504 0100 020A 2D5C 385D 00F5 AA44"
		$"EEFF FFDD 1188 AAA8 1160 8100 1BA7 C8B3"
		$"2907 0201 0003 0518 4472 3B00 F4D8 AA44"
		$"EEDD 1188 AAC9 A811 5F82 001A 9184 1901"
		$"0401 0004 0118 2F5D 3B00 F2D5 D3AA 4411"
		$"88AA C9C8 A211 5A81 0067 3463 4A01 0304"
		$"0202 0403 0720 3BFF 00F2 D3D2 CFAA 88AA"
		$"C9C7 C59B 1154 9565 0032 495F 2003 0304"
		$"0302 0404 0112 322F 00F1 D1CF CECC CAC9"
		$"C7C5 C495 114C 999C 7C5B 6F35 0E02 0404"
		$"0100 0403 0403 1E30 00F0 CFCE CCCA C8C7"
		$"C5C4 C390 1146 90A2 9280 5E1F 0404 0304"
		$"0303 8004 1802 0E71 00CF BBB2 A9A3 9F9B"
		$"9794 908D 1140 8191 8980 310B 0304 8203"
		$"0504 0303 1143 FF83 0082 1108 2747 7983"
		$"807F 7554 3A82 3303 401A 2929 86FF 074D"
		$"1631 3E3A 4467 7B80 8002 7D73 6C81 6B01"
		$"8630 8155 86FF 054D 3F5B 7271 7B82 8082"
		$"7F01 A041 8266 87FF 0366 555F 7F87 8001"
		$"A141 8366 88FF 0266 555F 8680 01A1 4183"
		$"668A FF02 6655 5F84 8001 A141 8366 8CFF"
		$"0266 555F 8280 01A1 4183 668E FF02 6655"
		$"5F80 8001 A141 8366 90FF 0566 555F 80A1"
		$"4183 6692 FF03 6655 5F41 8266 95FF 0166"
		$"5582 66A6 FF",
		/* [5] */
		'l8mk',
		$"0000 0000 0000 0000 0036 FFFF FFFF FFFF"
		$"FFFF FF36 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 36FF FFFF FFFF FFFF"
		$"FFFF FFFF 3600 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0036 FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FF36 0000 0000 0000 0000 0000"
		$"0000 0000 0000 36FF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF 3600 0000 0000 0000 0000"
		$"0000 0000 0036 FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FF36 0000 0000 0000 0000"
		$"0000 0000 36BB BBFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF 3600 0000 0000 0000"
		$"0000 0036 AAFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FF36 0000 0000 0000"
		$"1A99 99CC FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF 3600 0000 0000"
		$"99FF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FF36 0000 0000"
		$"99FF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF 3600 0000"
		$"99FF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FF36 0000"
		$"99FF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF 3600"
		$"99FF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FF36"
		$"99FF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"99FF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"99FF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"99FF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"99FF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"99FF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"99FF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"00FF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF 771C 0000"
		$"0000 0000 0000 0036 FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FF9E 5424 0D00"
		$"0000 0000 0000 0000 36FF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF 9E77 5036 2400"
		$"0000 0000 0000 0000 0036 FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FF9E 7750 3624 0D00"
		$"0000 0000 0000 0000 0000 36FF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF 9E77 5036 240D 0000"
		$"0000 0000 0000 0000 0000 0036 FFFF FFFF"
		$"FFFF FFFF FFFF FF9E 7750 3624 0D00 0000"
		$"0000 0000 0000 0000 0000 0000 36FF FFFF"
		$"FFFF FFFF FFFF 9E77 5036 240D 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0036 FFFF"
		$"FFFF FFFF FF9E 7750 3624 0D00 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 36FF"
		$"FFFF FFFF 9E77 5036 240D 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0036"
		$"FFFF FF9E 7750 240D 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"36FF 9977 361C 0D00 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
	}
};

