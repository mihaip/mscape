/* Resource fork of software/Iconographer/Source/icnsEditorClass/PreviewPalette/PreviewPalette.rsrc */
resource 'CNTL' (500, "Preview Background", purgeable) {
	{4294967295, 4294967295, 176, 151},
	0,
	visible,
	100,
	0,
	256,
	0,
	""
};

resource 'CNTL' (501, "Preview Area", purgeable) {
	{32, 6, 170, 144},
	0,
	visible,
	100,
	0,
	256,
	0,
	""
};

resource 'CNTL' (502, "Preview Slider", purgeable) {
	{7, 6, 23, 116},
	32,
	visible,
	128,
	12,
	57,
	0,
	""
};

resource 'CNTL' (503, "Preview Text", purgeable) {
	{9, 122, 21, 142},
	0,
	visible,
	100,
	0,
	280,
	0,
	""
};

resource 'CNTL' (504, "Preview Settings", purgeable) {
	{175, 4294967295, 191, 151},
	32,
	visible,
	100,
	0,
	256,
	0,
	""
};

resource 'DITL' (9999, purgeable) {
	{	/* array DITLarray: 5 elements */
		/* [1] */
		{4294967295, 4294967295, 176, 151},
		Control {
			enabled,
			500
		},
		/* [2] */
		{32, 6, 170, 144},
		Control {
			enabled,
			501
		},
		/* [3] */
		{7, 6, 23, 116},
		Control {
			enabled,
			502
		},
		/* [4] */
		{9, 122, 21, 142},
		Control {
			enabled,
			503
		},
		/* [5] */
		{175, 4294967295, 191, 151},
		Control {
			enabled,
			504
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

resource 'MENU' (500) {
	500,
	textMenuProc,
	0x7FFFFFFB,
	enabled,
	"Preview Settings",
	{	/* array: 8 elements */
		/* [1] */
		"Normal", noIcon, noKey, noMark, plain,
		/* [2] */
		"Selected", noIcon, noKey, noMark, plain,
		/* [3] */
		"-", noIcon, noKey, noMark, plain,
		/* [4] */
		"Desktop", noIcon, noKey, noMark, plain,
		/* [5] */
		"List View", noIcon, noKey, noMark, plain,
		/* [6] */
		"White", noIcon, noKey, noMark, plain,
		/* [7] */
		"Black", noIcon, noKey, noMark, plain,
		/* [8] */
		"Custom Color…", noIcon, noKey, noMark, plain
	}
};

resource 'STR#' (500, "Preview Palette Help", purgeable) {
	{	/* array StringArray: 3 elements */
		/* [1] */
		"Preview Size",
		/* [2] */
		"Preview (click to view selected version)",
		/* [3] */
		"Preview background and state settings"
	}
};

resource 'STR#' (501, "Preview Palette Strings", purgeable) {
	{	/* array StringArray: 1 elements */
		/* [1] */
		"Pick a preview background color:"
	}
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

