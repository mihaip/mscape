/* Resource fork of software/Iconographer/Source/Icon Browser/iconBrowser.rsrc */
resource 'CNTL' (300, "Icon Browser: Icon List", purgeable) {
	{40, 68, 190, 345},
	300,
	visible,
	100,
	0,
	352,
	0,
	""
};

resource 'dctb' (300) {
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

resource 'dftb' (300) {
	versionZero {
		{	/* array FontStyle: 5 elements */
			/* [1] */
			skipItem {

			}			,
			/* [2] */
			skipItem {

			}			,
			/* [3] */
			dataItem {
				1,
				-2,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				""
			},
			/* [4] */
			skipItem {

			},
			/* [5] */
			dataItem {
				1,
				-2,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				""
			}
		}
	}
};

resource 'dlgx' (300) {
	versionZero {
		15
	}
};

data 'ictb' (300) {
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000"                                          /* .... */
};

resource 'ldes' (300) {
	versionZero {
		0,
		1,
		14,
		0,
		hasVertScroll,
		noHorizScroll,
		0,
		noGrowSpace
	}
};

resource 'STR#' (300, "Icon Browser: List Strings", purgeable) {
	{	/* array StringArray: 1 elements */
		/* [1] */
		"\t\t\t\t\t\t\t\t\tItemÕs Finder Icon"
	}
};

resource 'STR#' (301, "Icon Browser: Balloon Help", purgeable) {
	{	/* array StringArray: 4 elements */
		/* [1] */
		"Opens the selected icon into an editor.",
		/* [2] */
		"Closes this dialog without opening any i"
		"cons.",
		/* [3] */
		"Select an icon from this list.",
		/* [4] */
		"The preview for the selected icon is dis"
		"played here."
	}
};

resource 'DITL' (300, purgeable) {
	{	/* array DITLarray: 5 elements */
		/* [1] */
		{199, 277, 219, 345},
		Button {
			enabled,
			"Open"
		},
		/* [2] */
		{199, 197, 219, 261},
		Button {
			enabled,
			"Cancel"
		},
		/* [3] */
		{4, 4, 35, 348},
		StaticText {
			disabled,
			"Select an icon from the list on the left"
			" to see its preview. When you have found"
			" the icon you are looking for press the "
			"Open button to edit it."
		},
		/* [4] */
		{38, 8, 192, 62},
		UserItem {
			enabled
		},
		/* [5] */
		{40, 68, 190, 345},
		Control {
			enabled,
			300
		}
	}
};

data 'DLGX' (300) {
	$"0654 6563 686E 6F00 0000 0000 0000 0000"            /* .Techno......... */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"000C 0000 0000 0000 0004 0004 0000 0000"            /* ................ */
	$"0005 0000 0000 0000 0000 0000 0000 0001"            /* ................ */
	$"0000 0000 0000 0000 0000 0006 0000 0000"            /* ................ */
	$"0000 0000 0000 000A 0000 0000 0000 0000"            /* ................ */
	$"0000 0005 0000 0000 0000 0000 0000"                 /* .............. */
};

resource 'DLOG' (300, "Icon Browser", purgeable) {
	{321, 46, 548, 399},
	1043,
	invisible,
	goAway,
	0x0,
	300,
	"Icon Browser",
	centerParentWindowScreen
};

data 'hrct' (300, "Icon Browser", purgeable) {
	$"0002 0000 0000 0000 0000 0004 0014 0003"            /* ................ */
	$"0000 0000 00C7 0115 00DB 0159 012D 0001"            /* .....Ç...Û.Y.-.. */
	$"0014 0003 0000 0000 00C7 00C5 00DB 0105"            /* .........Ç.Å.Û.. */
	$"012D 0002 0014 0003 0000 0000 0028 0044"            /* .-...........(.D */
	$"00BE 0159 012D 0003 0014 0003 0000 0000"            /* .¾.Y.-.......... */
	$"0026 0008 00C0 003E 012D 0004"                      /* .&...À.>.-.. */
};

data 'hwin' (300, "Icon Browser", purgeable) {
	$"0002 0000 0000 0001 012C 6872 6374 000C"            /* .........,hrct.. */
	$"0C49 636F 6E20 4272 6F77 7365 7200"                 /* .Icon Browser. */
};

