/* Resource fork of software/Icon Mangler/Icon Mangler 1.0d4 */
resource 'MENU' (129) {
	129,
	textMenuProc,
	0x7FFFFFB7,
	enabled,
	"File",
	{	/* array: 8 elements */
		/* [1] */
		"New IconÉ", noIcon, "N", noMark, plain,
		/* [2] */
		"Open IconÉ", noIcon, "O", noMark, plain,
		/* [3] */
		"Close", noIcon, "W", noMark, plain,
		/* [4] */
		"-", noIcon, noKey, noMark, plain,
		/* [5] */
		"Save", noIcon, "S", noMark, plain,
		/* [6] */
		"Save AsÉ", noIcon, noKey, noMark, plain,
		/* [7] */
		"-", noIcon, noKey, noMark, plain,
		/* [8] */
		"Quit", noIcon, "Q", noMark, plain
	}
};

resource 'MENU' (131) {
	131,
	textMenuProc,
	allEnabled,
	enabled,
	"Select",
	{	/* array: 3 elements */
		/* [1] */
		"All", noIcon, "A", noMark, plain,
		/* [2] */
		"Deselect", noIcon, "D", noMark, plain,
		/* [3] */
		"Inverse", noIcon, "I", noMark, plain
	}
};

resource 'MENU' (133) {
	133,
	textMenuProc,
	allEnabled,
	enabled,
	"View",
	{	/* array: 2 elements */
		/* [1] */
		"Zoom In", noIcon, "=", noMark, plain,
		/* [2] */
		"Zoom Out", noIcon, "-", noMark, plain
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

resource 'MENU' (130) {
	130,
	textMenuProc,
	0x7FFFFFFB,
	enabled,
	"Edit",
	{	/* array: 9 elements */
		/* [1] */
		"Undo", noIcon, "Z", noMark, plain,
		/* [2] */
		"Redo", noIcon, "Z", noMark, plain,
		/* [3] */
		"-", noIcon, noKey, noMark, plain,
		/* [4] */
		"Cut", noIcon, "X", noMark, plain,
		/* [5] */
		"Copy", noIcon, "C", noMark, plain,
		/* [6] */
		"Paste", noIcon, "V", noMark, plain,
		/* [7] */
		"Clear", noIcon, noKey, noMark, plain,
		/* [8] */
		"Select", noIcon, hierarchicalMenu, "ƒ", plain,
		/* [9] */
		"Transform", noIcon, hierarchicalMenu, "„", plain
	}
};

resource 'MENU' (128) {
	128,
	textMenuProc,
	0x7FFFFFFD,
	enabled,
	apple,
	{	/* array: 2 elements */
		/* [1] */
		"About Icon ManglerÉ", noIcon, noKey, noMark, plain,
		/* [2] */
		"-", noIcon, noKey, noMark, plain
	}
};

resource 'MENU' (200) {
	200,
	textMenuProc,
	allEnabled,
	enabled,
	"Icon Depths",
	{	/* array: 4 elements */
		/* [1] */
		"32 bit", noIcon, noKey, noMark, plain,
		/* [2] */
		"8 bit", noIcon, noKey, noMark, plain,
		/* [3] */
		"4 bit", noIcon, noKey, noMark, plain,
		/* [4] */
		"1 bit", noIcon, noKey, noMark, plain
	}
};

resource 'MENU' (201) {
	201,
	textMenuProc,
	allEnabled,
	enabled,
	"Mask Depths",
	{	/* array: 2 elements */
		/* [1] */
		"8 bit", noIcon, noKey, noMark, plain,
		/* [2] */
		"1 bit", noIcon, noKey, noMark, plain
	}
};

resource 'DLOG' (130) {
	{259, 337, 395, 687},
	dBoxProc,
	visible,
	goAway,
	0x0,
	130,
	"",
	alertPositionParentWindowScreen
};

resource 'DLOG' (128) {
	{88, 131, 230, 411},
	dBoxProc,
	invisible,
	noGoAway,
	0x0,
	128,
	"",
	centerMainScreen
};

resource 'DLOG' (1000, purgeable) {
	{455, 218, 680, 600},
	documentProc,
	visible,
	goAway,
	0x0,
	1000,
	"DITL 1000 from iconmangler.µ.rsrc",
	noAutoCenter
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

resource 'FREF' (128) {
	'APPL',
	0,
	""
};

resource 'icl4' (128) {
	$"0000 0000 0000 0000 0000 0000 0000 0000"
	$"0000 0000 000D CDCD CDCC 0000 0000 0000"
	$"0000 0000 00DD 0000 0CFD C000 0000 0000"
	$"0000 0000 0DC0 D000 CFDC DC00 0000 0000"
	$"0000 0000 DC00 0D0C FDCC CDC0 0000 0000"
	$"0000 000D C000 00DF DC00 00DC 0000 0000"
	$"0000 CEEE CC00 000D C000 000D C000 0000"
	$"0000 E0FC ECC0 0000 0000 0000 DC00 0000"
	$"CDDE C000 CADD 0C00 0000 00C0 CDC0 0000"
	$"D00A AAAA AADC FCC0 0000 3333 3333 BBBB"
	$"D000 CE00 FDCC FDC0 0000 3333 3323 2BBB"
	$"D00C E000 CFDC FDC0 0000 3333 32B2 BBB2"
	$"D0CE 0000 0CFC FDC0 000C 3333 2BBB B222"
	$"D0E0 0000 CFDC FDC0 3CC0 3333 B222 2B22"
	$"D0CE 000C FDCC FD33 33CC 2323 2BB2 B2B2"
	$"D0CC E0CF DCCC FD33 333C 33B2 2B2B 2B21"
	$"D0CC CEFD CCCC FD33 33DC 32B2 22B2 22B2"
	$"D0CC CCDC CCCC FDCC 3DDC 322B 2222 B111"
	$"D0CC CCCC CCCC FDCC CCCC B222 222B 1211"
	$"D0CC CCCC CCCC FDC0 CCC0 2222 2222 1111"
	$"DCCC CCCC CCCC FDC0 CCCC 22BB 2211 1111"
	$"0FFF FFFA FFFF DDCC 00CC CCCC CCCC ED00"
	$"0000 0000 CEDD DCC0 CC0C CCCC CCCE DC00"
	$"0000 0000 0CEC CCCC 0CCC CCCC CCED CCC0"
	$"0000 0000 00CE CC0C CCCC CCCC CEDC CC00"
	$"0000 0000 000C ECC0 C0CC CCCC EDCC C000"
	$"0000 0000 0000 CECC CCCC CCCE DCCC 0000"
	$"0000 0000 0000 0CEC CCCC CCED CCC0 0000"
	$"0000 0000 0000 00CE CCCC CEDC CC00 0000"
	$"0000 0000 0000 000C ECCC EDCC C000 0000"
	$"0000 0000 0000 0000 CECE DCC0 0000 0000"
	$"0000 0000 0000 0000 0CED CC"
};

resource 'icl4' (-16455) {
	$"0000 0000 0000 0000 0000 0000 0000 0000"
	$"0000 0000 000D CDCD CDCC 0000 0000 0000"
	$"0000 0000 00DD 0000 0CFD C000 0000 0000"
	$"0000 0000 0DC0 D000 CFDC DC00 0000 0000"
	$"0000 0000 DC00 0D0C FDCC CDC0 0000 0000"
	$"0000 000D C000 00DF DC00 00DC 0000 0000"
	$"0000 CEEE CC00 000D C000 000D C000 0000"
	$"0000 E0FC ECC0 0000 0000 0000 DC00 0000"
	$"CDDE C000 CADD 0C00 0000 00C0 CDC0 0000"
	$"D00A AAAA AADC FCC0 0000 3333 3333 BBBB"
	$"D000 CE00 FDCC FDC0 0000 3333 3323 2BBB"
	$"D00C E000 CFDC FDC0 0000 3333 32B2 BBB2"
	$"D0CE 0000 0CFC FDC0 000C 3333 2BBB B222"
	$"D0E0 0000 CFDC FDC0 3CC0 3333 B222 2B22"
	$"D0CE 000C FDCC FD33 33CC 2323 2BB2 B2B2"
	$"D0CC E0CF DCCC FD33 333C 33B2 2B2B 2B21"
	$"D0CC CEFD CCCC FD33 33DC 32B2 22B2 22B2"
	$"D0CC CCDC CCCC FDCC 3DDC 322B 2222 B111"
	$"D0CC CCCC CCCC FDCC CCCC B222 222B 1211"
	$"D0CC CCCC CCCC FDC0 CCC0 2222 2222 1111"
	$"DCCC CCCC CCCC FDC0 CCCC 22BB 2211 1111"
	$"0FFF FFFA FFFF DDCC 00CC CCCC CCCC ED00"
	$"0000 0000 CEDD DCC0 CC0C CCCC CCCE DC00"
	$"0000 0000 0CEC CCCC 0CCC CCCC CCED CCC0"
	$"0000 0000 00CE CC0C CCCC CCCC CEDC CC00"
	$"0000 0000 000C ECC0 C0CC CCCC EDCC C000"
	$"0000 0000 0000 CECC CCCC CCCE DCCC 0000"
	$"0000 0000 0000 0CEC CCCC CCED CCC0 0000"
	$"0000 0000 0000 00CE CCCC CEDC CC00 0000"
	$"0000 0000 0000 000C ECCC EDCC C000 0000"
	$"0000 0000 0000 0000 CECE DCC0 0000 0000"
	$"0000 0000 0000 0000 0CED CC"
};

resource 'icl8' (128) {
	$"0000 0000 0000 0000 0000 0000 0000 0000"
	$"0000 0000 0000 0000 0000 0000 0000 0000"
	$"0000 0000 0000 0000 0000 0056 F856 F856"
	$"F856 F8F6 0000 0000 0000 0000 0000 0000"
	$"0000 0000 0000 0000 0000 F9FA F500 0000"
	$"F5F6 FEF9 F600 0000 0000 0000 0000 0000"
	$"0000 0000 0000 0000 00F9 F6F5 FAF5 0000"
	$"2BFE F9F7 F9F6 0000 0000 0000 0000 0000"
	$"0000 0000 0000 0000 F92B F500 F5FA F5F7"
	$"FEF9 F6F6 F7F9 F600 0000 0000 0000 0000"
	$"0000 0000 0000 00F9 F6F5 00F5 00F5 FAFE"
	$"F9F6 F5F5 F5F5 F9F6 0000 0000 0000 0000"
	$"0000 0000 F6FC FCFC F6F6 F500 F500 F5F9"
	$"F6F5 F5F5 F5F5 F5F9 F600 0000 0000 0000"
	$"0000 0000 FBF5 FF2B FCF8 F6F5 F5F5 F5F5"
	$"F5F5 F5F5 F5F5 F5F5 F9F6 0000 0000 0000"
	$"F681 81AC 2BF5 F5F5 F6FD 8181 F5F6 F5F5"
	$"F5F5 F5F5 F5F5 F6F5 F6F9 F600 0000 0000"
	$"8100 00FD FDFD FDFD FDFD F92B FEF8 F6F5"
	$"F5F5 F5F5 4646 4640 4040 4040 3A3A 3A3A"
	$"8100 F5F5 F6FC F5F5 FEF9 F8F8 FEF9 F6F5"
	$"F5F5 F5F5 4646 4022 4040 1C40 173A 3A3A"
	$"8100 F5F6 FCF5 0000 F6FE F9F8 FEF9 F6F5"
	$"F5F5 F5F5 4640 2240 401D 3A17 3A3A 3A10"
	$"81F5 F6FC F500 0000 00F6 FEF8 FEF9 F6F5"
	$"F5F5 F5F6 4022 4040 1C3A 3A3A 3A3B 1035"
	$"8100 FCF5 0000 0000 F6FE F9F8 FEF9 F6F5"
	$"D8F6 F6F5 4040 4041 3A1D 173B 1034 1110"
	$"81F5 F8FC F500 00F6 FEF9 F8F8 FEF9 D8D8"
	$"D8D8 2BF6 1C40 1C40 173A 3A17 3A11 3410"
	$"81F5 F6F8 FCF5 F6FE F9F8 2BF8 FEF9 D8D8"
	$"D8D8 D8F7 4041 3A17 3B3A 1734 1134 100B"
	$"81F5 F62B F8FC FEF9 F82B 2BF8 FEF9 D8D8"
	$"D8D8 FAF8 4017 3A3B 1710 3411 1011 2E11"
	$"81F5 F62B 2BF8 F9F8 2B2B F7F8 FEF9 F6F8"
	$"D8F9 56F7 403B 173A 3B17 3510 340B 0A0A"
	$"81F5 2B2B 2B2B 2B2B F72B 2BF8 FEF9 F62B"
	$"F7F8 2BF6 3A17 1017 1035 1034 0B10 2F0B"
	$"81F5 2B2B 2B2B 2B2B 2B2B F7F8 FEF9 F6F5"
	$"F6F6 F6F5 3B17 1010 3510 1011 0A0B 0A0A"
	$"812B F7F7 F8F8 F8F8 F8F8 F8F8 FEF9 F6F5"
	$"F6F6 F6F6 1710 3434 1035 0A2F 0A2F 0A0A"
	$"00FE FEFE FEFE FEFD FEFE FEFE F9F9 F6F6"
	$"F5F5 F6F6 F6F7 F7F7 F7F7 F7F7 FCF9 F500"
	$"0000 0000 0000 0000 F6AC FAF9 F9F6 F6F5"
	$"F6F6 F5F6 F6F6 F6F6 F6F6 F8AC F92B F500"
	$"0000 0000 0000 0000 00F6 FBF8 F6F6 F6F6"
	$"F5F6 F6F6 F6F6 F6F6 F6F8 FCF9 F72B F6F5"
	$"0000 0000 0000 0000 0000 F6FB F7F6 F5F6"
	$"F6F6 F6F6 F6F6 F6F6 F8FC F9F7 2BF6 F5F5"
	$"0000 0000 0000 0000 0000 00F6 FBF7 F6F5"
	$"F6F5 F6F6 F6F6 F6F8 FCF9 F72B F6F5 F500"
	$"0000 0000 0000 0000 0000 0000 F6FB F7F6"
	$"F6F6 F6F6 F6F6 F8FC F9F7 2BF6 F500 0000"
	$"0000 0000 0000 0000 0000 0000 00F6 FBF7"
	$"F6F6 F6F6 F6F8 FCF9 F72B F6F5 F500 0000"
	$"0000 0000 0000 0000 0000 0000 0000 F6FB"
	$"F7F6 F6F6 F8FC F9F7 2BF6 F5F5 0000 0000"
	$"0000 0000 0000 0000 0000 0000 0000 00F6"
	$"FBF7 F6F8 FCF9 F72B F6F5 0000 0000 0000"
	$"0000 0000 0000 0000 0000 0000 0000 0000"
	$"F6FB F8FC F9F7 2BF5 0000 0000 0000 0000"
	$"0000 0000 0000 0000 0000 0000 0000 0000"
	$"00F6 FBF9 F7F6 F5F5"
};

resource 'icl8' (-16455, "Item Icon ") {
	$"0000 0000 0000 0000 0000 0000 0000 0000"
	$"0000 0000 0000 0000 0000 0000 0000 0000"
	$"0000 0000 0000 0000 0000 0056 F856 F856"
	$"F856 F8F6 0000 0000 0000 0000 0000 0000"
	$"0000 0000 0000 0000 0000 F9FA F500 0000"
	$"00F6 FCF9 F600 0000 0000 0000 0000 0000"
	$"0000 0000 0000 0000 00F9 2B00 FAF5 0000"
	$"2BFB F8F7 F9F6 0000 0000 0000 0000 0000"
	$"0000 0000 0000 0000 F9F6 00F5 00FA F5F7"
	$"8156 F7F6 F7F9 F600 0000 0000 0000 0000"
	$"0000 0000 0000 00F9 2B00 F5F5 00F5 FA81"
	$"56F7 F6F5 F5F5 F9F6 0000 0000 0000 0000"
	$"0000 0000 F5FC FCFC F5F6 F500 F500 F5F8"
	$"F6F5 F5F5 F5F5 F5F9 F600 0000 0000 0000"
	$"0000 0000 FBF5 FFF6 ACF8 F6F5 F5F5 F500"
	$"F5F5 F5F5 F5F5 F5F5 F9F6 0000 0000 0000"
	$"F581 81AC 2BF5 F5F5 F5FE 8181 F5F6 F5F5"
	$"F5F5 F5F5 F5F5 F5F6 F5F9 F600 0000 0000"
	$"8100 00FD FDFD FDFD FEFD F92B FFF8 F6F5"
	$"F5F5 F5F5 4646 D840 4640 1D40 4016 3B16"
	$"8100 F5F5 F5AC 00F5 FEF9 F8F6 EA56 2BF5"
	$"F5F5 F5F5 4646 4640 1D40 4017 3A3A 1635"
	$"8100 F5F5 ACF5 0000 F5FE F9F8 FEF9 F6F5"
	$"F5F5 F500 D846 401D 4040 1C3A 3B16 3516"
	$"8100 F6AC 0000 0000 00F6 F4F8 FE56 2BF5"
	$"F5F5 F5F6 4040 2240 4017 3A16 163B 1035"
	$"8100 AC00 0000 0000 F6FE F9F8 FEF9 F6F5"
	$"D8F6 F624 2241 4041 163A 173A 3B10 3410"
	$"8100 F8AC 0000 00F6 FFF9 F7F8 FF56 D8D8"
	$"D8D8 2BF6 401C 403A 4116 3A11 3A11 1035"
	$"81F5 F6F7 ACF5 F6FE F9F8 2BF8 FEF9 D8D8"
	$"D8D8 D82B 4040 173A 163A 113A 1010 350A"
	$"81F5 F62B F8FC FFF9 F82B 2B56 FE56 D8D8"
	$"D8D8 FAF8 413A 4017 3A10 3A11 3411 0A35"
	$"8100 2B2B F6F8 F9F8 2B2B 2B56 FEF9 F7F8"
	$"D8FA 562B 403B 163A 113A 1134 0B34 0B0A"
	$"81F5 F62B 2B2B 2B2B 2B2B F756 FE56 2B2B"
	$"2BF8 2BF6 163A 173A 1035 1010 350A 2E0B"
	$"81F5 2B2B 2B2B 2B2B 2BF7 2B56 EAF9 2BF5"
	$"F6F6 F6F6 3A17 3A10 3510 102F 0A0B 0B0A"
	$"81F6 F7F8 F8F8 5656 F956 F9F9 FEF9 2BF5"
	$"F6F6 F5F6 1734 1635 1035 0A10 2F0A 0505"
	$"00FE FEFE FEFE FEFD FEFE FEFE FA56 2BF5"
	$"F6F5 F6F6 2A56 F9F9 FAF9 F981 FCF7 F500"
	$"0000 0000 0000 0000 F6AC FA56 562B F6F6"
	$"F5F6 F6F6 25F6 F72B 2B2B 56FC 562B F500"
	$"0000 0000 0000 0000 00F6 FB56 F6F6 F5F5"
	$"F6F5 F6F6 06F6 F6F6 F6F7 FC56 F72B F6F5"
	$"0000 0000 0000 0000 0000 F6FB F7F5 F6F6"
	$"F6F6 F6F6 25F6 F6F6 2BAC F8F7 2BF6 F500"
	$"0000 0000 0000 0000 0000 00F5 FCF7 F5F6"
	$"F5F6 F601 2AF6 F6F6 ACF8 F72B F6F5 0000"
	$"0000 0000 0000 0000 0000 0000 F6FB F7F6"
	$"F6F5 F62B F6F6 2BAC F8F7 2BF6 F500 0000"
	$"0000 0000 0000 0000 0000 0000 00F6 FBF7"
	$"F6F6 F6F6 F6F6 ACF8 F72B F6F5 0000 0000"
	$"0000 0000 0000 0000 0000 0000 0000 F6FB"
	$"F7F6 F6F6 2BAC F8F7 2BF6 F500 0000 0000"
	$"0000 0000 0000 0000 0000 0000 0000 00F6"
	$"FBF7 F6F6 ACF8 F72B F6F5 0000 0000 0000"
	$"0000 0000 0000 0000 0000 0000 0000 0000"
	$"F6FB F7AC F8F7 2BF5 0000 0000 0000 0000"
	$"0000 0000 0000 0000 0000 0000 0000 0000"
	$"00F6 FCF8 F7F6 F5"
};

resource 'ICN#' (128) {
	{	/* array: 2 elements */
		/* [1] */
		$"0000 0000 0000 0000 0010 2000 0008 4000"
		$"0004 8000 0003 0000 0700 0000 0A80 0000"
		$"7070 0000 9FC8 0FFF 8488 0FF7 8848 0FEE"
		$"9028 0FFC A048 8FD0 908B CF68 890B EEC0"
		$"860B EB00 8008 8D80 8008 0800 8008 0800"
		$"8008 0000 7FF0 0008 0060 0010 0020 0020"
		$"0010 0040 0008 0080 0004 0100 0002 0200"
		$"0001 0400 0000 8800 0000 5000 0000 20",
		/* [2] */
		$"0000 0000 001F F000 003F F800 007F FC00"
		$"00FF FE00 01FF FF00 0FFF FF80 0FFF FFC0"
		$"FFFF FFE0 FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF 7FFF FFFE 00FF FFFE 007F FFFF"
		$"003F FFFF 001F FFFE 000F FFF8 0007 FFF8"
		$"0003 FFF0 0001 FFC0 0000 FF00 0000 7F"
	}
};

resource 'ICN#' (-16455, "Item Icon ") {
	{	/* array: 2 elements */
		/* [1] */
		$"0000 0000 0004 9000 0030 2800 0048 6400"
		$"0004 8A00 0083 0100 0F00 8080 0AC0 0040"
		$"F070 1040 9FCC 0FBA 84A9 0ACA 884C 0DB5"
		$"902A 0A92 A06C C76C 909B 4A92 894D B6A4"
		$"869A C952 A90C D6A4 8454 2912 9089 02A8"
		$"8A6C 0C44 7FF8 119A 00A4 0455 0050 402B"
		$"0028 08DC 0018 20AA 0005 0374 0006 12C8"
		$"0003 0570 0000 CEC0 0000 5500 0000 3B",
		/* [2] */
		$"0000 0000 001F F000 003F F800 007F FC00"
		$"00FF FE00 01FF FF00 0FFF FF80 0FFF FFC0"
		$"FFFF FFE0 FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF 7FFF FFFE 00FF FFFF 007F FFFF"
		$"003F FFFF 001F FFFE 000F FFFC 0007 FFF8"
		$"0003 FFF0 0001 FFE0 0000 FF80 0000 7F"
	}
};

resource 'ics#' (128) {
	{	/* array: 2 elements */
		/* [1] */
		$"0000 0000 0000 1000 2800 063F 0638 0BB0"
		$"12A8 0210 7E00 0404",
		/* [2] */
		$"07C0 0FE0 3FF0 FFF8 FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF 07FF 03FE 01FC 00F8"
	}
};

resource 'ics#' (-16455, "Item Icon ") {
	{	/* array: 2 elements */
		/* [1] */
		$"0000 00A0 0910 3000 DA28 0A1B 84AC AB52"
		$"12A9 A514 5A2A 0405 048A 0114 00A8 0050",
		/* [2] */
		$"07C0 0FE0 1FF0 3FF8 FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF 0FFF 07FF 03FE 01FC 00F8"
	}
};

resource 'ics4' (128) {
	$"0000 0CCC CC00 0000 0000 CCC0 DDC0 0000"
	$"00CC C0CD CCCC 0000 0CDD CC00 000C C000"
	$"CDDD EDD0 00BB BB22 C0DC DDD0 0C33 33BB"
	$"CD00 DDEC C033 B222 CCCD DCE3 3C23 22BB"
	$"CCDD CCEB 3DB2 2B21 CCCC CDEC CC22 2211"
	$"DDDD DEDC 0CDB BDB1 0CCC DDC0 CCCC CDC0"
	$"0000 0CC0 CCCC DCC0 0000 00CC 0CCD DC00"
	$"0000 000D C0DD C000 0000 0000 CDDC"
};

resource 'ics4' (-16455) {
	$"0000 0CCC CC00 0000 0000 CCC0 DDC0 0000"
	$"00CC C0CD CCCC 0000 0CDD CC00 000C C000"
	$"CDDD EDD0 00BB BB22 C0DC DDD0 0C33 33BB"
	$"CD00 DDEC C033 B222 CCCD DCE3 3C23 22BB"
	$"CCDD CCEB 3DB2 2B21 CCCC CDEC CC22 2211"
	$"DDDD DEDC 0CDB BDB1 0CCC DDC0 CCCC CDC0"
	$"0000 0CC0 CCCC DCC0 0000 00CC 0CCD DC00"
	$"0000 000D C0DD C000 0000 0000 CDDC"
};

resource 'ics8' (128) {
	$"0000 0000 00F7 2B2B 2BF8 0000 0000 0000"
	$"0000 0000 2B2B 2BF5 5656 F700 0000 0000"
	$"0000 F6F8 2B00 F656 F8F6 F6F7 0000 0000"
	$"F52B 56FA F82B 00F5 F5F5 00F6 2B00 0000"
	$"F7F9 81F9 FCF9 F9F5 F5F5 3939 3939 0F0F"
	$"F7F5 56F6 F9FA 81F5 00F6 46D8 4041 3A3A"
	$"F856 0000 5681 FB2B 32F5 4040 3A16 1710"
	$"F7F8 F756 FAF8 FBD7 D732 1C40 1617 342E"
	$"F7F6 56FA 2BF8 FB39 40F9 3A16 3B34 110A"
	$"F8F6 2B2B 2B56 FB2B 2B2B 163B 1011 0B0A"
	$"56FA FAFA 81FB 81F6 F5F6 3334 3457 3403"
	$"F52B 2B2B F981 F7F5 F6F6 F62B F7FA F8F5"
	$"0000 0000 00F8 F7F5 F6F6 F6F6 F9F8 F6F5"
	$"0000 0000 0000 F8F7 F5F6 F656 56F6 F500"
	$"0000 0000 0000 0056 F7F5 F956 F6F5 0000"
	$"0000 0000 0000 0000 F8F9 56F6 F5"
};

resource 'ics8' (-16455, "Item Icon ") {
	$"0000 0000 00F5 2BF6 2B2B 0000 0000 0000"
	$"0000 0000 F5F8 F600 F7F9 5600 0000 0000"
	$"0000 00F5 F700 2BF8 56F6 2BF9 0000 0000"
	$"0000 FCAC F8F5 00F6 F5F5 F5F6 5600 0000"
	$"FCFC F9F9 FBF9 56F5 F5F5 3839 3939 080E"
	$"FAF5 F900 81F8 FCF6 F5F5 461C 4016 4035"
	$"FA56 0000 F8FA FBF5 32F5 4140 163B 1016"
	$"F956 2BF8 FAF7 FBD8 D832 1C40 3B16 3A0B"
	$"FAF6 56FA F7F7 FC39 4750 4016 3411 340A"
	$"FA2B 2B2B 2BF8 FB2B F6F6 163A 1134 0A0B"
	$"FAFB FBFC FBFC FAF6 2AF6 3334 5734 582D"
	$"0000 0000 FAF9 2BF6 01F6 F62A 2B81 56F6"
	$"0000 0000 00F9 F8F5 2A25 F6F6 81F8 2BF5"
	$"0000 0000 0000 F956 01F6 F681 F82B F500"
	$"0000 0000 0000 00F9 5507 8156 2BF5 0000"
	$"0000 0000 0000 0000 F981 F82B"
};

resource 'vers' (1) {
	0x1,
	0x0,
	development,
	0x4,
	14,
	"1.0d4",
	"©1998-99 Mihai Parparita"
};

resource 'vers' (2) {
	0x1,
	0x0,
	development,
	0x4,
	14,
	"1.0d4",
	"Icon Mangler 1.0d4"
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

resource 'dlgx' (128) {
	versionZero {
		9
	}
};

resource 'dlgx' (130) {
	versionZero {
		9
	}
};

resource 'dlgx' (1000) {
	versionZero {
		11
	}
};

resource 'dlgx' (300) {
	versionZero {
		15
	}
};

resource 'DITL' (130) {
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

resource 'DITL' (128) {
	{	/* array DITLarray: 5 elements */
		/* [1] */
		{114, 211, 134, 269},
		Button {
			enabled,
			"OK"
		},
		/* [2] */
		{10, 10, 58, 270},
		StaticText {
			enabled,
			"Icon Mangler"
		},
		/* [3] */
		{57, 10, 75, 270},
		StaticText {
			disabled,
			"by Mihai Parparita"
		},
		/* [4] */
		{90, 10, 108, 270},
		StaticText {
			enabled,
			"http://www.mscape.com/iconmangler/"
		},
		/* [5] */
		{73, 10, 91, 270},
		StaticText {
			enabled,
			"mihai@mscape.com"
		}
	}
};

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

resource 'DITL' (1000) {
	{	/* array DITLarray: 24 elements */
		/* [1] */
		{0, 0, 22, 26},
		Control {
			enabled,
			132
		},
		/* [2] */
		{0, 26, 22, 52},
		Control {
			enabled,
			133
		},
		/* [3] */
		{22, 0, 44, 26},
		Control {
			enabled,
			134
		},
		/* [4] */
		{22, 26, 44, 52},
		Control {
			enabled,
			135
		},
		/* [5] */
		{9, 61, 203, 255},
		Control {
			enabled,
			200
		},
		/* [6] */
		{210, 4294967295, 226, 63},
		Control {
			enabled,
			201
		},
		/* [7] */
		{213, 4, 223, 58},
		Control {
			enabled,
			202
		},
		/* [8] */
		{210, 62, 226, 182},
		Control {
			enabled,
			203
		},
		/* [9] */
		{213, 69, 223, 179},
		Control {
			enabled,
			204
		},
		/* [10] */
		{117, 7, 156, 46},
		Control {
			enabled,
			205
		},
		/* [11] */
		{25, 261, 115, 315},
		Control {
			enabled,
			206
		},
		/* [12] */
		{25, 322, 115, 376},
		Control {
			enabled,
			207
		},
		/* [13] */
		{8, 259, 22, 317},
		Control {
			enabled,
			208
		},
		/* [14] */
		{8, 320, 22, 378},
		Control {
			enabled,
			209
		},
		/* [15] */
		{118, 260, 130, 314},
		Control {
			enabled,
			210
		},
		/* [16] */
		{118, 323, 130, 377},
		Control {
			enabled,
			211
		},
		/* [17] */
		{44, 0, 66, 26},
		Control {
			enabled,
			128
		},
		/* [18] */
		{44, 26, 66, 52},
		Control {
			enabled,
			129
		},
		/* [19] */
		{88, 0, 110, 26},
		Control {
			enabled,
			136
		},
		/* [20] */
		{66, 26, 88, 52},
		Control {
			enabled,
			131
		},
		/* [21] */
		{66, 0, 88, 26},
		Control {
			enabled,
			130
		},
		/* [22] */
		{88, 26, 110, 52},
		Control {
			enabled,
			137
		},
		/* [23] */
		{132, 261, 186, 376},
		Control {
			enabled,
			212
		},
		/* [24] */
		{190, 261, 202, 376},
		Control {
			enabled,
			213
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

data 'DLGX' (130) {
	$"0654 6563 686E 6F00 0000 0000 0000 0000"            /* .Techno......... */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"000C 0000 0000 0000 0004 0004 0000 0000"            /* ................ */
	$"0000"                                               /* .. */
};

data 'DLGX' (128) {
	$"0743 6869 6361 676F 0000 0000 0000 0000"            /* .Chicago........ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"000C 0000 0000 0000 0004 0004 0000 0000"            /* ................ */
	$"0005 0000 0000 0000 0000 0000 0000 0006"            /* ................ */
	$"0000 0000 0000 0000 0000 0006 0000 0000"            /* ................ */
	$"0000 0000 0000 0006 0000 0000 0000 0000"            /* ................ */
	$"0000 0006 0000 0000 0000 0000 0000"                 /* .............. */
};

data 'DLGX' (1000) {
	$"0654 6563 686E 6F00 0000 0000 0000 0000"            /* .Techno......... */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"000C 0000 0000 0000 0004 0004 0000 0000"            /* ................ */
	$"0018 0005 0000 0000 0000 0000 0000 0005"            /* ................ */
	$"0000 0000 0000 0000 0000 0005 0000 0000"            /* ................ */
	$"0000 0000 0000 0005 0000 0000 0000 0000"            /* ................ */
	$"0000 0005 0000 0000 0000 0000 0000 0005"            /* ................ */
	$"8000 0000 0000 0000 0000 0005 0000 0000"            /* €............... */
	$"0000 0000 0000 0005 8000 0000 0000 0000"            /* ........€....... */
	$"0000 0005 0000 0000 0000 0000 0000 0005"            /* ................ */
	$"0000 0000 0000 0000 0000 0005 0000 0000"            /* ................ */
	$"0000 0000 0000 0005 0000 0000 0000 0000"            /* ................ */
	$"0000 0005 0000 0000 0000 0000 0000 0005"            /* ................ */
	$"0000 0000 0000 0000 0000 0005 0000 0000"            /* ................ */
	$"0000 0000 0000 0005 0000 0000 0000 0000"            /* ................ */
	$"0000 0005 8000 0000 0000 0000 0000 0005"            /* ....€........... */
	$"8000 0000 0000 0000 0000 0005 0000 0000"            /* €............... */
	$"0000 0000 0000 0005 0000 0000 0000 0000"            /* ................ */
	$"0000 0005 0000 0000 0000 0000 0000 0005"            /* ................ */
	$"0000 0000 0000 0000 0000 0005 0000 0000"            /* ................ */
	$"0000 0000 0000 0005 0000 0000 0000 0000"            /* ................ */
	$"0000"                                               /* .. */
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

data 'ictb' (129) {
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0007 0028 8007 003C 0001 0000 0009 0000"            /* ...(€..<........ */
	$"0000 0000 FFFF FFFF FFFF 0000 0050 0000"            /* ....ÿÿÿÿÿÿ...P.. */
	$"0009 0000 0000 0000 FFFF FFFF FFFF 0000"            /* ........ÿÿÿÿÿÿ.. */
	$"0647 656E 6576 61"                                  /* .Geneva */
};

data 'ictb' (132) {
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0007 0028 8007 003C 0001 0000 0009 0000"            /* ...(€..<........ */
	$"0000 0000 FFFF FFFF FFFF 0000 0050 0000"            /* ....ÿÿÿÿÿÿ...P.. */
	$"0009 0000 0000 0000 FFFF FFFF FFFF 0000"            /* ........ÿÿÿÿÿÿ.. */
	$"0647 656E 6576 61"                                  /* .Geneva */
};

data 'ictb' (128) {
	$"0000 0000 8007 0014 0007 0028 000F 003C"            /* ....€......(...< */
	$"000F 0050 0064 0000 0024 0000 0000 0000"            /* ...P.d...$...... */
	$"FFFF FFFF FFFF 0000 0000 0000 0000 0000"            /* ÿÿÿÿÿÿ.......... */
	$"0000 0000 FFFF FFFF FFFF 0000 0000 0400"            /* ....ÿÿÿÿÿÿ...... */
	$"0000 0000 0000 FFFF 0000 0006 0000 0000"            /* ......ÿÿ........ */
	$"0000 0400 0000 0000 0000 FFFF 0000 0006"            /* ..........ÿÿ.... */
	$"0000 0000 0843 6861 7263 6F61 6C"                   /* .....Charcoal */
};

data 'ictb' (1000) {
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000"                      /* ............ */
};

data 'ictb' (300) {
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000"                                          /* .... */
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

resource 'mctb' (201) {
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

resource 'dctb' (1000) {
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

data 'Mcmd' (130) {
	$"0009 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000"                                     /* ...... */
};

data 'Mcmd' (128) {
	$"0002 0000 0000 0000 0000"                           /* .......... */
};

resource 'icns' (-16455, "Item Icon ") {
	{	/* array elementArray: 8 elements */
		/* [1] */
		'ICN#',
		$"0000 0000 0004 9000 0030 2800 0048 6400"
		$"0004 8A00 0083 0100 0F00 8080 0AC0 0040"
		$"F070 1040 9FCC 0FBA 84A9 0ACA 884C 0DB5"
		$"902A 0A92 A06C C76C 909B 4A92 894D B6A4"
		$"869A C952 A90C D6A4 8454 2912 9089 02A8"
		$"8A6C 0C44 7FF8 119A 00A4 0455 0050 402B"
		$"0028 08DC 0018 20AA 0005 0374 0006 12C8"
		$"0003 0570 0000 CEC0 0000 5500 0000 3B00"
		$"0000 0000 001F F000 003F F800 007F FC00"
		$"00FF FE00 01FF FF00 0FFF FF80 0FFF FFC0"
		$"FFFF FFE0 FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF 7FFF FFFE 00FF FFFF 007F FFFF"
		$"003F FFFF 001F FFFE 000F FFFC 0007 FFF8"
		$"0003 FFF0 0001 FFE0 0000 FF80 0000 7F00",
		/* [2] */
		'icl8',
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0056 F856 F856"
		$"F856 F8F6 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 F9FA F500 0000"
		$"F5F6 FEF9 F600 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 00F9 F6F5 FAF5 0000"
		$"2BFE F9F7 F9F6 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 F92B F500 F5FA F5F7"
		$"FEF9 F6F6 F7F9 F600 0000 0000 0000 0000"
		$"0000 0000 0000 00F9 F6F5 00F5 00F5 FAFE"
		$"F9F6 F5F5 F5F5 F9F6 0000 0000 0000 0000"
		$"0000 0000 F6FC FCFC F6F6 F500 F500 F5F9"
		$"F6F5 F5F5 F5F5 F5F9 F600 0000 0000 0000"
		$"0000 0000 FBF5 FF2B FCF8 F6F5 F5F5 F5F5"
		$"F5F5 F5F5 F5F5 F5F5 F9F6 0000 0000 0000"
		$"F681 81AC 2BF5 F5F5 F6FD 8181 F5F6 F5F5"
		$"F5F5 F5F5 F5F5 F6F5 F6F9 F600 0000 0000"
		$"8100 00FD FDFD FDFD FDFD F92B FEF8 F6F5"
		$"F5F5 F5F5 4646 4640 4040 4040 3A3A 3A3A"
		$"8100 F5F5 F6FC F5F5 FEF9 F8F8 FEF9 F6F5"
		$"F5F5 F5F5 4646 4022 4040 1C40 173A 3A3A"
		$"8100 F5F6 FCF5 0000 F6FE F9F8 FEF9 F6F5"
		$"F5F5 F5F5 4640 2240 401D 3A17 3A3A 3A10"
		$"81F5 F6FC F500 0000 00F6 FEF8 FEF9 F6F5"
		$"F5F5 F5F6 4022 4040 1C3A 3A3A 3A3B 1035"
		$"8100 FCF5 0000 0000 F6FE F9F8 FEF9 F6F5"
		$"D8F6 F6F5 4040 4041 3A1D 173B 1034 1110"
		$"81F5 F8FC F500 00F6 FEF9 F8F8 FEF9 D8D8"
		$"D8D8 2BF6 1C40 1C40 173A 3A17 3A11 3410"
		$"81F5 F6F8 FCF5 F6FE F9F8 2BF8 FEF9 D8D8"
		$"D8D8 D8F7 4041 3A17 3B3A 1734 1134 100B"
		$"81F5 F62B F8FC FEF9 F82B 2BF8 FEF9 D8D8"
		$"D8D8 FAF8 4017 3A3B 1710 3411 1011 2E11"
		$"81F5 F62B 2BF8 F9F8 2B2B F7F8 FEF9 F6F8"
		$"D8F9 56F7 403B 173A 3B17 3510 340B 0A0A"
		$"81F5 2B2B 2B2B 2B2B F72B 2BF8 FEF9 F62B"
		$"F7F8 2BF6 3A17 1017 1035 1034 0B10 2F0B"
		$"81F5 2B2B 2B2B 2B2B 2B2B F7F8 FEF9 F6F5"
		$"F6F6 F6F5 3B17 1010 3510 1011 0A0B 0A0A"
		$"812B F7F7 F8F8 F8F8 F8F8 F8F8 FEF9 F6F5"
		$"F6F6 F6F6 1710 3434 1035 0A2F 0A2F 0A0A"
		$"00FE FEFE FEFE FEFD FEFE FEFE F9F9 F6F6"
		$"F5F5 F6F6 F6F7 F7F7 F7F7 F7F7 FCF9 F500"
		$"0000 0000 0000 0000 F6AC FAF9 F9F6 F6F5"
		$"F6F6 F5F6 F6F6 F6F6 F6F6 F8AC F92B F500"
		$"0000 0000 0000 0000 00F6 FBF8 F6F6 F6F6"
		$"F5F6 F6F6 F6F6 F6F6 F6F8 FCF9 F72B F6F5"
		$"0000 0000 0000 0000 0000 F6FB F7F6 F5F6"
		$"F6F6 F6F6 F6F6 F6F6 F8FC F9F7 2BF6 F5F5"
		$"0000 0000 0000 0000 0000 00F6 FBF7 F6F5"
		$"F6F5 F6F6 F6F6 F6F8 FCF9 F72B F6F5 F500"
		$"0000 0000 0000 0000 0000 0000 F6FB F7F6"
		$"F6F6 F6F6 F6F6 F8FC F9F7 2BF6 F500 0000"
		$"0000 0000 0000 0000 0000 0000 00F6 FBF7"
		$"F6F6 F6F6 F6F8 FCF9 F72B F6F5 F500 0000"
		$"0000 0000 0000 0000 0000 0000 0000 F6FB"
		$"F7F6 F6F6 F8FC F9F7 2BF6 F5F5 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 00F6"
		$"FBF7 F6F8 FCF9 F72B F6F5 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"F6FB F8FC F9F7 2BF5 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"00F6 FBF9 F7F6 F5F5 0000 0000 0000 0000",
		/* [3] */
		'il32',
		$"A8FF 859C 0066 93FF 0288 77EF 80FE 04F7"
		$"DB55 8466 91FF 0C88 D3F6 77EF FEF7 CF55"
		$"A2BC 8466 8FFF 0188 D180 F609 77F1 C361"
		$"A2BC D8BC 8466 8CFF 11FE 87D5 F5F6 F6F5"
		$"F477 61A2 BCD0 F0EF EE84 6689 FF80 0011"
		$"44E5 E1F0 F5F4 F4F3 AFD0 F1F0 EFEE EDEC"
		$"8466 88FF 0800 EE00 CC44 ABDF F3F3 80F2"
		$"09F1 F0EF EEED ECEB EB84 6683 FF81 0000"
		$"CC80 EE12 DD22 6666 E5DD ECF1 F0EF EEED"
		$"ECEA EAE9 E883 6682 FE02 00FF FF84 225A"
		$"88C6 11A8 DCEF EFEE EDEC D2D3 D4D5 D7D9"
		$"DADC DEE0 E2E3 00FD EEE9 E544 EEEE 1188"
		$"AAD1 1193 D6EE EEED ECEA D3D4 D5D7 D9DA"
		$"DCDE E0E2 E3E5 00F9 E9E4 44EE FFFF DD11"
		$"88AA 1192 D5ED EDEC EBEA D4D5 D7D9 DADC"
		$"DEE0 E2E3 E5E7 00F8 E544 EE81 FF1A DD11"
		$"A911 91D4 ECEC EAEB E9D5 D7D9 DADC DEE0"
		$"E2E3 E5E7 E800 F744 EE81 FF25 DD11 88A9"
		$"1191 D3EA DDDC E4E8 D7D9 DADC DEE0 E2E3"
		$"E5E7 E8EA 00F5 AA44 EEFF FFDD 1188 AAA9"
		$"1190 81DD 1BC6 E1D9 DADC DEE0 E2E3 E5E7"
		$"E8EA EC00 F3D9 AA44 EEDD 1188 AACA A911"
		$"8E82 DD1A C4D4 DCDE E0E2 E3E5 E7E8 EAEC"
		$"EE00 F3D6 D4AA 4411 88AA CAC8 A111 8E81"
		$"DD7F 7FA9 CEDD E0E2 E3E5 E7E8 EAEC EEF0"
		$"00F1 D4D2 D0AA 88AA CAC8 C69B 118E BEA1"
		$"DD7F 95C3 D8E0 E2E3 E5E7 E8EA ECEE F0F1"
		$"00F1 D2D0 CECD CBC9 C8C7 C596 118E CAD3"
		$"BFA9 C4DE E0E2 E3E5 E7E8 EAEC EEF0 F1F3"
		$"00F0 D0CE CCCB C9C8 C6C5 C390 118E CFE5"
		$"E1D8 DFE3 E2E3 E5E7 E8EA ECEE F0F1 F3F5"
		$"00D0 BBB1 A9A3 9E9B 9793 908D 118E CEE6"
		$"E6E4 0EE4 E2E3 E5E7 E8EA ECEE F0F1 F3F5"
		$"F6FF 8300 8211 127A 9BD3 E5E5 E4E3 E1CE"
		$"9B89 8887 8786 7241 6666 85FF 14FE 5D3B"
		$"748D 9BC5 E0E5 E4E3 E2E1 DBCD C7C6 C6C5"
		$"A73A 8166 85FF 12F9 5D4C AAD3 E0E5 E4E3"
		$"E2E1 E0E0 DEDD DDDC BB41 8266 86FF 10FE"
		$"6655 BEE5 E4E3 E2E1 E0E0 DFDE DEDD CD41"
		$"8366 88FF 0D66 55C0 E3E2 E1E0 E0DF DEDE"
		$"DDCD 4183 668A FF0B 6655 BFE1 E0E0 DFDE"
		$"DEDD CD41 8366 8CFF 0966 55BF E0DF DEDE"
		$"DDCD 4183 668E FF07 6655 B8DE DEDD CD41"
		$"8366 90FF 0566 55BC DDCD 4183 6692 FF03"
		$"6655 BC41 8266 95FF 0166 5582 6685 FFA8"
		$"FF85 A100 6693 FF02 8877 EF80 FF04 F8DB"
		$"5584 6691 FF0C 88D3 F677 EFFF F8CF 55A3"
		$"BC84 668F FF01 88D1 80F6 0977 F0C2 62A3"
		$"BCDA BC84 668C FF11 FE87 D4F5 F6F6 F5F4"
		$"7762 A3BC D1F0 EFEE 8466 89FF 8000 1144"
		$"E5E1 F0F5 F4F4 F3AF D1F1 F0EF EEED EC84"
		$"6688 FF08 00EE 00CC 44AB DFF3 F380 F209"
		$"F1F0 EFEE EDEC EBEB 8466 83FF 8100 00CC"
		$"80EE 12DD 2266 66E5 DDEC F1F0 EFEE EDEC"
		$"EAEA E9E8 8366 82FE 0200 FFFF 8422 5A88"
		$"C711 A8DC EFEF EEED EC00 060D 1620 2A35"
		$"414C 5864 6F00 FCEE E9E5 44EE EE11 88AA"
		$"D111 93D6 EEEE EDEC EA06 0D16 202A 3541"
		$"4C58 646F 7A00 FAE9 E544 EEFF FFDD 1188"
		$"AA11 92D5 EDED ECEB EA0D 1620 2A35 414C"
		$"5864 6F7A 8400 F8E5 44EE 81FF 1ADD 11A9"
		$"1191 D4EC ECEA EBE9 1620 2A35 414C 5864"
		$"6F7A 848F 00F6 44EE 81FF 25DD 1188 A911"
		$"91D3 EA00 DCE4 E820 2A35 414C 5864 6F7A"
		$"848F 9B00 F6AA 44EE FFFF DD11 88AA A911"
		$"9081 001B C6E1 2A35 414C 5864 6F7A 848F"
		$"9BA7 00F4 D9AA 44EE DD11 88AA CAA9 118E"
		$"8200 1AC4 3441 4C58 646F 7A84 8F9B A7B2"
		$"00F4 D6D4 AA44 1188 AACA C8A2 118E 8100"
		$"7F7F A93D 4C58 646F 7A84 8F9B A7B2 BE00"
		$"F2D4 D2D0 AA88 AAC9 C8C7 9B11 8EBE A100"
		$"7F95 C34A 5864 6F7A 848F 9BA7 B2BE C900"
		$"F1D1 CFCE CDCB C9C8 C6C4 9511 8ECA D3BF"
		$"A9C4 DE58 646F 7A84 8F9B A7B2 BEC9 D300"
		$"F0D0 CECC CAC9 C8C6 C4C4 9011 8ECF E5E1"
		$"D8DF E364 6F7A 848F 9BA7 B2BE C9D3 DD00"
		$"D0BB B1A9 A39F 9A97 9491 8E11 8ECE E6E6"
		$"E40E E4E2 6F7A 848F 9BA7 B2BE C9D3 DDE6"
		$"FF83 0082 1112 7A9B D3E5 E5E4 E3E1 CE9B"
		$"8988 8787 8672 4166 6685 FF14 FE5D 3B74"
		$"8D9B C5E0 E5E4 E3E2 E1DB CDC7 C6C6 C5A7"
		$"3A81 6685 FF12 F95D 4CA9 D3E0 E5E4 E3E2"
		$"E1E0 E0DE DDDD DCBB 4182 6686 FF10 FE66"
		$"55BE E5E4 E3E2 E1E0 E0DF DEDE DDCD 4183"
		$"6688 FF0D 6655 BFE3 E2E1 E0E0 DFDE DEDD"
		$"CD41 8366 8AFF 0B66 55BF E1E0 E0DF DEDE"
		$"DDCD 4183 668C FF09 6655 BFE0 DFDE DEDD"
		$"CD41 8366 8EFF 0766 55B9 DEDE DDCD 4183"
		$"6690 FF05 6655 BCDD CD41 8366 92FF 0366"
		$"55BC 4182 6695 FF01 6655 8266 85FF A8FF"
		$"85A4 0066 93FF 0288 77F1 80FF 04F7 DB55"
		$"8366 91FF 0C88 D3F6 77F1 FFF7 D055 A3BD"
		$"8366 8FFF 0188 D180 F609 77F1 C361 A3BD"
		$"DDBD 8366 8CFF 11FE 87D4 F5F6 F6F5 F477"
		$"61A3 BDD3 F0EF EE83 6689 FF80 0011 44E5"
		$"E1F0 F5F4 F4F3 AFD3 F1F0 EFEE EDEC 8366"
		$"88FF 0800 EE00 CC44 ABDF F3F3 80F2 09F1"
		$"F0EF EEED ECEB EB83 6683 FF81 0000 CC80"
		$"EE12 DD22 6666 E5DD ECF1 F0EF EEED ECEA"
		$"EAE9 E882 6682 FE02 00FF FF84 225A 88C5"
		$"11A8 DCEF EFEE EDEC 2C2C 2B2A 2929 2827"
		$"2625 2423 00FC EEEA E544 EEEE 1188 AAD0"
		$"1193 D6EE EEED ECEA 2C2B 2A29 2928 2726"
		$"2524 2322 00FA E9E5 44EE FFFF DD11 88AA"
		$"1192 D5ED EDEC EBEA 2B2A 2929 2827 2625"
		$"2423 2221 00F8 E444 EE81 FF1A DD11 A811"
		$"91D4 ECEC EAEB E92A 2929 2827 2625 2423"
		$"2221 2000 F644 EE81 FF25 DD11 88A8 1191"
		$"D3EA 00DC E4E8 2929 2827 2625 2423 2221"
		$"201F 00F5 AA44 EEFF FFDD 1188 AAA8 1190"
		$"8100 1BC6 E129 2827 2625 2423 2221 201F"
		$"1E00 F4D8 AA44 EEDD 1188 AAC9 A811 8E82"
		$"001A C427 2726 2524 2322 2120 1F1E 1D00"
		$"F2D5 D3AA 4411 88AA C9C8 A211 8E81 007F"
		$"7FA9 2526 2524 2322 2120 1F1E 1D1C 00F2"
		$"D3D2 CFAA 88AA C9C7 C59B 118E BEA1 007F"
		$"95C3 2525 2423 2221 201F 1E1D 1C1B 00F1"
		$"D1CF CECC CAC9 C7C5 C495 118E CAD3 BFA9"
		$"C4DE 2524 2322 2120 1F1E 1D1C 1B1B 00F0"
		$"CFCE CCCA C8C7 C5C4 C390 118E CFE5 E1D8"
		$"DFE3 2423 2221 201F 1E1D 1C1B 1B1A 00CF"
		$"BBB2 A9A3 9F9B 9794 908D 118E CEE6 E6E4"
		$"0EE4 E223 2221 201F 1E1D 1C1B 1B1A 19FF"
		$"8300 8211 127A 9BD3 E5E5 E4E3 E1CE 9B89"
		$"8887 8786 7341 6666 85FF 14FE 5D3B 748D"
		$"9BC5 E0E5 E4E3 E2E1 DBCD C7C6 C6C5 A83A"
		$"8166 85FF 12F9 5D4C A9D3 E0E5 E4E3 E2E1"
		$"E0E0 DEDD DDDC BC41 8266 86FF 10FE 6655"
		$"BFE5 E4E3 E2E1 E0E0 DFDE DEDD CD41 8366"
		$"88FF 0D66 55BF E3E2 E1E0 E0DF DEDE DDCD"
		$"4183 668A FF0B 6655 BFE1 E0E0 DFDE DEDD"
		$"CD41 8366 8CFF 0966 55BE E0DF DEDE DDCD"
		$"4183 668E FF07 6655 B9DE DEDD CD41 8366"
		$"90FF 0566 55BD DDCD 4183 6692 FF03 6655"
		$"BD41 8266 95FF 0166 5582 6685 FF",
		/* [4] */
		'l8mk',
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 00FF FFFF FFFF"
		$"FFFF FF36 0000 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 0000 FFFF FFFF FFFF"
		$"FFFF FFFF 3600 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 00FF FFFF FFFF FFFF"
		$"FFFF FFFF FF36 0000 0000 0000 0000 0000"
		$"0000 0000 0000 0000 FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF 3600 0000 0000 0000 0000"
		$"0000 0000 0000 00FF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FF36 0000 0000 0000 0000"
		$"0000 0000 1ABB BBFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF 3600 0000 0000 0000"
		$"0000 0000 AAFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FF36 0000 0000 0000"
		$"1A99 99CC FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF 3600 0000 0000"
		$"99FF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"99FF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"99FF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"99FF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"99FF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"99FF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"99FF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"99FF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"99FF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"99FF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"99FF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"99FF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"00EE EEEE EEEE EEEE FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FF77 1C00"
		$"0000 0000 0000 0000 36FF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF 9E54 240D"
		$"0000 0000 0000 0000 0036 FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FF9E 7750 3624"
		$"0000 0000 0000 0000 0000 36FF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF 9E77 5036 240D"
		$"0000 0000 0000 0000 0000 0036 FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FF9E 7750 3624 0D00"
		$"0000 0000 0000 0000 0000 0000 36FF FFFF"
		$"FFFF FFFF FFFF FFFF 9E77 5036 240D 0000"
		$"0000 0000 0000 0000 0000 0000 0036 FFFF"
		$"FFFF FFFF FFFF FF9E 7750 3624 0D00 0000"
		$"0000 0000 0000 0000 0000 0000 0000 36FF"
		$"FFFF FFFF FFFF 9E77 5036 240D 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0036"
		$"FFFF FFFF FF9E 7750 3624 0D00 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"36FF FFFF 9E77 5024 0D00 0000 0000 0000"
		$"0000 0000 0000 0000 0000 0000 0000 0000"
		$"0036 FF99 7736 1C0D 0000 0000 0000 0000",
		/* [5] */
		'ics#',
		$"0000 00A0 0910 3000 DA28 0A1B 84AC AB52"
		$"12A9 A514 5A2A 0405 048A 0114 00A8 0050"
		$"07C0 0FE0 1FF0 3FF8 FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF 0FFF 07FF 03FE 01FC 00F8",
		/* [6] */
		'ics8',
		$"0000 0000 00F5 2BF6 2B2B 0000 0000 0000"
		$"0000 0000 F5F8 F600 F7F9 5600 0000 0000"
		$"0000 00F6 2B00 2B56 56F6 2BF9 0000 0000"
		$"0000 ACFC F8F5 F5F5 F5F5 F5F6 5600 0000"
		$"FCFC F9F9 FCF9 56F5 F5F5 3839 3939 080E"
		$"FAF5 5600 81F8 FBF6 F5F5 461C 4016 4035"
		$"FA56 0000 F8FA FBF6 32F5 4041 163A 1116"
		$"FA56 2BF8 FAF7 FBD8 D732 1C40 3A17 3A0A"
		$"FAF6 56FA F7F8 FB39 4156 3A17 3A10 2F10"
		$"FA2B 2B2B 2BF7 FC2B 2B2A 173A 1035 0A0B"
		$"FAFB FBFC FBFC FAF6 F5F6 3333 5833 582D"
		$"0000 0000 FAFA 2BF5 F6F5 F62B 2B81 8181"
		$"0000 0000 00F9 F8F6 F5F6 F6F6 8181 81F9"
		$"0000 0000 0000 F9F8 F6F6 F681 8181 F900"
		$"0000 0000 0000 00F9 F8F6 8181 81F9 0000"
		$"0000 0000 0000 0000 F981 8181 F600 0000",
		/* [7] */
		'is32',
		$"82FF 00E7 80CE 00C1 87FF 06E2 B3D5 FDBE"
		$"8E94 85FF 08E1 C9F6 D6A3 99D5 C894 83FF"
		$"0A3C 44AE EEF4 E2E9 F0EE D294 80FF 6F40"
		$"4980 8851 879F EAF0 EEDF DFC7 C7EF F17E"
		$"EA97 F762 AC52 E2EE EBD5 D7DB DEE2 E57C"
		$"97FB FFB3 7B51 E0E4 E9D7 DBDE E2E5 E97A"
		$"9DC8 B373 B250 DDDD D3D9 DEE2 E5E9 EC79"
		$"D49A 73C2 B350 C7C6 A0D9 E2E5 E9EC F079"
		$"D0CD CAC7 AC50 D5C9 DAE2 E5E9 ECF0 F374"
		$"5C54 5353 506E DCE5 E3CD B8BA B6A3 D581"
		$"FF0B 7C7E C5E4 E4E2 DAD2 C962 6666 82FF"
		$"0A89 AFE4 E2E0 DFDA 6E66 668D 83FF 0889"
		$"ADE0 DFDA 6E66 668D 85FF 0689 AADA 6E66"
		$"668D 87FF 0489 6F66 66D9 80FF 82FF 00E8"
		$"80D0 00C2 87FF 06E2 B3D5 FEBE 8E94 85FF"
		$"08E1 C9F6 D6A3 9AD6 C894 83FF 0A3C 44AE"
		$"EEF4 E2E9 F0EE D294 80FF 6F40 4980 8851"
		$"879F EAF0 EE77 7E6E 77A8 B47E EA97 F762"
		$"AC52 E2EE EB0E 2036 4D64 7A7C 97FB FFB3"
		$"7B51 E0AD E920 364D 647A 907B 9DC8 B373"
		$"B250 0000 9B35 4D64 7A90 A77A D49A 73C2"
		$"B450 5820 A04B 647A 90A7 BE79 D0CD CAC6"
		$"AC50 D5C9 DA64 7A90 A7BE D374 5C54 5354"
		$"516E DCE5 E395 8A94 9A91 CB81 FF0B 7C7E"
		$"C5E4 E4E2 DAD2 C962 6666 82FF 0A89 AEE4"
		$"E2E0 DFDA 6E66 668D 83FF 0889 ADE0 DFDA"
		$"6E66 668D 85FF 0689 AADA 6E66 668D 87FF"
		$"0489 6F66 66D9 80FF 82FF 00E9 80D2 00C3"
		$"87FF 06E2 B3D6 FDBE 8E94 85FF 08E1 C9F6"
		$"D6A3 99D8 C894 83FF 0A3C 44AE EEF4 E2EA"
		$"F0EE D294 80FF 6F40 4980 8851 879F EAF0"
		$"EE8C 8B70 6D92 917E EA97 F762 AB52 E2EE"
		$"EB2C 2A29 2725 237C 97FB FFB3 7B51 E0AD"
		$"E92A 2927 2523 217B 9CC8 B373 B150 0000"
		$"9B28 2725 2321 1F79 D49A 73C1 B350 5820"
		$"A026 2523 211F 1D79 D0CC C9C6 AC50 D5C9"
		$"DA25 2321 1F1D 1B74 5C54 5354 506E DCE5"
		$"E36C 5553 4D38 6681 FF0B 7C7E C5E4 E4E2"
		$"DAD2 C963 6666 82FF 0A89 AEE4 E2E0 DFDA"
		$"6E66 668D 83FF 0889 ADE0 DFDA 6E66 668D"
		$"85FF 0689 ABDA 6E66 668D 87FF 0489 6F66"
		$"66D9 80FF",
		/* [8] */
		's8mk',
		$"0000 0000 00FF FFFF FFFF 0000 0000 0000"
		$"0000 0000 FFFF FFFF FFFF FF00 0000 0000"
		$"0000 00FF FFFF FFFF FFFF FFFF 0000 0000"
		$"0000 FFFF FFFF FFFF FFFF FFFF FF00 0000"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF"
		$"0000 0000 FFFF FFFF FFFF FFFF FFFF 9E36"
		$"0000 0000 00FF FFFF FFFF FFFF FF9E 5024"
		$"0000 0000 0000 FFFF FFFF FFFF 9E50 2400"
		$"0000 0000 0000 00FF FFFF FF9E 5024 0000"
		$"0000 0000 0000 0000 FFFF 9E50 0D00 0000"
	}
};

resource 'xmnu' (130) {
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

resource 'xmnu' (132) {
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

resource 'xmnu' (131) {
	versionZero {
		{	/* array ItemExtensions: 3 elements */
			/* [1] */
			skipItem {

			}			,
			/* [2] */
			skipItem {

			}			,
			/* [3] */
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

resource 'STR#' (128, "Default Names", purgeable) {
	{	/* array StringArray: 1 elements */
		/* [1] */
		"Icon Mangler"
	}
};

resource 'STR#' (130, "Prompts", purgeable) {
	{	/* array StringArray: 3 elements */
		/* [1] */
		"Do you want to save changes to the <app "
		"name> document Ò<file name>Ó before clos"
		"ing it?",
		/* [2] */
		"Select the file that you want to edit.",
		/* [3] */
		"Select a name and location for the icon "
		"you want to save."
	}
};

resource 'STR#' (129, "Standard Errors", purgeable) {
	{	/* array StringArray: 11 elements */
		/* [1] */
		"The file you selected has no icon resour"
		"ces to edit.",
		/* [2] */
		"This beta of <app name> expired on March"
		" 1, 1999. If you're supposed to have thi"
		"s contact Mihai to get a newer version.",
		/* [3] */
		"A needed resource is missing. <app name>"
		" could be corrupted, please reinstall th"
		"e program.",
		/* [4] */
		"<app name> requires Mac OS 8.5 or above.",
		/* [5] */
		"AppleEvents could not be initialized, <a"
		"pp name> cannot continue.",
		/* [6] */
		"There was an error while initializing th"
		"e Appearance Mangler, <app name> cannot "
		"continue.",
		/* [7] */
		"There was error while initializing the m"
		"enu bar. <app name>Õs resource fork is m"
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
		"re room."
	}
};

resource 'STR#' (200, "Basic Strings", purgeable) {
	{	/* array StringArray: 1 elements */
		/* [1] */
		"Untitled Icon"
	}
};

resource 'STR#' (201, "Labels", purgeable) {
	{	/* array StringArray: 5 elements */
		/* [1] */
		"Icon",
		/* [2] */
		"Mask",
		/* [3] */
		"Preview",
		/* [4] */
		"Pick a foreground color:",
		/* [5] */
		"Pick a background color:"
	}
};

resource 'MBAR' (128) {
	{	/* array MenuArray: 4 elements */
		/* [1] */
		128,
		/* [2] */
		129,
		/* [3] */
		130,
		/* [4] */
		133
	}
};

resource 'BNDL' (128) {
	'Mngl',
	0,
	{	/* array TypeArray: 2 elements */
		/* [1] */
		'ICN#',
		{	/* array IDArray: 3 elements */
			/* [1] */
			0, 0,
			/* [2] */
			1, 0,
			/* [3] */
			2, 0
		},
		/* [2] */
		'FREF',
		{	/* array IDArray: 3 elements */
			/* [1] */
			0, 128,
			/* [2] */
			1, 129,
			/* [3] */
			2, 130
		}
	}
};

data 'Mngl' (0, "Owner resource") {
	$"18A9 2031 3939 382D 3920 4D69 6861 6920"            /* .© 1998-9 Mihai  */
	$"5061 7270 6172 6974 61"                             /* Parparita */
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

data 'cicn' (131) {
	$"0000 0000 8004 0000 0000 0016 001A 0000"            /* ....€........... */
	$"0000 0000 0000 0048 0000 0048 0000 0000"            /* .......H...H.... */
	$"0001 0001 0001 0000 0000 0000 015A 0000"            /* .............Z.. */
	$"0000 0000 0000 0004 0000 0000 0016 001A"            /* ................ */
	$"0000 0000 0004 0000 0000 0016 001A 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0007 F800 000F"            /* ............ø... */
	$"F800 001F F800 003F F800 007F F000 00FF"            /* ø...ø..?ø...ð..ÿ */
	$"E000 01FF C000 03FF 8000 03FF 0000 03FE"            /* à..ÿÀ..ÿ€..ÿ...þ */
	$"0000 03FC 0000 0000 0000 0000 0000 0000"            /* ...ü............ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0007 F800 0008 1800 0010 2800 0020"            /* ....ø.......(..  */
	$"4800 0040 9000 0081 2000 0102 4000 03FC"            /* H..@.. ...@..ü */
	$"8000 0205 0000 0206 0000 03FC 0000 0000"            /* €..........ü.... */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0002 A809 0000 0001 0000 FFFF FFFF"            /* ....¨.......ÿÿÿÿ */
	$"FFFF 0001 0000 0000 0000 0000 0000 0000"            /* ÿÿ.............. */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0007 F800 0008 1800 0010 2800 0020"            /* ....ø.......(..  */
	$"4800 0040 9000 0081 2000 0102 4000 03FC"            /* H..@.. ...@..ü */
	$"8000 0205 0000 0206 0000 03FC 0000 0000"            /* €..........ü.... */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000"                                               /* .. */
};

data 'cicn' (128) {
	$"0000 0000 8004 0000 0000 0016 001A 0000"            /* ....€........... */
	$"0000 0000 0000 0048 0000 0048 0000 0000"            /* .......H...H.... */
	$"0001 0001 0001 0000 0000 0000 015A 0000"            /* .............Z.. */
	$"0000 0000 0000 0004 0000 0000 0016 001A"            /* ................ */
	$"0000 0000 0004 0000 0000 0016 001A 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0007"            /* ................ */
	$"8000 0007 C000 000F C000 000F 8000 001F"            /* €...À...À...€... */
	$"8000 001F 0000 003F 0000 003E 0000 007E"            /* €......?...>...~ */
	$"0000 007C 0000 007C 0000 0078 0000 0070"            /* ...|...|...x...p */
	$"0000 0060 0000 0040 0000 0000 0000 0000"            /* ...`...@........ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0007 8000 0004 4000 0008"            /* ........€...@... */
	$"4000 000C 8000 0013 8000 0011 0000 0021"            /* @...€...€......! */
	$"0000 0022 0000 0042 0000 0044 0000 0064"            /* ..."...B...D...d */
	$"0000 0078 0000 0070 0000 0060 0000 0040"            /* ...x...p...`...@ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0001 B5F4 0000 0001 0000 FFFF FFFF"            /* ....µô......ÿÿÿÿ */
	$"FFFF 0001 0000 0000 0000 0000 0000 0000"            /* ÿÿ.............. */
	$"0000 0000 0000 0007 8000 0004 4000 0008"            /* ........€...@... */
	$"4000 000C 8000 0013 8000 0011 0000 0021"            /* @...€...€......! */
	$"0000 0022 0000 0042 0000 0044 0000 0064"            /* ..."...B...D...d */
	$"0000 0078 0000 0070 0000 0060 0000 0040"            /* ...x...p...`...@ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000"                                               /* .. */
};

data 'cicn' (129) {
	$"0000 0000 8004 0000 0000 0016 001A 0000"            /* ....€........... */
	$"0000 0000 0000 0048 0000 0048 0000 0000"            /* .......H...H.... */
	$"0001 0001 0001 0000 0000 0000 015A 0000"            /* .............Z.. */
	$"0000 0000 0000 0004 0000 0000 0016 001A"            /* ................ */
	$"0000 0000 0004 0000 0000 0016 001A 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"7000 0000 F800 0000 F800 0007 F800 0003"            /* p...ø...ø...ø... */
	$"F000 0007 C000 000F C000 001F 4000 003E"            /* ð...À...À...@..> */
	$"0000 007C 0000 00F8 0000 01F0 0000 03E0"            /* ...|...ø...ð...à */
	$"0000 03C0 0000 0780 0000 0200 0000 0000"            /* ...À...€........ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 7000 0000 F800 0000"            /* ........p...ø... */
	$"F800 0007 F800 0003 F000 0005 C000 0008"            /* ø...ø...ð...À... */
	$"C000 0011 4000 0022 0000 0044 0000 0088"            /* À...@.."...D...ˆ */
	$"0000 0110 0000 0220 0000 0240 0000 0580"            /* ....... ...@...€ */
	$"0000 0200 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 33AC 0000 0001 0000 FFFF FFFF"            /* ....3¬......ÿÿÿÿ */
	$"FFFF 0001 0000 0000 0000 0000 0000 0000"            /* ÿÿ.............. */
	$"0000 0000 0000 0000 7000 0000 F800 0000"            /* ........p...ø... */
	$"F800 0007 F800 0003 F000 0005 C000 0008"            /* ø...ø...ð...À... */
	$"C000 0011 4000 0022 0000 0044 0000 0088"            /* À...@.."...D...ˆ */
	$"0000 0110 0000 0220 0000 0240 0000 0580"            /* ....... ...@...€ */
	$"0000 0200 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000"                                               /* .. */
};

data 'cicn' (130) {
	$"0000 0000 8004 0000 0000 0016 001A 0000"            /* ....€........... */
	$"0000 0000 0000 0048 0000 0048 0000 0000"            /* .......H...H.... */
	$"0001 0001 0001 0000 0000 0000 015A 0000"            /* .............Z.. */
	$"0000 0000 0000 0004 0000 0000 0016 001A"            /* ................ */
	$"0000 0000 0004 0000 0000 0016 001A 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0038"            /* ...............8 */
	$"0000 0044 0000 004C 0000 005E 0000 007F"            /* ...D...L...^.... */
	$"8000 007F E000 00FF F000 01FF F800 03FF"            /* €...à..ÿð..ÿø..ÿ */
	$"F800 07FF F800 07FF B800 03FF 3800 01FE"            /* ø..ÿø..ÿ¸..ÿ8..þ */
	$"3800 00FC 3000 0078 2000 0030 0000 0000"            /* 8..ü0..x ..0.... */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0038 0000 0044 0000 004C"            /* .......8...D...L */
	$"0000 0056 0000 0065 8000 0044 E000 0084"            /* ...V...e€..Dà..„ */
	$"7000 010A 3800 0204 3800 0400 7800 0400"            /* p...8...8...x... */
	$"B800 0201 3800 0102 3800 0084 3000 0048"            /* ¸...8...8..„0..H */
	$"2000 0030 0000 0000 0000 0000 0000 0000"            /*  ..0............ */
	$"0000 0000 3434 0000 0001 0000 FFFF FFFF"            /* ....44......ÿÿÿÿ */
	$"FFFF 0001 0000 0000 0000 0000 0000 0000"            /* ÿÿ.............. */
	$"0000 0000 0000 0038 0000 0044 0000 004C"            /* .......8...D...L */
	$"0000 0056 0000 0065 8000 0044 E000 0084"            /* ...V...e€..Dà..„ */
	$"7000 010A 3800 0204 3800 0400 7800 0400"            /* p...8...8...x... */
	$"B800 0201 3800 0102 3800 0084 3000 0048"            /* ¸...8...8..„0..H */
	$"2000 0030 0000 0000 0000 0000 0000 0000"            /*  ..0............ */
	$"0000"                                               /* .. */
};

data 'cicn' (132) {
	$"0000 0000 8004 0000 0000 0016 001A 0000"            /* ....€........... */
	$"0000 0000 0000 0048 0000 0048 0000 0000"            /* .......H...H.... */
	$"0001 0001 0001 0000 0000 0000 015A 0000"            /* .............Z.. */
	$"0000 0000 0000 0004 0000 0000 0016 001A"            /* ................ */
	$"0000 0000 0004 0000 0000 0016 001A 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 073E 7000 0400 1000 0400 1000 0000"            /* ...>p........... */
	$"1000 0000 0000 0400 0000 0400 1000 0400"            /* ................ */
	$"1000 0000 1000 0000 0000 0400 0000 0400"            /* ................ */
	$"1000 0400 1000 073E 7000 0000 0000 0000"            /* .......>p....... */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 073E 7000 0400"            /* ...........>p... */
	$"1000 0400 1000 0000 1000 0000 0000 0400"            /* ................ */
	$"0000 0400 1000 0400 1000 0000 1000 0000"            /* ................ */
	$"0000 0400 0000 0400 1000 0400 1000 073E"            /* ...............> */
	$"7000 0000 0000 0000 0000 0000 0000 0000"            /* p............... */
	$"0000 0000 84AA 0000 0001 0000 FFFF FFFF"            /* ....„ª......ÿÿÿÿ */
	$"FFFF 0001 0000 0000 0000 0000 0000 0000"            /* ÿÿ.............. */
	$"0000 0000 0000 0000 0000 073E 7000 0400"            /* ...........>p... */
	$"1000 0400 1000 0000 1000 0000 0000 0400"            /* ................ */
	$"0000 0400 1000 0400 1000 0000 1000 0000"            /* ................ */
	$"0000 0400 0000 0400 1000 0400 1000 073E"            /* ...............> */
	$"7000 0000 0000 0000 0000 0000 0000 0000"            /* p............... */
	$"0000"                                               /* .. */
};

data 'cicn' (133) {
	$"0000 0000 8004 0000 0000 0016 001A 0000"            /* ....€........... */
	$"0000 0000 0000 0048 0000 0048 0000 0000"            /* .......H...H.... */
	$"0001 0001 0001 0000 0000 0000 015A 0000"            /* .............Z.. */
	$"0000 0000 0000 0004 0000 0000 0016 001A"            /* ................ */
	$"0000 0000 0004 0000 0000 0016 001A 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0200 0000 0300 0000 0380 0000 03C0"            /* ...........€...À */
	$"0000 03E0 0000 03F0 8000 03F9 C000 0380"            /* ...à...ð€..ùÀ..€ */
	$"8000 0304 9000 020F F800 0004 9000 0000"            /* €......ø...... */
	$"8000 0001 C000 0000 8000 0000 0000 0000"            /* €...À...€....... */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0200 0000 0300"            /* ................ */
	$"0000 0380 0000 03C0 0000 03E0 0000 03F0"            /* ...€...À...à...ð */
	$"8000 03F9 C000 0380 8000 0304 9000 020F"            /* €..ùÀ..€€...... */
	$"F800 0004 9000 0000 8000 0001 C000 0000"            /* ø......€...À... */
	$"8000 0000 0000 0000 0000 0000 0000 0000"            /* €............... */
	$"0000 0001 2AC2 0000 0001 0000 FFFF FFFF"            /* ....*Â......ÿÿÿÿ */
	$"FFFF 0001 0000 0000 0000 0000 0000 0000"            /* ÿÿ.............. */
	$"0000 0000 0000 0000 0000 0200 0000 0300"            /* ................ */
	$"0000 0380 0000 03C0 0000 03E0 0000 03F0"            /* ...€...À...à...ð */
	$"8000 03F9 C000 0380 8000 0304 9000 020F"            /* €..ùÀ..€€...... */
	$"F800 0004 9000 0000 8000 0001 C000 0000"            /* ø......€...À... */
	$"8000 0000 0000 0000 0000 0000 0000 0000"            /* €............... */
	$"0000"                                               /* .. */
};

data 'cicn' (134) {
	$"0000 0000 8004 0000 0000 0016 001A 0000"            /* ....€........... */
	$"0000 0000 0000 0048 0000 0048 0000 0000"            /* .......H...H.... */
	$"0001 0001 0001 0000 0000 0000 015A 0000"            /* .............Z.. */
	$"0000 0000 0000 0004 0000 0000 0016 001A"            /* ................ */
	$"0000 0000 0004 0000 0000 0016 001A 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 001F C000 00E0 3000 0100 0800 0200"            /* ....À..à0....... */
	$"0800 0400 0800 0400 3000 0401 C000 038E"            /* ........0...À..Ž */
	$"0000 0670 0000 0540 0000 0380 0000 0080"            /* ...p...@...€...€ */
	$"0000 0080 0000 0100 0000 0000 0000 0000"            /* ...€............ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 001F C000 00E0"            /* ............À..à */
	$"3000 0100 0800 0200 0800 0400 0800 0400"            /* 0............... */
	$"3000 0401 C000 038E 0000 0670 0000 0540"            /* 0...À..Ž...p...@ */
	$"0000 0380 0000 0080 0000 0080 0000 0100"            /* ...€...€...€.... */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0003 60B7 0000 0001 0000 FFFF FFFF"            /* ....`·......ÿÿÿÿ */
	$"FFFF 0001 0000 0000 0000 0000 0000 0000"            /* ÿÿ.............. */
	$"0000 0000 0000 0000 0000 001F C000 00E0"            /* ............À..à */
	$"3000 0100 0800 0200 0800 0400 0800 0400"            /* 0............... */
	$"3000 0401 C000 038E 0000 0670 0000 0540"            /* 0...À..Ž...p...@ */
	$"0000 0380 0000 0080 0000 0080 0000 0100"            /* ...€...€...€.... */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000"                                               /* .. */
};

data 'cicn' (135) {
	$"0000 0000 8004 0000 0000 0016 001A 0000"            /* ....€........... */
	$"0000 0000 0000 0048 0000 0048 0000 0000"            /* .......H...H.... */
	$"0001 0001 0001 0000 0000 0000 015A 0000"            /* .............Z.. */
	$"0000 0000 0000 0004 0000 0000 0016 001A"            /* ................ */
	$"0000 0000 0004 0000 0000 0016 001A 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0040 0000 0110 0000 00A0 0000 0248"            /* ...@....... ...H */
	$"0000 00A0 0000 0110 0000 0044 0000 000E"            /* ... .......D.... */
	$"0000 0007 0000 0003 8000 0001 C000 0000"            /* ........€...À... */
	$"E000 0000 7000 0000 2000 0000 0000 0000"            /* à...p... ....... */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0040 0000 0110"            /* ...........@.... */
	$"0000 00A0 0000 0248 0000 00A0 0000 0110"            /* ... ...H... .... */
	$"0000 0044 0000 000A 0000 0005 0000 0003"            /* ...D............ */
	$"8000 0001 C000 0000 E000 0000 7000 0000"            /* €...À...à...p... */
	$"2000 0000 0000 0000 0000 0000 0000 0000"            /*  ............... */
	$"0000 0003 68BB 0000 0001 0000 FFFF FFFF"            /* ....h»......ÿÿÿÿ */
	$"FFFF 0001 0000 0000 0000 0000 0000 0000"            /* ÿÿ.............. */
	$"0000 0000 0000 0000 0000 0040 0000 0110"            /* ...........@.... */
	$"0000 00A0 0000 0248 0000 00A0 0000 0110"            /* ... ...H... .... */
	$"0000 0044 0000 000A 0000 0005 0000 0003"            /* ...D............ */
	$"8000 0001 C000 0000 E000 0000 7000 0000"            /* €...À...à...p... */
	$"2000 0000 0000 0000 0000 0000 0000 0000"            /*  ............... */
	$"0000"                                               /* .. */
};

data 'cicn' (136) {
	$"0000 0000 8004 0000 0000 0016 001A 0000"            /* ....€........... */
	$"0000 0000 0000 0048 0000 0048 0000 0000"            /* .......H...H.... */
	$"0001 0001 0001 0000 0000 0000 015A 0000"            /* .............Z.. */
	$"0000 0000 0000 0004 0000 0000 0016 001A"            /* ................ */
	$"0000 0000 0004 0000 0000 0016 001A 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0180 0000 00C0"            /* ...........€...À */
	$"0000 0060 0000 0030 0000 0018 0000 000C"            /* ...`...0........ */
	$"0000 0006 0000 0003 0000 0001 8000 0000"            /* ............€... */
	$"C000 0000 6000 0000 3000 0000 0000 0000"            /* À...`...0....... */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0180 0000 00C0 0000 0060 0000 0030"            /* ...€...À...`...0 */
	$"0000 0018 0000 000C 0000 0006 0000 0003"            /* ................ */
	$"0000 0001 8000 0000 C000 0000 6000 0000"            /* ....€...À...`... */
	$"3000 0000 0000 0000 0000 0000 0000 0000"            /* 0............... */
	$"0000 0000 17D0 0000 0001 0000 FFFF FFFF"            /* .....Ð......ÿÿÿÿ */
	$"FFFF 0001 0000 0000 0000 0000 0000 0000"            /* ÿÿ.............. */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0180 0000 00C0 0000 0060 0000 0030"            /* ...€...À...`...0 */
	$"0000 0018 0000 000C 0000 0006 0000 0003"            /* ................ */
	$"0000 0001 8000 0000 C000 0000 6000 0000"            /* ....€...À...`... */
	$"3000 0000 0000 0000 0000 0000 0000 0000"            /* 0............... */
	$"0000"                                               /* .. */
};

data 'cicn' (137) {
	$"0000 0000 8004 0000 0000 0016 001A 0000"            /* ....€........... */
	$"0000 0000 0000 0048 0000 0048 0000 0000"            /* .......H...H.... */
	$"0001 0001 0001 0000 0000 0000 015A 0000"            /* .............Z.. */
	$"0000 0000 0000 0004 0000 0000 0016 001A"            /* ................ */
	$"0000 0000 0004 0000 0000 0016 001A 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 03FF F000 0200 1000 0200"            /* .......ÿð....... */
	$"1000 0200 1000 0200 1000 0200 1000 0200"            /* ................ */
	$"1000 0200 1000 0200 1000 0200 1000 0200"            /* ................ */
	$"1000 03FF F000 0000 0000 0000 0000 0000"            /* ...ÿð........... */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 03FF"            /* ...............ÿ */
	$"F000 0200 1000 0200 1000 0200 1000 0200"            /* ð............... */
	$"1000 0200 1000 0200 1000 0200 1000 0200"            /* ................ */
	$"1000 0200 1000 0200 1000 03FF F000 0000"            /* ...........ÿð... */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 FB47 0000 0001 0000 FFFF FFFF"            /* ....ûG......ÿÿÿÿ */
	$"FFFF 0001 0000 0000 0000 0000 0000 0000"            /* ÿÿ.............. */
	$"0000 0000 0000 0000 0000 0000 0000 03FF"            /* ...............ÿ */
	$"F000 0200 1000 0200 1000 0200 1000 0200"            /* ð............... */
	$"1000 0200 1000 0200 1000 0200 1000 0200"            /* ................ */
	$"1000 0200 1000 0200 1000 03FF F000 0000"            /* ...........ÿð... */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000"                                               /* .. */
};

data 'cicn' (200, "Swap Fore/Back Colors Enabled") {
	$"0000 0000 8002 0000 0000 000A 000A 0000"            /* ....€........... */
	$"0000 0000 0000 0048 0000 0048 0000 0000"            /* .......H...H.... */
	$"0001 0001 0001 0000 0000 0000 008E 0000"            /* .............Ž.. */
	$"0000 0000 0000 0002 0000 0000 000A 000A"            /* ................ */
	$"0000 0000 0002 0000 0000 000A 000A 0000"            /* ................ */
	$"0000 2000 6000 FC00 6200 2100 0100 0100"            /* .. .`.ü.b.!..... */
	$"07C0 0380 0100 2000 6000 FC00 6200 2100"            /* .À.€.. .`.ü.b.!. */
	$"0100 0100 07C0 0380 0100 0000 F306 0000"            /* .....À.€....ó... */
	$"0001 0000 FFFF FFFF FFFF 0001 0000 0000"            /* ....ÿÿÿÿÿÿ...... */
	$"0000 2000 6000 FC00 6200 2100 0100 0100"            /* .. .`.ü.b.!..... */
	$"07C0 0380 0100"                                     /* .À.€.. */
};

data 'cicn' (201, "Swap Fore/Back Colors Disabled") {
	$"0000 0000 8002 0000 0000 000A 000A 0000"            /* ....€........... */
	$"0000 0000 0000 0048 0000 0048 0000 0000"            /* .......H...H.... */
	$"0001 0001 0001 0000 0000 0000 008E 0000"            /* .............Ž.. */
	$"0000 0000 0000 0002 0000 0000 000A 000A"            /* ................ */
	$"0000 0000 0002 0000 0000 000A 000A 0000"            /* ................ */
	$"0000 2000 4000 A800 4200 2000 0100 0000"            /* .. .@.¨.B. ..... */
	$"0540 0280 0100 2000 6000 FC00 6200 2100"            /* .@.€.. .`.ü.b.!. */
	$"0100 0100 07C0 0380 0100 0000 F18C 0000"            /* .....À.€....ñŒ.. */
	$"0001 0000 FFFF FFFF FFFF 0001 0000 0000"            /* ....ÿÿÿÿÿÿ...... */
	$"0000 2000 6000 FC00 6200 2100 0100 0100"            /* .. .`.ü.b.!..... */
	$"07C0 0380 0100"                                     /* .À.€.. */
};

data 'cicn' (202, "Reset Fore/Back Colors Enabled") {
	$"0000 0000 8002 0000 0000 000A 000A 0000"            /* ....€........... */
	$"0000 0000 0000 0048 0000 0048 0000 0000"            /* .......H...H.... */
	$"0001 0001 0001 0000 0000 0000 008E 0000"            /* .............Ž.. */
	$"0000 0000 0000 0002 0000 0000 000A 000A"            /* ................ */
	$"0000 0000 0002 0000 0000 000A 000A 0000"            /* ................ */
	$"0000 FE00 FE00 FFC0 FFC0 FFC0 FFC0 FFC0"            /* ..þ.þ.ÿÀÿÀÿÀÿÀÿÀ */
	$"3FC0 3FC0 3FC0 FE00 FE00 FFC0 FE40 FE40"            /* ?À?À?Àþ.þ.ÿÀþ@þ@ */
	$"FE40 FE40 2040 2040 3FC0 0001 1B6D 0000"            /* þ@þ@ @ @?À...m.. */
	$"0001 0000 FFFF FFFF FFFF 0001 0000 0000"            /* ....ÿÿÿÿÿÿ...... */
	$"0000 FE00 FE00 FFC0 FE40 FE40 FE40 FE40"            /* ..þ.þ.ÿÀþ@þ@þ@þ@ */
	$"2040 2040 3FC0"                                     /*  @ @?À */
};

data 'cicn' (203, "Reset Fore/Back Colors Disabled") {
	$"0000 0000 8002 0000 0000 000A 000A 0000"            /* ....€........... */
	$"0000 0000 0000 0048 0000 0048 0000 0000"            /* .......H...H.... */
	$"0001 0001 0001 0000 0000 0000 008E 0000"            /* .............Ž.. */
	$"0000 0000 0000 0002 0000 0000 000A 000A"            /* ................ */
	$"0000 0000 0002 0000 0000 000A 000A 0000"            /* ................ */
	$"0000 AA00 5400 AA80 5540 AA80 5540 AA80"            /* ..ª.T.ª€U@ª€U@ª€ */
	$"1540 2A80 1540 FE00 FE00 FFC0 FE40 FE40"            /* .@*€.@þ.þ.ÿÀþ@þ@ */
	$"FE40 FE40 2040 2040 3FC0 0001 1F19 0000"            /* þ@þ@ @ @?À...... */
	$"0001 0000 FFFF FFFF FFFF 0001 0000 0000"            /* ....ÿÿÿÿÿÿ...... */
	$"0000 FE00 FE00 FFC0 FE40 FE40 FE40 FE40"            /* ..þ.þ.ÿÀþ@þ@þ@þ@ */
	$"2040 2040 3FC0"                                     /*  @ @?À */
};

resource 'cctb' (128) {
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

resource 'cctb' (129) {
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

resource 'cctb' (131) {
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

resource 'cctb' (200) {
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

resource 'cctb' (201) {
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

resource 'cctb' (202) {
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

resource 'cctb' (203) {
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

resource 'cctb' (204) {
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

resource 'cctb' (205) {
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

resource 'cctb' (206) {
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

resource 'cctb' (207) {
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

resource 'cctb' (208) {
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

resource 'cctb' (209) {
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

resource 'cctb' (210) {
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

resource 'cctb' (211) {
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

resource 'cctb' (132) {
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

resource 'cctb' (130) {
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

resource 'cctb' (133) {
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

resource 'cctb' (134) {
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

resource 'cctb' (135) {
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

resource 'cctb' (136) {
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

resource 'cctb' (137) {
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

resource 'cctb' (212) {
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

resource 'cctb' (213) {
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

resource 'CNTL' (128, "Pen Tool", purgeable) {
	{44, 0, 66, 26},
	0,
	visible,
	128,
	258,
	32,
	0,
	""
};

resource 'CNTL' (129, "Eyedropper Tool", purgeable) {
	{44, 26, 66, 52},
	0,
	visible,
	129,
	258,
	32,
	0,
	""
};

resource 'CNTL' (130, "Fill Tool", purgeable) {
	{66, 0, 88, 26},
	0,
	visible,
	130,
	258,
	32,
	0,
	""
};

resource 'CNTL' (131, "Eraser Tool", purgeable) {
	{66, 26, 88, 52},
	0,
	visible,
	131,
	258,
	32,
	0,
	""
};

resource 'CNTL' (132, "Marquee Tool", purgeable) {
	{0, 0, 22, 26},
	0,
	visible,
	132,
	258,
	32,
	0,
	""
};

resource 'CNTL' (133, "Move Tool", purgeable) {
	{0, 26, 22, 52},
	0,
	visible,
	133,
	258,
	32,
	0,
	""
};

resource 'CNTL' (134, "Lasso Tool", purgeable) {
	{22, 0, 44, 26},
	0,
	visible,
	134,
	258,
	32,
	0,
	""
};

resource 'CNTL' (135, "Wand Tool", purgeable) {
	{22, 26, 44, 52},
	0,
	visible,
	135,
	258,
	32,
	0,
	""
};

resource 'CNTL' (200, "Icon Edit Well", purgeable) {
	{9, 61, 203, 255},
	0,
	visible,
	100,
	0,
	256,
	0,
	""
};

resource 'CNTL' (201, "Zoom Placard", purgeable) {
	{210, 4294967295, 226, 63},
	0,
	visible,
	100,
	0,
	224,
	0,
	""
};

resource 'CNTL' (203, "Info Placard", purgeable) {
	{210, 62, 226, 182},
	0,
	visible,
	100,
	0,
	224,
	0,
	""
};

resource 'CNTL' (206, "Icon Display", purgeable) {
	{25, 261, 115, 315},
	0,
	visible,
	100,
	0,
	256,
	0,
	""
};

resource 'CNTL' (207, "Mask Display", purgeable) {
	{25, 322, 115, 376},
	0,
	visible,
	100,
	0,
	256,
	0,
	""
};

resource 'CNTL' (208, "Icon Popup", purgeable) {
	{8, 259, 22, 317},
	0,
	visible,
	0,
	200,
	401,
	0,
	""
};

resource 'CNTL' (209, "Mask Popup", purgeable) {
	{8, 320, 22, 378},
	0,
	visible,
	0,
	201,
	401,
	0,
	""
};

resource 'CNTL' (210, "Icon Label", purgeable) {
	{118, 260, 130, 314},
	0,
	visible,
	100,
	0,
	288,
	0,
	"Icon"
};

resource 'CNTL' (211, "Mask Label", purgeable) {
	{118, 323, 130, 377},
	0,
	visible,
	100,
	0,
	288,
	0,
	"Mask"
};

resource 'CNTL' (202, "Zoom Display", purgeable) {
	{213, 4, 223, 58},
	0,
	visible,
	100,
	0,
	288,
	0,
	"400%"
};

resource 'CNTL' (204, "Info Display", purgeable) {
	{213, 69, 223, 179},
	0,
	visible,
	100,
	0,
	288,
	0,
	"ID: -16455"
};

resource 'CNTL' (136, "Line Tool", purgeable) {
	{88, 0, 110, 26},
	0,
	visible,
	136,
	258,
	32,
	0,
	""
};

resource 'CNTL' (137, "Rectangle Tool", purgeable) {
	{88, 26, 110, 52},
	0,
	visible,
	137,
	258,
	32,
	0,
	""
};

resource 'CNTL' (205, "Fore/Back Color", purgeable) {
	{117, 7, 156, 46},
	0,
	visible,
	100,
	0,
	256,
	0,
	""
};

resource 'CNTL' (212, "Preview", purgeable) {
	{132, 261, 186, 376},
	0,
	visible,
	100,
	0,
	256,
	0,
	""
};

resource 'CNTL' (213, "Preview Label", purgeable) {
	{190, 261, 202, 376},
	0,
	visible,
	100,
	0,
	288,
	0,
	"Preview"
};

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

data 'crsr' (128, "Pen") {
	$"8001 0000 0060 0000 0092 0000 0000 0000"            /* €....`...’...... */
	$"0000 0000 00F0 0088 0108 0190 0270 0220"            /* .....ð.ˆ....p.  */
	$"0420 0440 0840 0880 0C80 0F00 0E00 0C00"            /* . .@.@.€.€...... */
	$"0800 0000 00F0 00F8 01F8 01F0 03F0 03E0"            /* .....ð.ø.ø.ð.ð.à */
	$"07E0 07C0 0FC0 0F80 0F80 0F00 0E00 0C00"            /* .à.À.À.€.€...... */
	$"0800 0000 000E 0004 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 8002 0000 0000 0010 0010 0000"            /* ....€........... */
	$"0000 0000 0000 0048 0000 0048 0000 0000"            /* .......H...H.... */
	$"0001 0001 0001 0000 0000 0000 00B2 0000"            /* .............².. */
	$"0000 00F0 0088 0108 0190 0270 0220 0420"            /* ...ð.ˆ....p. .  */
	$"0440 0840 0880 0C80 0F00 0E00 0C00 0800"            /* .@.@.€.€........ */
	$"0000 0000 2ED5 0000 0001 0000 FFFF FFFF"            /* .....Õ......ÿÿÿÿ */
	$"FFFF 0001 0000 0000 0000"                           /* ÿÿ........ */
};

data 'crsr' (129, "Eye Dropper") {
	$"8001 0000 0060 0000 0092 0000 0000 0000"            /* €....`...’...... */
	$"0000 0000 000E 001F 001F 00FF 007E 00B8"            /* ...........ÿ.~.¸ */
	$"0118 0228 0440 0880 1100 2200 4400 4800"            /* ...(.@.€..".D.H. */
	$"B000 4000 000E 001F 001F 00FF 007E 00F8"            /* °.@........ÿ.~.ø */
	$"01F8 03E8 07C0 0F80 1F00 3E00 7C00 7800"            /* .ø.è.À.€..>.|.x. */
	$"F000 4000 000E 0001 0000 0000 0000 0000"            /* ð.@............. */
	$"0000 0000 8002 0000 0000 0010 0010 0000"            /* ....€........... */
	$"0000 0000 0000 0048 0000 0048 0000 0000"            /* .......H...H.... */
	$"0001 0001 0001 0000 0000 0000 00B2 0000"            /* .............².. */
	$"0000 000E 001F 001F 00FF 007E 00B8 0118"            /* .........ÿ.~.¸.. */
	$"0228 0440 0880 1100 2200 4400 4800 B000"            /* .(.@.€..".D.H.°. */
	$"4000 0000 31F3 0000 0001 0000 FFFF FFFF"            /* @...1ó......ÿÿÿÿ */
	$"FFFF 0001 0000 0000 0000"                           /* ÿÿ........ */
};

data 'crsr' (130, "Bucket") {
	$"8001 0000 0060 0000 0092 0000 0000 0000"            /* €....`...’...... */
	$"0000 0000 0700 0880 0980 0AC0 0CB0 089C"            /* .......€.€.À.°.œ */
	$"108E 2147 4087 800F 8017 4027 2047 1086"            /* .Ž!G@‡€.€.@' G.† */
	$"0904 0600 0700 0880 0980 0BC0 0FE0 0FF0"            /* .......€.€.À.à.ð */
	$"1FF8 3FFC 7FFC FFF8 FFF0 7FE0 3FC0 1F80"            /* .ø?ü.üÿøÿð.à?À.€ */
	$"0F00 0600 000E 000D 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 8002 0000 0000 0010 0010 0000"            /* ....€........... */
	$"0000 0000 0000 0048 0000 0048 0000 0000"            /* .......H...H.... */
	$"0001 0001 0001 0000 0000 0000 00B2 0000"            /* .............².. */
	$"0000 0700 0880 0980 0AC0 0CB0 089C 108E"            /* .....€.€.À.°.œ.Ž */
	$"2147 4087 800F 8017 4027 2047 1086 0904"            /* !G@‡€.€.@' G.†.. */
	$"0600 0000 34DA 0000 0001 0000 FFFF FFFF"            /* ....4Ú......ÿÿÿÿ */
	$"FFFF 0001 0000 0000 0000"                           /* ÿÿ........ */
};

data 'crsr' (131, "Eraser") {
	$"8001 0000 0060 0000 0092 0000 0000 0000"            /* €....`...’...... */
	$"0000 0000 0000 0000 01FE 0206 040A 0812"            /* .........þ...... */
	$"1024 2048 4090 FF20 8140 8180 FF00 0000"            /* .$ H@ÿ @€ÿ... */
	$"0000 0000 0000 0000 01FE 03FE 07FE 0FFE"            /* .........þ.þ.þ.þ */
	$"1FFC 3FF8 7FF0 FFE0 FFC0 FF80 FF00 0000"            /* .ü?ø.ðÿàÿÀÿ€ÿ... */
	$"0000 0000 000C 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 8002 0000 0000 0010 0010 0000"            /* ....€........... */
	$"0000 0000 0000 0048 0000 0048 0000 0000"            /* .......H...H.... */
	$"0001 0001 0001 0000 0000 0000 00B2 0000"            /* .............².. */
	$"0000 0000 0000 01FE 0206 040A 0812 1024"            /* .......þ.......$ */
	$"2048 4090 FF20 8140 8180 FF00 0000 0000"            /*  H@ÿ @€ÿ..... */
	$"0000 0000 394A 0000 0001 0000 FFFF FFFF"            /* ....9J......ÿÿÿÿ */
	$"FFFF 0001 0000 0000 0000"                           /* ÿÿ........ */
};

data 'crsr' (132, "Marquee") {
	$"8001 0000 0060 0000 0092 0000 0000 0000"            /* €....`...’...... */
	$"0000 0000 0100 0100 0100 0100 0100 0100"            /* ................ */
	$"0100 FFFE 0100 0100 0100 0100 0100 0100"            /* ..ÿþ............ */
	$"0100 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0007 0007 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 8002 0000 0000 0010 0010 0000"            /* ....€........... */
	$"0000 0000 0000 0048 0000 0048 0000 0000"            /* .......H...H.... */
	$"0001 0001 0001 0000 0000 0000 00B2 0000"            /* .............².. */
	$"0000 0100 0100 0100 0100 0100 0100 0100"            /* ................ */
	$"FFFE 0100 0100 0100 0100 0100 0100 0100"            /* ÿþ.............. */
	$"0000 0000 9C5B 0000 0001 0000 FFFF FFFF"            /* ....œ[......ÿÿÿÿ */
	$"FFFF 0001 0000 0000 0000"                           /* ÿÿ........ */
};

data 'crsr' (133, "Move") {
	$"8001 0000 0060 0000 0092 0000 0000 0000"            /* €....`...’...... */
	$"0000 0000 0000 4000 6000 7000 7800 7C00"            /* ......@.`.p.x.|. */
	$"7E20 7F70 7020 6124 43FE 0124 0020 0070"            /* ~ .pp a$Cþ.$. .p */
	$"0020 0000 4000 E000 F000 F800 FC00 FE20"            /* . ..@.à.ð.ø.ü.þ  */
	$"FF70 FFF8 FF74 F3FE E7FF 43FE 0174 00F8"            /* ÿpÿøÿtóþçÿCþ.t.ø */
	$"0070 0020 0001 0001 0000 0000 0000 0000"            /* .p. ............ */
	$"0000 0000 8002 0000 0000 0010 0010 0000"            /* ....€........... */
	$"0000 0000 0000 0048 0000 0048 0000 0000"            /* .......H...H.... */
	$"0001 0001 0001 0000 0000 0000 00B2 0000"            /* .............².. */
	$"0000 0000 4000 6000 7000 7800 7C00 7E20"            /* ....@.`.p.x.|.~  */
	$"7F70 7020 6124 43FE 0124 0020 0070 0020"            /* .pp a$Cþ.$. .p.  */
	$"0000 0001 33F8 0000 0001 0000 FFFF FFFF"            /* ....3ø......ÿÿÿÿ */
	$"FFFF 0001 0000 0000 0000"                           /* ÿÿ........ */
};

data 'crsr' (134, "Lasso") {
	$"8001 0000 0060 0000 0092 0000 0000 0000"            /* €....`...’...... */
	$"0000 0000 03F8 1C06 2001 4001 8001 8006"            /* .....ø.. .@.€.€. */
	$"8038 71C0 CE00 A800 7000 1000 1000 2000"            /* €8qÀÎ.¨.p..... . */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 000D 0002 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 8002 0000 0000 0010 0010 0000"            /* ....€........... */
	$"0000 0000 0000 0048 0000 0048 0000 0000"            /* .......H...H.... */
	$"0001 0001 0001 0000 0000 0000 00B2 0000"            /* .............².. */
	$"0000 03F8 1C06 2001 4001 8001 8006 8038"            /* ...ø.. .@.€.€.€8 */
	$"71C0 CE00 A800 7000 1000 1000 2000 0000"            /* qÀÎ.¨.p..... ... */
	$"0000 0003 61D7 0000 0001 0000 FFFF FFFF"            /* ....a×......ÿÿÿÿ */
	$"FFFF 0001 0000 0000 0000"                           /* ÿÿ........ */
};

data 'crsr' (135, "Magic Wand") {
	$"8001 0000 0060 0000 0092 0000 0000 0000"            /* €....`...’...... */
	$"0000 0000 1000 4400 2800 9200 2800 4400"            /* ......D.(.’.(.D. */
	$"1100 0280 0140 00E0 0070 0038 001C 0008"            /* ...€.@.à.p.8.... */
	$"0000 0000 1000 5400 3800 FE00 3800 5400"            /* ......T.8.þ.8.T. */
	$"1100 0380 01C0 00E0 0070 0038 001C 0008"            /* ...€.À.à.p.8.... */
	$"0000 0000 0003 0003 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 8002 0000 0000 0010 0010 0000"            /* ....€........... */
	$"0000 0000 0000 0048 0000 0048 0000 0000"            /* .......H...H.... */
	$"0001 0001 0001 0000 0000 0000 00B2 0000"            /* .............².. */
	$"0000 1000 4400 2800 9200 2800 4400 1100"            /* ....D.(.’.(.D... */
	$"0280 0140 00E0 0070 0038 001C 0008 0000"            /* .€.@.à.p.8...... */
	$"0000 0003 6933 0000 0001 0000 FFFF FFFF"            /* ....i3......ÿÿÿÿ */
	$"FFFF 0001 0000 0000 0000"                           /* ÿÿ........ */
};

data 'crsr' (204, "Magic Wand Additive") {
	$"8001 0000 0060 0000 0092 0000 0000 0000"            /* €....`...’...... */
	$"0000 0000 1000 4400 2800 9200 2800 4400"            /* ......D.(.’.(.D. */
	$"1100 0280 0140 00E0 1070 1038 7C1C 1008"            /* ...€.@.à.p.8|... */
	$"1000 0000 1000 5400 3800 FE00 3800 5400"            /* ......T.8.þ.8.T. */
	$"1100 0380 01C0 00E0 0070 0038 001C 0008"            /* ...€.À.à.p.8.... */
	$"0000 0000 0003 0003 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 8002 0000 0000 0010 0010 0000"            /* ....€........... */
	$"0000 0000 0000 0048 0000 0048 0000 0000"            /* .......H...H.... */
	$"0001 0001 0001 0000 0000 0000 00B2 0000"            /* .............².. */
	$"0000 1000 4400 2800 9200 2800 4400 1100"            /* ....D.(.’.(.D... */
	$"0280 0140 00E0 1070 1038 7C1C 1008 1000"            /* .€.@.à.p.8|..... */
	$"0000 0003 8CD8 0000 0001 0000 FFFF FFFF"            /* ....ŒØ......ÿÿÿÿ */
	$"FFFF 0001 0000 0000 0000"                           /* ÿÿ........ */
};

data 'crsr' (201, "Marquee Subtractive") {
	$"8001 0000 0060 0000 0092 0000 0000 0000"            /* €....`...’...... */
	$"0000 0000 0100 0100 0100 0100 0100 0100"            /* ................ */
	$"0100 FFFE 0100 0100 0100 0100 0100 011F"            /* ..ÿþ............ */
	$"0100 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0007 0007 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 8002 0000 0000 0010 0010 0000"            /* ....€........... */
	$"0000 0000 0000 0048 0000 0048 0000 0000"            /* .......H...H.... */
	$"0001 0001 0001 0000 0000 0000 00B2 0000"            /* .............².. */
	$"0000 0100 0100 0100 0100 0100 0100 0100"            /* ................ */
	$"FFFE 0100 0100 0100 0100 0100 011F 0100"            /* ÿþ.............. */
	$"0000 0003 E7B4 0000 0001 0000 FFFF FFFF"            /* ....ç´......ÿÿÿÿ */
	$"FFFF 0001 0000 0000 0000"                           /* ÿÿ........ */
};

data 'crsr' (202, "Lasso Additive") {
	$"8001 0000 0060 0000 0092 0000 0000 0000"            /* €....`...’...... */
	$"0000 0000 03F8 1C06 2001 4001 8001 8006"            /* .....ø.. .@.€.€. */
	$"8038 71C0 CE00 A800 7008 1008 103E 2008"            /* €8qÀÎ.¨.p....> . */
	$"0008 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 000D 0002 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 8002 0000 0000 0010 0010 0000"            /* ....€........... */
	$"0000 0000 0000 0048 0000 0048 0000 0000"            /* .......H...H.... */
	$"0001 0001 0001 0000 0000 0000 00B2 0000"            /* .............².. */
	$"0000 03F8 1C06 2001 4001 8001 8006 8038"            /* ...ø.. .@.€.€.€8 */
	$"71C0 CE00 A800 7008 1008 103E 2008 0008"            /* qÀÎ.¨.p....> ... */
	$"0000 0003 E3FF 0000 0001 0000 FFFF FFFF"            /* ....ãÿ......ÿÿÿÿ */
	$"FFFF 0001 0000 0000 0000"                           /* ÿÿ........ */
};

data 'crsr' (203, "Lasso Subtractive") {
	$"8001 0000 0060 0000 0092 0000 0000 0000"            /* €....`...’...... */
	$"0000 0000 03F8 1C06 2001 4001 8001 8006"            /* .....ø.. .@.€.€. */
	$"8038 71C0 CE00 A800 7000 1000 103E 2000"            /* €8qÀÎ.¨.p....> . */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 000D 0002 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 8002 0000 0000 0010 0010 0000"            /* ....€........... */
	$"0000 0000 0000 0048 0000 0048 0000 0000"            /* .......H...H.... */
	$"0001 0001 0001 0000 0000 0000 00B2 0000"            /* .............².. */
	$"0000 03F8 1C06 2001 4001 8001 8006 8038"            /* ...ø.. .@.€.€.€8 */
	$"71C0 CE00 A800 7000 1000 103E 2000 0000"            /* qÀÎ.¨.p....> ... */
	$"0000 0003 E6AB 0000 0001 0000 FFFF FFFF"            /* ....æ«......ÿÿÿÿ */
	$"FFFF 0001 0000 0000 0000"                           /* ÿÿ........ */
};

data 'crsr' (205, "Magic Wand Subtractive") {
	$"8001 0000 0060 0000 0092 0000 0000 0000"            /* €....`...’...... */
	$"0000 0000 1000 4400 2800 9200 2800 4400"            /* ......D.(.’.(.D. */
	$"1100 0280 0140 00E0 0070 0038 7C1C 0008"            /* ...€.@.à.p.8|... */
	$"0000 0000 1000 5400 3800 FE00 3800 5400"            /* ......T.8.þ.8.T. */
	$"1100 0380 01C0 00E0 0070 0038 001C 0008"            /* ...€.À.à.p.8.... */
	$"0000 0000 0003 0003 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 8002 0000 0000 0010 0010 0000"            /* ....€........... */
	$"0000 0000 0000 0048 0000 0048 0000 0000"            /* .......H...H.... */
	$"0001 0001 0001 0000 0000 0000 00B2 0000"            /* .............².. */
	$"0000 1000 4400 2800 9200 2800 4400 1100"            /* ....D.(.’.(.D... */
	$"0280 0140 00E0 0070 0038 7C1C 0008 0000"            /* .€.@.à.p.8|..... */
	$"0000 0003 E72E 0000 0001 0000 FFFF FFFF"            /* ....ç.......ÿÿÿÿ */
	$"FFFF 0001 0000 0000 0000"                           /* ÿÿ........ */
};

data 'crsr' (200, "Marquee Additive") {
	$"8001 0000 0060 0000 0092 0000 0000 0000"            /* €....`...’...... */
	$"0000 0000 0100 0100 0100 0100 0100 0100"            /* ................ */
	$"0100 FFFE 0100 0100 0100 0104 0104 011F"            /* ..ÿþ............ */
	$"0104 0004 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0000 0000 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 0007 0007 0000 0000 0000 0000"            /* ................ */
	$"0000 0000 8002 0000 0000 0010 0010 0000"            /* ....€........... */
	$"0000 0000 0000 0048 0000 0048 0000 0000"            /* .......H...H.... */
	$"0001 0001 0001 0000 0000 0000 00B2 0000"            /* .............².. */
	$"0000 0100 0100 0100 0100 0100 0100 0100"            /* ................ */
	$"FFFE 0100 0100 0100 0104 0104 011F 0104"            /* ÿþ.............. */
	$"0004 0003 E85F 0000 0001 0000 FFFF FFFF"            /* ....è_......ÿÿÿÿ */
	$"FFFF 0001 0000 0000 0000"                           /* ÿÿ........ */
};

data 'PAT#' (1000, purgeable) {
	$"0008 F0E1 C387 0F1E 3C78 78F0 E1C3 870F"            /* ..ðáÃ‡..<xxðáÃ‡. */
	$"1E3C 3C78 F0E1 C387 0F1E 1E3C 78F0 E1C3"            /* .<<xðáÃ‡...<xðáÃ */
	$"870F 0F1E 3C78 F0E1 C387 870F 1E3C 78F0"            /* ‡...<xðáÃ‡‡..<xð */
	$"E1C3 C387 0F1E 3C78 F0E1 E1C3 870F 1E3C"            /* áÃÃ‡..<xðááÃ‡..< */
	$"78F0"                                               /* xð */
};

resource 'wctb' (200) {
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

resource 'WIND' (200, purgeable) {
	{0, 0, 224, 378},
	1025,
	invisible,
	goAway,
	0x0,
	"",
	staggerMainScreen
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

resource 'cfrg' (0) {
	{	/* array memberArray: 1 elements */
		/* [1] */
		kPowerPCCFragArch,
		kIsCompleteCFrag,
		kNoVersionNum,
		kNoVersionNum,
		131072,
		kNoAppSubFolder,
		kApplicationCFrag,
		kDataForkCFragLocator,
		kZeroOffset,
		kSegIDZero,
		"Icon Mangler 1.0d4"
	}
};

resource 'SIZE' (-1) {
	reserved,
	acceptSuspendResumeEvents,
	reserved,
	canBackground,
	multiFinderAware,
	backgroundAndForeground,
	dontGetFrontClicks,
	ignoreChildDiedEvents,
	is32BitCompatible,
	isHighLevelEventAware,
	onlyLocalHLEvents,
	notStationeryAware,
	dontUseTextEditServices,
	notDisplayManagerAware,
	reserved,
	reserved,
	3145728,
	1048576
};

