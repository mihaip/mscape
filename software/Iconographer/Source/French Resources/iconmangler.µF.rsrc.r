/* Resource fork of software/Iconographer/Source/French Resources/iconmangler.¬µF.rsrc */
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
	$"0000 D650 EB00 0012 0000 0050 0020"                 /* ..÷PÎ......P.  */
};

resource 'DLOG' (129, "Register") {
	{178, 612, 313, 962},
	1043,
	invisible,
	goAway,
	0x0,
	129,
	"Register…",
	alertPositionMainScreen
};

resource 'DLOG' (2000, "Nav Custom Items", purgeable) {
	{253, 278, 283, 547},
	1024,
	visible,
	goAway,
	0x0,
	2000,
	"DITL 2000 from iconmangler.µ.rsrc",
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

resource 'FREF' (128) {
	'APPL',
	0,
	""
};

resource 'FREF' (129) {
	'****',
	1,
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
		$"7FFF 8088 5D5D 8084 5D4D C0FE 5555 8056"
		$"5559 C002 6B5D 8006 7FFF C002 02AA 8006"
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

resource 'MBAR' (128) {
	{	/* array MenuArray: 5 elements */
		/* [1] */
		128,
		/* [2] */
		129,
		/* [3] */
		131,
		/* [4] */
		136,
		/* [5] */
		138
	}
};

resource 'MENU' (128) {
	128,
	textMenuProc,
	0x7FFFFFFB,
	enabled,
	apple,
	{	/* array: 3 elements */
		/* [1] */
		"About Iconographer…", noIcon, noKey, noMark, plain,
		/* [2] */
		"Register…", noIcon, noKey, noMark, plain,
		/* [3] */
		"-", noIcon, noKey, noMark, plain
	}
};

resource 'MENU' (129) {
	129,
	textMenuProc,
	0x7FFFFDEF,
	enabled,
	"File",
	{	/* array: 11 elements */
		/* [1] */
		"New Icon", noIcon, "N", noMark, plain,
		/* [2] */
		"Open Icon…", noIcon, "O", noMark, plain,
		/* [3] */
		"Open Recent", noIcon, hierarchicalMenu, "Ç", plain,
		/* [4] */
		"Close", noIcon, "W", noMark, plain,
		/* [5] */
		"-", noIcon, noKey, noMark, plain,
		/* [6] */
		"Save", noIcon, "S", noMark, plain,
		/* [7] */
		"Save As…", noIcon, "S", noMark, plain,
		/* [8] */
		"Save Into File…", noIcon, noKey, noMark, plain,
		/* [9] */
		"Revert", noIcon, noKey, noMark, plain,
		/* [10] */
		"-", noIcon, noKey, noMark, plain,
		/* [11] */
		"Quit", noIcon, "Q", noMark, plain
	}
};

resource 'MENU' (130) {
	130,
	textMenuProc,
	allEnabled,
	enabled,
	"Open Recent",
	{	/* array: 0 elements */
	}
};

resource 'MENU' (131) {
	131,
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
		"Copy", noIcon, hierarchicalMenu, "á", plain,
		/* [6] */
		"Paste", noIcon, hierarchicalMenu, "Ü", plain,
		/* [7] */
		"Clear", noIcon, noKey, noMark, plain,
		/* [8] */
		"Select", noIcon, hierarchicalMenu, "Ñ", plain,
		/* [9] */
		"Transform", noIcon, hierarchicalMenu, "Ö", plain,
		/* [10] */
		"Adjust Colors…", noIcon, "U", noMark, plain,
		/* [11] */
		"-", noIcon, noKey, noMark, plain,
		/* [12] */
		"Preferences…", noIcon, ";", noMark, plain
	}
};

resource 'MENU' (132) {
	132,
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

resource 'MENU' (133) {
	133,
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

resource 'MENU' (134) {
	134,
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

resource 'MENU' (135) {
	135,
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
		"Colors", noIcon, hierarchicalMenu, "â", plain,
		/* [5] */
		"-", noIcon, noKey, noMark, plain,
		/* [6] */
		"Insert…", noIcon, "K", noMark, plain,
		/* [7] */
		"Info…", noIcon, "I", noMark, plain,
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

resource 'MENU' (138) {
	138,
	textMenuProc,
	0x7FFFFFCF,
	enabled,
	"Window",
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

data 'Mngl' (0, "Owner resource") {
	$"1BA9 2031 3939 382D 3230 3030 204D 6968"            /* .© 1998-2000 Mih */
	$"6169 2050 6172 7061 7269 7461"                      /* ai Parparita */
};

data 'Pref' (129, "Default Preferences") {
	$"0000 0011 0E4E 6F74 2072 6567 6973 7465"            /* .....Not registe */
	$"7265 6420 2020 2020 2020 2020 20EB 000D"            /* red          Î.. */
	$"02EC 000D 02EC 000E 02ED 000E 02ED 000F"            /* .Ï...Ï...Ì...Ì.. */
	$"02EE 000F 02EE 0010 02EF 0010 02EF 0011"            /* .Ó...Ó...Ô...Ô.. */
	$"02F0 0011 02F0 0012 02F3 001A 02F3 001C"            /* .......Û...Û.. */
	$"02F4 001C 02F4 00F4 02F5 00F4 02F5 0111"            /* .Ù...Ù.Ù.ı.Ù.ı.. */
	$"02F6 0111 02F6 026B 02F8 0011 02F8 0012"            /* .ˆ...ˆ.k.¯...¯.. */
	$"02F9 0010 02F9 0011 02FA 000F 02FA 0010"            /* .˘...˘...˙...˙.. */
	$"02FB 000E 02FB 000F 02FB 03FF 02FB 0400"            /* .˚...˚...˚.ˇ.˚.. */
	$"02FC 000D 02FC 000E 02FD 000C 02FD 000D"            /* .¸...¸...˝...˝.. */
	$"02FD 03FE 02FD 03FF 02FE 000B 02FE 000C"            /* .˝.˛.˝.ˇ.˛...˛.. */
	$"02FE 03FD 02FE 03FE 02FF 000A 02FF 000B"            /* .˛.˝.˛.˛.ˇ...ˇ.. */
	$"02FF 03FB 02FF 03FD 0300 000A 0300 026B"            /* .ˇ.˚.ˇ.˝.......k */
	$"0300 03A1 0300 03FB 00DD DDDD 00DD DDDD"            /* ...°...˚.›››.››› */
	$"00DD DDDD 00DD DDDD 00DD DDDD 00DD DDDD"            /* .›››.›››.›››.››› */
	$"00DD DDDD 00DD DDDD 00DD DDDD 00DD DDDD"            /* .›››.›››.›››.››› */
	$"00DD DDDD 004E 4F50 00DD DDDD 00DD DDDD"            /* .›››.NOP.›››.››› */
	$"00DD DDDD 00DD DDDD 00DD DDDD 00DD DDDD"            /* .›››.›››.›››.››› */
	$"0DB1 1CD0 0000 0000 001E 80F0 0DCF B6A0"            /* .±.–......Ä.œ∂† */
	$"00DD DDDD 00DD DDDD 00DD DDDD 0DB1 10D0"            /* .›››.›››.›››.±.– */
	$"00DD DDDD 00DD DDDD 00DD DDDD 00DD DDDD"            /* .›››.›››.›››.››› */
	$"00DD DDDD 00DD DDDD 00DD DDDD 00DD DDDD"            /* .›››.›››.›››.››› */
	$"00DD DDDD 00DD DDDD 00DD DDDD 00DD DDDD"            /* .›››.›››.›››.››› */
	$"00DD DDDD 00DD DDDD 00DD DDDD 00DD DDDD"            /* .›››.›››.›››.››› */
	$"00DD DDDD 00DD DDDD 00DD DDDD 00DD DDDD"            /* .›››.›››.›››.››› */
	$"0DB1 1CD0 0000 0000 001E 8080 0DCF B6A0"            /* .±.–......ÄÄ.œ∂† */
	$"0DB1 1CD0 0000 0000 001E 8070 0DCF B6A0"            /* .±.–......Äp.œ∂† */
	$"00DD DDDD 00DD DDDD 00DD DDDD 0DB1 10D0"            /* .›››.›››.›››.±.– */
	$"0DB1 1CD0 0000 0000 001E 8050 0DCF B6A0"            /* .±.–......ÄP.œ∂† */
	$"0DB1 1CD0 0000 0000 001E 8040 0DCF B6A0"            /* .±.–......Ä@.œ∂† */
	$"0DB1 1CD0 0000 0000 001E 8030 0DB1 10D0"            /* .±.–......Ä0.±.– */
	$"0DB1 1CD0 0000 0000 001E 8020 0DCF B6A0"            /* .±.–......Ä .œ∂† */
	$"0DB1 1CD0 0041 4E32 3734 3537 38CF B6A0"            /* .±.–.AN274578œ∂† */
	$"0DB1 1CD0 0000 0000 001E 8000 0DCF B6A0"            /* .±.–......Ä..œ∂† */
	$"00DD DDDD 00DD DDDD 00DD DDDD 0DB1 10D0"            /* .›››.›››.›››.±.– */
	$"00DD DDDD 00DD DDDD 00DD DDDD 00DD DDDD"            /* .›››.›››.›››.››› */
	$"00DD DDDD 00DD DDDD 00DD DDDD 00DD DDDD"            /* .›››.›››.›››.››› */
	$"0DB1 1CD0 0000 0000 001E 7FC0 0DCF B6A0"            /* .±.–.......¿.œ∂† */
	$"00DD DDDD 00DD DDDD 00DD DDDD 0DB1 10D0"            /* .›››.›››.›››.±.– */
	$"00DD DDDD 00DD DDDD 00DD DDDD 00DD DDDD"            /* .›››.›››.›››.››› */
	$"00DD DDDD 00DD DDDD 00DD DDDD 00DD DDDD"            /* .›››.›››.›››.››› */
	$"00DD DDDD 00DD DDDD 00DD DDDD 00DD DDDD"            /* .›››.›››.›››.››› */
	$"00DD DDDD 00DD DDDD 00DD DDDD 00DD DDDD"            /* .›››.›››.›››.››› */
	$"00DD DDDD 00DD DDDD 00DD DDDD 00DD DDDD"            /* .›››.›››.›››.››› */
	$"00DD DDDD 0000 0000 0000 0004 00DD DDDD"            /* .›››.........››› */
	$"0DB1 1CD0 AB00 0006 0000 0160 0004 5C4C"            /* .±.–´......`..\L */
	$"0000 0000 00DD DDDD 0000 014E 0000 0000"            /* .....›››...N.... */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0184 0000 0007 0000 0000"            /* .......Ñ........ */
	$"0000 0001 FFFF FFFF FFFF 0000 0000 FFFF"            /* ....ˇˇˇˇˇˇ....ˇˇ */
	$"FFFF 0000 0000 FFFF 0000 0000 FFFF FFFF"            /* ˇˇ....ˇˇ....ˇˇˇˇ */
	$"0000 0000 FFFF FFFF 0000 FFFF FFFF FFFF"            /* ....ˇˇˇˇ..ˇˇˇˇˇˇ */
	$"FFFF E6E6 E6E6 E6E6 D9D9 D9D9 D9D9 CCCC"            /* ˇˇÊÊÊÊÊÊŸŸŸŸŸŸÃÃ */
	$"CCCC CCCC BFBF BFBF BFBF B3B3 B3B3 B3B3"            /* ÃÃÃÃøøøøøø≥≥≥≥≥≥ */
	$"A6A6 A6A6 A6A6 9999 9999 9999 8C8C 8C8C"            /* ¶¶¶¶¶¶ôôôôôôåååå */
	$"8C8C 8080 8080 8080 DBDB 0000 2A2A FCFC"            /* ååÄÄÄÄÄÄ€€..**¸¸ */
	$"F5F5 0000 0000 9191 5050 0000 A5A5 E6E6"            /* ıı....ëëPP..••ÊÊ */
	$"2C2C 0000 6868 DFDF 0000 7171 7373 7373"            /* ,,..hhﬂﬂ..qqssss */
	$"7373 6666 6666 6666 5959 5959 5959 4D4D"            /* ssffffffYYYYYYMM */
	$"4D4D 4D4D 4040 4040 4040 3333 3333 3333"            /* MMMM@@@@@@333333 */
	$"2626 2626 2626 0D0D 0D0D 0D0D 0D0D 0D0D"            /* &&&&&&.......... */
	$"0D0D 0000 0000 0000 F3F3 8B8B 6565 F7F7"            /* ........ÛÛããee˜˜ */
	$"A6A6 6E6E FCFC C3C3 7878 FFFF F7F7 8C8C"            /* ¶¶nn¸¸√√xxˇˇ˜˜åå */
	$"BDBD DCDC 8C8C 9898 CDCD 8C8C 7575 C0C0"            /* ΩΩ‹‹ååòòÕÕååuu¿¿ */
	$"8B8B 7676 C2C2 BEBE 7474 C4C4 F0F0 7E7E"            /* ããvv¬¬æættƒƒ~~ */
	$"9898 CCCC 8181 8181 B9B9 8383 6C6C A8A8"            /* òòÃÃÅÅÅÅππÉÉll®® */
	$"9E9E 7373 AAAA BBBB 7B7B ACAC F4F4 8B8B"            /* ûûss™™ªª{{¨¨ÙÙãã */
	$"AFAF F4F4 8B8B 8A8A E9E9 5555 3A3A F0F0"            /* ØØÙÙããääÈÈUU:: */
	$"8181 4040 F6F6 A9A9 4646 FFFF F6F6 5353"            /* ÅÅ@@ˆˆ©©FFˇˇˆˆSS */
	$"9B9B CECE 5A5A 6565 BABA 5C5C 2020 A8A8"            /* õõŒŒZZee∫∫\\  ®® */
	$"5E5E 2525 ABAB A5A5 1E1E ADAD EBEB 4646"            /* ^^%%´´••..≠≠ÎÎFF */
	$"7575 B8B8 5050 5959 A0A0 5555 3B3B 8888"            /* uu∏∏PPYY††UU;;àà */
	$"7B7B 4040 8989 A0A0 4646 8A8A EBEB 5151"            /* {{@@ââ††FFääÎÎQQ */
	$"8D8D EBEB 5353 6464 DBDB 0000 2A2A E5E5"            /* ççÎÎSSdd€€..**ÂÂ */
	$"4F4F 1818 EFEF 8A8A 0909 FCFC F5F5 0000"            /* OO..ÔÔää..¸¸ıı.. */
	$"6C6C BDBD 1919 0000 A4A4 2D2D 0000 9191"            /* llΩΩ....§§--..ëë */
	$"5050 0000 9595 8C8C 0000 A5A5 E6E6 0000"            /* PP..ïïåå..••ÊÊ.. */
	$"5858 A3A3 1F1F 3030 8383 2C2C 0000 6868"            /* XX££..00ÉÉ,,..hh */
	$"5353 0000 6868 8080 0000 6969 DFDF 0000"            /* SS..hhÄÄ..iiﬂﬂ.. */
	$"7171 DEDE 0000 4C4C 8686 0000 1A1A 8C8C"            /* qqﬁﬁ..LLÜÜ....åå */
	$"3030 0F0F 9292 5454 0404 9A9A 9696 0000"            /* 00..ííTT..ööññ.. */
	$"4242 7474 0F0F 0000 6464 1B1B 0000 5959"            /* BBtt....dd....YY */
	$"3131 0000 5B5B 5656 0000 6565 8C8C 0000"            /* 11..[[VV..eeåå.. */
	$"3636 6464 1313 1D1D 5050 1B1B 0000 3F3F"            /* 66dd....PP....?? */
	$"3333 0000 4040 4E4E 0000 4040 8888 0000"            /* 33..@@NN..@@àà.. */
	$"4545 8787 0000 2F2F 5B5B 0000 1111 5F5F"            /* EEáá..//[[....__ */
	$"2121 0A0A 6363 3939 0202 6868 6565 0000"            /* !!..cc99..hhee.. */
	$"2D2D 4E4E 0A0A 0000 4444 1313 0000 3C3C"            /* --NN....DD....<< */
	$"2121 0000 3D3D 3A3A 0000 4444 5F5F 0000"            /* !!..==::..DD__.. */
	$"2424 4343 0D0D 1414 3636 1212 0000 2B2B"            /* $$CC....66....++ */
	$"2222 0000 2B2B 3535 0000 2C2C 5C5C 0000"            /* ""..++55..,,\\.. */
	$"2F2F 5C5C 0000 1F1F C1C1 AAAA 8B8B 8E8E"            /* //\\....¡¡™™ããéé */
	$"7878 6161 6363 5151 4343 4141 3434 2E2E"            /* xxaaccQQCCAA44.. */
	$"2727 1F1F 1F1F BEBE 9393 5B5B 9B9B 7070"            /* ''....ææìì[[õõpp */
	$"3E3E 7C7C 5353 2929 6161 3C3C 1A1A 4A4A"            /* >>||SS))aa<<..JJ */
	$"2929 1111 0101 0000 0000 0101 0000 0000"            /* )).............. */
	$"0101 0000 0000 0101 0000 0000 0101 0000"            /* ................ */
	$"0000 0101 0000 0000"                                /* ........ */
};

resource 'STR#' (128, "Default Names", purgeable) {
	{	/* array StringArray: 35 elements */
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
		"Don’t Save",
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
		"Register App",
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
		"Add Member…",
		/* [32] */
		"Insert Icon…",
		/* [33] */
		"Open Help",
		/* [34] */
		"Continue",
		/* [35] */
		"Registered To:"
	}
};

resource 'STR#' (129, "Standard Errors", purgeable) {
	{	/* array StringArray: 17 elements */
		/* [1] */
		"The file you selected is already open in"
		" another program.",
		/* [2] */
		"This development copy of <app name> expi"
		"red on October 1, 2001. Please download "
		"a newer version from http://www.mscape.c"
		"om/.",
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
		"enu bar. <app name>’s resource fork is m"
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
		"The “Register” application could not be "
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
		"/?QEJ with your web browser.",
		/* [17] */
		"The file “<file name>” could not be open"
		"ed because an error (Type <error type>) "
		"occurred. "
	}
};

resource 'STR#' (130, "Prompts", purgeable) {
	{	/* array StringArray: 13 elements */
		/* [1] */
		"Do you want to save changes to the <app "
		"name> document “<file name>” before clos"
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
		"in the file “<file name>.” Do you wish t"
		"o replace it?",
		/* [11] */
		"Do you want to revert to the previously "
		"saved version of the <app name> document"
		" “<file name>”?",
		/* [12] */
		"<app name> can be registered online or t"
		"hrough mail with various payment methods"
		". Please select the way in which you wou"
		"ld like to order your <app name> registr"
		"ation code.",
		/* [13] */
		"Welcome to <app name> 2.1. If this is yo"
		"ur first time using it, and you would li"
		"ke to get more information on its operat"
		"ion, extensive documentation is availabl"
		"e. Would you like to open the documentat"
		"ion or get started right away?"
	}
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
		"Opens an item’s icon into a new editor w"
		"indow. Different icon formats (Mac OS, W"
		"indows, Mac OS X Server) can be chosen.",
		/* [6] */
		"Opens an item’s icon into a new editor w"
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
		"cause the front-most icon doesn’t need t"
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
		"rent file (without replacing the file’s "
		"contents).",
		/* [14] */
		"Inserts the front-most icon into a diffe"
		"rent file (without replacing the file’s "
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
		"’s operation.",
		/* [22] */
		"Opens a dialog box which allows you to c"
		"ustomize various aspects of Iconographer"
		"’s operation.\n\nNot available because the"
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
		"Inverts (makes “negative”) the current s"
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

resource 'STR#' (160, "About Balloon Help", purgeable) {
	{	/* array StringArray: 3 elements */
		/* [1] */
		"Click here to e-mail the author (require"
		"s Internet Config).",
		/* [2] */
		"Click here to visit the Mscape Software "
		"homepage (requires Internet Config).",
		/* [3] */
		"If you’ve paid, thank your very much. If"
		" you haven’t, perhaps you should conside"
		"r it."
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
		15
	}
};

resource 'dlgx' (3001) {
	versionZero {
		9
	}
};

resource 'dlgx' (3002) {
	versionZero {
		9
	}
};

data 'hfdr' (-5696, purgeable) {
	$"0002 0000 0000 0000 0000 0001 0008 0003"            /* ................ */
	$"0096 0001"                                          /* .ñ.. */
};

data 'hmnu' (128, "Apple", purgeable) {
	$"0002 0000 0000 0000 0000 0003 0004 0100"            /* ................ */
	$"0004 0100 0014 0003 0097 0001 0097 0002"            /* .........ó...ó.. */
	$"0000 0000 0000 0000 0014 0003 0097 0003"            /* .............ó.. */
	$"0097 0004 0000 0000 0000 0000"                      /* .ó.......... */
};

data 'hmnu' (129, "File", purgeable) {
	$"0002 0000 0000 0000 0000 000C 0004 0100"            /* ................ */
	$"0014 0003 0098 0001 0098 0002 0000 0000"            /* .....ò...ò...... */
	$"0098 0002 0014 0003 0098 0003 0098 0004"            /* .ò.......ò...ò.. */
	$"0000 0000 0000 0000 0014 0003 0098 0005"            /* .............ò.. */
	$"0098 0006 0000 0000 0000 0000 0004 0100"            /* .ò.............. */
	$"0014 0003 0098 0007 0098 0008 0000 0000"            /* .....ò...ò...... */
	$"0000 0000 0004 0100 0014 0003 0098 0009"            /* .............ò.. */
	$"0098 000A 0000 0000 0000 0000 0014 0003"            /* .ò.............. */
	$"0098 000B 0098 000C 0000 0000 0000 0000"            /* .ò...ò.......... */
	$"0014 0003 0098 000D 0098 000E 0000 0000"            /* .....ò...ò...... */
	$"0000 0000 0014 0003 0098 000F 0098 0010"            /* .........ò...ò.. */
	$"0000 0000 0000 0000 0004 0100 0014 0003"            /* ................ */
	$"0098 0011 0098 0012 0000 0000 0000 0000"            /* .ò...ò.......... */
};

data 'hmnu' (131, "Edit", purgeable) {
	$"0002 0000 0000 0000 0000 000D 0004 0100"            /* ................ */
	$"0014 0003 0099 0001 0099 0002 0000 0000"            /* .....ô...ô...... */
	$"0099 0002 0014 0003 0099 0003 0099 0004"            /* .ô.......ô...ô.. */
	$"0000 0000 0000 0000 0014 0003 0099 0005"            /* .............ô.. */
	$"0099 0006 0000 0000 0000 0000 0004 0100"            /* .ô.............. */
	$"0014 0003 0099 0007 0099 0008 0000 0000"            /* .....ô...ô...... */
	$"0000 0000 0014 0003 0099 0009 0099 000A"            /* .........ô...ô.. */
	$"0000 0000 0000 0000 0014 0003 0099 000B"            /* .............ô.. */
	$"0099 000C 0000 0000 0000 0000 0014 0003"            /* .ô.............. */
	$"0099 000D 0099 000E 0000 0000 0000 0000"            /* .ô...ô.......... */
	$"0014 0003 0099 000F 0099 0010 0000 0000"            /* .....ô...ô...... */
	$"0000 0000 0014 0003 0099 0011 0099 0012"            /* .........ô...ô.. */
	$"0000 0000 0000 0000 0014 0003 0099 0013"            /* .............ô.. */
	$"0099 0014 0000 0000 0000 0000 0004 0100"            /* .ô.............. */
	$"0014 0003 0099 0015 0099 0016 0000 0000"            /* .....ô...ô...... */
	$"0000 0000"                                          /* .... */
};

data 'hmnu' (132, "Select", purgeable) {
	$"0002 0000 0000 0000 0000 0005 0004 0100"            /* ................ */
	$"0004 0100 0014 0003 009A 0001 009A 0002"            /* .........ö...ö.. */
	$"0000 0000 0000 0000 0014 0003 009A 0003"            /* .............ö.. */
	$"009A 0004 0000 0000 0000 0000 0014 0003"            /* .ö.............. */
	$"009A 0005 009A 0006 0000 0000 0000 0000"            /* .ö...ö.......... */
	$"0014 0003 009A 0007 009A 0008 0000 0000"            /* .....ö...ö...... */
	$"0000 0000"                                          /* .... */
};

data 'hmnu' (133, "Transform", purgeable) {
	$"0002 0000 0000 0000 0000 0008 0004 0100"            /* ................ */
	$"0004 0100 0014 0003 009B 0001 0000 0000"            /* .........õ...... */
	$"0000 0000 0000 0000 0014 0003 009B 0002"            /* .............õ.. */
	$"0000 0000 0000 0000 0000 0000 0004 0100"            /* ................ */
	$"0014 0003 009B 0003 0000 0000 0000 0000"            /* .....õ.......... */
	$"0000 0000 0014 0003 009B 0004 0000 0000"            /* .........õ...... */
	$"0000 0000 0000 0000 0004 0100 0014 0003"            /* ................ */
	$"009B 0005 0000 0000 0000 0000 0000 0000"            /* .õ.............. */
};

data 'hmnu' (134, "Paste", purgeable) {
	$"0002 0000 0000 0000 0000 0005 0004 0100"            /* ................ */
	$"0004 0100 0014 0003 009C 0001 0000 0000"            /* .........ú...... */
	$"0000 0000 0000 0000 0014 0003 009C 0002"            /* .............ú.. */
	$"0000 0000 0000 0000 0000 0000 0014 0003"            /* ................ */
	$"009C 0003 009C 0004 0000 0000 0000 0000"            /* .ú...ú.......... */
	$"0014 0003 009C 0005 009C 0006 0000 0000"            /* .....ú...ú...... */
	$"0000 0000"                                          /* .... */
};

data 'hmnu' (135, "Copy", purgeable) {
	$"0002 0000 0000 0000 0000 0004 0004 0100"            /* ................ */
	$"0004 0100 0014 0003 009D 0001 009D 0002"            /* .........ù...ù.. */
	$"0000 0000 0000 0000 0014 0003 009D 0003"            /* .............ù.. */
	$"009D 0004 0000 0000 0000 0000 0014 0003"            /* .ù.............. */
	$"009D 0005 009D 0006 0000 0000 0000 0000"            /* .ù...ù.......... */
};

data 'hmnu' (136, "Icon", purgeable) {
	$"0002 0000 0000 0000 0000 000B 0004 0100"            /* ................ */
	$"0014 0003 009E 0001 009E 0002 0000 0000"            /* .....û...û...... */
	$"009E 0002 0014 0003 009E 0003 009E 0004"            /* .û.......û...û.. */
	$"0000 0000 0000 0000 0014 0003 009E 0005"            /* .............û.. */
	$"009E 0006 0000 0000 0000 0000 0004 0100"            /* .û.............. */
	$"0014 0003 0000 0000 009E 0007 0000 0000"            /* .........û...... */
	$"0000 0000 0004 0100 0014 0003 009E 0008"            /* .............û.. */
	$"009E 0009 0000 0000 0000 0000 0014 0003"            /* .û.............. */
	$"009E 000A 009E 000B 0000 0000 0000 0000"            /* .û...û.......... */
	$"0014 0003 009E 000C 009E 000D 0000 0000"            /* .....û...û...... */
	$"0000 0000 0004 0100 0014 0003 009E 000E"            /* .............û.. */
	$"009E 000F 0000 0000 0000 0000"                      /* .û.......... */
};

data 'hmnu' (137, "Colors", purgeable) {
	$"0002 0000 0000 0000 0000 0003 0004 0100"            /* ................ */
	$"0004 0100 0014 0003 009F 0001 0000 0000"            /* .........ü...... */
	$"009F 0001 0000 0000 0014 0003 009F 0002"            /* .ü...........ü.. */
	$"0000 0000 009F 0002 0000 0000"                      /* .....ü...... */
};

data 'hmnu' (138, "Windows", purgeable) {
	$"0002 0000 0000 0000 0000 0005 0004 0100"            /* ................ */
	$"0014 0003 00A2 0001 00A2 0002 0000 0000"            /* .....¢...¢...... */
	$"0000 0000 0014 0003 00A2 0003 0000 0000"            /* .........¢...... */
	$"0000 0000 0000 0000 0014 0003 00A2 0004"            /* .............¢.. */
	$"0000 0000 0000 0000 0000 0000 0014 0003"            /* ................ */
	$"00A2 0005 0000 0000 0000 0000 0000 0000"            /* .¢.............. */
	$"0014 0003 00A2 0006 0000 0000 0000 0000"            /* .....¢.......... */
	$"0000 0000"                                          /* .... */
};

data 'hrct' (128, "About", purgeable) {
	$"0002 0000 0000 0000 0000 0003 0014 0003"            /* ................ */
	$"0000 0000 002C 002C 003E 009A 00A0 0001"            /* .....,.,.>.ö.†.. */
	$"0014 0003 0000 0000 003C 0041 004E 00A1"            /* .........<.A.N.° */
	$"00A0 0002 0014 0003 0000 0000 00B0 0002"            /* .†...........∞.. */
	$"00D8 006E 00A0 0003"                                /* .ÿ.n.†.. */
};

data 'hrct' (129, "Register", purgeable) {
	$"0002 0000 0000 0000 0000 0006 0014 0003"            /* ................ */
	$"0000 0000 0066 010E 007A 0152 00A1 0001"            /* .....f...z.R.°.. */
	$"0014 0003 0000 0000 0066 00BE 0079 00FE"            /* .........f.æ.y.˛ */
	$"00A1 0002 0014 0003 0000 0000 0066 0007"            /* .°...........f.. */
	$"007A 009E 00A1 0003 0014 0003 0000 0000"            /* .z.û.°.......... */
	$"000C 0088 001C 0150 00A1 0004 0014 0003"            /* ...à...P.°...... */
	$"0000 0000 0028 0088 0038 0150 00A1 0005"            /* .....(.à.8.P.°.. */
	$"0014 0003 0000 0000 0044 0088 0054 0150"            /* .........D.à.T.P */
	$"00A1 0006"                                          /* .°.. */
};

data 'hwin' (128, "About", purgeable) {
	$"0002 0000 0000 0001 0080 6872 6374 0005"            /* .........Ährct.. */
	$"0541 626F 7574"                                     /* .About */
};

data 'hwin' (129, "Register", purgeable) {
	$"0002 0000 0000 0001 0081 6872 6374 0008"            /* .........Åhrct.. */
	$"0852 6567 6973 7465 7200"                           /* .Register. */
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
	$"00DD 00DD DDDD 00DD 00DD 00DD DDDD 00DD"
	$"DDF8 2BF5 F5F5 F5F5 FB00 00F6 F8FB 0000"
	$"00DD 00DD DDDD 00DD 00DD 0000 DDDD 00DD"
	$"DDF9 F7F6 F5F5 F5F5 FBFC FCFC ACAC FD00"
	$"00DD 00DD 00DD 00DD 00DD 00DD 00DD 00DD"
	$"DDFA F7F6 F5F5 F5F5 F6F9 F9FA FA81 FD00"
	$"00DD 00DD 00DD 00DD 00DD 00DD DD00 00DD"
	$"DDFA F7F6 F5F5 F5F5 F5F7 F7F8 F856 FD00"
	$"00DD DD00 DD00 DDDD 00DD 00DD DDDD 00DD"
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
		$"1FF8 100C FFFE BA9F AAAD D6AF FFFD 1AAB"
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
	$"DDDD DDDD DDDD DDDD DDDD DDDD DDDD FB00"
	$"DD00 DDDD DD00 DD00 DD00 00DD DDDD FAFF"
	$"DD00 DD00 DD00 DD00 DD00 DD00 DDDD FAFF"
	$"DDDD 00DD 00DD DD00 DD00 DD00 DDDD F9FF"
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

data 'ictb' (129) {
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0007 0024 0000 0000 000C 0000 0000 0000"            /* ...$............ */
	$"FFFF FFFF FFFF 0000"                                /* ˇˇˇˇˇˇ.. */
};

data 'ictb' (132) {
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0007 0028 8007 003C 0001 0000 0009 0000"            /* ...(Ä..<........ */
	$"0000 0000 FFFF FFFF FFFF 0000 0050 0000"            /* ....ˇˇˇˇˇˇ...P.. */
	$"0009 0000 0000 0000 FFFF FFFF FFFF 0000"            /* ........ˇˇˇˇˇˇ.. */
	$"0647 656E 6576 61"                                  /* .Geneva */
};

data 'ictb' (2000) {
	$"0000 0000"                                          /* .... */
};

data 'ictb' (3001) {
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
};

data 'ictb' (3002) {
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000"                                          /* .... */
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

resource 'vers' (1) {
	0x2,
	0x10,
	release,
	0x0,
	0,
	"2.1",
	"Iconographer 2.1\n©1998-2001 Mihai Parpar"
	"ita"
};

resource 'vers' (2) {
	0x2,
	0x10,
	release,
	0x0,
	0,
	"2.1",
	"http://www.mscape.com/"
};

resource 'xmnu' (129, "File Menu") {
	versionZero {
		{	/* array ItemExtensions: 7 elements */
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
			skipItem {

			}			,
			/* [7] */
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

resource 'xmnu' (131, "Edit Menu") {
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

resource 'xmnu' (132, "Select") {
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

resource 'xmnu' (133, "Transform") {
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

resource 'xmnu' (134, "Paste Menu") {
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

resource 'xmnu' (135, "Copy Menu") {
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

