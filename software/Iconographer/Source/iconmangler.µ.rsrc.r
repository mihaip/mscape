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

resource 'MENU' (136) {
	136,
	textMenuProc,
	allEnabled,
	enabled,
	"Color",
	{	/* array: 2 elements */
		/* [1] */
		"Mac OS System Palette", noIcon, noKey, noMark, plain,
		/* [2] */
		"Windows System Palette", noIcon, noKey, noMark, plain
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
		"Preferences�", noIcon, noKey, noMark, plain
	}
};

resource 'MENU' (129) {
	129,
	textMenuProc,
	0x7FFFFF77,
	enabled,
	"File",
	{	/* array: 9 elements */
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
		"-", noIcon, noKey, noMark, plain,
		/* [9] */
		"Quit", noIcon, "Q", noMark, plain
	}
};

resource 'MENU' (137) {
	137,
	textMenuProc,
	0x7FFFFFF9,
	enabled,
	"Windows",
	{	/* array: 3 elements */
		/* [1] */
		"Show Colors Palette", noIcon, noKey, noMark, plain,
		/* [2] */
		"-", noIcon, noKey, noMark, plain,
		/* [3] */
		"-", noIcon, noKey, noMark, plain
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

resource 'MENU' (135) {
	135,
	textMenuProc,
	0x7FFFFFEB,
	enabled,
	"Icon",
	{	/* array: 7 elements */
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
		"Info�", noIcon, noKey, noMark, plain
	}
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

resource 'DLOG' (128, "About") {
	{88, 131, 307, 455},
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
	0x1,
	0x11,
	release,
	0x0,
	0,
	"1.1.1",
	"Iconographer 1.1.1\n�1998-2000 Mihai Parp"
	"arita"
};

resource 'vers' (2) {
	0x1,
	0x11,
	release,
	0x0,
	0,
	"1.1.1",
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
		{102, 7, 122, 158},
		Button {
			enabled,
			"Launch Register App"
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

resource 'DITL' (128, "About Box") {
	{	/* array DITLarray: 6 elements */
		/* [1] */
		{44, 66, 58, 154},
		UserItem {
			enabled
		},
		/* [2] */
		{58, 65, 72, 160},
		UserItem {
			enabled
		},
		/* [3] */
		{0, 0, 219, 324},
		UserItem {
			enabled
		},
		/* [4] */
		{176, 2, 188, 110},
		UserItem {
			disabled
		},
		/* [5] */
		{190, 2, 202, 110},
		UserItem {
			disabled
		},
		/* [6] */
		{204, 2, 216, 110},
		UserItem {
			disabled
		}
	}
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

resource 'STR#' (129, "Standard Errors", purgeable) {
	{	/* array StringArray: 15 elements */
		/* [1] */
		"The file you selected is already open in"
		" another program.",
		/* [2] */
		"This development copy of <app name> expi"
		"red on September 1, 1999. Please downloa"
		"d a newer version.",
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
		"Manager SDK from Apple."
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

resource 'STR#' (158, "Icon Balloon Help", purgeable) {
	{	/* array StringArray: 9 elements */
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
		"Displays a dialog which allows you to ch"
		"ange the ID, name and flags of the curre"
		"nt icon.",
		/* [9] */
		"Displays a dialog which allows you to ch"
		"ange the ID, name and flags of the curre"
		"nt icon.\n\nNot available because there ar"
		"e no open icons."
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
	{	/* array StringArray: 16 elements */
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
		"Exits Iconographer, first asking if any "
		"unsaved changes should be saved.",
		/* [16] */
		"Exits Iconographer, first asking if any "
		"unsaved changes should be saved.\n\nNot av"
		"ailable because Iconographer cannot be e"
		"xited at this time."
	}
};

resource 'STR#' (130, "Prompts", purgeable) {
	{	/* array StringArray: 10 elements */
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
		"o replace it?"
	}
};

resource 'STR#' (162, "Windows Balloon Help", purgeable) {
	{	/* array StringArray: 3 elements */
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
		"Toggles the visibility of the colors pal"
		"ette, a floating window which contains v"
		"arious devices used to select colors."
	}
};

resource 'STR#' (128, "Default Names", purgeable) {
	{	/* array StringArray: 14 elements */
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
		"Not Registered",
		/* [11] */
		"mailto:mihai@mscape.com",
		/* [12] */
		"http://www.mscape.com/",
		/* [13] */
		"Show Colors Palette",
		/* [14] */
		"Hide Colors Palette"
	}
};

data 'Mngl' (0, "Owner resource") {
	$"18A9 2031 3939 382D 3920 4D69 6861 6920"            /* .� 1998-9 Mihai  */
	$"5061 7270 6172 6974 61"                             /* Parparita */
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

data 'hmnu' (135, "Icon", purgeable) {
	$"0002 0000 0000 0000 0000 0007 0004 0100"            /* ................ */
	$"0014 0003 009E 0001 009E 0002 0000 0000"            /* .....�...�...... */
	$"009E 0002 0014 0003 009E 0003 009E 0004"            /* .�.......�...�.. */
	$"0000 0000 0000 0000 0014 0003 009E 0005"            /* .............�.. */
	$"009E 0006 0000 0000 0000 0000 0004 0100"            /* .�.............. */
	$"0014 0003 0000 0000 009E 0007 0000 0000"            /* .........�...... */
	$"0000 0000 0004 0100 0014 0003 009E 0008"            /* .............�.. */
	$"009E 0009 0000 0000 0000 0000"                      /* .�.......... */
};

data 'hmnu' (136, "Colors", purgeable) {
	$"0002 0000 0000 0000 0000 0003 0004 0100"            /* ................ */
	$"0004 0100 0014 0003 009F 0001 0000 0000"            /* .........�...... */
	$"009F 0001 0000 0000 0014 0003 009F 0002"            /* .�...........�.. */
	$"0000 0000 009F 0002 0000 0000"                      /* .....�...... */
};

data 'hmnu' (129, "File", purgeable) {
	$"0002 0000 0000 0000 0000 000A 0004 0100"            /* ................ */
	$"0014 0003 0098 0001 0098 0002 0000 0000"            /* .....�...�...... */
	$"0098 0002 0014 0003 0098 0003 0098 0004"            /* .�.......�...�.. */
	$"0000 0000 0000 0000 0014 0003 0098 0005"            /* .............�.. */
	$"0098 0006 0000 0000 0000 0000 0014 0003"            /* .�.............. */
	$"0098 0007 0098 0008 0000 0000 0000 0000"            /* .�...�.......... */
	$"0004 0100 0014 0003 0098 0009 0098 000A"            /* .........�...�.. */
	$"0000 0000 0000 0000 0014 0003 0098 000B"            /* .............�.. */
	$"0098 000C 0000 0000 0000 0000 0014 0003"            /* .�.............. */
	$"0098 000D 0098 000E 0000 0000 0000 0000"            /* .�...�.......... */
	$"0004 0100 0014 0003 0098 000F 0098 0010"            /* .........�...�.. */
	$"0000 0000 0000 0000"                                /* ........ */
};

data 'hmnu' (137, purgeable) {
	$"0002 0000 0000 0000 0000 0002 0004 0100"            /* ................ */
	$"0014 0003 00A2 0001 00A2 0002 0000 0000"            /* .....�...�...... */
	$"0000 0000 0014 0003 00A2 0003 0000 0000"            /* .........�...... */
	$"0000 0000 0000 0000"                                /* ........ */
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

resource 'kind' (128) {
	'Mngl',
	0,
	{	/* array kindArray: 3 elements */
		/* [1] */
		'Icon', "Mac OS Icon",
		/* [2] */
		'ICO ', "Windows Icon",
		/* [3] */
		'TIFF', "Mac OS X Icon"
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

resource 'icns' (-16455) {
	{	/* array elementArray: 10 elements */
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
		'ics#',
		$"0006 0188 07CC 1C78 70FC C5FB DB01 43EB"
		$"621F 240F 34CC 130C 183E 0AFF 0FFF 07FE"
		$"0006 018E 07DC 1FF8 7FFC FFFF FFFF 7FFF"
		$"7FFF 3FFF 3FFC 1FFC 1FFE 0FFF 0FFF 07FE",
		/* [7] */
		'ics4',
		$"0000 0000 0000 0BB0 0000 000A A000 C1C0"
		$"0000 0AAA CE0B 1C00 000A AA0C CBC2 E000"
		$"0AAA 0C0C 2C2E CC00 AA0C 0CCB BBAB C2CC"
		$"AA0C CCBB CCCC CC2E 0A00 CC4B AB3C 2BCA"
		$"0AA0 CCBC CCCE EEBA 00A0 C3CC C4CC ABAA"
		$"00AA CBCC 2CCC AA00 000A C243 CCCC AA00"
		$"000A ACCC CCAA AEA0 0000 A0CC AAEA EAEA"
		$"0000 AAAE AEAE AEAE 0000 0AEA EAEA EEA0",
		/* [8] */
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
		/* [9] */
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
		/* [10] */
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
		$"0000 0000 00FD E39A 7350 351F 1008 0200"
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

resource 'xmnu' (132, "Transform") {
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

resource 'PICT' (128, "About Pic") {
	62034,
	{0, 0, 219, 324},
	$"0011 02FF 0C00 FFFF FFFF 0000 0000 0000"
	$"0000 0144 0000 00DB 0000 0000 0000 001F"
	$"8000 8000 8000 001E 0001 000A 0000 0000"
	$"00DB 0144 8200 0000 F18A 0000 0001 0000"
	$"0000 0000 0000 0000 0000 0000 0001 0000"
	$"0000 0000 0000 0000 0000 0000 4000 0000"
	$"0000 0000 0000 0000 0000 0000 0040 0000"
	$"0000 00DB 0144 0000 0300 0000 0000 0000"
	$"0056 6A70 6567 0000 0000 0000 0000 0000"
	$"0000 6170 706C 0000 0000 0000 0200 0144"
	$"00DB 0048 0000 0048 0000 0000 F0F0 0001"
	$"0C50 686F 746F 202D 204A 5045 4700 0000"
	$"0000 0000 0000 0000 0000 0000 0000 0000"
	$"0018 FFFF FFD8 FFE0 0010 4A46 4946 0001"
	$"0201 0048 0048 0000 FFED 0216 5068 6F74"
	$"6F73 686F 7020 332E 3000 3842 494D 03E9"
	$"0000 0000 0078 0004 0000 0048 0048 0000"
	$"0000 02CB 0240 FFDE FFEE 02F6 0252 9203"
	$"0526 03FC 0002 FD00 012C 012C 0000 0000"
	$"0BA3 0960 0258 002D 05A0 5EEC 0026 0401"
	$"0101 0018 0001 270F 0001 0001 0000 0000"
	$"0000 0000 0000 0080 0001 0000 0001 0000"
	$"0000 0000 0000 0000 0000 0000 0000 0000"
	$"0000 3000 0118 0102 0000 0000 0004 3842"
	$"494D 03ED 0000 0000 0010 0048 0000 0001"
	$"0002 0048 0000 0001 0002 3842 494D 040D"
	$"0000 0000 0004 0000 0078 3842 494D 03F3"
	$"0000 0000 0008 0000 0000 0000 0000 3842"
	$"494D 040A 0000 0000 0001 0000 3842 494D"
	$"2710 0000 0000 000A 0001 0000 0000 0000"
	$"0002 3842 494D 03F5 0000 0000 0048 002F"
	$"6666 0001 006C 6666 0006 0000 0000 0001"
	$"002F 6666 0001 00A1 999A 0006 0000 0000"
	$"0001 0032 0000 0001 005A 0000 0006 0000"
	$"0000 0001 0035 0000 0001 002D 0000 0006"
	$"0000 0000 0001 3842 494D 03F8 0000 0000"
	$"0070 0000 FFFF FFFF FFFF FFFF FFFF FFFF"
	$"FFFF FFFF FFFF FFFF FFFF 03E8 0000 0000"
	$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
	$"FFFF FFFF FFFF 03E8 0000 0000 FFFF FFFF"
	$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
	$"FFFF 03E8 0000 0000 FFFF FFFF FFFF FFFF"
	$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF 03E8"
	$"0000 3842 494D 0408 0000 0000 0010 0000"
	$"0001 0000 0240 0000 0240 0000 0000 3842"
	$"494D 0411 0000 0000 0001 0100 3842 494D"
	$"0414 0000 0000 0004 0000 0005 3842 494D"
	$"0406 0000 0000 0007 0007 0001 0001 0100"
	$"FFFE 0026 4669 6C65 2077 7269 7474 656E"
	$"2062 7920 4164 6F62 6520 5068 6F74 6F73"
	$"686F 70A8 2035 2E32 FFEE 000E 4164 6F62"
	$"6500 6440 0000 0001 FFDB 0084 0001 0101"
	$"0101 0101 0101 0102 0101 0102 0201 0101"
	$"0102 0202 0202 0202 0203 0203 0303 0302"
	$"0303 0404 0404 0403 0505 0505 0505 0707"
	$"0707 0708 0808 0808 0808 0808 0801 0101"
	$"0102 0202 0403 0304 0705 0405 0708 0808"
	$"0808 0808 0808 0808 0808 0808 0808 0808"
	$"0808 0808 0808 0808 0808 0808 0808 0808"
	$"0808 0808 0808 0808 0808 0808 0808 FFC0"
	$"0011 0800 DB01 4403 0111 0002 1101 0311"
	$"01FF DD00 0400 29FF C400 C400 0000 0603"
	$"0101 0000 0000 0000 0000 0000 0405 0607"
	$"0809 0203 0A01 0001 0001 0501 0101 0100"
	$"0000 0000 0000 0000 0402 0305 0607 0108"
	$"0009 1000 0103 0204 0502 0403 0505 0603"
	$"0803 0101 1102 0304 0521 1206 0700 3141"
	$"1308 5122 6171 1409 8132 2391 A1B1 4215"
	$"C1D1 5233 16F0 E1F1 2417 0A72 4325 6282"
	$"A263 3435 181A 9256 1957 1100 0102 0305"
	$"0506 0502 0405 0304 0203 0001 1102 0021"
	$"03F0 3141 0405 5161 7112 0681 91A1 B113"
	$"07C1 D1E1 F122 3214 4223 1508 5262 3324"
	$"1672 B273 8243 5334 4474 6435 26FF DA00"
	$"0C03 0100 0211 0311 003F 00E4 0831 C5CD"
	$"EE95 6638 123D C404 4440 79FA 0271 F55E"
	$"2349 D912 A5C1 256B 5A50 25E4 1CA1 A495"
	$"3ED3 9892 8AD0 3107 055F D857 E6D8 861A"
	$"2DDF 6E31 A992 38C6 A4BB B8F6 92E3 F971"
	$"24A1 C501 F6AA 7CBE 48A2 D0B0 E398 1775"
	$"BE36 BE37 07F4 712E 692E 19A4 544E 6A40"
	$"E808 C57D 7A72 E129 0DA2 1516 B596 F8CA"
	$"284B 5E8D 6371 5203 C021 710A E007 24CD"
	$"F03F 0C38 EFA9 0EF3 1B7C 2D28 DC18 7365"
	$"0ECA 332B 5AD4 5201 C879 95F8 9FDC A71E"
	$"1B7B A50D 90B6 F97D FB20 5C71 B839 AD79"
	$"0E24 177B 40E8 3E24 AE27 865E 521E A597"
	$"59DA D6E0 25C0 0730 64CE 5503 8F20 841C"
	$"53E1 CBFD FC71 96B5 A538 2CD2 1188 12B8"
	$"B5EC FD30 B9A5 0FC5 465E 989F 4F87 AFAA"
	$"ADBF A491 85AD 6215 1BD4 92E5 FCBD 3849"
	$"A8A4 A995 B8C2 923E 01AA 7F95 7107 13C2"
	$"11A4 A890 8F80 8F8A 97B8 9C5C 79A7 2C3E"
	$"030E 1B73 8F31 5850 1248 D8E0 42B0 B864"
	$"6942 802F 3238 E3DE 4484 2FD1 00CC C096"
	$"C533 C29F 665C 5A1C DC7F 2838 6070 418F"
	$"FBF8 43AB 0719 9587 E9D3 385B BEC8 120C"
	$"A9E9 E268 EE3B 2862 9CAE 4C4A 39A3 1240"
	$"C090 3A14 0ABC 30EA A43A 465F 685B 9843"
	$"A427 F78D 91D3 82E6 B7B7 DCCD EDCC E283"
	$"DA10 E189 0BEB D397 3E1A E72E 3336 B7CC"
	$"EC87 5D54 A5F6 B7CE 3698 A360 2636 063D"
	$"4600 A94C C1C0 62E4 C700 70C3 E5C7 1E82"
	$"442F DBB2 DBE3 E571 BEDB 77FC FB20 4403"
	$"24B2 C913 0BE9 DCD0 D89A E2E0 490D 0397"
	$"EDE8 4FEE E3E2 AD6C AF5B 78F8 C2C3 0494"
	$"5ADD 9B77 6F6D 2412 132B A99A D630 280D"
	$"28AD C714 3863 F2FC 7845 3A84 8DB6 B6D8"
	$"7E9D 3782 145A 52EC FBC0 A861 39BB 8D71"
	$"1C9A A571 0DF9 A9FD BCBE 2A57 8FAA 5C24"
	$"4DBB E1DF 4983 0B5B BC18 12DE 9865 2D50"
	$"8DE4 0F5E 69D7 809D 55C1 D7F9 5BE5 1F7A"
	$"6D17 4661 84BB B640 0650 5C48 56FC B975"
	$"FC78 20A1 3BCF CBE9 6C5C 6529 CA37 8A77"
	$"7F29 40E3 89C7 9FC3 E187 0D39 C41E 56DD"
	$"6B77 43ED CAB8 8812 E861 2E76 2710 11A0"
	$"0452 0FC7 D787 0B82 21B5 D6E3 0F3F 2C39"
	$"AE8F 98D6 B4A7 6BDA E055 7975 F43F 1E1B"
	$"7062 5AD6 C21C 6532 0A24 ADF3 B5F0 2638"
	$"E28C 35EC 2C6C ACF7 347B B360 87E4 7F1F"
	$"E3C3 2EE4 06EB 79C3 BE88 D96B 7940 8752"
	$"286C 8D48 DAEF CC0E 621A E520 8EA7 9B49"
	$"3C25 9518 6E2A 96F8 ED87 A951 746E 8A07"
	$"9A77 00DF 6C6F 52E2 3329 F80E 5D31 5FC3"
	$"D0A0 F287 84B5 AC61 D7D1 02FB F6DA D7C1"
	$"8D25 BE4A B905 1361 EF48 EC3E A32A 10D4"
	$"4180 1D39 63D7 0E07 7663 91BC CE75 ADE1"
	$"0465 34C3 50CA FD9E 7891 8FC6 251E DBED"
	$"4E77 D24F 7063 E46B DCD6 46C6 C798 8201"
	$"C0E0 BD09 27D0 1F8F 197F 51F5 8358 AD69"
	$"11A5 F4FF 0046 BDE9 51D6 B617 C4C7 A1D1"
	$"54B6 0A36 B5ED 7367 203D CCA6 6355 A096"
	$"B1A4 142B 98E1 8E2B C639 98D6 5D98 7120"
	$"CB69 8D5F 2D91 6D12 0068 2766 1E16 9459"
	$"878C DB29 A5B6 4346 C7E5 0EF7 C0C8 2B22"
	$"865A CDBC D2B7 2CAA C2D6 E615 258D 05C7"
	$"100F 2505 329C 71C7 7AEB AB9D 56A0 CB51"
	$"FC94 A20B DC76 6E03 153D C449 CCBE 46B6"
	$"72B9 CAD0 1397 31C0 6E5E 04A4 B790 862A"
	$"33CB 4F22 F5AE FC5F 7526 B9AC CF51 6CA5"
	$"73D9 6DA3 9BB8 4B4B 5CE7 2355 C40C B990"
	$"01D0 2720 1353 F6BB A0E9 D0AA 1B56 6E74"
	$"DC4D F86D 1744 EF5A 6BEC D274 C147 2B73"
	$"7662 71DD C252 DD15 C7A5 35CD 4BAB A6A2"
	$"BB35 1D23 C3A5 2FF6 8695 31F2 E9ED 4C39"
	$"8E3D 35AA E82C 6B01 6093 4582 DE63 CC5D"
	$"3FD5 9573 25C1 E106 FB77 242A 3545 147E"
	$"DAA8 A11D B98A 1734 E249 538A 00AA 388E"
	$"D16B 104B 5D84 5BF5 2A4D A94E 57FC 2DF0"
	$"D90C FDCA 8EA5 A669 1A01 6282 A549 2310"
	$"A8E5 0063 C5DF 2798 1CA2 DF58 CE73 995F"
	$"CC82 25F6 F942 5A56 C626 46B0 BC11 9802"
	$"4342 92B8 A720 3D17 F1E2 59B5 5C44 F088"
	$"4AEC E5DD 6B7D 60A2 58F2 9710 D46F 3691"
	$"F870 5B1D 1119 8A28 4949 4009 A091 ED0D"
	$"28F8 C800 87B8 8523 13F9 139A FF00 B262"
	$"435C 9029 6CA0 14D1 C8D0 0868 8F01 22B5"
	$"C89C 8394 127F B7F6 F37E 9B81 9405 5690"
	$"BD25 64DF 6EE0 48D4 4F72 E6EF 7E67 73C9"
	$"97FC 4BCF A725 C382 FF00 15BE D6FB C33E"
	$"94ED B578 27C2 691F FFD0 E431 CD78 0F90"
	$"1720 0017 92E1 EB81 FCBE ABF0 C711 D224"
	$"41CD 385A D69C 748D F675 F017 C4BF 29BC"
	$"63D7 7B85 BF5B 4C35 DEAD B3EB BB9E 8DB6"
	$"5DDF 7DD4 96B1 1DBA 974E D9EB 990F 6ACF"
	$"72A2 88E5 96AA 525C 5998 8721 2800 6F8F"
	$"FF00 B82F 74B5 ED13 5AA5 97C8 D7F4 D8EA"
	$"2D71 1CAC 74CB DE15 5CC7 1B80 C531 45BF"
	$"70F6 DFA4 74EC FE45 F533 14F9 9C1E 42AB"
	$"84B9 5A70 70C4 AFC7 18A4 9F22 76BE 834E"
	$"F959 BFFB 49B6 1A66 A7FA 3696 D7FA BB42"
	$"E87D 276A 1597 0A98 E86D 9A86 AA8A 969E"
	$"2748 E9EA 2573 6285 A017 173D C849 7127"
	$"371E 90E8 ED5E AE63 43CA 6673 0F1C EFA3"
	$"4DCE 7140 0B9C C049 3700 A4E0 8374 663A"
	$"B642 9B35 0AD4 2934 FE2F 7000 2928 1C40"
	$"18AC B6A9 F184 BEB6 F1BF C87D B4B3 47A9"
	$"7713 6235 9E80 B04D 94C5 7FD7 1A66 F968"
	$"A37B 9D90 06B6 A2BA 9628 FDC5 E00C 5797"
	$"C10E D33A BB49 CED4 34F2 F9AA 555E 3063"
	$"DAE3 DC09 302E 6341 CF50 6F35 4A2F 6346"
	$"25A4 0DD7 FCFE 30D8 D9EC D78B F5E2 82C5"
	$"60B5 CF7B BADC 2414 D416 9B4C 1254 D44F"
	$"2105 0451 40D7 3892 01C1 A3D4 7C78 98AD"
	$"5994 E997 B8A0 1898 068D 0355 FCAD 9938"
	$"017D AFDB C317 8359 F8DF E42E DBDA 4EA2"
	$"DC2D 88D6 7A03 4FCA 01FE BDAD 74C5 E2D5"
	$"4654 B580 F7EB 6963 615C C114 E382 FC61"
	$"34DE ADD2 B3B5 3D3C BE66 9547 8C1A F6B8"
	$"F818 95AD D3D9 DA23 9AAD 17B5 A312 D23C"
	$"52E8 4658 7416 B8D5 B492 D5E9 DD17 75D4"
	$"9491 4869 AA2A AC16 EABA C8E2 9328 7E47"
	$"3E9A 3900 7069 0713 F1EB C48E 673F 96A0"
	$"F02A 546B 5673 7007 E11F 50C8 D7AA 158C"
	$"2E4D 8091 E5BE ED98 42B3 4D6C 46F7 6B1B"
	$"6EA3 BBE8 FD9A D55A A6D3 A425 9A8F 57DC"
	$"F4D6 9EBB D753 5AA7 8066 963A B969 A9DE"
	$"D81E CC4B 8485 A475 E233 51EA 4D3A 83D8"
	$"DAB9 8A6D 73FF 0048 73DA 0BBF E952 AEBF"
	$"0ECB E08A 1A3E 6AA7 3165 2738 0BD1 A4A7"
	$"1D90 87D3 BA73 51EA EBDD AF4B E93B 1566"
	$"A8D4 97D9 596F B2E9 DD3B 4D3D 6D75 64F2"
	$"1F6C 50C1 4CD7 C923 CF46 B413 F0E2 6C07"
	$"7224 4780 561F BDC6 F0DB CBAD 9AD3 6359"
	$"EF07 8B1B 8FB5 7A3C 8CCD D55B 91A1 B53D"
	$"8EDA 412D 6822 AAE7 430C 5FCE DFE6 EA38"
	$"74D2 730A 9901 0AA4 5871 586E 36BF 66B7"
	$"637C 354B 3466 CCED 66A4 DDDD 5D24 2EB9"
	$"FF00 A4F6 B6C9 72BF DCC5 346F 0D7C 9F49"
	$"6A82 7972 34B8 02EC A988 C71E 18AC DFC9"
	$"26B0 F16B 44CD C77A 41B4 7E3E 6FA3 EF7A"
	$"8B4E 3366 356C F7AD 1F58 ED3F AB6D 1169"
	$"BBCB AB2D 75CC 01EF A6AA 83E9 C3E0 99A0"
	$"858E 40D7 01D3 8194 2C38 CA4B BC40 1B2E"
	$"D1EE A5EA F378 B1E9 DDB4 D477 CBCE 9591"
	$"B4BA 96D3 66B2 DCAA 6AED F2B9 CE68 654C"
	$"3142 E7C4 E25A E003 DA15 0FA7 0D56 4225"
	$"382C 3072 A5AD 6C21 C1D0 DE2E 7931 B9DA"
	$"8751 E92D B9F1 CB5D 6BED 4FA4 2286 B758"
	$"E9AD 13A4 AF97 5AFB 4D3D 4C5F 510C 95B4"
	$"F6EA 47CB 0364 6A3D A646 B55B 8851 C21A"
	$"C73A 414F 61FA FC44 E19A B503 0293 6ED8"
	$"6965 D397 5A2B DC9A 5AA6 D557 1EA1 A6AA"
	$"3629 B4F5 4534 ADAD 8AB4 4BD8 303A 9DED"
	$"0E12 8792 CC87 10E2 88A7 843D DBE1 D0D7"
	$"132B 0B70 5892 77CF 08BC CAD2 9A3A 4DC9"
	$"D59E 22EE 769A DB9A 483F A955 EB7D 41A0"
	$"B555 1DA1 B4CE 05FD C756 54D0 321E D905"
	$"43CB D101 F8F0 A753 A827 CA40 DB6F 2BA3"
	$"94DF 4C94 0E0B B16D 69AD C8CE 694D B9D7"
	$"3AE2 5AE8 F43E 8ABC 6B07 5B1A C92B E3D2"
	$"B6DA EB99 A713 660C 74A2 8E29 0B73 9639"
	$"1485 4298 F086 BD4A B6FB 7D2C 161E 6D22"
	$"A16E ECEE E18F C250 E468 4F17 FC96 DCAB"
	$"F6A6 D29B 79E3 E6B8 DC0D 51A3 6386 BB55"
	$"E99D 13A4 EFD7 5AFB 5415 1199 A296 AE9E"
	$"8696 5960 648D F730 C8D0 0B71 0A31 E38F"
	$"A0F7 B100 536D 9BA1 2E2C 6152 4012 B616"
	$"5DA4 45F2 FF00 DBCB F6F7 F177 CD7D C6F2"
	$"D748 F983 B373 EE03 B69A 834D FF00 A76C"
	$"971B CEA9 D395 16AA DABA EB9D 2D6B 246D"
	$"82BE DB21 7AD3 35AE 6CD9 B296 E001 5E0A"
	$"D132 CCAB CC1E 1512 03D6 734F A2D6 9614"
	$"888D F737 FB7A DEF4 47DC 8BCA 8D82 F04B"
	$"C63D 5DA9 B69B 6622 D1D5 D1E9 0DAC B5EA"
	$"DD6A 6C70 5E34 2596 F33C 9535 2F37 3AA6"
	$"B25A 9A99 9E0C D290 172B 51AD 000B 9FC9"
	$"915D CDA6 D240 F90D B056 9F9C E6A2 D7D4"
	$"7053 8920 626D 28A8 77D8 2F34 F779 34ED"
	$"6DA2 AA9E FF00 054B ECB3 D8A6 A795 B591"
	$"D6B6 6EC1 80C2 5BDC 1207 82D2 C215 704E"
	$"020E 5286 F899 A541 429B A245 EA0F 0B7C"
	$"C5D2 5A45 FB87 AAFC 50DC AD31 A019 17F5"
	$"076B 8D41 A175 3D15 A042 E619 049F 5953"
	$"42C8 7296 8257 3A20 5E4B C25D 95AC 3F27"
	$"34A7 0296 F3F1 871B 9BA2 5C81 E178 8586"
	$"5B4C 68ED 51AD 6B24 B568 DD2B 72D5 B758"
	$"E075 C27B 7E9A A2A9 AF9D 9031 EC8C CAE8"
	$"A958 F706 07BD AD2E 3829 1D48 E3AC 9896"
	$"3049 7A19 9004 383A 63C7 1F20 3586 B4A6"
	$"DBAD 25B1 7ACB 556E 0D45 2BAF D0E8 4D2F"
	$"A5EF 371B CC94 2D90 C46A 5943 4B4F 24CE"
	$"873B 4B7B 8199 5422 F1C6 5224 A341 5E06"
	$"D64E 2B75 6A21 AAE7 0038 8F38 456A 9D13"
	$"AB34 26A3 BCE9 1D6D A66B F47E ABD3 929A"
	$"0BFE 93D5 B6FA 9B65 CE8E 7194 98E7 A5AD"
	$"6473 46F4 23DA E683 D7AE 2973 C828 5441"
	$"34D8 C203 8191 EDDB C6EE EE29 052D A5CA"
	$"FF00 781E C491 A329 6A22 0762 D4C0 618F"
	$"E3EA A056 2D22 FDB6 B785 F049 0B75 AC3C"
	$"A328 6064 71BE 625A 5931 19A3 0034 0F44"
	$"0092 1415 29FE E29C A973 A427 1CF4 C734"
	$"AD64 BF6C 29EC DA72 BAF3 3D3C 7142 6388"
	$"1EDB 9AF6 9032 E53C F31E 5CD7 9FC3 D48B"
	$"9ECF 53A0 EFCC A448 64F4 F754 7224 8DBE"
	$"16C2 54E8 1DAC 6C52 D3CF 2439 A642 4C86"
	$"3717 37DA 8533 2E3D 47AF CB8C AB5F EA82"
	$"4960 558D 3BA7 FA51 AD47 9BAD 65FB C4B9"
	$"B3DB EDFA 7E90 358F 8D93 8488 3A46 B329"
	$"1955 15FC CE18 2018 0E31 FD4F 3156 BBC0"
	$"20A1 3BF0 B62B 1AA6 9D93 A745 4B48 5685"
	$"4E3C 2FBF 0227 2C56 2C0F C4ED 8BB7 EAC7"
	$"D56F BEED C0CB 66D1 6959 3EA2 C54B 5F96"
	$"365D 2785 E647 10D9 302C 01BE E738 11F3"
	$"43C6 77D6 9AE3 3294 BD36 1471 4540 0AEC"
	$"68DE 7194 F1BC 088D CFE7 AAD4 A832 D49A"
	$"B54F 1960 A478 017E FBCC 455F 327C 99BD"
	$"7911 AF6A 741E 900E B468 4B33 DD43 F4D1"
	$"AB69 E286 9C18 FB61 807B 7231 1B8B B052"
	$"A073 E39D 03D2 EF0F FDDD 76AB DD70 FF00"
	$"0849 7CC9 DB8C 6919 4C96 5F45 C8FA 44AD"
	$"429C CE17 959A 2C80 52B2 4125 9611 16EF"
	$"5A3E D92E 9796 D705 2B0D 3C51 3A9C 9918"
	$"499E 46AA 296B 7104 8242 7E3E 9C6C FA4E"
	$"61D4 6A07 2CD6 D6EC E39A 6B2E FDD0 7284"
	$"0565 69C5 58EE 669E A8D2 1AA1 F50C 3DB8"
	$"EA65 7652 E298 E66B 90AA A20E 7883 8F1E"
	$"96E9 FCFB 3339 52B7 24E3 CC9D 4394 A993"
	$"CEAD C16E B5A5 C215 969D 40DB BD8C 3667"
	$"ACD1 208D B9BA 0207 FECA 908B 8FFC 606B"
	$"647D 2AA4 8123 6B76 AEEB FE4B 38DA B41A"
	$"9336 F9A1 9411 D7C6 2512 3E0C 6A09 2F25"
	$"D834 FBB0 E9D4 73FE CE0D A61C C28E 88EA"
	$"F418 F0A0 4ED6 F8C2 32BA 8667 C855 8AD0"
	$"C473 82AB 5314 C095 C47C 7F87 1399 6AE0"
	$"05D9 6B7D E2AF 9CCB B428 02DF 2EE1 095A"
	$"B89D 1B1A C737 DD19 25E1 4142 809E 448F"
	$"F6F9 7133 45CA 1565 15DC CD22 8A44 159E"
	$"7C93 E038 2622 9D7C 0699 A333 1C49 F468"
	$"04E2 EE40 2007 A12A 474F DCF5 274E 3840"
	$"2D2B 007B 4DCD 9907 67D5 0E54 E7FE 2E49"
	$"82FA 7C38 27D4 8079 1DCC 96E1 F1BF 7DF3"
	$"8FFF D1E4 35D9 DC72 B54E 209C 00C4 0041"
	$"2539 FAE1 FEF8 8082 D6B7 81A1 05AD 6F0E"
	$"C3BF EDF4 601E 19EE 5067 FF00 F4DB C80E"
	$"60E4 BA57 4D22 101C A83E 287E 5CBF 3F3F"
	$"BAD3 FF00 FA2A 2BFF 00C0 DFFB EAEF FAEC"
	$"9DFE 96F6 741F E995 3FF2 1FFB 590A 8FB6"
	$"2ED3 E8B7 F927 F729 DEEA AB4C 355A F9BB"
	$"CFAD 76E2 D774 A98D AF92 DF6E A7BD D5DC"
	$"A714 EE7F E535 1254 B448 502F 6DB8 A61C"
	$"09EF 36BB 99FE 8DA3 6483 8FA3 FB6A 4F23"
	$"6B8B 0342 E320 0C86 D3C6 0BE8 3C85 319B"
	$"CF57 4FCC D67B 7B01 5F32 3B84 3EBB 07E7"
	$"4E88 DE2D 75E6 26D4 F905 78D0 9A16 D5B3"
	$"FAF6 FF00 B35A 5ECD A8EE 3454 46FB 61A2"
	$"AAA8 B739 F594 F7BA 8789 CBCC 4E12 BA36"
	$"867E A65C BD4D 6BAA 3DB0 CCE4 329A 766B"
	$"20DA D51D 5A8B 2A38 804F 2B88 0EFC 4B40"
	$"4451 CA0C FF00 1138 95D1 BAA6 966A A666"
	$"9572 C6FA 751C C009 0140 94C1 ED5C 3744"
	$"6CFB 4878 FDB2 9A2B 757C DFD7 9B7B 4F41"
	$"A8E2 D3BB 8973 DAAD B1D4 946E 656B 68F4"
	$"BD30 1728 A2A4 A86C 9235 CD91 B511 B1F2"
	$"0233 76DA 49C7 2F17 1F7F 7AAB 52CC 6434"
	$"DA19 8259 CD45 B52A 0B96 A1FC 6611 427E"
	$"4527 7996 3111 EDE6 8F95 A35B 3752 921F"
	$"E616 84C1 A108 03BC 7688 9B1E 2779 2BA8"
	$"7CA0 D61E 676D EEBE D236 88F4 EEC6 EBFB"
	$"DEC8 D9E1 B741 34D1 DDAC B4D3 4F40 4DC2"
	$"3AB9 278E 5925 6D3B B3E5 6358 E0EC B942"
	$"2BB3 6EBC E8CA 3A26 5B4E AF41 EEE7 AF45"
	$"B50A 94E5 7100 FE26 4400 5C12 6A11 4AE1"
	$"66E9 FD6D F9D7 E618 F684 A750 B426 206D"
	$"DF7F 9716 17ED 61B7 BA7F 69EE 1E75 EDBE"
	$"968B E934 CE8B DE4B FD93 4DD1 3909 A7A2"
	$"8686 8C53 C21C E524 46D2 D682 98A0 3872"
	$"E2D5 EF86 AF5B 3ECD 2F31 526F A996 6138"
	$"4C97 1252 E9CF 1902 7888 DE88 C9B3 2E33"
	$"54D9 26B6 B393 749A 8224 DF89 7E43 E91D"
	$"E5D4 9E51 EDFE 90DB 5FFA 7507 8F9B 8DA8"
	$"F6F6 E324 356C A98E F570 92E7 5B59 5972"
	$"6B1B 0C46 17D4 D5F7 A473 3DFF 0098 6254"
	$"814A EBBE 95CC 6428 E473 15AB 7AA7 3341"
	$"8EB9 3940 0D01 A673 01BC A154 4C2D F7CC"
	$"683A B52C CBAB B18C E5F4 AA39 BC4A 924F"
	$"695D B0EC FF00 DBFB E336 D069 9DF3 FB9E"
	$"6FA5 BB49 527F AF6D BBBF 78D9 ED2B 749A"
	$"9E37 4965 B1C7 136F 73D3 D0B8 8FD1 6544"
	$"B700 240D 015B 1461 5071 FA47 ED2E 61F9"
	$"8E9E C955 A855 E693 14EF E50A 789C 63CB"
	$"9D76 D14F 51AC C6C8 73BB CE2C AFC0 5F34"
	$"F56F 9C7B 83F7 22DA 2DD6 DBDD 3D49 A4FC"
	$"5ADD AD4F E30E 9DA3 B553 D4CF 1DF7 4ED0"
	$"D4D6 5A89 BAC3 729A A629 6598 5338 CA18"
	$"D646 E6BF 2E4C 0975 FE8D 6E77 39A6 E115"
	$"6AD4 831A C734 953F 4886 1F61 AF1C 36B7"
	$"C78D C4FB B069 8DB9 B245 4349 A577 F6F7"
	$"B516 1AB2 D8DD 534F A6AC 54CD ABB6 5BCC"
	$"A0B9 C594 BFD4 2468 5762 AA40 248E 18C8"
	$"342B B714 EE82 7527 2866 F0BD E913 F3C1"
	$"7F2D 76DF CACD F0FB 8053 E93D 963B 63AC"
	$"BC75 DC99 FC6A D7DA CA4A E8AB 24D6 4ED2"
	$"4FAB B5D3 5C5E C8A0 83B2 5A61 9A36 31C6"
	$"4776 C46B 2140 C63F 42B3 5EF7 4A62 503E"
	$"6A83 98C6 2950 42F0 BA2A AFEC F113 E2FB"
	$"BFFD F2CB B00F D614 2E68 197A EA4B F3B0"
	$"CAD6 F35E BD57 9F32 1E40 FF00 35FC 7E26"
	$"0DD4 0FF2 59C0 7945 AE6C 2F97 1B71 AC3E"
	$"E25E 7578 67A6 B66F FD1D ADF6 7A97 446E"
	$"D6BF DDAA 5AD8 2666 B0AE BF69 2B44 2D74"
	$"F4C2 08DF 0494 745F 454D 1B8C 9207 B587"
	$"08F2 8CE5 D2AE D359 CC49 C8C0 1528 9F49"
	$"AE59 5DE7 F58A A0D2 743E 0AEC F7DF EFCE"
	$"CDEB F22B 5E6D F6CE EA4D 27A4 76EE EBB5"
	$"759B C37F B069 DA57 EA0D 41A7 E06D D2E3"
	$"42DB D54D 3B1D 5C21 A460 7BE2 1980 99EF"
	$"3EE9 0B88 0D6D 26E6 9CE7 1013 6F01 128E"
	$"155D 9360 6825 56E5 B97E DE1B A2DB FC62"
	$"F2C3 77BC 8DF2 AFCA 4D3B 61D1 BA7A FF00"
	$"E0FE DA51 692A 7F1F 7C9C D095 AEB8 536B"
	$"5BD5 CEC9 4B74 BBC7 4D5D 0554 D475 B052"
	$"4B50 EA77 3E95 9962 9222 C7BD CF25 AC3E"
	$"8661 CFA8 E007 E181 DB11 B5F2 CD65 3693"
	$"279B C441 DF01 3667 6FF6 3BEF 1FF7 66D2"
	$"FB65 A7A9 B49E 96BF 5876 9B5E B74D D960"
	$"8E9A 8E92 B6F5 6CAB AEAD 1045 086B 58C9"
	$"6A5F 24D9 4000 1790 0270 364E 906E 62A2"
	$"5D2F 2833 3955 CFCA D324 ADF1 34B6 27CB"
	$"6DBE D5DF 715F 38FC 34D3 1B2E 3476 AFDA"
	$"3A1D 15BB 9B87 BBF0 D743 20D5 F72B EE95"
	$"B3D3 B0CB 48DA 763E 2752 50FD 153B 1E66"
	$"7E71 1919 581A 0BC8 A55C 7ACE 626F 5DB0"
	$"2D6C B114 18F5 5592 6C99 88C5 E20E 94D3"
	$"FA57 EF51 F75F 1A7A D715 A63D 45A5 B673"
	$"54DD A0A2 6863 25B8 5659 6A5D 5139 68C0"
	$"3A57 0CEF 23F3 3897 1C49 3C35 9623 F715"
	$"070F 282B 34A7 2748 9DA6 255E C8F9 83A1"
	$"B5B7 DC27 CD2F 0B34 F6D0 9D29 AAB6 52DF"
	$"A3F7 535C 6EB4 55B0 C8CD 535D 7FD3 3686"
	$"B7B9 4ADA 763E 37D2 D1BE 9206 BCCA FCE2"
	$"3211 81A3 3394 736D 7577 D302 610F 7C0F"
	$"5F26 E6E5 D950 9915 09B1 098A EDF1 FBC5"
	$"AD97 D45F F700 F9E9 BC17 3D15 4353 A876"
	$"8B48 EDF6 ACD1 B4D3 53B5 F053 6A2D 5D64"
	$"8595 9776 35C7 2B6A FB74 2F68 786F 399E"
	$"FF00 CE73 700D 0CBB 0E75 E526 00F1 FB44"
	$"857C CBC6 9EC6 AC89 3E11 62FB 45E4 BF90"
	$"5AF3 EE13 E5EF 8C1A D767 62B1 78E9 B356"
	$"1D25 7CDA 4DDB 167B DD3B B505 75E6 CD6F"
	$"AEB9 4125 7D5C AFA0 AA11 4B5A F8DA CA78"
	$"DAE6 7688 7971 272C 853A EF35 9CD2 3F10"
	$"2F88 EAD9 5A6D CBB1 E0FE 4554 28F2 BE29"
	$"33C5 4D96 D09B 13FF 0073 2F94 7A47 6D6C"
	$"74FA 6748 5F36 EAB3 70E9 74E5 A201 052D"
	$"1566 A0A1 D377 2AE6 C4C6 9CA1 9255 C92C"
	$"AD6B 435A D0FC AD68 0D0B 1595 A4D6 679C"
	$"05C9 E686 2C19 AACE A9A5 34BA 6799 3B96"
	$"DD91 75D7 DF2C 36E7 477D D134 9F87 FF00"
	$"F481 CFDD 1DE1 DA3A 7DCF ACDF 5A6A B843"
	$"85AA C5A8 2FAC A0B2 CB4A E873 9898 F15F"
	$"3895 B2FB 5F20 6E47 0717 3241 D9A6 8CD0"
	$"A693 2D55 ED32 F388 36E4 9C72 7EAF 3483"
	$"913B 029F 28E5 03FE EA1D 3B66 B6F9 B7B2"
	$"17FB 65AE 1A1B C6A5 DB5A 3FF5 15C6 9981"
	$"8EAB 34BA 92EB 4F13 E7C4 35EF 6C64 3333"
	$"866C 8D6B 49CA C681 59EA 7415 44A6 9F18"
	$"BBF4 41E6 A2E6 9B96 5DD1 CCD4 10CD DC78"
	$"0492 E4CE 8328 CA5E 5CB8 85EB 8838 8C7E"
	$"1C54 2AE6 5A07 E56B 5962 DE28 979E 516B"
	$"5B18 7474 76DF D5DE E58D 8F84 B5A9 9A19"
	$"02E2 1D80 C012 79A2 0078 AEEA 9D40 2834"
	$"8694 48B1 69BA 09AC F010 A833 B5DD B13F"
	$"F62F C4DD 7FAC 9D46 74FE 9A75 440F 7B63"
	$"7DD2 7CD1 44C1 CF30 C1CE 2001 D71E BF1E"
	$"300E ABF7 332D 4AA1 6925 CFD8 2FB7 87C7"
	$"6CD1 7A3B D3A6 0B9E 0352 776C 49AC BE38"
	$"6C02 CFF4 7FDB CAF4 CA52 2F1A 963A 2A97"
	$"B438 4746 33B6 3690 A094 C3A2 0189 231C"
	$"38C9 333E E2E6 EA3B 9E95 3445 BED6 F29F"
	$"AE32 5960 438A FC6D C760 8565 AFED A76B"
	$"AAD4 D6DB 86A0 DC4F ADD1 7657 36E1 AB9B"
	$"337B 2B04 4E3F A4C2 E2EC 5C71 20E2 7F03"
	$"C759 EE0E 73D3 7B6A B034 A2AD E8B8 AA05"
	$"B263 10DA 8EB7 95A6 D1E8 B5C6 A928 D139"
	$"EF22 EDBE 5BA1 8DF3 73CA 2A5B CBED 9E3D"
	$"6C5D 3FD0 697B 18FF 004F 51D0 5034 974A"
	$"C638 C323 739F 71CD 94E6 418B 9463 8F15"
	$"BE9C D2D9 9AAB FBCC CFFA 4D9B 41EF E632"
	$"C6F1 B3BA 355E 85E9 2ADA 7D21 5EA8 0FCC"
	$"D499 1B06 E9A2 8B82 990C 4153 102E C3A3"
	$"FF00 D2AC 968A 5A67 FF00 5223 35C1 D310"
	$"55B2 608D 2C51 C950 1704 5E36 AC93 B2AF"
	$"60E4 77E5 BA76 44EF 8AEF 51E6 B38F 7AB8"
	$"114B 0F0F 35EE 496C 3E8E 8630 4435 2F0F"
	$"7356 50C6 80A1 A5C5 3DCD 0D28 A4FF 0067"
	$"2E24 CB9A D796 9297 5ADD B156 FC83 4142"
	$"87C6 22F6 FDEC DFFA 86DA FB9D 2530 7C71"
	$"6673 5D9D A0F2 0480 D03A 6500 05F4 C02A"
	$"F17E E8DE A96D 0AA1 AE74 AD6E 1DD1 47EA"
	$"DE9A FDDD 2282 66EB 5BCE 20AD BADD 5761"
	$"AC8E 9278 1CE6 46F7 332B 9087 29E8 5108"
	$"2BC6 BDA8 67E8 D7A6 1ED1 696F F8C6 65A7"
	$"64EB 65EB F23A EB4E 1737 8D3E DA6B 7435"
	$"AC7B 9BDD C4B6 421A 7128 000A 4A85 C54F"
	$"15AC 9EA5 EA3C B4DF BA2E F9EC 812D 5175"
	$"B842 0E68 C39C AD2B 27F2 B153 05C7 89D1"
	$"5508 1155 AF97 E604 E309 2BAD B1EF 9C3A"
	$"9E34 0504 AF1C 813D 7D7E 3CB8 9CC9 EA00"
	$"7E31 5BCD E510 7084 CC94 C199 88C7 1552"
	$"BCCF FC78 976D 5588 BAD9 00D5 305F 3C40"
	$"B5C0 9C1E 0B54 A29E 8702 31E0 9A6F 887C"
	$"C52E 59C0 0ED3 B366 CBFC CB9B 0CC9 9D53"
	$"E5D7 9FE1 D387 F9A0 5411 FFD2 E44D 8548"
	$"637F 2C87 3100 1524 B914 0C48 43CD 315F"
	$"4EB0 F85A DF48 9068 7098 BEDD FBA3 B0CF"
	$"FB7F 0278 6BB9 65CC E7B9 B7BE 6D61 5274"
	$"A69D E808 247B 9C53 99C7 F1FC FDFE EA65"
	$"D434 7FF0 3313 FF00 C953 BAE0 27BB B3D2"
	$"9ECF B89D 31EB FF00 C87F ED6C 3E5F 6C6C"
	$"CDD7 3F72 0523 F4FC 85D7 E5AE 7390 868A"
	$"B691 8927 DA98 3BE3 8FC7 8ACF BCC5 729A"
	$"3EFC 9D2F 2F3D 9DBC 226F A1E4 ECE4 FF00"
	$"FC8A 9F08 A56B 57DB 5F5C 79C9 E4EF 9DFA"
	$"A347 EE55 A742 D368 3DDD D696 2AEA 5D4B"
	$"4B59 33A7 7D56 A1AF AA6B DA60 3823 5732"
	$"85E6 7AA7 1E8F ABEF 0E5B A674 5D2E 9D5A"
	$"4E79 A996 A641 6F2C 918D 1E68 0466 34BA"
	$"1DDA AE7B 3551 AF0D E5AA F130 76AE D8B6"
	$"6FB3 36D4 DCB6 3347 7967 B417 8B94 17BB"
	$"A6DB 6E85 7E8F ADBA DB98 E641 5135 0D9A"
	$"8585 F1B6 505C 1AE2 CE5C C7EF 1847 F70F"
	$"ADB3 52CC 6473 4C05 ADAB 4038 03B1 CE76"
	$"C418 E32D F81D 17DB 9D38 E528 57A2 4A96"
	$"5523 B9AD B4A0 FF00 ED80 C037 B7EE 7CC0"
	$"038F FD6F D4C1 B9D5 D81B B5C1 B8A1 5231"
	$"C57F 1238 1BDE A969 7A21 FF00 F8AC DDFC"
	$"0D3D 9BBC 0185 F440 FF00 719D FF00 CCEF"
	$"3874 BEDF 4537 3BEE 2231 0BBD DA83 D999"
	$"D993 FA6D 12AE 5CCA 9EBE B875 E20B DD80"
	$"B92D 27FF 00D5 66C4 BCF0 EED8 A525 127D"
	$"2BFE A66F FF00 33BF ED6C 35FF 006C 00E1"
	$"BD3F 73F5 00AE F7EA 5CCC 47B8 29BA 5C89"
	$"E5CC 00B8 263C 4CFB D083 4CD1 3FFD 566C"
	$"1FC2 CDB7 613C 277C 47F4 50FE 7E77 FF00"
	$"33BE 3170 FF00 61E0 95BF 73E1 D079 0FA8"
	$"4027 13FF 00D8 6D9D 4F3E 3DCD ECD1 5E99"
	$"C97F E267 FDA2 3CF5 EE17 FF00 DA56 FF00"
	$"A8C1 17D8 EC38 7927 F7BD 5248 3E4F 6B52"
	$"D5E4 07F5 FBCF 2F5F EFE2 F790 FF00 52A7"
	$"1F9C 5775 03FC BA7C 3E02 1EBF B475 7534"
	$"DBE9 F787 A06D 5B25 ADA3 F263 5454 CF48"
	$"D703 2451 4D6B A264 65C3 3388 0E74 4F03"
	$"E442 0440 E640 8578 FF00 31F3 8E6A 23F1"
	$"A7FF 0048 F210 BFFB 6478 71BD 3E2D 6F27"
	$"DCD3 5C6E C5BA DD6F B1F9 43BE 1A97 7BB6"
	$"9DD6 4B84 75D2 D4E9 FB9D C6B6 BE09 EA19"
	$"18FD 07B9 B58D 698D C730 735D 865C AE72"
	$"B294 1CD7 BC9B 8994 359C CC35 EC60 0550"
	$"7CA2 BEBE CF59 3FFF 005F BEF9 21B0 7648"
	$"D614 398E 1EE2 7515 F4AE 1862 ABF8 A9C4"
	$"9E05 D3CF F3AA 71F8 9837 5269 F429 9DC3"
	$"CA2A 87EE 0DF7 30DF 2FB6 7FDE F3CF DD73"
	$"B11A 5349 EAEB EEE6 DAB6 DF48 DF69 776A"
	$"86F1 5D4B 0D2D 36DD 69BA D6BA 06D9 AE96"
	$"B7B6 4CCD C4BD CE04 74EB C0D9 8AE6 9661"
	$"C400 A47C A243 27A7 B6B6 51AA A93B B8A7"
	$"0C7C 217B F69A D2BA 57EF 6FF7 1ADF FF00"
	$"31BC E0DB 8D33 A86B B69F 4EE9 5A8A 2DA4"
	$"D294 75B0 E93A EB93 A37D 9A8E 5ACA 2BBD"
	$"55CA 49E2 861A 073D D0C9 3E47 CA5A 4B4B"
	$"0167 0DE4 D9FB 8AEE 73EE 0853 05BA 119D"
	$"A8EC AD10 C61B F1C7 18E9 CF66 7CD1 9F5D"
	$"FDC6 FC94 F01B 4E6D FD16 93D0 1E25 687D"
	$"277C 7DEE 991B 357D CF50 51DB EE50 C34B"
	$"0C05 9153 D1D2 D1D6 C713 63C9 98BC 38A8"
	$"6868 3314 F32B 58D3 0240 442D 5CAA 506D"
	$"4266 E3F3 F943 13E3 0340 FBD4 FDD1 5FD5"
	$"DA1B 649B FB2C B567 FB78 6B2E 4FEE 6A76"
	$"7941 3991 FECE 9F13 0CAF 88F1 E4FF 00B8"
	$"2FEE C0EC 85BD DD0D B5CF CCEE 4E4D 23A6"
	$"9AA3 E182 2FAA F0CE 5DE4 E72A 0D80 7C21"
	$"ECD0 FF00 614B 89F8 C3DB E308 3FFF 00B4"
	$"BF74 3774 3A1F 6500 E7D2 C953 FDFC 3996"
	$"5FDD 54E0 DF28 6B32 7FD9 52E2 6193 F118"
	$"47FF 00EC 13F7 602D FF00 30E8 8DAF EE15"
	$"1FFF 004F D309 870C E5BF FBB5 380F 843F"
	$"9B5F E9F4 B89F 330F 7F8C 4C4F BD0F DD01"
	$"E98B B44E CB31 7FF0 D8EA 0FF6 F0EE 58FF"
	$"00BB ABC1 B0CE 647F B2A5 C5D0 D56B DF35"
	$"BEE6 BB97 F71D F2B7 C27F 0E74 F6C4 D269"
	$"BF1C 2D5A 4F57 3350 F931 4DB8 31D7 5553"
	$"6A1D 3768 B9CA D336 96AD 9639 1ECA 9B83"
	$"C347 D3C6 0460 02E2 E049 62A6 7332 ECC3"
	$"E9D3 E5FC 52F5 C536 1826 9E43 26CC AB2A"
	$"D52F 572D C981 3B62 0F78 56DF 257F FD88"
	$"F7A1 FE5A 0D0E 37BB FE92 86EA 5FFF 001D"
	$"7FAF FF00 A53E 9FFA 7D80 D1FD 37FA 980A"
	$"BCE2 0CBD ECF8 675C A8D4 E03C 9BAA 7F50"
	$"707A 2F2E 0BBB 6C48 E7C5 1FE9 6DF4 9797"
	$"9B14 5C76 434D F7BB F31F 737C 10FB BDEC"
	$"6F90 BB43 A7EC 1A93 5BD9 F62A 874D D1DB"
	$"B72A 9AE3 576A 30DC F57E AC82 573E 3B55"
	$"75BE 6CE1 AB90 F750 6381 E02D 7B50 765B"
	$"38D7 3429 E5F8 9D90 6F4D E90D CDE4 1CD7"
	$"B91B CE7C 00DB 1CF9 F9F3 F700 DEBF B91E"
	$"E5E8 ADCC DEAD 2FA5 F4CE A4D1 5651 B7B6"
	$"9A3D ABA2 BB50 D13A 91B5 F537 012C 8CBB"
	$"5C6E 723A 60FA 970C CD91 AD44 F6A8 5E2A"
	$"B9FE A035 DE1C F490 B863 C671 71D1 F426"
	$"E529 B9B4 D492 71EE 95D6 F06D B63B C69D"
	$"7DBA F78A 5A1D 39A6 AAEF 5532 38E6 34F0"
	$"8CB8 39A0 BDC4 E556 B475 1F2E 9C64 BD5F"
	$"D779 3D3D 84BD F3BD 244C 6A7D 3FD1 998C"
	$"D23C C982 F264 382E 3B3E 222F 8764 7C0F"
	$"D0BB 6268 AF3B 875B 1DE2 F547 1473 3ED1"
	$"4E21 751B 5DDB 40DC C41C E733 8B5C A304"
	$"F8AF 1E4D EB1F 70F3 79B7 A077 235D 78C6"
	$"F94F 094E C236 CD03 234A 9B03 28D3 5451"
	$"CC42 A9C5 6721 D93D B7AC C566 E25A F4A5"
	$"AA69 A829 E8AD 364B 40C9 4B15 235C C519"
	$"0B0A 96B5 A093 CC05 EABF 3CE1 F9FF 0045"
	$"AD20 9738 DFF0 DA7E 3860 40B0 8E96 7E69"
	$"DCAE 049E E1F1 F963 BE0D F6BF 5656 EF60"
	$"5D25 579C 544F 3417 695C 6374 7471 C4C6"
	$"E771 7604 125C A846 0A3F 1705 6AEE 0DA2"
	$"D506 FD88 36AF 75DB 3844 3F53 E9F4 3436"
	$"1A99 9178 1CA2 F2ED D65C 6538 8C9E 7AF9"
	$"5F6F DBCD 3AED A2DB 9B8C 1349 0C52 41A9"
	$"EF4D 90E6 8E47 BB10 AD08 5D94 9010 81D3"
	$"1C38 9CD2 34C7 6A19 80D2 4FA4 C49F F8CF"
	$"6E00 E3E3 05FB 69D2 4E25 DA96 6872 AFE9"
	$"69C0 0971 036D C57B A2A4 FC70 F14F 73FC"
	$"94D5 F26B 9BD4 95DA 5B6D 9AE7 D45B 6EC1"
	$"8EA5 A9BC 4A4E 42F6 6673 4F6B DC9F 9B13"
	$"FB78 D43A 975F CBE8 F446 5A93 5B53 32E4"
	$"0B78 A7BB 62F6 458F 31AA B9D9 8756 AAE2"
	$"DA4C B997 7A86 7326 F006 C230 9831 735A"
	$"2FC2 CD0D 60B7 5351 B7BB 5524 80C8 E9AE"
	$"1249 3677 B434 1724 CE7B 9130 24A0 5F8A"
	$"718B E706 A398 A85C E720 DC83 CADB A237"
	$"3BEE 7161 9317 C7BD 71ED D928 35B9 F879"
	$"B775 8ECD 1D27 FCCB 733A 49E3 0C68 6964"
	$"A5A4 942D 4421 1BCB 975E 857F 50D5 F2C1"
	$"A5B5 C9E2 84F0 9AAF 1DA9 DB05 53AB B2B5"
	$"8FE7 484F 043B 3002 43B3 EEDB EA2F 08ED"
	$"178A 675B 28AE CF8C 3039 CD63 E364 8D79"
	$"702C 3848 ABF1 5774 E878 3F27 D67A 9B1C"
	$"E935 C9B2 576F 8EB7 50C8 39AA 4204 99BE"
	$"6924 40BE 131C 6200 6E4F DA3B 56DF 6AAA"
	$"2BB4 AEBB A585 B213 50C6 5DA1 6459 941C"
	$"A15A D2A4 8031 09CF F6EA FA17 BF99 8CBD"
	$"0E5C C65C 84D8 6EDB B37C A2B3 9DE9 2C8E"
	$"6EA8 753A 8419 6FF0 FBAC 459D 4FF6 FDDF"
	$"FD25 4553 4D5B 6DA5 BA52 40CE DC52 5B9E"
	$"E24B 4284 61F6 95CA 4123 9734 3871 65CB"
	$"7BDD A454 ACA5 C5AE 3BA4 BC6E 87E8 7B7F"
	$"98AF 4836 9383 DA36 9EC3 BA66 5BE2 10EB"
	$"4D89 DC8D 2759 3475 5A76 A5CC 0F73 0CB1"
	$"440B 4007 F300 D27D A491 D7E5 CF8D 9F42"
	$"F71B 47CD 531F CD0A 45AD C629 9AC7 B79A"
	$"B65D E5DE 81F4 C199 C3BF EFE2 219F BA59"
	$"EE14 2B1D 75BE 5A72 0249 F50C E608 4C53"
	$"02BC 5CF2 5A96 5AA9 5A75 2DDF 8450 758D"
	$"2EBD 13F9 5320 C23A A2DE C948 959E D2D2"
	$"15CF 1F9B 01CD 4B90 0E5D 7D71 E27A 966A"
	$"5298 880A F458 07E3 6B7D 213B 71A0 103D"
	$"CDCA 4171 2F11 FA34 E011 09F8 F129 97AE"
	$"4DF1 075F 2648 3282 0ED3 BB99 30FF 0012"
	$"F44E 0FE7 FC77 C57F F6C7 D448 FFD3 E46A"
	$"48E2 591E D7E6 0103 C00A 8E42 1A9C D4A9"
	$"E49E 870E 20DA 4840 6263 D2FC 496D B08B"
	$"E6FB 5C7D CFF6 0BC2 8D81 D5FB 51BA BA3F"
	$"585F EFF7 ED61 71D7 F495 7B7F 6EB1 D550"
	$"B286 AECF 6AB6 3627 BEE1 74A2 7F74 496F"
	$"7E66 8691 9482 AB80 F2F7 BDBE CBEA BD45"
	$"AA53 CCE5 AA53 635B 4837 F32F 0543 9EE5"
	$"934C BF29 1DA3 646B 7D07 D6D9 4D2F 26EA"
	$"555A E2E7 38BA 401B C346 246C EE82 AF11"
	$"BEEB DA6B C77F 24BC A3D5 37BD 1176 D43B"
	$"0DE4 86B6 BD6E A525 2D17 D0C7 A86C 72D7"
	$"5DEB 2AE0 98C3 2CCE 8267 BA0A 8632 78BE"
	$"A000 E635 CC79 421E 475D 7B19 98D6 346C"
	$"9526 546B 7339 5A41 935E 4723 5A08 5131"
	$"3122 9712 08B8 8FBA 7BAF A9E4 F395 DCF6"
	$"934A ABCB B050 A4E1 8E0B 3E0B 1607 76FB"
	$"CB78 1DB3 564D C1D4 7E3E 6D15 DAED B8FB"
	$"9571 A9D6 DA96 DF45 69A5 B141 74BE D431"
	$"5D53 73AD 9269 5D94 95CC 638E 425C 5CE0"
	$"D05C 5DC6 554B FB7A EA7D 46A5 2A79 ECC3"
	$"451A 4DE4 6CCB 8B58 306B 504F 8908 000A"
	$"4048 B954 F723 49CB 35CE A0C2 5CE2 A507"
	$"2A9D AE27 CD09 5C22 B47C 08FB ABDE 3C70"
	$"DD3D E8BF 6F76 9BAB D77A 3FC8 4BD4 9B89"
	$"ACEA 7490 A78E E16B BD4F 34F2 4B53 4B05"
	$"53E3 8E58 A513 E574 2F95 A81A D2D7 6043"
	$"B64F 747D 901A C647 2F4F 28EF 4EA6 59BC"
	$"AD0E 5E52 D920 244C 11CB 2701 B577 52BA"
	$"53AE 8E4A BD57 5769 736A 92E2 9783 39A6"
	$"20EC 5924 A2CB EEDF 797F 03F6 76C5 B81A"
	$"8BC7 DDA3 BB5D F717 72AE 351A E352 5B29"
	$"AD14 D62A 7B9D F6A1 A1CF AAB9 D64B 24CF"
	$"C48F 718A 3909 25C4 3417 1771 8D33 FB7B"
	$"EA7C FD4A 34B3 D996 8A34 5BC8 DFC8 B8B5"
	$"A306 B420 EF22 4005 2024 5E2A 7B8F A4D0"
	$"6B9D 4184 B9C5 4801 14ED 27E2 8784 433F"
	$"B7FF 00DD 936B 7C73 B0EF CD57 90BA 6F55"
	$"EA9D 7FBD BADE E3BB B70B 96DC DB6C F350"
	$"875C E085 9330 B2E7 75A1 2C22 58DF 9581"
	$"AE6B 5A80 1E60 5FFD D4F6 3F3B ABD5 CA8C"
	$"83E9 B695 0A41 803D CE07 F154 9B5A EC11"
	$"66A6 2B7D 29D7 D432 94AA FAE1 CE7B DE5D"
	$"2012 606D 70D8 7B20 F7C3 5FBA 978F DB03"
	$"B85E 62EA DD63 A2F5 ADCE DBE4 26E3 DDB7"
	$"7344 43A6 ADF6 3966 A4B7 5C6B 6AEA E28E"
	$"B055 DDA9 C327 0DA8 6E66 C464 673F 7108"
	$"A275 FF00 B29A A6A9 93D3 E8D2 A948 3B2F"
	$"4453 7297 2120 3414 4695 1228 A86E 9030"
	$"E74F 75DE 4B2B 5330 F735 C951 E5C1 00B8"
	$"ED9D FE1C 61F2 FB70 7DF7 345F 85DE 5379"
	$"617F D55B 6B7D D61E 31F9 49AA DFB9 6DA1"
	$"B3B6 DD0E A8D3 7599 E511 54B2 95F3 9A7A"
	$"932C 1236 39E0 FAA6 86E4 6B98 FC0B 64F4"
	$"4741 E5AA E91A 5D0C AD64 2EA6 C6B5 C412"
	$"54B4 2121 4092 ED45 F08C D3AA 4B73 D9AA"
	$"9558 A012 485D 9BEC 7E56 FB7D FF00 B8D3"
	$"ED59 E396 98DD 9D5F E24E C06A 0D47 BBBB"
	$"D179 ABDC AD61 66A1 B051 695A 4BE6 A7AE"
	$"8734 95F7 9B9C B354 3C67 2D57 BA18 6639"
	$"8B9D 97DE E71B BFF5 2A6D FD2D 2A62 BA74"
	$"EAAF 2039 CA04 AC25 0D07 FDB8 163D C7F2"
	$"5B53 F9B3 E613 7CA3 BE68 9DE5 DC0D 6DF5"
	$"DBCF B616 6A3B 3DC3 4EDD E2BD B65B E525"
	$"754D 0DD2 09A5 85EC A996 B62A 57C3 3332"
	$"31AF 8C61 9816 F4D6 1717 3B9A 7E10 E6A4"
	$"4303 5A42 8C30 BB64 5FC7 813A 57CD EB56"
	$"EEF9 D5A8 FCC8 AF92 E965 BCEB E669 DF18"
	$"EE3D DB4B 29AA 76FE CB1D 4C54 13C1 4569"
	$"95ED A6EF 3671 24C2 46B5 EE95 CF50 8071"
	$"2196 6D40 E773 7644 7669 F4CB 1A19 DBE1"
	$"6FA4 72D5 E2A7 DE0B C58F 073E E5DF 753D"
	$"DFDC 2B06 ADDC 5D0B E426 B6AA A5DB 8BBE"
	$"CD50 58EE 3DF8 2CDA 8AEC 5D55 2FF5 7BB5"
	$"B1A2 19DB 3B5F 0398 E712 D2AE 0DE5 C406"
	$"5751 652A EF55 21C6 49C4 DBED 13F9 AD3D"
	$"F568 31A1 0102 6BC2 292F EE97 E566 DCF9"
	$"BDE7 8EFA 7945 B536 7BD6 9FD0 3B9F FE97"
	$"FE85 67DC 3828 692F 108B 2E8E B4E9 E9FE"
	$"A21B 6D65 740D CD35 0C8E 6649 DCAC 2D25"
	$"0AB4 059F CC53 7D52 F169 71B2 C496 9D97"
	$"753A 4D69 497C FB22 597D 8FBE E73A 0BED"
	$"ABBF 3B91 79DD FD33 74D4 3B45 BCD6 5A3D"
	$"31A9 AAF4 4C34 D517 3B5D 7DB2 B0D4 D1D6"
	$"361A 9921 1342 D6CF 3B25 8DB2 35DE F0E1"
	$"98B7 215E 9F9F F46A 928A D36F 9C37 A9E9"
	$"C6BD 31CA 508E EDFB 6D2C 63A0 2FFF 0064"
	$"6FB6 EE86 F26B 5EEB ED1D E336 A8AA A1DC"
	$"1B15 BE93 5DEF 8E8C D2FA 662D 5FA9 EEF6"
	$"D747 4D43 4F55 F5D7 8A07 1A1A 3A36 9631"
	$"F2CA F7B9 C5AD 6B18 C8F3 3E47 FAF6 5C54"
	$"5E53 317C 94F8 C467 FC77 3069 005C 246E"
	$"2A83 C2F8 7FBE D1BE 616D AF9D BF72 0FB8"
	$"C792 7B47 60BF 69BD 07AB B496 D4DA 2D76"
	$"DDC8 A6A0 A3BA B65B 451D 75B6 7324 36CA"
	$"DB84 21A5 F092 D2D9 8920 8500 E1C1 1A6E"
	$"65B5 6BD4 70D8 219D 5B26 EA19 7A6C 7104"
	$"826E 877F 7EBE F89E 2178 65E5 E794 FB09"
	$"E41E 82BD D875 C6DE 4FA5 5B61 D6BB 7363"
	$"A2B8 C9A9 AD15 FA2A D9A8 2182 AA67 5453"
	$"4827 A5A9 B8D4 471B 643D B0C7 021C 3DE9"
	$"F667 5BA3 42AB 9AFB C25D C215 95E9 CCC6"
	$"628B 1F4E 60AD E6E9 C523 7899 F7F4 D91D"
	$"BFF3 AFCE 6F2D F7F3 6C75 8476 0F23 A0D2"
	$"7A57 6C74 96D7 D0D8 6E55 96BB 5692 82A2"
	$"8206 D7BE E573 B630 C924 3964 7B98 F907"
	$"70BC 0468 6F10 D94D 758D ACFA 8F05 1C97"
	$"2493 B62C 19CE 99A8 ECBD 3A4C 215A AA4A"
	$"CD7B 3840 BD8C FBE0 F8A7 B67F 741F 36FC"
	$"DBBF EDF6 E255 ED47 921A 7347 692D 07A7"
	$"AD56 AD36 FD43 4951 A7AC 366B 5D4B ABA9"
	$"EA2F D0D3 46C7 C96F 91D1 98AA 6425 A5A5"
	$"C1A4 9013 475F A0DC D3EA 1051 C061 3F38"
	$"457E 9DAC FCAD 3A20 8E66 93B5 2670 94EF"
	$"D908 9B57 DF7B 40ED DFDD 6776 BCCF DBFD"
	$"B7D4 D7DF 1CF7 DF4E 69DD B9D7 DB77 A9D9"
	$"69B6 EA78 A3B1 DB68 E9D9 70A7 8E96 B2BA"
	$"95D3 53CD 049D B8DD 52D6 C91C 8E0E 7C64"
	$"82D6 3FE4 54D9 9C73 C03C A400 98DB B76C"
	$"3BFF 001B 73B2 6DA6 E239 8124 10A9 6ECC"
	$"38C5 ACBF FEE0 3FB4 AE84 D53B 85E4 0EDF"
	$"6D26 AEAF DFAD D2A0 B75B B5A5 7DB3 4A5B"
	$"ADF7 ABCB 2D54 8DA7 A082 BEB6 AAE2 D8BB"
	$"7035 AD88 B9AE 796B 5A11 AF01 A0CC 9D7B"
	$"28D2 5ED6 92E3 BB66 F888 6F4B E79E 031C"
	$"E01A 37ED DDBE 28FB C50F BC4E 96D2 FF00"
	$"752D E3FB 8679 3BA3 2FB3 DB37 3B4F DCB4"
	$"55AF 42ED 2C36 FB95 55A2 972D B28A D94C"
	$"CFEA D596 B864 8E1A 5B68 6CB2 87B5 CF90"
	$"97E4 05C4 0ACE 4BA8 1833 8EA9 5019 8C3E"
	$"A9B2 2D99 DE9D 79C8 372F 4C85 0566 A9BE"
	$"601C 4FC2 195F BC47 9BFB 55F7 29F2 AB6E"
	$"F77F 62B4 B6A6 D3FA 6AC1 A12D 5B53 5767"
	$"DCBA 0B6D 35D2 7B8D 16A3 BDDD 5CF8 61B3"
	$"5C6E 6C74 2597 28C0 7178 7660 E05A 0004"
	$"C4F5 4F50 D075 5150 8468 0879 9062 624B"
	$"A4FA 76BD 3A66 8C9C EE65 9290 8837 618A"
	$"03B2 0EFC 46FB 68EA 2D65 476E D7DB C4F7"
	$"68FD 241D 1D5D 359E 40EF ABAC 88B7 3265"
	$"051A 7FF1 2607 AF1E 56F7 0FDE B69A 8EA1"
	$"9368 2448 B8DC 3E72 8F40 E85D 2747 2C5A"
	$"EA83 99FB 00B7 8701 16FE EBE6 D96C 169A"
	$"FF00 4E68 0B2D 0E9D 8281 A923 E958 CEFB"
	$"8E60 F2E7 39CD 7AA9 3891 FB39 71E5 DCC6"
	$"B956 B665 CE24 B8BB 6EDD 89DD D98D F1B3"
	$"691D 255F 3E85 E118 3679 6FE1 B4CE 2B8F"
	$"713C A9BB 49AD EB6D BFD5 0FF4 E753 4F55"
	$"4F1D 4CD0 E439 8E55 0FCC A4F2 C3AE 0A4A"
	$"F13D 96E9 6A95 F2FE A124 FE43 6F1D 96DC"
	$"91B7 E474 2CB6 598D 6868 E602 FE03 7DAE"
	$"DA61 0BA1 7727 5F6F 7DEF 4FED 1689 EE5D"
	$"357E A79C D253 52C8 8E6C 113F 3096 595D"
	$"1F38 DAC6 95F7 73C1 4749 0CDF 4D33 2BFC"
	$"CA9F A422 0179 3825 AE9C 37A8 EA79 1C95"
	$"1766 6A90 D6B4 4C9D C538 DF2E D8B3 FD7B"
	$"AA74 D780 3B13 06CD 68CA DFEA BB9F A973"
	$"5D35 2DFD CF7B CBEA 2A5C 1F21 6B65 7939"
	$"4722 0A28 5EBC 4367 3D5C D661 D49B 274B"
	$"9DC2 E005 C01B A625 7221 59C7 9DF4 2D2E"
	$"A759 EABF D4B3 20B7 294E 4C6E DED9 2952"
	$"BE28 2E8A 68D9 6DBD BFF9 8FBE 972B 24B3"
	$"CB51 A2B4 CD41 BAEE 25EE 4324 ADAD 983B"
	$"BA21 EEB1 C55A 84E1 98A6 1EA4 71A3 E6DB"
	$"FD1F 4D0F 681E AD40 94C6 CC39 88FA 4E71"
	$"A4F5 1EB9 4D8F 14C4 A9B4 618A 6124 F098"
	$"BC22 4742 B61D 2305 9A82 D162 B4D3 476E"
	$"B5D0 44DA 0141 411C 4C6B 5B0B 48CC 117D"
	$"A48E 7EBD 4F5C 5ABD 1E77 00F2 A0AA 99AA"
	$"DF8E F95D D823 1FCF EB42 AB49 A922 4F70"
	$"C020 082E E30E 0D27 F4EA 18DA 269F BC5C"
	$"1993 3BDA 73B4 F2F6 BCE0 315F C31E 4A65"
	$"D95A 9534 6B89 1CB7 5BB3 6A5F C22B AE35"
	$"AA95 0BE3 E092 C131 55EE 072D C69D E251"
	$"4F39 25C1 D236 3697 E50E E639 8E83 9724"
	$"09F2 E123 362A 5371 55F0 C2CA 9B76 41F4"
	$"2815 01E1 7E5B F8F8 A908 9384 ED66 A3A4"
	$"A37B 5C23 0EA9 9B34 4E7B 7071 7BBD A410"
	$"CE8A 02A8 F88C 54F1 17FB BA6C 1EA5 3692"
	$"E6DF 3BAC 42C4 C51D 1054 0038 A370 07EB"
	$"6C09 4410 4753 AA20 14AC 91F2 8739 EECE"
	$"DA78 D88E C4B8 93FC AB8F F770 0BF3 759C"
	$"CFC8 8BEE 37FC FC84 12CD 2DE0 90C2 2FDB"
	$"6E27 B610 7A96 EF47 73A5 7C52 B638 DA41"
	$"8E5A 9849 0FC5 51AA E05C 3DA4 13D3 AA27"
	$"0CE6 F304 B6E0 89B3 B37C C996 26E8 B0E4"
	$"F20F CAD4 9297 5F6B 6E13 88A1 AD36 FF00"
	$"49EA 3927 B7BA 8A27 0944 8259 2666 6255"
	$"AD78 CB90 9612 3050 87E5 D386 F29A A3E8"
	$"9563 CF36 036D F7A8 5F23 3C44 E342 C9EA"
	$"EE00 7382 40C3 EA8B B2ED F15D 5BEF E315"
	$"1CF4 7555 3430 34BB 317C 2C18 1218 E04E"
	$"5635 0838 E388 C7F2 FC76 CF6F BDCF ACDA"
	$"A1A4 9271 E377 6F0D 97C4 66BD D2D9 1D4B"
	$"2EE2 5A03 80C0 20C4 9549 0BBF 5222 5F34"
	$"8A91 D67B 7D71 D2D5 B350 CF09 EDC8 E7B6"
	$"3781 860E 2DFE 6FED 1C7B 3340 EA9A 19BA"
	$"4D70 77E5 B23C 9DD4 BD1D 5B21 59ED 2D46"
	$"89F8 2DD8 203B 7B61 ADAB A584 E691 E8C0"
	$"CCED 3292 4A2E 1EA3 E5FD DC5D 72F5 5C11"
	$"3746 7F5E 8954 22D6 9FC2 7091 FA48 7EA3"
	$"2A9C D9B2 76D3 0FCC 9F9B D3F0 FC38 98F5"
	$"9DCB 107E 88F5 1796 48BF 4FA2 C7FF D4E4"
	$"9444 8AE6 BD5E A723 8A90 D199 5000 E1FE"
	$"DF04 02BA 6B04 416B AD74 5918 046E 03DC"
	$"4FAA 6038 6C12 B28E CA33 1D3A 8F4F F7F0"
	$"4355 0013 1B3E BE36 58E4 7BEE 1FCA 8D3C"
	$"DB8A 1418 F02B EA2E E061 D0D7 0C23 C0E3"
	$"8BBD 39FC 7E6B F1E1 3CC7 6C7C 0E30 3695"
	$"AD6C 81C7 1707 0063 2DC5 1415 1812 A3D0"
	$"63C3 1516 E4B6 C877 D3BE D6B6 E51F F4ED"
	$"2637 81EF 0D2D 7F6C 3428 2D6B 4F2C A3F9"
	$"B045 5E1A 0A65 6F8D B087 3D3B 7979 4EE4"
	$"8DEC 0F1D C739 8885 CEE4 4052 A549 51D5"
	$"30C3 A1E9 C204 9367 DADC 6579 8708 120B"
	$"6B7C 6252 EDAF 86BE 436F 178F DBD1 E50E"
	$"83D0 2DBF EC97 8F92 D2D2 6EA6 A965 CED5"
	$"0545 B5F5 BDBC 8450 D4D4 32AA 7196 40E7"
	$"1822 706B 5494 43C7 6951 2E69 70B8 5F6B"
	$"7608 47AE C638 0266 6DF4 FA2C 39BA BBED"
	$"DDE5 66DF 68DD A3D7 1AFB 43DB 348E 9ADF"
	$"5D11 78F2 1F69 EEBA 9354 E97A 475D 34B5"
	$"8ED5 457B AA99 ACA8 B831 EC9D D4D5 D03E"
	$"1A57 86CD 2978 6C71 B9C1 385D 3A15 1A01"
	$"2248 B6B7 1585 3335 4948 9A82 9776 5965"
	$"B764 19E8 ADC4 F36F ED7B BBD6 6D41 B73A"
	$"F2E3 B09B 97AB B4CD 835D C0ED 3753 69BA"
	$"D2DC 74D6 A4B7 D3DF EDA2 B295 FF00 5F47"
	$"511C 90C9 1CBD 99E3 7163 BF33 4151 C77D"
	$"7A94 9CBF C496 BBE3 F582 8328 D769 0661"
	$"7C6D 8F8E 265E EB5F BC7F DD6F CD8A 7B2F"
	$"8DB7 4F24 E1B4 50EE 8D54 1A3E A283 4C53"
	$"694D 090D C1F5 AF14 E22A DBD4 7150 BA9E"
	$"9DD9 8897 354C 7096 93DC 05BC 9B7E 7F33"
	$"54F2 2DFC 2DB6 1819 0CBD 2FC8 36EE 3F58"
	$"AF8F 1FFC 4EDE CF26 F75E EDB2 7B3D A7E8"
	$"7506 BFB2 D15D F515 CE9A E57C B25A A820"
	$"A0B1 30CB 5D50 FB85 D6AE 9A90 4513 1A5C"
	$"5FDD 4231 0A31 E06C BE51 CE25 A2F8 2AB6"
	$"65B4 DA1C 6E30 6BE4 6F87 3E42 F891 55A2"
	$"99BD DA32 92CF 6BDC 6A5A 8BEE 81D5 3A62"
	$"F960 D4B6 4BD5 2515 4369 6A5D 4972 D375"
	$"95D4 D23A 094B 5933 0499 9848 5033 3496"
	$"7334 AA52 4E6C 7B7C 60BC 8E61 9517 94FC"
	$"08EF 88DC F644 F746 EED8 8D8E 18B5 98A6"
	$"2473 2579 7CB8 61A4 B801 85AD F289 36D2"
	$"18DF 0363 A423 B4C7 2B84 C733 E488 7732"
	$"8450 9971 F5F8 7ECE 10D3 CBC7 BADF 5DF0"
	$"FB5A A570 89CF E17F 9F3E 4E78 0D71 D797"
	$"BF19 B59D 3E91 B8EE 4535 05AB 57C9 79B2"
	$"DAEE FF00 5105 ADF3 CD4E 18DB A413 08C8"
	$"7543 F168 0BC8 9E47 8772 DA95 5A2B C864"
	$"6D6E F863 3BA4 D1CC 001F 3037 DAD3 813B"
	$"9B51 E53F DC0F 74AF BE4F 6B09 EDFA FB73"
	$"B787 5569 3D95 AB86 D559 A72D 371B 96A0"
	$"AAB3 4568 B445 059E 19A9 A410 982D EC8D"
	$"D50D 8442 D7A7 71E1 CE42 D668 54AE EE72"
	$"5492 9DB7 0958 43B4 4D1C B53F 4C5C D04E"
	$"372C FCF8 F818 8A9A 9F47 EA0D 0DAB F53E"
	$"8AD4 F42E B3EA 8D1B 5F5B A575 1596 7EDB"
	$"DD4B 70A0 A875 1D44 2E7C 2F7B 1C63 9222"
	$"D395 C461 CCF3 2002 5A0B 4E10 6D3A 82A3"
	$"424D 6DF1 C609 98C6 02F6 96BB 3928 D215"
	$"0E25 FF00 CBFE DEBC F160 D46A DF0E 8A72"
	$"B97E D632 F09C 6E8E 9F3C 4CCC 0B15 5C42"
	$"2732 7F15 C79A AF0A A8F0 B047 EDD6 D6F8"
	$"F940 C8D8 C8CB 465F 6B71 1970 C40C 3921"
	$"E607 019A A494 175A DDDB 64FB F2F2 B6EF"
	$"1FAA DD0A 5B36 9EB9 DD65 9238 E9DF 33A4"
	$"CAD6 B50E 674A E386 001E 64E2 A9F3 1C44"
	$"EABA AD2A 7489 74A6 ABB8 795A 5125 92D3"
	$"ABD4 A8CA 7482 B8CA 5636 9474 3DE1 6F87"
	$"9A07 656C 36ED D2DC 8B6C 57AD 6F59 0B2B"
	$"6D94 7505 92C5 43DC 8F3B 1EDC C102 B5CA"
	$"547A E180 E3C4 9EE7 7BB1 5F52 AE69 3891"
	$"9705 000A AE3E 7606 3D25 A274 AD3C 852A"
	$"6CA0 3F9A 5399 D7A2 E0D9 F1EF 851F 915E"
	$"576A 2D1F 739A C313 C7D3 E532 DB25 A763"
	$"9D1B DA0B D1A0 B084 F812 E538 9F88 A0E8"
	$"FA2D 5D45 C4AA 3449 3605 0419 ACF6 A46E"
	$"5D31 D1B9 6A14 9B52 A355 E6F1 2BED DDB2"
	$"2B5F 5F79 2172 D42F 96AC 54F7 BBE1 ADCC"
	$"2418 9F73 14B6 32FC 13D0 F3F8 0E34 3D27"
	$"A25A C280 2BAD 8C5A F339 BA79 6623 1077"
	$"79DC 3E71 08F5 06AC D43A 8B71 34AD BAC7"
	$"4535 FF00 50EA 89DB 6AB6 DAA9 9A64 9EA2"
	$"A1EF CA1A D6B7 3FE6 E839 7E1C B6CD 23A7"
	$"1947 4AAF 52A2 06B4 05FF 0028 B5FC 630E"
	$"EB2E B37E 5F51 CB06 7EAA 97EC 037A 93BC"
	$"DD1D 4278 CBB3 965F 0676 62A3 56DD ED8E"
	$"D55E 50EE 251C 42EB 1523 7EAE 6B54 720C"
	$"E208 D026 08E1 9C73 5C70 087C C5D5 5D5B"
	$"4AB1 0DA7 FAAE 6F37 F085 FD7B 55C3 04D9"
	$"8931 4FD5 4E6B AAB5 3145 EFF4 F214 8CCA"
	$"A071 02EB E692 BF1D 911C 2B7C 5ADC EDF5"
	$"D497 0D67 BC37 F3A3 74D5 4174 95D4 14D2"
	$"B64B ACF1 BD41 ED8C A5D0 028B C914 F2C3"
	$"80B4 DD72 8E4A 8934 8733 97F5 3B13 C2F7"
	$"6C5C 251B 155E AAC8 E4A8 0CBE 55A7 9834"
	$"2205 0BFF 0051 9192 1E11 2BF6 CB4D 6D9E"
	$"C769 F1A3 B697 4DB3 4E58 5A9F D55B 8CB5"
	$"7573 B482 E7C8 E505 C79F EF24 F5E2 2F58"
	$"D6B3 199A 86B6 65C5 E00F 0225 B12E 4450"
	$"7C62 8B47 4AA8 FA73 912A 70C7 66CD AA65"
	$"86E8 59D6 EE05 A2D9 0992 BB52 B609 5E5A"
	$"EED4 64B8 98C2 35AD 21C1 1414 4F6A 9E58"
	$"F117 4F55 63DB F902 82E1 7E1F 7949 30C6"
	$"0EA5 D3AF 73F9 7910 9DDE 177D 904A 1A6B"
	$"C790 DA62 DD51 FF00 D5FD 6CD0 B4E4 CE0B"
	$"8B46 2090 7939 7961 CF96 1D52 32F9 9249"
	$"60F9 5F2E EDE4 1184 4F65 7A32 BBEF 0D6E"
	$"0BE5 75B6 4201 FBEF 5B7F 9A1A 5A49 9CE6"
	$"1FF2 C40E 7230 6383 82A8 500F E1E8 9C19"
	$"429D 7A64 975E 6D62 1226 9BD2 7468 83CE"
	$"14F1 4DB3 D86F D986 2A90 B4B1 6B07 8A6E"
	$"FCF5 A1F3 B918 E82A CB4B 7334 F3F7 FCC7"
	$"2452 7F0E 239E 395C 64A2 D74B CFE2 488B"
	$"CF69 41EF FC5B 2B7C 76FC 60FA AF72 74FB"
	$"6374 B348 2210 3847 349C 8652 5010 5483"
	$"CB90 C07A F1D7 07BC 4C70 B2F9 CFC6 22D9"
	$"D3D5 B9BF 1B5B 7776 C697 54EE AE91 89CE"
	$"82DD 5AC0 AFFD 4707 3720 19BD D8B4 AB40"
	$"0DE4 510A A745 21DA 757A 8314 B618 FC77"
	$"4E2C 9A7E 8F5C 09CF 0B85 B679 4361 77DC"
	$"5B55 2C31 55C5 70FE A3DB 697B 7E8D DEE5"
	$"CCD7 AAA0 29CC AFA8 1EAB C154 34DA ABCA"
	$"92DF DDF2 DE77 0944 E53C A38F E0E4 5240"
	$"F85D D82F F943 03B8 9BC5 1D40 31D6 4B96"
	$"E0D8 E38E 388B 8B40 EEA0 01C0 238F A22E"
	$"23A0 E62C FA37 4D38 B95A 141F 86CF 383D"
	$"5ACA 7370 0DEF E3B8 6C51 C526 B15E 1BB3"
	$"76B6 DC29 AB7B C621 5D13 D659 A305 A7DC"
	$"E253 3284 3CF9 3579 A262 0FA1 7A2E 857A"
	$"45B7 F2E1 6B79 464D EE00 CA55 6B9E 5398"
	$"ECDF F132 F028 4C40 5D4F 3410 BCF6 486E"
	$"7E4D 2A07 E605 02B8 E039 02AB D70C 78F5"
	$"0693 4DCE 6826 D6B6 11E3 CEA5 7D36 3C81"
	$"6B77 423F EB69 72F3 1FB0 FF00 8551 32A2"
	$"2FEF C538 9BF4 1EB6 B7D2 2A7E B356 FB5B"
	$"C251 FFD5 E4AC 9039 9418 7157 3165 0163"
	$"3665 0E69 782E 68C5 CD18 2F0B 6340 9DF1"
	$"F08C 8B9A E793 9100 E51B 7F00 8BCF 8EBD"
	$"CD59 8BA1 6D9C 6F6B 62CA E99A 8A09 6089"
	$"C428 56AB 4A9C 0A1C 0F09 2F66 CB5A DB5C"
	$"A608 2A2D DF1E B004 FC88 731E 63FB FF00"
	$"6703 D428 60DA 2D04 5D8D BE50 3E08 8979"
	$"72E4 7380 0E2E EA30 C316 F5F6 FAF0 2BAA"
	$"5ADD B1F3 A9B5 552D B7CF BB08 3289 85EE"
	$"695E CFD3 073A 5994 3B36 0809 5207 AAFE"
	$"3F13 C705 71C1 6D6F 808E F287 3494 95AD"
	$"6020 C608 1C17 AB53 F4F3 0C72 955C 5014"
	$"E582 70A7 8E6B E7F7 B63B E1BF 4CAC AD6D"
	$"B8F1 8E82 3ED7 7E47 78F3 B75E 20EE 7F8E"
	$"DBD7 BAB6 ED05 6BF2 2F73 86DF 6E05 25D4"
	$"48F9 6934 6EA5 D9FD 5BA4 A5BC 9631 A7F4"
	$"6DF7 2AFA 3989 550E 684F 5076 52B5 36B0"
	$"B5C4 053E 09F3 E301 6732 B50B C384 C81E"
	$"2BF1 89C5 BC1E 77F8 95B8 B556 765B B75E"
	$"CF05 8B48 6DAF 991B 21A1 ED55 C643 2535"
	$"B6E3 6DB7 E96D 0101 698B DB25 C2DF 6C84"
	$"D381 CBE1 C3D5 3374 DC50 1C1C 219A 793A"
	$"8D6D D356 FD61 B1D7 3E7A ED06 E2D8 37A3"
	$"6075 CEFD D96E 1E37 C9E3 06D3 699D 07A6"
	$"6A6D 94D7 0A26 6E9E 9F66 9382 B658 6034"
	$"C1F5 174A 38A3 AC62 B9CA 591F 6C1C AD68"
	$"0DD4 CDB2 609F C794 77CB EB0E D3C8 BE4E"
	$"027C C7B8 AF84 4C7D D7F3 37C3 CAFD 53E3"
	$"AC77 EF2A 7486 EC41 B35E 4C6D C6E5 E8DD"
	$"5725 CDB7 1A9B 3ED6 4568 AFA3 AA9B B549"
	$"A674 E505 AE9C BC40 EA8B 5504 72B2 1721"
	$"7B9C E0A1 DAD9 DA40 B55C 0A38 7743 74B2"
	$"5579 4A34 8569 EFEF F18A 3FFB 766F B6CB"
	$"ECD7 9A3E 4C6E 76E7 DCED 557B 7D7F D05B"
	$"CB64 B35A F525 4565 2D06 A1AA BCDB 2B19"
	$"456A 2FA0 31CE D170 CC21 0E8D CD70 0EC1"
	$"C0E2 2132 55D8 DACE 71B9 0DBB 627B 3997"
	$"7BA8 35A3 68EC 8949 E20F DC0B 466E 76F4"
	$"6DFE 9BBA 0D1B E07E D678 D7B6 DB95 6FF1"
	$"7B4D E8DA 8AD8 28FF 00D6 5AC6 B6DD 5F58"
	$"D9F5 2EAE A2D5 9556 FA8A CFA7 7385 7B21"
	$"3246 D8C4 5116 3A5C DC11 97CE 8738 028D"
	$"0D05 38F1 2BE5 08CD 699E 9B09 9BC9 2178"
	$"0DC1 3BA2 5379 31E7 EECD 692D 0BE6 36E0"
	$"F8DD BD9A 4EBB 7EF7 7341 F8D1 6BB5 EB2D"
	$"3D49 1DD6 B6E5 A8AD 506A AB4E B1AA 824D"
	$"436C 8663 591D 3564 71CF 5151 4F15 418E"
	$"56B9 1AE2 1159 AD49 8D6B CB1C 3988 6FC5"
	$"6399 3D31 E5D4 C546 9E50 5FDD 24C6 1D7F"
	$"2137 836F 7416 D9DE 3446 FD79 23A4 65D8"
	$"7D6D E336 D4E8 DD27 E294 1649 6E3A 9E9F"
	$"726E 3A6E C553 6FD4 AEA2 36E6 4530 A385"
	$"AFA9 7561 AB2B 1814 E998 0015 98AE D6B5"
	$"1CE1 CA58 25BD 04ED C211 95A0 E739 58C3"
	$"CC1E EFC9 648A 657F 8438 7BA7 E60F 8835"
	$"FAA3 C7B8 3507 94BA 4B74 A3DA 1F24 B6F3"
	$"7274 66A8 9EE4 CB85 4DA3 6CA0 B457 53D5"
	$"4BDA A5D3 5A7A 86D9 4F99 B0BA A2D7 411C"
	$"8C85 C85E E73B 10AA D9EA 1CCD 05E0 A381"
	$"ECEE 09C0 4374 7235 F95C 8C21 5841 E3DE"
	$"5789 8807 B4FF 0070 4B3D DE8D 9B85 B93B"
	$"D56C B26E 1D93 CB0D ABD7 56E7 5828 A9ED"
	$"2EA1 DA5D 3F6C BBD8 EA5D 494D 67A6 898D"
	$"B7D3 D0D4 B29C B5AD 25CC 7004 3892 780A"
	$"96A2 0FE4 4A1E 71DC 2512 55F4 C20F 2B5B"
	$"2E42 3FF5 48F7 AC58 76CB F95F E34E 8FD7"
	$"7AE2 A773 BCDC D19A EB47 EE86 E86E A5CF"
	$"7BF4 C5CE F196 D774 B1DF 2DCD A7D3 0D75"
	$"3D36 989E 6BFC 5F48 E8E3 7C95 D718 A9A8"
	$"8C7D B631 CF6F B8BA 59CA 4D71 E6A8 0824"
	$"ACFB B09F 7802 23EB 69D5 9CD0 1B4C 821A"
	$"D497 7E32 EC13 8E35 C668 03E1 731A 3292"
	$"D3DB ED90 A157 2B9A B861 821E 280E A4A6"
	$"450D ADF5 8D32 9BD2 6E13 FBFD 6044 5119"
	$"9323 95C7 9B11 C5DF B1A0 E1C3 1511 B7DA"
	$"DF2C 61EF 5A68 05BB 6173 A574 3D7D F6AE"
	$"2477 6E36 B807 390B 8072 6601 475E 2133"
	$"FAE3 29B4 9B5A DB62 7723 A1BE BA0C 0F97"
	$"CAFF 0094 5A07 899B 0D1D 66BE D395 15F4"
	$"A3E9 2D89 7B97 F4C3 9A1C 0E76 873E 4C31"
	$"1C8A FC7A 21F3 97BA 9D6A 9937 5305 0BE4"
	$"2EB0 DF71 8DD7 DBEE 9DA7 97AF CE42 8036"
	$"FC31 BEE4 9DC1 2645 9E6F 06E1 DB6C 76A9"
	$"04F5 863A 8734 B60A 6A64 6890 0728 0D0A"
	$"14A3 4855 F4F8 F1E5 2C95 2AB5 9C29 06CD"
	$"A6F3 B0E3 885F 1EF4 8DBF A634 27BE BF39"
	$"6FE3 85CB 88C2 DE11 4E3E 44EA 496E 96B9"
	$"21AB 95D5 950F 32BA 2965 3292 5E5C D2D0"
	$"D08E 398E 75E9 FB79 6F7D 0D92 3EB0 4DD6"
	$"5D81 22ED D4D9 A143 2A48 5503 0B6C 1F58"
	$"CF60 BC0C DD5D E7B6 5AB5 86E0 5E0E D768"
	$"7AE1 DCA4 96B5 AC35 F590 B804 7471 48FC"
	$"B91C 0E04 F4C3 051C 58BA ABDD 3CAE 9353"
	$"D2A2 D156 A782 F9AE C495 E974 636F A75E"
	$"B389 738B 85D2 ED3D A079 859C E2D8 F613"
	$"C47F 183C 61D5 347B 9761 336A 8D6D 6E88"
	$"4549 7AD5 3DB7 3291 F235 1CF8 A319 F2BF"
	$"3950 4623 D4F2 E332 D6BD C6D4 73B4 DD46"
	$"B7E1 4DD3 E51C 150A 6182 2031 5DAD D387"
	$"3054 37F2 DA86 E599 9EE9 DE98 4494 D4DB"
	$"FDA7 1954 F8FE A209 EB98 B236 ED2B 18E9"
	$"1ED7 3034 3543 0141 947C 30C4 1089 9B66"
	$"DDFC D0F6 3019 ECF8 4CDD 3BF7 5D13 5A57"
	$"4066 3904 D019 DFF3 ED4F 8298 89DB A1E4"
	$"E5AD 934C C8EF 1F53 2640 259A 494C AE2D"
	$"6B48 18C8 57F3 0C02 FA27 1339 7D2B 3198"
	$"7170 6A73 5F24 1849 308D 1B44 E94A 541B"
	$"F9A0 2DBB 8F1C 4E1C 5651 0BF7 07CC 6AF3"
	$"470D B6C2 5B14 7FF9 F5B1 C816 47B4 FF00"
	$"8D79 E0A3 A260 980E 2F7A 47B7 955C 4F3A"
	$"8070 ECB5 8C1C E765 6954 F51C 42CE D85F"
	$"E334 3844 1CD4 5E45 DDA7 AC9E AABB 504D"
	$"5153 1174 BDB7 4A4C 49D4 6551 CD70 5E58"
	$"F53C 6B79 2F6C F998 0358 27BA C915 6D4B"
	$"DCDC B507 00D4 EFE1 7260 8982 4A73 4805"
	$"61DE 8BBD EE5A ED41 5321 FA38 0F72 2865"
	$"9333 BB6E 2320 5E79 C118 A752 7F05 677A"
	$"1A9D 2229 808B E7B7 825D 00E9 3EE2 B732"
	$"0BCB A4DC 76DD 2C77 EC9D D844 B7D2 BB97"
	$"53A6 AD34 F577 6593 53DF 72D5 4145 3BE5"
	$"6BE9 A984 6D2C C100 2E44 7920 13EA 49E3"
	$"28CE E83E BD52 D60F C1B7 A625 67D9 8794"
	$"5FA9 6787 A20B 9DCA D70F 3F0E F17E 0632"
	$"BB79 3104 5254 3E9E E862 A0A4 4820 648E"
	$"7B47 7585 5A40 639E AD0E 6745 F985 4E08"
	$"C9FB 7759 E04A 67CA 23B3 3D41 93A6 1C5D"
	$"7F66 DC55 0AED BAFB 8A18 62EF 7E4C CF59"
	$"3B6B 8D58 8A99 A4B6 0609 246B 55C3 DC72"
	$"AB81 5E7F EFC3 8B9E 43DB 03CA 893E 1DD3"
	$"889A FD7B 94A5 2331 BFE4 7E48 38AC 3717"
	$"BF24 BFAA A359 5398 307F 339E 585C D21A"
	$"A034 B50F AA73 FDA7 8B16 47DB 1736 41AA"
	$"6D6C 22B3 9BF7 472C D739 AD72 0DC9 C652"
	$"C0AE 2933 B843 31A9 77FA EF4D 1321 A2BA"
	$"3E92 4797 BA59 A373 F0C4 6394 222A 283F"
	$"B949 2748 D1FD AEA2 E9BD 808B 5AC2 33AD"
	$"73DD DACC E62C 791E 5D93 F3EC C11A FAFD"
	$"F2BD D593 1D4D 5FD4 3184 F60B 9D28 CAA7"
	$"13ED 704F 9018 FCF9 5C32 BEDB E599 30D4"
	$"EEF9 4679 9EF7 5B31 509E 67ED FA77 760D"
	$"D08E BA6E 45C2 B5A1 B34D DF6B C057 971C"
	$"D884 20E5 429C C73E 2672 5D1C CA4E 5012"
	$"2BDA 8F5E 9AE1 1C54 435F 79BA D454 CAF9"
	$"5D27 70B5 5CDE DAA8 0390 6AA1 E9C5 E725"
	$"936B 0246 5DAD EAAF AC53 084B 7D4B FB9D"
	$"B419 B364 443C B37A AFA7 FC38 95F4 822C"
	$"53FD 77F3 2204 B7C7 747F FFD6 E4C9 AD8D"
	$"D13D 5E44 9CDA D428 5015 EBC5 6D14 F65B"
	$"1B24 59C0 296B 5B0C 7003 9AF3 6E25 A7E1"
	$"F8F0 B25A 2FB7 8EC8 E06C 6C0F 6BE4 EE8F"
	$"C986 5CC8 4390 0407 04C5 3862 A0E6 30FB"
	$"04E7 6F95 B640 F861 969C FD46 5397 296B"
	$"9B80 241C 1087 1E87 E69D 7D38 19C5 A45F"
	$"3B5B C61E 0D04 CAD6 C31D F034 90F9 7247"
	$"1A33 DCDC B1B3 2F42 D4E8 9CC7 C97F 0E1A"
	$"67E4 676C 61E6 B11B 6B7D BB60 4D23 E98B"
	$"BE9E 4721 7F23 995B CCA3 5428 3CCF 3FE3"
	$"870A A8D0 44CD B6E1 827C B6A8 B149 385A"
	$"7E58 785E 62D8 B31E CB95 D0C4 0640 D27D"
	$"EDC1 0FB7 0002 F4FE 0388 F141 DCD7 5AD6"
	$"5831 ED92 5ADE 7258 103B B282 0BC4 2D04"
	$"105A 5732 941C CF52 BFBB E5C3 A683 CDBE"
	$"F1F5 2E61 789D ADBB 75F1 3536 E7C4 576E"
	$"5F86 9BDF E545 B75C 766F DB2D 7FB7 59AA"
	$"36B4 5007 9B85 8673 470D 65C6 2AC6 D403"
	$"DCA5 9AE3 4C5D 0084 AC46 490B 808C F0A6"
	$"E54B 9A5C 4DC6 EF3F AF7C 34FC C065 50C4"
	$"BC5F 0E86 E2FD B9F7 0349 E84F 19AF 5A3B"
	$"5241 AC35 CEF5 E93B 96ED 6E56 9BBE 4969"
	$"D356 9D09 450B 2D55 F486 E17B BEDC 29E8"
	$"DB1C D437 DA17 C92D 43A0 6C72 CAD8 3DCF"
	$"2153 5328 F6F2 A199 99DD 763D A3CA 3E66"
	$"6C12 E064 04B6 ADF7 771F 3868 6C5E 0A79"
	$"4D7F D51A 9748 51ED 6087 5169 9AFB 7697"
	$"9A86 ED7B D396 E8EE 774B D50B 6E56 EA2B"
	$"3CB7 0AF8 62BB 54D7 533D 93D2 C36E 74F2"
	$"4D1B D8F8 DAE6 3DA4 8EEC B562 7F4F 8F85"
	$"FF00 3836 9D7A 410B 8CAD 33B0 7724 1455"
	$"F897 BF36 6DB3 FF00 AC17 1D06 DA7D 1749"
	$"6C8F 5B57 D34B 78B0 1BEC 163A 9BA3 6CB1"
	$"5CE5 B0FD 61BB 476F 92A9 ED89 956F A510"
	$"17B8 00FC 41E1 9750 7B5B CC9F 8FD6 F4BE"
	$"17EB 532E 2D6E 32C7 62DF F5EF 85B6 B6F0"
	$"33CA CDBB B936 C1A9 B68A 68F5 3C9A 969F"
	$"68AB B4A6 9CBA 592F 773B 6EA5 AB32 BA9A"
	$"DD71 A2B2 D756 4D45 3D53 69A5 9295 B54C"
	$"8C4F 1B5D 2445 EC0B C3B5 32EF 6488 DDDB"
	$"B257 5B08 7286 769B 8C9D 2455 371D F777"
	$"D95D 7D96 FB7D 6E6E B0DC C3A3 B716 9EAE"
	$"DB63 6693 D45B B568 AAD8 F758 B70E E1AA"
	$"68F4 D06C 3576 DD3A 74DD C9F4 75F7 06BD"
	$"ED6C F0FD 5030 461F 2C8D 3972 3B8D CA3D"
	$"CF45 9213 2993 C269 E3B5 614F D469 B19C"
	$"E2F5 C648 BB77 7DB7 C27B 5E78 B345 71D7"
	$"3A33 4A78 DF7D BAEB F975 2596 E1AC 7576"
	$"94DD BA0B 7E8B BFE8 5759 AAE6 8AB6 2D48"
	$"EADA F7DB E969 C451 32A1 95AE AA64 6639"
	$"1B9D B1B8 16F0 3D4C A8E6 01A5 576C 938E"
	$"1045 0CE7 E24D 4089 B260 F0F9 43CB 6DF0"
	$"D37E F76E C7BC DAC3 7DF5 DD55 36AE D9AA"
	$"2D05 A0F4 2D1E B0D5 7A6E BD97 48B5 2065"
	$"158F B174 BE6A 0861 1658 68A2 5A79 E95F"
	$"3445 995B 10C8 D716 2CE5 6A3D AE2E 3309"
	$"8F74 D6ED F087 6758 C2D0 C1FA 94DC 70BE"
	$"405F B567 B61B 1DD3 F007 C8CD B6DD ED6D"
	$"B4D4 1A44 6BEA 8D27 59AE A968 7526 8BAF"
	$"B5D6 DBEE 545B 7513 AAEF 354C 7535 4CA2"
	$"3753 53BE 3925 A791 C266 1788 CB3B 9EDE"
	$"23AB E42B 36A1 6A2D F3E1 7EDB 5F39 448E"
	$"5F3F 41D4 8395 152F 5FE2 BB0D BB2F DE21"
	$"27A2 BC23 F263 5D32 92A2 C5B7 11B1 9788"
	$"EC15 5A70 6A2B EE9C B2BE E926 A7B7 8BB5"
	$"A292 DCDB C57D 2BAB 6BAA E972 CD15 1D3F"
	$"7277 31CD 776D 1ED5 E332 955E 04BB C8C6"
	$"EE2B B318 71D9 DA0C 3337 6E32 4335 4D97"
	$"2C87 1BCE CB27 873E 45DF 74D6 DD6B 0B7E"
	$"DD3D B60D D97D 753E 81A9 AEB9 5A29 A7AE"
	$"8AD5 5174 A5B8 D4FD 3D55 5C53 4549 42FB"
	$"355F D654 CAC6 C34E D603 2BD8 1F19 708E"
	$"A350 8694 506E BB05 DF82 1537 0C52 0B19"
	$"BA4A E02F 6DFB 370E 2542 0BC9 BA08 B5AF"
	$"8E3B 8FB5 F7FA 0B06 BFB3 C743 5375 A28B"
	$"5258 EB2C F5D6 EBBD B6E5 6E9E 6929 D957"
	$"4370 B2D4 5552 55C0 E921 9182 4826 7373"
	$"B1CD 5CCD 7010 99FC F9CB 9474 967B 426D"
	$"0661 37D8 4EE9 B94F DD31 5BB5 37AE C20A"
	$"4EED FBA1 45A3 366A B6B2 A207 3E95 CE64"
	$"A41C 585A 8416 B8A1 761E E014 2A22 6239"
	$"7147 D5FA C98C 50B7 45CF 4EE9 2250 A4FE"
	$"5E3D FB64 6F89 8DA0 B69A 92D7 1C2F A8A6"
	$"696C 8D00 E607 3123 0011 0735 5186 1FBB"
	$"8CAB 57EA 7AB5 2A6E 1B53 6468 B91D 2E8D"
	$"3A52 91B5 AC91 6A7B 0DA2 ED5A 2B48 CF78"
	$"AE87 E8DF 7B63 A49A 7200 30C2 E68C 039A"
	$"8463 8F25 E3CE BD53 AA3B 3955 EE33 0C90"
	$"FA8B 0DFB 2F99 3A4E A2D6 D368 5E6D C8BB"
	$"EED9 6110 FB73 B6C7 71B5 F6AC AAA2 DB7A"
	$"6A8B B5B6 E129 33DC 2A64 7430 DBA3 2328"
	$"7992 42D6 E21A BEC3 CFD0 737F A5F5 3CBF"
	$"A6B5 6F0A 836F CBB7 CE37 7FEA D4F2 F976"
	$"9AA7 92DB A7C7 EF0E 1E87 F17F 43ED E524"
	$"778D 7B51 4FB8 3AE2 9C32 ADF3 D534 1A0A"
	$"39A3 3DCC 94F1 3F1C D9F9 2970 C3A7 2E00"
	$"D53A B2BE 69CE A54F F94C 1B2F 375E 778E"
	$"C9DF 28A9 D7D6 5D9A 70E4 6A34 1D98 6DF2"
	$"F81D 86DA F7C8 0B7E 99A5 B8D6 CF39 7D2C"
	$"0C34 D494 948E 6971 7B43 1B95 A1B8 37DD"
	$"F04C 3F10 2E9D D3AF AEF6 862A 9DB7 0BE7"
	$"F6DA 9B62 4697 4E82 950C F722 6D4D BD98"
	$"4CAD D102 F547 9517 FEC7 F509 2A84 51C9"
	$"9968 DF28 EE65 CCD7 B1C8 79E7 0715 C39A"
	$"E09C 69BA 3FB7 ADA9 511A 4932 9DBC 3EF1"
	$"275F 52C9 5047 3B94 2225 A575 A711 7355"
	$"F95F 7E7D 454B E0BA 3848 E6B8 BCC9 FA92"
	$"625E 496A 9242 7CD0 71AB E8FE D0B1 C073"
	$"354F 76C8 CDF5 EF75 1996 25B4 90A6 C1D9"
	$"69C3 0772 DECD 4378 7551 EFC8 F9A4 0E04"
	$"F70A 0047 2702 531E B8F3 278D 0A87 B6B9"
	$"7A41 B201 2D85 84A3 30CE FBA5 9BAE 0912"
	$"5DFF 0018 6E6E BAC6 FF00 5124 6C9E 57C5"
	$"4D26 673D B2B9 4818 AA80 8ABF 0FE2 38B2"
	$"69DD 3D45 8D46 8052 4A96 F998 A767 3A8F"
	$"3AE2 6649 384F 74FB D7CC 5C11 0D5D 3DC2"
	$"BA77 C8E9 9CFA 9797 12DC CE3D 7317 2900"
	$"1C10 AAE3 CFAF 172C A50A 2C60 BA56 FA45"
	$"4B37 9CA8 E506 56FB C2CB 4A5E D941 5B4A"
	$"E526 D76E 7196 A5AD 2419 E762 3810 4854"
	$"5538 A715 3D5F 4835 584B 0ABD D237 486D"
	$"8B1E 8BAE 369D 76B5 E129 3148 FF00 31DF"
	$"B2EE 2B88 851D CB77 2FF5 1357 D7B6 6267"
	$"ADCF 4744 840E D44E 56B8 2827 0C4A 007A"
	$"FC78 8DC8 7B7F 9561 12BA FDE7 BF76 CDFC"
	$"2675 AF73 6B54 7B8D C2EE CB4F 1F09 B6D7"
	$"6D6D 5758 EEC3 EB1E F829 C39F 1B1B C9D2"
	$"9389 3EB8 1427 FDDC 5DF2 3D2F 45A0 12DF"
	$"D523 B846 7DA8 759D 6A8B 39DB C612 B71D"
	$"5353 1B21 7677 3DED C5A1 A47B 9507 B802"
	$"4629 C4DB 345A 0319 5BBE CB15 6CCF 5156"
	$"7C96 D6B6 C297 5EAA 246E 712B 9AE5 2E0D"
	$"05C1 1C4E 2463 D54F 06D2 D328 867E 2911"
	$"AFD7 9E44 EF82 CA9B 8492 3C99 55D9 C1CC"
	$"E712 485F F870 6D2C B002 5111 99D5 5579"
	$"A5F5 8287 4CFF 00D4 25CB 1928 062A 07E5"
	$"1CB8 2D94 D221 6BD7 0E93 6F36 DDDD BB15"
	$"8C59 23CB 232E F6E5 39B2 05FD FEBF 0E14"
	$"5816 0735 4B40 030F 9DBE 71B8 1EE3 5C5D"
	$"C99F 9901 3CC6 1D7A 2709 2C42 B045 3A81"
	$"D48F 30B7 9C11 7D00 FA9F A85F 67E6 E7FC"
	$"ABDC 4E69 CFF0 4E0F FDCF E091 13FB 63EB"
	$"24B6 5DD9 E5B9 7CA3 FFD7 E4CC 38BD A5AC"
	$"6A2E 0002 EC07 31F0 E2B9 FB83 845B 5A39"
	$"8201 E702 E182 3003 DC40 EB95 E146 3862"
	$"8579 731F BB86 2A3C 36EB ED6F 0384 3ECA"
	$"7340 2DDD F148 1229 F2B6 38FB 5831 D98B"
	$"B150 1C03 914A 7438 E3D3 E6AC 9AAA 12DF"
	$"1BFE 890E 31AD 02FB 5AC6 0734 48D9 6169"
	$"5728 FE72 3DC4 0201 2115 797C BAF0 CA23"
	$"B7DA D630 D8E5 45D9 6DBF 7C20 6471 17C9"
	$"9252 2351 DB6C 6981 E613 15FD 817F 6625"
	$"66A1 5B1B 5DBB E4B6 4976 DB67 66F5 DF70"
	$"9869 D903 0973 00C0 B632 0A61 CCFB B9E0"
	$"BEBF 21C2 4937 5ADF 2105 D2A4 0CEF B7C7"
	$"74AE 9C0B 6171 687B 99EE 5399 4018 A22F"
	$"F604 3CB8 0EA5 6FC4 902D 879C 116B 79C6"
	$"D1EE 23DA A9C8 FA14 3C0F FBC3 631F 3584"
	$"DD13 FBC5 BF2D B48E C9E8 9B0E DD6B 3D09"
	$"70D6 9A32 EDAB EEF7 8DD8 B459 EB21 A537"
	$"6D1B A9B4 4D46 89BA 5BE1 748D 776E AFB3"
	$"54E9 A9E5 702D 64AD 63C7 B9A0 8268 E686"
	$"C92C F822 5A50 DD4C 839D F90B D3B8 82B1"
	$"222D 7F70 FB56 A0D5 6351 6B4B 7EA4 D095"
	$"D5B5 7B99 535B 76DB CA7B 05E6 8E8E 9B5E"
	$"5EAC D75A 1B7C B61D 48D6 D05D 6D94 B05A"
	$"0523 E82A 5EC8 CB4C 7231 C1D0 B417 4671"
	$"26EC 5766 29E4 9747 4E9C 4370 C36E 0B88"
	$"98DB 05FA C7CB 3F13 775E A6D9 64D6 1B53"
	$"A9F4 36DF 6D96 AF76 F468 4B3E CC43 A7B4"
	$"FBF5 255D 7E8E D2FA 62F7 0575 3D0B E9E9"
	$"6C82 BE7D 2D15 6C0F B747 2C74 4679 A38A"
	$"178C 8E1C A999 A4EC 37C9 3777 5D85 D0E3"
	$"7295 9B30 4124 24D4 E248 E28A 93DD 0A2F"
	$"FF00 32F6 0A6F 1FB7 076D AC9B 7D76 D237"
	$"4DC9 DB1A 0D98 B8DA 74DE 9BD1 2E86 92FF"
	$"006A A8B5 5DA7 BB54 EA29 59FD 7AED 1DCE"
	$"B6D8 E7BA 0A8A 8636 8C4C E11B 666C 5133"
	$"86DD 9FA6 185A 1412 130B FCE7 E10E 334E"
	$"A9CE 0AC8 15BC DDC2 E09E 2912 1F79 7CE4"
	$"F1E7 60FC D1F2 E35F EC75 B6F1 BBFF 00F5"
	$"8F78 AFFA 9371 6F57 AAAD 3B5D A765 D3B4"
	$"B72D 4343 31D3 9530 B6E3 0D78 B81B AFD5"
	$"51D4 5442 2286 36B2 2EDD 435E E79E D4CF"
	$"5365 6796 CD5D E13B BCE1 9CBE 9756 A506"
	$"35C8 11BF 2BEE B6C8 8D97 FF00 2EB6 1B59"
	$"5D74 1E86 D51A 7755 6AAD B5D2 D6DD 52DB"
	$"76BB B05A 7446 DE5F 74E6 AAD4 B576 899B"
	$"7DB2 D9F4 453C 1422 5A78 AC54 F4F2 B6AE"
	$"AA53 511B 9E8F 8088 F206 FCF5 3280 AA4F"
	$"6042 7100 7083 A969 B540 2410 B294 CA80"
	$"B22B C7EF 0E5D FF00 CC0D 13B8 369A 1DA6"
	$"D5D2 EBCD C1DB 7AED BCBD 6C3E A9DF 5DCE"
	$"ADB7 576E 3D44 370D 6965 D794 32C1 0BAA"
	$"2588 525B AAEC 3045 1514 B5CE CD14 B500"
	$"4D18 91A1 91F9 9EA4 A000 0548 2085 92DE"
	$"0FC2 24B2 DD31 5E6E 08D2 0820 4D2E 23E3"
	$"329B 2504 1ACF 7AB4 3DEF 6D75 1ED4 689B"
	$"25CD FA56 D567 DB7D 13B7 F75D 4725 2B2B"
	$"A5A5 D0F7 1BC5 EAA6 A6BD 9099 18D9 2B2B"
	$"2F33 3991 46E7 3628 F2C7 9DF9 73BA BD9D"
	$"EAF6 B472 86CB F14E C255 7BE5 B22C 790E"
	$"8D7B 8F33 9D3F C89E D011 3BA7 B625 8D97"
	$"CC9D 39A6 B5C6 FC6A 0D1F A22E D71A 2DCD"
	$"DD78 FC8A D17F EAAA 9A01 35A2 DBA9 351D"
	$"9B53 6B1B 3CA6 9B34 6F8E E536 9EA0 A464"
	$"A0B5 69D8 ECED 5790 1DA9 D7B4 985E 7924"
	$"5CA1 4854 BDC3 7DC2 3B4F DB6A EE63 399E"
	$"010D 4298 9008 691D E7E1 0A3D B2F2 6768"
	$"34DE E14D B895 FB71 5367 BDD8 B70E DDB8"
	$"3A2C D35A 347D FEE1 3E87 B05B ED36 4D3F"
	$"A73F A9EA 4A2A 896D 0EB7 525A 80FA BB7C"
	$"59E7 EE16 BB26 48CB 60C7 B899 5655 E62C"
	$"3272 8400 A800 0014 DC89 78BD 7708 927F"
	$"B739 9752 E46B 9B36 A152 4238 A92E 4050"
	$"A937 1324 DA63 ED0D BD5B 7DA2 F556 D555"
	$"DBAC 7577 CD3B A2B4 4EB3 D83B AD6D D692"
	$"C957 5B2D 06AE D73A AF58 475F 15BE E71D"
	$"651B A481 BA86 20F8 252E 63CC 4F66 70D7"
	$"3641 55CE 7B82 0576 3802 2986 B9A6 4099"
	$"9710 50A8 9022 46F4 2171 8B26 5FA0 9C68"
	$"BC13 F997 B5C2 640F C5AC 0428 4332 0CC5"
	$"CA25 2482 ADEC D47A 3F77 2E3A 2DB6 5B65"
	$"5C96 3D01 6766 91B3 D5DE ED5A 76C4 6474"
	$"95F5 375A 8923 B769 8A78 2969 237C B56E"
	$"3D96 990A E673 A471 7E19 CF54 F57B F375"
	$"1A18 F3C8 D093 0D0A 5492 4068 417C A676"
	$"9256 2E9D 39D3 8327 4DFC CD1C CF2B 22E3"
	$"2400 2971 5375 E837 0942 02CF A42D 948C"
	$"218B 0084 77E7 85AD 0020 3804 7665 F92F"
	$"F1E2 9398 7BDE 7F22 A62E D97A 2CE5 9772"
	$"4391 A628 29EF 17FB 4D14 746F 7C15 B346"
	$"D14E D048 2637 3555 14F2 E641 C78A EEAE"
	$"F2DA 4F7F 37E9 1E07 0D9E 7B64 A90F 65A9"
	$"35EF 017B EDC3 6C4F 58F4 9DE7 5C57 52E9"
	$"FB7C 2EA6 B440 04B5 2E91 8191 C6E6 1CC1"
	$"AD27 02BC 91BE 8A30 C78C 6B29 A454 CC34"
	$"F2CE 73BF 1BFB 78F6 A941 171A BADE 574F"
	$"CBFF 0032 FF00 BE0A B777 4E17 3FE8 2D21"
	$"A02D F07F 5FBE 3A8E CF17 E8CB 66A0 A874"
	$"11CC 33B9 8DEF 76FF 0031 54E8 53D7 8B4D"
	$"2E9E CAD2 2C7D 572A DFB4 4B7D D3DA 8AA1"
	$"09C2 B3FF 0034 D4F5 0E76 50A6 0BB0 246F"
	$"C2EF 0948 848A BFF2 8B70 2DFA 3F51 4F67"
	$"D1F7 0EEE 9DB8 35B7 2B7C 96F0 D2F2 F794"
	$"C84B 8869 CA00 70C3 DDD3 A8E0 CD27 41A5"
	$"5ABB CB47 E20E 377C 785E 5237 2E99 7D63"
	$"9161 CD34 8AA2 5748 26F4 EFED 0653 8AB0"
	$"DD5D CE9E ADBF 48C9 1F34 7472 3A67 3DEF"
	$"CC0E 6760 4071 CA98 AE1D 4A7C 78DC BA4F"
	$"A41A E20B B14B 1977 EE9E E8A9 7577 57B7"
	$"2ED2 C619 FDB0 BBED 2887 F7ED 537A BE4C"
	$"617C CE64 59DE E01C 4E50 038A 0686 8F43"
	$"CFE1 F2E3 77D0 341A 3946 8FC6 7DFE 3E16"
	$"979C BAA7 A973 59D0 435E 82DF 3B21 84A4"
	$"7556 FA79 4C97 2B8B 257E 0D6B 2910 BC60"
	$"A800 C712 31C3 F6F1 66AD 96AC F05A C041"
	$"75D6 B794 5459 9ACB 5342 6A73 6D1F 4F97"
	$"D600 57EA CB6D 08FD 1A27 4C0F B5B2 BBF4"
	$"CE5C C1BE D28A 9D79 F0FD 0E9E CC9F D46D"
	$"E302 E7BA BB2B 4579 5AB8 DBCD 6704 CDD7"
	$"B2BA 5641 5169 1514 E72E 4949 0434 A272"
	$"CBD7 1E9F BB94 93FA 6832 66A2 1D8B F188"
	$"7A5E E073 3D1B 4A46 DBA1 4B05 532B 5AE7"
	$"B2B1 8D84 ABA5 8882 D918 DC70 527F 69FD"
	$"9C46 55CB 161F D3DB 13D4 B32C AB4E F436"
	$"F97C C479 9268 E374 5471 09A1 79CE 6A73"
	$"8C57 0538 2942 3A1E 1849 CA42 DBFE 90AA"
	$"8C09 2F9D BCBB 609E A181 F236 2744 638E"
	$"9C2B 3300 3F39 694C 705F 55FC 7D78 95A2"
	$"D6B4 4B18 85CC 537B 89B5 ADC2 0B7E 8993"
	$"3448 584E 3933 0071 25A1 AD44 017D 797F"
	$"BCC6 E602 A2C4 6D4C A971 54BE C7E5 B3C6"
	$"09EA ADCC C866 7112 35C5 1981 F423 1518"
	$"7F0E 78F0 6D3A C09B A710 B98C A10E 8279"
	$"2274 60B5 8F00 A921 47AE 3F0F 5E0D A642"
	$"4436 629B 8388 8032 B5C1 CAFC 5548 3F2C"
	$"7E1C B829 A424 4454 A553 9A53 3BAD BFE1"
	$"1A5A DED8 0D6B 4B5B 88C4 E010 F242 7F67"
	$"0A55 865E 1C02 1B5A D8C6 C85E A660 F628"
	$"6206 1F5C 17FB F8F9 C043 F4C0 0D52 16DF"
	$"2FBC 66E7 B8A0 2729 0A48 E87E 7FF0 E120"
	$"425D 5490 86D6 E1F3 80F9 5F9D 331C 9F9B"
	$"3619 B927 24E5 D79F EEE1 6A12 1A97 35D6"
	$"EFF8 F6C7 FFD0 E526 1A57 C4EC D173 61C9"
	$"D434 BBF2 1C4B 47C7 D7A7 E34C 6545 0B8D"
	$"B8DA 7845 C49F C48C 2D6F 15BE 373E 28DD"
	$"2C6C 2D20 0203 585C 8095 4C71 27A2 13F0"
	$"F8F0 E8A4 E226 67F6 E16F 175B 2693 DB6F"
	$"3ED3 BE04 C6D9 4CD1 B4BF DECF D47E 503D"
	$"D8E6 E8A9 FB3A E3CF 860B DD72 F8DB BFC3"
	$"6F43 4190 16B5 9041 8490 C8E9 1AE8 5A18"
	$"D690 D2E0 1C09 3CF1 4388 0ABF B47A F08A"
	$"936C ADF0 DD0A 6B09 70D9 6EDB 6E10 2831"
	$"B948 52E7 B006 BA4C 57DA 3FF6 39E2 3903"
	$"C365 E923 336B 7182 5944 636B ACB3 E329"
	$"6F11 B3DA C425 B181 903B 314C 7D49 C797"
	$"0EF2 8485 8082 3606 2B5C 5A00 048C E40C"
	$"7A05 E03A E9C8 6528 7E9B 0981 2D64 0E7C"
	$"8331 7052 D8D1 0A8C 4AAA 8EA3 D380 E9B8"
	$"7371 B616 9416 C607 2E36 EDD9 6060 7C74"
	$"EC8D 32CA E114 8438 3892 D2E2 31EA 53D4"
	$"7F1E 1640 0250 F359 7CA7 C6DF 5DE6 07C3"
	$"092E 2DCF 9805 1DB6 020E 6203 0FE5 00A7"
	$"544E 9EAA 8815 3F15 B5AD B208 A348 7305"
	$"12B5 960D 60A6 631E E73D C5B3 C80A 8255"
	$"039B C828 3FC7 14F9 F02B AB39 25E1 0472"
	$"0015 16D6 EFE1 1BF2 BDC7 244F 11B0 FBB2"
	$"8C53 290A 30C3 98F5 F5E7 D072 42EF 8702"
	$"0BC4 ED6B 4CFA DD69 92E3 5314 2C62 A10D"
	$"CED0 4E38 8187 C551 3817 339C 6D36 9260"
	$"CCBE 49CE 7002 70FC 698D A892 AE19 A7A8"
	$"6192 23EE 8DEF 0D21 01F7 212D 5255 DC93"
	$"A714 0D4B AA79 5E8B 1A0E 97D3 2390 136F"
	$"3C76 8C6E 871E 1D02 F8DF 19CA 5090 D56B"
	$"40CA 0A2F 3C53 E5D7 E478 837E BE08 8981"
	$"A0A1 555E DFA0 F387 234F E96B 5461 B1B4"
	$"8738 111B 5F94 12D7 E1F9 8E05 71C3 01C5"
	$"733B ACD6 0EE6 1845 A321 A5D3 6D3B A7B7"
	$"E36D 97AC 2FA2 D2F4 F039 B8B9 ED6F B4A8"
	$"698C B9BE 85A5 70C1 71F9 1E22 AA6A B5AB"
	$"7F0C F77C 70F0 1073 72CC 10A6 B658 65EF"
	$"0635 A592 8CB1 C9DB 73B3 23F9 12C7 3827"
	$"2440 791E 58A7 11D9 ACDF 236F 536B 7DA6"
	$"4329 F33A 1C3B 5E96 EC85 9329 6B4A BE48"
	$"9737 AE38 A0C4 A60B 8807 1E90 55AB BDCC"
	$"279B B2D6 4F12 D8D0 0851 0E75 BEDC DA70"
	$"CEEC 44C0 1A1E 2261 7123 3650 0A04 208E"
	$"B8AF 1134 4AD4 2DB5 AD88 82F9 B94E FB6D"
	$"F84D 6319 4C54 CC92 6193 2358 BFAA 7178"
	$"6807 10E7 0047 B798 FD87 8628 E6EA C9A4"
	$"2924 85C2 D655 5841 A839 5DC2 C92F 3856"
	$"6DC6 ACB5 5AB5 A3EA AB6A 98C6 5BE1 9268"
	$"44DF 9543 491F 95A4 FF00 2AFA FEC4 E2B5"
	$"D50D 7B32 63D3 1CA5 EE42 6FDE 9DBB 4024"
	$"2F14 9CD1 B4E7 E66B 72B0 0738 0053 1381"
	$"BD06 3D97 CD21 7BA6 FCCD 9F4D DAAF F134"
	$"C334 4FA8 74D1 4950 E2FC 9087 925E 150A"
	$"2340 C473 4257 0E2A D90D 3B39 96E6 6527"
	$"11CF B36D BE51 AB6A 7EDC 6433 5518 E722"
	$"347D 2DBE E886 FBD7 E5BD CF54 4D3C 74D5"
	$"EEAA 9AA7 2D3E 499E F665 6FB5 7287 CAF5"
	$"0570 43F8 7437 5D27 A32A 56AA 6AD4 936F"
	$"B4A5 6E22 672D 4F23 A752 E4A4 4730 B951"
	$"5669 291D B7C4 34DC 2D7A EB7E 9F16 AACA"
	$"B172 D435 51FD 6BA9 E62D 9053 97E5 6838"
	$"9781 8FA0 F971 7BE9 CE9F 6D6C DAB5 A94C"
	$"78A4 42F5 1F51 9CBE 5D3F 53CE 0B69 4BE0"
	$"B10F AF77 A33C 6FA9 AD9C E667 EACC 0BBF"
	$"4B16 2823 3620 A15E 376D 1345 6B1C 1B4C"
	$"20D9 7DBE D1E6 7D6F 5EE7 63AA D575 DC2D"
	$"F728 0631 E751 6B37 D609 EDB6 28C3 E59B"
	$"D925 4479 8A29 048C DF94 1079 61F3 F8EC"
	$"190D 0F91 1F5A ED96 9DB0 C306 EA3E B515"
	$"9686 4CFE 5B78 F7DB BC21 618E B2CF 52E9"
	$"EA1E E958 E490 F791 5A5C 54A6 6C31 420A"
	$"7AFC B8B1 D514 EBB1 29A4 5174 DF5F 2754"
	$"7AA0 AB8C EFFA DB18 72ED ECA0 AC8A 3A99"
	$"2533 0200 CBD3 044C 413F C397 14EC FBDF"
	$"4DC8 4911 A769 996A 798A 41ED 4B6E 81F0"
	$"5B64 6BDB 2B40 2D89 C009 1811 7F9B F987"
	$"A73F EEC7 8073 19B2 DA4A 0CF6 EE83 E9E4"
	$"4BC8 2C01 1767 661F 381F 5D6D 75AE 6A4B"
	$"B451 8746 E731 D521 ADC0 03C8 273C 17E0"
	$"9D38 1696 A2DA AD2C 72A9 F96C BA26 339A"
	$"70A0 F654 68FC 7183 8AF3 2D14 85F1 35D2"
	$"4640 9039 A5C3 027D 8315 1822 7FC4 F026"
	$"52A8 731C 0FEA B5BC A1ED 4AA8 A0F2 53F0"
	$"225F 6B79 4121 AFA6 9638 BBA3 2B87 E663"
	$"4109 EDE8 5A14 2118 2725 C131 1C49 BF29"
	$"51D7 DAC3 CBB6 22AA 6681 0507 75BE 31B5"
	$"F3DB E48B F42A 3DCC C238 E30A EC46 5281"
	$"D8E2 BC2C 64DC 2665 6B59 2076 E7DB CDB6"
	$"00CB 1452 53B9 A3F4 4F37 8955 A093 D483"
	$"98FF 002A F341 F813 C134 CB9A 76C0 798A"
	$"AC71 545B 5B7C 27A7 81EF 91F2 BE32 5803"
	$"48E6 89C8 1F97 1254 6ACA F887 CDE5 C3AA"
	$"129F 295F 0512 C04A 0050 9C5A E283 973E"
	$"7C48 0A92 3108 FCB2 3828 5BFE B6F1 8D52"
	$"5334 CFDC 0490 DC1C 10F3 0139 F4FF 006F"
	$"8F0E 5324 886A B530 A985 BE5F 3540 8129"
	$"BB5D F900 C4A2 A93C F1CA A84E 1F95 7970"
	$"E550 5204 A4E0 1C5B 8493 CF7F 11DB 72C7"
	$"8E19 1CE7 0F6B 41C7 14C0 1FF7 70A1 3101"
	$"169E 692E EEFB 6D9C 7BF8 63F2 09CF 9AFC"
	$"F8E4 376C 2D7C 7FFF D1E5 6080 7302 4923"
	$"F334 F321 C3A9 0142 E011 3E5C 8250 E606"
	$"F95A D824 5C81 B5B6 5B18 10D6 CF23 D402"
	$"FA76 E0F0 5B89 1D54 7EE3 87CB E0F8 A852"
	$"56B7 C784 3ADA 7B92 C963 DB34 98C8 DEE1"
	$"098C 47DB 1104 6B14 9187 A944 45EB FEF4"
	$"1D1F 725B BEDE 6435 85ED 95DF 7EC8 1313"
	$"8BB2 BA56 6491 A151 C428 1CBF 949E 78F1"
	$"C6D7 DB6B 7085 3691 5522 71B5 A42B 8B98"
	$"8E28 0918 AFEC 4F5E 0775 40A5 31B0 8282"
	$"46EF 7F6C 1013 A340 451C 8F20 A7AE 1C73"
	$"F708 C432 30EF 238D D6B5 AF81 B4B0 BA47"
	$"9716 96BE 36E6 85B8 1CC5 1111 3FB3 862B"
	$"550D 5719 58C1 54A9 9292 B25B C20C 1B01"
	$"CF0B 0068 9838 674C 1C00 3814 0428 4F40"
	$"BC31 5330 D600 4DAD F4DB 0EB1 FCCD 245C"
	$"6DB3 E906 51C2 1EE6 4647 7A66 8C1C 4239"
	$"07C7 0542 1155 57D3 9F03 3B32 D734 0DBF"
	$"2890 6E59 005B B71D B6F1 EC83 1A68 185D"
	$"DB8C 90C4 73B3 10D4 6A21 5186 049E 980F"
	$"870D 3AB8 6AAD FDF0 4B72 CEE6 E532 22F8"
	$"1662 88C5 9E08 BBCF 6856 C610 1C07 A0FF"
	$"00C2 3864 D751 CD80 84B4 35C2 44AD B081"
	$"D414 3515 AF86 08E2 1248 F446 B396 3813"
	$"C950 708A F55B 4DB3 2160 9CB6 54BC C84A"
	$"DF0B 244A EDAA DB47 4F2C 12CB 4E1F 249E"
	$"D7CB 2A84 3CFD 5131 4EA3 F7F1 9575 2750"
	$"86B4 8698 D57A 7B44 2087 3C21 4B63 BFC2"
	$"25AB B4E3 2C54 51C6 D2D9 1D20 317E 9038"
	$"E299 5016 9443 CD70 3CF8 CBDB 9FF5 EA15"
	$"971B 5B84 6802 8FA4 D097 6EB7 DA10 CEEE"
	$"3C10 D8DA 6463 8B9E 9CD3 0F9A A63F 3EBC"
	$"4E10 1B23 1183 9AA4 C09D B0B6 F874 F6E3"
	$"6D75 C6B9 AF36 FD3D 6C3E F058 FAC9 D9FA"
	$"7181 CDCA E206 07E3 CF9E 1CAB 1AEE BD93"
	$"CAB7 99E5 4EC1 79B5 B7C9 6532 D59C 0364"
	$"06DB 5AFC 2270 E8BF 1EB4 DE96 9E19 7593"
	$"9F75 ABA7 0DA9 6B23 6011 3642 D195 A495"
	$"3F15 2702 3971 9FEA 1D5E ECD8 218C 2C69"
	$"37DD DF74 9766 07BA 5E9E 9E29 A105 7B0F"
	$"1C71 C319 82BB 6165 7EDA 1B46 A174 15D6"
	$"FA38 ECB5 8E06 3676 D844 25A0 76DA D765"
	$"CED6 8270 551F 8E09 10DD 4F31 937A 3497"
	$"8DBB D577 1B2C 71B5 9893 BC70 DD3B C6DD"
	$"DC61 B0D5 9B71 AAF4 1CD4 D0EA 0B79 A3A6"
	$"A961 AAA2 99A0 B1B3 3313 F9F9 284E 67F8"
	$"7164 A03F 7439 9DFA BB0F CC79 EFC1 18A7"
	$"98A6 E7FE 2656 B4FE E83A 8B8D 1D34 25CF"
	$"6149 5A5A F6BC B422 A019 881F 24F5 C387"
	$"326C 70CC 39C2 EF8A AF84 FB57 B1EA EF20"
	$"14C6 56BE 191D 57AF E92D E5A2 27E7 6F6A"
	$"40E6 666F BDCE 0482 48C0 F518 FEDF 4B2E"
	$"99A2 55AA E5DF 6B7D C879 8CE3 1AAA 7086"
	$"621D 7770 AF75 D452 3DD0 D449 0BC4 4F85"
	$"33B8 9F6B 4213 82AF 24E8 83E2 4754 F4F8"
	$"A746 9921 4074 F75B EF17 4F6A 35CA 4ECF"
	$"D46A A733 506F C48E C13E F4BA 117B 31B5"
	$"BBBF E406 F4D9 76E3 6BE2 92A2 B2F2 5CCD"
	$"4D53 5024 968E 8E96 3244 D2B9 CC20 7B41"
	$"2EC7 13E8 0E01 8CE6 6725 96CA 1359 BF9C"
	$"B906 24F6 61E4 3101 62ED D63D 4753 4B71"
	$"CC3D C948 5F82 6080 1DA9 DB7D C821 BEF2"
	$"CF43 CBE2 EEEE 5E36 BAA6 B62D 5D5D 6A6B"
	$"6637 FA5C ED60 2F56 9092 B9CE 194B 4855"
	$"F961 C5B7 DBBC B7F5 BCAA 956B 4282 2457"
	$"BA47 B2EB AF58 CB3A B7AF 1B41 946B FA45"
	$"5FFA 7022 7C24 B871 D891 16F4 EDCA EBAD"
	$"EF8C A0A8 B80B 6DBD BFF3 3535 154E 0339"
	$"5E41 0E0B 8754 E349 D674 AA3A 5E4C 3E93"
	$"4B8D C025 BE7B B08A 6F4D 6BD9 9EA0 CFFA"
	$"6F7F A21B 7936 DB23 6304 FB8B 43FD 4E36"
	$"693A 6A53 1D41 782D 922F 7BDE C69C C5D9"
	$"9A4A 845E ABCB 82FA 5AA1 6876 61C6 EC20"
	$"3F73 F4D6 6669 B326 D08E 9295 BFC4 DFB6"
	$"F95F 8402 6ED5 CFA4 2D11 DE2E 1697 7D1C"
	$"4047 F58E 1834 905A 0618 8C5A 50A2 E1C4"
	$"A3FA FD9A 8D5F 4DAF 00DC 9113 4BDA C6E9"
	$"141B 58D2 2401 8DFB 27F1 BD3C D01A 929E"
	$"D957 012C 85B1 907B 913E 27B5 0283 CC2F"
	$"A1E9 805E 2DDA 33EB E5DC D9C5 2FA9 C657"
	$"3949 CD12 0211 9A30 FD45 74D6 B965 10B9"
	$"AE22 4CE8 101F 7603 F15C 3F1E 24BA 91AD"
	$"652E 6709 9BAD BA29 FD09 540C C9A4 5DF8"
	$"DB6C 4858 2D14 D4B1 471F 7855 39C8 ECD9"
	$"4200 849F 71E8 0FEC 5F90 E329 7E7D CE28"
	$"6DD9 1E85 CB68 34E9 534B C0D9 B313 8CB0"
	$"DB8A 6049 AF33 53FD 04F1 16B2 595A 3089"
	$"C497 127A 9438 6070 3871 2590 A65B 51AA"
	$"A413 6E31 19AA 3595 28B9 A987 889F 9858"
	$"4FD9 AA5B 73B5 490C CE12 3A89 E5A0 212A"
	$"1A46 5009 4217 D7A7 133A A501 46BB 5F81"
	$"B5B8 455F 49CE 3339 9647 8FD2 B6F1 825A"
	$"EA37 B5AC 940F 6CBE E730 908A 4052 0928"
	$"5789 3CBE 7810 A651 195B 2A09 4027 F082"
	$"F6D2 3592 4AD9 1A62 0010 AC72 E53C FD7A"
	$"7C7E 1EBC 1ADC D35E 817C 221B D00C 3255"
	$"B5BC 6316 4522 831D 49F6 3B36 5707 1071"
	$"0551 13A7 1D7D ADF5 873F 6CE7 9C4D ADF0"
	$"8133 C553 50E0 D394 BE4F 6B43 0380 2110"
	$"B913 E1C3 6CAC C65E 7CA1 672B 51B4 C84B"
	$"5BE7 0535 14EE 808C C41C 3390 CCC8 1553"
	$"A7A7 AFAF 06B2 A735 D111 5293 9A4A 8BA0"
	$"A265 2F70 E880 F323 1231 F970 7538 83CD"
	$"DF09 F95F F4B2 35EE 710C FCAF 2A7D A797"
	$"203A A7F7 73E2 4D8C 0E6E F8AB 56AC F153"
	$"7ADA DC63 73B3 4A23 20AB 5E4A 9613 8020"
	$"8188 7000 7A7F B1E1 9604 2444 8572 D734"
	$"25E0 5AFE 3617 6685 5131 E7C7 39A7 00F2"
	$"98FF D2E5 9E9A 2738 F71E E730 028A E017"
	$"0F52 BF13 F0F4 F8D2 5A0A 5AD6 9C5D 98D6"
	$"F678 5AC7 640E 6303 15A1 E502 65E4 5130"
	$"E7C3 556A 818F 9FCF 75B1 229D 3C2D 6ECC"
	$"2330 72B7 3839 DAFC A8A7 D4A7 33C7 69A1"
	$"6AFC 20A0 DC36 4088 F230 9716 7702 00E6"
	$"9289 95CB 874E 1A78 0D69 4C2D 6487 187B"
	$"6D6B 5FB2 38F3 10BF A689 8B87 E1EA BD3A"
	$"702F AE0D DF0B 5B18 2194 76CA DC60 5C74"
	$"5239 C9D4 7BB3 3710 E761 81CA 48FC 7D47"
	$"0CBE 66F4 16DF 6943 AD21 A9E3 6B6D E267"
	$"0C66 4064 6932 1C5A D901 CAF2 EC88 0291"
	$"D49F 8F41 C7CE 6923 F10A 7679 F805 8283"
	$"11AA 6EF9 EEEE B2A3 DF17 8F9B D2DD 2516"
	$"BD3B 6175 FF00 4C3A 2FAB A8BD 1A69 50C4"
	$"9FE6 8508 1A81 5474 F871 48AB D75A 33AA"
	$"FA0E CC37 D418 6FD9 DBD9 1756 741E A7FB"
	$"6E71 4C86 1EFD B6F8 E2D7 D396 CC63 7303"
	$"8647 B1E6 385C EEE3 150A B882 7F11 FB38"
	$"9BAF 5454 A64B E464 1BF5 8AED 2653 6BA6"
	$"DDBC DB25 E5BF 7C59 BF84 7E11 DAB7 FAD7"
	$"74DC 4DC6 B9CB 68D0 36B9 9D4B 4341 4AE3"
	$"1545 648C 473F DCC0 E23D BEA0 F5C5 471E"
	$"7BF7 77DD BABA 257F DB64 6750 A293 34EF"
	$"96DC 636C E80F 6DF2 D991 FB8C D0E6 63BF"
	$"48B9 6F4F 1BFE A61D CF23 FC10 DB1A 3B2D"
	$"6DDB 63AB 6A69 2EF6 802A A5B1 5F27 2F13"
	$"30B9 C858 6401 57A2 63D7 92F1 9EFB 77FD"
	$"C0E7 5B9D 14B3 CDE6 A4FB C818 FCB6 E1B4"
	$"08D2 BA9F D92A 35F2 0EA9 95FC 2AB2 7BA5"
	$"32B2 F86D 9C41 7DB8 DBD2 EAA8 8D4D 32D5"
	$"46E2 2764 EE2A 1C1E 5840 1D42 E18A 7F1E"
	$"37FD 775E 6318 430C B0E1 18A6 91A1 3AA3"
	$"D5C0 A897 75FE 5F1B A276 68CD 291D AE98"
	$"0642 C0D7 B5B2 FB54 E5EA 139F E181 3F2E"
	$"5C63 79FD 51F5 6A28 33BA 7695 B8C6 9F97"
	$"A0CA 2C00 DDBA 17F5 7A46 BEE4 D60A 285D"
	$"348F 6888 B99D C0C6 B895 0BD0 0240 527D"
	$"3A60 90BF D569 B413 5106 CB7C A256 8E9C"
	$"FA9F A4CB 7C3F DB6B E32F 69B4 971B E5B6"
	$"7BED EE70 2A69 ACCC 7131 0762 E049 0D28"
	$"712A 32F5 F50B C553 5AEA FCEB BF0A 48DA"
	$"6313 F5EC D8B8 EC82 9B95 C9D1 25D5 0AB9"
	$"05DB 36EE FAF6 C4CB B16C C4F6 DAEB 7D9A"
	$"8B24 771A E6B5 F259 EC51 ACD0 B236 8CAD"
	$"50A1 4380 E400 55C5 71E2 8557 36FC CD56"
	$"B68B 4BAA 9EE0 B3B7 61D8 2073 AC52 6517"
	$"39CE 0298 DBB1 7B71 0BC3 C65A E98F 1AB5"
	$"11A2 6C77 3B44 B2B5 D3A3 AA2E 25EE 28E7"
	$"B7DD 8071 5054 61E8 A09E 46D7 91F6 CF5B"
	$"AC7F 71CB C92B 948D C93D C14C C617 4A33"
	$"8D53 DD2C 8535 6B5E B29E 3863 E098 6EC6"
	$"1C46 ED1D 9682 DEFB 5DDA DD09 A08E 4655"
	$"0A88 5B94 7B63 2034 8734 215C 08CB ED45"
	$"E449 6CE3 7A2A AB1C D657 248D A885 16FD"
	$"812F 0541 9933 E522 2BEF EB57 D63C D4AF"
	$"324B FE3F 1F14 5643 7EF6 7EBA FF00 474B"
	$"353C 7F5B 65B6 53BE 46D2 9636 531B 1AD2"
	$"A98A B9C4 0006 2311 CD70 E2B7 AFE9 9A86"
	$"52AF A941 A4D3 92A2 8915 ED1B 4833 174C"
	$"2137 2E8E EA7C BBFF 000A A435 CB79 DB86"
	$"1E57 DE6E 8AAF DEFF 001D AF95 B66F EBBB"
	$"5ADA AFAF 9230 FB8D 82E0 0B67 2434 B098"
	$"DB21 7139 9737 3538 6098 F12B D2DD 6792"
	$"6D6E 4AEA 7781 7719 0BB8 45DB 3994 ACE0"
	$"AC20 5BEF F48A C69B 4B6A E96E F25A EF90"
	$"4F47 70A4 7B9B 5715 67B1 0E20 9394 7C46"
	$"23D0 753C 6F39 7CCE 5DD4 9A69 9507 CBC2"
	$"DDD1 50F4 6B7A A8E1 2C13 BD6D 72C9 6F89"
	$"21B3 BB07 76D7 1AA2 D3A4 ACB6 EFEA 9A82"
	$"F72C 74D1 B632 D2C8 D8E7 9CCE 7970 2031"
	$"B9B3 1F4F C38A 86BB ADF2 82A3 981B 84E6"
	$"701B 6256 9726 55BE A730 6F2C D767 01F2"
	$"DFB6 2E73 5DDD 365F EDA7 B217 2B3E 9CA2"
	$"86A3 7935 3D39 7EA7 BED0 C79A 62D9 DDEE"
	$"6479 9CAD 0034 72C3 0500 9E59 1EA5 4EAD"
	$"4ADF B7A3 F966 EA48 9BDB 4992 3CA2 F526"
	$"E33D C651 1FA3 9CFF 0057 E786 6B36 FE5D"
	$"3B2F FA41 C48B 8BB8 ECB1 E41F C80D D2BC"
	$"EF06 BDBF EB1A 877F 5092 4749 37D5 3C66"
	$"2E78 2A4B 9CB9 8AA8 4CC5 471E BFF6 D3A6"
	$"1BA5 6499 41E5 1C48 BCC4 67B8 3AA3 B53C"
	$"C73E 5A9F F298 2436 5AFE DDF1 155D 477A"
	$"A79E A2A2 4A89 69E4 79FA A3DA 1C91 0804"
	$"F41D 49E3 6573 B2F5 29B6 8B90 826F EC8C"
	$"67D1 D4A8 547D 704B 57B3 1177 087D F6CB"
	$"55D3 C97D B4D4 EA85 97FA 647D 96D6 48C6"
	$"BC00 1B86 0E27 11E9 D7F1 E32A EAED 06A8"
	$"CBBD 9424 B631 B8FB 73D5 54FF 0074 D767"
	$"8733 85DC 70C2 5B31 BD24 2E96 BAA7 7328"
	$"F525 8AB6 8E0A 2A5A 5B59 5EE4 756E 0923"
	$"00CC D0CE E628 8D1F 89F8 A718 6E89 D295"
	$"32F9 905C 5C5E 365A DE31 E86D 6FAC F2F5"
	$"B2A4 35A3 91C0 DF63 DAB7 5F74 5776 AFB2"
	$"5C46 A796 DF62 A474 A2E2 7B94 F46C 6946"
	$"E620 8F71 1C88 3861 D78F 5774 F666 9332"
	$"7EA5 5720 1793 1E2A EAED 2B32 73FE 9506"
	$"F33A A121 076D 8A99 194E 1C0D 29B1 B0D0"
	$"8A8A CD55 5AE8 ABDE D2F6 C74A E08D 73DC"
	$"0E3F CA14 75FE DE2A 7AE7 B942 A934 B2CD"
	$"502F 58BB 743F B281 8D75 7CE5 4FC9 16FB"
	$"BB3C F013 2635 DE6A 9DA7 2ABF A7C9 5A2A"
	$"2926 0452 55F3 2397 E60A 7AA7 3E3B A1E5"
	$"9D9B A61C F1F9 4D6D F210 AD73 536E 9CF3"
	$"4DAE 2E60 94ED B7C8 6328 6F6B 2E8E 94AB"
	$"1832 3810 C043 4E50 4AF2 4F8F 44E2 E74B"
	$"4F68 2170 8A66 A1AD B9C5 5B8D AE80 7A52"
	$"E423 BC54 D248 861A D19D 8631 EDCC 4043"
	$"8262 BCBE 1C23 A832 85F4 C261 6B2F C221"
	$"FA57 510D CC3E 93AD 6F18 735B 0D3C AD7B"
	$"668B 3657 10AF 5CD8 2F44 2475 1F2E 2994"
	$"6ABC 26C1 BADB A347 14E9 9043 AFB6 13FA"
	$"4F14 84B5 751B 5A5E D8A6 F63F 1570 0705"
	$"68E6 5DD7 32AF 161A 7515 882D 7FCA D358"
	$"2CE6 5812 2487 EF1A 690B E26A 3390 FF00"
	$"CC23 0246 0980 E615 3AAA F0A7 7A86 47E7"
	$"F1F9 7C62 24B8 35FC A8A1 6DE1 7F74 9563"
	$"1732 7A87 BBB8 DC99 1229 1CD5 4188 08AB"
	$"8A28 3CFA 7043 5C03 277D BCF8 6307 BDCD"
	$"6B67 6F2B 6F80 B2B5 A039 E0B7 E988 5398"
	$"60A5 A0AA 007A 8053 D70E 4382 E9B4 9098"
	$"DADE 3111 980D 99B5 ADB2 1375 6AE7 3806"
	$"04C5 7221 008F 4CA5 3F67 1234 5409 9880"
	$"CFFE 526B 6505 0EB6 CF52 ADA7 A7EE 9712"
	$"E73E 5E4D CC08 E5CB AE3F 0E24 5998 6098"
	$"328A DE6B 2CE2 44A7 6B78 0853 DAB4 5C93"
	$"4513 64A9 EDB5 097C 44A9 010B 9015 5C07"
	$"5E9C 015F 571E A224 1F95 D10F A7EA 38C8"
	$"46FF 00E8 149F 4EBD E767 CC9D CE9F B117"
	$"F7F0 FF00 AE2F C23B FB7A 7C9D B6C2 3FFF"
	$"D3E5 D720 0E18 2358 55A3 123F 6AFC B8CF"
	$"8D42 0126 EECB 5DE6 2343 1976 2097 8C08"
	$"6869 C3D7 0F99 E5C2 AA54 696A 9876 9D39"
	$"A464 29DC D0F4 21AF 5CD2 3541 5501 08E8"
	$"547A 1E01 6D77 8648 DD6B 7D84 10DA 5CD0"
	$"6BF4 DDA8 AA1A 5E32 3C7B 416A 95F8 1388"
	$"2A13 FB90 A285 4E63 3988 21AD C05A 56B5"
	$"FB61 8DD1 B9AF 8865 CE13 2295 CCD0 10FB"
	$"93D5 7E44 FC78 F9ED 016D 6F8C 3CDA 6D25"
	$"2D38 3164 4580 CB24 8592 483B 24CA 1D94"
	$"48E1 CD31 0986 3CB9 7C87 11D5 AA39 AD71"
	$"5012 EDF6 B6D8 2286 55AE 25AA 5776 09C3"
	$"EBDF 1377 C23D A9D2 3ABF 5DD6 6B7D C31D"
	$"CD33 B6F1 C577 1649 1B19 6DC2 B3EA 1AD6"
	$"B50B 5C8C 6947 6031 3875 C70A F7E3 AF33"
	$"5A76 4E96 5B2A 7F99 5A45 D390 49FC B6F1"
	$"448D FBD8 CF6F E9EA F9AA 956A 1565 2202"
	$"1012 7BBB 2D85 BAEB 7F39 A582 596D B434"
	$"3450 D8A4 70B7 47A7 1CC6 C94B 0323 7640"
	$"C744 D089 9800 1B81 2539 0253 C7F9 6E8C"
	$"AF59 5DCC 47F1 2E24 9C54 93BF 776C 7B32"
	$"9746 64E9 0132 4A26 C979 5B84 5647 93F4"
	$"1B4F ACF4 AB75 EE91 B141 A775 2891 F156"
	$"B2CE D31C 356C 7E59 8FB5 AD68 1973 730D"
	$"4E58 F35F 43FB 3FAC 6AD4 F3C7 279A A86A"
	$"522D 50B7 822E 9FCC F646 23EF 8FB7 FA75"
	$"2D2C E6E9 3431 E1C1 48D8 5565 C52E DF80"
	$"94B9 F16B 7326 D3BB 03A6 A868 DE5B 040E"
	$"1198 7DDD B2E7 0707 8395 0020 8281 0E1D"
	$"79A6 53EE C68E EFF9 0563 64C3 0E36 58D0"
	$"3DA3 C952 CCE8 141C 109C 4EF9 714C 2F43"
	$"E063 66A3 DF78 AA2E 4F0F 2E73 299C 60AC"
	$"ED97 1123 0ABC B5CE F6B5 C02A 168C 1300"
	$"A516 BF43 A55C F1CC 97DD BADB 7B6E 8D49"
	$"BE8B 5C40 BCEC EEB7 7C67 A176 FE8A FD72"
	$"96ED 60A4 6D44 1779 3EB2 22D3 EC6C CF52"
	$"E762 0103 029D 100F C2F4 CEA3 70CA 8656"
	$"3F93 421D BBB1 BD12 C23C E7D5 BD3C DCA6"
	$"7DCD A211 AE9A E031 32EF D912 B74F 6C55"
	$"5494 AC92 3945 54E0 4725 D268 0B12 9A29"
	$"1060 D2E2 A467 FE6F 4407 AF15 61D5 8DAE"
	$"0D36 B0B4 AA05 5036 F8E1 E372 4421 6B29"
	$"9E77 054D D7FC 13E1 34BE 248D B2D9 B6DB"
	$"4749 649A 5A2A 8DC4 D495 6FCF 556A B7C5"
	$"DE61 6C8E 5224 C8D3 9400 0F50 88AB EB5D"
	$"D73A 9295 5CC7 2532 1CF1 BD07 6117 A1C0"
	$"EF92 4359 5C9E 673C C71E 6146 98FE 236E"
	$"E404 9C70 8981 A3B4 06B5 DEBD 574D 7A8F"
	$"4F47 A234 5430 B292 86CD 44D7 C93C 8C97"
	$"2C79 DCE8 B018 0201 5F81 1CF8 B474 D743"
	$"6B9D 599A 6B9B 4FD1 A52D CA98 CC5E 897E"
	$"E33C 73DD 6BAB 34FE 9ECA BA98 A86B 5752"
	$"4932 EC43 BF68 5C06 D8B2 5D07 B0BA 7F47"
	$"C54D DD8C 1B87 F952 CD24 4E32 96AE 7043"
	$"9E4B 892A 013D 48C7 8F79 F437 B1F9 0D36"
	$"8379 C054 B190 C66A 838A 98F2 AF53 7B91"
	$"9BCF D425 7F15 BB0B 0DFB 7B21 E3A3 B153"
	$"D131 E29E 9DB1 B232 6621 C3B8 FE41 C403"
	$"9814 29CF 1E68 3A71 A80E 9BCA B000 04AD"
	$"B258 E17C 50AA EA35 5E14 9B7D F877 413D"
	$"E344 DA6E E10D 2BDB 300A 2785 C8E0 4388"
	$"07F4 9A14 1002 9CA4 28E5 8A71 55D7 7DBA"
	$"C8E6 955A 8775 97CA 2532 7D43 5B2E 6F94"
	$"ED69 EF86 CA7D AF34 8647 5336 1962 9CFD"
	$"432D CF96 36B1 FD48 2412 01C7 A639 8055"
	$"5E33 2D43 DAAA B414 D39D FBEF FAEF 5999"
	$"8C2D 747A C7D4 FD47 81B7 D922 2CEE 76D3"
	$"5552 D54B 76A0 84D3 DD23 799E 9EBA 858C"
	$"7891 A00C F1B9 01E6 8331 2792 9E3C D1EE"
	$"17B4 3459 CD56 9B4D 3AAB 2E59 82B8 2149"
	$"DD29 489C 0246 D3D1 DD72 DA8D 149E E059"
	$"7106 5DBD 9DF7 048A C4DE 0D1F A4B5 9DD1"
	$"94B7 5DBE A8B2 6B2A 8AA6 5B21 A8A3 637B"
	$"156E 9328 56C8 C42A 5CA7 11CD 463D 72D3"
	$"AD6A 390A 8C2E 4900 D230 DC57 6A5E 2631"
	$"1728 DEF4 1C95 27B1 4D51 E985 24A2 A5F6"
	$"1763 1273 4FE9 DDAF FB7A 6CE5 6EBA D595"
	$"3F55 B99A A29D CE85 F542 38EA 6356 39CC"
	$"8A36 919B 9942 4105 3D31 3C5B 755D 52BE"
	$"51C0 BC7F BB78 FC1A 261A 0DEE 7159 4AEB"
	$"D2E2 A4A4 6634 3279 AEAF D49D 97CB 8FF6"
	$"94CF E470 7260 4DD7 4F19 CCE1 1CB8 F98F"
	$"E486 B5F2 4B71 AAAD 36FA 99AA DB5F 51DD"
	$"9A00 5DFA 722E 6EDB 5154 A9E6 AA9C B8D5"
	$"BDAC E83A 3A56 59F9 DCCA 1739 4A9C 765B"
	$"BC98 D07A B756 A694 F4DC A7E3 4D88 A972"
	$"E242 24BC 7CA1 57B7 FB0B 4164 D097 3B4D"
	$"C6D2 CABB 9DD6 9FBD 70AE 4639 ED99 AD6F"
	$"B5AE 930E AA8A 3118 9418 B1D4 7AFB F355"
	$"8546 12D2 D33F 8784 BCA2 4BA5 D943 4FFC"
	$"48E6 69DB BE47 CE5F 4488 23B8 5A3A 4A0A"
	$"8AAA 5146 6904 4F7D 33E3 9503 FBA4 2907"
	$"9F4F 4E9F B38D 23A6 75E6 B9A0 B9D7 DB1B"
	$"7647 DD73 D2A1 CD5A 611A 8AA9 65DE B0C9"
	$"BED5 738A 68E3 A3B7 C953 550E 4EE4 14D9"
	$"9C1F 9B03 9805 F421 138D 2A96 7683 A91F"
	$"51E0 0ECF 8DB8 4645 5743 CD9A FCD9 7A65"
	$"E76F 65B6 DD0E E688 D235 1AA4 4A6E DDE2"
	$"2261 78EE 1ED7 6B23 4B9C D684 0A13 1E7C"
	$"50BA 935A 6E49 0522 0F60 2AB7 4699 D27D"
	$"2CFC E15C C824 F68D 9878 4BB5 0413 EA08"
	$"A6D2 9738 AE56 B1FA F1A3 D92A 0710 C42A"
	$"A879 F4FD 9F2E 1FD1 732E D432 EEA7 51A8"
	$"B82F DADD B007 5087 6999 815A 9140 D9FC"
	$"36FC AFC0 4E13 377D 7777 D413 C304 4E7F"
	$"75C3 212D 24A8 E48A 5502 12B8 FF00 BE7F"
	$"4BE9 AA79 6573 8201 C220 B5DE B9AF 9CE5"
	$"63BF 224E 1DF8 27CA 504D 7FB2 544B 6EFF"
	$"00D4 43BE B1C4 B60C A5C4 2BF1 07DF CB0F"
	$"F6E9 C1FA 4EA4 CA75 3F02 A2D6 F28A E752"
	$"68CF 7E53 9AA8 594B EE2F BFB3 BE1B 8A1A"
	$"5ACA A73E 18A9 E5AA 9411 1361 A666 7FE6"
	$"4519 4155 E2DB 9BAB 4E93 398B D09B 6319"
	$"BE9B 4EAD 556F 2129 E507 2DD2 D7FA 5BA5"
	$"14B0 D86A DB5B 03FE 9E18 3E9E 555F CA80"
	$"6545 1C36 33F9 7750 7735 5076 CE09 ABA7"
	$"E629 E65B 529B 083C 165B C5B6 42E2 5B5E"
	$"AAA6 0193 58EA E99F 20CC 1B2C 2401 874C"
	$"DD3E 1FF0 E2A6 C764 CFFE E059 EFEF F8C5"
	$"E5EE AAAA 5AE9 A5AD E738 D4EB 4EA1 3132"
	$"28AC 5533 3D8D 0E74 8229 0804 14CC 7201"
	$"D3AF 3C78 3698 A385 416F 080B 319D 789F"
	$"295D 897D AD7C 688F 4F6A 8924 923F F4D5"
	$"709C 0CCE 6B29 DD8B 530E 8060 113E 7E98"
	$"12DD 99CB B1B3 AA0F 77CE DE22 3451 AB51"
	$"DCDC A7BA DB77 7159 C19D 2E88 D5F5 2D74"
	$"9058 6585 A4BD A5B5 6D21 48C0 A852 7904"
	$"F9FE E8BA DADD 063B F298 95BC 60B6 69F9"
	$"9A85 4DBE D6C6 0FE9 B6AE E6E0 7FA9 4AD8"
	$"7031 B442 1729 014B 51C4 05C7 FE1C 015F"
	$"AC58 9FCB 0862 5A87 4DD6 51CF 76C5 F083"
	$"AA1D 13A7 2099 A1F4 A6A8 E324 5DF4 5696"
	$"FBB1 207A 8E67 00BC 039B D7F3 0E00 0724"
	$"3997 D1A8 9279 82DA DE70 97D5 F0D1 D3BE"
	$"2A2A 285B 035B EE5C 8849 28A8 848C 41C7"
	$"E5C4 F686 FA95 02B8 C557 A819 4D87 9181"
	$"30B5 B6F1 80B4 148E 6DAC 4BDB 0647 87B2"
	$"053C CE54 4C79 94E9 CB83 C670 BAA8 62CA"
	$"056D 02DA 1BAD F484 8659 93E8 F28C FDEE"
	$"4BFC C991 39A7 133C 8395 77DA D7C5 3FD3"
	$"3CEB 6B7D E3FF D4E5 E9AD 56A3 F97E 52E1"
	$"F8A6 200E 7C67 CCE5 17FD 3CB7 C695 8AC0"
	$"9EC8 6A07 02EC F834 A0C3 963C 06E3 4CB9"
	$"557C 6D6E C2D9 4809 5FF0 B7C0 C18C 3034"
	$"BA09 1F23 CB89 0D7A 2839 9435 A987 A0E6"
	$"3D13 866A 16B4 A6C8 711C 4968 BEDD 96C6"
	$"0752 529E DB9E F8C9 ED9F 6805 A179 600F"
	$"3509 EBFC 78FA B554 40B7 F6DA CBB2 0ACC"
	$"D273 2F90 B5AE 8336 42CE E9A8 20C4 E570"
	$"6B40 E403 89CC 32F3 5079 72C7 A9E0 77D5"
	$"46CF 0873 2C24 A2EB 4BB3 ED12 B3C7 8F0F"
	$"F72F C878 EB2F 1640 DD39 A52D F336 9AAB"
	$"535D 6394 C329 91A1 C1B0 86E5 CD80 E6DE"
	$"9C64 BEE1 7BBF A5E8 3545 1A83 D5AE 511A"
	$"3EE9 3DF1 AC74 6FB5 B9CD 6298 AAE7 0A74"
	$"4CC1 3794 BCA5 F631 613A 7FED FF00 BC5B"
	$"4B60 D594 D60B CD3E AA92 FAC6 51D3 4102"
	$"B72B 7F33 816B DC55 C428 CB81 53CC 1427"
	$"CD5D 61EF 3E4F 5CCD 527D 5A06 8FA7 3377"
	$"6262 9F01 1E9D F693 A6B2 BD3A 730C FDC7"
	$"3879 5122 00F3 1DE6 215E B1D3 BAE7 425E"
	$"1D6D DC2D 2F55 A767 CCF7 32AD F1BC C721"
	$"8CB9 A1AC 99A4 C61A 41CA 0295 C7FC 449B"
	$"8690 3279 D673 50A8 1F21 2518 89CA FC65"
	$"C374 6879 FEA1 4A9C AF05 A0C8 5E3E 13FB"
	$"25EB 0135 3470 5C74 25DE 3A79 FB75 148C"
	$"6550 7373 3DA1 8D25 A012 4342 90E2 E189"
	$"F861 8098 E966 3B2D AAD1 D84A 6F5B 5B6E"
	$"7DEE 81FD D681 9860 53CA 1405 5920 F98F"
	$"3BA2 4BF8 976B AABD ED7D DACF 1519 99B4"
	$"D2CA F8FB 803F F95A 4B81 4423 2B5C 1061"
	$"C971 C78A 87BE 6943 5765 437B DA2E DABF"
	$"5867 FB79 D618 CD0D CCA8 3943 1F35 3298"
	$"DF2B C76A F059 69B5 7E12 BF5E D7B6 F1A8"
	$"4CC2 8AAA 5787 D8A3 8A66 B83C 9762 E0EF"
	$"706E 04E2 4FC0 1387 19B5 6EAC ABCA 29D3"
	$"0A41 4130 A4CA 5E23 0E29 16AE ABF7 072F"
	$"4699 6529 9179 C05E 98CF 8DD7 5EB1 633A"
	$"6BC6 DD1B A36D 14F2 BF50 535A EE54 0DCF"
	$"4B4B 1078 3947 B18D 0B90 61DD 001E 588C"
	$"114F 0EE6 5944 339A B3C3 5D88 5042 E236"
	$"4C83 C05E 8630 FCCF 5666 B32F E56B 0B83"
	$"B1B4 FE7D D061 A736 3F5F 6B3D C6A4 D4DA"
	$"3352 4B16 9D73 7E9A F4CA 2655 07CC D8D8"
	$"ECA3 B89D B685 C1C7 90E4 8571 569F A2E6"
	$"B56A 0ECA 6568 1571 2146 0842 A91B B028"
	$"4CEE C19D 63A9 F2D9 0A7C D997 00E6 E053"
	$"6261 B362 71C6 2C9B 6B7C 34B5 D0D6 D25F"
	$"B5AC 513E 4CC8 FA40 1F91 A4B7 3B73 3CAB"
	$"89E8 0AE0 A700 AEE3 D19E D7FF 0069 ECA2"
	$"E15F 3D33 B38D AFF9 C79F 3ACF DF6A 951A"
	$"69E5 A436 F85D 74FC A4B7 44E1 B1E9 7B5E"
	$"9BA4 10D0 53B6 8E06 0740 1CD6 06BD F8E3"
	$"8604 F500 2903 97C7 8F69 E8FD 3F94 D3D8"
	$"1945 81A2 5777 616C 78F9 DB52 D52B E69D"
	$"CD51 DCD3 94E5 6BB8 C1F3 9EC5 04B4 025E"
	$"D8E5 7B94 9002 8C70 0493 990E 1CC2 AA9E"
	$"249E 6DF6 3F0B B088 F6AA CAEB 5A72 DF01"
	$"A766 7FD4 52D3 27B9 AC7A 824F 2C79 A7B4"
	$"E389 3CB8 1EA1 205A D6ED 8EB6 9AC8 5ADD"
	$"9F3C BBD1 811C 2EF6 773B 92E5 00A8 6BF0"
	$"E4E0 7911 CC7E D1C0 B55E 2E87 C0F8 7C6F"
	$"8D2E C88C 7B3D F886 B732 3CB4 3476 FF00"
	$"3381 2A9D 5715 3C93 81DE E947 580F 32DF"
	$"6164 821B 9DA2 8EEF 49D8 A951 2C8D 6383"
	$"A32D CE7B A4B0 0C54 8555 CA51 3905 4E2B"
	$"5AEE 8547 36C2 1CDD B127 A76A 2FA2 EE60"
	$"7ED6 D911 0F5C 5B76 DB6F 2B2E FB91 A869"
	$"E132 6990 4513 EB03 7B46 42C2 0380 91CD"
	$"5733 B6E6 F218 F3F8 7877 AE86 4321 9E76"
	$"65FF 0098 A6E2 1ACF F138 5D2B E53B A5FE"
	$"14C7 75E9 ECF6 A7A8 5266 4A91 2054 1F91"
	$"D836 2EF5 0787 8F25 5F70 EF34 7516 FF00"
	$"6E35 CECF 66B8 493D 9E19 9D6B A6A6 A763"
	$"831E F924 31B5 CC64 7F99 4168 0310 4E3E"
	$"AA1F 4174 CD6C CD77 EA99 E93D E542 FF00"
	$"08C0 05C3 ED84 7A90 E429 6859 26E9 B931"
	$"CD54 FEB2 0A99 2CBE AAB8 4A10 FB11 E334"
	$"9A3A 82D9 AB75 8D0B E975 55D8 0369 A2BB"
	$"C592 5804 D834 B83C B005 6B49 1821 F870"
	$"EF57 7B84 F7D6 3469 0FE5 3765 96C5 60ED"
	$"1BA3 72ED CAB9 E1FF 00CF 3323 726D 3217"
	$"A053 C124 0CB1 A7D3 6EA1 AAFA 5AC6 7D3D"
	$"4826 7CAF 2DCA 1E1A 8E2A D271 42B8 7C39"
	$"AF11 3A56 B143 354C 3A8B C1E6 BE69 E689"
	$"7CD6 EDC9 01E7 34EC C654 856C 9B35 4BFB"
	$"04C8 BC08 68F7 17C6 CD19 AEEB 6B2E EF77"
	$"F47B A563 3DE0 C6E7 35CF 424C 8DED 8CA4"
	$"B881 EE25 3AE2 79C9 6473 CEA0 395A 505B"
	$"BAC2 2799 D435 2A51 14DE 15A3 6A77 4EDD"
	$"8889 1DB9 F11F 47D8 69EE 9056 547F 52BD"
	$"DD54 52DD 58D7 3994 C0BB 300E 05AE 7907"
	$"0187 5450 8178 2F50 D733 15D3 99C8 05B7"
	$"447E 4F54 665E A73D 001A 314F 8826 C904"
	$"5AB7 61AF 7A47 49DD 6DB5 B648 CDE6 0799"
	$"ECB7 DB64 2E93 EAE1 E590 76F9 3B9A 9704"
	$"24E3 D788 439D CC9C D07F 32B6 E20D C361"
	$"40A5 3C44 BB34 CD27 A872 951B CAD0 1A52"
	$"E5BB 6CCA 4936 1455 95CB 58BA B6C1 7FFA"
	$"EABA 7ABA 3985 4D44 EF86 4A57 C2F7 3B38"
	$"2438 7B81 2172 9E7D 78DE FA7B 566D 202A"
	$"8704 68B7 D3EB 194F 5974 F56A EF72 0E60"
	$"EC57 C678 63C5 524B 1ED9 7464 5A6E AE96"
	$"E315 277D FF00 9EAA 99CA AD23 9825 CA39"
	$"14C7 87B3 BD41 FBBE 7673 5AD6 DB13 A5F4"
	$"6D3C 9A55 2D5F 863F 0F9A 1852 3742 DCF7"
	$"0EF1 1D97 48DA 6A2A 2E35 EF63 4C10 FB99"
	$"0348 57B9 C428 6AA2 F3E2 3725 9DFD 930B"
	$"9EF5 4E36 DFE1 BE0B D7E8 B332 D012 5DDE"
	$"186C 8B7C DADF 1FF6 BB6B ECFA 7E96 2D1F"
	$"4751 AA6D D0B1 D57A 82A2 26BA 633B 981C"
	$"482E 0E24 349E A17E 7C65 FAEF 53E6 B3F5"
	$"497B C86C 800B 2F38 0B27 A551 A0C4 681F"
	$"3890 B66D 1DA7 592C D72A 8B25 03E7 68EE"
	$"3669 A958 034E 556B 7DC1 4804 27AE 289C"
	$"571D 5881 CBCC 5389 B71E FDF0 639C A50A"
	$"432B B997 8A1A 9AB3 4FFD 1A8A 49DC 0D3C"
	$"0E6C 54E0 B9AF 7655 395A 17F6 AF2F 9F0F"
	$"E879 509C CAE0 176A 9F34 C7E3 3872 BD72"
	$"072F 283C 45B8 C293 6AB4 35B7 F46B AA6C"
	$"D4D0 B9E9 2BBB B4D0 390F 43F9 0855 2A50"
	$"70AD 4DE7 9D03 891C 4E3D B6E3 0C1A A5AC"
	$"540B 2494 27B7 BB4E D962 A596 1A4B 4D2D"
	$"3B9C 32FE 9431 6661 FCC0 02E0 139E 0171"
	$"3C13 A4D4 7282 E257 8F9A 7CA5 BA39 EA3B"
	$"9648 3B2D 2DDC 62BA EF76 4644 6782 10D2"
	$"E6BD CE95 D2B4 A202 0800 1197 2E3D 7A62"
	$"0F5E 346A 355A 4043 6B59 2232 AD37 82A4"
	$"5AD6 5942 22E1 44D8 E98B 1D87 D317 9050"
	$"3109 24E2 BFC0 0C4F A0E0 BA79 93CC 8979"
	$"867D 2047 32A4 AC25 6BE1 91BD DD69 E832"
	$"3E36 B631 5048 8CE0 046D 0702 98F3 070E"
	$"9F87 17AD 3B21 EA01 8A5A F8A4 EA79 EF4C"
	$"3889 5B66 DB4E E866 ABAE AEBB DC43 0C99"
	$"DD11 CAD4 527A 733E A89C 6874 B2AD A343"
	$"779F 6465 CFCD 0CC6 6F95 A54A 887B EDF6"
	$"764B 6631 1688 FB2C 6B81 6804 2A13 813E"
	$"83F7 61C6 775B 3C59 989E D36E FC7B 634F"
	$"CB69 61F9 632C 2D3D C3E5 084F F4CD 3FD6"
	$"E6C7 366C C8B8 7717 D79F FBFF 006F 171F"
	$"DE7F 2957 0BFE 36C3 058A 4FF4 877A A9CA"
	$"1177 5BB3 B563 FFD5 E621 B1E7 6B18 D716"
	$"8257 2BB0 FE27 0E33 07D4 0E90 B5AD 8C6B"
	$"CDA3 F8DE 52D6 F283 185A E696 B295 E790"
	$"1207 660A 179E 07F0 41F2 0BC7 CE06 D6F3"
	$"EDBA 3ADA 5242 2073 D87E 9836 A144 AE21"
	$"B198 9AAE 2A0B 4AB8 7355 09C2 2966 4309"
	$"0E3C 0777 CBEB 0450 635C 4B48 4038 C19D"
	$"3523 EAA7 1416 E81F 5933 97B7 4148 C749"
	$"2C84 9540 0638 AF2E 232A 9736 938D 47B5"
	$"A379 4C63 EC9B 0B9D FCBA 6E7B B040 BE10"
	$"EFE8 4D97 D75A AF58 696D 2172 D2F7 2B45"
	$"25FA 6647 555D 71A5 9A18 8D2B 0812 80E7"
	$"06A1 2300 39F1 4BEA 8EB6 C8E5 34FA B5BD"
	$"46B8 B460 E17C 687D 33D1 79AC FEA0 CA1E"
	$"9BC3 6A19 9E52 13E5 C4C9 63A0 5D19 B9FA"
	$"2365 F49D AEC7 66A0 A68B 4FE8 D83E 8ED5"
	$"48D7 821F 2C0C 313E 4258 EE64 B707 7A14"
	$"54E7 F9D1 A864 B3FA A674 D7AC E5A8 E2B7"
	$"6DB8 6C96 CDD1 EF56 7455 1651 6D3A 3F83"
	$"1BB9 2D84 B744 5ED7 DE63 EB0A DB95 4C76"
	$"3B8B A9A2 57C3 1B9C E0F6 B11A 50B7 02E4"
	$"440B 8720 9890 78D0 34BE 82F5 3F3A B371"
	$"FA4B E93D F162 A595 C8E5 9818 00FC 76FC"
	$"ADC2 194D D7F2 3EF1 7CDA FD65 6BD6 D1D3"
	$"5FE8 AAD9 1436 9AAB A451 35D1 D634 1C99"
	$"4E7F 6A39 4F32 3A1E 6BC5 9BA3 3DBD 6B75"
	$"7A07 2E4B 1CB3 427F 4AF9 5DB3 6E11 5AEB"
	$"FD4B 2392 D2EB D7AB CA08 6903 8CC0 BFE9"
	$"1183 C59B 9C7B 97B9 BA77 6E63 865B BC7A"
	$"90B2 CF7B 9210 5822 A57A 07E5 7925 5502"
	$"721F 25E3 6DF7 13A6 6A64 9A6B B7F1 7309"
	$"2315 E363 1E75 E97F 7028 56A2 FA0E 6F37"
	$"3B67 B05C 65E1 C0EE BFA1 FD1B A376 2BC7"
	$"BB65 AAD3 71AC 1432 5349 14D4 74D4 E0B6"
	$"5908 77B3 3640 155C A0E5 6E2B CC1C 38F3"
	$"D662 A57C D660 547F F32A 83BC CBE1 B3C7"
	$"0822 AD6A E69B A9D0 FC29 9E02 F4C2 E89C"
	$"BB53 B5BB 95BB 73D5 6A66 B7FD 05A3 A158"
	$"6D4C 9616 BEA2 B635 0CFD 3634 3514 0C4A"
	$"1418 A1C4 7006 47DA CCCE AF98 E7CB 9F48"
	$"92A7 1962 5BDE 8302 BBA2 91D4 7D6F 91D2"
	$"80A6 7F9D 531D 838D E71F 2E31 29EC 3E16"
	$"69E9 AE06 BEF5 71AB B94A F224 5AB7 BDD1"
	$"7688 C726 6786 F24C 0F35 E587 1E8D E95F"
	$"ED69 F5DA C7E6 5E4F 2A91 85F3 59ED 2549"
	$"F0C6 328D 4FDF 9AAD 0942 935A 768B D7E5"
	$"3C3E 4935 3446 DF69 BD07 6C6D 1596 9E3A"
	$"5962 6B73 4B4E C648 E706 A108 8EC0 038A"
	$"72FC 397A DFA3 FDBE D3B4 4A02 9D16 CD11"
	$"71BB 69B7 6460 7D47 D539 AD4E B17D 572A"
	$"F82C 2D5C E863 73E3 8FD8 7DE3 B670 4709"
	$"110B D7FC 1873 4E7C B8BB 2CE5 15C6 AED9"
	$"5ADF 68D5 960C AF77 7496 4881 85CD 762E"
	$"682E 00B8 2FBD 3993 CF96 2ABC 0CE7 1052"
	$"DDD6 F08E 8014 1293 D9F7 8CDA 257A 42D8"
	$"8670 1A22 7C59 911B 8872 8F88 1827 3F4C"
	$"4F03 5422 D6EF F187 3950 4ED6 DDE5 011D"
	$"2CEC 2AE4 7B64 2066 8B91 4C7A 1079 1441"
	$"8A14 409C 0AE2 70BF B567 6E29 0B63 31B5"
	$"BE5D FE96 FB18 E818 181D DCCC DC49 0148"
	$"405A 472C D8E3 C872 E448 CE21 216D 6E16"
	$"B2FD 0C68 7B99 2011 B621 1B08 1F99 8D39"
	$"4128 F0D0 8115 4F5C 571F 8B0E 76FB 7DE1"
	$"6D6A E07C ADF4 D90D 16E1 6E1D B34C DBB5"
	$"134D F63B 0593 4953 BB50 6BAD 48D6 77A3"
	$"B5D0 3582 6319 8E39 2322 7A80 D48C 204E"
	$"9FCA 4D0F AAB5 07D6 A552 951A A298 60FE"
	$"654C 580D C061 CC70 5B82 14BA 2E5D 3BA1"
	$"97B9 8FA8 D2E2 E931 BFE2 372E 3F88 C6E5"
	$"BB68 8E49 7CDD FBA3 5AB7 CA3B B693 DAEB"
	$"8D5D B6CD 413D 559E 9055 3444 F9E2 3519"
	$"44F3 08E4 5CB2 35A0 8C06 2557 983E 2E7F"
	$"B61A A663 516E 6338 D1FB 76FE 8452 AD18"
	$"9240 249E D99C 6F1E D7E8 1FE8 FA46 4CF2"
	$"9E7C E3C4 C27E 9292 4E07 B913 8CA3 FB49"
	$"7DB1 A3D5 30DB FC9F F246 C6F9 E3A9 91B7"
	$"2DBB D0B7 9618 E294 F733 9AD9 C480 82B9"
	$"BD8D 3FCC 1482 471B 674C 74DB 7587 973A"
	$"596A 6795 07F1 1178 3FE5 0887 CC46 5FEE"
	$"97B8 B534 B0EC A507 0398 7CDE E055 0600"
	$"77CE 5294 5A4F 955E 3169 9D51 74A1 BB5B"
	$"AC91 76DA 5B15 59B4 0958 E880 21F1 C919"
	$"85AD C50E 2131 FC38 AFFB 8DED D31D 9975"
	$"6CBB 4026 FBA7 BE65 1462 B223 15FD 519E"
	$"D9FB 895A 8E5C 53AA F240 B967 B541 DDE5"
	$"15A9 B93E 39EA BB55 2CF1 51DB 855D BA8C"
	$"3991 5653 373C CD7B 8973 98A3 101A 81A8"
	$"13AA 91C7 9E2B E939 8C96 60BC 020C B684"
	$"D923 C471 EF8F 45E9 FD69 4338 11CE 5276"
	$"A159 9C71 BC93 111E E551 77D3 AE7D 25E2"
	$"DEF9 8533 DECA BAAA 762F 6983 939E 4124"
	$"8401 49F9 FC38 9ACA 666A 942E B8ED BED8"
	$"EFF1 82F3 594A 2E9D 3369 5B66 1BA1 D2D1"
	$"D15B EBED FF00 5F6F A865 653B BFCE 9632"
	$"E190 946A 3822 9087 FDBA 159C A8E6 A6F8"
	$"83AE C2C3 CA24 9F68 11AA 1C60 863A 5686"
	$"4264 6161 6821 DED7 F3C0 20FD CBEB D386"
	$"A997 8372 9FBD A640 DE21 ECAB 1570 22DE"
	$"1DF0 CCD2 680D 18FB AC5A 8ABE CF4F 255B"
	$"497C 33CF 4ED7 39A4 2291 838A 90AA 7A61"
	$"F89B 4F50 AA7F 1125 B60A 364F 15DB 283E"
	$"AE65 CDA4 438A 9EFB 5B8C 2635 46CB 6CCE"
	$"B0AD 75CE AB4E 1A7A A765 EE3A DD37 6DB2"
	$"11CF 306F 250E 4EBE BF23 F2D9 ACCD 0322"
	$"6D65 E30C 1D49 E885 D6B1 4E12 8783 43ED"
	$"AE91 D214 D1D3 68DD 391E 9C65 4373 BEA7"
	$"2074 EFCA EEAF C148 CDF8 75E0 4CE6 72AD"
	$"572B 892B 023E AB91 0CF7 41F9 B093 56D7"
	$"B1E4 F69C 58F9 8B83 8B32 BDC7 339C 8700"
	$"4F50 3A9E 180F 5942 9B56 34EB 0BED 258A"
	$"CA29 2098 3A47 B50B 4069 C109 4001 2399"
	$"03F7 708E 5472 DF09 6525 72C4 7AD3 F6AA"
	$"AD59 7F6B DCC0 F8E2 798E 47A9 6B49 7212"
	$"027B 5027 55C7 8927 5434 E881 718E 542D"
	$"2F24 C4C0 B35B 196C B5B2 2823 0D74 1181"
	$"239C 84E2 D4C1 49F5 E9CB 88D2 15A4 C335"
	$"2A77 9BA2 356F 106C ECAB 0E77 B4BB 3094"
	$"1382 0046 20F5 441F 3E0E D3C1 0E6C 2EE6"
	$"F60F 8C40 8BA8 8DCF A962 FEAB 5C48 2C29"
	$"839C 4F30 1B89 5070 E5CF 1524 5DCB 5E02"
	$"8B5A 5658 5517 B1C6 78F6 4863 BF19 CA5B"
	$"11B0 D86A 895F F44E 7C8D 00B1 A5CF 6BC1"
	$"52DC FEA4 FAF2 529D 3962 6634 E7F3 39B6"
	$"FBC4 6E79 9C8B 85BC 2C92 9C44 0D79 56C6"
	$"3981 AD46 B039 B896 E288 E425 47AF C31E"
	$"368E 9BCB CA62 FF00 8C62 FD57 9C0D 040B"
	$"5F28 41E9 5A61 3D77 D402 0C8D 7672 D23A"
	$"B4E6 F8A2 92A8 792F AF16 3D59 C1B4 5059"
	$"7CE2 9DA0 53E6 ADCE 6DF3 B764 94A4 90C4"
	$"C70C D99C D1EC 69CD F9B0 2A10 E6E8 7F14"
	$"E328 A8D2 F7CA DE09 631B 4D37 86B0 874C"
	$"6FBB E7F5 4803 D98D 7B99 199D 79E5 2A9C"
	$"FE4A BD79 F077 EEDF E9F2 ADBE 5BA0 3F41"
	$"BCEA 96F9 C7FF D6E6 723A 56CC D6B8 BCC0"
	$"DC58 DEE3 1EC3 9D0A 0399 BD49 1C64 D55C"
	$"E73C F284 6E09 3162 1636 7CD1 6517 A389"
	$"0761 12EF 8368 E98B A369 742F 74E1 0E52"
	$"5AC0 0A94 3982 7A2A A9C7 84D3 AFCC D517"
	$"5AD7 415E 9B70 080D C765 BE5B 21C3 DB9D"
	$"BAD4 5BA9 AE2C 5A1B 4DC0 E96E 97F9 A3A6"
	$"EE4A 3F4A 1622 BA47 E5C0 3472 5279 A715"
	$"7EA5 EA7A 3A46 4DF9 AAEE 0DF4 C2FF 00D4"
	$"B701 8C4C F4D7 4DE6 352C D328 65C1 7389"
	$"9902 E189 ECE0 9B4D F1D2 C78D 3E27 ECCE"
	$"CCE9 CA1A 6D3F 4F4D A9B5 9C90 44EB D6B0"
	$"BB41 0492 4B55 93B8 E31B 640E 0D63 3127"
	$"21C5 02E1 81FC F8EB 6EBA D47A 9F34 EACF"
	$"A8E6 529A 305C 9721 0117 B76C 7B17 46E9"
	$"9A1A 2526 D26D 20A2 F32E F599 1F04 DA84"
	$"498A BDBA FEA1 6BAE AAA2 861A D7D4 31DD"
	$"B8CB 6318 040A C2AD 4C80 8E41 3991 F0A7"
	$"0D1D DCBF 9CF9 571F A6D3 D916 5A1D 4B46"
	$"9E61 9CA0 36EC 3B13 8C92 F53B D027 39BE"
	$"62DC F576 C6EB FA8A 1963 755E 96BC C8E6"
	$"1A69 3301 096C 8841 7310 0C47 A7AF 1EA4"
	$"F693 A7A8 6B99 3730 84AE CD98 F7C4 57BB"
	$"1EE3 E634 3651 CCB1 BCF9 6A97 ED07 8ECB"
	$"F6AC 44FA 1DF9 D2AE 6F7E E52C CDAA 895C"
	$"6998 0C99 8A91 CE42 7103 9101 4E38 F1AD"
	$"57F6 A752 A448 A439 945C 4F8A D846 5B97"
	$"FEE0 34AA 88EA A4B3 6DE5 4843 8AE3 35F1"
	$"C61B ED65 AF2A F78A E16A D3AC 865B 4694"
	$"A470 142C 25C2 5A89 0ABD 5C07 2198 9210"
	$"9E7C 5E7A 5FA3 28E9 349F 589E 7AA9 3C13"
	$"B631 DEBA F741 FD4B 55B9 52D2 DCBA A845"
	$"527E B889 0C52 2F0F EDCF E2D5 5F72 96F1"
	$"6EA0 9A82 F155 832E 05AC 0E69 CADC 7300"
	$"E002 394F AE21 09C3 8F33 FBA7 D5B5 350C"
	$"C7ED E9FE 7702 07CB B137 6252 634A E9CD"
	$"1A8E 8992 E6A8 D1F9 059C F663 B3E7 1D0D"
	$"EC8F 825A 0EDB A8DD AAF5 84D2 6AED 4154"
	$"D6BA 3A7B D865 4B62 6348 7809 239F 95F9"
	$"9AA8 0A9E 84A7 163E 83F6 A331 A853 6FAC"
	$"7919 2FC5 30BF 8CB6 1989 2B70 8CC7 ABBD"
	$"DAAB 4E99 665C 2376 8B5B 0BE2 D5F4 AE92"
	$"B6DA 9B13 2899 90C4 3E99 C5CE 0D21 ADFE"
	$"5F68 2101 3D02 0253 D38F 65F4 9F43 E574"
	$"FA63 95B3 4C67 E7E1 B860 23CC 9ACE B557"
	$"30E2 5C6D 6ED8 574A F2E0 C733 28ED 8C24"
	$"796B 1D99 85CE 500A 2139 CA00 BD38 BEC9"
	$"B100 E695 9DAD 38C5 FDB6 0612 C34E 5EB9"
	$"C82E 2435 1C0E 654E A714 1F2E 49C3 25C3"
	$"8DAD 7C2B 9B1E FB76 F18C 8398 E63A 4203"
	$"07F9 4803 497E 4040 0BD0 9C17 0E68 5381"
	$"DCF9 A25A DF18 EA12 7691 F3B7 9407 903F"
	$"3E7C CE6B DFFA A5A8 4970 780A 51B8 BB12"
	$"8807 EDE0 77D4 245D 0A00 83B8 5A7E 5183"
	$"C4E4 3CB4 091C DCC3 33D1 1CF2 4371 7A11"
	$"C9C3 AFF1 E05A AE4C 6D6D C97F 6388 96B6"
	$"1DB1 E3C9 95A6 3682 E042 B645 0E0D 48F0"
	$"52C6 A907 D153 0C53 9F02 B883 0A2E 04DB"
	$"6DAF 8020 7E8B 0472 1984 BFA7 DB69 2D73"
	$"C86B B920 009C 30C7 9151 C32E 31D1 4D0A"
	$"DBB6 FF00 8F94 21B5 7EA2 BAC7 5D65 D13A"
	$"6047 5FAD 3543 A692 D92B 5C3E 9ED9 44C7"
	$"24B7 09B3 B5ED 6C6C 1984 65D8 3DF8 621A"
	$"F22A BAD6 A954 D46E 572C 47AE FC4D CC68"
	$"FD4F 7225 C01E 51FC 4540 9072 5A74 2D1E"
	$"93DA ECC5 7951 6761 7BB0 60DF 729C 06F2"
	$"D8E5 47EE FF00 E7BD B2E5 74BC 7889 B2F7"
	$"A74D A434 8D51 9B73 F595 2554 F1D5 EA0D"
	$"44E2 1F24 B33A 22B2 C6C7 80EC AE24 7319"
	$"70E3 31AF 4A96 6AAB 1996 5394 A52E 6227"
	$"59E0 FE55 1C71 59A6 0A49 5D9B BF4D 644E"
	$"529F EE6B 8E5C CD40 11B8 5261 08D6 3761"
	$"3714 FE1D 98A0 BED2 DF6B 5A9D F0BD 5BFC"
	$"87DE EA39 E9B4 359E B992 5A2C F5F4 E5AE"
	$"BB48 CF7E 20B0 E689 5155 00C1 3D38 AE66"
	$"BD6D 6EBF ECB2 EE2D CBB3 F538 600E 0DDE"
	$"6EC7 6DCA 84EB FD47 4F42 A25E FF00 CF37"
	$"5014 FF00 28C1 7E1B 488E C4ED F6CA 2B4D"
	$"052D BAD9 4D1C 1436 F8E2 A1A2 A1A7 608A"
	$"28E2 8630 58D6 8CA7 004E 0413 FB57 8DA7"
	$"2994 A596 A0DA 3482 536C 805B 6E9E 26F3"
	$"B3CD 799C DD6A F54D 4792 E719 93B6 015E"
	$"ED94 B73A 6929 E5A6 6C8C 90BA 0CB5 473B"
	$"5B9D FCC8 43CC A27C FE18 099E C932 AAB5"
	$"C2D6 30FE 4B3A EA47 F186 EAE3 B6D6 4A8A"
	$"77C0 EA66 3E0A A207 6A48 8AB5 AE0C 04A0"
	$"0A71 3CB1 0B87 14CC F745 65AB 3512 57A6"
	$"0BC0 26CF A041 169C BF56 D669 E60E 2B6B"
	$"A202 6F97 879A 6B53 555C AF14 70C9 4152"
	$"F63F FE76 83DC C284 00D9 18F6 2395 A549"
	$"18FA 7341 84F5 97B6 858E 754A 6A11 481D"
	$"F899 DDC4 DFDB BBF4 6FBA CF6F 2D37 1046"
	$"FF00 8795 9629 EF5E F8E7 B99B 2DA9 E4B8"
	$"699B A7D1 5BE4 491F 7419 A5A0 9E22 1C98"
	$"0272 B9C0 61D0 F2C7 0E33 8CDE 6DD4 1C69"
	$"5761 246E 4BBC 3E5D 91B8 E475 5CAE A14C"
	$"39A8 1C77 CF67 1C2E ED51 080B 9EBA 9662"
	$"EFEB 74D1 5255 B5C6 9D93 D117 4914 CE6B"
	$"7282 D738 0287 D138 564F 32DA 9542 1911"
	$"3F0F 2E28 B076 6B4D AB49 8489 8B77 5D8C"
	$"CF08 4BD5 DF66 AC77 7002 5937 B1AD 8D58"
	$"D25C BC9A 0FED E587 1601 429B 6A10 E121"
	$"6C22 0BD6 5286 0E2D 1055 C85C EC92 1706"
	$"B729 2D05 C402 3A85 C081 8273 C073 41C2"
	$"1CF7 1BC8 4D96 B637 4E3E 2C69 90BE DC61"
	$"E3D3 52B9 23A7 2E74 AE1F A4F2 AD20 9602"
	$"0621 4721 C827 AFCE 3331 F924 B877 F8F6"
	$"F0C2 1756 909A 4FB7 846B D5DA 9EDF 65A3"
	$"A874 B286 D5C6 7DCE 63B2 E000 7154 70FC"
	$"A7D4 73E1 AA19 5A95 41C1 6DDE 70F1 8ED0"
	$"1CA7 99D3 1112 AE9A B2A7 555E A5A4 B734"
	$"9639 C0BE 78DF 9C16 F3EA 085C 39E2 38B0"
	$"E5B4 F6D0 6A98 556A 8F79 9C4A 1DB9 D206"
	$"DB45 1540 9883 28EF B8C8 14B9 CC01 C0E6"
	$"2A8D C3E2 0F35 E223 3598 2F79 3777 4ADF"
	$"684D 4FC0 110E A5C6 BA2A 5A69 2291 E1D1"
	$"6577 7010 6304 856A 1057 981D 461F B786"
	$"3D45 4189 81A9 B417 2E36 BBC6 C890 CF75"
	$"6675 6995 AA5F 4C4A 38A9 6842 4341 F6FC"
	$"3A14 F5F4 E273 4E08 46D8 5BD0 9262 0D6A"
	$"09BE 9657 BD80 3035 E049 972A BB33 09C3"
	$"360A A472 F9A1 C78B D8A4 1CC0 1160 0A35"
	$"5CD9 ACEE F843 37AA EE25 F4F2 891C 591C"
	$"9982 3558 D504 E18A 1214 AFA7 3E7D 25F4"
	$"AC9A 3820 B7DA 04D4 737C CD77 31B7 DD62"
	$"1EEB DB90 9AAE 4886 0D69 46E7 CC03 8142"
	$"3F37 2C10 227E EE5B 4F4F 654B 593B ED6F"
	$"AC60 9D53 99E6 AC40 36C2 DDD8 479A 3E06"
	$"02F3 DB31 A073 DA02 AB79 0C33 2F35 3D3F"
	$"BF82 7A82 A214 3BAD 6F0B A15D 34D6 86AB"
	$"82AD E96F 8887 C5B3 B606 46D2 1C5E E68C"
	$"9DD4 1EE2 0E0E C80E 27D0 0FDC 0F19 DD2A"
	$"054A 263C 3EDD BC77 E9D5 AB35 4038 DAD8"
	$"F8A0 6FEA 3177 1333 72E6 ED22 855C F933"
	$"2F24 FDFC 13FD 34F2 2CD6 FF00 A25E ABE1"
	$"BE50 D7EE 9BCE 8A2D 6EFD D38F FFD7 961B"
	$"B7E1 878F BB93 A1E7 A7AF DB4B 4DBE E751"
	$"0C91 505C ED70 3A39 A119 158E 8DF9 9AA0"
	$"342A 1C70 247C 7F20 B4FE A9D7 B4CA DFB8"
	$"CB66 5EE2 A0A3 8A82 152E 3F0B A3F4 B40D"
	$"3336 4D0C CD00 1864 4E2A 3785 F29F 6CB9"
	$"8FF2 1360 AFBB 05AE 2E1A 56EF 2BAB 6CF5"
	$"45D5 B64B A35A 5BDD 89A1 5017 2156 FA2A"
	$"E29C 7B4B DBCF 7069 7516 43D6 A643 5CC4"
	$"0E6A E29D C41D BE11 827B 8DD0 6ED1 B30C"
	$"A649 7507 8561 12B7 7F6C 4EEF 15B4 25A7"
	$"6BB6 2AE9 B955 4C64 BAEF 5D29 B7CC DEE7"
	$"7A92 8628 CB0C 6C69 C5AA E399 4055 4E7C"
	$"B8F3 67BC FD46 754D 65B9 3A6E 3E85 2331"
	$"B4EF E16B A3D4 9EC2 7438 D3F2 3FBA A8CF"
	$"E654 0BD9 87CB BF6C 38FA 5FCA FF00 E9BD"
	$"A921 BABE 3B9D BC76 ABE9 C481 C1E5 AEC4"
	$"31CE 71CC 0E3D 073C 54E3 C51B 3BED ED45"
	$"40D4 06EC 25C2 EFAA C6C1 4F54 CAD7 2E6B"
	$"8824 1DDD C8B2 4DB8 A82B 06F7 DF3D 7581"
	$"97BB 6397 B74B 116C 74D0 31D1 8F60 398B"
	$"B3BD BCC8 C4A8 0531 F4E0 DD33 DB7A 81A8"
	$"E75B BF6C AF33 80DF 4749 3F9B 9A09 E26C"
	$"25BE E883 3E57 EE48 DE0D AFBD 3B52 80CB"
	$"DC7E EA27 811B E57B C008 0008 42B8 9E40"
	$"E07A E3C6 C7EC E687 5B4D D6D9 51AA 5932"
	$"EB4D 6C63 2CF7 D735 91AB D375 28C8 3C8F"
	$"C015 BE5D D617 C57D E87D 95BC EA5F A6AF"
	$"887D 1519 C867 96A5 4B88 079B B313 C942"
	$"AFC3 8F55 7507 5E52 C9B8 8555 C05A D747"
	$"85BA 73DB 3CC6 728B 3D47 5D3B B6DF 64F0"
	$"89F3 B1DE 37D1 4B75 A27D AACA 2B6E 2C7F"
	$"75D7 6BBC 3286 4594 86AE 0403 D0A0 FC78"
	$"C0FA DBDC 9CDD 405A 5DCA DFF0 8BCD B718"
	$"F40F 48FB 7BA7 64E9 821B CC76 9DB7 E3E2"
	$"B1D2 FF00 867A 76A3 6F34 253D A4D4 B2E5"
	$"AA35 13C5 CAA2 B9AC EDB9 B1B4 B69E 30D2"
	$"F446 B9E0 E054 1011 539E 4DD3 751B 533A"
	$"D735 9F93 8806 4A53 1E12 9949 8DD1 CEBB"
	$"AAEA C0F3 BBF0 6094 E589 FB6D DF17 91B5"
	$"DA16 4A0B 7C75 9740 23A8 A859 21A2 6090"
	$"B834 B8BB DED2 1B88 071E 7D31 4278 F76F"
	$"B7DD 315A 9506 D4AD 7CB1 DC87 7712 36E3"
	$"231E 35EA 8D65 B51E 69D3 3F88 26DE 3630"
	$"F488 91E5 91B0 88E1 FD18 91A1 87B6 0383"
	$"B990 000A 8A9F DBC6 AA00 0112 42DD BBA2"
	$"8FCC 4953 6B5A 51A1 B14A D738 38B9 7191"
	$"C672 E635 C0BB 3138 12E2 A1B8 AA74 EBC3"
	$"248D B1F3 5A81 45AD C788 8FA3 6835 3049"
	$"1ACE C8FB 4DCF 18E4 E047 30E5 0B81 EBD7"
	$"864B B6DA D842 8AA5 8DBC E718 B881 13E3"
	$"0D39 1819 FABD B0C3 949C E014 0E42 4808"
	$"4AF0 2555 4DF6 F2B6 E5A0 16DF 658C 63FA"
	$"873A 3334 4E21 EE1F 50E6 190B 890C 2D2D"
	$"4098 F3E6 987E 0381 AA39 6E12 B5AC 90A2"
	$"82DE 3F5B AEE3 18BC 3C97 D306 81D8 0E63"
	$"DAC2 8CCA 4B9E 51C0 1FF0 FE53 8FC4 7033"
	$"8CA1 C621 184F ED75 BB63 4333 45DC 6CA4"
	$"1734 AB9B 113D C03D CC4F 7104 0298 A8E1"
	$"973A 3A1A 516F EFB7 0829 BE5E A0B3 5236"
	$"AEA5 87B9 2BF2 D0D1 D2B8 99EA 2A26 680D"
	$"8636 B834 BF3A 804F 445E 40F1 139D CF32"
	$"8D2E 7776 6F38 008B 3B19 41D9 1C93 AB54"
	$"0D68 E3C0 5E4D B745 32FD D77C C9B6 784F"
	$"B357 DD29 61BA 897C 99F2 0E9A 7A4B 95E2"
	$"9646 7D45 8ECC E84B 1B0C 6D25 FDA6 347B"
	$"0275 2492 4AAE 75AF E57F 685D 91A6 F5CE"
	$"E679 5D5A A0FE 162C 98D3 8092 248A 4E6B"
	$"1B17 4664 5B9E 0DCE 5604 6532 C529 B307"
	$"D4FF 0011 DA66 AA98 1024 8229 1BED 61F6"
	$"D9D4 1E5E 6E3B 77B3 79E9 AA2B 368A CB54"
	$"6E37 186E 2279 1D74 9F3F B620 47E6 CE84"
	$"3882 8003 C8F2 AE1A 3535 0CC5 3C86 5BF0"
	$"CBD1 0054 7895 D3E4 6ED7 38CB 1DA6 57DD"
	$"35BE A0A3 A4E5 9D9A CC23 B36F 5F4D 9835"
	$"6F79 F879 5D1D A3D8 B4D5 9347 DA2D BA63"
	$"4C5B 69AC 166B 6471 5159 ACF6 E681 1474"
	$"F1B1 B106 332E 0728 002F AA7C 78D3 32B9"
	$"1A19 567A 745A 18DD 82D7 F9C7 9D33 DA95"
	$"6CCD 4352 B38B 9EEB C93F 3F28 312E 739A"
	$"627B 496C 80F3 2728 2D72 B49C 8141 4F86"
	$"1F34 E38E 7775 BE9B 3C60 50B7 CE5C 203D"
	$"40C8 F89E 088E 695C 919A 80D2 400E CBEC"
	$"F772 298F 5C7E 09C3 24EE 8741 9DAD 6DF1"
	$"ECB2 3A30 F32B 83DD 0177 7616 2B48 CA8E"
	$"0EC3 3042 1A4B 4AE3 F8AF 0D98 E89C 01AD"
	$"A38A A699 D1CC AC8A 4448 2361 73C2 A7B9"
	$"E58C 702E F6E0 4629 CCA9 E23B 34C6 5562"
	$"198F BDD8 DA42 4904 E5EA 9A6E 588D 3BAF"
	$"B1D4 7AA2 DF3B 6968 D950 5B9E 29A9 6A63"
	$"91CE 7B5C C272 96BB 0CC5 C1A1 081C F0C4"
	$"AF19 0F55 7B7F 4EB0 E662 2A4A E4F0 C2FB"
	$"BCD4 1D3B A5FA F5F9 6700 FF00 D26D 6C22"
	$"A037 97C2 CA7A 27DC 4D8A 81D6 F734 48EA"
	$"CB33 8F71 9983 8C6D 313D CE76 50E2 C726"
	$"600E 0806 1C79 FF00 57E9 CCDE 4DED 7065"
	$"C71C 77AF 824A 51EA 2E9B F719 95D8 1AE7"
	$"A8DB E287 BD62 AD75 5E9F D69B 617F B83A"
	$"A2CF 5375 B6D0 9FFD 4E85 C1C1 F4A7 050D"
	$"3228 729E 484F 4C0F 3E27 723A AE5E BFF2"
	$"D473 1B97 7777 7F76 3168 CD52 0EA7 CF4E"
	$"4C33 EFD8 070E C52B 8087 8B6D B596 8FD7"
	$"6CCB 66AD 6B2E 912C 72D0 D7B7 B720 735C"
	$"4E0D 2157 974F D878 6B37 A756 A3FA 9A83"
	$"C222 A957 63A4 D877 6ED5 14BA 7E82 7272"
	$"C33B 0047 3B34 65A1 A080 5BC8 0E44 202A"
	$"7E3C 4553 2E73 CB45 FB6D 3DFB 1215 4E73"
	$"265F 0882 9BA7 AE6A B50D C66B 5514 CB24"
	$"EE7C 71C9 99B8 9C42 1009 1875 271E 2E9A"
	$"3E94 402E 74D2 DF11 0CE6 2A10 E416 16FA"
	$"43A3 B21B 6044 02E5 71CE E7C6 FCD9 C85C"
	$"7F33 79BB 3262 3027 F870 CEB7 9CE4 FC04"
	$"CF90 D9F5 8551 1CB3 16B7 744C B8E2 A5A5"
	$"A789 B2C0 AC08 446C 5C01 04F5 F821 253A"
	$"E38A 7153 1539 9B30 90DD 5729 91B5 CB75"
	$"938C 2135 0DC9 8F8E A190 FB29 DC1F 990A"
	$"0272 39CB E880 0F80 FDDC 2A93 14C8 43F4"
	$"1802 2C47 0D51 119A 3AA8 E507 3071 68C8"
	$"D380 20F5 4E83 A9FE EE27 322A D783 DB6E"
	$"E44B FE0D B800 D886 BAEA D2E6 CD51 959D"
	$"A89E 1A8D C465 EA54 28FE 607A F1A0 E4DF"
	$"4C80 D067 C16D E3C6 6821 7345 CD24 A4AF"
	$"BD2D BF65 E308 8B7A BA9E AE08 A50E 6888"
	$"479D C026 21D8 9425 171C 484C 0717 9D2E"
	$"835C E06F B5B8 DD15 4D43 3640 2276 97D3"
	$"7203 C226 EA5A 66D4 57BC 4A11 A087 BC0C"
	$"0A1E B81E 67E7 D797 41AA 6920 8684 BED6"
	$"FA46 3FAD 3C9A 8A7B 6D63 0636 49E2 A70E"
	$"85B1 A020 6591 B8A0 5554 1F14 FE1D 781B"
	$"55CB 9A85 76DA 7127 A267 9B44 0030 9F1E"
	$"DB25 F0B6 FAFA A989 CED7 3A36 046A A34B"
	$"8F27 0288 429E 78A1 FD9C 418D 3F85 AD2F"
	$"0489 D7EA BCDB FEB2 FBE3 7631 BBB3 5FDB"
	$"FABF A7F6 2665 F8A2 AF2E 5F14 E0EF DBB3"
	$"9705 DBDB 6DF1 19FB 9A9E A736 1E3F 28FF"
	$"D0B5 EBD4 7137 44D8 2B5E E6B0 8A78 5F54"
	$"1E58 81C1 98F3 71C4 020A 72F9 F1F8 F19B"
	$"CC53 194A 0E22 F0E5 4BD2 6981 DF87 048F"
	$"D20D 369B CEA3 9860 DA00 F0E1 B36C E40C"
	$"51BF 9DFA 060D 75A7 EE51 CD4F DCAC B5C8"
	$"2E56 EB90 6BE4 91C2 5685 89A7 1248 05A3"
	$"1772 53D4 8139 ECAF 51B7 4BD5 C96B 89A6"
	$"E241 1BB0 36F0 8D53 DC0E 913A BF4F 1A65"
	$"3D40 039B B645 5178 2CAE DB74 D5D6 5F19"
	$"B5DE BFDB 7DBF A7A3 BAC5 A269 296D D4F0"
	$"5D23 B9B5 CE9D D0BA 1672 8DC5 AECC 5B94"
	$"286A 84E4 A0A3 6752 6375 0AF5 790B C179"
	$"23BC DC97 8FAC 13FF 0032 C964 F214 A8D3"
	$"72BF 91A1 C972 868F AF96 C886 7BB3 B19A"
	$"7F49 55DC B426 9CA7 AC6E A40D ED56 6A89"
	$"DC58 E32B DC11 4B91 4170 4C4F F671 AF74"
	$"A6BD 5DEC F52B A7A6 3037 F62E 3C30 8CD7"
	$"5E79 CD10 FA2E 22A9 B92E B8AE EE18 EFC6"
	$"202E ABD3 9BE3 B5F5 F150 6A5B 3086 DEFF"
	$"00D7 A4AF A921 B048 D739 0A17 0425 79E3"
	$"FBF8 DBF4 7CA6 85A9 B3FD B540 5F88 BADE"
	$"318A 66BA 8BAA 34CA A454 1CCC C0CB CB0E"
	$"07B2 31D2 F60D 49AF 65FA E9A1 96ED 454E"
	$"C0D6 48FF 00D1 8632 A494 CC1C D288 715F"
	$"EC52 7387 4FD2 C16B 4861 F3F2 B611 F513"
	$"A9EA C43A A2B8 6CFF 0008 18C4 FBD8 FDB1"
	$"B7CD 74A4 A3BA 44F9 29E5 6C6F 8DAD 0F8E"
	$"1924 CD83 7DE3 DED0 84E1 D0F4 E5C6 15D5"
	$"9AF3 9C0B DA51 AB76 EB5D D91A E683 A7B7"
	$"2ED0 D239 88F0 B796 D8B7 9DB8 D889 AAA5"
	$"A2A2 B4DA 9AE7 1CD3 4145 48D4 4CC1 A0B9"
	$"C020 3F30 0A93 892A 9C64 6C0E CD55 E60E"
	$"2F27 0C2F ED28 A71C 05CA 4C2F 3DAC D2A0"
	$"C702 537E 29B3 B2D7 08BC 2F17 FC75 7698"
	$"B752 DEF5 5D39 AC92 9E16 B292 8E6F 7303"
	$"4173 848C 3C80 F792 495C 4F41 8BBD 83EC"
	$"9FB5 4FA6 5B9A CC8B AE12 94FC FBA4 536C"
	$"791B DD5F 707D 771A 140A 0599 C57B 767C"
	$"3824 FA78 1116 B490 052B 9D2C 6D21 8DC6"
	$"3716 A9F4 1865 4189 45E3 D70D 0D03 608F"
	$"3DFE ABFE D1AF 2174 2192 2B49 2639 4459"
	$"98D7 10D0 81CE 2115 5714 FDDC 36F7 9B5A"
	$"C76C 3A58 48DF 6101 E370 01F2 E62D 616B"
	$"4639 9158 30C5 7E08 3107 D3D3 8649 8486"
	$"8016 E55B 7DC4 7CE9 98E9 632F 0721 72BD"
	$"8E24 A023 2170 0109 2428 387F 1E06 7940"
	$"96BA EB7C 956E 6916 F859 2327 39AC EE17"
	$"30B4 B9AF EDCA 039C 5CE7 02D2 0125 C3F9"
	$"8E3C F819 E7B7 B2DE 30E1 9485 BC2F 80FF"
	$"00AD 2451 358E EE4B 337B 3DC7 0FF2 C9E8"
	$"4343 9ADE 6092 A4A9 4F98 8F70 22FE F85B"
	$"4DE6 DF0F 28C6 6960 51DD 7FAB 212D 2D8F"
	$"172B 87E6 5438 F21C 330E 10BE 36DB 69C0"
	$"6AB9 A9E9 A17D 404F D3CC 6570 04F2 04E5"
	$"3940 7664 702D 518F 2E67 816A 5441 3282"
	$"D6F8 185B 2993 BAD6 DF0D 66E4 EE76 99D8"
	$"5DB6 D61E 42EE 6BC4 36CD 2145 357E 95B5"
	$"54B9 C5CD AAED 97B0 073D C734 CFE6 14A8"
	$"013A F1CC DE6D 9A4E 41F9 FCCA 07FE 960E"
	$"370E D498 EE9A 44D6 8FA7 D7D4 B394 F239"
	$"76DF FACA 4C0F 84BB 1665 0471 C7B2 5B2F"
	$"BBFF 0077 CF32 F566 B1D6 7709 E5D0 569A"
	$"F75D B5EE A3AA 2238 28A8 A3AC C29E 18CA"
	$"9272 B504 63A9 FC78 C372 194C CE63 32EA"
	$"2D23 D7AD F9D4 77F8 5A71 2702 4485 C7B6"
	$"51E8 ED57 3991 D2F2 14EA 48D1 A7F8 D36C"
	$"FF00 2722 CC62 167E 0504 765F B73B 71A2"
	$"B697 43E9 ADBD DBAB 5C5A 7B48 6978 A3A0"
	$"B2D1 C118 23B5 835C F932 005C E7A2 BC83"
	$"F1E3 44D3 74CC B647 2DE8 D06A 3029 BD49"
	$"26F7 15BC 9C6F 94B7 C79D B5BD 7731 A8E6"
	$"5D5E BB95 C7B8 0FA4 2E1E 656B 7B51 468C"
	$"690F 285B F95A CCE8 031A E3C8 1F68 1D0F"
	$"04B9 E08B E56B 7C62 2446 932C 71B1 C5EF"
	$"CF98 2B1E 0979 7340 6825 5328 18E3 D381"
	$"9CE5 2561 6984 682D 6C85 D1BD 83B2 43E3"
	$"9438 6519 61F7 6002 1401 DF9B 961C 325D"
	$"8C74 5BBE 347F CC44 E84B DA49 525E C73D"
	$"A554 F31E E605 F706 A21C 71EB C315 4B50"
	$"ED16 DFC7 E70F 2479 4E5E F6BA 2218 4393"
	$"3769 CAD2 18E2 5410 F715 19D5 53F8 F02D"
	$"671B 4FE0 9821 03E6 BD0D 48F4 B44C E111"
	$"6974 731E EB9C 5AE7 1013 3AE7 0817 9302"
	$"1387 AF41 9F54 83E1 DDBB E68B 3949 0B8D"
	$"244C 425E FDA4 6D3A 8223 0D6D 134C AF70"
	$"7830 B636 C9DC 05ED C0B9 09F6 AB55 172A"
	$"F424 7101 A869 B4AB 3487 013B FB6D D97C"
	$"4D69 FAB5 5A0E 05A7 CF74 573F 931E 365B"
	$"6FD4 3590 D258 63AB 86A4 3A27 4D1B 4472"
	$"4981 6B44 6F6B 1E14 8211 4226 2073 E313"
	$"EA5E 8573 2A97 D06A 2EC9 7199 2249 8AC9"
	$"00C5 637C E85F 715C 4015 1D77 70B1 EF53"
	$"7DD1 411B F5B0 772D A3AE 8EF6 CFA8 A78B"
	$"3321 A3D4 96C2 F867 8D09 6E59 4355 3295"
	$"042F 355C 78AA E9D9 EAF4 EB1A 1580 9DC2"
	$"F046 0871 E225 7112 9C6D F4B3 3433 94BD"
	$"6A6E 00E3 34C7 61F2 33BF 6A44 64D4 1E48"
	$"EA8A 7A49 2C5A 8AB4 DFE9 5CD3 4F1D EED6"
	$"8F92 2118 3FE7 9388 F82F CFA1 E2D9 4FA4"
	$"8567 7385 6EE3 719E C88B 3AD3 2892 C08E"
	$"C3EA B6F8 C39B B19A 2A0D 733B AFD4 D531"
	$"5CE1 8B2C F2C9 4E1A D6B5 84AF 2248 C4B8"
	$"6182 2FC7 88CD 7F35 568A 530D 2D5D B8F0"
	$"BB08 2F25 498E 697A AAC5 8C5A 2C34 367A"
	$"068A 7676 2490 F6DC C0D2 5CCC 0104 2803"
	$"15C3 15C1 021E 29AE 04B9 4953 03BB 34AE"
	$"4131 6FAF 9DD0 5B72 9E69 A463 1937 204E"
	$"520A E538 053E E418 75F9 E38F 1CAC DB5A"
	$"DF02 BD20 D005 B6DA EF92 66AA D0E9 239A"
	$"69D8 C114 6E32 C60F 470C 410A 027A 0231"
	$"5E58 63C3 8C04 0582 5B70 8663 5651 C0F9"
	$"2682 321B 9465 CA02 E04F B712 3A11 CB9F"
	$"131A 738E 2146 CDB6 EE84 D440 6233 EACD"
	$"36DA A8E6 99AD 4901 1DE6 48BE A796 3D4B"
	$"B0FE EE56 1C9E 72E9 DADC 3158 0DEC 0E17"
	$"C463 D63A 65B5 2DA9 8D94 EE89 CDF6 9320"
	$"3814 54C7 9E38 A13C 5F34 9D4F 9481 151D"
	$"4B4C 5524 71F9 FCF7 4F84 49D5 5A06 5754"
	$"F7E3 88CA C08D 2F66 554F F174 4C4F EDF8"
	$"71A8 699A E0E5 426D E719 8EB1 A1BC D451"
	$"0576 BD25 3281 D92D 7057 246D CC79 6270"
	$"3F1C 093D 783F 31A9 838C 8DBE 1006 5F20"
	$"86E3 6B79 4A1E 1D2B B6D3 DC25 6010 A302"
	$"1079 01EE CA7D C029 C062 1A53 9F2E 2B19"
	$"FD5C 4C02 B6D9 F731 67CA E985 E012 2D3C"
	$"6EF2 8935 FF00 4469 7FD1 DDCE C7EB 773E"
	$"A7B5 9BDF 9932 FE6C A9CF 04E7 FC78 AEFF"
	$"005F 773A F314 B966 8BE4 9E3D 9163 FF00"
	$"8DB5 5107 322D C153 CFC1 13FC D28F FFD1"
	$"B33D C1D6 14B6 ED3C DA4A 48E4 BB55 D33E"
	$"36C5 63B6 ACB3 085C A0B9 A31C C07B 41F4"
	$"2BD7 8FC7 5A9A 53EB D26D 32E0 C6A4 8C91"
	$"2FDD 2B6C 8FD2 4D2E BB69 E61D 55CD FCCE"
	$"D51F 9765 C538 1943 4B66 DB9B BEA0 D434"
	$"15D4 FA5D 9719 EA69 CDC6 8DB5 B482 4399"
	$"81BC D8E7 3183 1206 2E0D 4F97 131A 174E"
	$"50A4 0D52 0B80 9949 6D53 8A19 1492 C8DF"
	$"38FB A87A DAA3 E99A 62A7 2B66 1095 96F9"
	$"CEF1 8CB0 22F2 EEDB B6FB 575F EE76 EB45"
	$"8349 4DA8 6E9D EFA8 736D 90CC DA7A 4CB2"
	$"16FF 00CD 3DA5 A5A8 D4CD 9490 7138 2006"
	$"CBA5 E5CE A554 B325 9771 2C40 E711 2545"
	$"EC9A A150 A0B5 02A9 348D 4355 A193 617D"
	$"7AC1 AC33 0240 E0A8 14AE 17E2 09B9 006D"
	$"FCA5 F127 73EC 5A68 6A7D 31A3 61BB 5CB5"
	$"14DF 4972 BD45 1E7A 6A37 3580 3165 0D2E"
	$"FCD8 1057 AE1C D247 5AE8 1CDE 5397 3198"
	$"6BFD 31DC 65B2 5DE8 9705 1282 FA1B DCAD"
	$"3B31 50D3 6D40 DD9B 495C 386E E375 F0EE"
	$"CBE0 0515 57D1 DCF7 6AED 55AE 6F4D 262B"
	$"7D09 C28E 32EC DFA5 955C 114F 34C0 2F40"
	$"BC0D 4FA9 F334 0119 5A7E 932E 3B49 BA57"
	$"7877 0B8D 8339 A8D0 CC92 6ABB 9C89 8C3B"
	$"53EE B29E 3026 F1E1 9E98 B34F 0D63 1DFD"
	$"0606 11F4 F4AC 8FB5 046E 3834 76E3 6052"
	$"3052 07E3 C035 35AA ED7B 5B51 CAB7 A953"
	$"3D8A 7EC3 6C49 E575 A696 7E0D D972 0BB6"
	$"A6D9 F19F 6BB1 B55E 25C5 5D77 89EA F34E"
	$"0A46 DA38 1EE9 5E40 8D5A 4B81 CB8A E04F"
	$"45E7 8F03 B72B 9ACE 3805 553B C9BF 724D"
	$"202D 4BAB 6965 A91E 5002 7003 CEE8 BD0D"
	$"88D8 DA6D 3968 A163 EDCC A465 224F 9101"
	$"9E57 7EA1 1DD7 10F4 28D0 8AEC 1060 A00E"
	$"3D67 ED37 B4ED E563 EAD2 E46A AA19 9376"
	$"F442 7045 18CE 71E4 8EBF EBD3 56A3 9AD7"
	$"7313 DC38 797D 2263 C0DA 78E3 702D CD0C"
	$"0C6F 6E2C DEE6 8395 BF98 0F88 453D 0E18"
	$"F1EB 1A14 1B41 8D63 6400 B5BC 6307 AB55"
	$"CE77 338E CB5B CA3D 6CCE C92C 91B1 B0BD"
	$"E7B9 9DBE D545 2402 460A 08FF 0063 8AAA"
	$"392D 6BED BD2D 22DF 1B63 8465 2318 1435"
	$"EF91 CD0D 8C32 1421 5CAD 0154 A86E 6455"
	$"EA9C 0EF2 1671 DE40 2785 B6DB 6E31 93E4"
	$"F696 F7F3 31CD 3087 9123 439A 15B8 8734"
	$"0E4E 0701 F8FA B4E7 2DB6 F1B7 1852 2C92"
	$"DE1F 0EE8 0F21 91B1 382A 4AF0 7334 1249"
	$"7969 2438 9E5C 9310 7024 7AF0 23CF 7F85"
	$"BE1E 0B68 2E37 4ADB 6D74 6725 4C9D E2D1"
	$"2319 0265 0035 8E04 7318 3421 C4FA F3F4"
	$"E042 E4B8 C2F9 550F CEC9 F4C6 03B9 B909"
	$"EF38 B9CF 7870 2D47 1003 7331 FEE7 02A4"
	$"FEF4 C303 C32E 855E A92F BF74 E359 91CE"
	$"8623 DC6C 2E61 6CB2 3E37 3420 89A5 C731"
	$"7005 0730 4638 F5E8 D31B CC51 476E 1C6D"
	$"8428 1014 DF6E 3F4F 88DF F4CD 06A9 B4CF"
	$"1D5D 5C82 92BB 30A4 A86B 7248 1331 EE7B"
	$"D149 2700 79F2 5E27 34DD 1E86 732D CE41"
	$"4700 5A71 963B B70C 210F CCBB 2D55 AE59"
	$"2DDB 772C 73AB F770 B379 0FBD 3BB9 B1FE"
	$"016D 9EA0 6EA8 B8EB 09DB AAAE 8CB1 CC4C"
	$"B416 BA69 9B03 A5B9 3896 46C4 6871 F738"
	$"FA90 38C3 3AE6 B67E BE7D 996A 8457 34FF"
	$"0040 18B8 AA17 25C5 2F21 6F97 F9BD 0DED"
	$"F7EC 32D9 0AB9 D20D 3E61 F928 C024 9B79"
	$"26E0 8648 0F65 C2F8 9FE2 EEDD F87B B2FA"
	$"6367 76EE 8E37 C76E 8619 355D F837 F5AE"
	$"B720 C065 9E47 E2E2 D539 583D 0732 4F16"
	$"0D27 4B66 4689 65F5 1DFA DD89 D816 6A1B"
	$"34C1 5657 465D D53D 4D5B 53CC 733A 4C6F"
	$"E918 0E1B CF89 BE66 7211 F216 39E4 41DC"
	$"0C71 618C 069F CCE6 904F B9A0 3B31 0E07"
	$"D39A 2F07 543F 9131 5A2B B6D6 B631 EBDC"
	$"2405 AC93 B8EC 9983 4146 B9AE 24B7 1527"
	$"1CA3 11E8 7A1C 46A9 514A AC28 8911 009C"
	$"5F14 AE7B FB99 630E 2C67 6E48 CB47 2709"
	$"1C4A FF00 2E20 82BE 9C87 0CAA F18E FA63"
	$"646C F643 1B9A 2A16 36BB 266C EDCC 1D9B"
	$"3397 2B79 845C 7E2B C0EF 7916 B5AE 9C3C"
	$"91A1 F9E2 8639 5CE4 8D8D 3236 2701 9814"
	$"CE32 8504 2638 2F20 9C0A F2B2 FAEC E3E5"
	$"79C3 1508 C9CF 79C6 A488 9918 8E58 2701"
	$"FF00 9C9C A8EE 5F8E 007C 940E 057B 95D2"
	$"B79D A6A6 1C01 0468 88F7 190B 82A3 8047"
	$"B7DC 5E50 B42C 9185 0472 2481 D79F 01BE"
	$"A775 AD38 7630 2D8A 2746 E8A9 DC99 9AF9"
	$"4C2C 5CA5 A5C1 3285 1CC9 F5C3 F0E0 7F52"
	$"612D 69C7 4845 C202 5751 52D5 82CA E224"
	$"8438 8901 6812 02E2 1AAE 2390 21BC F0FD"
	$"9870 2566 072A C114 3305 8656 BE23 D6BD"
	$"F1D3 406B BB7D 6D06 A2B3 4172 B45C 3347"
	$"35BE BA08 0B5C D25C C0D7 8700 8E70 6919"
	$"F020 7242 A78A D66F A668 557F 3168 94FB"
	$"6FF3 24A5 C554 8317 2D3B ADB3 5966 80D7"
	$"1096 B637 611C EAF9 B9F6 7ED4 5B7D 59A8"
	$"370F C729 A4AA D3D5 BDCA CACD 1B33 C3CD"
	$"3A01 2FE9 1949 7B99 97A3 874E 6A80 C934"
	$"BE99 6F30 E667 88E0 62F7 A3F5 6D0C E2B5"
	$"FF00 8543 7917 6185 C3B3 B941 8E7E 06BE"
	$"DF4F 1835 9CD3 4515 5E8C B8D1 CAE6 88EB"
	$"44BF 4554 E6B8 6668 6B8A 3511 7928 FDBC"
	$"4FD4 E9CD 335B A243 DCAE 02E2 1088 7335"
	$"AFEA 3A55 51F8 FF00 2CE3 FA81 4DF7 6E8B"
	$"58D8 3FB8 E685 DD6A 5B7E 9FDD 20DD 03AC"
	$"6568 8E4B CD5B 9E28 6B9D 8342 4921 706A"
	$"F4C0 0F9F 238A 7577 B559 AD3C F3E5 DDEA"
	$"52DC 148D DBF1 ECEF 8D0B 45EB 6C96 6886"
	$"BC72 5618 1FD2 BBAE EE29 38B0 187E 86E0"
	$"21A9 A678 A8A7 2D0F 8E6A 3709 227E 76FB"
	$"5CD7 AB91 5702 31C5 3E79 9B84 EF8B C39C"
	$"F015 7BED 6BD5 2E24 BD56 3A2A 59A9 CCAD"
	$"85F2 9706 0CC7 2B5A CF71 3CF1 18A1 C7AF"
	$"3E3A 3988 2524 BF6E D30F D370 54FE 2F1C"
	$"3E8B 0CCD DA1F AA98 C9DB 63F3 FB44 F8B0"
	$"B99F 9570 0D52 7280 4FF6 704D 1AA5 A116"
	$"1EAC C292 13B5 ACB0 D56A 0A47 D404 0D0F"
	$"0C72 490B 5AC0 A9D4 8C41 E498 7130 CA8C"
	$"A69C B236 EDF1 C206 245E 6238 EAFB 23E5"
	$"9A4C 9189 635C 8148 6B95 A0A1 20B4 2A0E"
	$"671C 14F2 038B 569A F720 24A6 CC3E D654"
	$"8073 9481 121F 15EC 86F1 9A19 F737 96CD"
	$"139F 1BB1 123F 0450 5C3A 9427 0C57 109C"
	$"5928 6A1C B889 5B8F 84A2 B757 4EE7 7272"
	$"933B 4F86 D335 DA12 1C0B 2EC7 D1CF 217B"
	$"620D 6E70 E490 B83D 8020 0865 2402 AB8A"
	$"8FD9 C9BC C750 0689 DBBB B3C6 174B A600"
	$"4FCB 8FD2 50EA FF00 A434 E68B B6C9 70A9"
	$"0D22 11DD 3D7F 2927 A214 C792 7F1E 2B95"
	$"756A D987 F282 8A7B 3E9E 22F2 9845 872F"
	$"A6D2 A414 098C 71B5 8C47 2FFF 0021 28BF"
	$"D59F E9BE FF00 FE9E BDBF ADEE C699 BFCA"
	$"5545 F827 25EB FCDC 5F7F E319 8FD8 F324"
	$"D553 B385 C9BE 2B3F D629 FEF9 5472 A22D"
	$"B7DB 18FF D2BC 4DAB D8BD 1BA2 6E34 B70D"
	$"6753 16B3 D452 C024 A5D1 F439 A414 D397"
	$"872B DC1C 8D42 E18E 6451 D10F 1F9A 3D2B"
	$"D2B9 2CB3 87AA 4D57 B00E 5A68 7803 CC06"
	$"CF35 B923 D69D 4DD6 79CC DD22 CCBB 7D2A"
	$"60FE B371 0980 3B53 8F62 44CA B4E8 6BB6"
	$"AF64 0ED4 748D D3F6 74C2 DD6A 8DB1 CB2B"
	$"0039 03DC 0723 D50F EE4E 378E 9FF6 E5FA"
	$"8340 A8CF 469E 01A8 A975 FC30 0776 D8C6"
	$"33DD 4D4B 22EF E413 51E7 12A4 0E03 E70F"
	$"BE9A D396 8D2B 6E8E CF66 B641 4342 D01B"
	$"20A7 8D8D 73C3 4737 3909 551F DC3A 71E9"
	$"2E96 E94C B697 96F4 2952 606C EE17 AEDB"
	$"ADC5 6339 D5F5 4CD6 69E6 A547 B9CF 38AF"
	$"909C 1B5D 2CF6 FD43 6DAA B3DD 690D 7515"
	$"C1AE 8E6A 4CA0 B58C 78ED 1C83 E5C8 FA8E"
	$"2CBA 968D 96CC E58D 0A8D 0EA4 4211 2F0B"
	$"908D F7E3 00E4 EBD5 A358 546B B95C DB90"
	$"9F1F B444 4BB7 893A 7A3A F966 B0DD 1D4B"
	$"6D94 FD53 68E2 7968 6019 4E57 1398 A900"
	$"62D1 F145 1C79 835D FEDA 29BE A934 2B10"
	$"DC36 8DFB 305E CBEE 8DB3 25EF 4D4F 4C0A"
	$"8C57 0179 9F94 05B6 7871 A223 B83A E979"
	$"9DF5 F72E E771 B555 80BA 48C6 528C 6B8B"
	$"8068 61C0 0C79 7AA1 E3EC 87F6 CD96 0FE7"
	$"AB50 B8A2 29D9 DD8D 96F8 5677 DF1C D3A9"
	$"F231 A1AD DD72 EDDF F0F0 87FF 004A 6CDE"
	$"90D2 AE8A 0A0B 7C4F 7160 8C48 C6B5 C5AE"
	$"05C8 E682 8010 001F 01D7 8D8F A6FD A6D2"
	$"74D7 7336 982E 1895 36F3 C233 9D6F AE73"
	$"D9C2 799C 40EE F9EE FBC3 A0CA 534C 1B4F"
	$"4DFF 002C 1A4D 300F 5011 AD6C 80FB 4732"
	$"4292 397E FE34 86D3 0C08 D083 75AD 3BE2"
	$"9952 A39D 336B 7646 4F0C 91A0 3481 396E"
	$"50E6 939C 905A 5426 5398 E38A 2FAF AF1F"
	$"3881 090C 030B 63E1 6C23 506B C18A 36B1"
	$"A004 CF10 6979 C140 0502 852E 23D5 7D30"
	$"461C E976 FC21 4DD8 B2B4 BCE3 37B5 8E9A"
	$"4022 11E5 6C6F 8C10 872B 0FB8 80B9 48C0"
	$"F5C7 819C E26D 6B5F 1F02 B7E1 F3C6 DF08"
	$"F9F9 0C71 E479 273F B9B9 5B1B 1D98 16E0"
	$"5B95 1004 217F 8703 D421 7EB6 B243 ADA6"
	$"2EB5 B678 EC8D 2F69 8DC6 99E3 DC40 6B88"
	$"7358 1CA4 B866 CAA1 71EB D3E6 BC08 F30E"
	$"53E5 33BE D878 DAFC 6485 A4B1 F1B8 383B"
	$"F265 2A48 C32A 8692 7326 070E 18A8 EC61"
	$"54E5 636B 7641 75C2 E149 6AA1 AFB8 574E"
	$"2968 ADCC 3595 356F 7232 3642 082E 24B8"
	$"853F 3E7C 466A 39FA 595A 0FAD 54A3 1809"
	$"27E1 BF64 1194 CA54 AF51 B4DA 15CE 2805"
	$"F6B2 DD15 CBAB 3C9E B7EB EA9B 9D9E C37F"
	$"8A99 D475 669E 828E 8E56 B44D D9F7 B4B9"
	$"D202 3366 0DFF 006E 7F9F DEE3 7BE9 9ED4"
	$"2B8A 797A A58D 07F1 6B48 425A 5412 66A2"
	$"58C7 AD7A 6FD9 F769 ED65 6AB4 B9B9 82A9"
	$"064A 376E FA6D 833D 47E7 4EF2 5B34 D52E"
	$"CFE8 1DB9 8F5A F923 A9B3 DB34 3DEE 8CB3"
	$"FA65 0528 6E47 57D7 652A 453B 5C1C EC84"
	$"0721 0DC7 0E37 DF6C 7FB8 CD5F 5DA0 7206"
	$"8AE6 D13D 41FA 6E55 22EE 6BF6 054E 3143"
	$"EA2F 6574 ACA3 86A3 EB26 4DA4 7E13 E6E6"
	$"3809 5C4F 6800 930B AF15 BC3F B4F8 FB5B"
	$"A937 2359 EA09 F743 C84D CD4A DDC9 DD3B"
	$"E3E5 9279 672C 05F4 B4AE 907E 9D3B 5C72"
	$"B465 0435 01CC 8BC6 91A6 F46E 5B29 5D95"
	$"C92E AC15 5CB2 5715 2831 C4AE D9C9 6287"
	$"D53D 7998 D469 8A0C FC32 ED3F 8B37 5C17"
	$"6CA2 64B9 90B4 8313 5143 6257 9048 6F24"
	$"2E47 1FEF 238B 01A8 108B 81DF 6F8F 9C51"
	$"C5C9 18C8 8EA8 6B64 8C99 2257 B5D8 12D0"
	$"8188 5716 FC87 A7CC 703D 4782 152D 6487"
	$"40D9 0199 2974 7188 D5BD C8F3 3435 C736"
	$"4442 0123 9150 31C4 AF0C 18E2 0B61 6E1D"
	$"F1A9 91D4 1929 84CE 6202 5A41 5736 50E0"
	$"4381 2FCB 82B4 E00E 1E98 70C5 4AA0 0244"
	$"3A44 6A74 A277 B4B6 7333 E66A 873C 39AC"
	$"0439 C548 00B9 70C3 28CD 8703 1201 4DE9"
	$"BF87 CE69 3EC0 A448 CEA0 F721 7B73 9800"
	$"7079 C99C 9730 2127 DED2 7AE2 113A 72E4"
	$"0B80 3763 6DFE 3C77 C3AC 0419 5F1A 0168"
	$"9046 1EE6 4418 0164 0DC1 C481 99C0 3150"
	$"1CA0 823D 4F5E 43BD E082 4DAD DF75 EA61"
	$"CE5C 23C3 DA2C 10BB 2B14 09E6 718A 3CCD"
	$"6FB9 0238 9CA9 9B15 1D7E 640D 52A4 A76B"
	$"61BA 50A2 0953 01D5 4452 E2D7 533B B403"
	$"9BDB 0E39 035A F2D5 56B7 DD8A 0F9F 2E18"
	$"73D6 14D6 9DF1 F46E 9637 BE2E DA09 4E78"
	$"9923 5306 1418 0284 B490 98F2 1CC0 4E18"
	$"925F 1F20 31EB 039B 231B 1A46 B1FE A358"
	$"D24B BAE6 21AF 3800 0805 A898 0C78 43DC"
	$"823A 0154 80F3 D2C7 58D9 21A9 80CB 0CC1"
	$"D4F5 3139 999A F0E5 40E6 925B 8624 9401"
	$"483C B86C 9D90 A051 0AC5 71F9 8BF6 EDD9"
	$"EF26 74BD 6B1D A628 6DBA 81CD 798A AE89"
	$"9135 C1ED 638B 5CE4 63FD 7F28 29CC F352"
	$"0575 0FC8 3992 70B8 88BB 689D 5D56 834D"
	$"3AE7 998E BC19 EF98 F8DF BD25 1CAD F951"
	$"F696 DE5F 1E28 25D5 B4BA 61D7 FD29 4CF7"
	$"4B73 7D98 991F 4480 38BC 8395 CD6E 050E"
	$"3F12 311C 4C64 7A9F 3344 9152 60E2 9E63"
	$"E23C 22F5 4696 433E 8291 0396 E078 5E0F"
	$"1C3C E22A ED8F 941B C3E3 5D45 2DAE 2AD9"
	$"7516 86AC 7F76 AB4F 5EDD 2B8C 318C 1ED8"
	$"8BCA 853F E2F4 1D38 8AD6 7A33 4ED7 5850"
	$"7255 1716 CBBE DE71 64A1 D459 8D29 C39D"
	$"5EC1 B677 ECB7 1174 5AAE CFF9 41B5 DBFD"
	$"44C8 ED17 6659 B524 71E4 ACD3 3737 0CD2"
	$"1440 1A5D 9413 9890 39E0 4A8E 5C62 7D4D"
	$"D1D9 CD2D E455 692D C08F 94E4 9F35 C0E8"
	$"9A27 5365 B516 8752 7710 6FF8 5D2D BE30"
	$"EFDF E823 67EB B5D9 031A 0BA6 0415 0420"
	$"2085 04AE 1D7D 1507 153A 650A 459F 9801"
	$"3C21 B1B8 B647 F70B A363 497F 79CF 8416"
	$"9FD4 2E7A 00A5 0607 AF2E 25E9 0699 8B25"
	$"BCE0 4602 F9CE D3F2 8656 F96C CF52 1D18"
	$"E441 9118 ADF6 E230 F739 41C3 AF2F 8713"
	$"592C D100 832B 777D F186 C85B E0DA CF6A"
	$"A38C 9754 112B 98E6 B95E 13AA E071 4403"
	$"FE1C C3D5 336E 7210 5374 AC57 B12E C638"
	$"8903 EEDA C6CB A6A9 CBE7 3DB6 B062 0398"
	$"D501 A1AA ABE9 813C BF0C 7862 9655 EF28"
	$"02DA C7EF 0A2F 6B42 9881 1BF3 BFD2 DC9B"
	$"2DBE 8241 D825 EC2D 6B9E 1CE2 840F CA98"
	$"63D4 AAAF CB8D 37A5 FA44 7307 BC27 8FDB"
	$"CA29 7AEF 51B0 34B1 870E 16E0 A220 2FF5"
	$"A9FF 00AA 7F52 EF95 CDDE EF67 3EAB CD79"
	$"7C7D 38DB 3D2A 5E97 22DA E8C7 3FA8 D6FD"
	$"C2F6 2FD2 3FFF D3EA EB44 ED95 0DA2 28AB"
	$"E9AC 66D9 34A0 3669 E472 CAF7 2349 2E00"
	$"7E24 900E 1C60 DD19 EDBB DA8F 147D 3129"
	$"937D E014 BCED B809 C5C3 A8FA BABD 6A9C"
	$"BCE1 C3E0 6DF6 87A6 969D AD64 6F92 5F69"
	$"38B7 293D 5712 0B90 1429 E9C6 F9A7 E9BE"
	$"8B00 BFB1 3C2D DF14 4A99 87B8 CA04 3630"
	$"7BD9 410F C8C3 958E 0E6B 9983 4A1C AEC4"
	$"A118 753D 7143 C841 2819 C6D6 B631 93C9"
	$"CBDE 680E 8A3F 7B09 723D E1CF CAAA 84AA"
	$"8E78 1C79 721C 386E 8513 2B5B E71B 7281"
	$"0B5F 1113 B599 58EC B128 F693 800F 3862"
	$"42E0 BF8F 1C36 B5BC A384 F65A DE5B 2343"
	$"657B 1B3B 0959 497C B91C 5A47 3627 3033"
	$"14FD B827 C3E1 1F0D B8C6 5276 48CC E706"
	$"31E3 2C66 1660 0172 E019 9834 A2E2 17AA"
	$"85E1 2A96 B610 9522 4232 735E E683 1C6D"
	$"FA92 1C18 03D9 234B 0BC4 7949 240C 17A8"
	$"3C93 E1C3 4E71 26D6 B718 F8B8 E301 1187"
	$"DC63 7766 20F7 3007 0E98 FB82 9C54 6255"
	$"7922 60AC B891 1DB8 CCCE 0649 524F 75AF"
	$"7BDF 3B5C 430B 1CD6 96C6 4B8E 2410 0204"
	$"5CC1 70C7 E02B 8DAD 7D93 6150 12E1 6DB0"
	$"0266 B616 E51F 9F3A 3A30 1C1A 434F 3E6B"
	$"CD5A 39E1 F1E1 97B8 DF6F 2B61 7C2D A0E0"
	$"6DF0 B5F2 8FAA 657B 616B 4C2E 6966 5606"
	$"90D7 068F 7342 2F22 801E 9FC3 804B 8A43"
	$"AD00 5AD6 4804 5CD5 6972 BA3C 5CD6 B736"
	$"543E E447 0610 09C1 1022 A0E1 9710 B0A2"
	$"0A4C 1B79 EE5B E08B 536A 8B2E 85B1 CDA8"
	$"F55D 5C56 9B3D 198C 544E F059 1BDE F397"
	$"F367 7624 0188 E817 E501 D47D 4F93 D272"
	$"8ECC E65C 94DA 9DE6 E1B9 76C4 D683 A266"
	$"B52C C0A1 9669 7542 0C84 EEBE 4364 50BF"
	$"95DE 7A6A AD5B 5D7C DBDD 3F51 F45A 4A17"
	$"C8EB 96A8 A3EC C42B 2364 997E 9633 EF69"
	$"2473 713E E2A4 0EBC 7E7E 75C7 BABA 96BA"
	$"FA9C CEE5 A449 4685 0D4C 2529 EFDC 2E2A"
	$"4FE9 37B3 BFDB 8647 4B6D 2CE6 6473 56E5"
	$"0434 FF00 09BD 4DDD D86D 3152 DBB9 BEF2"
	$"E9B8 E969 E8A8 5BA7 AE15 21B6 9B15 2D2C"
	$"85B5 731A 997F E5D8 4CA5 8731 73DA 090D"
	$"3949 C1BE D4E2 B5D3 DD24 3335 CD30 3985"
	$"E4A8 3CA4 5E64 5149 0429 285B F920 56A7"
	$"A13A 85B4 74CC B3FD 5A81 C1C2 7CC8 42AA"
	$"1442 65FA 8005 4BBF 1420 9062 E97C 09BB"
	$"D8B6 728D 936B 8B91 D5DB C3AA DB9F 576A"
	$"9AB9 A390 D0C2 58E9 61B6 D200 D240 8C23"
	$"2478 3EF2 D180 44E3 DA9E D974 3D1D 2281"
	$"A6D6 FF00 39EB CCE5 2512 487B 4382 8BCA"
	$"2123 993F 31FD E6EB 07EB B9A7 3A91 E4CB"
	$"B0A3 1BCA 9CDF E6DB 3043 90DD 7198 05D7"
	$"1FA7 F535 AEFB 0D3D 4D3C C255 687C 2E61"
	$"EE34 2131 E054 7225 3F89 5E5A 2E61 5AE2"
	$"A13B ADB2 E95E 9229 1813 99CA 670A 46B0"
	$"F6E2 2F70 8637 1CA2 1A72 C05A E695 735A"
	$"1AE0 0938 8550 89EB 8F03 39E4 4CDA D742"
	$"86FB 5BBE 3CA8 9A2E D3C3 25CE 14B5 5A50"
	$"A346 725C AD08 4147 1002 E030 E7C3 2493"
	$"1F34 4C4A 3026 660C 8E9B B921 0B13 5818"
	$"09CA 7292 0C84 66C4 6206 214F CC30 E70F"
	$"9C39 CB84 0492 57BD BFA6 C718 E26F 70B0"
	$"656B 4B32 02D2 3965 52DC 0E24 63D5 103A"
	$"9525 3B10 ABC7 C078 C10C 6024 0DB0 5735"
	$"E7E9 A92B AB1D 46D6 C94F 14D5 41B2 E629"
	$"DA6B A4E7 18FF 00C4 1539 15C5 310E AD40"
	$"1A45 AD21 2EC9 448D 0D3B 9AA3 5AB7 903B"
	$"CA43 713E EC88 6DD7 6AC7 5844 8EB6 52D7"
	$"5F4C 71D4 60E7 5351 4D5B 95AB 092D 5746"
	$"9990 80AB C907 11E3 36A5 6C9B 3E1F 28B7"
	$"D2E8 6E6A 94D9 EAA7 3B9A DFD3 FE27 06AD"
	$"F82A A6EE D861 D9E5 CFD4 52EA 198E 8170"
	$"7D9A D377 D5C8 FBB4 843F FA4D AEA6 EA62"
	$"6E4A 3086 4FA6 C808 52D5 5C42 0225 5CD7"
	$"E264 A82D F15F 863A 6BFD 852D 7D26 8CDF"
	$"FA95 29D3 FD17 7A95 1AC5 FD7F C3CC A920"
	$"5114 5F0C 6697 FB93 B2F9 3DEE 9CEC B3A9"
	$"26B1 D835 16B3 6C8E D405 EE7B 34ED 8AB6"
	$"F9F4 E432 D8DC BDEF A3ED 7739 0CD9 D1E1"
	$"A5A6 346A AAA8 DB81 3DC2 351D 63FB 3CFD"
	$"AB29 3BFA 8F37 A95A 8D2F F491 3D6A ACA5"
	$"CDFE A4F9 79F9 9314 456A 830D 9E81 FBAD"
	$"8D69 7EAF B449 B09F D3C5 AEC5 A935 9BEE"
	$"3FEA 79EA 1D31 B069 DAFD 431C 08FB 2459"
	$"4D40 A1CA 243F 958E CD89 6E52 1335 AE62"
	$"9CB8 1C77 70DD 16FE A8FE C53F A6E5 5954"
	$"6ABC FCD5 68D3 4F40 04F5 6B53 A45D 2AE5"
	$"790B D484 9908 A01E 61F6 D8FD D906 E1EA"
	$"87E9 A76C 0B6C EE8A CFA8 B528 AFFF 0055"
	$"77FF 00FB 0E9D ADBD 88C3 1D67 6632 8A3E"
	$"D662 4919 9710 3294 D2D6 4BDC 9CBE 3B27"
	$"B215 D69F D891 D1F2 2331 FD57 9D6A D162"
	$"7A09 FEAD 6652 55F5 8FE9 E7E6 449A 2285"
	$"50ED ECAF DC56 3DDD DC8B 16DC BB68 24D3"
	$"ADB9 D35C 6ADD 788E FEEA C31B 2DB6 9AAB"
	$"9863 636D B21C C5FF 004B 90E5 7870 5071"
	$"C1A5 EA59 EE77 A245 13DC 7FED 23FE 3DA2"
	$"D5CF FF00 50F5 790B 072F A5CA BCCF 6B15"
	$"7D57 2273 A894 D136 9136 ACDB 9915 DEB6"
	$"1B4C 1660 2A25 EF87 CACA 9CCD 1F4F 1BA5"
	$"90F6 CB1A AD50 1AEC A501 38F2 2855 3A85"
	$"CE98 9F1E 3E1B 0F80 223C C99F E973 4691"
	$"7FA8 B749 3694 DBBE 1654 7769 2BEB 238D"
	$"B1B0 324C CD78 748F 3193 1B09 5728 7294"
	$"6E3F 2F5E 1D50 5B10 15B2 3E9B 4905 6DF2"
	$"E3F0 8CAF BA6A C5AC ED95 16CB EDBE 3AEB"
	$"65D1 9251 D645 54C5 EE87 3435 4B4A 6080"
	$"027D 7018 1529 7B01 B5AD 7C35 95CD 54A2"
	$"E0E6 1422 DF39 473D 9E7F 7DA4 F49E A4FE"
	$"ADAA 368E DECA 2754 9924 A9B4 B5E1 9185"
	$"2497 06B7 0054 6217 AF20 9889 48D4 CBBF"
	$"9E99 436B 2E31 A968 BD52 CCED 1146 BCEC"
	$"92C7 EBC6 397B DD3F 16F7 A3C7 FD4C 2BA0"
	$"A1AC A192 8A4E E535 5533 5CD2 3290 5AE6"
	$"3822 F355 E2FD 97EA 5CA6 769F A799 6807"
	$"C212 FD06 BE59 E2AE 4DF2 0551 6EC6 DBE2"
	$"566C 279B 17D8 A2A2 D2DB A94F FD46 3A73"
	$"DAA7 BA4E 1258 D140 6E62 BCC3 88C4 F23F"
	$"1E32 AEAC F6D6 9826 AE50 800D E3CE 53EC"
	$"4E2A A234 AE9A EBA7 B80A 5996 9518 DC7E"
	$"1691 D913 77FD 5B62 BF51 0B8D 86EB 15C2"
	$"9640 C90C 40F6 DC3D A0A6 5F92 22E3 C642"
	$"34A7 35E5 9595 A635 1CAE 769D 5FCD AE55"
	$"B25B B76C 25A6 7095 C65E E073 88CC F691"
	$"9548 4540 A462 4AF0 7369 FA72 0411 F0D9"
	$"6DC4 47CA 5D09 8BDE A9B3 E9DA 399F 5554"
	$"D616 8EDB 6261 F88C AA14 60A3 9707 50A3"
	$"52B3 835A 2DDB BB68 E1B2 1BAB 518C 6924"
	$"DD15 E5BC BBBC 6EB3 4F4F 6DA9 2E6B 9C63"
	$"796B 7DAF 424A 7318 28C4 01FB 4F1A FF00"
	$"4A74 972F E550 4679 D47D 443F 4D33 2888"
	$"972A DA8A A95F 2BDC E748 F2AC CDEE 46F3"
	$"4C50 E1D7 AF1A 1D3C 9369 B506 1F2B 708C"
	$"D333 9D73 9D3B 7C7B 6135 DD93 B997 2357"
	$"2E5F CC55 72F2 E6AA 9F05 FE1C 58B9 0722"
	$"629B AC8B 6C62 BDFB 93CF CBBF 77CA EF8C"
	$"A3FF D4EC B84B 2FB5 CE69 25BF E73A 44CC"
	$"A558 4FBD DFCD 9508 2DC1 70E6 1650 3622"
	$"C2F7 C601 AE6C AE68 0D68 88B2 48FB 2D25"
	$"BEEC 8E4F 7046 940A BFB5 79F1 D411 D417"
	$"47AB 2431 1909 CE51 7DFD A765 90B4 92EC"
	$"CD25 C315 2001 FBF8 E4E1 2018 CAA4 4A1A"
	$"15CE 8D1A 1854 292E 24AE 6730 7A13 FD9D"
	$"4F1F 0BA5 7DAD F28E 8B94 5F6B 7CA3 4C2D"
	$"20B1 90C6 D2F7 B9A1 AE7A 96FF 0096 A316"
	$"B579 A908 7A63 8F1F 3CA0 8F9E 505A C63D"
	$"73EA 5EE7 3610 E7B5 A7B8 1ECC E5CE CECC"
	$"0B8B 48E4 113F B8F1 C291 C41B A323 1D39"
	$"7389 1DA8 9E5B 14C4 B8B0 8735 A702 0280"
	$"094F 97F0 439D 6B6E 9611 D495 AC63 53DD"
	$"EC89 EF88 9ED2 4C8E 0302 8014 6BB0 4FD4"
	$"C115 3D02 F035 45DB BBE3 6EC0 6E8E ACC5"
	$"BE56 947A 3B4E 48B3 3A50 FF00 D42F 9800"
	$"AE70 2C3F 9062 AE6B 70C7 E255 7869 EF59"
	$"DADD D7C7 5AC0 0A6C B5F0 143C 3A38 889B"
	$"208C 973E 3680 1CC2 A3DC 0F52 8002 3E2A"
	$"B81E 0635 06D9 0B5B BB64 2C4F 04F1 B5FF"
	$"0038 CF2C 81AC 6CD1 82E9 1ED2 4F6F DDCC"
	$"84CA 5A01 0798 0BD3 F1E0 4712 B39D BEDF"
	$"7B9C 6CEF 32B5 97EF 01CC 8D8D B316 A363"
	$"9077 2563 9EE0 1A57 32E3 9548 E601 54EB"
	$"C08E 3387 1ADE F5FA DBB2 34CC F9C4 6D7C"
	$"CD63 E66B BB4D 686F 6C34 8390 0CCE 5211"
	$"A7E2 4E1C 36E7 8061 5482 9843 6E66 8AD3"
	$"9B8D A1F5 5687 D4D4 42A2 CBA9 682A EDB5"
	$"F031 8D73 8324 6277 220E 0436 5638 8735"
	$"DD0F 2E21 B58C 853C E659 F46A 8E66 3821"
	$"123E 77F0 C76D D169 E91D 7F33 A46A 7433"
	$"940A 3E93 810B 75F7 1DC4 48EE BD63 908F"
	$"317C 7ADF 0F0F AB2A 27A9 82A7 70B6 86B6"
	$"6752 E96D 734F 9AA2 3A10 1BD9 8A0A D0C3"
	$"FA72 80EF 694C DD55 538F 1375 4FB5 EFD3"
	$"336D A8E0 3D22 E56C 8A11 7A10 7149 1009"
	$"044E 4B1F AD3E DAFB D9A6 750D 0156 8F2B"
	$"730C 9BA8 B8CC 1BE4 A7F2 648C D490 3F52"
	$"2858 DBB5 5E37 6E36 E057 DCF7 CB71 B4DD"
	$"6B28 AC71 54EA CD27 62BB 4462 2451 B0CC"
	$"2B5C 242E 2642 1891 B7A9 62E3 C8ED 7D11"
	$"D1F9 6C96 9CEA A5AB F897 3428 53CB 3D93"
	$"43B4 24E6 DBA3 CE1E E17B 8398 D735 CCBE"
	$"9395 AA1B EAD4 6527 3C82 8AF2 1BB4 A367"
	$"CC40 2A30 75F1 61DE 2ED5 5CAF 7B8B A6F4"
	$"8416 79A0 AEB8 FD6C CEBA 4D54 D2D2 EA2B"
	$"7CF3 3FF4 2380 A873 6272 B9A0 1210 8E68"
	$"DB5E 8DD5 6DCC E65A D752 23F5 104B 9A52"
	$"4A51 4022 E23F 5013 D880 31EE A7F6 CEEE"
	$"9FD0 AB67 8670 D4E4 F4FF 001F 4835 799C"
	$"C680 4B6B 3E63 D4C1 A7F2 6382 850E 7F44"
	$"1B48 EABB 6C16 DB5D 7C12 4B20 7762 3A99"
	$"6774 8E63 191B 8B5B 9884 001C ADC6 4F43"
	$"D505 C333 9AF5 1D20 97F9 DFDA 27E1 1E2E"
	$"D474 BE4A 66A1 3724 93EB C7BA 2418 1142"
	$"3B6D 0030 0735 E097 60C7 A925 D9DD 8AA1"
	$"C7FD FC04 5D10 6823 4F79 B344 F923 CB24"
	$"B097 3637 3F16 AB9B 972B 0938 2BBE 5F2C"
	$"54B6 650B 0202 4951 253C 7338 8307 6D8E"
	$"9C30 950A D0D7 B95E F51C B027 0C4F 5E7C"
	$"0B52 AB6F BD3E BDBE 1E10 451A 7CCE 0369"
	$"847D DB55 9B75 A2F9 7465 18A9 169A 4ACB"
	$"B494 AC9F 297B 6968 E4AC 7FB9 EC39 03DA"
	$"022E 00A1 E4BC 4756 AA80 A4E5 F698 D976"
	$"3C54 A0B0 E434 5755 ACC6 0727 339A 0489"
	$"BC81 8293 C044 64BB 790F 151D 8B54 55D6"
	$"E8E2 5968 B2EA 1BEB A945 D248 E59C DAAD"
	$"5595 AF88 7768 5858 2534 DDBC C5A4 855C"
	$"A5CD 91AC 88AD 9F91 5124 3E1D 9D98 5FB1"
	$"046B BA67 B56E A99C CBD3 198F D756 9317"
	$"9153 9EA3 5BCC 9CE8 5399 A6F0 300E 4753"
	$"73E1 5694 F3A2 C7AD 6A75 069F 8B66 AB2D"
	$"E3FD 39AB AF53 4FFE A88A 673E 2B66 95B8"
	$"5CE4 89A1 9636 90E9 594C 58D7 7BB2 139B"
	$"23D3 2985 6EA6 0C83 769B F770 8F4D EBBF"
	$"DB1E 674D 652A FF00 D45A EFE7 E5DA 9E81"
	$"137D 7A6C 07FD 7FE1 2E52 24A8 9CCD 550C"
	$"3686 F2AF 6E75 7566 A8B3 C5B4 B7AB 70AB"
	$"D25A DAAA 5AE1 AC68 2A43 A1A2 D1D7 9AC9"
	$"191B 069D 0D6B E56D 33D8 D914 8639 5C43"
	$"C35A D905 1AA7 3A8E 5C0E 3B01 8D3B AA3D"
	$"8BD5 F214 A855 39FA 4E23 3396 09FB 7709"
	$"BB31 45A0 9FF7 0A8D 2E0E 2244 8902 D249"
	$"6329 B29B A3B2 FAA7 58DD F4FD 06D4 6A6B"
	$"5BEE 3A47 5F45 5755 53AD 6D15 2D14 ACD0"
	$"7787 D4B6 38D9 A5A0 CB23 A06B E389 F988"
	$"6388 739B 206E 421E 5F30 C7B8 8E5C 0E3B"
	$"8EE8 D23D C7E8 8EA4 C8E9 F4EB BF3F 977F"
	$"2E67 2880 65AA 0FC8 E6A8 86A9 FDDB A41C"
	$"8E70 4FC8 0201 613C C161 E306 81D8 2D73"
	$"BD16 6D1D 69D2 BAC6 C35F AC2D 1ABB 4B4F"
	$"7FBA 6AEB 25C7 B54D 73D2 376A 4A93 D98B"
	$"4C51 97C8 F8A7 7863 9CFF 006B B29F 7069"
	$"63BB 96A3 4CBD 10CD 71DC 7745 7FDE DEAA"
	$"EABD 33A7 2A66 DF5F 2D51 B42A 50A8 18DC"
	$"BD56 2B99 5E93 9933 9A7A 00E6 8501 B36A"
	$"8084 870B 02DB CFB6 4EC5 E87D 4CEB F5AB"
	$"59EA C92A 9F6F BDE9 9919 73AC B2BE 3EC5"
	$"EECB 5766 9CB4 32DD 1932 086A DD90 8281"
	$"E012 1C3D A4D6 696C 6159 DBE9 1E54 EADF"
	$"EF3B AA35 3C9F A153 2F97 6B79 E9BE 4CA8"
	$"0F35 3A8C A8D1 3AA6 45CD 00C9 4850 0828"
	$"61DB DADF 01F6 876B 35DD A75C E97D 4FAA"
	$"2B2F 5661 5D1C 1477 EABB 2C94 FDBA EB7C"
	$"F6D7 B724 1434 F266 6B25 73B1 760E F861"
	$"C3D4 F221 A554 ADAE 976C 67DD 6BFD D4EB"
	$"FAF6 9953 2398 A341 B4DF CA49 636A 077E"
	$"2F6B C4CD 470B C006 5777 C4AF B7E8 2B45"
	$"B67A 5B95 356D 54D2 B5B2 411C 5298 991B"
	$"DD32 C470 1182 1CD0 EF69 0E23 9A83 C122"
	$"9017 6FF1 9EEF 9F89 8C37 3BD4 F5AA D32C"
	$"2D00 14E3 B7E1 0A78 AD94 71BD B56E 9249"
	$"6660 24B7 3343 1C32 0404 10DC 4976 601C"
	$"0F2E 4799 7489 8310 D533 4FA9 F8A5 BE16"
	$"BA23 D6F7 790F 68DA A841 F699 C02A 6599"
	$"5AC7 B4A9 CDEE 2EE4 0AB8 0283 E1C0 D56B"
	$"244D E8DD 3C6B 8537 58F0 8ABC DE5F B8C4"
	$"6EB7 4905 B0B2 199A 4C4E 8438 4858 58F1"
	$"ED0E C557 DE42 750A 3152 41AB 9B9E FB59"
	$"62FF 00A5 7483 5A57 BCF1 3694 E4B2 9456"
	$"C6A9 F2F2 C7B8 3515 B6CD 6B69 82FD 6E9D"
	$"D249 2C55 7FA8 FC8F 6905 AD79 24B9 C011"
	$"896E 6F6E 0463 C361 C5DC 62CA 749F 4448"
	$"DAD2 F258 831B 91B7 7B2D A926 A9BC 69D9"
	$"DB6A AA19 A473 2185 F1B0 3807 B9C5 4B48"
	$"5047 E070 38F1 2997 CCE6 5839 4151 B0F6"
	$"0963 D830 9DD0 D546 5374 DC9C 7BEF F8AE"
	$"3BE5 11AA EB75 B9ED CCCE 65A6 FCE9 638B"
	$"DAC8 A37A 1240 C887 1284 211E BFBF 8786"
	$"994F 39FA D9DB 6B61 1214 3547 D09B 4A25"
	$"93CE 5C0C 9612 757E 456A 80D7 B3EB 5F21"
	$"6874 61A0 94C0 27B8 E0A3 F6F0 FB7A 0E92"
	$"AA4B 7C11 FF00 32A8 2F94 371A 8374 6F77"
	$"DEE3 6A66 748D 7FF9 8C2E 7373 0715 3D4E"
	$"1EDC 3F87 12F9 6D02 9659 11A9 10D9 AD7A"
	$"A555 52A6 D6BA 1B39 EA1C FCF2 CAE4 738E"
	$"6198 9418 1C31 53C5 8B2F 9621 1246 20AA"
	$"5728 9876 C26A BAE2 A1EC 6303 08CC C7BD"
	$"C7F9 8370 42DE 2432 F952 F70E 6BED 6F18"
	$"87CC E682 895F 3FBE E84D 661F 4DDE FA81"
	$"9F37 6D73 3D72 76F3 E5FD BC49 7EDD D6EF"
	$"880F DF37 D4DC BDBC 6D84 7FFF D5EC C088"
	$"58F4 7C81 4104 C65A E40F 2AEC 1A50 01CD"
	$"141F 5E7C E500 BA22 DA15 2D6B A316 3241"
	$"2460 B18E 6B42 BDB0 B4FF 0088 1448 C0C0"
	$"E0AA A3E7 C8FC 4102 3E2D 206C 8C3B 455A"
	$"D695 90B7 D913 3FC5 8330 2D2D 05A4 6048"
	$"C53E 238F 9D75 AD28 F9D7 5AD2 58C8 4C18"
	$"1858 1EFC C0B5 AE63 C8CC 64CA 0803 A215"
	$"E430 C3D7 8E18 49BC 88D6 C7BA 46AE 4CE1"
	$"9FE5 F75E 5C01 40F4 4008 C063 CB14 C3A8"
	$"E144 A42C B938 C78C 2C8C 4914 FEC7 7B87"
	$"B50E 5284 BCA8 6B8E 2A10 A2FC 7868 9378"
	$"B5BC 23E4 DFBE 3C7B 9B2C 4D10 9318 887B"
	$"84AA 13B8 4840 4921 3D46 1C94 751C 32E7"
	$"0C23 A856 78DB C230 00B8 3896 994B 731E"
	$"EB9C 1A4B 43BE 232E 398E 2DE6 7AAA F03B"
	$"9C2E B5B7 4758 3118 DAD7 7746 A765 8CBD"
	$"B242 D64C D607 C6E7 068F 7877 BB2A 9438"
	$"AE1F B381 9EF1 2536 F0B5 F1F0 4000 B5AD"
	$"38FB 38EE C6C0 5ED9 1E7D 9EE2 1D91 1BCB"
	$"AE19 8211 D3A7 033E A138 593E 7E3B E083"
	$"3087 7DAF 8D2E 7C6E 6CC0 461F 9DED 0E2E"
	$"4F76 4620 5572 84CA 0A00 714F 8703 39E4"
	$"858E 38A1 B7CA DDB1 AA3E F3CC A1A3 3540"
	$"F644 ECA8 DEE1 E60B A40E CCBC C10D C09C"
	$"5381 CA24 2C0D D216 B4F8 46B9 8920 8734"
	$"3821 6359 2AB0 104E 21A1 E4A2 A94C 715E"
	$"6578 61CE 22D6 B704 8783 42DA C3C2 02DC"
	$"1CC8 68AB E49A 2925 FA78 A57C D07F 9615"
	$"B1B8 96E6 7023 1F89 4C3E 1C47 5772 30EC"
	$"9DBC 1552 0DCA B1CE A8D0 2449 1E62 22EE"
	$"E35F B4FC 1A1F 5A6A ABBE 927D F63D 2D65"
	$"BA6A B9A8 1F59 1C6E 945B ADB5 35ED 873C"
	$"94CE C9DC 6C59 7306 B800 550A 01C4 0D7C"
	$"FF00 A74D E403 204D E8B2 3B07 76CC 271A"
	$"5F4E 74BB F3DA 8657 282A 868A D569 D35E"
	$"554E 77B5 8A9C C151 4289 2DCA 2F8A CAD2"
	$"7E4E 682D D7AA D49B 7D51 B2B3 5829 2F9A"
	$"6755 B2A2 EF41 A9A9 A7AB 8A0A 1D33 5F71"
	$"7B22 2EB4 202F 6D26 4638 8219 9B31 0E07"
	$"29A8 B3A9 DB99 2E61 61FC 9AE5 2ADF F091"
	$"8304 D142 EF0A A001 1EC3 D53F B69C C74D"
	$"0CBE A347 3ED7 BE8D 7CBF 2B4D 0700 AEAF"
	$"49A1 7F9E 4A02 E0E2 D92A 100B 492E 8406"
	$"C2D4 6CDE 82DC 88B5 CE9F D0DA 966B B68E"
	$"B1EA DD51 474D 7DD5 76B9 E9A5 FA0D 2772"
	$"AA74 6E6C 1A7A 9DE0 BD8C 2D6B 83FD AE21"
	$"C8E0 3298 AD34 E5E8 D50F 635C AD0E 3370"
	$"C1A7 FCA2 DE3A 57BA 997E A1D5 F463 91CD"
	$"6672 FE95 7AB9 761E 5A0F 0473 57A4 D041"
	$"3997 0912 0909 F900 5AA0 9E61 2EBC 7EF3"
	$"C287 74B7 534A E826 6CF4 9A78 5E19 73A8"
	$"8AEE ED40 2B99 0BED F67A 9AEC 2036 C84B"
	$"8B84 01B8 3C10 4AE3 F94C AE43 A945 6AA1"
	$"BE9A 2AE2 B813 7246 0DEE AFF6 B957 42D0"
	$"EB67 4EA0 2AFA 6698 E5F4 4B49 E7A8 D603"
	$"CDEA B913 9951 10A2 4AF1 6216 BD78 2EF7"
	$"0A7B 71B3 9A78 E769 95D9 EA99 52D2 238A"
	$"4951 0C6D 2A5A C070 F9E0 BC4D D3CE 2944"
	$"ED07 19CB 0594 FB63 C999 DE99 F469 17FA"
	$"8B74 910C C81B 4A5E 9D97 C1F5 46A2 ED52"
	$"55D7 8A20 1D4B 4F35 4173 9D2F E663 4CC1"
	$"9EE5 68CC 1A02 81F8 291C 22BD 601A 64A9"
	$"C305 FAF9 CC03 11D4 7485 A8D6 F35E 40EF"
	$"3C7C 21A7 D43B CB1D BF4E EA7B C4FA 6455"
	$"36C1 6ABA DFD9 4C6A C30C 8286 825A CED8"
	$"7FD3 3F29 776B 2872 1455 20A7 111F D4B9"
	$"BF87 0DAB 7036 FA45 E34A F6F7 D5CD D0A4"
	$"2B27 A951 8C5E 5BB9 DED6 AA73 4D15 524B"
	$"728B E215 5ABC E2A1 D611 DFEC 6EDA 875B"
	$"A086 C1A9 AF92 18AF 713D C63B 3E9F ADB9"
	$"9631 8FB5 6505 E29F 2667 35CD 0487 16B8"
	$"0CA6 30EA 61C0 A826 477D C387 DB09 C7A3"
	$"B50F ED9D F913 4AAF EF43 D6AD 1621 A47F"
	$"F72A B18A 48AB 70E6 E640 84A2 2825 622F"
	$"68AF 2A76 FB5E 4FAB 34A3 769E F363 B7D6"
	$"694D 673D CABC 6ADB 6922 9A8F 435C 2791"
	$"85A3 4FC6 E6C8 EA76 BA36 3E40 7212 5EE6"
	$"B817 0922 29EA 0D7A 8E53 71C7 7708 DAFA"
	$"83D8 7D53 4919 7CD0 CFD3 A8F6 E632 FCAD"
	$"F41D 373F 334D AB2A E840 79E6 701F A979"
	$"4104 34B1 80D9 BD41 B0D7 2D5F 73A1 A3DB"
	$"CD53 6EA8 9B4B EB91 5525 D75A 582B 227C"
	$"0DD1 1767 5442 228B 4E42 4492 46C9 6363"
	$"CB8B 58E0 5CE6 BDAD CAE0 B2EF A45C 886E"
	$"388D 8774 6AFE E369 1D51 4B4F 63DF 9BCB"
	$"B80C C655 3972 D55A 57F7 3479 4A9C C990"
	$"7169 2115 C0F2 82D2 542A 7C63 D0DB 19AD"
	$"B77E C9A2 EDFA 6F58 58E6 D6D6 6D5B A4AA"
	$"6FF7 5D57 6BB8 18A9 6E7A 3EE1 453B FB0C"
	$"D374 C5F2 3A07 3F23 9D2E 50F4 243D B1B5"
	$"BC7D 97A3 4CBD 10CC 1C77 7088 3F79 FA9B"
	$"AA34 DE9F A99C A95F 2AF1 42AD 0A81 ADCB"
	$"D46A B999 8A6E 68E6 FDD3 9007 01CC 0354"
	$"B540 2D2E 7189 F5A0 3ED8 3B11 B7FA 91DA"
	$"86D5 ABB5 6D5D 54D6 CBEE 97ED 5CAB ACEE"
	$"8445 7CB2 5659 267F E9DB 2276 66C5 54F7"
	$"30AA 0706 921C D047 06D3 D2A9 31CA 09C7"
	$"E5B2 3CB7 D5FF 00DE 8754 EAB9 2F42 AD0C"
	$"B068 A94A A499 5156 9556 556D F54C B998"
	$"03A4 A42A 7294 21D6 DACF 0476 8366 7702"
	$"C3B8 7A63 53EA 1BA5 E2C2 DAB7 52D0 5F6A"
	$"EDCF 81EC ADB6 CF43 2770 535B E193 F24E"
	$"F200 7843 9495 0A38 7A9E 45AC 2A16 33FE"
	$"BAFE E83A 83A8 B4AA BA7E 668D 06D3 A9CA"
	$"A5AD 7877 E2E6 BC22 D470 BDA1 7F13 2501"
	$"1562 66B2 D90D 2913 53CE F2F6 AC90 35F9"
	$"5C1C D2DC AE20 8206 6683 EBCC 2F05 7647"
	$"9F6A E7AA 3DBC A827 6C7E 3030 D33E 3CAC"
	$"A560 858F 2D2E 57B0 06CA 818E 7141 89F7"
	$"00A3 15FC 38F9 8933 0217 192D D6BE 338E"
	$"492A 0122 340F 0E68 7101 8D39 DCE7 6520"
	$"E628 4212 5BF8 9EBC 7090 1677 5BE9 0900"
	$"5E96 B5B0 84F6 ACB8 32CD 659E A299 A923"
	$"2273 A372 06E6 6839 8027 2AE3 9702 9FDF"
	$"C25E 7F1D F076 4E80 7540 0DAC B144 7E62"
	$"DE2E 7573 5E26 7CA7 331F 3670 8D44 87B4"
	$"5AF2 3300 B99C AA87 9A20 0700 2BD3 3789"
	$"894E 78E1 C6FE E291 AF68 81A0 35B7 4A56"
	$"D93F 258A 15DC FD49 708A A2AD 9307 6489"
	$"D240 E0C2 8C0D 7156 B462 7076 6E6A 79F2"
	$"E5C0 D4E8 0238 DBE7 E317 3A79 A462 5FF6"
	$"F290 12DD 82C4 37BE EB3A E159 27D3 D539"
	$"ADCC E6A4 6E20 3148 FCAA E07A 2A74 29E9"
	$"C5A3 27A7 536B 42DB 8F67 8403 9AAE 71B5"
	$"8A42 16B3 57DC 2594 CAEA C7AA 2BA4 0E79"
	$"4002 8C4B B000 4851 3A14 1E9C 4ED2 A0D4"
	$"E54F 2EFF 009E F888 79FC B980 1E5E 49B1"
	$"3196 E846 5DAF D5B5 C5D0 3EA5 D231 8044"
	$"73E3 80C1 39F4 187C B891 A197 0262 D6B2"
	$"C02F 7616 B63B 612D 2168 2D52 1A14 6579"
	$"C402 B870 5D37 39A5 30B7 977C 0759 A1D3"
	$"59C7 85CD CA46 62C1 87BD A8AD 50AA 13F7"
	$"61F3 E0D2 010B DB03 0A80 48DD 6B61 BE0A"
	$"2A27 63D8 EF77 7256 1460 2508 25C9 866F"
	$"4C40 3FBF 8465 C937 0DF6 B6CC 202C C572"
	$"D9DA DB61 1F5F 344F 77D4 37F4 E370 7091"
	$"8100 5187 5E41 02F1 2B42 9BAF 4944 5E62"
	$"B299 938D ADDD 00BE A22F A1E6 57B9 9D32"
	$"B953 227A 7125 C8ED 9BBC 1220 F9C7 3F36"
	$"1778 C7FF D6EC ADF2 44E0 1AF6 1733 2B58"
	$"D90B C23B 20CD 8AA8 080F CF9F 5C78 9540"
	$"B118 816D 6B6E 8DC0 46C3 2C64 1F6E 62C6"
	$"B0B9 A435 8B23 416B 87CF 1423 E18A 9E6C"
	$"3099 A036 D984 619E 46E6 2EFF 0096 0A1E"
	$"E6C8 85DE D702 1502 2A2A 0F4F 8004 7424"
	$"2825 BC76 C6A2 E563 BB87 2778 8CCF 89CF"
	$"0DC3 3732 5415 438E 2982 2A71 CE10 9C25"
	$"7DAD DDC6 3E63 A4ED 1921 1914 173D B119"
	$"15AA 49E8 1C06 2003 F2F8 F087 38C2 9D6B"
	$"63DD B631 2F01 C256 10D7 07F6 E4EE CA08"
	$"786A 8520 0C79 A123 E3EB C345 C156 3EFE"
	$"24B5 BE31 AE42 CA90 B238 C401 0F2F 2A58"
	$"3312 5C81 1C85 48C0 A280 BD78 1DCE D91F"
	$"72EE B4B7 77C6 C6B5 9F52 F08E CD1A 128E"
	$"2E01 A0A8 0091 9872 0392 F4EB C315 1C10"
	$"A5AD 3871 C105 F6FA FD78 8678 3265 8F29"
	$"9101 790C CE0C 8416 E5C4 AE08 A808 44FC"
	$"7812 AD49 DD6D 9F1D F0E5 DF90 C6DE 7F4D"
	$"B1AE 38BB 45A1 B0B4 4B12 888C 5346 32E1"
	$"9438 15E5 94E2 39FC 70E0 57BA 7F58 7396"
	$"C96D 9F3B A308 5D1B A9FB 7909 2C73 0CAD"
	$"78CE E0EC CE01 E49C 1315 29CB 0C38 1DC6"
	$"71C6 B948 B7C8 DA71 839B 3461 92B2 1EDB"
	$"4B3B 5865 6B4B 9C5E E521 A9CF 3AA0 0153"
	$"1287 861C F171 B5B6 C3AC 2112 D28D 290B"
	$"7B62 3C24 2D05 A652 7362 D008 4249 1F90"
	$"F45F 5E03 A849 5B6D D9E3 C61E 6822 D282"
	$"BB94 26A2 DF5F 1491 4B3D 34B1 CB14 991E"
	$"6378 0F6B 8945 6E38 1200 C472 F8F0 1D7A"
	$"AAD3 C2DB 678F 15E1 0565 EA11 55A4 6D17"
	$"DBBE 239E EE5B 34DD 0ED2 6F05 5D6D 2D6D"
	$"651D 2E93 D502 E741 4B59 0413 4B4E DB15"
	$"4095 B1C8 EA39 9914 8E69 2D12 1638 0715"
	$"CAF1 81AE 673D 3146 A48A 72BB 11B0 E291"
	$"B074 166B 3757 5FD3 DAC7 35AF 398A 3CA4"
	$"B490 1DEA B509 6F3B 542D E016 A850 0B4A"
	$"1149 1B0D 7CD9 2AAD C39D 96CD BDD5 7495"
	$"BFE9 CD6F 2F7A E5AC ACF5 5008 1BA2 2EA6"
	$"7608 A2D2 F4E4 3DF1 34B2 3767 4639 1C5A"
	$"F0DC 873C D36A 658D 6FC5 8EB9 D7B8 1FE1"
	$"3FE5 16C2 3F49 7DD1 D2FA 959A 40F5 7379"
	$"6737 D7CB 49B9 6A8D 2BFB 9A5C A54E 69D2"
	$"0E42 422B 8280 5A4F 3073 36EA E3B3 9537"
	$"9D41 050E 85D4 D492 49A5 75B0 9E4A AD59"
	$"6B9C 1A71 A36E 8676 35B1 E9C8 487B E2CC"
	$"D63C 9218 E21C 5AF0 0B5C 6E5D F414 A35D"
	$"FA5D FC43 FC27 FCBB 2D84 527A BF29 D40C"
	$"CB52 2FCD 5029 98CB 2250 A827 FB8A 5CA4"
	$"FF00 B92A 0390 B84B 9802 016A A84B EC06"
	$"A0D9 BD1B B971 6AED 3BA0 353F F55D 2961"
	$"D5DA 8A8A 3BDE AEB6 5540 F6D0 E91B A554"
	$"9139 94FA 7299 C92B 1AE6 8766 F6B8 8710"
	$"E00B 1C16 42A5 0654 E66B 4A80 EBC8 3FC2"
	$"7FCB 6DF1 3BEE AE95 D43A 8E8E 72B9 8CDD"
	$"0F4E B56C BB0F 265D ED70 E6CC 5268 2A73"
	$"2EFD 2509 0930 0850 4870 937B 59E7 EDB7"
	$"556A F7DA E0D9 C9ED FF00 4D67 D477 FF00"
	$"A8A9 D4B0 D57B 2CD6 1AEB D76F DF69 84FB"
	$"DB4D DB04 B91A B991 C994 9F96 D798 F7FE"
	$"8224 715C 09D8 0EEB E319 EB6F ED5E BE43"
	$"4FF5 0EA0 D703 528B 1051 2DFF 0052 AD3A"
	$"6BFE B3BF 4F37 3224 D114 2A85 DD8F CF6A"
	$"6D58 EBE5 ACED 2C96 E34D 62D4 9A8A 5A96"
	$"EA1E F28B 3D86 B6E6 622D 75B4 2197 E94C"
	$"79D4 E5CC A8F0 D238 78EB 21EA 3910 21C7"
	$"60BA EDDD F343 157D 4FFB 5D7E 4452 A9FB"
	$"F0E5 AB45 89E8 A7FA 9558 CE6F F50F E9E7"
	$"E64C 5109 6A83 0C55 8FCD DD3D AFA9 F5A6"
	$"97AF D9EA BA4A 2AAD 25AD 2E15 D2D3 EA78"
	$"5F23 A1B7 692B 95CA 48D9 9ACA 435D 2320"
	$"31B5 E438 3090 F2D7 0194 C533 53A6 E501"
	$"8448 FF00 10D8 7FCB 1A86 A5FD B566 F4A7"
	$"E5B3 2CD4 1AE7 0CC6 59A3 F905 15F5 E9B0"
	$"13FC E986 9707 1125 0115 AAA2 226D 06FC"
	$"ECFD F753 5FED B41B 3FA8 EDD3 BB48 6BEA"
	$"A96A AAB5 ADAE A5A2 9A93 41DE 2A27 898C"
	$"8F4B 425A E922 63D9 1BCB 888D CE0E 2D7B"
	$"4161 8BA1 9F6B DC40 6A48 E230 0774 6FBD"
	$"7FED 76BF 94C9 D2A8 FD42 8B87 EE72 A106"
	$"59E2 6ECD 516B 4927 34E5 01C4 1704 1CC0"
	$"7282 D279 814F 8D3A BF64 754E EAC3 A72D"
	$"BB6F AB6D 5557 4D33 AE2D C2E9 73D6 B67A"
	$"F114 0745 DDA4 A86B 5916 95A5 7974 9134"
	$"B1AE 7484 35D9 5EE0 F42D 70F9 5AD4 9CF4"
	$"E537 1C46 CE10 6FBC BD3F D4D9 1D08 E62A"
	$"6732 CF6B 2BE5 9DCA DCB5 462B BF73 4794"
	$"A9CD B820 74C8 0D98 5682 D505 B2D7 60B6"
	$"3764 6E5B 9F6E B25A AD9A B682 6D45 6CD4"
	$"7A55 F577 0D4F 6EAC 6C54 D73D 355B 6E9D"
	$"DDB6 D8E1 CCF1 0BDD 9097 2077 B9C1 C333"
	$"5C6E 5A85 32F4 9CF7 EEE1 1807 BA9E E8F5"
	$"351D 15F5 AABF 2CE6 D2A9 46A2 0A2F 692E"
	$"6566 3DA1 7D77 20E6 0142 4DB2 0448 89DB"
	$"B55E 0FED 3ECF 6BDB 3EE3 E99B DEA2 ABBC"
	$"587E B851 477E ADA0 9E99 F1D6 D14D 6F90"
	$"CB1D 3D0C 249C 937B 4E64 CC01 24E3 C1D4"
	$"F26C 6381 0ABF 48F3 475D 7F72 BAFE BDA5"
	$"D5C8 6629 5014 9FCA BCAD 7077 E2F0 E084"
	$"D472 4C4E 5204 DD13 262A 4869 A68E 713B"
	$"C901 9246 2402 2635 700D 0482 1A32 F31D"
	$"7E3C B87C 22A0 8F3C D4CC 3CB0 8225 F2ED"
	$"B2C0 C6E7 0324 9128 1297 921A AC63 8B9C"
	$"5CF6 96E5 C15D D4A8 3F2C 7E50 6EBA 069C"
	$"B6DB E91E C2E9 0649 626F 6641 235B 1981"
	$"A1A3 2802 46FB 94E5 0542 E27E 0157 8FA4"
	$"2D69 C7CE 1DB1 AA27 3DE1 D886 16FB 8D2B"
	$"C46E 7B1C C501 ED31 F508 D01A 40FE 29D2"
	$"DC63 AD21 52DF 1805 5F59 05BA 232B E567"
	$"68AB 700D CA50 B414 0E1C C907 E1CB D30E"
	$"1709 9587 A952 E670 096F 1862 371B 72EC"
	$"96DB 456C F2CE 278F 2BE3 2C85 5E24 CCD7"
	$"04CC 0819 9C88 02F5 E78A F03D 4A92 94A2"
	$"C7A7 696F 73D5 2EB5 8784 5057 94BE 4869"
	$"C7D6 DCE8 6095 930C AF92 9E06 E60D EE38"
	$"F75D 9DAE 6228 25DC F169 3813 D067 1350"
	$"AB8C A437 A702 7003 80B9 6350 C8E4 F900"
	$"E518 4BEA 46D3 3DA6 680A 4520 EF5E BAB6"
	$"5DA5 AB7D 0B62 CF23 B339 CD78 C400 5A31"
	$"6A62 5BCD 0730 3AA9 E247 4FCA B819 F95D"
	$"63F3 83D7 9B80 C70E C96F BE5C 6F48 4771"
	$"AD96 A2A6 7739 F95A 0940 D452 702B 83B0"
	$"21C8 89F1 F88E 2D14 DBB0 DADD F0D2 074D"
	$"213B 2CE5 E5CB EF27 073B 0F92 FE23 AF04"
	$"D261 1740 75B3 0112 03BA 573B 17B9 514A"
	$"93C9 4AFF 0013 C16C CC11 7080 0810 5F2C"
	$"C18F 683E F88A E7E6 500C 075E 64FE 3F0E"
	$"09A6 438A 91F0 DB01 D7AC 0CAF B7D2 D741"
	$"6CF5 45C1 AA79 6695 7F04 6E03 3732 7038"
	$"F25E 0B6D 356A 5ADF 388D AB57 94DE A6CB"
	$"E03C 6709 CA8A C313 CBD8 E0FC FED7 B41C"
	$"1502 82D2 B820 4C3F 6F4E 0BA1 4ED6 B6E8"
	$"8CCC 5694 EFB7 0FA7 9A62 AE6C 49CE 439E"
	$"0B86 5210 652B EA3F 7E1F C0CC E5D8 2F88"
	$"5CCD 624A DF6F 877E CC63 1FA8 6F63 37B3"
	$"FCDC 8BFF 00B4 A8A8 9CF3 7122 B6B7 7C07"
	$"EB9E 4BFF 002E CB5D 2F08 FFD7 ECB6 4710"
	$"E730 CBDD 6CF9 A40E 39DA AD19 B234 1763"
	$"8297 1C79 E1C4 AB44 E22D 8D9E CB5B 8478"
	$"C91D 335D 37D2 E473 8E56 35A1 5092 E2F5"
	$"C9EE C405 EB87 1C05 23E0 EE5B 7D3E F193"
	$"4303 1EE0 DEEA 39CE 0159 932A A221 C022"
	$"02B8 1C0F 2E3A 656B 7DE3 A4A7 65BC 3CE0"
	$"282F 33CA C91E 1B19 243A 47B7 2280 7B40"
	$"854E 4A70 5E4A 3864 BED6 FAC3 6A0E 16B7"
	$"18D8 5864 1959 1086 02EC AE91 AEC3 3605"
	$"431A E4CD E800 F874 E10A 816E 8594 6E13"
	$"B594 C633 1617 B5EE 9334 2D53 90B1 C1C5"
	$"0662 DCC4 B8E3 9B12 BFD9 C30E 4529 0E06"
	$"1179 FB5B 747C D63C 3236 10C5 7111 4DDB"
	$"7839 A241 CD14 8182 73E4 397A 8EF7 28B5"
	$"ADDB 1C2C 509F 0B5B BA34 B7B6 F3DD 0E12"
	$"3629 1AD8 E338 A96A 8CA8 D05A 0B8F C7F7"
	$"F025 532B 5ADD 90EB 9A8B 6F8D B746 B2FA"
	$"72E3 1C6D 25CA 1ADE DB46 621C B885 E64E"
	$"2172 AF2F 5E06 7B93 0B7D 614A 36A2 D963"
	$"54C0 C90E 6336 66AB 4B98 C01A F081 AD00"
	$"120A A038 F3E4 703D 4771 4850 5998 D124"
	$"A587 B6DC 9989 56B1 5CD2 1C33 02B8 956B"
	$"B2F2 0A3F 05E1 926D DD0E 724A 76EC F2F9"
	$"88F9 F4F0 3E44 6BDC C7FB 670F 2083 9A46"
	$"B72E 619D B951 A397 5079 8C78 0DCE 27E9"
	$"E33E DEC4 E10E 9271 B787 6465 2CA5 F267"
	$"6A3C 02B1 86E4 0080 E2D4 214F E5EA 3D30"
	$"C780 DFB3 185B 5924 B5B8 416B 3F5A 22F6"
	$"B0F7 25CC C7E0 1723 DF94 90E2 0B53 2F24"
	$"529D 791E 067F E436 CAD8 EFE1 7A28 510E"
	$"B090 E5D9 0D4E E9D8 6C97 2DAF DC3B 75C4"
	$"55CF 6AAE B0DF 2DD7 38AD D245 4D33 A96A"
	$"2D53 C6F3 1992 095A C7E4 911A F31B 8038"
	$"9046 061F 3AC6 1A4F 0851 0E22 E4E1 17BE"
	$"8AD4 F314 75AC 9D4A 7CA1 EDAD 49C1 4121"
	$"5AF6 90A1 4121 4050 0824 4811 78A8 4D05"
	$"B47B 23A3 2EF7 ED4F 67B2 6AB9 EAAD 3A67"
	$"58CC 69AE 3A92 D124 7242 FD27 718A 76FE"
	$"9E9F 8CB5 CE89 CF0C 7621 AE21 C5AE 00B5"
	$"D45C B653 2D4D C5C0 3A41 DFC4 361F F2DB"
	$"7C7B EFAA BAFB A975 2A14 B2D5 6A65 C35F"
	$"5F2F 3146 A020 8CC5 22D3 3CC3 9407 0048"
	$"40A1 4073 49E6 082D A5D4 BB43 72D5 977A"
	$"3B76 DFEA 4A29 67D3 5AD0 BA6A DD5D 6B9D"
	$"A299 BA36 E8F9 D81A CD39 0FBD F107 B58E"
	$"546B 8871 6B80 2D70 F93A F45C F203 4DCE"
	$"C47F 84FF 0096 2D3D 79A2 F505 1C8B 1EFC"
	$"DD07 015F 2C80 65DE 3F2F DC52 E52B FB93"
	$"20E4 2424 C021 5ABC C356 DAC5 B30E BFDF"
	$"05BB 456A 6A69 7FD2 DADF BEEA FD55 69A8"
	$"6BA0 FF00 465D 3BCD 6B59 A761 CAF7 4799"
	$"AC79 2435 C438 B5C0 1694 E5C5 004A 34DC"
	$"7F88 6C3F E585 F59B FA8B F6B4 B9F3 3408"
	$"FDC6 5AEA 0F13 FDC5 2E53 3CC9 9072 1210"
	$"1214 02D2 7982 6B65 D9B2 34BA D2B6 A2D5"
	$"A0F5 5475 D4DA 675A 5539 D5DA BED1 5313"
	$"A166 8BBA 493B 7245 A6A0 21CE 8839 AC76"
	$"7391 C438 B5E0 1638 6CA7 A22A 2B41 1276"
	$"20FF 0009 FF00 2889 AF71 5DD4 9534 D6B6"
	$"AE6B 2E5A 6BE5 84B2 F51A 57F7 34B9 4A9C"
	$"CBA4 1C84 84FC 8020 1692 1C06 685D 47B4"
	$"2CAD D553 5BF6 FB52 53C9 49A3 F5D5 7175"
	$"66AF B554 3053 43A1 AEB2 4F0B 7B7A 6D85"
	$"924B 0C72 318E 2486 3887 96B8 34B5 DCA7"
	$"529C FF00 1371 C777 0D90 C753 E8FD 4069"
	$"D06B B374 0F36 672A 2597 78FC 8E6A 9069"
	$"2B99 2A1A E209 0109 00B4 3812 0862 B62B"
	$"5EEC 86A8 D6F7 5B0D 1ED5 6ABA 19EE 3A4B"
	$"5FC7 354D 46B8 B4D4 37E9 D9A0 EEF2 4EC6"
	$"471E 9484 F71F 135E D8DE 5C43 1E5A E2D7"
	$"8696 3A33 2B5E 939C 9CA6 E38E E3BA 350F"
	$"73BA 57A9 725A 653A CFCF 65DC 1B99 CA10"
	$"065A A367 FBAA 3CA4 939B 7483 90B8 202E"
	$"682D 0E69 3CC1 7BE3 16DD 78F3 A9F7 86D5"
	$"A5ED 1A4F 5959 2A75 6593 5969 975D EE1A"
	$"C6C9 5D14 5495 FA42 EB43 54E1 0B34 A52B"
	$"8B8C 1248 2376 646B D090 E00B 4BB9 4A14"
	$"4D40 0021 545E 3104 7F86 2B1E F4F5 7756"
	$"E4BA 7DF9 9AB5 F2CF 146A E5DF CA32 F51A"
	$"4B99 98A4 E6FE 4734 F09C C073 0452 D500"
	$"B543 84F4 D9EF B7EE C36D F6E0 506A 4D37"
	$"7CD5 F2DD E3A4 BD59 6945 E6EF 649A 9CC5"
	$"75B4 56DA 2656 535A 2173 DDD9 9DE5 8E6B"
	$"F287 E550 4282 7D0D 2E93 1EA0 BAE3 7F75"
	$"B7C7 95FD C4FE EBBA A755 D21F 97CC 52CB"
	$"7A65 D4DD F8D3 AA0A D3A8 CA8D 99AC E03F"
	$"2680 410A 42A2 5E26 16DF 78C1 A034 06AB"
	$"B6EA FB4D E2F1 5771 B236 7EDC 55F5 342E"
	$"A726 A29A 4A57 66ED D346 E40D 91C5 730C"
	$"40E7 C16D CB36 9B81 17C6 01D4 FEF3 EA9A"
	$"A645 F95A D4E9 358F 4520 3819 1064 AE38"
	$"8D9F 4914 DA56 BC91 DCF7 CD95 CF73 4073"
	$"647B C1CB 8B87 F282 0927 14C7 0E1D 2823"
	$"2475 4538 5BC2 3295 CD64 B239 E7BE 323A"
	$"48E4 9154 0712 C70E 6C44 F4FE 04F0 80A9"
	$"0DF3 2890 4B5B E3B6 3C8A 49A4 25B2 3734"
	$"4162 0C8D A480 002E 2321 3CDA 4818 8207"
	$"1D74 7505 AD6D 97C7 B335 A5E0 39E4 C12A"
	$"471B CB9A 7339 0333 9239 8C14 85E6 31E3"
	$"85D2 8F98 CC45 F6B5 9633 6D5B 4333 101A"
	$"07BD A086 8728 6842 832A E047 A601 3A62"
	$"9971 B5BB 7B21 6597 A638 FDED F087 9E53"
	$"EE4C 9A33 4A4D 511C 8203 123B BAE7 10D6"
	$"6769 2D57 1540 8C70 F814 3D38 6DC4 F300"
	$"0295 BB6A E124 3DC8 6716 CE9E CB36 A38B"
	$"8941 69EC DFB2 29BB 5E79 1D2D EED9 576F"
	$"7DCE 663D 8C7B 5B25 5CF9 DCD6 0CC0 6632"
	$"953C CBFF 002E 2D21 A531 1C47 543B D6DF"
	$"08D1 F2BA 7F2D E105 A728 A4EF 22EF 15D5"
	$"B76A CAC7 573A A239 A574 8F2D 2E76 2E2A"
	$"4047 397D D9BE 2BF1 5E08 C880 E701 C62C"
	$"429A 5369 C3EF F4DB E510 26F3 739E 594B"
	$"9F26 77BC 9390 0255 D813 8285 403F BCF1"
	$"6D6B 27CA 30B6 CB2A C45E 61C0 9999 71B6"
	$"C86F 669C 9CCE 71C0 8C00 4E81 3D3E 1C4D"
	$"7296 813B 5A51 115F 34AA 4DAD 7C17 CD54"
	$"E731 C481 DD00 BA3C 8107 B427 F2F3 3CFE"
	$"7C13 4DEE 588D 1539 C15F 95BC A0BD D545"
	$"E1CE 9330 C0B8 1610 3000 9518 E3CB 0518"
	$"8F87 041A 8F38 DAC6 052D 24ED B7D6 D28D"
	$"7512 648C 3617 B55C AC98 BCE6 3957 15CC"
	$"4E03 32E2 47A7 1D04 933B A1B3 5394 29F9"
	$"411D 5D73 8C2E 7C2D 0D63 8373 B5C7 300E"
	$"2BFE 2FD9 F1FD 9C1F 4185 50C4 6D6A CE99"
	$"36B7 C921 353C B95A F900 E8A4 0C07 F13C"
	$"4853 65C2 21EB D533 22F3 6C20 9DF2 86F7"
	$"1A31 6AF7 4E42 9947 E553 FB0F 33FB B892"
	$"A2C3 2DF1 0EE9 B515 05AD E53B F4A3 3E97"
	$"2656 FE7E D65C ED4E 5972 AA7E 1EA9 F1E0"
	$"B528 B6BB 8C31 34B2 5FE4 BD98 247F FFD0"
	$"ECA8 35EF 01CE AA32 E42D 94BA 3CCE 04B4"
	$"8428 8CF4 3D55 02FC 7894 2308 8A21 656B"
	$"7846 5DE8 DCE6 CA5C C692 0C8D CBEC 7B1C"
	$"ECAA 8ECA 7F30 18A0 FDFC 7525 0AE5 94AD"
	$"8FCE CB1E 4AF7 B43D 88E3 230B 6473 1A08"
	$"C402 1D95 55CA 89EE F995 C716 89D9 386C"
	$"0C6F B7D6 34B9 8E86 60E7 244D 2CFA 67BD"
	$"E1A5 A501 5043 42E3 8E20 0F4E 8BC2 1CEB"
	$"5AD7 5CB0 B418 FC23 132B 59EF 2E26 305A"
	$"D588 4855 A010 0212 0050 50E3 C873 EA58"
	$"285D BEDF 4853 7F16 DBC2 3690 E715 134A"
	$"72A9 7CDF 998D CB94 E25A 7140 3D46 3FB3"
	$"815D 5072 DADB A3A5 C870 B5BC E354 9525"
	$"ED8B 3668 DE1C E944 AE05 C173 39C1 038A"
	$"F3C0 741D 7E03 5578 008B 6CDC B6ED 75AC"
	$"C36D BEB8 C684 A774 AF85 8E31 B2A1 3F54"
	$"1730 35B9 8E04 AF40 7154 E587 2E07 71BE"
	$"D6BF 1E10 E31A 816D 8DAD 2F5E F93F 5733"
	$"5CE7 CAD6 8CAC 2E56 973C 02D0 095E 6710"
	$"57A9 E5C0 C5D1 F06A B677 70B0 B718 D1DC"
	$"31B8 65EE 173F 2173 584A 235A 5FC8 2854"
	$"0B9B 861C 4A42 CA5A 7D9E 11A5 D238 CC8E"
	$"7147 E595 CD04 A0CB 9021 0D70 40E2 DC3A"
	$"20EA 9888 F763 6B63 72DD B64E B589 85BC"
	$"7CE0 3894 3A33 235A 5F24 6040 039C 5D28"
	$"C073 05A5 1002 7995 C3D7 815C 5789 FB70"
	$"F0DB 2924 3815 656B 7CE3 6D44 2F06 3619"
	$"5CE6 C6E6 FBDE 0950 714F 6823 DD8F 3C39"
	$"A74E 067A 2CEE B5B8 4A3E 086D 6B5F 00E6"
	$"52A1 E7DC 4BA2 8C30 E62E 05AE 001C 0FE3"
	$"81F5 C781 6A1F CB69 FBEF EC85 8406 08AF"
	$"961A 1BC5 9AF5 6199 B30A 3BCD 355D 9A79"
	$"E95A D6C8 D654 C0FA 7706 BDCC 7655 121C"
	$"A5E0 8C15 1380 EB23 9A40 B8FC 6253 4BD4"
	$"EA65 7334 EB31 0B98 E0E0 BB5A 4100 A1BB"
	$"6CFE 7114 6F1E 396D E69B D2FA D2EE 6BAF"
	$"15A2 9EC5 7FA1 ADA5 755D 1B33 C357 66AA"
	$"A394 35C6 84E4 786C 8435 C438 07A1 CAE1"
	$"8710 95B4 BA4C 6388 26E3 88D9 C237 2D2F"
	$"DDED 633B 9CCB D22D A4D2 6B52 20F2 BCCD"
	$"B51A E692 39C2 8513 1224 2804 5E20 168B"
	$"D05B 41A5 EBB5 36A0 B569 FD4F 255D A34C"
	$"6B2A 8928 EBF5 05AA 56C9 01D2 3701 3C60"
	$"C164 6E59 1D14 8E6B 0938 391D 95CD 086B"
	$"1428 D069 2407 2807 11B2 785B 7C7A ABA8"
	$"BAA3 A8B3 D4E8 D0A9 5B2E 1AFA F970 A28D"
	$"4087 D7A7 CA67 5CA8 0E00 9093 0A15 A4A8"
	$"69B6 AB58 6D15 C754 5EA8 68B6 E752 D34E"
	$"34D6 B774 D515 3AB2 DB3C 6208 B47D CE59"
	$"1A1A DD39 023D F107 35AE CDED 710F C8F6"
	$"8CA4 3CB6 6699 79FC 4DC7 1DC7 FCB8 C5F7"
	$"AEBA 775E A591 A6F7 E6E8 387A F964 0283"
	$"C153 98A4 01FF 00EC BA41 C848 4FC8 02DE"
	$"6692 A036 D55E F670 6A5B CC96 ED05 A9E9"
	$"E5A7 D2BA E267 9AED 5D6A A863 A9E3 D177"
	$"6927 8DA1 9A6E 12D7 C91E 66B1 EA43 1C43"
	$"8B5E 0169 6683 E929 FC4A A1C4 6CE1 04F5"
	$"BE9B D427 294C 3F35 4083 98CB 0965 DE0A"
	$"9CC5 20D2 A732 640A 1211 5C01 682D 2798"
	$"7BE3 F4DB 35B8 DB97 47A0 6934 46A7 B03F"
	$"5B58 B58E 9DA9 BC4D AAED 75AD 869E BB48"
	$"5CA9 EA1C C806 9CA4 05DD A2F6 B0E7 46BD"
	$"1C43 C372 3919 67D2 7BF9 5085 071D C775"
	$"8C73 DD5A 5D45 A3E8 CECF 3B33 42A7 A157"
	$"2EF0 D141 ED57 3731 4CB5 5DFB 9749 50B8"
	$"2296 C816 92A2 506D 0FDB F7C7 BD39 AC29"
	$"AE96 4BEE B115 F596 EBE6 97A9 376B BD95"
	$"F1C7 4F7D D3F5 768A 858A 3B34 0F12 B60A"
	$"C739 80BF 0765 25AE 0AD2 F65F 4AA2 1CA1"
	$"6EDA 311C 38DA FC3F AE7F BB2E ACCF E9A6"
	$"9D6A 596E 50FA 4FFC 69D4 079A 9D56 5468"
	$"535D C10B 9A03 A530 A841 4224 76D6 F825"
	$"B45B 53AF 2DFA FF00 4FEA 0D53 5F7A B247"
	$"70A7 A165 EABE DB35 3C86 B2DF 25BC 8945"
	$"3504 2F39 5933 8B72 BC7B B2F3 1812 69E9"
	$"EDA6 E0E0 4A88 C8FA DFFB 9EEA 0D7B 4BA9"
	$"91CC 51A0 DA4F 2D27 918F 0E1C AE0F 08B5"
	$"1C26 5B35 172A 5EB1 2B6D BA36 D36E AE86"
	$"BA19 AABB 9010 C8E3 AA10 C8FC 6231 956B"
	$"2154 CA70 C798 5C78 225B 630C CE75 057A"
	$"D48B 5C00 0762 ED5D A71D DBA1 5F10 6873"
	$"58E9 1AF3 943E 285A 5AA0 B8E2 1A4B 81C0"
	$"2215 F961 871C 2B10 4499 C62E 3344 2401"
	$"8D20 1391 EF47 805A 086E 250E 1979 9C02"
	$"1C4A F0DA ADAD 630A 2B8D D6B7 7463 0C53"
	$"373C 8F1D 98C9 7941 DB69 01D9 B12C 78E4"
	$"EC02 1774 F927 C4C2 5A0A 8C67 002F 55D0"
	$"5B68 64AC 9E67 39B1 891D 9E52 C6E7 612A"
	$"DC41 182E 217E 2797 0CD4 7810 4E52 839C"
	$"5044 5AD7 7BF9 4364 24CB 3E48 E132 3F33"
	$"0071 1DB2 5CE5 05E1 310A A4E1 D515 4B1E"
	$"BA85 0651 6ECA F4E9 215C 3BE5 DD28 0DA7"
	$"FC8C D377 10F6 CD70 1186 BCC5 9E43 95CA"
	$"1C5A 57BA 32E0 843B DC10 82A0 2F0E 52AA"
	$"E321 3FA5 FE50 DE6F A752 7F1F B7C6 F88F"
	$"BE57 6EB6 DFDD 3405 D7EB AED0 9919 0CB5"
	$"34A5 B511 B9D9 C0CA 0B4B 0901 C330 0DF7"
	$"2A90 7045 E3AD 7824 DD84 8DC6 624B 86F2"
	$"A24B 3893 D174 FA94 8E29 B461 2D98 F715"
	$"386C E4CF 77B7 99B4 DA8A ED4B 6CAC 3352"
	$"C53B DB03 3BF2 C91B 5A25 24E6 45CC A809"
	$"2B82 81C2 E9E4 FD49 8BB8 0121 74B0 3B7B"
	$"6663 47A2 A005 9769 BCDF D9B2 EE02 E88A"
	$"1AB3 71AB 2F51 BDB5 5506 40E4 6FEA 39A0"
	$"A3BD B950 7B71 418F C3E0 BC4A 65B2 2D61"
	$"5BCF 8439 5332 076C 7713 E59E D268 EBCE"
	$"C1F9 A7BF 8FB6 50DA 2DFE 52EC 778D FA56"
	$"CDA8 E9ED B6F6 7F4F ABD5 5AB2 FB62 AFFA"
	$"599C 4C4E 9656 5C69 5CEE DB58 49C8 8492"
	$"0F1B 666B 2CD2 C7BB FC4D 68F1 3F38 F3D6"
	$"4B3A F0FA 4C1F C0F7 9F01 F288 C577 FB20"
	$"FDB1 2E3E 44ED 4EC8 DB2F 92D1 6A1A 6D6D"
	$"7ADA 9D6B B6BA 5773 68AF 9A92 E9A7 E9B6"
	$"CEBF 5753 5EEE 946D 61A8 B555 32BA 8DB1"
	$"3E16 C4C8 8C72 35C8 3B8C 46BF A3E5 83C3"
	$"06D4 BD4A 22F6 5B6C 127A 933A 6939 C6E2"
	$"0154 417A 20DB 10FB 617E DF5F 684D FCDF"
	$"1DB0 B36D 45FD 9AF6 A370 7627 476E B69F"
	$"F1E2 E5BA 3083 26E1 DD2E 2E6D D2D5 76BD"
	$"D958 F7D1 DDE9 A95D 1FFE 9E91 6790 B888"
	$"DAC6 90D1 68E4 728F 7802 6AD5 45C7 E704"
	$"6675 1CED 261E 6088 E217 970D A9B3 7C49"
	$"DDBF FB59 78C9 BC96 CD80 F1AA BE4D C1D3"
	$"7B0B 4BE4 2EE6 5824 DB2D 7BF4 36BB ED3D"
	$"1E9F D017 0BF3 6966 9A2A 6350 D79A A688"
	$"CCED 99ED 9600 1CC4 2F12 7065 3C85 3700"
	$"D9F2 F311 E102 D7D5 AB37 99F2 2E2C 1317"
	$"4CC3 1367 FB4C FDB9 6F96 5A6D FF00 BE6D"
	$"96B1 B56D 86B3 D87D 92F2 DED5 B33A 7759"
	$"4F2C B64B 9EE1 DFAA E86B A822 BB55 D367"
	$"A9A7 11F6 9A1D 2461 E32B 9CD2 DCED 6B7E"
	$"FD8D 16AB 8028 80DF B7B2 1475 5CC1 7228"
	$"5E62 1536 4478 D13B 4DB4 BE2C F9F9 F74C"
	$"F093 6BF6 C2CC EDB9 DB8D 09AA B703 47EB"
	$"CD55 154D CF58 D1C3 258E C192 D4CB 854C"
	$"E63F A188 DCE5 786F 67BA E7A1 7CAE 4038"
	$"A275 AE50 D3AD 45CD 71FF 0051 A125 CB79"
	$"3340 A150 3566 00C2 6B13 BA2E 6CD4 A279"
	$"B169 276E F4F3 4C48 BE2B 53ED 3BAA 6D17"
	$"1A6F 2E36 D2E9 B73A 72E6 EA9D AAD6 5B81"
	$"16E2 5CE8 24A9 D491 4948 CA0B 6B68 219E"
	$"69DD 0C74 8454 C92B 98D8 048E 7A13 210D"
	$"0D1F 7546 5DCD 341E 1C47 F31A 13F8 6F59"
	$"A4C2 A00A A400 6E9A C35A 5E60 383D A924"
	$"3C7E BB52 5708 A579 0E29 FF00 9814 3108"
	$"5729 CBCC 663D 7984 C0F1 A1D3 6A08 AA66"
	$"3353 413F 85A7 F78F 7B87 E8D7 1CB9 F3E7"
	$"48D7 F2E7 5554 55EB EB8A 705C AFDF 01FA"
	$"9F8D F8D8 5BCE 3FFF D1EC B58A F7AC 65F2"
	$"9606 801C 8BEE 5F68 0FE5 80C4 AA73 E7C4"
	$"B38D F11A E37F 7DAE 8F5C 23CC E74D 376E"
	$"5918 10CA D2F7 3998 8576 52D6 8C08 E5E9"
	$"F31C 226B 0800 DBE3 01B3 472B 8BA1 5754"
	$"3CB6 40C0 DE4D 0072 0081 8262 ADC7 869F"
	$"5089 DADF 48EB 66EB D05B 7DB7 C66D CEF7"
	$"9924 7069 7863 9C0A 619B E2D2 C188 27E1"
	$"885C 71E0 6719 243A DB96 DF5B 25D3 F3BD"
	$"1BDB 31EC 8EE1 CD2C F0CC C03A F538 A397"
	$"A2F2 3EB8 F0C3 DC0A CED6 F8C2 1A25 69DA"
	$"C120 3199 A1AE 4CAE 07F3 465A B89C A117"
	$"2B48 F98E BE9C 3151 F29E CDF6 C479 4380"
	$"2DB1 5B5A 518A C6D0 5A23 2C2C 58DE 5B9C"
	$"0010 B803 8BB1 518E 1890 3963 C04E A935"
	$"C6D6 C2F8 7182 6314 B5BC E352 3A30 18CF"
	$"E50E 25AF 38E2 E31A A020 825A 8A3F B386"
	$"3981 11D0 D370 B5AC 91B2 273A 46BC 35AE"
	$"676C B73C 6D05 BDB6 39CA 5410 4850 1153"
	$"928E 077B B643 8303 6DDE 7C16 3438 2098"
	$"E670 03F5 2174 81C5 8E38 3496 8518 607D"
	$"3970 C39E 095B C2FC 6DDF D90F 0DA6 D7DA"
	$"CB18 4863 EDC8 C85A D78C EF7C 4183 F2AB"
	$"4820 0270 39B9 95F8 2F5E 0473 8E3E 7C38"
	$"C2B9 17E5 1E4B DAED E76F B9C0 E501 EAE2"
	$"D05E 1A47 E601 1029 F9F2 5E04 73C2 6EB7"
	$"7C77 8DD6 B764 042F 7093 10C4 2C0E 0E68"
	$"6B4B 463C C8CC B8BB 054C 1515 0F03 3DD2"
	$"EC85 2A05 8D12 3238 A58E 59A3 EE38 1746"
	$"0C48 58CF 6E04 1CAD 7E2B 80F5 FC38 15EE"
	$"C121 7CB8 611E 48D9 0BA4 6B6A 465C 2373"
	$"A36C 8A49 7169 2D2E 7601 5402 9872 E983"
	$"6F33 9885 12BD 909E D456 4A0B FD96 F960"
	$"AA74 A6DF 7EA4 9EC9 5735 2863 8F6A A62F"
	$"A678 697B 1E0B 9AD5 2DE7 C89E 5891 6B80"
	$"E610 711E 0625 74BD 56A6 5333 4EB3 00E6"
	$"A6E0 E00A DED2 0859 ADF7 A244 7787 C40D"
	$"B982 0BB4 42F9 7963 EE96 DBA6 99AC FA8A"
	$"8B6B B2C3 7BB6 CD69 9A48 F350 B7DE 63A9"
	$"7382 0CA5 E028 2330 3027 4BA5 BF1D 9889"
	$"DC25 6513 8D81 DEFD EB0E 7537 7A74 BF07"
	$"B1E2 4FBE 9BDA F683 F9CC 2B40 38A1 2010"
	$"5086 B34A 7DBD 7663 485D AA2E D41A 9B53"
	$"BEB6 A286 F1A6 1D1D 5575 9E48 DB4D 7AB5"
	$"D4D9 2678 0DB6 46E2 F11D 63DC D717 1476"
	$"2705 6909 BA35 0615 5376 EC42 6EC1 4F1D"
	$"A2FB B6B5 FDD8 F526 A140 52AB 4280 687D"
	$"37C9 B501 5A75 1951 A3FD 4211 5801 09FA"
	$"7614 237E 9DFB 7B6C E694 AEB8 5CE8 351E"
	$"A99E 5B9D B6ED A524 6D45 55A4 B4C1 7AB4"
	$"D4D8 EA64 01B6 E610 F115 53CC 6492 039A"
	$"090E 1ED2 C1D2 A8B1 4826 E388 E1B2 D720"
	$"84EA BFDD 7751 67A9 329B E8E5 C065 4A6F"
	$"936A 2AD3 A8DA 8D13 A865 CCD0 A04D 0942"
	$"0CC7 DB61 E03E CFED 2EB7 B36B FB0E A1D4"
	$"F5D7 BB4C 15B4 D454 F79A DB54 F4AE 170A"
	$"1A8B 5BF3 361B 6C2F 7648 A756 E576 042F"
	$"2C0B 34F4 DA74 DC08 5C7E 4308 4759 FF00"
	$"74FD 43AE E9B5 3239 8A34 1B4D E5A4 F236"
	$"A077 E2F6 BC21 351C 265B 3517 28BE 7129"
	$"6D3A 0AC9 68B8 4178 A7AE 9EB1 F4AD 99B0"
	$"3E57 459C 89A3 3999 FA71 3110 745E 8178"
	$"70B4 0BA3 0ECE 7535 6CC5 22C7 3400 762A"
	$"C8AE D858 CB19 8820 8D1E DCC6 39A3 6BB0"
	$"686E 6E41 B829 7154 E4A1 0E18 7419 C579"
	$"B28D AF72 3E23 DBC7 FF00 A86C 7346 0B58"
	$"492D 622B 8383 9146 0BF0 180E 1A48 51A8"
	$"510D D6B7 D635 BC97 FF00 CC3C 3658 2422"
	$"299D 9CB9 AD2D 0E04 B473 0150 8C57 D39F"
	$"1C29 1F03 211B 5D34 7282 5AE0 E45F CA46"
	$"6043 5A4E 20AB 93A1 03A2 E283 8439 5540"
	$"B5BE E214 5BDD 6F1B 4A3C 7BE2 C895 5135"
	$"CC07 207B 7DD9 733C FB42 8042 051C BA22"
	$"A8E1 20A5 D7DB EF7F 818E 72AD AD6D B11C"
	$"77CF 59C3 A7B4 B5C7 2CC6 3745 1B9B DD7C"
	$"B2C7 17B4 6427 304C A401 8129 8A73 1871"
	$"119E CD05 0D26 F3DB B512 6A36 A5C2 7245"
	$"8BA7 4D69 BCCF E64B A786 175B B228 1373"
	$"3C81 81F5 D74A 78AA 8452 C1F5 1242 ECED"
	$"6025 EE7B 4BCB 63CE D766 61E6 A98F E543"
	$"8C5D 0CE3 DCE9 E386 C937 6869 499C 0F10"
	$"7F18 D69B A434 357C 76CD DB16 6512 5E21"
	$"5D15 B1B8 3E5A EB2D 2174 9859 AED3 10D7"
	$"77A0 CF24 80B1 CD01 0825 C48C 7901 FC54"
	$"999C B503 5494 871D 936A 05ED BA21 E6E1"
	$"F945 B93A E209 20B9 5E64 6D3C 811C C89C"
	$"E623 57B8 0342 F26F 31D7 9F3E 2C59 7CA0"
	$"5424 BAED B804 1E05 04A5 8401 CAC6 990F"
	$"85E8 7C4F 61C6 22F5 CEED 254E 79DF 338C"
	$"D2FE A174 9CD4 80A9 E850 FCBD 0F12 ACCA"
	$"9501 256F 085B B303 9676 B26E 849D 4D72"
	$"6513 4B80 57B4 1249 0A79 FC39 E3C4 9B72"
	$"C461 6488 7AF9 D0A9 6B6C 8B78 DCEF BE67"
	$"983B A9E2 8696 F106 E9A4 B415 9B44 E96B"
	$"5E80 D294 BB87 A76C B7B6 6A9A BA7D B8AF"
	$"A2BA 5A5F 5535 6DDE A685 EF35 140C 965C"
	$"B46D 6389 706B 5808 1C59 2A6B 559D 4430"
	$"8124 E32B B18A 3374 0CBD 3AE6 A85C 64B2"
	$"9F8E 297A EF30 F0DC FF00 EE31 F311 DAE7"
	$"406E 169D D9CD AFD2 D75D 29A8 6E1B C1AA"
	$"2D90 5A75 3CF4 1A97 575D 7483 F434 972A"
	$"E8DF 7E64 B1F6 E825 7471 454F 2C6C 0F57"
	$"3F3E 086B F59A C087 728D BC4A 2795 B686"
	$"EE9A CBB1 A417 38CB 6812 0576 76FC A2BC"
	$"BC14 FB86 6E17 8235 BBAD 1696 DBAD 2DBB"
	$"3A2F 7AE8 6D76 4DC2 D11B 9F0D C8D2 CFFD"
	$"12B9 F74B 7CB0 CF69 ABA3 9E37 C533 8BC9"
	$"CC41 1CDB C880 7259 B751 5002 83B7 7415"
	$"A965 195D 15C5 4137 777D 3B00 DE65 3DBF"
	$"FEE0 CF38 AD9A F346 EE23 EC3A 0EBA FF00"
	$"A3B7 1B51 791F 1BE5 B35E 1A2B 6B75 369F"
	$"9F4B D4DA A70D BB64 FE9D 150C FDB8 031A"
	$"D9DA 58D7 3A67 B812 6619 9EA8 AA76 AFC3"
	$"BA22 6B69 3403 4853 701D D3D9 090D 5BF7"
	$"D5F2 86F2 DD59 65B0 6D46 DC68 CDBD BE68"
	$"4D09 E37E 98DB AB45 A750 4943 A6B4 A6DE"
	$"5D26 BBDA E0B7 CAFB D09D D219 262D 95F5"
	$"0F94 1634 3581 8412 5CFD CB9C 0840 8807"
	$"7406 FCB3 5855 4AA9 3DA6 DE11 1935 27DD"
	$"0F7E F51F 953E 48F9 7D5F A434 7C7B 97E5"
	$"1E9C ADDB 2DC2 B1D2 D0DE 5962 A3B7 5752"
	$"5B29 2492 DD03 EEAF 9E39 9ADB 5C45 AE9A"
	$"A256 825C AD2A 0363 F55D 35B9 C2D7 3C91"
	$"CAE0 E09B 4613 065B 510E F85E 4B34 68B3"
	$"95A1 6493 DFC3 1D97 CFC1 A4DB AF3B 3757"
	$"6BEC 76FD 3FA2 F496 93A1 FA0D 07A8 BC7A"
	$"96EA FB55 536B AB2D 3A9A EB0D E2A2 AEAA"
	$"48EA E3EF 56B5 F4CD 8E19 1CD2 D6C6 A3B6"
	$"EFCD C22B F4FD 3AAE 0E73 9D27 875F 8892"
	$"0D82 7301 176C 24EA 151A 2497 11F5 DFB8"
	$"CC44 2094 485B 1971 CC1F 8B5C DEA4 1710"
	$"0051 87C7 F7F5 1656 98AE BDA4 19DA D6D8"
	$"73EF 33E8 3BDF FCD5 CC8E E689 CF9A 260B"
	$"FBBA 70EF 2492 17CA EE54 B5D6 B4E3 FFD2"
	$"ECA2 9FB9 9E5C B932 770A 767B 5DCE 6396"
	$"6F77 2E5F DFC4 A4E7 F4F1 FAC4 60BC ADB8"
	$"A5AF 8CE3 CAB0 A65F E7C9 F439 FBAB 87AF"
	$"4F45 C138 49B5 AD84 20DD 6B7C 2E8C 274E"
	$"E55E 5CD9 729F F3F3 2AA6 0B9B 1CBF DA8B"
	$"C0CE 4F28 705C 12F9 DA72 E291 BA8F 2E6A"
	$"55ED 731F 973E 65CB D32F 5FF1 7444 E05A"
	$"C887 B21B 2AB8 786C 1609 05F2 2F6A 255F"
	$"FDD4 E4AD E69F CDFD 89D7 843A F28B 6E38"
	$"785F 0453 C7B2 FB77 7840 9972 67F6 2FF9"
	$"9EEE EE7C A9EF 5FF3 3FB3 1E69 D380 C2FD"
	$"AFB5 B6C7 596F A5AE 4801 3266 3973 22C4"
	$"BDC5 E58A 65CF D3E5 8F25 E047 DC21 E6FE"
	$"91C7 E36E DED8 F644 EE37 FCA5 CDFA 9CF9"
	$"237F 0E7F E1C7 F04E 1931 C7DE 38F6 DBE8"
	$"B1BE 9F27 7655 EFE7 CEFF 00F1 F3C8 DF4F"
	$"6E7E 5F0E 7F1E 067A A766 EB27 D23A 5530"
	$"C2C6 014C 99D8 88B8 A763 3654 CDD5 7054"
	$"F5C7 F15E 03CC 2A7C D2DF 4482 695D DB6B"
	$"6DBB 080B 2E6C 8726 7548 F2FD 365C A994"
	$"7E4E E7F2 FA2E 29F0 E06A 89CC 7B76 EFBF"
	$"7D8E 30B6 DADE 7F28 F654 EE43 9722 6472"
	$"2AF7 3937 F2E6 FDFC 0D56 E163 D9BE 1584"
	$"069F 9499 BFF9 9DAC DF97 F28F CD97 F955"
	$"5737 F04E 0577 EAED 36F9 C264 A6C7 08CE"
	$"55EE 3111 723F 2FE5 EE2E 1F93 361F 35F8"
	$"70C3 FF00 48BE D6EE 487C DF6D F018 6657"
	$"AAE7 CD1A 66CA A8AC 5CC9 ED5F 4EBE 9C32"
	$"EBA1 C65F D9F3 F0FA C7D5 7957 DC9F 95D9"
	$"7366 E787 3CBF CBFE 25C3 9702 BB1B EFB6"
	$"E5D9 8DD1 F0BE 0104 CD16 7CB9 55D9 BB4B"
	$"9972 B13B 7DBC 513D 304E 78F0 D55F D27B"
	$"3CF1 FAC9 5525 0E1C 237B BB99 6345 C999"
	$"C9DA ED2A A3F2 A2FB B37F 8BFF 008B AF01"
	$"54DD B079 6FB5 C90E B527 DBE6 3B38 7861"
	$"19CD 97B6 D5CD DBF6 267C FEBF 0F76 64E4"
	$"BD53 AF0C 3BF5 4D71 BBB6 DB11 6122 E82E"
	$"953B 1267 4EE6 5893 B8A8 AAE4 5C9E DC9E"
	$"9D3D 780A A5C2 D6F3 BE08 3FAB 74EC 718F"
	$"9D91 076B 32E5 197B 7DC4 E457 377B 0C89"
	$"C97E 298F 039F D56B 2C77 F8ED 6B6D 8C19"
	$"97B2 C4CD 9FB8 D5FA 7CE9 9BB6 DE6B ED45"
	$"FCBD 3974 5E13 0818 C78C CBFF 0031 9D72"
	$"67C3 2665 CB91 C9DC C9EE FED5 E7C2 1D87"
	$"C7E1 F0EC 8785 E2D8 0B79 4634 CBDD 8BB9"
	$"F97F 5737 D165 CBC8 2E6E D62B F2F8 263C"
	$"2767 084B EF3B 17E7 DB1A A54E ED4F 6FBE"
	$"99A2 CDDA 5CC9 99BC FBB8 FF00 E14C 79FC"
	$"3849 BAD6 5E3F 3853 2FEF F8F8 7082 CA9C"
	$"F965 4EF6 5CAD 5C9D BCDF 947E 45C7 D53F"
	$"E1C0 A7F4 8EDB 5B15 DF12 8C45 B245 6EF9"
	$"A9DC FF00 4B5C 17B9 9721 FCDD AEFA 6662"
	$"76D3 1CCB CBAF 35C1 78AD EB0B CAF4 5C6F"
	$"4E4F FD5B 9179 B72E 3C91 A674 5A7E 377F"
	$"0DD7 E376 FB93 E5CD 1CBE 6E27 D47F 5AB8"
	$"A7F5 7CBD D953 B9F4 D9BA 7E5C D8AA 7FF1"
	$"7C78 4534 F2DB B71D FE0A BBE3 597D C137"
	$"DDC3 CB62 7F0F 2EE8 82BB 91DC FEAB 559B"
	$"EA13 15FE A5DA 5453 F9B2 FEEE ABF8 7169"
	$"D293 95B7 78F8 7C77 6E58 88D4 3F4B BE3F"
	$"1F82 63BE 19BB 8E54 7F2C C832 2E64 5CDF"
	$"CFD3 E4BD 7F1E 2CB4 BF5D ADC7 E710 2FF9"
	$"DB8E DEC8 494B F99C 9951 42E5 FCCA 9F1C"
	$"78B1 E551 25E0 BBF6 DBB2 2273 BFAE DBAD"
	$"6304 722A CAB9 B362 99D3 373E 8987 C978"
	$"70A2 DADC 62BF 57F5 9F8C 056A F68F 2449"
	$"3F3A 65FC D866 EBF3 FDFC 7C6F EE8E 3BF5"
	$"7741 6CD9 BB2F CB9F 2F77 F9B2 2AE4 1FE3"
	$"C557 9FC1 7A71 26E4 59EC C6D6 9630 8CC5"
	$"E177 5827 8403 7AE4 93F3 A65F FCDC B97F"
	$"1EAB E9F1 5F8F 1C08 A2EE C805 E9F8 FD76"
	$"0BAD 726E 84EC 9CFA FF00 EFFC 8712 4D88"
	$"CAF7 E3DB D904 E7FC B6A7 3CBF C9EB F05E"
	$"9E9F 04E0 D17C 4166 3F5C EDC5 2317 2A8F"
	$"4CCD E689 D3FD 87C7 8759 FA87 C21A 6278"
	$"5ADB 37C1 53FF 00CC 9F2F 6B37 65DF FD3A"
	$"2A65 1F9F 3608 BF8F 2E8B C174 FF00 4E36"
	$"30C5 5C78 9E3D B6DA 901C E7CA CCB9 914A"
	$"276D 3FCC EB9B 1CDF 3EBF 8F0E 8458 8C09"
	$"8A58 6EC2 33C3 E83A 64EE 7C51 3B1F FF00"
	$"2E7F BBE1 C393 B25B E1DB 047F 0EF5 B6EF"
	$"AEF8 FFD9 0007 00AE 007C 0007 0001 0001"
	$"0003 0003 0004 0000 000D 000C 0010 0144"
	$"0144 0144 0144 0028 0061 006C 1051 7569"
	$"636B 5469 6D65 AA20 616E 6420 6100 0028"
	$"006D 004E 1950 686F 746F 202D 204A 5045"
	$"4720 6465 636F 6D70 7265 7373 6F72 0028"
	$"0079 0045 1F61 7265 206E 6565 6465 6420"
	$"746F 2073 6565 2074 6869 7320 7069 6374"
	$"7572 652E 0000 00FF"
};

