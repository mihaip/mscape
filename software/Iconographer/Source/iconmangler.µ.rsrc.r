/* Resource fork of software/Iconographer/Source/iconmangler.µ.rsrc */
resource 'MENU' (128) {
	128,
	textMenuProc,
	0x7FFFFFFB,
	enabled,
	apple,
	{	/* array: 3 elements */
		/* [1] */
		"About Iconographer�", noIcon, noKey, noMark, plain,
		/* [2] */
		"Register�", noIcon, noKey, noMark, plain,
		/* [3] */
		"-", noIcon, noKey, noMark, plain
	}
};

resource 'MENU' (132) {
	132,
	textMenuProc,
	0x7FFFFFDB,
	enabled,
	"Transform",
	{	/* array: 7 elements */
		/* [1] */
		"Rotate CW", noIcon, "T", noMark, plain,
		/* [2] */
		"Rotate CCW", noIcon, "T", noMark, plain,
		/* [3] */
		"-", noIcon, noKey, noMark, plain,
		/* [4] */
		"Flip Horizontal", noIcon, "[", noMark, plain,
		/* [5] */
		"Flip Vertical", noIcon, "]", noMark, plain,
		/* [6] */
		"-", noIcon, noKey, noMark, plain,
		/* [7] */
		"Invert", noIcon, "I", noMark, plain
	}
};

resource 'MENU' (133) {
	133,
	textMenuProc,
	allEnabled,
	enabled,
	"Paste",
	{	/* array: 4 elements */
		/* [1] */
		"Normally", noIcon, "V", noMark, plain,
		/* [2] */
		"As Icon and Mask", noIcon, "V", noMark, plain,
		/* [3] */
		"Into Current Selection", noIcon, "V", noMark, plain,
		/* [4] */
		"Icon Family", noIcon, "V", noMark, plain
	}
};

resource 'MENU' (134) {
	134,
	textMenuProc,
	allEnabled,
	enabled,
	"Copy",
	{	/* array: 3 elements */
		/* [1] */
		"Normally", noIcon, "C", noMark, plain,
		/* [2] */
		"Icon and Mask", noIcon, "C", noMark, plain,
		/* [3] */
		"Icon Family", noIcon, "C", noMark, plain
	}
};

resource 'MENU' (131) {
	131,
	textMenuProc,
	allEnabled,
	enabled,
	"Select",
	{	/* array: 4 elements */
		/* [1] */
		"All", noIcon, "A", noMark, plain,
		/* [2] */
		"Similar", noIcon, noKey, noMark, plain,
		/* [3] */
		"Deselect", noIcon, "D", noMark, plain,
		/* [4] */
		"Inverse", noIcon, "I", noMark, plain
	}
};

resource 'MENU' (130) {
	130,
	textMenuProc,
	0x7FFFFBFB,
	enabled,
	"Edit",
	{	/* array: 12 elements */
		/* [1] */
		"Undo", noIcon, "Z", noMark, plain,
		/* [2] */
		"Redo", noIcon, "Z", noMark, plain,
		/* [3] */
		"-", noIcon, noKey, noMark, plain,
		/* [4] */
		"Cut", noIcon, "X", noMark, plain,
		/* [5] */
		"Copy", noIcon, hierarchicalMenu, "�", plain,
		/* [6] */
		"Paste", noIcon, hierarchicalMenu, "�", plain,
		/* [7] */
		"Clear", noIcon, noKey, noMark, plain,
		/* [8] */
		"Select", noIcon, hierarchicalMenu, "�", plain,
		/* [9] */
		"Transform", noIcon, hierarchicalMenu, "�", plain,
		/* [10] */
		"Adjust�", noIcon, "U", noMark, plain,
		/* [11] */
		"-", noIcon, noKey, noMark, plain,
		/* [12] */
		"Preferences�", noIcon, ";", noMark, plain
	}
};

resource 'MENU' (129) {
	129,
	textMenuProc,
	0x7FFFFEF7,
	enabled,
	"File",
	{	/* array: 10 elements */
		/* [1] */
		"New Icon", noIcon, "N", noMark, plain,
		/* [2] */
		"Open Icon", noIcon, "O", noMark, plain,
		/* [3] */
		"Close", noIcon, "W", noMark, plain,
		/* [4] */
		"-", noIcon, noKey, noMark, plain,
		/* [5] */
		"Save", noIcon, "S", noMark, plain,
		/* [6] */
		"Save As�", noIcon, "S", noMark, plain,
		/* [7] */
		"Save Into File�", noIcon, noKey, noMark, plain,
		/* [8] */
		"Revert", noIcon, noKey, noMark, plain,
		/* [9] */
		"-", noIcon, noKey, noMark, plain,
		/* [10] */
		"Quit", noIcon, "Q", noMark, plain
	}
};

resource 'MENU' (136) {
	136,
	textMenuProc,
	allEnabled,
	enabled,
	"Colors",
	{	/* array: 2 elements */
		/* [1] */
		"Mac OS System Palette", noIcon, noKey, noMark, plain,
		/* [2] */
		"Windows System Palette", noIcon, noKey, noMark, plain
	}
};

resource 'MENU' (135) {
	135,
	textMenuProc,
	0x7FFFFEEB,
	enabled,
	"Icon",
	{	/* array: 10 elements */
		/* [1] */
		"Zoom In", noIcon, "=", noMark, plain,
		/* [2] */
		"Zoom Out", noIcon, "-", noMark, plain,
		/* [3] */
		"-", noIcon, noKey, noMark, plain,
		/* [4] */
		"Colors", noIcon, hierarchicalMenu, "�", plain,
		/* [5] */
		"-", noIcon, noKey, noMark, plain,
		/* [6] */
		"Insert�", noIcon, "K", noMark, plain,
		/* [7] */
		"Info�", noIcon, "I", noMark, plain,
		/* [8] */
		"Show Pixel Grid", noIcon, "G", noMark, plain,
		/* [9] */
		"-", noIcon, noKey, noMark, plain,
		/* [10] */
		"Open In External Editor", noIcon, noKey, noMark, plain
	}
};

resource 'MENU' (137) {
	137,
	textMenuProc,
	0x7FFFFFCF,
	enabled,
	"Windows",
	{	/* array: 6 elements */
		/* [1] */
		"Show Tools", noIcon, "1", noMark, plain,
		/* [2] */
		"Show Members", noIcon, "2", noMark, plain,
		/* [3] */
		"Show Preview", noIcon, "3", noMark, plain,
		/* [4] */
		"Show Colors", noIcon, "4", noMark, plain,
		/* [5] */
		"-", noIcon, noKey, noMark, plain,
		/* [6] */
		"-", noIcon, noKey, noMark, plain
	}
};

resource 'DLOG' (3002, "Save File", purgeable) {
	{185, 272, 401, 639},
	dBoxProc,
	invisible,
	noGoAway,
	0x746D4449,
	3002,
	"",
	noAutoCenter
};

resource 'DLOG' (2000, "Nav Custom Items", purgeable) {
	{253, 278, 283, 547},
	1024,
	visible,
	goAway,
	0x0,
	2000,
	"DITL 2000 from iconmangler.�.rsrc",
	noAutoCenter
};

resource 'DLOG' (3001, "Open File", purgeable) {
	{100, 100, 315, 472},
	dBoxProc,
	invisible,
	noGoAway,
	0x0,
	3001,
	"",
	noAutoCenter
};

resource 'DLOG' (129, "Register") {
	{178, 612, 313, 962},
	1043,
	invisible,
	goAway,
	0x0,
	129,
	"Register�",
	alertPositionMainScreen
};

resource 'DLOG' (128, "About") {
	{100, 100, 400, 556},
	plainDBox,
	invisible,
	noGoAway,
	0x0,
	128,
	"About",
	alertPositionMainScreen
};

resource 'FREF' (129) {
	'****',
	1,
	""
};

resource 'FREF' (128) {
	'APPL',
	0,
	""
};

resource 'FREF' (1) {
	'fold',
	3,
	""
};

resource 'FREF' (2) {
	'disk',
	4,
	""
};

resource 'FREF' (130) {
	'Icon',
	2,
	""
};

resource 'FREF' (131) {
	'fold',
	3,
	""
};

resource 'FREF' (132) {
	'disk',
	4,
	""
};

resource 'FREF' (133) {
	'ICO ',
	5,
	""
};

resource 'FREF' (134) {
	'TIFF',
	6,
	""
};

resource 'vers' (1) {
	0x2,
	0x0,
	release,
	0x0,
	0,
	"2.0",
	"Iconographer 2.0\n�1998-2000 Mihai Parpar"
	"ita"
};

resource 'vers' (2) {
	0x2,
	0x0,
	release,
	0x0,
	0,
	"2.0",
	"http://www.mscape.com/"
};

resource 'dlgx' (-6042) {
	versionZero {
		9
	}
};

resource 'dlgx' (129) {
	versionZero {
		15
	}
};

resource 'dlgx' (3002) {
	versionZero {
		9
	}
};

resource 'dlgx' (-6043) {
	versionZero {
		9
	}
};

resource 'dlgx' (128) {
	versionZero {
		15
	}
};

resource 'dlgx' (3001) {
	versionZero {
		9
	}
};

resource 'DITL' (3002, purgeable) {
	{	/* array DITLarray: 13 elements */
		/* [1] */
		{161, 277, 181, 357},
		Button {
			enabled,
			"Save"
		},
		/* [2] */
		{130, 277, 150, 357},
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
		{8, 267, 24, 363},
		UserItem {
			enabled
		},
		/* [5] */
		{32, 277, 52, 357},
		Button {
			enabled,
			"Eject"
		},
		/* [6] */
		{60, 277, 80, 357},
		Button {
			enabled,
			"Desktop"
		},
		/* [7] */
		{29, 12, 127, 261},
		UserItem {
			enabled
		},
		/* [8] */
		{6, 12, 25, 261},
		UserItem {
			enabled
		},
		/* [9] */
		{119, 275, 120, 359},
		Picture {
			disabled,
			11
		},
		/* [10] */
		{157, 15, 173, 259},
		EditText {
			enabled,
			""
		},
		/* [11] */
		{136, 15, 152, 227},
		StaticText {
			disabled,
			"Save icon as:"
		},
		/* [12] */
		{88, 277, 108, 357},
		UserItem {
			disabled
		},
		/* [13] */
		{185, 11, 205, 261},
		Control {
			enabled,
			2001
		}
	}
};

resource 'DITL' (2000, purgeable) {
	{	/* array DITLarray: 1 elements */
		/* [1] */
		{6, 8, 26, 258},
		Control {
			enabled,
			2000
		}
	}
};

resource 'DITL' (3001, "Select Object", purgeable) {
	{	/* array DITLarray: 12 elements */
		/* [1] */
		{155, 283, 175, 363},
		Button {
			enabled,
			"Open"
		},
		/* [2] */
		{124, 283, 144, 363},
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
		{30, 263, 46, 365},
		UserItem {
			enabled
		},
		/* [5] */
		{51, 283, 71, 363},
		Button {
			enabled,
			"Eject"
		},
		/* [6] */
		{79, 283, 99, 363},
		Button {
			enabled,
			"Desktop"
		},
		/* [7] */
		{51, 11, 181, 261},
		UserItem {
			enabled
		},
		/* [8] */
		{28, 11, 47, 261},
		UserItem {
			enabled
		},
		/* [9] */
		{111, 282, 112, 364},
		Picture {
			disabled,
			11
		},
		/* [10] */
		{185, 283, 205, 363},
		Button {
			enabled,
			"Select"
		},
		/* [11] */
		{6, 9, 23, 392},
		StaticText {
			disabled,
			"Select the file or folder whose icon you"
			" want to replace."
		},
		/* [12] */
		{185, 11, 205, 261},
		Control {
			enabled,
			2001
		}
	}
};

resource 'DITL' (129, "Registration") {
	{	/* array DITLarray: 9 elements */
		/* [1] */
		{102, 270, 122, 338},
		Button {
			enabled,
			"OK"
		},
		/* [2] */
		{102, 190, 121, 254},
		Button {
			enabled,
			"Cancel"
		},
		/* [3] */
		{102, 7, 122, 167},
		Button {
			enabled,
			"Purchase Registration"
		},
		/* [4] */
		{12, 136, 28, 336},
		EditText {
			enabled,
			""
		},
		/* [5] */
		{40, 136, 56, 336},
		EditText {
			enabled,
			""
		},
		/* [6] */
		{68, 136, 84, 336},
		EditText {
			enabled,
			""
		},
		/* [7] */
		{12, 8, 28, 51},
		StaticText {
			disabled,
			"Name:"
		},
		/* [8] */
		{40, 8, 56, 98},
		StaticText {
			disabled,
			"Organization:"
		},
		/* [9] */
		{68, 8, 84, 131},
		StaticText {
			disabled,
			"Registration Code:"
		}
	}
};

resource 'DITL' (128, "About Box") {
	{	/* array DITLarray: 6 elements */
		/* [1] */
		{68, 120, 96, 278},
		UserItem {
			enabled
		},
		/* [2] */
		{92, 120, 116, 276},
		UserItem {
			enabled
		},
		/* [3] */
		{0, 0, 300, 456},
		UserItem {
			enabled
		},
		/* [4] */
		{253, 2, 265, 202},
		UserItem {
			disabled
		},
		/* [5] */
		{267, 2, 279, 202},
		UserItem {
			disabled
		},
		/* [6] */
		{281, 2, 293, 202},
		UserItem {
			disabled
		}
	}
};

data 'DLGX' (3002) {
	$"0843 6861 7263 6F61 6C00 0000 0000 0000"            /* .Charcoal....... */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"000C 0000 0000 0000 0004 0004 0000 0000"            /* ................ */
	$"000D 0002 0000 0000 0000 0000 0000 0001"            /* ................ */
	$"0000 0000 0000 0000 0000 000A 0000 0000"            /* ................ */
	$"0000 0000 0000 0002 0000 0000 0000 0000"            /* ................ */
	$"0000 0002 0000 0000 0000 0000 0000 000A"            /* ................ */
	$"0000 0000 0000 0000 0000 000A 0000 0000"            /* ................ */
	$"0000 0000 0000 0009 0000 0000 0000 0000"            /* ................ */
	$"0000 0007 0000 0000 0000 0000 0000 0006"            /* ................ */
	$"0000 0000 0000 0000 0000 000A 0000 0000"            /* ................ */
	$"0000 0000 0000 0005 0000 0000 0000 0000"            /* ................ */
	$"0000 D650 EB00 0012 0000 0050 0020"                 /* ..�P�......P.  */
};

data 'DLGX' (2000) {
	$"0654 6563 686E 6F00 0000 0000 0000 0000"            /* .Techno......... */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"000C 0000 0000 0000 0004 0004 0000 0000"            /* ................ */
	$"0001 0005 0000 0000 0000 0000 0000"                 /* .............. */
};

data 'DLGX' (3001) {
	$"0654 6563 686E 6F00 0000 0000 0000 0000"            /* .Techno......... */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"000C 0000 0000 0000 0004 0004 0000 0000"            /* ................ */
	$"000C 0002 0000 0000 0000 0000 0000 0001"            /* ................ */
	$"0000 0000 0000 0000 0000 000A 0000 0000"            /* ................ */
	$"0000 0000 0000 0002 0000 0000 0000 0000"            /* ................ */
	$"0000 0002 0000 0000 0000 0000 0000 000A"            /* ................ */
	$"0000 0000 0000 0000 0000 000A 0000 0000"            /* ................ */
	$"0000 0000 0000 0009 0000 0000 0000 0000"            /* ................ */
	$"0000 0002 0000 0000 0000 0000 0000 0006"            /* ................ */
	$"0000 0000 0000 0000 0000 0005 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000"                                               /* .. */
};

data 'DLGX' (129) {
	$"0654 6563 686E 6F00 0000 0000 0000 0000"            /* .Techno......... */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"000C 0000 0000 0000 0004 0004 0000 0000"            /* ................ */
	$"0009 0000 0000 0000 0000 0000 0000 0001"            /* ................ */
	$"0000 0000 0000 0000 0000 0002 0000 0000"            /* ................ */
	$"0000 0000 0000 0007 0000 0000 0000 0000"            /* ................ */
	$"0000 0007 0000 0000 0000 0000 0000 0007"            /* ................ */
	$"0000 0000 0000 0000 0000 0006 0000 0000"            /* ................ */
	$"0000 0000 0000 0006 0000 0000 0000 0000"            /* ................ */
	$"0000 0006 0000 0000 0000 0000 0000"                 /* .............. */
};

data 'DLGX' (128) {
	$"0743 6869 6361 676F 0000 0000 0000 0000"            /* .Chicago........ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"000C 0000 0000 0000 0004 0004 0000 0000"            /* ................ */
	$"0006 000A 0000 0000 0000 0000 0000 000A"            /* ................ */
	$"0000 0000 0000 0000 0000 000A 0000 0000"            /* ................ */
	$"0000 0000 0000 000A 0000 0000 0000 0000"            /* ................ */
	$"0000 000A 0000 0000 0000 0000 0000 000A"            /* ................ */
	$"0000 0000 0000 0000 0000"                           /* .......... */
};

data 'ictb' (132) {
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0007 0028 8007 003C 0001 0000 0009 0000"            /* ...(�..<........ */
	$"0000 0000 FFFF FFFF FFFF 0000 0050 0000"            /* ....������...P.. */
	$"0009 0000 0000 0000 FFFF FFFF FFFF 0000"            /* ........������.. */
	$"0647 656E 6576 61"                                  /* .Geneva */
};

data 'ictb' (129) {
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0007 0024 0000 0000 000C 0000 0000 0000"            /* ...$............ */
	$"FFFF FFFF FFFF 0000"                                /* ������.. */
};

data 'ictb' (128) {
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000"                      /* ............ */
};

data 'ictb' (2000) {
	$"0000 0000"                                          /* .... */
};

data 'ictb' (3002) {
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000"                                          /* .... */
};

data 'ictb' (3001) {
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
};

resource 'mctb' (204) {
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

resource 'mctb' (207) {
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

resource 'mctb' (203) {
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

resource 'mctb' (202) {
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

resource 'mctb' (205) {
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

resource 'mctb' (129, "File menu") {
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

resource 'mctb' (128) {
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

resource 'mctb' (130) {
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

resource 'mctb' (131) {
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

resource 'mctb' (132) {
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

resource 'mctb' (133) {
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

resource 'mctb' (134) {
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

resource 'mctb' (135, "Icon menu") {
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

resource 'mctb' (137) {
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

resource 'dctb' (3002, purgeable) {
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

resource 'dctb' (2000) {
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

resource 'dctb' (3001) {
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

data 'Mcmd' (207) {
	$"0000"                                               /* .. */
};

data 'Mcmd' (129) {
	$"0000"                                               /* .. */
};

data 'Mcmd' (201) {
	$"0002 0000 0000 0000 0000"                           /* .......... */
};

data 'Mcmd' (131) {
	$"0003 0000 0000 0000 0000 0000 0000"                 /* .............. */
};

data 'Mcmd' (132) {
	$"0000"                                               /* .. */
};

data 'Mcmd' (128) {
	$"0002 0000 0000 0000 0000"                           /* .......... */
};

data 'Mcmd' (130) {
	$"0009 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000"                                     /* ...... */
};

data 'Mcmd' (133) {
	$"0000"                                               /* .. */
};

data 'Mcmd' (134) {
	$"0000"                                               /* .. */
};

data 'Mcmd' (2000) {
	$"0000"                                               /* .. */
};

data 'Mcmd' (135) {
	$"0000"                                               /* .. */
};

data 'Mcmd' (136) {
	$"0000"                                               /* .. */
};

data 'Mcmd' (137) {
	$"0000"                                               /* .. */
};

data 'Mcmd' (1) {
	$"0000"                                               /* .. */
};

resource 'STR#' (150, "App Balloon Help", purgeable) {
	{	/* array StringArray: 1 elements */
		/* [1] */
		"Iconographer\n\nUse this application to ed"
		"it the icons of files and folders. Drag "
		"an item onto the application in order to"
		" edit its icon."
	}
};

resource 'STR#' (151, "Apple Menu Balloon Help", purgeable) {
	{	/* array StringArray: 4 elements */
		/* [1] */
		"Displays information about this version "
		"of Iconographer.",
		/* [2] */
		"Displays information about this version "
		"of Iconographer.\n\nNot available because "
		"the about box cannot be shown at this ti"
		"me.",
		/* [3] */
		"Allows you to register Iconographer, thu"
		"s removing the shareware reminder.",
		/* [4] */
		"Allows you to register Iconographer, thu"
		"s removing the shareware reminder.\n\nNot "
		"available because the registration dialo"
		"g cannot be shown at this time."
	}
};

resource 'STR#' (161, "Registration Balloon Help", purgeable) {
	{	/* array StringArray: 6 elements */
		/* [1] */
		"Click here to verify your registration c"
		"ode. If it is valid then Iconographer wi"
		"ll be registered.",
		/* [2] */
		"This button will abort the registration.",
		/* [3] */
		"Click here to open up the Register appli"
		"cation. You can then fill out the form, "
		"send it to Kagi and pay for Iconographer"
		", thus removing the shareware messsages.",
		/* [4] */
		"Your name should be entered here. Please"
		" make sure to type it in exactly as it a"
		"ppears in the registration e-mail, since"
		" the serial number is based on it.",
		/* [5] */
		"Optionally, your company name can be ent"
		"ered here.",
		/* [6] */
		"The registration number you received goe"
		"s here. "
	}
};

resource 'STR#' (160, "About Balloon Help", purgeable) {
	{	/* array StringArray: 3 elements */
		/* [1] */
		"Click here to e-mail the author (require"
		"s Internet Config).",
		/* [2] */
		"Click here to visit the Mscape Software "
		"homepage (requires Internet Config).",
		/* [3] */
		"If you�ve paid, thank your very much. If"
		" you haven�t, perhaps you should conside"
		"r it."
	}
};

resource 'STR#' (153, "Edit Balloon Help", purgeable) {
	{	/* array StringArray: 22 elements */
		/* [1] */
		"Edit Menu\n\nUse this menu to undo and red"
		"o actions, to cut and paste or to set th"
		"e Iconographer preferences.",
		/* [2] */
		"Edit Menu\n\nUse this menu to undo and red"
		"o actions, to cut and paste or to set th"
		"e Iconographer preferences.\n\nNot availab"
		"le because the front-most window does no"
		"t support these operations.",
		/* [3] */
		"Reverses the effects of the previous act"
		"ion.",
		/* [4] */
		"Reverses the effects of the previous act"
		"ion.\n\nNot available because all of the a"
		"ctions have been undone, or because the "
		"last action cannot be undone.",
		/* [5] */
		"Reapplies the effects of the action that"
		" was just un-done.",
		/* [6] */
		"Reapplies the effects of the action that"
		" was just un-done.\n\nNot available becaus"
		"e no action was undone.",
		/* [7] */
		"Deletes the current selection and places"
		" its contents in the clipboard.",
		/* [8] */
		"Deletes the current selection and places"
		" its contents in the clipboard.\n\nNot ava"
		"ilable because there is no selection or "
		"there are no open editors.",
		/* [9] */
		"Places the contents of the current selec"
		"tion in the clipboard.",
		/* [10] */
		"Places the contents of the current selec"
		"tion in the clipboard.\n\nNot available be"
		"cause there is no selection or there are"
		" no open editors.",
		/* [11] */
		"Inserts the contents of the clipboard in"
		"to the current editor.",
		/* [12] */
		"Inserts the contents of the clipboard in"
		"to the current editor.\n\nNot available be"
		"cause the clipboard is does not contain "
		"any image data, or because there are no "
		"open editors.",
		/* [13] */
		"Deletes the contents of the current sele"
		"ction.",
		/* [14] */
		"Deletes the contents of the current sele"
		"ction.\n\nNot available because there is n"
		"o selection or there are no open editors"
		".",
		/* [15] */
		"Performs various selection operations.",
		/* [16] */
		"Performs various selection operations.\n\n"
		"Not available because there are no open "
		"icons.",
		/* [17] */
		"Performs various transformations on imag"
		"es.",
		/* [18] */
		"Performs various transformations on imag"
		"es.\n\nNot available because there are no "
		"open icons.",
		/* [19] */
		"Makes color adjustements to the icon.",
		/* [20] */
		"Makes color adjustements to the icon.\n\nN"
		"ot available because there are no open i"
		"cons.",
		/* [21] */
		"Opens a dialog box which allows you to c"
		"ustomize various aspects of Iconographer"
		"�s operation.",
		/* [22] */
		"Opens a dialog box which allows you to c"
		"ustomize various aspects of Iconographer"
		"�s operation.\n\nNot available because the"
		" preferences cannot be edited at this mo"
		"ment."
	}
};

resource 'STR#' (154, "Select Balloon Help", purgeable) {
	{	/* array StringArray: 8 elements */
		/* [1] */
		"Selects the entire icon.",
		/* [2] */
		"Selects the entire icon.\n\nNot available "
		"because a selection cannot be made at th"
		"is time.",
		/* [3] */
		"Selects colors similar to the ones found"
		" in the current selection.",
		/* [4] */
		"Selects colors similar to the ones found"
		" in the current selection.\n\nNot availabl"
		"e because there is no selection availabl"
		"e.",
		/* [5] */
		"Removes the current selection.",
		/* [6] */
		"Removes the current selection.\n\nNot avai"
		"lable because there is no selection avai"
		"lable.",
		/* [7] */
		"Selects what is not currently selected a"
		"nd vice-versa.",
		/* [8] */
		"Selects what is not currently selected a"
		"nd vice-versa.\n\nNot available because th"
		"ere is no selection available."
	}
};

resource 'STR#' (155, "Transform Balloon Help", purgeable) {
	{	/* array StringArray: 5 elements */
		/* [1] */
		"Rotates the current selection (or the en"
		"tire image if a selection is not availab"
		"le) 90 degrees in a clockwise direction.",
		/* [2] */
		"Rotates the current selection (or the en"
		"tire image if a selection is not availab"
		"le) 90 degrees in a counter-clockwise di"
		"rection.",
		/* [3] */
		"Mirrors the current selection (or the en"
		"tire image if a selection is not availab"
		"le) across the vertical axis.",
		/* [4] */
		"Mirrors the current selection (or the en"
		"tire image if a selection is not availab"
		"le) across the horizontal axis.",
		/* [5] */
		"Inverts (makes �negative�) the current s"
		"election (or the entire image if a selec"
		"tion is not available)."
	}
};

resource 'STR#' (156, "Paste Balloon Help", purgeable) {
	{	/* array StringArray: 6 elements */
		/* [1] */
		"Pastes the clipboard contents into a flo"
		"ated selection.",
		/* [2] */
		"Separates the clipboard contents as an i"
		"con and as mask, which will be merged wi"
		"th the current icon and mask contents.",
		/* [3] */
		"Pastes the clipboard contents scaled to "
		"the dimensions of the current selection.",
		/* [4] */
		"Pastes the clipboard contents scaled to "
		"the dimensions of the current selection."
		"\n\nNot available because no selection has"
		" been made.",
		/* [5] */
		"Pastes an entire icon family into the cu"
		"rrent open icon.",
		/* [6] */
		"Pastes an entire icon family into the cu"
		"rrent open icon.\n\nNot available because "
		"the clipboard does not contain an icon f"
		"amily."
	}
};

resource 'STR#' (157, "Copy Balloon Help", purgeable) {
	{	/* array StringArray: 6 elements */
		/* [1] */
		"Places the contents of the current selec"
		"tion in the clipboard.",
		/* [2] */
		"Places the contents of the current selec"
		"tion in the clipboard.\n\nNot available be"
		"cause there is no selection or there are"
		" no open editors.",
		/* [3] */
		"Places the contents of the current icon "
		"and mask into the clipboard.",
		/* [4] */
		"Places the contents of the current icon "
		"and mask into the clipboard.\n\nNot availa"
		"bles because there are no open icons.",
		/* [5] */
		"Places all of the depths and sizes of th"
		"e open icon into the clipboard.",
		/* [6] */
		"Places all of the depths and sizes of th"
		"e open icon into the clipboard.\n\nNot ava"
		"ilable because there are no open icons."
	}
};

resource 'STR#' (159, "Colors Balloon Help", purgeable) {
	{	/* array StringArray: 2 elements */
		/* [1] */
		"The standard colors used by the Macintos"
		"h. When the display is set to 16 colors,"
		" only these shades will be visible.",
		/* [2] */
		"The standard colors used by Windows. Whe"
		"n a PC display is set to 16 colors, only"
		" these shades will be visible."
	}
};

resource 'STR#' (152, "File Balloon Help", purgeable) {
	{	/* array StringArray: 18 elements */
		/* [1] */
		"File Menu\n\nUse this menu to perform oper"
		"ations with files and folders.",
		/* [2] */
		"File Menu\n\nUse this menu to perform oper"
		"ations with files and folders.\n\nNot avai"
		"lable because file operations cannot be "
		"performed at the moment.",
		/* [3] */
		"Creates a new editor window with an empt"
		"y icon.",
		/* [4] */
		"Creates a new editor window with an empt"
		"y icon.\n\nNot available because no more e"
		"ditors can be created.",
		/* [5] */
		"Opens an item�s icon into a new editor w"
		"indow. Different icon formats (Mac OS, W"
		"indows, Mac OS X Server) can be chosen.",
		/* [6] */
		"Opens an item�s icon into a new editor w"
		"indow. Different icon formats (Mac OS, W"
		"indows, Mac OS X Server) can be chosen.\n"
		"\nNot available because no more icons can"
		" be opened.",
		/* [7] */
		"Closes the front-most icon.",
		/* [8] */
		"Closes the front-most icon.\n\nNot availab"
		"le because no icons are opened.",
		/* [9] */
		"Saves the front-most icon.",
		/* [10] */
		"Saves the front-most icon.\n\nNot availabl"
		"e because there are no open icons, or be"
		"cause the front-most icon doesn�t need t"
		"o be saved.",
		/* [11] */
		"Saves the front-most icon in a different"
		" file.",
		/* [12] */
		"Saves the front-most icon in a different"
		" file.\n\nNot available because there are "
		"no open icons.",
		/* [13] */
		"Inserts the front-most icon into a diffe"
		"rent file (without replacing the file�s "
		"contents).",
		/* [14] */
		"Inserts the front-most icon into a diffe"
		"rent file (without replacing the file�s "
		"contents).\n\nNot available because there "
		"are no open icons.",
		/* [15] */
		"Restore the front-most icon to the last "
		"saved version.",
		/* [16] */
		"Restore the front-most icon to the last "
		"saved version.\n\nNot available because th"
		"ere are no open icons or because the fro"
		"nt-most icon has not been saved yet.",
		/* [17] */
		"Exits Iconographer, first asking if any "
		"unsaved changes should be saved.",
		/* [18] */
		"Exits Iconographer, first asking if any "
		"unsaved changes should be saved.\n\nNot av"
		"ailable because Iconographer cannot be e"
		"xited at this time."
	}
};

resource 'STR#' (158, "Icon Balloon Help", purgeable) {
	{	/* array StringArray: 15 elements */
		/* [1] */
		"Icon Menu\n\nThis menu can be used to modi"
		"fy certain attributes of the front-most "
		"icon.",
		/* [2] */
		"Icon Menu\n\nThis menu can be used to modi"
		"fy certain attributes of the front-most "
		"icon.\n\nNot available because there are n"
		"o open editors.",
		/* [3] */
		"This command increases the magnification"
		" level of the front-most icon.",
		/* [4] */
		"This command increases the magnification"
		" level of the front-most icon.\n\nNot avai"
		"lable because the icon is at maximum mag"
		"nification, or because there are no open"
		" icons.",
		/* [5] */
		"This command decreases the magnification"
		" level of the front-most icon.",
		/* [6] */
		"This command decreases the magnification"
		" level of the front-most icon.\n\nNot avai"
		"lable because the icon is at minimum mag"
		"nification, or because there are no open"
		" icons.",
		/* [7] */
		"This command allows you to change the co"
		"lor palette used for the current icon.\n\n"
		"Not available because the current depth "
		"does not support different color depths,"
		" or because there are no open icons.",
		/* [8] */
		"Displays a dialog which allows you to in"
		"sert a new icon into the current file.",
		/* [9] */
		"Displays a dialog which allows you to in"
		"sert a new icon into the current file.\n\n"
		"Not available because no file is open (t"
		"he front-most window must be an icon bro"
		"wser).",
		/* [10] */
		"Displays a dialog which allows you to ch"
		"ange the ID, name and flags of the curre"
		"nt icon.",
		/* [11] */
		"Displays a dialog which allows you to ch"
		"ange the ID, name and flags of the curre"
		"nt icon.\n\nNot available because there ar"
		"e no open icons.",
		/* [12] */
		"Toggles the visibily of the pixel grid ("
		"thin white lines which separate one magn"
		"ified pixel from another).",
		/* [13] */
		"Toggles the visibily of the pixel grid ("
		"thin white lines which separate one magn"
		"ified pixel from another).\n\nNot availabl"
		"e because no icons are open.",
		/* [14] */
		"Opens the current icon into the external"
		" that has been selected in the preferenc"
		"es dialog.",
		/* [15] */
		"Opens the current icon into the external"
		" that has been selected in the preferenc"
		"es dialog.\n\nNot available because there "
		"are no icons open."
	}
};

resource 'STR#' (162, "Windows Balloon Help", purgeable) {
	{	/* array StringArray: 6 elements */
		/* [1] */
		"Windows Menu\n\nThis menu can be used to s"
		"how and hide the palettes used by Iconog"
		"rapher, and to move among the icons open"
		".",
		/* [2] */
		"Windows Menu\n\nThis menu can be used to s"
		"how and hide the palettes used by Iconog"
		"rapher, and to move among the icons open"
		".\n\nNot available because windows cannot "
		"be manipulated at the moment.",
		/* [3] */
		"Toggles the visibility of the tools pale"
		"tte, a floating window which contains al"
		"l of the drawing tools that can be used "
		"to manipulate icons.",
		/* [4] */
		"Toggles the visibility of the members pa"
		"lette, a floating window which contains "
		"all of the members (parts at various siz"
		"es and depths) of the front-most icon.",
		/* [5] */
		"Toggles the visibility of the preview pa"
		"lette, a floating window which displays "
		"the front-most icon at various sizes aga"
		"inst varied backgrounds.",
		/* [6] */
		"Toggles the visibility of the colors pal"
		"ette, a floating window which contains v"
		"arious devices used to select colors."
	}
};

resource 'STR#' (128, "Default Names", purgeable) {
	{	/* array StringArray: 34 elements */
		/* [1] */
		"Iconographer",
		/* [2] */
		"Iconographer Preferences",
		/* [3] */
		"OK",
		/* [4] */
		"Save",
		/* [5] */
		"Cancel",
		/* [6] */
		"Don�t Save",
		/* [7] */
		"Register",
		/* [8] */
		"Not Yet",
		/* [9] */
		":Register",
		/* [10] */
		"http://order.kagi.com/?QEJ",
		/* [11] */
		"Register Online",
		/* [12] */
		"Launch Register App",
		/* [13] */
		"Not Registered",
		/* [14] */
		"mailto:mihai@mscape.com",
		/* [15] */
		"http://www.mscape.com/products/iconograp"
		"her.html",
		/* [16] */
		"Show Colors",
		/* [17] */
		"Hide Colors",
		/* [18] */
		"Show Members",
		/* [19] */
		"Hide Members",
		/* [20] */
		"Show Preview",
		/* [21] */
		"Hide Preview",
		/* [22] */
		"Show Tools",
		/* [23] */
		"Hide Tools",
		/* [24] */
		"Iconographer Help",
		/* [25] */
		"Email Author",
		/* [26] */
		"Iconographer Homepage",
		/* [27] */
		":Iconographer Support:Help:toc.html",
		/* [28] */
		"Revert",
		/* [29] */
		"Show Pixel Grid",
		/* [30] */
		"Hide Pixel Grid",
		/* [31] */
		"Add Member",
		/* [32] */
		"Insert Icon",
		/* [33] */
		"Open Help",
		/* [34] */
		"Continue"
	}
};

resource 'STR#' (130, "Prompts", purgeable) {
	{	/* array StringArray: 13 elements */
		/* [1] */
		"Do you want to save changes to the <app "
		"name> document �<file name>� before clos"
		"ing it?",
		/* [2] */
		"Select the file or folder whose icon you"
		" want to edit.",
		/* [3] */
		"Select a name and location for the icon "
		"to be saved in.",
		/* [4] */
		"Select the file or folder whose icon you"
		" want to replace.",
		/* [5] */
		"Save Into File",
		/* [6] */
		"Open Icon",
		/* [7] */
		"You have used <app name> to create <no o"
		"f icons> icons. If you continue to use i"
		"t, please pay the $15 shareware fee. Thi"
		"s can be done online, or by using the en"
		"closed Register application.",
		/* [8] */
		"Select the Windows icon (.ico file) you "
		"want to edit.",
		/* [9] */
		"Select the Mac OS X Server icon (.tiff f"
		"ile) you want to edit.",
		/* [10] */
		"An icon with the ID <ID> already exists "
		"in the file �<file name>.� Do you wish t"
		"o replace it?",
		/* [11] */
		"Do you want to revert to the previously "
		"saved version of the <app name> document"
		" �<file name>�?",
		/* [12] */
		"<app name> can be registered online or t"
		"hrough mail with various payment methods"
		". Please select the way in which you wou"
		"ld like to order your <app name> registr"
		"ation code.",
		/* [13] */
		"Welcome to <app name> 2.0. If this is yo"
		"ur first time using it, and you would li"
		"ke to get more information on its operat"
		"ion, extensive documentation is availabl"
		"e. Would you like to open the documentat"
		"ion or get started right away?"
	}
};

resource 'STR#' (129, "Standard Errors", purgeable) {
	{	/* array StringArray: 16 elements */
		/* [1] */
		"The file you selected is already open in"
		" another program.",
		/* [2] */
		"This development copy of <app name> expi"
		"red on October 1, 2000. Please download "
		"a newer version.",
		/* [3] */
		"A needed resource is missing. <app name>"
		" could be corrupted, please reinstall th"
		"e program.",
		/* [4] */
		"<app name> requires System 7.5.3 or abov"
		"e.",
		/* [5] */
		"AppleEvents could not be initialized, <a"
		"pp name> cannot continue.",
		/* [6] */
		"There was an error while initializing th"
		"e Appearance Mangler, <app name> cannot "
		"continue.",
		/* [7] */
		"There was error while initializing the m"
		"enu bar. <app name>�s resource fork is m"
		"ost likely corrupted, please reinstall.",
		/* [8] */
		"Cannot launch this URL. Internet Config "
		"must be installed.",
		/* [9] */
		"A new editor could not be created. Most "
		"likely you are low on memory. Either clo"
		"se some of the open editors, or give <ap"
		"p name> more memory.",
		/* [10] */
		"<app name> is low on memory. The drawing"
		" states of this editor will be disposed "
		"in order to make more room.",
		/* [11] */
		"<app name> has run out of memory. This e"
		"ditor must be closed in order to make mo"
		"re room.",
		/* [12] */
		"The �Register� application could not be "
		"found. Please reinstall <app name>.",
		/* [13] */
		"The registration code that you have type"
		"d is incorrect. Please enter it EXACTLY "
		"as it is shown in the email that you hav"
		"e received.",
		/* [14] */
		"Thank you for registering <app name>.",
		/* [15] */
		"<app name> requires the Appearance Manag"
		"er to be installed. Please install Mac O"
		"S 8.0 and higher, or get the Appearance "
		"Manager SDK from Apple.",
		/* [16] */
		"Cannot launch this URL. Internet Config "
		"must be installed.\n\nIf you wish to regis"
		"ter you must visit http://order.kagi.com"
		"/?QEJ with your web browser."
	}
};

data 'hmnu' (128, "Apple", purgeable) {
	$"0002 0000 0000 0000 0000 0003 0004 0100"            /* ................ */
	$"0004 0100 0014 0003 0097 0001 0097 0002"            /* .........�...�.. */
	$"0000 0000 0000 0000 0014 0003 0097 0003"            /* .............�.. */
	$"0097 0004 0000 0000 0000 0000"                      /* .�.......... */
};

data 'hmnu' (130, "Edit", purgeable) {
	$"0002 0000 0000 0000 0000 000D 0004 0100"            /* ................ */
	$"0014 0003 0099 0001 0099 0002 0000 0000"            /* .....�...�...... */
	$"0099 0002 0014 0003 0099 0003 0099 0004"            /* .�.......�...�.. */
	$"0000 0000 0000 0000 0014 0003 0099 0005"            /* .............�.. */
	$"0099 0006 0000 0000 0000 0000 0004 0100"            /* .�.............. */
	$"0014 0003 0099 0007 0099 0008 0000 0000"            /* .....�...�...... */
	$"0000 0000 0014 0003 0099 0009 0099 000A"            /* .........�...�.. */
	$"0000 0000 0000 0000 0014 0003 0099 000B"            /* .............�.. */
	$"0099 000C 0000 0000 0000 0000 0014 0003"            /* .�.............. */
	$"0099 000D 0099 000E 0000 0000 0000 0000"            /* .�...�.......... */
	$"0014 0003 0099 000F 0099 0010 0000 0000"            /* .....�...�...... */
	$"0000 0000 0014 0003 0099 0011 0099 0012"            /* .........�...�.. */
	$"0000 0000 0000 0000 0014 0003 0099 0013"            /* .............�.. */
	$"0099 0014 0000 0000 0000 0000 0004 0100"            /* .�.............. */
	$"0014 0003 0099 0015 0099 0016 0000 0000"            /* .....�...�...... */
	$"0000 0000"                                          /* .... */
};

data 'hmnu' (131, "Select", purgeable) {
	$"0002 0000 0000 0000 0000 0005 0004 0100"            /* ................ */
	$"0004 0100 0014 0003 009A 0001 009A 0002"            /* .........�...�.. */
	$"0000 0000 0000 0000 0014 0003 009A 0003"            /* .............�.. */
	$"009A 0004 0000 0000 0000 0000 0014 0003"            /* .�.............. */
	$"009A 0005 009A 0006 0000 0000 0000 0000"            /* .�...�.......... */
	$"0014 0003 009A 0007 009A 0008 0000 0000"            /* .....�...�...... */
	$"0000 0000"                                          /* .... */
};

data 'hmnu' (132, "Transform", purgeable) {
	$"0002 0000 0000 0000 0000 0008 0004 0100"            /* ................ */
	$"0004 0100 0014 0003 009B 0001 0000 0000"            /* .........�...... */
	$"0000 0000 0000 0000 0014 0003 009B 0002"            /* .............�.. */
	$"0000 0000 0000 0000 0000 0000 0004 0100"            /* ................ */
	$"0014 0003 009B 0003 0000 0000 0000 0000"            /* .....�.......... */
	$"0000 0000 0014 0003 009B 0004 0000 0000"            /* .........�...... */
	$"0000 0000 0000 0000 0004 0100 0014 0003"            /* ................ */
	$"009B 0005 0000 0000 0000 0000 0000 0000"            /* .�.............. */
};

data 'hmnu' (133, "Paste", purgeable) {
	$"0002 0000 0000 0000 0000 0005 0004 0100"            /* ................ */
	$"0004 0100 0014 0003 009C 0001 0000 0000"            /* .........�...... */
	$"0000 0000 0000 0000 0014 0003 009C 0002"            /* .............�.. */
	$"0000 0000 0000 0000 0000 0000 0014 0003"            /* ................ */
	$"009C 0003 009C 0004 0000 0000 0000 0000"            /* .�...�.......... */
	$"0014 0003 009C 0005 009C 0006 0000 0000"            /* .....�...�...... */
	$"0000 0000"                                          /* .... */
};

data 'hmnu' (134, "Copy", purgeable) {
	$"0002 0000 0000 0000 0000 0004 0004 0100"            /* ................ */
	$"0004 0100 0014 0003 009D 0001 009D 0002"            /* .........�...�.. */
	$"0000 0000 0000 0000 0014 0003 009D 0003"            /* .............�.. */
	$"009D 0004 0000 0000 0000 0000 0014 0003"            /* .�.............. */
	$"009D 0005 009D 0006 0000 0000 0000 0000"            /* .�...�.......... */
};

data 'hmnu' (136, "Colors", purgeable) {
	$"0002 0000 0000 0000 0000 0003 0004 0100"            /* ................ */
	$"0004 0100 0014 0003 009F 0001 0000 0000"            /* .........�...... */
	$"009F 0001 0000 0000 0014 0003 009F 0002"            /* .�...........�.. */
	$"0000 0000 009F 0002 0000 0000"                      /* .....�...... */
};

data 'hmnu' (129, "File", purgeable) {
	$"0002 0000 0000 0000 0000 000B 0004 0100"            /* ................ */
	$"0014 0003 0098 0001 0098 0002 0000 0000"            /* .....�...�...... */
	$"0098 0002 0014 0003 0098 0003 0098 0004"            /* .�.......�...�.. */
	$"0000 0000 0000 0000 0014 0003 0098 0005"            /* .............�.. */
	$"0098 0006 0000 0000 0000 0000 0014 0003"            /* .�.............. */
	$"0098 0007 0098 0008 0000 0000 0000 0000"            /* .�...�.......... */
	$"0004 0100 0014 0003 0098 0009 0098 000A"            /* .........�...�.. */
	$"0000 0000 0000 0000 0014 0003 0098 000B"            /* .............�.. */
	$"0098 000C 0000 0000 0000 0000 0014 0003"            /* .�.............. */
	$"0098 000D 0098 000E 0000 0000 0000 0000"            /* .�...�.......... */
	$"0014 0003 0098 000F 0098 0010 0000 0000"            /* .....�...�...... */
	$"0000 0000 0004 0100 0014 0003 0098 0011"            /* .............�.. */
	$"0098 0012 0000 0000 0000 0000"                      /* .�.......... */
};

data 'hmnu' (135, "Icon", purgeable) {
	$"0002 0000 0000 0000 0000 000B 0004 0100"            /* ................ */
	$"0014 0003 009E 0001 009E 0002 0000 0000"            /* .....�...�...... */
	$"009E 0002 0014 0003 009E 0003 009E 0004"            /* .�.......�...�.. */
	$"0000 0000 0000 0000 0014 0003 009E 0005"            /* .............�.. */
	$"009E 0006 0000 0000 0000 0000 0004 0100"            /* .�.............. */
	$"0014 0003 0000 0000 009E 0007 0000 0000"            /* .........�...... */
	$"0000 0000 0004 0100 0014 0003 009E 0008"            /* .............�.. */
	$"009E 0009 0000 0000 0000 0000 0014 0003"            /* .�.............. */
	$"009E 000A 009E 000B 0000 0000 0000 0000"            /* .�...�.......... */
	$"0014 0003 009E 000C 009E 000D 0000 0000"            /* .....�...�...... */
	$"0000 0000 0004 0100 0014 0003 009E 000E"            /* .............�.. */
	$"009E 000F 0000 0000 0000 0000"                      /* .�.......... */
};

data 'hmnu' (137, "Windows", purgeable) {
	$"0002 0000 0000 0000 0000 0005 0004 0100"            /* ................ */
	$"0014 0003 00A2 0001 00A2 0002 0000 0000"            /* .....�...�...... */
	$"0000 0000 0014 0003 00A2 0003 0000 0000"            /* .........�...... */
	$"0000 0000 0000 0000 0014 0003 00A2 0004"            /* .............�.. */
	$"0000 0000 0000 0000 0000 0000 0014 0003"            /* ................ */
	$"00A2 0005 0000 0000 0000 0000 0000 0000"            /* .�.............. */
	$"0014 0003 00A2 0006 0000 0000 0000 0000"            /* .....�.......... */
	$"0000 0000"                                          /* .... */
};

data 'hfdr' (-5696, purgeable) {
	$"0002 0000 0000 0000 0000 0001 0008 0003"            /* ................ */
	$"0096 0001"                                          /* .�.. */
};

data 'hwin' (128, "About", purgeable) {
	$"0002 0000 0000 0001 0080 6872 6374 0005"            /* .........�hrct.. */
	$"0541 626F 7574"                                     /* .About */
};

data 'hwin' (129, "Register", purgeable) {
	$"0002 0000 0000 0001 0081 6872 6374 0008"            /* .........�hrct.. */
	$"0852 6567 6973 7465 7200"                           /* .Register. */
};

data 'hrct' (129, "Register", purgeable) {
	$"0002 0000 0000 0000 0000 0006 0014 0003"            /* ................ */
	$"0000 0000 0066 010E 007A 0152 00A1 0001"            /* .....f...z.R.�.. */
	$"0014 0003 0000 0000 0066 00BE 0079 00FE"            /* .........f.�.y.� */
	$"00A1 0002 0014 0003 0000 0000 0066 0007"            /* .�...........f.. */
	$"007A 009E 00A1 0003 0014 0003 0000 0000"            /* .z.�.�.......... */
	$"000C 0088 001C 0150 00A1 0004 0014 0003"            /* ...�...P.�...... */
	$"0000 0000 0028 0088 0038 0150 00A1 0005"            /* .....(.�.8.P.�.. */
	$"0014 0003 0000 0000 0044 0088 0054 0150"            /* .........D.�.T.P */
	$"00A1 0006"                                          /* .�.. */
};

data 'hrct' (128, "About", purgeable) {
	$"0002 0000 0000 0000 0000 0003 0014 0003"            /* ................ */
	$"0000 0000 002C 002C 003E 009A 00A0 0001"            /* .....,.,.>.�.�.. */
	$"0014 0003 0000 0000 003C 0041 004E 00A1"            /* .........<.A.N.� */
	$"00A0 0002 0014 0003 0000 0000 00B0 0002"            /* .�...........�.. */
	$"00D8 006E 00A0 0003"                                /* .�.n.�.. */
};

resource 'open' (128) {
	'Mngl',
	{	/* array typeArray: 6 elements */
		/* [1] */
		'Icon',
		/* [2] */
		'WIco',
		/* [3] */
		'TIFF',
		/* [4] */
		'****',
		/* [5] */
		'fold',
		/* [6] */
		'disk'
	}
};

resource 'cctb' (2000) {
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

resource 'cctb' (2001) {
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

resource 'CNTL' (2000, "Types Pop-up", purgeable) {
	{6, 8, 26, 258},
	0,
	visible,
	100,
	4000,
	409,
	0,
	"Icon Format:"
};

resource 'CNTL' (2001, "Old Types Pop-up", purgeable) {
	{185, 11, 205, 261},
	0,
	visible,
	100,
	4000,
	409,
	0,
	"Icon Format:"
};

resource 'icl4' (-16455) {
	$"0000 0000 0000 0000 0000 0000 0000 0000"
	$"0000 0000 0000 0000 0000 0000 00BB B000"
	$"0000 0000 0000 0000 FF00 0000 0B11 B000"
	$"0000 0000 0000 00FF FF00 0000 B1CE 0000"
	$"0000 0000 0000 FFFF 0FF0 000B 1CE0 0000"
	$"0000 0000 00FF FF00 CFFC CCB1 BE00 0000"
	$"0000 0000 FFFF 00CC CCCC CB1B E000 0000"
	$"0000 00FF FF00 0CCC CCBB B1DE AD00 0000"
	$"0000 FFFF 0000 0CCC DBEB 1DEA BDC0 0000"
	$"00FF FF00 0000 CCCD BEB1 DEAE BDCC 0000"
	$"FFFF 0000 000C DCDB EB1D EFEB BBCC C000"
	$"FF00 0000 0CDD CBBE BCDE FFBB DDCC CCFF"
	$"0FF0 000C DDDC DBEB DDCC DDCC CCCC CCFF"
	$"0FF0 000D CCCD DEEC CBBB CCCC CCCC CDFF"
	$"00FF 0000 CDDD CBDB EAAE EBBD CCDD BBFF"
	$"00FF 0000 DDCC BAAE EEEA AEEE EBBB BBFF"
	$"000F F000 CCCB 03FD CCCC CCDA EAEE EEFF"
	$"000F F000 CCDC 3FDC CCCC CCDF FEEE EEFF"
	$"0000 FF0C CCB3 FDCC CCCC CCCD FF0E EEFF"
	$"0000 FF0C CAAA DCCC CCDB 333D FF00 0000"
	$"0000 0FF0 CBBB CCCC C333 4CCC DFF0 0000"
	$"0000 0FF0 CBBB CCCB 33BC CCCC DFF0 0000"
	$"0000 00FF 0BBB 4B33 3BCC CCCC DDFF 0000"
	$"0000 00FF 0CBB BB3B CCCC CCDD FFFF CCCC"
	$"0000 000F F0CB BBCC CCCC DDFF FFDD DDCC"
	$"0000 000F F0CC CCCC CCDD FFFF DDDD DCCC"
	$"0000 0000 FF0C CCCC DDFF FFDD DDDD CC00"
	$"0000 0000 FF0C CCDD FFFF DDDD DDCC C000"
	$"0000 0000 0FF0 CDFF FFDD DDDD CCC0 0000"
	$"0000 0000 0FFC FFFF DDDD CCCC 0000 0000"
	$"0000 0000 00FF FFDD CCCC CC00 0000 0000"
	$"0000 0000 00FF ECCC CC"
};

resource 'icl4' (128) {
	$"0000 0000 0000 0000 0000 0000 0000 0000"
	$"0000 0000 0000 0000 0000 0000 00BB B000"
	$"0000 0000 0000 0000 FF00 0000 0B11 B000"
	$"0000 0000 0000 00FF FF00 0000 B1CE 0000"
	$"0000 0000 0000 FFFF 0FF0 000B 1CE0 0000"
	$"0000 0000 00FF FF00 CFFC CCB1 BE00 0000"
	$"0000 0000 FFFF 00CC CCCC CB1B E000 0000"
	$"0000 00FF FF00 0CCC CCBB B1DE AD00 0000"
	$"0000 FFFF 0000 0CCC DBEB 1DEA BDC0 0000"
	$"00FF FF00 0000 CCCD BEB1 DEAE BDCC 0000"
	$"FFFF 0000 000C DCDB EB1D EFEB BBCC C000"
	$"FF00 0000 0CDD CBBE BCDE FFBB DDCC CCFF"
	$"0FF0 000C DDDC DBEB DDCC DDCC CCCC CCFF"
	$"0FF0 000D CCCD DEEC CBBB CCCC CCCC CDFF"
	$"00FF 0000 CDDD CBDB EAAE EBBD CCDD BBFF"
	$"00FF 0000 DDCC BAAE EEEA AEEE EBBB BBFF"
	$"000F F000 CCCB 03FD CCCC CCDA EAEE EEFF"
	$"000F F000 CCDC 3FDC CCCC CCDF FEEE EEFF"
	$"0000 FF0C CCB3 FDCC CCCC CCCD FF0E EEFF"
	$"0000 FF0C CAAA DCCC CCDB 333D FF00 0000"
	$"0000 0FF0 CBBB CCCC C333 4CCC DFF0 0000"
	$"0000 0FF0 CBBB CCCB 33BC CCCC DFF0 0000"
	$"0000 00FF 0BBB 4B33 3BCC CCCC DDFF 0000"
	$"0000 00FF 0CBB BB3B CCCC CCDD FFFF CCCC"
	$"0000 000F F0CB BBCC CCCC DDFF FFDD DDCC"
	$"0000 000F F0CC CCCC CCDD FFFF DDDD DCCC"
	$"0000 0000 FF0C CCCC DDFF FFDD DDDD CC00"
	$"0000 0000 FF0C CCDD FFFF DDDD DDCC C000"
	$"0000 0000 0FF0 CDFF FFDD DDDD CCC0 0000"
	$"0000 0000 0FFC FFFF DDDD CCCC 0000 0000"
	$"0000 0000 00FF FFDD CCCC CC00 0000 0000"
	$"0000 0000 00FF ECCC CC"
};

resource 'icl4' (129, "Mac OS Icon") {
	$"0000 00DD EEEE EEEE EEEE EEEE E000 0000"
	$"0000 00E0 0000 0000 0000 0000 EE00 0000"
	$"0000 00E0 0000 0000 0000 0000 ECE0 0000"
	$"0000 00E0 0000 0000 0000 0000 E0CD 0000"
	$"0AAA AAAA AAAA AAAA AAAA CC00 E00C E000"
	$"0AA0 AA00 AA00 AA0A A0AA CC00 E00C CE00"
	$"0AA0 A0AA A0AA 0A00 A0AA DCC0 EEEE EEA0"
	$"0AA0 A0AA A0AA 0A0A 00AA DCC0 CDDD DDA0"
	$"0AA0 A0AA A0AA 0A0A 00AA DCC0 0CCC CDA0"
	$"0AA0 AA00 AA00 AA0A A0AA DCC0 0000 0DA0"
	$"0AAA AAAA AAAA AAAA AAAA DCC0 0000 0DA0"
	$"0000 00AD DDDD DDDD DDDD CC00 0000 0DA0"
	$"0000 00EC CCCC CCCC CCCC CC00 0000 0DA0"
	$"0000 00E0 0000 0000 00CE D000 0000 0CA0"
	$"0000 00E0 000C CCCC CCFE CCCC C000 0CA0"
	$"0000 00E0 000E D55D 5FED DDDD E000 0CF0"
	$"0000 00E0 000E 7DD5 CFC0 CC0C D000 0CF0"
	$"0000 00E0 0005 DDE5 DFCC DE0C E000 0CF0"
	$"0000 00E0 000E DDDD FDCC CCCC D000 0CF0"
	$"0000 00E0 000E DDD7 FDCC CCCC E000 0CF0"
	$"0000 00E0 0005 DDDD AFFE CC0C D000 0CF0"
	$"0000 00E0 000E DD5D 77DE 0CDC E000 0CF0"
	$"0000 00E0 0005 C5E5 55EF DEEC D000 0CF0"
	$"0000 00E0 000E DDC5 E5EA DC00 E000 0CF0"
	$"0000 00E0 000E 5DED 5DEF CDDD E000 0CF0"
	$"0000 00E0 000C CCCC CCCE ECCC C000 0CF0"
	$"0000 00E0 0000 0000 000C ED00 0000 0CF0"
	$"0000 00E0 0000 0000 0000 0000 0000 0CF0"
	$"0000 00E0 0000 0000 0000 0000 0000 0CF0"
	$"0000 00E0 0000 0000 0000 0000 0000 0CF0"
	$"0000 00E0 CCCC CCCC CCCC CCCC CCCC CCF0"
	$"0000 00EE AAAA AAFA FFFF FFFF FFFF FFF0"
};

resource 'icl4' (130, "Windows Icon") {
	$"0000 00DD EEEE EEEE EEEE EEEE E000 0000"
	$"0000 00E0 0000 0000 0000 0000 EE00 0000"
	$"0000 00E0 0000 0000 0000 0000 ECE0 0000"
	$"0000 00E0 0000 0000 0000 0000 E0CD 0000"
	$"0AAA AAAA AAAA AAAA ACC0 0000 E00C E000"
	$"0AAA 0AA0 0AA0 0AAA ACC0 0000 E00C CE00"
	$"0AAA 0A0A AA0A A0AA ADCC 0000 EEEE EEA0"
	$"0AAA 0A0A AA0A A0AA ADCC 0000 CDDD DDA0"
	$"0AAA 0A0A AA0A A0AA ADCC 0000 0CCC CDA0"
	$"0AAA 0AA0 0AA0 0AAA ADCC 0000 0000 0DA0"
	$"0AAA AAAA AAAA AAAA ADCC 0000 0000 0DA0"
	$"0000 00AD DDDD DDDD DCC0 0000 0000 0DA0"
	$"0000 00EC CCCC CDDC CCC0 0000 0000 0DA0"
	$"0000 00E0 0000 CDDD DC00 0000 0000 0CA0"
	$"0000 00E0 0000 CCCD EEDD DCCC 0000 0CA0"
	$"0000 00E0 0000 CCCC CBAA FFFF DC00 0CF0"
	$"0000 00E0 0000 DCCC CDFB 2BF9 FEC0 0CF0"
	$"0000 00E0 000C DDDC CDA2 2EED EFC0 0CF0"
	$"0000 00E0 00DC CCDD BAAB BF8D FE00 0CF0"
	$"0000 00E0 00DC CCCD DAE9 FFEE FD00 0CF0"
	$"0000 00E0 00CD CCCC EAD5 92BF AC00 0CF0"
	$"0000 00E0 0000 DDCD A57E A11F D000 0CF0"
	$"0000 00E0 0000 0DEA AAEF A12F C000 0CF0"
	$"0000 00E0 0000 000C DEAF ABAE 0000 0CF0"
	$"0000 00E0 0000 0000 00CD EFFC 0000 0CF0"
	$"0000 00E0 0000 0000 0000 CCC0 0000 0CF0"
	$"0000 00E0 0000 0000 0000 0000 0000 0CF0"
	$"0000 00E0 0000 0000 0000 0000 0000 0CF0"
	$"0000 00E0 0000 0000 0000 0000 0000 0CF0"
	$"0000 00E0 0000 0000 0000 0000 0000 0CF0"
	$"0000 00E0 CCCC CCCC CCCC CCCC CCCC CCF0"
	$"0000 00EE AAAA AAAA FFFF FFFF FFFF FFF0"
};

resource 'icl4' (131, "Mac OS X Icon") {
	$"0000 00DD EEEE EEEE EEEE EEEE E000 0000"
	$"0000 00E0 0000 0000 0000 0000 EE00 0000"
	$"0000 00E0 0000 0000 0000 0000 ECE0 0000"
	$"0000 00E0 0000 0000 0000 0000 E0CD 0000"
	$"0AAA AAAA AAAA AAAA AACC 0000 E00C E000"
	$"0AA0 00A0 A000 A000 AACC 0000 E00C CE00"
	$"0AAA 0AA0 A0AA A0AA AADC C000 EEEE EEA0"
	$"0AAA 0AA0 A00A A00A AADC C000 CDDD DDA0"
	$"0AAA 0AA0 A0AA A0AA AADC C000 0CCC CDA0"
	$"0AAA 0AA0 A0AA A0AA AADC C000 0000 0DA0"
	$"0AAA AAAA AAAA AAAA AADC C000 0000 0DA0"
	$"0000 00AD DDDD DDDD DDCC 0000 0000 0DA0"
	$"0000 00EC CCCC CCCC CCCC 0000 0000 0DA0"
	$"0000 00E0 000C CCCC CCCC CCCC C000 0CA0"
	$"0000 00E0 00C0 CCCC CCCC CCCC CE00 0CA0"
	$"0000 00E0 00CC DDDD DDDD DDDD DE00 0CF0"
	$"0000 00E0 00CC DCCC CCDC CCCD DE00 0CF0"
	$"0000 00E0 00CC DD7C CEDD CDEE DE00 0CF0"
	$"0000 00E0 00CC 7DDC CCDC C5DD DE00 0CF0"
	$"0000 00E0 00CC DDDD CCCC EEDD DE00 0CF0"
	$"0000 00E0 00CC DDDD CCCD EDDD DE00 0CF0"
	$"0000 00E0 00CC DDDD DCCC DDDD DE00 0CF0"
	$"0000 00E0 00CC DDDD CCCC DDDD DE00 0CF0"
	$"0000 00E0 00CC DDDC C5DC CDDD DE00 0CF0"
	$"0000 00E0 00CC DDCC DEDC CCDD DE00 0CF0"
	$"0000 00E0 00CC DCCC CDDC CCCC DE00 0CF0"
	$"0000 00E0 00CC 7DE5 EDDD E5EE DE00 0CF0"
	$"0000 00E0 00CD DDDD DDDD DDDD DE00 0CF0"
	$"0000 00E0 000E EEEE EEEE EEEE E000 0CF0"
	$"0000 00E0 0000 0000 0000 0000 0000 0CF0"
	$"0000 00E0 CCCC CCCC CCCC CCCC CCCC CCF0"
	$"0000 00EE AAAA AAFA FFFF FFFF FFFF FFF0"
};

resource 'icl8' (-16455) {
	$"0000 0000 0000 0000 0000 0000 0000 0000"
	$"0000 0000 0000 0000 0000 0000 0000 0000"
	$"0000 0000 0000 0000 0000 0000 0000 0000"
	$"0000 0000 0000 0000 0000 5E5E 5E00 0000"
	$"0000 0000 0000 0000 0000 0000 0000 0000"
	$"FFFF 0000 0000 0000 005E 0303 5E00 0000"
	$"0000 0000 0000 0000 0000 0000 0000 FFFF"
	$"FFFF 0000 0000 0000 5E03 2D88 0000 0000"
	$"0000 0000 0000 0000 0000 0000 FFFF FFFF"
	$"00FF FF00 0000 005E 032D 8800 0000 0000"
	$"0000 0000 0000 0000 0000 FFFF FFFF 0000"
	$"F8FF FF08 0832 5E03 3488 0000 0000 0000"
	$"0000 0000 0000 0000 FFFF FFFF 0000 F6F6"
	$"F632 0808 325E 0334 8800 0000 0000 0000"
	$"0000 0000 0000 FFFF FFFF 0000 F5F6 F62B"
	$"0832 395E 5803 3388 DE33 0000 0000 0000"
	$"0000 0000 FFFF FFFF 0000 F5F5 F5F6 2B08"
	$"3339 885E 0333 88DE 5E33 3200 0000 0000"
	$"0000 FFFF FFFF 0000 F5F5 F5F5 F62B 0833"
	$"5E88 5E09 3388 DE88 5E33 3232 0000 0000"
	$"FFFF FFFF 0000 F5F5 F5F5 F5F6 562C 3339"
	$"885E 0933 88E0 8864 5E39 3232 3200 0000"
	$"FFFF 0000 00F5 F5F5 F5F6 5681 0839 6488"
	$"822D 3388 FFDF 645E 3333 3232 3232 DFDF"
	$"00FF FF00 00F5 F5F6 5681 56F6 3364 8839"
	$"3333 3232 3357 3208 080E 3232 3232 DFDF"
	$"00FF FF00 F5F5 F556 F8F6 F656 8188 8808"
	$"325D 3939 3208 0808 0808 3232 3233 DFDF"
	$"0000 FFFF 00F5 F5F5 F656 8156 2B58 3364"
	$"88DE 8988 885E 5E33 3232 3333 395D DFDF"
	$"0000 FFFF 00F5 F5F5 F956 F6F7 64DD AD88"
	$"8888 88DE AD88 8888 885E 5E5E 5E5E DFDF"
	$"0000 00FF FF00 F5F5 F6F6 2B64 006B E056"
	$"2B2B 2BF7 F7F8 81AD 88AD 8888 8888 DFDF"
	$"0000 00FF FF00 F5F5 F6F6 FA07 40FF F92B"
	$"2B2B F7F7 F7F7 F9FF FF88 8888 8888 DFDF"
	$"0000 0000 FFFF 00F6 F632 6440 FFF9 2B2B"
	$"2B2B F7F7 F8F7 F8F9 FFFF 0088 8888 DFDF"
	$"0000 0000 FFFF 00F6 2BDE 8FDE F92B 2B2B"
	$"F732 3839 4040 40F9 FFFF 0000 0000 0000"
	$"0000 0000 00FF FF00 2B39 3939 F72B 2BF7"
	$"3240 4040 3FF8 F8F8 F9FF FF00 0000 0000"
	$"0000 0000 00FF FF00 F739 3939 31F7 3239"
	$"4040 39F8 F7F8 F8F8 F9FF FF00 0000 0000"
	$"0000 0000 0000 FFFF F539 3939 3F39 4040"
	$"4039 F7F7 F7F8 F8F8 F9F9 FFFF 0000 0000"
	$"0000 0000 0000 FFFF F532 3939 3939 4039"
	$"F8F7 F7F7 F8F8 F9F9 FFFF FFFF F8F8 F8F6"
	$"0000 0000 0000 00FF FFF5 3239 3939 32F7"
	$"F7F7 F7F7 F9F9 FFFF FFFF FAFA FAFA F8F6"
	$"0000 0000 0000 00FF FF00 2B2B 2B2B F7F7"
	$"F7F7 F9F9 FFFF FEFF FAFA FAFA FAF8 F8F6"
	$"0000 0000 0000 0000 FFFF 002B 2BF7 F7F7"
	$"F9F9 FFFF FEFF FAFA FAFA FAFA F8F8 0000"
	$"0000 0000 0000 0000 FFFF 002B 2BF7 F9F9"
	$"FFFF FEFF FAFA FAFA FAFA F8F8 F600 0000"
	$"0000 0000 0000 0000 00FF FFF5 F7F9 FFFF"
	$"FEFF FAFA FAFA FAFA F8F8 F600 0000 0000"
	$"0000 0000 0000 0000 00FF FFF7 FFFF FEFF"
	$"FAFA FAFA F8F8 F8F8 0000 0000 0000 0000"
	$"0000 0000 0000 0000 0000 FFFF FEFF FAFA"
	$"F8F8 F8F8 F8F6 0000 0000 0000 0000 0000"
	$"0000 0000 0000 0000 0000 FFFF FBF8 F8F8"
	$"F6F6"
};

resource 'icl8' (128) {
	$"0000 0000 0000 0000 0000 0000 0000 0000"
	$"0000 0000 0000 0000 0000 0000 0000 0000"
	$"0000 0000 0000 0000 0000 0000 0000 0000"
	$"0000 0000 0000 0000 0000 5E5E 5E00 0000"
	$"0000 0000 0000 0000 0000 0000 0000 0000"
	$"FFFF 0000 0000 0000 005E 0303 5E00 0000"
	$"0000 0000 0000 0000 0000 0000 0000 FFFF"
	$"FFFF 0000 0000 0000 5E03 2D88 0000 0000"
	$"0000 0000 0000 0000 0000 0000 FFFF FFFF"
	$"00FF FF00 0000 005E 032D 8800 0000 0000"
	$"0000 0000 0000 0000 0000 FFFF FFFF 0000"
	$"F8FF FF08 0832 5E03 3488 0000 0000 0000"
	$"0000 0000 0000 0000 FFFF FFFF 0000 F6F6"
	$"F632 0808 325E 0334 8800 0000 0000 0000"
	$"0000 0000 0000 FFFF FFFF 0000 F5F6 F62B"
	$"0832 395E 5803 3388 DE33 0000 0000 0000"
	$"0000 0000 FFFF FFFF 0000 F5F5 F5F6 2B08"
	$"3339 885E 0333 88DE 5E33 3200 0000 0000"
	$"0000 FFFF FFFF 0000 F5F5 F5F5 F62B 0833"
	$"5E88 5E09 3388 DE88 5E33 3232 0000 0000"
	$"FFFF FFFF 0000 F5F5 F5F5 F5F6 562C 3339"
	$"885E 0933 88E0 8864 5E39 3232 3200 0000"
	$"FFFF 0000 00F5 F5F5 F5F6 5681 0839 6488"
	$"822D 3388 FFDF 645E 3333 3232 3232 DFDF"
	$"00FF FF00 00F5 F5F6 5681 56F6 3364 8839"
	$"3333 3232 3357 3208 080E 3232 3232 DFDF"
	$"00FF FF00 F5F5 F556 F8F6 F656 8188 8808"
	$"325D 3939 3208 0808 0808 3232 3233 DFDF"
	$"0000 FFFF 00F5 F5F5 F656 8156 2B58 3364"
	$"88DE 8988 885E 5E33 3232 3333 395D DFDF"
	$"0000 FFFF 00F5 F5F5 F956 F6F7 64DD AD88"
	$"8888 88DE AD88 8888 885E 5E5E 5E5E DFDF"
	$"0000 00FF FF00 F5F5 F6F6 2B64 006B E056"
	$"2B2B 2BF7 F7F8 81AD 88AD 8888 8888 DFDF"
	$"0000 00FF FF00 F5F5 F6F6 FA07 40FF F92B"
	$"2B2B F7F7 F7F7 F9FF FF88 8888 8888 DFDF"
	$"0000 0000 FFFF 00F6 F632 6440 FFF9 2B2B"
	$"2B2B F7F7 F8F7 F8F9 FFFF 0088 8888 DFDF"
	$"0000 0000 FFFF 00F6 2BDE 8FDE F92B 2B2B"
	$"F732 3839 4040 40F9 FFFF 0000 0000 0000"
	$"0000 0000 00FF FF00 2B39 3939 F72B 2BF7"
	$"3240 4040 3FF8 F8F8 F9FF FF00 0000 0000"
	$"0000 0000 00FF FF00 F739 3939 31F7 3239"
	$"4040 39F8 F7F8 F8F8 F9FF FF00 0000 0000"
	$"0000 0000 0000 FFFF F539 3939 3F39 4040"
	$"4039 F7F7 F7F8 F8F8 F9F9 FFFF 0000 0000"
	$"0000 0000 0000 FFFF F532 3939 3939 4039"
	$"F8F7 F7F7 F8F8 F9F9 FFFF FFFF F8F8 F8F6"
	$"0000 0000 0000 00FF FFF5 3239 3939 32F7"
	$"F7F7 F7F7 F9F9 FFFF FFFF FAFA FAFA F8F6"
	$"0000 0000 0000 00FF FF00 2B2B 2B2B F7F7"
	$"F7F7 F9F9 FFFF FEFF FAFA FAFA FAF8 F8F6"
	$"0000 0000 0000 0000 FFFF 002B 2BF7 F7F7"
	$"F9F9 FFFF FEFF FAFA FAFA FAFA F8F8 0000"
	$"0000 0000 0000 0000 FFFF 002B 2BF7 F9F9"
	$"FFFF FEFF FAFA FAFA FAFA F8F8 F600 0000"
	$"0000 0000 0000 0000 00FF FFF5 F7F9 FFFF"
	$"FEFF FAFA FAFA FAFA F8F8 F600 0000 0000"
	$"0000 0000 0000 0000 00FF FFF7 FFFF FEFF"
	$"FAFA FAFA F8F8 F8F8 0000 0000 0000 0000"
	$"0000 0000 0000 0000 0000 FFFF FEFF FAFA"
	$"F8F8 F8F8 F8F6 0000 0000 0000 0000 0000"
	$"0000 0000 0000 0000 0000 FFFF FBF8 F8F8"
	$"F6F6"
};

resource 'icl8' (129, "Mac OS Icon") {
	$"0000 0000 0000 8181 FBFB FBFB FBFB FCFC"
	$"FCFC FCFC FCFC ACAC AC00 0000 0000 0000"
	$"0000 0000 0000 FB00 0000 0000 0000 0000"
	$"0000 0000 0000 00F5 FCFB 0000 0000 0000"
	$"0000 0000 0000 FB00 F5F5 F5F5 F5F5 F5F5"
	$"F5F5 F5F5 F5F5 F5F5 FC2B FB00 0000 0000"
	$"0000 0000 0000 FB00 F5F5 F5F5 F5F5 F5F5"
	$"F5F5 F5F5 F5F5 F5F5 FC00 F781 0000 0000"
	$"00DD DDDD DDDD DDDD DDDD DDDD DDDD DDDD"
	$"DDDD DDDD 2BF6 F5F5 FB00 F5F7 FB00 0000"
	$"00DD DD00 DDDD 0000 DDDD 0000 DDDD 00DD"
	$"DD00 DDDD F82B F5F5 FB00 00F6 F8FB 0000"
	$"00DD DD00 DD00 DDDD DD00 DDDD 00DD 0000"
	$"DD00 DDDD F9F7 F6F5 FBFC FCFC ACAC FD00"
	$"00DD DD00 DD00 DDDD DD00 DDDD 00DD 00DD"
	$"0000 DDDD FAF7 F6F5 F6F9 F9FA FA81 FD00"
	$"00DD DD00 DD00 DDDD DD00 DDDD 00DD 00DD"
	$"0000 DDDD FAF7 F6F5 F5F7 F7F8 F856 FD00"
	$"00DD DD00 DDDD 0000 DDDD 0000 DDDD 00DD"
	$"DD00 DDDD FAF7 F6F5 F5F5 F5F5 F556 FD00"
	$"00DD DDDD DDDD DDDD DDDD DDDD DDDD DDDD"
	$"DDDD DDDD F9F7 F6F5 F5F5 F5F5 F556 FD00"
	$"0000 0000 0000 FDF9 F9F9 F9F9 F9F9 F9F9"
	$"F9F9 FAF9 F82B F5F5 F5F5 F5F5 F556 FD00"
	$"0000 0000 0000 ACF7 F7F7 F7F7 F7F7 F7F7"
	$"F7F7 F7F7 2BF6 F5F5 F5F5 F5F5 F556 FD00"
	$"0000 0000 0000 FCF5 F5F5 F5F5 F5F5 F5F5"
	$"F5F5 2BAB F9F5 F5F5 F5F5 F5F5 F5F8 FD00"
	$"0000 0000 0000 FC00 F5F5 F52B F72B F7F7"
	$"2BF7 D6FC F72B F7F7 2BF5 F5F5 F5F8 FD00"
	$"0000 0000 0000 FC00 F5F5 F5AB 80AA AA80"
	$"AAF1 AC7F F97F 807F ABF5 F5F5 F5F8 FE00"
	$"0000 0000 0000 FC00 F5F5 F5AB 7E7F 7FAA"
	$"54FE 54F5 54F8 F52A 80F5 F5F5 F5F8 FE00"
	$"0000 0000 0000 FC00 F5F5 00AA 7F7F ABAA"
	$"80FF 2A2A 81AB F52A ABF5 F5F5 F5F8 FE00"
	$"0000 0000 0000 FC00 F5F5 F5AB 7F7F 7F7F"
	$"D680 2A2A 2AF7 2A2A 80F5 F5F5 F5F8 FE00"
	$"0000 0000 0000 FC00 F5F5 F5FB 7F7F 7F7E"
	$"FE7F 2A2A 2A2A 2A2A ABF5 F5F5 F5F8 FE00"
	$"0000 0000 0000 FC00 F5F5 F5AA 7F7F 7F7F"
	$"FDFE F4AC 2A2A F52A 80F5 F5F5 F5F8 FE00"
	$"0000 0000 0000 FC00 F5F5 00AB 7F80 AA7F"
	$"7E7E 7FAC 002A 802A ABF5 F5F5 F5F8 FE00"
	$"0000 0000 0000 AC00 F5F5 F5AA 55AA ACAA"
	$"AAAA ABFE F9AB FBF7 80F5 F5F5 F5F8 FE00"
	$"0000 0000 0000 AC00 F5F5 00AB 7F7F 54A9"
	$"ABAA ABFD 8055 F5F5 ABF5 F5F5 F5F8 F400"
	$"0000 0000 0000 AC00 F5F5 F5AB AA80 AB80"
	$"AA80 ABFE 5580 8080 AB00 F5F5 F5F7 FF00"
	$"0000 0000 0000 AC00 F5F5 F52B 2BF7 2BF7"
	$"F6F7 F8AB ACF7 2AF7 2BF5 F5F5 F5F7 FF00"
	$"0000 0000 0000 AC00 F5F5 F5F5 F5F5 F5F5"
	$"F5F5 F555 FC56 F5F5 F5F5 F5F5 F5F7 FF00"
	$"0000 0000 0000 AC00 F5F5 F5F5 F5F5 F5F5"
	$"F5F5 F500 F5F5 F5F5 F5F5 F5F5 F5F7 FF00"
	$"0000 0000 0000 AC00 F5F5 F5F5 F5F5 F5F5"
	$"F5F5 F5F5 F5F5 F5F5 F5F5 F5F5 F5F7 FF00"
	$"0000 0000 0000 AC00 F5F5 F5F5 F5F5 F5F5"
	$"F5F5 F5F5 F5F5 F5F5 F5F5 F5F5 F5F7 FF00"
	$"0000 0000 0000 ACF5 F6F6 F6F6 F6F6 2B2B"
	$"2B2B 2B2B 2B2B 2B2B 2B2B F7F7 F7F7 FF00"
	$"0000 0000 0000 ACAC FDFD FDFD FDFD FEFD"
	$"FEF4 FEFE F4FE FEF4 FFFF FFFF FFFF FF"
};

resource 'icl8' (130, "Windows Icon") {
	$"0000 0000 0000 8181 FBFB FBFB FBFB FCFC"
	$"FCFC FCFC FCFC ACAC AC00 0000 0000 0000"
	$"0000 0000 0000 FB00 0000 0000 0000 0000"
	$"0000 0000 0000 00F5 FCFB 0000 0000 0000"
	$"0000 0000 0000 FB00 F5F5 F5F5 F5F5 F5F5"
	$"F5F5 F5F5 F5F5 F5F5 FC2B FB00 0000 0000"
	$"0000 0000 0000 FB00 F5F5 F5F5 F5F5 F5F5"
	$"F5F5 F5F5 F5F5 F5F5 FC00 F781 0000 0000"
	$"00DD DDDD DDDD DDDD DDDD DDDD DDDD DDDD"
	$"DD2B F6F5 F5F5 F5F5 FB00 F5F7 FB00 0000"
	$"00DD DDDD 00DD DD00 00DD DD00 00DD DDDD"
	$"DDF8 2BF5 F5F5 F5F5 FB00 00F6 F8FB 0000"
	$"00DD DDDD 00DD 00DD DDDD 00DD DD00 DDDD"
	$"DDF9 F7F6 F5F5 F5F5 FBFC FCFC ACAC FD00"
	$"00DD DDDD 00DD 00DD DDDD 00DD DD00 DDDD"
	$"DDFA F7F6 F5F5 F5F5 F6F9 F9FA FA81 FD00"
	$"00DD DDDD 00DD 00DD DDDD 00DD DD00 DDDD"
	$"DDFA F7F6 F5F5 F5F5 F5F7 F7F8 F856 FD00"
	$"00DD DDDD 00DD DD00 00DD DD00 00DD DDDD"
	$"DDFA F7F6 F5F5 F5F5 F5F5 F5F5 F556 FD00"
	$"00DD DDDD DDDD DDDD DDDD DDDD DDDD DDDD"
	$"DDF9 F7F6 F5F5 F5F5 F5F5 F5F5 F656 FD00"
	$"0000 0000 0000 FDF9 F9F9 F9FA FAFA FAFA"
	$"F9F8 2BF5 F5F5 F5F5 F5F5 F5F5 F556 FD00"
	$"0000 0000 0000 ACF7 F7F7 F7F7 F7F9 56F7"
	$"F72B F6F5 F5F5 F5F5 F5F5 F5F5 F556 FD00"
	$"0000 0000 0000 FCF5 F5F5 F5F5 F6F9 F9FA"
	$"562B F5F5 F5F5 F5F5 F5F5 F5F5 F5F8 FD00"
	$"0000 0000 0000 FC00 F5F5 F5F5 F732 2B56"
	$"A5AB 8180 F9F7 F7F6 F5F5 F5F5 F6F8 FD00"
	$"0000 0000 0000 FC00 F5F5 F5F5 5531 320E"
	$"325D FDFD DFDF FFB2 7AF6 F5F5 F6F8 FE00"
	$"0000 0000 0000 FC00 F5F5 F5F5 562C 072C"
	$"0833 FF39 105E D1A7 FFFC F6F6 F5F8 FE00"
	$"0000 0000 0000 FC00 F5F5 F555 565C 5632"
	$"0E81 FD10 1688 A651 A6FF F6F6 F5F8 FE00"
	$"0000 0000 0000 FC00 F5F5 FA55 4F55 8081"
	$"82FD FD64 5FFF 7675 D1FC F5F5 F5F8 FE00"
	$"0000 0000 0000 FC00 F5F5 5655 4F2B 5579"
	$"81FD ABD0 F3FF A6A6 FF56 F5F5 F5F8 FE00"
	$"0000 0000 0000 FC00 F5F5 F656 4F55 4F55"
	$"ABFD 79A3 D035 5FFF FDF6 F5F5 F5F8 FE00"
	$"0000 0000 0000 FC00 F5F5 F5F5 8056 557A"
	$"FDA4 9DAB AD0B 0BFF 80F5 F5F5 F5F8 FE00"
	$"0000 0000 0000 AC00 F5F5 F5F5 F556 ABFD"
	$"FDFD CFF3 8305 35F3 F7F5 F5F5 F5F8 FE00"
	$"0000 0000 0000 AC00 F5F5 F5F5 F5F5 F5F8"
	$"80FC FDFF AD5F ADAC F5F5 F5F5 F5F8 F400"
	$"0000 0000 0000 AC00 F5F5 F5F5 F5F5 F5F5"
	$"F5F5 F656 ABF3 FFF8 F5F5 F5F5 F5F7 FF00"
	$"0000 0000 0000 AC00 F5F5 F5F5 F5F5 F5F5"
	$"F5F5 F5F5 F6F7 F8F5 F5F5 F5F5 F6F7 FF00"
	$"0000 0000 0000 AC00 F5F5 F5F5 F5F5 F5F5"
	$"F5F5 F5F5 F5F5 F5F5 F5F5 F5F5 F6F7 FF00"
	$"0000 0000 0000 AC00 F5F5 F5F5 F5F5 F5F5"
	$"F5F5 F5F5 F5F5 F5F5 F5F5 F5F5 F6F7 FF00"
	$"0000 0000 0000 AC00 F5F5 F5F5 F5F5 F5F5"
	$"F5F5 F5F5 F5F5 F5F5 F5F5 F5F5 F5F7 FF00"
	$"0000 0000 0000 AC00 F5F5 F5F5 F5F5 F5F5"
	$"F5F5 F5F5 F5F5 F5F5 F5F5 F5F5 F5F7 FF00"
	$"0000 0000 0000 ACF5 F6F6 F6F6 F6F6 2B2B"
	$"2B2B 2B2B 2B2B 2B2B 2B2B F7F7 F7F7 FF00"
	$"0000 0000 0000 ACAC FDFD FDFD FDFD FDFD"
	$"FEFE FEFE FEFE FEFE FFFF FFFF FFFF FF"
};

resource 'icl8' (131, "Mac OS X Icon") {
	$"0000 0000 0000 8181 FBFB FBFB FBFB FCFC"
	$"FCFC FCFC FCFC ACAC AC00 0000 0000 0000"
	$"0000 0000 0000 FB00 0000 0000 0000 0000"
	$"0000 0000 0000 00F5 FCFB 0000 0000 0000"
	$"0000 0000 0000 FB00 F5F5 F5F5 F5F5 F5F5"
	$"F5F5 F5F5 F5F5 F5F5 FC2B FB00 0000 0000"
	$"0000 0000 0000 FB00 F5F5 F5F5 F5F5 F5F5"
	$"F5F5 F5F5 F5F5 F5F5 FC00 F781 0000 0000"
	$"00DD DDDD DDDD DDDD DDDD DDDD DDDD DDDD"
	$"DDDD 2BF6 F5F5 F5F5 FB00 F5F7 FB00 0000"
	$"00DD DD00 0000 DD00 DD00 0000 DD00 0000"
	$"DDDD F82B F5F5 F5F5 FB00 00F6 F8FB 0000"
	$"00DD DDDD 00DD DD00 DD00 DDDD DD00 DDDD"
	$"DDDD F9F7 F6F5 F5F5 FBFC FCFC ACAC FD00"
	$"00DD DDDD 00DD DD00 DD00 00DD DD00 00DD"
	$"DDDD FAF7 F6F5 F5F5 F6F9 F9FA FA81 FD00"
	$"00DD DDDD 00DD DD00 DD00 DDDD DD00 DDDD"
	$"DDDD FAF7 F6F5 F5F5 F5F7 F7F8 F856 FD00"
	$"00DD DDDD 00DD DD00 DD00 DDDD DD00 DDDD"
	$"DDDD FAF7 F6F5 F5F5 F5F5 F5F5 F556 FD00"
	$"00DD DDDD DDDD DDDD DDDD DDDD DDDD DDDD"
	$"DDDD F9F7 F6F5 F5F5 F5F5 F5F5 F556 FD00"
	$"0000 0000 0000 FDF9 F9F9 F9F9 F9F9 F9F9"
	$"FAF9 F82B F5F5 F5F5 F5F5 F5F5 F556 FD00"
	$"0000 0000 0000 ACF7 F7F7 F7F7 F7F7 F7F7"
	$"F7F7 2BF6 F5F5 F5F5 F5F5 F5F5 F556 FD00"
	$"0000 0000 0000 FCF5 F5F5 F554 5454 5454"
	$"5454 5454 5454 5454 54F5 F5F5 F5F8 FD00"
	$"0000 0000 0000 FC00 F5F5 5400 F8F6 F8F6"
	$"F8F6 F8F6 F8F6 F8F6 F7AB F5F5 F5F8 FD00"
	$"0000 0000 0000 FC00 F5F5 54F8 7F7F 7F7F"
	$"7F7F 7F7F 7F7F 7F7F 7FAB F5F5 F5F8 FE00"
	$"0000 0000 0000 FC00 F5F5 54F6 7FF6 F6F6"
	$"F6F7 7FF7 F6F6 F67F 7FAB F5F5 F5F8 FE00"
	$"0000 0000 0000 FC00 F5F5 54F8 7F7F 78F6"
	$"F6AB 7F7F F67F ABAB 7FAB F5F5 F5F8 FE00"
	$"0000 0000 0000 FC00 F5F5 54F6 787F 7FF6"
	$"F6F7 7FF6 F6AA 7F7F 7FAB F5F5 F5F8 FE00"
	$"0000 0000 0000 FC00 F5F5 54F8 7F7F 7F7F"
	$"F6F6 F7F6 ABAB 7F7F 7FAB F5F5 F5F8 FE00"
	$"0000 0000 0000 FC00 F5F5 54F6 7F7F 7F7F"
	$"2BF6 F67F AB7F 7F7F 7FAB F5F5 F5F8 FE00"
	$"0000 0000 0000 FC00 F5F5 54F8 7F7F 7F7F"
	$"7FF6 F6F7 7F7F 7F7F 7FAB F5F5 F5F8 FE00"
	$"0000 0000 0000 AC00 F5F5 54F6 7F7F 7F7F"
	$"F6F6 F6F6 7F7F 7F7F 7FAB F5F5 F5F8 FE00"
	$"0000 0000 0000 AC00 F5F5 54F8 7F7F 7FF7"
	$"F6AA 7FF6 F67F 7F7F 7FAB F5F5 F5F8 F400"
	$"0000 0000 0000 AC00 F5F5 54F6 7F7F F7F6"
	$"7FAB 7F2B F6F6 7F7F 7FAB F5F5 F5F7 FF00"
	$"0000 0000 0000 AC00 F5F5 54F8 7FF6 F6F6"
	$"F77F 7FF6 F6F6 F6F7 7FAB F5F5 F5F7 FF00"
	$"0000 0000 0000 AC00 F5F5 54F6 787F ABAA"
	$"AB7F 7F7F ABAA ABAB 7FAB F5F5 F5F7 FF00"
	$"0000 0000 0000 AC00 F5F5 547F 7F7F 7F7F"
	$"7F7F 7F7F 7F7F 7F7F 7FAB F5F5 F5F7 FF00"
	$"0000 0000 0000 AC00 F5F5 F5AB ABAB ABAB"
	$"ABAB ABAB ABAB ABAB ABF5 F5F5 F5F7 FF00"
	$"0000 0000 0000 AC00 F5F5 F5F5 F5F5 F5F5"
	$"F5F5 F5F5 F5F5 F5F5 F5F5 F5F5 F5F7 FF00"
	$"0000 0000 0000 ACF5 F6F6 F6F6 F6F6 2B2B"
	$"2B2B 2B2B 2B2B 2B2B 2B2B F7F7 F7F7 FF00"
	$"0000 0000 0000 ACAC FDFD FDFD FDFD FEFD"
	$"FEF4 FEFE F4FE FEF4 FFFF FFFF FFFF FF"
};

resource 'ICN#' (-16455) {
	{	/* array: 2 elements */
		/* [1] */
		$"0000 0000 0000 0038 0000 C048 0003 C090"
		$"000F 6120 003C 7E40 00F0 34C0 03C0 31C0"
		$"0F00 33A0 3C00 E790 F000 CF8C C01B 9F03"
		$"6066 0003 618E 4003 3031 D407 30CF FEAF"
		$"1816 0357 182C 01FF 0C38 00DF 0C70 0EC0"
		$"0670 7860 067C C060 037F 8030 033F 00FF"
		$"0180 03FF 0180 0FFF 00C0 3FFC 00C0 FFF8"
		$"0063 FFE0 006F FF00 003F FC00 003F C0",
		/* [2] */
		$"0000 0000 0000 0038 0000 C078 0003 C0F0"
		$"000F E1E0 003F FFC0 00FF FF80 03FF FFC0"
		$"0FFF FFE0 3FFF FFF0 FFFF FFF8 FFFF FFFF"
		$"7FFF FFFF 7FFF FFFF 3FFF FFFF 3FFF FFFF"
		$"1FFF FFFF 1FFF FFFF 0FFF FFDF 0FFF FFC0"
		$"07FF FFE0 07FF FFE0 03FF FFF0 03FF FFFF"
		$"01FF FFFF 01FF FFFF 00FF FFFC 00FF FFF8"
		$"007F FFE0 007F FF00 003F FC00 003F C0"
	}
};

resource 'ICN#' (128) {
	{	/* array: 2 elements */
		/* [1] */
		$"0000 0000 0000 0038 0000 C048 0003 C090"
		$"000F 6120 003C 7E40 00F0 34C0 03C0 31C0"
		$"0F00 33A0 3C00 E790 F000 CF8C C01B 9F03"
		$"6066 0003 618E 4003 3031 D407 30CF FEAF"
		$"1816 0357 182C 01FF 0C38 00DF 0C70 0EC0"
		$"0670 7860 067C C060 037F 8030 033F 00FF"
		$"0180 03FF 0180 0FFF 00C0 3FFC 00C0 FFF8"
		$"0063 FFE0 006F FF00 003F FC00 003F C0",
		/* [2] */
		$"0000 0000 0000 0038 0000 C078 0003 C0F0"
		$"000F E1E0 003F FFC0 00FF FF80 03FF FFC0"
		$"0FFF FFE0 3FFF FFF0 FFFF FFF8 FFFF FFFF"
		$"7FFF FFFF 7FFF FFFF 3FFF FFFF 3FFF FFFF"
		$"1FFF FFFF 1FFF FFFF 0FFF FFDF 0FFF FFC0"
		$"07FF FFE0 07FF FFE0 03FF FFF0 03FF FFFF"
		$"01FF FFFF 01FF FFFF 00FF FFFC 00FF FFF8"
		$"007F FFE0 007F FF00 003F FC00 003F C0"
	}
};

resource 'ICN#' (129, "Mac OS Icon") {
	{	/* array: 2 elements */
		/* [1] */
		$"03FF FF80 0200 00C0 0200 00A0 0200 0090"
		$"7FFF F088 6CCD B884 6BB4 B0FE 6BB5 3856"
		$"6BB5 3002 6CCD B806 7FFF F002 02AA A806"
		$"0200 0002 0200 1006 0200 2002 021F FF86"
		$"0210 4082 0212 4886 0212 4882 0210 4086"
		$"0210 7082 0213 2286 0210 FC82 0210 2086"
		$"021F FF82 0200 1006 0200 0802 0200 0006"
		$"0200 0002 0200 0006 02AA AAAA 03FF FFFE",
		/* [2] */
		$"03FF FF80 03FF FFC0 03FF FFE0 03FF FFF0"
		$"7FFF FFF8 7FFF FFFC 7FFF FFFE 7FFF FFFE"
		$"7FFF FFFE 7FFF FFFE 7FFF FFFE 03FF FFFE"
		$"03FF FFFE 03FF FFFE 03FF FFFE 03FF FFFE"
		$"03FF FFFE 03FF FFFE 03FF FFFE 03FF FFFE"
		$"03FF FFFE 03FF FFFE 03FF FFFE 03FF FFFE"
		$"03FF FFFE 03FF FFFE 03FF FFFE 03FF FFFE"
		$"03FF FFFE 03FF FFFE 03FF FFFE 03FF FFFE"
	}
};

resource 'ICN#' (130, "Windows Icon") {
	{	/* array: 2 elements */
		/* [1] */
		$"03FF FF80 0200 00C0 0200 00A0 0200 0090"
		$"7FFF 8088 7667 8084 75DB C0FE 75DB 8056"
		$"75DB C002 7667 8006 7FFF C002 02AA 8006"
		$"0200 0002 0201 0006 0200 F002 0200 7F06"
		$"0200 27C2 0204 66C6 0223 FCC2 0200 FF86"
		$"0200 DB82 0208 F986 0203 F902 0200 7F06"
		$"0200 0602 0200 0006 0200 0002 0200 0006"
		$"0200 0002 0200 0006 02AA AAAA 03FF FFFE",
		/* [2] */
		$"03FF FF80 03FF FFC0 03FF FFE0 03FF FFF0"
		$"7FFF FFF8 7FFF FFFC 7FFF FFFE 7FFF FFFE"
		$"7FFF FFFE 7FFF FFFE 7FFF FFFE 03FF FFFE"
		$"03FF FFFE 03FF FFFE 03FF FFFE 03FF FFFE"
		$"03FF FFFE 03FF FFFE 03FF FFFE 03FF FFFE"
		$"03FF FFFE 03FF FFFE 03FF FFFE 03FF FFFE"
		$"03FF FFFE 03FF FFFE 03FF FFFE 03FF FFFE"
		$"03FF FFFE 03FF FFFE 03FF FFFE 03FF FFFE"
	}
};

resource 'ICN#' (131, "Mac OS X Icon") {
	{	/* array: 2 elements */
		/* [1] */
		$"03FF FF80 0200 00C0 0200 00A0 0200 0090"
		$"7FFF C088 6288 E084 76BB C0FE 7699 E056"
		$"76BB C002 76BB E006 7FFF C002 02AA A006"
		$"0200 0002 021F FF86 023F FFC2 023F FFC6"
		$"0238 71C2 023E 77C6 023E 67C2 023F 0FC6"
		$"023F 9FC2 023F 9FC6 023F 0FC2 023E 67C6"
		$"023C F3C2 0238 60C6 023F FFC2 023F FFC6"
		$"021F FF82 0200 0006 02AA AAAA 03FF FFFE",
		/* [2] */
		$"03FF FF80 03FF FFC0 03FF FFE0 03FF FFF0"
		$"7FFF FFF8 7FFF FFFC 7FFF FFFE 7FFF FFFE"
		$"7FFF FFFE 7FFF FFFE 7FFF FFFE 03FF FFFE"
		$"03FF FFFE 03FF FFFE 03FF FFFE 03FF FFFE"
		$"03FF FFFE 03FF FFFE 03FF FFFE 03FF FFFE"
		$"03FF FFFE 03FF FFFE 03FF FFFE 03FF FFFE"
		$"03FF FFFE 03FF FFFE 03FF FFFE 03FF FFFE"
		$"03FF FFFE 03FF FFFE 03FF FFFE 03FF FFFE"
	}
};

resource 'ics#' (-16455) {
	{	/* array: 2 elements */
		/* [1] */
		$"0006 0188 07CC 1C78 70FC C5FB DB01 43EB"
		$"621F 240F 34CC 130C 183E 0AFF 0FFF 07FE",
		/* [2] */
		$"0006 018E 07DC 1FF8 7FFC FFFF FFFF 7FFF"
		$"7FFF 3FFF 3FFC 1FFC 1FFE 0FFF 0FFF 07FE"
	}
};

resource 'ics#' (128) {
	{	/* array: 2 elements */
		/* [1] */
		$"0006 0188 07CC 1C78 70FC C5FB DB01 43EB"
		$"621F 240F 34CC 130C 183E 0AFF 0FFF 07FE",
		/* [2] */
		$"0006 018E 07FC 1FF8 7FFC FFFF FFFF 7FFF"
		$"7FFF 3FFF 3FFC 1FFC 1FFE 0FFF 0FFF 07FE"
	}
};

resource 'ics#' (129, "Mac OS Icon") {
	{	/* array: 2 elements */
		/* [1] */
		$"1FF8 100C FFFA A457 AD47 A455 FFFF 1555"
		$"1001 1003 1001 1003 1001 1003 1555 1FFF",
		/* [2] */
		$"1FF8 1FFC FFFE FFFF FFFF FFFF FFFF 1FFF"
		$"1FFF 1FFF 1FFF 1FFF 1FFF 1FFF 1FFF 1FFF"
	}
};

resource 'ics#' (130, "Windows Icon") {
	{	/* array: 2 elements */
		/* [1] */
		$"1FF8 100C FFCA A46F AD45 A463 FFC1 1543"
		$"1001 1003 1001 1003 1001 1003 1555 1FFF",
		/* [2] */
		$"1FF8 1FFC FFFE FFFF FFFF FFFF FFFF 1FFF"
		$"1FFF 1FFF 1FFF 1FFF 1FFF 1FFF 1FFF 1FFF"
	}
};

resource 'ics#' (131, "Mac OS X Icon") {
	{	/* array: 2 elements */
		/* [1] */
		$"1FF8 100C FFFE 8A4D DADB DADD FFFB 1557"
		$"1001 1003 1001 1003 1001 1003 1555 1FFF",
		/* [2] */
		$"1FF8 1FFC FFFE FFFF FFFF FFFF FFFF 1FFF"
		$"1FFF 1FFF 1FFF 1FFF 1FFF 1FFF 1FFF 1FFF"
	}
};

resource 'ics4' (-16455) {
	$"0000 0000 0000 0BB0 0000 000F F000 BCB0"
	$"0000 0FFF DDCC BB00 000F FF0C CDDB E000"
	$"0FFF 00CC BBBE BC00 FF00 0CCB BBFB BCCD"
	$"FF0C CCBB DDCC CCCF 0F00 CCBB EEEB BBBF"
	$"0FF0 CCBD CCCE FEEF 00F0 CBDC CCBD FEFF"
	$"00FF CBCC BBCC FF00 000F CBB3 CCCD FF00"
	$"000F FCCC CDFF DDC0 0000 FCCC FFDD DDCC"
	$"0000 FFFF DDDD CCCC 0000 0FDD DCCC CCC0"
};

resource 'ics4' (128) {
	$"0000 0000 0000 0BB0 0000 000F F000 BCB0"
	$"0000 0FFF DDCC BB00 000F FF0C CDDB E000"
	$"0FFF 00CC BBBE BC00 FF00 0CCB BBFB BCCD"
	$"FF0C CCBB DDCC CCCF 0F00 CCBB EEEB BBBF"
	$"0FF0 CCBD CCCE FEEF 00F0 CBDC CCBD FEFF"
	$"00FF CBCC BBCC FF00 000F CBB3 CCCD FF00"
	$"000F FCCC CDFF DDC0 0000 FCCC FFDD DDCC"
	$"0000 FFFF DDDD CCCC 0000 0FDD DCCC CCC0"
};

resource 'ics4' (129, "Mac OS Icon") {
	$"000E EEEE EEEE E000 000E 0000 0000 EE00"
	$"AAAA AAAA AAAA AAE0 A0A0 0A00 0A0A 0ADF"
	$"A0A0 AA0A 0A00 0ADF A0A0 0A00 0A0A 0ADF"
	$"AAAA AAAA AAAA AADF 000E CCDD DDDD DDDF"
	$"000E 0000 0000 00CF 000E 0000 0000 00CF"
	$"000E 0000 0000 00CF 000E 0000 0000 00CF"
	$"000E 0000 0000 00CF 000E 0000 0000 00CF"
	$"000E 0CCC CCCC CCCF 000A AAAA FFFF FFFF"
};

resource 'ics4' (130, "Windows Icon") {
	$"000E EEEE EEEE E000 000E 0000 0000 EE00"
	$"AAAA AAAA AACC ECE0 A0A0 0A00 0ADC EEDA"
	$"A0A0 AA0A 0ADC CCCA A0A0 0A00 0ADC 00CA"
	$"AAAA AAAA AADC 00CA 000E CCCC CDD0 00CF"
	$"000E 0000 0000 00CF 000E 0000 0000 00CF"
	$"000E 0000 0000 00CF 000E 0000 0000 00CF"
	$"000E 0000 0000 00CF 000E 0000 0000 00CF"
	$"000E 0CCC CCCC CCCF 000A AAAA FFFF FFFF"
};

resource 'ics4' (131, "Mac OS X Icon") {
	$"000E EEEE EEEE E000 000E 0000 0000 EE00"
	$"AAAA AAAA AAAA AAE0 A000 A0A0 0A00 AADF"
	$"AA0A A0A0 AA0A AADF AA0A A0A0 AA0A AADF"
	$"AAAA AAAA AAAA AADF 000E CCDD DDDD DDDF"
	$"000E 0000 0000 00CF 000E 0000 0000 00CF"
	$"000E 0000 0000 00CF 000E 0000 0000 00CF"
	$"000E 0000 0000 00CF 000E 0000 0000 00CF"
	$"000E 0CCC CCCC CCCF 000A AAAA FFFF FFFF"
};

resource 'ics8' (-16455) {
	$"0000 0000 0000 0000 0000 0000 0034 3400"
	$"0000 0000 0000 00FF FF00 0000 342D 5D00"
	$"0000 0000 00FF FFFF 8181 072D 345D 0000"
	$"0000 00FF FFFF F5F6 2C33 3334 8800 0000"
	$"00FF FFFF 00F5 F62C 5E5E 3488 392C 0000"
	$"FFFF 00F5 F5F8 325E 5E34 FE64 3932 2CF9"
	$"FFFF F5F6 F8F7 5E5D 3333 3208 0832 32DF"
	$"00FF 00F5 F8F8 5D82 8888 885E 5D5D 5DDF"
	$"00FF FFF5 F632 5DF9 2BF7 F7FC B388 88DF"
	$"0000 FFF5 3264 FA2B F732 39F9 FF88 DFDF"
	$"0000 FFFF 3239 F732 3939 32F8 FFFF 0000"
	$"0000 00FF 0E39 3940 32F7 F856 FFFF 0000"
	$"0000 00FF FF32 32F7 F756 FFFE FAFA F800"
	$"0000 0000 FFF6 2BF8 FFFE FAFA FAFA F8F6"
	$"0000 0000 FFFF FFFF FAFA FAFA F8F8 F6F6"
	$"0000 0000 00FF FAFA FAF8 F8F8 F6F6 F6"
};

resource 'ics8' (128) {
	$"0000 0000 0000 0000 0000 0000 0034 3400"
	$"0000 0000 0000 00FF FF00 0000 342D 5D00"
	$"0000 0000 00FF FFFF 8181 072D 345D 0000"
	$"0000 00FF FFFF F5F6 2C33 3334 8800 0000"
	$"00FF FFFF 00F5 F62C 5E5E 3488 392C 0000"
	$"FFFF 00F5 F5F8 325E 5E34 FE64 3932 2CF9"
	$"FFFF F5F6 F8F7 5E5D 3333 3208 0832 32DF"
	$"00FF 00F5 F8F8 5D82 8888 885E 5D5D 5DDF"
	$"00FF FFF5 F632 5DF9 2BF7 F7FC B388 88DF"
	$"0000 FFF5 3264 FA2B F732 39F9 FF88 DFDF"
	$"0000 FFFF 3239 F732 3939 32F8 FFFF 0000"
	$"0000 00FF 0E39 3940 32F7 F856 FFFF 0000"
	$"0000 00FF FF32 32F7 F756 FFFE FAFA F800"
	$"0000 0000 FFF6 2BF8 FFFE FAFA FAFA F8F6"
	$"0000 0000 FFFF FFFF FAFA FAFA F8F8 F6F6"
	$"0000 0000 00FF FAFA FAF8 F8F8 F6F6 F6"
};

resource 'ics8' (129, "Mac OS Icon") {
	$"0000 00FB FBFB FBFC FCFC FCFC FC00 0000"
	$"0000 00FB F5F5 F5F5 F5F5 F5F5 FCFB 0000"
	$"DDDD DDDD DDDD DDDD DDDD DDDD DDDD FB00"
	$"DD00 DD00 00DD 0000 00DD 00DD 00DD FAFF"
	$"DD00 DD00 DDDD 00DD 00DD 0000 00DD FAFF"
	$"DD00 DD00 00DD 0000 00DD 00DD 00DD F9FF"
	$"DDDD DDDD DDDD DDDD DDDD DDDD DDDD F9FF"
	$"0000 00FC F7F7 F9F9 F9F9 F9F9 F9F9 F9FF"
	$"0000 00FC F5F5 F5F5 F5F5 F5F5 F5F5 F8FE"
	$"0000 00FC F5F5 F5F5 F5F5 F5F5 F5F5 F8FE"
	$"0000 00FC F5F5 F5F5 F5F5 F5F5 F5F5 F8FE"
	$"0000 00AC F5F5 F5F5 F5F5 F5F5 F5F5 F8FE"
	$"0000 00AC F5F5 F5F5 F5F5 F5F5 F5F5 F7FF"
	$"0000 00AC F5F5 F5F5 F5F5 F5F5 F5F5 F7FF"
	$"0000 00AC F5F7 F7F7 F7F7 F7F7 F7F7 F7FF"
	$"0000 00FD FDFD FDFD FEFE FEFE FFFF FFFF"
};

resource 'ics8' (130, "Windows Icon") {
	$"0000 00FB FBFB FBFC FCFC FCFC FC00 0000"
	$"0000 00FB F5F5 F5F5 F5F5 F5F5 FCFB 0000"
	$"DDDD DDDD DDDD DDDD DDDD F8F6 FBF7 FB00"
	$"DD00 DD00 00DD 0000 00DD FAF7 FCFC FAFD"
	$"DD00 DD00 DDDD 00DD 00DD FAF7 F7F8 F8FD"
	$"DD00 DD00 00DD 0000 00DD F9F7 F5F5 F8FD"
	$"DDDD DDDD DDDD DDDD DDDD F9F6 F5F5 F8FD"
	$"0000 00FC F7F7 F7F7 F856 F9F5 F5F5 F8FE"
	$"0000 00FC F5F5 F5F5 F5F5 F5F5 F5F5 F8FE"
	$"0000 00FC F5F5 F5F5 F5F5 F5F5 F5F5 F8FE"
	$"0000 00FC F5F5 F5F5 F5F5 F5F5 F5F5 F8FE"
	$"0000 00AC F5F5 F5F5 F5F5 F5F5 F5F5 F8FE"
	$"0000 00AC F5F5 F5F5 F5F5 F5F5 F5F5 F7FF"
	$"0000 00AC F5F5 F5F5 F5F5 F5F5 F5F5 F7FF"
	$"0000 00AC F5F7 F7F7 F7F7 F7F7 F7F7 F7FF"
	$"0000 00FD FDFD FDFD FEFE FEFE FFFF FFFF"
};

resource 'ics8' (131, "Mac OS X Icon") {
	$"0000 00FB FBFB FBFC FCFC FCFC FC00 0000"
	$"0000 00FB F5F5 F5F5 F5F5 F5F5 FCFB 0000"
	$"DDDD DDDD DDDD DDDD DDDD DDDD DDDD FB00"
	$"DD00 0000 DD00 DD00 00DD 0000 DDDD FAFF"
	$"DDDD 00DD DD00 DD00 DDDD 00DD DDDD FAFF"
	$"DDDD 00DD DD00 DD00 DDDD 00DD DDDD F9FF"
	$"DDDD DDDD DDDD DDDD DDDD DDDD DDDD F9FF"
	$"0000 00FC F7F7 F9F9 F9F9 F9F9 F9F9 F9FF"
	$"0000 00FC F5F5 F5F5 F5F5 F5F5 F5F5 F8FE"
	$"0000 00FC F5F5 F5F5 F5F5 F5F5 F5F5 F8FE"
	$"0000 00FC F5F5 F5F5 F5F5 F5F5 F5F5 F8FE"
	$"0000 00AC F5F5 F5F5 F5F5 F5F5 F5F5 F8FE"
	$"0000 00AC F5F5 F5F5 F5F5 F5F5 F5F5 F7FF"
	$"0000 00AC F5F5 F5F5 F5F5 F5F5 F5F5 F7FF"
	$"0000 00AC F5F7 F7F7 F7F7 F7F7 F7F7 F7FF"
	$"0000 00FD FDFD FDFD FEFE FEFE FFFF FFFF"
};

resource 'xmnu' (130, "Edit Menu") {
	versionZero {
		{	/* array ItemExtensions: 2 elements */
			/* [1] */
			skipItem {

			}			,
			/* [2] */
			dataItem {
				1061109567,
				0x1,
				currScript,
				1061109567,
				1061109567,
				noHierID,
				sysFont,
				naturalGlyph
			}
		}
	}
};

resource 'xmnu' (133, "Paste Menu") {
	versionZero {
		{	/* array ItemExtensions: 4 elements */
			/* [1] */
			skipItem {

			}			,
			/* [2] */
			dataItem {
				1061109567,
				0x1,
				currScript,
				1061109567,
				1061109567,
				noHierID,
				sysFont,
				naturalGlyph
			},
			/* [3] */
			dataItem {
				1061109567,
				0x2,
				currScript,
				1061109567,
				1061109567,
				noHierID,
				sysFont,
				naturalGlyph
			},
			/* [4] */
			dataItem {
				1061109567,
				0x4,
				currScript,
				1061109567,
				1061109567,
				noHierID,
				sysFont,
				naturalGlyph
			}
		}
	}
};

resource 'xmnu' (129, "File Menu") {
	versionZero {
		{	/* array ItemExtensions: 6 elements */
			/* [1] */
			skipItem {

			}			,
			/* [2] */
			skipItem {

			}			,
			/* [3] */
			skipItem {

			}			,
			/* [4] */
			skipItem {

			}			,
			/* [5] */
			skipItem {

			}			,
			/* [6] */
			dataItem {
				1061109567,
				0x1,
				currScript,
				1061109567,
				1061109567,
				noHierID,
				sysFont,
				naturalGlyph
			}
		}
	}
};

resource 'xmnu' (131, "Select") {
	versionZero {
		{	/* array ItemExtensions: 4 elements */
			/* [1] */
			skipItem {

			}			,
			/* [2] */
			skipItem {

			}			,
			/* [3] */
			skipItem {

			}			,
			/* [4] */
			dataItem {
				1061109567,
				0x1,
				currScript,
				1061109567,
				1061109567,
				noHierID,
				sysFont,
				naturalGlyph
			}
		}
	}
};

resource 'xmnu' (134, "Copy Menu") {
	versionZero {
		{	/* array ItemExtensions: 3 elements */
			/* [1] */
			skipItem {

			}			,
			/* [2] */
			dataItem {
				1061109567,
				0x1,
				currScript,
				1061109567,
				1061109567,
				noHierID,
				sysFont,
				naturalGlyph
			},
			/* [3] */
			dataItem {
				1061109567,
				0x4,
				currScript,
				1061109567,
				1061109567,
				noHierID,
				sysFont,
				naturalGlyph
			}
		}
	}
};

resource 'xmnu' (132, "Transform") {
	versionZero {
		{	/* array ItemExtensions: 7 elements */
			/* [1] */
			skipItem {

			}			,
			/* [2] */
			dataItem {
				1061109567,
				0x1,
				currScript,
				1061109567,
				1061109567,
				noHierID,
				sysFont,
				naturalGlyph
			},
			/* [3] */
			skipItem {

			},
			/* [4] */
			skipItem {

			},
			/* [5] */
			skipItem {

			},
			/* [6] */
			skipItem {

			},
			/* [7] */
			dataItem {
				1061109567,
				0x2,
				currScript,
				1061109567,
				1061109567,
				noHierID,
				sysFont,
				naturalGlyph
			}
		}
	}
};

data 'Pref' (129, "Default Preferences") {
	$"0000 0011 0E4E 6F74 2072 6567 6973 7465"            /* .....Not registe */
	$"7265 6420 2020 2020 2020 2020 20EB 000D"            /* red          �.. */
	$"02EC 000D 02EC 000E 02ED 000E 02ED 000F"            /* .�...�...�...�.. */
	$"02EE 000F 02EE 0010 02EF 0010 02EF 0011"            /* .�...�...�...�.. */
	$"02F0 0011 02F0 0012 02F3 001A 02F3 001C"            /* .�...�...�...�.. */
	$"02F4 001C 02F4 00F4 02F5 00F4 02F5 0111"            /* .�...�.�.�.�.�.. */
	$"02F6 0111 02F6 026B 02F8 0011 02F8 0012"            /* .�...�.k.�...�.. */
	$"02F9 0010 02F9 0011 02FA 000F 02FA 0010"            /* .�...�...�...�.. */
	$"02FB 000E 02FB 000F 02FB 03FF 02FB 0400"            /* .�...�...�.�.�.. */
	$"02FC 000D 02FC 000E 02FD 000C 02FD 000D"            /* .�...�...�...�.. */
	$"02FD 03FE 02FD 03FF 02FE 000B 02FE 000C"            /* .�.�.�.�.�...�.. */
	$"02FE 03FD 02FE 03FE 02FF 000A 02FF 000B"            /* .�.�.�.�.�...�.. */
	$"02FF 03FB 02FF 03FD 0300 000A 0300 026B"            /* .�.�.�.�.......k */
	$"0300 03A1 0300 03FB 00DD DDDD 00DD DDDD"            /* ...�...�.���.��� */
	$"00DD DDDD 00DD DDDD 00DD DDDD 00DD DDDD"            /* .���.���.���.��� */
	$"00DD DDDD 00DD DDDD 00DD DDDD 00DD DDDD"            /* .���.���.���.��� */
	$"00DD DDDD 004E 4F50 00DD DDDD 00DD DDDD"            /* .���.NOP.���.��� */
	$"00DD DDDD 00DD DDDD 00DD DDDD 00DD DDDD"            /* .���.���.���.��� */
	$"0DB1 1CD0 0000 0000 001E 80F0 0DCF B6A0"            /* .�.�......��.϶� */
	$"00DD DDDD 00DD DDDD 00DD DDDD 0DB1 10D0"            /* .���.���.���.�.� */
	$"00DD DDDD 00DD DDDD 00DD DDDD 00DD DDDD"            /* .���.���.���.��� */
	$"00DD DDDD 00DD DDDD 00DD DDDD 00DD DDDD"            /* .���.���.���.��� */
	$"00DD DDDD 00DD DDDD 00DD DDDD 00DD DDDD"            /* .���.���.���.��� */
	$"00DD DDDD 00DD DDDD 00DD DDDD 00DD DDDD"            /* .���.���.���.��� */
	$"00DD DDDD 00DD DDDD 00DD DDDD 00DD DDDD"            /* .���.���.���.��� */
	$"0DB1 1CD0 0000 0000 001E 8080 0DCF B6A0"            /* .�.�......��.϶� */
	$"0DB1 1CD0 0000 0000 001E 8070 0DCF B6A0"            /* .�.�......�p.϶� */
	$"00DD DDDD 00DD DDDD 00DD DDDD 0DB1 10D0"            /* .���.���.���.�.� */
	$"0DB1 1CD0 0000 0000 001E 8050 0DCF B6A0"            /* .�.�......�P.϶� */
	$"0DB1 1CD0 0000 0000 001E 8040 0DCF B6A0"            /* .�.�......�@.϶� */
	$"0DB1 1CD0 0000 0000 001E 8030 0DB1 10D0"            /* .�.�......�0.�.� */
	$"0DB1 1CD0 0000 0000 001E 8020 0DCF B6A0"            /* .�.�......� .϶� */
	$"0DB1 1CD0 0041 4E32 3734 3537 38CF B6A0"            /* .�.�.AN274578϶� */
	$"0DB1 1CD0 0000 0000 001E 8000 0DCF B6A0"            /* .�.�......�..϶� */
	$"00DD DDDD 00DD DDDD 00DD DDDD 0DB1 10D0"            /* .���.���.���.�.� */
	$"00DD DDDD 00DD DDDD 00DD DDDD 00DD DDDD"            /* .���.���.���.��� */
	$"00DD DDDD 00DD DDDD 00DD DDDD 00DD DDDD"            /* .���.���.���.��� */
	$"0DB1 1CD0 0000 0000 001E 7FC0 0DCF B6A0"            /* .�.�.......�.϶� */
	$"00DD DDDD 00DD DDDD 00DD DDDD 0DB1 10D0"            /* .���.���.���.�.� */
	$"00DD DDDD 00DD DDDD 00DD DDDD 00DD DDDD"            /* .���.���.���.��� */
	$"00DD DDDD 00DD DDDD 00DD DDDD 00DD DDDD"            /* .���.���.���.��� */
	$"00DD DDDD 00DD DDDD 00DD DDDD 00DD DDDD"            /* .���.���.���.��� */
	$"00DD DDDD 00DD DDDD 00DD DDDD 00DD DDDD"            /* .���.���.���.��� */
	$"00DD DDDD 00DD DDDD 00DD DDDD 00DD DDDD"            /* .���.���.���.��� */
	$"00DD DDDD 0000 0000 0000 0004 00DD DDDD"            /* .���.........��� */
	$"0DB1 1CD0 AB00 0006 0000 0160 0004 5C4C"            /* .�.Ы......`..\L */
	$"0000 0000 00DD DDDD 0000 014E 0000 0000"            /* .....���...N.... */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0184 0000 0007 0000 0000"            /* .......�........ */
	$"0000 0001 FFFF FFFF FFFF 0000 0000 FFFF"            /* ....������....�� */
	$"FFFF 0000 0000 FFFF 0000 0000 FFFF FFFF"            /* ��....��....���� */
	$"0000 0000 FFFF FFFF 0000 FFFF FFFF FFFF"            /* ....����..������ */
	$"FFFF E6E6 E6E6 E6E6 D9D9 D9D9 D9D9 CCCC"            /* ���������������� */
	$"CCCC CCCC BFBF BFBF BFBF B3B3 B3B3 B3B3"            /* ���̿����������� */
	$"A6A6 A6A6 A6A6 9999 9999 9999 8C8C 8C8C"            /* ���������������� */
	$"8C8C 8080 8080 8080 DBDB 0000 2A2A FCFC"            /* ����������..**�� */
	$"F5F5 0000 0000 9191 5050 0000 A5A5 E6E6"            /* ��....��PP..���� */
	$"2C2C 0000 6868 DFDF 0000 7171 7373 7373"            /* ,,..hh��..qqssss */
	$"7373 6666 6666 6666 5959 5959 5959 4D4D"            /* ssffffffYYYYYYMM */
	$"4D4D 4D4D 4040 4040 4040 3333 3333 3333"            /* MMMM@@@@@@333333 */
	$"2626 2626 2626 0D0D 0D0D 0D0D 0D0D 0D0D"            /* &&&&&&.......... */
	$"0D0D 0000 0000 0000 F3F3 8B8B 6565 F7F7"            /* ........��ee�� */
	$"A6A6 6E6E FCFC C3C3 7878 FFFF F7F7 8C8C"            /* ��nn����xx������ */
	$"BDBD DCDC 8C8C 9898 CDCD 8C8C 7575 C0C0"            /* ���܌����͌�uu�� */
	$"8B8B 7676 C2C2 BEBE 7474 C4C4 F0F0 7E7E"            /* ��vv�¾�tt����~~ */
	$"9898 CCCC 8181 8181 B9B9 8383 6C6C A8A8"            /* ���́�������ll�� */
	$"9E9E 7373 AAAA BBBB 7B7B ACAC F4F4 8B8B"            /* ��ss����{{���� */
	$"AFAF F4F4 8B8B 8A8A E9E9 5555 3A3A F0F0"            /* ���􋋊���UU::�� */
	$"8181 4040 F6F6 A9A9 4646 FFFF F6F6 5353"            /* ��@@����FF����SS */
	$"9B9B CECE 5A5A 6565 BABA 5C5C 2020 A8A8"            /* ����ZZee��\\  �� */
	$"5E5E 2525 ABAB A5A5 1E1E ADAD EBEB 4646"            /* ^^%%����..����FF */
	$"7575 B8B8 5050 5959 A0A0 5555 3B3B 8888"            /* uu��PPYY��UU;;�� */
	$"7B7B 4040 8989 A0A0 4646 8A8A EBEB 5151"            /* {{@@����FF����QQ */
	$"8D8D EBEB 5353 6464 DBDB 0000 2A2A E5E5"            /* ����SSdd��..**�� */
	$"4F4F 1818 EFEF 8A8A 0909 FCFC F5F5 0000"            /* OO..�..����.. */
	$"6C6C BDBD 1919 0000 A4A4 2D2D 0000 9191"            /* ll��....��--..�� */
	$"5050 0000 9595 8C8C 0000 A5A5 E6E6 0000"            /* PP..����..����.. */
	$"5858 A3A3 1F1F 3030 8383 2C2C 0000 6868"            /* XX��..00��,,..hh */
	$"5353 0000 6868 8080 0000 6969 DFDF 0000"            /* SS..hh��..ii��.. */
	$"7171 DEDE 0000 4C4C 8686 0000 1A1A 8C8C"            /* qq��..LL��....�� */
	$"3030 0F0F 9292 5454 0404 9A9A 9696 0000"            /* 00..��TT..����.. */
	$"4242 7474 0F0F 0000 6464 1B1B 0000 5959"            /* BBtt....dd....YY */
	$"3131 0000 5B5B 5656 0000 6565 8C8C 0000"            /* 11..[[VV..ee��.. */
	$"3636 6464 1313 1D1D 5050 1B1B 0000 3F3F"            /* 66dd....PP....?? */
	$"3333 0000 4040 4E4E 0000 4040 8888 0000"            /* 33..@@NN..@@��.. */
	$"4545 8787 0000 2F2F 5B5B 0000 1111 5F5F"            /* EE��..//[[....__ */
	$"2121 0A0A 6363 3939 0202 6868 6565 0000"            /* !!..cc99..hhee.. */
	$"2D2D 4E4E 0A0A 0000 4444 1313 0000 3C3C"            /* --NN....DD....<< */
	$"2121 0000 3D3D 3A3A 0000 4444 5F5F 0000"            /* !!..==::..DD__.. */
	$"2424 4343 0D0D 1414 3636 1212 0000 2B2B"            /* $$CC....66....++ */
	$"2222 0000 2B2B 3535 0000 2C2C 5C5C 0000"            /* ""..++55..,,\\.. */
	$"2F2F 5C5C 0000 1F1F C1C1 AAAA 8B8B 8E8E"            /* //\\....�������� */
	$"7878 6161 6363 5151 4343 4141 3434 2E2E"            /* xxaaccQQCCAA44.. */
	$"2727 1F1F 1F1F BEBE 9393 5B5B 9B9B 7070"            /* ''....����[[��pp */
	$"3E3E 7C7C 5353 2929 6161 3C3C 1A1A 4A4A"            /* >>||SS))aa<<..JJ */
	$"2929 1111 0101 0000 0000 0101 0000 0000"            /* )).............. */
	$"0101 0000 0000 0101 0000 0000 0101 0000"            /* ................ */
	$"0000 0101 0000 0000"                                /* ........ */
};

resource 'BNDL' (128) {
	'Mngl',
	0,
	{	/* array TypeArray: 2 elements */
		/* [1] */
		'ICN#',
		{	/* array IDArray: 7 elements */
			/* [1] */
			0, 128,
			/* [2] */
			1, 0,
			/* [3] */
			2, 129,
			/* [4] */
			3, 0,
			/* [5] */
			4, 0,
			/* [6] */
			5, 130,
			/* [7] */
			6, 131
		},
		/* [2] */
		'FREF',
		{	/* array IDArray: 7 elements */
			/* [1] */
			0, 128,
			/* [2] */
			1, 129,
			/* [3] */
			2, 130,
			/* [4] */
			3, 131,
			/* [5] */
			4, 132,
			/* [6] */
			5, 133,
			/* [7] */
			6, 134
		}
	}
};

data 'Mngl' (0, "Owner resource") {
	$"1BA9 2031 3939 382D 3230 3030 204D 6968"            /* .� 1998-2000 Mih */
	$"6169 2050 6172 7061 7269 7461"                      /* ai Parparita */
};

resource 'MBAR' (128) {
	{	/* array MenuArray: 5 elements */
		/* [1] */
		128,
		/* [2] */
		129,
		/* [3] */
		130,
		/* [4] */
		135,
		/* [5] */
		137
	}
};

resource 'PICT' (128, "About Pic") {
	51332,
	{0, 0, 300, 456},
	$"0011 02FF 0C00 FFFE 0000 0048 0000 0048"
	$"0000 0000 0000 012C 01C8 0000 0000 00A1"
	$"01F2 0016 3842 494D 0000 0000 0000 012C"
	$"01C8 4772 8970 68AF 626A 0001 000A 0000"
	$"0000 012C 01C8 8200 0000 ADF0 0000 0001"
	$"0000 0000 0000 0000 0000 0000 0000 0001"
	$"0000 0000 0000 0000 0000 0000 0000 4000"
	$"0000 0000 0000 0000 0000 0000 0000 0040"
	$"0000 0000 0110 01C8 0000 0300 0000 0000"
	$"0000 0056 6A70 6567 0000 0000 0000 0000"
	$"0001 0001 6170 706C 0000 0000 0000 0300"
	$"01C8 0110 0048 0000 0048 0000 0000 AD55"
	$"0001 0C50 686F 746F 202D 204A 5045 4700"
	$"0000 0000 0000 0000 0000 0000 0000 0000"
	$"0000 0018 FFFF FFD8 FFE0 0010 4A46 4946"
	$"0001 0101 0048 0048 0000 FFFE 000C 4170"
	$"706C 654D 6172 6B0A FFDB 0084 0003 0202"
	$"0202 0203 0202 0203 0303 0304 0604 0404"
	$"0404 0705 0605 0609 0809 0908 0808 0809"
	$"0A0D 0B09 0A0D 0A08 080C 100C 0D0E 0E0F"
	$"0F0F 090B 1011 100E 110D 0E0F 0E01 0303"
	$"0304 0304 0704 0407 0E0A 080A 0E0E 0E0E"
	$"0E0E 0E0E 0E0E 0E0E 0E0E 0E0E 0E0E 0E0E"
	$"0E0E 0E0E 0E0E 0E0E 0E0E 0E0E 0E0E 0E0E"
	$"0E0E 0E0E 0E0E 0E0E 0E0E 0E0E 0E0E FFC4"
	$"01A2 0000 0105 0101 0101 0101 0000 0000"
	$"0000 0000 0102 0304 0506 0708 090A 0B01"
	$"0003 0101 0101 0101 0101 0100 0000 0000"
	$"0001 0203 0405 0607 0809 0A0B 1000 0201"
	$"0303 0204 0305 0504 0400 0001 7D01 0203"
	$"0004 1105 1221 3141 0613 5161 0722 7114"
	$"3281 91A1 0823 42B1 C115 52D1 F024 3362"
	$"7282 090A 1617 1819 1A25 2627 2829 2A34"
	$"3536 3738 393A 4344 4546 4748 494A 5354"
	$"5556 5758 595A 6364 6566 6768 696A 7374"
	$"7576 7778 797A 8384 8586 8788 898A 9293"
	$"9495 9697 9899 9AA2 A3A4 A5A6 A7A8 A9AA"
	$"B2B3 B4B5 B6B7 B8B9 BAC2 C3C4 C5C6 C7C8"
	$"C9CA D2D3 D4D5 D6D7 D8D9 DAE1 E2E3 E4E5"
	$"E6E7 E8E9 EAF1 F2F3 F4F5 F6F7 F8F9 FA11"
	$"0002 0102 0404 0304 0705 0404 0001 0277"
	$"0001 0203 1104 0521 3106 1241 5107 6171"
	$"1322 3281 0814 4291 A1B1 C109 2333 52F0"
	$"1562 72D1 0A16 2434 E125 F117 1819 1A26"
	$"2728 292A 3536 3738 393A 4344 4546 4748"
	$"494A 5354 5556 5758 595A 6364 6566 6768"
	$"696A 7374 7576 7778 797A 8283 8485 8687"
	$"8889 8A92 9394 9596 9798 999A A2A3 A4A5"
	$"A6A7 A8A9 AAB2 B3B4 B5B6 B7B8 B9BA C2C3"
	$"C4C5 C6C7 C8C9 CAD2 D3D4 D5D6 D7D8 D9DA"
	$"E2E3 E4E5 E6E7 E8E9 EAF2 F3F4 F5F6 F7F8"
	$"F9FA FFC0 0011 0801 1001 C803 0121 0002"
	$"1101 0311 01FF DA00 0C03 0100 0211 0311"
	$"003F 00FC F90A 0D38 8029 DCCD 6E20 C500"
	$"1E9D A91A 0BC5 00F6 A005 6181 8A50 0803"
	$"1C52 6C56 14E7 3C52 800F 5A5C E580 C670"
	$"68DB 93F2 F6A4 DE84 8E5C 1C86 A5DB 8E82"
	$"A2F7 1AD4 504F 4C52 E334 14A2 18A5 0067"
	$"9345 CAB0 F551 4A17 2769 E949 9490 A130"
	$"6A44 538E 2916 0B18 0082 2954 3260 9A57"
	$"1884 6473 EB4A 1323 8A8E 6B68 502A E063"
	$"BD28 5CF1 49B1 8E11 E0D3 8443 A93D 2A02"
	$"C2F9 60F6 C7BD 3C2A 9500 1E94 5CB5 1048"
	$"FDB8 A705 0080 0524 ECCA 4AC3 8478 276F"
	$"7A7F 9609 C1A9 4EC8 761C AA7A 0AB7 6323"
	$"44D8 1DCD 6753 DE8B 37A0 FD9C D337 22BA"
	$"5962 D99E 7349 345D 405A F194 7D9C EE7D"
	$"345F B5A7 732A E60C 93CE 2B2E 7809 38AF"
	$"4E8C B43C 7C45 37A9 4658 181D A6AB 343B"
	$"78C5 7A10 9D8F 1EAC 08CA 60D0 7207 15AE"
	$"E73F 28E0 0539 0F38 2287 B1AC 3464 A781"
	$"C538 2960 38E3 BD64 B636 5A86 D2A7 EE71"
	$"D8D2 95E3 2452 6F53 551D 1903 93F8 540D"
	$"8539 15AA D8E3 9E80 A734 E1C8 22A9 99C5"
	$"97B4 519D 634F 53D0 DDC2 0FFD F6B5 EBBF"
	$"658B FDBF FBF8 DFE3 421B 3C2D 727A 57D2"
	$"5FB2 9FEC BFE1 3FDA 0F41 F11E ADE2 4F11"
	$"6ADA 649A 2DF4 36B1 258A C4C1 D5E3 DE4B"
	$"6F07 9CFA 579B 9EE6 3532 9C0C F154 E29B"
	$"8DB4 7B6A D2FD 49C0 6156 26BC 69C9 D93B"
	$"FE47 B93F FC13 77E1 7A46 EE3C 7DE2 8CAA"
	$"93FE AEDF B0FF 0076 BE03 BFB6 4B3D 42EE"
	$"CD0B 32DB DC4B 0A93 D485 72A0 9FCA BCCE"
	$"18E2 0AF9 E3AA AB41 4793 96D6 BF5B F7F4"
	$"3B33 2C0C 304A 1C8D BBDF 7F2B 10E0 E38A"
	$"02D7 D5B7 63CB 5A8B C8ED 4A4A 9A87 AEA0"
	$"2851 DA94 034B 41DC 7018 E585 0428 C11D"
	$"E90D 0B8E 71EB 4E00 F4C8 A5B9 7602 0EDE"
	$"01CD 3955 B1DA 90EC C704 CF27 AD01 3079"
	$"A0A4 8704 EE29 483D 08A4 D949 0F58 C91D"
	$"4505 1940 39A1 B4D1 4854 2472 0529 2180"
	$"26A5 BB0E D71F E58D B46C 61CF 6A9D 0AB0"
	$"A632 319E 49F4 A7AA 7A0E 6A58 D762 4118"
	$"3D47 349B 3B1E 6A1E 85D8 7AC6 00C3 739E"
	$"942C 415B 18EB 50E4 5A88 F44C 91D7 19E9"
	$"5D17 C3DF 0BD9 F8CF C7FE 1AF0 8DED C4B0"
	$"5B6B 5AB5 AE9F 2CB1 637A 24B2 2A16 5CF1"
	$"900F 7A13 BE83 B595 CFD2 63FF 0004 8FF8"
	$"424E 47C4 AF17 FE56 BFFC 6EBE 45FD B3FF"
	$"0066 2F0B FECC 5E30 F0F7 86FC 2DAF EA9A"
	$"B43A C699 25F4 B25F 88C3 232C BB00 5D8A"
	$"0631 EB5D 1568 28C6 E99C F46B BA92 E568"
	$"F9E5 2301 7271 4E8E 3667 1B01 27D2 B93A"
	$"1D96 E5D5 9A51 5ACF 1A89 1538 2735 B96B"
	$"6B25 FAA4 76F1 33CB 21C2 AA8C EEFA 578D"
	$"8AA8 97BF D0FA 2C02 9690 6B56 51D6 B44B"
	$"DD2E 636F 7706 C71D 41ED F5AC 1B88 4672"
	$"01C0 AE8C 2568 D6A7 19C7 67A9 9E32 8BA7"
	$"2946 4B54 5095 1723 8355 658D 7764 74AF"
	$"569B D0F0 AB45 5CAC D163 91D2 9840 3C63"
	$"15D5 1926 8E29 46C3 4293 40E4 E6AD 3B93"
	$"71E1 8F4A 9A20 4823 3F5A C5FB A6F0 6585"
	$"1B93 6E0E 0521 8CED C9AC AE76 28D9 1525"
	$"4C1E A2A9 B8CB 62BA 69BB A3CD AEAC C388"
	$"C73D E9E3 A6EA B663 1468 6880 FF00 6CE9"
	$"C7FE 9EE1 FF00 D0D6 BD87 07D2 9228 F075"
	$"E95F 7AFF 00C1 373F E44D F1DF FD86 2D3F"
	$"F441 AF9D E317 FF00 08F5 7D63 FF00 A523"
	$"A328 FF00 7B8F CFF2 3EC2 97FD 4C9F EE37"
	$"F2AF C5CB EB1B CD4F C4F7 7A76 9F6B 2DD5"
	$"DDD6 A534 3041 0A17 7924 6958 2AAA 8E49"
	$"2780 2BE7 3802 4A3F 5A6D D925 1FFD B8F4"
	$"73D5 7F66 979F E87D 61F0 D3FE 09D5 E22D"
	$"6B4E 8755 F89D E2F5 D01E 650E 34CB 0816"
	$"EA78 C7A4 B233 0456 F65D D8F5 35DC EA3F"
	$"F04D CF02 4B6A C9A4 FC47 D7AD AE70 763C"
	$"F690 CC99 ED90 0A9C 7E34 F17C 7928 E21C"
	$"70D4 93A6 9EED B4DF 9F97 90A9 6469 D3BD"
	$"49DA 5E5D 0F96 BE37 FECD DF10 7E03 5E42"
	$"DE22 8A0D 4346 BC90 C769 ABD9 0630 48DD"
	$"7638 3CC4 F8E7 69EB D89E 71C3 7837 C15E"
	$"25F8 87E2 4B2F 08F8 4B4B 9750 D52F DCAC"
	$"30A7 0001 CB3B B1E1 5147 258F 02BE D709"
	$"9AE1 F198 158E 8BB4 2CDB BF4B 6E9F A7E2"
	$"78D5 B0B5 2956 F62D 6BD3 CEFB 1F63 783F"
	$"FE09 BB66 2C23 9BC7 BF11 E717 ACB9 7B6D"
	$"26D5 4C51 9F4F 3643 96C7 AED0 2B43 5CFF"
	$"0082 6EF8 5E5B 463E 18F8 97AA 5B5D 853B"
	$"05FD 9473 44C7 B6E2 8558 0FA0 35F0 B3E3"
	$"DA9E DBDC A0BD 9DFA B7CD 6FCA E7B9 1C8E"
	$"3C9A CFDE F4D0 F937 E2E7 C14F 1E7C 14D7"
	$"A3D0 7C6B 611A ADC8 67B2 BEB7 62F6 D768"
	$"3A94 6C0C 1191 9538 23E8 413E ABF0 07F6"
	$"3B5F 8E7E 046F 1A9F 1D9D 1CAD F4D6 5F67"
	$"FB0F 9FF7 029D DBB7 8EBB BA63 B57D 4E3F"
	$"8829 61B2 E866 3463 CF19 3565 7B6F 7DFC"
	$"D356 679D 4701 2A95 DE1E 6ECD 1DD7 88BF"
	$"E09D 575A 3681 A8EA DA77 C489 752B BB4B"
	$"6925 B7B2 8F4B 01AE 6403 E48C 1F33 82C7"
	$"033D B39A D5F0 2FFC 139E C65D 120B CF88"
	$"BE3A BC83 559E 30F2 59E9 70A1 8ADC 919D"
	$"8657 E5C8 E848 007A 57CD D4E3 BFDC 3953"
	$"A294 EF64 9BBA B5B5 6FF2 5F33 D08E 4B69"
	$"DA53 D2DD 8F2D FDA2 BF63 DD63 E09E 92BE"
	$"32F0 FEB8 DAF7 86FC D586 E5E5 8443 7166"
	$"EC70 85C2 92AC 84FC BB86 3071 91C8 AF25"
	$"F85B F0A7 C71F 19FC 6765 F0FF 00E1 EE8A"
	$"FA9E B17B 9609 BB64 70C6 B8DF 2CD2 1E23"
	$"8D73 CB1F 6001 2403 F5B9 2E6B 1CE3 091C"
	$"4455 9DDA 6BB3 5FD2 7F33 CDC5 E19E 16A3"
	$"8377 5BAF 43F4 0FC0 FF00 F047 CD1D 74E8"
	$"AE3E 23FC 5DBE 9350 74CC B6FA 3592 470C"
	$"6DE8 B24A 4B3F D76A D5AF 16FF 00C1 1F3C"
	$"312D 848F E05F 8C1A A5AD F2A9 F2E3 D56C"
	$"239E 176E DB9A 32AC A3E8 0D7B 5ECF CCE2"
	$"F69E 47C1 BF1B 3E01 FC49 FD9E 3C5A 7C1B"
	$"F11F 485B 69E5 4335 95DD BB79 B6B7 D083"
	$"8F32 1930 3201 C02A 4065 3D47 209F 50FD"
	$"91BF 628F 13FE D537 3A86 B336 BA3C 3BE1"
	$"2D1E 516D 73A8 883C F9A7 B82A 1BC9 8109"
	$"0A48 52A5 989C 2875 E093 58F2 B72E 535E"
	$"64A3 CC7D 4FE2 BFF8 240F 849F 4594 F81B"
	$"E2CE B106 AE88 4C23 54B4 8A6B 691B 1C2B"
	$"F97B 5901 3DC6 EC7A 1AF3 DF86 7FF0 49AF"
	$"1B78 9FC3 6DA9 FC44 F1E8 F0A6 B097 B716"
	$"CDA7 4562 B7C8 628D F6A4 CB2F 98B9 1260"
	$"B0E0 7057 B920 5FB2 D742 156D 3546 27ED"
	$"0FFF 0004 DD1F 007E 10EB BF15 C7C5 67D6"
	$"7FB1 7ECC 3EC2 74A1 079B E6DC 470F DF12"
	$"B631 E6EE E9CE 3155 3F66 9FF8 2732 FED0"
	$"DF08 F4CF 8AAD F14D F453 A95C 5DC1 F621"
	$"A58B 811F 933B C59D E645 CE76 67A7 19A8"
	$"74AF 2E5B 97ED 3DDE 6B1D 17C5 DFF8 25C6"
	$"A5F0 D3E1 FEA3 E2CD 0FE2 5DD7 8935 4B76"
	$"821B 0D22 1D1C 44F7 B712 CA91 2461 FCD3"
	$"B797 CE71 8001 2703 9AE6 FE35 FF00 C13E"
	$"E7F8 03FB 3B5C FC57 F187 8DDE FBC5 10DC"
	$"5944 FA65 942A 2CED FCE9 951D 4CAD F3C8"
	$"5431 F980 5191 D08A 1D2E 5BBB 8D55 E6B6"
	$"9B9C 4FEC D5FB 0DFC 51FD A460 1E23 B39A"
	$"0F0D F845 2431 9D62 FA36 7372 CA70 EB6D"
	$"08C1 9304 1058 90A0 8C64 9C81 F5CD 87FC"
	$"122F E17C 36A8 9A8F C53F 145C 5C0F BF2C"
	$"56F6 D0AB 7D14 86C7 E668 851E 7576 13AD"
	$"C92B 23CF BE2A 7FC1 26FC 47A2 E8F7 1AB7"
	$"C23F 884B AFDD 4086 41A5 6AB6 E96B 24C0"
	$"7F04 73AB 14DC 7B6F 0A0F A8EB 5F12 685E"
	$"08D4 351F 1FE9 DF0F 3578 A7D2 6FEE F588"
	$"747B A59E 2224 B495 E611 3864 383B 9493"
	$"91C7 4ACA AD37 4DAE CCDA 8D45 5137 D51F"
	$"7A9F F824 1203 F2FC 7297 1DB3 A1AF FF00"
	$"1EAE 4B59 FF00 8254 F8DA 0F1F 68FE 15D0"
	$"3C7B 1DE6 8771 6925 DEAD AE5C E9FE 4AD9"
	$"E1D5 5218 A30E 7CE9 5C6E 38CA 850B 9279"
	$"19B7 866B 6644 716B AA3D 2F56 FF00 8247"
	$"7821 B457 8F42 F8B3 AEC5 AB88 FE49 AEAC"
	$"E192 DD9F 1FC5 1AE1 8293 E8C4 8F7A F8DB"
	$"44F8 55E2 EF82 DFB5 1785 7E1C 78D6 C921"
	$"D534 CF13 E9B9 788E E8A7 89A7 431C D1B1"
	$"EA8C BC8E E390 7041 A8AB 47D9 D9A3 4A55"
	$"FDAA 69AD 4FDC 3AF9 27F6 B1FD 8CFC 47FB"
	$"50FC 58F0 CEAE 3C4D 6DE1 FF00 0DE8 BA34"
	$"96D7 775E 57DA 2E64 99A7 2C12 28B2 07DD"
	$"E4B3 1039 1807 B75D 4839 C795 1C54 66A9"
	$"CB99 9E7B E20F F824 A783 1F48 9078 53E2"
	$"B6B5 06AA A84C 4DA8 5A43 35BB B638 0CA9"
	$"B594 13DC 1247 A1AF 897C 59F0 4FC5 7F0B"
	$"BC67 A8F8 17C6 B622 DB55 D324 01C2 1DD1"
	$"CA84 6524 8DBF 891C 720F E070 4103 C7CC"
	$"97D5 28A6 9E8F 43DA CB25 F5CA AE2D 6AB5"
	$"3E80 F811 FB0D 78D7 E34E 9117 892F 6F21"
	$"F0E7 8726 2443 773C 4659 6E70 70C6 18B2"
	$"32B9 C8DC C402 41C6 706B E9DF 017F C138"
	$"7E18 F81A 49AF 9BC5 BAD6 A77F 2A15 59A7"
	$"8A15 488F AA46 01C7 E66B CFFE C596 6983"
	$"946B 4DC3 9D74 DEDF 3EFF 0091 DB5F 3BFA"
	$"8E25 2A11 4DC7 7BF7 3C27 F686 FF00 8278"
	$"FC43 D0E0 BFF1 C781 35E4 F175 BC2A D34F"
	$"A7FD 9FEC F7A1 4724 C6A0 9597 03F8 4618"
	$"F604 F15F 1EFC 3AF0 1B7C 44F8 93E1 BF87"
	$"8F7A 74EF F848 B548 74D3 73E5 7986 0F31"
	$"B6EE D991 9C7A 6453 A782 9E5D 2861 DBBC"
	$"7449 9D92 CCA3 9AC2 789B 5A4B 75FD 743E"
	$"D693 FE09 088E 78F8 E120 FF00 B822 FF00"
	$"F1EA F38F F876 0F8B AFBE 354B F0D3 48F1"
	$"C2CB E1CD 334B B5D4 356F 114F A7F9 7E54"
	$"B33C A16D 6184 3912 CBB2 20F9 2C00 0C33"
	$"D403 EEFD 55C6 DA9F 34F1 CAA5 EF1B 1F3C"
	$"7ED5 1F05 348F D9FB E346 AFF0 B343 D5EF"
	$"354B 4D32 D6CA 6175 76AA B23B 4D02 48D9"
	$"0BC0 00B1 C7B5 7903 277A 57E5 9343 F8E2"
	$"A5DC 8D97 0777 AD34 AF7E 95A2 666D 584C"
	$"3678 A9A1 620E 2A5E A383 B32F DBBA 952A"
	$"0669 F2AE F03B 572B BA91 E9C5 7340 CEB9"
	$"4DA4 D527 5239 AEC8 3B9E 6621 5861 1BB1"
	$"9A91 783C 1AD1 EC73 C4BF A26F FEDA D3CF"
	$"FD3D C3FF 00A1 AD7B 165B D684 33C1 D71B"
	$"B15F 7AFF 00C1 373F E44D F1DF FD86 2D7F"
	$"F441 AF9D E31B 7F63 D5F5 8FFE 948E 8CA2"
	$"FF00 5B8F CFF2 3EC2 97FD 4C9F EE37 F2AF"
	$"CF4F D85F C296 1AF7 ED05 E20D 7AF6 DD25"
	$"6F0E 5A5E 5D5B 6F00 859A 4B81 0861 FED0"
	$"576C 1ED5 F079 0D57 472C CC65 1FE4 8AFB"
	$"DC97 EA7B B8E8 A9E2 70E9 F77F 8599 FA1C"
	$"0648 1EB5 E0BF B3BF C72F 15FC 55F8 83F1"
	$"37C3 3E20 4B3F B178 6352 F2F4 B30C 3E5B"
	$"A406 69A2 08E7 F8CE 2207 71E7 24F6 E2BC"
	$"6C1E 0E9D 7C26 26BC B7A6 A2D7 CE49 3FC0"
	$"EBAD 5650 AB4E 0B69 377F 92B9 E89F 1A3C"
	$"1B65 E3FF 0085 5E29 F0A5 F5BA CA2E F4D9"
	$"DE1D C33B 2E11 4BC2 E3DD 5D54 FE63 BD7C"
	$"CDFF 0004 E4F0 8598 D0FC 57F1 0A5B 756B"
	$"B9EE 62D2 2094 8E63 8D51 6694 03FE D192"
	$"2CFF 00BB EF5E B603 1528 6418 CA49 FDA8"
	$"7FE4 CF5F C227 2D7A 49E3 A94F C9FE 1FF0"
	$"E7D6 BE33 D6E6 F0CF 83B5 EF11 DBA2 BCDA"
	$"5E97 7579 12B0 CA97 8E26 6507 DB70 19F6"
	$"AF3A FD95 BE2A 789B E327 C1FB 5F1A 78BC"
	$"DB36 A9FD A377 652B DBC4 2147 58CA 153B"
	$"0700 E1F1 C7A5 7934 F070 9E5D 5314 FE28"
	$"CE31 5E8D 49BF C91D 52AA D622 34BA 34DF"
	$"DCD1 07ED 73E0 CD3B C63F 01BC 4AD7 76C8"
	$"F75A 1C1F DAF6 5291 968A 4888 2F83 E8D1"
	$"EF53 F51E 95C9 7EC0 DFF2 42E4 FF00 B0E5"
	$"E7FE 8315 7A94 EAB9 F0EC E9BF B355 5BE6"
	$"BFCE E73C A096 3D4B BC7F 53DC FE20 788A"
	$"7F08 7813 C45E 2AB4 8D1E 7D27 4BB9 BC85"
	$"5C65 4C88 84AE 40EA 3763 35C1 7ECB 5F14"
	$"BC49 F187 E10D AF8C BC5A D6CF AA7F 685D"
	$"594C F6F0 8851 C465 0A9D 8380 70F8 E3D2"
	$"BCCA 783A 72CB 6A62 DFC5 19C6 2BD1 A6DF"
	$"E874 4AAC 9622 34BA 34DF E28D 4FDA 3EC6"
	$"3D43 E03F 8EED E550 CABA 25C4 F83E B181"
	$"229F C0A0 3F85 677F C125 BE1E 69BA 7FC3"
	$"1F16 7C4F 7B44 FED2 D675 8FEC 98E6 2016"
	$"5B5B 78E3 72AA 7A80 D24C D91D FCB5 F415"
	$"F7DC 02EF 85AA BFBD FA23 C4CF 3E38 BF2F"
	$"D4FB 03E3 6F8D B51F 86FF 0008 7C63 E3CD"
	$"1E28 A4BF D0B4 6BAB DB55 946E 4F35 2325"
	$"370E E01C 123B E2B8 7FD8 D7E3 0F8A 3E3A"
	$"FECF FE1F F885 E347 B57D 6EE6 4B9B 7BC9"
	$"2DA1 10C7 2347 3328 6083 85F9 76E7 1C66"
	$"BEF6 FEF5 8F0A DEED CE27 FE0A 3FF0 E349"
	$"F1BF ECC5 AEEB D736 A8DA 9F84 2583 56D3"
	$"E6DA 3726 6548 A650 7A85 68A4 6247 728B"
	$"E953 7FC1 37B4 8B7D 2BF6 49F0 A4B1 2209"
	$"350B AD4A F276 5182 EED7 72A8 27DC 2222"
	$"FD14 54FF 00CB CF91 57FD DFCC F4EF DA73"
	$"E26E B5F0 73E0 3F8C FE24 786D 2DDB 56D1"
	$"B4F3 2597 DA10 C918 999D 6352 CB91 900B"
	$"E71D F150 FECB 3F13 3C43 F18B E00F 837E"
	$"2478 B3EC FF00 DB1A CD9C AD76 6DE3 F2E3"
	$"6923 9E48 B705 E8B9 1183 81C6 49C5 3E6F"
	$"7B97 C89E 5F76 FE67 0DFF 0005 0C00 FEC8"
	$"BE39 07D7 4EFF 00D2 FB6A CCFF 0082 6C02"
	$"3F64 9F0C 03FF 003F FAAF FE97 4D4B FE5E"
	$"7C8D 3FE5 D7CC FA81 E28E 5DBE 646A FB58"
	$"32EE 00E0 8E84 7BD7 CC7F F051 BB29 352F"
	$"D97B 55D3 616D AF77 AD69 16EA C39C 17BC"
	$"8941 FCDA 9D4F 8193 4BE3 5EA7 D05E 06F0"
	$"AE95 E07F 06E8 7E0F D12C E3B5 B0D1 AC20"
	$"B282 18C6 02AA 205F CF8C 93DC 935F 3BFC"
	$"7CFD A5FC 71F0 C3F6 A6F8 4DF0 8B44 5B16"
	$"F0FF 008B 3CB1 AB47 2C1B E590 CF3B 4119"
	$"4933 F26C 2BBB 8EBC E7B5 29CB 922A C3A7"
	$"1F69 277F 33EA 5AFC B1FD B23C 2B63 E1FF"
	$"00DB DFC2 7A8D 8DB2 40BA F5DE 857F 3045"
	$"C6F9 85C0 89DC FB91 1A67 E951 885E EAF5"
	$"34C2 FC6D 7933 F53A BE61 FDA4 3F68 DF1D"
	$"7C2B FDA0 BE0E 7C33 F0D1 B04D 1FC6 17E9"
	$"0EB1 E7C1 E649 2A4B 7315 BAAA 367E 4C6F"
	$"66C8 EA76 F6C8 3752 4E11 BA33 A305 3959"
	$"F99F 4F57 E737 EDC7 A6C5 6DFB 6CFC 1CBF"
	$"8D15 5AF1 74D3 211D 5CA6 A0CA 33F4 06A3"
	$"11F0 7CD1 A617 F89F 267E 8CD7 CCDF B42F"
	$"ED19 E37F 861F B437 C21F 85FE 1B8A C8E9"
	$"1E2C BC44 D67C E83C C924 8E6B 98ED A308"
	$"D9F9 3696 66C8 EA40 CF19 06AB 54F6 71E6"
	$"F427 0F4B DB4F 97C9 FE08 FA66 BE12 FDB6"
	$"3C21 6BAE FC7C F075 8840 1F5D B0B6 B395"
	$"9786 C1BA 68F3 9F50 AC71 5E4F 1045 CF04"
	$"E2B7 E68F E2EC 7A79 04B9 3189 FF00 765F"
	$"82B9 F716 93A5 D8E8 7A5D 9E8D A65B A416"
	$"7630 25B4 1120 DAA9 1A28 5500 0EC0 015E"
	$"0BF1 93E3 D78C 3C09 FB45 FC30 F85B A1C7"
	$"66DA 3F89 9BFE 26A2 4877 48CB 2486 24D8"
	$"F9F9 7691 BB8E BDEB BB1B 5678 6A51 74BF"
	$"9A2B E4DA 4FF0 39B2 FA10 C5D6 9AAB FCB3"
	$"7F34 9B5F 89F4 2D7E 64FC 55F8 79A6 F807"
	$"FE0A 21E1 4874 7B35 B7B2 D67C 41A5 EB31"
	$"C68B B516 499B F7C1 40E8 0C88 CDF5 6ACF"
	$"318D E34E 5DA4 BF13 5CA6 769D 5874 707F"
	$"81FA 6D4D 5444 2CCA 8A0B 9CB1 031B 8E00"
	$"C9F5 E001 F857 A279 27E3 1FFC 1485 73FB"
	$"5BF8 B303 FE5C 74AF FD23 8EBE 5F64 2480"
	$"315E 7CBE 37EA 7AF0 5FBB 8FA2 2274 6047"
	$"C99A 8DC1 F4C5 545D C89A 1806 01E6 951B"
	$"1D2A EC8C B677 2DDB 4BB7 E607 9CD5 D525"
	$"C672 2B96 A6E7 A742 5789 4EE9 579F D2A8"
	$"36D0 39AD A8EA 8E2C 5DAE 44C1 7F86 81C0"
	$"C77A E8E8 70A7 A97F 4462 359D 3B9F F97B"
	$"87FF 0043 5AF6 2CD0 922E E785 630D 9AFB"
	$"CFFE 09B9 FF00 226F 8EFF 00EC 316B FF00"
	$"A20D 7CD7 1837 FD91 57D6 3FFA 523A 728F"
	$"F7B8 FCFF 0023 EC29 7FD4 C9FE E37F 2AF8"
	$"63FE 09F6 3FE2 E97C 47FF 00AF 33FF 00A5"
	$"95F0 1947 FC8A B30F 4A7F FA53 3DEC 57FB"
	$"D50F 597E 47DD 69F7 97EB 5F97 DE1D FDA0"
	$"FC5F F00B E28F C44B AF09 E99A 55EB 6B7A"
	$"C5C4 738B F491 C288 AE66 2BB7 632F F7CE"
	$"73ED 5DBC 2581 A799 4315 85AA DA8C 946F"
	$"6DF4 95FF 0043 2CD2 B4B0 EE95 48EE 9BFC"
	$"8ECA 6FF8 286F C5EB 9B79 2DDF C31E 140B"
	$"3234 6C44 1719 008C 1FF9 6BEF 5EDB FF00"
	$"04F5 8961 F829 AA22 F6F1 1DC0 CFAF FA3D"
	$"B0FE 95E8 E799 1D0C 972A AAA8 49BE 7942"
	$"F7B7 4BF6 4BB9 860F 193C 6622 2E69 2B27"
	$"B79D BFC8 F74F 8B5F F24A FC65 FF00 600B"
	$"FF00 FD10 F5E3 9FB0 09CF ECED 0FFD 87F5"
	$"0FE5 0D7C C50F F912 57FF 00AF 90FF 00D2"
	$"647A 33FF 007B 87F8 5FE6 8F52 F8FB FF00"
	$"2443 C7DF F62E 5FFF 00E8 96AF 2BFD 823F"
	$"E486 49FF 0061 CBBF FD06 2AD2 87FC 88AB"
	$"7FD7 C8FE 4C53 FF00 7C8F F85F E67A DFC6"
	$"EFF9 237E 37FF 00B0 15DF FE80 6BCA BF60"
	$"818F D9EE 21FF 0051 FD43 F943 5147 FE44"
	$"75BF EBEC 7FF4 9639 FF00 BDC3 FC2F F347"
	$"A6FC 7DC7 FC29 0F1E E7FE 85DB EFFD 12D5"
	$"D07F C12E 463F 65A8 3FEC 61D4 BFF4 24AF"
	$"B3E0 1FF7 7ADF E2FD 11E4 E79F 147D 0F64"
	$"FDAB 79FD 9B7E 250F FA96 EF7F F459 AF2D"
	$"FF00 8268 0DBF B26F 8786 7FE6 21A8 7FE8"
	$"F35F 7BF6 FE47 84BE 0F99 DEFE DA60 1FD9"
	$"5FE2 5E40 3FF1 2490 F3FE FA57 39FF 0004"
	$"F4E3 F647 F037 FBB7 DFFA 5935 2FF9 79F2"
	$"1FFC BBF9 97FF 006F 5FF9 34AF 889F F5E1"
	$"17FE 9445 49FB 03E7 FE19 17E1 CE7F E7CE"
	$"EFFF 004B 6E29 7FCB CF97 EA3F F975 F329"
	$"7FC1 42C6 7F64 6F1C E067 9D37 FF00 4BED"
	$"AB37 FE09 B9FF 0026 97E1 9FFA FF00 D57F"
	$"F4B6 6A3F E5EF CBF5 1FFC BAF9 9ED5 F1B7"
	$"E223 FC25 F849 E2DF 8930 DAC7 7337 87F4"
	$"A9EF 2186 4242 3CAA B88C 3639 DBB8 AE71"
	$"CE33 5F8C BE37 FDAB FE3E 7C4F B844 F1EF"
	$"C41B DD53 4C37 D6FA 83E9 0B1C 5059 7990"
	$"CAB2 C6A2 3450 400C A31C 93EF 5862 AA38"
	$"DA28 DB0B 4E32 4E4C FB0B E1BF FC14 3BF6"
	$"99F8 BFAA FF00 62FC 37FD 9DF4 9D76 E108"
	$"1335 BC97 4218 33D0 CB33 3048 C7FB C41A"
	$"F6DB 2FD9 A3C7 9F17 FE2F F837 F681 F8FB"
	$"3E8B A26A BE0F 8235 B0F0 F787 A492 E636"
	$"9125 7951 EE6E 65EE AEFF 0072 3041 DA3E"
	$"7EA0 D425 3AEB 5564 29C6 1877 A3BB 3EA2"
	$"AFCD AFDB BE14 1FB6 97C2 7902 8DCD 1E95"
	$"93EB 8D41 B157 88F8 3E68 9C27 F13E 4CFD"
	$"25AF 82FF 006D E04F ED7D FB3B 903F E62B"
	$"63FF 00A7 4B7A 788F 83E6 BF31 617F 89F2"
	$"7F91 F7A5 7E7A FEDD 201F DB1B E087 AECB"
	$"2FFD 389A 588F 83E6 8AC1 FF00 13E4 FF00"
	$"23F4 2ABE 2EFD AC34 E173 FB59 FC12 BAD9"
	$"930D DD87 3E98 D4A3 35CD 99CF 930F 7F38"
	$"FE68 E9CA 61ED 3136 FEEC BF26 7DA3 5F37"
	$"FC69 F003 789F F68C F01F 88AF 5C26 9DA3"
	$"59C3 21CF 4798 5D31 55F7 EC6B 8788 EA7B"
	$"2C17 37F7 E1FF 00A5 22B2 79F2 621B 5FCB"
	$"2FC8 FA42 B8AF 137C 1CF0 078C 7C6D A27C"
	$"45D7 F466 B8D7 BC3D B3FB 3EE4 4F22 795B"
	$"5CBA FCA0 ED6F 9893 C8AF 66AD 1857 8A8C"
	$"D689 A7F3 5AA3 8285 7A98 7939 5376 6D35"
	$"F27A 33B5 AFCF DFDA 72E4 2FFC 1423 E115"
	$"B7F7 BFB2 DBFF 0026 A5AC 31AA F4D7 AAFC"
	$"CEAC B5DA ABFF 000C BF23 F40A BE16 FF00"
	$"828A FED5 3F13 FE0F 6B1E 1EF8 71F0 BF5A"
	$"1A1C FA9E 9EFA 9DFE A51C 4925 C04F 30C7"
	$"1471 1705 5065 1C93 827A 018E 73AE 226E"
	$"9D36 D6E6 383A 4AB5 5519 6C7E 6978 D3C6"
	$"9E2E F889 E209 FC59 E39D 7EF3 5BD6 2E91"
	$"127B DBB6 0D2C 8A8A 1501 2001 80A0 01C7"
	$"415C D3E0 31AE 18B6 F567 A738 A8E8 B618"
	$"01EE D513 2E09 C1CD 6917 A98B D889 863B"
	$"D333 81EF 5AAD 4C1A 1D14 9B7A 9AB8 2638"
	$"1CD4 CA17 66F4 AA59 114D 267A 9154 A439"
	$"3C55 D356 31AE F988 F3CD 3863 7026 B539"
	$"5177 44DA 75AD 3BFE BEE1 FF00 D0D6 BD93"
	$"0B4E C078 51EB 5F7A 7FC1 3747 FC51 BE3A"
	$"FF00 B0C5 AFFE 8835 F31C 61FF 0022 8ABE"
	$"B1FF 00D2 91DB 94FF 00BD C7E7 F91F 60CB"
	$"FEA6 4FF7 1BF9 57C3 1FF0 4FC2 A3E2 A7C4"
	$"64CF CC6C 89C7 B0BC FF00 EB8A FCFF 0028"
	$"FF00 9156 61E9 4FFF 004A 67BB 8AFF 007A"
	$"A1EB 2FC8 FBAD 3EF2 FD6B F34F E187 C09D"
	$"1BE3 E7C7 6F1F F867 5BF1 0EA1 A445 6177"
	$"7F7A 92D9 451C 8EED F6B2 9B48 938C 61B3"
	$"F857 570B 6325 97D1 C662 6093 718C 5D9E"
	$"DB91 9951 55E5 4A9B 76BB 7F91 ED77 5FF0"
	$"4E1F 00DA DA4F 743E 2878 9898 6279 0036"
	$"7680 1DAA 4E0F 1ED5 D07F C13D 5FCC F827"
	$"A93F 193E 22B8 247A 66DE DABA 730C FAAE"
	$"7994 D675 69A8 F24A 1B36 EF7E 6EFE 8674"
	$"3051 C1E2 60A3 26EE A5BF 958F 74F8 B1FF"
	$"0024 B3C6 5FF6 01BF FF00 D10F 5E39 FB01"
	$"8C7E CF10 8FFA 8FEA 1FCA 1AF1 687F C892"
	$"BFFD 7C87 FE93 23B2 7FEF 70FF 000B FCD1"
	$"EA3F 1F08 1F04 3C7A 58E0 7FC2 3B7E 3FF2"
	$"0B57 967E C13F F243 65FF 00B0 E5DF FE83"
	$"155D 0FF9 1156 FF00 AFB1 FC85 3FF7 C8FF"
	$"0085 FE67 AD7C 6DFF 0092 39E3 7FFB 015D"
	$"FF00 E806 BCAB F609 FF00 937C 8BFE C3FA"
	$"87F2 86A2 8FFC 892B 7FD7 D8FF 00E9 2CA9"
	$"7FBD C7FC 2FF3 47A6 FC7E FF00 921F E3DF"
	$"FB17 6FBF F44B 5741 FF00 04B9 047E CB30"
	$"67FE 861D 4BFF 0042 4AFB 2E01 7FEC F597"
	$"F7BF 4479 19E7 C51F 43D9 7F6A CFF9 36EF"
	$"893F F62D DEFF 00E8 B35E 5DFF 0004 D3FF"
	$"0093 4EF0 FF00 FD84 350F FD1C 6BEF 7EDF"
	$"C8F0 D7F0 DFA9 DD7E DA8E B1FE CAFF 0012"
	$"8BE7 0745 65FC 4C88 07EA 6B9B FF00 8278"
	$"CD1C DFB2 4782 3CB3 9087 508C FF00 BCB7"
	$"B383 FA8A 5FF2 F3E5 FA8F FE5D FCCD 9FDB"
	$"9EC6 EF50 FD94 3E23 4165 6F24 F2A6 98B2"
	$"F971 A976 2A93 46CD 8039 3800 9FC2 8FD8"
	$"5AC2 F74D FD93 BE1D 5AEA 36B2 DB4F FD9F"
	$"3CBE 5C8A 5182 BDD4 EE87 079E 5594 8F62"
	$"28FF 0097 BF2F D42F FBAF 9FE8 657F C142"
	$"7FE4 D23C 71CE 39D3 BFF4 BEDA B37F E09B"
	$"A31F B267 8647 FD3F EABF FA5B 3517 FDED"
	$"BCBF 52BF E5C7 CFF4 3B0F DB64 67F6 51F8"
	$"9C3F EA05 27FE 8695 F89D A7D9 49A8 6A16"
	$"9A5C 2FB1 EF6E 22B6 56C6 7699 1C20 3F99"
	$"AE4C 5FC6 BD0E AC1F C0FD 4FDF 9F86 BF0F"
	$"3C31 F0B3 C15A 5782 3C23 A45B E9DA 7E9B"
	$"6C91 0485 0299 1C28 DF23 9EAE EC72 4B1E"
	$"4935 E0DF B4DF ED03 E2DF 03FC 72F8 3DF0"
	$"63C2 772B 650F 8AF5 AB5B 9D6A E540 32BD"
	$"A7DA 5235 B74C FDD5 721F 71EB 8500 6326"
	$"BAE6 FD9C 34F2 3929 C7DA CFDE F367 D435"
	$"F9BD FB77 2EEF DB3B E12F B47A 67FE 9C1A"
	$"A313 F07C D1A6 115E A7C9 9FA4 35F0 77ED"
	$"B64F FC35 E7EC F031 FF00 315B 1FFD 3A5B"
	$"D3C4 FF00 0FE6 BF31 613F 89F2 7F91 F78D"
	$"7C13 FB6A E952 5EFE D79F 062E 9402 B0C7"
	$"679F FC18 1359 63EA BA34 7997 75F9 9AE5"
	$"D073 AF65 D9FE 47DE D5F2 FF00 ED11 E10D"
	$"635B FDA1 7E15 EB5A 7C01 EDF4 FBAB 369D"
	$"B3F7 556F 918F E82B 873E AD1C 3E11 4E5B"
	$"7341 7DF2 48E9 C915 F15B DBDD 9FFE 92CF"
	$"A82B E57F DA7F E20C FA07 C6EF 861E 1185"
	$"F6AE A779 6B2C 87FD 9FB5 15FE 95CF C4D4"
	$"7DBE 0A30 E9ED 29B7 E8A4 99B7 0EC2 33C6"
	$"FBCA E946 6FEE 8B3E A8AF 8D3F 6C4D 4FC4"
	$"27E3 4F81 FC35 A5F8 9F57 D2EC F55B 5820"
	$"9C58 DE49 07FA CBB2 85B0 A402 C01E A7D2"
	$"BB33 A94A 385F 75D9 DD6D EA61 9228 BC5A"
	$"E649 AB4B 47E8 767A AFEC 3BA5 EAA8 51BE"
	$"3AFC 5283 3DE1 D75D 4FF2 AF91 FC79 F076"
	$"1F82 5FB7 5FC2 2F0B DB78 D3C4 BE27 4B8B"
	$"CD32 ECDE 6BD7 86EE E109 B875 D8AE 7A20"
	$"DB90 3DCD 6B1C 22C3 C12E 772D 7AB0 58C7"
	$"89A8 E5C8 A3A3 D91F AA15 F95D FF00 054C"
	$"05BE 3DF8 7D4F 2078 4EDF 03D3 FD2E EAB5"
	$"C73B 51F9 98E5 8AF8 8B79 33E2 C961 2C18"
	$"376E F59C F1EE CE46 31C5 79F4 AA68 7AF5"
	$"A991 18C2 8C66 A174 C722 BA60 CE39 C6C4"
	$"0E07 7A61 F5AD D1CD 2561 833C E3AD 2F9A"
	$"40C1 15A3 8DCC D4AC 359F 775E D4C2 7028"
	$"4AD6 44D4 9730 CC1E A294 1CF5 AB31 2EE8"
	$"9FF2 1AD3 BFEB EE1F FD0D 6BD9 3229 203C"
	$"380C F15F 797F C137 863C 1BE3 AFFB 0C5A"
	$"FF00 E883 5F31 C61F F228 ABEB 1FFD 291D"
	$"F952 FF00 6A8F CFF2 3EC1 97FD 4C9F EE37"
	$"F2AF CEBF D89F C636 7E19 FDA2 752D 1EFE"
	$"6585 3C4D 0DEE 9D13 31C0 33AC DE6C 69F5"
	$"6319 02BE 1F20 A4EB 65B9 8416 FC91 7F77"
	$"33FD 0F6B 1D2E 4C45 06FB BFC6 C8FD 1707"
	$"041F 4AF9 F3E0 6FEC EBE2 4F85 DF1A 3C7F"
	$"F103 55BE B097 49D7 9E51 A52C 1233 4C52"
	$"59CC CDE6 A950 10AF CABD 4E79 3C57 9180"
	$"C743 0B86 C4D1 9277 A914 97AA 927A FCAE"
	$"75D6 A2EA 54A7 35F6 5BFC 8F4A F8DB E3AD"
	$"3BE1 CFC2 AF12 78AB 529D 63F2 6C65 82D9"
	$"49C1 96E6 4529 0C6B EA4B 11F4 009E D5F3"
	$"A7FC 13A7 C4F6 4DE1 6F15 F810 CEA2 EED2"
	$"FA2D 5638 C9E5 E292 3585 D80F 4568 901F"
	$"F7C5 7A78 2C2C A590 62AB 25A7 343F F256"
	$"AFFF 00A5 1CD5 AA25 8DA5 0F27 F8FF 00C3"
	$"1F56 78C3 4393 C4DE 11D7 3C37 14AB 1C9A"
	$"AE9B 7565 1BB7 DD57 9226 4527 D812 33ED"
	$"5E7B FB2F 7C28 F10F C17F 8496 DE09 F154"
	$"D672 6A63 50BA BD97 EC92 9962 5121 40A0"
	$"3151 9384 07A7 7AF2 69E3 210C BEA6 11AF"
	$"7A53 8C97 6B25 24FF 0034 754A 9375 E353"
	$"A24D 7E46 7FED 7FE3 3D3F C23F 023C 416D"
	$"7370 AB77 AFA2 E936 5167 E691 A460 6420"
	$"7A2C 61C9 3F4F 5AE6 3F60 AFF9 21B2 7FD8"
	$"72EF FF00 418A BD5A 749C 3876 737F 6AAA"
	$"B7A2 56FC EE73 B927 8D4B B47F 53D6 FE36"
	$"F3F0 73C6 E3FE A057 7FFA 01AF 2AFD 82F3"
	$"FF00 0CFB 103F F41E D43F 9435 CB47 FE44"
	$"95BF EBEC 7FF4 9669 2FF7 B8FF 0085 FE68"
	$"F4DF 8F9F F244 7C79 FF00 62F5 F7FE 896A"
	$"A3FF 0004 9EF1 D69D A97C 20F1 37C3 D372"
	$"8352 D0F5 C6BF F24B 00C6 DAE6 28C2 B01D"
	$"4812 4328 27B6 57D4 57D9 7013 FDC5 5FF1"
	$"7E87 939D ABB8 FA7E A7D6 DF19 BC13 7DF1"
	$"23E1 3F8B BC05 A5DC 4505 EEBB A3DD 58DB"
	$"4931 2235 95E3 2137 1009 0BBB 1920 1C0E"
	$"C6B8 9FD9 03E0 D789 3E03 7C06 D07E 1D78"
	$"C26B 2935 AB49 2E6E 2F3E C52B 4B0A BC92"
	$"B305 4765 52D8 5DBC E073 9FAD 7E81 CBEF"
	$"5CF0 7997 2729 E7DF F052 2F88 DA57 837F"
	$"66AD 57C2 F3DC AAEA 7E31 B9B7 D36C A1DD"
	$"F3B2 A4A9 3CCF 8EEA 123D A7DE 45AF 9D7F"
	$"E09E 7FB6 57C3 FF00 863E 179F E097 C56D"
	$"6A2D 0ED1 6FA5 BDD1 B55B 838B 65F3 8869"
	$"6099 BFE5 97CF B9D5 DBE5 F9D8 1230 3384"
	$"E6A3 5537 D8DE 14DC A8E9 DCFB A75A FDA5"
	$"3F67 DD17 4797 58D5 7E32 7833 EC22 32C4"
	$"C7AB DBDC 1914 8E89 1C6C CD21 23F8 5412"
	$"7D2B 6BE1 37C4 EF0C FC62 F026 9FF1 07C1"
	$"B1DC 2E8B A8B4 C966 6E22 F25D 9229 5A2D"
	$"DB3F 8412 8480 79C6 3207 4AD9 4E2D D933"
	$"0709 2576 8F24 FF00 8282 AEEF D92B C6EB"
	$"EA74 EFFD 2FB6 ACEF F827 12ED FD93 FC32"
	$"BE97 FAAF FE96 CD59 DFF7 D6F2 FD4D 7FE5"
	$"C7CF F43A FF00 DB5B 03F6 54F8 9B9F FA01"
	$"C9FF 00A1 A57E 2DE8 12C3 61AF E93A 8DC1"
	$"DB15 B6A1 6D3C 849E 02A4 A8C4 FE40 D72E"
	$"3349 AF43 AF04 AF07 EA7F 41B6 B711 DDDB"
	$"4375 0B66 39A3 5914 8EE0 8C8F E75F 357C"
	$"7AFD 99BC 65F1 3BF6 94F8 53F1 8340 BCD3"
	$"23D1 FC25 245F DAEB 7133 A4E1 619C CF19"
	$"8902 90FB 8B32 F257 1D79 AEDA 9173 8D97"
	$"91C3 4A6A 9CAE FB33 E9AA FCE1 FDBA 9777"
	$"ED9B F09B DA3D 33FF 004E 0D59 62DD A9FC"
	$"D1B6 0FF8 9F26 7E8F 57CD 7FB4 37EC DDE3"
	$"1F8B 1F1E BE11 7C4D D02E F4C4 D27C 197C"
	$"93EA C973 3324 A123 B88A E10C 4A14 8724"
	$"C6CB 8257 1C1F 5AD2 B41D 4872 AF2F CCCA"
	$"8545 4A7C CFB3 FC8F A52B E62F 8EDE 0AD2"
	$"3C47 FB41 782F C43A 9CE7 7691 15AC 7146"
	$"0FF1 9B96 707F 9578 5C4F 5E58 7C12 71DD"
	$"CE0B F13D 6E1F 8DF1 6DB5 B425 F91F 4ED7"
	$"8E7C 529E E3FE 16BF 82AC EDE3 2DBE 485D"
	$"CFF7 545C 2E4D 3E27 972E 013F EFD3 FF00"
	$"D2D1 8E4D 152C 4BE6 7A72 CDFF 00E4 ACF6"
	$"3AF8 3FF6 DA7F 1241 FB4B FC38 D47C 3BA5"
	$"FDA9 F4AD 262B F959 972A 152F 5891 FEF1"
	$"0A71 F5AD 3892 74E9 E5F3 A951 D945 A7F7"
	$"3DBE 676F 0AF3 3CCA 318F 58C9 7C9A D5FC"
	$"91F7 3E9B A85A EADA 7DB6 A765 2092 DEEA"
	$"259A 3607 20AB 0C8F E75E 21F1 BBF6 7CD6"
	$"BE28 FC54 F04F 8E34 ED46 D2DE CB42 7885"
	$"F095 9848 5239 C4C3 6000 8624 6E1C 9183"
	$"8AE9 CC68 4F30 C2C5 506B 5717 F2BA 6FF0"
	$"3CFC BABC 3018 972A C9E8 A4BE 7669 7E27"
	$"BC57 E7EF C6DB 1D43 C6DF B767 817C 4BA6"
	$"58C9 3E99 A0EA BA66 9FF6 8032 A5A3 90B4"
	$"A41F 40CE 467D 54D6 59C6 3E96 0BD8 46A4"
	$"ACE7 3497 F5F7 7DE6 D93E 1258 9956 925A"
	$"460D 9FA0 55F9 6BFF 0005 48B5 964F 8EBA"
	$"04C8 A703 C2B0 2938 FF00 A7AB AFF1 AEBC"
	$"C1DA 8EBD D18E 52AF 88F9 33E2 E299 CAF6"
	$"F5AA F35B 8230 318A F2A3 1719 1EFD 449A"
	$"56EA 537B 71CE 474F D6AA CB0E D19E D5D7"
	$"091C 15A1 62B4 8831 50B2 6381 DABA A2F4"
	$"B9C1 319C AF6A 631C F245 6E60 D09D 8D31"
	$"8656 8EA6 4C68 CA8C 1E68 5C72 6992 CBBA"
	$"237F C4EB 4EE3 FE5E E1FF 00D0 D6BD 8F77"
	$"B534 23C4 EBDC FF00 675F DA92 F3F6 7AD2"
	$"35BD 22DB C110 6BC3 5ABB 8AE8 C926 A2D6"
	$"9E51 44D9 B401 13EE CE73 9E2B CCCD F2E5"
	$"9B61 2585 73E5 BDB5 B5F6 69ED 75D8 E8C2"
	$"E23E AD55 54B5 ED73 D75F FE0A 4DAA 1465"
	$"3F07 ACC6 E047 FC87 9FBF FDBB 57C7 ADA9"
	$"5D8D 59F5 AB39 64B5 B9FB 535D C4F1 3956"
	$"85CB EF52 AC39 041C 60FB 579B 91F0 F432"
	$"4F69 FBCE 7E7B 6F1B 6D7F 377B DCE8 C663"
	$"9E33 97DD B5AF D7FE 01F5 8FC3 CFF8 2877"
	$"8A74 4D36 0D33 E237 8423 F104 9028 4FED"
	$"1B29 C5B5 C480 7792 3605 19BD 5815 CFA6"
	$"726B B2BE FF00 8291 784C 5BB1 D2BE 17EB"
	$"725C 63E5 5BAB D823 8F3E EC9B 8FE9 5F3B"
	$"89E0 4E7A CE58 7ACA 34DB D9A6 DAF2 5DFC"
	$"B63D 0A79 CDA1 69C2 F23E 65F8 D5FB 41F8"
	$"EFE3 B6A1 04BE 279A 1B3D 2EC9 99EC B4AB"
	$"4DC2 0858 F05D 89E6 4931 C6E3 F805 1C57"
	$"29E0 4F1D F89F E19F 89ED 3C61 E0ED 4DEC"
	$"753B 3242 B81B 9244 3C34 7229 E1D1 8750"
	$"7F9D 7D7E 1F2C C3E1 B05F 504A F0B3 4FCE"
	$"FBBF 57F8 1E65 4C44 EA55 F6CF E2B9 F5A7"
	$"86BF E0A3 912D AC71 F8CB E1A4 AF72 A30F"
	$"2E95 78A1 1CFA 88E5 195F A6E6 FAD5 DD63"
	$"FE0A 3BA1 8B56 1E1C F861 A949 7583 B7ED"
	$"F7D1 4718 3EA7 CB0C 4FD3 8FAD 7C54 B816"
	$"5ED7 DDAE B93C D3E6 B7E4 7AF1 CDD7 2EB0"
	$"D7F0 3E58 F8B1 F193 C6FF 001A 35F4 D7FC"
	$"677E 8E20 568E CECE DD4C 76F6 884E 488D"
	$"093C 9E32 C496 38E4 D7A6 FC09 FDAF 6F3E"
	$"0778 21BC 1707 806D F594 37B2 DE7D A64D"
	$"4DAD 8FCE 146D D821 7E9B 7AE7 BF4A FA6C"
	$"6E45 4B13 97C3 2FA7 2E48 C6D6 76BE D7F3"
	$"5BDE ECE1 A58B 953A CEB4 95DB 3ACF 19FE"
	$"DF3A 978D 3C21 AD78 45FE 165A DA2E B363"
	$"3591 B85D 65E4 3107 5C6E 0BF6 71BB 1E99"
	$"15CD 7C0A FDAE EFBE 0778 053C 0507 802D"
	$"F594 5BEB 8BEF B53E A6D6 C499 427C BB04"
	$"2FD3 675C F39E 95E5 C384 E30C 14F0 7EDD"
	$"FBD2 52BF 2F64 D5AD 7FD4 E879 8B75 555E"
	$"4D95 B7FF 0080 74DE 3AFD BBB5 0F1D 782F"
	$"5DF0 649F 0C2D 6C97 5BD3 E7B0 370B AC3C"
	$"A621 2215 DE10 C037 6339 C646 7D6B C3BE"
	$"10FC 5EF1 E7C0 DF1A DB78 F7E1 EEAD F61D"
	$"4A05 3148 AEBE 6417 3092 3743 347D 1D0E"
	$"07A1 0402 0820 1AF5 323C A564 B4E5 08D4"
	$"E6BB BED6 FD59 862F 11F5 B69B 56D0 FBBF"
	$"C29F F057 8B11 651C 7E3B F835 77F6 D55C"
	$"3CBA 36A3 1B44 E7B9 11CE 14A0 F6DC D8F5"
	$"3537 897F E0AF 1A2F F67C 83C1 9F06 7526"
	$"BE2A 4236 AFA8 C514 4A7B 12B0 8766 1ED9"
	$"5CFA 8AFA 178A 496D A9E7 AC25 FAE8 7C35"
	$"F19F E377 C45F DA03 C5CF E35F 889A BADD"
	$"5D2A 186D 2D60 5315 B594 39CF 970C 793B"
	$"4679 2492 CC79 624D 7E83 7FC1 3ABC 37F0"
	$"3FE2 87C0 95D1 FC41 E04F 0BEA BE29 F0D5"
	$"FDCD BEA2 D79A 7C13 5CBC 52C8 D2DB C84B"
	$"2962 9B1C C60F AC4C 2A29 353A 9EF7 535A"
	$"F1E4 A5EE F43E 80F8 97FB 1EFC 0DF8 8DE0"
	$"8D57 C1D6 DE05 D0FC 393E A31A 88B5 5D2B"
	$"4CB7 86EA D9D5 832B A305 F518 23B8 2457"
	$"6BF0 6BE1 568D F04B E1A6 85F0 C340 BCB9"
	$"BCB2 D121 78D6 E6E7 6896 6679 1A47 660A"
	$"0019 676C 0EC3 039C 5752 A718 CB99 1C4E"
	$"A4A5 1E56 7CC1 FF00 0534 F8CF E1AD 03E1"
	$"427C 1B82 F63B 8F11 789A E6DE E25B 5460"
	$"CD6D 670C 8243 2498 FBBB 9D11 541F BDF3"
	$"1ED5 F377 ECF1 FF00 0507 D4FF 0067 EF85"
	$"9A6F C2EB 6F85 36BA E47A 74F7 538B E935"
	$"B6B4 3279 D33C B8F2 C5B3 E31B F1F7 8E71"
	$"9E2B 8EAD 7F67 5AE9 5F4B 1DB4 70FE D68A"
	$"4DDA EEE6 CFC6 1FF8 292E A7F1 8FE1 7789"
	$"7E18 DC7C 1FB5 D2A3 F115 8B59 1BD4 D79A"
	$"E0C1 9653 BBCB 36AB BFA7 4DC3 AF5A F8CC"
	$"2A1C 8232 0F18 3D2B 9AB5 6F6C D3B5 8ECC"
	$"3E1F D8AB 5EE7 DB7F 023F E0A6 3E23 F86F"
	$"E14B 0F05 7C4C F06C DE27 B5D2 A05B 5B3D"
	$"4ACA E561 BCF2 9000 8932 C9F2 4A40 006F"
	$"DCA7 0390 4E4D 6AFC 51FF 0082 A3EB 7E24"
	$"4D3A C7E1 AF81 6E74 4B48 6FAD AEAF E6BE"
	$"BC43 7375 0C72 ABBD B47E 5865 8964 0A51"
	$"9F2C 76B1 C2D6 BF5E 6A16 B6A6 3FD9 E9D4"
	$"E6BE 9D8D 35FF 0082 B56B 6C70 3E04 D97F"
	$"E14A FF00 FC87 5E25 E3FF 00DA 1EE7 F697"
	$"FDA3 BE1D 78DA F3C2 5178 79B4 ED43 4DD3"
	$"BECD 1DF1 BD0F 8BC0 FBF7 98A3 C7DE C630"
	$"7A75 A8A9 8CF6 AB95 C6DA F734 A582 F60F"
	$"9D4A FA3E 87EC 1D78 8FC5 BF17 F8EF C0DF"
	$"1574 0D6F 44D4 606F 0EC9 A4CB 16A7 A6DC"
	$"E764 EE25 051D 08E5 2450 480D C820 E083"
	$"C616 7B98 4F2A C0CB 1505 7716 B4EF 7693"
	$"FC0E 6CA7 0B0C 6E25 51A8 EC9A 97E5 A7E2"
	$"67F8 9BF6 B9D0 742D 3A69 EDBC 3573 2DCC"
	$"6990 249D 1630 7DC8 C923 F0FC ABE6 9D5B"
	$"F684 B9D5 BC57 69E3 6D49 96E6 617B 1DCF"
	$"921B 6290 8C08 8C70 768C 0C77 FC6B F35C"
	$"F78A 259C BA50 A14D C610 9293 BBD5 BE9B"
	$"74DF EF3F 4BE1 CE11 7848 4EBD 695E 524D"
	$"2D36 4FF5 3D56 7FDB E354 B8D4 6DB4 8F0F"
	$"FC29 8B51 BCBA 9022 4635 865C 03DC 916E"
	$"78AD 8F8B 5F1F 2D7C 36FA 3F8A F55D 12DE"
	$"2D66 D444 DF61 8EEB CCCE 1C39 4F33 6023"
	$"3823 3B7D F15D 79AF 17CF 1B86 549D 049F"
	$"345F C57D 534D 7D95 FF00 00F2 6A70 6AC0"
	$"62A8 D1A5 5DCA 53BF 32E5 B5A3 DFE2 7B9C"
	$"7687 FF00 0513 F10F 897C 5307 85F4 7F83"
	$"7693 48C7 3713 7F6F 3ED8 13D4 E2D7 93ED"
	$"5BBF 107C 70BF 1135 FB3D 6A6D 052C A7B7"
	$"B4FB 20DB 2F9D B977 97E1 8AAE 393D 3151"
	$"C47C 4F3C C70A B04A 8A4E 5CB2 BF35 ECEF"
	$"74AD 65BD 8D70 BC39 1C97 13ED A15F 99A4"
	$"D5B9 6DBE 8FAB 3A1F 017C 4DF1 1F83 6016"
	$"1147 1DE6 9E09 22DA 6246 C27A EC61 CAFD"
	$"3047 B57A 027E D0DA 56DC 4BE1 ABE0 C3AE"
	$"C963 65FC C91F CABA 327E 3196 030F 1C3E"
	$"269B 928E 9169 EB6E CEFD BA3E C78D 8FC8"
	$"A38B AEEA D197 2B7B A7B5 CE6F C55F 1EB5"
	$"7D5A D5EC 343B 11A5 C728 2AF3 B49E 64D8"
	$"F45C 0017 EBC9 F4C5 79C6 8BAA C5A2 EBB6"
	$"5ADA C293 9B1B 85B8 11B3 6DDE 54E7 1BB0"
	$"719F 5AF0 339E 219E 678B A789 AB0B 420D"
	$"3846 FE77 777D DD91 E9E0 32AF A8D0 9528"
	$"CB59 5EEF E56F C0F4 F93F 69BB 8407 1E11"
	$"8188 FF00 A881 FF00 E355 F387 ED0D 359F"
	$"C73F 115B 7887 53F0 EC56 6F69 62B6 4A04"
	$"DE7E E557 77CE EDAB 8E5C F18E D5DB 9BF1"
	$"C54C C70C A8C2 9723 BA77 E6BE DE5C A8DF"
	$"21E1 EA78 1C57 B79C F995 9AB5 ADBF CCF9"
	$"9BC4 BF06 6C60 3249 6D66 4039 C605 790F"
	$"88FC 2373 A448 C042 E141 C735 DB90 6733"
	$"C4BF 6756 5A9E AE73 93C2 34FD B505 F2EC"
	$"7392 C457 036F 4E0D 529E DD8E EF6A FB7A"
	$"733E 2AA4 0A12 C3C7 4AA8 C837 1193 5DD0"
	$"D4F2 AA46 C464 0F53 4D38 3C57 5239 5A1A"
	$"C001 C530 F4A7 D4CA 4869 0462 9AA7 3918"
	$"EB4D 6C43 2E68 9FF2 1AD3 BFEB EE1F FD0D"
	$"6BD8 E9A1 1E2B FC58 A730 C103 2693 18F6"
	$"038C D281 DB15 0C10 7CDD 29DB 40C1 CFD6"
	$"87A1 6890 AF4A 7152 0741 51D0 A018 C75A"
	$"303A 8E2A 6C59 22C7 B872 2942 0EE2 B3BB"
	$"6325 8D00 1E94 EE47 6DD4 9971 1FB3 2011"
	$"D2B4 EDBC 37E2 3BDD 3A4D 5EC7 C39A B5CD"
	$"8421 8C97 70D8 CD24 0817 962D 2AA9 5181"
	$"D727 8EF4 9229 798B A4F8 7FC4 3AFF 0099"
	$"FD83 E1FD 4F53 F231 E6FD 86CE 5B9F 2F76"
	$"76EE F2D4 EDCE 0E33 D707 D285 D135 87B0"
	$"9B55 FEC7 BFFB 0DB3 F953 5DFD 9A4F 2227"
	$"C81B 5E4D BB55 B240 C120 F22A 1A6C D168"
	$"EC2E A1A4 6AFA 3C91 C3AB E937 BA7C 92A0"
	$"9234 BBB6 92DD 9D0F 4650 E012 A7D4 715A"
	$"BE0A F1CF 8D7E 1BEB 91F8 A7C0 5E29 D474"
	$"1D56 252A 2E6C 6631 B329 EAAC 3EEB A9FE"
	$"EB02 3DA9 5DC5 E855 9495 99F4 7683 FF00"
	$"052A FDA9 ECE2 8B4E 9353 D0B5 899C AC51"
	$"34DA 3AF9 AEC7 000C 4457 7313 ED92 6A1F"
	$"1AFF 00C1 413F 6B4D 404D A0DF EBD0 F85E"
	$"62B8 963B 5D19 6D2E A3C8 E0E6 605D 323D"
	$"AB57 8AA9 6338 E129 5CF0 6974 AF88 5E38"
	$"BAB8 F13D C68D E26F 10DC 5EC8 CF36 A26D"
	$"2E6F 9A69 3A31 6982 B6E2 3A75 E3A5 645E"
	$"E99A 8E95 70D6 5AAE 9B79 6372 A016 82EA"
	$"0782 400F 4251 C020 7E15 C734 F73B 61CB"
	$"B222 5452 303A 0A90 26E5 DA10 62A5 F91A"
	$"20C7 CA38 E2A4 4427 1C54 5EDB 9448 B10F"
	$"3308 48CF F3AE A7C0 3E1B F12E B1E2 4B2F"
	$"F845 9251 A95B DC47 35BC E83F D448 AC0A"
	$"BE7A 6410 0FE1 5C98 AC44 3094 E556 ABB2"
	$"4AFF 00D7 CCE9 C361 E589 9C69 C7AF E5D4"
	$"FD00 F0BF 8C3E 2D78 06C2 3B8F 887F 16BC"
	$"47A8 5ECF 1F98 23BA 291C 63FD DC20 C8AE"
	$"4FC7 9F1D 2FB5 D5F3 B51D 6A4B E920 0C91"
	$"348C 3E55 3C90 3005 7E69 9B67 9986 39CA"
	$"8579 CB95 DBDD E8BB 74BF 4B9F 6793 F0F6"
	$"15D4 55E9 4159 689A EA78 578D BE22 4F7D"
	$"6B32 AC84 8653 C66B CE34 DF14 DD6A 16D0"
	$"5940 1A79 C49B 2148 F259 9C9E 38AD F2FC"
	$"128D 0752 4B66 9FC8 FAEA D8A8 61E5 1A09"
	$"E967 F81F 5F7C 2AF0 443F 053C 1ADE 3AF1"
	$"BF95 2788 F528 B7C1 0BF2 6042 3818 3D09"
	$"CD78 8F8C B5FF 0016 FC4B D7EE 5741 B29A"
	$"FEF6 662B 1460 131C 593D 58D7 9919 42A6"
	$"25A9 E915 BBFD 3D52 FCCF 0B2E AB2C 555C"
	$"466B 2DB5 8C3C 92FF 0036 7AB7 C17F 85F6"
	$"FF00 0C34 398E B322 5CF8 82F0 EFB9 61CE"
	$"D07F 873E D5E8 D1EA 76A8 0394 271C 29C5"
	$"678A AFF5 8AB2 AA95 937A 2F25 B1E6 D5A7"
	$"2AD2 BDEC 236B 8738 8D91 7D49 354A E3C5"
	$"36B1 6774 DB88 38C0 3C57 246A DE4B 5F90"
	$"53C0 39BB 2288 F132 5DB1 5886 01FE 2F4A"
	$"992E A431 F991 C839 1CF3 59B5 ADFB 1D73"
	$"A2E8 AE52 8CF7 33A0 EA4A 1E4F 3587 7DAA"
	$"AB6E 456F 9477 159C EEF4 475D 1A71 A8F5"
	$"326E 6EAC 6784 A5D1 DA54 123A 735E 5BE3"
	$"7D3F 4ABE 89CB 2AAB 1C80 3D6B BF2C 954A"
	$"1885 347A 0A8A 9539 41BD 19E1 BE22 D017"
	$"4F95 C2E3 9391 5C95 C92A 76F7 EF5F AFE5"
	$"F5FD BD25 27B9 F9A6 6786 FAB5 4712 93A7"
	$"5DDD 2A94 AA03 115E D537 D0F9 EAD1 2B1A"
	$"6607 AD75 A671 490C 2BC9 E734 840D BD2A"
	$"998B 4444 D379 3D2A 8CD9 7344 FF00 90D6"
	$"9DFF 005F 70FF 00E8 6B5E C78F 734D 1278"
	$"C2A9 C703 F1A7 103A 540D 0EC7 1C8C 50A0"
	$"938A 452D 4780 452F 0463 69AC D9A2 43C0"
	$"655C 9E29 71C6 79CD 31D8 4287 209E F4E0"
	$"9839 3DAA 1B65 1346 33C0 A784 CF07 8C54"
	$"8EC3 D63E 29C9 1152 79FC 2A7B 9691 22A7"
	$"5F41 DBD6 BF50 3F62 0D4F 4DB5 FD91 F47F"
	$"0A6B 7186 D3FC 6BE2 FD47 C2F7 01BF BB77"
	$"03AF E64A 851E ED57 877E F316 217B 8BD4"
	$"4FF8 2776 812F C23F 0D7F 626A 90AA EB3E"
	$"36F1 96AF A6C8 1861 96DB 49B7 9237 23D8"
	$"5C06 FF00 BF95 F3AC FA06 B527 EC39 F177"
	$"5F83 C617 F0E9 90F8 DCC7 268A B6F6 E6DE"
	$"7737 5001 2348 53CD 046E 070A C07C A323"
	$"AD54 93E4 4BC9 9117 EFB7 E6BF 33E8 8FDA"
	$"4BE1 77C0 0F89 5F17 3E18 786B E2C7 8E7C"
	$"49A7 6BDE 25F0 E596 8FA2 D8E8 F6D1 98E3"
	$"7672 125B 995C 3603 C8E1 1540 EA09 3C72"
	$"3E6A D13F 65EF 857E 19F8 B1F1 0FC0 9F16"
	$"FE26 EA29 6BE0 A955 34DD 3744 B413 6B1A"
	$"F2B8 DEA6 1870 D8DA A503 607D E61C 8009"
	$"A9AB 0839 5EFD 75FB 8AA5 39A8 D92E 9A7D"
	$"FD4D CF89 BFB2 CF85 FE16 5DFC 1DF8 9DF0"
	$"EF5B F165 969B E34F 1469 F651 D8F8 92C6"
	$"3B7D 4B4D 9BED 08D1 C857 1B4F DD66 DAC0"
	$"8E17 920E 070F FB6D E91A AE8B FB49 F8A6"
	$"C356 F11D DEBD 771C 7645 EFAE A186 1924"
	$"CDBA 100A 428A 8300 E385 1D2B 1AB1 E48B"
	$"49E9 75F9 1D34 67ED 249B 5AD9 FE0D 1F51"
	$"FC08 97E3 9C5F B08E 8CFF 00B3 D095 BC57"
	$"FF00 0935 C67C B4B7 63F6 5F32 4F37 89FE"
	$"4EBB 3DFD 2B2F F6B1 D335 DD6F F67D F84F"
	$"67FB 456A 3A06 89F1 4AFF 005F 1697 3A83"
	$"F92B F65B 0779 0493 4E62 38F2 D22F 25DF"
	$"6FCB BC71 CE2B 5973 3A5E F7C3 CABE F305"
	$"C8AA FBBF 1733 FB8E 7F41 FD8A BE03 7C42"
	$"FEDA F0A7 C35F 18FC 44BB D5B4 7D31 AFA2"
	$"F12D DE94 8BA1 5F48 1411 1C72 6D05 8127"
	$"1F2F 60C4 3363 9E3F E1F7 ECBD F03A 6F80"
	$"BE1C F8F3 F17B E27E B3E1 DD3E F752 9EC6"
	$"FE1B 5844 E676 5691 228A D952 267D E4C6"
	$"5892 1BE5 56E0 7518 BA14 EE9D DF2D 9FE1"
	$"6375 89AB 6B72 AE6B AFC6 E1A2 7ECD 9F00"
	$"347F 803E 13F8 FF00 F13B E207 8AAC 34FD"
	$"7350 BCB4 92C3 4DB6 8A79 6E02 5D5C 430A"
	$"C20A 829F BB83 7BB3 13DC 0C12 053F C67F"
	$"B21F C33F 0CFC 49F0 30FF 0085 C1F6 0F86"
	$"5E3B D364 D56C 35BB C8D7 ED4B B163 6FB2"
	$"A00B B5E5 712A 143B 7380 F952 5798 950A"
	$"728A 7CDD 9BF4 6691 C4D4 E66B 974F 792F"
	$"546B F8CB F648 F865 73F0 7F5E F8B9 F0B2"
	$"F3C7 F643 C357 0B0C 96BE 2BD3 96D4 6A08"
	$"5914 CB6F 850D 8F9C 104F A105 457B 7F84"
	$"BF67 FF00 85BF 063E 18E8 FE27 BCF1 0DF0"
	$"D5B5 ED0A 2BE8 E078 C48E F78F 0A48 CA0A"
	$"A7CB 1296 0067 F3AF 9EE2 0C26 1EA6 1EA7"
	$"B6A8 E305 1E6F 3DEC 97CD D8F6 72AC 4E22"
	$"328C A941 4A72 9387 9256 526D 7CAE 7A5C"
	$"B1E9 71FC 5CF8 5965 E2AD 6B52 BFB9 BCD1"
	$"DEE7 4C41 043E 5AC9 B398 E4C0 1FBB DA58"
	$"E793 902B E61F 14F8 57E0 978C BF68 0F1F"
	$"DAEB 5F10 75DD 234A D1E4 9E79 B4D8 ED63"
	$"9351 D475 0F32 4F36 0B18 9036 E880 55C1"
	$"C6E2 5803 8EB5 CD1C BB0D 89A6 E9E2 2727"
	$"2F69 772B 2FF9 F70D 15BC AC96 9B9E DE07"
	$"1F8A CBDF B6C3 D38F 2FB1 D15D FF00 CFD9"
	$"ABBF 9DDB F247 25FB 407E CEDA 3784 FE18"
	$"7873 E30F C33F F84C E4B1 D7AF DB4F 7D13"
	$"C476 0B6F 7D01 DB21 5930 B8F9 4988 F073"
	$"90CA 41ED 4BFB 2C7C 0697 C3BF F173 3C7F"
	$"6BB2 F9DC B699 6320 1FBA 3D99 C1EF 5E76"
	$"7D1A 195E 1A78 6A4F DE97 2B57 DD27 BDFF"
	$"0022 DE63 88CC A946 B4AC A517 38BE 5D9B"
	$"DAEB CBA9 EC1E 30F0 EB78 CF53 6B9F 166B"
	$"0E20 53F2 DB40 72B8 F7F4 AA09 77E1 DF0B"
	$"DA7D 8741 B286 CC7D D250 65DF DC9E B5F9"
	$"EC67 5396 D2EB 77F3 BFF5 63DB C329 D5A5"
	$"0C35 25CB 08AB 7AF9 993A 9F8C B4DD 2544"
	$"D797 6A1B 1920 364F E35C A5EF C75B 3F33"
	$"ECF6 6802 E719 ADA9 612A 56BC E0F4 47AB"
	$"4B00 A494 A5A1 CFDD FC5D 9AEA E4C1 15C7"
	$"CCC7 1806 A6D3 BC53 2EA5 71E4 F99B F60D"
	$"D230 3C0F 635D 4F2F F62A F2DC EC8C 2945"
	$"5A07 4707 89ED 2C53 FD77 DFE8 3D6A 3BBF"
	$"8876 B660 3AC9 C11D 335C 8B0F 394B 6307"
	$"86E7 7CCF A991 77F1 35E4 8094 9C2A 7A67"
	$"9AE7 9BE2 82DB B159 363A 9ED9 E6BB E965"
	$"AE7E EDB5 2B96 9505 A985 A87C 4FD3 2476"
	$"DD3B 6FC1 C73C 5729 A978 EE0B 90DE 7C9B"
	$"B8F9 4E6B DAC1 64B5 29BE 6923 8EB6 6942"
	$"9AB4 59C5 6BBA EADE 1DE5 C1C7 BD71 77B7"
	$"60C8 CE08 35F7 B95D 0F67 4F94 FCFB 3BC5"
	$"7B59 3915 45D1 71D0 5324 01B2 D8AF 5E31"
	$"E53E 779D 48AC DDC6 DA88 A81D ABA1 3396"
	$"4863 718E 38A6 30EC 3A56 9BA3 2688 D945"
	$"342E 4E2A CC19 7344 FF00 90CE 9E3F E9F2"
	$"1FFD 0D6B D8B0 7D2A 9224 F1B1 F768 DBCE"
	$"4D66 5242 F39C E69E 806E A0A4 87E3 938A"
	$"4419 1F4A C8B4 38EE E18F 2053 9580 3C8E"
	$"0D2B 8C7F 96CD 83E9 4E54 3D71 52DD CB89"
	$"22A9 5183 D4F4 A954 6309 8C9E E7D2 B272"
	$"D6C6 8968 3C00 A719 E694 839A 4CB8 AB0F"
	$"4EB5 F527 823F 68EF 0878 27F6 58F0 DFC3"
	$"FB3B FBA3 E34F 0FFC 44B3 F152 5B8B 7711"
	$"9B78 6E16 53FB DFBB 9214 8DBE F8A7 09A8"
	$"DDF9 0548 7324 9773 DC75 2FDB 47E0 3AFE"
	$"D31E 05F1 6E81 7F7D 6DE0 4F0D E8FA D35C"
	$"C834 E955 FF00 B4F5 07DD 2911 6373 6ED9"
	$"192D 8EA4 D780 2FC6 9F01 A7EC 85F1 23E0"
	$"E9BF B9FF 0084 9BC4 9E2C 1AB6 9F07 D99F"
	$"CB7B 6FB4 4126 E693 EEA9 DB1B 7079 AD27"
	$"5A2E F6F3 FC91 9428 C95A FE5F 9B3A FF00"
	$"8C7F B45F C2FF 0019 FED2 3F06 FE26 E85A"
	$"9DDC BA17 8361 D1D3 5695 ECE4 478C DBDD"
	$"0965 DA84 65F0 BE9D 7B57 A1E8 7FB5 4FC1"
	$"4D43 C71F 1C25 B5F1 E6AB E07B BF1E C967"
	$"2685 E32B 6D26 4B89 E08E 2855 5E2D 8A0C"
	$"919D CA71 C007 7939 0556 92AD 0E67 AF5F"
	$"D2C5 3A33 E55A 74FD 6F63 95F8 B1FB 467C"
	$"27F1 47C3 FF00 843E 18D1 7C75 E27F 116A"
	$"1E03 F1AD A6AB AB6A 3AF5 A482 F2FA DE39"
	$"4B4B 725B 7382 4E72 A9BB 76DC 0EA3 15E3"
	$"3FB5 97C4 AF0A FC5B F8F1 E22F 1F78 2EE6"
	$"6B9D 1F51 8ED5 6096 585A 1626 3811 1B28"
	$"DC8F 994D 635E AC65 1693 EDF8 23A2 8529"
	$"4249 B5DF F168 ED61 FDA0 7C39 A4FE C61A"
	$"6FC1 FF00 0F78 9756 D3BC 696D E246 D424"
	$"5B41 2C00 5B17 909C 4EA4 039D CBF2 E6BC"
	$"8BE1 FF00 8EED F4CF 8A7E 16F1 C7C4 25BD"
	$"F11D 8693 AADB 5DDF 4575 2B5D 492C 0920"
	$"6651 E613 BB18 CED2 7048 00F5 AC67 5549"
	$"C7B2 48D6 9D26 94BB B6CF BAEC 3F6B 6F81"
	$"FA37 C5DD 6FC7 BA87 C7DF 1A78 8B46 F106"
	$"9F25 B69F A0FF 0065 4F0E 9BA0 0289 91E5"
	$"923C C909 4C06 543C 3365 BA57 CCFE 33F8"
	$"BBE0 7D5F F643 F08F C19D 3F51 9E5F 1368"
	$"BE27 9F52 BA8B ECCE B17D 9D85 D056 5908"
	$"0093 E727 1D79 3E95 B55C 4539 26AF 7DFF"
	$"0016 8C68 E1EA 269F 2DB5 5F82 67B7 45A1"
	$"FC2A F127 EC29 F083 40F8 B5E2 5D5B C376"
	$"773A B6A4 D69A BE9F 67F6 C36D 32DE 5E12"
	$"B244 324A 3A16 1900 9042 F6CD 749E 1DFD"
	$"A57E 0B69 9F15 FC07 A368 DA7D FCBE 06F0"
	$"0787 6E34 5D37 58B8 B42F 32DD 4821 5FB4"
	$"0848 DC14 243B 738D D976 F971 5957 C5D0"
	$"C228 CA4F 57CB F768 EE69 4707 5F16 E6A0"
	$"B44E 76F3 7B58 E834 EF1E F837 53F8 73E3"
	$"3F86 8FF1 57C5 1E39 D675 B963 B88B 54D5"
	$"ED24 8A16 50CA C228 5589 3122 8539 C851"
	$"B9B8 1815 95F1 EBE2 AF86 AE34 0F09 E8BA"
	$"35C4 8F79 A468 C965 708F 1940 B22A 22E0"
	$"13D7 EE9E 457C 1711 6674 3150 A986 8547"
	$"26E1 149B 4F56 AA39 3FC3 63ED 787F 28C4"
	$"4ABD 294A 0A31 E794 AC9E C9C1 25F8 AD7E"
	$"F33F C4DF B4B7 C399 3E2A FC23 F15D A5CD"
	$"FDD5 AF85 B4D3 67AA A476 AC25 4919 021D"
	$"8A71 BC02 49E3 B0E2 BA6F 86D7 9F0C 7C33"
	$"F103 E29F 8A34 EF16 6A96 30FC 408E 2BAB"
	$"2D7D F4E3 0DDE 9B2B 3CC6 7823 4C17 DBF3"
	$"4443 E064 8EC4 035E 853C F301 8572 9D59"
	$"B8B9 4AF1 766E D7A7 18F3 5BFB AD5C 78FC"
	$"931F 4E8C 29A8 27EE 59AB F6AB 29DB D251"
	$"7637 3C6D F15B C0F0 FC35 B1F0 B697 E21D"
	$"4F59 D42C 3503 3BDC 6AE8 F2CB 72A7 7832"
	$"6F72 DFDE 1804 E401 5E31 A97C 54B7 8B7B"
	$"23A6 DC70 49C6 0FB0 AF90 CE71 51CC 3151"
	$"9E1A 6E69 4231 6E4A CDB4 ACDB F37B FCCF"
	$"5B25 C9EA C28B 55E2 A379 49A4 B649 BBAB"
	$"7A6C 723A 8FC5 C8E1 85E5 96E1 59B9 DBF3"
	$"579E 6B7F 1524 9999 D665 04F4 F9AB 9705"
	$"9654 93E6 92D2 E7D1 F2D1 C12D FA1C 0EB3"
	$"E369 6F26 2F25 F336 4723 39AE 4AEB C573"
	$"ABBA C6F8 1CE0 FA57 DB60 3298 463C AD1F"
	$"3F98 670F 96D4 D967 44D6 9962 7964 918D"
	$"C484 2C60 FF00 113D C577 B6BE 2383 45B2"
	$"8B4C 86E3 3713 7CD7 2F9E 41F4 AE2C CB07"
	$"CD25 08AE BF91 B65D 8B6E 9B95 47B2 FC59"
	$"9D7D F110 0676 F349 8A1F 963E 7A9A E7AE"
	$"BC79 3DCB BCB2 4C40 1D00 35B6 1727 DA52"
	$"4658 9CE9 4344 CCBB 8F1B 5E3E 2312 1087"
	$"9EB5 42E3 C513 3217 F30E EFAD 7B58 7CAE"
	$"1092 763C 3C46 732A 89D9 9853 EAF3 312C"
	$"E4F3 CE6A B9D4 E53F 7989 FC6B DC86 1A09"
	$"58F9 AAB8 EA97 6466 F198 9032 4555 986E"
	$"191C 5745 38C6 1A23 86BD 4956 D594 BCC6"
	$"56C8 3C54 AB75 9C7C D5D6 E9DD 6879 CAA5"
	$"9D98 E322 1C60 D231 18CD 4DAC 68E4 A447"
	$"EBC6 698C 322A D3D0 CD8D E08E 9519 4C1E"
	$"B548 C5A2 EE8C 806B 7A77 3FF2 F70F FE86"
	$"B5EC 7B16 AF98 9B1E 2C3A 77A7 F515 9B65"
	$"2D07 04CF 7A72 A60E 41CD 4F31 4890 647F"
	$"0D26 3078 EF52 5005 663B 7B0E 6A55 407A"
	$"8E2A 6E52 1EA1 F181 CFBD 3802 A391 CD49"
	$"7144 A877 AF2B 83D8 D3D4 3608 1C13 D4D6"
	$"725A DCD2 2AE8 704E 393F 37AD 3D14 7193"
	$"924E 2A65 A1A2 1E91 02C5 4F4A D35F 0C78"
	$"8574 23E2 71A1 6A3F D8E2 6FB3 9D4B ECB2"
	$"7D94 4B9E 13CE DBB3 77FB 39CD 4742 87E8"
	$"9E1C D7FC 4D7C BA5F 8734 5D43 56BD 2864"
	$"FB3D 8DAC 9732 951D 4EC8 C138 1DCE 2AB1"
	$"89A3 95A3 994A B292 AC08 C104 7504 7AD4"
	$"5DAB 685A 5A8A 883A 1E82 A48D 4138 5382"
	$"6B36 6D14 4AB1 91C1 393E B4E4 0475 E054"
	$"3D74 3448 7A44 5C91 B78F 5AB3 0D84 A704"
	$"822B 2949 4517 1837 A1B1 A378 4757 D7F5"
	$"0834 AD1B 4DBB D42F 6E9B 6436 B6B0 B4D2"
	$"CADE 8A8A 0B31 F602 BAED 67E0 A78F 3C18"
	$"D0B7 8C3C 13AE 68AB 71C4 2DA8 584B 6CB2"
	$"1F45 6750 09F6 0735 CB56 ABF6 6E69 3B2D"
	$"DF43 AE9D 18FB 4509 4926 F65D 7EE3 AE87"
	$"53F1 86AF E0BD 23E1 DEAB ADCB 3787 3429"
	$"E49E C2C1 9102 C124 8CCC E410 371C B48E"
	$"7927 EF56 D787 FC17 7573 7515 9E9B A7DC"
	$"5E5D 4A71 15BD B44D 2C92 7FBA 8A09 3F85"
	$"7CC6 3319 5317 3E5B EBA2 56FB 923D DC26"
	$"1A9E 162E 5B2D 5BFC D9EA DE0E D124 D02D"
	$"25B9 BE81 E0B9 0ECA E922 9474 DA70 5483"
	$"C820 8208 3E95 8DE2 9D1A 4F1F 4EF6 F6DE"
	$"5D9A 2F1F 6990 ED0B EE3D 6BE2 3115 79AB"
	$"F337 D5FE 07D5 65B7 A72F 6AB6 4B4F 31BA"
	$"0F81 7C29 E097 DF10 6D43 5161 96BB 993E"
	$"51FE E83C 7E35 47C4 1E2F B685 8C42 7DC3"
	$"A9E7 34E5 3962 2B36 F5FD 0EDA 4AA5 7A9E"
	$"D2A2 D1F4 3CA3 C4DF 10AF 350B B318 9FCB"
	$"B587 2000 7935 C16A DE3A 9848 D1C3 3B30"
	$"5CF7 CD7D 6657 967B 4B26 B45A 99E3 B31A"
	$"782A 7CA7 2F75 E25B FBA6 2433 60F5 04D5"
	$"46BC BBB8 1B5E 422B EBA9 E169 D28D B767"
	$"C5D5 C655 C449 BBE8 5696 3943 F24B 647E"
	$"5503 5B12 B890 90A3 A9F5 F6AE BA4E 30E8"
	$"7055 8C96 E59B 2BA6 8E75 BB61 8F24 6225"
	$"FEED 24FA 9DD3 3C93 9908 7938 CFB5 47B1"
	$"8CE7 CCD7 97F5 EA57 D667 0A5C B7EB 728C"
	$"D792 6157 9217 9FC6 AA4B 76C1 49EF E95E"
	$"8538 C62B 63C9 AD56 5277 6564 B898 925C"
	$"E7D2 91E4 6392 1B1E D5D1 149F 438E 551A"
	$"444F 2960 149C D300 3C01 5A24 91CE E5CC"
	$"3B2D 9F95 714A C30A 4139 3DE8 D2E2 5757"
	$"2A4B 180A 48AA 850A 1CD7 5C1E 8799 5E16"
	$"6C91 64C0 E453 BCDA 250E A109 E962 50E0"
	$"A8C0 A500 11C8 A848 DFCC 6B63 D314 CC03"
	$"D071 564B 572D E8C3 FE27 7A71 03FE 5EE1"
	$"FF00 D0C5 7B26 7FD8 1422 6C78 C04C 7F0D"
	$"18CF 18AC DB12 4382 D282 41C5 4969 0A0B"
	$"138E 6A55 5039 6A96 CA1C 0657 2A29 EA87"
	$"19A9 2944 7A2B 15F6 1E94 F081 87BF BD4D"
	$"CA43 BA9E 3F1A 9003 8FAD 4499 B455 850A"
	$"7BD4 8A99 0ACB EB8A CDBB 9489 4295 1CF6"
	$"3CD7 DD9F 0321 B4F1 7FEC 7FA4 7C13 BD48"
	$"89F8 8BAA 788E C74C 67C6 5355 B586 3BCB"
	$"3DA4 8E0B 342C 84FA 31AD 28FC 4FD2 C456"
	$"568A 7E77 FB8C FF00 F827 D598 F87F 7B6F"
	$"E3EB EB71 1EA9 E35F 145B F823 4959 53E6"
	$"1045 1BDD EA4E 01FF 00AE 7047 9ECC 08EF"
	$"5E7D E0EF 81FE 0CBD F871 77F1 83C5 3E0E"
	$"F1EF 8E45 EF89 350D 324D 3BC1 EF12 1D26"
	$"3858 1F3A E894 7767 9379 28A1 5570 BF31"
	$"E455 5938 46EB 6BBD 37E8 1CCD 5493 4F7B"
	$"2D76 EA65 E8DF 04FE 12DF 7893 C75E 294F"
	$"19EB 9A8F C30F 02D8 5B5F 4D34 16AB 6FAA"
	$"DCCF 72CB 1C3A 7ED9 1424 732C ACC8 F263"
	$"6809 B801 9F96 B5F7 807F 67AF 139F 07EB"
	$"5E0F F1A6 AFE1 4B2D 5358 7D33 C45A 56B4"
	$"C9A8 5DE9 9005 DEB7 9034 48BE 744E 3E40"
	$"08C8 9081 D01A E79F B35B BDF6 F4BD 8E88"
	$"3AAF 54B4 5BFA DAFF 00E4 771A B7EC F1F0"
	$"E7C4 3F0F 3C6B E2DF 0578 23E2 8F86 1FC1"
	$"965F DA16 DA87 89E2 4367 AD42 2508 C02F"
	$"9519 8A56 53BD 4296 5001 CD58 D7BE 0B7E"
	$"CE5F 0E13 C156 DE35 B9F1 CEA7 75E2 FF00"
	$"0DE9 9AC5 D9D3 AE2D 618F 4737 31A9 793E"
	$"68F3 37CC 58AA 7185 5E4B 1358 54F6 507C"
	$"F3BA 56DB AEED 7FC1 35A5 1AD5 7DD8 59BB"
	$"BD7A 6C9F FC02 7D1F F641 8746 F17F 8EED"
	$"BC52 9E20 D774 2F03 DC5B 5BC3 0787 6D7C"
	$"CBFD 59EE 904B 6A14 10C2 14F2 5849 2390"
	$"76F4 1C91 517C 4EFD 9FF4 4F0E F81B 4DF8"
	$"99E1 5D03 C57A 0D9D D6A4 FA55 F68D E258"
	$"7171 6D30 8C48 9245 2EC4 F361 7191 92A0"
	$"8604 7D38 3134 DC69 4F47 7577 7B7B BA3B"
	$"5BD7 46CE EC3D 552A B057 5676 56BF BDAA"
	$"BDFD 35B1 D07E CCF7 FE1A F0D3 F8B7 4DD4"
	$"3C4F 1F84 F5BD 7B45 361A 3F88 1E36 65B1"
	$"94B8 2E37 28CC 7BD4 01BC 6318 3CD7 A24D"
	$"E1AF 8BDE 10F8 7FE2 AB1B FD7F 4DF8 8DE1"
	$"2D46 D025 CDCC 3ADB 6A83 4E97 76E4 BA45"
	$"73E6 46CB 8F40 3B9E 95E7 53AD 56AE 1D3A"
	$"134D C54B 9A17 B369 DF5B 75D3 E6AC 76D5"
	$"A74E 9E21 AAD0 6949 C796 76BA 4D5B 4BF4"
	$"D7EF B985 0782 7E18 781B C37A 0EA5 F112"
	$"1D7F 51D4 FC47 67FD A715 B695 3456 E967"
	$"66CC 4452 3175 2649 1C02 C178 18EB 5E9D"
	$"F0BF C23E 1DF8 7BE3 FF00 155A 4D7D AC5D"
	$"F99E 119F 53D1 EFEC 9A38 1CE9 F2C3 BD98"
	$"E794 B81F 2852 0ED0 CAC4 F6AE 6C3E 170D"
	$"46B5 395E 5CD1 6B9A D6DE 516D 5BB7 2B56"
	$"7DCD 7158 8C45 5A53 8DA3 CB24 F977 FB32"
	$"49DF BF32 D576 3A47 D0BC 0FE2 4F87 FE15"
	$"B396 3F10 2C77 5AD5 D23D C493 C066 1974"
	$"F35A 67DA 770C 3023 BE77 1349 69F0 63C3"
	$"F6D6 FE27 B7BC B890 C9A4 492C 1611 1207"
	$"DA25 8E37 9886 18E7 F748 1B8C 75AF 37FB"
	$"2307 984E 9D5A 7CCA F18A 77B6 FECE F1D9"
	$"6EDA B3EE CDBF B531 7838 4A8B E5D2 526A"
	$"D7DB 9ED2 DFB2 775D 91E7 9E32 B4F8 797F"
	$"63E0 AB4F 10EB F73A 236B 7693 6A37 0F6B"
	$"0896 55B4 0CCB 0245 1852 5A49 4A61 49C8"
	$"F981 C715 E4DF 127E 1DF8 7A5F 83FE 23F8"
	$"ABE1 9F09 78F3 C252 F872 E6DA 26B7 F142"
	$"031E A30C EC53 7C27 CB46 5752 0161 CAE1"
	$"860F 7ABC 1655 85AB CEED 2E74 93D3 E18D"
	$"A119 6BA7 56DC 576B 1EDD 1CC7 1980 A54E"
	$"3370 E472 B6BF 1CAF 371F 775F B292 93D3"
	$"5B9C 47C5 7F84 9F0C F41B EF0B FC33 F086"
	$"A1E2 8D5B E207 8DEC F42B BB31 3C90 C7A7"
	$"69CD 78B1 9916 5214 3CA5 B73B 2E06 1136"
	$"E4B1 C9AD FB6F D923 E1FE B9E2 DB9F 841A"
	$"7F84 7E31 59EB 88D3 D9DA F8D6 FB4A 29A2"
	$"DD5F 44AD F7ED FCA0 62B5 7752 A927 985B"
	$"0558 F15F 6D84 C0D2 A5EE D34D ADBE 7DFD"
	$"1687 C8E3 734A F592 9D67 15BC ADDD 69A2"
	$"F37A BF2D 0F90 65BF 4B59 A6B0 16F9 96DE"
	$"5786 424F 01D5 8AB0 1EBC 8354 67D5 EF77"
	$"796A AAA3 D473 4E9E 0D5F 9A6F 52AA E3DA"
	$"8DA8 AB91 C3A8 EA9B F631 0C9D C01C D5F8"
	$"26B6 9B27 2FB8 7552 6AAA 528C 3F87 B138"
	$"5C45 4A8B F7A3 CABB 8211 828A 8645 6180"
	$"C320 5630 D353 7AAA E47B 03E4 85E2 A378"
	$"1598 92BC D74C 66B6 38AA 53BA 6549 2203"
	$"248C 540D 18C6 466B A22C F3EA 46C4 5B47"
	$"5A42 4819 15A9 CFCB 6240 CC63 5C0E 9DE9"
	$"1B2D CE3F 1A3A 8F62 268C 9E2A 196D D881"
	$"815A C656 30AB 4F98 8C40 48E9 D293 C9E7"
	$"18AD 79CE 7F65 61CA 98A9 4024 702A 1B2D"
	$"458C C60E 08CD 22AF 3E82 8B8F 9597 3431"
	$"FF00 13BD 3C1F F9FB 87FF 0043 5AF6 4C2D"
	$"55D9 0D1E 2E0F 627F 1A32 5B1C 545C 943C"
	$"7CA7 D69C 8809 A966 8878 8C67 8EB4 F287"
	$"0030 CFD2 A56A 31C1 0E36 AE7F 0ED5 22A9"
	$"09B7 F9D4 DEC5 8E45 D80F 34F0 80B1 23B5"
	$"4171 4382 ED5E 179E F522 A81F 31E7 8E95"
	$"350D 10F4 0ADC 60D4 8A8A 081D 0567 A58B"
	$"8A26 54EA C3E6 F635 EDBA 67C6 CD33 C33F"
	$"077E 19F8 7BC3 D35C A78A FC0F E37B BF13"
	$"3068 8887 CB65 4F28 07CF CD92 A432 FA13"
	$"EB44 6A72 DFFA EA54 A9F3 A5FD 743D 475C"
	$"FDA6 BE12 AFED 0BF0 CBC4 DE0E B2D4 F4DF"
	$"877E 0BBB BCD5 AE61 7B62 6637 F7F2 4B35"
	$"EC8B 18EB F3BC 6831 D938 E2B8 8F86 9E2C"
	$"F85C 9A3B 4D69 F16F C5BF 09BC 6906 A975"
	$"3CBA CE93 6977 7F06 AF65 23EE 891E 2825"
	$"531C 91F2 3046 D20F 39E8 2A55 69C9 DEF6"
	$"ECFB 6DFE 4446 8CD4 6D64 DF55 DF57 7FCC"
	$"F4ED 5FE3 57C3 DF89 5E2C F1A7 873C 41FD"
	$"B107 84FC 65A1 695A 5CFE 2016 31FD BE4D"
	$"46C1 83C7 A94F 6C84 2B79 AD95 7453 9D81"
	$"71CF 46F8 1F58 F805 F06F C5FE 0CBB F0FD"
	$"A5FF 008A 6E34 9D42 E6F3 57F1 34BA 7B5A"
	$"B859 2131 4096 9692 B918 8588 972E 3716"
	$"1C13 C01E 4D6C CB0F ED14 E57B A7B5 BA73"
	$"5EF7 F4BE 9DCF 4E8E 5F88 F66E 9C52 B35A"
	$"BBF5 E5B5 BEFB 6A74 56BE 3CF8 6B6B A4F8"
	$"EBC3 FE24 F8E3 E35F 18DF 78BB 41B8 B0B7"
	$"D5F5 1D36 E3EC D667 7A48 910B 7925 690B"
	$"BB20 05C6 D45D A303 04E3 6BE2 6787 FE0C"
	$"EB12 7C38 B9F1 DF8A B58D 16EF 4FF0 3684"
	$"D736 B6DA 61BD 5D46 DFC8 0552 2903 010C"
	$"9C32 92E0 AE08 3EB5 855C 461E AD37 CD56"
	$"5656 BCAD E6DE DE7B 796E 6F4A 8E22 8CE2"
	$"E14E 29BB D95F 4D92 DFCB 7F3D 8A56 5F1C"
	$"B4CF 1578 83C7 D6BA D6A7 AE78 52C3 C637"
	$"5697 963A 9692 5E5B 8D31 ED10 4302 CA91"
	$"BAB4 B1B4 0AAA E14E 7232 3DB9 BF88 5ADF"
	$"86B5 0F0E E9DE 15D0 FC67 E26F 175D C772"
	$"F777 DACE AB2D CC30 B0DB B521 82D6 591B"
	$"681C B176 F9B2 7038 E9E7 E2B3 0856 A327"
	$"29B5 3774 A2AF 6D64 DDDF C9DA DDCF 430F"
	$"80A9 42B4 62A3 1715 67CD A5F4 8A56 DAFB"
	$"ABDF B5C9 3E16 6A3E 08D3 6D35 CF0B F8FF"
	$"004A 924D 2FC4 1047 12EA 7690 4725 DE9B"
	$"3C6C 5925 8B77 3B4E E21D 4119 18EB 8C57"
	$"6FA4 EB9F 0B3E 1568 BE22 6F06 F89F 56F1"
	$"46AF AFE9 72E9 0825 D38D 85AD B452 152E"
	$"F207 25A4 71B4 6001 8EBD 335C 342B 60E1"
	$"18D4 936A AC13 4925 A4AF 7B36 FA5A F67E"
	$"4958 DEBD 1C4C E72A 7049 D39B 4DB6 FE1B"
	$"5AE9 2EB7 B69E 6D95 2EB5 AF86 5F10 3C33"
	$"E1A8 BC63 E29D 43C3 5AB7 86B4 E4D1 E530"
	$"E9AD 7F1D F59C 6498 4C65 5818 E40A 4A9D"
	$"DF2F 7FA5 BD3F E38F 85A7 F897 AEEB 72C5"
	$"7567 A3BF 84E7 F0EE 8F13 2892 4551 12C7"
	$"0F99 B780 5882 CC47 00B7 7A4F 1B42 14FD"
	$"AA6D CA56 E656 F879 62D3 B3EB CCDD FC90"
	$"A182 C457 97B1 B2B2 BA8B BEFC D24D 7A59"
	$"69E6 6637 C71F 0BC9 F0C9 7C3E 9AF5 CD9F"
	$"88B4 6D4E EEE2 DED8 DA19 22BD 866D 9D25"
	$"0711 95DA 7A8E 7B55 8F1A 7ED8 7E19 935B"
	$"F87D AB58 25D1 FECF 9D6F BC54 A63D BE7C"
	$"EF1C 76F3 2A0C FCCB E523 11FE FE2B 9B01"
	$"88A7 04A9 C1B6 DC69 3DB6 9536 93FB E2B7"
	$"F3B1 EFD6 C86A 7373 D6B2 49D5 4F5D E338"
	$"B717 E569 349A F2B9 C8E9 FF00 B44F 806D"
	$"7E3E 6A7F 10A6 B9BF D3FC 2B1E 88FE 1AF0"
	$"EDD4 56A2 6BAD 2621 02C5 05DA 427A B2B0"
	$"91B6 F502 56C6 7183 CDF8 9BE2 E7C2 EB8F"
	$"859F 123E 1E5F FC67 F187 8BF5 BF12 5B5A"
	$"DD5A 6B7A A699 702D A496 DA52 E967 0C32"
	$"4AF2 C5BF 712D 2C84 28E3 038E 7E93 0788"
	$"A355 D4F7 9A8D E765 6D1A 6924 DFA6 DF77"
	$"99E3 6618 5C45 254D 7246 4F96 9DE5 7D57"
	$"2BBB 4BFC 4F5B FADF A1E4 BF15 FF00 682D"
	$"1D3E 3278 2BE2 7782 0497 5278 5348 F0FC"
	$"622B 98CC 5BEE 6CA0 8D66 8CF7 DA4A B2EE"
	$"F439 15DC 6B1F 1A7E 10EA 1E27 D63E 2F3F"
	$"C7DF 8BDA A59E A26E 6FEC BE1C AC97 FA79"
	$"B7BC 972C B0CB A925 CF94 6D63 91B2 3CB0"
	$"1F62 A8EB 915F 4B86 71A7 1751 BD1B BA3E"
	$"371C 9D79 4685 3577 1566 7C83 0DCB A5C3"
	$"9B82 7323 B3B7 24F2 4E4F 2793 F53C D6BC"
	$"6B0F 97F2 0CEE EF58 E2E3 CAD3 EE75 E01A"
	$"945C 5EF1 258A D994 ABE0 81EB 4EB8 83EC"
	$"D247 72BD 3383 5C32 ABEF D8F4 E349 A839"
	$"F677 27BA 478D B7C6 A0A6 339F AD56 FB46"
	$"570E BD3B 514E 3CF1 5E41 566E 326A DE62"
	$"FDA6 D986 D390 7DA9 8193 247E B5AF 2729"
	$"CFED 2E88 2589 9F84 CE33 9A82 44C1 E98A"
	$"DE9B B1C9 563C DA90 AC60 0391 C1E0 544F"
	$"188D 319C D744 1DCE 69AB 2150 EE88 8A67"
	$"0BC0 EFDA A918 B69D 988C 71DE 9849 3D4E"
	$"055F 4224 349E 8169 081D 29A3 37B0 D0A0"
	$"7534 A4B0 1F28 AA21 0D6E C714 3718 228D"
	$"86CB 7A29 1FDB 3A71 FF00 A7B8 7FF4 35AF"
	$"61DD 54A4 64CF 1AD8 40C3 718A 7201 BB27"
	$"D2A0 43D4 2A9E 69EA A077 A96C A487 0C02"
	$"33DE A400 E005 3509 9490 F562 BD06 3D4D"
	$"2827 2723 8A97 7344 AE49 8C28 0178 A783"
	$"C8DA 39A9 93EC 6A87 7CC1 B18C 9A91 13E5"
	$"CE39 3D45 66E4 525D C991 06EE 2A50 A1D8"
	$"2E3A 0AC9 C96C 6D15 7D51 2C51 8276 8FAE"
	$"6A52 898C 8009 A86F A1AD AC2C 4ACD F26D"
	$"EA6B A7F0 EE81 24F2 0668 C135 C78C ABEC"
	$"A9DC EBC2 52F6 9356 D8F4 DD3F 435B 6803"
	$"8600 E3D2 A2B8 2448 31C8 391D 2BE5 A355"
	$"D493 6FA1 F4D2 5ECE 2910 C705 C3C8 5510"
	$"B9EC 00CD 7A6D B785 FC6B E355 B1D4 FC53"
	$"A9C8 F0D8 D943 616B E660 B25B C431 1C63"
	$"03EE A8E0 573E 2F1E B0B0 B3D6 FD02 9D0F"
	$"6B24 E4B6 EA75 9A5F 8774 7D2A DB6D BDA8"
	$"79DF 8667 19E2 ABDC F817 ED57 0DFD 9CBB"
	$"647E 5531 804D 786F 1138 CFDA 2EBB AEC7"
	$"6691 DCC0 D434 BBED 2277 8351 80C7 2463"
	$"1B7A 7E35 426B B862 4F98 70DD F35D D183"
	$"4E2D 7A91 74E3 A1CE EABA FC50 1CA9 C800"
	$"81CD 73B1 6B92 CF3B 0518 DCA4 039A EC58"
	$"493C 3C9F 9061 EBC2 9E26 9EBF 691C BDEC"
	$"3AF6 A5AB 5B69 9A3C 72CB A9CF 288E 0455"
	$"2D92 4F7C 575D F19F E136 A9F0 8348 D2B5"
	$"4D7A FE3B BBFD 4230 F35B A8C7 96D8 E868"
	$"8558 46AD 1A11 5EF4 B47E 49EC 7B59 9631"
	$"D0A9 283D 7993 7F24 B53C 4EEF C417 5752"
	$"811A 6D66 F940 3D05 6B49 6ABA 5592 5C99"
	$"16E4 B2E5 8F5D 86BE 9AB5 18E1 953A 70EB"
	$"B9F3 B81C 4CB1 D2A9 5A7A 282D 177B 9CE5"
	$"9F86 67D6 AF64 BD8E 02FE 6138 E38A 9EEE"
	$"CD34 B93E C73D BF97 228E 41AE E789 5566"
	$"B0D1 7AC4 F329 65EB 094B EB6D 6926 F539"
	$"DD62 2439 9634 0A7A 9AB5 A0A0 BE8D 559C"
	$"0C71 D6BD 0ACD FD5B 9A5D 0F22 8462 F1DC"
	$"A9E9 23A2 FB34 5000 8BF3 0519 39AA 97B2"
	$"C6D0 1000 E01A F1E9 DE53 4D9F 4956 0A14"
	$"DC7C 8AB6 330B 8B52 8EFC A122 A19A 2639"
	$"6E99 3D2B BA2F D9D4 944F 2DBF 6B4A 327B"
	$"D883 CBC3 FCCB 48D0 8CFC AD8A E952 5247"
	$"1F23 BD87 2894 26DD E31F 4A6B 44F8 2C4E"
	$"4525 2B3B 0A50 696C 5570 4023 B0EF 55E4"
	$"E472 6BAA 9A67 0D6D 8851 F076 7AD3 88E6"
	$"B56B 5392 0EF1 10A9 CF22 9843 6684 F425"
	$"EBA0 7964 A875 C629 A637 CF22 AD26 4B40"
	$"78E3 1CD2 1CE3 2053 26C3 7391 C839 A43C"
	$"01B8 119E 9C53 B6B6 05AA 2E68 E557 5AD3"
	$"81CF FC7D C3FF 00A1 AD7A FEE5 F7FC AAD4"
	$"0C99 E383 2703 69A9 0261 BA76 AC9B 0B12"
	$"95EF 4F55 50BD 3935 93D8 D121 E8A5 B1C0"
	$"A936 953D AA46 90F0 8C4F 6A55 5560 491D"
	$"E8BD CD62 AC49 853D 0539 5091 ED59 3292"
	$"2444 20E7 353A 44CD 811A 3B39 380A 8324"
	$"E7DA A24E CAE6 B08D F42F DC68 5AA6 9B18"
	$"9EF7 4CB9 B785 FA3B C6CA 0FE2 4540 806F"
	$"5393 B79E 47F5 AE7F 6B4E B27C 8D35 DD77"
	$"3AE5 4654 6695 5567 FA1E BDF0 77E0 64BF"
	$"11A2 9B59 D52E BEC7 A4C0 D804 6434 8475"
	$"C574 FE3D FD9D F40B 4B09 6E7C 19A9 4B25"
	$"C42A 59A2 90FD EC7A 57C5 6378 9E78 3CC5"
	$"61D2 BD38 BB3F 9EE7 D5E0 787E 188C 236F"
	$"F88D 36BF 43C9 348D 0263 395B A871 2A3E"
	$"1D48 E86B D334 2D0D 6154 9042 B5E9 E678"
	$"A8B5 686C 7160 30EE 2DB9 743A 5FB0 9922"
	$"DAA0 823A 6DA9 34AF 065E EB77 593B A281"
	$"7866 EF5F 3F3C 43A6 9C9F C4B6 3D98 D153"
	$"DB63 D33C 37F0 CD00 D961 6200 4196 9E51"
	$"D7E9 5DB6 8BE0 0D5A E909 85E6 70AD 8F94"
	$"616B C59C AAE2 E5A2 BCD9 3571 54A8 45A4"
	$"F447 5B6F F0D6 E189 77B0 CED0 3EF0 AD0F"
	$"F844 6CC3 C33C B6FE 4C90 7CA0 28EF 5D74"
	$"B2CA F4D7 2D63 C1AB 9B46 A4AD 13CF 3E20"
	$"784E 7B9B A96F 3505 1E4A 71E6 2A92 715E"
	$"31F1 03C0 BAA6 9D6C 750F 0E3B DE5B BA92"
	$"4007 72D6 783C 42A3 5FD9 E274 57B7 F91E"
	$"E425 EDE8 C654 D9E4 A6DE FAEE 7D93 0757"
	$"5382 AC0D 743A 4786 2492 E238 FCA3 24F2"
	$"9023 4504 927D 2BE9 EB4E 34E9 DD3D 0E6A"
	$"50E6 9734 B4B1 F507 803E 1C78 57E0 CE82"
	$"7E21 F8BE D216 D724 88B5 B238 04C7 91C7"
	$"06BE 41FD A17E 2B5C 7C43 D6E5 DF21 9544"
	$"878E A147 A0AF 272B A52C 4665 07FC BEF4"
	$"BCAF A457 C97E 63F6 F3C4 42BE 32AE B7FD"
	$"DC3D 16EF E678 4DF2 DD3C 9B50 148E 338C"
	$"8A9F 4DD4 EEEC D9E1 9E56 9627 182A 79AF"
	$"D26A D28D 4A4A 2F75 AFE4 7CE5 1AD5 E856"
	$"BAD1 3D0F 4EF0 BEB5 A4E9 9A5C 4850 4921"
	$"E768 EA2B 2FC6 AF16 AD1B BCB6 F1A4 98CA"
	$"3AF5 FC6B E428 61EA 431E EA49 9FA0 62B1"
	$"146A E5CA 8535 A5BF 13CD 2DEC B51D 5263"
	$"696D 1B31 0486 7C71 5D45 8782 E3B3 B612"
	$"BDD1 59C7 519A FA7C 7E3A 3878 FB18 6B26"
	$"7C4E 5595 54C6 5575 EA69 18A7 6F52 BCF7"
	$"AF11 7B59 DFE6 5EFE B59B 3DDB 6EE4 6411"
	$"450A 3A29 7735 C4E2 B78F 620D 2EE7 CBBC"
	$"785F 8593 915B 6888 E0A3 7233 D6A7 149C"
	$"6A5D 19E0 64A7 4ACF A156 7882 9FDD 9AAE"
	$"AA41 E69A 6EDA 0AAC 6D2B A1EE CD8C 01D6"
	$"9BB7 8FE9 5A47 625D 9C48 660A 324A 0DD5"
	$"4655 0F90 DC7D 2BAA 9DD6 E705 7B74 21FB"
	$"1C93 30DA 871E B5A2 9A2C 9E5E E793 000E"
	$"2B59 D551 6A27 1D3A 2E4D BEC6 B685 E1DD"
	$"3AFE 555B B693 04F6 35E8 5A5F C1FF 000A"
	$"EA6C A1EE 678C 3770 6BC1 CCB3 4C46 0EA5"
	$"A11B A3DC C0E5 B431 50BD 43A8 B6FD 953C"
	$"39A8 26E8 75F9 D15B D4D3 AEBF 63CB 724F"
	$"91E2 B50B 8E37 035E 7AE2 6AB7 4E74 CD67"
	$"90E1 BA49 A322 FF00 F641 D662 8B7D 878A"
	$"2D25 23A2 956A E7F5 1FD9 6BE2 3D92 0920"
	$"6B5B 8CFF 0077 22BB A8F1 461E 5FC6 858E"
	$"3AB9 0CA2 AF46 6654 DFB3 97C5 0888 2DA5"
	$"07C8 EC46 0555 97F6 7EF8 A519 C3E8 A5D4"
	$"7A11 5DCB 88B0 2D5F 999C AF22 C574 489F"
	$"49F8 0BF1 421D 62C2 41E1 E72A 2EA2 6639"
	$"1C00 EB5E ADFF 000A 6FE2 2FFD 001B F315"
	$"D147 3FC0 CE3A 4CCA 792E 2E3B C51F 33A6"
	$"D042 8272 6A4E FCD7 7C99 E5A2 4519 073D"
	$"A9EB 1A90 09CF 152E E55A E382 E385 E869"
	$"E8B9 ED53 7E85 A8D8 9045 CE73 F953 D63C"
	$"0070 33E9 5973 B5A1 A243 F69C 903A F615"
	$"2A20 DB8F E2F5 F4A5 2765 7345 1BA1 C102"
	$"A02E 381C B1F4 AF7D F803 E09D 0347 807C"
	$"47F1 8C51 DC27 22C2 DDC6 413F DE23 D457"
	$"CEF1 2E3A 782C 138D 3769 4DF2 AF46 B5FC"
	$"0FA1 E1CC B9E3 B18A 1BA4 AFFA 7E67 A6F8"
	$"A3E2 5785 FC41 6B26 8BAD E8F6 9756 B2E7"
	$"6A94 036F A1E3 BD7C FDF1 27C2 1E1D D151"
	$"357F 0A4C EB6B 3F12 44DC ED6E F8AF 90E1"
	$"CAF8 AC3E 2638 77FC 3A97 F934 B747 DAE7"
	$"F925 3FA9 4EBB 7EFC 16FE 573D 97E1 9F89"
	$"5749 F025 8DB4 2C15 00DC 474C B1A7 EABE"
	$"368C DC00 AD86 4FBD EE2B C8C5 61DD 6C5D"
	$"48BF E67F 99EF 65F4 210C 3D2A 8FF9 63F9"
	$"239D 5D0A D6FF 0054 7D46 04CA 4E77 10BD"
	$"8D75 FA67 84AF 1E3F 3DA1 6489 7EEA FF00"
	$"1357 AB3C 6463 087B 57E4 7CAE 2B0E A8E2"
	$"2A53 4B4B FE67 6BE1 7F87 8F71 1B6A 3A84"
	$"F141 6B08 24E7 827E B5E9 1E15 D3FC 3179"
	$"A53D 9787 7499 2FB5 076D 8195 781E F5C2"
	$"EB7B 4AD1 8A4D B6AC 979B DAE7 0622 729C"
	$"6F49 F2C2 2F56 CF6E F077 C1F6 5B58 9F59"
	$"6C92 A331 0E00 3E95 E856 7E0D D334 E816"
	$"DEDA DE34 55E9 8C57 E8B9 3647 1C35 152A"
	$"CAF3 7B9F 0398 E652 C554 6A1A 4486 F7C3"
	$"D1AA 308D 39FE 7586 DE16 7766 76B7 18EE"
	$"3D6B AABE 07DA 4D41 238A 1539 60DB 7A98"
	$"DA97 8361 9E07 492D 94F5 C291 5E5B AFF8"
	$"41B4 B9DE E6DE DC1E A1E2 2BF2 95F6 AF8E"
	$"CFF2 6752 9FB5 8693 8EAB FC8F A0CA 31CD"
	$"4DD2 6F46 78C7 8BBC 21E0 8D5A 696E F4D2"
	$"2D2F 15B6 BC05 70DB ABB7 F851 F0B3 49F0"
	$"4D94 9E3F F19B C64C 4A5A D637 FBA3 D18E"
	$"7BD7 8B47 18EA 4254 EAAB 28EA FC92 E9EA"
	$"F63E 931E E74B 0D18 C3E3 9BE5 5E7E 6780"
	$"FED2 5F1E 64F1 1DCC D67A 7DC6 5189 8E35"
	$"43D0 7AFD 2BC6 3C0F E0E6 D5A6 1ACE B503"
	$"BC79 DAA1 87DE 3FE1 5EE6 5707 83C0 CF11"
	$"3F8E ABBA FCD1 D12A 6A94 E961 A3F0 D34A"
	$"FEBD 6E52 F187 85ED 74BB F952 283E 5625"
	$"82E2 B83B 8B23 14CC 76B6 3B11 DABE 8B2C"
	$"C4CA A535 CCEE CCF3 6C24 7994 E9AF 76D7"
	$"FBC7 585D DCA4 BE44 4D87 CE37 11C6 2BA0"
	$"6D12 7FB2 0BC3 3CA7 CC1C 0279 FF00 F556"
	$"98DA 91C2 C949 ABB6 6797 5296 269B 52BA"
	$"5146 7D86 ABFD 8B24 90AC 4B86 3CB6 39CD"
	$"4173 ADDC DD4A 561C 9C9E 94D6 1954 AAEA"
	$"BEA8 258E 74E8 2A09 5ACF A753 3354 B795"
	$"D3CF 627C C3D0 77E2 B3D0 B489 FBC6 183C"
	$"57AD 45DE 9E9D 0F9D C4C7 92BB 4FA8 8D1F"
	$"953C 570A 186C EBEF 5AEB 72DC 3671 BBB1"
	$"1535 E9F3 F2B6 CAC2 49D3 E78F 4BDC 6F99"
	$"81B9 FD7B 0A8C C8B9 CB7C BF51 514E 9C97"
	$"637A B553 D006 E76C 0DCC 4F60 0D59 8F4F"
	$"D42E 08F2 ECE4 1EE4 54CA A538 3F7D 9094"
	$"A7A2 2DA7 86A5 6E6E 5B6E 7A0A B517 8734"
	$"E8E3 32B9 DC57 AE6B 96A6 364F E0D8 DD61"
	$"55BD E326 E515 670B 1001 7DAA 6B88 D96D"
	$"CED1 C915 DA9F C29F 53CF 6ACA 762C E832"
	$"EDDB 9078 35EA 9E16 BF76 68A3 1F74 6335"
	$"E3E6 D4F9 DD9B D0F5 B279 B8C5 247B 9787"
	$"5CBD AC6D 8200 15D1 8763 D460 9F4A F8E5"
	$"B3B1 ECD4 6DCA E195 4CB9 1F2F BF7A AD24"
	$"A841 6154 E299 9AD5 EA54 79C8 1B01 F7A4"
	$"8D4C ADD4 E0F4 34D4 7952 5634 BD8D CD26"
	$"DD45 CDAA FF00 D354 1FF8 F0AE DFEC C2BA"
	$"B0BA 2691 C75D B6D6 A7E5 6051 B791 F30A"
	$"9102 0201 EB5F A5DF A9F0 290E 29D7 D2A4"
	$"55C2 0C53 E6B9 690E 5C11 F5A9 1548 1B7B"
	$"7AD6 6D69 7354 87A8 241C 7F0D 4AA0 8207"
	$"AD64 D58A 4895 6350 339F 98D4 98D8 BF30"
	$"EFCD 4B6C D628 E934 4F87 3E32 F105 BB5F"
	$"E97E 1EB9 9E02 3224 D9C3 D7A1 DECD AF78"
	$"77C3 561A 7EA7 633C 0D08 2186 D385 AF8D"
	$"CF31 582C 6CE9 E169 4EF5 232B B5F2 3F42"
	$"E0FC 257C 1D79 E22B 46D1 9434 FBD1 CF2D"
	$"F9BC 657F 3C91 9E49 3D69 3C4E AF2E 8A08"
	$"2195 58FC BE95 CD86 A7EC 7114 BC99 EDE7"
	$"359D 6C0D 749E F167 6DF0 E81B EF08 881A"
	$"42DE 4B1C 62AD E9FE 00F1 16BF 7256 D434"
	$"7048 7995 ABC7 C5D5 861F 1959 3E8D FE3A"
	$"9D78 1C45 38E5 546A 49ED 147A F783 7E0F"
	$"EA56 3663 C98D DCA1 E59B F88F A8AE 8B54"
	$"D235 FD38 D9CD A369 CD2C C8E0 4B12 0C86"
	$"FF00 7AB8 DD38 D592 9CFE 17B1 F335 B318"
	$"622A BB6F FD58 F5BF 077C 1CD4 7C51 6D15"
	$"EF88 2216 C8F8 6304 6481 F8D7 BCF8 37E1"
	$"CE85 E168 1174 ED3A 288E 3A85 E6BE B785"
	$"F87E 54A4 F198 8779 4B65 D8F8 6CEB 3775"
	$"9BC3 51D2 0BF1 1EBE 32D4 7529 EEE3 F087"
	$"84E6 D4ED EC26 6B79 AE25 B94B 3479 14E1"
	$"962D E097 20F1 9C01 9AD7 F0C7 89AC BC53"
	$"A7C9 7769 14B6 F3DB 4CD6 B776 B37C B25B"
	$"CCBC 3237 AF62 0F43 5FA2 28A4 B43E 64D7"
	$"6855 BEFA 0CFE 9500 B450 09CE 189E 14FF"
	$"0085 672A 5765 2968 62F8 A352 F0FF 0087"
	$"EDBE D5AD 5EC5 6E0F 11A6 3324 A7D1 107C"
	$"CC7D 80AF 3AD5 B47F 15F8 BC19 61D3 7FE1"
	$"1FD2 9C71 2DC2 87BD 997D A3E9 10FF 007B"
	$"26BC FC66 1156 8BBA D0D6 9557 4A49 A38B"
	$"BCF8 4FE1 DB5D 4A3B ABC8 95ED 2D8F 9B21"
	$"91B2 C5C7 F78F 7AF9 DFF6 9FF8 E70C 9BBC"
	$"2DA3 4A12 D615 D855 0E07 1C01 C57E 678C"
	$"C227 8978 45AB A92B BFF0 C75F C5FE 47DC"
	$"E515 278D AB1A F53E 0A31 FF00 C99E C7CB"
	$"DE17 F096 A9E3 8D44 EA17 448B 689B 2CE7"
	$"D3D2 BD82 C34A 8ED9 1218 6308 918D AAA4"
	$"76F5 AF47 1789 84AA 2C2C 3EC2 3D88 D0A9"
	$"087B 79EF 3BBF F228 F8AB C0EB E20B 45FB"
	$"3958 EEE2 C807 FBC2 BCD6 E3E1 06BB 25FA"
	$"5988 F109 6CBC 9DB1 4B0D 8996 1937 E7F9"
	$"9DB3 952C 4508 C25F 64DA D5BE 16DA E90D"
	$"6FBE CFCF B304 6F9D 0676 9F7A C0F1 A69D"
	$"FD8A 05A5 B9DD 115C C520 F4F4 A98E 36B5"
	$"6AD0 855D 56A7 A545 5295 0954 82B3 68F3"
	$"ABAB 492F 2710 A2ED 66AD 0D1F 49B6 B591"
	$"E2BD 70B2 6386 35F4 F571 3254 5423 BD8F"
	$"95A3 83E7 AEEA 4F64 FF00 11B7 3A44 D7B7"
	$"9159 5B1F 325B 8904 69B4 6783 C66B DAFC"
	$"33F0 17C2 3A5C 705C 6A41 EEEE 3603 2C4F"
	$"F777 7BD7 998C CC2A D1A1 1A70 7694 8D2A"
	$"60E9 CAB3 A925 B1D2 41F0 6FC0 7713 F9D3"
	$"787A 3049 CAAF 38A8 3C41 E02F 00C1 FBB8"
	$"FC3D 0A32 8C64 66BC 778F C5CE 515E D59B"
	$"470F 4126 DC37 3274 6F86 FE14 BEB8 04E8"
	$"B1B2 6EE9 5BDA BFC2 8F03 5ADA EF8F 4184"
	$"3819 E335 A4B3 0C64 67CB ED19 9AA1 87D2"
	$"D0DC F33D 5B40 B0B4 B83F 65B3 8E34 5240"
	$"C0AC A36E 4B9F 93E5 FA57 7C2A 549C 53A9"
	$"2B99 3845 3D15 9999 7F0A A0EB 827A 0AC5"
	$"BBBF 5862 6418 C0E0 D7A5 8487 B6B3 3931"
	$"33F6 69FA 18D6 9FE9 373C F426 B72F 2C7F"
	$"70A5 0704 62BD 1AF3 F675 628F 3284 7DA5"
	$"2932 9E9D 6F24 0FB5 8F7C D7A4 783B 0D73"
	$"1316 E38C D70E 6B26 E0DA EC76 658B 91A4"
	$"7D01 E195 5FB3 A739 4AE8 01E0 FCB8 3DBE"
	$"95F1 FCC9 592E ACF7 2A4A D2B1 52E2 5619"
	$"39CA F6AA 936E C064 E868 52D6 C092 7A95"
	$"5DB3 2011 F27F 8AB4 ED23 247C EBF2 FF00"
	$"0D54 A6AC 0CDB D28F FA55 B109 D264 FE62"
	$"BB6D E7D2 B6C3 3D19 C15D EA8F CA9C 046C"
	$"0FE2 A795 C9DD 8E47 15FA 75F7 3E19 6E4A"
	$"8B93 9A70 8F95 C37A D45C D2DA 126C 1B4E"
	$"4669 E8BB 5795 E2A1 B2D2 268D 6361 B554"
	$"8CF4 A923 8E45 C938 C0ED 59BB 24D9 B462"
	$"D6B1 2409 860F B4FD 0D7A 17C2 0F00 5BF8"
	$"C7C4 26F3 564C 691A 7B06 981F F96A DD40"
	$"15E4 6738 DFA8 E06A 568B D52D 3D5E 88F5"
	$"727C 13C5 6329 D28A BABD DFA2 DCFA D478"
	$"8343 D0B4 D599 3CA8 B628 48A0 550A 028E"
	$"074A E275 6F8B FA1D CBB5 A4DA 3C17 21F2"
	$"A559 0118 EFCE 2BF1 FC3E 1EA5 78DD 6EAF"
	$"77D7 7B9F AAE1 7052 ACFD A547 6E96 F23C"
	$"97E2 4278 2C69 ABE2 4F0E C0DA 7DD2 CA12"
	$"6B71 F75F 27B5 62F8 6ED1 FC5E 4F87 A3C2"
	$"DD5D FF00 A9CF 6C57 DA60 A588 860A 15EB"
	$"ABCE 0DFC D2D6 E797 8E8C 2956 9E16 4F49"
	$"46FF 007A 67D1 1F0D BE0E C9A1 E9B0 DB4A"
	$"4317 3FBF 3260 0CF7 C57A 568B A6E9 7A7E"
	$"A3FD 8FE1 BD36 4BC6 4E64 48D7 7ED3 5F3D"
	$"997B 5C4C A788 86B3 93BD BCBB 1E2B C425"
	$"4961 9690 82D5 9DE6 9BE0 5F1C 6B17 490D"
	$"BC6B 6903 7271 D40F 7F7A F54F 09FC 1CB5"
	$"D331 71A8 CCD7 321E A1BA 66BE A324 C8AA"
	$"E2A6 ABE2 5597 63E5 F31C DA86 1A1E CB09"
	$"F13E BD8F 4DB1 D2AD EC63 5896 22A1 7A71"
	$"DBDB 15C8 CDAE F8DF C3FA A5E6 B3AD 6942"
	$"7F0D BCC5 523B 7659 6E6C A318 1E69 0800"
	$"6424 64AE 4B28 E7DA BF4A A14A 34A3 CA8F"
	$"8F6D BD59 DA69 B776 1A95 9C17 FA75 C437"
	$"16D7 11EF 4963 20AB 83CE 78E0 F6AF 37D0"
	$"7C47 73A5 F89B C5F6 9A5E 8579 A8EA 579A"
	$"B174 B748 FCA8 9116 3541 2492 B0DA 8A48"
	$"F727 B0AD 8477 2BA9 C9A3 E863 52F1 9DDE"
	$"9D61 2005 EE1A 3908 854E 7801 9B04 9C60"
	$"7039 39E3 9AC2 FF00 848B C55E 2F3B 3C1D"
	$"A7FF 0066 E9CF C1D5 F518 882E 3D60 B73F"
	$"337B 3360 7B76 A2C0 6968 3E07 D174 8BC3"
	$"AACE F36A 9AB3 0FDE EA17 EFE6 CBF4 51D2"
	$"35F6 503D 2AC6 BB78 2D88 8628 7CD9 2453"
	$"B507 3823 B9F6 AE7C 4CDD 3873 455D 974E"
	$"1CEF 94F9 1BF6 89F8 D9A7 786A CAE6 C349"
	$"BC49 666D C242 8DD1 8704 7E15 F207 C33F"
	$"85FE 2DFD A1FC 70F6 D66A EB6A 2432 5EDE"
	$"37DC 893A 91CF 7C74 AFCC 306E 588C 4D5C"
	$"4A5E F5F9 63FA FE37 3F47 C2D2 8657 97C7"
	$"DB3B 5FDF 97A2 D97C CFAB 358F D9BE DFC3"
	$"BA3C 5A5F 8623 D896 E98F 331C CAC3 B9AF"
	$"3AD5 3C31 A8E9 886D F558 4A48 9C23 AAF1"
	$"915E 4633 0B56 9547 2ABF 1A67 A395 66F4"
	$"F1D4 B95E FF00 91CE 8BA9 2DE4 682E 9769"
	$"1D1C 771E F53C 00DD 15F2 DF29 D320 E457"
	$"553A CAAE BD4D 2B51 74D9 B704 490C 0620"
	$"A851 87CC A406 0DF9 D719 E27F 08E8 FACC"
	$"6D11 B602 4C92 1851 0ABC B3E7 1D0A D2A2"
	$"F9A2 735A 77C1 5D1C 89A7 BBBA 713B 8F91"
	$"F030 9ED5 9337 C15D 51AE BCB8 F50B 6684"
	$"9389 0919 15E8 C71F 294E EF63 49D5 5668"
	$"EDFC 2BF0 C744 F0BE 2E4C 7F6E BEC7 FAE7"
	$"030B F4AE 8441 219C 96E4 1EB8 AE4A 95E5"
	$"5DB7 2F23 9EF7 6693 C8B6 5665 98F2 0715"
	$"C2EA 733E A172 231C 826B 3A4A D2E6 62BE"
	$"963A DF0E 68EB 6B6E AEE3 A738 A7F8 8CFF"
	$"00A3 1407 6F14 9CB9 A5CC 4F53 C875 A8C9"
	$"B960 E3D7 06B9 F9E3 5E41 ED5E A519 6C84"
	$"D731 CCEA F213 939C 62B8 7D4E 7625 9437"
	$"535F 4D96 434B 9F3F 9A4B 922C B5A0 C5B6"
	$"40F2 0CD7 5248 6819 5BA7 6A31 CEF5 4300"
	$"BF71 6339 D563 15D6 F832 E17E D316 3380"
	$"4561 8C7C F459 BE19 72D5 47D0 9E1B BA8D"
	$"6DD5 90F3 B6BA 16B8 9180 39EA 2BE4 1C6D"
	$"73D9 9EAC 81C1 11EF 0DBB D47A 5547 7070"
	$"B838 3424 A4B4 145D 87DA 5B33 31CF DD1C"
	$"D6B4 4AA1 5446 8493 4B9B 6429 32F6 9F9F"
	$"B75A AC67 1FBE 4CFE 62BB 6F2D FF00 BF5D"
	$"9865 A339 2BEE 8FCA E299 391D BA54 A809"
	$"F997 BF1C D7E9 0CF8 7B58 9319 F90F 06A4"
	$"0814 AC65 727B 1F5A CDB4 6895 C785 2381"
	$"9E4F 4A99 10B0 C8C9 C7E4 2A5E 8EC6 D18B"
	$"7D2C 4A14 15C0 1F8F 4C57 5FF0 EFE1 5F89"
	$"7E23 5E9B 5D22 231D AC5C CF75 2708 A33D"
	$"01F5 AF3F 1F8E A797 61E7 88A9 F653 B2F3"
	$"EC75 60F0 92C6 D654 23D7 F25B 9EF9 65FB"
	$"2E78 36C2 CD53 5096 E6FA E88C 3B72 801F"
	$"6C53 B5AF 08DA FC2C F0CA DBF8 7119 ADA3"
	$"7F36 60DF 78FD 6BF3 0C4E 7F8C CDAD 4B13"
	$"6507 2D52 FC0F D232 9CA3 0980 AAA7 0BB9"
	$"59AF F33C B355 F888 BAD6 0C77 7F2F 2AC8"
	$"4E0A 9ACB B6BC 3212 EE59 41E3 2781 8EE7"
	$"35ED 51C2 4B0C B965 1D4F 5659 8C6A D9D3"
	$"97BB FD6E 71DE 32F1 2CDA A5E4 5A36 8644"
	$"96F0 7FAC 7EB9 6AF6 4FD9 CFC0 9796 3ABA"
	$"789A EA19 2E65 0BFB A539 EF5E E63A D80C"
	$"AD52 B7BD 2D75 E973 E0EA 6267 9966 956B"
	$"5FF7 6BE1 7E8B FCCF A9FC 3BF0 CBC7 FF00"
	$"1035 16F3 4C9A 469E 846D 6524 96E7 9FD2"
	$"BE98 F037 C2ED 2FC2 B68B 0595 B0F3 9801"
	$"34C4 7CCE 7EB5 C991 E58A A495 592D BF33"
	$"C5CF 7325 CBF5 6A4F D7CC E92F 7598 744D"
	$"52D3 C35A 5691 26A3 AA5C 47E7 9891 D624"
	$"8610 4032 4923 74F6 1824 D75C AA00 C2FC"
	$"A40E 475C 7E15 FA14 6292 491F 21E6 21C6"
	$"E254 6412 72DC FF00 3FCE 9FD3 2878 5F4C"
	$"F5FF 00F5 FF00 4AB1 9C25 AF81 2E34 CD4F"
	$"53D5 6E35 E3A1 E892 CE2E 3EC1 A7CE D0C4"
	$"7072 6492 438F 2F3D 5953 683E A6AC 378D"
	$"352F 103B 5878 0348 5BB4 1F2B EA97 9BA2"
	$"B38F 1C65 4FDE 988F F678 F7A6 059D 2FC0"
	$"1689 769A D789 2F25 D7B5 54E6 39AE C030"
	$"C3FF 005C 611F 2A75 EBC9 F7AE A8E4 30DA"
	$"DC95 C0CE 452B 8114 B2B4 51EE 6EE0 823B"
	$"B1CD 7CC9 FB58 FC77 83E1 8F87 6E34 8D32"
	$"ED25 D7B5 08C8 90AC 986B 788F 076E 3BD7"
	$"063A A384 347A BD17 ABEB F257 677E 5F4B"
	$"DAD6 49ED BBF4 47E7 EFC3 5F00 F8F7 E3BF"
	$"8B97 49D2 0DDC F6D7 13E6 49A4 C910 8272"
	$"5893 FCAB F533 E0D7 C01F 0BFC 24F0 9C1E"
	$"1CD3 13E7 60A6 E650 30D2 BF72 C7D3 3DAB"
	$"C6C3 60E3 88C4 AE45 CB18 5B6E B2B1 ECE6"
	$"D8D9 7D55 5093 BF36 BE91 5B23 A6D6 7C1C"
	$"8EE0 5BB1 60C3 18EE 2B83 F12F C33B 4B8B"
	$"76FB 558A E307 0C46 7F1A E7CD B2CF 6BCC"
	$"DFDE 7938 2C4C B0CD 3A6F 53C2 BC73 F052"
	$"4286 E346 895D CE77 47FD E15E 29AD E8FA"
	$"F783 AF44 9059 3A20 3F34 1264 0C7B 1AF8"
	$"C952 961E 6A2D 687E 8981 C6C7 1B4B 95BF"
	$"78D1 D37C 57A6 EA50 B2A9 FB35 C118 7490"
	$"639F 6F5A A973 2C21 F7BB 9F6C 77A5 185D"
	$"F29B EB4C A336 A6C4 82AB C67D 6A7B 6B96"
	$"6C16 CE0F 402B 7E45 08A8 B326 9B67 4168"
	$"54A6 635C 1239 14B3 F976 C9E6 B104 76E3"
	$"18AC A6DA 6EC3 8AD6 CCE5 35ED 777E 62DE"
	$"31D3 00F3 4CF0 E69E D3CF F699 6327 3F76"
	$"B48C 7961 CD2D C6DD DE87 790A A431 8241"
	$"CE39 15CD 7892 E311 303C 819C 528A 5644"
	$"27AD CF28 D6E4 7699 9CF0 3B56 0DC4 EA17"
	$"793C D7AB 185E 2AC2 E749 3B9C 96B5 3072"
	$"EF8C 0C57 0B7A E249 C818 EBDC D7D4 E56B"
	$"DDB9 F319 B4AF 2499 B9A3 9644 4240 E6B6"
	$"BCEC 0F98 8C76 AC31 2AF5 59D9 855C B492"
	$"2ADD 3E48 E98A DEF0 94FE 55C2 EDEE 6B3A"
	$"D1FD C170 76AE 9B3D CFC3 1A83 1840 18DB"
	$"8AEC 6DEE D5F6 8DD8 C0E9 5F27 562D 69D0"
	$"F6B7 D492 4B92 E76A 2E00 FD69 AB0E F3BD"
	$"F23D 2B2D 22AC 8124 CD18 63FD CE11 4641"
	$"E4D5 88CE D5DA 3201 E9C5 67B3 5722 4AC5"
	$"DD3A 01F6 DB5D CE00 F390 F1D7 A8AE D7C9"
	$"87FE 7AB5 77E1 F667 2D7D D1F9 6401 2A0E"
	$"39EF 526D DC01 518A FD1A 4CF8 AB12 955E"
	$"08AE 97C0 7E03 D77E 20EB F0F8 7BC3 D089"
	$"2E66 04B3 B9C0 8D7B D716 2B15 0C1D 1957"
	$"9AD2 2AE7 4E1B 0EF1 3563 4A3B B3D6 355F"
	$"D90B C7DA 5D94 9736 3A95 ADEC 9164 98F2"
	$"1704 7519 EF5E 377B A4DE 6917 D369 7AA5"
	$"ABDB DD44 4891 0F00 9AF1 B29E 20C3 66CE"
	$"7182 7194 7569 F55D D1EB 63F2 8A98 14AA"
	$"B973 41E9 E8ED A173 C2DE 1BBC F166 BB6D"
	$"E1ED 3E32 25B8 7E4F 50AA 3A93 F866 BEAF"
	$"F086 A7A6 7823 4E5F 0AE9 2882 3B30 04A4"
	$"0E65 6EEC 4D7C F717 E2A5 5650 C1C3 A7BE"
	$"FF00 247D 2708 E5FE DE15 7135 37D2 2BF5"
	$"3BCB 2F19 E933 4297 735C 2222 0F9C 1EE6"
	$"B07C 63E2 CF07 6B9A 5CD6 A264 133A 95FC"
	$"2BE3 A9CB 9EED 4754 7D3D 0C0D 6A55 D4A0"
	$"F447 C3DF 1174 C97C 31E2 79ED EC98 B477"
	$"1991 1874 1CD6 0C37 BAD6 A0BF 6637 5391"
	$"D36A 939A FDB7 011C 3E2B 054A B545 AB8A"
	$"7F33 F26C D6AE 2305 8FC4 6168 49E9 27A7"
	$"93D4 EE7C 0DE0 ABD3 7297 17CA B6F6 ADC9"
	$"04E5 9ABF 45BF 668F 85B6 B73E 1CB7 D60C"
	$"3B22 DDB5 43F5 22BE 6337 92CC F190 A307"
	$"78AD FE47 A308 4B2C CB67 29FC 4F63 EB3D"
	$"0BC3 F6F6 76EB 1C51 8083 F5AC 69BC 5DAE"
	$"F87F 58BC BBD6 BC3D 3C5E 178E 5582 3BD0"
	$"A0CB 091F 7A47 4049 3093 C6FE 31E9 8AFB"
	$"1C1E 1E34 A9A8 A5B1 F155 26E7 2E66 3FC6"
	$"7E1A D575 5587 C5FE 05D4 638F 534B 47B7"
	$"2519 4A5D 5B3E 0E15 CF01 C755 6AE5 2F47"
	$"82ED B456 9B48 4F10 693E 2AB6 4261 474B"
	$"992F 24B8 1D9F 3949 549E 09E4 63A5 7722"
	$"0F56 D11F 5397 48B3 9F58 8A3B 7BE9 2D91"
	$"AE91 7909 2141 B81E DC1A E7EF FC7D 15D5"
	$"D49A 4783 34F7 D7EF A36D B23C 4DB6 D2DF"
	$"FEBA CF8C 71D7 6AEE 3458 06C5 E02B 8D5E"
	$"68B5 2F1F 6ACD ABC9 19DE 9651 8315 8C27"
	$"B623 EB21 FF00 69C9 FA57 5BE5 C10C 6238"
	$"82C5 1A80 AA83 0A15 4760 0700 6286 C079"
	$"0BFC 4463 93D7 F950 EEA1 4EF0 71C6 41A5"
	$"7B01 C07C 59F8 9FA3 7C2D F095 E78A 3559"
	$"1772 AB0B 48BB BBF6 FC2B F2EB 527F 1CFE"
	$"D25F 13E4 B3D3 2292 F27B DBAE 5CF4 4527"
	$"A67D 00AF 1B1B 5173 3BEB CB6D 3CE5 B7E8"
	$"BE67 BD95 5369 39ED 7FFD 263B BFEB B1FA"
	$"63F0 0BE0 3787 FE09 F832 0D16 C615 7D46"
	$"550F 7775 B465 DC8E 707D 2BD4 30E1 B6AF"
	$"61C8 C118 3EBF AD77 E128 7D5E 928B DF77"
	$"EA79 58BC 43C4 D695 4E9D 3D3A 1220 CAAE"
	$"F077 8EA5 B150 5C5A DBDC 2347 20CA 3291"
	$"820E 3B73 ED5D 1382 9C5C 5F53 9E2D A774"
	$"71DA 9780 11C9 9ADC ED39 C807 F3AF 3DF1"
	$"6FC3 1B2D 7209 6DB5 0B24 6639 F9B6 F39F"
	$"AD7C 6E61 9438 A6BA 33DC C163 DD39 A9C7"
	$"747C E9F1 1FE0 A6AB A18D FA7D 8ACD 6CA4"
	$"B651 70EA 3EBD EBC8 B56B 5D43 4B63 25C4"
	$"5234 2BC6 31C8 AF92 8D29 61EB 2A73 F33E"
	$"FF00 0D8A 863A 8292 DC6E 95E5 6A20 4903"
	$"654F 6CF2 2BA1 B5D3 9828 5C63 D2B5 9C9D"
	$"27D0 8DB4 34E0 4366 A259 1B8E 6B91 F15F"
	$"88C4 2AE9 14BC 7B54 D38F 34D7 7EA0 9D95"
	$"D9CE E836 F73A C5CF 9EC8 C573 DEBD 5B49"
	$"D3FE CB6C AB81 BAB5 C42B 027E E962 EA4D"
	$"8877 90B5 C86B 4FE7 9649 0FAD 614E E4C5"
	$"1E75 AFDB 9563 81F2 D71B 7A4C 6C47 6AF7"
	$"28AB A473 D47C A725 AE48 5959 4362 B901"
	$"1B3D C60A E467 AD7D 565F 1518 1F35 98CB"
	$"9EA2 4745 A791 185D C781 56DA E01C ED20"
	$"FD6B 9270 7299 DB4D A841 6A57 6964 7223"
	$"0473 5D4F 852D E50E 015C F3D6 8C43 54E9"
	$"344D 193A 9515 8F65 F0EC 4EB1 2A9E 3033"
	$"5D95 A46C E818 0E95 F1B5 56AC FA35 A235"
	$"ECE0 693A A818 AD14 B45F BA70 71DA B99D"
	$"EE66 DB8E 848D 1904 2A0C 0F4A 5500 1C36"
	$"29DA E0DD CB36 047D AEDC EDE7 CE4F FD08"
	$"575F BBFD 9FD6 BAB0 D2D1 9CD5 F747 E5EF"
	$"CBC1 EFDE 9E14 8FBA 78AF D1DB B9F1 B157"
	$"5726 58C0 5CB5 7B97 ECB3 AD41 A4F8 9EE2"
	$"270A B34A 06D7 C738 FAD7 83C4 3172 CBAA"
	$"A8EF A7E0 D33D CC81 47EB F4EF D6EB EF4C"
	$"FB2E 0DA7 4B7B 8DA3 1237 27D6 BE70 FDA1"
	$"3C05 65AD 5AC9 ABE9 D6C8 97F6 9F3B 11C1"
	$"65F7 F5AF CE70 B895 80C6 D0C4 F4BA 4FD1"
	$"FF00 C13E BA18 678B C3D6 C3BE A9DB FC4B"
	$"63CF 7E07 2C5A 4DB6 ABE2 9962 F9C0 30A9"
	$"23EE 60D3 759F 116A B36B 0D71 A0C6 F744"
	$"925C A0C2 91F5 AF67 1905 8ACD 2B7B 5D14"
	$"6D14 FE47 7651 FECB 93D3 9ADD EBEB A98B"
	$"A8F8 FAEA 1BB3 A7CD 7461 6FE3 46E3 07FA"
	$"D516 F14C 41BC E9AE FE5F F7B9 3F85 76D3"
	$"CAB9 5594 6FD9 F734 FEDF A52B AE6B 5B73"
	$"99D7 1E5F 186A 70DC E0A4 5082 AA48 C67F"
	$"1AED 7C33 E065 BA44 5D3A C332 11F3 4846"
	$"36FE 3DEB D7C5 62BE A785 A747 64B7 FF00"
	$"23E4 A8D2 58EC 655C 5C96 ADDF EE3D 1FC3"
	$"DA76 8DA2 EA29 A74D 6B73 AB5F 84DC D6F6"
	$"D119 8C63 D48E 83F1 AFD0 DFD9 FE4D 1B52"
	$"F065 98D3 B7A4 96C7 65C5 B4A8 6396 06C7"
	$"01D0 F23D 8F43 5C39 1509 D7C4 7B79 6975"
	$"B797 4763 CCE2 5C4C 5D18 D15D CF68 8A36"
	$"5880 8F86 23F4 A79D AE82 1203 2329 0C18"
	$"6E56 0782 0FFF 005E BF41 8AB2 3E29 9C26"
	$"9FE0 DF14 69DA CDF5 A787 F533 A078 7659"
	$"032D BAB2 DCC9 BF39 66B7 0C36 C0AD FDD3"
	$"9EF8 0335 B1AC F8F7 49D3 AE86 8BA5 C33E"
	$"B7AC 6001 6762 37B2 1EC6 57FB B10F 73F9"
	$"55EE 0501 E14F 10F8 A9FC FF00 1CEA 622B"
	$"3272 346D 3DD9 22C7 FD36 97EF 4BFE E8C2"
	$"F5EB 5D66 9FA7 D8E9 96CB 61A7 DA45 6B6F"
	$"17CB 1C51 2845 03E8 2930 27C1 618D DCFA"
	$"7A7A D08C 09E4 B606 30C3 BFF9 CD08 071F"
	$"9724 E703 279A C0D5 F5EB 4B1B 3BAD 52F6"
	$"7583 4FB2 8CC9 34AC 700E 39C6 6A64 D2DF"
	$"65AB F443 49BD 16EF 6F53 F35F F685 F8B5"
	$"E24F DA17 E23A 786F C2E9 34DA 7A4B F66B"
	$"5823 CF4C E371 02BE CFFD 98FF 0067 4D2B"
	$"E0FF 0086 EDAF AF6D 227D 72E9 0191 DBAA"
	$"6464 807D 6BC3 C3C5 E2AB C5C9 6CF9 DFAF"
	$"D95F 2FD0 FA2C 6496 0F0D ECA3 BB5C BF25"
	$"AC9F CD9E EC57 6BE1 0800 E723 191F 8FB5"
	$"2BCA CB18 209C 9C0C 0C1C 1AF7 4F9C 0C65"
	$"549D D9EB 9F53 4DCB 3E47 0327 EB91 D327"
	$"D680 1CD8 3CB2 E79C 0EE0 8F5F 6AA5 75A6"
	$"C174 7698 F9E4 6456 55A9 AA91 B32E 1270"
	$"7739 ED5B C1F0 5DC4 EA22 0E18 1057 15E1"
	$"3F12 3E02 D9EA 11C9 3594 3B25 C12A 00E3"
	$"3EE2 BE47 38CB 1CA3 CF15 AAD8 FA0C AB31"
	$"7426 95F4 EA7C B9E3 9F84 FAFF 0083 6ED6"
	$"7B1F 3209 1892 CC32 C84F D2B3 344F 1C2D"
	$"B4AB A7F8 A616 B594 1DAB 305D CAC7 FA57"
	$"CDA8 5D25 35EF FE67 D9A9 29A5 383B C59A"
	$"1E22 F115 B416 A65B 7B88 E543 F74A 9C8A"
	$"F3B8 E3B9 D775 1C11 98D8 F38E 4556 0E2A"
	$"9C5C A4B6 B975 1FC2 BB9E A1E1 6F0F 258C"
	$"3B59 0A95 E413 5D1C 8CB0 A7CA DD6B 9AAC"
	$"FDAC 9CC9 7D91 9179 248C 181C B0ED 583A"
	$"840C 72ED C135 70B3 4AE3 5A1C 7EB3 6BBC"
	$"1CA9 C1E2 B88D 4F4F 660D 95E8 7B57 B185"
	$"96A9 3397 111D 19C3 6BD6 5265 948C 62B9"
	$"3712 C6FC 2735 F598 371E 5B1F 2F8D 4D4A"
	$"ECB7 692C E539 038E D57C 44CD 1838 393E"
	$"F454 8462 EE14 E729 4516 EC2C 5E49 01DB"
	$"C57A 0786 AD96 18C1 DBCE 79AF 2F1F 26E3"
	$"647A 7808 252B B3D3 B449 9308 0100 E2BA"
	$"DB49 8140 A9D7 BD7C A558 B8B6 7BED E964"
	$"6CDA 193E 51C8 1FCE B4A2 933C F19E 99AE"
	$"7D5B E55B 99CB 5572 C469 907A D569 772E"
	$"5BB0 AB68 9894 8EAD 15B5 E404 39C8 9530"
	$"3FE0 42BA 2FF8 48FD FF00 4AD7 0F17 66D1"
	$"3560 B4B9 F9CC 5010 7E5E 9532 0518 561C"
	$"118A FD18 F8A5 B224 118C 6C3D 6BBA F83E"
	$"D3C1 E3ED 2D21 27F7 A4A9 03BD 79B9 A59E"
	$"0EB5 FF00 95FE 47AB 953E 4C65 192E 925F"
	$"8BB7 EA7E 8059 C660 F0FF 0094 E3E6 5C9C"
	$"5796 F8DE C2E3 53C8 8E1D D230 2BB4 7460"
	$"7D6B F21A F51F EED7 92B9 FA16 5928 53AD"
	$"5273 D936 607C 3EF8 472E 8961 7A9E 2045"
	$"686F 6669 3ECD 19C6 14FB D5AF 19F8 252C"
	$"7428 97C1 FA64 56A1 DB68 1B39 3F53 5EBD"
	$"494E AD69 56A9 F0B7 7670 4B1D A428 53F8"
	$"2374 BEF3 C47C 59F0 BB48 BB8A 63E2 1BFF"
	$"00B2 5FC4 A76B F567 3F85 79C5 97C3 5D7A"
	$"57CE 9F63 34D6 E18A 9B89 81C6 3D40 35F5"
	$"D95E 7519 5097 B656 847E 17D4 F0F1 F947"
	$"3D75 520F DE96 EBA1 DAE8 FE07 96D1 04AB"
	$"1CB7 0D18 E508 E33E D5D9 7833 4BF1 D2E9"
	$"B36A D24B 6BA5 C10A B3A5 B4F0 96C8 1D03"
	$"B678 27DA BCEC 5E2E 9E31 B735 7D92 4BCF"
	$"A9DB ECAA 6129 DA9E 8926 DB7F 91F5 A7C0"
	$"6F86 DA17 8805 B6AF 3C16 569A A5F4 293D"
	$"CDB2 30F3 4E07 523A 902B DEEC 2F7C 3FE0"
	$"AF88 BAB4 B797 71DA C09A 3D94 5B00 2CF3"
	$"4DB9 C855 45F9 9DB6 8EC3 A1AF A7E1 FC04"
	$"F0EA 53A9 BBD1 7A74 3E1B 39C6 AC54 D457"
	$"43D0 F41D 52E3 5BB5 7BBB 8D16 F34B 52C4"
	$"4315 D328 9244 E086 2833 B327 F84F 3F9D"
	$"41AF F8CF 43F0 ECD0 DACF 2BDD 5FCD CC36"
	$"1689 E75C 4A4F A22F 207F B470 2BE9 92EC"
	$"7886 32E9 7E31 F181 DFAE DE1F 0F69 4E7F"
	$"E3C6 CA5D D752 A9FF 009E B38F B80F F753"
	$"E99E C3A6 D1B4 3D23 41B1 FECF D134 D8AC"
	$"E103 2563 5FBE 4F77 6EAC 78EA 4E69 FA01"
	$"7C91 9C6D 518E C4FE 4681 BCE0 05C6 79CF"
	$"5FE7 4804 C801 8AB2 8DC4 9201 F6FF 0026"
	$"9C09 0A49 CF5C 1F9B 8F73 FCE8 039E D775"
	$"C862 78EC 4DC6 C573 82E7 8CFB 57C9 7FB6"
	$"7FC6 83A7 E930 FC29 F0CD CB35 E6A2 01B9"
	$"1172 4A9E 0271 EF5C 78DA 8A9E 1A4E FAC9"
	$"A8FA 2DDB FB8E FCB2 8BAB 8984 BA46 F2F9"
	$"ADBF 1674 FF00 B1E7 ECCC 3C15 A445 F10B"
	$"C656 6A75 CBF5 F320 8641 FEA5 0F43 83D0"
	$"F35F 559E 0AB0 93B6 00CF 43ED 8A58 1A7E"
	$"CE95 DAD6 5AFF 0097 E160 CC6B 7B6A EEDB"
	$"4745 FAFE 2281 F303 BB77 6E98 E73D FE94"
	$"A305 030E 40EA 4F1E 95D8 8E01 36A8 F62A"
	$"4924 FEB8 EF4F 193C 818E 7201 EB4C 062B"
	$"0507 68DC 71F3 71F9 5212 8A80 E7EF 03C9"
	$"EDEB 4740 1790 304F 7C7D DC63 F1AA 37DA"
	$"5C57 995D AA1B 185F 7AC6 AD25 5236 65C2"
	$"5CAE E70D E27F 873A 6EB1 039B 9B44 93AE"
	$"72A0 8AF9 8FE3 0FEC EFF6 846B AF0F D985"
	$"CE4C 89DB 3EA0 76AF 8BCD B2D7 4DFB 58EE"
	$"8FA9 C9F3 2F66 FD9C DFBA CF93 3C5D E13F"
	$"1378 42E2 5531 C82D 6339 7848 254F D0D6"
	$"FF00 C2EF 11F8 5357 9058 CD70 96B7 D9C0"
	$"8A43 B413 F535 E755 8BAF 86F6 B0D9 6EBA"
	$"BF3F 91F4 90AC A153 925D 763D 9CC6 2084"
	$"47B9 4803 2187 4359 D701 8B64 8E0F 22BC"
	$"9D19 AA7B 918B 40C0 CAE7 81DA B135 2258"
	$"7C88 1856 D15B 1A2D 51CD DFDA 339D E146"
	$"3B8A E4B5 6D3C E494 C019 E6BB 2854 F78C"
	$"E51E 64CE 4354 D2E3 98B7 CB9E 2B98 B8F0"
	$"D233 8201 EFDA BE8B 0988 6958 F131 7875"
	$"3636 2F0F 2C7D 2339 F4AB 8BA4 AA8C 9420"
	$"E2B7 9E23 9DD8 C29E 1F91 58B7 65A7 E645"
	$"4404 5767 A3E9 8D18 4419 24F5 35C1 8CA9"
	$"6563 D1C2 42C7 65A6 69F2 A329 1926 BB2D"
	$"3610 89B5 FEFD 7CFD 4973 499E A58D AB7F"
	$"3061 48E8 2AEC 47E5 C01D EB19 B49E 9B91"
	$"22DA 9700 28F4 AA5A 9CCD 040F 8233 8CF5"
	$"A6B4 4EE4 C773 CAF5 DF14 BDBE A56C 6371"
	$"CDC4 608F F818 AD4F F84C 27FE F0AF 6703"
	$"8653 A773 9F17 5396 491F 232A B706 A70A"
	$"0904 AE78 E7DB E95F 5EDA 5AB3 E4E2 89E1"
	$"89B7 6D51 863F 7777 53F8 D7B3 FECC FA0D"
	$"BDFF 008B A5F1 0DEA 068F 4D42 AA98 CE58"
	$"FA1A F0B3 DADE C72F AD26 B756 FBDA 47AF"
	$"93D2 5571 B4D6 D6BB 6FD3 53EB 2BAD 6FED"
	$"36AD 6F61 B9E6 9461 78CE C6F4 23BD 4D61"
	$"F0CF C5FA 858C 1797 9684 36EC 9743 B148"
	$"F5C1 AFCF F0B8 7F6F 28CA 11BB EFD2 C7BB"
	$"8AC7 4307 4F96 4F77 F79B FA77 C37D 5EF2"
	$"67B0 D223 3753 3759 48FD D467 BEEC F5FC"
	$"2BBA D37E 016E B136 FAA5 F99E E9D4 9120"
	$"FF00 551B 63B0 AFA4 CB72 5C56 677A B356"
	$"8A76 8F6F 53E7 B199 D53C 234A 9AF7 B4BF"
	$"92FF 0033 C635 BFD9 E745 F0DF 8833 E263"
	$"3EAB A94C CD25 ADBC 50B4 ECCA 0FDE 541D"
	$"00F5 3815 ADA4 FC34 D375 FF00 B459 5BD9"
	$"B412 5990 26B4 9A03 0C91 83D1 990F 63D8"
	$"8E2B 2AB9 4E21 4ED2 DA3A 5BC8 F463 9E42"
	$"AFBD 15BF F563 5F49 F80B A7DC 5D24 3FD9"
	$"E42B 1E58 2E07 E55E C1E1 7F80 7E1C D2AD"
	$"D565 B186 E01F 98AC B182 0E31 8E08 AF47"
	$"2BC9 799A 9CEE ADB1 E766 99C5 471E 44F7"
	$"36AE FC2B AC78 9751 D1E3 87C3 69A1 41A3"
	$"5EAC FF00 6F9A 68DE 7655 E0C7 12C5 9C2B"
	$"0EBB 88ED C575 5AFE A1E0 EF0C DD2E BFAE"
	$"258C 37C5 7CBB 794C 424B 8719 3858 C01B"
	$"D8FB 0F5A FBCA 54D5 38A8 A3E3 A4DC 9B6C"
	$"CBF3 3C73 E316 1F66 1278 5B49 61CC 92A8"
	$"7BF9 D7D9 4FCB 07D4 E5BD 856F 787B C25A"
	$"2F85 E361 A5D9 8134 9CCF 7531 324F 39F5"
	$"7918 9627 DBA7 A62B 4D84 6B60 9E4A 839E"
	$"7D38 CFFF 005E 8726 3CB0 3CF4 38E4 D201"
	$"3A92 81F9 C0C7 3DF9 EBFE 7B50 0E08 0075"
	$"CE7B 8140 0602 6085 00F6 240C 0AC7 BDD6"
	$"6392 E8E9 9692 ABCC 07EF 0823 2A3D 3DEA"
	$"7997 3461 7D5B B20B 3B36 BA6E 60F8 9EE3"
	$"C3F6 5A15 E6AB E27B 88ED 34EB 5466 799C"
	$"ED2B 81D1 73DE BE6B F80F F026 DFE2 57C4"
	$"9D43 E367 8944 D3E8 70DC B0D1 22B9 1979"
	$"D41E 246C F6E9 5CB9 B52A 53C5 D3A5 1F8A"
	$"DAF6 B7F9 BD51 E865 B5E7 4709 56AD B46E"
	$"C9F9 9F65 2284 0AA7 0A14 6D55 5E06 074F"
	$"FF00 552C 782D 9039 C739 233F 4FF3 EB5D"
	$"88F3 C149 24E4 9E3A E7A5 22F9 9B40 276F"
	$"39F7 3EB4 805C 1540 5986 E03E F638 FCA9"
	$"0EE3 F272 3182 79FC A980 BBBE 4CEC C2F5"
	$"38F7 FF00 3FA5 232B 6002 011D D7FF 00D7"
	$"F4FE 7400 6376 1307 00FD EC81 814E 5FEE"
	$"8078 E292 0229 E312 27CE A0E4 F247 18FE"
	$"9DEB 1B50 F0E5 A5D4 2C64 5565 3F97 FF00"
	$"5EB9 F114 2359 599A D2A8 E1B1 E33E 3DF8"
	$"07A3 F89A C2EA CA0B 58E2 6B86 2D9D B904"
	$"FD3F C2BF 3CFF 0069 5F81 F73F 0CB5 B6FB"
	$"124F 1328 DE0A F07E AA7B D7CB 430A F038"
	$"94ED EE4B 4F43 E968 E29E 2E8B 85FD E5AA"
	$"38EF 87FF 00B4 1788 FC34 B1E9 BE27 5935"
	$"4D38 1DA1 BFE5 AC63 EA6B E88F 0A78 C7C3"
	$"7E33 B6FB 5683 A947 2803 2D14 846F 43E8"
	$"477A F3B3 7CB7 EA93 788A 51BD 37BF 91EC"
	$"E031 8F10 BD9D 5D24 BF13 52EA E072 57A9"
	$"18C1 18AC 4BB5 0C49 1F20 35E2 5A4A D6F3"
	$"3D48 A69E A655 DDBE E4C6 370F 515C F6A3"
	$"65FB B218 0E7D 3AD7 4D36 D38A 60DD 958E"
	$"5EFA C562 1D09 27B9 AC87 B43B F39C 0AF5"
	$"E12D 3438 AAC6 E33E CC1B E61D AA51 619E"
	$"76F0 7939 AD1D 4D0C BD95 CD1D 3B4A 05C1"
	$"6450 0F4A EBB4 AB04 8950 1032 38AE 1AF5"
	$"B9AE 76D1 872D 8E9E C6DC 22E4 1C00 79AD"
	$"DB75 56C9 0A0E 475A E072 D59A C9D8 BD19"
	$"0ADC 31E9 D2AE C21B 6866 3DEB 24AD 6644"
	$"B52C 35D4 5129 67C7 4AE1 BC5F E268 A282"
	$"4507 1807 914D 5E6E C8AA 7057 BB3C 13C4"
	$"5E24 49F5 7B18 D5C9 CDDC 5FFA 1AD7 43FD"
	$"A5FE D1AF BBCB 30D1 861E 28F9 DCCA BAF6"
	$"D63C 5D54 B2E0 2E39 AB56 7A75 D5ED C2D9"
	$"D8C2 F717 0E70 A91A 9393 5D35 6515 16E4"
	$"ECBA BEC7 0413 6EC9 6A7A DF83 3F67 4D7B"
	$"548D 2FBC 6372 74BB 2C83 E52F FAD7 F6AF"
	$"A3FE 1FFC 37D3 34CB 75D1 BC23 A3F9 298C"
	$"CB2B 70F2 1EC4 935F 019B E672 CD25 EC29"
	$"3FDD A7F7 B3E8 30B4 2383 A6E7 53E2 3DDB"
	$"C1DE 07D2 347B 9B79 22B7 7D4F 5741 B8E0"
	$"6634 CFAE 7AE2 BD2E CBC1 7A86 A07C DD6E"
	$"E328 C777 D9E2 E147 D6BD CC9B 2B75 61EC"
	$"E2AD 0BFB CFBF A791 F339 9E32 A7B4 F695"
	$"3E3D 7957 65D1 BF33 ADD3 741B 5B24 11DB"
	$"4290 C6BC 6D41 C0F7 ACEF 186B 9AC7 86EF"
	$"346B 3D13 468B 516B E966 1344 58AB B2C6"
	$"9BF1 11E9 BC8C E33D 7A77 AFB7 A708 D28A"
	$"A70D 22BA 1F3C EF27 CD2D 5952 5D27 48F1"
	$"C4B0 F8DB C29A DB58 EA50 DB9B 3992 4B75"
	$"949E 73E4 CB0B E0AB 823D 41FA D735 A169"
	$"DA6E B56D 378A 754F 8823 48D7 9213 6B7B"
	$"098A DADC 5BF9 6C48 4789 D72C A092 739E"
	$"6A65 4213 7792 D4D6 3525 0564 CEF3 E1ED"
	$"E5C6 B9E1 9B5D 5B56 B08A 1B86 6917 CC11"
	$"98D6 6456 2165 0A7E E870 01C7 BD6F 6A9A"
	$"A69B A2D8 B6A1 AC6A 3058 DB28 E649 1828"
	$"FA03 DCFB 75AB 8C14 55A2 4B93 96AC E59B"
	$"C45E 2CF1 7EE5 F09D 8FF6 4E98 FC7F 6AEA"
	$"5161 DD7F BD05 B9C1 3ECC F81E D5A9 A0F8"
	$"1F46 D12E 1B51 97CD D475 7901 0DA8 DF3F"
	$"9D3B 7FBB 9184 1E81 4015 7B08 E810 10C4"
	$"21EB D4E0 839F E94E 232A 148F 6193 8CFF"
	$"009F E948 0181 002A F0B8 39EE 4FF9 F5A0"
	$"9390 40CE 7866 23A7 F9E6 801A 0101 4E46"
	$"71CF 18FF 001C FF00 F5A9 DBB6 1059 89EB"
	$"8FEB 401E 7BF1 33E2 9697 E0CB 45B5 8EE8"
	$"7DB6 6197 45E4 A277 FC6B C3AE BE24 DB6A"
	$"7767 55D2 BC42 2D24 B7FD E677 E19B FF00"
	$"AD5F 9BF1 466D 5562 A34F 0CDA 70D5 35DC"
	$"FB2C 9B27 9CB0 DEDE 70E6 8CB4 6BC8 CEB6"
	$"4F1D 7ED4 3E2A B5D2 F526 FB3F 83F4 860D"
	$"71E4 6552 E641 EBEB 5F59 E87A 4D86 85A6"
	$"5B68 9A74 0B05 AD9C 2238 D106 DC01 EDE9"
	$"D6BE B729 AB5B 1B1F AE57 F8A4 97FC 1FEB"
	$"D4F1 F368 53C1 B8E0 A8FC 30FD 7BF9 9A03"
	$"0705 701B 9C0E 808F 5142 ED2A 0C99 DC0D"
	$"7B67 8A04 0395 75CF 24F5 E7F4 FAD2 0DCD"
	$"B502 9C7F 1127 A7A1 A005 C617 0064 E783"
	$"8EFF 00FE BF5A 6C65 8484 8520 7539 E73F"
	$"974A 0071 0A0E 0104 6307 E94D F300 05B8"
	$"E990 1476 FEB4 0D6A 426E 618D 1989 0700"
	$"90B8 E7F2 FF00 2053 66D4 EDE1 8D67 77CA"
	$"3761 C9FF 00EB 7A54 F324 6B1A 3295 ADE8"
	$"365B EB44 48E6 2F90 C46D C0E7 EB8A 7CB7"
	$"1B97 6E7E 53D0 FA71 FA52 6D07 B292 B5C8"
	$"A186 38F7 648C 7400 0CFE 78AF 15FD A03E"
	$"1BE9 1E38 D31A 2B8D 3A29 5A3C 905D 738F"
	$"A1ED 5C38 EA51 A945 C5A3 AB03 55D2 AEA4"
	$"7C05 F127 F67F B6B2 B896 5D12 CD6D AE13"
	$"24A9 1F2B D788 DFE9 DE22 F055 D8D4 34F9"
	$"27B1 BC56 F98C 448C 81FA 62BC 2C26 239F"
	$"FD9E B6AB 6D7A A3EA 2B52 515E DE97 A9E8"
	$"DE06 FDA3 6DEE E48F 47F1 B45B 1BEE 25E2"
	$"F63F ED57 B1C3 7561 AA59 ADDE 9F75 15D4"
	$"0E38 7439 AF0F 32CB 6797 D5E5 4AF0 7B3E"
	$"DE47 A397 63A3 8D87 37DA EA8C DB81 F315"
	$"8C90 075F 7ACA BD08 B19C 2AE6 B862 ED64"
	$"DEA7 A095 F568 E5F5 548E 4E73 C8EB 5873"
	$"232B E570 462B D4A0 9A56 6735 56AE 3146"
	$"4818 C8AB B696 B149 9270 3EB5 7392 4446"
	$"26D5 ADBA 8550 5460 74AD DB14 0A00 07BD"
	$"79F5 55F6 3AE3 EEEE 6EDA 8C10 5B91 E95B"
	$"16DE 5F07 257D AB96 4AC0 D5D1 6D0B 6FC2"
	$"AF14 E935 18AD 109D DD3A E6A3 54D1 2F5D"
	$"0E3B C4DE 328E 3563 1CEA B8EB CD78 DF8B"
	$"BC76 6747 8D26 F504 E6BD 5CBB 0AE7 3B33"
	$"3C55 5546 9DFA 9E6B 06A2 F7BA DD89 2C4E"
	$"2EE1 E4FF 00BE B5E9 9B8F F785 7DDE 1F96"
	$"104A C7C6 62F9 AA54 724C BFE0 0FD9 BBC6"
	$"5E28 45D4 35E8 24D2 749C F575 C48D F4AF"
	$"A3BC 03F0 67C2 FE03 B0F3 AC74 DC49 D4DD"
	$"4CA0 B91F 8D7C 0E73 9B3C 5C9E 0E8A 7ECD"
	$"7C4F B9F4 384C 22C3 4155 9BBC DF4E C74F"
	$"A5E8 136A 7724 694E B312 7264 97FD 5AD7"
	$"A6FC 3DF8 7BAA 5C04 4D5E E63B 96DE 4BAD"
	$"9E44 4573 C024 F35E 765D 96AC 6C94 E5DF"
	$"4B75 35CC F17F 568B 8BF8 ADF7 1EC9 7B7F"
	$"E0AF 873A 6DBD EF89 F54B 1D26 291B CA80"
	$"3B7E F257 ECB1 A005 E46E 9C28 35AD E0EF"
	$"1DF8 27C7 31DC 3F85 3C41 6F7F 2593 04BA"
	$"830D 1CD6 EC79 0258 9C07 4F6C 8AFD 4F0D"
	$"45D1 A765 A1F9 ED49 BAB3 7293 BDCE 982F"
	$"00E4 2E33 F5AC 0F16 E83A BEA8 FA6E A5A0"
	$"DC59 A6A3 A55D 99E2 4BB0 C636 0C85 1831"
	$"5F9B A1CF 1D71 EF5D 2958 839D BAF8 5578"
	$"6FA2 F162 EBD1 DE78 992E 12E1 A49E DC25"
	$"9BE0 6021 8546 4607 47E5 81EF 5D9D FE9D"
	$"A0F1 AAEB 3A76 9A65 8406 7B9B 8863 3E58"
	$"F676 1900 1F71 54D8 1CFC 9E35 D53C 4727"
	$"D8FE 1FE9 9F6A 8978 7D5E F034 7691 F626"
	$"31F7 A6FC 38F7 AB5A 5780 2C22 BE4D 73C4"
	$"77B3 6BDA A29C ADC5 D8C4 509F FA63 0FDC"
	$"8C7A 753E F46C 23A8 3800 8C80 A067 DB14"
	$"9E6F C980 4EEC F191 D39F F3C5 2188 4824"
	$"E1C6 18F5 27DB DAA4 EAA0 9E9E FF00 CE80"
	$"1814 3AF5 DA18 9F5E 7B52 BAEE C231 209E"
	$"3AFF 002A 004E 228C 86CE 01EB E95E 69F1"
	$"2FE2 7FFC 22F6 32FF 0066 B09A EB69 5046"
	$"303D 2BCE CCF1 7F54 C3B9 2DCF 5329 C0FF"
	$"0068 6263 49ED D4F8 C3C7 5F13 B52D 46EA"
	$"F2E5 AE44 B320 6334 B21F BB9F E115 E73F"
	$"0CF4 DD57 E33F C48B 1F07 E997 A6DA 0B99"
	$"02DD DD96 C246 9DC0 F524 6702 BF36 C352"
	$"FAE6 21B9 F57B F9DF 43F6 AAEA 9655 8072"
	$"82D9 7C3E 87E9 FF00 813C 21A1 F807 C396"
	$"BE19 D0AD CC50 5B28 1B8E 3CC9 48FB CCFE"
	$"A4D7 47C0 C28D C01F D315 FAA5 0A51 A14E"
	$"34E3 B256 3F07 C4D5 9D7A B2AB 3DDB 6C30"
	$"1C00 0FD7 3CFE B499 CF0D 9E47 18AD 8C44"
	$"DECA 1999 0A93 C75C FE34 A763 AA98 CE0F"
	$"6C8C FE74 5C05 3924 9DD8 EC3D C7F4 E690"
	$"48C0 6320 3138 000C 76EF 46C0 56B8 BB8E"
	$"D100 0199 9CED 2002 D83F 9FE9 F957 2BE2"
	$"1F19 5BE8 D343 673B 7997 D704 C76D B232"
	$"D146 FD00 72BC E49F E11C FAE2 B1AB 5141"
	$"5D9E 9E5D 8296 2AA2 8C77 777F 25BF CFB1"
	$"E71A DFC5 24D2 F5CB 6F0D 5DCD E6F8 AEFA"
	$"322C E444 796D 0127 0A1C A7DE 27E6 FF00"
	$"57B9 571F 3E39 AA2B F126 E975 D5F0 E895"
	$"0F8D A587 EF0D D259 39C1 2543 8F94 C814"
	$"679C C43F BF90 4579 72C5 3BDB CEDF F6F7"
	$"F97F 5B34 7E83 4387 57B2 536B 4707 3E9F"
	$"C14F 5F49 DD5E DBDB FBCA 4968 D878 EEE2"
	$"5D5A 6D1B 4374 3E2B 2A64 BB8E 424D BBED"
	$"E5CC 4CD8 5720 0196 6214 67E4 27AD 75FE"
	$"1DF1 0ACF A84D A769 AFBB 555F 9AEE 17DF"
	$"E576 DC63 2E06 464E 371C 1F4E 393B D2AD"
	$"CCFE 76F9 F5F9 7F5D CF2B 32CA D518 3E65"
	$"AF2A 93DB F87A 723F F177 5D35 E8A3 7EE6"
	$"D268 A72D 1212 2455 CB2F 381E B8CF BFAF"
	$"B566 EB5A 525D C0CB 22E7 70C6 2BAE A2E6"
	$"89F1 3AC2 A599 E0BF 127E 18C7 A8AB 98A2"
	$"21B9 E40E 735F 3878 BBE0 DF9E EF15 E588"
	$"74E4 12CB 5F35 8BC3 7BFC D1D1 A3E9 7038"
	$"A4A3 CB2D 51E3 5E2A FD99 A5F2 DEF7 428C"
	$"EFC9 3B31 CFE1 5CF6 91A6 78CF E1DB B3E9"
	$"B752 C4AB FEB2 DA6C ED6F 5ADE 5885 8EC3"
	$"7B1C 46FB 3FD0 71C3 FD57 11ED 683B 7F5A"
	$"A3B9 D03E 2668 FE25 22D3 5353 A6DF A8FB"
	$"8FC2 39F6 35A1 7AAE 8C58 9196 1C32 1C82"
	$"2BE6 3118 2786 AAE9 D4D7 6B3E E7D0 E1F1"
	$"31C4 53BC 77FC BC8C 1BAB 7054 EF2C 4F5C"
	$"D645 C5B9 571B 7383 C56B 4E7E F173 5CDA"
	$"9179 0572 ABC8 1572 D17C B500 A935 ACDA"
	$"B589 826B 5372 DDE3 C2A6 715A 9049 0C60"
	$"1072 6BCF 9DE4 EE8E 8BDC D6B6 9839 5C0C"
	$"7E35 AF15 DC70 A02D B41F AD62 D0CA 979E"
	$"2558 B387 5E07 635C 5F88 7C68 5158 2DC0"
	$"5FC6 B4A1 49CE 5648 1F2C 1733 3C9F C4DE"
	$"2F69 CBA4 7264 F393 9AE0 6EEE E498 966C"
	$"9E4D 7D96 070A A9C2 EF73 E733 0C4B AB2D"
	$"3622 D2D9 FF00 B62C 00C6 0DD4 3FFA 1AD7"
	$"AB65 ABD9 A697 29E1 5693 E63E F93F 11BC"
	$"3BA6 F97A 659F 87AE 7537 270A 9046 1A30"
	$"7D49 F4A9 A5F0 DEBF E37B D86E 2FEC 5EC6"
	$"251F 25B4 43E5 20F4 26BF 3784 638D A71A"
	$"5495 92DD FF00 5DCF AE96 1679 54FE B189"
	$"9A72 6B48 F6F3 67A9 F827 E09D A844 9F51"
	$"42A1 7911 8E01 FAD3 B4FF 001D 78C3 54D4"
	$"753D 2FE1 37C3 282F F4FD 06EA 4B1B 8D47"
	$"57BD 3A6C 5717 09C4 915B 26C2 ED83 C6F6"
	$"C2E7 D2BE DB29 CB56 1E9A 9496 A7C5 6639"
	$"84F1 736B A191 68BA BFC6 0F13 D8FC 4EF0"
	$"3CD6 FE1E F1AF 820D C683 AB78 7F5F 80DC"
	$"C313 3FCC 4078 C82A 48E5 655C 861D 4715"
	$"8DF0 FE1F 889F 1475 4B9F 8D5A 578E FC1D"
	$"A06B F0DA 5C68 37BA 77F6 3492 F902 29F7"
	$"6DBB 2D3A B6EC A021 88F9 55B1 D735 EF25"
	$"6479 67AC FC13 F88D A87C 50F0 6BEB 9ABD"
	$"85AD BDED 8EA1 73A5 DCB5 9CC6 4B5B 8780"
	$"8066 B763 C98D B3EB D548 ED5D EEF4 5DFB"
	$"9546 C192 73C0 FC69 3B21 9C9D E78F 96EE"
	$"E64D 1FC1 7A63 EBB7 8AC5 2499 1F65 95B9"
	$"C73E 64F8 C1C7 F757 27F1 A65B F806 7D5E"
	$"E23D 4BC7 5A91 D666 53BA 3B24 5F2E C20F"
	$"F762 CFCE 7A7C CF9F A500 75F0 A2C4 A214"
	$"458E 251B 5463 0178 E9ED F4A7 6324 8618"
	$"C8C1 3EBF 8F6A 4009 BF66 49C3 1040 18ED"
	$"48A8 02ED 527D 3041 279F E740 0ED9 8C0C"
	$"E48C E3FF 00AF FA52 1C29 5018 7CBC 9E39"
	$"F7FE 9400 800C 0524 02A3 D783 460E DCB7"
	$"43D8 0C1E 6802 BDDC 8228 198C 2D21 C1CC"
	$"6A39 23A7 03B7 6FFE BD7C CFFB 40F8 3750"
	$"D46C A6D5 3C3B 768B 3441 5E7B 2DC7 CC8D"
	$"4E71 903D C1C6 704E 7A57 8F9C D1F6 D877"
	$"6DD1 F53C 2D55 D0C5 A9EE 9E8F CBCF D3A1"
	$"F09F 8CE6 D76E 9A6D 3892 AAB2 32B8 43B8"
	$"EEF7 229D F0EE FF00 C4DE 1978 DB46 B692"
	$"3566 DCD2 01CE 477D C3D0 D7C2 4E30 A541"
	$"C23A 3DDF AA3F 7786 5B52 AD29 56C4 4797"
	$"9935 1F24 B5F7 9747 2DA2 BD5F 43EB AF86"
	$"9F19 7C58 CB00 D4C4 CD20 017C EDCC 49AF"
	$"A97C 1DAF DDEB 3629 3DCA 3AEE 00FC FDEB"
	$"DAE1 DCC2 A569 7B37 7B1F 8A71 4659 4709"
	$"51CA 9E9E 4757 9247 AF5C 8DBD 071C 5076"
	$"F1B9 C8EF C9C6 39EF 5F70 7C50 E186 63C8"
	$"240E B8E8 69B9 E1BE 63C8 C927 8C7F 8530"
	$"01B8 F247 5EF9 E303 FF00 AF4C 90B6 0EDD"
	$"B919 E58E 07BF 5A43 56BE A715 E24D 6EF9"
	$"A191 7C3B 2C31 796F B6E9 EE72 9952 40F9"
	$"09F7 FF00 81FF 0076 BE73 D53C 7BA9 6B91"
	$"DE5B 7C28 9633 A359 CB22 788C EA86 6B79"
	$"9622 0863 1360 BC6B 8DF8 017C F63D 88C8"
	$"AF1F 1D5A 49A5 1DDE DFAD FF00 43F5 2E11"
	$"CB29 5484 EA62 53F6 51B7 B4B5 9BE6 7FC2"
	$"E54F 75CD 6E65 B747 A347 01A0 EAAB A968"
	$"B73A 77C2 C95A EFC0 103C C9E2 49F5 7334"
	$"17B6 DBC3 6EF2 9537 6C52 8A4A ADBE 6490"
	$"8026 0071 5D4F 82ED ADB5 5F0D 2E97 E11B"
	$"99AF 3E1D C48F 6FA8 EA77 B332 6A56 EDB9"
	$"58C7 95C8 5C12 9B6D D018 9BAB 9EAC 3C8A"
	$"2D4D AE5D AD65 FE0E ADF9 AFEB 448F D273"
	$"484B 0D09 FD61 2538 CD4A AD92 6962 1DFD"
	$"9462 FAD3 926B 9B6B B69B B4A5 56DE 89A4"
	$"F876 6BFD 1534 7B59 647F 0808 C47F DB06"
	$"43F6 C322 9E16 4E0A C872 7887 FD5A 8E72"
	$"0F27 D0BC 3FA3 DC9B 65B2 0AE3 4689 57CA"
	$"BFF3 499E 52BC 0DF9 FF00 587A F1C0 5EC6"
	$"BD8A 14DE FF00 D5BB FAFF 005D 4FCC 339C"
	$"645C 6517 BA93 93D3 FE5E BB5E 1FE0 56D3"
	$"AAD3 F94F 45D3 14A4 6115 4491 2800 4ACD"
	$"9660 3B93 DCD5 C9A2 0DCE D046 39C9 AF52"
	$"D747 E715 5FEF 198B A968 51DD 2925 01FA"
	$"8AE3 357F 8796 9745 98C0 A7F0 AF3E BD0B"
	$"EA75 50C4 3868 717A B7C2 C806 F31C 38FC"
	$"2BCC 3C5D F08E CEFA 2961 BDD3 C3A9 C82C"
	$"A9CE 2BC4 C461 DC1B 9C74 67B9 85C5 DED1"
	$"7B1F 397C 48FD 9B35 5D3A DE4D 6340 905C"
	$"DA86 CED1 C491 9FC3 B570 3E1F BDF1 7682"
	$"1ACF 50B4 6B9B 75E3 63E7 728F 514A 73A7"
	$"8FA3 69E9 28FF 005F 89DD 45D4 C355 E686"
	$"B167 510D C58E A909 5B47 01D3 978D BEF8"
	$"FC2A 85CD B1DE 57CB E00E FD6B C774 DD29"
	$"59EE 7B1E D14A 3CCB 67F8 1512 DCC3 F2C8"
	$"BC1A 6CB7 696E 3800 7BD1 AB95 8B56 B599"
	$"9775 E22F 29B7 6FE9 D2AB C7E3 12AF 969F"
	$"033D 2B58 611C 96C6 4EB4 62EC 6F59 78DE"
	$"13FE B24C 71C7 3535 CF8E E20B 8597 3F8D"
	$"62F0 7372 B1AA AD16 AE72 7AD7 8E98 03B6"
	$"5233 9E86 B84D 4FC5 33DD B312 EC7F 1AF6"
	$"7058 2F67 AB47 998D C5DD 72C5 986F 70D2"
	$"B33B 7D7A D549 AE36 0CE0 1F4A F721 068F"
	$"1272 B219 A64A 5B5B D3CE 7FE5 EA1E 3FED"
	$"A2D7 ACEF 3EB5 D918 B48F 32B4 FDE3 F55F"
	$"C01F 09B4 AB58 9253 6E03 F563 8E4D 7AAD"
	$"8F86 34DB 55CA 4201 5EF8 ED5E 2E51 9653"
	$"A749 4DAD C798 6615 B135 5CA4 EE79 46A3"
	$"ADFC 73F0 1F89 759F 1E6A DA2C 1AB7 81A6"
	$"B911 B685 6737 DA75 0D3E D510 2FDB 21C2"
	$"A870 C417 6879 3839 0720 D7AC F853 C4DA"
	$"178D 743B 4F13 F85F 54B7 BFD3 AF54 BC72"
	$"C041 04F7 0C3F 8581 EAA7 907A D7D1 DB4B"
	$"23CA 3E7F F0BF 8CFC 41E1 DF8B 7F15 ECFC"
	$"31F0 FB58 D735 ED63 5BB7 FB3C 2C9F 63B3"
	$"8A08 ED91 167B 8BA7 1844 662D 8501 9980"
	$"C806 BD22 CBE0 A786 FC51 147A F7C5 6F07"
	$"785A FF00 C4F7 458D ECFA 5C32 C10C AB9F"
	$"9124 CB66 6DA3 825F 20E3 3803 8A6D D848"
	$"DEB8 F157 873C 3823 F09F 8534 85D4 2EED"
	$"5045 0E95 A4C6 AB1D B01D 37B0 C470 81EF"
	$"CFB5 46BE 0ED6 BC50 C2E3 C7BA A016 CE77"
	$"2E8F 60E6 3831 D409 64E1 E63E DC2F B521"
	$"9D6D AD85 9E9F 6D1D 8E9F 6B15 AC11 2E23"
	$"8E34 D88A 38E8 071D 854A 0636 B646 E3F2"
	$"8EDD C75A 5B80 9123 6583 619B 241E DD3D"
	$"683B 8E5B 96EC 57D3 F2A4 03BA 8C82 72A3"
	$"3C73 FE7F 9D07 7363 6FCC A79C FAF1 DFD2"
	$"9808 3047 CBC7 6183 CD28 C648 3900 E7F0"
	$"FF00 3CD0 018C 9258 753D 8E41 FF00 3C52"
	$"156D A760 E7A6 73D7 FF00 AD40 15AE FE55"
	$"648E 5114 A178 623A E7A5 78AF C45B 6BB2"
	$"D35E F86E F97C 3BA8 24C4 DC49 2283 36A0"
	$"A002 D1C3 961F 39EB B548 DD95 DCCA 335C"
	$"58C4 F934 D1F7 EC7D 4F0C 4A2B 12BD A479"
	$"A1B4 A3FC CBFC A3BB F2F2 6CF9 7750 F0C6"
	$"8FAA F9DA E787 B476 F0BD 9879 E6BC D02E"
	$"ED16 5BED 5446 70DF 6642 4617 7311 B308"
	$"91B6 E00C 840A DEF0 0F80 74BB 8B58 F5BB"
	$"4B21 A7E8 D35B 89EE 3C39 2FCF A864 9DAB"
	$"21DD F379 6C46 5656 1C81 B42F 427E 3658"
	$"1856 9E8A C9EB 6EDE 5EBD 7D0F DEF3 1C7D"
	$"5A78 2946 A4F9 E57E 5949 3F8E 7AF2 D6F2"
	$"A70B 28BE F2D2 F74A 52FA 6BE1 F7C2 6F0C"
	$"DA45 16A1 6964 A919 8D5C 5ACA 9FBC 889E"
	$"7E61 D41F AF5C 8E95 EA30 5BDA 58AA A431"
	$"00AA 324F 0000 3F95 7D4E 5D97 D3C2 535C"
	$"A8FE 75CD F195 B198 A93A 8EEF F3F3 5E4F"
	$"A15D F59B 4F33 2B20 09E5 9737 1C79 6ABE"
	$"BBBD 3AFC DD33 5622 D46D DE43 13C8 00EA"
	$"2424 046C F4FC EBD2 5347 04B0 D38A D57F"
	$"5DBD 4B99 5DB8 DC07 4C1E 9919 A687 5CB3"
	$"6D21 47B7 5F5C 559C B6EA 3F04 81F2 AE0A"
	$"E319 E3FC F355 3507 B78A 026E 1D95 770C"
	$"0033 BBB6 3343 DB52 A9A7 2925 1DCF 0AF8"
	$"C97F A647 6913 FC43 BF9E C6C8 DC86 D34E"
	$"9C4B 492B 71F7 94FC A542 725D F0CB FC19"
	$"E95E 05E3 7B99 6F2E 6C75 1F8D 3A90 F0DD"
	$"BC37 A2E7 C377 1A1D C4A1 AF46 D52A F2B1"
	$"1B95 0A84 06E6 6065 E582 A900 81F3 58F9"
	$"2729 293B 2D39 BCBF 96DF AFFC 39FB CF06"
	$"5294 70F4 A787 8734 FDE5 422D 2B4D B5FB"
	$"D53F 4577 1EF6 6B75 06E7 1657 37FA A695"
	$"A9FC 5994 7846 FECA E1A7 D0ED B47B 9686"
	$"0BD8 5B91 24CA BB8C 08ED B41B A04C 9302"
	$"72BD 1ABD D7C2 3E17 BFBE 9ACF 58F1 65AA"
	$"F87A 7B36 74B5 B1D3 E511 4171 11E7 955F"
	$"F52A C4F3 9C99 3A9C 669E 0E9B 949F 368F"
	$"ED79 764B D7AF FC02 789F 194F 0F42 1EC3"
	$"DEA6 94A3 49B5 AD44 EFCF 29F7 941B 6A2D"
	$"EE9B 7FF2 F1DB D5F4 ED05 1D61 66B4 FB24"
	$"6B1F 942C E201 2229 9E06 3A05 3E9D EB6E"
	$"1D2E 18D8 305D 9105 DBE5 0185 C7A0 F6F6"
	$"AF7E 10B1 F8BE 2716 E726 AF75 DFBB FE67"
	$"E65B 48D4 20D8 D819 C10A 3EEF E552 32F0"
	$"0719 3D72 4FAF 2315 AD8F 39BB B1AC 8BD5"
	$"8801 4F15 1982 22A5 7DB0 322A 5C53 DC69"
	$"D8A7 71A6 C12A 8DC0 65B8 1E99 FA57 3FAA"
	$"F852 DAE5 0911 75E3 915C 35E8 2923 A695"
	$"6716 70DA A780 044E CD1C 236B 6772 E321"
	$"87BD 701E 2EF8 0FA0 788A C64D 9A7A DB4C"
	$"7959 635E 41F7 AF9E C461 5D39 FB44 7BF8"
	$"6C7B 8AB5 CF99 3E22 FC11 F10F 8466 3771"
	$"C042 A1CA DCC4 383E 9BAB 813A DC96 D709"
	$"61AF 5B00 EFC2 DC27 DDFC 68C4 5158 8A2A"
	$"71F8 92FC 3B1E 8613 13EC A6D4 BE16 1A80"
	$"8C47 E640 E1D3 D473 5C46 B7A8 98F3 B588"
	$"0335 E761 D29C F53D 7AD2 E48D CE27 51D5"
	$"6E19 8E1B 8AC9 3737 0E4B BBB7 278A FA4A"
	$"54D2 4785 56AB 72BA 265D 4EE2 2C0F 318F"
	$"E3D2 94EB B741 48DC 7F3A 6E84 65A8 BEB0"
	$"D2B1 46E2 FA79 C659 8D56 0598 7D6B AE9C"
	$"6CAC 7254 9396 A309 032A 5B39 AA73 3865"
	$"2AB9 0456 B139 6AC8 6690 EBFD B7A7 027A"
	$"5D43 FF00 A1AD 7AF6 E4AE B4B4 3CFA A9B9"
	$"687E D9E8 D68D 6902 E23E A2B5 C055 0485"
	$"1B71 8046 6B2C 3479 6091 C727 7771 7382"
	$"A146 00ED 5E2D A7FE CF17 3378 E35D F11E"
	$"A3E2 79F4 6D17 58B9 59DB 41F0 D4D3 D841"
	$"74CB 8226 BA7D D912 13F7 845B 0360 649E"
	$"4574 A762 6C7A 56BB E34D 0BC3 2D1E 9F33"
	$"CD75 7F20 C41A 7DB2 F9D7 121E DF28 FBA3"
	$"FDA6 C0EB CD63 B68F E30F 1828 3E24 BB6D"
	$"0B4B CFFC 83AC 26FF 0049 9477 F3A7 1F77"
	$"8E76 A63E B401 D368 DA0E 9BA0 5A7F 67E8"
	$"9A7D BD9D BAF3 B624 C64F A93D 5893 9E4E"
	$"4D5F 395D BF2A E31C 9CF7 E290 0A54 280E"
	$"BD39 241E 99EC 28DC 33B8 F24F 3E99 FCFA"
	$"51B0 0898 3821 8807 18EE 719F CE90 7CF8"
	$"C32E 49E4 0FA5 201D F7B1 CE43 7A1C 8EF9"
	$"FA50 AC31 F286 0B8E 493C E78A 6023 2E63"
	$"05D3 EB93 4BB8 71B7 AE3B 1EDF 5A00 6F39"
	$"CE4E D20E 71C1 E94A AC08 201E 0718 27A5"
	$"2021 B981 658C ABAF CD8F 958F 014E 7D2B"
	$"C67E 24E9 E350 9E2B 0BCB 7336 AEB1 B496"
	$"1AB4 B087 B6B5 033C BA92 0320 3C95 6F94"
	$"639C E40A E5C5 ABC2 DFD7 93F9 1F4B C355"
	$"1D3C 5292 766A EF7B 696F 7A2B CE4B 45DB"
	$"7E87 CDDA B417 975E 297B 1BF9 A36F 883A"
	$"7D90 B983 C6D7 3091 A75B C679 4C48 4847"
	$"C290 A970 CA31 9DAA 8594 13D1 FC3E D4CD"
	$"CF8A 7518 6D64 6B5F 1DE9 6638 B51F 13DF"
	$"C460 B4BC 77C0 6F2B 79C2 C920 DA43 11BE"
	$"741E 6205 F989 F9BA 6DAA 8AFB DFFF 0027"
	$"5F6F D3B7 DFDC FDD7 1D08 D4C0 C9C5 7BAA"
	$"9A76 4F5F ABC9 AB61 D2FE 74E4 9CBA A4D4"
	$"6FEF 459F 4878 5FC5 1692 DB5C DF08 6E2D"
	$"AE6D 58AD D4AF 6E54 4EC0 7CDE 5A64 F390"
	$"58A7 5030 49F4 C4F1 9FC4 B4B6 D1A6 F12D"
	$"F178 FC3F 0C2D F68D 3921 F32E E6C7 52AA"
	$"A72E 338F 9810 8832 49E0 E3DD 9621 4697"
	$"96EF F5FB CFC7 B0D9 3CAB E3D4 5D9B BA8C"
	$"75D3 99FC 2DBE D1FB 4FD5 F467 98EA BF17"
	$"5F4A D0D3 C5DA A798 7C01 7291 FD9F 4E86"
	$"1637 ED33 1600 927E 50F9 47C4 AE44 2EA3"
	$"0A0B 7035 07C6 387C 3DA6 DAEB 1E2B B959"
	$"3C25 A8AC 6746 82CE 27FB 4C4A 7187 9430"
	$"DC8A 0125 8C9F 3138 F2C1 522B CF58 DE57"
	$"796C 95FF 00ED D7B2 F5EF FF00 0E7D B54E"
	$"1775 A118 515E F4A4 E11D 57F1 E36E 793F"
	$"EE35 7E5F F370 BF7D 0FC5 58BC 3CD6 F078"
	$"C2E2 3787 5071 FD9D E442 FBA3 8C80 54C8"
	$"0FDD 5C15 E09D E73D 31CD 76B6 FE2B 582E"
	$"A1B0 D5E7 8BCE 9891 1322 12A3 3D33 E9CF"
	$"18EA 3BD7 A94B 117D 25BA DFE7 B1F9 FE63"
	$"923A 76A9 493E 59DD C755 F67E 3BFC F6EF"
	$"BEC7 4B0D DB27 EE65 DA24 6CED 3BB2 0FA6"
	$"7150 6AFF 006D 8AC9 9AC6 DD2E 247C 6E57"
	$"F986 3E9F C5FA 575B 6F97 4DCF 9884 62AA"
	$"C799 DA2F A9F3 E78E AEEE EDE6 BE1E 08B2"
	$"8FC5 7A8C F3A9 BDD3 AF1B ED29 1053 9DF1"
	$"A1E2 E590 8C6E C8F2 8738 38C8 F108 EE92"
	$"C353 D4A6 F87A D2FC 47D5 EE6F 565D 534B"
	$"BEBC 4BB5 D2E5 1CB4 B6CE E36D CBA3 640B"
	$"8384 8C28 F95F 961F 358B 769A 71D7 7E55"
	$"FCCF AA7E 9D3F FB63 F7BE 19A4 9E16 4AB3"
	$"F669 A5ED 656F E045 72F2 4E36 D9D4 B5A5"
	$"6D6C 9FFC FAD7 AAF8 736B 6363 7B34 5E18"
	$"D4DF E22D DC9A 8FDA 2E6D 2F26 13B6 9331"
	$"FBD2 401C 92EE 4921 AE90 98BE 5E57 A1AF"
	$"A4FC 19A7 45A7 C7B8 6A0F AC4A D317 DB2B"
	$"87FB 313D 42B1 E49C E4EF FBA7 0081 DEBB"
	$"32E8 AB2B 3BA5 D7F9 BFE1 8F98 E36A D373"
	$"97B4 87B3 9CB7 8256 5497 46BB 7B45 ABB7"
	$"56FA A3BF 8630 B905 8B30 25B0 48E2 A5C8"
	$"E490 1723 F0FC FF00 2AF7 11F9 2C9D D898"
	$"C019 380A 7A9F 5C53 F7E1 402B B411 939E"
	$"C282 4691 B532 7693 CE3D CFAE 3D69 000C"
	$"0160 721B EB91 EF48 031B 98EE E723 8191"
	$"C535 9159 B951 804F 5EB9 FE94 9C6E 34CA"
	$"B3D8 2BA9 6310 C0EB C566 5D68 B1ED 6540"
	$"3273 C63A 9AE4 AD41 4958 DE15 2C70 DE28"
	$"F0DC 535B 4F0D C594 73C3 2021 9186 41FF"
	$"000A F8CB E34F C168 ACDA 7BEF 0E0D B148"
	$"4996 D9F9 DBFE E9AF 165F EC95 755E EBDC"
	$"F770 EDE2 2165 B9F3 76A3 FDA9 A148 6132"
	$"3EC4 C80A D5CD EB1A 87DA D080 8771 EB58"
	$"FB0A 7297 3D3E A7B4 EA4E 9C3D 9CF5 39F9"
	$"A171 80C3 F3A8 2489 82E5 7F86 BD1D 923C"
	$"FEE5 4958 8DA4 7073 CE2A 267C F18A D134"
	$"9EA6 52B1 0B1C 704E 33C5 31E4 DA08 56E9"
	$"C56F 1D4C 64EC 8AD2 487A 83C8 AA97 1370"
	$"36B6 33D6 B7A4 8E2A B21D A332 FF00 6C69"
	$"FCF3 F6B8 79FF 0081 AD7A F6E1 EB5D 891C"
	$"6E48 FDCD 4551 1E0A E31F 8FF2 A50A C40E"
	$"0951 8C31 EE31 DFFF 00AF 5095 8E43 275F"
	$"F156 85E1 7B65 9759 D416 1694 ED8A 151E"
	$"64B3 B7A2 228D CC7E 82B0 F778 E3C6 4308"
	$"24F0 AE90 DC02 42BE A132 FB0E 5601 F5CB"
	$"0FE5 4B40 3734 2F0B 681E 1989 E2D2 AC7C"
	$"B964 6CCD 7323 1927 98F7 3248 DF33 1FA9"
	$"AD70 B8CF DDE4 7200 03BD 2DC0 2321 78E3"
	$"0AA4 E3D3 FCF3 48DB 5485 2FD7 24E4 F183"
	$"400D 2AA8 FD76 B7A8 EE3B E6A4 2095 3919"
	$"1D72 7F0A 0060 DC36 951C 9ED9 DDFC FF00"
	$"0A31 9C12 319E 8381 D3DB FCF4 A402 B946"
	$"0503 0EE7 A64E 47B7 AF4A 33CE CCEE 23A8"
	$"CE3D 3B53 00EA 43E5 BD06 3B7B 9A41 C64A"
	$"9CAE DEC3 1EF9 3400 E196 041E ACDD 3228"
	$"0A58 7DDE 0F7F 4E28 DC06 C910 9612 3865"
	$"39CE 4751 5E7B F11B 49B4 3A1D D58F 8860"
	$"33E8 572A A8D0 C03F 7BBB B316 E8B8 2A0E"
	$"4F03 03A9 AC31 114E 9BBE DD7D 0F5B 25AB"
	$"3A78 BA7E CDDA 574E 3D94 93D1 BF23 E62F"
	$"8A5A 658E 8362 BA27 C4C4 79FC 0B73 3C63"
	$"45B2 D2D2 44BA 8DC9 0C5E 47C9 F2DB E6F9"
	$"CC9B 8B33 0F29 4062 473F 751D BE9F 71A5"
	$"F847 E334 8B2D 8FDA 957C 216B A3A4 C86D"
	$"E138 D893 9196 442D B014 2C6E 15CB 8385"
	$"391F 2D59 28D4 6A7B 2B29 7A7D 94BF 5FF3"
	$"B9FD 0F96 D5A9 5F07 4A78 3F8A 5CD3 A377"
	$"1B2A A925 8894 FC9A BA82 7A5D B6BD D71B"
	$"7B96 95AC 6B56 AF6B A1F8 B7EC 4FE2 45CA"
	$"6911 DAEE 106C 0711 AC8C 871D 54ED 0092"
	$"3189 48ED C1F8 C756 9AEF C593 C9E1 C0B7"
	$"DF14 6DED F60B 19DD C589 2BC9 0148 08F2"
	$"2A80 7CAC 8854 F527 A0ED AD39 7B34 9FC5"
	$"7FFC 9BA7 CBFA EC7C 9E55 85A4 B173 9D2B"
	$"AA2E 2DB6 EDCC B0ED FBF2 EFCF 7D57 54AC"
	$"ED7E 6479 D5BD C5DC 9E2D D475 8F02 DBC7"
	$"AFFC 4F58 961D 7345 BA99 A5D3 6244 204E"
	$"618D F6AC E136 A6F8 D8F9 509F 9A20 C00D"
	$"B6F4 3BA7 D3F5 3D53 5BF8 4F2A F8BB 58BE"
	$"BB59 7C43 05ED E19A DF4D 5006 E9A1 7954"
	$"0900 3B80 BC3F 7428 5553 D4F9 B16E E9C3"
	$"5776 D79C BED2 F45D 3FE0 B3EF 2BD3 8B83"
	$"8627 DD83 8463 51A8 AFDD D15C AE84 D5BE"
	$"DD46 B967 6D6E 9ADA 9C6F 7BC3 DAD3 6811"
	$"DDDC FC2E BD7F 1668 B777 124D E20D 4751"
	$"BF31 7F64 8C1D D2C6 EFCC 407C CDF6 A6CB"
	$"3F1B 40CE 4F51 E0FF 001F FF00 C23F 6B1C"
	$"1E08 BB3E 22F0 53BC B26A 7AF5 D5C9 B76D"
	$"373C 1237 0CDA 8C1C 863B 9A62 7800 9D95"
	$"D146 B7B3 6B91 DD2D B5DE 3F69 BF4F F83D"
	$"0F17 33CB 3EBB 1A9F 598F 24A4 D7B5 4A3A"
	$"53AB 14D5 2A71 B6FE D559 B4AF 76ED B548"
	$"DBD6 FC1B F126 C56C A09B 45BF 5D53 C29B"
	$"0B4D ABC9 2F96 D6F9 E36B 2F58 8F4C 4672"
	$"CD9E 3AE0 77EF E28D 3EF7 4AFB 5C7A D247"
	$"A4EC 0CB7 E1F0 3E98 1CF5 FE11 CFF4 F728"
	$"5752 85AF A747 E5DC FC8F 36C9 EAD0 C4F3"
	$"3A7E F735 A51B 6D52 FF00 07DD ADF6 7A3D"
	$"99E3 3F13 E5FE DCB7 D462 8F54 FF00 8426"
	$"089A 391F 5D72 163B E5C8 D8B3 3261 B0C4"
	$"0651 0927 23E7 0472 3C73 5082 F75B D4B5"
	$"5D37 4F66 F873 7769 756E 6EFC 5B72 218E"
	$"3D6F 276C 5E7C 917C 8E64 E5D2 2889 57FF"
	$"0096 A588 2478 F8CB CA7A 3B5F FF00 25DF"
	$"DEF9 EBF8 FF00 74FD 3B86 7968 6157 3C7D"
	$"A285 9B5A DF11 7E4F DCF9 BA6F 95A5 E50F"
	$"FA7A 7A2F C3DB 7FB6 6A5A 8E93 A068 D378"
	$"36F2 D2E6 3FB7 EB13 C2B0 A5FB 7CB8 12ED"
	$"FF00 54EC 72EB 0445 A320 F38C 6EAF A4FC"
	$"396D 0C5E 6456 D6AD 15C2 EDF3 AE76 2833"
	$"1F5E 3819 E4ED 1C73 DEBD 3CBD 697B 5974"
	$"5DBB BF99 F05C 6936 AA72 39A9 CAC9 CA69"
	$"B6A4 9A8B 8C7F EDC5 65E6 ACDE AE49 748A"
	$"C496 5CE3 8E02 F53C F5A7 146E C181 E9EB"
	$"F8D7 AA7E 7028 5215 4050 083F 3027 3D7A"
	$"D26D 3B83 3293 CF23 1D3F C698 853B 777C"
	$"CBD7 F1A1 DC6D 0CA0 6738 27D3 DC8A 0068"
	$"0039 2106 EF5C F7EF DE92 35C9 3BD8 EDE0"
	$"A807 A7E3 9A00 0E31 D402 1B3C FE94 8C18"
	$"E464 9233 9E70 3EB5 2D0D 1CEF 8822 8DE0"
	$"6E30 48FF 00EB D7CD 3F16 CC30 C733 0C6F"
	$"19AF 131F 479D 687B 7965 4E59 58F8 C7E2"
	$"1C50 DC5D C8F2 A283 93D3 8AF2 EBD8 94B1"
	$"000C 03C6 0D71 6163 CACF A3C4 C972 2B14"
	$"A489 08F9 874A CEB9 0ABC 8E9D C0AF 420A"
	$"EAE7 9729 5B53 26E1 901C AF1E D54C C85B"
	$"A1C6 2B74 9754 62D8 D90E D50C C776 7A7B"
	$"540F 2220 0D9C 9EE2 AE26 5396 8549 6424"
	$"165E 3DAA A3B6 4E4F 4F4A EAA6 8E1A 8C9F"
	$"47FF 0090 D69F 83C7 DAE1 FF00 D0D6 BD82"
	$"BA91 C8D9 FB8F AB6B 7A46 8168 FA8E B3A8"
	$"4165 6C83 0CF2 B051 93D8 7F78 FB0E 79AE"
	$"58EB BE2F F18E 23F0 A5A9 D174 C932 3FB5"
	$"3508 7F7D 22FA C101 E83D 19F0 3DBB 5418"
	$"1A9A 0F82 746D 0AE4 DF6D 9B50 D4E4 5C4D"
	$"A85E B79D 3B7D 09E1 071D 1703 A574 030C"
	$"B86E 48E0 D201 0648 C29D DB7F 1A53 F2E3"
	$"820F 419C F1F5 3480 43BB A018 2BC7 039F"
	$"AFBF D3DA 94A0 2C46 7DB6 E698 0C21 CC9C"
	$"703A 1603 A9FE 5E9C D3B7 64F0 D9EC 483C"
	$"5002 9F99 465B 0063 F134 A00D C463 DB81"
	$"D051 B80D 5C60 11D0 F41F DD1E B4A9 C903"
	$"93CF 5618 3D7F 4E28 0106 5B19 52A0 7272"
	$"79F6 A064 2F05 4823 D0E0 8A00 5208 0482"
	$"3BF2 7A67 3FA5 210C DCE3 9200 383C FBE2"
	$"8010 81C6 00E7 2307 FC2B 1F5D 6B88 ECDD"
	$"ECD2 175C E2E3 CC1F 2851 D580 3C71 EFD3"
	$"1513 F859 D386 E575 23CD B1F3 3F8D 1751"
	$"D09A E35A F879 0DB6 A3A3 5C5C 34BA F5EE"
	$"AB39 1F60 4E48 9119 B98C 60B1 59C6 65FE"
	$"1500 8C9F 29F0 DDC5 8786 ACE7 B9F8 7B72"
	$"DAB7 80EF 269D F5EF 126A 978F 04FA 5CCD"
	$"C148 C105 A093 CB29 8650 65B8 0C3A 630B"
	$"F2D8 87CB 515B A5DA D7EC BF89 BF4E 9F7F"
	$"43FA 1F24 5F58 C0CA 3534 E7E5 8D5B 453E"
	$"5AB1 4FD8 D382 ED53 453E F751 7A4F 4ED7"
	$"C317 9A75 9785 934C D1B5 59A6 F015 C452"
	$"2378 9A69 489E 299B 05A1 4403 2878 01AD"
	$"5726 4521 8B0C 6573 3C5C 89A9 E973 F87B"
	$"5ED4 8F85 FC34 228E DEC3 C60B 2896 E350"
	$"19DC 9092 8434 E870 310C 7C20 505C FCA0"
	$"D126 9D3E 54F4 B5AF DA3D 25EB D3F0 EC14"
	$"2338 639D 5953 4EA2 9F37 25B4 9564 D735"
	$"0BFF 002A 5EF5 DE8D FBEF 4523 9CBB 867D"
	$"6A37 D035 DB89 BC05 616F 716B 1D87 89DE"
	$"EA27 9FC4 3E5E 0442 4913 679E D801 E391"
	$"1962 88F1 27A8 EC74 DF0E EA9E 2B7D C96F"
	$"73E0 07B3 BE25 DD12 1F33 5F91 570C 5810"
	$"A279 F820 823E CE37 F032 7073 A717 5256"
	$"D9BF FC96 DB3F FB7F F16F B33B 31D8 8A58"
	$"3A4A 7A54 846E D692 4AB3 925C D0EA ED87"
	$"6B45 AF24 6296 928B 6EED CF83 2FF5 3813"
	$"5EF0 DDB5 D784 ECAC 259A 6BBF 0FDB C08C"
	$"FAC3 A8F9 DD03 E3CD 91BE E967 CC69 93B0"
	$"7AF2 7FD9 9752 D8DB F8BB C396 F378 77C3"
	$"5045 3CB7 1E08 8604 7935 30B8 1234 28E0"
	$"79E1 8FCA F2C8 3E40 088D 4E36 0BA9 49AD"
	$"569D 5792 56BC 7FED EFF2 EECE 6C0E 3E9D"
	$"44E3 564A 7CAF 924E EFDF 9CB9 B92B BB74"
	$"A5AA 6D5F 9529 5B58 4034 2D76 EACB 4BB5"
	$"F883 A343 71A5 7846 3B47 91BC 0705 BEF9"
	$"E75D D869 23DF F33C 45B2 5AEE 4DCC 0210"
	$"A1B0 02F5 76FF 0010 0DAF 8793 C7CE B39F"
	$"0ACB 6C24 8BC2 6B18 8AE1 031C 2C83 3FEA"
	$"E324 16FB 5B64 BF40 1BAA 94AB 722F 2B73"
	$"7FDB BFC9 EBFF 000F DC33 0CAE 3899 EE9C"
	$"B9BD 9377 F8AB 5DFF 00B4 B5FC AF55 A697"
	$"BC56 8E26 7F8A F5DB 6BBF 0E7F C259 E395"
	$"9F54 F05C A91C 9A6E 8D0D B1B5 BCB1 67DC"
	$"11C1 209B 35C8 60D3 B174 9FA2 8624 11CE"
	$"F892 5823 D122 D63E 2632 EA5F 0E65 31BF"
	$"87F4 CD36 D8DB 5ED9 2B93 B70A 4FFA 32EC"
	$"0DBE 590B 79C4 8284 EEF9 66AC 93BB 96D6"
	$"BCBC E3D1 2F35 FE5F CACD F2EA 13A4 A9C3"
	$"0FA4 94DC 28FB D751 C42B 73D4 9778 4D37"
	$"FE2B C9A5 7AD1 B7AB 7820 5ECF A55A DF78"
	$"8E4B 493C 0AF1 46DA 0416 48D0 CD0C 640D"
	$"AB12 B7CD 126D 1F3F 9D96 7232 B9EB 5F45"
	$"7866 E63F B040 D645 3FB3 248C 0B6D AA41"
	$"0BFC 3C1E 7A77 39CF AD7B 7807 A6BB FE9D"
	$"3FAF 4EB7 3F26 E315 1736 A9A7 ECD3 6B56"
	$"9BF6 BF6D DFAA 72BB BECD F335 EEB8 9BA0"
	$"A1E0 100B 73D7 1C52 94F9 7772 4838 1CFF"
	$"003F CABD 43F3 F042 0677 31C8 E739 3D4D"
	$"2365 00C3 1C71 9EFB 477E 4FD2 8E82 100D"
	$"C46D 18EE 33C9 CF7E 2943 6E6E 840F F0A4"
	$"038E 0292 3736 4703 19E3 E940 4EC3 039E"
	$"0763 4C06 BC9B 886F 330A A470 3B9F 7FF0"
	$"AAB7 574B 17CE 5F03 926A 2522 A313 82F1"
	$"7F8A 6D6D ADDD 3CC0 383D EBE5 2F8B 5E2F"
	$"8A5F 3556 507A F39A F3F1 0D34 D1EA 60E2"
	$"D3D0 F93F C69A B0B8 9DF2 C3A9 E86B CF6E"
	$"6F81 90ED E2B8 A9C5 23DD 94DF 2A4C A92E"
	$"A031 8EB5 9D71 768C 3AF2 7B57 5535 789C"
	$"5366 64F3 7241 5AA8 CDD8 56B1 463C C31E"
	$"52A3 1BB3 5599 CA82 491C D6D1 8984 E5D0"
	$"81A4 3D2A B336 735D 1495 CE39 B2CE 8A7F"
	$"E275 A70F FA7B 87FF 0043 5AF6 1AE8 B1CE"
	$"E67E D5E9 7E01 B4B6 BB5D 6B5E BD97 5ED5"
	$"57E6 5B9B C00A 447D 2188 7C91 0FA0 CFBD"
	$"74F9 E095 6271 C7B8 F7CF 7EF5 9190 E3B4"
	$"8F98 E369 F5C6 78A6 90CD C16C 283C 83D3"
	$"18FE 5480 5DA7 EFB4 6490 783D E9AA E198"
	$"E08C 8CF3 EB4C 076D 28CC DB40 DC79 C0FE"
	$"7CD1 8500 FDDD BF78 9CE3 8EDF 5A00 4F31"
	$"8100 A82A 3A9C E3E9 8A50 3764 9520 7A71"
	$"D3DE 8DC3 6136 90E0 8C11 E9E9 EF4E C02C"
	$"02E0 0CE4 B74C 9EF4 0084 8070 4E47 AFA7"
	$"3C7E 149B 4805 5DB0 0704 E739 F7A0 056C"
	$"A8E3 19ED E84F BD34 8625 9B04 6D3B B04F"
	$"271F FD7A 0001 248D C79C 1619 CE07 41CF"
	$"AF5A 520C 63E5 2A73 D06D EBED 4009 B559"
	$"5CEC EFDF 8191 59FA AC21 D5A4 590B 3479"
	$"6112 9C6E 207B F19E 9532 5746 D41D A69B"
	$"3C43 E227 87E7 91E3 F135 8C97 319D 3E39"
	$"676F 0DD9 EC4F B612 7E66 008C 0DD9 F98B"
	$"866F 94EC 1C8C 7836 B968 74E5 1E30 B380"
	$"A59D 969B 99BE 1E59 A246 9E5C 8D83 2320"
	$"1B92 0738 72EC AD38 6200 C295 27E6 F1B0"
	$"7193 7F3F FED3 E76F EB53 F76E 13C5 46AD"
	$"08C1 DBFE 7DBD F46D BB62 5F77 0E6B 27B5"
	$"DBD5 271B 4D15 D1D0 6093 C4D3 DB4B 75A3"
	$"3DAC 30BF C3F8 9561 3A68 9326 3332 A316"
	$"B78F 71DD 1BAA F9C5 D82C 8406 F9B4 7C52"
	$"B656 1689 75E3 4D3A E3C5 5A06 A13C 3159"
	$"F87A 3B61 0368 CE76 B2C7 2AC7 FF00 1EEE"
	$"0155 F263 E5C9 F9C8 DDF3 7368 A2D4 95D2"
	$"D5AF 27F6 3FED DFF3 EC8F 7651 94B1 1095"
	$"1928 5493 E58C AEF4 9C79 5BC4 3BEF EDA2"
	$"D5AF A34E 3AFE F276 E7F5 D82D 740B AB5D"
	$"3FE2 BEFF 001A 59DF DF7D 9F42 B7B1 B2C8"
	$"D218 6D06 2963 8CA8 5603 607D 3938 60A1"
	$"B703 D7D0 B406 B9F0 FDD5 8E9B F15A F23F"
	$"1349 7173 E569 06C6 22E9 651A B155 8DCC"
	$"78DC 8180 DB6C 83F7 6061 8FF0 AD51 F766"
	$"F9F5 B7C5 FDEF E5B7 A75F BBB1 8E68 FDBE"
	$"121F 565C 9CEA 4E82 72FE 138F F1B9 AFFF"
	$"003F 1A6E 2DDE EDF3 3B5A 47B8 CBE1 85D4"
	$"5E3D 4357 FB3D D6AC 80FD 8E45 3946 C1C2"
	$"0936 F070 7A28 E077 EE0F 1BE2 EF86 716A"
	$"9AB1 F152 5BC0 DE3A B78B 1024 ACDF 6695"
	$"80C2 1955 701D C007 6AFD CE81 830F 96BD"
	$"8AD8 7E78 EBBE FF00 F6F7 4F97 FC13 F31C"
	$"AF39 784A EB95 B51B 3879 AA4F E3DF ED2E"
	$"9DAD 1ECC F2AD 73C0 F752 EBEF E2C8 2DE1"
	$"9BE2 E227 CB67 24AE F6AE F8C0 DE83 E596"
	$"E020 E220 7CAC E321 B6E2 B9B6 D36F 6DF5"
	$"DB8F 13E9 E914 DF18 2580 4775 A3F9 ED2D"
	$"A172 3E60 13EE 5CDC 8403 36B9 31AF FB78"
	$"2078 D529 38BB AEF7 FF00 B89D BD3F AEA7"
	$"EA78 2CC2 9D7A 6A32 6ECA 1ECD E8AC B07A"
	$"7BFE 534F AEE9 59DA F065 3786 F6C7 5BD4"
	$"7C4D E1A8 21D4 BE29 DE40 63D4 3C3A F74D"
	$"796A 8483 E708 D5B2 2FA5 0AAA 7EC6 5996"
	$"239C 799B 30A9 6E0E 8BA9 6A9E 30F0 F443"
	$"5DF8 817F 1AFF 006C F852 7BC3 7D69 6CE4"
	$"FEF0 E393 752A E001 6E09 10E4 8CB1 50B5"
	$"8D9A D56B 66DA D779 F58F 9AFC FF00 EDE3"
	$"D4BC 2A47 966F 979A 31A7 27CB 6E4C 2AE5"
	$"E4AE BF96 6DAB 3DB9 5F4B 5047 ACF8 0746"
	$"9EC3 56BD F18C F777 73F8 8B53 811F 51F0"
	$"CDC5 C8BA 1031 E5BC EC71 7457 036C 69CC"
	$"5901 8718 1F45 F869 25B8 51A8 5F47 25B4"
	$"F2A6 E6B3 7707 6923 BFD0 76EA 3BD7 BF80"
	$"8D95 9FAF CFAA F97F 9BEA 7E31 C655 A356"
	$"A7B4 492B 2504 92B2 708A 4A35 2DD3 9925"
	$"E8B9 60F5 833A 2660 3F78 DCFA 7D07 F334"
	$"7C80 A9F9 8337 6EB8 EFD3 A0AF 50FC E878"
	$"3F30 0DE9 EBC1 A41D 5780 339E E4FE 1F4A"
	$"6021 076E C455 3BB2 719C 63EB 8FC7 F2A5"
	$"C2AA 9D8D B42F 5EFF 0096 6800 5FEE 80AA"
	$"A319 CF34 C965 58C1 E837 7231 C669 49D9"
	$"0D2B B31B 54D6 E0B4 4666 6EDC FAD7 99F8"
	$"BBE2 65B5 8C52 66E1 781E B5C1 56AE B63B"
	$"68D1 BEA7 CEDF 103E 3187 122A DCF5 CF7A"
	$"F9BB C6FF 0010 9EF9 E45F 3324 E7BD 71D4"
	$"9733 3D7C 3D2E 5D4F 1BD6 F5A3 34CC 4B75"
	$"273C D73B 35E6 DE77 7069 C23A 1D33 762B"
	$"1BC2 C4E0 8AAD 34FB 9CFA FB57 4A56 D8E3"
	$"9BB9 13B9 6E49 3C55 7328 C915 A411 8C9D"
	$"9104 9283 F854 0EE0 8C1A DD23 9A52 2066"
	$"39A6 38F9 41CE 0D6F 1563 966C B3A2 FF00"
	$"C86B 4EFF 00AF B87F F435 AF62 AD11 89FB"
	$"A9C7 40C0 1073 8DBD 2930 4651 471E FD4E"
	$"7AD6 640A 194A 8400 F4C8 1D7F 1CD2 00CA"
	$"C063 2464 0EB8 A000 640C 9EA7 9273 D38E"
	$"B4A4 924E 7014 E33C 7E74 8072 AB72 1882"
	$"33C7 19EB EB4D 25F0 3381 9E31 DC7F F5BF"
	$"C698 0B9C AF38 43D0 1F5F 7A44 60CB B82E"
	$"154F 1BBF FAFE F45F 5015 D76A 8670 0B0E"
	$"4527 2D9F DDAB 641C 60D0 0216 CBAB A824"
	$"1FBC 318F CC7F 9E94 2A7C C320 0246 0F73"
	$"F9E2 8014 95DA 4961 8230 723D FD33 4846"
	$"F3F3 2905 B241 FF00 3D28 0039 3B48 55C1"
	$"EDC9 FA52 E325 86ED A7A7 EB9A 0019 723E"
	$"4382 7819 E703 8AAD 242E CAEA B9F3 48C0"
	$"7C70 295A FB17 0767 A9C5 78BB 43B9 BEF3"
	$"AFBC 38B1 43AF C6A1 9679 46DC E3A9 527E"
	$"50F8 C00E 7A0A F9CB C4BA 15F5 F6B9 A8EA"
	$"9F09 E282 1F88 B6CC 4DF5 FDC2 3448 C0FC"
	$"93C9 06F3 B639 3071 24AE 0175 C941 92CD"
	$"5E2E 3E0D B5CB BEF1 FF00 177F EBAD BCCF"
	$"D4F8 3B19 4E31 97D6 1BF6 6972 D6B7 5A2E"
	$"DEEA F9DE F6D7 9799 2779 44E1 346B 9FB7"
	$"6B7A 8EB1 F04A 3B53 E3BB 16F3 3C47 7575"
	$"1C89 0795 B87D A27B 5597 E548 7781 E6B3"
	$"E256 1F34 6AB9 35B7 E17D 62C6 717F A97C"
	$"138E DAE2 50C7 FE12 796F 5E44 8E0B 71CB"
	$"C901 9003 1DB7 0C7C D6FD F1E8 31C8 3E45"
	$"3924 D7B3 EB77 1F5F B77F D3E5 E67E 998E"
	$"A127 19AC 6B7E EA8C 6BDA CED4 DD9E 1D46"
	$"DBBB BB4E DF13 73E8 E062 698D 6FE1 B49E"
	$"7F82 B047 AA78 6AF6 475F 125F 6A37 CD6A"
	$"F631 61B1 B646 C35A C3B4 C863 B9C3 4AE7"
	$"E46F EE36 BFC3 BD49 3C2F 1C50 FC23 0DE2"
	$"3F08 5E4D 2B6B 1AB6 A171 F659 6C73 C390"
	$"A4E2 C42A E0EE 1979 F230 7900 14DF 24A3"
	$"ECF5 B7C3 AEF1 7F13 7E9F D7C2 3C75 3962"
	$"A855 58E7 CAE7 6F6E D46F C956 29FB 1846"
	$"DBA9 AB5D 2DD3 4B4F 6FA7 D19F 0B6F B4DB"
	$"4B18 63F0 75E4 BAE6 8F70 ECD2 DCC8 C50C"
	$"2738 C043 FEA4 01EB CB1F 4E95 E9F3 69F6"
	$"DA84 41ED A51E 6329 459C 28DE 99C7 19EC"
	$"3B11 D7F5 AFA6 C35A 5492 5B74 7DCF C0F3"
	$"EF69 431D 2AB5 6369 DDF3 C7A2 77DB CEEB"
	$"EFDF A9CC EB3E 0C5D 4964 8E25 5B7D 5CC0"
	$"614D 4D63 01FC BCF2 9BBA AA9E 8483 93EB"
	$"CD72 3AA7 C348 E749 6DAC 952D BC51 F67F"
	$"29B5 BF28 23BC 6392 9BC0 DD1A 1E07 983E"
	$"738C 1383 59D5 C3F3 7F5D 7B9D D96E 76E8"
	$"249E A96A F5DE 9F5A 7E9E 5B3D BAB3 9CD5"
	$"3E15 1792 6834 A10D BF8D 9EDC 4536 B46D"
	$"BCB3 70A3 929B 8730 8230 3CF5 1BD8 01BB"
	$"8269 BA7F C2DB 6B2D 4A4B AD2A DA28 FE20"
	$"183C A9F5 A583 C932 803E 611F 68C9 1806"
	$"7C06 7030 4E38 AE3F AA7B D7FB BFC5 DFFA"
	$"FD0F A68F 1237 49C1 B7AA F7B5 BDF0 FA5A"
	$"979D ADF3 57EB 3677 7E1D F01D 9697 749A"
	$"84F6 D6D2 789D D36C B730 4452 3DFC EE31"
	$"A671 1BE0 8064 006E C670 33CF A159 D898"
	$"824F 7A15 EE40 C36D 3800 F5E9 DCF4 E6BD"
	$"2A14 9535 65F3 F53E 0F39 CC25 8B9F 3B6F"
	$"B46F ADA1 D13F 3EEF ABBB EA5E 1229 0C81"
	$"BE6F 52BC 0E3D A9F9 51D4 7233 D071 5D47"
	$"8001 71C6 E033 DBDA 9AEF B480 A47D 09E7"
	$"E83F 5A00 542A 1B08 7D07 4EFF 00E7 F952"
	$"9040 391F AE01 3400 D50E 0951 FF00 01C9"
	$"E7EB EB59 BAB5 D9B6 8D9C 1C00 3A56 551D"
	$"9170 5767 807C 50F8 84DA 6472 ED94 8232"
	$"0735 F277 8FBE 2D5C CD24 8BF6 8623 9EF5"
	$"E454 F88F 7F0D 4EF1 478A 788B C713 DEBB"
	$"3098 F4F5 AF3E D535 B9A6 6243 139C F7A8"
	$"82BB 3B79 5451 CFDD 5DEF E49C FBD5 3919"
	$"877E B5D6 A36B 239E 726D 8D23 68DD 5119"
	$"07E7 5A45 6860 D91B C8A0 100F 3551 9B19"
	$"22B4 8239 E725 6206 6F5A 8CB6 7BD7 4451"
	$"C8D8 C218 720D 359C 1273 5B23 0932 CE88"
	$"73AD 69E4 1E97 70FF 00E8 6B5E C5B8 7AD5"
	$"2219 FBA8 72CC 06D0 A467 00F6 F5A7 0DC4"
	$"6580 0FF5 E3FC E2B3 2042 DBDB 6F20 1C83"
	$"FE00 D2E5 9720 E07B 9EFF 005A 100D 71B4"
	$"6061 89EB 9E4E 3BD3 B79E 14F5 2723 038D"
	$"BFD2 9001 0760 0BDB 3D87 E1C5 23B0 01B7"
	$"0049 E704 73DB 14C0 538D A092 4F39 38ED"
	$"FE34 A492 7036 E48E 38CD 0020 DC58 A893"
	$"03A7 4CE3 FC8A 452C DF31 2170 4F6C 9EBF"
	$"A500 0376 E01B 3C83 8CFA FB9A 53FC 4392"
	$"0740 BD47 6E28 005C B658 B0CF F7BA 73FE"
	$"7FA5 354A 2603 803B 123D 4500 39CA 0048"
	$"079E 47E5 D8FD 283C 0181 C13F 4C73 8E28"
	$"0130 8084 E000 0105 78FA E0D0 C981 C8E4"
	$"138C 7383 E940 232B 5AD2 D757 B730 C939"
	$"89D5 8105 4F52 3B11 DFB6 3D2B C87E 2178"
	$"15BC 676E 166B AB8D 06EA D2E1 5D7E CE57"
	$"7DFB A0CA 820E 3CC9 571F 239F 9573 D381"
	$"5C38 BA5E D22D 77EB DBFE 1CFA DE1B CC7E"
	$"A35E 356C A5C8 FE17 B493 DEFF 00E1 F8BD"
	$"527D 0F0C F11F 87B5 3F1D ADB5 DC8D A8F8"
	$"16EB 4CD4 CCD0 DADA B20B 9D76 7890 EDD9"
	$"9D9E 75EA EC01 656F DD7E F081 C90A D896"
	$"B77A 8F8E AD6D 7C49 A67D AFE1 FF00 F675"
	$"FCB2 8D12 D510 4DAE 4A99 DEF6 C8C1 3ED1"
	$"71C0 5632 0F2D 0921 7B25 7CE4 D49C BAC5"
	$"CB5F F0DB A7AC BF16 D776 7EE5 85AB 4634"
	$"127C B563 46F1 D6FF 00BF 5539 BDF7 BFBB"
	$"42CF BF2C 6326 ACE3 1BB3 4ED5 2EBC 4FA6"
	$"C1E3 9D12 3B9F 06E8 1A7B 5DCD 7DE1 782D"
	$"1656 D595 7FD7 C96F 090B F6C0 CA4A 4DE6"
	$"8D90 7253 8055 64F0 ECF3 EA1A 75AF 8DBC"
	$"0E47 85BC 0B68 92BE A3E1 75B5 F3E5 BC65"
	$"2048 D183 86BD DC4A AFDA 1885 87EE F1B4"
	$"AB44 64E4 D38E 8DEA B4F8 63A5 E3F3 FC74"
	$"FE66 7556 A30A 109D 3ADF BC8C 65EC A4F9"
	$"ACEA D67C DC95 9EFA 536D A6F5 E597 3D95"
	$"A844 F6EF 84FA DDAE A3A4 D9F8 97C0 307F"
	$"61F8 710B FDAF 4C95 3CC7 91D7 0242 0F5B"
	$"A3C8 1E6E 76A6 31C0 18AF 79F0 E6A3 67AA"
	$"582D DE9F 1985 49FD E211 C823 AFCD FC5F"
	$"515F 4581 9A94 15B6 6AEB C976 FEBD 7A9F"
	$"8771 7E16 A52C 4D47 51DE 7093 8D49 7F34"
	$"EEFD E5E5 E5D3 E1FB 26DB C7BC EC24 85F6"
	$"AAED 0C72 C5E5 6300 1392 BC10 7D4F 1EF5"
	$"E8B5 73E2 A32E 5B15 E5D3 2268 CC5B 4AEE"
	$"5199 3B9F 4E7D 39E9 4F4D 3E15 84A0 C025"
	$"47EF 76FC CDDC 827D 33DA A794 DBDB CAD6"
	$"F9FF 00C0 258A D61B 6008 0CEE CB82 C793"
	$"81DB F5A9 D501 420A F7F9 8EEC E7FC F154"
	$"9184 A4E4 EEC5 53D1 420C 0E3A F4FA D220"
	$"0318 009C 633F 8E69 922B 90DF C58C 609F"
	$"E548 4904 B9C2 F181 9E3F AD00 2B0C 2045"
	$"239E 9FD2 9B86 2486 4381 D476 C714 8047"
	$"3B57 183E A7B7 A75F D2B9 8F17 DC98 2C9F"
	$"2DCE D279 358D 6764 6D49 5E48 F8BB E38E"
	$"B6CA D381 27AD 7C77 E2ED 5A47 9A41 E677"
	$"3DEB C5A8 FDEB 9F4F 8556 85CE 16EA F589"
	$"397E 4F6A CAB9 B927 2BF9 D6B4 56A5 5695"
	$"9685 06F9 813E 94D6 900C 6473 5D7B EA71"
	$"CA44 5248 7180 6A03 28FB BEB5 A422 73CE"
	$"5A95 E473 D01E 6A26 738E B5BA 8D8E 59CA"
	$"E46C 7383 4C2D CD6A 9183 6349 1F9D 3092"
	$"0F4E 2AD1 948B 9A38 C6B7 A7ED 1C1B C87F"
	$"F435 AF61 F9BD 2A91 2CFF D900 0098 000A"
	$"0000 0000 002C 0045 0000 0000 002C 0045"
	$"0000 0000 0110 01C8 0000 08FD FF02 0000"
	$"FEFE 000B 0780 7FFF FF00 07FF C0FF 000B"
	$"0780 7FFF FF00 1FFF F0FF 000B 0780 7FFF"
	$"FF00 7FFF FCFF 000B 0780 7FFF FF00 FFFF"
	$"FEFF 000A 0480 7FC0 FF01 FEFF FF00 0B09"
	$"887F 003F 03FF 01FF 8000 0B09 887E 001F"
	$"03FC 007F 8000 0B09 887C 000F 07F8 003F"
	$"C000 0B09 8078 1C07 07F0 001F C000 0B09"
	$"8078 1C07 0FE0 000F E000 0B09 8070 1C03"
	$"0FC0 0007 E000 0B09 8070 1C03 1FC0 0007"
	$"F000 0B09 8070 1C03 1F80 0003 F000 0B09"
	$"8070 1C03 1F80 0003 F000 0B09 8070 1C03"
	$"1F80 3FFC F000 0B09 8070 1C03 1F80 27FC"
	$"F000 0B09 8070 0803 1F80 3FFC F000 0B09"
	$"8070 0003 1F80 0003 F000 0B09 8070 0003"
	$"1F80 0003 F000 0B09 87F0 1C03 1FC0 0007"
	$"F000 0B09 81F0 1C03 0FC0 0007 E000 0B09"
	$"81F0 1C07 0FE0 000F E000 0B09 81F0 0007"
	$"07F0 001F C000 0B09 81F0 000F 07F8 003F"
	$"C000 0B09 81E0 001F 03FC 007F 8000 0B09"
	$"8F80 007F 03FF 01FF C000 0B00 81FE FF00"
	$"01FE FF01 E000 0B00 81FE FF00 00FE FF01"
	$"F000 0B00 81FE FF05 007F FFFF F000 0B00"
	$"81FE FF05 001F FFFF F000 09FD FF05 0007"
	$"FFCF F000 08FC 0004 01FF 03F0 0002 F700"
	$"0B09 3800 0C7C 0000 3DCF F800 0B09 4402"
	$"0454 8000 1291 A800 0B09 8200 0410 0000"
	$"12A0 2000 0B09 83B6 7591 B7D8 1CA0 2000"
	$"0B09 8292 9510 9A64 10A0 2000 0B09 8292"
	$"8710 927C 10A0 2000 0B09 4492 8510 9260"
	$"1091 2000 0B09 38FF 7FB9 FB7C 39CF 7000"
	$"0400 18F8 0004 000E F800 8200 0000 161A"
	$"0000 0001 0000 0000 0000 0000 0000 0000"
	$"0000 0001 0000 0000 0000 0000 0000 0110"
	$"0000 4000 0000 0000 0000 0000 0000 0000"
	$"0000 0040 0000 0000 001C 01C8 0000 0300"
	$"0000 0000 0000 0056 6A70 6567 0000 0000"
	$"0000 0000 0001 0001 6170 706C 0000 0000"
	$"0000 0300 01C8 001C 0048 0000 0048 0000"
	$"0000 1580 0001 0C50 686F 746F 202D 204A"
	$"5045 4700 0000 0000 0000 0000 0000 0000"
	$"0000 0000 0000 0018 FFFF FFD8 FFE0 0010"
	$"4A46 4946 0001 0101 0048 0048 0000 FFFE"
	$"000C 4170 706C 654D 6172 6B0A FFDB 0084"
	$"0003 0202 0202 0203 0202 0203 0303 0304"
	$"0604 0404 0404 0705 0605 0609 0809 0908"
	$"0808 0809 0A0D 0B09 0A0D 0A08 080C 100C"
	$"0D0E 0E0F 0F0F 090B 1011 100E 110D 0E0F"
	$"0E01 0303 0304 0304 0704 0407 0E0A 080A"
	$"0E0E 0E0E 0E0E 0E0E 0E0E 0E0E 0E0E 0E0E"
	$"0E0E 0E0E 0E0E 0E0E 0E0E 0E0E 0E0E 0E0E"
	$"0E0E 0E0E 0E0E 0E0E 0E0E 0E0E 0E0E 0E0E"
	$"0E0E FFC4 01A2 0000 0105 0101 0101 0101"
	$"0000 0000 0000 0000 0102 0304 0506 0708"
	$"090A 0B01 0003 0101 0101 0101 0101 0100"
	$"0000 0000 0001 0203 0405 0607 0809 0A0B"
	$"1000 0201 0303 0204 0305 0504 0400 0001"
	$"7D01 0203 0004 1105 1221 3141 0613 5161"
	$"0722 7114 3281 91A1 0823 42B1 C115 52D1"
	$"F024 3362 7282 090A 1617 1819 1A25 2627"
	$"2829 2A34 3536 3738 393A 4344 4546 4748"
	$"494A 5354 5556 5758 595A 6364 6566 6768"
	$"696A 7374 7576 7778 797A 8384 8586 8788"
	$"898A 9293 9495 9697 9899 9AA2 A3A4 A5A6"
	$"A7A8 A9AA B2B3 B4B5 B6B7 B8B9 BAC2 C3C4"
	$"C5C6 C7C8 C9CA D2D3 D4D5 D6D7 D8D9 DAE1"
	$"E2E3 E4E5 E6E7 E8E9 EAF1 F2F3 F4F5 F6F7"
	$"F8F9 FA11 0002 0102 0404 0304 0705 0404"
	$"0001 0277 0001 0203 1104 0521 3106 1241"
	$"5107 6171 1322 3281 0814 4291 A1B1 C109"
	$"2333 52F0 1562 72D1 0A16 2434 E125 F117"
	$"1819 1A26 2728 292A 3536 3738 393A 4344"
	$"4546 4748 494A 5354 5556 5758 595A 6364"
	$"6566 6768 696A 7374 7576 7778 797A 8283"
	$"8485 8687 8889 8A92 9394 9596 9798 999A"
	$"A2A3 A4A5 A6A7 A8A9 AAB2 B3B4 B5B6 B7B8"
	$"B9BA C2C3 C4C5 C6C7 C8C9 CAD2 D3D4 D5D6"
	$"D7D8 D9DA E2E3 E4E5 E6E7 E8E9 EAF2 F3F4"
	$"F5F6 F7F8 F9FA FFC0 0011 0800 1C01 C803"
	$"0121 0002 1101 0311 01FF DA00 0C03 0100"
	$"0211 0311 003F 00FD 47C0 6CA3 0231 CE01"
	$"CFF9 E947 DFDA A0E3 24F0 3823 FCE6 B8CD"
	$"01D8 85DC 40C8 EABF CA9C 41DC 0A03 961E"
	$"9C1A 0069 76DA 7201 EA33 DA95 77A9 F2CF"
	$"DD00 8EB8 EFC0 FCA9 DC02 3058 10D8 193F"
	$"E47F 9F5A 1893 C852 40E0 74E0 E680 1194"
	$"361B 2060 E49E BFE7 BD29 19F9 5412 41E3"
	$"3FE3 4000 1B80 DB8C 6318 1C13 E949 85C9"
	$"2EA7 7138 2703 91D7 1400 2156 3C63 A631"
	$"9E31 FD68 DE31 B704 8E80 E7DB DE80 1DB4"
	$"2800 28C7 1DB2 29A8 50BF 03E6 EE33 C726"
	$"8F20 1738 1B70 C001 C311 9FAD 1B48 186D"
	$"A323 EF7F 9FA5 001B 93EF B300 31F4 EFC5"
	$"0CA1 4300 49C7 BE08 38F5 FAFF 003A 2E03"
	$"1A24 7043 E1B6 7723 A1FE B589 AFE8 36DA"
	$"B859 278E 337B 0822 12F9 D84F 60F8 EAB9"
	$"ED51 3829 2B1D 784A F2C3 D453 8BDB F2EB"
	$"FF00 00F1 BF1E 7803 4FF1 3DC2 5FEB 96B6"
	$"B73E 2EB1 8CC7 631C AE63 8250 0E62 8EE4"
	$"AE32 B9C9 40A4 73C3 1009 AF17 F156 8516"
	$"BDAB DBEA 7E3E 8EDA 7F89 DA74 67FB 3EC1"
	$"E66B 7826 20FE E23B DF2C 058D B93B 618C"
	$"8DDC 6E2A 0907 E7B1 9455 DB7B 3DFF 00C4"
	$"B65E 9DFE 7E47 ED7C 2F9A 5470 8AA4 DF3D"
	$"34D4 74BD B0F2 FE24 B5DE 4B4E 5BDF 6A6A"
	$"D673 398B E797 57D7 ACBC 55E3 4544 F8C5"
	$"A644 CF65 A047 766D 23B8 6420 C0B7 2A83"
	$"6DBD C052 EC2D 5197 CE50 A1B6 96C3 CDE7"
	$"CB7F AADA FC40 D7A0 6B7F 8A1A 7580 68FC"
	$"2105 DF91 14D1 0185 7923 1CDB C654 EE36"
	$"4A43 3641 3B14 D79B AB6F 9BBD DEBF F2F1"
	$"7D9F 9F5F F807 DD38 C610 8AA4 FDD5 174A"
	$"178D FF00 D8E5 7BD7 6FAB 8FD9 6F74 936B"
	$"F7AD 9E97 E019 2F35 FD57 4FF1 C788 DE7D"
	$"13C5 D6F6 8241 E188 6611 1788 7DC6 118E"
	$"6DE0 239F 2301 DBAE 0677 37D2 5E0D BABA"
	$"D56D 2D75 0BDB 53A6 C9B3 FE3D F1B3 70EA"
	$"0AAF F0A1 F43C D7BD 97B6 D6BB BD5F 93ED"
	$"FD7E 87E3 BC6D 0842 5683 4E34 FDC8 3FF9"
	$"F90D 6D53 CEFD FAEA EFEF 1D69 21D5 8ED0"
	$"BDB9 EE28 DEC5 C03F 2F19 C019 CFFF 005E"
	$"BD8B 9F98 810B C7CF 9F51 8FA6 29D9 2319"
	$"E87F 4A00 62B2 91B7 07B0 CF5F E5F8 D2B2"
	$"A903 6F4C E770 F5FE B480 3730 5DEA 73C1"
	$"0063 BF1F AD28 F988 DE3A 74C7 D69F 900D"
	$"51B7 1B41 19E8 4F19 FC29 5FE5 52B8 231C"
	$"919C D201 4AB1 E546 D1B7 07D7 E9C7 E348"
	$"1942 E464 7701 B83F 4A36 0DC8 2E2F 1205"
	$"C315 18C8 03DB EBF9 5797 FC47 F13C 50DA"
	$"CA03 AAF0 6B87 1351 2476 6169 B948 F8AF"
	$"E22C 979E 31F1 25A7 85F4 968B EDBA ADD4"
	$"7676 C249 0468 6491 82AE E63C 28C9 1CD7"
	$"9CF8 B7F6 3EF8 E76B F113 43F8 6B73 A3E9"
	$"A35A F125 A5DD F582 2EA1 198D A2B6 D9E7"
	$"167E 8A47 989C 77CD 70D3 A33A EB9A 3B27"
	$"6FBC F7BE B14F 0E94 27BD 9BFB 8F12 F8BD"
	$"F0D3 C59F 057C 6375 E02F 1D45 6706 AF67"
	$"1453 4C90 5CAC E88B 2A87 4F9C 719D A41C"
	$"5706 F22B 8F35 6452 B8EA 08C7 E75B AA7E"
	$"CE4D 3DD1 0EA2 A915 28EC C88C A854 0575"
	$"3C9C 60E7 3559 EEA3 7276 32B1 5192 01C9"
	$"15B4 7B1C F33D 47C5 FF00 B377 C46F 05FC"
	$"2DB3 F8C5 ACC9 A09F 0FDF 25AB C42D F568"
	$"67BA C5C1 023D D029 DC3A F3E9 DEBC 7CDC"
	$"A6F2 9E62 96FE EE79 FCAB A793 96D7 38A5"
	$"514F 5444 F708 5B61 9177 7A67 9A6A 4CAF"
	$"CA3A B0E9 9073 5B2D 4C1B 3D63 E15F ECC9"
	$"F153 E326 8B2F 88FC 2D61 636F A4C7 2B40"
	$"B7BA 8DD0 B68E 6901 C32C 7C16 6C13 8271"
	$"8CF1 9CF1 5C87 C48F 85DE 34F8 4BE2 27F0"
	$"AF8E 3493 637B E589 E265 712C 53C4 4901"
	$"E375 E197 208F 5046 0806 BCDA 19C6 1311"
	$"8C9E 0612 FDE4 6FD3 4D37 49F7 5D4D 6785"
	$"A90A 2AB3 5A33 B8F8 6DFB 257C 61F8 A9E1"
	$"B8BC 5DA1 69BA 7D96 9572 48B4 9F52 BB16"
	$"E6EB 0769 31A8 0CC4 6E04 0240 048E 09AF"
	$"39F1 F780 7C5B F0CF C4D7 3E10 F19E 92FA"
	$"76A5 6C15 CC6C CAEA E8DF 75D1 D495 7438"
	$"3820 F63D C1A7 85CE B098 BC55 4C1D 297B"
	$"F0BD F4D1 DB47 67D6 CF72 2AE1 6AD2 A71A"
	$"B25A 3323 432D FDB5 A782 7ADE 43FF 00A1"
	$"AD7B 26DF F6AB D657 392E 7EEA B7CE C5D4"
	$"A9D8 4804 1FE7 DA9D 9218 31C7 27A1 383F"
	$"E735 9922 F0A0 A804 163C 67A7 5A1B EEB6"
	$"7AE3 8068 0108 DAC7 E66C 37CD 8F7A 4E4B"
	$"631D F9C7 7FF1 ED40 0BB8 48A5 0904 F4FD"
	$"690F CEC0 A923 B64F D47F 81A0 076C C7CC"
	$"F907 3C0C E475 A687 460C 0104 A8C8 C0F5"
	$"EF40 0FF9 82EE 04E3 9E49 CD47 E580 02EE"
	$"62C3 A647 38A1 80AF 850B BB00 03C7 2781"
	$"F4FC 29C3 69C9 43BB 8CE3 3D3B 5003 7054"
	$"0DA8 4F53 9272 7FC2 8DC5 D82C 6C32 79CF"
	$"7EB9 FE94 00BB 5083 BC13 93C7 0453 48DC"
	$"DBD4 F206 7F5F C7D2 8DC0 5C2B 0070 1946"
	$"78E3 193D FF00 9D22 9902 6E50 02E7 D7A7"
	$"E469 7A00 E20E F0A2 3231 9DA7 3C1C F5A6"
	$"B46F 2AB1 CA87 C1C1 C7F9 3D29 8D3B 6A61"
	$"EB9A 3477 D1B2 C2CB 0EA0 8856 2BAF 2C12"
	$"A0F6 07B0 C719 EA2B C9BC 5FE0 4FED 7DD6"
	$"BA62 476D E31B 780A 59EA F241 968F 3D51"
	$"49FB BC71 E71F 9941 E31C 13C1 8AA5 CEAC"
	$"BE5E BD19 F5FC 3D99 7D56 69CB 68EB 2D77"
	$"A7F6 A1F3 BBFF 0087 B1E3 7ACF 84E4 B9BC"
	$"FF00 847F 4D58 5FE2 BDAD B186 D759 9EDB"
	$"E50C 007F 2236 7EB2 84DC 12F5 C7CA 4E01"
	$"036B 0C8B 6F0D 4ABA 9A58 BA5A 5CFC 68B6"
	$"428B AA79 25A2 69C6 4948 F70D B25F 2A8C"
	$"7DA1 86C2 7715 CB0C 9F02 54BD ED36 DBFE"
	$"E277 3F66 C3E6 49D1 E577 E6B7 3377 D160"
	$"DEF4 FC9E FB6A 95EC FE13 D53C 0DE0 68E1"
	$"BCB4 D73C 6115 A5C7 C438 572C D13E E804"
	$"DD99 FF00 865B A0BC 161F 203D 3380 47BD"
	$"E816 9752 DBDB DDEB E88B A863 E644 6EA7"
	$"B173 D37F D38A F6F0 34B9 159F 5DFF 00C4"
	$"7E51 C598 F589 A978 B7CA BDDA 49FF 00CF"
	$"9D6D 7F3F C765 D0E8 42B3 13F3 30CE 7927"
	$"A1FF 00F5 52E3 393B FE50 08C7 403F FAF5"
	$"E99F 02C5 4E36 90C0 0192 4639 FA50 A772"
	$"9DB9 CE38 19A4 2113 EF02 57E7 239C F148"
	$"BB11 777A F4C1 E33F E7DA 801E 3271 20C9"
	$"241E FDBF C7FC 29A0 12C0 8382 4601 CF39"
	$"EB8F EB4C 037E 18AF 1D3B 74E3 DFFC F4A7"
	$"0E32 C0EE 079E BCFF 00F5 BB51 7023 7953"
	$"6E59 C75E 38CF 22B3 6FB5 58AD C6F7 2001"
	$"91E8 4FF8 5615 26A2 8D69 C1C9 9C07 8BBC"
	$"7F69 A7DB C881 D538 3D0E 315F 327C 4DF8"
	$"AAB3 8951 66C9 E7F8 ABC1 C456 E77A 1F45"
	$"81C2 B4AE CF98 75AF 8812 59F8 A34D D723"
	$"9B0F 63A8 4170 1B3C 2EC9 558F F2AF D49D"
	$"7BC3 F16B 7F1A 7E1D 78F6 05DD 15A6 89AC"
	$"C08F E827 168C BFA2 1AF4 B29D 6335 E717"
	$"F89C D9BA E494 1F94 97E0 7917 C30F 87DE"
	$"11F8 85F1 6FE3 C7C5 FD43 C21A 5F89 3C4D"
	$"A378 89FC 37A3 26A5 124D 145F 64D3 EDD8"
	$"040F F2A1 7926 0A5F A808 3040 2738 DF1A"
	$"FE06 F80A 4F15 FC05 F895 7FE0 1F0F E8DE"
	$"29BC F16E 99A6 788A C6C6 DE1F B35C 79D6"
	$"B349 2C52 A2E5 25F2 E688 0563 9CA9 2324"
	$"631E A724 5C6F 6EB7 FC4F 2FDA C94D 2BF4"
	$"B7CA C6F7 C62F 0E7E C8FA 67C5 6F07 FC26"
	$"F157 853C 3D65 AFF8 C2FA D2E5 ADD3 4C48"
	$"E296 DAD8 4ED0 4724 8142 22C9 71B5 4A67"
	$"F79D 1811 8AE4 BF6B 96F8 63E0 BF03 78E7"
	$"C35F 153F 67F8 A2F0 D4B6 623F 0778 8BC3"
	$"9A14 52AD ACED 6A00 6B99 A32A D692 25D6"
	$"40C8 0AC9 8FBD 9615 4D41 2959 7A99 C5D4"
	$"6E37 7E86 678B BE0D 7807 C61F B207 C1BD"
	$"1E7F 0BE9 76B3 F88B 54F0 859D FDED B5A4"
	$"715C C914 B3C5 E78F 3954 3E5D 4BA9 39CF"
	$"CD5E D737 C2EF 839A 9F8F 6F7F 677B AF83"
	$"5E0D FF00 8452 1F07 DBEA A8A9 A646 92AC"
	$"925D 4F6E 5438 195C 2C4A C1C1 0E1B 2739"
	$"AB8C 5763 394E 5DFB 9E2D F0AB E1C7 C36F"
	$"875F B1F7 8DF5 3BAF 873E 1AF1 3DC7 84F5"
	$"5F11 5AC2 FABE 9F14 CF73 1DBD EC91 46B2"
	$"C9B7 791B 5467 06BC B3FE 0ABD F0F3 C0FE"
	$"1BD2 3E1A F8B3 C35E 14D2 F47D 42FE 7BBB"
	$"1B97 B0B5 8ED8 4B0A C492 22B8 4003 6D39"
	$"C123 2012 3BD3 B2E5 0526 E478 7FC0 2F88"
	$"5E2F F8BD E1EF 0DFE CB9A 6786 AD2D 746B"
	$"0BB8 B53D 475A 86E6 559E 3B58 2E05 C484"
	$"A81B 4176 2107 3D58 1A7F FC14 17C7 1A3E"
	$"BFF1 2F46 F086 9922 4B3F 86AC 192F A453"
	$"9D93 4CC1 C459 FF00 6502 923B 1735 F0D4"
	$"7051 A19F C295 295E CAA5 593E CEA5 95BE"
	$"5A7D E7B5 3ACE 7827 292B 6D15 F2EA 7D00"
	$"BFE8 BF00 FE05 2DB3 3441 B55F 0913 B095"
	$"CEE5 566C E3D4 9CD7 827F C145 D234 F89D"
	$"E199 820D EFA1 B2B1 EE40 9DB0 3F0C 9FCE"
	$"BCAC 83FE 46D4 DF9D 637C 77FB ACBD 227C"
	$"B1A2 3A8D 6B4E E0FF 00C7 DC3F FA1A D7B1"
	$"EF5F EE9A FD3A E7CE 5CFD D80F F7BE 5618"
	$"E4F3 4A70 0E46 1BBF 1C13 FE35 8201 4F03"
	$"82C0 FD69 A492 AA0E 589E 0014 000C B37E"
	$"EDB2 3B9C F53F E714 AC51 BF76 0E4E DC8C"
	$"7434 0084 ECC6 F392 C78C 8FCF 814A 0918"
	$"2C49 6C77 E80F F934 0013 9206 76F5 0491"
	$"D0FF 009F E740 2AB8 F976 919E BC71 4001"
	$"3BD0 E38E 791E FE9E F4DD E54E 48C1 2076"
	$"C63F 0FCE 8015 55BE F6DC E471 F973 4A77"
	$"655B 3B46 703B 9A00 001D 4C78 6FBA 7DE8"
	$"C310 0100 63D3 3C8A 0068 6671 BB04 13C3"
	$"0C1E 98E9 FF00 D7A5 657E 8AA3 0463 D306"
	$"9006 D0BF 2955 6CE7 8F4E 94A9 B4EE 038F"
	$"F3FC FA53 0021 D412 AA08 ED9C 7348 154B"
	$"E3A1 3C91 EB40 0D9A 3574 2801 0594 6302"
	$"B335 3D22 2D56 DDED 44A6 1999 4059 14F2"
	$"C072 15BB 95F6 A994 5495 8E8C 3D67 464A"
	$"5DB5 393D 5FC1 C356 B79B 4EB4 516F 7FE4"
	$"084D F903 7CB1 824F 9523 75F2 4939 0A0F"
	$"E750 43E0 3B58 D1A1 B73B B5DF B38B 57D5"
	$"2488 2CB2 C43F E591 7C6E 54EC 0E77 1000"
	$"24D7 1BA0 9CAF FD5F B9F4 B4F3 8942 97B3"
	$"F3BB 77DE 0EDE E7A6 9B6D A256 37B4 AF0D"
	$"45A7 B249 3AA4 FAB2 47E5 FDAC 4601 2BFD"
	$"D19E 9FEF 7535 D1DB D995 01A7 2AD2 28C1"
	$"23F9 62BA 29C3 9558 F0B1 B8A7 5E5C CFE5"
	$"E51E 8899 9954 7CCB 80BD 3B11 DA94 3619"
	$"DB07 838C 818E FDFD 6B63 CF06 20E4 EE18"
	$"CE46 7F5C D3B9 FE16 E474 38CD 0026 1870"
	$"0F04 1C80 3A74 C52A EDE0 28E9 819E 800A"
	$"0008 270A 49E7 DF34 8CA0 2852 00C9 E07F"
	$"9EF4 0085 8007 E500 F705 B151 CD30 4504"
	$"FCAA 3A90 700F F935 1276 4525 739B D67C"
	$"476F 6819 9E41 903A F6AF 22F1 CFC5 2B6B"
	$"18DF 6CE3 2A0E 307A 5789 8CC5 5B44 7B38"
	$"1C23 9B4E C7CD 5F10 3E2D CD78 F284 B9E3"
	$"9E0B 5780 F8A7 C6F3 5CB4 84CD EBDE BC8B"
	$"F36E 7D3D 3A6A 08F2 FD77 506B 9474 DFFE"
	$"B411 C1AF D80F 839F B447 C19D 4FE1 4F82"
	$"752F 10FC 54F0 669F AA8D 0ACF ED16 D79A"
	$"ED9C 33DB CBE4 A091 1D1E 40CA D904 1046"
	$"6BE8 B2A9 C61C CA4E DA75 3E7B 3A8C AA28"
	$"F22B D9B3 E72F D907 E3E7 C3FD 62DF E377"
	$"C3CF 11F8 E34A D035 9F16 F8A3 57D5 B4AB"
	$"AD42 E96D E1B8 8AE6 3102 18E5 6214 B279"
	$"28D8 0724 382B 9C1C 3FC5 BAF7 ECF5 F0AF"
	$"59FD 9FBC 0367 E2BF 095F F8C7 49F1 1699"
	$"73E2 3D7A C6F5 1E08 6182 DA54 9E5B 8B96"
	$"7DA9 E64A EA40 7218 8049 C719 F461 3838"
	$"26DF F573 CCA9 09C6 A38A 5BFF 0091 C0FE"
	$"D6DE 33F8 03E3 9FDB 47E1 EDFF 008D 7C4D"
	$"A478 87E1 F368 C967 ABDD 695A A79D 0C2C"
	$"CF70 232F 35AB EE4D 9234 4E70 4100 67A5"
	$"7D1D AEFC 48F8 4FF0 B7E1 57C4 AB6F 127C"
	$"6FF0 B789 BC05 7DA5 987C 25A4 1D69 757B"
	$"F588 D979 72DA 9777 796E 37CF 9299 2DB1"
	$"5B92 A071 AC2D CD27 7EBF 8184 F9B9 631B"
	$"74FC 6E79 CF88 BE3F 7C27 F0BF EC95 F06A"
	$"56F8 83E1 CBFD 47C3 5AA7 846E F52D 2ECF"
	$"54B7 B8BE 8628 6787 ED0C 6DD1 CC99 8D77"
	$"330D B91B 6BDC EE3E 2DFC 12D2 BE20 DFFE"
	$"D037 3F1B FC0E DE1B 93C1 F069 2A91 6AD0"
	$"C970 648E EA6B 82C2 3562 CC4A CAAA 1002"
	$"FB81 18AD 5348 C5C5 F6EE 7CF7 E11F 8EBF"
	$"0BB5 FF00 D893 E224 73F8 F3C3 9A76 B3E2"
	$"1BEF 115F DB68 D77A B5B4 57DB 6E2F 6496"
	$"25F2 19C4 8495 6181 8E7B 5711 FF00 054D"
	$"F897 F0EF C79E 0BF8 676D E07F 1F78 6FC4"
	$"5358 EA17 8F75 1E93 AADB DF34 0A6D D003"
	$"2089 D8A0 2410 09C7 34AF EE85 9A91 81FB"
	$"1DCB F0B3 E1EF C20B 8D75 FE24 F84B 4BF1"
	$"878A 04AF 336A 5A95 B46F 6610 B2DB C6F1"
	$"348A DB41 FDE1 1C6E 2DE9 8C79 55E7 ECEB"
	$"F0BB 51F1 CEAC 9E2C FDA6 340D 4DEE B4A9"
	$"75B6 D52D EF2C C09A F1A6 70D0 3179 C82E"
	$"701B 00E7 0C38 C62B F3BA 58EC 6E13 30C6"
	$"5658 59CA 5276 4ED2 B72C 7449 69AD D6BA"
	$"1EEC A8D1 AB42 943D AA49 6EAE AF77 F33D"
	$"CFE1 978E 7E1F 7C52 F82B F0E3 45B7 F881"
	$"A0E8 FA8F 82B5 0D22 6D46 D352 BB4B 7976"
	$"E9E4 2B05 5661 9DEA A195 87CB CE09 15F3"
	$"8FED C5F1 37C2 9F11 BE2A D92F 8435 5835"
	$"3B2D 0F4D 1653 5DDB B078 649D A467 711B"
	$"8E1D 5415 1B87 04E7 19C6 68C8 B038 9A79"
	$"C353 A6D4 69BA 8EED 68F9 9E96 7D6F B8B1"
	$"B5A9 CB08 AD24 DCB9 74EB A6E7 CFFA 2123"
	$"5BD3 BFEB EE1F FD0D 6BD8 F757 E907 827E"
	$"EEC7 CE4E 3183 818E 31D2 907C C067 F894"
	$"9E09 FF00 3DEB 8FA1 40D8 560C 00E8 C696"
	$"4FDD 4795 E724 F5A6 2110 6E28 E49C 9073"
	$"CFB5 389C 9E40 38E2 A5B6 0340 C072 33C2"
	$"F4CD 2364 98CE 48CA 9240 FA0A 2E31 4B12"
	$"FE5B 0054 0070 7F3A 795E 01C9 CFE1 45C0"
	$"6ED0 9F77 8054 923B 67D6 8650 7208 CE33"
	$"8CF3 437A 0099 2549 C9E3 903D 314E 2009"
	$"463A B039 345E E2D8 8CBB 61D8 7041 C0C7"
	$"D715 2300 8815 477C 53B8 C68F 9546 0E31"
	$"CFE9 432E 2363 9248 1D4F 3D70 7FA5 2B80"
	$"B231 0003 CF5E BF87 F89A 07CF 211D 318E"
	$"9F4A 7701 AA4C 676A 9EC4 73EC 6852 5DD8"
	$"138E 4E08 EA29 5F40 1A70 E4AB 2821 738F"
	$"C854 A146 D5C9 3D05 0983 23DD 85DC 1464"
	$"0623 AF6C 7F8D 31D5 63DA CA06 58EC 3EE3"
	$"AD2B 9489 2255 5476 C648 1D4F 7E33 CD23"
	$"1C7C E382 141F C69D F425 EAC7 AA2E 07D1"
	$"BFA7 F8D1 B76E E5DC C42F 2326 801A B922"
	$"25C9 F989 24F7 EB9A 7B80 9192 3B0C F5EF"
	$"4362 2249 58F1 C739 27F2 A532 3090 0FEF"
	$"3053 F950 98DA 2451 8931 D7A9 E7B7 2051"
	$"0132 2863 D8B0 C0FA D3DC 435C 9CED EC71"
	$"FE35 89AC C8E2 D890 D8E7 15CF 5DFB A6D4"
	$"97BC 8F15 F1CD CDD1 4940 BA95 473D 08FF"
	$"000A F9B3 C6EB 7371 2482 4D42 E7A9 E857"
	$"FF00 89AF 9EA9 4D49 EA7D 5612 6E36 48F2"
	$"1D6F 418A E647 12DF 5D91 CFF1 27FF 0013"
	$"5C6D E782 34D9 59C3 DEDE 9EBF C69F FC45"
	$"2851 8C2C D753 B9D5 6EE9 9897 1E02 D299"
	$"B9BB BDE3 FDB4 FF00 E22A 9CDF 0FB4 7C13"
	$"F6AB DCFF 00BF 1FFF 0011 5E8C 60AE 8F32"
	$"BCDA 28C9 F0FB 4839 06F2 FBAF F7E3 FF00"
	$"E22A ACDF 0F34 73B8 7DB2 FB18 FEFC 7FFC"
	$"4575 C228 E29C DD8A 87E1 CE8D 8FF8 FDBF"
	$"FF00 BEE3 FF00 E22A 3FF8 56BA 267F E3EE"
	$"FBFE FB8F FF00 88AE 981C 3518 8DF0 DB44"
	$"1D2E EFBF EFB8 FF00 F88A 8BFE 15AE 879C"
	$"FDAE FB3F EFC7 FF00 C456 E95C C1B1 4FC3"
	$"6D13 FE7E EFBF EFB8 FF00 F88A 67FC 2B6D"
	$"1074 BBBE FF00 BEE3 FF00 E22A 9193 607E"
	$"1AE8 9CFF 00A5 DF7F DF71 FF00 F114 C3F0"
	$"D744 FF00 9FCB FF00 FBEE 3FFE 22A9 1235"
	$"BE1A E89D 4DE5 FF00 FDF7 1FFF 0011 51B7"
	$"C35D 131F F1F9 7FFF 007D C7FF 00C4 538E"
	$"E43D CB5A 47C3 7D18 6A96 2C2F 6FC1 1731"
	$"11F3 C7FD F1FE C57A 8FFC 203A 6FFD 04B5"
	$"0FFB EA2F FE37 5B08 FFD9 0098 000A 0000"
	$"0000 002C 0045 0000 0000 002C 0045 0110"
	$"0000 012C 01C8 0000 08FD FF02 0000 FEFE"
	$"000B 0780 7FFF FF00 07FF C0FF 000B 0780"
	$"7FFF FF00 1FFF F0FF 000B 0780 7FFF FF00"
	$"7FFF FCFF 000B 0780 7FFF FF00 FFFF FEFF"
	$"000A 0480 7FC0 FF01 FEFF FF00 0B09 887F"
	$"003F 03FF 01FF 8000 0B09 887E 001F 03FC"
	$"007F 8000 0B09 887C 000F 07F8 003F C000"
	$"0B09 8078 1C07 07F0 001F C000 0B09 8078"
	$"1C07 0FE0 000F E000 0B09 8070 1C03 0FC0"
	$"0007 E000 0B09 8070 1C03 1FC0 0007 F000"
	$"0B09 8070 1C03 1F80 0003 F000 0B09 8070"
	$"1C03 1F80 0003 F000 0B09 8070 1C03 1F80"
	$"3FFC F000 0B09 8070 1C03 1F80 27FC F000"
	$"0B09 8070 0803 1F80 3FFC F000 0B09 8070"
	$"0003 1F80 0003 F000 0B09 8070 0003 1F80"
	$"0003 F000 0B09 87F0 1C03 1FC0 0007 F000"
	$"0B09 81F0 1C03 0FC0 0007 E000 0B09 81F0"
	$"1C07 0FE0 000F E000 0B09 81F0 0007 07F0"
	$"001F C000 0B09 81F0 000F 07F8 003F C000"
	$"0B09 81E0 001F 03FC 007F 8000 0B09 8F80"
	$"007F 03FF 01FF C000 0B00 81FE FF00 01FE"
	$"FF01 E000 0B00 81FE FF00 00FE FF01 F000"
	$"0B00 81FE FF05 007F FFFF F000 0B00 81FE"
	$"FF05 001F FFFF F000 09FD FF05 0007 FFCF"
	$"F000 08FC 0004 01FF 03F0 0002 F700 0B09"
	$"3800 0C7C 0000 3DCF F800 0B09 4402 0454"
	$"8000 1291 A800 0B09 8200 0410 0000 12A0"
	$"2000 0B09 83B6 7591 B7D8 1CA0 2000 0B09"
	$"8292 9510 9A64 10A0 2000 0B09 8292 8710"
	$"927C 10A0 2000 0B09 4492 8510 9260 1091"
	$"2000 0B09 38FF 7FB9 FB7C 39CF 7000 0400"
	$"18F8 0004 000E F800 00FF"
};

resource 'kind' (128) {
	'Mngl',
	0,
	{	/* array kindArray: 3 elements */
		/* [1] */
		'Icon', "Mac OS Icon",
		/* [2] */
		'ICO ', "Windows Icon",
		/* [3] */
		'TIFF', "Mac OS X Server Icon"
	}
};

resource 'icns' (-16455) {
	{	/* array elementArray: 17 elements */
		/* [1] */
		'ICN#',
		$"0000 0000 0000 0030 0000 C050 0003 C0B0"
		$"000F 6170 003C 62E0 00F0 35C0 03C0 3B80"
		$"0F00 57E0 3C00 AF90 F001 5FC8 C01E BF07"
		$"6067 0003 619E 5003 3067 FA0F 30AF FF57"
		$"1836 01FF 182C 01FF 0C38 00DF 0C78 1EC0"
		$"0678 F860 067F E060 033F 80B0 031E 02F0"
		$"0180 0BF8 0180 2FFC 00C0 BFFE 00C2 FFFE"
		$"006B FFFE 006F FFFC 003F FFF8 003F FFE0"
		$"0000 0000 0000 0030 0000 C070 0003 C0F0"
		$"000F E1F0 003F FFE0 00FF FFC0 03FF FFC0"
		$"0FFF FFE0 3FFF FFF0 FFFF FFF8 FFFF FFFF"
		$"7FFF FFFF 7FFF FFFF 3FFF FFFF 3FFF FFFF"
		$"1FFF FFFF 1FFF FFFF 0FFF FFDF 0FFF FFC0"
		$"07FF FFE0 07FF FFE0 03FF FFF0 03FF FFF0"
		$"01FF FFF8 01FF FFFC 00FF FFFE 00FF FFFE"
		$"007F FFFE 007F FFFC 003F FFF8 003F FFE0",
		/* [2] */
		'icl4',
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 00BB 0000"
		$"0000 0000 0000 0000 FF00 0000 0B1D 0000"
		$"0000 0000 0000 00FF FF00 0000 D1DE 0000"
		$"0000 0000 0000 FFFF 0FF0 000B 1DBA 0000"
		$"0000 0000 00FF FF00 CFFC CCB1 DEA0 0000"
		$"0000 0000 FFFF 00CC CCC2 CB1C AB00 0000"
		$"0000 00FF FF00 0C0C CC2D B1DA AD00 0000"
		$"0000 FFFF 00C0 C0CC 2BEB 1CBA 4C20 0000"
		$"00FF FF00 0C0C 0CC2 BBD2 CAAA D2CD 0000"
		$"FFFF 000C 00CC DC2D BB1C AFE3 BDC2 C000"
		$"FF00 00C0 0CDD C2BB E2DB FF3D BC2C CDAF"
		$"0FF0 0C0C DDCC DBE4 DC2C DDCD CCC2 CCFF"
		$"0FF0 C00D C0CD DA3C C2DD 2CCC 1CD0 2DFF"
		$"00FF 00C0 CDDD CDB2 EE3E BB3C C2CB C2FF"
		$"00FF 0C00 DCCC 3AEE EAEA 5AEA AD3B BEFF"
		$"000F F0C0 CC03 03FC CCCC CCDA EAEE BEFF"
		$"000F F00C C0DC 3FDC CCCC CCDF F5AE 3EFF"
		$"0000 FF00 CC3B FDCC CCCC DCCD FF0A EEFF"
		$"0000 FF00 CAAA DCCC CC4B 423D FF00 0000"
		$"0000 0FF0 C4D4 C0CC D224 BCCC DFF0 0000"
		$"0000 0FF0 CB42 CCC4 24DC CDCD DFF0 0000"
		$"0000 00FF 02D4 2B2B 4BCC CCDC DDFF 0000"
		$"0000 00FF 0C42 D4B4 CCCC DCDD FFFF 0000"
		$"0000 000F F0CD 24CC CCDC DDFF FFFF E000"
		$"0000 000F F0CC CCCC CCDD FFFF FFFF FF00"
		$"0000 0000 FF0C CCCC DBFF FFFF FFFF FFF0"
		$"0000 0000 FF0C CCDD FFFF FFFF FFFF FFF0"
		$"0000 0000 0FF0 DDFF FFFF FFFF FFFF FFF0"
		$"0000 0000 0FFD FFFF FFFF FFFF FFFF FF00"
		$"0000 0000 00FF FFFF FFFF FFFF FFFF F000"
		$"0000 0000 00FF FFFF FFFF FFFF FFF0 0000",
		/* [3] */
		'icl8',
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 5E58 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"FFFF 0000 0000 0000 0058 0339 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 FFFF"
		$"FFFF 0000 0000 0000 5809 5789 0000 0000"
		$"0000 0000 0000 0000 0000 0000 FFFF FFFF"
		$"00FF FF00 0000 0034 0957 8988 0000 0000"
		$"0000 0000 0000 0000 0000 FFFF FFFF F500"
		$"F8FF FF0E 2C32 5E03 3389 8800 0000 0000"
		$"0000 0000 0000 0000 FFFF FFFF 0000 F6F6"
		$"2B32 082C 325E 0333 AD88 0000 0000 0000"
		$"0000 0000 0000 FFFF FFFF 0000 F6F6 F62C"
		$"0E2C 5D64 5E03 3488 DD32 0000 0000 0000"
		$"0000 0000 FFFF FFFF 0000 F6F6 F6F6 2B08"
		$"333A 8858 0933 88AD 5D33 3200 0000 0000"
		$"0000 FFFF FFFF 0000 F5F5 F6F5 F62B 0F32"
		$"6488 5E09 3382 DE88 5E33 3233 0000 0000"
		$"FFFF FFFF 0000 F5F5 F6F5 F62B 562C 3339"
		$"8858 0934 FCE0 8864 5E39 332C 3200 0000"
		$"FFFF 0000 F5F5 F5F6 F5F6 5681 083A 6389"
		$"8809 5D82 E0E0 645D 3933 2C32 0F32 E0DF"
		$"00FF FF00 F5F5 F5F6 5681 56F6 5D64 8833"
		$"335D 3233 3257 3208 2C32 0E2C 322D DFE0"
		$"00FF FF00 F5F5 F5F9 56F6 F6F9 8183 8832"
		$"325D 3439 330E 082C 0E08 3232 3332 E0E0"
		$"0000 FFFF 00F5 F5F5 2B56 8156 2B5D 2E64"
		$"8888 B288 5E88 5D39 2C33 3333 395D E0E0"
		$"0000 FFFF 00F5 F6F5 F956 2BF7 6489 B282"
		$"8888 8889 B288 8988 885E 5D88 5D5E E0E0"
		$"0000 00FF FF00 F6F6 F5F6 2B6A 006A AD56"
		$"2BF7 2BF7 2CF7 81FD 88B2 8988 8888 E0E0"
		$"0000 00FF FF00 F5F6 F6F6 FA08 40EA FA2B"
		$"F72B F7F7 4FF7 F9FF FF88 AC88 88FC E0FE"
		$"0000 0000 FFFF 00F6 F632 6A40 FFF9 2B2B"
		$"F7F7 F7F7 32F8 F7F9 FFFF 0088 8888 E0E0"
		$"0000 0000 FFFF F5F6 F6B2 8988 5D2B 2BF7"
		$"F72C 3939 4040 40F9 FFFF 0000 0000 0000"
		$"0000 0000 00FF FFF5 F715 393F 2B2B 2BF7"
		$"323F 4040 3932 F7F8 FAFF FF00 0000 0000"
		$"0000 0000 00FF FF00 073A 393F 2CF7 3239"
		$"4040 39F8 F755 F8F8 F9FF FF00 0000 0000"
		$"0000 0000 0000 FFFF F53F 1539 3F39 401C"
		$"3F33 F831 50F8 F8F8 FAF9 FFFF 0000 0000"
		$"0000 0000 0000 FFFF 0633 3939 1539 4039"
		$"2C31 F8F7 F8F8 F9F9 FFFF FFFF 0000 0000"
		$"0000 0000 0000 00FF FF00 3939 3A3F 32F7"
		$"F84F 32F8 F9F9 FFFF FFFF FDFD FD00 0000"
		$"0000 0000 0000 00FF FFF5 2B2B 2BF7 2BF7"
		$"F7F7 F9F9 FFFF FEFD FDFD FDFD FDFD 0000"
		$"0000 0000 0000 0000 FFFF 00F7 F72B F7F7"
		$"F9F9 FFFF FEFD FDFD FDFD FDFD FDFD FD00"
		$"0000 0000 0000 0000 FFFF F5F7 2BF7 F9F9"
		$"FFFF FDFD FDFD FDFD FDFD FDFD FDFD FD00"
		$"0000 0000 0000 0000 00FF FFF5 F956 FFFF"
		$"FEFD FDFD FDFD FDFD FDFD FDFD FDFD FD00"
		$"0000 0000 0000 0000 00FF FF56 FFFF FDFD"
		$"FDFD FDFD FDFD FDFD FDFD FDFD FDFD 0000"
		$"0000 0000 0000 0000 0000 FFFF FEFD FDFD"
		$"FDFD FDFD FDFD FDFD FDFD FDFD FD00 0000"
		$"0000 0000 0000 0000 0000 FFFD FDFD FDFD"
		$"FDFD FDFD FDFD FDFD FDFD FD00 0000 0000",
		/* [4] */
		'il32',
		$"B7FF 01A1 9F91 FF01 0000 84FF 02A1 FEB1"
		$"8FFF 8100 83FF 03A1 FEB1 628D FF81 0002"
		$"F500 0081 FF04 BCFE B162 648B FF81 000C"
		$"F6F6 A700 00EA EAB8 9FFE B062 648A FF81"
		$"000D F7F7 DDDA D6BB E9EB B89F FEC3 6264"
		$"89FF 8100 0FF9 F8E1 DEDB DCE5 DEBA 8FA2"
		$"FEC6 6245 D087 FF81 0012 FAF9 E7E3 E0DD"
		$"DDE5 D4B3 679A FEC8 6245 A5C9 D384 FF81"
		$"0015 FBFA EBE8 E5E1 DFD5 E2D4 A469 9EF2"
		$"C962 4579 9BC2 D2D0 81FF 8100 18FC FBEE"
		$"ECE9 E6E3 D294 DED2 B36A A0F3 C75C 1B5D"
		$"899C B5CD D5D3 80FF 7F00 00FC FCF1 EFED"
		$"EAE8 D798 6BE5 C29C 657A DEB3 6A0D 2082"
		$"ADBD C3D1 D5D7 D020 20FF 0000 FBF0 EEEC"
		$"DA9A 6D9F D3B8 8170 B9C5 C1CE C7B2 AFDA"
		$"E7EA E1D9 D8D9 D420 20FF 0000 FBEF EDEA"
		$"91A0 D7D0 9368 5C75 EBD4 9FB3 C4DE E7EC"
		$"EBE3 E4DD D6CE C620 20FF FF00 00FA ECE9"
		$"E6D4 966A 9ACD A2C7 886F 4D61 6F7F 9094"
		$"C1DB CCC1 C0B7 AB20 200F FFFF 0000 FAEB"
		$"E7E4 8D9C D1B3 9755 465C 8064 0C4A 4E5A"
		$"5B55 6C8F 8B8C 9588 2020 80FF 1C00 00F9"
		$"E5E3 E0DC C89D FF9B 1CA4 C6C3 C0BC B9B0"
		$"7A41 5A4B 535E 6860 2020 80FF 1C00 00F9"
		$"E4E1 DEDB 83F2 D802 82C8 C5C1 BEBB B7B4"
		$"8900 0055 5859 5A5E 2020 81FF 1B00 00F7"
		$"DFDC C8A5 D902 82CA C6C3 C0BC BAB8 B4B1"
		$"8600 00FF 6361 5E20 2081 FF15 0000 F7DD"
		$"DA46 6E49 97CB C8C4 C2C2 C7CE D3D6 CE85"
		$"0000 88FF 1500 00F6 D9D7 D6D5 CDC9 C5C3"
		$"C7D1 D2D5 CEB2 ADAB 8300 0087 FF15 0000"
		$"F5D6 D7D5 D5CD C9C8 CFD2 D2CE B6B1 AEAC"
		$"A982 0000 88FF 1500 00F2 D7D5 D4D4 D1D3"
		$"D5D4 C9B6 B2B0 ADAB A981 8100 0087 FF11"
		$"0000 F2D3 D4D3 D2D1 D5D1 BEB7 B4B1 AEAC"
		$"8382 8100 88FF 1200 00F1 D1D4 D2D2 C4BC"
		$"B8B5 B2B0 8684 0000 010B 8023 87FF 0F00"
		$"00F1 CAC7 C4C0 BDBA B7B4 8986 0000 1284"
		$"2387 FF0C 0000 F0C5 C3BF BBB8 8C8A 0000"
		$"1E87 2386 FF0A 0000 F0C3 C1BD 908D 0000"
		$"1F89 2387 FF07 0000 EE93 9100 001E 8B23"
		$"87FF 0500 0094 0000 1D8C 2389 FF02 0000"
		$"198D 238A FF00 008D 2382 FFB7 FF01 8281"
		$"91FF 0100 0084 FF02 82E4 898F FF81 0083"
		$"FF03 82E4 8944 8DFF 8100 02F5 0000 81FF"
		$"049E E489 442B 8BFF 8100 0CF6 F5A7 0000"
		$"B4B7 9B79 E494 442B 8AFF 8100 0DF8 F7DD"
		$"D9D6 A9B6 B59B 7DE4 9744 2B89 FF81 000F"
		$"F9F8 E1DE DBCC B3A0 6E51 80E4 9A44 199B"
		$"87FF 8100 12FA F9E6 E3E0 DCCD B397 682E"
		$"76E4 9D44 1963 96A1 84FF 8100 15FB FAEB"
		$"E8E5 E1DF C4B0 9953 307E CF9C 4619 3459"
		$"8BA6 9C81 FF81 0018 FBFB EEEC E9E6 E3D2"
		$"94B3 9167 2E7E D09A 440E 2A3C 557B A0A8"
		$"A280 FF7F 0000 FCFC F2F0 EDEA E7D7 986B"
		$"B376 4B2D 51B5 864F 040E 3461 818A 9FA8"
		$"A7A1 0E0E FF00 00FB F0EE EBDA 9A6D 9ED3"
		$"842D 3A7D 8683 9998 8C85 A0B3 B9AE A9AA"
		$"AAA5 0E0E FF00 00FB F0ED EA92 A1D7 D093"
		$"6844 38B3 A962 6F7D 9DB2 BEBC B5B7 AFA5"
		$"9B95 0E0E FFFF 0000 FAEB E8E6 D496 6A9A"
		$"CC83 9A44 3D1E 2934 4455 5C8E AC9A 8B89"
		$"7D75 0E0E 0FFF FF00 00FA EAE7 E48D 9CD1"
		$"B328 1633 4480 3B0C 1F22 2F30 2E42 5C55"
		$"5860 550E 0E80 FF1C 0000 F9E5 E2DF DCC7"
		$"29FF 1C15 9DC6 C3C0 BDB9 AD6C 2331 202B"
		$"333C 370E 0E80 FF1C 0000 F9E4 E1DD DA75"
		$"B626 0282 C8C4 C2BE BBB8 B489 0000 2A2F"
		$"3031 3B0E 0E81 FF1B 0000 F7E0 DBA5 2629"
		$"0281 C9C6 C2C0 BBB3 AFB0 AE86 0000 FF38"
		$"393B 0E0E 81FF 1500 00F7 DECF 1C18 1D81"
		$"CAC8 C3BC A47E 533C 2E47 8500 0088 FF15"
		$"0000 F3C0 5469 50BA C9C6 B98E 4B40 324C"
		$"A6AC AB82 0000 87FF 1500 00F3 BD53 6951"
		$"AFBF A361 4746 50AE B1AE ACAA 8200 0088"
		$"FF15 0000 E550 675C 4E60 4B3A 396F B2B1"
		$"B0AD AAA8 8181 0000 87FF 1100 00EF 885C"
		$"665C 5D38 50A4 B6B4 B1AE AC83 8281 0088"
		$"FF12 0000 EE82 5658 50A0 BAB7 B5B2 B086"
		$"8400 0001 0B80 2387 FF0F 0000 F1CA C7C4"
		$"C1BE BAB7 B389 8600 0012 8423 87FF 0C00"
		$"00F0 C6C2 BFBC B98D 8A00 001E 8723 86FF"
		$"0A00 00F0 C3C0 BD8F 8D00 001F 8923 87FF"
		$"0700 00EE 9490 0000 1E8B 2387 FF05 0000"
		$"9500 001D 8C23 89FF 0200 0019 8D23 8AFF"
		$"0000 8D23 82FF B7FF 013E 3C91 FF01 0000"
		$"84FF 023E 674D 8FFF 8100 83FF 033E 674D"
		$"238D FF81 0002 F500 0081 FF04 4A67 4D23"
		$"278B FF81 000C F6F5 A700 0094 9593 3167"
		$"4523 278A FF81 000D F8F7 DCD9 D79E 9995"
		$"9337 674F 2327 89FF 8100 0FF9 F8E1 DFDB"
		$"BF91 8657 4739 6752 231A 7A87 FF81 0012"
		$"FAF9 E6E3 E0DD C191 7C51 2A32 6753 231A"
		$"4B78 8384 FF81 0015 FBFA EBE7 E5E1 DFB9"
		$"8B7D 412C 3763 5324 1A2C 446D 8A80 81FF"
		$"8100 18FB FBEE ECE9 E6E3 D294 9378 5427"
		$"3761 5122 1124 323F 6084 8D86 80FF 7F00"
		$"00FC FCF2 EFED EAE8 D697 6B91 5B3C 2730"
		$"5956 2A0A 0C2C 4F65 6C85 8D89 880C 0CFF"
		$"0000 FBF1 EEEC DA9A 6D9E D36F 202F 6A76"
		$"7683 8378 748C 9A9D 918E 8E8C 880C 0CFF"
		$"0000 FBEF EDEA 92A0 D7D0 9268 2230 9694"
		$"5354 5F80 95A2 9E9A 9D94 8881 7A0C 0CFF"
		$"FF00 00FA ECE9 E6D5 966A 9ACD 4651 3538"
		$"191F 2A36 444A 7591 8173 7268 600C 0C0F"
		$"FFFF 0000 FAEB E7E4 8D9C D1B3 2716 1D22"
		$"802E 0118 1D80 2807 384D 4748 4F47 0C0C"
		$"80FF 1C00 00F9 E6E2 DFDC C82C FF1F 0A91"
		$"C6C3 BFBC B9AC 6A1F 2B1B 262B 3330 0C0C"
		$"80FF 1C00 00F9 E4E1 DEDB 76B8 2B02 82C8"
		$"C5C1 BEBB B7B5 8900 002A 292A 2B35 0C0C"
		$"81FF 1B00 00F7 DFDB A52A 2E02 81C9 C6C3"
		$"BFBA B3AF B0AE 8600 00FF 2A2C 350C 0C81"
		$"FF15 0000 F7DD CE1D 1A1E 81CA C8C3 BCA5"
		$"8056 4032 4A85 0000 88FF 1500 00F3 C057"
		$"6C54 BBC9 C6B8 904F 4536 50A7 ADAA 8300"
		$"0087 FF15 0000 F3BF 566C 55B0 BEA5 644B"
		$"4954 AEB1 AEAC AA82 0000 88FF 1500 00E6"
		$"546B 5F52 634F 3E3D 71B2 B2AF ADAA A981"
		$"8100 0087 FF11 0000 EF89 5F69 6060 3D54"
		$"A6B6 B4B1 AEAC 8382 8100 88FF 1200 00EE"
		$"8559 5C54 A1BA B7B5 B2AF 8683 0000 010B"
		$"8023 87FF 0F00 00F1 CAC7 C4C1 BDBA B7B4"
		$"8986 0000 1284 2387 FF0C 0000 F0C6 C2BF"
		$"BCB8 8C8A 0000 1E87 2386 FF0A 0000 F0C4"
		$"C0BD 8F8D 0000 1F89 2387 FF07 0000 EE93"
		$"9100 001E 8B23 87FF 0500 0094 0000 1D8C"
		$"2389 FF02 0000 198D 238A FF00 008D 2382"
		$"FF",
		/* [5] */
		'l8mk',
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 6263 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"2517 0000 0000 0000 00AD E5CE 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 259E"
		$"FF9E 0000 0000 0000 D7FF FFBF 0000 0000"
		$"0000 0000 0000 0000 0000 0000 259E FFFF"
		$"FFFF 2500 0000 00F2 FFFF E77F 0000 0000"
		$"0000 0000 0000 0000 0000 259E FFFF FFFF"
		$"FFFF 9E55 FFFF D9FF FFFF 8A00 0000 0000"
		$"0000 0000 0000 0000 259E FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFB7 0000 0000 0000"
		$"0000 0000 0000 259E FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFAD 0000 0000 0000"
		$"0000 0000 259E FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFF9 B400 0000 0000"
		$"0000 259E FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF F4B4 0000 0000"
		$"179E FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFF8 C900 0000"
		$"25FA FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"009E FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"0025 FAFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"0000 9EFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"0000 25FF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"0000 009E FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"0000 0025 FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF 9E12 56B6 FFFF FFFF"
		$"0000 0000 9EFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FF25 0012 56FF FFFF"
		$"0000 0000 25FF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FF9E 0000 0000 0000"
		$"0000 0000 009E FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF 2500 0000 0000"
		$"0000 0000 0025 FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF 9E00 0000 0000"
		$"0000 0000 0000 9EFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FA25 0000 0000"
		$"0000 0000 0000 25FF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF 9E17 0000 0000"
		$"0000 0000 0000 009E FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF A32D 0402 0100 0000"
		$"0000 0000 0000 0025 FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF CC74 4029 170D 0502 0000"
		$"0000 0000 0000 0000 9EFF FFFF FFFF FFFF"
		$"FFFF FFFF F6DF C7AC 8B68 4629 1305 0100"
		$"0000 0000 0000 0000 25FF FFFF FFFF FFFF"
		$"FFFF FCF7 F1EB DFCD B392 6B43 1F0A 0200"
		$"0000 0000 0000 0000 009E FFFF FFFF FFFF"
		$"F9EF E5DC D0C4 B5A4 8E74 5534 1707 0100"
		$"0000 0000 0000 0000 0025 FFFF FFFF F1D8"
		$"C4B8 A997 8573 5F4F 4032 2314 0802 0000"
		$"0000 0000 0000 0000 0000 9EFD E3B6 9A85"
		$"7361 5041 3529 1F16 100B 0804 0200 0000"
		$"0000 0000 0000 0000 0000 1786 6250 4335"
		$"291F 1610 0B08 0502 0201 0100 0000 0000",
		/* [6] */
		'ich#',
		$"0000 0000 0000 0000 0001 D800 0000 003A"
		$"0800 0000 0740 0C00 0001 E800 0400 001E"
		$"0000 0400 03A0 0000 0400 7400 0000 0200"
		$"0000 0128 0600 C000 0A52 0200 C000 2529"
		$"0100 C000 4852 0102 C002 A528 01BE E001"
		$"1240 01F7 5008 4520 00EF 6000 0880 00FF"
		$"60B0 0600 00DF 7148 1454 00AE 6240 4289"
		$"00DE 6090 0052 013C 6028 0109 017C 2000"
		$"0002 82F8 4010 8009 02F8 6010 0012 02D0"
		$"4008 0008 0DB0 4010 8014 0310 4004 0048"
		$"1D90 7C80 0090 2B08 702A 8040 1608 1815"
		$"0150 3E08 30AA 8020 5804 1144 0040 360C"
		$"2090 0210 9806 200D 0000 9006 6002 8021"
		$"2482 6000 9102 5012 4002 0481 2202 4001"
		$"0108 4017 C006 0082 82FF C008 2000 BFFE"
		$"8002 0115 7FE0 E000 00B2 FE00 FE02 5C31"
		$"E000 FFC0 8F77 C000 1F3C 1FFF C000 01FF"
		$"F8FF 8000 01FF F83F 8000 0000 0000 0000"
		$"0000 0000 0000 0000 0001 F800 0000 003F"
		$"F800 0000 07FF FC00 0001 FFFF FC00 001F"
		$"FFFF FC00 03FF FFFF FC00 7FFF FFFF FE00"
		$"7FFF FFFF FE00 FFFF FFFF FE00 FFFF FFFF"
		$"FF00 FFFF FFFF FF02 FFFF FFFF FFBE FFFF"
		$"FFFF FFFF 7FFF FFFF FFFF 7FFF FFFF FFFF"
		$"7FFF FFFF FFFF 7FFF FFFF FFFE 7FFF FFFF"
		$"FFFE 7FFF FFFF FFFC 7FFF FFFF FFFC 3FFF"
		$"FFFF FFF8 7FFF FFFF FFF8 7FFF FFFF FFF0"
		$"7FFF FFFF FFF0 7FFF FFFF FFF0 7FFF FFFF"
		$"FFF0 7FFF FFFF FFF8 7FFF FFFF FFF8 1FFF"
		$"FFFF FFF8 3FFF FFFF FFFC 1FFF FFFF FFFC"
		$"3FFF FFFF FFFE 3FFF FFFF FFFE 7FFF FFFF"
		$"FFFE 7FFF FFFF FFFE 7FFF FFFF FFFE 7FFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFE"
		$"FFFF FFFF FFE0 FFFF FFFF FE00 FFFF FFFF"
		$"E000 FFFF FFFF C000 1FFF FFFF C000 01FF"
		$"F8FF 8000 01FF F83F 8000 0000 0000 0000",
		/* [7] */
		'ich4',
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 000F AEED F000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 00FF EDDC"
		$"C00C E000 0000 0000 0000 0000 0000 0000"
		$"0000 0FEE DDCC 0000 0000 DF00 0000 0000"
		$"0000 0000 0000 000F FAEE DCC0 0000 0000"
		$"0000 DF00 0000 0000 0000 0000 000F FEDC"
		$"CC00 0000 0000 0000 0000 0A00 0000 0000"
		$"0000 00FE EDDC 0000 0000 0000 0000 0000"
		$"0000 0E00 0000 0000 0FEE DDCC 0000 0000"
		$"0000 000C 00C0 0C00 0000 0DF0 0000 0000"
		$"0D00 0000 0000 0000 0000 C0CC DCC2 CCC0"
		$"0000 0CF0 0000 0000 FD00 0000 0000 0000"
		$"0C0D CC42 D42C D42C C000 00E0 0000 0000"
		$"FE00 0000 0000 0000 0CCD 2CC4 C2C4 2C40"
		$"C000 00DF 0000 0000 FAC0 0000 0000 00CC"
		$"DC42 C42C DC2C 42CD 0000 00CF 0000 00F0"
		$"FFC0 0C00 0000 0CCC 22C4 CCCD D202 CCC0"
		$"C000 00CA F0FF AAF0 FFD0 C00C 0C0C CC2C"
		$"4CDC CCDD DC44 CCC0 0000 000E FFFA BAFF"
		$"0FEC 0000 0000 0C0C CCCC C224 CD00 C000"
		$"0000 000C FFFB BFFF 0FEC 0000 00C0 0000"
		$"0C0C 2C4C CCC0 0000 0000 000C FFAD 3FFF"
		$"0FFC 0000 C242 4000 0CCC C2C2 CCCC 0000"
		$"0000 0000 EFBB FFFF 0FFC 00C4 2C42 C000"
		$"0C0D C424 C2CC CCC0 0000 0000 EBDA FFF0"
		$"0FFC 0C2C 42CC 0000 0C00 CCCC 2C42 DCDC"
		$"0000 0000 BB3F FFF0 0FF0 0CC0 042C C000"
		$"0C00 CCC4 02CC 42CD C000 000C B4AF FF00"
		$"0FA0 0000 00C2 4C00 0C00 0000 CCCC C424"
		$"CC00 00CB BBFF FF00 00E0 0000 0000 2C00"
		$"0C00 0000 00CC CCC2 DC00 00C3 B3FF F000"
		$"0FD0 0000 00C4 C000 C000 0000 000C DDDC"
		$"CC00 0CEC 3FAF F000 0FD0 0000 0042 C000"
		$"0C00 0000 00C0 2C2C C000 0BB2 FDEF 0000"
		$"0FC0 0000 00CC CC00 C000 0000 0CC4 C20C"
		$"0000 CA2A ECDF 0000 0FC0 0000 000C D0C0"
		$"CC00 0000 C041 40C0 0000 E2D3 DCCE 0000"
		$"0FC0 0000 000C CCC0 C000 000C 02C4 CCC0"
		$"000D 3B3F C00E 0000 0FEF ECCC CCCC 0000"
		$"C00C 0C0C CC2C CC00 00CB B3FD C00D F000"
		$"0FFF E00C 0CCC DDCD C000 000C C4C2 0000"
		$"00D3 2AAC C00C F000 000F C000 00C2 4224"
		$"2000 000C C42C C000 0C3A 3AEC 0000 E000"
		$"00FF C000 242C 2422 0000 000C CCCC C000"
		$"0DA3 A5CC 0000 DF00 000D 0004 C2C4 2C40"
		$"C000 00CC CC4C C000 CDBA ABC0 0000 CF00"
		$"00FD 00D2 C0C2 4C00 0000 00C0 0CCD C000"
		$"DD0D FC00 0000 CEF0 00FC 0000 0004 C224"
		$"C000 C0CC 0C0C 0C0C B0DD CC0C 00C0 0EF0"
		$"0FF0 0000 000C DC41 4C00 0000 C0C0 C00D"
		$"CCDD CC0C CCCC 0CF0 0FE0 0000 0000 0004"
		$"2C0C C00C 0C0C 000D CDDC 0CC0 CCCC 0CA0"
		$"0FC0 0000 0000 002C 4000 0D24 2000 C0CD"
		$"CBDC 00C0 C000 00E0 0FC0 0000 0000 0C42"
		$"00C0 C402 0000 CCCC DBC0 00CC 00CD DEFF"
		$"FE00 0000 0000 C240 0000 00CC 200C 0CCC"
		$"2CC0 0CCC EFFF FFFF FE00 0000 0000 CCD0"
		$"00C0 0000 C40C CC1C DDCE AEFF FFFF FFF0"
		$"FD00 0000 0000 0DCC 0C00 000C 20CC CCCB"
		$"AFFF FFFF FFF0 0000 FADC C000 0000 00CC"
		$"C0CC 0004 CCDB CDDE FFFF FFF0 0000 0000"
		$"FFFF EEDD 0000 00CD 0DCC EEC0 C0FE 02CF"
		$"FFF0 0000 0000 0000 FFFF FFFF ECCC 000C"
		$"CC0E FFAD CDFE BDEF FF00 0000 0000 0000"
		$"000F FFFF ECDD AEC0 00CE FFFF FFFF FFFF"
		$"FF00 0000 0000 0000 0000 000F FAFF FFFF"
		$"ADDF F000 FFFF FFFF F000 0000 0000 0000"
		$"0000 000F FFFF FFFF FFFF F000 00FF FFFF"
		$"F000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000",
		/* [8] */
		'ich8',
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 00FF"
		$"FDAC 8181 FF00 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 FFFF FC81 F82B"
		$"F6F5 00F5 FD00 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 00FF FDFB FA56 F7F6 F500 0000"
		$"0000 0000 81FF 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 00FF"
		$"FFFD FCFB 56F7 F600 0000 0000 0000 0000"
		$"0000 0000 F8FF 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 00FF FDFC FAF8"
		$"2BF6 F500 0000 0000 0000 0000 0000 0000"
		$"0000 0000 F6FD 0000 0000 0000 0000 0000"
		$"0000 0000 0000 FFAC FBF9 562B F6F5 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 00FC 0000 0000 0000 0000 0000"
		$"00FE ACFC 8156 2BF6 0000 0000 0000 0000"
		$"0000 0000 F500 0106 0107 F507 0106 0100"
		$"0000 0000 00F9 FF00 0000 0000 0000 0000"
		$"0056 F500 0000 0000 0000 0000 0000 0000"
		$"0000 00F5 0707 070E 0D0E 0E0E 0E08 0D01"
		$"0000 0000 002C F400 0000 0000 0000 0000"
		$"FFFB 0000 0000 0000 0000 0000 0000 0000"
		$"00F5 0708 0D0E 0F14 0F15 1532 1515 0E07"
		$"0700 0000 0000 FC00 0000 0000 0000 0000"
		$"FFFC 0000 0000 0000 0000 0000 0000 F5F5"
		$"0707 0715 0E32 150F 380F 1515 1538 1507"
		$"0700 0000 0000 FAFF 0000 0000 0000 0000"
		$"FFFD F600 0000 0000 0000 0000 0000 0107"
		$"0E0E 1539 1515 150E 0E14 0E15 3915 1507"
		$"0700 0000 0000 F7FF 0000 0000 0000 FF00"
		$"FFE0 2B00 F6F5 F5F5 0000 F5F5 0707 0E0E"
		$"1515 150E 0E07 320E 0F15 390E 0F0E 07F6"
		$"0000 0000 0000 F6FE FF00 FFFF 8988 FF00"
		$"FFFF 56F6 F6F5 F6F5 F6F6 01F6 0731 0E32"
		$"1532 0E0E 320E 0E15 3214 0E0F 0DF6 07F5"
		$"0000 0000 0000 00FB FFFF FFAD 5DDD FFFF"
		$"00FF FBF6 0000 0000 0000 F500 F501 2B07"
		$"2B0E F607 0814 1614 150F 0D07 0100 0000"
		$"0000 0000 0000 00F8 FFFF FF5E 3AFF FFFF"
		$"00FF FD2B 0000 0000 0000 0106 00F5 0000"
		$"00F5 F60E 0E15 390E 0E06 01F5 0000 0000"
		$"0000 0000 0000 0007 FDFF DE33 DDFF FFFF"
		$"00FF E02B 0000 0007 0D0F 1515 1500 0000"
		$"002B F60D 0F15 1532 0807 0706 07F5 0000"
		$"0000 0000 0000 00F5 ACE0 3364 DFFF FFFF"
		$"00FF FFF7 0000 0E15 3A15 1540 15F5 0000"
		$"002B F60E 0E39 150F 150E 0E0E 0707 07F5"
		$"0000 0000 0000 0000 8188 33DE FFFF FF00"
		$"00FF FF2B 000E 150E 0E1B 3907 0000 0000"
		$"00F6 F501 0D07 140E 3915 1532 150E 0E07"
		$"0700 0000 0000 00F5 5E5E 64DF FFFF FF00"
		$"00FF FFF6 0007 0700 071B 0F0E 0700 0000"
		$"F5F6 0600 F607 080E 0E0E 0E0F 150E 0E0E"
		$"07F5 0000 0000 00F7 6333 DEE0 FFFF 0000"
		$"00FF ACF5 0000 0000 F507 0E15 390E 0000"
		$"F5F6 F500 0000 F507 070D 2C0D 0E15 3915"
		$"0E07 0000 0000 F564 3464 E0FF FFFF 0000"
		$"0000 FB00 0000 0000 0000 0008 150E 0000"
		$"F5F6 0000 0000 0000 0001 06F5 0E0E 1515"
		$"0E07 F500 0000 5665 39DE E0FF FF00 0000"
		$"00FF 8100 0000 0000 0000 073F 0E00 0000"
		$"F6F6 0000 0000 0000 0000 0107 0E32 0E15"
		$"0EF5 0000 002B 5E33 65FD FEFF FF00 0000"
		$"00FF 5600 0000 0000 0000 0F15 0000 0000"
		$"F6F6 0000 0000 0000 00F5 060E 0E15 0E0E"
		$"07F5 0000 005D 643A B35D FBFF 0000 0000"
		$"00FF F700 0000 0000 0000 0E39 2BF5 F500"
		$"2BF5 0000 0000 0000 0007 0E0E 390E 0E00"
		$"F500 0000 F789 33DB 88F7 56FF 0000 0000"
		$"00FF F600 0000 0000 0000 0607 F8F6 F8F5"
		$"2BF5 0000 0000 0000 0707 320E 150E 0700"
		$"0000 00F5 883A 3ADD FA2B F6FD 0000 0000"
		$"00FE F7F5 00F5 0000 0000 002B 2B2B F600"
		$"F7F6 F500 F500 00F5 070F 1515 0E07 F500"
		$"0000 0032 653A DBB3 F7F6 F5FB 0000 0000"
		$"00FF FEFD FC2B 2B2B 2B2B F6F6 F5F5 F5F5"
		$"2BF5 00F5 F5F5 0007 0715 1433 07F5 0000"
		$"0000 F688 3A40 DDFA 2BF5 00F9 FF00 0000"
		$"00FF FFFF FBF5 F6F6 F62B F72C 3232 3232"
		$"2B00 0000 00F5 F507 0739 0F14 07F5 0000"
		$"00F5 5D65 408F ADF7 F600 002B E000 0000"
		$"0000 00FF 5600 0000 00F5 0E15 4040 4040"
		$"15F5 0000 0000 002B 3215 140E 0700 0000"
		$"00F6 8841 65DD 872B F500 00F5 FB00 0000"
		$"0000 FFFE F500 0007 0E16 3F15 0E15 1C15"
		$"0E00 0000 0000 F52C 0715 080D 0106 0000"
		$"F557 DC41 DBAC F7F6 0000 0000 F9FF 0000"
		$"0000 00FB 0000 070E 4015 0E0E 1615 1507"
		$"F500 0000 0000 F6F6 070E 0E0E 0701 0000"
		$"F681 5E88 B35D 2BF5 0000 0000 F7FF 0000"
		$"0000 FF56 0000 0E15 0EF5 0740 1B0E 0000"
		$"0000 0000 F5F5 2B07 F507 0D2C 0706 00F5"
		$"5657 F5FB FCF7 F600 0000 0000 F6FE FF00"
		$"0000 FFF7 0000 F5F6 0000 0715 3A15 390E"
		$"07F5 00F5 F5F5 2BF6 F5F5 0707 0601 002B"
		$"5DF5 F85D 56F6 F5F5 F5F5 F6F5 0081 FF00"
		$"00FF FFF5 0000 0000 0000 0007 0E15 1516"
		$"1507 00F5 F600 00F5 F6F6 0107 F500 F657"
		$"56F5 F956 F72B F52B F82B 2B2B 00F8 FF00"
		$"00FF FB00 0000 0000 0000 0000 0000 F514"
		$"400E 002B 0000 0007 07F5 F6F6 F500 0756"
		$"F756 FAF8 F6F7 2B00 2BF6 F72B 00F6 FD00"
		$"00FF 5600 0000 0000 0000 0000 00F5 0F15"
		$"0EF5 F5F5 F60E 1515 1506 0000 F6F5 F632"
		$"0882 56F6 00F5 F8F5 2BF6 F500 0001 AC00"
		$"00E0 F600 0000 0000 0000 0000 0008 1B0F"
		$"0600 F600 0E0E 0E39 0700 00F5 2BF6 3108"
		$"33FB 2BF6 00F5 2B00 00F5 2B56 7B87 E0FF"
		$"FFAC 0000 0000 0000 0000 0000 0715 3F07"
		$"00F5 F600 0000 070E 1507 00F6 2B2B 0808"
		$"5C32 F600 F507 F756 82FE E0FF FFFF FFFF"
		$"FF81 0000 0000 0000 0000 0000 F60E 15F5"
		$"00F6 F500 0000 0000 0E0E F52B F62C 082C"
		$"5EF9 F9FB FCD0 E0FF FFFF FFFF FFFF FF00"
		$"FFFA 0000 0000 0000 0000 0000 060E 0E01"
		$"00F6 F500 0000 0032 0E00 2BF8 2C0E 32F9"
		$"FDEA FFFF FFE0 FFFF FFFF FF00 0000 0000"
		$"FFFD FA2B F500 0000 0000 0000 0000 0831"
		$"F5F6 2BF7 F500 F532 3924 81FC 0732 2C88"
		$"FFFF FFFF FFFF FF00 0000 0000 0000 0000"
		$"FFFF FFFF FDFC 81F7 F500 0000 0000 56F8"
		$"F6F8 2BF8 FB81 2BF5 2B2B E081 2C56 5DFE"
		$"FFFF FF00 0000 0000 0000 0000 0000 0000"
		$"FFFF FFFF FFFF FFFF FB2B F6F5 F500 00F6"
		$"F7F8 F581 FFFF FEFA F6F9 EAE0 F95D FCEA"
		$"FFFF 0000 0000 0000 0000 0000 0000 0000"
		$"0000 00FF FFFF FFFF FDF7 F9FB AC81 F8F5"
		$"00F5 F5FF FFFF FFFF FFE0 FFEA FFFF FFFF"
		$"FFFF 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 00FF E0FE E0FF FFFF FFFE"
		$"ACFA FAE0 FF00 0000 FFFF FFFF FFFF FFFF"
		$"FF00 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 00FF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FF00 0000 0000 FFFF FFFF FFFF"
		$"FF00 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000",
		/* [9] */
		'ih32',
		$"CCFF 0500 233D 606E 00A2 FF0A 000D 3F6C"
		$"A5C9 DEF0 FFEC 2A9D FF08 002D 577D 9CBE"
		$"D7F0 FC82 FF02 FC69 0096 FF09 0000 2B44"
		$"5F92 BDDF F5FE 88FF 01B1 0092 FF07 001F"
		$"4B7E B1CC E2F3 8EFF 01E0 248D FF08 0038"
		$"5F83 A3C4 DDF4 FE92 FF01 F94D 88FF 0712"
		$"304C 6B9F C5E4 F888 FF01 FEFE 80FD 06FC"
		$"FDFD FCFD FDFE 82FF 0182 0087 FF02 94EF"
		$"F78C FF80 FD01 FAFA 82F9 03FA FAFD FE81"
		$"FF01 C40E 86FF 0100 698C FF06 FDFC FAF9"
		$"F8F6 F682 F503 F6F7 FAFD 81FF 01F0 4C86"
		$"FF02 0042 F588 FF04 FEFE FDFB FA85 F680"
		$"F502 F6FA FD82 FF01 8300 85FF 0200 24E3"
		$"87FF 13FE FDFC F9F7 F6F3 F5F5 F6F7 F8F7"
		$"F6F5 F4F4 F5FA FD82 FF01 B500 83FF 1100"
		$"FF00 0DC7 F9EA E9EE F3F7 FAFC FDFD FBFA"
		$"F980 F502 F7F9 F980 F707 F6F6 F5F7 F9FB"
		$"FDFE 82FF 29DE 2100 FF00 0058 5A00 FF00"
		$"0098 E4E4 E5E3 E3E4 E5E6 E6E8 E7E9 EDEE"
		$"F3F7 F9F9 F8F6 F7F7 F6F7 F7FA FBFC FE83"
		$"FF01 FA5E 8000 2238 B65C 0000 FF00 5AD7"
		$"FBFF FFFE FCFC F9F4 EDE5 E1DC D7E2 F4FB"
		$"F8F6 F4F5 F5F7 FAFC FDFE 86FF 00AC 8000"
		$"08A3 AE12 0000 FF00 2AD0 83FF 00FE 81FF"
		$"0AFE FBDD E8FA F7F5 F5F8 F9FC 80FE 87FF"
		$"05DB 1C00 4EBB 5380 0003 FF00 09C1 80FF"
		$"06FE F9F6 F4F4 F6FD 80FF 0CD8 E5FA F7F5"
		$"F5F7 F8FB FCFD FDFE 86FF 05F5 3F11 AD96"
		$"2A80 001F FF00 00B9 FFFE F9F3 F2F4 F3F1"
		$"F5FE FFFF FDD7 EBFB F6F4 F5F6 F7F7 F9FA"
		$"FAFC FDFE 84FF 14FC 6B59 DF54 0200 00FF"
		$"FF00 04CB FFF9 F3F8 F8F3 F6FC 81FF 08FB"
		$"D8F1 FEFB F9F7 F7F6 81F5 03F8 F9FB FD82"
		$"FF05 FEF2 84A3 8F2B 8000 0DFF FF00 08DB"
		$"FFFC FBFF FAF3 F5F9 FB80 FF11 F6D8 F5FE"
		$"FCFC FAF9 F8F6 F7F7 F5F7 F7F8 FBFE 81FF"
		$"07FA C49D CB49 0900 0080 FF02 002F EF82"
		$"FF09 FBF8 F6F2 F8FF FFEF DAF9 80FF 0BFD"
		$"FCFB FBFA F9F7 F6F5 F3F8 FC80 FF05 FDE8"
		$"86CD 9524 8000 81FF 0051 85FF 07FA F4FA"
		$"FFFF E8DC FB84 FF07 FEFD F9F8 F7F3 F8FC"
		$"80FF 07F9 AA9E C455 0700 0081 FF01 0069"
		$"84FF 02FC F3F9 80FF 02E0 DFFD 84FF 12FD"
		$"FCF8 F7F7 F5F9 FDFF FFFD D883 D787 4C0F"
		$"0000 81FF 0100 9C84 FF01 F6F5 81FF 01DA"
		$"E384 FF12 FEFC FBF6 F6F7 F8FB FEFF FDF4"
		$"8CAB C849 7B4F 0082 FF01 00B8 84FF 07FB"
		$"E7CD E9EE FDD3 E984 FF12 FDFA F7F4 F8FA"
		$"FDFE FFFF FBC2 7BD1 825B B19F 0882 FF01"
		$"10D1 85FF 06F5 B9DB B4F1 CEEB 83FF 13FE"
		$"FAF7 F6F5 F9FC FEFF FFFD E87C BFC6 5182"
		$"CFD4 2682 FF06 10C3 EDF1 F6FB FE80 FF13"
		$"D6C2 CFDA F5C2 DFF3 F6FB FEFF FEFD F6F5"
		$"F5F7 FCFE 80FF 09F9 BB86 D485 41A9 E2F6"
		$"5082 FF1C 0016 2151 C5CC CCCD D1D9 DBE5"
		$"E2E9 E9CE EFF7 F1EC ECF3 F9FA F5F6 F7FB"
		$"FD80 FF0B FDD9 7FD4 B15F 79CB F0FF 8B00"
		$"81FF 8000 2853 F0E4 DDD7 D0C9 C5C4 C5CA"
		$"CFDF FBFF FFFD F5EF EDF6 F5F6 F7FB FDFF"
		$"FFFE F398 8AE3 7646 A8E0 F9FF C912 83FF"
		$"0100 9880 FF09 FEFA F3EA E4DE D9DC EDFD"
		$"81FF 16F9 E0F1 F4F7 F9FD FEFF FFFA D877"
		$"BAA9 4963 C9EE FEFF F451 82FF 0F00 13E0"
		$"FFFF FDF7 F4F3 F5F5 F3F0 F2F8 FE81 FF12"
		$"EBD7 F3F7 F8FA FCFE FFFE F498 79BF 834D"
		$"A6DF F880 FF01 8900 82FF 0D5B FFFF FBF6"
		$"F2F4 F7F6 F3F4 F6FB FD82 FF12 D8DB F8F9"
		$"F9FA FCFF FFFA D780 9574 3F7B CCEF FD80"
		$"FF01 B700 81FF 0C00 91FF FFF8 F4F8 FDFA"
		$"F0F3 F9FE 82FF 1AF9 EEC8 E8FD FBF9 F9FB"
		$"FEFC F3A8 98E3 6C46 B1E2 FBFF FFFA FFE1"
		$"2300 80FF 3100 BBFF FFFE FDFE FFFC F4F3"
		$"F3F4 F7FB FFFF F8E5 E9CE DEF6 FEFD FCFD"
		$"FEF8 CF88 E6A4 8BA1 D5F5 F2F2 EADB EAFE"
		$"6600 FFFF 000D E383 FF28 FEFC F8F6 F4F3"
		$"F4FB FFEA E9FF FCE9 E4EA F3FB FEFD F096"
		$"A2EA 869B BFC9 EFD1 B1CE C8D4 FFB1 00FF"
		$"FF00 5388 FF24 FDF5 F1F9 FBDA F4FF FFFE"
		$"FAF0 E1E4 F6FA E29E D2A0 7FAD DFB9 CCFF"
		$"C7D5 B8D0 FFE2 21FF FF00 9C87 FF25 FEF7"
		$"F3F8 FEED DFFD F8F6 F4F5 FDFE F2DC ECD6"
		$"CFE1 7A99 D1F5 EBB2 EAC8 EAEC F8FF F13B"
		$"FFFF 0FDE 87FF 25FA F1F6 FEFD E2F4 FBF8"
		$"F7F5 FBFF FFF0 CFD9 D7F7 C676 BCEA FFE9"
		$"CDFC FBEA CEA4 7C55 0F00 0035 F586 FF1E"
		$"FDF5 F2FC FFF0 DFFE FFFF FCF7 F6FA FFDD"
		$"CFDE F4FC AA9D DFFA F7E7 CF99 5B28 0983"
		$"0000 5E87 FF06 FCF5 F5FE FFE1 EB82 FF0E"
		$"F9FC F1CA D0E6 EDD2 7F8A 8767 4427 0F85"
		$"0002 FF00 7987 FF15 FEF9 F8FF FCDF E9FC"
		$"FFFF FCEA F1FC D9B0 D2D9 DB99 2A09 8600"
		$"82FF 0400 2878 C8F1 86FF 11F6 C7F0 DFC5"
		$"C6F0 FFEF D1B1 E965 5DEC D3BF 5984 0086"
		$"FF80 0006 0322 4871 B9F1 FE80 FF12 FDB0"
		$"A7E0 A4D2 AE56 6CC6 EEDE D407 5CE3 B49C"
		$"1480 008A FF85 0016 5ACC DCEA F7FF F8D5"
		$"C2A5 F25F 0000 1D7C CF82 0022 8182 4C80"
		$"008E FF82 000B 31B1 9260 3F5F B6EE F3F8"
		$"EB14 8100 0111 0980 0000 0281 0092 FF03"
		$"0009 200B 8100 051B 3E6D 7A06 0080 FF86"
		$"0093 FF8B 0082 FF84 00BC FFCC FF05 0023"
		$"3D5F 6C00 A2FF 0A00 0D3F 6AA2 C5D9 ECFF"
		$"E92A 9DFF 0900 2D56 7899 BBD4 EDFA FE81"
		$"FF02 FA67 0096 FF09 0000 2540 5D8E B8DB"
		$"F1FC 88FF 01AD 0092 FF08 001F 467B ADC7"
		$"DEEF FE8D FF01 DC24 8DFF 0800 385C 809E"
		$"C1DA F1FC 92FF 01F6 4A88 FF08 1230 4A6A"
		$"9BC1 E0F4 FD86 FF0D FBF7 F2EA E6E3 DFE1"
		$"E1DF E6EB F8FC 81FF 0180 0087 FF02 90EA"
		$"F489 FF10 FEFE FCF0 E3D8 BEB3 AAA0 A6A5"
		$"9FB3 C1E8 F481 FF01 C10E 86FF 0100 678B"
		$"FF10 FCE9 D8AD A298 7F7C 766B 7575 6C78"
		$"84C0 DF81 FF01 ED4A 86FF 0200 40F2 87FF"
		$"13FC F3F0 E0C8 B688 8B88 7B80 7F73 7774"
		$"6570 7BBB DD82 FF01 8100 85FF 0200 24DF"
		$"85FF 15FE FDF6 DBD3 A68C 7A4E 6872 7D91"
		$"9685 8077 616A 74B7 DB82 FF01 B000 83FF"
		$"2200 FF00 0DC3 F8EA E9EE F3F7 FAFA EEE8"
		$"C6A9 A16C 7078 8DA3 AA98 938B 7275 7588"
		$"A8BC E5F2 82FF 2ADA 1C00 FF00 0033 2700"
		$"FF00 0096 E2E4 E5E3 E3E4 E5E4 D6CF A998"
		$"9575 8494 AAAA A388 8986 7C8A 92AC C9D9"
		$"F2F9 82FF 01F8 5B80 0023 1875 1400 00FF"
		$"0058 D6FB FFFF FEFD FEFE F8EF DAD2 C6B8"
		$"B7C1 CEA3 845A 6E78 8EAF C2E3 F5FE 85FF"
		$"00A8 8000 0173 6880 0003 FF00 28CE 82FF"
		$"14F5 E7E6 F4FF FFFE FFD9 D4AE 8A74 6E93"
		$"A8CF E7F3 FBFD 86FF 05D7 1D00 2777 0C80"
		$"0003 FF00 09C0 80FF 06EB AD83 6D5D 7BEA"
		$"80FF 0FD4 D5AB 8771 6F90 A2C0 D5DF E5EF"
		$"F5FD FE83 FF04 F141 006D 4681 0020 FF00"
		$"00B9 FFFB B05B 506A 5B3F 7CEC FFFF FED2"
		$"D9AB 836A 647C 868F A2AA B4D0 E0F5 FA83"
		$"FF04 FC65 329A 0780 000D FFFF 0004 CCFF"
		$"A95E 97A0 5378 C7F9 80FF 12FC D6EA E1C1"
		$"AB8C 857E 6F77 7877 95A7 C6DE F8FE 80FF"
		$"04FE F558 6332 8100 23FF FF00 08DC FFCB"
		$"CCFF B14E 71A0 CCF7 FFFF F6D7 F2F1 DBCC"
		$"AFA3 9886 8987 7989 919E C5EC FC80 FF04"
		$"FCBB 5A84 0880 0080 FF02 002F EF81 FF21"
		$"FBCF 9A76 4DA3 FFFF EFDA F9FF FDFA E6D6"
		$"CAB6 B1A8 8879 705B 99D4 F9FE FFFE E543"
		$"8033 8100 81FF 0051 84FF 1FFE AC58 B4FF"
		$"FFE8 DCFB FFFF FEFB F9F8 F8EC DFAC 9281"
		$"5A97 CFF8 FFFF FD9E 4761 0280 0081 FF01"
		$"0069 84FF 02CF 53A6 80FF 02E0 DFFD 82FF"
		$"14FE FEE9 D6A0 8F85 76AB DBFA FFFE D24F"
		$"9530 2612 0000 81FF 0100 9C83 FF03 FD83"
		$"65F0 80FF 01DA E383 FF13 FEF9 D1B4 797D"
		$"83A8 CDF3 FEFE F963 455D 0271 4F00 82FF"
		$"0100 B883 FF08 FEA2 7EC5 EBEE FDD3 E982"
		$"FF14 FEF9 D6A8 8B67 97B4 E6F2 FEFE FDBF"
		$"377C 1332 B39B 0882 FF01 10D1 84FF 07E6"
		$"B5AC DDB4 F1CE EB82 FF14 F8EC BA95 7F74"
		$"ACCC F4FA FFFD E850 6563 0073 D2D0 2582"
		$"FF06 10C3 EDF1 F6FB FE80 FF20 D5C2 CFDA"
		$"F5C2 DFF3 F6FB FEFF EBD5 8876 6F8C CAEB"
		$"FEFF FFFE A31F 660A 18AA E3F2 4F82 FF2B"
		$"0016 2151 C5CC CBCD D2DB E0EB E9EE EDD2"
		$"EFF6 F1EC ECF5 D7BC 6E7D 89BC E6FB FFFF"
		$"FEDE 4451 3407 6CCE F1FF 8900 81FF 8000"
		$"2853 F0E4 DED8 D0C1 AF9D 99A2 AAC4 F8FF"
		$"FFFD F5F3 CBB5 6980 92CC EEFE FFFE F679"
		$"2157 0F1D AAE0 FAFF C512 83FF 0100 9881"
		$"FF08 E09D 6349 3C37 2E75 EE81 FF16 FEBD"
		$"AC5F 8098 DCF4 FFFF FBDA 3032 1800 53CC"
		$"EEFE FFF1 4E82 FF0F 0013 E0FF FDDD 8E5B"
		$"5570 6F5B 3F58 A0F5 81FF 12EF BBBC 849C"
		$"ACDA F2FF FEF7 851C 2A04 2FA8 DFF8 80FF"
		$"0185 0082 FF0D 5BFF FFD1 894C 668B 825F"
		$"617A BDEB 82FF 12DB C6CE 9CA6 AED2 EEFC"
		$"FBD6 6465 2B00 75CE EEFD 80FF 01B3 0081"
		$"FF0C 0091 FFFF 9A62 9FED BC37 59A8 F382"
		$"FF1A F9EE C9DD E7BC B1AC C1E6 F6F4 9F8B"
		$"E464 3BB1 E2FB FFFF FAFF DD23 0080 FF31"
		$"00BB FFFF E7DE F3FF D06A 565D 6B90 C6F5"
		$"FFF8 E5E9 CEDC F0E6 D4CB DBF0 F5CC 77E4"
		$"9F77 9FD6 F5F2 F2EA DBEB FC63 00FF FF00"
		$"0DE3 83FF 28F6 D19D 7B66 566B C4FF EBE9"
		$"FFFD EEE8 E0DA DCEA F4EF 8F97 EC81 92BF"
		$"C9EF D1B1 CEC8 D4FF AD00 FFFF 0053 87FF"
		$"25FE E475 429C F9DB F5FF F0D8 CFE6 E3E1"
		$"F3F9 E290 C499 7EAE DFB9 CCFF C7D5 B8D0"
		$"FFDD 20FF FF00 9C87 FF25 EA8A 5F99 E9EE"
		$"E2E7 9D85 6D65 D9FF F2DB EECE A3B2 619A"
		$"D2F5 EBB3 EAC8 EAEC F8FF EB39 FFFF 0FDE"
		$"86FF 26F9 B546 87E3 FFE3 F5AA 978F 6DBD"
		$"FFFF F0CF D9BC C493 65BE EBFF E9CD FAF9"
		$"E8CA A078 530F 0000 35F5 86FF 1EDC 704E"
		$"D4FF F0DF FEF8 FFCF 8C7F B6FF DED1 CDCB"
		$"CB85 9BE0 F9F4 E3CA 9558 2606 8300 005E"
		$"87FF 06DA 7B74 E3FF E1EB 81FF 0FF6 91AE"
		$"F2CC D0CC C2AC 7288 8464 4225 0C85 0002"
		$"FF00 7987 FF07 ECAD 8FDE FCDF E9FC 80FF"
		$"0AA9 81FC DAAE BDB0 B381 2409 8600 82FF"
		$"0400 2878 C8F1 85FF 12EE BBB1 EEDF C5C6"
		$"F0FF F490 77ED 6555 CEA8 9E4A 8400 86FF"
		$"8000 0603 2248 71B9 F1FE 80FF 12FB AAA5"
		$"E0A4 D2AD 546A C6E8 D2D3 0759 CF99 8712"
		$"8000 8AFF 8500 1658 CCDB EAF7 FFF8 D5C2"
		$"A5F2 5F00 001D 7DD1 8100 1F79 7747 8000"
		$"8EFF 8200 0B31 AE8F 5D3D 5FB6 EEF3 F8EB"
		$"1481 0001 1109 8000 0002 8100 92FF 0300"
		$"0920 0B81 0005 1B3E 6D7A 0600 80FF 8600"
		$"93FF 8B00 82FF 8400 BCFF CCFF 0500 233D"
		$"5C6A 00A2 FF0A 000D 3B67 9EC1 D5E8 FFE6"
		$"2A9D FF09 002D 5376 96B7 D0EA F7FD 81FF"
		$"02F8 6500 96FF 0900 0024 405A 8BB5 D7EE"
		$"F888 FF01 AA00 92FF 0800 1F43 79A9 C3D9"
		$"ECFB 8DFF 01D7 208D FF08 0033 597E 9BBC"
		$"D6EF FA92 FF01 F24A 88FF 0812 3049 6799"
		$"BDDC F1FA 86FF 0DFB F7F2 E9E5 E2DF E1E1"
		$"DEE5 EAF7 FB81 FF01 7C00 87FF 028D E6F1"
		$"89FF 10FE FEFC F0E2 D7BD B2A9 9FA5 A59F"
		$"B2C0 E7F3 81FF 01BD 0E86 FF01 0064 8BFF"
		$"10FC E8D7 ACA2 987E 7A74 6A74 746A 7783"
		$"C0DF 81FF 01E9 4A86 FF02 003F EE87 FF13"
		$"FCF3 F0E0 C8B5 868A 877A 807E 7176 7364"
		$"6F7A BBDD 81FF 02FC 7E00 85FF 0200 22DB"
		$"85FF 15FE FDF5 DAD2 A58B 784D 6672 7B90"
		$"9585 7F76 5F68 73B8 DB82 FF01 AE00 83FF"
		$"2200 FF00 0DBE F7EA E9EE F3F7 FAFA EEE8"
		$"C6A8 A06A 6F77 8CA3 AA98 938A 7074 7587"
		$"A8BC E4F2 82FF 2AD7 1C00 FF00 001C 1400"
		$"FF00 0092 E1E4 E5E3 E3E4 E5E4 D6CF A898"
		$"9474 8393 A9A8 A287 8884 7A89 91AC C9D9"
		$"F2F9 82FF 01F6 5880 0023 0450 0B00 00FF"
		$"0056 D3FB FFFF FEFD FEFE F8EF DAD2 C6B8"
		$"B6C0 CEA2 8358 6C77 8CAE C1E3 F5FE 85FF"
		$"00A4 8000 0146 4880 0003 FF00 27CD 82FF"
		$"14F5 E6E5 F3FF FFFE FFD9 D3AD 8973 6D92"
		$"A8CE E6F3 FBFD 86FF 05D2 1C00 1457 0280"
		$"0003 FF00 09BF 80FF 06EB AC82 6C5B 7AEA"
		$"80FF 0FD4 D5AB 8670 6D8E A1BF D4DF E5EF"
		$"F5FD FE83 FF04 EE41 0050 3881 0020 FF00"
		$"00B9 FFFB AF59 4E69 5A3E 7AEB FFFF FED2"
		$"D8AA 8269 627A 848E A1AA B4D0 E0F5 FA83"
		$"FF03 FA60 1879 8100 0DFF FF00 04CC FFA8"
		$"5E96 9F52 76C7 F980 FF12 FCD6 EAE1 C0AA"
		$"8A84 7C6D 7678 7694 A6C5 DEF9 FE81 FF03"
		$"F64E 4322 8100 23FF FF00 08DC FFCB CCFF"
		$"B14C 6F9F CCF7 FFFF F6D7 F2F1 DBCB AEA2"
		$"9785 8885 7887 909D C5EC FC80 FF03 FDBA"
		$"4162 8100 80FF 0200 2FEF 81FF 21FB CF99"
		$"754B A2FF FFEF DAF9 FFFD FAE6 D6C9 B6B0"
		$"A786 786F 5A99 D3F9 FEFF FEE5 3460 2181"
		$"0081 FF00 5184 FF1E FEAC 57B3 FFFF E8DC"
		$"FBFF FFFE FBF9 F8F8 ECDF AB91 8159 96CE"
		$"F8FF FFFE 9B27 4281 0081 FF01 0069 84FF"
		$"02CF 52A5 80FF 02E0 DFFD 82FF 14FE FEE9"
		$"D69E 8D84 76AA DBFA FFFF D341 5A16 1B12"
		$"0000 81FF 0100 9C83 FF03 FD82 63F0 80FF"
		$"01DA E383 FF13 FEF9 D1B4 777C 82A8 CDF2"
		$"FEFE FA5A 2837 006B 4E00 82FF 0100 B883"
		$"FF08 FEA1 7DC5 EBEE FDD3 E982 FF09 FEF9"
		$"D5A8 8A65 96B4 E6F2 80FE 07BC 1C4C 002E"
		$"B297 0082 FF01 10D1 84FF 07E5 B4AC DDB4"
		$"F1CE EB82 FF14 F8EC B994 7E73 ABCC F4FA"
		$"FFFE E840 393E 0071 D2CD 2582 FF06 10C3"
		$"EDF1 F6FB FE80 FF20 D5C2 CFDA F5C2 DFF3"
		$"F6FB FEFF EBD5 8675 6E8B CAEB FEFF FFFE"
		$"9F07 3200 18AB E3EF 4C82 FF1D 0016 2151"
		$"C5CC CBCD D2DB E0EB E9EE EDD2 EFF6 F1EC"
		$"ECF5 D7BC 6D7C 88BC E6FB 80FF 0ADB 312D"
		$"1B00 6ACE F1FF 8600 81FF 8000 2853 F0E4"
		$"DED8 D0C1 AE9D 99A1 A9C4 F8FF FFFD F5F3"
		$"CBB5 677F 91CC EEFE FFFE F76C 0631 001B"
		$"AAE0 FAFF C112 83FF 0100 9881 FF08 E09C"
		$"6248 3A35 2C74 EE81 FF16 FEBC AB5E 7F97"
		$"DCF4 FFFF FCD9 1F0F 0700 53CC EEFE FFED"
		$"4C82 FF0F 0013 E0FF FDDC 8D5A 536F 6D59"
		$"3E57 9FF5 81FF 17EF BABC 839B ABDA F2FF"
		$"FEF7 8200 0800 2FA8 DFF8 FFFF FC81 0082"
		$"FF0D 5BFF FFD0 884A 648A 815D 5F79 BDEA"
		$"82FF 12DB C6CE 9BA6 AED2 EEFC FBD4 5050"
		$"1A00 75CE EEFD 80FF 01B0 0081 FF0C 0091"
		$"FFFF 9961 9EED BB36 58A7 F382 FF1A F9EE"
		$"C9DD E7BC B0AC C1E6 F6F5 967D E45D 38B1"
		$"E2FB FFFF FAFF DA23 0080 FF31 00BB FFFF"
		$"E7DE F3FF D068 545B 698F C5F5 FFF8 E5E9"
		$"CEDC F0E5 D3CB DBF0 F5C8 66E1 9F70 9DD6"
		$"F5F2 F2EA DBEB FA61 00FF FF00 0DE3 83FF"
		$"28F6 D19C 7A64 546A C4FF EBE9 FFFD EEE8"
		$"DFD9 DCEA F4F0 858D ED83 93BF C9EF D1B1"
		$"CEC8 D4FF AA00 FFFF 0053 87FF 25FE E373"
		$"409C F9DB F5FF F0D8 CFE6 E3E1 F3F9 E28B"
		$"BB92 7CAE DFB9 CCFF C7D5 B8D0 FFD9 20FF"
		$"FF00 9C87 FF25 EB8A 5E98 E8EE E2E7 9C84"
		$"6C64 D9FF F2DB EFCD 9194 4A97 D2F5 EBB3"
		$"EAC8 EAEB F7FF E538 FFFF 0FDE 86FF 26F9"
		$"B545 87E3 FFE3 F5A9 968E 6CBC FFFF F0D0"
		$"D9AF A87C 5CBE EBFF E8CB F8F6 E4C6 9C74"
		$"500F 0000 35F5 86FF 1EDB 6F4C D3FF F0DF"
		$"FEF8 FFCF 8B7E B6FF DED3 C1AB A772 9BDF"
		$"F6F0 DEC4 9055 2406 8300 005E 87FF 06DA"
		$"7A72 E3FF E1EB 81FF 0FF5 90AD F2CD CFB2"
		$"9E87 5C86 8161 3F23 0C85 0002 FF00 7987"
		$"FF07 ECAC 8EDE FCDF E9FC 80FF 0AA9 80FC"
		$"D9AB B29B 9E70 1D09 8600 82FF 0400 2878"
		$"C8F1 85FF 12EE BBB1 EEDF C5C6 EFFF F48F"
		$"76ED 654C B492 8D43 8400 86FF 8000 0603"
		$"2248 71B9 F1FE 80FF 12FB AAA5 E0A4 D2AC"
		$"526A C6E8 D3D3 0A50 B381 780E 8000 8AFF"
		$"8500 1657 CADA E8F6 FFF8 D5C2 A5F2 5F00"
		$"001D 7DD1 8100 1C6D 6C44 8000 8EFF 8200"
		$"0B2F A88B 5A3C 5FB6 EEF3 F8EB 1481 0001"
		$"1109 8000 0002 8100 92FF 0300 041E 0981"
		$"0005 1B3E 6D7A 0600 80FF 8600 93FF 8B00"
		$"82FF 8400 BCFF",
		/* [10] */
		'h8mk',
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0009"
		$"1D3A 5A58 0A00 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0513 2C59 8EC2"
		$"E2F9 FFE9 3000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0004 1C46 729C BAD5 EEFD FFFF"
		$"FFFF FFFF 7904 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0001"
		$"0C23 3F5D 7FAB D8F7 FFFF FFFF FFFF FFFF"
		$"FFFF FFFF C016 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0007 1836 659B"
		$"C8E9 FAFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF F038 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0824 507C A2C0 DCF2 FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FF63 0000 0000 0000 0000 0000"
		$"000E 2A49 668B B7DF FCFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FF95 0900 0000 0000 0000 0000"
		$"007A F8FD FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFD0 2400 0000 0000 0000 0000"
		$"0387 FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFB 5D00 0000 0000 0000 0000"
		$"066F FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF 9704 0000 0000 0000 0000"
		$"0453 F7FF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF C516 0000 0000 0000 0100"
		$"0237 E3FF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF E836 0100 0108 878A 0700"
		$"0121 BFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FF6F 0301 0175 FFB8 1003"
		$"0013 93FF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFB9 1201 29E4 FF6C 1405"
		$"000C 6CFA FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFEC 3513 B6FF D944 1803"
		$"0009 51ED FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF 5D5A FFFF A830 1001"
		$"0006 42E0 FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF A6CD FFE9 601F 0700"
		$"0003 3DE2 FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF F6FD FFAA 3612 0200"
		$"0003 3DEC FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FC70 2408 0000"
		$"0002 4BF7 FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF CC42 1602 0000"
		$"0000 67FF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFA 812B 0B00 0000"
		$"0002 80FF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFF6 711D 0300 0000"
		$"000A A1FF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF 9413 0000 0000"
		$"0013 BFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF CB1D 0000 0000"
		$"001F D7FF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF F23C 0000 0000"
		$"001F CFFD FCFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FF66 0000 0000"
		$"000A 2D54 9FFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FF9B 0B00 0000"
		$"0002 030D 80FF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFD5 2900 0000"
		$"0000 000B A1FF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF 6100 0000"
		$"0000 0128 E2FF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF 9C06 0000"
		$"0000 0062 FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF C718 0000"
		$"0000 039C FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF EB39 0100"
		$"0000 15C2 FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FF77 0300"
		$"0002 27E2 FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFBE 1500"
		$"0002 56FD FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFF0 3600"
		$"0007 9EFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFD 5100"
		$"0020 DEFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFA EDD7 BF92 3104"
		$"0143 F9FF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFC F0D5 B08B 6F54 3C24 0F03"
		$"036F FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFF3 D6B7 9C80 664D 382A 1F13 0B06 0200"
		$"058D FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFA FDFF FFFF"
		$"C889 5E43 3124 1911 0905 0200 0000 0000"
		$"0D45 A1DD FCFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF CBBE FFFF FFD3"
		$"6734 170B 0603 0100 0000 0000 0000 0000"
		$"0914 2340 6082 A4D6 FFFF FFFF FFFF FFFF"
		$"FFFF FFF5 D5CD F2FF FFEA 628D FFFF F37A"
		$"340F 0200 0000 0000 0000 0000 0000 0000"
		$"0206 0C12 1A22 2E54 C2FF FFFF FFFF FFFF"
		$"FFFF FFB1 6051 68A4 DA97 2452 D3E3 A13E"
		$"1D04 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0001 0307 0E20 80F9 F1DB C8C8 E1FA"
		$"FFFF F356 1B0B 0813 2B1C 112B 525E 4523"
		$"0D01 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 000B 366E 6C5C 534E 5365"
		$"7E9C 962A 0800 0000 0101 0714 2428 1D0D"
		$"0400 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0002 0C17 1813 1010 141A"
		$"2024 1D11 0300 0000 0000 0105 090A 0603"
		$"0100 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000",
		/* [11] */
		'ics#',
		$"0006 0188 07CC 1C78 70FC C5FB DB01 43EB"
		$"621F 240F 34CC 130C 183E 0AFF 0FFF 07FE"
		$"0006 018E 07DC 1FF8 7FFC FFFF FFFF 7FFF"
		$"7FFF 3FFF 3FFC 1FFC 1FFE 0FFF 0FFF 07FE",
		/* [12] */
		'ics4',
		$"0000 0000 0000 0BB0 0000 000A A000 C1C0"
		$"0000 0AAA CE0B 1C00 000A AA0C CBC2 E000"
		$"0AAA 0C0C 2C2E CC00 AA0C 0CCB BBAB C2CC"
		$"AA0C CCBB CCCC CC2E 0A00 CC4B AB3C 2BCA"
		$"0AA0 CCBC CCCE EEBA 00A0 C3CC C4CC ABAA"
		$"00AA CBCC 2CCC AA00 000A C243 CCCC AA00"
		$"000A ACCC CCAA AEA0 0000 A0CC AAEA EAEA"
		$"0000 AAAE AEAE AEAE 0000 0AEA EAEA EEA0",
		/* [13] */
		'ics8',
		$"0000 0000 0000 0000 0000 0000 0034 3300"
		$"0000 0000 0000 00FF FF00 0000 342D 5D00"
		$"0000 0000 00FF FFFF 8181 072D 575D 0000"
		$"0000 00FF FFFF F5F6 2C33 3334 8800 0000"
		$"00FF FFFF 00F6 F60E 5D5E 33FD 3332 0000"
		$"FFFF 00F5 F6F8 325E 5E33 AD64 5D0E 2C59"
		$"FFFF F52B F8F7 825D 335D 3208 0832 33E0"
		$"00FF F5F5 F856 5D64 8888 8882 5D5E 5DFF"
		$"00FF FFF6 F632 647B 2BF7 F788 FD88 88FF"
		$"0000 FFF5 F8DB FA2B F732 39F9 FF88 E9FF"
		$"0000 FFFF 3239 F732 3939 32F8 FFFF 0000"
		$"0000 00FF 0E39 1540 38F8 F856 FFFF 0000"
		$"0000 00FF FF32 32F7 2C56 FFFE FDFD FD00"
		$"0000 0000 FFF6 F7F8 F4FE FDFD FDFD FDFD"
		$"0000 0000 FFFF FFFD FDFD FDFD FDFD FDFD"
		$"0000 0000 00FE FDFD FDFD FDFD FDFD FD00",
		/* [14] */
		'is32',
		$"8AFF 01BB BC85 FF01 0000 80FF 02BB D48F"
		$"83FF 8000 0567 7BE9 D0BF 8F82 FF80 0006"
		$"ECDC D6C8 BEBB 7081 FF80 0069 F2E4 DDDF"
		$"A5A5 BD5A B3DE FFFF 0000 F6ED E4AF C7A2"
		$"99B6 2A86 B5D2 DF90 0000 EFD1 A0B6 80A3"
		$"BFC4 CAE6 E5D9 D120 FF00 F3E7 A5A3 977D"
		$"6260 6E82 A9A6 A020 FF00 00E4 DEB7 9E83"
		$"C4BE B552 3F59 6020 FFFF 00EB B18E 7AC7"
		$"C2C3 C6A3 0059 2020 FFFF 0000 D8D6 CBC8"
		$"D0CB B8AC 0000 82FF 0A00 E4D5 D2D4 C5B4"
		$"AE97 0000 82FF 0800 00CE CABE B79D 0013"
		$"8023 82FF 0500 DAC0 A500 1A83 2381 FF80"
		$"0086 2382 FF00 0F86 2300 FF8A FF01 979C"
		$"85FF 0100 0080 FF02 97B5 6F83 FF80 0005"
		$"676D D4B8 9D72 82FF 8000 06EC D8B5 8BA0"
		$"9745 81FF 8000 69F2 E4D8 B361 7D99 2B78"
		$"B9FF FF00 00F7 EDE4 AF9D 5C6D 9019 3F77"
		$"A4BB 8700 00EF D1A0 B558 6986 8899 B4B5"
		$"AAA0 0EFF 00F3 E7A5 A364 5635 2E3B 5279"
		$"716A 0EFF 0000 E4DD 8751 80C4 BEB5 471F"
		$"3038 0EFF FF00 EB9B 2174 C7B9 9073 8100"
		$"300E 0EFF FF00 008A 5DBD A15A 5C95 AC00"
		$"0082 FF0A 00AB 625A 4481 B2AE 9600 0082"
		$"FF08 0000 9B8C B5B6 9D00 1380 2382 FF05"
		$"00DB C0A5 001A 8323 81FF 8000 8623 82FF"
		$"000F 8623 00FF 8AFF 014B 4C85 FF01 0000"
		$"80FF 024B 5760 83FF 8000 0567 65CA 764C"
		$"5F82 FF80 0006 ECD4 A373 5B4B 3581 FF80"
		$"0069 F2E4 D697 4F3E 4D21 5EA4 FFFF 0000"
		$"F6ED E4AE 854C 3A4D 1335 5C89 A683 0000"
		$"EFD1 A0B5 4758 756F 819A 9A8E 840C FF00"
		$"F3E7 A5A3 5432 2C24 3044 665D 580C FF00"
		$"00E4 DE89 537A C4BE B545 1D2A 310C FFFF"
		$"00EB 9B24 74C7 B991 7581 002A 0C0C FFFF"
		$"0000 8C61 BDA2 5D60 96AC 0000 82FF 0A00"
		$"AD65 5E48 83B3 AE97 0000 82FF 0800 009C"
		$"8EB5 B69D 0013 8023 82FF 0500 DBC0 A500"
		$"1A83 2381 FF80 0086 2382 FF00 0F86 2300"
		$"FF",
		/* [15] */
		's8mk',
		$"0000 0000 0000 0000 0000 0000 009E FF00"
		$"0000 0000 0000 009E FF00 0000 9EFF FF00"
		$"0000 0000 009E FFFF FF9E 00FF FFFF 0000"
		$"0000 009E FFFF FFFF FFFF FFFF FF00 0000"
		$"009E FFFF FFFF FFFF FFFF FFFF FFFF 0000"
		$"FAFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"9EFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"00FF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"009E FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"0000 FFFF FFFF FFFF FFFF FFFF FF6B 9EFF"
		$"0000 9EFF FFFF FFFF FFFF FFFF FF9E 0000"
		$"0000 00FF FFFF FFFF FFFF FFFF FFFA 0000"
		$"0000 009E FFFF FFFF FFFF FFFF A317 0500"
		$"0000 0000 FFFF FFFF FFFF F6DF B36B 1F02"
		$"0000 0000 9EFF FFFF F9E5 D0B5 8E55 1701"
		$"0000 0000 00FD E39A 7350 351F 1008 0200",
		/* [16] */
		'it32',
		$"0000 0000 FFFF D2FF 8600 EFFF 8D00 E8FF"
		$"8C00 0112 4B82 00E2 FF8C 0007 0D44 6C8C"
		$"A5B7 BC8B 8100 DDFF 8C00 0D0D 446A 8AA0"
		$"AFBF CBD8 E1E7 E3A9 0B81 00D7 FF8C 0012"
		$"0D44 6A8A A0AF BFCB D7E0 E6EA EEEF F1F3"
		$"EABB 3981 00D2 FF8C 0017 194F 7288 9EAF"
		$"BFCB D7E0 E6EA EEEF F1F3 F5F7 FAFD F7EE"
		$"CD62 8200 CCFF 8C00 1519 4F75 8EA3 B2C0"
		$"CCD7 E0E6 EAEE EFF1 F3F5 F7FA FDFE FE80"
		$"FF03 FCF0 DD87 8200 C7FF 8C00 1519 4F72"
		$"88A3 B2C0 CDD8 E2E8 EBEE F0F1 F3F5 F7FA"
		$"FDFE FE85 FF04 FEF3 E7A6 1981 00C2 FF8C"
		$"0015 194F 758E A3B2 C0CC D7E2 E8EB EEF0"
		$"F1F3 F5F8 FAFD FEFE 8AFF 04FE F6EC BF43"
		$"8100 BDFF 8C00 1519 4F75 8EA3 B2C0 CDD8"
		$"E2E8 EBEE F0F1 F3F5 F8FB FDFE FE90 FF03"
		$"FAEF D773 8200 B7FF 8C00 1519 4F75 8EA3"
		$"B2C0 CDD8 E2E8 EBEE F0F1 F3F5 F8FA FDFE"
		$"FE95 FF04 FDF2 E498 0B81 00B2 FF8C 0015"
		$"194F 758E A3B2 C0CD D8E2 E8EB EEF0 F1F3"
		$"F5F8 FBFD FEFE 9AFF 04FE F5EB B836 8100"
		$"ADFF 8C00 152A 577F 90A3 B2C0 CDD8 E2E8"
		$"EBEE F0F1 F3F5 F8FB FDFE FEA0 FF03 F8EE"
		$"CE63 8200 A7FF 8C00 152A 577A 93A5 B6C3"
		$"D0DA E2E8 EBEE F0F1 F3F5 F8FB FDFE FEA5"
		$"FF03 FCF1 DF8A 8200 A2FF 8C00 152A 577A"
		$"93A5 B6C3 D0DB E3E8 ECEE F0F1 F3F5 F8FB"
		$"FDFE FEAA FF04 FEF3 E8AB 2381 009D FF8C"
		$"0015 2A57 7A93 A5B6 C3D0 DBE3 E8EC EEF0"
		$"F2F4 F6F8 FBFD FEFE 93FF 80FE 00FF 80FE"
		$"00FF 80FE 8FFF 03F7 EEC7 5182 0098 FF8B"
		$"0015 2A57 7A93 A5B6 C3D0 DBE3 E8EC EEF0"
		$"F2F4 F6F8 FBFD FEFE 98FF 80FE 00FF 80FE"
		$"00FF 80FE 8FFF 03FB F0DA 7E82 0096 FF88"
		$"0015 315B 7F97 A5B5 C3D0 DBE3 E8EC EEF0"
		$"F2F4 F6F8 FBFD FEFE 9DFF 80FE 00FF 80FE"
		$"00FF 80FE 8FFF 04FE F2E6 A114 8100 96FF"
		$"8300 1533 5B7F 99A9 B9C7 D2DC E4E8 ECEE"
		$"F0F2 F4F6 F8FB FDFE FEBF FF04 FEF6 EBBD"
		$"3E81 0096 FF16 0015 6788 99AC B9C7 D2DC"
		$"E5E9 ECEE F0F2 F4F6 F8FB FDFE FE97 FF80"
		$"FD00 FF80 FC00 FF80 F900 FF80 F700 FF80"
		$"F700 FF80 F700 FF80 F700 FF80 F900 FF80"
		$"FD88 FF03 F9EE D36D 8200 95FF 1100 6DBC"
		$"D4DD E5E9 ECEE F0F2 F4F6 F9FC FDFE FE9C"
		$"FF80 FD00 FF80 FC00 FF80 F900 FF80 F700"
		$"FF80 F700 FF80 F700 FF80 F700 FF80 F900"
		$"FF80 FD88 FF04 FDF1 E394 0581 0095 FF0C"
		$"0060 CAED F0F2 F4F6 F9FC FDFE FEA1 FF80"
		$"FD00 FF80 FC00 FF80 F900 FF80 F700 FF80"
		$"F700 FF80 F700 FF80 F700 FF80 F900 FF80"
		$"FD88 FF04 FEF4 EAB3 3081 0095 FF07 0028"
		$"B4EA F5FD FEFE D5FF 03F8 EECD 5E82 0094"
		$"FF05 0005 98E6 F3FE A0FF 80FE 00FF 80FB"
		$"00FF 80F6 00FF 80F3 00FF 80F1 00FF 80F0"
		$"00FF 80F0 00FF 80F0 00FF 80F0 00FF 80F0"
		$"00FF 80F9 89FF 03FC F1DE 8782 0094 FF05"
		$"0000 77DB F1FC A0FF 80FE 00FF 80FB 00FF"
		$"80F6 00FF 80F3 00FF 80F1 00FF 80F0 00FF"
		$"80F0 00FF 80F0 00FF 80F0 00FF 80F0 00FF"
		$"80F9 89FF 04FE F3E8 AA20 8100 94FF 0500"
		$"0053 CDEE F9A0 FF80 FE00 FF80 FB00 FF80"
		$"F600 FF80 F300 FF80 F100 FF80 F000 FF80"
		$"F000 FF80 F000 FF80 F000 FF80 F000 FF80"
		$"F98A FF03 F7ED C54B 8200 93FF 0500 002F"
		$"B8EC F7D8 FF03 FBF0 D876 8200 93FF 0600"
		$"0012 A0E8 F4FE 97FF 80FE 00FF 80FA 00FF"
		$"80F6 00FF 80F3 00FF 80EF 00FF 80F1 00FF"
		$"80F3 00FF 80F4 00FF 80F3 00FF 80F1 00FF"
		$"80F0 00FF 80F0 00FF 80F9 8AFF 04FD F2E6"
		$"9D0F 8100 93FF 0600 0003 84E3 F2FE 97FF"
		$"80FE 00FF 80FA 00FF 80F6 00FF 80F3 00FF"
		$"80EF 00FF 80F1 00FF 80F3 00FF 80F4 00FF"
		$"80F3 00FF 80F1 00FF 80F0 00FF 80F0 00FF"
		$"80F9 8AFF 04FE F5EB BA3B 8100 84FF 8700"
		$"82FF 8000 0369 D8F1 FC84 FE90 FF80 FE00"
		$"FF80 FA00 FF80 F600 FF80 F300 FF80 EF00"
		$"FF80 F100 FF80 F300 FF80 F400 FF80 F300"
		$"FF80 F100 FF80 F000 FF80 F000 FF80 F98B"
		$"FF03 F9EE D26C 8200 81FF 8A00 81FF 8000"
		$"0E4B C9ED F7FD FCFB FAFA FBFB FCFC FDFD"
		$"80FE CAFF 04FD F1E2 9105 8100 80FF 8C00"
		$"80FF 8000 062C B4EA F3F9 F6F4 80F2 09F3"
		$"F4F5 F7F8 F9FA FBFB FC82 FD00 FF80 FC00"
		$"FF80 F700 FF80 F200 FF80 EF00 FF80 F000"
		$"FF80 F400 FF80 F600 FF80 F400 FF80 F300"
		$"FF80 F100 FF80 F000 FF80 F400 FF80 F800"
		$"FF80 FD8B FF04 FEF4 E9B0 2A81 0001 FFFF"
		$"8300 0438 8788 816A 8200 80FF 8000 1D12"
		$"9FE4 EDF2 EBE2 E0E2 E2E6 E8E9 EBED EFF0"
		$"F2F3 F5F6 F7F7 F8F9 FBF9 F9FA FD80 F604"
		$"FEF1 F2F2 FF80 EF00 FF80 F000 FF80 F400"
		$"FF80 F600 FF80 F400 FF80 F300 FF80 F100"
		$"FF80 F000 FF80 F400 FF80 F800 FF80 FD8C"
		$"FF03 F7EE CA56 8800 050B 6890 D07E 7383"
		$"0001 FFFF 8000 2D03 84DE E7E8 DAD4 D6D3"
		$"D0CF D3D2 D6DA DDE0 E4E6 E8EA ECED EEF0"
		$"F2F1 F2F3 F7F0 F1F2 FBEE EFEF FDED EEEE"
		$"FEEF F0F0 FF80 F400 FF80 F600 FF80 F400"
		$"FF80 F300 FF80 F100 FF80 F000 FF80 F400"
		$"FF80 F800 FF80 FD8C FF03 FCF0 DC83 8800"
		$"0551 6BE5 E064 6283 0001 FFFF 8100 2B62"
		$"CDE0 DDD2 F2FA F1F3 F2E4 E4E0 D6D0 D1D1"
		$"CED4 D6D9 DCDF E2E3 E5E8 E9EC EEEF F1F2"
		$"F3F4 F5F6 F8F9 FAFB FDFE FEB0 FF04 FEF3"
		$"E7A6 1C86 0006 2F58 9CFF 8D4C 4383 0001"
		$"FFFF 8100 0543 BBD9 D3CE F981 FF22 FCFD"
		$"FEF9 FDF9 EEEE E8E1 D9D8 D2D2 D3D0 D1D0"
		$"D9D1 D3D6 E2D8 DBDC EBE4 E6E9 F5F1 F4F6"
		$"FE80 F900 FF80 F300 FF80 F000 FF80 F100"
		$"FF80 F400 FF80 F800 FF80 FC00 FF80 FE90"
		$"FF04 FEF6 ECC1 4785 0007 1259 70E6 D355"
		$"4B1B 8300 01FF FF81 0005 24A5 D2CC CFF6"
		$"87FF 20FE FFFF FEFF FEF9 F4F0 EAE2 E6DA"
		$"D3D3 CFD2 CCCD CCD4 D3D5 DBEB EBF0 F4FD"
		$"F8F9 F9FF 80F3 00FF 80F0 00FF 80F1 00FF"
		$"80F4 00FF 80F8 00FF 80FC 00FF 80FE 91FF"
		$"03FA F0D7 7585 0006 3B5B C6FC 9549 4684"
		$"0001 FFFF 8100 050F 8ECB C7D4 F793 FF14"
		$"FDF9 F8F0 EFF1 E7E4 DFD4 D0D2 D7E0 EAF1"
		$"FCF8 F9F9 FF80 F300 FF80 F000 FF80 F100"
		$"FF80 F400 FF80 F800 FF80 FC00 FF80 FE91"
		$"FF04 FDF2 E497 0B83 0007 1E46 83FA CD4D"
		$"562C 8400 01FF FF82 0004 74C3 C5DD FC9A"
		$"FF0A FDFD F9FA FAE0 D6EB F4FB FEAF FF04"
		$"FEF5 EBB7 3583 0006 464B D3FE 8145 4185"
		$"0001 FFFF 8200 0356 B5C2 E18F FF81 FE89"
		$"FF09 FEE0 D1E3 EFF9 F5F6 F6FF 80F0 00FF"
		$"80F1 00FF 80F5 00FF 80FB 00FF 80FE 00FF"
		$"80FE 96FF 03F8 EECE 6082 0007 4D4C 74FF"
		$"BC70 3721 8500 01FF FF82 0003 3AA7 C2E9"
		$"89FF 80FE 80FC 81FB 01FC FE87 FF09 FAD5"
		$"CEDF EDF9 F5F6 F6FF 80F0 00FF 80F1 00FF"
		$"80F5 00FF 80FB 00FF 80FE 00FF 80FE 96FF"
		$"04FC F1DF 8C05 8000 0828 6663 E3E3 7F69"
		$"3009 8400 80FF 8200 0320 95C2 ED88 FF04"
		$"FDFC FBFA F783 F602 F7FA FE86 FF09 FDCE"
		$"CBDD ECF9 F5F6 F6FF 80F0 00FF 80F1 00FF"
		$"80F5 00FF 80FB 00FF 80FE 00FF 80FE 96FF"
		$"04FE F4E8 AA1F 8000 074F 4F97 FFA7 5E67"
		$"5185 0080 FF82 0003 0A7A C1EE 87FF 07FD"
		$"FAF8 F5F4 F3F1 F181 F203 F1F6 FBFE 85FF"
		$"06FA CECB E0EF F9FE B1FF 0EF6 ECC5 4B00"
		$"002E 5D70 EFEB 776A 5312 8500 80FF 8200"
		$"0302 6EC7 F284 FF04 FEFC FAF9 F582 F201"
		$"F3F2 80F1 03EF F4FA FE85 FF09 F0C9 CCE0"
		$"EFFA F6F7 F7FF 80F0 00FF 80F1 00FF 80F3"
		$"00FF 80F5 00FF 80F7 00FF 80F9 00FF 80FC"
		$"00FF 80FE 8EFF 0EFE FBEC D370 0000 4F59"
		$"BCFF A869 4E33 8600 80FF 8300 0247 CDF7"
		$"82FF 14FE FCFA F7F4 F4F1 F1F3 F3F4 F5F5"
		$"F4F2 F1F2 F1F6 FBFE 85FF 09EF C6CF E2F1"
		$"FBF6 F7F7 FF80 F000 FF80 F100 FF80 F300"
		$"FF80 F500 FF80 F700 FF80 F900 FF80 FC00"
		$"FF80 FE8E FF0E FEFB EDD9 8B0C 3B4B 79FF"
		$"ED8C 583D 1585 0082 FF82 0002 3CD1 FC80"
		$"FF15 FEFE FBF8 F5F2 F1F1 F2F5 F6F6 F5F4"
		$"F3F2 F1F2 F5F6 FAFE 86FF 05EA C6D2 E4F2"
		$"FB80 F700 FF80 F000 FF80 F100 FF80 F300"
		$"FF80 F500 FF80 F700 FF80 F900 FF80 FC00"
		$"FF80 FE8D FF0E FEFD F9EC DAA3 3248 4EC5"
		$"F9A3 7046 3B86 0082 FF81 0002 066E DF81"
		$"FF14 FDFA F7F4 F2F1 F2F3 F7F8 F7F4 F3F3"
		$"F2F3 F4F7 FAFB FE87 FF05 E1C6 D6E8 F4FC"
		$"B0FF 0EFE FBF7 ECD8 B352 4C85 FFCB 7C77"
		$"5723 8500 83FF 8200 016B E280 FF13 FEFB"
		$"F7F3 F2F2 F5F9 FAFA F9F4 F2F1 F2F4 F7FA"
		$"FBFE 89FF 05D9 C5D8 EAF6 FD80 FC00 FF80"
		$"F700 FF80 F400 FF80 F200 FF80 F000 FF80"
		$"F000 FF80 F100 FF80 F400 FF80 F900 FF80"
		$"FE88 FF0F FEFD F9F4 E9D4 9E60 65D7 FC86"
		$"7663 3707 8500 83FF 8200 018A E580 FF10"
		$"FEFA F5F2 F4F6 FAFD FDFA F6F2 F1F3 F5F9"
		$"FC80 FE89 FF05 D9C7 DBEC F7FD 80FC 00FF"
		$"80F7 00FF 80F4 00FF 80F2 00FF 80F0 00FF"
		$"80F0 00FF 80F1 00FF 80F4 00FF 80F9 00FF"
		$"80FE 87FF 0FFE FEFB F6EF E3CD 765F A1FC"
		$"CA68 705C 2F86 0083 FF81 0002 03A5 ED81"
		$"FF13 FCF8 F6F8 FAFD FFFF FAF5 F1F1 F2F5"
		$"F8FA FCFC FDFE 87FF 06F9 D0C9 DEED F8FE"
		$"80FC 00FF 80F7 00FF 80F4 00FF 80F2 00FF"
		$"80F0 00FF 80F0 00FF 80F1 00FF 80F4 00FF"
		$"80F9 00FF 80FE 87FF 0FFE FCF8 F2E9 DB8A"
		$"6180 E9FA 8967 4645 0485 0085 FF81 0001"
		$"B7F4 81FF 03FE FCFB FC81 FF0D FBF7 F3F2"
		$"F2F4 F4F5 F6F7 F9FA FCFE 85FF 06F4 CBCC"
		$"E0EF F9FE ADFF 0FFE FDFA F4EC E1C2 5669"
		$"C0FF C875 5634 1586 0085 FF81 0001 BBF7"
		$"83FF 00FE 82FF 0EFE FAF8 F5F4 F3F2 F1F1"
		$"F2F3 F5F8 FBFE 84FF 06F2 CBCF E2F1 FAFE"
		$"81FF 80FE 00FF 80FC 00FF 80F9 00FF 80F8"
		$"00FF 80F6 00FF 80F3 00FF 80F1 00FF 80F2"
		$"00FF 80FA 85FF 10FE FEFB F7F0 E6D8 8455"
		$"93FF EB95 723E 3206 8500 85FF 8100 0246"
		$"CAFC 8AFF 0EFE FCFA F8F6 F5F4 F3F2 F1F2"
		$"F4F7 FBFE 83FF 05EA C5D2 E5F2 FB82 FF80"
		$"FE00 FF80 FC00 FF80 F900 FF80 F800 FF80"
		$"F600 FF80 F300 FF80 F100 FF80 F200 FF80"
		$"FA85 FF10 FEFC F9F3 EADD AE60 6FC7 FFBA"
		$"7274 4323 0285 0085 FF81 0001 66D7 8DFF"
		$"01FE FC81 FA06 F7F4 F2F1 F3F9 FD83 FF05"
		$"E1C8 D5E7 F4FC 82FF 80FE 00FF 80FC 00FF"
		$"80F9 00FF 80F8 00FF 80F6 00FF 80F3 00FF"
		$"80F1 00FF 80F2 00FF 80FA 84FF 10FE FEFB"
		$"F6EE E3CF 9872 97F3 F485 7D5A 2910 8500"
		$"86FF 8100 027E D7FE 8EFF 81FE 06FA F6F4"
		$"F1F3 F9FD 83FF 05E4 CBD7 E9F5 FCAC FF0F"
		$"FEFC F8F2 E8DA 9975 88DE FFC2 806F 4F3A"
		$"8600 86FF 8100 029B E3FE 91FF 07FD FAF5"
		$"F3F2 F5FA FE82 FF06 FDDA C6D9 EAF6 FD92"
		$"FF80 FD00 FF80 F600 FF80 F200 FF80 F100"
		$"FF80 FA83 FF10 FEFD FAF4 ECE0 C156 6BA9"
		$"FFE8 8969 5552 1C85 0087 FF81 0001 ADED"
		$"91FF 07FC FAF6 F3F3 F6FA FD83 FF06 F9D1"
		$"C7DC ECF7 FD92 FF80 FD00 FF80 F600 FF80"
		$"F200 FF80 F100 FF80 FA83 FF0F FEFB F7F0"
		$"E6D8 7A57 7FEB FDB0 8266 493C 8600 87FF"
		$"8100 02AD EBFE 8FFF 07FE FAF6 F2F2 F6FA"
		$"FD84 FF06 F8D0 CADE EEF8 FE92 FF80 FD00"
		$"FF80 F600 FF80 F200 FF80 F100 FF80 FA82"
		$"FF11 FEFD F9F3 EADE B23F 55A6 FFE6 7473"
		$"5B33 4309 8500 87FF 8100 01BC F38F FF07"
		$"FEFB F7F2 F1F3 FAFC 85FF 06F3 CBCD E0EF"
		$"F9FE A9FF 12FE FEFB F6EE E3D3 7951 87E1"
		$"FF9D 695E 454E 6D22 8400 87FF 8100 0251"
		$"C5FB 8FFF 07FD F8F3 F1F3 F7FC FE85 FF06"
		$"F0C6 CEE2 F0FA FE8E FF80 FE00 FF80 F900"
		$"FF80 F300 FF80 F200 FF80 F700 FF80 FD81"
		$"FF12 FEFC F8F2 E8DB 9A6F 77C3 FCDA 796D"
		$"5B57 6D86 4584 0087 FF81 0002 67C3 F78E"
		$"FF07 FEFB F6F1 F2F5 FAFD 86FF 06F1 C8D1"
		$"E4F2 FBFE 8EFF 80FE 00FF 80F9 00FF 80F3"
		$"00FF 80F2 00FF 80F7 00FF 80FD 80FF 14FE"
		$"FDFA F4EC E1C8 6581 ABFF FFA0 725D 4152"
		$"8399 6B0B 8200 88FF 8100 0288 D1FB 8EFF"
		$"07FE FAF4 F1F3 F8FC FE86 FF06 E7C5 D3E6"
		$"F3FB FE8E FF80 FE00 FF80 F900 FF80 F300"
		$"FF80 F200 FF80 F700 FF80 FD80 FF14 FEFB"
		$"F7F0 E6D6 7D67 7FCD FFD2 896F 5339 6B99"
		$"A78D 2782 0088 FF81 0002 93D8 FC8E FF06"
		$"FEFA F4F1 F4F9 FD86 FF06 FCE3 C9D6 E7F4"
		$"FCA8 FF15 FEFC F9F3 EADD A03F 6499 FCF8"
		$"A18B 6841 3B8F A5B1 A952 8200 88FF 8100"
		$"0290 DAFC 8EFF 07FE FBF6 F3F6 E9DC DF85"
		$"FF06 FCDD C7D8 E9F5 FC8F FF80 FA00 FF80"
		$"F300 FF80 F000 FF80 F700 FF80 FD82 FF17"
		$"FEFE FBF6 EEE3 CF77 6268 CBFF C384 8256"
		$"355E 9DB1 BCC0 7D08 8100 88FF 8100 02A8"
		$"E6FE 8FFF 0BFD FAF6 F6B9 9C96 96F7 E7BE"
		$"CE80 FF06 FAD2 C8DA EBF6 FD8F FF80 FA00"
		$"FF80 F300 FF80 F000 FF80 F700 FF80 FD82"
		$"FF17 FEFC F8F2 E8DA 8F5C 699C F8F3 887F"
		$"6C42 4F8C A7BB C7CD A228 8100 88FF 8000"
		$"0229 AFEE 90FF 15FE FCF9 F8F8 FBF6 7FE7"
		$"CEBE AE96 FFFF FBD2 C8DB ECF7 FD8F FF80"
		$"FA00 FF80 F300 FF80 F000 FF80 F700 FF80"
		$"FD81 FF18 FEFD FAF4 ECE0 C55C 6D86 E2FF"
		$"C185 7858 546A 9BB2 C6D2 D7C0 5682 0087"
		$"FF80 0002 44AD ED91 FF06 FEFB FAFA AC7F"
		$"B680 FF0A F77F FFFF F9CD C8DB ECF7 FDA6"
		$"FF18 FEFB F7F0 E6D6 9060 76C2 FFE8 9982"
		$"6744 5085 A7BC CFDC DED4 8282 0086 FF81"
		$"0002 6BC2 F492 FF17 FEFC FDFD BEA6 FFFF"
		$"F7AE 96FF FFF3 C5C5 DAEA F4FB FDFD FEFE"
		$"87FF 80FC 00FF 80F4 00FF 80F0 00FF 80F4"
		$"00FF 80FC 84FF 1AFE FDF9 F4EB DEB5 636E"
		$"8AEC FFB9 8B75 5837 639B B0C5 D7E5 E5E2"
		$"A81F 8100 86FF 8100 0662 C8F6 FFFC FDFE"
		$"8FFF 17DE C5FF C69E FFE7 969E F7FF FFF3"
		$"C1BF D4E4 EEF5 F7F9 FBFC FD80 FE83 FF80"
		$"FC00 FF80 F400 FF80 F000 FF80 F400 FF80"
		$"FC84 FF1A FEFB F7EF E4D3 9779 73BC FFDA"
		$"9A93 6C3C 398A A6BB CEDF EBEC E8C3 4A82"
		$"0085 FF82 000B B7CF DDD6 E1EC EDF4 F9F4"
		$"F9FC 89FF 1BE7 A67F 8ED7 D77F B6F7 FFFF"
		$"FEEA C0BC CDD9 E5EC EFF2 F4F6 F8FA FBFC"
		$"FD80 FE01 FFFF 80FC 00FF 80F4 00FF 80F0"
		$"00FF 80F4 00FF 80FC 83FF 1BFE FCF9 F2E9"
		$"DCA9 6B84 9DEF FCAA 8D91 6F32 4F9B B0C5"
		$"D6E5 F0F3 EDD7 7682 0086 FF81 0013 3C5E"
		$"7F7B 8EA5 91B0 C7CA D4DC E2EA EEEC F4F7"
		$"FCFE 86FF 1CDF BE9E 8E9E FFFE DFC5 D0DB"
		$"E1E2 E4E5 E7EA EDF0 F2F4 F7F8 FAFB FCFD"
		$"FEFE 94FF 1DFE FEFB F5ED E2D2 736D 8CC8"
		$"FFD6 8B8B 8055 3482 A5BA CEDE EBF4 F8F1"
		$"E59D 0F81 0086 FF87 0018 0A82 B2B8 B9B8"
		$"B7BE BDBF C8CD D0DF E2E6 EDF2 F8F9 FFFE"
		$"FEFF FE82 FF18 DEC7 D8E9 F5FB F7F0 E8E4"
		$"E3E6 E7EA EDF0 F3F6 F8FA FCF7 F8F8 FF80"
		$"F000 FF80 F200 FF80 F900 FF80 FE82 FF1D"
		$"FEFC F8F1 E7D9 8C6D 86A9 F5F8 AE8C 8076"
		$"4260 98AF C4D6 E5F0 F7FB F4EB BA3B 8100"
		$"86FF 8800 22AD CBCA C8C5 C2C0 BEBB BAB6"
		$"B4B9 B6BC C0C5 C7D0 D7DB E4ED E9F4 FBF7"
		$"FBFD DBCB DDEC F7FD 80FF 0FFC F6EE E7E4"
		$"E4E5 E9ED F1F4 F8F4 F6F8 FE80 F000 FF80"
		$"F200 FF80 F900 FF80 FE81 FF1E FEFD FAF4"
		$"EBDF BB58 6C86 DBFF CD93 846C 5348 7DA4"
		$"BACD DDEB F4FA FDF8 EED2 6C82 0085 FF87"
		$"0023 35CF E1DF DDDA D8D6 D4D1 CECC C9C6"
		$"C3C0 BCB9 B6B8 B7B9 BBBE BDC4 C9CA D5DC"
		$"D1D1 E2EF F8FD 84FF 0BFB F4EC E6E5 E7EC"
		$"F3F1 F4F7 FE80 F000 FF80 F200 FF80 F900"
		$"FF80 FE80 FF20 FEFE FBF7 F0E5 D490 5881"
		$"A4FF F296 8E71 5929 5499 AEC3 D5E4 F0F7"
		$"FBFE FDF1 E291 0581 0086 FF86 0023 91E2"
		$"F0EE EDEB E9E8 E6E4 E2E0 DEDB D9D6 D2CF"
		$"CCC9 C3C0 BCB9 B6B3 B4B7 BCC2 CAD7 E6F1"
		$"FAFE 88FF 07F9 F1E5 ECF3 F8FC FE8F FF20"
		$"FEFC F9F3 EADD 966F 748F D4FF B691 8465"
		$"391C 6CA2 B8CC DDEA F4FA FDFE FEF4 E9B0"
		$"2A81 0088 FF84 0023 C3F1 F9F8 F8F7 F5F4"
		$"F3F2 F1EF EDEC EAE8 E4E2 DFDC D9D6 D2CF"
		$"CDCA C7C7 C9CD D7E1 EDF5 FCFE 89FF 06FE"
		$"E5E5 E7EE F3FD 80F0 00FF 80F4 00FF 80FC"
		$"84FF 20FE FBF6 EEE3 CD5E 6480 9BF4 E297"
		$"8771 5726 2293 ADC1 D4E4 EFF7 FBFE FFFF"
		$"F7EE CA56 8200 89FF 8100 2304 E0FC FEFE"
		$"FDFD FCFC FBFB FAF9 F7F6 F2F1 EBEA E6E4"
		$"E1DF DCDA D8D7 D5D4 D5D7 DCE2 F0F5 FD8A"
		$"FF06 F9E0 DEE4 ECF2 FD80 F000 FF80 F400"
		$"FF80 FC83 FF21 FEFC F9F2 E9DB A15D 7489"
		$"C9FD BA88 8068 4433 67A1 B7CA DCE9 F3F9"
		$"FDFE FFFF FCF0 DC83 8200 88FF 8200 0175"
		$"EA84 FF81 FE16 FDFC F9F8 F3F3 EFEE EBE9"
		$"E8E7 E6E4 E3E2 E2E4 E6E9 F5F7 FE8A FF06"
		$"F2D8 D9E1 EAF1 FD80 F000 FF80 F400 FF80"
		$"FC83 FF1A FEFB F6ED E2D2 7266 80A7 E4CB"
		$"AA8E 7C56 2F4C 96AB C1D3 E2EE F7FB FE80"
		$"FF04 FEF3 E7A6 1C81 0088 FF82 0001 B9F1"
		$"84FF 07FE FEFA FAF7 F7F4 F481 F100 F380"
		$"F20A F0EF ECEC EBEB ECEE F8F9 FE8A FF06"
		$"EACD D7E5 F0F8 FD8D FF1B FEFD F9F2 E9DA"
		$"AC4E 6F8B BED8 AF9F 846B 3E24 7CA1 B6CA"
		$"DBE9 F2F9 FDFE 80FF 04FE F6EC C147 8100"
		$"88FF 8200 01D3 F884 FF13 FEFE FAFA F7F7"
		$"F4F4 F1F1 F2F2 F4F4 F5F5 F4F3 F1F1 81F0"
		$"01F9 FA8A FF07 FEE3 C4D6 E1EC F4FD 80F3"
		$"00FF 80F6 00FF 80FB 82FF 1AFE FBF7 EEE2"
		$"D376 4474 90CA B39C A57C 5228 5697 ACC1"
		$"D3E2 EDF6 FBFE 82FF 03FA F0D7 7582 0086"
		$"FF82 0001 25E4 81FF 07FE FEFC FCF8 F8F3"
		$"F381 F111 F5F5 F7F7 F5F5 F4F4 F2F2 F1F1"
		$"F5F5 F9F9 FDFD 8AFF 07F7 D7C6 D8E2 EDF4"
		$"FE80 F300 FF80 F600 FF80 FB81 FF1B FEFD"
		$"F9F3 E9DB B74F 4E83 ADC4 A39F 926C 3121"
		$"8AA2 B7CA DBE9 F2F9 FDFE 82FF 04FD F2E4"
		$"970B 8100 86FF 8200 019C EC81 FF07 FEFE"
		$"FCFC F8F8 F3F3 81F1 11F5 F5F7 F7F5 F5F4"
		$"F4F2 F2F1 F1F5 F5F9 F9FD FD8A FF07 F0CB"
		$"C9DB E4EF F5FE 80F3 00FF 80F6 00FF 80FB"
		$"81FF 1AFE FBF7 EFE3 D394 7D4B 5E92 9984"
		$"827A 5A22 5F9A AEC2 D4E3 EEF6 FBFE 83FF"
		$"04FE F5EB B735 8100 86FF 8200 01C4 F381"
		$"FF03 FCFC F7F7 81F2 13F6 F6F9 F9FA FAF4"
		$"F4F1 F1F2 F2F5 F5F9 F9FC FCFE FE8C FF07"
		$"E9C1 CEDF ECF6 FCFE 8BFF 1BFE FDF9 F3EA"
		$"DDBB 6D9C AB72 5364 675E 5A30 3F8B A6BA"
		$"CCDD E9F3 F9FD FE84 FF03 F8EE CE63 8200"
		$"85FF 8200 01DB FB81 FF03 FCFC F7F7 81F2"
		$"13F6 F6F9 F9FA FAF4 F4F1 F1F2 F2F5 F5F9"
		$"F9FC FCFE FE88 FF80 FE08 FCE1 C0D3 E3ED"
		$"F6FB FF80 F800 FF80 F600 FF80 FA1D FFFE"
		$"FEFD FBF7 EFE4 D493 6289 E9FA B25D 2B26"
		$"1C10 649D B2C5 D6E5 F0F7 FBFE 85FF 03FC"
		$"F1E0 8D82 0084 FF82 0001 3FE7 82FF 07FB"
		$"FBF4 F4F5 F5F8 F881 FD09 F7F7 F1F1 F2F2"
		$"F6F6 FBFB 81FE 87FF 0EFE FEFD FCFB FCF3"
		$"D2C5 D8E6 F0F7 FBFF 80F8 00FF 80F6 00FF"
		$"80FA 1DFF FEFD FCF9 F3EA DDBB 7663 A4FC"
		$"FFF6 944F 2E0E 3A93 A9BD CFDF EBF4 FAFD"
		$"FE85 FF04 FEF4 E9AD 2681 0084 FF82 0001"
		$"ABEE 82FF 07FB FBF4 F4F5 F5F8 F881 FD09"
		$"F7F7 F1F1 F2F2 F6F6 FBFB 81FE 86FF 0FFE"
		$"FDFB F7F0 EFF2 E5C2 C9DA E9F2 F9FC FF80"
		$"F800 FF80 F600 FF80 FA1C FFFE FDFA F7EF"
		$"E4D4 8369 8CBB FBFF BA6A 8CAC 4F7F A0B5"
		$"C8D9 E6F1 F8FC FE87 FF03 F7EE C955 8100"
		$"84FF 8200 01CC F582 FF01 FEFE 81FB 17FE"
		$"FEFF FFFE FEF8 F8F1 F1F2 F2F4 F4F6 F6F8"
		$"F8FA FAFC FCFE FE82 FF0E FEFB F5EB DCD9"
		$"DCD0 B5C7 DAE9 F4FB FD8A FF1B FEFD F9F3"
		$"E9DC AD65 72A5 E3DE E48E 639F C975 98AC"
		$"C1D3 E2ED F5FB FEFE 87FF 03FC F0DB 7F81"
		$"0084 FF82 0001 E0FC 82FF 01FE FE81 FB17"
		$"FEFE FFFF FEFE F8F8 F1F1 F2F2 F4F4 F6F6"
		$"F8F8 FAFA FCFC FEFE 82FF 13FD F7EE DADC"
		$"EDDE CCBC C2D3 E4F0 F8FC FEFC FDFD FF80"
		$"FA00 FF80 FC1B FFFD FAF6 EEE3 D088 697F"
		$"D5FF F4A1 818C ACA6 90A4 B9CC DCE9 F2F9"
		$"FCFE 82FF 0ADF 969E A6FF FFFE F3E6 A013"
		$"8000 83FF 8200 0169 E88F FF07 FCFC F8F8"
		$"F5F5 F3F3 81F1 1EF2 F2F5 F5FA FAFE FEFF"
		$"FFFE FBF2 E4D2 E8FF F7EF E6CF CBD5 E3EE"
		$"F5F9 FAFC FCFF 80FA 00FF 80FC 2BFE FCF8"
		$"F2E9 DCB0 7A63 A9FD FFE5 7A67 87A3 939D"
		$"B1C5 D6E4 EFF7 FBFE FFDF DFFF FFE7 7FDF"
		$"F78E C6FF FEF6 EBBD 4380 0083 FF82 0001"
		$"B5F0 8FFF 07FC FCF8 F8F5 F5F3 F381 F122"
		$"F2F2 F5F5 FAFA FEFE FFFF FDF8 ECDA D3F5"
		$"FFFF FEFD F4E6 D7D3 D8E6 EEF3 F7FA FEF9"
		$"FAFA FF80 FC2B FEFA F6EE E4D1 8370 95E1"
		$"FFF7 9A60 8EB4 9496 AABE CFDF EBF4 F9FD"
		$"CD86 7F7F A6FF D786 EFFF 96CE FFFF FAEF"
		$"D570 8000 83FF 8200 01D2 F791 FF19 FEFE"
		$"FCFC FAFA F9F9 F7F7 F4F4 F2F2 F3F3 FAFA"
		$"FFFE FCF3 E4D0 E1FD 83FF 0CF9 EBDB D6D9"
		$"E6EE F4F8 FBFD FEFE 80FF 2EFE FAF4 EBDE"
		$"B75E 71B5 FDFF D96F 6991 9991 A3B7 CADA"
		$"E6AB EFFB FEAE C6FF E77F DFF7 967F 8E7F"
		$"C6FF FFFD F2E4 970B 0000 83FF 8100 0215"
		$"E2FD 91FF 18FE FEFC FCFA FAF9 F9F7 F7F4"
		$"F4F2 F2F3 F3FA FAFF FEF9 EEDA D0F1 85FF"
		$"28FD F8ED DFD7 D6E0 EBF1 F6F9 FCFD FDFE"
		$"FDF9 F2E6 D8BA 7889 DDFF EEAE 8E78 838B"
		$"9DB0 C3D4 E2B8 7AD3 FDFE 80FF 11F7 7FDF"
		$"FFD7 96DF C686 CEFF FEF5 EBB6 3300 0082"
		$"FF82 0001 83EA 9AFF 10FD FDF7 F7F3 F3F2"
		$"F2FA FAFF FDF6 E7D4 DEFB 86FF 0BFE FEFC"
		$"F0E1 D7D4 DBE6 EEF5 F880 FB17 F7EE E2D2"
		$"BC7A 9CFF FFCD 717F 8688 98AB BDCF DFCD"
		$"8F92 ACFE 81FF 11BE 8EFF FF9E B6FF FF9E"
		$"BEFF FFF8 EECD 5E00 0082 FF82 0001 BFF2"
		$"9AFF 10FD FDF7 F7F3 F3F2 F2FA FAFE FBF1"
		$"DFCC EBFE 81FF 2BFE FDFB FAFA F9F9 FAFD"
		$"FDF5 E7DD D5D7 E1ED F5F8 F9F3 EBDD CBBA"
		$"9FC3 EFFF 9B66 8585 93A6 B9CB D9E7 F0F7"
		$"C38D FE80 FF12 F786 D7FF FFBE 86CE BE8E"
		$"E7FF FFFC F1DE 8600 0082 FF82 0001 D8F9"
		$"98FF 09FE FEFA FAF4 F4F3 F3F8 F880 FD04"
		$"F7EA D3D3 F681 FF2C FDF9 F7F5 F3F3 F4F4"
		$"F3F9 FEFF FEF8 EBE1 D6DA E9F4 F6F0 E6D8"
		$"C2B7 B8E9 D8F5 C196 978F A0B4 C6D6 E4EC"
		$"F5FA ED7F EF80 FF11 A69E FFD7 C8F4 BE9A"
		$"A4EC FEFE FFFD F1E0 9006 8100 00FF 8200"
		$"023A E2FE 98FF 10FE FEFA FAF4 F4F3 F3F8"
		$"F8FD FCFB F1E0 CDE8 80FF 04FD F9F7 F3F3"
		$"80F5 04F3 F2F1 F7FE 81FF 29FA F5D8 DDED"
		$"F1EC E1D0 CDB1 CBF8 F3EA 9D65 8B99 AEC1"
		$"D1E0 EBF4 F8FC FE8E CEFF FFDF 7F96 7F8B"
		$"B0F8 FBFC FE80 FD05 FCF8 F4EA B229 8100"
		$"00FF 8200 0195 EC99 FF1F FAFA F4F4 F1F1"
		$"F8F8 FDFD FFFD F7EA D3D5 F6FF FDFA F6F3"
		$"F2F5 F6F7 F5F5 F3F5 F6FC 83FF 31F8 D4D6"
		$"E7EB E7DA CDED C8F4 DBDD CB6F 478E A5BA"
		$"CCDC E9F2 F8FA FDFD AD95 B5E6 E6A5 C4E2"
		$"FBFC FDFE FDFC F6F3 F2EF EDE9 E4B6 3C81"
		$"0000 FF82 0001 C5F4 99FF 1EFA FAF4 F4F1"
		$"F1F8 F8FD FDFE FBF2 E0CE E9FE FDF9 F5F3"
		$"F5F8 F9F7 F4F4 F5F7 FAFD 83FF 1FFC E2C5"
		$"D5E3 E6E1 CFDC DCD4 FCD0 D2AF 6776 9DB1"
		$"C5D6 E4EF F7FB FDFE A57F 95BD F581 FD0E"
		$"FCF9 F7F5 F2EF EBE5 DDD0 BCA6 9267 1381"
		$"0000 FF82 0001 DBFB 97FF 1FFC FCF5 F5F1"
		$"F1F5 F5FC FCFF FFFE F8EC D5CF F2FF FDF5"
		$"F4F7 FCFD F9F4 F3F5 FAFE FE84 FF30 F5CF"
		$"C2D5 E2E1 D5C8 F3D5 F3F3 F2DF 7F6A 92A8"
		$"BCCF DFEB F4FA FDFE FFE7 F7FF FEFD FCF8"
		$"F6F3 F1EF EDE6 DFD2 AA90 6F4F 341A 0883"
		$"0000 FF81 0001 58E5 98FF 20FC FCF5 F5F1"
		$"F1F5 F5FC FCFF FEFC F4E5 CEE1 FAFF FDF9"
		$"F9FD FFFF F9F3 F3F6 F9FB FCFD 82FF 18FE"
		$"EBC3 C6D9 DFD8 CDC7 F5EA FBFD F4C0 6F7B"
		$"9DB2 C6D8 E6F1 F8FC 80FE 10FD FAF7 F4F2"
		$"EFED E9E2 D7C6 AF95 7454 1F0A 8800 00FF"
		$"8100 01A5 ED98 FF11 FAFA F1F1 F3F3 FAFA"
		$"FEFE FFFE F9EE DBD0 F0FE 80FF 00FE 80FF"
		$"09FC F8F5 F5F3 F4F5 F7FA FE80 FF29 F8D9"
		$"BFCD DAD7 D1E2 D9F4 FCFF F4DE 9C6B 8DA7"
		$"BCCF DFEC F4F9 FAF7 F5F3 F0EF ECE5 DECF"
		$"BAA0 8260 4022 0F02 8B00 00FF 8100 01CC"
		$"F598 FF07 FAFA F1F1 F3F3 FAFA 80FE 05FC"
		$"F5E6 D2DE FB86 FF30 FDFB F8F8 F6F4 F4F5"
		$"FAFF FFFD ECC9 C2D4 D7D1 DBEC F7FF FEF7"
		$"E7C7 7E6B 9BB0 C4D4 E1E9 EDEF EEED E8E2"
		$"D7C6 AE91 7251 3117 068F 0001 FFFF 8100"
		$"01DF FC98 FF0F F9F9 F1F1 F5F5 FCFC FFFF"
		$"FEFA F0DC D0ED 89FF 80FD 27F9 F5F3 F9FE"
		$"FFF3 D1BC C9D3 D4CE E8F6 FEFF E4D9 E8B7"
		$"5479 9FB3 C4D1 DAE2 E1DC CBB8 9E80 6040"
		$"220C 0293 0001 FFFF 8000 0176 E899 FF0F"
		$"F9F9 F1F1 F5F5 FCFC FFFF FDF7 E9D3 D4F5"
		$"8BFF 23FD F8F5 F5FB FFFE EAC3 C0CD D5D0"
		$"D2FB F1FF E4CF D9E3 8C59 8BA2 B1BD BEB7"
		$"A48C 6D4D 2D15 0497 0080 FF80 0001 B8F0"
		$"99FF 0FFA FAF4 F4F7 F7FB FBFF FEFB F3E1"
		$"CEE7 FD8A FF1F FEF8 F4F5 FAFE FFF9 DBBD"
		$"C6D3 D4CC DEE5 E6E2 CFDD E2B2 626C 7F7E"
		$"7769 5138 1E0A 9A00 82FF 8000 01D2 F799"
		$"FF0E FAFA F4F4 F7F7 FBFB FFFE FAEF DBD7"
		$"F68A FF1C FEF9 F4F3 F9FE FFFE F0C6 BECB"
		$"CFC8 D5F0 C5D7 C4E1 E7D1 7E5E 3A2A 1A0B"
		$"0395 008B FF80 0001 E2FE 99FF 10FD FDF9"
		$"F9F7 F7FA FAFE FDF9 EDD9 D7EB F6FD 87FF"
		$"19DF B5D6 F3F7 FDFF FFFD E0B8 BDC5 C4BB"
		$"E2D7 CACD E1E8 DFA9 7234 0199 008B FF80"
		$"0002 E5F1 F898 FF12 FDFD F9F9 F7F7 FAFA"
		$"FEFD F9EF DDCC C9D0 DEF3 F985 FF18 F784"
		$"E5F4 F2EE FFFE F5CA AAAA A193 CEF9 C6CA"
		$"D9E4 CEC8 8971 0D99 008C FF80 0006 7FB2"
		$"CFE6 ECF3 FB96 FF13 FDFD FAFA FCF4 CDF5"
		$"FAF3 E6D6 C6BB BAC5 D9F4 F9FE 82FF 17D7"
		$"ABF5 C68C 9EB6 FBE3 9B5E 4840 8EE5 F2BC"
		$"D4EA C8C2 B587 5295 0091 FF83 0007 0E75"
		$"B0D6 E7ED F6FC 92FF 30FD FDFA FAD4 847F"
		$"F5FC E8D2 D8DA CEC3 B8B1 BFD4 F1F9 FEFF"
		$"FFC6 9EDD F18A 9BCD FEF1 AE39 0100 7DED"
		$"FDD6 BED8 D2AB C39F 7817 9100 95FF 8700"
		$"072D 86BD DAE8 F0F7 FE90 FF1F F6A5 8DA5"
		$"9EFE E684 B180 B7E4 DAC9 A18E A7C0 CDEA"
		$"F5FD D79E C6DD AAF2 7FFC DB76 8000 0AA1"
		$"E9F6 CDCB DB97 A3C5 8560 8D00 9AFF 8B00"
		$"0648 9CC5 E0EB F2F9 8DFF 2D8D ADF6 A5BE"
		$"FFBE 95FD DC8A F3ED D8A2 8A80 807C 95B1"
		$"DFF8 FEFF EF8D B59E F9BB 5604 0000 C4E8"
		$"E3D0 CBB4 85BC B076 2A89 009E FF8F 0006"
		$"63A0 C8E6 EDF4 FB88 FF20 F7A6 7F96 86C6"
		$"FFDF 7FAE A59D FCF9 DE62 402A 170F 0C2E"
		$"9EC4 E5F6 FDEE DFF7 ED9F 2A80 0009 59D3"
		$"D6B7 B48F A0B7 AA4C 8600 A2FF 9200 0728"
		$"9CC3 D9E8 EEF6 FD87 FF0C C686 9EDF 7FCE"
		$"9E86 F7FE FBD0 0183 000A 125B 96B5 D9EB"
		$"F7FF DD7A 0380 0009 308E CA92 A585 B6B5"
		$"7E09 8600 A2FF 9200 0B15 759E A1AA BACB"
		$"DFE9 F0F7 FE83 FF0B BEA6 FFCE 9EFF FF8E"
		$"DFFF F4A9 8500 0805 2150 87AE D6E3 B62F"
		$"8200 075A B385 A294 9F8D 0286 00A4 FF91"
		$"000E 0A72 ACB0 B1AA A39E A6B9 CEE3 EBF2"
		$"FA80 FF0B EFEF FFE7 86BE C686 EFFF ED74"
		$"8800 0417 4086 AB82 8400 0327 276A 4C89"
		$"00A7 FF8E 0012 0266 B8C0 BAB3 ACA2 9787"
		$"735D 7197 C7E6 EDF5 FC80 FF07 EFBE BEDF"
		$"FFFE E222 8A00 021F 5033 9300 ACFF 8B00"
		$"1555 B7C3 B19E 8167 492F 180A 0100 0013"
		$"63A8 D3E8 EFF7 FD81 FF01 FAD2 A400 B0FF"
		$"8700 072E 7C72 4F2F 1405 0187 0009 308A"
		$"BCDC EAF1 F8FE F2B5 A300 B5FF 8300 0203"
		$"0B02 9000 055C A3CD E2EB 7B84 0081 FF98"
		$"00B6 FF9C 0001 8A23 8300 85FF 9400 B7FF"
		$"A300 8AFF 8F00 B9FF A200 8BFF 8D00 BBFF"
		$"A100 8CFF 8B00 FFFF FFFF A5FF FFFF D2FF"
		$"8600 EFFF 8D00 E8FF 8C00 0112 4B82 00E2"
		$"FF8C 0007 0D44 6C8A A3B3 B788 8100 DDFF"
		$"8C00 0D0D 446A 889B ABBB C7D3 DCE3 DEA5"
		$"0B81 00D7 FF8C 0012 0D44 6A88 9BAB BBC7"
		$"D2DB E2E5 E9EB EDEF E5B8 3581 00D2 FF8C"
		$"0017 194F 6F86 9BAB BBC7 D2DB E2E5 E9EB"
		$"EDEF F2F5 FAFC F5E9 C960 8200 CCFF 8C00"
		$"1519 4F70 8AA0 AEBC C8D2 DBE2 E5E9 EBED"
		$"EFF2 F5FA FCFE FE80 FF03 FBEC D884 8200"
		$"C7FF 8C00 1519 4F6F 86A0 AEBC C8D4 DDE3"
		$"E6E9 EBED EFF2 F5FA FCFE FE85 FF04 FEEF"
		$"E3A3 1981 00C2 FF8C 0015 194F 708A A0AE"
		$"BCC8 D2DD E3E6 E9EB EDF0 F2F5 FAFC FEFE"
		$"8AFF 04FE F3E8 BB43 8100 BDFF 8C00 1519"
		$"4F70 8AA0 AEBC C8D4 DDE3 E6E9 EBED F0F2"
		$"F5FA FDFE FE90 FF03 F9EA D271 8200 B7FF"
		$"8C00 1519 4F70 8AA0 AEBC C8D4 DDE3 E6E9"
		$"EBED F0F2 F5FA FDFE FE95 FF04 FDEE DF94"
		$"0B81 00B2 FF8C 0015 194F 708A A0AE BCC8"
		$"D4DD E3E6 E9EB EDF0 F2F5 FAFD FEFE 9AFF"
		$"04FE F2E6 B435 8100 ADFF 8C00 152A 557A"
		$"8DA0 AEBC C8D4 DDE3 E6E9 EBED F0F2 F5FA"
		$"FDFE FEA0 FF03 F8E9 CA60 8200 A7FF 8C00"
		$"152A 5078 90A2 B1BE CCD6 DDE3 E6E9 EBED"
		$"F0F2 F5FA FDFE FEA5 FF03 FCED DA86 8200"
		$"A2FF 8C00 152A 5078 90A2 B1BE CCD7 DEE3"
		$"E7E9 ECED F0F2 F5FA FDFE FEAA FF04 FEF0"
		$"E3A8 2381 009D FF8C 0015 2A50 7890 A2B1"
		$"BECC D7DE E3E7 E9EC EEF0 F3F6 FBFD FEFE"
		$"87FF 80FD 00FF 80FB 00FF 80F9 00FF 80F8"
		$"00FF 80F8 00FF 80F8 00FF 80FA 00FF 80FE"
		$"87FF 03F4 E9C3 5082 0098 FF8B 0015 2A50"
		$"7890 A2B1 BECC D7DE E3E7 E9EC EEF0 F3F6"
		$"FBFD FEFE 8CFF 80FD 00FF 80FB 00FF 80F9"
		$"00FF 80F8 00FF 80F8 00FF 80F8 00FF 80FA"
		$"00FF 80FE 87FF 03FB ECD6 7B82 0096 FF88"
		$"0015 3159 7F94 A2B0 BECC D7DE E3E7 E9EC"
		$"EEF0 F3F6 FBFD FEFE 91FF 80FD 00FF 80FB"
		$"00FF 80F9 00FF 80F8 00FF 80F8 00FF 80F8"
		$"00FF 80FA 00FF 80FE 87FF 04FE EFE2 9F14"
		$"8100 96FF 8300 1533 597F 96A5 B4C3 CED8"
		$"DFE3 E7E9 ECEE F0F3 F6FB FDFE FEBF FF04"
		$"FEF3 E6B9 3E81 0096 FF16 0015 6486 96A7"
		$"B4C3 CED8 E0E4 E8E9 ECEE F0F3 F6FB FDFE"
		$"FE8F FF80 FE00 FF80 FB00 FF80 EA00 FF80"
		$"CF00 FF80 AC00 FF80 9000 FF80 8A00 FF80"
		$"8900 FF80 8B00 FF80 A600 FF80 E600 FF80"
		$"FE84 FF03 F9EA CE6B 8200 95FF 1100 6DB9"
		$"CFD8 E0E4 E8E9 ECEE F1F4 F8FB FDFE FE94"
		$"FF80 FE00 FF80 FB00 FF80 EA00 FF80 CF00"
		$"FF80 AC00 FF80 9000 FF80 8A00 FF80 8900"
		$"FF80 8B00 FF80 A600 FF80 E600 FF80 FE84"
		$"FF04 FDED DE91 0581 0095 FF0C 0060 C6E8"
		$"ECEE F1F4 F8FB FDFE FE99 FF80 FE00 FF80"
		$"FB00 FF80 EA00 FF80 CF00 FF80 AC00 FF80"
		$"9000 FF80 8A00 FF80 8900 FF80 8B00 FF80"
		$"A600 FF80 E600 FF80 FE84 FF04 FEF1 E5AF"
		$"3081 0095 FF07 0028 B1E5 F2FD FEFE D5FF"
		$"03F6 E9C9 5C82 0094 FF05 0005 95E1 EFFE"
		$"98FF 80FE 00FF 80FC 00FF 80F1 00FF 80C2"
		$"00FF 807A 00FF 805D 00FF 8040 00FF 802C"
		$"00FF 8029 00FF 8028 00FF 8027 00FF 8030"
		$"00FF 80AD 00FF 80FB 85FF 03FC ECD9 8482"
		$"0094 FF05 0000 75D7 EDFC 98FF 80FE 00FF"
		$"80FC 00FF 80F1 00FF 80C2 00FF 807A 00FF"
		$"805D 00FF 8040 00FF 802C 00FF 8029 00FF"
		$"8028 00FF 8027 00FF 8030 00FF 80AD 00FF"
		$"80FB 85FF 04FE F0E3 A720 8100 94FF 0500"
		$"0051 C9EA F998 FF80 FE00 FF80 FC00 FF80"
		$"F100 FF80 C200 FF80 7A00 FF80 5D00 FF80"
		$"4000 FF80 2C00 FF80 2900 FF80 2800 FF80"
		$"2700 FF80 3000 FF80 AD00 FF80 FB86 FF03"
		$"F4E8 C14A 8200 93FF 0500 002F B4E8 F4D8"
		$"FF03 FAEB D474 8200 93FF 0600 0012 9BE3"
		$"F1FE 93FF 80FC 00FF 80ED 00FF 80B9 00FF"
		$"8087 00FF 8053 00FF 801F 00FF 8038 00FF"
		$"8053 00FF 8066 00FF 8058 00FF 8040 00FF"
		$"802D 00FF 8030 00FF 80AD 00FF 80FB 86FF"
		$"04FD EEE1 990F 8100 93FF 0600 0003 83DE"
		$"EFFE 93FF 80FC 00FF 80ED 00FF 80B9 00FF"
		$"8087 00FF 8053 00FF 801F 00FF 8038 00FF"
		$"8053 00FF 8066 00FF 8058 00FF 8040 00FF"
		$"802D 00FF 8030 00FF 80AD 00FF 80FB 86FF"
		$"04FE F2E6 B63A 8100 84FF 8700 82FF 8000"
		$"0366 D4EC FC84 FE8C FF80 FC00 FF80 ED00"
		$"FF80 B900 FF80 8700 FF80 5300 FF80 1F00"
		$"FF80 3800 FF80 5300 FF80 6600 FF80 5800"
		$"FF80 4000 FF80 2D00 FF80 3000 FF80 AD00"
		$"FF80 FB87 FF03 F8EA CE6A 8200 81FF 8A00"
		$"81FF 8000 0E48 C3E9 F7FD FCFB FAFA FBFB"
		$"FCFC FDFD 80FE CAFF 04FD EDDD 8E05 8100"
		$"80FF 8C00 80FF 8000 062C AFE6 F0F9 F6F4"
		$"80F2 0BF3 F4F5 F7F8 F9FA FBFB FCFD FD80"
		$"F700 FF80 D700 FF80 9600 FF80 4400 FF80"
		$"1F00 FF80 3200 FF80 6B00 FF80 8300 FF80"
		$"6B00 FF80 5200 FF80 3700 FF80 3100 FF80"
		$"6500 FF80 9E00 FF80 E500 FF80 FE87 FF04"
		$"FEF1 E4AD 2A81 0001 FFFF 8300 041B 5145"
		$"372E 8200 80FF 8000 1D12 9CDF EAF2 EBE2"
		$"E0E2 E2E6 E8E9 EBED EFF0 F2F3 F5F6 F7F1"
		$"F2F3 FBD4 D4D5 FD80 9500 FE80 4400 FF80"
		$"1F00 FF80 3200 FF80 6B00 FF80 8300 FF80"
		$"6B00 FF80 5200 FF80 3700 FF80 3100 FF80"
		$"6500 FF80 9E00 FF80 E500 FF80 FE88 FF03"
		$"F5E9 C555 8900 0431 589D 312E 8300 01FF"
		$"FF80 0021 0382 D9E3 E8DA D4D6 D3D0 CFD3"
		$"D2D6 DADD E0E4 E6E8 EAEC E7E8 EAF2 CECF"
		$"CFF7 9292 93FB 8043 00FD 801F 00FE 8032"
		$"00FF 806B 00FF 8083 00FF 806B 00FF 8052"
		$"00FF 8037 00FF 8031 00FF 8065 00FF 809E"
		$"00FF 80E5 00FF 80FE 88FF 03FB ECD8 8088"
		$"0005 2A31 B7A3 090F 8300 01FF FF81 002B"
		$"60C9 DCDC D2F2 FAF1 F3F2 E4E4 E0D6 D0D1"
		$"D1CE D4D6 D9DC DFE2 E3E5 E8E9 ECEE EFF1"
		$"F2F3 F4F5 F6F8 F9FA FBFD FEFE B0FF 04FE"
		$"EFE3 A31C 8600 0615 1665 E734 0002 8300"
		$"01FF FF81 0005 3FB8 D4D2 CEF9 81FF 22FC"
		$"FDFE F9FD F9EE EEE8 E1D9 D7CE CCD3 A490"
		$"95D9 4958 47E2 4339 3AEB 6C6D 6EF5 9FA1"
		$"A3FE 80B1 00FF 805D 00FF 802C 00FF 803D"
		$"00FF 8069 00FF 8099 00FF 80D4 00FF 80F4"
		$"00FF 80FE 8CFF 04FE F4E8 BE44 8500 0406"
		$"231C BAA0 8600 01FF FF81 0005 24A3 CECA"
		$"CFF6 87FF 20FE FFFF FEFF FEF9 F4F0 EAE2"
		$"E5DA BEB8 A1D2 9979 72D4 7F7C 77EB 9C9F"
		$"A1FD B0B1 B1FF 805D 00FF 802C 00FF 803D"
		$"00FF 8069 00FF 8099 00FF 80D4 00FF 80F4"
		$"00FF 80FE 8DFF 03FA EBD2 7285 0006 201A"
		$"82DF 2B00 0184 0001 FFFF 8100 050C 8CC6"
		$"C5D4 F793 FF14 FDF9 F8F0 EFF1 E7DD DFC1"
		$"BFBF D79E 9B9F FCB0 B1B1 FF80 5D00 FF80"
		$"2C00 FF80 3D00 FF80 6900 FF80 9900 FF80"
		$"D400 FF80 F400 FF80 FE8D FF04 FDEE DF93"
		$"0B83 0006 1321 3BD7 7F02 0285 0001 FFFF"
		$"8200 0471 BDC3 DDFC 9AFF 0AFD FDF9 FAFA"
		$"E0D6 EBF4 FBFE AFFF 04FE F2E6 B334 8300"
		$"0625 1CA0 DB1F 0803 8500 01FF FF82 0003"
		$"55B2 C0E1 89FF 04FD FBFE FBFA 82F9 00FB"
		$"88FF 09FE E0C7 D1DC F981 8282 FF80 2E00"
		$"FF80 3800 FF80 7600 FF80 C100 FF80 EB00"
		$"FF80 F700 FF80 FC92 FF03 F8E9 CA5E 8200"
		$"0725 1C44 F262 120A 0185 0001 FFFF 8200"
		$"0338 A3C0 E988 FF05 FDF9 F3EB DED5 80CF"
		$"04CE D2DA ECFC 86FF 09FA D5C2 CEDA F981"
		$"8282 FF80 2E00 FF80 3800 FF80 7600 FF80"
		$"C100 FF80 EB00 FF80 F700 FF80 FC92 FF04"
		$"FCED DA8A 0580 0007 0C34 1EBD C811 0E0C"
		$"8500 80FF 8200 031C 91C1 ED85 FF11 FEFD"
		$"F9ED DBC9 B29A 8A81 8080 7F84 91BC EAFC"
		$"85FF 09FD CEBD CCD9 F981 8282 FF80 2E00"
		$"FF80 3800 FF80 7600 FF80 C100 FF80 EB00"
		$"FF80 F700 FF80 FC92 FF04 FEF0 E3A6 1F80"
		$"0007 0905 58F5 5000 0608 8500 80FF 8200"
		$"030A 77C0 EE86 FF08 F8E1 B993 836D 5749"
		$"4380 4504 4647 82CD F585 FF06 FACE CBE0"
		$"EFF9 FEB1 FF0C F4E7 BF49 0000 0C16 15CA"
		$"B803 0887 0080 FF82 0003 026E C6F2 83FF"
		$"13FB EDDD C2A0 6C49 4C4D 5154 534C 4439"
		$"2F27 67C1 F285 FF09 F0C9 BED0 DEFA 8788"
		$"88FF 8031 00FF 8034 00FF 8053 00FF 8073"
		$"00FF 808B 00FF 80A5 00FF 80D0 00FF 80F4"
		$"00FF 80FE 8AFF 0DFE FAE8 CF6E 0000 1E18"
		$"71ED 430F 0887 0080 FF83 0002 44CC F780"
		$"FF16 FEFC F4DC B894 755E 4038 4C5F 6D77"
		$"7263 554A 4646 81CD F585 FF09 EFC6 C1D2"
		$"E0FB 8788 88FF 8031 00FF 8034 00FF 8053"
		$"00FF 8073 00FF 808B 00FF 80A5 00FF 80D0"
		$"00FF 80F4 00FF 80FE 8AFF 0DFE FBE9 D68A"
		$"0C14 1235 E699 170E 0186 0082 FF82 0002"
		$"3CD1 FC80 FF16 FAEE D1A3 7047 373B 5371"
		$"8687 796C 5947 3E4C 6E88 BBE9 FB85 FF05"
		$"EAC6 C3D4 E1FB 8088 00FF 8031 00FF 8034"
		$"00FF 8053 00FF 8073 00FF 808B 00FF 80A5"
		$"00FF 80D0 00FF 80F4 00FF 80FE 89FF 0EFE"
		$"FDF9 E9D6 9F24 1E17 92E8 2800 0A06 8600"
		$"82FF 8100 0206 6EDF 80FF 17FC E6BF 9064"
		$"473F 4F67 90A5 9172 5954 5259 6487 B2CF"
		$"ECFC FE85 FF05 E1C6 D6E8 F4FC B0FF 0EFE"
		$"FBF7 EBD3 AE26 193C F391 0712 1903 8500"
		$"83FF 8200 196B E2FF FFFE F5CB 8C5C 4C54"
		$"759F BAC7 AE73 473D 4D6C 91AC D0ED FA88"
		$"FF05 D9C5 D4E5 F1FD 80D7 00FF 8095 00FF"
		$"8064 00FF 8043 00FF 8033 00FF 8030 00FF"
		$"803B 00FF 8065 00FF 80AC 00FF 80ED 00FF"
		$"80FE 84FF 0EFE FDF9 F4E9 D088 1E1F 9EDC"
		$"240F 0402 8600 83FF 8200 1A8A E5FF FFFC"
		$"EEBA 6E54 6783 B3DD E9C4 8351 3C50 72A2"
		$"CEE7 F7FD FFFD 87FF 05D9 C7D7 E7F2 FD80"
		$"D700 FF80 9500 FF80 6400 FF80 4300 FF80"
		$"3300 FF80 3000 FF80 3B00 FF80 6500 FF80"
		$"AC00 FF80 ED00 FF80 FE83 FF0E FEFE FBF6"
		$"EFE3 C940 1441 EC82 0310 0187 0083 FF81"
		$"001C 03A5 EDFF FFFD F2CD 978C A5C3 E7FC"
		$"FBC3 723F 324E 6F97 BACC D8E2 EFFA FD85"
		$"FF06 F9CF C9DA E8F3 FE80 D700 FF80 9500"
		$"FF80 6400 FF80 4300 FF80 3300 FF80 3000"
		$"FF80 3B00 FF80 6500 FF80 AC00 FF80 ED00"
		$"FF80 FE83 FF0D FEFC F8F2 E9DB 7314 1CB6"
		$"D524 190E 8700 85FF 8100 1CB7 F4FF FFFE"
		$"FCEF DBD6 E2F2 FFFF F9CC 8C5A 444D 5968"
		$"757F 8CA1 BCDC F2FB 84FF 06F4 CBCC E0EF"
		$"F9FE ADFF 0EFE FDFA F4EC E1B9 220D 5AFC"
		$"6E0E 1705 8700 85FF 8100 01BB F780 FF18"
		$"FEFB F8F7 FAFC FEFE FDE9 C397 745F 5248"
		$"4546 4C5E 79A3 D0EE FE83 FF06 F2CB CFE2"
		$"F1FA FE80 FC00 FF80 F300 FF80 D300 FF80"
		$"B000 FF80 9600 FF80 8200 FF80 5B00 FF80"
		$"3800 FF80 4800 FF80 C000 FF80 FC81 FF0E"
		$"FEFE FBF7 F0E6 D85B 1123 CDB7 1A11 0F87"
		$"0085 FF81 0002 46CA FC88 FF10 FEFB EED9"
		$"BB9E 8570 625C 544F 5164 91CC F483 FF06"
		$"EAC5 D2E5 F2FB FF80 FC00 FF80 F300 FF80"
		$"D300 FF80 B000 FF80 9600 FF80 8200 FF80"
		$"5B00 FF80 3800 FF80 4800 FF80 C000 FF80"
		$"FC81 FF0E FEFC F9F3 EADD 8F25 1463 F349"
		$"0719 1387 0085 FF81 0001 66D7 8AFF 0FFE"
		$"FFFF F2DF CDBE B1A7 8C6A 4E3D 5EAC E883"
		$"FF06 E1C8 D5E7 F4FC FF80 FC00 FF80 F300"
		$"FF80 D300 FF80 B000 FF80 9600 FF80 8200"
		$"FF80 5B00 FF80 3800 FF80 4800 FF80 C000"
		$"FF80 FC80 FF0E FEFE FBF6 EEE3 C741 1723"
		$"C2AB 0C17 0887 0086 FF81 0002 7ED7 FE8B"
		$"FF0D FEFC F9F5 F4EE E4BA 835E 3C50 A2E5"
		$"83FF 05E4 CBD7 E9F5 FCAC FF0D FEFC F8F2"
		$"E8DA 7D1B 0A7F E33D 0B0C 8800 86FF 8100"
		$"029B E3FE 91FF 07E3 AB73 5753 7ABD EF82"
		$"FF06 FDDA C6D9 EAF6 FD82 FF80 FE00 FF80"
		$"FD00 FF80 FB00 FF80 FA00 FF80 DD00 FF80"
		$"8600 FF80 4600 FF80 3600 FF80 B300 FF80"
		$"FB11 FFFF FEFD FAF4 ECE0 C02A 1634 DF94"
		$"0B0D 0B07 8600 87FF 8100 01AD ED90 FF09"
		$"FCE0 B075 5559 83BD E6FC 82FF 06F9 D1C7"
		$"DCEC F7FD 82FF 80FE 00FF 80FD 00FF 80FB"
		$"00FF 80FA 00FF 80DD 00FF 8086 00FF 8046"
		$"00FF 8036 00FF 80B3 00FF 80FB 11FF FFFE"
		$"FBF7 F0E6 D87A 2622 9DE9 3B13 160F 1B86"
		$"0087 FF81 0002 ADEB FE8F FF08 ECB8 7C49"
		$"4878 B9EB F983 FF06 F8D0 CADE EEF8 FE82"
		$"FF80 FE00 FF80 FD00 FF80 FB00 FF80 FA00"
		$"FF80 DD00 FF80 8600 FF80 4600 FF80 3600"
		$"FF80 B300 FF80 FB12 FFFE FDF9 F3EA DEAD"
		$"4120 4CDF 950D 1219 0838 0985 0087 FF81"
		$"0001 BCF3 8EFF 08FE F6C7 8453 4164 A8E3"
		$"85FF 06F3 CBCD E0EF F9FE A9FF 12FE FEFB"
		$"F6EE E3D1 4418 22A3 DF31 0C0E 1325 6920"
		$"8400 87FF 8100 0251 C5FB 8EFF 08F9 DE99"
		$"5944 5B96 D4F9 85FF 06F0 C6CE E2F0 FAFE"
		$"8EFF 80F0 00FF 80A5 00FF 8052 00FF 8048"
		$"00FF 8093 00FF 80E5 00FF 81FE 11FC F8F2"
		$"E8DB 7815 0756 DD76 0F1B 1930 5884 4384"
		$"0087 FF81 0002 67C3 F78E FF08 F3C5 7641"
		$"4B7A BDEB FE85 FF06 F1C8 D1E4 F2FB FE8E"
		$"FF80 F000 FF80 A500 FF80 5200 FF80 4800"
		$"FF80 9300 FF80 E517 FFFE FEFD FDFA F4EC"
		$"E1C1 2315 11B4 C518 1015 0D35 7D97 690B"
		$"8200 88FF 8100 0288 D1FB 8EFF 07F1 BA66"
		$"3754 96DA F986 FF06 E7C5 D3E6 F3FB FE8E"
		$"FF80 F000 FF80 A500 FF80 5200 FF80 4800"
		$"FF80 9300 FF80 E517 FFFE FEFD FBF7 F0E6"
		$"D557 1F16 58DF 5B0C 1810 095C 98A3 8B26"
		$"8200 88FF 8100 0293 D8FC 8EFF 07F1 BD6E"
		$"4465 A7E4 FA85 FF06 FCE3 C9D6 E7F4 FCA8"
		$"FF15 FEFC F9F3 EADD 931A 1E2D B5AC 2217"
		$"1206 158D A5AE A650 8200 88FF 8100 0290"
		$"DAFC 8EFF 07F3 C582 5E79 A1C3 D985 FF06"
		$"FCDD C7D8 E9F5 FC8B FF80 F900 FF80 B300"
		$"FF80 5000 FF80 3000 FF80 8B00 FF80 E800"
		$"FF80 FD18 FFFE FEFB F6EE E3CD 4828 1A76"
		$"DC4F 1216 0900 4D9D B1B9 BC7C 0881 0088"
		$"FF81 0002 A8E6 FE8E FF0C F8DB A883 8679"
		$"808D 95F7 E7BE CE80 FF06 FAD2 C8DA EBF6"
		$"FD8B FF80 F900 FF80 B300 FF80 5000 FF80"
		$"3000 FF80 8B00 FF80 E800 FF80 FD18 FFFE"
		$"FCF8 F2E8 DA7E 2316 2FCC 950F 1A11 0311"
		$"89A7 BBC5 C99E 2881 0088 FF80 0002 29AF"
		$"EE8F FF16 FDF2 D1AC 98A3 C7E5 7EE7 CEBE"
		$"AE96 FFFF FBD2 C8DB ECF7 FD8B FF80 F900"
		$"FF80 B300 FF80 5000 FF80 3000 FF80 8B00"
		$"FF80 E800 FF80 FD18 FEFD FAF4 ECE0 BF2E"
		$"1E12 89D6 4914 1A0A 1B48 9BB2 C6D0 D2BD"
		$"5682 0087 FF80 0002 44AD ED90 FF07 FCEC"
		$"D0B6 BC94 78B6 80FF 0AF7 7FFF FFF9 CDC8"
		$"DBEC F7FD A6FF 18FE FBF7 F0E6 D477 2016"
		$"42BD 7111 1912 0727 7DA7 BCCF DCD9 D07E"
		$"8200 86FF 8100 026B C2F4 91FF 18FC F0DF"
		$"E0EF BEA6 FFFF F7AE 96FF FFF3 C5C5 DAEA"
		$"F4FB FDFD FEFE 83FF 80FE 00FF 80D3 00FF"
		$"8064 00FF 8033 00FF 806B 00FF 80D4 00FF"
		$"80FC 80FF 1AFE FDF9 F4EB DE98 3120 2081"
		$"C434 0916 1004 479B B0C5 D7E5 E2DD A51F"
		$"8100 86FF 8100 0662 C8F6 FFFC FDFE 8DFF"
		$"19FE FDDB C2FF C69E FFE7 969E F7FF FFF3"
		$"C1BF D4E4 EEF5 F7F9 FBFC FD80 FE01 FFFF"
		$"80FE 00FF 80D3 00FF 8064 00FF 8033 00FF"
		$"806B 00FF 80D4 00FF 80FC 80FF 1AFE FBF7"
		$"EFE4 D24C 1C10 4DBB 6D13 0B12 050A 85A6"
		$"BBCE DFEB E9E3 C04A 8200 85FF 8200 0BB7"
		$"CFDD D6E1 ECED F4F9 F4F9 FC89 FF20 E7A6"
		$"7F8E D7D7 7FB6 F7FF FFFE EAC0 BCCD D9E5"
		$"ECEF F2F4 F6F8 FAFB FCFD FEFD FDFE FF80"
		$"D300 FF80 6400 FF80 3300 FF80 6B00 FF80"
		$"D400 FF80 FC1D FFFF FEFC F9F2 E9DC 9615"
		$"1324 94A1 2B0B 0E1B 0443 9BB0 C5D6 E5F0"
		$"F2E8 D374 8200 86FF 8100 133C 5E7F 7B8E"
		$"A591 B0C7 CAD4 DCE2 EAEE ECF4 F7FC FE86"
		$"FF1C DFBE 9E8E 9EFF FEDF C5D0 DBE1 E2E4"
		$"E5E7 EAED F0F2 F4F7 F8FA FBFC FDFE FE94"
		$"FF1D FEFE FBF5 EDE2 D23D 130A 4FAC 560F"
		$"1610 1403 7CA5 BACE DEEB F4F8 EDE0 990F"
		$"8100 86FF 8700 180A 82B2 B8B9 B8B7 BEBD"
		$"BFC8 CDD0 DFE2 E6ED F2F8 F9FF FEFE FFFE"
		$"82FF 14DE C7D8 E9F5 FBF7 F0E8 E4E3 E6E7"
		$"EAED F0F3 F2F4 F6FC 80A4 00FF 8030 00FF"
		$"8047 00FF 80AE 00FF 80F7 82FF 1DFE FCF8"
		$"F1E7 D981 211A 168D 8710 1012 170E 3D96"
		$"AFC4 D6E5 F0F7 FBF1 E6B6 3A81 0086 FF88"
		$"0022 ADCB CAC8 C5C2 C0BE BBBA B6B4 B9B6"
		$"BCC0 C5C7 D0D7 DAE4 EDE8 F4FB F7FB FDDB"
		$"C8DC EBF7 FD80 FF0F FCF6 EEE7 E4E4 E5E9"
		$"E9ED F0F8 A2A3 A4FE 8030 00FF 8047 00FF"
		$"80AE 00FF 80F7 81FF 1EFE FDFA F4EB DFB4"
		$"371A 1047 9A41 0512 0B08 1E71 A4BA CDDD"
		$"EBF4 FAFD F7EA CE6A 8200 85FF 8700 2335"
		$"CFE1 DFDD DAD8 D6D4 D1CE CCC9 C6C3 C0BC"
		$"B9B5 B7B4 B7BA BDBC C4C8 C9D5 DCD0 CDE1"
		$"EEF8 FD84 FF0B FBF4 ECE6 E4E5 E9F3 A0A2"
		$"A4FE 8030 00FF 8047 00FF 80AE 00FF 80F7"
		$"80FF 20FE FEFB F7F0 E5D3 691C 1E21 7372"
		$"1412 1309 0237 99AE C3D5 E4F0 F7FB FEFD"
		$"EDDD 8E05 8100 86FF 8600 2391 E2F0 EEED"
		$"EBE9 E8E6 E4E2 E0DD DAD6 D3C4 C1AB A98C"
		$"8A75 736D 6C75 7D8A 95A1 96D3 DDF9 FD88"
		$"FF07 F9F1 E5EC F3F8 FCFE 8FFF 20FE FCF9"
		$"F3EA DD74 2517 1752 8332 1B1E 1904 0060"
		$"A2B8 CCDD EAF4 FAFD FEFE F1E4 AD2A 8100"
		$"88FF 8400 23C3 F1F9 F8F8 F7F5 F4F3 F2F1"
		$"EFEC EBE6 E4D5 D3BC B99C 9A83 817B 7A78"
		$"787A 7C96 9ED9 E1FB FD89 FF06 FEE5 E595"
		$"9A9D FD80 3000 FF80 5F00 FF80 D000 FF80"
		$"FD80 FF20 FEFB F6EE E3C9 2413 161B 7548"
		$"1218 1413 0112 92AD C1D4 E4EF F7FB FEFF"
		$"FFF5 E9C5 5582 0089 FF81 0024 04E0 FCFE"
		$"FEFD FDFC FCFA FAF7 F6EB EAC1 C081 8067"
		$"664D 4C3B 3B38 3736 3635 363E 40AE B1F9"
		$"FB89 FF06 F9DF DE93 989C FD80 3000 FF80"
		$"5F00 FF80 D000 FF80 FD23 FFFF FEFC F9F2"
		$"E9DB 8710 1C18 4A71 1709 1610 0404 59A1"
		$"B7CA DCE9 F3F9 FDFE FFFF FBEC D880 8200"
		$"88FF 8200 0175 EA84 FF1B FDFD FBFB F1F0"
		$"C6C6 8585 6B6A 5150 3E3E 3B3B 3939 3839"
		$"4142 B1B3 FAFB 89FF 06F2 D6D9 9197 9CFD"
		$"8030 00FF 805F 00FF 80D0 00FF 80FD 1CFF"
		$"FFFE FBF6 EDE2 D254 191C 295E 3A09 1116"
		$"0800 2F95 ABC1 D3E2 EEF7 FBFE 80FF 04FE"
		$"EFE3 A31C 8100 88FF 8200 01B9 F182 FF1D"
		$"FCFC EFEF C0C0 9393 6464 3535 4C4C 6463"
		$"7474 6666 5151 4040 4343 B4B4 FAFB 89FF"
		$"06EA CDD7 E5F0 F8FD 8DFF 1BFE FDF9 F2E9"
		$"DAA1 2621 253C 511F 0511 0D04 0B76 A1B6"
		$"CADB E9F2 F9FD FE80 FF04 FEF4 E8BE 4481"
		$"0088 FF82 0001 D3F8 82FF 1DFC FCEF EFC0"
		$"C093 9364 6435 354C 4C64 6475 7568 6853"
		$"5342 4244 44B4 B5FB FB88 FF07 FEE3 C1D6"
		$"A1A9 AFFD 805C 00FF 807C 00FF 80CC 00FF"
		$"80FA 1BFF FEFB F7EE E2D3 5715 2329 462F"
		$"1214 1202 0046 97AC C1D3 E2ED F6FB FE82"
		$"FF03 FAEB D272 8200 86FF 8200 0125 E481"
		$"FF1F F9F9 DBDB A0A0 5656 3535 4646 7A7A"
		$"8F8F 7A7A 6363 4B4B 4545 7474 A8A8 E8E8"
		$"FEFE 88FF 07F7 D6C3 D8A2 AAAF FE80 5C00"
		$"FF80 7C00 FF80 CC00 FF80 FA1B FEFD F9F3"
		$"E9DB AE1A 1328 3A34 1912 0609 021E 89A2"
		$"B7CA DBE9 F2F9 FDFE 82FF 04FD EEDF 930B"
		$"8100 86FF 8200 019C EC81 FF1F F9F9 DBDB"
		$"A0A0 5656 3535 4646 7A7A 8F8F 7A7A 6363"
		$"4B4B 4545 7474 A8A8 E8E8 FEFE 88FF 07F0"
		$"CAC6 DBA4 ABAF FE80 5C00 FF80 7C00 FF80"
		$"CC00 FF80 FA1A FEFB F7EF E3D3 8055 1D1B"
		$"3D2E 1B15 0A0F 025E 9AAE C2D4 E3EE F6FB"
		$"FE83 FF04 FEF2 E6B3 3481 0086 FF82 0023"
		$"C4F3 FFFF FEFE DFDF 8989 5454 5252 8282"
		$"ADAD B9B9 6D6D 4141 5050 7878 A3A3 D8D8"
		$"F5F5 FEFE 8AFF 07E9 C1CE DFEC F6FC FE8B"
		$"FF1B FEFD F9F3 EADD B547 7790 4C23 2929"
		$"1A0D 021F 89A6 BACC DDE9 F3F9 FDFE 84FF"
		$"03F8 E9CA 6082 0085 FF82 0023 DBFB FFFF"
		$"FEFE DFDF 8989 5454 5252 8282 ADAD B9B9"
		$"6D6D 4141 5050 7878 A3A3 D8D8 F5F5 FEFE"
		$"86FF 80FE 08FC E1BF D2E3 D3DB DFFF 809F"
		$"00FF 8087 00FF 80B4 1DFF F2F2 F1FB F7EF"
		$"E4D4 8A50 78E3 F6B0 6027 1708 015A 9DB2"
		$"C5D6 E5F0 F7FB FE85 FF03 FCED DB8B 8200"
		$"84FF 8200 013F E780 FF1D FCFC CCCC 6666"
		$"7070 9F9F E1E1 EBEB 8E8E 4242 4C4C 8383"
		$"C7C7 EDED F8F8 FCFC 85FF 0EFE FEFD FCFB"
		$"FCF3 D2C4 D7E6 D6DC DFFF 809F 00FF 8087"
		$"00FF 80B4 1DFF F2F1 F0F9 F3EA DDB8 6053"
		$"99FB FFF7 9447 1B00 2A93 A9BD CFDF EBF4"
		$"FAFD FE85 FF04 FEF0 E4A9 2381 0084 FF82"
		$"0001 ABEE 80FF 1DFC FCCC CC66 6670 709F"
		$"9FE1 E1EB EB8E 8E42 424C 4C83 83C7 C7ED"
		$"EDF8 F8FC FC84 FF0F FEFD FBF7 F0EF F2E5"
		$"C2C8 D9E9 D7DD E0FF 809F 00FF 8087 00FF"
		$"80B4 1CFF F2F1 EEF7 EFE4 D376 527E B4FC"
		$"FFB6 617B 9339 7DA0 B5C8 D9E6 F1F8 FCFE"
		$"87FF 03F5 E9C4 5481 0084 FF82 0001 CCF5"
		$"80FF 21FE FEEF EFC9 C9D0 D0EE EEFC FCEE"
		$"EE94 9445 4548 4864 6481 8196 96AE AED5"
		$"D5F5 F5FE FE80 FF0E FEFB F5EB DCD9 DCD0"
		$"B5C7 DAE9 F4FB FD8A FF1B FEFD F9F3 E9DC"
		$"A34A 619C E0E5 E283 4E85 AC70 98AC C1D3"
		$"E2ED F5FB FEFE 87FF 03FB ECD7 7C81 0084"
		$"FF82 0001 E0FC 80FF 21FE FEEF EFC9 C9D0"
		$"D0EE EEFC FCEE EE94 9445 4548 4864 6481"
		$"8196 96AE AED5 D5F5 F5FE FE80 FF13 FDF7"
		$"EEDA DCED DECC BCC2 D3E4 ECF4 F8FE DDDE"
		$"DEFF 80B7 00FF 80D4 1BFF F5F2 EEEE E2CE"
		$"7552 70D0 FFF6 9D75 7893 9390 A4B9 CCDC"
		$"E9F2 F9FC FE82 FF0A DF96 9EA6 FFFF FEEF"
		$"E29D 1380 0083 FF82 0001 69E8 83FF 05FD"
		$"FDFC FCFD FD81 FE15 FAFA DBDB 9F9F 7373"
		$"5555 4747 4444 4E4E 7474 B4B4 EFEF 80FE"
		$"13FB F2E4 D2E8 FFF7 EFE6 CFCB D5E0 EAF1"
		$"F9DB DDDD FF80 B700 FF80 D42B FEF4 F0EA"
		$"E9DB A965 529D FBFF EA76 5B72 8D8D 9DB1"
		$"C5D6 E4EF F7FB FEFF DFDF FFFF E77F DFF7"
		$"8EC6 FFFE F3E6 B943 8000 83FF 8200 01B5"
		$"F083 FF05 FDFD FCFC FDFD 81FE 30FA FADB"
		$"DB9F 9F73 7355 5547 4744 444E 4E74 74B4"
		$"B4EF EFFE FEFD F8EC DAD3 F5FF FFFE FDF4"
		$"E6D7 D1D6 E2EE D5D9 DBFE B6B7 B7FF 80D4"
		$"2BFE F2EE E7E4 D074 6089 DCFF F8A7 5D80"
		$"9A89 96AA BECF DFEB F4F9 FDCD 867F 7FA6"
		$"FFD7 86EF FF96 CEFF FFF9 EAD0 6E80 0083"
		$"FF82 0001 D2F7 8FFF 1BFC FCF4 F4D7 D7B8"
		$"B8A0 A08E 8E6B 6B4C 4C5A 5AC6 C6FC FBFC"
		$"F3E4 D0E1 FD83 FF0C F9EB DBD6 D9E6 EEF4"
		$"F8FB FDFE FE80 FF2E FEFA F4EB DEB4 4C63"
		$"A8F6 FFDB 7967 858C 90A3 B7CA DAE6 ABEF"
		$"FBFE AEC6 FFE7 7FDF F796 7F8E 7FC6 FFFF"
		$"FDEE DF94 0B00 0083 FF81 0002 15E2 FD8F"
		$"FF1A FCFC F4F4 D7D7 B8B8 A0A0 8E8E 6B6B"
		$"4C4C 5A5A C6C6 FCFB F9EE DAD0 F185 FF28"
		$"FDF8 EDDF D6D4 DDEB E6EA EDFC F7F7 F8FD"
		$"F7F0 E4D8 B869 7CD5 FEEC AE94 777E 8A9D"
		$"B0C3 D4E2 B87A D3FD FE80 FF11 F77F DFFF"
		$"D796 DFC6 86CE FFFE F2E6 B230 0000 82FF"
		$"8200 0183 EA92 FF18 FEFE FDFD FBFB FAFA"
		$"E0E0 9292 5858 4A4A BABA FBF9 F6E7 D4DE"
		$"FB81 FF03 FEFC FEFB 81FA 23F0 E0D7 D4D4"
		$"DCE3 F5F2 F5F5 FBF5 ECE0 D2BB 7092 FFFF"
		$"C96D 7C85 8798 ABBD CFDF CD8F 92AC FE81"
		$"FF11 BE8E FFFF 9EB6 FFFF 9EBE FFFF F6E9"
		$"C95C 0000 82FF 8200 01BF F292 FF18 FEFE"
		$"FDFD FBFB FAFA E0E0 9292 5858 4A4A BABA"
		$"FAF7 F1DF CCEB FE81 FF2B F7E6 D0BB B4B4"
		$"B5C1 E6FC F5E7 DBD0 D1E1 E7EF F2F9 F1E9"
		$"DBCB AC88 AADD F28B 5C83 8493 A6B9 CBD9"
		$"E7F0 F7C3 8DFE 80FF 12F7 86D7 FFFF BE86"
		$"CEBE 8EE7 FFFF FCEC D983 0000 82FF 8200"
		$"01D8 F998 FF11 F1F1 AEAE 6363 5A5A 9E9E"
		$"E8E8 FCF6 EAD3 D3F6 80FF 2DFE E4B1 9177"
		$"625D 5D5C 5DA9 F3FF FEF8 EBE1 D6DA E9F4"
		$"F6F0 E6D8 BC98 8FC3 B4D5 AA8A 978E A0B4"
		$"C6D6 E4EC F5FA ED7F EF80 FF11 A69E FFD7"
		$"C8F4 BE9A A4EC FEFE FFFC EDDB 8C06 8100"
		$"00FF 8200 023A E2FE 98FF 20F1 F1AE AE63"
		$"635A 5A9E 9EE8 E7FA F0E0 CDE8 FFFF F9DD"
		$"B98C 5657 6974 705F 4E43 97EF 81FF 29FA"
		$"F5D8 DDEC F1EC E1D0 B984 96C6 BBB1 794E"
		$"8A99 AEC1 D1E0 EBF4 F8FC FE8E CEFF FFDF"
		$"7F96 7F8B B0F8 FBFC FE80 FD05 FBF6 F1E5"
		$"AE29 8100 00FF 8200 0195 EC97 FF22 FAFA"
		$"BABA 6161 4444 9696 EAEA FDFB F7EA D3D5"
		$"F6FE EEC1 8054 516D 8D8D 7F69 586B 8DCE"
		$"FA82 FF31 F8D4 D5E6 EBE7 DAC2 CB97 C8AD"
		$"AB99 5130 8DA5 BACC DCE9 F2F8 FAFD FDAD"
		$"95B5 E6E6 A5C4 E2FB FCFC FEFD FBF3 F0EE"
		$"EBE8 E3DE B23C 8100 00FF 8200 01C5 F497"
		$"FF21 FAFA BABA 6161 4444 9696 EAEA FCF9"
		$"F2E0 CEE9 FEEB AD71 596E 98BA 9768 6071"
		$"8CBD E6FC 82FF 1FFC E2C5 D4E2 E6E1 CBC1"
		$"B1A6 C698 A180 4C6B 9DB1 C5D6 E4EF F7FB"
		$"FDFE A57F 95BD F581 FD0E FCF9 F5F1 EFEB"
		$"E6E0 D7CB B6A1 8D63 1381 0000 FF82 0001"
		$"DBFB 95FF 23FE FED7 D773 7347 477A 7AD8"
		$"D8FC FCFE F8EC D5CF F2FD D479 688E CDE9"
		$"B465 5279 B7E5 FCFF FE82 FF30 F5CF C2D5"
		$"E2E1 D4B8 C9A3 BEB8 BCAE 534D 90A8 BCCF"
		$"DFEB F4FA FDFE FFE7 F7FF FEFD FBF6 F3F0"
		$"EDEA E8E0 D9CD A58C 6A4C 321A 0883 0000"
		$"FF81 0001 58E5 96FF 24FE FED7 D773 7347"
		$"477A 7AD8 D8FC FBFC F4E5 CEE1 FAFD E5B3"
		$"B9DE FDFA A655 5379 A4BE CEE3 F9FE 80FF"
		$"18FE EBC3 C6D9 DFD8 C2AB C4B8 D8CE C195"
		$"4862 9DB2 C6D8 E6F1 F8FC 80FE 10FD FAF4"
		$"F1EE EBE8 E3DC D1C0 A991 7051 1F0A 8800"
		$"00FF 8100 01A5 ED96 FF24 FBFB AEAE 4444"
		$"5959 B6B6 F8F8 FFFE F9EE DBD0 F0FE FFFC"
		$"F5F7 FEFF FBD1 9370 645E 616F 91C9 F180"
		$"FF29 F8D9 BFCD DAD7 CEC5 B6C2 D4E2 C3AD"
		$"7550 87A7 BCCF DFEC F4F9 FAF5 F2F0 ECEA"
		$"E7E0 D8CA B59C 7E5E 3D22 0D02 8B00 00FF"
		$"8100 01CC F596 FF12 FBFB AEAE 4444 5959"
		$"B6B6 F8F8 FEFC F5E6 D2DE FB84 FF32 FEFC"
		$"EAC8 A58C 7D6D 5F72 BDF9 FFFD ECC9 C2D4"
		$"D7D1 C7C7 CFDA D3C2 AE9B 5C5F 9AB0 C4D4"
		$"E1E7 EAEB EAE8 E2DC D1C0 A88C 6E4E 2F15"
		$"068F 0001 FFFF 8100 01DF FC96 FF11 FAFA"
		$"A9A9 4444 6F6F D5D5 FDFD FEFA F0DC D0ED"
		$"88FF 2BFA F1E9 DDA8 6C4F 9BF4 FFF3 D1BC"
		$"C9D3 D4CC D9D3 DED8 B4AD BE9A 3D70 9EB1"
		$"C1CD D7DD DCD6 C5B2 997C 5D3D 220C 0293"
		$"0001 FFFF 8000 0176 E897 FF09 FAFA A9A9"
		$"4444 6F6F D5D5 80FD 04F7 E9D3 D4F5 8BFF"
		$"23E1 9769 79C2 FAFE EAC3 C0CD D5D0 C9E9"
		$"CDDD B3A4 B2C1 784B 889E ADB7 BAB1 A089"
		$"694A 2B15 0497 0080 FF80 0001 B8F0 97FF"
		$"11FB FBBA BA6C 6C89 89D1 D1FA F9FB F3E1"
		$"CEE7 FD8A FF1F E89B 5D75 C5F5 FFF9 DBBD"
		$"C6D2 D4C6 D0C5 C0BB 9CB5 C297 5967 7B7B"
		$"7267 4E37 1B0A 9A00 82FF 8000 01D2 F797"
		$"FF10 FBFB BABA 6C6C 8989 D1D1 FAF9 FAEF"
		$"DBD7 F68A FF1C F4AD 6161 B0F7 FFFE F0C6"
		$"BECB CEC4 BCDD 9CAF 9BB4 C3B4 674A 3728"
		$"1A0B 0395 008B FF80 0001 E2FE 97FF 12FE"
		$"FEE4 E4A8 A893 93BB BBF3 F2F9 EDD9 D7EB"
		$"F6FD 87FF 19DE 9665 5796 E4FF FFFD E0B7"
		$"B9C1 C0A7 C5B5 9BA2 B7BE BF8F 5B28 0199"
		$"008B FF80 0002 E5F1 F896 FF14 FEFE E4E4"
		$"A8A8 9393 BBBB F3F2 F9EF DDCC C9D0 DEF3"
		$"F985 FF18 F565 5763 BAEA FFFE F5C9 A6A5"
		$"9C8B ADDA 9792 A8BA AAA9 6E60 0C99 008C"
		$"FF80 0006 7FB2 CFE6 ECF3 FB94 FF15 FBFB"
		$"E1E1 BEBE D8D1 C8EE FAF3 E6D6 C6BB BAC5"
		$"D9F4 F9FE 82FF 17D5 8871 6371 9BB6 FBE2"
		$"985A 463B 76CE D791 A3BF A3A1 9A71 4695"
		$"0091 FF83 0007 0E75 B0D6 E7ED F6FC 90FF"
		$"32FB FBE1 E1BE BEB6 727B EEFC E8D2 D8DA"
		$"CEC3 B8B1 BFD4 F1F9 FEFF FFC6 9DC5 9D51"
		$"74C0 FEF1 AE37 0100 70D4 E6B5 98AB AB89"
		$"A387 6513 9100 95FF 8700 072D 86BD DAE8"
		$"F0F7 FE8E FF21 FBFB EB9E 8BA2 9DFC E684"
		$"B180 B7E4 DAC9 A18C A6BF CDEA F5FD D79E"
		$"C2BE 79BB 77FC DB76 8000 0A9E E4DF AFAB"
		$"B475 84A7 6E4F 8D00 9AFF 8B00 0648 9CC5"
		$"E0EB F2F9 8BFF 2FFB FB87 A6F1 A2BD FDBE"
		$"95FD DC8A F3ED D8A0 867D 7D7A 94B1 DFF8"
		$"FEFF E980 A79C F9BB 5604 0000 C3E3 CEBB"
		$"B595 6CA5 9A60 2189 009E FF8F 0006 63A0"
		$"C8E6 EDF4 FB88 FF20 F7A6 7F96 86C6 FFDF"
		$"7FAE A59D FCF9 DE60 3C28 150F 0C2E 9EC4"
		$"E5F6 FCED DDF7 ED9F 2A80 0009 56CC C6A7"
		$"A277 8BA5 9A3F 8600 A2FF 9200 0728 9AC2"
		$"D9E8 EEF6 FD87 FF0C C686 9EDF 7FCE 9E86"
		$"F7FE FBD0 0183 000A 125B 96B5 D9EB F7FF"
		$"DD7A 0380 0009 2B89 C286 9774 A7A9 7706"
		$"8600 A2FF 9200 0B13 719B 9FAA BACB DFE9"
		$"F0F7 FE83 FF0B BEA6 FFCE 9EFF FF8E DFFF"
		$"F4A9 8500 0805 2150 87AE D6E3 B62F 8200"
		$"0755 A978 9A86 9083 0286 00A4 FF91 000E"
		$"0A6F A8AE B1A9 A29B A4B8 CDE3 EBF2 FA80"
		$"FF0B EFEF FFE7 86BE C686 EFFF ED74 8800"
		$"0417 4086 AB82 8400 0325 2365 4689 00A7"
		$"FF8E 0012 0263 B4BD B6B0 A89F 9483 7059"
		$"7097 C7E6 EDF5 FC80 FF07 EFBE BEDF FFFE"
		$"E222 8A00 021F 5033 9300 ACFF 8B00 1552"
		$"B2BE AD98 7E64 462D 1807 0100 0013 63A8"
		$"D3E8 EFF7 FD81 FF01 FAD2 A400 B0FF 8700"
		$"072A 786F 4C2F 1405 0187 0009 308A BCDC"
		$"EAF1 F8FE F2B5 A300 B5FF 8300 0203 0B02"
		$"9000 055C A3CD E2EB 7B84 0081 FF98 00B6"
		$"FF9C 0001 8A23 8300 85FF 9400 B7FF A300"
		$"8AFF 8F00 B9FF A200 8BFF 8D00 BBFF A100"
		$"8CFF 8B00 FFFF FFFF A5FF FFFF D2FF 8600"
		$"EFFF 8D00 E8FF 8C00 0112 4B82 00E2 FF8C"
		$"0007 0D44 6786 9FAE B484 8100 DDFF 8C00"
		$"0D0D 4464 8499 A8B7 C3CE D7DE D9A1 0B81"
		$"00D7 FF8C 0012 0D44 6484 99A8 B7C3 CED6"
		$"DDE0 E4E6 E9EC E0B5 3481 00D2 FF8C 0017"
		$"194A 6D82 97A8 B7C3 CED6 DDE0 E4E6 E9EC"
		$"EFF3 F8FB F4E4 C55F 8200 CCFF 8C00 1519"
		$"4A70 879C ABB8 C4CE D6DD E0E4 E6E9 ECEF"
		$"F3F8 FBFE FE80 FF03 FAE8 D481 8200 C7FF"
		$"8C00 1519 4A6D 829C ABB8 C5CF D8DF E1E4"
		$"E7E9 ECEF F3F8 FBFE FE85 FF04 FEEC DE9F"
		$"1981 00C2 FF8C 0015 194A 7087 9CAB B8C4"
		$"CED8 DFE1 E4E7 E9EC F0F4 F8FB FEFE 8AFF"
		$"04FE F1E3 B73F 8100 BDFF 8C00 1519 4A70"
		$"879C ABB8 C5CF D8DF E1E4 E7E9 ECF0 F4F9"
		$"FCFE FE90 FF03 F8E5 CE6D 8200 B7FF 8C00"
		$"1519 4A70 879C ABB8 C5CF D8DF E1E4 E7E9"
		$"ECF0 F4F8 FCFE FE95 FF04 FCEA DA92 0B81"
		$"00B2 FF8C 0015 194A 7087 9CAB B8C5 CFD8"
		$"DFE1 E4E7 E9EC F0F4 F9FC FEFE 9AFF 04FE"
		$"EFE1 B035 8100 ADFF 8C00 152A 5576 8A9C"
		$"ABB8 C5CF D8DF E1E4 E7E9 ECF0 F4F9 FCFE"
		$"FEA0 FF03 F6E5 C55E 8200 A7FF 8C00 152A"
		$"5074 8D9D ADBB C7D1 D8DF E1E4 E7E9 ECF0"
		$"F4F9 FCFE FEA5 FF03 FBE8 D684 8200 A2FF"
		$"8C00 152A 5074 8D9D ADBB C7D2 D9DF E3E4"
		$"E7E9 ECF0 F4F9 FCFE FEAA FF04 FEED DFA4"
		$"2381 009D FF8C 0015 2A50 748D 9DAD BBC7"
		$"D2D9 DFE3 E4E7 EAED F0F6 F9FC FEFE 87FF"
		$"80FD 00FF 80FB 00FF 80F9 00FF 80F8 00FF"
		$"80F8 00FF 80F8 00FF 80FA 00FF 80FE 87FF"
		$"03F2 E4BE 4E82 0098 FF8B 0015 2A50 748D"
		$"9DAD BBC7 D2D9 DFE3 E4E7 EAED F0F6 F9FC"
		$"FEFE 8CFF 80FD 00FF 80FB 00FF 80F9 00FF"
		$"80F8 00FF 80F8 00FF 80F8 00FF 80FA 00FF"
		$"80FE 87FF 03F9 E7D1 7982 0096 FF88 0015"
		$"3159 7B92 9FAC BBC7 D2D9 DFE3 E4E7 EAED"
		$"F0F6 F9FC FEFE 91FF 80FD 00FF 80FB 00FF"
		$"80F9 00FF 80F8 00FF 80F8 00FF 80F8 00FF"
		$"80FA 00FF 80FE 87FF 04FD EBDD 9B14 8100"
		$"96FF 8300 1533 597B 91A1 B1BE C9D3 DADF"
		$"E3E4 E7EA EDF0 F6F9 FCFE FEBF FF04 FEF0"
		$"E2B5 3C81 0096 FF16 0015 6483 91A3 B1BE"
		$"C9D3 DBDF E3E5 E8EA EDF0 F6F9 FCFE FE8F"
		$"FF80 FE00 FF80 FB00 FF80 EA00 FF80 CE00"
		$"FF80 AB00 FF80 8F00 FF80 8900 FF80 8800"
		$"FF80 8A00 FF80 A500 FF80 E500 FF80 FE84"
		$"FF03 F7E5 CA68 8200 95FF 1100 67B5 CBD4"
		$"DBDF E3E5 E8EA EEF1 F7FA FDFE FE94 FF80"
		$"FE00 FF80 FB00 FF80 EA00 FF80 CE00 FF80"
		$"AB00 FF80 8F00 FF80 8900 FF80 8800 FF80"
		$"8A00 FF80 A500 FF80 E500 FF80 FE84 FF04"
		$"FCE9 D98E 0581 0095 FF0C 005B C2E3 E8EA"
		$"EEF1 F7FA FDFE FE99 FF80 FE00 FF80 FB00"
		$"FF80 EA00 FF80 CE00 FF80 AB00 FF80 8F00"
		$"FF80 8900 FF80 8800 FF80 8A00 FF80 A500"
		$"FF80 E500 FF80 FE84 FF04 FEEE E0AC 2D81"
		$"0095 FF07 0028 ADE0 EFFD FEFE D5FF 03F5"
		$"E4C5 5A82 0094 FF05 0005 91DC ECFE 98FF"
		$"80FE 00FF 80FC 00FF 80F1 00FF 80C1 00FF"
		$"8079 00FF 805C 00FF 803F 00FF 802A 00FF"
		$"8027 00FF 8026 00FF 8025 00FF 802E 00FF"
		$"80AD 00FF 80FB 85FF 03FB E8D5 8282 0094"
		$"FF05 0000 71D2 E8FB 98FF 80FE 00FF 80FC"
		$"00FF 80F1 00FF 80C1 00FF 8079 00FF 805C"
		$"00FF 803F 00FF 802A 00FF 8027 00FF 8026"
		$"00FF 8025 00FF 802E 00FF 80AD 00FF 80FB"
		$"85FF 04FE ECDF A420 8100 94FF 0500 004F"
		$"C5E5 F898 FF80 FE00 FF80 FC00 FF80 F100"
		$"FF80 C100 FF80 7900 FF80 5C00 FF80 3F00"
		$"FF80 2A00 FF80 2700 FF80 2600 FF80 2500"
		$"FF80 2E00 FF80 AD00 FF80 FB86 FF03 F2E3"
		$"BD4A 8200 93FF 0500 002D AFE3 F2D8 FF03"
		$"F9E7 CF71 8200 93FF 0600 0012 99DF EEFE"
		$"93FF 80FC 00FF 80EC 00FF 80B8 00FF 8086"
		$"00FF 8051 00FF 801D 00FF 8037 00FF 8051"
		$"00FF 8065 00FF 8057 00FF 803F 00FF 802B"
		$"00FF 802E 00FF 80AD 00FF 80FB 86FF 04FD"
		$"EADC 960F 8100 93FF 0600 0003 80D9 EBFD"
		$"93FF 80FC 00FF 80EC 00FF 80B8 00FF 8086"
		$"00FF 8051 00FF 801D 00FF 8037 00FF 8051"
		$"00FF 8065 00FF 8057 00FF 803F 00FF 802B"
		$"00FF 802E 00FF 80AD 00FF 80FB 86FF 04FE"
		$"F0E1 B23A 8100 84FF 8700 82FF 8000 0364"
		$"CFE8 FB84 FE8C FF80 FC00 FF80 EC00 FF80"
		$"B800 FF80 8600 FF80 5100 FF80 1D00 FF80"
		$"3700 FF80 5100 FF80 6500 FF80 5700 FF80"
		$"3F00 FF80 2B00 FF80 2E00 FF80 AD00 FF80"
		$"FB87 FF03 F7E5 C968 8200 81FF 8A00 81FF"
		$"8000 0E46 C0E4 F5FD FCFB FAFA FBFB FCFC"
		$"FDFD 80FE CAFF 04FC E9D8 8A05 8100 80FF"
		$"8C00 80FF 8000 062A ACE1 EEF9 F6F4 80F2"
		$"0BF3 F4F5 F7F8 F9FA FBFB FCFD FD80 F700"
		$"FF80 D700 FF80 9500 FF80 4200 FF80 1D00"
		$"FF80 3000 FF80 6900 FF80 8200 FF80 6A00"
		$"FF80 5000 FF80 3500 FF80 3000 FF80 6400"
		$"FF80 9E00 FF80 E400 FF80 FE87 FF04 FEEE"
		$"DFA9 2681 0001 FFFF 8300 0409 3128 1815"
		$"8200 80FF 8000 1D12 98DB E7F2 EBE2 E0E2"
		$"E2E6 E8E9 EBED EFF0 F2F3 F5F6 F7F1 F2F3"
		$"FBD4 D4D5 FD80 9400 FE80 4200 FF80 1D00"
		$"FF80 3000 FF80 6900 FF80 8200 FF80 6A00"
		$"FF80 5000 FF80 3500 FF80 3000 FF80 6400"
		$"FF80 9E00 FF80 E400 FF80 FE88 FF03 F4E4"
		$"C154 8900 040F 347F 1411 8300 01FF FF80"
		$"0021 037F D4DF E8DA D4D6 D3D0 CFD3 D2D6"
		$"DADD E0E4 E6E8 EAEC E7E8 EAF2 CECF CFF7"
		$"9191 92FB 8041 00FD 801D 00FE 8030 00FF"
		$"8069 00FF 8082 00FF 806A 00FF 8050 00FF"
		$"8035 00FF 8030 00FF 8064 00FF 809E 00FF"
		$"80E4 00FF 80FE 88FF 03FA E8D3 7C88 0003"
		$"0C0D 8E79 8500 01FF FF81 002B 5CC6 D9DC"
		$"D2F2 FAF1 F3F2 E4E4 E0D6 D0D1 D1CE D4D6"
		$"D9DC DFE2 E3E5 E8E9 ECEE EFF1 F2F3 F4F5"
		$"F6F8 F9FA FBFD FEFE B0FF 04FE ECDE 9F1C"
		$"8600 0404 003E C219 8500 01FF FF81 0005"
		$"3DB4 D0D1 CEF9 81FF 22FC FDFE F9FD F9EE"
		$"EEE8 E1D9 D7CE CCD3 A48F 94D9 4858 46E2"
		$"4137 38EB 6B6C 6DF5 9FA0 A2FE 80B0 00FF"
		$"805C 00FF 802A 00FF 803B 00FF 8067 00FF"
		$"8098 00FF 80D4 00FF 80F4 00FF 80FE 8CFF"
		$"04FE F1E3 BA44 8600 0305 0096 8086 0001"
		$"FFFF 8100 0522 A0CA C7CF F687 FF20 FEFF"
		$"FFFE FFFE F9F4 F0EA E2E5 DABE B7A1 D298"
		$"7871 D47E 7B77 EB9B 9EA0 FDAF B0B0 FF80"
		$"5C00 FF80 2A00 FF80 3B00 FF80 6700 FF80"
		$"9800 FF80 D400 FF80 F400 FF80 FE8D FF03"
		$"F8E7 CE6F 8500 0409 0046 AA16 8600 01FF"
		$"FF81 0005 0C88 C3C3 D4F7 93FF 14FD F9F8"
		$"F0EF F1E7 DDDF C1BF BFD7 9D9A 9FFC AFB0"
		$"B0FF 805C 00FF 802A 00FF 803B 00FF 8067"
		$"00FF 8098 00FF 80D4 00FF 80F4 00FF 80FE"
		$"8DFF 04FC EADA 910B 8300 0407 0419 9F4C"
		$"8700 01FF FF82 0004 6EB9 C0DD FC9A FF0A"
		$"FDFD F9FA FAE0 D6EB F4FB FEAF FF04 FEEF"
		$"E1AF 3483 0004 0E00 75AA 0487 0001 FFFF"
		$"8200 0353 AEBE E189 FF04 FDFB FEFB FA82"
		$"F900 FB88 FF09 FEE0 C7D1 DCF9 8081 81FF"
		$"802C 00FF 8037 00FF 8075 00FF 80C0 00FF"
		$"80EB 00FF 80F7 00FF 80FC 92FF 03F6 E5C5"
		$"5E82 0005 1901 1CCA 4602 8700 01FF FF82"
		$"0003 36A0 BEE9 88FF 0DFD F9F3 EADD D5CF"
		$"CECE CDD1 DAEB FC86 FF09 FAD5 C2CE DAF9"
		$"8081 81FF 802C 00FF 8037 00FF 8075 00FF"
		$"80C0 00FF 80EB 00FF 80F7 00FF 80FC 92FF"
		$"04FB E8D5 8605 8000 0604 2202 98AF 0602"
		$"8600 80FF 8200 031C 90BF ED85 FF11 FEFD"
		$"F9ED DAC8 B199 8980 7F7F 7D83 90BB E9FC"
		$"85FF 09FD CEBD CCD9 F980 8181 FF80 2C00"
		$"FF80 3700 FF80 7500 FF80 C000 FF80 EB00"
		$"FF80 F700 FF80 FC92 FF04 FEED DEA2 1F82"
		$"0002 31DE 3888 0080 FF82 0003 0A75 BEEE"
		$"86FF 08F8 E0B8 9382 6C56 4842 8043 0444"
		$"4581 CDF5 85FF 06FA CECB E0EF F9FE B1FF"
		$"03F2 E2BC 4981 0004 0AA8 9500 0187 0080"
		$"FF82 0003 026B C6F2 83FF 13FA EDDC C29F"
		$"6A47 4B4C 5053 514B 4237 2D25 66C1 F285"
		$"FF09 F0C9 BED0 DEFA 8687 87FF 8030 00FF"
		$"8032 00FF 8051 00FF 8072 00FF 808A 00FF"
		$"80A5 00FF 80D0 00FF 80F4 00FF 80FE 8AFF"
		$"04FE F9E3 CB6A 8100 024C C51D 8900 80FF"
		$"8300 0244 CCF7 80FF 16FE FCF3 DAB7 9273"
		$"5C3E 364C 5E6B 7671 6255 4844 4480 CCF5"
		$"85FF 09EF C6C1 D2E0 FB86 8787 FF80 3000"
		$"FF80 3200 FF80 5100 FF80 7200 FF80 8A00"
		$"FF80 A500 FF80 D000 FF80 F400 FF80 FE8A"
		$"FF0A FEFB E5D2 8709 0000 13C3 7189 0082"
		$"FF82 0002 3CD1 FC80 FF16 FAEE D1A2 7045"
		$"3539 5170 8586 786B 5745 3D4C 6C87 BAE8"
		$"FB85 FF05 EAC6 C3D4 E1FB 8087 00FF 8030"
		$"00FF 8032 00FF 8051 00FF 8072 00FF 808A"
		$"00FF 80A5 00FF 80D0 00FF 80F4 00FF 80FE"
		$"89FF 0BFE FDF9 E7D2 9D1F 0100 64CA 1189"
		$"0082 FF81 0002 066C DF80 FF17 FCE6 BF8F"
		$"6345 3C4D 668F A390 7157 5150 5763 87B2"
		$"CFEB FBFE 85FF 05E1 C6D6 E8F4 FCB0 FF0D"
		$"FEFB F7EA CFAB 1500 0AC5 6600 0208 8600"
		$"83FF 8200 196B E2FF FFFE F5CB 8B5B 4C52"
		$"739E B9C6 AD72 463A 4C6A 8FAB D0ED FA88"
		$"FF05 D9C5 D4E5 F1FD 80D7 00FF 8094 00FF"
		$"8062 00FF 8041 00FF 8031 00FF 802E 00FF"
		$"8039 00FF 8064 00FF 80AB 00FF 80ED 00FF"
		$"80FE 84FF 0DFE FDF9 F4E8 CD82 0F06 72C1"
		$"0702 0187 0083 FF82 001A 8AE5 FFFF FCEE"
		$"B96D 5367 82B3 DDE9 C483 4F3B 4F71 A1CD"
		$"E6F8 FDFF FD87 FF05 D9C7 D7E7 F2FD 80D7"
		$"00FF 8094 00FF 8062 00FF 8041 00FF 8031"
		$"00FF 802E 00FF 8039 00FF 8064 00FF 80AB"
		$"00FF 80ED 00FF 80FE 83FF 0DFE FEFB F6EF"
		$"E3C6 3104 29D3 5D00 0288 0083 FF81 001C"
		$"03A5 EDFF FFFD F2CC 978B A5C3 E7FC FBC2"
		$"713E 314C 6E95 B9CC D9E2 F0FA FD85 FF06"
		$"F9CF C9DA E8F3 FE80 D700 FF80 9400 FF80"
		$"6200 FF80 4100 FF80 3100 FF80 2E00 FF80"
		$"3900 FF80 6400 FF80 AB00 FF80 ED00 FF80"
		$"FE83 FF0B FEFC F8F2 E9DB 6F04 0194 AD07"
		$"8900 85FF 8100 1CB7 F4FF FFFE FCEF DCD6"
		$"E2F2 FFFF F9CC 8C59 434C 5767 757E 8CA1"
		$"BCDC F2FB 84FF 06F4 CBCC E0EF F9FE ADFF"
		$"0BFE FDFA F4EC E1B6 1400 37D5 3F8A 0085"
		$"FF81 0001 BBF7 80FF 18FE FBF8 F7FA FCFE"
		$"FEFD E9C3 9773 5E50 4643 444A 5D79 A3CF"
		$"EEFE 83FF 06F2 CBCF E2F1 FAFE 80FC 00FF"
		$"80F3 00FF 80D3 00FF 80AF 00FF 8096 00FF"
		$"8081 00FF 8059 00FF 8036 00FF 8047 00FF"
		$"80BF 00FF 80FC 81FF 0EFE FEFB F7F0 E6D8"
		$"4D00 05A1 8804 0001 8700 85FF 8100 0246"
		$"CAFC 88FF 10FE FBEE D9BB 9D84 6F61 5B51"
		$"4D50 6391 CCF4 83FF 06EA C5D2 E5F2 FBFF"
		$"80FC 00FF 80F3 00FF 80D3 00FF 80AF 00FF"
		$"8096 00FF 8081 00FF 8059 00FF 8036 00FF"
		$"8047 00FF 80BF 00FF 80FC 81FF 0EFE FCF9"
		$"F3EA DD87 0E00 43CA 2D00 0306 8700 85FF"
		$"8100 0166 D78A FF0F FEFF FFF3 DFCD BDB1"
		$"A68B 684C 3C5D ABE8 83FF 06E1 C8D5 E7F4"
		$"FCFF 80FC 00FF 80F3 00FF 80D3 00FF 80AF"
		$"00FF 8096 00FF 8081 00FF 8059 00FF 8036"
		$"00FF 8047 00FF 80BF 00FF 80FC 80FF 0BFE"
		$"FEFB F6EE E3C5 2F04 0DA0 898A 0086 FF81"
		$"0002 7ED7 FE8B FF0D FEFC F9F4 F4EE E3B9"
		$"825D 3A4E A1E4 83FF 05E4 CBD7 E9F5 FCAC"
		$"FF0B FEFC F8F2 E8DA 7204 0064 C725 8A00"
		$"86FF 8100 029B E3FE 91FF 07E3 AA72 5651"
		$"78BC EE82 FF06 FDDA C6D9 EAF6 FD82 FF80"
		$"FE00 FF80 FD00 FF80 FB00 FF80 FA00 FF80"
		$"DC00 FF80 8500 FF80 4400 FF80 3400 FF80"
		$"B200 FF80 FB11 FFFF FEFD FAF4 ECE0 C013"
		$"0114 B36C 0000 0102 8600 87FF 8100 01AD"
		$"ED90 FF09 FCE0 B074 5358 82BD E5FC 82FF"
		$"06F9 D1C7 DCEC F7FD 82FF 80FE 00FF 80FD"
		$"00FF 80FB 00FF 80FA 00FF 80DC 00FF 8085"
		$"00FF 8044 00FF 8034 00FF 80B2 00FF 80FB"
		$"11FF FFFE FBF7 F0E6 D87A 0800 65B2 1600"
		$"0302 0E86 0087 FF81 0002 ADEB FE8F FF08"
		$"EBB7 7B48 4676 B8EB F983 FF06 F8D0 CADE"
		$"EEF8 FE82 FF80 FE00 FF80 FD00 FF80 FB00"
		$"FF80 FA00 FF80 DC00 FF80 8500 FF80 4400"
		$"FF80 3400 FF80 B200 FF80 FB12 FFFE FDF9"
		$"F3EA DEAB 4103 1497 5800 0002 0032 0985"
		$"0087 FF81 0001 BCF3 8EFF 08FE F6C5 8352"
		$"3F62 A7E3 85FF 06F3 CBCD E0EF F9FE A9FF"
		$"0CFE FEFB F6EE E3D0 3A0B 016B 9812 8000"
		$"021D 6720 8400 87FF 8100 0251 C5FB 8EFF"
		$"08F9 DE98 5742 5995 D4F9 85FF 06F0 C6CE"
		$"E2F0 FAFE 8EFF 80F0 00FF 80A5 00FF 8050"
		$"00FF 8047 00FF 8092 00FF 80E4 00FF 81FE"
		$"11FC F8F2 E8DB 710B 0033 A43B 0000 051D"
		$"5180 4384 0087 FF81 0002 67C3 F78E FF08"
		$"F3C5 753F 4879 BBEB FE85 FF06 F1C8 D1E4"
		$"F2FB FE8E FF80 F000 FF80 A500 FF80 5000"
		$"FF80 4700 FF80 9200 FF80 E417 FFFE FEFD"
		$"FDFA F4EC E1BF 1407 0087 8901 0000 0426"
		$"7894 6708 8200 88FF 8100 0288 D1FB 8EFF"
		$"07F1 BA65 3552 95DA F986 FF06 E7C5 D3E6"
		$"F3FB FE8E FF80 F000 FF80 A500 FF80 5000"
		$"FF80 4700 FF80 9200 FF80 E40E FFFE FEFD"
		$"FBF7 F0E6 D54A 0501 36AB 2B80 0005 0454"
		$"96A0 8726 8200 88FF 8100 0293 D8FC 8EFF"
		$"07F1 BC6D 4263 A6E5 FA85 FF06 FCE3 C9D6"
		$"E7F4 FCA8 FF0C FEFC F9F3 EADD 8B07 0206"
		$"836C 0680 0005 118C A4AB A24C 8200 88FF"
		$"8100 0290 DAFC 8EFF 07F3 C581 5D77 A0C4"
		$"D985 FF06 FCDD C7D8 E9F5 FC8B FF80 F900"
		$"FF80 B200 FF80 4F00 FF80 2E00 FF80 8A00"
		$"FF80 E800 FF80 FD0D FFFE FEFB F6EE E3CC"
		$"340C 0042 9E1D 8100 064D 9DB0 B6B7 7908"
		$"8100 88FF 8100 02A8 E6FE 8EFF 0CF8 DBA7"
		$"8184 7980 8D95 F7E7 BECE 80FF 06FA D2C8"
		$"DAEB F6FD 8BFF 80F9 00FF 80B2 00FF 804F"
		$"00FF 802E 00FF 808A 00FF 80E8 00FF 80FD"
		$"0CFF FEFC F8F2 E8DA 7107 0008 985D 8100"
		$"070D 88A7 BBC2 C59C 2881 0088 FF80 0002"
		$"29AF EE8F FF16 FDF2 D0AA 97A3 C7E5 7EE7"
		$"CEBE AE96 FFFF FBD2 C8DB ECF7 FD8B FF80"
		$"F900 FF80 B200 FF80 4F00 FF80 2E00 FF80"
		$"8A00 FF80 E800 FF80 FD18 FEFD FAF4 ECE0"
		$"BC13 0200 59A1 2200 0004 0E44 9BB2 C6D0"
		$"CEB9 5482 0087 FF80 0002 44AD ED90 FF07"
		$"FCEB CFB4 BB94 78B6 80FF 0AF7 7FFF FFF9"
		$"CDC8 DBEC F7FD A6FF 0BFE FBF7 F0E6 D36A"
		$"0100 1A87 4080 0009 0112 79A7 BCCF DCD6"
		$"CC7C 8200 86FF 8100 026B C2F4 91FF 18FB"
		$"F0DE E0EF BEA6 FFFF F7AE 96FF FFF3 C5C5"
		$"DAEA F4FB FDFD FEFE 83FF 80FE 00FF 80D3"
		$"00FF 8062 00FF 8031 00FF 806A 00FF 80D4"
		$"00FF 80FC 80FF 0CFE FDF9 F4EB DE92 1802"
		$"004B 8510 8100 0941 9BB0 C5D7 E5DE D9A1"
		$"1F81 0086 FF81 0006 62C8 F6FF FCFD FE8D"
		$"FF19 FEFD DBC2 FFC6 9EFF E796 9EF7 FFFF"
		$"F3C1 BFD4 E4EE F5F7 F9FB FCFD 80FE 01FF"
		$"FF80 FE00 FF80 D300 FF80 6200 FF80 3100"
		$"FF80 6A00 FF80 D400 FF80 FC80 FF0B FEFB"
		$"F7EF E4D2 3E09 0118 7532 8100 0A09 85A6"
		$"BBCE DFEB E8DF BC47 8200 85FF 8200 0BB7"
		$"CFDD D6E1 ECED F4F9 F4F9 FC89 FF20 E7A6"
		$"7F8E D7D7 7FB6 F7FF FFFE EAC0 BCCD D9E5"
		$"ECEF F2F4 F6F8 FAFB FCFD FEFD FDFE FF80"
		$"D300 FF80 6200 FF80 3100 FF80 6A00 FF80"
		$"D400 FF80 FC1D FFFF FEFC F9F2 E9DC 9003"
		$"0506 5F5E 0000 0103 0043 9BB0 C5D6 E5F0"
		$"F1E4 CE71 8200 86FF 8100 133C 5E7F 7B8E"
		$"A591 B0C7 CAD4 DCE2 EAEE ECF4 F7FC FE86"
		$"FF1C DFBE 9E8E 9EFF FEDF C5D0 DBE1 E2E4"
		$"E5E7 EAED F0F2 F4F7 F8FA FBFC FDFE FE94"
		$"FF1D FEFE FBF5 EDE2 D227 0300 2679 2100"
		$"0001 0503 7CA5 BACE DEEB F4F8 E9DB 960F"
		$"8100 86FF 8700 180A 82B2 B8B9 B8B7 BEBD"
		$"BFC8 CDD0 DFE2 E6ED F2F8 F9FF FEFE FFFE"
		$"82FF 14DE C7D8 E9F5 FBF7 F0E8 E4E3 E6E7"
		$"EAED F0F3 F2F4 F6FC 80A4 00FF 802E 00FF"
		$"8045 00FF 80AD 00FF 80F7 82FF 0BFE FCF8"
		$"F1E7 D96A 0201 0062 5982 000C 3C96 AFC4"
		$"D6E5 F0F7 FBEF E1B2 3A81 0086 FF88 0022"
		$"ADCB CAC8 C5C2 C0BE BBBA B6B4 B9B6 BCC0"
		$"C5C7 D0D7 DAE4 EDE8 F4FB F7FB FDDB C8DC"
		$"EBF7 FD80 FF0F FCF6 EEE7 E4E4 E5E9 E9ED"
		$"F0F8 A2A3 A4FE 802E 00FF 8045 00FF 80AD"
		$"00FF 80F7 81FF 0CFE FDFA F4EB DFAD 1401"
		$"0021 6C1D 8100 0D07 6BA4 BACD DDEB F4FA"
		$"FDF6 E5C9 6882 0085 FF87 0023 35CF E1DF"
		$"DDDA D8D6 D4D1 CECC C9C6 C3C0 BCB9 B5B7"
		$"B4B7 BABD BCC4 C8C9 D5DC D0CD E1EE F8FD"
		$"84FF 0BFB F4EC E6E4 E5E9 F3A0 A2A4 FE80"
		$"2E00 FF80 4500 FF80 AD00 FF80 F780 FF0C"
		$"FEFE FBF7 F0E5 D253 0000 0448 4582 000E"
		$"2E99 AEC3 D5E4 F0F7 FBFE FCE9 D88A 0581"
		$"0086 FF86 0023 91E2 F0EE EDEB E9E8 E6E4"
		$"E2E0 DDDA D6D3 C4C1 AAA8 8C8A 7573 6D6C"
		$"757D 8994 A095 D3DD F9FD 88FF 07F9 F1E5"
		$"ECF3 F8FC FE8F FF0C FEFC F9F3 EADD 5E04"
		$"0000 2359 1082 000E 60A2 B8CC DDEA F4FA"
		$"FDFE FEEE DFA9 2681 0088 FF84 0023 C3F1"
		$"F9F8 F8F7 F5F4 F3F2 F1EF ECEB E6E4 D5D3"
		$"BBB9 9B99 8281 7B7A 7777 797B 959D D9E1"
		$"FBFD 89FF 06FE E5E5 9499 9CFD 802E 00FF"
		$"805E 00FF 80D0 00FF 80FD 80FF 0BFE FBF6"
		$"EEE3 C81B 0000 0548 2482 000F 0F92 ADC1"
		$"D4E4 EFF7 FBFE FFFF F4E4 C154 8200 89FF"
		$"8100 2404 E0FC FEFE FDFD FCFC FAFA F7F6"
		$"EBEA C0BF 807F 6665 4C4C 3A39 3635 3434"
		$"3334 3C3E AEB1 F9FB 89FF 06F9 DFDE 9298"
		$"9BFD 802E 00FF 805E 00FF 80D0 00FF 80FD"
		$"0EFF FFFE FCF9 F2E9 DB80 0400 0020 4503"
		$"8200 0F56 A1B7 CADC E9F3 F9FD FEFF FFFA"
		$"E8D3 7C82 0088 FF82 0001 75EA 84FF 1BFD"
		$"FDFB FBF1 F0C5 C584 846A 6950 4F3D 3C39"
		$"3938 3736 373F 40B1 B3FA FB89 FF06 F2D6"
		$"D990 969B FD80 2E00 FF80 5E00 FF80 D000"
		$"FF80 FD0D FFFF FEFB F6ED E2D1 3F00 0004"
		$"3417 8200 092C 95AB C1D3 E2EE F7FB FE80"
		$"FF04 FEEC DE9F 1C81 0088 FF82 0001 B9F1"
		$"82FF 1DFC FCEE EEBF BF92 9262 6233 334B"
		$"4B62 6173 7365 6550 503E 3E41 41B4 B4FA"
		$"FB89 FF06 EACD D7E5 F0F8 FD8D FF0C FEFD"
		$"F9F2 E9DA 9C0B 0000 1129 0481 000A 0B76"
		$"A1B6 CADB E9F2 F9FD FE80 FF04 FEF1 E3BA"
		$"4481 0088 FF82 0001 D3F8 82FF 1DFC FCEE"
		$"EEBF BF92 9262 6233 334B 4B62 6274 7467"
		$"6752 5240 4042 42B4 B5FB FB88 FF07 FEE3"
		$"C1D6 A1A9 AFFD 805A 00FF 807B 00FF 80CC"
		$"00FF 80FA 0CFF FEFB F7EE E2D3 4F00 0001"
		$"1A0C 8200 0946 97AC C1D3 E2ED F6FB FE82"
		$"FF03 F8E7 CE6F 8200 86FF 8200 0125 E481"
		$"FF1F F9F9 DBDB 9F9F 5555 3333 4444 7878"
		$"8E8E 7979 6161 4949 4444 7373 A8A8 E7E7"
		$"FEFE 88FF 07F7 D6C3 D8A2 AAAF FE80 5A00"
		$"FF80 7B00 FF80 CC00 FF80 FA0B FEFD F9F3"
		$"E9DB AD15 0004 100C 8000 0C01 001E 89A2"
		$"B7CA DBE9 F2F9 FDFE 82FF 04FC EADA 910B"
		$"8100 86FF 8200 019C EC81 FF1F F9F9 DBDB"
		$"9F9F 5555 3333 4444 7878 8E8E 7979 6161"
		$"4949 4444 7373 A8A8 E7E7 FEFE 88FF 07F0"
		$"CAC6 DBA4 ABAF FE80 5A00 FF80 7B00 FF80"
		$"CC00 FF80 FA1A FEFB F7EF E3D3 6C3C 0F00"
		$"1A11 0804 0002 025E 9AAE C2D4 E3EE F6FB"
		$"FE83 FF04 FEEF E1AF 3481 0086 FF82 0023"
		$"C4F3 FFFF FEFE DFDF 8888 5353 5050 8181"
		$"ACAC B8B8 6C6C 3F3F 4E4E 7676 A2A2 D8D8"
		$"F5F5 FEFE 8AFF 07E9 C1CE DFEC F6FC FE8B"
		$"FF1B FEFD F9F3 EADD B128 5977 3511 1513"
		$"0501 001F 89A6 BACC DDE9 F3F9 FDFE 84FF"
		$"03F6 E5C5 5E82 0085 FF82 0023 DBFB FFFF"
		$"FEFE DFDF 8888 5353 5050 8181 ACAC B8B8"
		$"6C6C 3F3F 4E4E 7676 A2A2 D8D8 F5F5 FEFE"
		$"86FF 80FE 08FC E1BF D2E3 D3DB DFFF 809E"
		$"00FF 8086 00FF 80B4 1DFF F2F2 F1FB F7EF"
		$"E4D4 823D 6AE0 F4AD 601E 0A01 015A 9DB2"
		$"C5D6 E5F0 F7FB FE85 FF03 FBE8 D688 8200"
		$"84FF 8200 013F E780 FF1D FCFC CCCC 6565"
		$"6F6F 9E9E E1E1 EBEB 8D8D 4141 4B4B 8383"
		$"C6C6 EDED F8F8 FCFC 85FF 0EFE FEFD FCFB"
		$"FCF3 D2C4 D7E6 D6DC DFFF 809E 00FF 8086"
		$"00FF 80B4 1DFF F2F1 F0F9 F3EA DDB5 4A42"
		$"8EFB FFF6 923B 1200 2893 A9BD CFDF EBF4"
		$"FAFD FE85 FF04 FEED DFA4 2281 0084 FF82"
		$"0001 ABEE 80FF 1DFC FCCC CC65 656F 6F9E"
		$"9EE1 E1EB EB8D 8D41 414B 4B83 83C6 C6ED"
		$"EDF8 F8FC FC84 FF0F FEFD FBF7 F0EF F2E5"
		$"C2C8 D9E9 D7DD E0FF 809E 00FF 8086 00FF"
		$"80B4 1CFF F2F1 EEF7 EFE4 D368 3B70 ACFE"
		$"FFB1 5E6D 8134 7CA0 B5C8 D9E6 F1F8 FCFE"
		$"87FF 03F3 E4C0 5181 0084 FF82 0001 CCF5"
		$"80FF 21FE FEEF EFC9 C9D0 D0EE EEFC FCEE"
		$"EE93 9344 4446 4662 6280 8095 95AE AED5"
		$"D5F5 F5FE FE80 FF0E FEFB F5EB DCD9 DCD0"
		$"B5C7 DAE9 F4FB FD8A FF1B FEFD F9F3 E9DC"
		$"972B 5193 DFEA DF7D 4875 976E 98AC C1D3"
		$"E2ED F5FB FEFE 87FF 03FA E7D2 7981 0084"
		$"FF82 0001 E0FC 80FF 21FE FEEF EFC9 C9D0"
		$"D0EE EEFC FCEE EE93 9344 4446 4662 6280"
		$"8095 95AE AED5 D5F5 F5FE FE80 FF13 FDF7"
		$"EEDA DCED DECC BCC2 D3E4 ECF4 F8FE DCDD"
		$"DDFF 80B6 00FF 80D4 1BFF F5F2 EEEE E2CE"
		$"6037 64CB FFF7 9D72 7484 888F A4B9 CCDC"
		$"E9F2 F9FC FE82 FF0A DF96 9EA6 FFFF FEEB"
		$"DD9A 1380 0083 FF82 0001 69E8 83FF 05FD"
		$"FDFC FCFD FD81 FE15 FAFA DBDB 9E9E 7171"
		$"5454 4545 4242 4C4C 7373 B3B3 EFEF 80FE"
		$"13FB F2E4 D2E8 FFF7 EFE6 CFCB D5E0 EAF1"
		$"F9DA DCDC FF80 B600 FF80 D42B FEF4 F0EA"
		$"E9DB A24E 3E94 F9FF EB77 5B71 818A 9DB1"
		$"C5D6 E4EF F7FB FEFF DFDF FFFF E77F DFF7"
		$"8EC6 FFFE F0E2 B53F 8000 83FF 8200 01B5"
		$"F083 FF05 FDFD FCFC FDFD 81FE 30FA FADB"
		$"DB9E 9E71 7154 5445 4542 424C 4C73 73B3"
		$"B3EF EFFE FEFD F8EC DAD3 F5FF FFFE FDF4"
		$"E6D7 D1D6 E2EE D4D8 DAFE B5B6 B6FF 80D4"
		$"2BFE F2EE E7E4 CF62 4D7C DCFF F9AA 5F83"
		$"9F8A 96AA BECF DFEB F4F9 FDCD 867F 7FA6"
		$"FFD7 86EF FF96 CEFF FFF8 E5CC 6B80 0083"
		$"FF82 0001 D2F7 8FFF 1BFC FCF4 F4D7 D7B7"
		$"B7A0 A08D 8D69 694A 4A59 59C5 C5FC FBFC"
		$"F3E4 D0E1 FD83 FF0C F9EB DBD6 D9E6 EEF4"
		$"F8FB FDFE FE80 FF2E FEFA F4EB DEB0 3653"
		$"9DF5 FFDA 7B68 878E 90A3 B7CA DAE6 ABEF"
		$"FBFE AEC6 FFE7 7FDF F796 7F8E 7FC6 FFFF"
		$"FCEA DA91 0B00 0083 FF81 0002 15E2 FD8F"
		$"FF1A FCFC F4F4 D7D7 B7B7 A0A0 8D8D 6969"
		$"4A4A 5959 C5C5 FCFB F9EE DAD0 F185 FF28"
		$"FDF8 EDDF D6D4 DDEB E6EA EDFC F7F7 F8FD"
		$"F7F0 E4D8 B65C 6FCE FDEB AC96 777F 8A9D"
		$"B0C3 D4E2 B87A D3FD FE80 FF11 F77F DFFF"
		$"D796 DFC6 86CE FFFE EEE1 AE2F 0000 82FF"
		$"8200 0183 EA92 FF18 FEFE FDFD FBFB FAFA"
		$"DFDF 9191 5656 4848 BABA FBF9 F6E7 D4DE"
		$"FB81 FF03 FEFD FEFB 81FA 23F0 E0D7 D4D4"
		$"DCE3 F5F2 F5F5 FBF5 ECE0 D2BB 6D91 FFFF"
		$"CA6D 7D85 8798 ABBD CFDF CD8F 92AC FE81"
		$"FF11 BE8E FFFF 9EB6 FFFF 9EBE FFFF F6E5"
		$"C55A 0000 82FF 8200 01BF F292 FF18 FEFE"
		$"FDFD FBFB FAFA DFDF 9191 5656 4848 BABA"
		$"FAF7 F1DF CCEB FE81 FF03 F7E5 CFBB 80B3"
		$"24C0 E5FC F5E7 DBD0 D1E1 E7EF F2F9 F1E9"
		$"DBCB A87C 9CCF E57F 527A 8093 A6B9 CBD9"
		$"E7F0 F7C3 8DFE 80FF 12F7 86D7 FFFF BE86"
		$"CEBE 8EE7 FFFF FBE8 D581 0000 82FF 8200"
		$"01D8 F998 FF11 F1F1 AEAE 6161 5959 9D9D"
		$"E7E7 FCF6 EAD3 D3F6 80FF 2DFE E3B1 9176"
		$"615B 5C59 5CA9 F3FF FEF8 EBE1 D6DA E9F4"
		$"F6F0 E6D8 BA8F 7DAB 9CBD 9578 908C A0B4"
		$"C6D6 E4EC F5FA ED7F EF80 FF11 A69E FFD7"
		$"C8F4 BE9A A4EC FEFE FFFB E8D6 8906 8100"
		$"00FF 8200 023A E2FE 98FF 20F1 F1AE AE61"
		$"6159 599D 9DE7 E6FA F0E0 CDE8 FFFF F8DD"
		$"B88A 5556 6873 6E5E 4D41 96F0 81FF 29FA"
		$"F5D8 DDEC F1EC E1CF B276 80A9 9887 5739"
		$"8799 AEC1 D1E0 EBF4 F8FC FE8E CEFF FFDF"
		$"7F96 7F8B B0F8 FBFC FE80 FD05 FAF6 EDDF"
		$"AA25 8100 00FF 8200 0195 EC97 FF22 FAFA"
		$"BABA 6060 4242 9595 EAEA FDFB F7EA D3D5"
		$"F6FE EEC1 7E52 506C 8C8C 7E68 5769 8CCD"
		$"F982 FF31 F8D4 D5E6 EBE7 DAC0 BD85 AD92"
		$"8F7B 3B1B 8CA5 BACC DCE9 F2F8 FAFD FDAD"
		$"95B5 E6E6 A5C4 E2FB FCFC FDFD FAF0 ECE9"
		$"E6E3 DED8 AC39 8100 00FF 8200 01C5 F497"
		$"FF21 FAFA BABA 6060 4242 9595 EAEA FCF9"
		$"F2E0 CEE9 FEEB AC70 576C 96B9 9666 5E70"
		$"8BBD E6FB 82FF 1FFC E2C5 D4E2 E6E1 C9B8"
		$"A090 A97F 8A6A 3D62 9DB1 C5D6 E4EF F7FB"
		$"FDFE A57F 95BD F581 FD0E FBF8 F2EE EAE6"
		$"E0DA D1C5 B19C 8860 1381 0000 FF82 0001"
		$"DBFB 95FF 23FE FED7 D771 7145 4579 79D8"
		$"D8FC FCFE F8EC D5CF F2FD D479 678D CDE9"
		$"B464 5179 B6E4 FDFF FE82 FF30 F5CF C2D5"
		$"E2E1 D3AD B78D A69C A69C 4640 90A8 BCCF"
		$"DFEB F4FA FDFE FFE7 F7FF FEFD FAF6 F0EB"
		$"E8E5 E2DB D3C6 A086 6649 3017 0883 0000"
		$"FF81 0001 58E5 96FF 24FE FED7 D771 7145"
		$"4579 79D8 D8FC FBFC F4E5 CEE1 FAFD E5B3"
		$"B8DF FDFA A554 5179 A3BE CFE4 F9FE 80FF"
		$"18FE EBC3 C6D9 DFD8 BB99 A89C BCAE A982"
		$"3A59 9DB2 C6D8 E6F1 F8FC 80FE 10FB F8F1"
		$"EDEA E6E3 DED6 CBBA A48C 6C4E 1D0A 8800"
		$"00FF 8100 01A5 ED96 FF24 FBFB AEAE 4242"
		$"5757 B5B5 F8F8 FFFE F9EE DBD0 F0FE FFFC"
		$"F6F7 FEFF FBD1 936F 615D 5F6E 91C8 F180"
		$"FF29 F8D9 BFCD DAD7 CDB1 A0A0 B3C1 A095"
		$"6346 85A7 BCCF DFEC F4F8 F8F4 EFEB E7E5"
		$"E1DA D2C3 AF96 7A59 3B20 0D02 8B00 00FF"
		$"8100 01CC F596 FF12 FBFB AEAE 4242 5757"
		$"B5B5 F8F8 FEFC F5E6 D2DE FB84 FF32 FEFC"
		$"EAC8 A58B 7D6B 5D71 BDF9 FFFD ECC9 C2D4"
		$"D7D1 BAAD B5B3 AD9E 8C83 4C5C 9AB0 C4D4"
		$"DFE4 E6E6 E4E3 DCD6 CBBA A387 6A4B 2E15"
		$"048F 0001 FFFF 8100 01DF FC96 FF11 FAFA"
		$"A8A8 4242 6E6E D5D5 FDFD FEFA F0DC D0ED"
		$"88FF 2BFB F1E9 DDA7 6A4D 9AF3 FFF3 D1BC"
		$"C9D3 D4C9 C5B9 C0B3 908A 997D 2366 9DAE"
		$"BEC9 D1D7 D7D0 BFAC 9477 593B 200C 0293"
		$"0001 FFFF 8000 0176 E897 FF09 FAFA A8A8"
		$"4242 6E6E D5D5 80FD 04F7 E9D3 D4F5 8BFF"
		$"23E2 9568 77C1 F9FE EAC3 C0CD D5CF BEC8"
		$"B1BD 9081 909D 5A34 829A A8B2 B4AC 9B84"
		$"6549 2913 0497 0080 FF80 0001 B8F0 97FF"
		$"11FB FBBA BA6A 6A88 88D1 D1FA F9FB F3E1"
		$"CEE7 FD8A FF1F E79A 5C73 C5F5 FFF9 DBBD"
		$"C6D2 D4C2 BF9E 9B98 7C93 9F72 3958 7776"
		$"6F62 4D34 1B08 9A00 82FF 8000 01D2 F797"
		$"FF10 FBFB BABA 6A6A 8888 D1D1 FAF9 FAEF"
		$"DBD7 F68A FF1C F4AB 6060 AFF7 FFFE F0C6"
		$"BDCA CBC1 AECA 8095 809C AA9B 5037 3328"
		$"170B 0395 008B FF80 0001 E2FE 97FF 12FE"
		$"FEE4 E4A8 A892 92BB BBF3 F2F9 EDD9 D7EB"
		$"F6FD 87FF 19DE 9763 5595 E4FF FFFD E0B5"
		$"B5BC BA9F B6A5 868E A5AC AD7F 501F 0199"
		$"008B FF80 0002 E5F1 F896 FF14 FEFE E4E4"
		$"A8A8 9292 BBBB F3F2 F9EF DDCC C9D0 DEF3"
		$"F985 FF18 F565 5661 B9E9 FFFE F5C8 A3A1"
		$"9783 99CE 8B88 9FB0 9EA1 6A60 0A99 008C"
		$"FF80 0006 7FB2 CFE6 ECF3 FB94 FF15 FBFB"
		$"E0E0 BDBD D8D1 C8EE FAF3 E6D6 C6BB BAC5"
		$"D9F4 F9FE 82FF 17D5 8870 6271 9BB6 FBE2"
		$"9756 4436 67B7 C37B 90AD 9290 8D63 4095"
		$"0091 FF83 0007 0E75 B0D6 E7ED F6FC 90FF"
		$"32FB FBE0 E0BD BDB6 727B EEFC E8D2 D8DA"
		$"CEC3 B8B1 BFD4 F1F9 FEFF FFC6 9DC5 9C50"
		$"74C0 FEF1 AE37 0100 60B8 C99A 7E91 9474"
		$"9078 5810 9100 95FF 8700 072D 86BD DAE8"
		$"F0F7 FE8E FF21 FBFB EB9E 8BA2 9DFC E684"
		$"B180 B7E4 DAC9 A089 A4BE CCEA F5FD D79E"
		$"C2BD 79BB 77FC DB76 8000 0A8F CDBD 8D89"
		$"9458 6A92 5E45 8D00 9AFF 8B00 0648 9CC5"
		$"E0EB F2F9 8BFF 2FFB FB87 A6F1 A2BD FDBE"
		$"95FD DC8A F3ED D89E 8379 7A78 93B1 DFF8"
		$"FEFF E980 A79C F9BB 5604 0000 B6D4 B2A1"
		$"9C7D 5591 8C53 1C89 009E FF8F 0006 63A0"
		$"C8E6 EDF4 FB88 FF20 F7A6 7F96 86C6 FFDF"
		$"7FAE A59D FCF9 DE5D 3A26 130C 0C2E 9EC4"
		$"E5F6 FCEE DDF7 ED9F 2A80 0009 4FBB B193"
		$"8D64 7B97 9036 8600 A2FF 9200 0728 98C1"
		$"D9E8 EEF6 FD87 FF0C C686 9EDF 7FCE 9E86"
		$"F7FE FBD0 0183 000A 125B 96B5 D9EB F7FF"
		$"DD7A 0380 0009 287D B178 8965 9C9F 7206"
		$"8600 A2FF 9200 0B13 6F97 9DAA BACB DFE9"
		$"F0F7 FE83 FF0B BEA6 FFCE 9EFF FF8E DFFF"
		$"F4A9 8500 0805 2150 87AE D6E3 B62F 8200"
		$"074F 9968 927E 847A 0286 00A4 FF91 000E"
		$"0A6C A4AB AFA8 9F99 A1B6 CCE3 EBF2 FA80"
		$"FF0B EFEF FFE7 86BE C686 EFFF ED74 8800"
		$"0417 4086 AB82 8400 0322 1F60 4289 00A7"
		$"FF8E 0012 0261 AFB9 B3AC A39A 8F7E 6D57"
		$"6F96 C7E6 EDF5 FC80 FF07 EFBE BEDF FFFE"
		$"E222 8A00 021F 5033 9300 ACFF 8B00 154F"
		$"ADB7 A793 7961 442B 1807 0100 0013 63A8"
		$"D3E8 EFF7 FD81 FF01 FAD2 A400 B0FF 8700"
		$"072A 746A 492C 1205 0187 0009 308A BCDC"
		$"EAF1 F8FE F2B5 A300 B5FF 8300 0203 0B02"
		$"9000 055C A3CD E2EB 7B84 0081 FF98 00B6"
		$"FF9C 0001 8A23 8300 85FF 9400 B7FF A300"
		$"8AFF 8F00 B9FF A200 8BFF 8D00 BBFF A100"
		$"8CFF 8B00 FFFF FFFF A5FF",
		/* [17] */
		't8mk',
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0001 0101 0101 0101 0101"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0101 0101 0202 0303 0505 0503 0302"
		$"0101 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0001 0101"
		$"0102 0203 0305 0506 0809 0B0B 0E11 0905"
		$"0301 0100 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0101 0101 0202 0303"
		$"0505 0608 0A0B 0D13 1E2F 4764 848D 350B"
		$"0603 0100 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0001 0101 0202 0303 0305 0506 080A"
		$"0B0D 131E 3048 698A A9C6 DCEB F5ED 7A16"
		$"0B05 0201 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0101"
		$"0101 0203 0303 0506 0608 0A0B 0E13 1E30"
		$"4869 8AA9 C6DD ECF6 FBFD FFFF FFFB AF2C"
		$"1209 0301 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0001 0101 0202 0303"
		$"0305 0606 080A 0B0E 1420 3149 6A8A A9C6"
		$"DDEC F6FB FDFF FFFF FFFF FFFF FFFF D750"
		$"1A0D 0602 0100 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0101 0102 0203 0303 0506 0608"
		$"0A0B 0E14 2034 4F6F 92B0 C9DD ECF6 FBFD"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF EF7E"
		$"2413 0803 0100 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0001"
		$"0101 0202 0303 0305 0606 080A 0B0E 1420"
		$"3149 6F92 B0CC E0EE F7FC FDFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FAAA"
		$"3317 0B05 0200 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0101 0102 0203"
		$"0303 0506 0608 0A0B 0E14 2034 4F6F 92B0"
		$"C9DD EEF7 FCFD FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FDD0"
		$"4C1D 0E06 0200 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0001 0101 0202 0303 0305 0606"
		$"080A 0B0E 1420 344F 6F92 B0CC E0EE F7FC"
		$"FDFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFE9"
		$"7324 1308 0301 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0101 0102 0203 0303 0506 0608 0A0B 0E14"
		$"2034 4F6F 92B0 CCE0 EEF7 FCFD FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFF7"
		$"9C2D 160A 0501 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0001 0101 0202"
		$"0303 0305 0606 080A 0D0E 1420 344F 6F92"
		$"B0CC E0EE F7FC FDFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFC"
		$"C442 1C0D 0502 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0101 0102 0203 0303 0506"
		$"0608 0A0D 0E18 2338 516F 92B0 CCE0 EEF7"
		$"FCFD FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"E164 2210 0803 0100 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0001 0101 0202 0303 0305 0606 080A 0D0E"
		$"1826 3855 7797 B7CF E2EE F7FC FDFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"F38C 2815 0903 0100 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0101 0102"
		$"0203 0303 0506 0608 0A0D 0E18 2638 5577"
		$"97B7 CFE3 F1F9 FCFD FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FBB5 3919 0D05 0200 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0001 0101 0202 0303 0505"
		$"0606 080A 0D0E 1826 3855 7797 B7CF E3F1"
		$"F9FC FDFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFD7 551F 1006 0201 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0001 0102 0203 0305 0506 0809 0B0D"
		$"0E18 2638 5577 97B7 CFE3 F1F9 FCFD FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFEE 7D25 1308 0301 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0001 0203 0305 0608 090B 0D0F 1A27 3E59"
		$"7898 B7CF E3F1 F9FC FDFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFF9 A733 170B 0501 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0003 0506 090B 0F19 273E 5A7D 9DBB D4E7"
		$"F2F9 FCFD FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFD CB49 1D0E 0602 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0005 0C20 3A5A 7B9D BBD4 E7F3 FAFC FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF E56B 2412 0803 0100 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"000A 2A9A D2E6 F3FA FCFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF F699 2E16 0A03 0100 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0010 35C6 FDFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FCC0 3F1A 0D05 0200 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0016 32B3 FBFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFDF 5E21 1006 0301 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"001C 339F F7FF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFF1 8827 1509 0301 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"001D 358B F1FF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFB B337 190B 0502 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"001D 3577 E6FF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFD D451 1F0E 0602 0100 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"001C 3261 D5FD FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF EC76 2513 0803 0100 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0018 2E51 C2FC FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF F8A4 3017 0B05 0100 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0015 2948 A9F8 FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FDC8 451C 0E05 0200 0000 0000"
		$"0000 0101 0101 0101 0101 0101 0000 0000"
		$"0012 253F 91F0 FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFE5 6A22 1108 0301 0000 0000"
		$"0101 0203 0404 0404 0403 0201 0100 0000"
		$"0010 203A 77E5 FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFF5 932B 160A 0301 0000 0001"
		$"0204 0506 0809 0909 0806 0503 0101 0000"
		$"000D 1C34 62D5 FDFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFC BA3C 1A0D 0502 0000 0102"
		$"0406 090C 1B97 F9CD 3C0B 0805 0301 0000"
		$"000B 172E 51C0 FCFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF DB5B 2010 0603 0101 0104"
		$"060B 0F17 95FF FFFF 8F10 0C08 0402 0100"
		$"0009 1529 47A8 F7FF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF F184 2715 0903 0101 0306"
		$"0B11 177D FFFF FFFF 9317 110B 0602 0100"
		$"0008 1225 408C F0FF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FAAD 3618 0B05 0302 0509"
		$"1019 3BDF FFFF FFF7 661E 160E 0803 0100"
		$"0006 1020 3B75 E3FF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FDD1 4E1D 0E07 0304 080E"
		$"1729 B4FF FFFF FFD8 4125 1A11 0904 0100"
		$"0005 0D1C 3461 D3FD FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFE9 7325 1309 0607 0C14"
		$"206F FFFF FFFF FFB8 3729 1D12 0904 0100"
		$"0005 0B17 2F52 BFFB FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFF7 9D2D 180C 0A0B 121C"
		$"42DC FFFF FFFF F672 3B2C 1E12 0904 0100"
		$"0003 0915 2A49 A9F8 FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFC C543 1D11 0D10 1826"
		$"AAFF FFFF FFFF CA4D 3C2C 1D12 0804 0100"
		$"0003 0812 2644 93F2 FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF E264 2517 1317 2166"
		$"F3FF FFFF FFFF 814D 3C2A 1B10 0803 0100"
		$"0002 060E 213F 7EE7 FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF F48E 2C1D 191E 3FE5"
		$"FFFF FFFF FFE2 674A 3727 190E 0602 0000"
		$"0002 050D 1D3A 6DDA FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FBBA 4026 2329 87FF"
		$"FFFF FFFF FCB2 5745 3222 140B 0501 0000"
		$"0001 050B 1A37 5FC6 FDFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFDA 5E30 2D53 F2FF"
		$"FFFF FFFF E56E 503D 2C1C 1008 0401 0000"
		$"0001 030A 1933 57B9 FCFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFEF 863D 38C0 FFFF"
		$"FFFF FFFF B85C 4936 2517 0D06 0201 0000"
		$"0001 0309 1730 53A0 FCFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFF9 AF50 89F8 FFFF"
		$"FFFF FFF1 8554 412E 1F12 0904 0100 0000"
		$"0000 0207 142D 5094 FDFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFD D379 EFFF FFFF"
		$"FFFF FFC2 5F4D 3927 190E 0603 0100 0000"
		$"0000 0206 1429 4EA4 FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF EBCD FFFF FFFF"
		$"FFFF FF8F 5844 3020 140B 0401 0000 0000"
		$"0000 0105 1328 49A2 FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FAFB FFFF FFFF"
		$"FFFF D86B 4F3B 291A 0F07 0301 0000 0000"
		$"0000 0105 1128 47B1 FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FDFF FFFF FFFF"
		$"FFFC A15B 4633 2215 0B05 0101 0000 0000"
		$"0000 0106 1226 47C5 FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFDF 6A52 3E2B 1C10 0804 0100 0000 0000"
		$"0000 0005 1226 43DD FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFA7 5D49 3524 160C 0602 0100 0000 0000"
		$"0000 0005 1227 43E1 FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"F972 5540 2D1D 1209 0401 0000 0000 0000"
		$"0000 0106 1226 5AEF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"B965 4C37 2617 0D06 0201 0000 0000 0000"
		$"0000 0107 1327 69FD FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFF1"
		$"8A5A 4330 1F12 0A04 0100 0000 0000 0000"
		$"0000 0107 1527 79F9 FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFD1"
		$"6C51 3C27 190E 0703 0100 0000 0000 0000"
		$"0000 0208 1629 99FA FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF F798"
		$"634A 3221 140B 0401 0000 0000 0000 0000"
		$"0000 030A 172B B8FF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF EB7D"
		$"5E42 2C1B 0F07 0301 0000 0000 0000 0000"
		$"0000 030B 192D B3FA FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF E280"
		$"583D 2616 0B05 0101 0000 0000 0000 0000"
		$"0000 040C 1B2F CEFD FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF E88C"
		$"5538 2012 0904 0100 0000 0000 0000 0000"
		$"0001 050E 1C48 E3FF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF F4A1"
		$"5233 1D0F 0702 0100 0000 0000 0000 0000"
		$"0001 050F 1E56 D9FF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FBBC"
		$"5631 1B0D 0501 0000 0000 0000 0000 0000"
		$"0001 0611 2070 E9FF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FDD6"
		$"6231 1A0C 0401 0000 0000 0000 0000 0000"
		$"0002 0712 2280 EEFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFEB"
		$"7B33 1A0C 0401 0000 0000 0000 0000 0000"
		$"0002 0814 247F F2FF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFF7"
		$"A239 1B0C 0401 0000 0000 0000 0000 0000"
		$"0003 0915 28A3 FBFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFC"
		$"C446 1E0E 0502 0000 0000 0000 0000 0000"
		$"0003 0B17 31AE FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"E161 2411 0603 0100 0000 0000 0000 0000"
		$"0004 0C19 3CAD FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"F289 2816 0903 0100 0000 0000 0000 0000"
		$"0104 0C19 4CCB FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FBB4 3819 0B05 0200 0000 0000 0000 0000"
		$"0104 0C18 46D6 FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FDD5 521F 0E06 0201 0000 0000 0000 0000"
		$"0104 0A15 24B3 EBFF F0F6 FBFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFEB 7625 1308 0301 0000 0000 0000 0000"
		$"0003 0811 1D3B 5984 90AD D2CB EFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFF8 A430 170B 0501 0000 0000 0000 0000"
		$"0002 060C 141F 2934 414F 637F DDFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFD C845 1C0E 0502 0000 0000 0000 0000"
		$"0001 0407 0D13 1A23 2D3B 516C F2FF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF E56A 2211 0803 0100 0000 0000 0000"
		$"0001 0204 070A 0F15 1F2E 4372 FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF F593 2B16 0A03 0100 0000 0000 0000"
		$"0000 0102 0304 070B 1724 3A99 FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FCBA 3C1A 0D05 0200 0000 0000 0000"
		$"0000 0000 0101 0308 1120 34C6 FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFDB 5B20 1006 0301 0000 0000 0000"
		$"0000 0000 0000 0207 1120 35F4 FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFF1 8427 1509 0301 0000 0000 0000"
		$"0000 0000 0001 0309 1423 5DFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFA AD36 180B 0502 0000 0000 0000"
		$"0000 0000 0001 050B 1727 9BFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFD D14E 1D0E 0602 0000 0000 0000"
		$"0000 0000 0002 060E 192A CEFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF E973 2513 0803 0100 0000 0000"
		$"0000 0000 0103 0811 1D36 FCFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF F79D 2D17 0A05 0100 0000 0000"
		$"0000 0000 0104 0A14 216F FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FCC5 431C 0D05 0200 0000 0000"
		$"0000 0000 0105 0C17 25AB FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFC FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFE2 6422 1108 0301 0000 0000"
		$"0000 0000 0207 0F1A 2AE1 FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFF4 8E28 1509 0301 0000 0000"
		$"0000 0001 0308 111E 3CFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFB B83B 1A0D 0502 0000 0000"
		$"0000 0001 040A 1422 7DFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF DA57 1F10 0603 0000 0000"
		$"0000 0001 050D 1826 B9FF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF EF80 2713 0803 0000 0000"
		$"0000 0002 070F 1B2B ECFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF F9A8 3417 0B05 0000 0000"
		$"0000 0103 0912 1F4B FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FDCE 4C1D 0E06 0000 0000"
		$"0000 0104 0B15 238B FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFE8 6F24 1208 0000 0000"
		$"0000 0206 0D19 27C7 FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFF6 9B2D 160A 0000 0000"
		$"0000 0207 101C 30F3 FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFC C140 1C0D 0000 0000"
		$"0001 0309 1320 5BFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF DF5E 2210 0000 0000"
		$"0001 050C 1624 9DFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF F189 2816 0000 0000"
		$"0002 060E 1A29 D6FF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF F491 2A15 0903 0100"
		$"0103 0811 1D39 F8FF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FBB8 3717 0B05 0100"
		$"0104 0A14 216A FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFD F9C4 431A 0D05 0200"
		$"0105 0C17 25AC FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FDFC F8F1 E5D2 B379 351A 0D05 0200"
		$"0207 0F1A 2AE3 FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFC"
		$"F9F3 DFCE BAA6 8E74 5C41 2917 0B05 0200"
		$"0308 111E 42FB FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FDFB F6EE E1D2"
		$"BFAA 8A7C 726B 6255 4532 2113 0803 0100"
		$"040A 1422 77FF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFD FCF9 F2E8 D9C7 B39F 8C81"
		$"756F 645D 564E 463C 3022 160D 0603 0100"
		$"050D 1826 B7FF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFD FBF6 EEE1 D0BD A996 8579 716B 645E"
		$"5851 463F 3832 2B24 1C15 0D06 0302 0000"
		$"070F 1B2B EBFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FDFC F8F1"
		$"E7D7 C5B3 9F8C 7D75 6E67 605A 534D 4641"
		$"3A33 2925 1F1A 1713 0E0A 0603 0201 0000"
		$"0912 1F52 FDFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FDFB F6EE E1D0 BAA7"
		$"9285 7970 6B64 5E58 504A 433C 3631 2B25"
		$"201C 1612 100D 0A08 0605 0302 0100 0000"
		$"0B15 2390 FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFC F6EC DECD B69F 8D7D 746D"
		$"6760 5A53 4D46 3F3A 332D 2722 1D19 1613"
		$"100D 0908 0605 0503 0202 0100 0000 0000"
		$"0D18 26C7 FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FAD7 C2AC 9788 7A6F 665E 5750"
		$"4942 3C35 302B 2520 1C17 1511 0E0B 0A08"
		$"0605 0000 0000 0000 0000 0000 0000 0000"
		$"0E19 28F9 FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FDFF FFFF FFFF"
		$"FFFF FFFF D2A8 9786 7768 5C51 4740 3832"
		$"2D27 221D 1916 1310 0D0B 0806 0605 0303"
		$"0202 0000 0000 0000 0000 0000 0000 0000"
		$"0E19 28FF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FCF7 F0EA FCFF FFFF FFFF"
		$"FFFF FFF0 A58F 7C69 5849 3C33 2A25 1F1A"
		$"1715 110E 0B0A 0806 0505 0303 0202 0101"
		$"0100 0000 0000 0000 0000 0000 0000 0000"
		$"0E18 2560 A0D5 FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FDF0 D5C2 B6D3 FFFF FFFF FFFF"
		$"FFFF FDCB 8674 5F4C 3C2D 221C 1712 100D"
		$"0B08 0606 0503 0302 0201 0101 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0C15 212F 3D49 5889 B9E7 FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF EDB5 948B B1F1 FFFF FFFF FFFF"
		$"FFFF EE8E 6E5A 4534 2519 120C 0908 0605"
		$"0503 0302 0201 0101 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0A11 1A26 313C 454D 5459 6A98 CAEF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFF7 C486 7873 B9F5 FFFF FFFF FFFF"
		$"FFFF DE6F 5945 3222 160D 0906 0303 0202"
		$"0101 0100 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"070C 131B 242C 343B 4146 4C50 555A 74A9"
		$"D5F7 FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFD F9F2 EEE8 EBF0 FBFF FFFF FFFF"
		$"FFFF FFE4 9C69 5E5D CAF7 FFFF FFFF FFFF"
		$"FFF8 905D 4735 2417 0E08 0302 0101 0100"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0508 0C12 181E 2329 2E33 383D 4348 4D53"
		$"5860 8FBF E6FF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFDC C7B5 A6A0 9DAA DDF0 FDFF FFFF"
		$"FFFF FCC6 6C4D 4549 72E5 FFFF FFFF FFFF"
		$"FFB4 6450 3C2A 1C10 0804 0100 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0305 070B 0E12 161A 1E22 262B 3034 3A3F"
		$"464D 5969 7EAA F3FF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF F59B 8D83 7B75 7474 7EA2 C9DB F2FB"
		$"FFFF F292 4538 353D 599D FFFF FFFF FFFF"
		$"CA6F 5744 3120 140B 0501 0100 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0102 0305 0709 0C0F 1114 181B 1F23 272C"
		$"333A 4555 6B8F E2FD FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF D380 6F61 554E 4C4B 4F56 647F A7CA"
		$"EDFC C250 3126 2834 4574 E6EB FFFD E3CC"
		$"6F5D 4A37 2719 0F08 0301 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0001 0102 0304 0507 080A 0D0F 1215 191C"
		$"2128 3240 5775 CFFD FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF A264 5242 362B 2828 2A30 353D 4C63"
		$"8EB2 772E 211C 202D 3E50 6D82 B4A6 756C"
		$"5F4E 3D2C 1E13 0B05 0201 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0101 0102 0304 0507 090B 0D10"
		$"1419 2230 445F B4F8 FFFF FFFD FCF9 F5EE"
		$"E4E2 E7F3 FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFB 684B 3829 1E17 1311 1315 1920 282E"
		$"3946 321E 1615 1B25 3444 535E 6567 635B"
		$"4E3F 3022 160E 0704 0100 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0101 0102 0304 0608"
		$"0A0F 1621 334D 95EE FAF5 EDE2 D6C6 BAAE"
		$"A6A1 9E9D 9FB8 D8F1 FFFF FFFF FFFF FFFF"
		$"FFE2 4C38 2819 110A 0606 0707 0A0D 1317"
		$"1B1B 170F 0D0E 151E 2B38 444D 5253 4F48"
		$"3C30 2419 1009 0502 0100 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0101 0202"
		$"0307 0C16 253C 68B2 BBAD A095 8C89 8583"
		$"827F 7F7C 7C7B 7A7A 8AB1 D6F5 FFFF FFFF"
		$"FFAB 3B29 1C11 0804 0202 0102 0303 0609"
		$"0B0B 0907 0709 0F16 202A 333A 3E3E 3B35"
		$"2C22 1911 0C06 0301 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0103 070D 1A2B 4157 656B 6E6B 6A66 625F"
		$"5D5B 5958 5858 595A 5C5E 6163 85AF D8FB"
		$"FF6D 2F21 150C 0502 0100 0000 0001 0102"
		$"0303 0303 0406 0B10 161D 2529 2C2C 2925"
		$"1E17 110B 0704 0101 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0001 0307 111D 2B3A 454C 4B4A 4543 3E3C"
		$"3A39 3837 3839 3A3E 4144 474D 5050 4E48"
		$"743A 261A 0F08 0301 0000 0000 0000 0000"
		$"0101 0101 0104 060A 0F14 181B 1D1D 1B18"
		$"130E 0A06 0502 0100 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0001 0205 0911 1A25 2A2D 2D2A 2724 2120"
		$"1E1D 1E1E 1F22 2427 2A2E 3237 3A3C 3C38"
		$"3127 1C13 0B06 0200 0000 0000 0000 0000"
		$"0000 0000 0102 0406 080B 0E10 1111 0F0D"
		$"0B08 0604 0301 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0103 0509 0E13 1617 1616 1310 0F0D"
		$"0D0C 0D0F 0F12 1417 191D 2124 2729 2927"
		$"221B 140D 0804 0100 0000 0000 0000 0000"
		$"0000 0000 0001 0103 0406 0708 0808 0806"
		$"0504 0201 0100 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0001 0305 0608 0A0B 0A08 0806 0504"
		$"0405 0505 0608 090B 0D10 1316 181A 1A19"
		$"1612 0D09 0502 0100 0000 0000 0000 0000"
		$"0000 0000 0000 0101 0102 0303 0403 0302"
		$"0101 0101 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
	}
};

