/* Resource fork of software/extras/Iconographer Support/Testing/Programs/Icon Archiver 4.0/Archiver Plugins/Clip2gif 0.7.2 Link (PPC) */
data 'INFO' (128) {
	$"6332 6766 6332 6766 0100 0100 0100 0100"            /* c2gfc2gf........ */
	$"0000 0000 0843 6C69 7032 6769 6600 0000"            /* .....Clip2gif... */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 042E 6332 6700 0000 0000 0000"            /* ......c2g....... */
	$"0000 0000 36A9 3139 3938 2041 6C65 7373"            /* ....6©1998 Aless */
	$"616E 6472 6F20 4C65 7669 204D 6F6E 7461"            /* andro Levi Monta */
	$"6C63 696E 690D 636C 6970 3267 6966 20A9"            /* lcini.clip2gif © */
	$"5976 6573 2050 6967 7565 7400 0000 0000"            /* Yves Piguet..... */
	$"0000 0000"                                          /* .... */
};

resource 'DITL' (128, purgeable) {
	{	/* array DITLarray: 7 elements */
		/* [1] */
		{80, 276, 100, 340},
		Button {
			enabled,
			"OK"
		},
		/* [2] */
		{80, 199, 100, 263},
		Button {
			enabled,
			"Cancel"
		},
		/* [3] */
		{40, 160, 58, 216},
		RadioButton {
			enabled,
			"GIF"
		},
		/* [4] */
		{40, 224, 58, 280},
		RadioButton {
			enabled,
			"JPEG"
		},
		/* [5] */
		{40, 288, 58, 344},
		RadioButton {
			enabled,
			"TIFF"
		},
		/* [6] */
		{12, 16, 28, 204},
		StaticText {
			disabled,
			"Clip2gif Link Settings"
		},
		/* [7] */
		{40, 16, 56, 152},
		StaticText {
			disabled,
			"Output file format:"
		}
	}
};

resource 'DLOG' (128, purgeable) {
	{88, 76, 198, 436},
	dBoxProc,
	visible,
	noGoAway,
	0x0,
	128,
	"",
	alertPositionParentWindowScreen
};

resource 'vers' (1, purgeable) {
	0x4,
	0x0,
	release,
	0x0,
	0,
	"4.0",
	"4.0 by Alessandro Levi Montalcini\nThis i"
	"s an Icon Archiver plugin"
};

resource 'vers' (2, purgeable) {
	0x4,
	0x0,
	release,
	0x0,
	0,
	"4.0",
	"Part of the Icon Archiver package"
};

resource 'cfrg' (0) {
	{	/* array memberArray: 1 elements */
		/* [1] */
		kPowerPCCFragArch,
		kIsCompleteCFrag,
		kNoVersionNum,
		kNoVersionNum,
		kDefaultStackSize,
		kNoAppSubFolder,
		kImportLibraryCFrag,
		kDataForkCFragLocator,
		kZeroOffset,
		kSegIDZero,
		"Icon Archiver Plugin"
	}
};

