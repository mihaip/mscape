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
	{	/* array: 7 elements */
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
		"Black", noIcon, noKey, noMark, plain
	}
};

resource 'STR#' (500, "Tool Palette Balloon Help", purgeable) {
	{	/* array StringArray: 3 elements */
		/* [1] */
		"Preview Size\n\nThe slider and text field "
		"can be used to change the size of the pr"
		"eview. Possible selections include anyth"
		"ing between 128 and 64 (the icon will be"
		" scaled smoothly), 48, 32, 16 and 12.",
		/* [2] */
		"Preview Area\n\nThe current icon member an"
		"d mask are displayed here at the selecte"
		"d size.",
		/* [3] */
		"Preview Settings\n\nThis menu can be used "
		"to select the state of the preview icon "
		"(normal or selected) and the background "
		"(desktop, list view, white or black)."
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

resource 'cctb' (504) {
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

data 'hrct' (500, "Tool Palette Help", purgeable) {
	$"0002 0000 0000 0000 0000 0003 0014 0003"            /* ................ */
	$"0000 0000 0006 0007 0017 0090 01F4 0001"            /* ...........ê.Ù.. */
	$"0014 0003 0000 0000 0020 0006 00AA 0090"            /* ......... ...™.ê */
	$"01F4 0002 0014 0003 0000 0000 00AF 0000"            /* .Ù...........Ø.. */
	$"00BE 0096 01F4 0003"                                /* .æ.ñ.Ù.. */
};

data 'hwin' (500, purgeable) {
	$"0002 0000 0000 0001 01F4 6872 6374 0007"            /* .........Ùhrct.. */
	$"0750 7265 7669 6577"                                /* .Preview */
};

data 'ictb' (9999) {
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000"                                          /* .... */
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

