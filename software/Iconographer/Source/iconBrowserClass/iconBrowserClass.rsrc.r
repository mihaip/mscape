/* Resource fork of software/Iconographer/Source/iconBrowserClass/iconBrowserClass.rsrc */
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

resource 'STR#' (300, "Icon Browser: Strings", purgeable) {
	{	/* array StringArray: 13 elements */
		/* [1] */
		"Loading Icon: <ID>",
		/* [2] */
		"Loading Icon: <ID> ?<name>?",
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
		" ID: <icon ID> from the file ?<file name"
		">??",
		/* [12] */
		"<name> (Icon Browser)",
		/* [13] */
		"<I>None</I>"
	}
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

resource 'dlgx' (300) {
	versionZero {
		15
	}
};

