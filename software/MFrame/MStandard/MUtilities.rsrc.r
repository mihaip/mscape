/* Resource fork of software/MFrame/MStandard/MUtilities.rsrc */
resource 'CNTL' (6000, "Format Popup", purgeable) {
	{6, 8, 26, 371},
	0,
	visible,
	94,
	6000,
	409,
	0,
	"Get String Here:"
};

resource 'DITL' (6000, purgeable) {
	{	/* array DITLarray: 1 elements */
		/* [1] */
		{6, 8, 26, 371},
		Control {
			enabled,
			6000
		}
	}
};

data 'DLGX' (6000) {
	$"0654 6563 686E 6F00 0000 0000 0000 0000"            /* .Techno......... */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"000C 0000 0000 0000 0004 0004 0000 0000"            /* ................ */
	$"0001 0005 0000 0000 0000 0000 0000"                 /* .............. */
};

resource 'DLOG' (6000, "Format Custom Items", purgeable) {
	{253, 278, 285, 666},
	1024,
	visible,
	goAway,
	0x0,
	6000,
	"DITL 2000 from iconmangler.µ.rsrc",
	noAutoCenter
};

resource 'MENU' (6000, "Format Menu") {
	6000,
	textMenuProc,
	allEnabled,
	enabled,
	"Untitled",
	{	/* array: 0 elements */
	}
};

resource 'cctb' (6000) {
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

