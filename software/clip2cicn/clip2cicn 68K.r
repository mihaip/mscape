/* Resource fork of software/clip2cicn/clip2cicn 68K */
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
	0x7FFFFEDB,
	enabled,
	"Titled Utility Window",
	{	/* array: 11 elements */
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
		"Collapsed Active -14299", noIcon, noKey, noMark, plain
	}
};

resource 'MENU' (138) {
	138,
	textMenuProc,
	0x7FFFFFDB,
	enabled,
	"Side Utility Window",
	{	/* array: 7 elements */
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
		"Pressed Widgets -14290", noIcon, noKey, noMark, plain
	}
};

resource 'MENU' (139) {
	139,
	textMenuProc,
	0x7FFFFFFB,
	enabled,
	"Titleless Utility Window",
	{	/* array: 5 elements */
		/* [1] */
		"Inactive -14288", noIcon, noKey, noMark, plain,
		/* [2] */
		"Active -14287", noIcon, noKey, noMark, plain,
		/* [3] */
		"-", noIcon, noKey, noMark, plain,
		/* [4] */
		"Collapsed Inactive -14284", noIcon, noKey, noMark, plain,
		/* [5] */
		"Collapsed Active -14283", noIcon, noKey, noMark, plain
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
		"Insert Clipboard into cicn…", noIcon, "I", noMark, plain,
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
		"Small Off Active -9975 ", noIcon, noKey, noMark, plain,
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
		"Inactive -12321", noIcon, noKey, noMark, plain,
		/* [2] */
		"Active -12320", noIcon, noKey, noMark, plain
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
			0, -16455,
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
			"Close"
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
	{	/* array DITLarray: 11 elements */
		/* [1] */
		{157, 253, 177, 333},
		Button {
			enabled,
			"Open"
		},
		/* [2] */
		{126, 253, 146, 333},
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
		{30, 236, 46, 338},
		UserItem {
			enabled
		},
		/* [5] */
		{54, 253, 74, 333},
		Button {
			enabled,
			"Eject"
		},
		/* [6] */
		{82, 253, 102, 333},
		Button {
			enabled,
			"Desktop"
		},
		/* [7] */
		{51, 13, 181, 231},
		UserItem {
			enabled
		},
		/* [8] */
		{28, 13, 47, 231},
		UserItem {
			enabled
		},
		/* [9] */
		{113, 252, 114, 334},
		Picture {
			disabled,
			11
		},
		/* [10] */
		{189, 24, 209, 211},
		Button {
			enabled,
			"Select \"<file name>\""
		},
		/* [11] */
		{6, 15, 23, 300},
		StaticText {
			disabled,
			"Select a file, folder, or disk:"
		}
	}
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
	1043,
	visible,
	goAway,
	0x0,
	129,
	"Insert cicn",
	alertPositionMainScreen
};

data 'DLOG' (3001, "Select Object", purgeable) {
	$"0000 0000 00D7 0158 0001 0000 0000 0000"            /* .....◊.X........ */
	$"0000 0BB9 00"                                       /* ...π. */
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
	0x20,
	release,
	0x0,
	14,
	"1.2",
	"©1998-9 Mihai Parparita"
};

resource 'vers' (2) {
	0x1,
	0x20,
	release,
	0x0,
	14,
	"1.2",
	"clip2cicn 1.2"
};

data 'c2ci' (0, "Owner resource") {
	$"18A9 2031 3939 382D 3920 4D69 6861 6920"            /* .© 1998-9 Mihai  */
	$"5061 7270 6172 6974 61"                             /* Parparita */
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

resource 'dlgx' (3001) {
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
	10200,
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
	$"0302 0101 F200 8100 FD00 005A FD00 013C"
	$"F4DF FF26 E197 8370 6052 473F 7276 3839"
	$"3B3D 3F40 4140 403E 3C3A 3633 2E2A 2521"
	$"1D19 1512 100D 0B09 0807 05FE 041A 0506"
	$"090E 1319 2027 2D32 3536 3533 2F2A 241E"
	$"1914 0F0C 0907 0503 02FE 01F1 00DD 0001"
	$"112E A700 FD00 0074 FD00 0117 BBDF FF09"
	$"FEBD 8E7B 695A 4D43 3C38 FE35 0036 FE37"
	$"3436 3433 302D 2A26 221E 1B17 1310 0E0B"
	$"0A08 0706 0504 0303 0203 0305 070A 0F13"
	$"191E 2225 2828 2725 211D 1914 100D 0A07"
	$"0504 0202 0101 EF00 F800 07BF DD2E 0000"
	$"33DD 33EE 0002 AEFF 2EEC 0002 26C7 6EFC"
	$"0005 048D E6FF D04C CB00 FD00 0073 FD00"
	$"0214 4DF7 DFFF 22EC 9E86 7362 5347 3E37"
	$"3331 302F 2F2E 2D2C 2A28 2522 1F1C 1815"
	$"120F 0D0A 0807 0504 0403 FE02 FF01 FF02"
	$"1803 0508 0B0E 1216 191B 1C1C 1B19 1714"
	$"100D 0A08 0604 0302 0101 ED00 F800 0691"
	$"FF7F 0000 83E6 ED00 0262 AE11 ED00 036E"
	$"FFFF 80FC 0006 7AFF 7F7A FFF3 11CC 00FD"
	$"0000 8BFD 0002 1520 A7DE FF20 C991 7E6B"
	$"5B4D 4138 322E 2B29 2726 2422 201E 1B19"
	$"1613 110E 0C0A 0806 0504 0302 02F9 0107"
	$"0204 0508 0A0D 0F11 FE13 0B12 110F 0D0A"
	$"0806 0403 0201 01EB 00F8 002C 40FF CB00"
	$"00D9 9D00 0044 BFDD C351 002E BA76 A6D9"
	$"620C A1DD D04C 008B BA19 000C 89D0 DDA9"
	$"2F00 2EBA 728D D4BB 19FC 0003 1D69 FF80"
	$"FC00 062E 3B00 00C3 FF3B CC00 FD00 0086"
	$"FD00 0316 2144 EDDF FF1D F4A5 8875 6353"
	$"453A 322B 2723 211E 1C1A 1816 1411 0F0D"
	$"0B09 0706 0403 0202 FD01 FB00 FF01 0602"
	$"0405 0708 0A0B FD0C 090A 0908 0605 0302"
	$"0201 01EA 00F8 002C 04EA FF1D 2EFF 4400"
	$"37FB D044 9EFF 3B3B FFEF 88FB D983 E248"
	$"4C40 00BA FF22 00B2 FF7F 4CE6 F31D 3BFF"
	$"F795 BFFF 87FB 0002 3BFF 80F9 0003 04E1"
	$"F715 CC00 FD00 007D FD00 0315 202E 93DE"
	$"FF1A D693 7F6C 5B4B 3E33 2A24 1F1B 1816"
	$"1412 0F0D 0C0A 0807 0504 0302 02FE 01F7"
	$"00FF 0104 0203 0405 06FC 0707 0605 0403"
	$"0202 0101 E800 F700 2B9D FF66 7FEE 0400"
	$"A1FF 4C00 11FF A13B FFA2 0037 3795 F36E"
	$"1D00 00BA FF22 21FF DD00 0077 FF7F 3BFF"
	$"A600 3BFF A2FB 0002 3BFF 80F9 0002 91FF"
	$"7FCB 00FD 0000 75FD 0004 141E 2C46 DFDF"
	$"FF1A FAAF 8A76 6352 4236 2B23 1C17 1411"
	$"0E0C 0A09 0706 0504 0302 0201 01F3 00FF"
	$"01FF 02FF 03FC 04FF 03FF 02FF 01E6 00F7"
	$"0007 48FF B7D0 A500 00BA FCFF 03BA 3BFF"
	$"A2FE 0017 33EE FFFB 7200 BAFF 223B FFBA"
	$"0000 5DFF A23B FFA2 003B FFA2 FB00 023B"
	$"FF80 FA00 028C FF9E CA00 FD00 006D FD00"
	$"0512 1C29 3885 FEDF FF17 E096 816D 5A49"
	$"3A2D 231B 1511 0D0B 0907 0604 0403 0202"
	$"0101 F000 FD01 FB02 FD01 E400 F700 0908"
	$"F3F7 FF51 0000 B2FF 5EFE 2203 193B FFA2"
	$"FD00 1608 55E6 F300 BAFF 2233 FFC7 0000"
	$"6AFF 953B FFA2 003B FFA2 FB00 023B FF80"
	$"FC00 0304 95FB 7BC9 00FD 0000 6BFD 0005"
	$"1019 2533 46CE DFFF 12FE BD8C 7763 5140"
	$"3125 1C15 0F0B 0806 0403 0302 FE01 EB00"
	$"F901 E100 F600 0FA5 FFF7 0800 0066 FFB3"
	$"1508 3C1D 3BFF A2FE 0017 400C 0CC4 EA00"
	$"BAFF 2200 D8FB 3711 CCFF 403B FFA2 003B"
	$"FFA2 FB00 0A3B FF80 0000 A5DD 1D95 FF99"
	$"FE5D 0022 CC00 FD00 0062 FD00 060E 1520"
	$"2D3D 74FA DFFF 0FEC 9B82 6E5A 4737 291E"
	$"160F 0A07 0503 02FE 01C1 00F6 0002 51FF"
	$"AEFD 0008 84F3 FFFF E129 3BFF A2FE 0017"
	$"AAFF FFEA 5400 BAFF 2200 26C8 FFFF EA6A"
	$"003B FFA2 003B FFA2 FB00 083B FF80 0000"
	$"BAFF 22BA FCFF 005D CC00 FD00 0033 FD00"
	$"060B 121B 2736 47BA DEFF 0FC8 8E78 6450"
	$"3E2F 2218 100B 0704 0201 01BF 00EE 0002"
	$"0422 19F8 0001 1922 F800 0115 22AD 00FD"
	$"0000 24FD 0007 090E 1621 2E3E 64ED DFFF"
	$"0FF4 A384 6E5A 4736 271C 130C 0704 0201"
	$"01BF 0081 00FD 0000 23FD 0007 070B 121B"
	$"2735 469F DEFF 0ED6 8F79 6450 3D2E 2016"
	$"0E09 0503 0101 BF00 8100 FD00 0024 FD00"
	$"0805 090E 1620 2D3D 57E3 DFFF 0EFA AD84"
	$"6E59 4634 261A 110A 0603 0201 BF00 8100"
	$"FD00 0024 FD00 0904 070B 111A 2533 448B"
	$"FEDF FF0D DD8E 7862 4E3B 2B1E 140D 0704"
	$"0201 BF00 8100 FD00 0024 FD00 0903 0508"
	$"0D15 1F2B 3A4E CEDF FF0D F09C 816B 5542"
	$"3022 170E 0905 0201 BF00 8100 FD00 0025"
	$"FD00 0A02 0306 0A10 1924 3142 75FA E0FF"
	$"0DEB A088 715B 4735 2619 100A 0503 01BF"
	$"0081 00FD 0000 25FD 000A 0102 0408 0D14"
	$"1D29 3849 BAE0 FF0D D7A2 8C76 604B 3828"
	$"1B12 0B06 0301 BF00 8100 FD00 0028 FD00"
	$"0B01 0203 060A 0F17 222F 3F62 EEE2 FF0F"
	$"ECBB A48E 7862 4D3A 2A1C 120B 0603 0101"
	$"C000 8100 FD00 0029 FC00 0A01 0204 070C"
	$"121B 2736 479F E4FF 11FB E6C9 B5A1 8C77"
	$"614C 3A2A 1D13 0B06 0301 01C0 0081 00FD"
	$"0000 2CFC 00FF 0109 0305 090E 1620 2D3D"
	$"57E2 E7FF 13FE F2DF CEBF AF9C 8772 5D49"
	$"3828 1C12 0B06 0301 01C0 0081 00FD 0000"
	$"2CFB 000A 0102 0407 0B11 1A25 3344 8CE8"
	$"FF14 F8EA DAD0 C4B6 A593 7F6B 5744 3425"
	$"1A11 0A06 0301 01C0 0081 00FD 0000 2DFA"
	$"000A 0102 0508 0D15 1F2B 3A4D CFEB FF15"
	$"FBEF E1D8 CFC4 B7A8 9886 7461 4F3E 2E22"
	$"170F 0905 0301 BF00 8100 FD00 0030 FA00"
	$"0B01 0203 060A 1019 2431 4276 F9EE FF17"
	$"FDF3 E5DC D4CB C0B4 A799 8978 6755 4536"
	$"281D 140D 0804 0201 BF00 8100 FD00 0031"
	$"F900 0A01 0204 080D 141D 2938 49B7 F0FF"
	$"19FE F7E9 DED7 CEC5 BBAF A395 8677 6858"
	$"493A 2D21 1810 0B06 0402 01BF 0081 00FD"
	$"0000 33F9 000B 0102 0306 0A0F 1722 2F3F"
	$"61EF F2FF 1AFA EDE0 D9D1 C8BE B4A8 9C8F"
	$"8173 6557 493C 2F24 1B13 0D08 0503 0101"
	$"BF00 8100 FD00 0033 F800 0A01 0204 070C"
	$"121B 2736 47A1 F4FF 1BFC F1E3 DBD3 CBC1"
	$"B7AC A094 877A 6D60 5346 3A2F 251C 140E"
	$"0A06 0402 01BE 0081 00FD 0000 36F8 00FF"
	$"0109 0305 090E 1620 2D3C 55DF F7FF 1DFD"
	$"F4E6 DCD5 CDC4 BAAF A498 8B7F 7265 594D"
	$"4237 2D24 1C15 0F0A 0704 0301 01BE 0081"
	$"00FD 0000 37F7 000B 0102 0407 0B11 1A25"
	$"3344 88FE FAFF 1EFE F4E5 DBD5 CEC6 BCB2"
	$"A79B 8F82 7669 5D52 463C 3229 211A 140F"
	$"0A07 0503 0201 BD00 8100 FD00 0036 F600"
	$"0A01 0205 080D 151E 2B39 4BCC FBFF 1EF5"
	$"E1D3 D1CC C6BE B4AA 9E92 8679 6D61 554A"
	$"3F36 2D25 1E17 120D 0A07 0403 0201 BC00"
	$"8100 FD00 0038 F600 2E01 0203 060A 1018"
	$"2330 4069 D7FD FFFF F4D7 C3C2 C3C0 BBB4"
	$"ABA1 9589 7D71 6458 4D42 3930 2720 1A14"
	$"100C 0906 0403 0201 BB00 8100 FD00 0036"
	$"F500 2C01 0204 080C 131C 2836 4564 9BBF"
	$"C1A8 A4AC B0B0 ADA8 A096 8B80 7468 5C50"
	$"453B 322A 221C 1611 0D0A 0705 0402 0101"
	$"BA00 8100 FD00 0035 F500 FF01 2903 0509"
	$"0F16 202C 3A49 5A6A 7986 9198 9B9C 9893"
	$"8A81 766A 5F53 483E 352C 241D 1813 0E0B"
	$"0806 0403 0201 01B9 0081 00FD 0000 32F4"
	$"0028 0102 0407 0B11 1923 2F3D 4B59 6773"
	$"7C83 8685 827C 746B 6056 4B41 372E 261F"
	$"1914 100C 0907 0503 0201 01B7 0081 00FD"
	$"0000 31F4 00FF 0125 0305 080D 131C 2631"
	$"3D49 5560 686D 706F 6C66 5F56 4C43 3931"
	$"2821 1B15 110D 0A07 0504 0302 0101 B600"
	$"8100 FD00 002E F300 2401 0203 0609 0F15"
	$"1D26 303A 444D 5458 5A59 5651 4A43 3A32"
	$"2A23 1C17 120E 0B08 0604 0302 0101 B400"
	$"8100 FD00 002B F200 1F01 0204 070B 1016"
	$"1D25 2D35 3C41 4546 4542 3E38 322B 241E"
	$"1813 0F0B 0906 0403 02FE 01B3 0081 00FD"
	$"0000 2AF2 00FF 011E 0305 070B 1015 1B21"
	$"272C 3033 3433 312D 2823 1E19 1410 0C09"
	$"0705 0302 0201 01B1 0081 00FD 0000 27F1"
	$"001D 0102 0305 070B 0F13 171C 2023 2425"
	$"2422 1F1C 1814 100D 0A07 0504 0302 0101"
	$"AF00 8100 FD00 0024 F000 1A01 0203 0507"
	$"0A0D 1013 1517 1919 1817 1512 100D 0A08"
	$"0604 0302 0101 AD00 8100 FD00 0021 EF00"
	$"0901 0203 0406 080A 0C0E 0FFE 1008 0E0D"
	$"0B09 0806 0403 02FE 01AC 0081 00FD 0000"
	$"1FEE 0015 0102 0204 0506 0708 0909 0A09"
	$"0908 0605 0403 0202 0101 AA00 8100 FD00"
	$"0019 ED00 FF01 FF02 0103 04FB 0506 0403"
	$"0302 0201 01A8 0081 00FD 0000 12EC 00FE"
	$"01FE 02FD 03FE 02FE 01A6 0081 00FD 0000"
	$"0AE9 00F7 01A3 0081 00FD 0000 0681 0081"
	$"00FD 0000 0681 0081 00FD 0000 0681 0081"
	$"00FD 0000 0681 0081 00FD 0000 0681 0081"
	$"00FD 0000 0681 0081 00FD 0000 00FF"
};

resource 'STR ' (128, "Change to \"0\" to remove expiration") {
	"1"
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
	$"0654 6563 686E 6F00 0000 0000 0000 0000"            /* .Techno......... */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"000C 0000 0000 0000 0004 0004 0000 0000"            /* ................ */
	$"000A 0002 0000 0000 0000 0000 0000 0001"            /* ................ */
	$"0000 0000 0000 0000 0000 0005 0000 0000"            /* ................ */
	$"0000 0000 0000 0005 0000 0000 0000 0000"            /* ................ */
	$"0000 0007 0000 0000 0000 0000 0000 0006"            /* ................ */
	$"0000 0000 0000 0000 0000 000A 0000 0000"            /* ................ */
	$"0000 0000 0000 000A 0000 0000 0000 0000"            /* ................ */
	$"0000 0006 0000 0000 0000 0000 0000 0006"            /* ................ */
	$"0000 0000 0000 0000 0000"                           /* .......... */
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
	$"0000 0000 0000 0000"                                /* ........ */
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

resource 'STR#' (3001, "Select Object Strings") {
	{	/* array StringArray: 2 elements */
		/* [1] */
		"Select \"<file name>\"",
		/* [2] */
		"Select Desktop"
	}
};

data 'CODE' (1, "ANSI Libraries", purgeable, protected) {
	$"0000 0001 9DCE 598F 2F3C 434F 4445 4267"            /* ....ùŒYè/<CODEBg */
	$"A9A0 2017 6700 00F2 2040 2050 2E18 2C10"            /* ©† .g..Ú @ P..,. */
	$"A9A3 7000 204D 91C6 6002 10C0 B1CD 6DFA"            /* ©£p. Më∆`..¿±Õm˙ */
	$"41ED 0028 43F5 7800 6002 10C0 B1C9 6DFA"            /* AÌ.(Cıx.`..¿±…m˙ */
	$"598F 2F3C 4441 5441 4267 A9A0 2057 2008"            /* Yè/<DATABg©† W . */
	$"6700 00B6 2F0D 2050 4868 0004 4EBA 00B0"            /* g..∂/. PHh..N∫.∞ */
	$"508F 43FA FF9C 2B49 FB0A 224D 4EBA 0218"            /* PèC˙ˇú+I˚."MN∫.. */
	$"226D FB0A 4EBA 0210 A9A3 4EBA 0296 422D"            /* "m˚.N∫..©£N∫.ñB- */
	$"FB0F 303C A89F A746 2F08 303C A198 A346"            /* ˚.0<®üßF/.0<°ò£F */
	$"B1DF 670A 1B7C 0001 FB0F 7001 A198 303C"            /* ±ﬂg..|..˚.p.°ò0< */
	$"A9F0 A746 2B48 FB06 303C A9F1 A746 2B48"            /* ©ßF+H˚.0<©ÒßF+H */
	$"FB02 303C A9F4 A746 2B48 FAFE 303C A9F0"            /* ˚.0<©ÙßF+H˙˛0<© */
	$"41FA 0268 A647 303C A9F1 41FA 0324 A647"            /* A˙.h¶G0<©ÒA˙.$¶G */
	$"303C A9F4 41FA 002E A647 4EB9 0000 0488"            /* 0<©ÙA˙..¶GNπ...à */
	$"4EB9 0000 0528 487A 0022 4A2D FFFF 6702"            /* Nπ...(Hz."J-ˇˇg. */
	$"4267 4267 4EB9 0000 08CE 5C8F 42A7 4EB9"            /* BgBgNπ...Œ\èBßNπ */
	$"0000 0550 4EBA 0384 A9F4 0000 0000 48E7"            /* ...PN∫.Ñ©Ù....HÁ */
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
	$"4EBA FF80 2F2D FB0A 2F0A 2F08 4EBA FF74"            /* N∫ˇÄ/-˚././.N∫ˇt */
	$"2F0A 2F0A 2F08 4EBA FF6A 4FEF 0024 245F"            /* /././.N∫ˇjOÔ.$$_ */
	$"4E75 2F0A 2449 2F0D 4497 2F0A 2F08 4EBA"            /* Nu/.$I/.Dó/./.N∫ */
	$"FF52 2F2D FB0A 4497 2F0A 2F08 4EBA FF44"            /* ˇR/-˚.Dó/./.N∫ˇD */
	$"2F0A 4497 2F0A 2F08 4EBA FF38 4FEF 0024"            /* /.Dó/./.N∫ˇ8OÔ.$ */
	$"245F 4E75 BBFA 0028 6602 4E75 48E7 0084"            /* $_Nuª˙.(f.NuHÁ.Ñ */
	$"2A7A 001C 206D FB06 4A6F 000C 6604 206D"            /* *z.. m˚.Jo..f. m */
	$"FB02 2F48 000A 4CDF 2100 544F 4E75 0000"            /* ˚./H..Lﬂ!.TONu.. */
	$"0000 41FA FFFA 208D 4E75 43F9 0000 00BE"            /* ..A˙ˇ˙ çNuC˘...æ */
	$"C0FC 0010 2388 08F0 4E75 3F3C 0001 4EBA"            /* ¿¸..#à.Nu?<..N∫ */
	$"FFB4 544F 48E7 E0E0 55AF 0018 246F 0018"            /* ˇ¥TOHÁ‡‡UØ..$o.. */
	$"202D FB10 670A 2040 3F2A 0006 4E90 548F"            /*  -˚.g. @?*..NêTè */
	$"50F8 0A5E 598F 2F3C 434F 4445 3F2A 0006"            /* P¯.^Yè/<CODE?*.. */
	$"A9A0 2017 6616 202D FB1C 6604 700F A9C9"            /* ©† .f. -˚.f.p.©… */
	$"2040 3F2A 0006 4E90 548F 60DA 4A38 0BB2"            /*  @?*..NêTè`⁄J8.≤ */
	$"6704 2040 A064 2057 A029 205F 2050 2008"            /* g. @†d W†) _ P . */
	$"A055 2040 2F08 302A 0006 4EBA FF7E 2248"            /* †U @/.0*..N∫ˇ~"H */
	$"D1E8 0008 4EBA FEE0 205F 224D D3E8 0004"            /* —Ë..N∫˛‡ _"M”Ë.. */
	$"3028 0002 2208 600C 337C 4EF9 0000 D3A9"            /* 0(..".`.3|N˘..”© */
	$"0002 5089 51C8 FFF2 4A2D FB0F 6704 7001"            /* ..PâQ»ˇÚJ-˚.g.p. */
	$"A198 202D FB14 670A 2040 3F2A 0006 4E90"            /* °ò -˚.g. @?*..Nê */
	$"548F 4CDF 0707 4A38 012D 6702 A9FF 4E75"            /* TèLﬂ..J8.-g.©ˇNu */
	$"3F3C 0000 4EBA FEEE 544F 2F0A 246F 0008"            /* ?<..N∫˛ÓTO/.$o.. */
	$"0C6A 4EF9 0000 667A 0C6A 0002 0006 6D72"            /* .jN˘..fz.j....mr */
	$"91C8 302A 0006 4EBA FF02 598F 2F3C 434F"            /* ë»0*..N∫ˇ.Yè/<CO */
	$"4445 3F2A 0006 A9A0 2017 6604 588F 6052"            /* DE?*..©† .f.Xè`R */
	$"2040 2050 2248 D1E8 0008 4EBA FE76 2057"            /*  @ P"H—Ë..N∫˛v W */
	$"2050 224D D3E8 0004 3028 0002 2208 600C"            /*  P"M”Ë..0(..".`. */
	$"337C A9F0 0000 93A9 0002 5089 51C8 FFF2"            /* 3|©..ì©..PâQ»ˇÚ */
	$"2057 A02A 205F A049 4A2D FB0F 6704 7001"            /*  W†* _†IJ-˚.g.p. */
	$"A198 202D FB18 670A 2040 3F2A 0006 4E90"            /* °ò -˚.g. @?*..Nê */
	$"548F 245F 2E9F 4E75 4E75 2A78 0904 303C"            /* Tè$_.üNuNu*x..0< */
	$"A9F4 206D FAFE A647 303C A9F0 206D FB06"            /* ©Ù m˙˛¶G0<© m˚. */
	$"A647 303C A9F1 206D FB02 A647 4E75 2F0A"            /* ¶G0<©Ò m˚.¶GNu/. */
	$"6014 2B52 FB20 3F3C FFFF 2F2A 0008 206A"            /* `.+R˚ ?<ˇˇ/*.. j */
	$"0004 4E90 5C4F 246D FB20 200A 66E4 245F"            /* ..Nê\O$m˚  .f‰$_ */
	$"4E75 48E7 3000 7402 4EFB 2200 600A 4C01"            /* NuHÁ0.t.N˚".`.L. */
	$"0000 4CDF 000C 4E75 2400 4842 C4C1 2601"            /* ..Lﬂ..Nu$.HBƒ¡&. */
	$"4843 C6C0 D443 4842 4242 C0C1 D082 4CDF"            /* HC∆¿‘CHBBB¿¡–ÇLﬂ */
	$"000C 4E75 205F 2248 D2D8 B058 6C02 4ED1"            /* ..Nu _"H“ÿ∞Xl.N— */
	$"B058 6F02 4ED1 3218 B058 6604 D0D0 4ED0"            /* ∞Xo.N—2.∞Xf.––N– */
	$"5448 51C9 FFF4 4ED1 4E75 3F3C 0001 4EB9"            /* THQ…ˇÙN—Nu?<..Nπ */
	$"0000 05E6 3B7C 0001 FC46 3F3C 0001 4EB9"            /* ...Ê;|..¸F?<..Nπ */
	$"0000 0550 584F 4E75 8561 626F 7274 0000"            /* ...PXONuÖabort.. */
	$"4A6D FC46 6636 4AAD FD48 6F1A 53AD FD48"            /* Jm¸Ff6J≠˝Ho.S≠˝H */
	$"202D FD48 E588 41ED FC48 2070 0800 4E90"            /*  -˝HÂàAÌ¸H p..Nê */
	$"4AAD FD48 6EE6 4EB9 0000 04AE 4AAD FE50"            /* J≠˝HnÊNπ...ÆJ≠˛P */
	$"670A 206D FE50 4E90 42AD FE50 3F2F 0004"            /* g. m˛PNêB≠˛P?/.. */
	$"4EB9 0000 05A2 544F 4E75 8465 7869 7400"            /* Nπ...¢TONuÑexit. */
	$"0000 4AAD FE4C 6F1A 53AD FE4C 202D FE4C"            /* ..J≠˛Lo.S≠˛L -˛L */
	$"E588 41ED FD4C 2070 0800 4E90 4AAD FE4C"            /* ÂàAÌ˝L p..NêJ≠˛L */
	$"6EE6 4EB9 0000 065A 4AAD FE54 670A 206D"            /* nÊNπ...ZJ≠˛Tg. m */
	$"FE54 4E90 42AD FE54 A9F4 4E75 865F 5F65"            /* ˛TNêB≠˛T©ÙNuÜ__e */
	$"7869 7400 0000 48E7 1038 362F 0014 0C43"            /* xit...HÁ.86/...C */
	$"0001 6D06 0C43 0006 6F08 70FF 4CDF 1C08"            /* ..m..C..o.pˇLﬂ.. */
	$"4E75 3003 5340 48C0 E588 41ED FE58 D1C0"            /* Nu0.S@H¿ÂàAÌ˛X—¿ */
	$"2648 2850 244C 7001 B9C0 6702 4293 7001"            /* &H(P$Lp.π¿g.Bìp. */
	$"B5C0 670A 200A 660E 0C43 0001 6608 7000"            /* µ¿g. .f..C..f.p. */
	$"4CDF 1C08 4E75 200A 660A 4267 4EB9 0000"            /* Lﬂ..Nu .f.BgNπ.. */
	$"0550 544F 3F03 4E92 7000 544F 4CDF 1C08"            /* .PTO?.Níp.TOLﬂ.. */
	$"4E75 8572 6169 7365 0000 4E75 975F 5F6B"            /* NuÖraise..Nuó__k */
	$"696C 6C5F 6372 6974 6963 616C 5F72 6567"            /* ill_critical_reg */
	$"696F 6E73 0000 4E56 0000 48E7 1838 7600"            /* ions..NV..HÁ.8v. */
	$"45F9 0000 0792 47F9 0000 07B8 49F9 0000"            /* E˘...íG˘...∏I˘.. */
	$"0880 41F9 0000 08A2 2808 554F 2F3C 6165"            /* .ÄA˘...¢(.UO/<ae */
	$"7674 2F3C 6F61 7070 2F0A 42A7 4227 303C"            /* vt/<oapp/.BßB'0< */
	$"091F A816 301F 3600 661E 554F 2F3C 6165"            /* ..®.0.6.f.UO/<ae */
	$"7674 2F3C 6F64 6F63 2F0B 42A7 4227 303C"            /* vt/<odoc/.BßB'0< */
	$"091F A816 301F 3600 4A43 661E 554F 2F3C"            /* ..®.0.6.JCf.UO/< */
	$"6165 7674 2F3C 7064 6F63 2F0C 42A7 4227"            /* aevt/<pdoc/.BßB' */
	$"303C 091F A816 301F 3600 4A43 661E 554F"            /* 0<..®.0.6.JCf.UO */
	$"2F3C 6165 7674 2F3C 7175 6974 2F04 42A7"            /* /<aevt/<quit/.Bß */
	$"4227 303C 091F A816 301F 3600 3003 4CDF"            /* B'0<..®.0.6.0.Lﬂ */
	$"1C18 4E5E 4E75 8A41 4549 6E69 745F 5F46"            /* ..N^NuäAEInit__F */
	$"7600 0000 4E56 FFF8 554F 2F2E 0008 2F3C"            /* v...NVˇ¯UO/.../< */
	$"6D69 7373 2F3C 2A2A 2A2A 486E FFFC 42A7"            /* miss/<****Hnˇ¸Bß */
	$"42A7 486E FFF8 303C 0E15 A816 301F 0C40"            /* BßHnˇ¯0<..®.0..@ */
	$"F95B 6604 7000 6004 303C F94D 4E5E 4E75"            /* ˘[f.p.`.0<˘MN^Nu */
	$"9F41 4547 6F74 5265 7175 6972 6564 5061"            /* üAEGotRequiredPa */
	$"7261 6D73 5F5F 4650 4336 4145 4465 7363"            /* rams__FPC6AEDesc */
	$"0000 4E56 0000 2F2E 0010 4EBA FF98 3F40"            /* ..NV../...N∫ˇò?@ */
	$"0018 4E5E 205F 4FEF 000C 4ED0 8941 454F"            /* ..N^ _OÔ..N–âAEO */
	$"5045 4E41 5050 0000 4E56 FFA2 48E7 1820"            /* PENAPP..NVˇ¢HÁ.  */
	$"246E 0010 554F 2F0A 2F3C 2D2D 2D2D 2F3C"            /* $n..UO/./<----/< */
	$"6C69 7374 486E FFB2 303C 0812 A816 301F"            /* listHnˇ≤0<..®.0. */
	$"3800 554F 486E FFB2 486E FFAE 303C 0407"            /* 8.UOHnˇ≤HnˇÆ0<.. */
	$"A816 301F 3800 7601 6058 554F 486E FFB2"            /* ®.0.8.v.`XUOHnˇ≤ */
	$"3043 2F08 2F3C 6673 7320 486E FFA6 486E"            /* 0C/./<fss Hnˇ¶Hn */
	$"FFA2 486E FFBA 4878 0046 486E FFAA 303C"            /* ˇ¢Hnˇ∫Hx.FHnˇ™0< */
	$"100A A816 301F 3800 6626 41EE FFBA 43ED"            /* ..®.0.8.f&AÓˇ∫CÌ */
	$"FBFE 7010 22D8 51C8 FFFC 32D8 4EB9 0000"            /* ˚˛p."ÿQ»ˇ¸2ÿNπ.. */
	$"12BC 2F0A 4EBA FEEE 3F40 0082 584F 6016"            /* .º/.N∫˛Ó?@.ÇXO`. */
	$"5243 3043 B1EE FFAE 6FA0 2F0A 4EBA FED6"            /* RC0C±ÓˇÆo†/.N∫˛÷ */
	$"3F40 0082 584F 4CDF 0418 4E5E 205F 4FEF"            /* ?@.ÇXOLﬂ..N^ _OÔ */
	$"000C 4ED0 8941 454F 5045 4E44 4F43 0000"            /* ..N–âAEOPENDOC.. */
	$"4E56 0000 3F7C F954 0014 4E5E 205F 4FEF"            /* NV..?|˘T..N^ _OÔ */
	$"000C 4ED0 8A41 4550 5249 4E54 444F 4300"            /* ..N–äAEPRINTDOC. */
	$"0000 4E56 0000 1B7C 0001 FBF3 2F2E 0010"            /* ..NV...|..˚Û/... */
	$"4EBA FE82 3F40 0018 4E5E 205F 4FEF 000C"            /* N∫˛Ç?@..N^ _OÔ.. */
	$"4ED0 8941 4551 5549 5441 5050 0000 4E56"            /* N–âAEQUITAPP..NV */
	$"0000 4EB9 0000 08F0 4EB9 0000 0996 4EB9"            /* ..Nπ...Nπ...ñNπ */
	$"0000 248C 4E5E 4E75 846D 6169 6E00 0000"            /* ..$åN^NuÑmain... */
	$"4E56 0000 4EB9 0000 2434 4EB9 0000 094C"            /* NV..Nπ..$4Nπ...L */
	$"4EB9 0000 0676 486D FBF4 486D FBF8 203C"            /* Nπ...vHm˚ÙHm˚¯ < */
	$"0008 0005 AB1D 422D FBF3 554F 4EB9 0000"            /* ....´.B-˚ÛUONπ.. */
	$"3792 101F 56C0 4400 1B40 FBFD 554F A994"            /* 7í..V¿D..@˚˝UO©î */
	$"301F 3B40 FC44 4E5E 4E75 8E49 6E69 7469"            /* 0.;@¸DN^NuéIniti */
	$"616C 697A 655F 5F46 7600 0000 4E56 0000"            /* alize__Fv...NV.. */
	$"2F0B 2F0A 594F 3F3C 0080 A9C0 205F 2448"            /* /./.YO?<.Ä©¿ _$H */
	$"2F0A A93C 594F 3F3C 0080 A949 205F 2648"            /* /.©<YO?<.Ä©I _&H */
	$"2F0B 2F3C 4452 5652 A94D A937 245F 265F"            /* /./<DRVR©M©7$_&_ */
	$"4E5E 4E75 8F49 6E69 744D 656E 7542 6172"            /* N^NuèInitMenuBar */
	$"5F5F 4676 0000 4E56 FFF0 6022 554F 3F3C"            /* __Fv..NVˇ`"UO?< */
	$"FFFF 486E FFF0 4878 003C 42A7 A860 101F"            /* ˇˇHnˇHx.<Bß®`.. */
	$"670C 486E FFF0 4EB9 0000 09D8 584F 4A2D"            /* g.HnˇNπ...ÿXOJ- */
	$"FBF3 67D8 4E5E 4E75 8D45 7665 6E74 4C6F"            /* ˚ÛgÿN^NuçEventLo */
	$"6F70 5F5F 4676 0000 4E56 0000 2F0A 246E"            /* op__Fv..NV../.$n */
	$"0008 3012 4EB9 0000 0504 0060 0001 0017"            /* ..0.Nπ.....`.... */
	$"0006 0001 0026 0002 0016 0003 002A 0005"            /* .....&.......*.. */
	$"0026 0006 002E 0008 0042 0017 0032 2F0A"            /* .&.......B...2/. */
	$"4EB9 0000 0A6C 584F 6030 2F0A 4EB9 0000"            /* Nπ...lXO`0/.Nπ.. */
	$"0A96 584F 6024 2F0A 4EB9 0000 0B28 584F"            /* .ñXO`$/.Nπ...(XO */
	$"6018 2F0A 4EB9 0000 0B88 584F 600C 554F"            /* `./.Nπ...àXO`.UO */
	$"2F0A 303C 021B A816 301F 245F 4E5E 4E75"            /* /.0<..®.0.$_N^Nu */
	$"9844 6F45 7665 6E74 5F5F 4650 3131 4576"            /* òDoEvent__FP11Ev */
	$"656E 7452 6563 6F72 6400 0000 4E56 0000"            /* entRecord...NV.. */
	$"4E5E 4E75 9E48 616E 646C 654D 6F75 7365"            /* N^NuûHandleMouse */
	$"5570 5F5F 4650 3131 4576 656E 7452 6563"            /* Up__FP11EventRec */
	$"6F72 6400 0000 4E56 FFFC 48E7 1830 246E"            /* ord...NVˇ¸HÁ.0$n */
	$"0008 554F 2F2A 000A 486E FFFC A92C 301F"            /* ..UO/*..Hnˇ¸©,0. */
	$"3600 3003 5340 670A 5340 671E 5540 6724"            /* 6.0.S@g.S@g.U@g$ */
	$"603A 594F 2F2A 000A A93D 201F 2800 2F04"            /* `:YO/*..©= .(./. */
	$"4EB9 0000 0BCE 584F 6022 2F0A 2F2E FFFC"            /* Nπ...ŒXO`"/./.ˇ¸ */
	$"A9B3 6018 594F AA2A 205F 2648 2F2E FFFC"            /* ©≥`.YO™* _&H/.ˇ¸ */
	$"2F2A 000A 2053 4868 0022 A925 4CDF 0C18"            /* /*.. SHh."©%Lﬂ.. */
	$"4E5E 4E75 8020 4861 6E64 6C65 4D6F 7573"            /* N^NuÄ HandleMous */
	$"6544 6F77 6E5F 5F46 5031 3145 7665 6E74"            /* eDown__FP11Event */
	$"5265 636F 7264 0000 4E56 0000 2F0A 2F03"            /* Record..NV.././. */
	$"246E 0008 262A 0002 0283 0000 00FF 302A"            /* $n..&*...É...ˇ0* */
	$"000E 0240 0100 6716 594F 1003 4880 3F00"            /* ...@..g.YO..HÄ?. */
	$"A93E 201F 2F00 4EB9 0000 0BCE 584F 261F"            /* ©> ./.Nπ...ŒXO&. */
	$"245F 4E5E 4E75 9E48 616E 646C 654B 6579"            /* $_N^NuûHandleKey */
	$"446F 776E 5F5F 4650 3131 4576 656E 7452"            /* Down__FP11EventR */
	$"6563 6F72 6400 0000 4E56 0000 2F0A 206E"            /* ecord...NV../. n */
	$"0008 2468 0002 594F 2F0A A917 201F 6608"            /* ..$h..YO/.©. .f. */
	$"2F0A A922 2F0A A923 245F 4E5E 4E75 9D48"            /* /.©"/.©#$_N^NuùH */
	$"616E 646C 6555 7064 6174 655F 5F46 5031"            /* andleUpdate__FP1 */
	$"3145 7665 6E74 5265 636F 7264 0000 4E56"            /* 1EventRecord..NV */
	$"0000 48E7 1C00 2A2E 0008 6740 2805 4844"            /* ..HÁ..*...g@(.HD */
	$"48C4 3605 3004 0440 0080 670A 5340 6712"            /* Hƒ6.0..@.Äg.S@g. */
	$"5340 671A 6022 3F03 4EB9 0000 0C38 544F"            /* S@g.`"?.Nπ...8TO */
	$"6016 3F03 4EB9 0000 0FAA 544F 600A 3F03"            /* `.?.Nπ...™TO`.?. */
	$"4EB9 0000 23C4 544F 4267 A938 4CDF 0038"            /* Nπ..#ƒTOBg©8Lﬂ.8 */
	$"4E5E 4E75 9144 6F4D 656E 7543 6F6D 6D61"            /* N^NuëDoMenuComma */
	$"6E64 5F5F 466C 0000 4E56 FEFE 2F0A 302E"            /* nd__Fl..NV˛˛/.0. */
	$"0008 5340 6702 6008 4EB9 0000 0C94 6026"            /* ..S@g.`.Nπ...î`& */
	$"594F 3F3C 0080 A949 205F 2448 2F0A 3F2E"            /* YO?<.Ä©I _$H/.?. */
	$"0008 486E FF00 A946 554F 486E FF00 A9B6"            /* ..Hnˇ.©FUOHnˇ.©∂ */
	$"301F 3D40 FEFE 245F 4E5E 4E75 9548 616E"            /* 0.=@˛˛$_N^NuïHan */
	$"646C 6541 7070 6C65 4368 6F69 6365 5F5F"            /* dleAppleChoice__ */
	$"4669 0000 4E56 FDDC 48E7 1C38 594F 3F3C"            /* Fi..NV˝‹HÁ.8YO?< */
	$"0080 42A7 4878 FFFF A97C 205F 2448 2F0A"            /* .ÄBßHxˇˇ©| _$H/. */
	$"A873 554F 2F0A 3F3C 0001 303C 0304 AA68"            /* ®sUO/.?<..0<..™h */
	$"301F 2F0A A915 2F0A 3F3C 0002 486E FDF2"            /* 0./.©./.?<..Hn˝Ú */
	$"486E FDF4 486E FDF8 A98D 2D6E FDF8 FDDC"            /* Hn˝ÙHn˝¯©ç-n˝¯˝‹ */
	$"2D6E FDFC FDE0 486E FDF8 302E FDFA 4440"            /* -n˝¸˝‡Hn˝¯0.˝˙D@ */
	$"3F00 302E FDF8 4440 3F00 A8A8 554F 486E"            /* ?.0.˝¯D@?.®®UOHn */
	$"FDE4 3F3C 0020 486E FDF8 42A7 42A7 42A7"            /* ˝‰?<. Hn˝¯BßBßBß */
	$"203C 0016 0000 AB1D 301F 594F 2F2E FDE4"            /*  <....´.0.YO/.˝‰ */
	$"203C 0004 0017 AB1D 205F 2648 554F 2F0B"            /*  <....´. _&HUO/. */
	$"203C 0004 0001 AB1D 101F 554F 486E FDEC"            /*  <....´...UOHn˝Ï */
	$"3F3C 0020 486E FDF8 42A7 42A7 42A7 203C"            /* ?<. Hn˝¯BßBßBß < */
	$"0016 0000 AB1D 301F 2F2E FDEC 42A7 203C"            /* ....´.0./.˝ÏBß < */
	$"0008 0006 AB1D 594F 3F3C 0080 A9BC 205F"            /* ....´.YO?<.Ä©º _ */
	$"2F08 486E FDF8 A8F6 594F 2F2E FDEC 203C"            /* /.Hn˝¯®ˆYO/.˝Ï < */
	$"0004 0017 AB1D 205F 2848 554F 2F0C 203C"            /* ....´. _(HUO/. < */
	$"0004 0001 AB1D 101F 554F 486E FDE8 3F3C"            /* ....´...UOHn˝Ë?< */
	$"0020 486E FDF8 42A7 42A7 42A7 203C 0016"            /* . Hn˝¯BßBßBß <.. */
	$"0000 AB1D 301F 2F2E FDE8 42A7 203C 0008"            /* ..´.0./.˝ËBß <.. */
	$"0006 AB1D 594F 3F3C 0081 A9BC 205F 2F08"            /* ..´.YO?<.Å©º _/. */
	$"486E FDF8 A8F6 594F 2F2E FDE8 203C 0004"            /* Hn˝¯®ˆYO/.˝Ë <.. */
	$"0017 AB1D 205F 2A08 554F 2F05 203C 0004"            /* ..´. _*.UO/. <.. */
	$"0001 AB1D 101F 2F2E FDEC 42A7 203C 0008"            /* ..´.../.˝ÏBß <.. */
	$"0006 AB1D 486A 0002 2F13 486E FDDC 486E"            /* ..´.Hj../.Hn˝‹Hn */
	$"FDF8 4267 42A7 A8EC 2F14 2045 2F10 2F13"            /* ˝¯BgBß®Ï/. E/./. */
	$"486E FDF8 486E FDF8 486E FDF8 4267 42A7"            /* Hn˝¯Hn˝¯Hn˝¯BgBß */
	$"AA51 2F13 486A 0002 486E FDF8 486E FDDC"            /* ™Q/.Hj..Hn˝¯Hn˝‹ */
	$"3F3C 0040 42A7 A8EC 2F0A A873 2F0C 203C"            /* ?<.@Bß®Ï/.®s/. < */
	$"0004 0002 AB1D 2F05 203C 0004 0002 AB1D"            /* ....´./. <....´. */
	$"2F0B 203C 0004 0002 AB1D 2F2E FDEC 203C"            /* /. <....´./.˝Ï < */
	$"0004 0004 AB1D 2F2E FDE8 203C 0004 0004"            /* ....´./.˝Ë <.... */
	$"AB1D 2F2E FDE4 203C 0004 0004 AB1D 7800"            /* ´./.˝‰ <....´.x. */
	$"6000 00E2 42A7 486E FDF0 A991 302E FDF0"            /* `..‚BßHn˝©ë0.˝ */
	$"5340 6700 00CE 5740 6700 0086 5340 6704"            /* S@g..ŒW@g..ÜS@g. */
	$"6000 00C2 2F0A 3F3C 0005 486E FDF2 486E"            /* `..¬/.?<..Hn˝ÚHn */
	$"FDF4 486E FDF8 A98D 2F2E FDF4 486E FF00"            /* ˝ÙHn˝¯©ç/.˝ÙHnˇ. */
	$"A990 486D FE70 486E FE00 4EB9 0000 2582"            /* ©êHm˛pHn˛.Nπ..%Ç */
	$"7601 504F 6014 41EE FF00 3003 5E40 43EE"            /* v.PO`.AÓˇ.0.^@CÓ */
	$"FE00 13B0 3000 0000 5243 7000 102E FF00"            /* ˛..∞0...RCp...ˇ. */
	$"B640 6FE2 102E FF00 D12E FE00 7801 486E"            /* ∂@o‚..ˇ.—.˛.x.Hn */
	$"FE00 4EB9 0000 2D82 4A80 584F 6756 486D"            /* ˛.Nπ..-ÇJÄXOgVHm */
	$"FE8A 486D FE78 4EB9 0000 24B6 504F 6044"            /* ˛äHm˛xNπ..$∂PO`D */
	$"2F0A 3F3C 0004 486E FDF2 486E FDF4 486E"            /* /.?<..Hn˝ÚHn˝ÙHn */
	$"FDF8 A98D 2F2E FDF4 486E FE00 A990 7801"            /* ˝¯©ç/.˝ÙHn˛.©êx. */
	$"486E FE00 4EB9 0000 2D82 4A80 584F 6714"            /* Hn˛.Nπ..-ÇJÄXOg. */
	$"486D FE8A 486D FE78 4EB9 0000 24B6 504F"            /* Hm˛äHm˛xNπ..$∂PO */
	$"6002 7801 4A04 6700 FF1C 2F0A A983 2F2D"            /* `.x.J.g.ˇ./.©É/- */
	$"FBF4 2F2D FBF8 203C 0008 0006 AB1D 4CDF"            /* ˚Ù/-˚¯ <....´.Lﬂ */
	$"1C38 4E5E 4E75 9053 686F 7741 626F 7574"            /* .8N^NuêShowAbout */
	$"426F 785F 5F46 7600 0000 4E56 0000 2F03"            /* Box__Fv...NV../. */
	$"302E 0008 5340 6706 5540 6726 602A 4A2D"            /* 0...S@g.U@g&`*J- */
	$"FBFD 670A 4EB9 0000 1006 2600 6008 4EB9"            /* ˚˝g.Nπ....&.`.Nπ */
	$"0000 10F2 2600 4A83 660E 4EB9 0000 12BC"            /* ...Ú&.JÉf.Nπ...º */
	$"6006 1B7C 0001 FBF3 261F 4E5E 4E75 9448"            /* `..|..˚Û&.N^NuîH */
	$"616E 646C 6546 696C 6543 686F 6963 655F"            /* andleFileChoice_ */
	$"5F46 6900 0000 4E56 F6F8 2F0B 2F0A 3F2D"            /* _Fi...NVˆ¯/./.?- */
	$"FC44 A998 45F9 0000 2BE2 554F 486E F700"            /* ¸D©òE˘..+‚UOHn˜. */
	$"4EB9 0000 344A 301F 04AE 0000 0080 F702"            /* Nπ..4J0..Æ...Ä˜. */
	$"486D FEAC 486E F70A 4EB9 0000 2582 2F3C"            /* Hm˛¨Hn˜.Nπ..%Ç/< */
	$"436F 6C72 3F3C 0001 2F3C 4163 6964 4EB9"            /* Colr?<../<AcidNπ */
	$"0000 2B5C 2648 42A7 486E FF00 486E F700"            /* ..+\&HBßHnˇ.Hn˜. */
	$"2F0A 42A7 42A7 2F0B 42A7 4EB9 0000 34F6"            /* /.BßBß/.BßNπ..4ˆ */
	$"301F 4A2E FF02 4FEF 0010 674A 554F 486E"            /* 0.J.ˇ.OÔ..gJUOHn */
	$"FF06 4878 0001 2F3C 6673 7320 42A7 486E"            /* ˇ.Hx../<fss BßHn */
	$"F6F8 303C 0A0B A816 301F 486D FBFE 486E"            /* ˆ¯0<..®.0.Hm˚˛Hn */
	$"F6F8 4EB9 0000 2CCC 486E FF00 4EB9 0000"            /* ˆ¯Nπ..,ÃHnˇ.Nπ.. */
	$"35AA 301F 486E F6F8 303C 0204 A816 301F"            /* 5™0.Hnˆ¯0<..®.0. */
	$"7000 584F 6010 554F 486E FF00 4EB9 0000"            /* p.XO`.UOHnˇ.Nπ.. */
	$"35AA 301F 70CE 245F 265F 4E5E 4E75 9047"            /* 5™0.pŒ$_&_N^NuêG */
	$"6574 5363 6865 6D65 4E61 765F 5F46 7600"            /* etSchemeNav__Fv. */
	$"0000 4E56 FF98 2D7C 436F 6C72 FF98 42A7"            /* ..NVˇò-|ColrˇòBß */
	$"3F3C 0001 486E FF98 486E FFA8 3F3C 0006"            /* ?<..HnˇòHnˇ®?<.. */
	$"A9EA 4A2E FFA8 6718 41EE FFA8 5C88 43ED"            /* ©ÍJ.ˇ®g.AÓˇ®\àCÌ */
	$"FBFE 7010 22D8 51C8 FFFC 32D8 7000 6002"            /* ˚˛p."ÿQ»ˇ¸2ÿp.`. */
	$"70CE 4E5E 4E75 9047 6574 5363 6865 6D65"            /* pŒN^NuêGetScheme */
	$"4F6C 645F 5F46 7600 0000 4E56 FFE2 2F0A"            /* Old__Fv...NVˇ‚/. */
	$"2D6D FEB6 FFFA 3D6D FEBA FFFE 2D6D FEBC"            /* -m˛∂ˇ˙=m˛∫ˇ˛-m˛º */
	$"FFF4 3D6D FEC0 FFF8 2D6D FEC2 FFEE 3D6D"            /* ˇÙ=m˛¿ˇ¯-m˛¬ˇÓ=m */
	$"FEC6 FFF2 2D6D FEC8 FFE8 3D6D FECC FFEC"            /* ˛∆ˇÚ-m˛»ˇË=m˛ÃˇÏ */
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
	$"6C6C 5F5F 4634 5265 6374 0000 4E56 FBD0"            /* ll__F4Rect..NV˚– */
	$"48E7 1830 3D7C 0084 FFFA 47F9 0000 1A4E"            /* HÁ.0=|.Ñˇ˙G˘...N */
	$"554F 486D FBFE 1F3C 0003 700D AA52 301F"            /* UOHm˚˛.<..p.™R0. */
	$"3800 0C44 FFFF 667A 554F A9AF 301F 0440"            /* 8..DˇˇfzUO©Ø0..@ */
	$"FFCF 670E 0440 000A 671C 0440 0027 6762"            /* ˇœg..@..g..@.'gb */
	$"6038 486D FF1A 486D FECE 4EB9 0000 24B6"            /* `8Hmˇ.Hm˛ŒNπ..$∂ */
	$"504F 6000 04E8 554F 486D FBFE 486E FCD0"            /* PO`..ËUOHm˚˛Hn¸– */
	$"7007 AA52 301F 486D FBFE 2F2E FCD4 2F2E"            /* p.™R0.Hm˚˛/.¸‘/. */
	$"FCD0 4267 700E AA52 6028 554F A9AF 301F"            /* ¸–Bgp.™R`(UO©Ø0. */
	$"48C0 2F00 486E FBD0 4EB9 0000 0050 486E"            /* H¿/.Hn˚–Nπ...PHn */
	$"FBD0 486D FF38 4EB9 0000 2526 504F 6000"            /* ˚–Hmˇ8Nπ..%&PO`. */
	$"049C 3F04 A99A 3F2D FC44 A998 594F 3F3C"            /* .ú?.©ö?-¸D©òYO?< */
	$"0081 42A7 4878 FFFF A97C 205F 2448 2F0A"            /* .ÅBßHxˇˇ©| _$H/. */
	$"486E FCE0 A919 486D FF7C 486E FCE0 4EB9"            /* Hn¸‡©.Hmˇ|Hn¸‡Nπ */
	$"0000 25C0 486D FC04 486E FCE0 4EB9 0000"            /* ..%¿Hm¸.Hn¸‡Nπ.. */
	$"25C0 2F0A 486E FCE0 A91A 2F0A 3F3C 0001"            /* %¿/.Hn¸‡©./.?<.. */
	$"303C 0304 AA68 301F 2F0A 3F3C 0002 303C"            /* 0<..™h0./.?<..0< */
	$"0305 AA68 301F 2F0A 1F3C 0001 303C 0306"            /* ..™h0./..<..0<.. */
	$"AA68 301F 2F0A 4878 0005 3F3C 7FFF A97E"            /* ™h0./.Hx..?<.ˇ©~ */
	$"2F0A 3F3C 0004 486E FFF8 486E FFFC 486E"            /* /.?<..Hnˇ¯Hnˇ¸Hn */
	$"FDE2 A98D 2F0A A915 2D7C FFFF C800 FDEA"            /* ˝‚©ç/.©.-|ˇˇ».˝Í */
	$"2F2E FDEA 486E FEEE 4EB9 0000 0050 486E"            /* /.˝ÍHn˛ÓNπ...PHn */
	$"FDEE 486E FFEE 486E FFFA 486E FEEE 4EB9"            /* ˝ÓHnˇÓHnˇ˙Hn˛ÓNπ */
	$"0000 1814 2F0A 3F3C 0004 486E FFF8 486E"            /* ..../.?<..Hnˇ¯Hn */
	$"FFFC 486E FFF0 A98D 206E FFFC 2050 2068"            /* ˇ¸Hnˇ©ç nˇ¸ P h */
	$"001C 2050 3028 0004 B06E FFFA 4FEF 001A"            /* .. P0(..∞nˇ˙OÔ.. */
	$"6756 2F2E FFFC A955 594F 2F0A 486E FDE2"            /* gV/.ˇ¸©UYO/.Hn˝‚ */
	$"486D FF80 1F3C 0001 4267 3F2E FFFA 2F3C"            /* HmˇÄ.<..Bg?.ˇ˙/< */
	$"03F1 0032 42A7 A954 205F 2D48 FFFC 206E"            /* .Ò.2Bß©T _-Hˇ¸ n */
	$"FFFC 2050 2068 001C 2050 316E FFFA 0004"            /* ˇ¸ P h.. P1nˇ˙.. */
	$"594F 3F2E FFFA A9BF 205F 226E FFFC 2251"            /* YO?.ˇ˙©ø _"nˇ¸"Q */
	$"2269 001C 2251 2288 2F0A 3F3C 0004 486E"            /* "i.."Q"à/.?<..Hn */
	$"FFF8 486E FFFC 486E FFF0 A98D 2F2E FFFC"            /* ˇ¯Hnˇ¸Hnˇ©ç/.ˇ¸ */
	$"3F2E FFEE A963 2F0A 3F3C 0003 486E FFF8"            /* ?.ˇÓ©c/.?<..Hnˇ¯ */
	$"486E FFFC 486E FFF0 A98D 2F2E FFFC 302E"            /* Hnˇ¸Hnˇ©ç/.ˇ¸0. */
	$"FFFA 0640 FF7D 3F00 A963 2F2E FDEA 486E"            /* ˇ˙.@ˇ}?.©c/.˝ÍHn */
	$"FEEE 4EB9 0000 0050 2F0A 3F3C 0005 486E"            /* ˛ÓNπ...P/.?<..Hn */
	$"FFF8 486E FFFC 486E FFF0 A98D 2F2E FFFC"            /* ˇ¯Hnˇ¸Hnˇ©ç/.ˇ¸ */
	$"486E FEEE A98F 2F0A 4EB9 0000 1BAA 7600"            /* Hn˛Ó©è/.Nπ...™v. */
	$"584F 6000 02CE 2F0B 486E FDE0 A991 302E"            /* XO`..Œ/.Hn˝‡©ë0. */
	$"FDE0 0C40 0005 6200 02BA D040 303B 0006"            /* ˝‡.@..b..∫–@0;.. */
	$"4EFB 0002 02AE 0114 0182 0188 0282 000C"            /* N˚...Æ...Ç.à.Ç.. */
	$"2F0A 3F3C 0005 486E FFF8 486E FFFC 486E"            /* /.?<..Hnˇ¯Hnˇ¸Hn */
	$"FFF0 A98D 2F2E FFFC 486E FEEE A990 486E"            /* ˇ©ç/.ˇ¸Hn˛Ó©êHn */
	$"FDEE 486E FFEE 486E FFFA 486E FEEE 4EB9"            /* ˝ÓHnˇÓHnˇ˙Hn˛ÓNπ */
	$"0000 1814 2F0A 3F3C 0004 486E FFF8 486E"            /* ..../.?<..Hnˇ¯Hn */
	$"FFFC 486E FFF0 A98D 206E FFFC 2050 2068"            /* ˇ¸Hnˇ©ç nˇ¸ P h */
	$"001C 2050 3028 0004 B06E FFFA 4FEF 0010"            /* .. P0(..∞nˇ˙OÔ.. */
	$"6756 2F2E FFFC A955 594F 2F0A 486E FDE2"            /* gV/.ˇ¸©UYO/.Hn˝‚ */
	$"486D FF80 1F3C 0001 4267 3F2E FFFA 2F3C"            /* HmˇÄ.<..Bg?.ˇ˙/< */
	$"03F1 0032 42A7 A954 205F 2D48 FFFC 206E"            /* .Ò.2Bß©T _-Hˇ¸ n */
	$"FFFC 2050 2068 001C 2050 316E FFFA 0004"            /* ˇ¸ P h.. P1nˇ˙.. */
	$"594F 3F2E FFFA A9BF 205F 226E FFFC 2251"            /* YO?.ˇ˙©ø _"nˇ¸"Q */
	$"2269 001C 2251 2288 2F0A 3F3C 0004 486E"            /* "i.."Q"à/.?<..Hn */
	$"FFF8 486E FFFC 486E FFF0 A98D 2F2E FFFC"            /* ˇ¯Hnˇ¸Hnˇ©ç/.ˇ¸ */
	$"3F2E FFEE A963 2F0A 3F3C 0003 486E FFF8"            /* ?.ˇÓ©c/.?<..Hnˇ¯ */
	$"486E FFFC 486E FFF0 A98D 2F2E FFFC 302E"            /* Hnˇ¸Hnˇ©ç/.ˇ¸0. */
	$"FFFA 0640 FF7D 3F00 A963 2F0A 4EB9 0000"            /* ˇ˙.@ˇ}?.©c/.Nπ.. */
	$"1BAA 584F 6000 019C 2F0A 3F3C 0005 486E"            /* .™XO`..ú/.?<..Hn */
	$"FFF8 486E FFFC 486E FFF0 A98D 2F2E FFFC"            /* ˇ¯Hnˇ¸Hnˇ©ç/.ˇ¸ */
	$"486E FEEE A990 486E FEEE 486E FDEA 4EB9"            /* Hn˛Ó©êHn˛ÓHn˝ÍNπ */
	$"0000 0048 486E FDEE 486E FFEE 486E FFFA"            /* ...HHn˝ÓHnˇÓHnˇ˙ */
	$"486E FEEE 4EB9 0000 1814 486D FF86 486E"            /* Hn˛ÓNπ....HmˇÜHn */
	$"FDEE 4EB9 0000 25C0 486E FDEE 3F2E FDEC"            /* ˝ÓNπ..%¿Hn˝Ó?.˝Ï */
	$"4EB9 0000 1EA2 2F0A 4EB9 0000 1BAA 4FEF"            /* Nπ...¢/.Nπ...™OÔ */
	$"0022 6000 012E 7601 6000 0128 2F0A 3F3C"            /* ."`...v.`..(/.?< */
	$"0003 486E FFF8 486E FFFC 486E FFF0 A98D"            /* ..Hnˇ¯Hnˇ¸Hnˇ©ç */
	$"554F 2F2E FFFC A960 301F 0640 0083 3D40"            /* UO/.ˇ¸©`0..@.É=@ */
	$"FFFA 3D7C 0001 FFEE 2F0A 3F3C 0004 486E"            /* ˇ˙=|..ˇÓ/.?<..Hn */
	$"FFF8 486E FFFC 486E FFF0 A98D 206E FFFC"            /* ˇ¯Hnˇ¸Hnˇ©ç nˇ¸ */
	$"2050 2068 001C 2050 3028 0004 B06E FFFA"            /*  P h.. P0(..∞nˇ˙ */
	$"6756 2F2E FFFC A955 594F 2F0A 486E FDE2"            /* gV/.ˇ¸©UYO/.Hn˝‚ */
	$"486D FF80 1F3C 0001 4267 3F2E FFFA 2F3C"            /* HmˇÄ.<..Bg?.ˇ˙/< */
	$"03F1 0032 42A7 A954 205F 2D48 FFFC 206E"            /* .Ò.2Bß©T _-Hˇ¸ n */
	$"FFFC 2050 2068 001C 2050 316E FFFA 0004"            /* ˇ¸ P h.. P1nˇ˙.. */
	$"594F 3F2E FFFA A9BF 205F 226E FFFC 2251"            /* YO?.ˇ˙©ø _"nˇ¸"Q */
	$"2269 001C 2251 2288 2F0A 3F3C 0004 486E"            /* "i.."Q"à/.?<..Hn */
	$"FFF8 486E FFFC 486E FFF0 A98D 2F2E FFFC"            /* ˇ¯Hnˇ¸Hnˇ©ç/.ˇ¸ */
	$"3F2E FFEE A963 2F0A 3F3C 0003 486E FFF8"            /* ?.ˇÓ©c/.?<..Hnˇ¯ */
	$"486E FFFC 486E FFF0 A98D 2F2E FFFC 302E"            /* Hnˇ¸Hnˇ©ç/.ˇ¸0. */
	$"FFFA 0640 FF7D 3F00 A963 2F0A 4EB9 0000"            /* ˇ˙.@ˇ}?.©c/.Nπ.. */
	$"1BAA 584F 602C 2F0A 3F3C 0004 486E FFF8"            /* .™XO`,/.?<..Hnˇ¯ */
	$"486E FFFC 486E FFF0 A98D 554F 2F2E FFFC"            /* Hnˇ¸Hnˇ©çUO/.ˇ¸ */
	$"A960 301F 3D40 FFEE 2F0A 4EB9 0000 1BAA"            /* ©`0.=@ˇÓ/.Nπ...™ */
	$"584F 4A03 6700 FD30 2F0A A983 4CDF 0C18"            /* XOJ.g.˝0/.©ÉLﬂ.. */
	$"4E5E 4E75 8C45 6469 7463 6963 6E5F 5F46"            /* N^NuåEditcicn__F */
	$"7600 0000 4E56 FF00 48E7 1F38 2E2E 0008"            /* v...NVˇ.HÁ.8.... */
	$"246E 000C 266E 0010 2C2E 0014 486D FF86"            /* $n..&n..,...HmˇÜ */
	$"2F06 4EB9 0000 2582 34BC 00A5 594F 2F3C"            /* /.Nπ..%Ç4º.•YO/< */
	$"4D45 4E55 3F12 A81F 205F 2F08 A950 301F"            /* MENU?.®. _/.©P0. */
	$"3680 2F07 486D FF88 1F3C 0001 1F3C 0001"            /* 6Ä/.Hmˇà.<...<.. */
	$"4EB9 0000 0040 101F 584F 6600 0086 7800"            /* Nπ...@..XOf..Üx. */
	$"607A 3F2D FC44 A998 594F 2F3C 4D45 4E55"            /* `z?-¸D©òYO/<MENU */
	$"3004 0640 0084 3F00 A81F 205F 2848 554F"            /* 0..@.Ñ?.®. _(HUO */
	$"2F0C A950 301F 3A00 7601 604A 2F0C 3F03"            /* /.©P0.:.v.`J/.?. */
	$"486E FF00 A946 486E FF00 4EB9 0000 1916"            /* Hnˇ.©FHnˇ.Nπ.... */
	$"2F07 486E FF00 1F3C 0001 1F3C 0001 4EB9"            /* /.Hnˇ..<...<..Nπ */
	$"0000 0040 101F 544F 671A 3004 0640 0084"            /* ...@..TOg.0..@.Ñ */
	$"3480 3683 2F06 3F13 3F12 4EB9 0000 19A2"            /* 4Ä6É/.?.?.Nπ...¢ */
	$"504F 600E 5243 B645 6FB2 5244 0C44 0022"            /* PO`.RC∂Eo≤RD.D." */
	$"6D80 4CDF 1CF8 4E5E 4E75 9847 6574 6369"            /* mÄLﬂ.¯N^NuòGetci */
	$"636E 4D65 6E75 5F5F 4650 5563 5069 5069"            /* cnMenu__FPUcPiPi */
	$"5055 6300 0000 4E56 FF00 2F03 2F2E 0008"            /* PUc...NVˇ././... */
	$"486E FF00 4EB9 0000 2582 7600 162E FF00"            /* Hnˇ.Nπ..%Çv...ˇ. */
	$"504F 6002 5343 4A43 6F14 41EE FF00 7000"            /* PO`.SCJCo.AÓˇ.p. */
	$"1030 3000 0C40 0020 67EA 6002 5343 4A43"            /* .00..@. gÍ`.SCJC */
	$"6F10 41EE FF00 7000 1030 3000 0C40 0020"            /* o.AÓˇ.p..00..@.  */
	$"66EA 7000 102E FF00 9043 41EE FF00 1180"            /* fÍp...ˇ.êCAÓˇ..Ä */
	$"3000 41EE FF00 4870 3000 2F2E 0008 4EB9"            /* 0.AÓˇ.Hp0./...Nπ */
	$"0000 2582 504F 261F 4E5E 4E75 9347 6574"            /* ..%ÇPO&.N^NuìGet */
	$"4944 4672 6F6D 4D65 6E75 5F5F 4650 5563"            /* IDFromMenu__FPUc */
	$"0000 4E56 FE00 2F03 594F 3F3C 0083 A9BF"            /* ..NV˛./.YO?<.É©ø */
	$"205F 2F08 302E 0008 0640 FF7D 3F00 486E"            /*  _/.0....@ˇ}?.Hn */
	$"FE00 A946 594F 3F2E 0008 A9BF 205F 2F08"            /* ˛.©FYO?...©ø _/. */
	$"3F2E 000A 486E FF00 A946 7600 162E FF00"            /* ?...Hnˇ.©Fv...ˇ. */
	$"6002 5343 4A43 6F10 41EE FF00 7000 1030"            /* `.SCJCo.AÓˇ.p..0 */
	$"3000 0C40 0020 66EA 3003 5340 1D40 FF00"            /* 0..@. fÍ0.S@.@ˇ. */
	$"486D FF86 486E FE00 4EB9 0000 25C0 486E"            /* HmˇÜHn˛.Nπ..%¿Hn */
	$"FF00 486E FE00 4EB9 0000 25C0 486E FE00"            /* ˇ.Hn˛.Nπ..%¿Hn˛. */
	$"2F2E 000C 4EB9 0000 2582 4FEF 0018 261F"            /* /...Nπ..%ÇOÔ..&. */
	$"4E5E 4E75 9747 6574 4E61 6D65 4672 6F6D"            /* N^NuóGetNameFrom */
	$"4D65 6E75 5F5F 4669 6950 5563 0000 4E56"            /* Menu__FiiPUc..NV */
	$"FFFC 48E7 1830 266E 0010 246E 000C 7800"            /* ˇ¸HÁ.0&n..$n..x. */
	$"3012 5740 6766 5540 6762 5340 6720 0440"            /* 0.W@gfU@gbS@g .@ */
	$"0009 6704 6000 00E2 486E FFFC A874 2F0B"            /* ..g.`..‚Hnˇ¸®t/. */
	$"A873 486B 0010 A928 2F2E FFFC A873 B7EA"            /* ®sHk..©(/.ˇ¸®s∑Í */
	$"0002 670C 2F0A 4EBA F0F0 584F 6000 00E2"            /* ..g./.N∫XO`..‚ */
	$"4EB9 0000 2E22 4A00 6604 2F0B A922 2F0B"            /* Nπ..."J.f./.©"/. */
	$"4EB9 0000 1BAA 4EB9 0000 2E22 4A00 584F"            /* Nπ...™Nπ..."J.XO */
	$"6600 00BE 2F0B A923 6000 00B6 262A 0002"            /* f..æ/.©#`..∂&*.. */
	$"0283 0000 00FF 0C03 000D 6758 0C03 0003"            /* .É...ˇ....gX.... */
	$"6752 0C03 0009 674C 0C03 0008 6746 0C03"            /* gR....gL....gF.. */
	$"001B 6740 0C03 007F 673A 0C03 001D 6734"            /* ..g@....g:....g4 */
	$"0C03 001C 672E 0C03 001E 6728 0C03 001F"            /* ....g.....g(.... */
	$"6722 0C03 002D 671C 0C03 0030 6D06 0C03"            /* g"...-g....0m... */
	$"0039 6F10 0C03 002E 6624 302A 000E 0240"            /* .9o.....f$0*...@ */
	$"0100 671A 554F 2F0B 2F0A 2F2E 0008 4EB9"            /* ..g.UO/././...Nπ */
	$"0000 0028 101F 56C0 4400 1800 6032 3F3C"            /* ...(..V¿D...`2?< */
	$"0006 A9C8 7801 6028 486E FFFC A874 2F0B"            /* ..©»x.`(Hnˇ¸®t/. */
	$"A873 554F 2F0B 2F0A 2F2E 0008 4EB9 0000"            /* ®sUO/././...Nπ.. */
	$"0028 101F 56C0 4400 1800 2F2E FFFC A873"            /* .(..V¿D.../.ˇ¸®s */
	$"1F44 0028 4CDF 0C18 4E5E 205F 4FEF 000C"            /* .D.(Lﬂ..N^ _OÔ.. */
	$"4ED0 9453 5441 4E44 4152 4444 4941 4C4F"            /* N–îSTANDARDDIALO */
	$"4746 494C 5445 5200 0000 4E56 FEAC 48E7"            /* GFILTER...NV˛¨HÁ */
	$"1C38 266E 0008 2F0B 3F3C 0004 486E FFEA"            /* .8&n../.?<..HnˇÍ */
	$"486E FFFC 486E FEE2 A98D 206E FFFC 2050"            /* Hnˇ¸Hn˛‚©ç nˇ¸ P */
	$"2068 001C 2050 3268 0004 2609 554F 2F2E"            /*  h.. P2h..&.UO/. */
	$"FFFC A960 301F 48C0 2800 0C83 0000 00A5"            /* ˇ¸©`0.H¿(..É...• */
	$"663C 554F 594F 2F3C 4D45 4E55 3F03 A81F"            /* f<UOYO/<MENU?.®. */
	$"205F 2F08 A950 301F 48C0 B880 6620 2F0B"            /*  _/.©P0.H¿∏Äf /. */
	$"3F3C 0005 486E FFEA 486E FFFC 486E FEE2"            /* ?<..HnˇÍHnˇ¸Hn˛‚ */
	$"A98D 2F2E FFFC 486E FEEA A990 6046 594F"            /* ©ç/.ˇ¸Hn˛Í©ê`FYO */
	$"3F03 A9BF 205F 2F08 3F04 486E FEEA A946"            /* ?.©ø _/.?.Hn˛Í©F */
	$"486E FEEA 4EBA FCD0 2F0B 3F3C 0005 486E"            /* Hn˛ÍN∫¸–/.?<..Hn */
	$"FFEA 486E FFFC 486E FEE2 A98D 2F2E FFFC"            /* ˇÍHnˇ¸Hn˛‚©ç/.ˇ¸ */
	$"486E FEEA A98F 2F0B 4878 0005 3F3C 7FFF"            /* Hn˛Í©è/.Hx..?<.ˇ */
	$"A97E 584F 486E FEEA 486E FED6 4EB9 0000"            /* ©~XOHn˛ÍHn˛÷Nπ.. */
	$"0048 486E FED2 486E FECE 203C 0008 0005"            /* .HHn˛“Hn˛Œ <.... */
	$"AB1D 2F0B A873 486E FEC8 AA19 486E FEC2"            /* ´./.®sHn˛»™.Hn˛¬ */
	$"AA1A 486E FEB0 A898 4878 0021 A862 4878"            /* ™.Hn˛∞®òHx.!®bHx */
	$"001E A863 2F0B 3F3C 0008 486E FFEA 486E"            /* ..®c/.?<..HnˇÍHn */
	$"FFFC 486E FFEC A98D 2F2E FFF0 2F2E FFEC"            /* ˇ¸HnˇÏ©ç/.ˇ/.ˇÏ */
	$"4EBA F478 486E FFEC A8A3 2F0B 3F3C 0007"            /* N∫ÙxHnˇÏ®£/.?<.. */
	$"486E FFEA 486E FFFC 486E FEDA A98D 2F2E"            /* HnˇÍHnˇ¸Hn˛⁄©ç/. */
	$"FEDE 2F2E FEDA 4EBA F452 486E FEDA A8A3"            /* ˛ﬁ/.˛⁄N∫ÙRHn˛⁄®£ */
	$"486E FEB0 A899 486E FEC8 AA14 486E FEC2"            /* Hn˛∞®ôHn˛»™.Hn˛¬ */
	$"AA15 7000 A122 2848 2F0B 3F3C 0001 486E"            /* ™.p.°"(H/.?<..Hn */
	$"FFEA 486E FFFC 486E FEE2 A98D 2F0C 2F3C"            /* ˇÍHnˇ¸Hn˛‚©ç/./< */
	$"5049 4354 486E FEAC A9FD 201F 4FEF 000C"            /* PICTHn˛¨©˝ .OÔ.. */
	$"6D4C 2054 2D68 0002 FFF4 2D68 0006 FFF8"            /* mL T-h..ˇÙ-h..ˇ¯ */
	$"486E FFF4 302E FFF6 4440 3F00 302E FFF4"            /* HnˇÙ0.ˇˆD@?.0.ˇÙ */
	$"4440 3F00 A8A8 486E FFF4 2F2E FEDE 2F2E"            /* D@?.®®HnˇÙ/.˛ﬁ/. */
	$"FEDA 4EB9 0000 271E 2F0C 486E FFF4 A8F6"            /* ˛⁄Nπ..'./.HnˇÙ®ˆ */
	$"2F2E FFFC 4267 A95D 4FEF 000C 600A 2F2E"            /* /.ˇ¸Bg©]OÔ..`./. */
	$"FFFC 3F3C 00FF A95D 554F 486D FBFE 1F3C"            /* ˇ¸?<.ˇ©]UOHm˚˛.< */
	$"0003 700D AA52 301F 3A00 3F05 A998 594F"            /* ..p.™R0.:.?.©òYO */
	$"2F3C 6369 636E 3F2E FED8 A81F 205F 2448"            /* /<cicn?.˛ÿ®. _$H */
	$"200A 6710 2F0A A9A3 594F 3F2E FED8 AA1E"            /*  .g./.©£YO?.˛ÿ™. */
	$"205F 2448 200A 6748 2052 2D68 0006 FFF4"            /*  _$H .gH R-h..ˇÙ */
	$"2D68 000A FFF8 486E FFF4 302E FFF6 4440"            /* -h..ˇ¯HnˇÙ0.ˇˆD@ */
	$"3F00 302E FFF4 4440 3F00 A8A8 486E FFF4"            /* ?.0.ˇÙD@?.®®HnˇÙ */
	$"2F2E FFF0 2F2E FFEC 4EB9 0000 271E 486E"            /* /.ˇ/.ˇÏNπ..'.Hn */
	$"FFF4 2F0A AA1F 2F0A AA25 4FEF 000C 6040"            /* ˇÙ/.™./.™%OÔ..`@ */
	$"554F 486D FF8A A88C 301F 322E FFF2 926E"            /* UOHmˇä®å0.2.ˇÚín */
	$"FFEE 9240 3001 E048 EE48 D041 E240 D06E"            /* ˇÓí@0.‡HÓH–A‚@–n */
	$"FFEE 3F00 302E FFF0 E048 EE48 D06E FFF0"            /* ˇÓ?.0.ˇ‡HÓH–nˇ */
	$"E240 0640 0010 3F00 A893 486D FF9A A884"            /* ‚@.@..?.®ìHmˇö®Ñ */
	$"3F05 A99A 3F2D FC44 A998 2F2E FED2 2F2E"            /* ?.©ö?-¸D©ò/.˛“/. */
	$"FECE 203C 0008 0006 AB1D 4CDF 1C38 4E5E"            /* ˛Œ <....´.Lﬂ.8N^ */
	$"4E75 9D52 6564 7261 7745 6469 7444 6961"            /* NuùRedrawEditDia */
	$"6C6F 675F 5F46 5038 4772 6166 506F 7274"            /* log__FP8GrafPort */
	$"0000 4E56 FEF2 48E7 1F38 7800 7A00 7600"            /* ..NV˛ÚHÁ.8x.z.v. */
	$"7000 A122 2C08 594F 2F06 2F3C 5049 4354"            /* p.°",.YO/./<PICT */
	$"486E FEF2 A9FD 201F 554F 2F06 486E FF0A"            /* Hn˛Ú©˝ .UO/.Hnˇ. */
	$"2F3C 0100 0001 4878 0001 303C 0800 A831"            /* /<....Hx..0<..®1 */
	$"301F 266E FF14 2D6E FF22 FFF8 2D6E FF26"            /* 0.&nˇ.-nˇ"ˇ¯-nˇ& */
	$"FFFC 6036 3043 2008 E788 2053 4A70 080A"            /* ˇ¸`60C .Áà SJp.. */
	$"6626 3043 2008 E788 2053 4A70 080C 6618"            /* f&0C .Áà SJp..f. */
	$"3043 2008 E788 2053 4A70 080E 660A 4A04"            /* 0C .Áà SJp..f.J. */
	$"6704 7A01 6002 7801 5243 4A05 6608 2053"            /* g.z.`.x.RCJ.f. S */
	$"B668 0006 6DBE 3003 5540 2053 3140 0006"            /* ∂h..mæ0.U@ S1@.. */
	$"2F0B 203C 0004 0007 AB1D 3003 5340 3F00"            /* /. <....´.0.S@?. */
	$"4EB9 0000 2BFE 3D40 FF00 2046 A029 204B"            /* Nπ..+˛=@ˇ. F†) K */
	$"A029 4A86 544F 6704 200B 6616 486D FFAA"            /* †)JÜTOg. .f.Hmˇ™ */
	$"486D FFA9 4EB9 0000 24B6 4EB9 0000 248C"            /* Hmˇ©Nπ..$∂Nπ..$å */
	$"504F 554F 486E FF7A 3F2E FF00 486E FFF8"            /* POUOHnˇz?.ˇ.Hnˇ¯ */
	$"2F0B 42A7 42A7 203C 0016 0000 AB1D 301F"            /* /.BßBß <....´.0. */
	$"2F2E FF7A 42A7 203C 0008 0006 AB1D 486E"            /* /.ˇzBß <....´.Hn */
	$"FEF6 AA1A 4878 001E A863 206D FBEE 4868"            /* ˛ˆ™.Hx..®c m˚ÓHh */
	$"0010 A8A3 594F 2F2E FF7A 203C 0004 0017"            /* ..®£YO/.ˇz <.... */
	$"AB1D 205F 2848 554F 2F0C 203C 0004 0001"            /* ´. _(HUO/. <.... */
	$"AB1D 101F 2F06 486E FFF8 A8F6 302E FFFE"            /* ´.../.Hnˇ¯®ˆ0.ˇ˛ */
	$"906E FFFA 3D40 FEFC 302E FEFC C1EE FF00"            /* ênˇ˙=@˛¸0.˛¸¡Óˇ. */
	$"0640 001F 0240 FFE1 E640 3D40 FEFE 3F2E"            /* .@...@ˇ·Ê@=@˛˛?. */
	$"FEFE 2F0C 4EB9 0000 2C44 486E FF72 3F3C"            /* ˛˛/.Nπ..,DHnˇr?< */
	$"0001 486E FFF8 42A7 42A7 42A7 203C 0016"            /* ..Hnˇ¯BßBßBß <.. */
	$"0000 AB1D 301F 2F2E FF72 42A7 203C 0008"            /* ..´.0./.ˇrBß <.. */
	$"0006 AB1D 206D FBEE 4868 0010 A8A3 2F2E"            /* ..´. m˚ÓHh..®£/. */
	$"FF72 203C 0004 0017 AB1D 205F 2D48 FFF0"            /* ˇr <....´. _-Hˇ */
	$"554F 2F2E FFF0 203C 0004 0001 AB1D 101F"            /* UO/.ˇ <....´... */
	$"2F2E FFFC 2F2E FFF8 2F2E FFF0 2F0C 4EB9"            /* /.ˇ¸/.ˇ¯/.ˇ/.Nπ */
	$"0000 2F10 701F D06E FEFC 0240 FFE1 E640"            /* ../.p.–n˛¸.@ˇ·Ê@ */
	$"3D40 FFEE 3F2E FFEE 2F2E FFF0 4EB9 0000"            /* =@ˇÓ?.ˇÓ/.ˇNπ.. */
	$"2C44 486E FF76 3F3C 0001 486E FFF8 42A7"            /* ,DHnˇv?<..Hnˇ¯Bß */
	$"42A7 42A7 203C 0016 0000 AB1D 301F 2F2E"            /* BßBß <....´.0./. */
	$"FF76 42A7 203C 0008 0006 AB1D 206D FBEE"            /* ˇvBß <....´. m˚Ó */
	$"4868 0010 A8A3 2F06 486E FFF8 A8F6 2F2E"            /* Hh..®£/.Hnˇ¯®ˆ/. */
	$"FF76 203C 0004 0017 AB1D 205F 2D48 FFEA"            /* ˇv <....´. _-HˇÍ */
	$"2F2E FFEA 203C 0004 0001 AB1D 101F 2F2D"            /* /.ˇÍ <....´.../- */
	$"FBF4 2F2D FBF8 203C 0008 0006 AB1D 3F2E"            /* ˚Ù/-˚¯ <....´.?. */
	$"FFEE 2F2E FFEA 4EB9 0000 2C44 2054 2254"            /* ˇÓ/.ˇÍNπ..,D T"T */
	$"3029 000A 9068 0006 C1EE FEFE 48C0 2D40"            /* 0)..êh..¡Ó˛˛H¿-@ */
	$"FF06 2F0C 486E FF82 2F3C 0100 0001 4878"            /* ˇ./.HnˇÇ/<....Hx */
	$"0001 303C 0801 A831 301F 7054 A322 2448"            /* ..0<..®10.pT£"$H */
	$"2052 42A8 0040 2052 316E FFEE 0044 2052"            /*  RB®.@ R1nˇÓ.D R */
	$"216E FFF8 0046 216E FFFC 004A 2052 2252"            /* !nˇ¯.F!nˇ¸.J R"R */
	$"3029 004A 9068 0046 C1EE FFEE 48C0 2D40"            /* 0).Jêh.F¡ÓˇÓH¿-@ */
	$"FFF4 2052 42A8 0032 2052 316E FFEE 0036"            /* ˇÙ RB®.2 R1nˇÓ.6 */
	$"2052 216E FFF8 0038 216E FFFC 003C 2052"            /*  R!nˇ¯.8!nˇ¸.< R */
	$"4290 2054 2252 3368 0004 0004 2054 2252"            /* Bê T"R3h.... T"R */
	$"2368 0006 0006 2368 000A 000A 2052 4268"            /* #h....#h.... RBh */
	$"000E 2052 4268 0010 2052 42A8 0012 2052"            /* .. RBh.. RB®.. R */
	$"216E FF90 0016 2052 216E FF94 001A 2052"            /* !nˇê.. R!nˇî.. R */
	$"316E FF98 0020 2052 42A8 0026 2052 42A8"            /* 1nˇò.  RB®.& RB® */
	$"002E 2052 4268 001E 2052 317C 0001 0022"            /* .. RBh.. R1|..." */
	$"2052 316E FF98 0024 2052 214B 002A 2052"            /*  R1nˇò.$ R!K.* R */
	$"214C 004E 2052 2068 002A 2050 3268 0006"            /* !L.N R h.* P2h.. */
	$"2009 E788 7210 D081 2D40 FF7E 202E FFF4"            /*  .Áàr.–Å-@ˇ~ .ˇÙ */
	$"D080 7252 D081 D0AE FF7E D0AE FF06 204A"            /* –ÄrR–Å–Æˇ~–Æˇ. J */
	$"A024 206E FFF0 2050 2050 2252 43E9 0052"            /* †$ nˇ P P"RCÈ.R */
	$"202E FFF4 A02E 202E FFF4 E088 E088 E088"            /*  .ˇÙ†. .ˇÙ‡à‡à‡à */
	$"EE88 D0AE FFF4 E280 D080 2052 43F0 0852"            /* Óà–ÆˇÙ‚Ä–Ä RC.R */
	$"206E FFEA 2050 2050 202E FFF4 A02E 202E"            /*  nˇÍ P P .ˇÙ†. . */
	$"FFF4 D080 2052 43F0 0852 2053 202E FF7E"            /* ˇÙ–Ä RC.R S .ˇ~ */
	$"A02E 202E FF7E E088 E088 E088 EE88 D0AE"            /* †. .ˇ~‡à‡à‡àÓà–Æ */
	$"FF7E E280 D0AE FFF4 D080 2052 43F0 0852"            /* ˇ~‚Ä–ÆˇÙ–Ä RC.R */
	$"2054 2050 202E FF06 A02E 486D FBFE 1F3C"            /*  T P .ˇ.†.Hm˚˛.< */
	$"0003 700D AA52 301F 3E00 3F07 A998 2F3C"            /* ..p.™R0.>.?.©ò/< */
	$"6369 636E 3F2E 0008 A81F 205F 2D48 FF02"            /* cicn?...®. _-Hˇ. */
	$"4AAE FF02 4FEF 000C 672A 2F2E FF02 A9AD"            /* JÆˇ.OÔ..g*..ˇ.©≠ */
	$"3F07 A999 3F07 A99A 3F2D FC44 A998 554F"            /* ?.©ô?.©ö?-¸D©òUO */
	$"486D FBFE 1F3C 0003 700D AA52 301F 3E00"            /* Hm˚˛.<..p.™R0.>. */
	$"3F07 A998 2F0A A992 2F0A 2F3C 6369 636E"            /* ?.©ò/.©í/./<cicn */
	$"3F2E 0008 2F2E 000A A9AB 2F0A 3F3C 0060"            /* ?.../...©´/.?<.` */
	$"A9A7 2F0A A9AA 2F0A A9B0 3F07 A999 3F07"            /* ©ß/.©™/.©∞?.©ô?. */
	$"A99A 3F2D FC44 A998 2F0C 203C 0004 0002"            /* ©ö?-¸D©ò/. <.... */
	$"AB1D 2F2E FFEA 203C 0004 0002 AB1D 2F2E"            /* ´./.ˇÍ <....´./. */
	$"FFF0 203C 0004 0002 AB1D 2F2E FF7A 203C"            /* ˇ <....´./.ˇz < */
	$"0004 0004 AB1D 2F2E FF76 203C 0004 0004"            /* ....´./.ˇv <.... */
	$"AB1D 2F2E FF72 203C 0004 0004 AB1D 204B"            /* ´./.ˇr <....´. K */
	$"A02A 204B A023 2046 A02A 2046 A023 204A"            /* †* K†# F†* F†# J */
	$"A023 486E FEF6 AA15 4CDF 1CF8 4E5E 4E75"            /* †#Hn˛ˆ™.Lﬂ.¯N^Nu */
	$"9063 6C69 7032 6369 636E 5F5F 4673 5055"            /* êclip2cicn__FsPU */
	$"6300 0000 4E56 0000 3F3C 0006 A9C8 4E5E"            /* c...NV..?<..©»N^ */
	$"4E75 9448 616E 646C 6545 6469 7443 686F"            /* NuîHandleEditCho */
	$"6963 655F 5F46 6900 0000 4E56 0000 206E"            /* ice__Fi...NV.. n */
	$"0008 226E 000C 7200 6002 5241 4A30 1000"            /* .."n..r.`.RAJ0.. */
	$"6706 0C41 00FF 6DF2 3401 600C 3001 5340"            /* g..A.ˇmÚ4.`.0.S@ */
	$"13B0 0000 1000 5341 4A41 6EF0 1282 2049"            /* .∞....SAJAn.Ç I */
	$"4E5E 4E75 8D43 3250 6173 5F5F 4650 6350"            /* N^NuçC2Pas__FPcP */
	$"5563 0000 4E56 0000 486D FBEE A86E A8FE"            /* Uc..NV..Hm˚Ó®n®˛ */
	$"2F3C 0000 FFFF 201F A032 A912 A930 A9CC"            /* /<..ˇˇ .†2©.©0©Ã */
	$"42A7 A97B A850 4878 0021 A862 4878 001E"            /* Bß©{®PHx.!®bHx.. */
	$"A863 A063 A036 A036 A036 A036 A036 41ED"            /* ®c†c†6†6†6†6†6AÌ */
	$"FB70 20B8 020C 4E5E 4E75 8F49 6E69 7454"            /* ˚p ∏..N^NuèInitT */
	$"6F6F 6C62 6F78 5F5F 4676 0000 4E56 0000"            /* oolbox__Fv..NV.. */
	$"2F3C 0000 FFFF 201F A032 A9F4 4E5E 4E75"            /* /<..ˇˇ .†2©ÙN^Nu */
	$"9345 7869 7441 7070 6C69 6361 7469 6F6E"            /* ìExitApplication */
	$"5F5F 4676 0000 4E56 FDF8 486E FDFC 486E"            /* __Fv..NV˝¯Hn˝¸Hn */
	$"FDF8 203C 0008 0005 AB1D 486E FF00 2F2E"            /* ˝¯ <....´.Hnˇ./. */
	$"0008 4EBA FF16 486E FE00 2F2E 000C 4EBA"            /* ..N∫ˇ.Hn˛./...N∫ */
	$"FF0A 486E FF00 486E FE00 42A7 42A7 A98B"            /* ˇ.Hnˇ.Hn˛.BßBß©ã */
	$"3F3C 0BB8 42A7 A987 301F 2F2E FDFC 2F2E"            /* ?<.∏Bß©á0./.˝¸/. */
	$"FDF8 203C 0008 0006 AB1D 4E5E 4E75 9544"            /* ˝¯ <....´.N^NuïD */
	$"6973 706C 6179 416C 6572 745F 5F46 5043"            /* isplayAlert__FPC */
	$"6350 4363 0000 4E56 FFF8 486E FFFC 486E"            /* cPCc..NVˇ¯Hnˇ¸Hn */
	$"FFF8 203C 0008 0005 AB1D 2F2E 0008 2F2E"            /* ˇ¯ <....´./.../. */
	$"000C 42A7 42A7 A98B 554F 3F3C 0BB8 42A7"            /* ..BßBß©ãUO?<.∏Bß */
	$"A987 301F 2F2E FFFC 2F2E FFF8 203C 0008"            /* ©á0./.ˇ¸/.ˇ¯ <.. */
	$"0006 AB1D 4E5E 4E75 9644 6973 706C 6179"            /* ..´.N^NuñDisplay */
	$"5041 6C65 7274 5F5F 4650 5563 5055 6300"            /* PAlert__FPUcPUc. */
	$"0000 4E56 0000 226E 0008 206E 000C 7000"            /* ..NV.."n.. n..p. */
	$"7400 1410 3202 6008 13B0 0000 0000 5240"            /* t...2.`..∞....R@ */
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
	$"48E7 0038 266E 0008 2D6D FFCE FFF8 2D6D"            /* HÁ.8&n..-mˇŒˇ¯-m */
	$"FFD2 FFFC 0C93 6673 7320 6606 246B 0004"            /* ˇ“ˇ¸.ìfss f.$k.. */
	$"603A 554F 2F0B 2F3C 6673 7320 486E FFF8"            /* `:UO/./<fss Hnˇ¯ */
	$"303C 0603 A816 301F 6606 246E FFFC 601C"            /* 0<..®.0.f.$nˇ¸`. */
	$"3D7C D8EF FFF6 49EE FFF6 42A7 2F0C 486D"            /* =|ÿÔˇˆIÓˇˆBß/.Hm */
	$"FFD6 4EB9 0000 0058 4FEF 000C 2052 226E"            /* ˇ÷Nπ...XOÔ.. R"n */
	$"000C 7010 22D8 51C8 FFFC 32D8 4AAE FFFC"            /* ..p."ÿQ»ˇ¸2ÿJÆˇ¸ */
	$"670E 554F 486E FFF8 303C 0204 A816 301F"            /* g.UOHnˇ¯0<..®.0. */
	$"4CDF 1C00 4E5E 4E75 8026 4765 7446 5353"            /* Lﬂ..N^NuÄ&GetFSS */
	$"7065 6346 726F 6D41 4544 6573 635F 5F46"            /* pecFromAEDesc__F */
	$"5236 4145 4465 7363 5236 4653 5370 6563"            /* R6AEDescR6FSSpec */
	$"0000 4E56 FFF4 2F0A 2F03 246E 0008 594F"            /* ..NVˇÙ/./.$n..YO */
	$"486E FFFC 2F3C 3F3F 3F3F 4EB9 0000 30D6"            /* Hnˇ¸/<????Nπ..0÷ */
	$"201F 2600 665E 594F 2F2E FFFC 4267 42A7"            /*  .&.f^YO/.ˇ¸BgBß */
	$"2F3C 0006 0002 7000 A82A 201F 2600 6636"            /* /<....p.®* .&.f6 */
	$"42AE FFF8 7000 1012 2D40 FFF4 594F 2F2E"            /* BÆˇ¯p...-@ˇÙYO/. */
	$"FFFC 486D FFF3 486A 0001 7000 1012 2F00"            /* ˇ¸HmˇÛHj..p.../. */
	$"486E FFF8 486E FFF4 2F3C 0014 0011 7000"            /* Hnˇ¯HnˇÙ/<....p. */
	$"A82A 201F 2600 594F 2F2E FFFC 4EB9 0000"            /* ®* .&.YO/.ˇ¸Nπ.. */
	$"30FE 201F 2003 261F 245F 4E5E 4E75 904C"            /* 0˛ . .&.$_N^NuêL */
	$"6175 6E63 6855 524C 5F5F 4650 4355 6300"            /* aunchURL__FPCUc. */
	$"0000 4E56 FFF0 554F 486E FFF8 3F3C 0037"            /* ..NVˇUOHnˇ¯?<.7 */
	$"A88F 301F 554F 486E FFF0 70FF 2F00 3F3C"            /* ®è0.UOHnˇpˇ/.?< */
	$"0039 A88F 301F 202E FFFC B0AE FFF4 660E"            /* .9®è0. .ˇ¸∞ÆˇÙf. */
	$"202E FFF8 B0AE FFF0 6604 7001 6002 7000"            /*  .ˇ¯∞Æˇf.p.`.p. */
	$"4E5E 4E75 9249 7346 726F 6E74 5072 6F63"            /* N^NuíIsFrontProc */
	$"6573 735F 5F46 7600 0000 4E56 FFF2 2F0B"            /* ess__Fv...NVˇÚ/. */
	$"2F0A 246E 000C 266E 0008 486E FFF2 486E"            /* /.$n..&n..HnˇÚHn */
	$"FFF6 203C 0008 0005 AB1D 206E FFF6 2050"            /* ˇˆ <....´. nˇˆ P */
	$"2068 001A 3D50 FFFA 206E FFF6 2050 2068"            /*  h..=Pˇ˙ nˇˆ P h */
	$"001A 3D68 0002 FFFC 206E FFF6 2050 2068"            /* ..=h..ˇ¸ nˇˆ P h */
	$"001A 3D68 0004 FFFE 3012 B06E FFFA 6614"            /* ..=h..ˇ˛0.∞nˇ˙f. */
	$"302A 0002 B06E FFFC 660A 302A 0004 B06E"            /* 0*..∞nˇ¸f.0*..∞n */
	$"FFFE 6706 36BC 0001 6002 4253 1F7C 0001"            /* ˇ˛g.6º..`.BS.|.. */
	$"0026 245F 265F 4E5E 205F 504F 4ED0 8F4D"            /* .&$_&_N^ _PON–èM */
	$"4153 4B43 4F4C 4F52 5345 4152 4348 0000"            /* ASKCOLORSEARCH.. */
	$"4E56 FFD4 48E7 1838 282E 0008 266E 000C"            /* NVˇ‘HÁ.8(...&n.. */
	$"2D6D FFF4 FFF2 3D6D FFF8 FFF6 7600 486E"            /* -mˇÙˇÚ=mˇ¯ˇˆv.Hn */
	$"FFEC AA19 486E FFE6 AA1A 486E FFD4 A898"            /* ˇÏ™.HnˇÊ™.Hnˇ‘®ò */
	$"4878 0021 A862 4878 001E A863 4A84 6704"            /* Hx.!®bHx..®cJÑg. */
	$"200B 6604 70CE 607C 2D6E 0010 FFF8 2D6E"            /*  .f.pŒ`|-n..ˇ¯-n */
	$"0014 FFFC 486E FFF8 302E FFFA 4440 3F00"            /* ..ˇ¸Hnˇ¯0.ˇ˙D@?. */
	$"302E FFF8 4440 3F00 A8A8 486E FFF8 4EBA"            /* 0.ˇ¯D@?.®®Hnˇ¯N∫ */
	$"F696 2448 49FA FEF4 2044 2F10 486A 0002"            /* ˆñ$HI˙˛Ù D/.Hj.. */
	$"486E 0010 486E FFF8 486E FFF2 2F0C 42A7"            /* Hn..Hnˇ¯HnˇÚ/.Bß */
	$"AA4F 486A 0002 2F13 486E FFF8 2053 4868"            /* ™OHj../.Hnˇ¯ SHh */
	$"0006 4267 42A7 A8EC 486E FFD4 A899 486E"            /* ..BgBß®ÏHnˇ‘®ôHn */
	$"FFEC AA14 486E FFE6 AA15 2F0A 4EBA F712"            /* ˇÏ™.HnˇÊ™./.N∫˜. */
	$"2003 504F 4CDF 1C18 4E5E 4E75 8026 4D61"            /*  .POLﬂ..N^NuÄ&Ma */
	$"6B65 3142 6974 4D61 736B 5F5F 4650 5036"            /* ke1BitMask__FPP6 */
	$"5069 784D 6170 5050 3650 6978 4D61 7034"            /* PixMapPP6PixMap4 */
	$"5265 6374 0000 4E56 FFF4 48E7 0308 286E"            /* Rect..NVˇÙHÁ..(n */
	$"000C 7000 2880 4267 2F3C 6370 6E74 486E"            /* ..p.(ÄBg/<cpntHn */
	$"FFF4 4EAD 0030 4A5F 6614 42A7 2F3C 5052"            /* ˇÙN≠.0J_f.Bß/<PR */
	$"4546 2F3C 4943 4170 7021 A82A 289F 4A94"            /* EF/<ICApp!®*(üJî */
	$"6608 2E3C 8000 8001 6028 42A7 2F14 2F2E"            /* f..<Ä.Ä.`(Bß/./. */
	$"0008 2F3C 0004 0000 7000 A82A 2E1F 6712"            /* ../<....p.®*..g. */
	$"4267 2F14 7008 A82A 301F 48C0 2C00 7000"            /* Bg/.p.®*0.H¿,.p. */
	$"2880 2D47 0010 4CDF 10C0 4E5E 205F 504F"            /* (Ä-G..Lﬂ.¿N^ _PO */
	$"4ED0 8849 4343 5354 4152 5400 0000 4E56"            /* N–àICCSTART...NV */
	$"FFF8 48E7 0300 42A7 2F2E 0008 2F3C 0000"            /* ˇ¯HÁ..Bß/.../<.. */
	$"0001 7000 A82A 2E1F 4267 2F2E 0008 7008"            /* ..p.®*..Bg/...p. */
	$"A82A 301F 48C0 2C00 4A87 6602 2E06 2D47"            /* ®*0.H¿,.Jáf...-G */
	$"000C 4CDF 00C0 4E5E 2E9F 4E75 8749 4343"            /* ..Lﬂ.¿N^.üNuáICC */
	$"5354 4F50 0000 4E56 0000 42A7 2F2E 000C"            /* STOP..NV..Bß/... */
	$"2F2E 0008 4EBA FF20 2D5F 0010 4E5E 205F"            /* /...N∫ˇ -_..N^ _ */
	$"504F 4ED0 8749 4353 5441 5254 0000 4E56"            /* PON–áICSTART..NV */
	$"0000 42A7 2F2E 0008 4EBA FF84 2D5F 000C"            /* ..Bß/...N∫ˇÑ-_.. */
	$"4E5E 2E9F 4E75 8649 4353 544F 5000 0000"            /* N^.üNuÜICSTOP... */
	$"4E56 FF00 48E7 1838 266E 0008 286E 000C"            /* NVˇ.HÁ.8&n..(n.. */
	$"262E 0010 7094 3800 7000 244B 2540 0008"            /* &...pî8.p.$K%@.. */
	$"7000 2540 0004 2483 486E FF00 2F0B 4EBA"            /* p.%@..$ÉHnˇ./.N∫ */
	$"025C 504F 204B 5048 2F08 204B 2F10 2F0C"            /* .\PO KPH/. K/./. */
	$"486E FF00 2F08 4EBA 0120 4FEF 0014 3800"            /* Hnˇ./.N∫. OÔ..8. */
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
	$"661E 7000 244B 2540 0004 486E FEF4 2F0A"            /* f.p.$K%@..Hn˛Ù/. */
	$"4EBA FF26 504F 3A00 4A40 6704 4EFA 00A6"            /* N∫ˇ&PO:.J@g.N˙.¶ */
	$"0CAE 6D36 386B FEF4 6608 1D7C 0010 FFFD"            /* .Æm68k˛Ùf..|..ˇ˝ */
	$"6016 0CAE 7077 7063 FEF4 6608 1D7C 0001"            /* `..Æpwpc˛Ùf..|.. */
	$"FFFD 6004 3A3C EA52 204B 4AA8 0004 662A"            /* ˇ˝`.:<ÍR KJ®..f* */
	$"554F 2F0C 2F2E FEF4 7001 2F00 204B 5848"            /* UO/./.˛Ùp./. KXH */
	$"2F08 486E FFF8 486E FEF8 3F3C 0001 AA5A"            /* /.Hnˇ¯Hn˛¯?<..™Z */
	$"301F 3A00 4A40 6702 604A 206E 0018 4A90"            /* 0.:.J@g.`J n..Jê */
	$"6640 554F 204B 2F28 0004 2F2E 0010 2F2E"            /* f@UO K/(../.../. */
	$"0018 486E FFFC 3F3C 0005 AA5A 301F 3A00"            /* ..Hnˇ¸?<..™Z0.:. */
	$"4A40 6708 7000 2D40 0018 6016 594F 246E"            /* J@g.p.-@..`.YO$n */
	$"0018 2F12 2F04 1F2E FFFD 7000 AA59 201F"            /* .././...ˇ˝p.™Y . */
	$"2480 3005 4CDF 1C38 4E5E 4E75 802B 436F"            /* $Ä0.Lﬂ.8N^NuÄ+Co */
	$"6E6E 6563 7454 6F4C 6962 7261 7279 5F5F"            /* nnectToLibrary__ */
	$"3132 5379 6D62 6F6C 4C6F 6F6B 7570 4450"            /* 12SymbolLookupDP */
	$"5563 5431 556C 5050 6300 0000 4E56 FFF8"            /* UcT1UlPPc...NVˇ¯ */
	$"48E7 0038 246E 0008 266E 000C 486E FFF8"            /* HÁ.8$n..&n..Hnˇ¯ */
	$"2F0A 4EBA FE24 504F 0CAE 6D36 386B FFF8"            /* /.N∫˛$PO.Æm68kˇ¯ */
	$"6614 41FA 0056 2848 224B 1210 7000 1001"            /* f.A˙.V(H"K..p... */
	$"5280 A22E 6014 41FA 0052 2D48 FFFC 224B"            /* RÄ¢.`.A˙.R-Hˇ¸"K */
	$"1210 7000 1001 5280 A22E 4CDF 1C00 4E5E"            /* ..p...RÄ¢.Lﬂ..N^ */
	$"4E75 8023 4765 7446 7261 676D 656E 744E"            /* NuÄ#GetFragmentN */
	$"616D 655F 5F31 3253 796D 626F 6C4C 6F6F"            /* ame__12SymbolLoo */
	$"6B75 7044 5055 6300 0020 0D4E 6176 6967"            /* kupDPUc.. .Navig */
	$"6174 696F 6E4C 6962 0000 0D4E 6176 6967"            /* ationLib...Navig */
	$"6174 696F 6E4C 6962 0000 4E56 FFF0 48E7"            /* ationLib..NVˇHÁ */
	$"1838 246E 0008 7094 3600 2F3C 0000 00E0"            /* .8$n..pî6./<...‡ */
	$"487A 0078 486E FFF0 4EBA FCB6 4FEF 000C"            /* Hz.xHnˇN∫¸∂OÔ.. */
	$"41EE FFF0 2648 2848 2028 0008 4480 9180"            /* AÓˇ&H(H (..DÄëÄ */
	$"4480 4A00 6716 41EE FFF0 2D48 FFFC 554F"            /* DÄJ.g.AÓˇ-Hˇ¸UO */
	$"2F0A 2068 0008 4E90 301F 3600 3003 3800"            /* /. h..Nê0.6.0.8. */
	$"486E FFF0 4EBA FCF2 584F 3004 3D40 000C"            /* HnˇN∫¸ÚXO0.=@.. */
	$"4CDF 1C18 4E5E 205F 584F 4ED0 9A4E 4156"            /* Lﬂ..N^ _XON–öNAV */
	$"4745 5444 4546 4155 4C54 4449 414C 4F47"            /* GETDEFAULTDIALOG */
	$"4F50 5449 4F4E 5300 001C 1A4E 6176 4765"            /* OPTIONS....NavGe */
	$"7444 6566 6175 6C74 4469 616C 6F67 4F70"            /* tDefaultDialogOp */
	$"7469 6F6E 7300 4E56 FFE8 48E7 1C38 262E"            /* tions.NVˇËHÁ.8&. */
	$"0008 246E 000C 266E 0010 286E 0014 7094"            /* ..$n..&n..(n..pî */
	$"3800 2F3C 003F FFE0 487A 0084 486E FFE8"            /* 8./<.?ˇ‡Hz.ÑHnˇË */
	$"4EBA FBFE 4FEF 000C 41EE FFE8 2D48 FFF4"            /* N∫˚˛OÔ..AÓˇË-HˇÙ */
	$"2D48 FFF8 2028 0008 4480 9180 4480 4A00"            /* -Hˇ¯ (..DÄëÄDÄJ. */
	$"672C 41EE FFE8 2D48 FFFC 554F 2F2E 0024"            /* g,AÓˇË-Hˇ¸UO/..$ */
	$"2F2E 0020 2F2E 001C 2F2E 0018 2F0C 2F0B"            /* /.. /.../..././. */
	$"2F0A 2F03 2068 0008 4E90 301F 3800 3004"            /* /./. h..Nê0.8.0. */
	$"3A00 486E FFE8 4EBA FC20 584F 3005 3D40"            /* :.HnˇËN∫¸ XO0.=@ */
	$"0028 4CDF 1C38 4E5E 205F 4FEF 0020 4ED0"            /* .(Lﬂ.8N^ _OÔ. N– */
	$"8A4E 4156 4745 5446 494C 4500 000C 0A4E"            /* äNAVGETFILE....N */
	$"6176 4765 7446 696C 6500 4E56 FFF0 48E7"            /* avGetFile.NVˇHÁ */
	$"1838 246E 0008 7094 3600 2F3C 0000 00E0"            /* .8$n..pî6./<...‡ */
	$"487A 006C 486E FFF0 4EBA FB56 4FEF 000C"            /* Hz.lHnˇN∫˚VOÔ.. */
	$"41EE FFF0 2648 2848 2028 0008 4480 9180"            /* AÓˇ&H(H (..DÄëÄ */
	$"4480 4A00 6716 41EE FFF0 2D48 FFFC 554F"            /* DÄJ.g.AÓˇ-Hˇ¸UO */
	$"2F0A 2068 0008 4E90 301F 3600 3003 3800"            /* /. h..Nê0.6.0.8. */
	$"486E FFF0 4EBA FB92 584F 3004 3D40 000C"            /* HnˇN∫˚íXO0.=@.. */
	$"4CDF 1C18 4E5E 205F 584F 4ED0 8F4E 4156"            /* Lﬂ..N^ _XON–èNAV */
	$"4449 5350 4F53 4552 4550 4C59 0012 0F4E"            /* DISPOSEREPLY...N */
	$"6176 4469 7370 6F73 6552 6570 6C79 0000"            /* avDisposeReply.. */
	$"4E56 FFEC 48E7 1038 7094 3600 422E FFEC"            /* NVˇÏHÁ.8pî6.B.ˇÏ */
	$"7010 2F00 487A 006E 486E FFF0 4EBA FAC2"            /* p./.Hz.nHnˇN∫˙¬ */
	$"4FEF 000C 41EE FFF0 2448 2648 2028 0008"            /* OÔ..AÓˇ$H&H (.. */
	$"4480 9180 4480 4A00 6714 41EE FFF0 2848"            /* DÄëÄDÄJ.g.AÓˇ(H */
	$"554F 2068 0008 4E90 101F 1D40 FFEC 102E"            /* UO h..Nê...@ˇÏ.. */
	$"FFEC 1D40 FFFC 486E FFF0 4EBA FAFC 584F"            /* ˇÏ.@ˇ¸HnˇN∫˙¸XO */
	$"102E FFFC 1D40 0008 4CDF 1C08 4E5E 4E75"            /* ..ˇ¸.@..Lﬂ..N^Nu */
	$"914E 4156 5345 5256 4943 4553 4341 4E52"            /* ëNAVSERVICESCANR */
	$"554E 0014 114E 6176 5365 7276 6963 6573"            /* UN...NavServices */
	$"4361 6E52 756E 0000 4E56 FFFC 48E7 1020"            /* CanRun..NVˇ¸HÁ.  */
	$"362E 0008 3003 48C0 0280 0000 0800 6704"            /* 6...0.H¿.Ä....g. */
	$"7001 6002 4200 1D40 FFFC 7201 B001 664C"            /* p.`.B..@ˇ¸r.∞.fL */
	$"3003 0240 07FF 3600 594F 3F3C A86E 7201"            /* 0..@.ˇ6.YO?<®nr. */
	$"1F01 4EAD 0038 205F 2448 594F 3F3C AA6E"            /* ..N≠.8 _$HYO?<™n */
	$"7001 1F00 4EAD 0038 225F 204A B1C9 6608"            /* p...N≠.8"_ J±…f. */
	$"203C 0000 0200 6006 203C 0000 0400 3203"            /*  <....`. <....2. */
	$"3401 48C2 B082 6E04 4200 602E 594F 3F03"            /* 4.H¬∞Çn.B.`.YO?. */
	$"1F2E FFFC 4EAD 0038 205F 2448 594F 3F3C"            /* ..ˇ¸N≠.8 _$HYO?< */
	$"A89F 7001 1F00 4EAD 0038 225F 204A B1C9"            /* ®üp...N≠.8"_ J±… */
	$"6604 7000 6002 7001 2000 4CDF 0408 4E5E"            /* f.p.`.p. .Lﬂ..N^ */
	$"4E75 8D54 7261 7041 7661 696C 6162 6C65"            /* NuçTrapAvailable */
	$"0000 4E56 FFFC 422E FFFC 3F3C AA5A 4EBA"            /* ..NVˇ¸B.ˇ¸?<™ZN∫ */
	$"FF38 544F 4A00 670C 554F 4EBA FE94 101F"            /* ˇ8TOJ.g.UON∫˛î.. */
	$"1D40 FFFC 102E FFFC 1D40 0008 4E5E 4E75"            /* .@ˇ¸..ˇ¸.@..N^Nu */
	$"944E 4156 5345 5256 4943 4553 4156 4149"            /* îNAVSERVICESAVAI */
	$"4C41 424C 4500 0000"                                /* LABLE... */
};

data 'CODE' (2, "Mac Libraries", purgeable, protected) {
	$"0028 0008 0000 0028 0000 1230 5D8F 486F"            /* .(.....(...0]èHo */
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
	$"A88F 201F 6000 FE3A 225F 121F 301F 4A01"            /* ®è .`.˛:"_..0.J. */
	$"6704 A746 6002 A346 2E88 4ED1 206F 000C"            /* g.ßF`.£F.àN— o.. */
	$"226F 0008 7000 1018 4840 1019 4A2F 0004"            /* "o..p...H@..J/.. */
	$"670E 4A2F 0006 6704 A43C 6010 A03C 600C"            /* g.J/..g.§<`.†<`. */
	$"4A2F 0006 6704 A63C 6002 A23C 0A00 0001"            /* J/..g.¶<`.¢<.... */
	$"1F40 0010 205F 4FEF 000C 4ED0 206F 0008"            /* .@.. _OÔ..N– o.. */
	$"3F3C 0001 A9EE 206F 0004 2080 4EFA 000E"            /* ?<..©Ó o.. ÄN˙.. */
	$"206F 0004 202F 0008 4267 A9EE 205F 504F"            /*  o.. /..Bg©Ó _PO */
	$"4ED0 2F04 226F 0008 7400 1419 2002 0280"            /* N–/."o..t... ..Ä */
	$"0000 0080 6730 7040 C082 671A 703F C480"            /* ...Äg0p@¿Çg.p?ƒÄ */
	$"7000 1019 2802 E18C 8880 7000 1019 2404"            /* p...(.·åàÄp...$. */
	$"E18A 8480 6004 703F C480 7000 1019 2202"            /* ·äÑÄ`.p?ƒÄp...". */
	$"E189 8280 2401 206F 000C 2082 2049 281F"            /* ·âÇÄ$. o.. Ç I(. */
	$"4E75 9745 7836 384B 5F47 6574 4F66 6673"            /* NuóEx68K_GetOffs */
	$"6574 5F5F 4650 6350 556C 0000 4E56 FFFC"            /* et__FPcPUl..NVˇ¸ */
	$"48E7 1F38 286E 0008 206E 000C 4290 42A8"            /* HÁ.8(n.. n..BêB® */
	$"000C 200C A055 2840 45F9 0000 00BE 6000"            /* .. .†U(@E˘...æ`. */
	$"0120 2652 200B 6700 0114 B9CB 6500 010E"            /* . &R .g...πÀe... */
	$"204B D1C3 B9C8 6200 0104 4AAA 000C 6F00"            /*  K—√π»b...J™..o. */
	$"0108 204C 91CB 2808 262A 000C E68B 200D"            /* .. LëÀ(.&*..Êã . */
	$"D0AA 0008 2640 7C00 2A03 5585 2003 5580"            /* –™..&@|.*.UÖ .UÄ */
	$"6534 2606 D685 E28B 2E03 2007 E788 B8B3"            /* e4&.÷Ö‚ã.. .Áà∏≥ */
	$"0800 651A 2003 E788 204B D1C0 2848 B8A8"            /* ..e. .Áà K—¿(H∏® */
	$"0008 6404 264C 6010 2C03 5286 6004 2A03"            /* ..d.&L`.,.RÜ`.*. */
	$"5385 BC85 63CC 97CB 200B 6706 4AAB 0004"            /* SÖºÖcÃóÀ .g.J´.. */
	$"6604 6000 00A4 2052 D1D3 226E 000C 2348"            /* f.`..§ R—”"n..#H */
	$"0008 9893 202B 0004 0280 8000 0000 6708"            /* ..òì +...ÄÄ...g. */
	$"204B 5888 2288 600C 200D D0AB 0004 206E"            /*  KXà"à`. .–´.. n */
	$"000C 2080 266E 000C 2653 548B 206E 000C"            /* .. Ä&n..&STã n.. */
	$"4868 0004 2F0B 4EB9 0000 02B2 2448 7A00"            /* Hh../.Nπ...≤$Hz. */
	$"7600 504F 486E FFFC 2F0A 4EB9 0000 02B2"            /* v.POHnˇ¸/.Nπ...≤ */
	$"2448 4AAE FFFC 504F 6716 DAAE FFFC BA84"            /* $HJÆˇ¸POg.⁄Æˇ¸∫Ñ */
	$"620E 7600 161A E14B 7000 101A 8640 60D4"            /* b.v...·Kp...Ü@`‘ */
	$"4A43 6716 7000 3003 D080 206E 000C 2050"            /* JCg.p.0.–Ä n.. P */
	$"D1C0 226E 000C 2348 000C 600C 7010 D5C0"            /* —¿"n..#H..`.p.’¿ */
	$"262A 0004 6600 FEDC 4CDF 1CF8 4E5E 4E75"            /* &*..f.˛‹Lﬂ.¯N^Nu */
	$"8030 4578 3638 4B5F 4669 6E64 4578 6365"            /* Ä0Ex68K_FindExce */
	$"7074 696F 6E52 6563 6F72 645F 5F46 5063"            /* ptionRecord__FPc */
	$"5031 354D 5745 7863 6570 7469 6F6E 496E"            /* P15MWExceptionIn */
	$"666F 0000 2F0A 206F 0008 2468 000C B4FC"            /* fo../. o..$h..¥¸ */
	$"0000 6604 7000 6006 3012 0240 00FF 245F"            /* ..f.p.`.0..@.ˇ$_ */
	$"4E75 8028 4578 3638 4B5F 4375 7272 656E"            /* NuÄ(Ex68K_Curren */
	$"7441 6374 696F 6E5F 5F46 5043 3134 4163"            /* tAction__FPC14Ac */
	$"7469 6F6E 4974 6572 6174 6F72 0000 4E56"            /* tionIterator..NV */
	$"0000 48E7 1030 246E 0008 266A 000C 200B"            /* ..HÁ.0$n..&j.. . */
	$"670C 3613 3003 0280 0000 8000 6730 206A"            /* g.6.0..Ä..Ä.g0 j */
	$"0010 2668 0004 2F0A 2F0B 4EB9 0000 031C"            /* ..&h.././.Nπ.... */
	$"4A92 504F 6606 4EB9 0000 10A8 206A 0010"            /* JíPOf.Nπ...® j.. */
	$"2550 0010 4AAA 000C 67C0 6000 00B8 7000"            /* %P..J™..g¿`..∏p. */
	$"3003 0C80 0000 0013 6200 00A4 D040 303B"            /* 0..Ä....b..§–@0; */
	$"0006 4EFB 0002 0098 0028 0030 0098 0038"            /* ..N˚...ò.(.0.ò.8 */
	$"0040 0048 0050 0058 0060 0068 0070 0050"            /* .@.H.P.X.`.h.p.P */
	$"0098 0098 0098 0078 0080 0098 0086 700A"            /* .ò.ò.ò.x.Ä.ò.Üp. */
	$"D1AA 000C 606E 700E D1AA 000C 6066 700A"            /* —™..`np.—™..`fp. */
	$"D1AA 000C 605E 7012 D1AA 000C 6056 7012"            /* —™..`^p.—™..`Vp. */
	$"D1AA 000C 604E 700E D1AA 000C 6046 7012"            /* —™..`Np.—™..`Fp. */
	$"D1AA 000C 603E 7016 D1AA 000C 6036 700A"            /* —™..`>p.—™..`6p. */
	$"D1AA 000C 602E 700E D1AA 000C 6026 700E"            /* —™..`.p.—™..`&p. */
	$"D1AA 000C 601E 5CAA 000C 6018 7000 302B"            /* —™..`.\™..`.p.0+ */
	$"0002 E588 720C D081 D1AA 000C 6006 4EB9"            /* ..Âàr.–Å—™..`.Nπ */
	$"0000 10A8 206A 000C 3010 0240 00FF 4CDF"            /* ...® j..0..@.ˇLﬂ */
	$"0C08 4E5E 4E75 8024 4578 3638 4B5F 4E65"            /* ..N^NuÄ$Ex68K_Ne */
	$"7874 4163 7469 6F6E 5F5F 4650 3134 4163"            /* xtAction__FP14Ac */
	$"7469 6F6E 4974 6572 6174 6F72 0000 206F"            /* tionIterator.. o */
	$"0004 302F 0008 C0FC 0006 4EFB 0002 F210"            /* ..0/..¿¸..N˚..Ú. */
	$"4800 4E75 F210 4880 4E75 F210 4900 4E75"            /* H.NuÚ.HÄNuÚ.I.Nu */
	$"F210 4980 4E75 F210 4A00 4E75 F210 4A80"            /* Ú.IÄNuÚ.J.NuÚ.JÄ */
	$"4E75 F210 4B00 4E75 F210 4B80 4E75 9545"            /* NuÚ.K.NuÚ.KÄNuïE */
	$"7836 384B 5F4D 6F76 6554 6F46 5078 5F5F"            /* x68K_MoveToFPx__ */
	$"4650 6373 0000 4E56 0000 48E7 1F38 2E2E"            /* FPcs..NV..HÁ.8.. */
	$"0008 266E 000C 2047 2868 0038 2053 3610"            /* ..&n.. G(h.8 S6. */
	$"6700 009C 244C 95EB 0004 7000 3003 2C00"            /* g..ú$LïÎ..p.0.,. */
	$"0280 0000 03E0 6728 383C 0200 7606 2647"            /* .Ä...‡g(8<..v.&G */
	$"47EB 0018 2A06 7000 3004 C085 6706 598A"            /* GÎ..*.p.0.¿Ög.Yä */
	$"2752 0020 598B 5343 E24C 0C43 0002 6CE6"            /* 'R. YãSC‚L.C..lÊ */
	$"701F C086 6724 7610 7807 2647 47EB 001C"            /* p.¿Üg$v.x.&GGÎ.. */
	$"2A06 7000 3003 C085 6704 598A 2692 598B"            /* *.p.0.¿Ög.Yä&íYã */
	$"5344 E24B 0C44 0003 6CE8 2006 0280 0000"            /* SD‚K.D..lË ..Ä.. */
	$"3C00 672A 383C 2000 7607 2A06 7000 3004"            /* <.g*8< .v.*.p.0. */
	$"C085 6710 518A 598A 3F03 2F0A 4EB9 0000"            /* ¿Ög.QäYä?./.Nπ.. */
	$"062E 5C4F 5343 E24C 0C43 0004 6CDE 2047"            /* ..\OSC‚L.C..lﬁ G */
	$"2154 0038 204C 5088 2247 2348 003C 206C"            /* !T.8 LPà"G#H.< l */
	$"0004 4CDF 1CF8 4E5E 4E75 8037 4578 3638"            /* ..Lﬂ.¯N^NuÄ7Ex68 */
	$"4B5F 506F 7053 7461 636B 4672 616D 655F"            /* K_PopStackFrame_ */
	$"5F46 5031 3254 6872 6F77 436F 6E74 6578"            /* _FP12ThrowContex */
	$"7450 3135 4D57 4578 6365 7074 696F 6E49"            /* tP15MWExceptionI */
	$"6E66 6F00 0000 48E7 1030 266F 0010 262F"            /* nfo...HÁ.0&o..&/ */
	$"0014 2003 0280 FFFF FF00 0C80 8000 0000"            /* .. ..Äˇˇˇ..ÄÄ... */
	$"6656 0283 0000 00FF 7007 B680 6E0A 2003"            /* fV.É...ˇp.∂Än. . */
	$"E588 204B D1C0 600E 2003 5180 E588 204B"            /* Âà K—¿`. .QÄÂà K */
	$"D1C0 41E8 0020 2448 302F 0018 48C0 5580"            /* —¿AË. $H0/..H¿UÄ */
	$"6712 5580 671A 102A 0003 4880 48C0 4CDF"            /* g.UÄg..*..HÄH¿Lﬂ */
	$"0C08 4E75 306A 0002 2008 4CDF 0C08 4E75"            /* ..Nu0j.. .Lﬂ..Nu */
	$"2012 4CDF 0C08 4E75 246B 0038 D5C3 302F"            /*  .Lﬂ..Nu$k.8’√0/ */
	$"0018 48C0 5580 6710 5580 6716 1012 4880"            /* ..H¿UÄg.UÄg...HÄ */
	$"48C0 4CDF 0C08 4E75 3052 2008 4CDF 0C08"            /* H¿Lﬂ..Nu0R .Lﬂ.. */
	$"4E75 2012 4CDF 0C08 4E75 8022 4578 3638"            /* Nu .Lﬂ..NuÄ"Ex68 */
	$"4B5F 4765 7456 616C 7565 5F5F 4650 3132"            /* K_GetValue__FP12 */
	$"5468 726F 7743 6F6E 7465 7874 6C73 0000"            /* ThrowContextls.. */
	$"4E56 FFEC 48E7 1F38 266E 0008 246E 000C"            /* NVˇÏHÁ.8&n..$n.. */
	$"286A 000C 200C 6626 2F0A 2F0B 4EB9 0000"            /* (j.. .f&/./.Nπ.. */
	$"0686 2848 2F0A 2F0C 4EB9 0000 031C 4A92"            /* .Ü(H/./.Nπ....Jí */
	$"4FEF 0010 66DA 4EB9 0000 10A8 60D2 3614"            /* OÔ..f⁄Nπ...®`“6. */
	$"3E03 3003 0280 0000 00FF 0C80 0000 0013"            /* >.0..Ä...ˇ.Ä.... */
	$"6200 03AC D040 303B 0006 4EFB 0002 03A0"            /* b..¨–@0;..N˚...† */
	$"0028 004E 03A0 008E 00C0 0114 01CE 0208"            /* .(.N.†.é.¿...Œ.. */
	$"025A 02CA 02F8 0196 03A0 03A0 03A0 033E"            /* .Z. .¯.ñ.†.†.†.> */
	$"034C 03A0 0388 260C 3F3C FFFF 2043 226B"            /* .L.†.à&.?<ˇˇ C"k */
	$"0038 2028 0002 4871 0800 2068 0006 4E90"            /* .8 (..Hq.. h..Nê */
	$"700A D1AA 000C 5C4F 6000 035A 260C 3F3C"            /* p.—™..\O`..Z&.?< */
	$"0001 2043 2F28 0006 2F0B 4EB9 0000 0796"            /* .. C/(../.Nπ...ñ */
	$"4A80 4FEF 000A 671A 3F3C FFFF 2043 226B"            /* JÄOÔ..g.?<ˇˇ C"k */
	$"0038 2028 0002 4871 0800 2068 000A 4E90"            /* .8 (..Hq.. h..Nê */
	$"5C4F 700E D1AA 000C 6000 031A 260C 3F3C"            /* \Op.—™..`...&.?< */
	$"FFFF 3F3C 0004 2043 2F28 0002 2F0B 4EB9"            /* ˇˇ?<.. C/(../.Nπ */
	$"0000 0796 4FEF 000A 2F00 2043 2068 0006"            /* ...ñOÔ../. C h.. */
	$"4E90 700A D1AA 000C 5C4F 6000 02E8 2C0C"            /* Nêp.—™..\O`..Ë,. */
	$"2046 286B 0038 D9E8 0002 2A28 0006 2D68"            /*  F(k.8ŸË..*(..-h */
	$"000A FFFC 2628 000A 2D68 000E FFF8 2828"            /* ..ˇ¸&(..-h..ˇ¯(( */
	$"000E 202E FFF8 222E FFFC 4EB9 0000 04D2"            /* .. .ˇ¯".ˇ¸Nπ...“ */
	$"D9C0 4A83 6F12 99C4 3F3C FFFF 2F0C 2045"            /* Ÿ¿JÉo.ôƒ?<ˇˇ/. E */
	$"4E90 5383 5C4F 6EEE 7012 D1AA 000C 6000"            /* NêSÉ\OnÓp.—™..`. */
	$"0294 2C0C 3F3C 0004 2046 2F28 0002 2F0B"            /* .î,.?<.. F/(../. */
	$"4EB9 0000 0796 2840 3F3C 0004 2046 2F28"            /* Nπ...ñ(@?<.. F/( */
	$"0006 2F0B 4EB9 0000 0796 2600 3F3C 0004"            /* ../.Nπ...ñ&.?<.. */
	$"2046 2F28 000A 2F0B 4EB9 0000 0796 2A00"            /*  F/(../.Nπ...ñ*. */
	$"3F3C 0004 2046 2F28 000E 2F0B 4EB9 0000"            /* ?<.. F/(../.Nπ.. */
	$"0796 2800 2004 2203 4EB9 0000 04D2 D9C0"            /* .ñ(. .".Nπ...“Ÿ¿ */
	$"4A83 4FEF 0028 6F12 99C4 3F3C FFFF 2F0C"            /* JÉOÔ.(o.ôƒ?<ˇˇ/. */
	$"2045 4E90 5383 5C4F 6EEE 7012 D1AA 000C"            /*  ENêSÉ\OnÓp.—™.. */
	$"6000 0212 260C 4267 3F3C 0004 2043 2F28"            /* `...&.Bg?<.. C/( */
	$"0002 2F0B 4EB9 0000 0796 2043 2240 2028"            /* ../.Nπ...ñ C"@ ( */
	$"000A 4FEF 000A 4871 0800 2068 0006 4E90"            /* ..OÔ..Hq.. h..Nê */
	$"700E D1AA 000C 5C4F 6000 01DA 260C 3F3C"            /* p.—™..\O`..⁄&.?< */
	$"FFFF 3F3C 0004 2043 2F28 0002 2F0B 4EB9"            /* ˇˇ?<.. C/(../.Nπ */
	$"0000 0796 2043 2240 2028 000A 4FEF 000A"            /* ...ñ C"@ (..OÔ.. */
	$"4871 0800 2068 0006 4E90 700E D1AA 000C"            /* Hq.. h..Nêp.—™.. */
	$"5C4F 6000 01A0 260C 3F3C 0002 2043 2F28"            /* \O`..†&.?<.. C/( */
	$"0006 2F0B 4EB9 0000 0796 4A80 4FEF 000A"            /* ../.Nπ...ñJÄOÔ.. */
	$"672C 4267 3F3C 0004 2043 2F28 0002 2F0B"            /* g,Bg?<.. C/(../. */
	$"4EB9 0000 0796 2043 2240 2028 000E 4FEF"            /* Nπ...ñ C"@ (..OÔ */
	$"000A 4871 0800 2068 000A 4E90 5C4F 7012"            /* ..Hq.. h..Nê\Op. */
	$"D1AA 000C 6000 014E 2C0C 2046 2D68 000A"            /* —™..`..N,. F-h.. */
	$"FFEC 3F3C 0004 2F28 0002 2F0B 4EB9 0000"            /* ˇÏ?<../(../.Nπ.. */
	$"0796 2040 D1EE FFEC 2848 2046 2A28 0006"            /* .ñ @—ÓˇÏ(H F*(.. */
	$"2D68 000E FFF4 2628 000E 2D68 0012 FFF0"            /* -h..ˇÙ&(..-h..ˇ */
	$"2828 0012 202E FFF0 222E FFF4 4EB9 0000"            /* ((.. .ˇ".ˇÙNπ.. */
	$"04D2 D9C0 4A83 4FEF 000A 6F12 99C4 3F3C"            /* .“Ÿ¿JÉOÔ..o.ôƒ?< */
	$"FFFF 2F0C 2045 4E90 5383 5C4F 6EEE 7016"            /* ˇˇ/. ENêSÉ\OnÓp. */
	$"D1AA 000C 6000 00DE 260C 3F3C 0004 2043"            /* —™..`..ﬁ&.?<.. C */
	$"2F28 0002 2F0B 4EB9 0000 0796 4FEF 000A"            /* /(../.Nπ...ñOÔ.. */
	$"2F00 2043 2068 0006 4E90 700A D1AA 000C"            /* /. C h..Nêp.—™.. */
	$"584F 6000 00B0 260C 3F3C 0001 2043 2F28"            /* XO`..∞&.?<.. C/( */
	$"000A 2F0B 4EB9 0000 0796 4A80 4FEF 000A"            /* ../.Nπ...ñJÄOÔ.. */
	$"6722 3F3C 0004 2043 2F28 0002 2F0B 4EB9"            /* g"?<.. C/(../.Nπ */
	$"0000 0796 4FEF 000A 2F00 2043 2068 0006"            /* ...ñOÔ../. C h.. */
	$"4E90 584F 700E D1AA 000C 6068 B9EE 0010"            /* NêXOp.—™..`hπÓ.. */
	$"6776 700E D1AA 000C 605A 206B 0038 D1EC"            /* gvp.—™..`Z k.8—Ï */
	$"0002 2808 2608 2044 4AA8 0008 6722 2043"            /* ..(.&. DJ®..g" C */
	$"2850 B9EB 0048 6608 2768 0008 004C 6010"            /* (PπÎ.Hf.'h...L`. */
	$"3F3C FFFF 2F0C 2043 2068 0008 4E90 5C4F"            /* ?<ˇˇ/. C h..Nê\O */
	$"5CAA 000C 601E B9EE 0010 672C 7000 302C"            /* \™..`.πÓ..g,p.0, */
	$"0002 E588 720C D081 D1AA 000C 6006 4EB9"            /* ..Âàr.–Å—™..`.Nπ */
	$"0000 10A8 3007 0280 0000 8000 6700 FC02"            /* ...®0..Ä..Ä.g.¸. */
	$"42AA 000C 6000 FBFA 4CDF 1CF8 4E5E 4E75"            /* B™..`.˚˙Lﬂ.¯N^Nu */
	$"8037 4578 3638 4B5F 556E 7769 6E64 5374"            /* Ä7Ex68K_UnwindSt */
	$"6163 6B5F 5F46 5031 3254 6872 6F77 436F"            /* ack__FP12ThrowCo */
	$"6E74 6578 7450 3135 4D57 4578 6365 7074"            /* ntextP15MWExcept */
	$"696F 6E49 6E66 6F50 7600 0000 4E56 FFFC"            /* ionInfoPv...NVˇ¸ */
	$"48E7 1038 286E 0008 266E 000C 7600 2003"            /* HÁ.8(n..&n..v. . */
	$"E588 244B D5C0 6020 486E FFFC 2F2A 000C"            /* Âà$K’¿` Hnˇ¸/*.. */
	$"2F0C 4EB9 0000 10CA 4A00 4FEF 000C 6704"            /* /.Nπ... J.OÔ..g. */
	$"7001 6010 588A 5283 7000 302B 0002 B680"            /* p.`.XäRÉp.0+..∂Ä */
	$"6DD6 7000 4CDF 1C08 4E5E 4E75 802F 4578"            /* m÷p.Lﬂ..N^NuÄ/Ex */
	$"3638 4B5F 4973 496E 5370 6563 6966 6963"            /* 68K_IsInSpecific */
	$"6174 696F 6E5F 5F46 5063 5031 3665 785F"            /* ation__FPcP16ex_ */
	$"7370 6563 6966 6963 6174 696F 6E00 0000"            /* specification... */
	$"206F 0004 226F 0008 4CE8 00F8 000C 4CE8"            /*  o.."o..LË.¯..LË */
	$"7C00 0028 4ED1 8022 4578 3638 4B5F 4C6F"            /* |..(N—Ä"Ex68K_Lo */
	$"6E67 4A75 6D70 5F5F 4650 3132 5468 726F"            /* ngJump__FP12Thro */
	$"7743 6F6E 7465 7874 5076 0000 4E56 0000"            /* wContextPv..NV.. */
	$"48E7 1038 266E 0008 262E 000C 286E 0010"            /* HÁ.8&n..&...(n.. */
	$"2F0C 2F03 2F0B 4EB9 0000 0860 246B 0038"            /* /././.Nπ...`$k.8 */
	$"D5EC 0008 24AB 0048 256B 0044 0004 256B"            /* ’Ï..$´.H%k.D..%k */
	$"004C 0008 254C 0014 2043 2268 0008 202C"            /* .L..%L.. C"h.. , */
	$"0004 4871 0800 2F0B 4EB9 0000 0D40 4FEF"            /* ..Hq../.Nπ...@OÔ */
	$"0014 4CDF 1C08 4E5E 4E75 804D 4578 3638"            /* ..Lﬂ..N^NuÄMEx68 */
	$"4B5F 4861 6E64 6C65 556E 6578 7065 6374"            /* K_HandleUnexpect */
	$"6564 5F5F 4650 3132 5468 726F 7743 6F6E"            /* ed__FP12ThrowCon */
	$"7465 7874 5031 354D 5745 7863 6570 7469"            /* textP15MWExcepti */
	$"6F6E 496E 666F 5031 3665 785F 7370 6563"            /* onInfoP16ex_spec */
	$"6966 6963 6174 696F 6E00 0000 4E56 FFD8"            /* ification...NVˇÿ */
	$"48E7 1038 246E 0008 486E FFDC 2F2A 0040"            /* HÁ.8$n..Hnˇ‹/*.@ */
	$"4EB9 0000 031C 4AAE FFDC 504F 6606 4EB9"            /* Nπ....JÆˇ‹POf.Nπ */
	$"0000 10A8 4AAA 0044 6600 008C 41EE FFDC"            /* ...®J™.Df..åAÓˇ‹ */
	$"43EE FFEC 22D8 22D8 22D8 22D8 41EE FFEC"            /* CÓˇÏ"ÿ"ÿ"ÿ"ÿAÓˇÏ */
	$"5088 5088 2848 20AA 0038 486E FFEC 4EB9"            /* PàPà(H ™.8HnˇÏNπ */
	$"0000 04A4 3600 584F 7000 3003 0C80 0000"            /* ...§6.XOp.0..Ä.. */
	$"0013 621C 5740 6D20 6716 0440 000A 6D18"            /* ..b.W@m g..@..m. */
	$"5740 6D0C 6712 5340 671E 5340 6702 6008"            /* W@m.g.S@g.S@g.`. */
	$"4EB9 0000 10A8 6010 486E FFEC 4EB9 0000"            /* Nπ...®`.HnˇÏNπ.. */
	$"04EE 3600 584F 60C0 206E FFF8 2654 D7E8"            /* .Ó6.XO`¿ nˇ¯&T◊Ë */
	$"0002 256B 0004 0044 2553 0048 42AA 004C"            /* ..%k...D%S.HB™.L */
	$"254B 0050 6004 42AA 0050 41EE FFDC 43EE"            /* %K.P`.B™.PAÓˇ‹CÓ */
	$"FFEC 22D8 22D8 22D8 22D8 2D6A 0038 FFFC"            /* ˇÏ"ÿ"ÿ"ÿ"ÿ-j.8ˇ¸ */
	$"486E FFEC 4EB9 0000 04A4 3600 584F 7000"            /* HnˇÏNπ...§6.XOp. */
	$"3003 0C80 0000 0013 626C 5740 6D70 6766"            /* 0..Ä....blW@mpgf */
	$"0440 000A 6D68 5740 6D5C 670A 5340 675E"            /* .@..mhW@m\g.S@g^ */
	$"5340 6752 6020 486E FFD8 206E FFF8 2F28"            /* S@gR` Hnˇÿ nˇ¯/( */
	$"0002 2F2A 0044 4EB9 0000 10CA 4A00 4FEF"            /* ../*.DNπ... J.OÔ */
	$"000C 664C 6038 41EE FFEC 5088 5888 2648"            /* ..fL`8AÓˇÏPàXà&H */
	$"2F10 2F2A 0044 4EB9 0000 0CBC 4A80 504F"            /* /./*.DNπ...ºJÄPO */
	$"661C 2F13 486E FFDC 2F0A 4EB9 0000 0D7C"            /* f./.Hnˇ‹/.Nπ...| */
	$"4FEF 000C 6008 4EB9 0000 10A8 6012 486E"            /* OÔ..`.Nπ...®`.Hn */
	$"FFEC 4EB9 0000 04EE 3600 584F 6000 FF70"            /* ˇÏNπ...Ó6.XO`.ˇp */
	$"286E FFF8 2F0C 486E FFDC 2F0A 4EB9 0000"            /* (nˇ¯/.Hnˇ‹/.Nπ.. */
	$"0860 266A 0038 D7EC 000A 26AA 0048 276A"            /* .`&j.8◊Ï..&™.H'j */
	$"0044 0004 276A 004C 0008 206A 0044 0C10"            /* .D..'j.L.. j.D.. */
	$"002A 4FEF 000C 661A 204B 5088 5088 2748"            /* .*OÔ..f. KPàPà'H */
	$"000C 206A 0048 2010 D0AE FFD8 2740 0010"            /* .. j.H .–Æˇÿ'@.. */
	$"600C 206A 0048 D1EE FFD8 2748 000C 206E"            /* `. j.H—Óˇÿ'H.. n */
	$"FFE4 202C 0006 4870 0800 2F0A 4EB9 0000"            /* ˇ‰ ,..Hp../.Nπ.. */
	$"0D40 504F 4CDF 1C08 4E5E 4E75 8024 4578"            /* .@POLﬂ..N^NuÄ$Ex */
	$"3638 4B5F 5468 726F 7748 616E 646C 6572"            /* 68K_ThrowHandler */
	$"5F5F 4650 3132 5468 726F 7743 6F6E 7465"            /* __FP12ThrowConte */
	$"7874 0000 9EFC 0054 48EF 00FF 0000 48EF"            /* xt..û¸.THÔ.ˇ..HÔ */
	$"FF00 0020 06AF 0000 0064 003C 2F6F 0054"            /* ˇ.. .Ø...d.</o.T */
	$"0040 2F6F 0058 0044 2F6F 005C 0048 2F6F"            /* .@/o.X.D/o.\.H/o */
	$"0060 004C 2F0F 4EB9 0000 0E2C 875F 5F74"            /* .`.L/.Nπ...,á__t */
	$"6872 6F77 0000 4E56 0000 4EB9 0000 052A"            /* hrow..NV..Nπ...* */
	$"4E5E 4E75 9164 7468 616E 646C 6572 5F5F"            /* N^Nuëdthandler__ */
	$"3373 7464 4676 0000 4E56 0000 206D FFFA"            /* 3stdFv..NV.. mˇ˙ */
	$"4E90 4E5E 4E75 9174 6572 6D69 6E61 7465"            /* NêN^Nuëterminate */
	$"5F5F 3373 7464 4676 0000 48E7 1C38 262F"            /* __3stdFv..HÁ.8&/ */
	$"001C 286F 0020 2A2F 0024 2045 4290 264C"            /* ..(o. *..$ EBê&L */
	$"200C 6608 7001 4CDF 1C38 4E75 2443 0C14"            /*  .f.p.Lﬂ.8Nu$C.. */
	$"0050 6632 528B 0C13 0043 6602 528B 0C13"            /* .Pf2Rã...Cf.Rã.. */
	$"0056 6602 528B 0C13 0076 6618 2043 1810"            /* .Vf.Rã...vf. C.. */
	$"0C04 0050 6706 0C04 002A 6608 7001 4CDF"            /* ...Pg....*f.p.Lﬂ */
	$"1C38 4E75 264C 2043 1010 4880 48C0 0480"            /* .8Nu&L C..HÄH¿.Ä */
	$"0000 0021 670A 5180 5380 6704 6000 00A8"            /* ...!g.QÄSÄg.`..® */
	$"B50B 6708 7000 4CDF 1C38 4E75 1012 B01B"            /* µ.g.p.Lﬂ.8Nu..∞. */
	$"6634 0C1A 0021 66F4 7600 6018 2003 720A"            /* f4...!fÙv.`. .r. */
	$"4EB9 0000 04D2 121A 4881 48C1 D280 70D0"            /* Nπ...“..HÅH¡“Äp– */
	$"D280 2601 0C12 0021 66E2 2045 2083 7001"            /* “Ä&....!f‚ E Ép. */
	$"4CDF 1C38 4E75 0C1A 0021 66FA 0C1A 0021"            /* Lﬂ.8Nu...!f˙...! */
	$"66FA 4A12 6608 7000 4CDF 1C38 4E75 264C"            /* f˙J.f.p.Lﬂ.8Nu&L */
	$"528B 60A8 528A 528B 0C13 0043 660A 0C12"            /* Rã`®RäRã...Cf... */
	$"0043 6602 528A 528B 1612 0C03 0043 6608"            /* .Cf.RäRã.....Cf. */
	$"7000 4CDF 1C38 4E75 0C13 0056 660A 0C03"            /* p.Lﬂ.8Nu...Vf... */
	$"0056 6602 528A 528B 0C12 0056 6608 7000"            /* .Vf.RäRã...Vf.p. */
	$"4CDF 1C38 4E75 1612 0C03 0050 6706 0C03"            /* Lﬂ.8Nu.....Pg... */
	$"0052 6616 B613 67AC 6010 4A03 6608 7001"            /* .Rf.∂.g¨`.J.f.p. */
	$"4CDF 1C38 4E75 528A 528B 1612 B613 67EA"            /* Lﬂ.8NuRäRã..∂.gÍ */
	$"7000 4CDF 1C38 4E75 955F 5F74 6872 6F77"            /* p.Lﬂ.8Nuï__throw */
	$"5F63 6174 6368 5F63 6F6D 7061 7265 0000"            /* _catch_compare.. */
	$"0000 0001 419D 0000 0005 45AF 7F66 C143"            /* ....Aù....EØ.f¡C */
	$"7040 6B00 0000 2942 0EF6 408A 406A 7F9C"            /* p@k...)B.ˆ@ä@j.ú */
	$"4103 40A8 8641 EB7E 1C41 A4F3 E9CB E2F2"            /* A.@®ÜAÎ~.A§ÛÈÀ‚Ú */
	$"E5E3 DCF6 F6F6 7FBF DE41 E440 5A99 BC40"            /* Â„‹ˆˆˆ.øﬁA‰@Zôº@ */
	$"A37F 95CF 405B 7FBD 408A 7F95 4045 908A"            /* £.ïœ@[.Ω@ä.ï@Eêä */
	$"99B0 B5"                                            /* ô∞µ */
};

data 'CODE' (0, purgeable, protected) {
	$"0000 0300 0000 0508 0000 0008 0000 0020"            /* ...............  */
	$"0000 3F3C 0001 A9F0"                                /* ..?<..© */
};

data 'DATA' (0, purgeable, protected) {
	$"0000 039C FFFF FE70 B607 6D61 696C 746F"            /* ...úˇˇ˛p∂.mailto */
	$"3A43 616E 2774 206C 6175 6E63 6820 5552"            /* :Can't launch UR */
	$"4C2E 0049 6E74 6572 6E65 7420 436F 6E66"            /* L..Internet Conf */
	$"6967 206D 7573 7420 6265 2069 6E73 7461"            /* ig must be insta */
	$"206C 8C65 6400 0963 6C69 7032 6369 636E"            /*  låed..clip2cicn */
	$"4701 FFFF 1124 99A5 596F 7520 6361 6E27"            /* G.ˇˇ.$ô•You can' */
	$"7420 6564 6974 2074 6869 7320 6669 6C65"            /* t edit this file */
	$"2073 696E 6365 2069 7427 7320 6375 2072"            /*  since it's cu r */
	$"9665 6E74 6C79 206F 7065 6E20 696E 2061"            /* ñently open in a */
	$"6E6F 7468 6572 2061 2070 886C 6963 6174"            /* nother a pàlicat */
	$"696F 6E2E 41AA 506C 6561 7365 2063 6C6F"            /* ion.A™Please clo */
	$"7365 2069 7420 616E 6420 7472 7920 6167"            /* se it and try ag */
	$"6169 6E00 4253 6F6D 6574 6869 6E67 2068"            /* ain.BSomething h */
	$"6120 7092 656E 6564 2074 6861 7420 7761"            /* a píened that wa */
	$"736E 2774 2073 7520 7089 6F73 6564 2074"            /* sn't su pâosed t */
	$"6F20 6861 2070 8465 6E2E 2045 2072 9F6F"            /* o ha pÑen. E rüo */
	$"7220 6F66 2074 7970 653A 2000 023A 2000"            /* r of type: ..: . */
	$"0549 636F 6E3A 0120 012D 0E4E 6F74 2020"            /* .Icon:. .-.Not   */
	$"6196 7661 696C 6162 6C65 000D 4E6F 7420"            /* añvailable..Not  */
	$"6176 6169 6C61 626C 6541 A143 616E 2774"            /* availableA°Can't */
	$"206C 6F61 6420 7468 6520 7069 6374 7572"            /*  load the pictur */
	$"6520 6F72 2074 6865 2063 6C75 7441 816E"            /* e or the clutAÅn */
	$"7520 6C43 9832 3540 656E 756D 2431 3937"            /* u lCò25@enum$197 */
	$"4D61 6348 6561 6465 7273 5F70 6368 205F"            /* MacHeaders_pch _ */
	$"4215 4280 6041 0000 0000 2800 0000 0028"            /* B.BÄ`A....(....( */
	$"0300 0C02 0300 2A02 0302 3802 0302 4C02"            /* ......*...8...L. */
	$"0302 8C02 0302 A002 0310 4402 0310 8602"            /* ..å...†...D...Ü. */
	$"4084 E100 2000 0441 8780 1200 FF14 2200"            /* @Ñ·. ..AáÄ..ˇ.". */
	$"0441 8180 1241 8180 AC43 8182 0842 1081"            /* .AÅÄ.AÅÄ¨CÅÇ.B.Å */
	$"810E 4282 E781 5442 8101 8243 8101 8102"            /* Å.BÇÁÅTBÅ.ÇCÅ.Å. */
	$"8100 0041 8263 8430 4282 6089 0842 82E7"            /* Å..AÇcÑ0BÇ`â.BÇÁ */
	$"8224 4282 2081 0247 8137 D842 80EE 4181"            /* Ç$BÇ Å.GÅ7ÿBÄÓAÅ */
	$"0190 4581 1230 4181 027E 4280 8059 8306"            /* .êEÅ.0AÅ.~BÄÄYÉ. */
	$"7680 E343 8407 3480 0008 4282 0792 8044"            /* vÄ„CÑ.4Ä..BÇ.íÄD */
	$"8407 B880 235E 4281 0880 4582 08A2 8044"            /* Ñ.∏Ä#^BÅ.ÄEÇ.¢ÄD */
	$"8208 CE80 4482 08F0 8044 8309 4C80 6043"            /* Ç.ŒÄDÇ.ÄDÉ.LÄ`C */
	$"8409 9680 0010 4283 09D8 8020 4381 0A6C"            /* Ñ.ñÄ..BÉ.ÿÄ CÅ.l */
	$"4584 0A96 8063 0442 830B 2880 2143 830B"            /* EÑ.ñÄc.BÉ.(Ä!CÉ. */
	$"8880 2043 830B CE80 0743 810C 3842 80B8"            /* àÄ CÉ.ŒÄ.CÅ.8BÄ∏ */
	$"4181 0C94 4280 B241 830F AA80 0143 8110"            /* AÅ.îBÄ≤AÉ.™Ä.CÅ. */
	$"0642 80AC 4184 10F2 8000 6842 8411 4A80"            /* .BÄ¨AÑ.ÚÄ.hBÑ.JÄ */
	$"201E 4281 12BC 4280 A641 8118 1442 80A0"            /*  .BÅ.ºBÄ¶AÅ..BÄ† */
	$"4181 1916 4280 9A41 8119 A242 8094 4184"            /* AÅ..BÄöAÅ.¢BÄîAÑ */
	$"1A4E 8063 0442 811B AA42 808E 4181 1EA2"            /* .NÄc.BÅ.™BÄéAÅ.¢ */
	$"4280 8841 8223 C480 4481 23EA 4582 2434"            /* BÄàAÇ#ƒÄDÅ#ÍEÇ$4 */
	$"8044 8224 8C80 4481 24B6 4280 8241 8425"            /* ÄDÇ$åÄDÅ$∂BÄÇAÑ% */
	$"2680 0008 4281 2582 4584 2616 8060 0C42"            /* &Ä..BÅ%ÇEÑ&.Ä`.B */
	$"8326 E080 2043 8427 1E80 2026 4281 2AFE"            /* É&‡Ä CÑ'.Ä &BÅ*˛ */
	$"4280 7C41 832B 5C80 6743 812B E245 832C"            /* BÄ|AÉ+\ÄgCÅ+‚EÉ, */
	$"4480 2F43 842C CC80 E00A 4284 2D82 8021"            /* DÄ/CÑ,ÃÄ‡.BÑ-ÇÄ! */
	$"0C42 842E 2280 0010 4284 2E7A 8060 0E42"            /* .BÑ."Ä..BÑ.zÄ`.B */
	$"842F 1080 E32C 4281 3006 4D84 031C 80FF"            /* Ñ/.Ä„,BÅ0.MÑ..Äˇ */
	$"0442 8104 A445 8304 EE80 6143 8106 2E45"            /* .BÅ.§EÉ.ÓÄaCÅ..E */
	$"8306 8680 FF43 8107 9645 8108 6042 8072"            /* É.ÜÄˇCÅ.ñEÅ.`BÄr */
	$"4184 0CBC 80E1 0442 810D 4045 810D 7C42"            /* AÑ.ºÄ·.BÅ.@EÅ.|B */
	$"8068 4184 0E2C 80E1 2842 8110 4445 8210"            /* ÄhAÑ.,Ä·(BÅ.DEÇ. */
	$"8680 4482 10A8 8044 8110 CA43 0000 0000"            /* ÜÄDÇ.®ÄDÅ. C.... */
	$"01FD 0000 0001 405F 0000 0000 0000 000B"            /* .˝....@_........ */
	$"418E 48EC 7F8B 7FA0 419B 4120 D141 86E9"            /* AéHÏ.ã.†AõA —AÜÈ */
	$"409F 4853 0000 0057 406E 838A 8542 1888"            /* @üHS...W@nÉäÖB.à */
	$"9C8D 99BD A283 8383 40D5 404B 8383 8B83"            /* úçôΩ¢ÉÉÉ@’@KÉÉãÉ */
	$"838E 404D 9796 8686 8640 4E40 4340 5186"            /* Éé@MóñÜÜÜ@N@C@QÜ */
	$"869C 4149 BDDF ABDF 404F 8586 9D86 8C8B"            /* ÜúAIΩﬂ´ﬂ@OÖÜùÜåã */
	$"8E9C 95F0 410F A0A6 41A6 7E7D F941 837F"            /* éúïA.†¶A¶~}˘AÉ. */
	$"757F 5041 E6E9 7F7E CA7F 6640 CC40 C1BC"            /* u.PAÊÈ.~ .f@Ã@¡º */
	$"9840 52D3 4079 F98E 4049 F588 41AC 7FB5"            /* ò@R”@y˘é@IıàA¨.µ */
	$"40EF 9283 40CE C37F BCB5 468E B100 0000"            /* @ÔíÉ@Œ√.ºµFé±... */
	$"00"                                                 /* . */
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

