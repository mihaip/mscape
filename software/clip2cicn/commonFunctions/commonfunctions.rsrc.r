/* Resource fork of software/clip2cicn/commonFunctions/commonfunctions.rsrc */
resource 'DITL' (3000, "Basic Alert") {
	{	/* array DITLarray: 2 elements */
		/* [1] */
		{67, 311, 87, 369},
		Button {
			enabled,
			"OK"
		},
		/* [2] */
		{8, 58, 60, 369},
		StaticText {
			disabled,
			"^0 ^1."
		}
	}
};

resource 'DITL' (3001, "Select Object", purgeable) {
	{	/* array DITLarray: 11 elements */
		/* [1] */
		{157, 253, 177, 333},
		Button {
			enabled,
			"Open"
		},
		/* [2] */
		{126, 253, 146, 333},
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
		{30, 236, 46, 338},
		UserItem {
			enabled
		},
		/* [5] */
		{54, 253, 74, 333},
		Button {
			enabled,
			"Eject"
		},
		/* [6] */
		{82, 253, 102, 333},
		Button {
			enabled,
			"Desktop"
		},
		/* [7] */
		{51, 13, 181, 231},
		UserItem {
			enabled
		},
		/* [8] */
		{28, 13, 47, 231},
		UserItem {
			enabled
		},
		/* [9] */
		{113, 252, 114, 334},
		Picture {
			disabled,
			11
		},
		/* [10] */
		{189, 24, 209, 211},
		Button {
			enabled,
			"Select \"<file name>\""
		},
		/* [11] */
		{6, 15, 23, 300},
		StaticText {
			disabled,
			"Select a file, folder, or disk:"
		}
	}
};

resource 'ALRT' (3000) {
	{40, 40, 134, 416},
	3000,
	{	/* array: 4 elements */
		/* [1] */
		OK, visible, sound1,
		/* [2] */
		OK, visible, sound1,
		/* [3] */
		OK, visible, sound1,
		/* [4] */
		OK, visible, sound1
	},
	alertPositionMainScreen
};

resource 'dlgx' (3001) {
	versionZero {
		9
	}
};

data 'DLOG' (3001, "Select Object", purgeable) {
	$"0000 0000 00D7 0158 0001 0000 0000 0000"            /* .....×.X........ */
	$"0000 0BB9 00"                                       /* ...¹. */
};

resource 'STR#' (3001, "Select Object Strings") {
	{	/* array StringArray: 2 elements */
		/* [1] */
		"Select \"<file name>\"",
		/* [2] */
		"Select Desktop"
	}
};

