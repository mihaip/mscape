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

resource 'dlgx' (300) {
	versionZero {
		15
	}
};

resource 'DLOG' (300, "Icon Browser", purgeable) {
	{317, 400, 544, 753},
	1043,
	invisible,
	goAway,
	0x0,
	300,
	"Icon Browser",
	centerParentWindowScreen
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

resource 'STR#' (300, purgeable) {
	{	/* array StringArray: 1 elements */
		/* [1] */
		"\t\t\t\t\t\t\t\t\tItem’s Finder Icon"
	}
};

