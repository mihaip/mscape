/* Resource fork of software/Iconographer/Source/icnsEditorClass/PreviewPalette/PreviewPalette.rsrc */
resource 'wctb' (500) {
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

resource 'dlgx' (9999) {
	versionZero {
		15
	}
};

resource 'tab#' (500, "Preview Tabs") {
	versionZero {
		{	/* array TabInfo: 2 elements */
			/* [1] */
			0,
			"Thumbnail",
			/* [2] */
			0,
			"Hints"
		}
	}
};

resource 'CNTL' (500, "Preview Tabs", purgeable) {
	{3, 4294967294, 191, 151},
	500,
	visible,
	100,
	0,
	137,
	0,
	""
};

resource 'CNTL' (501, "Preview Thumbnail", purgeable) {
	{49, 8, 183, 142},
	0,
	visible,
	100,
	0,
	256,
	0,
	""
};

resource 'CNTL' (504, "Preview Hints", purgeable) {
	{28, 8, 183, 142},
	0,
	visible,
	100,
	0,
	256,
	0,
	""
};

resource 'CNTL' (502, "Preview Thumbnail Slider", purgeable) {
	{28, 6, 44, 116},
	128,
	visible,
	128,
	4,
	57,
	0,
	""
};

resource 'CNTL' (503, "Preview Thumbnail Text", purgeable) {
	{30, 122, 42, 142},
	0,
	visible,
	100,
	0,
	280,
	0,
	""
};

resource 'WIND' (500, "Preview Palette", purgeable) {
	{39, 867, 229, 1017},
	1057,
	invisible,
	goAway,
	0x0,
	"Preview",
	noAutoCenter
};

data 'ictb' (9999) {
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000"                                          /* .... */
};

resource 'cctb' (502) {
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

resource 'DITL' (9999, purgeable) {
	{	/* array DITLarray: 5 elements */
		/* [1] */
		{3, 4294967294, 191, 151},
		Control {
			enabled,
			500
		},
		/* [2] */
		{28, 8, 183, 142},
		Control {
			enabled,
			504
		},
		/* [3] */
		{28, 6, 44, 116},
		Control {
			enabled,
			502
		},
		/* [4] */
		{30, 122, 42, 142},
		Control {
			enabled,
			503
		},
		/* [5] */
		{49, 8, 183, 142},
		Control {
			enabled,
			501
		}
	}
};

data 'DLGX' (9999) {
	$"0647 656E 6576 6100 0000 0000 0000 0000"            /* .Geneva......... */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0009 0000 0000 0000 0004 0004 0000 0000"            /* ................ */
	$"0005 0005 0000 0000 0000 0000 0000 0005"            /* ................ */
	$"0000 0000 0000 0000 0000 0005 0000 0000"            /* ................ */
	$"0000 0000 0000 0005 0000 0000 0000 0000"            /* ................ */
	$"0000 0005 0000 0000 0000 0000 0000"                 /* .............. */
};

resource 'DLOG' (9999, purgeable) {
	{250, 300, 440, 450},
	1057,
	visible,
	goAway,
	0x0,
	9999,
	"Preview",
	noAutoCenter
};

