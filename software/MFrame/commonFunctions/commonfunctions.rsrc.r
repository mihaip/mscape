/* Resource fork of software/MFrame/commonFunctions/commonfunctions.rsrc */
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

resource 'STR#' (3000, "Key Names", purgeable) {
	{	/* array StringArray: 128 elements */
		/* [1] */
		"A",
		/* [2] */
		"S",
		/* [3] */
		"D",
		/* [4] */
		"F",
		/* [5] */
		"H",
		/* [6] */
		"G",
		/* [7] */
		"Z",
		/* [8] */
		"X",
		/* [9] */
		"C",
		/* [10] */
		"V",
		/* [11] */
		"0x0A",
		/* [12] */
		"B",
		/* [13] */
		"Q",
		/* [14] */
		"W",
		/* [15] */
		"E",
		/* [16] */
		"R",
		/* [17] */
		"Y",
		/* [18] */
		"T",
		/* [19] */
		"1",
		/* [20] */
		"2",
		/* [21] */
		"3",
		/* [22] */
		"4",
		/* [23] */
		"6",
		/* [24] */
		"5",
		/* [25] */
		"=",
		/* [26] */
		"9",
		/* [27] */
		"7",
		/* [28] */
		"-",
		/* [29] */
		"8",
		/* [30] */
		"0",
		/* [31] */
		"]",
		/* [32] */
		"O",
		/* [33] */
		"U",
		/* [34] */
		"[",
		/* [35] */
		"I",
		/* [36] */
		"P",
		/* [37] */
		"Return",
		/* [38] */
		"L",
		/* [39] */
		"J",
		/* [40] */
		"'",
		/* [41] */
		"K",
		/* [42] */
		";",
		/* [43] */
		"\\",
		/* [44] */
		",",
		/* [45] */
		"/",
		/* [46] */
		"N",
		/* [47] */
		"M",
		/* [48] */
		".",
		/* [49] */
		"Tab",
		/* [50] */
		"Space",
		/* [51] */
		"`",
		/* [52] */
		"Delete",
		/* [53] */
		"0x34",
		/* [54] */
		"Escape",
		/* [55] */
		"0x35",
		/* [56] */
		"Command",
		/* [57] */
		"Shift",
		/* [58] */
		"Caps Lock",
		/* [59] */
		"Option",
		/* [60] */
		"Control",
		/* [61] */
		"0x3C",
		/* [62] */
		"0x3D",
		/* [63] */
		"0x3E",
		/* [64] */
		"0x3F",
		/* [65] */
		"0x40",
		/* [66] */
		"Keypad .",
		/* [67] */
		"0x42",
		/* [68] */
		"Keypad *",
		/* [69] */
		"0x44",
		/* [70] */
		"Keypad +",
		/* [71] */
		"0x46",
		/* [72] */
		"Clear",
		/* [73] */
		"0x48",
		/* [74] */
		"0x49",
		/* [75] */
		"0x4A",
		/* [76] */
		"Keypad /",
		/* [77] */
		"Enter",
		/* [78] */
		"0x4D",
		/* [79] */
		"Keypad -",
		/* [80] */
		"0x4F",
		/* [81] */
		"0x50",
		/* [82] */
		"Keypad =",
		/* [83] */
		"Keypad 0",
		/* [84] */
		"Keypad 1",
		/* [85] */
		"Keypad 2",
		/* [86] */
		"Keypad 3",
		/* [87] */
		"Keypad 4",
		/* [88] */
		"Keypad 5",
		/* [89] */
		"Keypad 6",
		/* [90] */
		"Keypad 7",
		/* [91] */
		"0x5A",
		/* [92] */
		"Keypad 8",
		/* [93] */
		"Keypad 9",
		/* [94] */
		"0x5D",
		/* [95] */
		"0x5E",
		/* [96] */
		"0x5F",
		/* [97] */
		"F5",
		/* [98] */
		"F6",
		/* [99] */
		"F7",
		/* [100] */
		"F3",
		/* [101] */
		"F8",
		/* [102] */
		"F9",
		/* [103] */
		"0x66",
		/* [104] */
		"F11",
		/* [105] */
		"0x68",
		/* [106] */
		"F13",
		/* [107] */
		"0x6A",
		/* [108] */
		"F14",
		/* [109] */
		"0x6C",
		/* [110] */
		"F10",
		/* [111] */
		"0x6E",
		/* [112] */
		"F12",
		/* [113] */
		"0x70",
		/* [114] */
		"F15",
		/* [115] */
		"Help",
		/* [116] */
		"Home",
		/* [117] */
		"Page Up",
		/* [118] */
		"Forw. Del.",
		/* [119] */
		"F4",
		/* [120] */
		"End",
		/* [121] */
		"F2",
		/* [122] */
		"Page Down",
		/* [123] */
		"F1",
		/* [124] */
		"Left Arrow",
		/* [125] */
		"Right Arrow",
		/* [126] */
		"Down Arrow",
		/* [127] */
		"Up Arrow",
		/* [128] */
		"Power"
	}
};

